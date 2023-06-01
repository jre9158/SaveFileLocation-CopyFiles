unit PersEvent;
 
interface

uses
  Windows,
  CommonVar,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  OvcBase,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  AlpinePanel,
  Grids,
  BaseGrid,
  AdvGrid,
  htmlbtns,
  alpinecheck,
  ALPINEDATETIME,
  AlpineLookGrid,
  Pers,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  NormalBase,
  AlpineMemo,
  AlpineTMSStringGrid,
  AdvObj;

type
  TPersonEventForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel3: TPanel;
    Panel4: TPanel;
    AlpinePanel1: TAlpinePanel;
    HistoryBrowse: TAlpineTMSStringGrid;
    Panel0B: TAlpinePanel;
    EventTypeBrowse: TAdvStringGrid;
    AlpinePanel2: TAlpinePanel;
    Label32: TLabel;
    Label33: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    nemsis: TImage;
    Training: TImage;
    ems: TImage;
    incident: TImage;
    AlpinePanel3: TAlpinePanel;
    AttendanceButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    TagButton: TAlpineGlowButton;
    AlpinePanel4: TAlpinePanel;
    Label1: TLabel;
    TotalField: TAlpineEdit;
    Label2: TLabel;
    EVLengthField: TAlpineEdit;
    Label3: TLabel;
    AttLengthField: TAlpineEdit;
    Label4: TLabel;
    EVPointField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure AttendanceButtonClick(Sender: TObject);
    procedure HistoryBrowseDblClick(Sender: TObject);
  private
    { Private declarations }
    TotalVar     : Real;
    EVPointVar   : Real;
    AttPointVar  : Real;
    EVLengthVar  : Real;
    AttLengthVar : Real;
    procedure LoadHistoryBrowse;
    procedure LoadNFIRSAtt;
    procedure LoadEMSAtt;
    procedure LoadNIAtt;
    procedure LoadNemsisE04;
    function GetPTypeIDWhere: String;
  public
    { Public declarations }
  end;

var
  PersonEventForm: TPersonEventForm;

implementation
uses Genfunc,
     AppLst,
     CommonFunc,
     NFIRSAtt5,
     SecSet;

{$R *.dfm}

procedure TPersonEventForm.AttendanceButtonClick(Sender: TObject);
begin
  LoadHistoryBrowse;
end;

procedure TPersonEventForm.FormCreate(Sender: TObject);
Var RowNum : Integer;
begin
  EventTypeBrowse.clear;
  EventTypeBrowse.ColCount      := 4;
  EventTypeBrowse.RowCount      := 1;
  RowNum                        := 0;
  EventTypeBrowse.ColWidths[00] := 000;
  EventTypeBrowse.ColWidths[01] := 000;
  EventTypeBrowse.ColWidths[02] := 020;
  EventTypeBrowse.ColWidths[03] := 200;

  EventTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;

  If CheckModule('INC') then begin
    EventTypeBrowse.Cells[0,RowNum] := 'NFIRSATT';
    EventTypeBrowse.Cells[1,RowNum] := '';
    EventTypeBrowse.AddCheckBox(2,RowNum,false,true);
    EventTypeBrowse.Cells[3,RowNum] := 'NFIRS Reports';
    EventTypeBrowse.RowCount        := EventTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
  end;

  If CheckModule('EMS') then begin
    EventTypeBrowse.Cells[0,RowNum] := 'EMSATT';
    EventTypeBrowse.Cells[1,RowNum] := '';
    EventTypeBrowse.AddCheckBox(2,RowNum,false,true);
    EventTypeBrowse.Cells[3,RowNum] := 'EMS/PCR Reports';
    EventTypeBrowse.RowCount        := EventTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
  end;  
    
  If CheckModule('NEMSIS') then begin
    EventTypeBrowse.Cells[0,RowNum] := 'NEMSISE04';
    EventTypeBrowse.Cells[1,RowNum] := '';
    EventTypeBrowse.AddCheckBox(2,RowNum,false,true);
    EventTypeBrowse.Cells[3,RowNum] := 'Nemsis Reports';
    EventTypeBrowse.RowCount        := EventTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
  end;

  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE WHERE FDID = ' + AddExpr(TPersForm(GetFormOfType(TPersForm)).Fdid) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE');
  While Not A('NIPTYPE').Eof do begin
    EventTypeBrowse.Cells[0,RowNum] := 'NIATT';
    EventTypeBrowse.Cells[1,RowNum] := GetField('NIPTYPE','NIPTYPEID').AsString;
    EventTypeBrowse.AddCheckBox(2,RowNum,false,true);
    EventTypeBrowse.Cells[3,RowNum] := Getfield('NIPTYPE','DESCR').AsString;
    EventTypeBrowse.RowCount        := EventTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');

  LoadHistoryBrowse;
  StartDateField.Enabled := true;
  EndDateField.Enabled   := true;
end;


procedure TPersonEventForm.LoadHistoryBrowse;
Var RowVar     : Integer;
    CheckValue : Boolean;
begin
  HistoryBrowse.Clear;
  HistoryBrowse.ColCount       := 0;
  HistoryBrowse.RowCount       := 0;
  HistoryBrowse.ClearColumns;
  HistoryBrowse.FixedRowAlways := true;
  HistoryBrowse.RowCount       := HistoryBrowse.FixedRows;

  HistoryBrowse.SetColumn('EVENTTYPE',     'EVENTTYPE',    000);
  HistoryBrowse.SetColumn('PK',            'PK',           000);
  HistoryBrowse.SetColumn('ICON',          '',             020);
  HistoryBrowse.SetColumn('EVENTNUM',      'Event#',       075);
  HistoryBrowse.SetColumn('DATETIME',      'Date',         085,'','D');
  HistoryBrowse.SetColumn('LOCATION',      'Location',     140);
  HistoryBrowse.SetColumn('FDIDCOMPCODE',  'Comp',         035);
  HistoryBrowse.SetColumn('DESCR',         'Description',  170);
  HistoryBrowse.SetColumn('TYPE',          'Type',         160);
  HistoryBrowse.SetColumn('POINT',         'Att Point',    IIfI(mFireID = '10700',000,070));
  HistoryBrowse.SetColumn('NIPOINT',       'Point',        IIfI(mFireID = '10700',000,070));
  HistoryBrowse.SetColumn('NILOSAPCATCODE','Losap',        055);
  HistoryBrowse.SetColumn('EVLENGTH',      'Att Lgth',     100);
  HistoryBrowse.SetColumn('NIEVLENGTH',    'Evt Lgth',     999);

  TotalVar     := 0;
  EVPointVar   := 0;
  AttPointVar  := 0;
  EVLengthVar  := 0;
  AttLengthVar := 0;


  For RowVar := 0 to EventTypeBrowse.RowCount do begin
    EventTypeBrowse.GetCheckBoxState(2,RowVar,CheckValue);
    If (EventTypeBrowse.Cells[0,RowVar] = 'NFIRSATT') and CheckValue then
      LoadNFIRSAtt;
    If (EventTypeBrowse.Cells[0,RowVar] = 'EMSATT') and CheckValue then
      LoadEMSAtt;
    If (EventTypeBrowse.Cells[0,RowVar] = 'NEMSISE04') and CheckValue then
      LoadNemsisE04;
  end;

  LoadNIAtt;

  if HistoryBrowse.RowCount > 1 then begin
    HistoryBrowse.SortSettings.Column    := 4;
    HistoryBrowse.SortSettings.Direction := sdDescending;
    HistoryBrowse.QSort;
  end;

  TotalField    .Value                 := FormatFloat('##,##0',TotalVar);
  EVLengthField .Value                 := FormatFloat('##,##0.00',EvLengthVar);
  AttLengthField.Value                 := FormatFloat('##,##0.00',AttLengthVar);
  EVPointField  .Value                 := FormatFloat('##,##0.00',EvPointVar);
end;

procedure TPersonEventForm.LoadNFIRSAtt;
begin
  Open_Query('NFIRSATT',false,'SELECT NFIRSATT.EVLENGTH NFIRSATTEVLENGTH, NFIRSATT.POINT NFIRSATTPOINT, NFIRSMAIN.EVLENGTH, NFIRSMAIN.POINT, NFIRSATT.NFIRSATTID NFIRSATTID, ' +
                              'NFIRSMAIN.DATETIMEALARM DATETIMEALARM, NFIRSMAIN.STRNUM STRNUM, NFIRSMAIN.STREET STREET, N5INCTYPE.DESCR DESCR, NFIRSMAIN.INCNUM INCNUM FROM NFIRSATT ' + 'LEFT JOIN NFIRSMAIN ON (NFIRSMAIN.NFIRSMAINID = NFIRSATT.NFIRSMAINID) ' + 'LEFT JOIN N5INCTYPE ON (N5INCTYPE.CODE = NFIRSMAIN.SITFOUND) ' +
                              'WHERE PERSID = ' + PK + ' AND ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',StartDateField.Value,EndDateField.Value) + ' ORDER BY DATETIMEALARM');

  While Not A('NFIRSATT').Eof do begin
    HistoryBrowse.SetValue('EVENTTYPE',     'NFIRSMAIN');
    HistoryBrowse.SetValue('PK',            GetField('NFIRSATT','NFIRSATTID').AsString);
    HistoryBrowse.AddBitButton(HistoryBrowse.ColumnNames.IndexOf('ICON'),  HistoryBrowse.Rowcount-1,18,18,'',Incident.Picture.BitMap,  AdvGrid.haCenter,AdvGrid.vaCenter);
    HistoryBrowse.SetValue('EVENTNUM',      substr(tdbfield('NFIRSATT','INCNUM'),1,4) + '-' + substr(tdbfield('NFIRSATT','INCNUM'),5,6));
    HistoryBrowse.SetValue('DATETIME',      FormatDateTime('MM/DD/YYYY',GetField('NFIRSATT','DATETIMEALARM').AsDateTime));
    HistoryBrowse.SetValue('LOCATION',      alltrim(alltrim(dbfield('NFIRSATT','STRNUM')) + ' ' + dbfield('NFIRSATT','STREET')));
    HistoryBrowse.SetValue('FDIDCOMPCODE',  '');
    HistoryBrowse.SetValue('DESCR',   '');
    HistoryBrowse.SetValue('TYPE',          GetField('NFIRSATT','DESCR').AsString);
    HistoryBrowse.SetValue('POINT',         FormatFloat('#0.0',GetField('NFIRSATT','POINT').AsFloat));
    HistoryBrowse.SetValue('NILOSAPCATCODE','NFIRS');
    HistoryBrowse.SetValue('EVLENGTH',      FormatFloat('#0.0',GetField('NFIRSATT','EVLENGTH').AsFloat));


    TotalVar     := TotalVar     + 1;
    EVPointVar   := EVPointVar   + GetField('NFIRSATT','POINT').AsFloat;
    AttPointVar  := AttPointVar  + GetField('NFIRSATT','NFIRSATTPOINT').AsFloat;
    EVLengthVar  := EVLengthVar  + GetField('NFIRSATT','EVLENGTH').AsFloat;
    AttLengthVar := AttLengthVar + GetField('NFIRSATT','NFIRSATTEVLENGTH').AsFloat;
    
    A('NFIRSATT').Skip(1);
  end;
  CloseApollo('NFIRSATT');
end;

procedure TPersonEventForm.LoadEMSAtt;
Var SQLVar : String;
begin
  SQLVar := 'SELECT EMS.EVLENGTH, EMSATT.EMSATTID EMSATTID, EMS.DATETIMEALARM DATETIMEALARM, EMS.STRNUM STRNUM, ' +
            'EMS.STREET STREET, EMSCALLTYPE.DESCR DESCR, EMS.INCNUM INCNUM, EMSATTTASK.DESCR EMSATTTASKDESCR ' +
            'FROM EMSATT ' +
            'LEFT JOIN EMS ON (EMS.EMSID = EMSATT.EMSID) ' +
            'LEFT JOIN EMSCALLTYPE ON (EMSCALLTYPE.EMSCALLTYPEID = EMS.EMSCALLTYPEID) ' +
            'LEFT JOIN EMSATTTASK ON (EMSATT.EMSATTTASKID = EMSATTTASK.EMSATTTASKID) ' +
            'WHERE PERSID = ' + PK + ' AND ' + BuildSQLAlpineDate('EMS.DATETIMEALARM',StartDateField.Value,EndDateField.Value) + ' ORDER BY DATETIMEALARM';

  Open_Query('EMSATT',false,SQLVar);
  While Not A('EMSATT').Eof do begin
    HistoryBrowse.SetValue('EVENTTYPE',     'EMS');
    HistoryBrowse.SetValue('PK',            GetField('EMSATT','EMSATTID').AsString);
    HistoryBrowse.AddBitButton(HistoryBrowse.ColumnNames.IndexOf('ICON'),  HistoryBrowse.Rowcount-1,18,18,'',Ems.Picture.BitMap,  AdvGrid.haCenter,AdvGrid.vaCenter);
    HistoryBrowse.SetValue('EVENTNUM',      substr(tdbfield('EMSATT','INCNUM'),1,4) + '-' + substr(tdbfield('EMSATT','INCNUM'),5,6));
    HistoryBrowse.SetValue('DATETIME',      FormatDateTime('MM/DD/YYYY',GetField('EMSATT','DATETIMEALARM').AsDateTime));
    HistoryBrowse.SetValue('LOCATION',      alltrim(alltrim(dbfield('EMSATT','STRNUM')) + ' ' + dbfield('EMSATT','STREET')));
    HistoryBrowse.SetValue('FDIDCOMPCODE',  '');
    HistoryBrowse.SetValue('DESCR',   '');
    HistoryBrowse.SetValue('TYPE',          GetField('EMSATT','EMSATTTASKDESCR').AsString);
    HistoryBrowse.SetValue('POINT',         '1.0');
    HistoryBrowse.SetValue('NILOSAPCATCODE','EMS');
    HistoryBrowse.SetValue('EVLENGTH',      '-');
    A('EMSATT').Skip(1);
  end;
  CloseApollo('EMSATT');
end;

procedure TPersonEventForm.LoadNemsisE04;
Var SQLVar : String;
begin
  SQLVar := 'SELECT NEMSISE04.NEMSISE04ID, NEMSIS.E05_04, NEMSIS.STRNUM STRNUM, ' +
            'NEMSIS.STREET STREET, NEMSIS.E01_01, NEMSISE04.E04_02 ' +
            'FROM NEMSISE04 ' +
            'LEFT JOIN NEMSIS ON (NEMSIS.NEMSISID = NEMSISE04.NEMSISID) ' +
            'WHERE NEMSISE04.PERSID = ' + PK + ' AND ' + BuildSQLAlpineDate('NEMSIS.E05_04',StartDateField.Value,EndDateField.Value) + ' ORDER BY NEMSIS.E05_04';

  Open_Query('NEMSISE04',false,SQLVar);
  Open_Query('NEMSISCODE',false,'SELECT CODE, DESCR FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr('E04_02'));
  While Not A('NEMSISE04').Eof do begin
    HistoryBrowse.SetValue('EVENTTYPE',     'NEMSIS');
    HistoryBrowse.SetValue('PK',            GetField('NEMSISE04','NEMSISE04ID').AsString);
    HistoryBrowse.AddBitButton(HistoryBrowse.ColumnNames.IndexOf('ICON'),  HistoryBrowse.Rowcount-1,18,18,'',Nemsis.Picture.BitMap,  AdvGrid.haCenter,AdvGrid.vaCenter);
    HistoryBrowse.SetValue('EVENTNUM',      tdbfield('NEMSISE04','E01_01'));
    HistoryBrowse.SetValue('DATETIME',      FormatDateTime('MM/DD/YYYY',GetField('NEMSISE04','E05_04').AsDateTime));
    HistoryBrowse.SetValue('LOCATION',      alltrim(alltrim(dbfield('NEMSISE04','STRNUM')) + ' ' + dbfield('NEMSISE04','STREET')));
    HistoryBrowse.SetValue('FDIDCOMPCODE',  '');
    HistoryBrowse.SetValue('DESCR',   '');
    If A('NEMSISCODE').ExactQueryLocate('CODE',tdbfield('NEMSISE04','E04_02')) then
      HistoryBrowse.SetValue('TYPE',          tdbfield('NEMSISCODE','DESCR'));
    HistoryBrowse.SetValue('POINT',         '1.0');
    HistoryBrowse.SetValue('NILOSAPCATCODE','NEMSIS');
    HistoryBrowse.SetValue('EVLENGTH',      '-');
    A('NEMSISE04').Skip(1);
  end;
  CloseApollo('NEMSISE04');
  CloseApollo('NEMSISCODE');
end;

procedure TPersonEventForm.LoadNIAtt;
Var SQLVar : String;
begin
  SQLVar := 'SELECT NI.NIID,NI.DESCR DESCR, NIUSER1.CODE NIUSER1CODE, FDIDCOMP.CODE FDIDCOMPCODE, NIATT.NIATTID NIATTID, ' +
            'NIATT.EVLENGTH, NI.EVLENGTH NIEVLENGTH, NI.POINT NIPOINT, NIATT.POINT, NI.DATETIMESTART DATETIMESTART, NIATT.DATETIMEDATE DATETIMEDATE, LOCATION.DESCR LOCATIONDESCR, ' +
            'NIPTYPE.DESCR PRIMEDESCR, NISTYPE.DESCR SUBDESCR, NILOSAPCAT.CODE NILOSAPCATCODE ' +
            'FROM NIATT ' +
            'LEFT JOIN NI ON (NI.NIID = NIATT.NIID) ' +
            'LEFT JOIN NIPTYPE ON (NIPTYPE.NIPTYPEID = NI.NIPTYPEID) ' +
            'LEFT JOIN FDIDCOMP ON (NI.FDIDCOMPID = FDIDCOMP.FDIDCOMPID) ' +
            'LEFT JOIN NIUSER1  ON (NI.NIUSER1ID = NIUSER1.NIUSER1ID) ' +
            'LEFT JOIN LOCATION ON (LOCATION.LOCATIONID = NI.LOCATIONID) ' +
            'LEFT JOIN NISTYPE  ON (NISTYPE.NISTYPEID = NI.NISTYPEID) ' +
            'LEFT JOIN NILOSAPCAT ON (NI.NILOSAPCATID = NILOSAPCAT.NILOSAPCATID) ' +
            'WHERE NIATT.PERSID = ' + PK + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',StartDateField.Value,EndDateField.Value) +
            GetPTypeIDWhere + ' ORDER BY NIATT.DATETIMEDATE';

  Open_Query('NIATT',false,SQLVar);

  While Not A('NIATT').Eof do begin
    HistoryBrowse.SetValue('EVENTTYPE',     'NI');
    HistoryBrowse.SetValue('PK',            GetField('NIATT','NIATTID').AsString);
    HistoryBrowse.AddBitButton(HistoryBrowse.ColumnNames.IndexOf('ICON'),  HistoryBrowse.Rowcount-1,18,18,'',Training.Picture.BitMap,  AdvGrid.haCenter,AdvGrid.vaCenter);
    HistoryBrowse.SetValue('EVENTNUM',      GetField('NIATT','NIID').AsString);
    HistoryBrowse.SetValue('DATETIME',      FormatDateTime('MM/DD/YYYY',GetField('NIATT','DATETIMESTART').AsDateTime));
    HistoryBrowse.SetValue('LOCATION',      tdbfield('NIATT','LOCATIONDESCR'));
    HistoryBrowse.SetValue('FDIDCOMPCODE',  tdbfield('NIATT','FDIDCOMPCODE'));
    HistoryBrowse.SetValue('DESCR',         tdbfield('NIATT','DESCR'));
    HistoryBrowse.SetValue('TYPE',          tdbfield('NIATT','SUBDESCR'));
    HistoryBrowse.SetValue('POINT',         FormatFloat('#0.0',GetField('NIATT','POINT').AsFloat));
    HistoryBrowse.SetValue('NIPOINT',       FormatFloat('#0.0',GetField('NIATT','NIPOINT').AsFloat));
    HistoryBrowse.SetValue('NILOSAPCATCODE',tdbfield('NIATT','NILOSAPCATCODE'));
    HistoryBrowse.SetValue('EVLENGTH',      FormatFloat('#0.00',GetField('NIATT','EVLENGTH').AsFloat));
    HistoryBrowse.SetValue('NIEVLENGTH',    FormatFloat('#0.00',GetField('NIATT','NIEVLENGTH').AsFloat));

    TotalVar     := TotalVar     + 1;
    EVPointVar   := EVPointVar   + GetField('NIATT','NIPOINT').AsFloat;
    AttPointVar  := AttPointVar  + GetField('NIATT','POINT').AsFloat;
    EVLengthVar  := EVLengthVar  + GetField('NIATT','NIEVLENGTH').AsFloat;
    AttLengthVar := AttLengthVar + GetField('NIATT','EVLENGTH').AsFloat;

    A('NIATT').Skip(1);
  end;
  CloseApollo('NIATT');
end;



function TPersonEventForm.GetPTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to EventTypeBrowse.RowCount do begin
    EventTypeBrowse.GetCheckBoxState(2,RowVar,CheckValue);
    If (EventTypeBrowse.Cells[0,RowVar] = 'NIATT') and CheckValue then
      WhereString := WhereString + ' OR NI.NIPTYPEID = ' + EventTypeBrowse.Cells[1,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ')'
  else
    WhereString := ' AND 1=2';
  GetPTypeIDWhere := WhereString;
end;

procedure TPersonEventForm.HistoryBrowseDblClick(Sender: TObject);
Var NfirsAttID : String;
begin
  If (HistoryBrowse.GetValue('EVENTTYPE',HistoryBrowse.Row) = 'NFIRSMAIN') AND AlpineLogin then begin
    NfirsAttID    := HistoryBrowse.GetValue('PK',HistoryBrowse.Row);
    NFIRSAtt5Form := TNFIRSAtt5Form.Create(application,'NFIRSATT',NfirsAttID,TNFIRSAtt5Form.NewRecord);
    NFIRSAtt5Form.ShowModal;
    NFIRSAtt5Form.Free;
  end;   
end;

procedure TPersonEventForm.FormShow(Sender: TObject);
begin
  StartDateField.Value   := StrToDate('01/01/' + FormatDateTime('YYYY',Now-365));
  EndDateField  .Value   := Now;
  StartDateField.Enabled := true;
  EndDateField  .Enabled := true;
  TotalField    .Enabled := false;
  EVLengthField .Enabled := false;
  AttLengthField.Enabled := false;
  EVPointField  .Enabled := false;
end;

procedure TPersonEventForm.TagButtonClick(Sender: TObject);
Var RowNum     : Integer;
    CheckValue : Boolean;
begin
  For RowNum := 0 to EventTypeBrowse.RowCount do begin
    CheckValue := true;
    EventTypeBrowse.SetCheckBoxState(2,RowNum,CheckValue);
  end;
end;


procedure TPersonEventForm.UnTagButtonClick(Sender: TObject);
Var RowNum     : Integer;
    CheckValue : Boolean;
begin
  For RowNum := 0 to EventTypeBrowse.RowCount do begin
    CheckValue := false;
    EventTypeBrowse.SetCheckBoxState(2,RowNum,CheckValue);
  end;
end;

end.
