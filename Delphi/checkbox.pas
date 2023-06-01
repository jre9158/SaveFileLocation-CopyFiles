unit CheckBox;

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
  dbtables,
  extctrls,
  buttons,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  mysbox,
  menus,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBase,
  AdvPanel,
  Gauges,
  SysRepMan,
  db,
  FormFunc,
  AdvSplitter,
  AlpineBlockBrowse;

type
  TPersonCheckBox = class(TCheckBox)
  public
    PersCode  : String;
    PersID    : Integer;
    AttendID  : String;
    PersPointTypeID: Integer;
    PersTypeID: String;
  end;

  TPointType = class
  public
    PersPointTypeID : Integer;
    Code      : String;
    Descr     : String;
    Manual    : Boolean;
    Color     : TColor;
  end;

type
  TCheckBoxForm = class(TAlpineBaseForm)
    NFIRSAttMenu: TPopupMenu;
    Panel4: TPanel;
    PointPanel: TPanel;
    FDIDPanel: TPanel;
    FdidAllCheck: TRadioButton;
    BaseBottomPanel: TAdvPanel;
    CheckAllButton: TAlpineGlowButton;
    ScheduledPersonnel: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    HelpButton: TAlpineGlowButton;
    CopyButton: TAlpineGlowButton;
    RosterButton: TAlpineGlowButton;
    Panel2: TPanel;
    AutoEntryBox: TEdit;
    AdvPanel5: TAdvPanel;
    Image2: TImage;
    TitleImage: TImage;
    TitleLabel: TLabel;
    DescrField: TLabel;
    Label2: TLabel;
    DateTimeField: TLabel;
    OrderButton: TAlpineGlowButton;
    NIAttMenu: TPopupMenu;
    IncidentTasks1: TMenuItem;
    NFIRSAttTypeMenu: TMenuItem;
    N1: TMenuItem;
    DeleteAttendance1: TMenuItem;
    HandScanButton: TAlpineGlowButton;
    Gauge: TGauge;
    COMPANYREPORT: TAlpineGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    PersCountField: TLabel;
    FdidCompPanel: TPanel;
    C341Check: TRadioButton;
    C342Check: TRadioButton;
    C343Check: TRadioButton;
    C347Check: TRadioButton;
    C344Check: TRadioButton;
    C345Check: TRadioButton;
    C346Check: TRadioButton;
    C348Check: TRadioButton;
    FdidCompAllCheck: TRadioButton;
    AdvSplitter1: TAdvSplitter;
    Panel3: TPanel;
    ScrollBox1: TMyScrollBox;
    AdditionalButton: TButton;
    SchdOverTimeBrowse: TAlpineBlockBrowse;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PersonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AdditionalButtonClick(Sender: TObject);
    procedure CheckAllButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DeleteAttendance1Click(Sender: TObject);
    procedure NFIRSAttMenuPopup(Sender: TObject);
    procedure NIAttMenuPopup(Sender: TObject);
    procedure HandScanButtonClick(Sender: TObject);
    procedure AutoEntryBoxKeyPress(Sender: TObject; var Key: Char);
    procedure RosterButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure COMPANYREPORTClick(Sender: TObject);
    procedure C341CheckClick(Sender: TObject);
    procedure FdidCompAllCheckClick(Sender: TObject);
  private
    { Private declarations }
    mComp            : String;
    IncCodesArray    : TStringList;
    PointTypeList    : TStringList;
    ManPointTypeList : TSTringList;
    FUnitNum         : String;
    procedure LoadFDIDPanel;
    function  GetFdidWhere: String;
    procedure DoAdditional(iAttendId: Integer);    
    procedure ReloadCheckBox(sender: TObject);
    procedure PersonClick(Sender: TObject);
    procedure ShowAdditionalForm(mAttendID: String);
    procedure UpdateIncidentTask(Sender: TObject);
    procedure CopyNonIncidentAttend(EventFileCode, EventCode: String);
    procedure CheckBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    function GetPointTypeObject(PersPointTypeID: Integer): TPointType;
    procedure DeleteNIAtt(Sender: TObject);
    procedure ChangeNIAttType(Sender: TObject);
    procedure ChangeNFIRSAttType(Sender: TObject);
    procedure EMSAttNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    EventCode     : String;
    AttendCode    : String;
    EventPK       : String;
    AttendID      : String;
    DefaultInvNum : String;
    PFdidVar      : String;
    FdidCompID    : String;
    procedure UpdateColor(PersonCheckBox : TPersonCheckBox; CheckValue: Boolean);
    constructor Create(AOwner: TComponent; VEventCode, VAttendCode: String; VEventPK: String; VFdidVar: String);
    procedure UpdatePersCount();
    procedure DeleteEvoultionAttendance(DeletePersID: String);
    function CheckPersComp: Boolean;
    procedure SchdOverTimeNewRecord(DataSet: TDataSet);
    procedure SchdOverTimeNINewRecord(DataSet: TDataSet);
  end;

{$I rednmx.inc}

var
  CheckBoxForm: TCheckBoxForm;

implementation
uses GenFunc,applst,
     CheckBoxNfirs,
     CheckBoxNI,
     PersSet,
     HandAttendance,
     NI,
     NIAtt,
     NFIRSAtt,
     NFIRSAtt5,
     NfirsCompany,
     PersRoster,
     EMSAtt,
     CommonVar,
     CommonPers,
     SecSet,
     SchdHist,
     NormalBase,
     CommonFunc;
     
{$R *.DFM}

constructor TCheckBoxForm.Create(AOwner: TComponent; VEventCode, VAttendCode: String; VEventPK: String; VFdidVar: String);
begin
  EventCode  := VEventCode;
  AttendCode := VAttendCode;
  EventPK    := VEventPK;
  PFdidVar   := VFdidVar;
  inherited Create (AOwner);
end;

function UseFdidComp: Boolean;
begin
  result := (FireID = '30066') or (FireID = '02210') or (FireID = '02020');
end;


procedure TCheckBoxForm.FormCreate(Sender: TObject);
Var i                  : Integer;
    NFIRSAttMenuChoice : TMenuItem;
    APointType         : TPointType;
    APointTypeLabel    : TLabel;
    RowVar             : Integer;
    ColVar             : Integer;
    NIMenuChoice       : TMenuItem;
    bFdidPanel         : Boolean;
begin
  if (FireID = 'HARFO') or (FireID = '10700') or (FireID = '13000') then begin
    FDIDPanel.Width := 600;
    Width := 1000;
  end;

  FdidCompID            := '';
  CompanyReport.Visible :=(FireID='06090') AND (EventCode = 'NFIRSMAIN');

  if (EventCode='NFIRSMAIN') and (FireID='34027') then
    bFdidPanel := False
  else
    bFdidPanel := MultiFdid;

  If bFdidPanel then begin
    FdidPanel.Visible    := true;
    if (FireID <> 'HARFO') and (FireID <> '13000') then
      FdidAllCheck.Enabled := (secFdid = '');
    LoadFdidPanel;
    FdidAllCheck.OnClick := ReloadCheckBox;
  end else begin
    FdidPanel.Visible    := false;
  end;

  If UseFdidComp then begin
    FdidCompPanel.Visible := true;
    Width                 := Width + FdidCompPanel.Width;

    if (FireID = '02210') then begin
      C341Check.Caption   := 'C1';
      C342Check.Caption   := 'C2';
      C343Check.Caption   := 'C3';
      C344Check.Caption   := 'FP';
      C346Check.Tag       := 4;
      C345Check.Caption   := 'FMO';
      C346Check.Tag       := 5;
      C346Check.Caption   := 'HQ';
      C346Check.Tag       := 7;
      C347Check.Visible   := False;
      C348Check.Visible   := False;
    end else if (FireID = '02020') then begin
      C341Check.Caption   := 'COMPANY1';
      C342Check.Caption   := 'COMPANY2';
      C343Check.Caption   := 'COMPANY3';
      C344Check.Caption   := 'COMPANY4';
      C346Check.Tag       := 4;
      C345Check.Visible   := false;
      C346Check.Tag       := 5;
      C346Check.Visible   := False;
      C346Check.Tag       := 7;
      C347Check.Visible   := False;
      C348Check.Visible   := False;
      FdidCompPanel.Width := 90;
      Width               := Width + FdidCompPanel.Width;
    end;

  end;

  ColVar        := 0;
  RowVar        := 0;
  PointTypeList := TStringList.Create;
  ManPointTypeList := TStringList.Create;

  NIMenuChoice          := TMenuItem.Create(NIAttMenu);
  NIMenuChoice.Tag      := 0;
  NIMenuChoice.Caption  := 'Delete Attendance';
  NIMenuChoice.OnClick  := DeleteNIAtt;
  NIAttMenu.Items.Insert(0, NIMenuChoice);

  NIMenuChoice := TMenuItem.Create(NIAttMenu);
  NIMenuChoice.Tag      := 0;
  NIMenuChoice.Caption  := '-';
  NIAttMenu.Items.Insert(0, NIMenuChoice);

  Open_Query('PERSPOINTTYPE',false,'SELECT * FROM PERSPOINTTYPE ORDER BY SORTORD');

  While Not A('PERSPOINTTYPE').Eof do begin
    APointType                 := TPointType.Create;
    APointType.PersPointTypeID := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger;
    APointType.Code            := tdbfield('PERSPOINTTYPE','CODE');
    APointType.Descr           := tdbfield('PERSPOINTTYPE','DESCR');
    APointType.Manual          := tdbfield('PERSPOINTTYPE','MANUALENTRY') = 'Y';

    if tdbfield('PERSPOINTTYPE','COLOR')<>'' then begin
      try
        APointType.Color           := StringToColor(tdbfield('PERSPOINTTYPE','COLOR'));
      except
      end;
    end;

    PointTypeList.AddObject(inttostr(APointType.PersPointTypeID),APointType);
    if GlobalManualEntryOnly then begin
      if tdbfield('PERSPOINTTYPE','MANUALENTRY') = 'Y' then
        ManPointTypeList.AddObject(inttostr(APointType.PersPointTypeID),APointType);
    end else
      ManPointTypeList.AddObject(inttostr(APointType.PersPointTypeID),APointType);

    APointTypeLabel            := TLabel.Create(self);
    APointTypeLabel.Parent     := PointPanel;
    APointTypeLabel.Caption    := tdbfield('PERSPOINTTYPE','DESCR');
    APointTypeLabel.Left       := 5 + (ColVar * 150);
    APointTypeLabel.Top        := 6 + RowVar * 17;
    APointTypeLabel.Width      := 60;
    APointTypeLabel.Font.Color := APointType.Color;

    NIMenuChoice          := TMenuItem.Create(NIAttMenu);
    NIMenuChoice.Tag      := GetField('PERSPOINTTYPE','SORTORD').AsInteger;       //ADDED BY DOUG
    NIMenuChoice.Caption  := tdbField('PERSPOINTTYPE','DESCR');
    NIMenuChoice.OnClick  := ChangeNIAttType;
    NIAttMenu.Items.Insert(0, NIMenuChoice);

    NFIRSAttMenuChoice         := TMenuItem.Create(NFIRSAttTypeMenu);
    NFIRSAttMenuChoice.Tag     := GetField('PERSPOINTTYPE','SORTORD').AsInteger;     //ADDED BY DOUG
    NFIRSAttMenuChoice.Caption := tdbField('PERSPOINTTYPE','DESCR');
    NFIRSAttMenuChoice.OnClick := ChangeNFIRSAttType;
    NFIRSAttTypeMenu.Insert(0, NFIRSAttMenuChoice);

    RowVar                     := RowVar + 1;
    If RowVar > 2 then begin
      ColVar := ColVar + 1;
      RowVar := 0;
    end;
    A('PERSPOINTTYPE').Skip(1);
  end;
  CloseApollo('PERSPOINTTYPE');

  ReloadCheckBox(self);
  Height                     := Round(Screen.Height * 0.91);

  If mFireID = '28045' then begin
    CheckAllButton.Enabled := CheckSecVar('INCSETUP');
    CopyButton    .Enabled := CheckSecVar('INCSETUP');
  end else begin
    CheckAllButton.Enabled := true;
    CopyButton    .Enabled := true;
  end;

  HandScanButton.Visible     := GlobalQueryHandCheck;
  GotoNextControlOnReturn    := False;
  CopyButton.Visible         := (EventCode = 'NFIRSMAIN') or (EventCode = 'NI');
  CopyButton.Caption         := IIf(EventCode = 'NFIRSMAIN','Copy from Incident','Copy from Event');

  if EventCode = 'NI' then
    FUnitNum := SqlLookup(EventPK,'NIID','NI','UNITNUM')
  else
    FUnitNum := '';
  ScheduledPersonnel.Visible := FUnitNum<>'';
end;

function TCheckBoxForm.GetFdidWhere: String;
var FdidNum : Integer;
    FdidVar : String;
    nfirsfdidcomp: TApolloData;
begin
  if MultiFdid = false then begin
    If PFdidVar = '' then
      result := ''
    else
      result := ' AND PERS.FDID = ' + AddExpr(PFdidVar);
  end else if FdidAllCheck.Checked then
    result := ''
  else begin
    For FdidNum := FdidPanel.ControlCount - 1 downto 0 do begin
      If FdidPanel.Controls[FdidNum] is TRadioButton and TRadioButton(FdidPanel.Controls[FdidNum]).Checked then begin
        FdidVar := substr(TRadioButton(FdidPanel.Controls[FdidNum]).Name,5,5);
        result := ' AND PERS.FDID = ' + AddExpr(FdidVar);
        if mFireId = '10700' then
          result := ' AND (PERS.FDID = ' + AddExpr(FdidVar) + ' OR (PERSFDID.FDID = ' + AddExpr(FdidVar) + ' AND PERSFDID.ACTIVE = ' + AddExpr('Y') + '))';
      end;
    end;
  end;
end;

procedure TCheckBoxForm.ReloadCheckBox(Sender: TObject);
var irow            : Integer;
    icol            : Integer;
    PersonCheckBox  : TPersonCheckBox;
    TotalCount      : Integer;
    RowCount        : Integer;
    iNum            : Integer;
    ColCount        : Integer;
    mSelectFields   : String;
    mSql            : String;
    bShowMiddleName : Boolean;
    FdidPanelCheck  : Boolean;
begin
  FdidPanelCheck    := FdidPanel.Enabled;
  FdidPanel.Enabled := false;
  For iNum := scrollbox1.controlcount - 1 downto 0 do begin
    If scrollbox1.controls[iNum] is TPersonCheckBox then
      TPersonCheckBox(scrollbox1.controls[iNum]).Free;
  end;

  irow          := 0;
  icol          := 0;
  DefaultInvNum := '';
  TotalCount    := 0;

  Open_Query('PERSSET',false,'SELECT COLCOUNT FROM PERSSET WHERE FDID = ' + AddExpr(FireID));
  If GetField('PERSSET','COLCOUNT').AsInteger > 0 then
    ColCount      := GetField('PERSSET','COLCOUNT').AsInteger
  else
    ColCount      := 3;
  CloseApollo('PERSSET');

  mSelectFields := ' PERS.PERSID PERSID, PERS.PERSCODE PERSCODE, PERS.MNAME,PERS.LNAME LNAME, PERS.FNAME FNAME, PERS.PERSTYPEID  ';
  if ((mFireID = '10021') and (EventCode = 'NFIRSMAIN')) then
    mSql := 'SELECT '+mSelectFields+' FROM PERS WHERE ATTEND = ' + AddExpr('Y') + GetFdidWhere + ' AND (PERSTYPEID = ' + AddExpr('9') + ' OR ' + 'PERSTYPEID = ' + AddExpr('1') + ' OR PERSTYPEID = ' + AddExpr('5') + ') ORDER BY ' + GlobalPersSort
  else if mFireID = '04034' then begin
    mSelectFields := mSelectFields + ', SUBSTRING(PERS.PERSCODE, 1, 1) AS SUBPERSCODE  ';
    mSql := 'SELECT '+mSelectFields+' FROM PERS WHERE ATTEND = ' + AddExpr('Y') + GetFdidWhere + ' ORDER BY SUBPERSCODE, LNAME, FNAME ASC'
  end else if mFireID <> '10700' then
    mSql := 'SELECT '+mSelectFields+' FROM PERS WHERE ATTEND = ' + AddExpr('Y') + GetFdidWhere + ' ORDER BY ' + GlobalPersSort
  else begin
    mSql := 'SELECT '+mSelectFields+' FROM PERS ' +
            'LEFT JOIN PERSFDID ON PERSFDID.PERSID = PERS.PERSID '+
            'WHERE ATTEND = ' + AddExpr('Y')+  GetFdidWhere + ' ORDER BY ' + GlobalPersSort
  end;

  Open_Query('PERS',false,mSql);

  Open_Query('PERSCOMP',false,'SELECT * FROM PERSCOMP WHERE FDIDCOMPID = ' + pkValue(FdidCompID));

  if (FireID = '28030') and (EventCode = 'NI') then begin
    if SqlLookup(EventPK,'NIID','NI','NIPTYPEID') = '5' then begin
      mSql := 'SELECT '+mSelectFields+' FROM PERS WHERE PERSTYPEID = ' + AddExpr('11') + ' ORDER BY ' + GlobalPersSort;
      A('PERS').UpdateSQL(mSql);
    end;
  end;

  If EventCode = 'NI' then
    Open_Query('ATTEND',false,'SELECT NIATT.PERSID PERSID, NIATT.PERSPOINTTYPEID PERSPOINTTYPEID, NIATT.NIATTID ATTENDID FROM NIATT WHERE NIID = ' + EventPK)
  else if EventCode = 'NFIRSMAIN' then
    Open_Query('ATTEND',false,'SELECT PERSID, PERSPOINTTYPEID, NFIRSATT.NFIRSATTID ATTENDID FROM NFIRSATT WHERE NFIRSMAINID = ' + EventPK)
  else if EventCode = 'EMS' then
    Open_Query('ATTEND',false,'SELECT EMSATT.PERSID, EMSATT.PERSPOINTTYPEID, EMSATT.EMSATTID ATTENDID FROM EMSATT WHERE EMSID = ' + EventPK);

  If (FdidCompID = '') then
    TotalCount := A('PERS').QueryRecCount
  else
    TotalCount := A('PERSCOMP').QueryRecCount;

  Application.ProcessMessages;
  RowCount                           := Round(TotalCount/ColCount);
  ScrollBox1.VertScrollBar.Range     := RowCount * 20 + 50;
  bShowMiddleName := SQLLookUp('Y','MIDDLENAME','PERSSET','MIDDLENAME')<> '';

  while not A('PERS').eof do begin
    If CheckPersComp then begin
      PersonCheckBox             := TPersonCheckBox.Create(self);
      PersonCheckBox.Parent      := ScrollBox1;
      PersonCheckBox.OnMouseMove := CheckBox1MouseMove;
      PersonCheckBox.left        := 10 + 250 * icol;
      PersonCheckBox.width       := 220;
      PersonCheckBox.top         := 20*irow;
      if bShowMiddleName then
        PersonCheckBox.Caption     := tdbfield('PERS','PERSCODE') + '-' + tdbfield('PERS','LNAME')+', ' + tdbfield('PERS','FNAME') + IIf(tdbfield('PERS','MNAME') <> '',',' + tdbfield('PERS','MNAME'),'')
      Else
        PersonCheckBox.Caption     := tdbfield('PERS','PERSCODE') + '-' + tdbfield('PERS','LNAME')+', ' + tdbfield('PERS','FNAME');
      PersonCheckBox.PersID      := GetField('PERS','PERSID').AsInteger;
      PersonCheckBox.PersCode    := GetField('PERS','PERSCODE').AsString;
      PersonCheckBox.PersTypeID  := GetField('PERS','PERSTYPEID').AsString;
      PersonCheckBox.OnMouseDown := PersonMouseDown;



      If A('ATTEND').ExactQueryLocate(['PERSID'],[GetField('PERS','PERSID').AsString]) then begin
        PersonCheckBox.PersPointTypeID := GetField('ATTEND','PERSPOINTTYPEID').AsInteger;
        PersonCheckBox.Checked   := True;
        PersonCheckBox.AttendID  := GetField('ATTEND','ATTENDID').AsString;
        PersonCheckBox.Tag       := GetField('ATTEND','ATTENDID').AsInteger;
      end else
        PersonCheckBox.AttendID  := '0';

      UpdateColor(PersonCheckBox,PersonCheckBox.Checked);

      if (FireID = '30054') then begin
        if tdbfield('PERS','PERSTYPEID') = '13' then begin
          PersonCheckBox.Enabled    := False;
          PersonCheckBox.Font.Color := clGray;
        end;
      end;

      PersonCheckBox.OnClick := PersonClick;
      application.processmessages;

      If EventCode = 'NFIRSMAIN' then
        PopupMenu          := NFIRSAttMenu
      else
        PopupMenu          := NIAttMenu;

      If iRow = RowCount then begin
        iCol := iCol + 1;
        iRow := 0
      end else
        iRow := iRow + 1;
      ScrollBox1.VertScrollBar.Range := iMax(ScrollBox1.Height, PersonCheckBox.top + PersonCheckBox.height + 90);
    end;
    A('PERS').Skip(1);
  end;
  CloseApollo('PERS');
  CloseApollo('ATTEND');
  CloseApollo('PERSCOMP');

  UpdatePersCount();

  FdidPanel.Enabled := FdidPanelCheck;
end;


function TCheckBoxForm.CheckPersComp: Boolean;
begin
  If UseFdidComp then begin
    If FdidCompAllCheck.Checked then
      CheckPersComp := true
    else
      CheckPersComp := A('PERSCOMP').ExactQueryLocate('PERSID',GetField('PERS','PERSID').AsString);
  end else
    CheckPersComp := true;
end;

procedure TCheckBoxForm.LoadFdidPanel;
Var i         : Integer;
    FdidCheck : TRadioButton;
    RowVar    : Integer;
    ColVar    : Integer;
    dispcallFdid: String;
begin
  ColVar := 0;
  RowVar := 1;
  Open_Query('LOADFD',false,'SELECT MULTIINC, ABBREVIATE, FDID FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY ABBREVIATE');
  While Not A('LOADFD').Eof do begin
    FdidCheck          := TRadioButton.Create(self);
    FdidCheck.Parent   := FdidPanel;
    FdidCheck.Caption  := tdbfield('LOADFD','ABBREVIATE');
    FdidCheck.Left     := 5 + (ColVar * 100);
    FdidCheck.Top      := 6 + RowVar * 17;
    FdidCheck.Width    := 60;
    FdidCheck.Name     := 'FDID' + tdbfield('LOADFD','FDID') + 'CHECK';
    FdidCheck.Enabled  := false;

    FdidCheck.Checked  := (tdbfield('LOADFD','FDID') = PFdidVar);

    FdidCheck.Enabled  := (secFDID = '');
    If (mFireID = 'HARFO') or (mFireID = '13000') then
      FdidCheck.Enabled  := true
    else if (mFireid = '30019') and (tdbfield('LOADFD','FDID')='GCFDV') then
      FdidCheck.Checked  := true;

    FdidCheck.OnClick  := ReloadCheckBox;
    RowVar             := RowVar + 1;
    If RowVar > 2 then begin
      ColVar := ColVar + 1;
      RowVar := 0;
    end;
    A('LOADFD').Skip(1);
  end;
  CloseApollo('LOADFD');
  If (secFdid = '') and (PFdidVar = '') then
    FdidAllCheck.Checked    := true;
end;

procedure TCheckBoxForm.UpdateIncidentTask(Sender: TObject);
var iCode : Integer;
begin
{ iCode := TComponent(Sender).Tag;
  If mSelectedMemCode = '' then
    exit;}
end;

procedure TCheckBoxForm.PersonClick(Sender: TObject);
var PersonCheckBox : TPersonCheckBox;
    mPointType     : TPointType;
    iIndex         : Integer;
  function ChangePoint(PersPointTypeID: Integer): String;
  begin
    if A('ATTEND').RecordsExist then
      A('ATTEND').Edit
    else begin
      A('ATTEND').Append;
      GetField('ATTEND','ENTRYCOMP').AsString       := AlpineGetComputerName;
      GetField('ATTEND','ENTRYMETH').AsString       := 'MANUAL';
      GetField('ATTEND','DATETIMEENTRY').AsDateTime := Now;
      GetField('ATTEND','ENTRYSECID').AsString      := SecIDVar;
    end;
    If AttendCode = 'NIATT' then begin
      Open_Query('NI',false,'SELECT * FROM NI WHERE NIID = ' + EventPK);

      GetField('ATTEND','NIID').AsString             := EventPK;
      GetField('ATTEND','PERSID').AsInteger          := PersonCheckBox.PersID;
      If GetField('ATTEND','DATECERT').AsDateTime > 0 then
        GetField('ATTEND','DATECERT').AsDateTime       := GetField('NI','DATECERT').AsDateTime;
      If GetField('ATTEND','DATEEXP').AsDateTime > 0 then
        GetField('ATTEND','DATEEXP').AsDateTime        := GetField('NI','DATEEXP').AsDateTime;
      If GetField('ATTEND','DATETIMEDATE').AsDateTime > 0 then
        GetField('ATTEND','DATETIMEDATE').AsDateTime   := GetField('NI','DATETIMESTART').AsDateTime;
      GetField('ATTEND','EVLENGTH').AsFloat          := GetField('NI','EVLENGTH').AsFloat;
      GetField('ATTEND','FDID').AsString             := dbfield('NI','FDID');
      GetField('ATTEND','NILOSAPCATID').AsString     := GetField('NI','NILOSAPCATID').AsString;
      GetField('ATTEND','POINT').AsFloat             := GetField('NI','POINT').AsFloat;
      if (PersPointTypeID > -1) then
        GetField('ATTEND','PERSPOINTTYPEID').AsInteger := PersPointTypeID;
      GetField('ATTEND','NIPTYPEID').AsString        := GetField('NI','NIPTYPEID').AsString;
      GetField('ATTEND','NISTYPEID').AsString        := GetField('NI','NISTYPEID').AsString;
      GetField('ATTEND','NITRAINCAT1ID').AsString    := GetField('NI','NITRAINCAT1ID').AsString;
      GetField('ATTEND','NITRAINCAT2ID').AsString    := GetField('NI','NITRAINCAT2ID').AsString;
      GetField('ATTEND','NITRAINCAT3ID').AsString    := GetField('NI','NITRAINCAT3ID').AsString;
      GetField('ATTEND','NIUSER1ID').AsString        := GetField('NI','NIUSER1ID').AsString;
      GetField('ATTEND','NIUSER2ID').AsString        := GetField('NI','NIUSER2ID').AsString;
      GetField('ATTEND','NIUSER3ID').AsString        := GetField('NI','NIUSER3ID').AsString;
      GetField('ATTEND','NIUSER4ID').AsString        := GetField('NI','NIUSER4ID').AsString;
      CloseApollo('NI');
    end else if AttendCode = 'NFIRSATT' then begin
      Open_Query('NFIRSMAIN',false,'SELECT POINT, EVLENGTH FROM NFIRSMAIN WHERE NFIRSMAINID = ' + EventPK);
      GetField('ATTEND','NFIRSMAINID').AsString       := EventPK;
      GetField('ATTEND','PERSID').AsInteger           := PersonCheckBox.PersID;
      If (PersPointTypeID > -1) then
        GetField('ATTEND','PERSPOINTTYPEID').AsInteger := PersPointTypeID;
      if mFireID = '70214' then
        GetField('ATTEND','EVLENGTH').AsFloat           := 1
      else
        GetField('ATTEND','EVLENGTH').AsFloat           := GetField('NFIRSMAIN','EVLENGTH').AsFloat;
      GetField('ATTEND','POINT').AsFloat              := GetField('NFIRSMAIN','POINT').AsFloat;
      CloseApollo('NFIRSMAIN');
    end else if AttendCode = 'EMSATT' then begin
      GetField('ATTEND','EMSID').AsString             := EventPK;
      GetField('ATTEND','PERSID').AsInteger           := PersonCheckBox.PersID;
      if (PersPointTypeID > -1) then
        GetField('ATTEND','PERSPOINTTYPEID').AsInteger := PersPointTypeID;

    end;
    If GetTable('ATTEND').Modified then begin
      A('ATTEND').Post;
      ChangePoint := GetField('ATTEND',AttendCode+'ID').AsString;
    end;
  end;

begin
  iIndex := 0;

  PersonCheckBox := TPersonCheckBox(Sender);
  mPointType := GetPointTypeObject(PersonCheckBox.PersPointTypeID);

  if (FireID = '30054') and (PersonCheckBox.Font.Color = clGray) then begin
    ShowMessage('Can not give restricted users attendance credit for events.');
    Exit;
  end;

  if GlobalManualEntryOnly then begin
    iIndex     := PointTypeList.IndexOf(inttostr(PersonCheckBox.PersPointTypeID));
    if iIndex >= 0 then begin
      if not TPointType(PointTypeList.Objects[iIndex]).Manual then begin
        if not BooleanMessageDlg('This record was not added manually. Change Attendance Type?') then begin
          PersonCheckBox.Perform(BM_SETCHECK, 1, 0);
          Exit;
        end;
      end;
    end;
  end;

  If AttendCode = 'NIATT' then
    Open_Query('ATTEND',True,'SELECT * FROM NIATT WHERE NIID = ' + EventPK + ' AND PERSID = ' + IntToStr(PersonCheckBox.PersID))
  else if AttendCode = 'NFIRSATT' then begin
    Open_Query('ATTEND',True,'SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + pkvalue(EventPK) + ' AND PERSID = ' + IntToStr(PersonCheckBox.PersID));
    A('ATTEND').OnNewRecord := TNFIRSAttForm.NewRecord;
  end else if AttendCode = 'EMSATT' then
    Open_Query('ATTEND',True,'SELECT * FROM EMSATT WHERE EMSID = ' + EventPK + ' AND PERSID = ' + IntToStr(PersonCheckBox.PersID));

  iIndex     := ManPointTypeList.IndexOf(inttostr(PersonCheckBox.PersPointTypeID));
  if (iIndex < 0) and (FireID = '28045') then begin
    if PersonCheckBox.PersTypeID = '2' then
      iIndex     := (ManPointTypeList.IndexOf('2'))-1
    else if PersonCheckBox.PersTypeID = '6' then
      iIndex     := (ManPointTypeList.IndexOf('4'))-1
    else if PersonCheckBox.PersTypeID = '26' then
      iIndex     := (ManPointTypeList.IndexOf('6'))-1
    else
      iIndex     := ManPointTypeList.IndexOf(inttostr(PersonCheckBox.PersPointTypeID));
  end;

  If (A('ATTEND').RecordsExist) and (iIndex=ManPointTypeList.Count-1) then begin
    If AttendCode = 'NIATT' then
      DeleteEvoultionAttendance(IntToStr(PersonCheckBox.PersID));
    A('ATTEND').Delete;
    PersonCheckBox.PersPointTypeID := 0;
    PersonCheckBox.Perform(BM_SETCHECK, 0, 0);
    PersonCheckBox.AttendID := '0';
    UpdateColor(PersoncheckBox,false);
  end else begin
    If (PointTypeList.Count > 0) then begin
      PersonCheckBox.AttendID         := ChangePoint(TPointType(ManPointTypeList.Objects[iIndex+1]).PersPointTypeID);
      PersonCheckBox.PersPointTypeID  := TPointType(ManPointTypeList.Objects[iIndex+1]).PersPointTypeId;
    end else begin
      PersonCheckBox.AttendID         := ChangePoint(-1);
      PersonCheckBox.PersPointTypeID  := 0;
    end;
    PersonCheckBox.Perform(BM_SETCHECK, 1, 0);
    UpdateColor(PersoncheckBox,true);
  end;

  CloseApollo('ATTEND');

  UpdatePersCount();
end;

procedure TCheckBoxForm.DeleteEvoultionAttendance(DeletePersID: String);
begin
  if (EventPK <> '') and (DeletePersID <> '') then begin
    If (SqlTableRecCount('SELECT COUNT(*) FROM NIEVATT WHERE NIID = ' + EventPK + ' AND PERSID = ' + AddExpr(DeletePersID)) > 0) then begin
       RunSQL('DELETE FROM NIEVATT WHERE NIID = ' + EventPK + ' AND PERSID = ' + AddExpr(DeletePersID));
    end;
  end;
end;

procedure TCheckBoxForm.UpdatePersCount();
var AttendCount : Integer;
Begin
  AttendCount  := 0;
  
  If AttendCode = 'NIATT' then
    AttendCount  := SqlTableRecCount('SELECT COUNT(*) FROM NIATT WHERE NIID = ' + EventPK)
  else if AttendCode = 'NFIRSATT' then
    AttendCount  := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSATT WHERE NFIRSMAINID = ' + EventPK)
  else if AttendCode = 'EMSATT' then
    AttendCount  := SqlTableRecCount('SELECT COUNT(*) FROM EMSATT WHERE EMSID = ' + EventPK);

  PersCountField.Caption   := IntToStr(AttendCount);
End;


procedure TCheckBoxForm.UpdateColor(PersonCheckBox : TPersonCheckBox; CheckValue: Boolean);
Var FontColor : TColor;
begin
  If CheckValue then begin
    If PersonCheckBox.PersPointTypeID = 0 then begin
      PersonCheckBox.Font.Color := clblack;
      PersonCheckBox.Font.Style := [fsbold];
    end else begin
      PersonCheckBox.Font.Color := GetPointTypeObject(PersonCheckBox.PersPointTypeID).Color;
      PersonCheckBox.Font.Style := [fsbold];
    end;  
  end else begin
    PersonCheckBox.Font.Color := clBlack;
    PersonCheckBox.Font.Style := [];
  end;  
end;

function TCheckBoxForm.GetPointTypeObject(PersPointTypeID: Integer): TPointType;
Var i          : Integer;
    APointType : TPointType;
begin
  result   := nil;
  For i := 0 to PointTypeList.Count - 1 do begin
    If TPointType(PointTypeList.Objects[i]).PersPointTypeID = PersPointTypeID then begin
      Result := TPointType(PointTypeList.Objects[i]);
      break;
    end;
  end;
end;

procedure TCheckBoxForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If key = 34 then
    SendMessage(ScrollBox1.handle,WM_VSCROLL,SB_PAGEDOWN,0)
  else if key = 33 then
    SendMessage(ScrollBox1.handle,WM_VSCROLL,SB_PAGEUP,0)
  else if key = 27 then
    Close;
end;

procedure TCheckBoxForm.FormDestroy(Sender: TObject);
begin
  IncCodesArray.Free;
end;

procedure TCheckBoxForm.CopyButtonClick(Sender: TObject);
begin
  If (EventCode = 'NFIRSMAIN') then begin
    CheckBoxNfirsForm                 := TCheckBoxNfirsForm.Create(Application ,EventPK);
    CheckBoxNfirsForm.DestNfirsMainID := EventPK;
    CheckBoxNfirsForm.ShowModal;
    CheckBoxNfirsForm.Free;
    Close;
  end else if (EventCode = 'NI') then begin
    CheckBoxNIForm          := TCheckBoxNIForm.Create(Application ,EventPK);
    CheckBoxNIForm.DestNIID := EventPK;
    CheckBoxNIForm.ShowModal;
    CheckBoxNIForm.Free;
    Close;
  end;  
end;

procedure TCheckBoxForm.CopyNonIncidentAttend(EventFileCode,EventCode: String);
begin
end;

procedure TCheckBoxForm.FormShow(Sender: TObject);
begin
  TitleImage.Picture.Icon := GetGlowImageIcon('TRAINING32');
  AutoEntryBox.Color      := clyellow;
  AutoEntryBox.SetFocus;

  If ((mFireID = '01920') or (mFireID = '23082')) and (EventCode = 'NFIRSMAIN') and CheckSecVar('SCHDED') then begin
    SchdOverTimeBrowse.Visible             := true;
    SchdOverTimeBrowse.ExplicitWhereClause := ' WHERE SCHDHIST.NFIRSMAINID = ' + EventPK;
    SchdOverTimeBrowse.Setup('SCHDHISTOVERTIME',TSchdHistForm,SchdOverTimeNewRecord);
  end else If (mFireID = '23082') and (EventCode = 'NI') and CheckSecVar('SCHDED') then begin
    SchdOverTimeBrowse.Visible             := true;
    SchdOverTimeBrowse.ExplicitWhereClause := ' WHERE SCHDHIST.NIID = ' + EventPK;
    SchdOverTimeBrowse.Setup('SCHDHISTOVERTIME',TSchdHistForm,SchdOverTimeNINewRecord);
  end;  
end;

function GetShiftLength(ShiftLength: Real): Real;
begin
  If ShiftLength < 3.25 then
    GetShiftLength := 3
  else if ShiftLength < 4.25 then
    GetShiftLength := 4
  else if ShiftLength < 5.25 then
    GetShiftLength := 5
  else if ShiftLength < 5.25 then
    GetShiftLength := 4
  else if ShiftLength < 5.25 then
    GetShiftLength := 5
  else if ShiftLength < 6.25 then
    GetShiftLength := 6
  else
    GetShiftLength := ShiftLength;
end;

procedure TCheckBoxForm.SchdOverTimeNewRecord(DataSet: TDataSet);
var test:Real;
begin

  Open_Query('GETNFIRSMAIN',false,'SELECT INCNUM, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(EventPK));
  If A('GETNFIRSMAIN').RecordsExist then begin
    DataSet.FieldByname('DATETIMESTART').AsDateTime := GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime;

    if GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime > 0 then
    begin
     DataSet.FieldByname('DATETIMEEND').AsDateTime   := GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime;
     DataSet.FieldByname('SHIFTLENGTH').AsFloat      := 24 * (GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime - GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime);
    end;

    If mFireID = '01920' then
      DataSet.FieldByname('SCHDTYPEID').AsString    := '91'
    else if mFireID = '23082' then begin
      DataSet.FieldByname('SCHDTYPEID').AsString    := '2';
      DataSet.FieldByname('SCHDSUBTYPEID').AsString := '15';
      DataSet.FieldByname('SCHDLOCID').AsString     := '8';
      DataSet.FieldByname('DATETIMEIN').AsDateTime  := GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime;
      DataSet.FieldByname('DATETIMEOUT').AsDateTime := GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime;
      DataSet.FieldByname('SHIFTLENGTH').AsFloat    := GetShiftLength(DataSet.FieldByname('SHIFTLENGTH').AsFloat);
      if GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime > 0 then
        DataSet.FieldByname('ACTUALLENGTH').AsFloat := 24 * (GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime - GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime);
    end;
    DataSet.FieldByname('DESCR').AsString           := substr(dbfield('GETNFIRSMAIN','INCNUM'),1,4) + '-' + substr(dbfield('GETNFIRSMAIN','INCNUM'),5,6);

  end;
  CloseApollo('GETNFIRSMAIN');
  DataSet.FieldByname('NFIRSMAINID').AsString := EventPK;
end;

procedure TCheckBoxForm.SchdOverTimeNINewRecord(DataSet: TDataSet);
begin
  Open_Query('GETNI',false,'SELECT * FROM NI WHERE NIID = ' + pkValue(EventPK));
  If A('GETNI').RecordsExist then begin
    DataSet.FieldByname('DATETIMESTART').AsDateTime := GetField('GETNI','DATETIMESTART').AsDateTime;
    DataSet.FieldByname('DATETIMEEND').AsDateTime   := GetField('GETNI','DATETIMEEND').AsDateTime;
    DataSet.FieldByname('SHIFTLENGTH').AsFloat      := 24 * (GetField('GETNI','DATETIMEEND').AsDateTime - GetField('GETNI','DATETIMESTART').AsDateTime);
    If mFireID = '23082' then begin
      DataSet.FieldByname('SCHDTYPEID').AsString      := '2';
      DataSet.FieldByname('SCHDSUBTYPEID').AsString   := '2';
      DataSet.FieldByname('SCHDLOCID').AsString       := '9';
      DataSet.FieldByname('DATETIMESTART').AsDateTime := GetField('GETNI','DATETIMESTART').AsDateTime;
      DataSet.FieldByname('DATETIMEEND').AsDateTime   := GetField('GETNI','DATETIMEEND').AsDateTime;
      DataSet.FieldByname('SHIFTLENGTH').AsFloat      := GetShiftLength(DataSet.FieldByname('SHIFTLENGTH').AsFloat);
      DataSet.FieldByname('ACTUALLENGTH').AsFloat     := 24 * (GetField('GETNI','DATETIMEEND').AsDateTime - GetField('GETNI','DATETIMEEND').AsDateTime);
    end;
    DataSet.FieldByname('DESCR').AsString           := 'Training Event ' + EventPK + '#';
  end;
  CloseApollo('GETNI');
  DataSet.FieldByname('NIID').AsString := EventPK;
end;


procedure TCheckBoxForm.CheckBox1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
var PersonCheckBox: TPersonCheckBox;
begin
  PersonCheckBox := TPersonCheckBox(Sender);
  AttendID       := PersonCheckBox.AttendID;
  If (AnyStrToInt(AttendID) <> 0) then begin
    Additionalbutton.visible := true;
    AdditionalButton.left    := PersonCheckBox.Left + 150;
    AdditionalButton.top     := PersonCheckBox.Top  - 2;
    AdditionalButton.Tag     := strtoint(AttendId);
    AdditionalButton.BringToFront;
  end else
    Additionalbutton.visible  := false;
end;

procedure TCheckBoxForm.AdditionalButtonClick(Sender: TObject);
var iAttendID    : Integer;
begin  
  iAttendId := TButton(sender).tag;
  DoAdditional(iAttendId);
end;

procedure TCheckBoxForm.DoAdditional(iAttendId: Integer);
Var TempCheckBox : TPersonCheckBox;
    iNum         : Integer;
begin
  If iAttendID >= 0 then begin
    TempcheckBox := nil;
    For iNum := scrollbox1.controlcount - 1 downto 0 do begin
      If scrollbox1.controls[iNum] is TPersonCheckBox then begin
        If TPersonCheckBox(ScrollBox1.Controls[iNum]).AttendID = inttostr(iAttendID) then begin
          TempCheckBox := TPersonCheckBox(ScrollBox1.Controls[iNum]);
          break;
        end;
      end;
    end;
    If TempCheckBox <> nil then begin
      ShowAdditionalForm(inttostr(iAttendID));
      If EventCode ='NI' then begin
        Open_Query('NIATT',false,'SELECT PERSPOINTTYPEID FROM NIATT WHERE NIATTID = ' + inttostr(iAttendID));
        TPersonCheckBox(TempCheckBox).PersPointTypeID := GetField('NIATT','PERSPOINTTYPEID').AsInteger;
        If (mFireID <> 'HARFO') then UpdateColor(TempCheckBox,true);
        CloseApollo('NIATT');
      end else if EventCode = 'NFIRSMAIN' then begin
        Open_Query('NFIRSATT',false,'SELECT PERSPOINTTYPEID FROM NFIRSATT WHERE NFIRSATTID = ' + inttostr(iAttendID));
        TPersonCheckBox(TempCheckBox).PersPointTypeID := Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger;
        If (mFireID <> 'HARFO') then UpdateColor(TempCheckBox,true);
        CloseApollo('NFIRSATT');
      end else if EventCode = 'EMS' then begin
        Open_Query('EMSATT',false,'SELECT PERSPOINTTYPEID FROM EMSATT WHERE EMSATTID = ' + inttostr(iAttendID));
        TPersonCheckBox(TempCheckBox).PersPointTypeID := Getfield('EMSATT','PERSPOINTTYPEID').AsInteger;
        If (mFireID <> 'HARFO') then UpdateColor(TempCheckBox,true);
        CloseApollo('EMSATT');
      end;
    end;  
  end;  
end;


procedure TCheckBoxForm.PersonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var vMemCode: String;
begin
//  vMemCode := padr((Sender as TPersonCheckBox).MemCode,8,' ');
//  If (Button = mbRight) and (FileCode<>'INCATT') then
//    ShowAdditionalForm(vMemCode)
end;

procedure TCheckBoxForm.ShowAdditionalForm(mAttendID : String);
begin
  If EventCode = 'NI' then begin
    NIAttForm := TNIAttForm.Create(application,'NIATT',mAttendID,NIForm.NIAttFormNewRecord);
    NIAttForm.ShowModal;
    NIAttForm.Free;
  end else if (EventCode = 'NFIRSMAIN') and (NFIRSResForm = 'Y') then begin
    NFIRSAtt5Form := TNFIRSAtt5Form.Create(application,'NFIRSATT',mAttendID,TNFIRSAtt5Form.NewRecord);
    NFIRSAtt5Form.ShowModal;
    NFIRSAtt5Form.Free;
  end else if (EventCode = 'NFIRSMAIN') then begin
    NFIRSAttForm := TNFIRSAttForm.Create(application,'NFIRSATT',mAttendID,TNFIRSAttForm.NewRecord);
    NFIRSAttForm.ShowModal;
    NFIRSAttForm.Free;
  end else if EventCode = 'EMS' then begin
    EMSAttForm := TEMSAttForm.Create(application,'EMSATT',mAttendID,EMSAttNewRecord);
    EMSAttForm.ShowModal;
    EMSAttForm.Free;
  end;
end;

procedure TCheckBoxForm.EMSAttNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('EMSID').AsString := EventPK;
  DataSet.FieldByName('POINT').AsString := '1';
end;

procedure TCheckBoxForm.CheckAllButtonClick(Sender: TObject);
var iNum: Integer;
begin
  If Not BooleanMessageDlg('Check all personnel on page?') then
    exit;

  Gauge.Visible  := true;
  Gauge.MaxValue := scrollbox1.controlcount - 1; 

  For iNum := scrollbox1.controlcount - 1 downto 0 do begin
    If scrollbox1.controls[iNum] is TPersonCheckBox then begin
      If not TPersonCheckBox(scrollbox1.controls[iNum]).Checked then
        PersonClick(TPersonCheckBox(scrollbox1.controls[iNum]));
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
    end;
  end;

  Gauge.Visible  := true;
  Gauge.Progress := 0;

  ShowMessage('Attendance given for All Listed Personnel!');
end;

procedure TCheckBoxForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TCheckBoxForm.COMPANYREPORTClick(Sender: TObject);
begin
  NfirsCompanyForm := TNfirsCompanyForm.Create(self,EventPK);
  NfirsCompanyForm.ShowModal;
  NfirsCompanyForm.Free;
end;

procedure TCheckBoxForm.FdidCompAllCheckClick(Sender: TObject);
begin
  FdidCompID := '';
  ReloadCheckBox(self);
end;

procedure TCheckBoxForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TCheckBoxForm.DeleteNIAtt(Sender: TObject);
Var TempCheckBox : TPersonCheckBox;
    iNum         : Integer;
begin
  If AttendID > '0' then begin
    TempcheckBox := nil;
    For iNum := scrollbox1.controlcount - 1 downto 0 do begin
      If scrollbox1.controls[iNum] is TPersonCheckBox then begin
        If TPersonCheckBox(ScrollBox1.Controls[iNum]).AttendID = AttendID then begin
          TempCheckBox := TPersonCheckBox(ScrollBox1.Controls[iNum]);
          break;
        end;
      end;
    end;
    If TempCheckBox <> nil then begin
      RunSQL('DELETE FROM NIATT WHERE NIATTID = ' + AttendID);
      TempCheckBox.PersPointTypeID := 0;
      TempCheckBox.Perform(BM_SETCHECK, 0, 0);
      TempCheckBox.AttendID := '0';
      UpdateColor(TempCheckBox,false);
    end;
  end;
end;

procedure TCheckBoxForm.ChangeNIAttType(Sender: TObject);
Var TempCheckBox : TPersonCheckBox;
    iNum         : Integer;
    PersPointTypeID  : Integer;
begin
  If AttendID > '0' then begin
    PersPointTypeID := (Sender as TMenuItem).Tag-1;
    TempcheckBox := nil;
    For iNum := scrollbox1.controlcount - 1 downto 0 do begin
      If scrollbox1.controls[iNum] is TPersonCheckBox then begin
        If TPersonCheckBox(ScrollBox1.Controls[iNum]).AttendID = AttendID then begin
          TempCheckBox := TPersonCheckBox(ScrollBox1.Controls[iNum]);
          break;
        end;
      end;
    end;
    If TempCheckBox <> nil then begin
      RunSQL('UPDATE NIATT SET PERSPOINTTYPEID = ' + IntToStr(TPointType(PointTypeList.Objects[PersPointTypeID]).PersPointTypeID) + ' WHERE NIATTID = ' + AttendID);
      TempCheckBox.PersPointTypeID := TPointType(PointTypeList.Objects[PersPointTypeID]).PersPointTypeID;
      UpdateColor(TempCheckBox,true);
    end;
  end;
end;


procedure TCheckBoxForm.DeleteAttendance1Click(Sender: TObject);
Var TempCheckBox : TPersonCheckBox;
    iNum         : Integer;
begin
  If AttendID > '0' then begin
    TempcheckBox := nil;
    For iNum := scrollbox1.controlcount - 1 downto 0 do begin
      If scrollbox1.controls[iNum] is TPersonCheckBox then begin
        If TPersonCheckBox(ScrollBox1.Controls[iNum]).AttendID = AttendID then begin
          TempCheckBox := TPersonCheckBox(ScrollBox1.Controls[iNum]);
          break;
        end;
      end;
    end;
    If TempCheckBox <> nil then begin
      RunSQL('DELETE FROM NFIRSATT WHERE NFIRSATTID = ' + AttendID);
      TempCheckBox.PersPointTypeID := 0;
      TempCheckBox.Perform(BM_SETCHECK, 0, 0);
      TempCheckBox.AttendID  := '0';
      UpdateColor(TempCheckBox,false);
    end;
  end;
end;

procedure TCheckBoxForm.NFIRSAttMenuPopup(Sender: TObject);
begin
  If AttendID = '0' then
    Abort;
end;

procedure TCheckBoxForm.NIAttMenuPopup(Sender: TObject);
begin
  If AttendID = '0' then
    Abort;
end;

procedure TCheckBoxForm.C341CheckClick(Sender: TObject);
begin
  FdidCompID := IntToStr((Sender as TRadioButton).Tag);
  ReloadCheckBox(self);
end;

procedure TCheckBoxForm.ChangeNFIRSAttType(Sender: TObject);
Var TempCheckBox : TPersonCheckBox;
    iNum         : Integer;
    PersPointTypeID  : Integer;
begin
  If AttendID > '0' then begin
    PersPointTypeID := (Sender as TMenuItem).Tag-1;
    TempcheckBox := nil;
    For iNum := scrollbox1.controlcount - 1 downto 0 do begin
      If scrollbox1.controls[iNum] is TPersonCheckBox then begin
        If TPersonCheckBox(ScrollBox1.Controls[iNum]).AttendID = AttendID then begin
          TempCheckBox := TPersonCheckBox(ScrollBox1.Controls[iNum]);
          break;
        end;
      end;
    end;
    If TempCheckBox <> nil then begin
      RunSQL('UPDATE NFIRSATT SET PERSPOINTTYPEID = ' + inttostr(TPointType(PointTypeList.Objects[PersPointTypeID]).PersPointTypeID) + ' WHERE NFIRSATTID = ' + AttendID);
      TempCheckBox.PersPointTypeID := TPointType(PointTypeList.Objects[PersPointTypeID]).PersPointTypeID;
      UpdateColor(TempCheckBox,true);
    end;
  end;
end;

procedure TCheckBoxForm.HandScanButtonClick(Sender: TObject);
begin
  if GetFormOfType(THandAttendanceForm)<>nil then
    GetFormOfType(THandAttendanceForm).Show
  else begin
    HandAttendanceForm := THandAttendanceForm.Create(self,EventCode,AttendCode,EventPk,PFdidVar);
    HandAttendanceForm.Show;
  end;
end;

procedure TCheckBoxForm.AutoEntryBoxKeyPress(Sender: TObject; var Key: Char);
var i: Integer;
begin
  If (key <> #13) then
    exit;
  for i := 0 to ScrollBox1.ControlCount-1 do
    If ScrollBox1.Controls[i] is TPersonCheckBox then
      If (rtrim(TPersonCheckBox(ScrollBox1.Controls[i]).PersCode) = rtrim(AutoEntryBox.Text)) then begin
        If not (TPersonCheckBox(ScrollBox1.Controls[i]).Checked) then begin
          TPersonCheckBox(ScrollBox1.Controls[i]).Checked := True;
          CheckBox1MouseMove(TPersonCheckBox(ScrollBox1.Controls[i]),[],0,0);
          TPersonCheckBox(ScrollBox1.Controls[i]).SetFocus;
        end;
        AutoEntryBox.SetFocus;
        AutoEntryBox.text := '';
        MessageBeep(MB_OK);
        Key               := #0;
        exit;
      end;
  MessageBeep(MB_ICONASTERISK);
  ErrMess(AutoEntryBox.Text+' Not valid ID#');
  AutoEntryBox.text := '';
end;

procedure TCheckBoxForm.RosterButtonClick(Sender: TObject);
var SysRepManForm: TSysRepManForm;
begin
  inherited;
  SysRepManForm := TSysRepManForm.Create(application,'PERSROSTER');
  SysRepManForm.Show;
end;

end.
