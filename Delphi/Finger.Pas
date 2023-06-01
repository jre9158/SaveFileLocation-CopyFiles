unit Finger;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  buttons,
  extctrls,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  genfunc,
  comctrls,
  inifiles,
  Grids,
  OrpheusWrapper,
  ApoDSet,
  apCommon,
  Blink,
  MySBox,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPanel,
  FormFunc,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBase,
  AlpineDateTime,
  ImgList,
  Menus,
  AppLst,
  DB,
  AlpineBlockBrowse,
  registry,
  AdvObj;

type
  TFingerForm = class(TAlpineBaseForm)
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    ComputerBrowse: TAlpineTMSStringGrid;
    RefreshButton: TAlpineGlowButton;
    TimeField: TLabel;
    ClockTimer: TTimer;
    ImageList16: TImageList;
    EventMenu: TPopupMenu;
    OpenChoice: TMenuItem;
    OpenAllChoice: TMenuItem;
    RefreshTimer: TTimer;
    Panel1: TPanel;
    AdvPanel1: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    NfirsMainBox: TComboBox;
    NIBox: TComboBox;
    HandStatBrowse: TAlpineBlockBrowse;
    training32: TImage;
    incident32: TImage;
    Closeallkiosks1: TMenuItem;
    CloseSingleKiosks1: TMenuItem;
    RedNMXButton: TAlpineGlowButton;
    EMS32: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseButtonClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
    procedure OpenChoiceClick(Sender: TObject);
    procedure RefreshTimerTimer(Sender: TObject);
    procedure ComputerBrowseClick(Sender: TObject);
    procedure NfirsMainBoxChange(Sender: TObject);
    procedure NIBoxChange(Sender: TObject);
    procedure ComputerBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure OpenAllChoiceClick(Sender: TObject);
    procedure Closeallkiosks1Click(Sender: TObject);
    procedure CloseSingleKiosks1Click(Sender: TObject);
    procedure HandStatBrowseAfterDelete(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
  private
    { Private declarations }
    ComputerCount : Integer;
    OpenInterval  : Real;
    bJerichoDispatcher: Boolean;
    procedure LoadComputerGrid;
    procedure AppendHandStat(ComputerID: String);
    procedure LoadColumn(EventType, EventID,mAlias: String);
    function  GetHour(ComboBox: TComboBox): Real;
    procedure HandStatNewRecord(DataSet: TDataSet);
    procedure OpenAll;
    procedure CheckFingerReg;
    function GetOpenInterval: Real;
    function CheckCanOpenReader(mComputerId: String; var mReason: String): Boolean;
    function GetEventType(TypeString: String):String;
  public
    { Public declarations }
  end;

const
  ALARMTYPE = 'NFIRSMAIN';
  EMSTYPE = 'EMS';



implementation
uses
     PingFunc,
     NI,
     NormalBase,
     NFIRS,
     HandStat,
     CommonVar,
     SysDemoPictView,
     CommonFunc;

{$R *.DFM}

procedure TFingerForm.FormCreate(Sender: TObject);
var
  mDispatchSecID: String;
  mUserProfileID: String;
begin

  if mFireID = '30030' then begin
    mDispatchSecid := sqllookup('DISPATCH','USERNAME','sec','secid');
    if mDispatchSecid = '' then
      ShowMessage('There is no Security Profile named "DISPATCH" - the 6 minute limit will not be in effect.');
    bJerichoDispatcher := secidvar=mDispatchSecid;
    appendtolog('Dispatcher? '+iif(bJerichoDispatcher,'Yes','No'));
  end;




  HandStatBrowse.ExplicitwhereClause := ' WHERE HANDSTAT.DATETIMEOPEN >= '+FormatDateTimeForSql(Date-1);
  try
    Open_Query('FINGERSET',false,'SELECT * FROM FINGERSET WHERE FDID = ' + AddExpr(mFireID));
    NfirsMainBox.ItemIndex := GetField('FINGERSET','NFIRSMAINBOX').AsInteger;
    NIBox.ItemIndex        := GetField('FINGERSET','NIBOX').AsInteger;
    OpenInterval           := IIfI(GetField('FINGERSET','OPENLENGTH').AsInteger > 0,GetField('FINGERSET','OPENLENGTH').AsInteger,15) + 1;
  finally
    CloseApollo('FINGERSET');
  end;
  CheckFingerReg;

  HandStatBrowse.Setup('HANDSTAT',THandStatForm,HandStatNewRecord);
  LoadComputerGrid; 
  ComputerBrowse.ControlLook.NoDisabledButtonLook := true;

  if bJerichoDispatcher then begin
     NfirsMainBox.ItemIndex := 0;
     NfirsMainBox.Enabled   := False;
     NIBox.ItemIndex        := 0;
     NIBox.Enabled          := False;
   end;
end;

procedure TFingerForm.FormShow(Sender: TObject);
begin
  If ComputerCount >= 6 then
    Width := Width + 120;
  RedNMXButton.Visible             := mFireID = '12345';  
end;

function CheckOpen(mAlias: String): String;
begin
  If (Getfield(mAlias,'DATETIMEOPEN').AsDateTime <= Now) and (Getfield(mAlias,'DATETIMECLOSE').AsDateTime >= Now) or (Getfield(mAlias,'DATETIMECLOSE').AsString = '') then
  begin
    if Getfield(mAlias,'DATETIMECLOSE').AsString <> '' then
      CheckOpen := Getfield(mAlias,'OPENREASON').AsString + '-> Open: closing in ' + FormatDateTime('N',Getfield(mAlias,'DATETIMECLOSE').AsDateTime - Now) + ' minutes'
    else
      CheckOpen := Getfield(mAlias,'OPENREASON').AsString + '-> Open: Timer Not Set.';
  end
  else
    CheckOpen := Getfield(mAlias,'CLOSEREASON').AsString + '-> Closed';
end;

function TFingerForm.GetEventType(TypeString: String):String;
begin
  if TypeString = ALARMTYPE then
    GetEventType    := 'NFIRSMAIN'
  else if TypeString = EMSTYPE then
    GetEventType    := 'EMS'
  else
    GetEventType    := 'NI';
end;

procedure TFingerForm.LoadColumn(EventType, EventID, mAlias: String);
Var ColNum     : Integer;
    FieldValue : String;
begin
  For ColNum := 5 to 4 + ComputerCount do begin
    If A(mAlias).ExactQueryLocate(['EVENTTYPE','EVENTID','COMPUTERID'],[EventType,EventID,ComputerBrowse.ColumnNames[ColNum]]) then begin
      FieldValue := '';
      While (tdbfield(mAlias,'EVENTTYPE') = EventType) and (GetField(mAlias,'EVENTID').AsString = EventID) and (GetField(mAlias,'COMPUTERID').AsString = ComputerBrowse.ColumnNames[ColNum]) and Not A(mAlias).Eof do begin
        FieldValue := FieldValue + CheckOpen(mAlias) + #13#10;
        A(mAlias).Skip(1);
      end;
      ComputerBrowse.SetValue(ComputerBrowse.ColumnNames[ColNum],FieldValue);
    end else
      ComputerBrowse.SetValue(ComputerBrowse.ColumnNames[ColNum],'-')
  end;
end;

function TFingerForm.GetHour(ComboBox: TComboBox): Real;
begin
  If ComboBox.ItemIndex = 0 then
    GetHour := 1/24
  else if ComboBox.ItemIndex = 1 then
    GetHour := 2/24
  else if ComboBox.ItemIndex = 2 then
    GetHour := 3/24
  else if ComboBox.ItemIndex = 3 then
    GetHour := 6/24
  else if ComboBox.ItemIndex = 4 then
    GetHour := 12/24
  else if ComboBox.ItemIndex = 5 then
    GetHour := 24/24
  else if ComboBox.ItemIndex = 6 then
    GetHour := 7;
end;

procedure TFingerForm.LoadComputerGrid;
Var NIHour        : Real;
    NfirsMainHour : Real;
    IconColumn    : Integer;
    FoundOne      : Boolean;
    DateTimeEOA   : TDateTime;
begin
  TitleImage.Picture.Icon := GetGlowImageIcon('FINGER32');

  ComputerBrowse.Clear;
  ComputerBrowse.ColCount := 0;
  ComputerBrowse.RowCount := 0;
  ComputerBrowse.ClearColumns;

  ComputerBrowse.FixedRowAlways := true;
  ComputerBrowse.RowCount       := ComputerBrowse.FixedRows;
  ComputerBrowse.SetColumn('EVENTID',  '',           000);
  ComputerBrowse.SetColumn('ICON',     '',           045);
  ComputerBrowse.SetColumn('EVENTTYPE','Type',       000);
  ComputerBrowse.SetColumn('DATETIME', 'Time',       130);
  ComputerBrowse.SetColumn('DESCR',    'Description',200);

  try
    Open_Query('UPDATEHANDSTAT',false,'SELECT * FROM HANDSTAT WHERE DATETIMEOPEN BETWEEN ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - 1/6)) + ' AND ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now + 1/2)) + ' ORDER BY EVENTTYPE, EVENTID, COMPUTERID');

    if MultiFdid and Not (secFDID = '') and (mFireID = 'HARFO') then
      Open_Query('COMPUTER',true,'SELECT * FROM COMPUTER WHERE FINGER = ' + AddExpr('Y') + ' AND FDID = ' + AddExpr(secFDID) + ' ORDER BY SORTORD, COMPUTERNAME')
    else
      Open_Query('COMPUTER',true,'SELECT * FROM COMPUTER WHERE FINGER = ' + AddExpr('Y') + ' ORDER BY SORTORD, COMPUTERNAME');

    ComputerCount := A('COMPUTER').QueryRecCount;
    While Not A('COMPUTER').Eof do begin
      ComputerBrowse.SetColumn(GetField('COMPUTER','COMPUTERID').AsString,tdbfield('COMPUTER','DESCR'),120);
      A('COMPUTER').Skip(1);
    end;
    CloseApollo('COMPUTER');
    ComputerBrowse.SetColumn('SPACE',' ',1000);

    NIHour := GetHour(NIBox);
    if MultiFdid and Not (secFDID = '') and (mFireID = 'HARFO') then
      Open_Query('NI',False,'SELECT NIID, NI.DESCR DESCR, DATETIMESTART, LOCATION.DESCR LOCATION, NIPTYPE.DESCR TYPEDESCR FROM NI ' +
                          'LEFT JOIN LOCATION ON (NI.LOCATIONID = LOCATION.LOCATIONID) ' +
                          'LEFT JOIN NIPTYPE ON (NI.NIPTYPEID = NIPTYPE.NIPTYPEID) ' +
                          'WHERE DATETIMESTART BETWEEN ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - NIHour)) +
                          ' AND ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now + 1/24)) +
                          ' AND (NI.FDID = ' +  AddExpr(secFDID) +
                           ' OR NI.FDID = ' + AddExpr('12999') + ') ' +
                          ' ORDER BY DATETIMESTART DESC')
    else if bJerichoDispatcher then
      Open_Query('NI',False,'SELECT NIID, NI.DESCR DESCR, DATETIMESTART, LOCATION.DESCR LOCATION, NIPTYPE.DESCR TYPEDESCR FROM NI ' +
                          'LEFT JOIN LOCATION ON (NI.LOCATIONID = LOCATION.LOCATIONID) ' +
                          'LEFT JOIN NIPTYPE ON (NI.NIPTYPEID = NIPTYPE.NIPTYPEID) ' +
                          'WHERE DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now)) +
                          ' AND DATETIMEEND >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - 1/24)) + ' ORDER BY DATETIMESTART DESC')
    else
      Open_Query('NI',False,'SELECT NIID, NI.DESCR DESCR, DATETIMESTART, LOCATION.DESCR LOCATION, NIPTYPE.DESCR TYPEDESCR FROM NI ' +
                          'LEFT JOIN LOCATION ON (NI.LOCATIONID = LOCATION.LOCATIONID) ' +
                          'LEFT JOIN NIPTYPE ON (NI.NIPTYPEID = NIPTYPE.NIPTYPEID) ' +
                          'WHERE DATETIMESTART BETWEEN ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - NIHour)) +
                          ' AND ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now + 1/24)) + ' ORDER BY DATETIMESTART DESC');

    IconColumn := ComputerBrowse.ColumnNames.IndexOf('ICON');
    While Not A('NI').Eof do begin
      ComputerBrowse.SetValue('EVENTID',  GetField('NI','NIID').AsString);
      ComputerBrowse.AddBitButton(IconColumn,ComputerBrowse.RowCount-1,38,38,'',Training32.Picture.BitMap,AdvGrid.haCenter,AdvGrid.vaCenter);
      ComputerBrowse.SetValue('EVENTTYPE','Non Incident');
      ComputerBrowse.SetValue('DATETIME', FormatDateTime('MM/DD/YYYY  HH:NN',GetField('NI','DATETIMESTART').AsDateTime));
      ComputerBrowse.SetValue('DESCR',    GetField('NI','TYPEDESCR').AsString + ' ' + GetField('NI','DESCR').AsString);
      LoadColumn('NI',GetField('NI','NIID').AsString,'UPDATEHANDSTAT');
      FoundOne := true;
      A('NI').Skip(1);
    end;
    CloseApollo('NI');

    NfirsMainHour := GetHour(NfirsMainBox);
    Open_Query('DISPHIST',false,'SELECT * FROM DISPHIST WHERE 1=2');
    if MultiFdid and Not (secFDID = '') and (mFireID = 'HARFO') then
      Open_Query('NFIRSMAIN',False,'SELECT INCNUM, NFIRSMAIN.NFIRSMAINID NFIRSMAINID, NFIRSMAIN.DATETIMEALARM DATETIMEALARM, STRNUM, STREET FROM NFIRSMAIN ' +
                                 'WHERE DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - NfirsMainHour)) +
                                 ' AND NFIRSMAIN.FDID = ' + AddExpr(secFDID) +
                                 ' AND NFIRSMAIN.EXPNUM = ' + AddExpr('00') +
                                 ' ORDER BY DATETIMEALARM DESC')
    else if bJerichoDispatcher then begin
      Open_Query('NFIRSMAIN',False,'SELECT NFIRSMAIN.DISPCALLID, INCNUM, NFIRSMAIN.NFIRSMAINID NFIRSMAINID, NFIRSMAIN.DATETIMEALARM DATETIMEALARM, STRNUM, STREET FROM NFIRSMAIN ' +
                                 ' WHERE DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - 1)) +
                                 ' AND NFIRSMAIN.EXPNUM = ' + AddExpr('00') +
                                 ' ORDER BY DATETIMEALARM DESC');

    end else
      Open_Query('NFIRSMAIN',False,'SELECT INCNUM, NFIRSMAIN.NFIRSMAINID NFIRSMAINID, NFIRSMAIN.DATETIMEALARM DATETIMEALARM, STRNUM, STREET FROM NFIRSMAIN ' +
                                 'WHERE DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - NfirsMainHour)) +
                                 ' AND NFIRSMAIN.EXPNUM = ' + AddExpr('00') +
                                 ' ORDER BY DATETIMEALARM DESC');

    While Not A('NFIRSMAIN').Eof do begin
      if bJerichoDispatcher then begin
        DateTimeEOA := 0;
        A('DISPHIST').UpdateSql('SELECT * FROM DISPHIST WHERE DISPCALLID = ' + AddExpr(tdbfield('NFIRSMAIN','DISPCALLID')));
        while not A('DISPHIST').eof do begin
          If GetField('DISPHIST','DISPSTATCODEID').AsString = '17' then
            DateTimeEOA := GetField('DISPHIST','DATETIMESTAT').AsDateTime;
          A('DISPHIST').skip(1);
        end;

        if (DateTimeEOA = 0) or (Now - DateTimeEOA <= (1/24)) then begin
          ComputerBrowse.SetValue('EVENTID',  GetField('NFIRSMAIN','NFIRSMAINID').AsString);
          ComputerBrowse.AddBitButton(IconColumn,ComputerBrowse.RowCount-1,38,38,'',Incident32.Picture.BitMap,AdvGrid.haCenter,AdvGrid.vaCenter);
          ComputerBrowse.SetValue('EVENTTYPE',ALARMTYPE);
          ComputerBrowse.SetValue('DATETIME', FormatDateTime('MM/DD/YYYY  HH:NN',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));
          ComputerBrowse.SetValue('DESCR',    substr(dbfield('NFIRSMAIN','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAIN','INCNUM'),5,6) + '  ' + alltrim(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET')));
          LoadColumn('NFIRSMAIN',GetField('NFIRSMAIN','NFIRSMAINID').AsString,'UPDATEHANDSTAT');
          FoundOne := true;
        end;

      end else begin
        ComputerBrowse.SetValue('EVENTID',  GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        ComputerBrowse.AddBitButton(IconColumn,ComputerBrowse.RowCount-1,38,38,'',Incident32.Picture.BitMap,AdvGrid.haCenter,AdvGrid.vaCenter);
        ComputerBrowse.SetValue('EVENTTYPE',ALARMTYPE);
        ComputerBrowse.SetValue('DATETIME', FormatDateTime('MM/DD/YYYY  HH:NN',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));
        ComputerBrowse.SetValue('DESCR',    substr(dbfield('NFIRSMAIN','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAIN','INCNUM'),5,6) + '  ' + alltrim(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET')));
        LoadColumn('NFIRSMAIN',GetField('NFIRSMAIN','NFIRSMAINID').AsString,'UPDATEHANDSTAT');
        FoundOne := true;
      end;
      A('NFIRSMAIN').Skip(1);
    end;

    if (mfireID = '30021') then begin
      try
        Open_Query('EMS',False,'SELECT EMS.INCNUM, EMS.EMSID, EMS.DATETIMEALARM, DISPCALL.ADDRESS ' +
                                 ' FROM EMS ' +
                                 ' LEFT JOIN DISPCALL ON (DISPCALL.DISPCALLID = EMS.DISPCALLID) ' +
                                 'WHERE DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now - NfirsMainHour)) +
                                 ' ORDER BY DATETIMEALARM DESC');
        While Not A('EMS').Eof do begin
          ComputerBrowse.SetValue('EVENTID',  GetField('EMS','EMSID').AsString);
          ComputerBrowse.AddBitButton(IconColumn,ComputerBrowse.RowCount-1,38,38,'',EMS32.Picture.BitMap,AdvGrid.haCenter,AdvGrid.vaCenter);
          ComputerBrowse.SetValue('EVENTTYPE',EMSTYPE);
          ComputerBrowse.SetValue('DATETIME', FormatDateTime('MM/DD/YYYY  HH:NN',GetField('EMS','DATETIMEALARM').AsDateTime));
          ComputerBrowse.SetValue('DESCR',    substr(dbfield('EMS','INCNUM'),1,4) + '-' + substr(dbfield('EMS','INCNUM'),5,6) + '  ' + alltrim(tdbfield('EMS','ADDRESS')));
          LoadColumn('EMS',GetField('EMS','EMSID').AsString,'UPDATEHANDSTAT');
          FoundOne := true;

           A('EMS').Skip(1);
        end;
      finally
        CloseApollo('EMS');
      end;
    end;

  finally
    CloseApollo('NFIRSMAIN');
    CloseApollo('DISPHIST');
    CloseApollo('UPDATEHANDSTAT');
  end;


  ComputerBrowse.SortSettings.Column    := 4;
  ComputerBrowse.SortSettings.Direction := sdDescending;
  ComputerBrowse.QSort;

  ComputerBrowse.FixedCols := 5;
  ComputerBrowseClick(Self);

  HandStatBrowse.Enabled   := FoundOne;

end;


procedure TFingerForm.NfirsMainBoxChange(Sender: TObject);
begin
  LoadComputerGrid;
end;

procedure TFingerForm.NIBoxChange(Sender: TObject);
begin
  LoadComputerGrid;
end;


function TFingerForm.CheckCanOpenReader(mComputerId: String;var mReason: String): Boolean;
begin
  result := True;
end;        


procedure TFingerForm.OpenChoiceClick(Sender: TObject);
Var ComputerID : String;
    EventType  : String;
    EventID    : String;
    EventDescr : String;
    mReason    : String;
begin
  try
    RefreshTimer.Enabled := false;
    ComputerID           := ComputerBrowse.GetCurrentColumnName;
    EventType            := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
    EventID              := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
    EventDescr           := ComputerBrowse.GetValue('DESCR',ComputerBrowse.Row);
    if CheckCanOpenReader(ComputerBrowse.GetCurrentColumnName,mReason) then begin

      If BooleanMessageDlg('Open ' + SQLLookUp(ComputerID,'COMPUTERID','COMPUTER','DESCR') + ' kiosk for event ' + EventDescr + '?') then begin
        AppendHandStat(ComputerBrowse.GetCurrentColumnName);
        LoadComputerGrid;
      end;
    end else
      ShowMessage('This reader cannot be opened: '+mReason);
  finally
    RefreshTimer.Enabled := true;
  end;  
end;


procedure TFingerForm.RedNMXButtonClick(Sender: TObject);
begin
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'FINGER');
  SysDemoPictViewForm.Show;
end;

procedure TFingerForm.RefreshButtonClick(Sender: TObject);
begin
  LoadComputerGrid;
  RefreshTimer.Enabled := true;
end;

procedure TFingerForm.RefreshTimerTimer(Sender: TObject);
begin
  LoadComputerGrid;
end;

procedure TFingerForm.FormClose(Sender: TObject; var Action: TCloseAction);

begin
  try
    Open_Query('FORMFINGERSET',true,'SELECT * FROM FINGERSET WHERE FDID = ' + AddExpr(mFireID));
    A('FORMFINGERSET').Edit;
    GetField('FORMFINGERSET','NFIRSMAINBOX').AsInteger := NfirsMainBox.ItemIndex;
    GetField('FORMFINGERSET','NIBOX').AsInteger        := NIBox.ItemIndex;
    A('FORMFINGERSET').Post;
  finally
    CloseApollo('FORMFINGERSET');
  end;  
  Action := cafree;
end;

procedure TFingerForm.ClockTimerTimer(Sender: TObject);
begin
  TimeField.Caption := 'Current Time: ' + GetTimeAsString;
end;

procedure TFingerForm.Closeallkiosks1Click(Sender: TObject);
Var ComputerID : String;
    EventType  : String;
    EventID    : String;
    EventDescr : String;
begin
  RefreshTimer.Enabled := false;
  ComputerID           := ComputerBrowse.GetCurrentColumnName;
  EventType            := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
  EventID              := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
  EventDescr           := ComputerBrowse.GetValue('DESCR',ComputerBrowse.Row);

  If BooleanMessageDlg('Close all kiosks for event ' + EventDescr + '?') then begin
    Open_Query('CLOSEHANDSTAT',true,'SELECT * FROM HANDSTAT WHERE EVENTTYPE = ' + AddExpr(EventType) + ' AND EVENTID = ' + AddExpr(EventID));

    if Not A('CLOSEHANDSTAT').RecordsExist then begin
      ShowMessage('Please open kiosks manually before you can close the kiosks.');
      Exit;
    end;

    While Not A('CLOSEHANDSTAT').Eof do begin
      If (GetField('CLOSEHANDSTAT','DATETIMEOPEN').AsDateTime <= Now) and ((GetField('CLOSEHANDSTAT','DATETIMECLOSE').AsDateTime >= Now) or (GetField('CLOSEHANDSTAT','DATETIMECLOSE').AsString = '')) then begin
        GetTable('CLOSEHANDSTAT').Edit;
        GetField('CLOSEHANDSTAT','DATETIMECLOSE').AsDateTime := Now;
        GetField('CLOSEHANDSTAT','CLOSEREASON').AsString     := 'MANUAL';
        GetTable('CLOSEHANDSTAT').Post;
      end;

      A('CLOSEHANDSTAT').Skip(1);
    end;
    CloseApollo('CLOSEHANDSTAT');
    LoadComputerGrid;
  end;
  RefreshTimer.Enabled := true;
end;

procedure TFingerForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TFingerForm.CloseSingleKiosks1Click(Sender: TObject);
Var ComputerID : String;
    EventType  : String;
    EventID    : String;
    EventDescr : String;
begin
  RefreshTimer.Enabled := false;
  ComputerID           := ComputerBrowse.GetCurrentColumnName;
  EventType            := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
  EventID              := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
  EventDescr           := ComputerBrowse.GetValue('DESCR',ComputerBrowse.Row);

  If BooleanMessageDlg('Close ' + SQLLookUp(ComputerID,'COMPUTERID','COMPUTER','DESCR') + ' kiosk for event ' + EventDescr + '?') then begin
    Open_Query('HANDSTAT',true,'SELECT * FROM HANDSTAT WHERE EVENTTYPE = ' + AddExpr(EventType) + ' AND EVENTID = ' + EventID + ' AND COMPUTERID = ' + ComputerID);
    if Not A('HANDSTAT').RecordsExist then begin
      if mfireID = '28018' then begin
        TableInsert('HANDSTAT',['COMPUTERID','EVENTID','EVENTTYPE','DATETIMEOPEN','DATETIMECLOSE','CLOSEREASON'],[ComputerID,EventID,EventType,Now,Now,'MANUAL']);
      end else
        ShowMessage('Please open manually before you can close the kiosk.');
      CloseApollo('HANDSTAT');
      LoadComputerGrid;
      Exit;
    end;


    While Not A('HANDSTAT').Eof do begin
      If (GetField('HANDSTAT','DATETIMEOPEN').AsDateTime <= Now) and ((GetField('HANDSTAT','DATETIMECLOSE').AsDateTime >= Now) or (GetField('HANDSTAT','OPENREASON').AsString = 'OPEN-WHILE-ALARM-OPEN')) then begin
        GetTable('HANDSTAT').Edit;
        GetField('HANDSTAT','DATETIMECLOSE').AsDateTime := Now;
        GetField('HANDSTAT','CLOSEREASON').AsString     := 'MANUAL';
        GetTable('HANDSTAT').Post;
      end;
      A('HANDSTAT').Skip(1);
    end;
    CloseApollo('HANDSTAT');
    LoadComputerGrid;
  end;
  RefreshTimer.Enabled := true;
end;

procedure TFingerForm.ComputerBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
Var EventDescr : String;
begin
  RefreshTimer.Enabled := false;
  ComputerBrowse.Row   := ARow;
  EventDescr           := ComputerBrowse.GetValue('DESCR');
  If BooleanMessageDlg('Open all kiosks for event ' + EventDescr + '?') then
    OpenAll;
  RefreshTimer.Enabled := true;
end;

procedure TFingerForm.OpenAll;
var
  mReason: String;
  CouldNotOpen : Boolean;
begin
  CouldNotOpen := False;
  if MultiFdid and Not (secFDID = '') and (mFireID = 'HARFO') then
    Open_Query('COMPUTER',true,'SELECT * FROM COMPUTER WHERE FINGER = ' + AddExpr('Y') + ' AND FDID = ' + AddExpr(secFDID))
  else
    Open_Query('COMPUTER',true,'SELECT * FROM COMPUTER WHERE FINGER = ' + AddExpr('Y'));

  While Not A('COMPUTER').Eof do begin
    if CheckCanOpenReader(Getfield('COMPUTER','COMPUTERID').AsString,mReason) then
      AppendHandStat(Getfield('COMPUTER','COMPUTERID').AsString)
    else
      CouldNotOpen := True;

    A('COMPUTER').Skip(1);
  end;
  CloseApollo('COMPUTER');
  if CouldNotOpen then
    ShowMessage('Could Not Open All Readers: ' + mReason);

  LoadComputerGrid;
end;

function TFingerForm.GetOpenInterval: Real;
begin
  if (mFireid='30030') and (ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row) = ALARMTYPE) then //removed 'and bJerichoDispatcher' - MFP
    result := 6
  else
    result := openinterval;
end;

procedure TFingerForm.AppendHandStat(ComputerID: String);
begin
  try
    Open_Query('HANDSTAT',true,'SELECT * FROM HANDSTAT WHERE 1=2');
    GetTable('HANDSTAT').Append;
    GetField('HANDSTAT','EVENTID').AsString         := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
    GetField('HANDSTAT','EVENTTYPE').AsString       := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
    GetField('HANDSTAT','COMPUTERID').AsString      := ComputerID;
    GetField('HANDSTAT','DATETIMEOPEN').AsDateTime  := Now - 1/(24*60);
    GetField('HANDSTAT','ENTRYMETH').AsString       := 'REDNMX';
    GetField('HANDSTAT','OPENREASON').AsString      := 'MANUAL';
    GetField('HANDSTAT','CLOSEREASON').AsString     := 'TIMED-OUT';

    if (mFireID='52097') and (ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row) <> ALARMTYPE) and (StrToDateTime(ComputerBrowse.GetValue('DATETIME',ComputerBrowse.Row))+(30/1440) >= Now) then
      GetField('HANDSTAT','DATETIMECLOSE').AsDateTime := StrToDateTime(ComputerBrowse.GetValue('DATETIME',ComputerBrowse.Row))+(30/1440)
    else
      GetField('HANDSTAT','DATETIMECLOSE').AsDateTime := Now + GetOpenInterval/(24*60);
      
    GetTable('HANDSTAT').Post;
  finally
    CloseApollo('HANDSTAT');
  end;  
end;


procedure TFingerForm.OpenAllChoiceClick(Sender: TObject);
Var EventDescr : String;
begin
  RefreshTimer.Enabled := false;
  EventDescr           := ComputerBrowse.GetValue('DESCR');
  If BooleanMessageDlg('Open all kiosks for event ' + EventDescr + '?') then
    OpenAll;
  RefreshTimer.Enabled := true;
end;

procedure TFingerForm.ComputerBrowseClick(Sender: TObject);
Var ComputerID : String;
    EventType  : String;
    EventID    : String;
begin
  if computerbrowse.rowcount>computerbrowse.fixedrows then begin
    ComputerID                         := ComputerBrowse.GetCurrentColumnName;
    EventType                          := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
    EventID                            := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
    HandStatBrowse.ExplicitWhereClause := ' WHERE HANDSTAT.COMPUTERID = ' + pkValue(ComputerID) + ' AND EVENTTYPE = ' + AddExpr(EventType) + ' AND EVENTID = ' + pkValue(EventID);
    HandStatBrowse.RefreshGrid(-1);
  end;
end;

procedure TFingerForm.HandStatBrowseAfterDelete(Sender: TObject);
begin
  LoadComputerGrid;
end;

procedure TFingerForm.HandStatNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('EVENTTYPE').AsString       := GetEventType(ComputerBrowse.GetValue('EVENTTYPE',ComputerBrowse.Row));
  DataSet.FieldByname('COMPUTERID').AsString      := ComputerBrowse.GetCurrentColumnName;
  DataSet.FieldByname('EVENTID').AsString         := ComputerBrowse.GetValue('EVENTID',ComputerBrowse.Row);
  DataSet.FieldByname('DATETIMEOPEN').AsDateTime  := Now;
  DataSet.FieldByname('DATETIMECLOSE').AsDateTime := Now + OpenInterval/(24*60);
end;



procedure TFingerForm.CheckFingerReg;

  function RemoveFromRunKey(mKey,ApTitle: string; isKey : Boolean) : Boolean;

  var
    Reg: TRegistry;
  begin
    try
      Result := False;
      Reg := TRegistry.Create;
      Reg.RootKey := HKEY_LOCAL_MACHINE;
      if Reg.OpenKey(mKey, False) then begin
        if isKey then begin
          Result := Reg.DeleteKey(ApTitle);
        end else begin
          Result := Reg.DeleteValue(ApTitle);
        end;
      end;
    finally
      Reg.CloseKey;
      Reg.Free;
    end;
  end;

begin
  // if first value (trial version) found, then remove the rest. "RegistrationCode" is the registered version
  if RemoveFromRunKey('SOFTWARE\Biometrics.co.za\ActiveX','Registration',False) then begin
    RemoveFromRunKey('SOFTWARE\Biometrics.co.za\','ActiveX',True);
    RemoveFromRunKey('SOFTWARE\','Biometrics.co.za',True);
  end;
end;

end.
