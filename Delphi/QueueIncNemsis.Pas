unit QueueIncNemsis;

interface

uses
  apodset,
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  extctrls,
  buttons,
  cusbtn,
  grids,
  genfunc,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  inifiles,
  Menus,
  OrpheusWrapper,
  Blink,
  Db,
  AdvPanel,
  applst,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  BasePictureField,
  AlpineEdit,
  AlpineBase,
  HTMLabel,
  AdvOfficePager,
  AdvOfficePagerStylers,
  ImgList,
  AdvOfficeImage,
  AdvAppStyler,
  FdFunc,
  FDFuncBase,
  PlannerMonthView, AdvObj, AdvGroupBox, AlpineLookup, AlpinePanel;

type

  TQueueIncNemsisForm = class(TAlpineBaseForm)
    OvcController: TOvcController;
    AdvPanel1: TAdvPanel;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    HTMLabel2: THTMLabel;
    AdvPanelStyler2: TAdvPanelStyler;
    AdvOfficeImage1: TAdvOfficeImage;
    img1: TImageList;
    AdvFormStyler1: TAdvFormStyler;
    img32: TImageList;
    AdvPanel2: TAdvPanel;
    QPanel: TAdvPanel;
    Label5: TLabel;
    UnitNumField: TLabel;
    Label4: TLabel;
    NfirsAppCountField: TLabel;
    Label3: TLabel;
    UserNameField: TLabel;
    ErrPanel: TAdvPanel;
    ErrorGrid: TAlpineTMSStringGrid;
    OthUnitPanel: TAdvPanel;
    NfirsAppOtherBrowse: TAlpineTMSStringGrid;
    AdvOfficeImage4: TAdvOfficeImage;
    AdvOfficeImage5: TAdvOfficeImage;
    AdvOfficeImage6: TAdvOfficeImage;
    LocationField: TLabel;
    MainPanel: TAdvPanel;
    Pager: TAdvOfficePager;
    QueueTab: TAdvOfficePage;
    AdvPanel7: TAdvPanel;
    NFIRSAppBrowse: TAlpineTMSStringGrid;
    RepPanel: TAdvPanel;
    ReportBrowse: TAlpineTMSStringGrid;
    ReportPanel: TAdvPanel;
    NemsisLabel: TLabel;
    NFIRSLabel: TLabel;
    ReportTitle: TLabel;
    PatImg: TAdvOfficeImage;
    NFIRSImg: TAdvOfficeImage;
    PatCountField: TAlpineEdit;
    NFIRSCountField: TAlpineEdit;
    CreateButton: TAlpineGlowButton;
    AdvPanel3: TAdvPanel;
    UnfinishedLabel: TLabel;
    TitleImage: TImage;
    RosterTab: TAdvOfficePage;
    AdvPanel11: TAdvPanel;
    SchdHistBrowse: TAlpineBlockBrowse;
    AdvPanel4: TAdvPanel;
    SchdTitle: TLabel;
    SchdImage: TImage;
    SchdCalendar: TPlannerMonthView;
    BottomPanel: TPanel;
    ExposureButton: TAlpineGlowButton;
    NemsisNewButton: TAlpineGlowButton;
    DeleteButton: TAlpineGlowButton;
    EditButton: TAlpineGlowButton;
    RestartButton: TAlpineGlowButton;
    RefreshButton: TAlpineGlowButton;
    FinishButton: TAlpineGlowButton;
    SetButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    TitleField: TLabel;
    Label1: TLabel;
    DayRangeLabel: TLabel;
    AdvOfficeImage2: TAdvOfficeImage;
    PrintButton: TAlpineGlowButton;
    CADIntButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    UnitNumButton: TAlpineGlowButton;
    AddUnitButton: TAlpineGlowButton;
    NemsisQAHistPanel: TAdvPanel;
    NemsisQAHistBrowse: TAlpineTMSStringGrid;
    Status911Splitter: TSplitter;
    Splitter1: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseButtonClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure NFIRSAppBrowseClick(Sender: TObject);
    procedure ReportBrowseDblClick(Sender: TObject);
    procedure NemsisNewButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure ExposureButtonClick(Sender: TObject);
    procedure FinishButtonClick(Sender: TObject);
    procedure SetButtonClick(Sender: TObject);
    procedure CreateButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ReportBrowseClick(Sender: TObject);
    procedure RosterTabShow(Sender: TObject);
    procedure SchdCalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
    procedure UnitNumButtonClick(Sender: TObject);
    procedure PatCountFieldChange(Sender: TObject);
    procedure ErrorGridDblClick(Sender: TObject);
    procedure ErrPanelDblClick(Sender: TObject);
    procedure NfirsAppOtherBrowseClick(Sender: TObject);
    procedure RestartButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure CADIntButtonClick(Sender: TObject);
    procedure BottomPanelResize(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure NemsisQAHistBrowseDblClick(Sender: TObject);
  private
    { Private declarations }
    mDateTimeRecord: TDateTime;
    FNfirsAppRemove,NfirsMainid : String;
    BeenInFormActivate: Boolean;    
    procedure EditReport;
    procedure LoadNfirsAppBrowse(mNfirsAppID: String);
    procedure EditNfirsReport(pk: String);
    procedure LoadNfirsAppOtherBrowse;
    procedure NfirsAppNewRecord(DataSet: TDataSet);
    procedure NfirsAddendumNewRecord(DataSet: TDataSet);
    procedure NfirsMainNewRecord(DataSet: TDataSet);
    procedure SchdHistNewRecord(DataSet: TDataSet);
    procedure NemsisNewRecord(DataSet: TDataSet);
    procedure LoadReportBrowse;
    procedure ResetErrorGrid;
    procedure LoadForm(mNfirsAppID: String);
    procedure LoadSchdHistBrowse;
    function  CreateNemsisReport: String;
    procedure AddAddendum(pk: String);
    function  CheckFinish: Boolean;
    procedure EditNfirsApp(NfirsAppID: String);
    procedure EditNemsis(NemsisID: String);
    function  GetNfirsAppStatType(NfirsAppID: String): String;
    function  GetUnitNum: String;
    procedure LoadNFIRSFields(NfirsMainID: String);
    procedure CreateExposure(NFIRSMainID, NewExpNum: String);
    procedure SetUnitNum;
    procedure LoadNemsisQAHistBrowse;
    procedure NemsisQAHistNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    UnitNum        : String;
    LocationVar    : String;
    QueueErrorList : TStringList;
    FdidVar        : String;
    DayRange       : Real;
    class procedure CheckQueue(Var QueueErrorList: TStringList; UnitNum, NfirsAppID, NfirsMainId: String);
  end;

var
  QueueIncNemsisForm : TQueueIncNemsisForm;
  FDFunctions        : TFDFunc;

implementation
uses NormalBase,
     CommonFunc,
     NfirsAddendum,
     CommonNemsis,
     CommonEMS,
     CommonNfirs,
     CommonNfirsApp,
     Nfirs,
     NfirsApp,
     NemsisEMS,
     NemsisQAHist,
     SchdHist,
     QueueUnitSelect,
     QueueRestart,
     SysDemoPictView,
     SecSet,
     CommonVar,
     DispCallRep,
     FormFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TQueueIncNemsisForm.FormCreate(Sender: TObject);
Var PromptUnit : Boolean;
begin
  BeenInFormActivate      := False;
  AddUnitButton.visible   := False;

  FNfirsAppRemove         := SQLLookUp(FireID,'FDID','MOBSET','NFIRSAPPREMOVE');
  TitleField.Caption      := FireDept;
  TitleImage.Picture.Icon := GetGlowImageIcon('APPARATUS32');
  SchdImage.Picture.Icon  := GetGlowImageIcon('SCHEDULING32');

  Open_Query('QUEUESET',false,'SELECT PROMPTUNIT, DAYRANGE FROM QUEUESET WHERE FDID = ' + AddExpr(FireID));
  DayRange              := GetField('QUEUESET','DAYRANGE').AsFloat;
  DayRangeLabel.Caption := IIf(DayRange = 0,'Not Applicable','Last ' + FloatToStr(DayRange) + ' days');
  PromptUnit            := tdbfield('QUEUESET','PROMPTUNIT') = 'Y';
  CloseApollo('QUEUESET');

  If PromptUnit then
    SetUnitNum;

  Open_Query('SEC',false,'SELECT PERSID, DESCR, UNITNUM FROM SEC WHERE SECID = ' + pkValue(SecIDVar));
  UnitNum                 := tdbfield('SEC','UNITNUM');
  UserNameField.Caption   := SQLLookup(tdbfield('SEC','PERSID'),'PERSID','PERS','LNAME') + ', ' + SQLLookup(tdbfield('SEC','PERSID'),'PERSID','PERS','FNAME');
  CloseApollo('SEC');

  If UnitNum = '' then begin
    LocationField.Caption := 'Pick Unit';
  end else begin
    LoadForm('-1');
  end;

  Pager.ActivePageIndex     := 0;
  WindowState               := wsMaximized;
  QueueErrorList            := TStringList.Create;
  CADIntButton.Enabled      := CheckSecVar('CADINTVIEW');
  RestartButton.Enabled     := CheckSecVar('QUEUERESTART');
  RedNMXButton.Visible      := mFireID = '12345';
  If (mFireID = '28008') then begin
    NemsisQAHistPanel.Visible    := false;
    NemsisNewButton  .Visible    := false;
  end;  
end;

procedure TQueueIncNemsisForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanel('H',BottomPanel);
  NFIRSAppBrowseClick(self);
end;

procedure TQueueIncNemsisForm.LoadForm(mNfirsAppID: String);
begin
  LocationField.Caption := 'Unit ' + UnitNum;
  UnitNumField.Caption  := UnitNum;
  FdidVar               := SqlLookUp(UnitNum,'UNITNUM','INV','FDID');
  FdidVar               := IIf(FdidVar = '',FireID,FdidVar);
  Open_Query('INV',false,'SELECT INVLOCID FROM INV WHERE UNITNUM = ' + AddExpr(UnitNum));
  Open_Query('INVLOC',false,'SELECT MAINCODE FROM INVLOC WHERE INVLOCID = ' + pkValue(GetField('INV','INVLOCID').AsString));
  LocationVar := tdbfield('INVLOC','MAINCODE');
  CloseApollo('INVLOC');
  CloseApollo('INV');

  LoadNfirsAppBrowse(mNfirsAppID);
  ResetErrorGrid;
end;

function TQueueIncNemsisForm.GetUnitNum: String;
begin
  If FireID = '28008' then begin
    If (substr(UnitNum,1,1) = 'M') or (substr(UnitNum,1,1) = 'Q') then
      GetUnitNum := ' SCHDHIST.UNITNUM = ' + AddExpr('Q' + substr(UnitNum,2,2)) + ' OR SCHDHIST.UNITNUM = ' + AddExpr('M' + substr(UnitNum,2,2))
    else
      GetUnitNum := ' SCHDHIST.UNITNUM = ' + AddExpr(UnitNum);
  end else begin
    GetUnitNum := ' SCHDHIST.UNITNUM = ' + AddExpr(UnitNum)
  end;
end;

procedure TQueueIncNemsisForm.LoadSchdHistBrowse;
Var DateVar : TDateTime;
begin
  DateVar                            := SchdCalendar.Date + GetRealTime(GetTimeAsString);
  SchdHistBrowse.ExplicitWhereClause := ' WHERE ' +
                                        '(SCHDLOC.CODE = ' + AddExpr(LocationVar) + ' OR ' + GetUnitNum + ') AND ' + 
                                        'SCHDHIST.DATETIMEEND >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',DateVar)) + ' AND ' +
                                        'SCHDHIST.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',DateVar));

  If Not (UnitNum = '') then begin
    SchdHistBrowse.Setup('SCHDHISTQUEUE',TSchdHistForm,SchdHistNewRecord);
    SchdTitle.Caption := 'Daily Roster on ' + FormatDateTime('MM/DD/YYYY',DateVar) + ' at Station ' + LocationVar + ' for Unit ' + UnitNum;
  end;

  SchdHistBrowse.DeleteEnabled := CheckSecVar('SCHDDEL');
end;

procedure TQueueIncNemsisForm.SchdHistNewRecord(DataSet: TDataSet);
Var DateVar : TDateTime;
begin
  DateVar                                         := SchdCalendar.Date + GetRealTime(GetTimeAsString);
  DataSet.FieldByName('UNITNUM').AsString         := UnitNum;
  DataSet.FieldByName('DATETIMESTART').AsDateTime := DateVar;
  DataSet.FieldByName('DATETIMEEND').AsDateTime   := DateVar;
end;

procedure TQueueIncNemsisForm.LoadNfirsAppBrowse(mNfirsAppID: String);
Var SQLString     : String;
    iRow          : Integer;
    DateCondition : String;
    RVDescrWidth  : Integer;
begin
  If DayRange > 0 then
    DateCondition := ' AND NFIRSMAIN.DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',Now - DayRange))
  else
    DateCondition := '';

  NFIRSAppBrowse.Clear;
  NFIRSAppBrowse.ColCount := 0;
  NFIRSAppBrowse.RowCount := 0;
  NFIRSAppBrowse.ClearColumns;

  RVDescrWidth                  := NFIRSAppBrowse.Width-90-90-80-50-60-200-090-100;

  NFIRSAppBrowse.FixedRowAlways := true;
  NFIRSAppBrowse.RowCount       := NFIRSAppBrowse.FixedRows;
  NFIRSAppBrowse.SetColumn('DISPCALLID',           'DISPCALLID',           000);
  NFIRSAppBrowse.SetColumn('NFIRSAPPID',           'NFIRSAPPID',           000);
  NFIRSAppBrowse.SetColumn('NFIRSMAINID',          'NFIRSMAINID',          000);
  NFIRSAppBrowse.SetColumn('NFIRSAPPSTATTYPEDESCR','NFIRSAPPSTATTYPEDESCR',000);
  NFIRSAppBrowse.SetColumn('COUNTYNUM',            'County #',             IIfI(FireID = '77000',0,090) );
  NFIRSAppBrowse.SetColumn('INCNUM',               'Incident #',           085);
  NFIRSAppBrowse.SetColumn('DATEALARM',            'Date',                 075);
  NFIRSAppBrowse.SetColumn('SHIFT',                'Shift',                045);
  NFIRSAppBrowse.SetColumn('TIMEALARM',            'Time',                 055);
  NFIRSAppBrowse.SetColumn('ADDRESS',              'Address',              200);
  NFIRSAppBrowse.SetColumn('UNITNUM',              'Primary',              090);
  NFIRSAppBrowse.SetColumn('RVSTAT',               'QA Status',            IIfI(FireID = '28008',70,0));
  NFIRSAppBrowse.SetColumn('RVDESCR',              'Rejection Reason',     IIfI(FireID = '28008',1100,0));
  NFIRSAppBrowse.SetColumn('SPACE',                '',                     700);

  SQLString := 'SELECT NFIRSMAIN.COUNTYNUM, NFIRSAPP.NFIRSMAINID, NFIRSMAIN.INCNUM, NFIRSMAIN.UNITNUM NFIRSMAINUNITNUM, ' +
               'NFIRSAPP.NFIRSAPPID, NFIRSMAIN.STRNUM, NFIRSMAIN.RVSTAT, NFIRSMAIN.RVDESCR, '  +
               'SCHDSHIFTNAME.CODE CODE, NFIRSMAIN.STREET, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DISPCALLID, ' +
               'NFIRSAPPSTATTYPE.DESCR NFIRSAPPSTATTYPEDESCR ' +
               'FROM NFIRSAPP ' +
               'LEFT JOIN NFIRSMAIN ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
               'LEFT JOIN SCHDSHIFTNAME ON (NFIRSMAIN.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
               'LEFT JOIN NFIRSAPPSTAT ON (NFIRSAPP.NFIRSAPPSTATID = NFIRSAPPSTAT.NFIRSAPPSTATID) ' +
               'LEFT JOIN NFIRSAPPSTATTYPE ON (NFIRSAPPSTAT.NFIRSAPPSTATTYPEID = NFIRSAPPSTATTYPE.NFIRSAPPSTATTYPEID) ' +
               'WHERE ' +
               'NFIRSAPPSTATTYPE.QUEUE = ' + AddExpr('Y') + ' AND ' +
               'NFIRSAPP.UNITNUM = ' + AddExpr(UnitNum) + DateCondition + ' AND NFIRSMAIN.INCNUM IS NOT NULL ORDER BY NFIRSMAIN.DATETIMEALARM DESC';

  Open_Query('NFIRSAPP',false,SqlString);

  NfirsAppCountField.Caption := IntToStr(A('NFIRSAPP').QueryRecCount);
  iRow := 0;
  While Not A('NFIRSAPP').Eof do begin
    NFIRSAppBrowse.SetValue('DISPCALLID',           GetField('NFIRSAPP','DISPCALLID').AsString);
    NFIRSAppBrowse.SetValue('NFIRSAPPID',           GetField('NFIRSAPP','NFIRSAPPID').AsString);
    NFIRSAppBrowse.SetValue('NFIRSMAINID',          GetField('NFIRSAPP','NFIRSMAINID').AsString);

    NFIRSAppBrowse.SetValue('NFIRSAPPSTATTYPEDESCR',GetField('NFIRSAPP','NFIRSAPPSTATTYPEDESCR').AsString);
    NFIRSAppBrowse.SetValue('COUNTYNUM',            tdbfield('NFIRSAPP','COUNTYNUM'));
    NFIRSAppBrowse.SetValue('INCNUM',               tdbfield('NFIRSAPP','INCNUM'));
    NFIRSAppBrowse.SetValue('DATEALARM',            FormatDateTime('MM/DD/YYYY',GetField('NFIRSAPP','DATETIMEALARM').AsDateTime));
    NFIRSAppBrowse.SetValue('SHIFT',                tdbfield('NFIRSAPP','CODE'));
    NFIRSAppBrowse.SetValue('TIMEALARM',            FormatDateTime('HH:NN',GetField('NFIRSAPP','DATETIMEALARM').AsDateTime));
    NFIRSAppBrowse.SetValue('ADDRESS',              alltrim(tdbfield('NFIRSAPP','STRNUM') + ' ' + tdbfield('NFIRSAPP','STREET')));
    NFIRSAppBrowse.SetValue('UNITNUM',              tdbfield('NFIRSAPP','NFIRSMAINUNITNUM'));
    NFIRSAppBrowse.SetValue('RVSTAT',               tdbfield('NFIRSAPP','RVSTAT'));
    NFIRSAppBrowse.SetValue('RVDESCR',              tdbfield('NFIRSAPP','RVDESCR'));
    A('NFIRSAPP').Skip(1);

    If GetField('NFIRSAPP','NFIRSAPPID').AsString = mNfirsAppID then
      iRow := NfirsAppBrowse.RowCount;
  end;
  if iRow <> 0 then
    NfirsAppBrowse.Row := iRow;

  CloseApollo('NFIRSAPP');
  LoadNfirsAppOtherBrowse;
end;

procedure TQueueIncNemsisForm.LoadNfirsAppOtherBrowse;
Var DispCallID : String;
begin
  DispCallID := NfirsAppBrowse.GetValue('DISPCALLID');

  NfirsAppOtherBrowse.Clear;
  NfirsAppOtherBrowse.ColCount := 0;
  NfirsAppOtherBrowse.RowCount := 0;
  NfirsAppOtherBrowse.ClearColumns;

  NfirsAppOtherBrowse.FixedRowAlways := true;
  NfirsAppOtherBrowse.RowCount       := NfirsAppOtherBrowse.FixedRows;
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPID',           'NFIRSAPPID' ,000);
  NfirsAppOtherBrowse.SetColumn('UNITNUM',              'Unit #',     045);
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPSTATTYPEDESCR','Status',     115);
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPDISPDESCR',    'Disposition',500);

  Open_Query('VWNFIRSAPP',false,'SELECT NFIRSAPPDISP.DESCR NFIRSAPPDISPDESCR, VWNFIRSAPP.UNITNUM, VWNFIRSAPP.NFIRSAPPSTATTYPEDESCR, VWNFIRSAPP.NFIRSAPPID FROM VWNFIRSAPP ' +
                                'LEFT JOIN NFIRSAPPDISP ON (VWNFIRSAPP.NFIRSAPPDISPID = NFIRSAPPDISP.NFIRSAPPDISPID) ' +
                                'WHERE VWNFIRSAPP.DISPCALLID = ' + pkValue(DispCallID) + ' ORDER BY VWNFIRSAPP.UNITNUM');

  While Not A('VWNFIRSAPP').Eof do begin
    NfirsAppOtherBrowse.SetValue('NFIRSAPPID',           GetField('VWNFIRSAPP','NFIRSAPPID').AsString);
    NfirsAppOtherBrowse.SetValue('UNITNUM',              tdbfield('VWNFIRSAPP','UNITNUM'));
    NfirsAppOtherBrowse.SetValue('NFIRSAPPSTATTYPEDESCR',tdbfield('VWNFIRSAPP','NFIRSAPPSTATTYPEDESCR'));
    NfirsAppOtherBrowse.SetValue('NFIRSAPPDISPDESCR',    tdbfield('VWNFIRSAPP','NFIRSAPPDISPDESCR'));
    A('VWNFIRSAPP').Skip(1);
  end;
  CloseApollo('VWNFIRSAPP');
  LoadReportBrowse;
end;

procedure TQueueIncNemsisForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;

procedure TQueueIncNemsisForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TQueueIncNemsisForm.NfirsAppNewRecord(DataSet: TDataSet);
begin
end;

procedure TQueueIncNemsisForm.RedNMXButtonClick(Sender: TObject);
begin
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'QUEUE');
  SysDemoPictViewForm.Show;
end;

procedure TQueueIncNemsisForm.RefreshButtonClick(Sender: TObject);
begin
  LoadNfirsAppBrowse('-1');
end;

procedure TQueueIncNemsisForm.NFIRSAppBrowseClick(Sender: TObject);
begin
  ResetErrorGrid;
  LoadNfirsAppOtherBrowse;
  CheckFinish;
  LoadNemsisQAHistBrowse;
  UnfinishedLabel.caption := 'Unfinished Unit Reports: ' + NfirsAppBrowse.GetValue('RVDESCR');
end;

procedure TQueueIncNemsisForm.LoadNemsisQAHistBrowse;
begin
  NemsisQAHistBrowse.Clear;
  NemsisQAHistBrowse.ColCount := 0;
  NemsisQAHistBrowse.RowCount := 0;
  NemsisQAHistBrowse.ClearColumns;

  NemsisQAHistBrowse.FixedRowAlways := true;
  NemsisQAHistBrowse.RowCount       := NfirsAppOtherBrowse.FixedRows;
  NemsisQAHistBrowse.SetColumn('NEMSISQAHISTID',   'NEMSISQAHISTID',001);
  NemsisQAHistBrowse.SetColumn('E01_01',           'PCR',           090);
  NemsisQAHistBrowse.SetColumn('DATETIMEENT',      'Entered',       075);
  NemsisQAHistBrowse.SetColumn('NEMSISQASTATDESCR','Status',        100);
  NemsisQAHistBrowse.SetColumn('SPACE',            '',              280);

  Open_Query('NEMSISQAHIST',false,'SELECT NEMSISQAHIST.NEMSISQAHISTID, NEMSIS.E01_01, NEMSISQAHIST.DATETIMEENT, NEMSISQASTAT.DESCR NEMSISQASTATDESCR FROM NEMSISQAHIST ' +
                                  'LEFT JOIN NEMSIS ON (NEMSISQAHIST.NEMSISID = NEMSIS.NEMSISID) ' +
                                  'LEFT JOIN NEMSISQASTAT ON (NEMSISQAHIST.NEMSISQASTATID = NEMSISQASTAT.NEMSISQASTATID) ' +
                                  'WHERE NEMSISQAHIST.PERSID = ' + pkValue(GlobalPersID));
  While Not A('NEMSISQAHIST').Eof do begin
    NemsisQAHistBrowse.SetValue('NEMSISQAHISTID',   GetField('NEMSISQAHIST','NEMSISQAHISTID').AsString);
    NemsisQAHistBrowse.SetValue('E01_01',           GetField('NEMSISQAHIST','E01_01').AsString);
    NemsisQAHistBrowse.SetValue('DATETIMEENT',      GetField('NEMSISQAHIST','DATETIMEENT').AsString);
    NemsisQAHistBrowse.SetValue('NEMSISQASTATDESCR',GetField('NEMSISQAHIST','NEMSISQASTATDESCR').AsString);
    NemsisQAHistBrowse.SetValue('SPACE',            '');
    A('NEMSISQAHIST').Skip(1);
  end;
  CloseApollo('NEMSISQAHIST');
end;

procedure TQueueIncNemsisForm.NemsisQAHistBrowseDblClick(Sender: TObject);
Var NemsisQAHistID : String;
begin
  NemsisQAHistID := NemsisQAHistBrowse.GetValue('NEMSISQAHISTID');
  If Not (NemsisQAHistID = '') then
    RunAlpineForm(TNemsisQAHistForm,NemsisQAHistID,'NEMSISQAHIST',NemsisQAHistNewRecord);
end;

procedure TQueueIncNemsisForm.NemsisQAHistNewRecord(DataSet: TDataSet);
begin
end;

function TQueueIncNemsisForm.GetNfirsAppStatType(NfirsAppID: String): String;
begin
  Open_Query('VWNFIRSAPP',false,'SELECT NFIRSAPPSTATTYPEDESCR FROM VWNFIRSAPP WHERE NFIRSAPPID = ' + NfirsAppID);
  GetNfirsAppStatType := tdbfield('VWNFIRSAPP','NFIRSAPPSTATTYPEDESCR');
  CloseApollo('VWNFIRSAPP');
end;

procedure TQueueIncNemsisForm.LoadReportBrowse;
Var DispCallID : String;
    NfirsAppID : String;
    PatCount   : Integer;
    NFIRSCount : Integer;
    Fdid       : String;
    SQLVar     : String;
begin
  DispCallID := NfirsAppBrowse.GetValue('DISPCALLID');
  NfirsAppID := NfirsAppBrowse.GetValue('NFIRSAPPID');
  NfirsCount := 0;

  ReportBrowse.Clear;
  ReportBrowse.ColCount := 0;
  ReportBrowse.RowCount := 0;
  ReportBrowse.ClearColumns;

  ReportBrowse.FixedRowAlways := true;
  ReportBrowse.RowCount       := NfirsAppOtherBrowse.FixedRows;
  ReportBrowse.SetColumn('REPORTTYPE','REPORTTYPE',  0000);
  ReportBrowse.SetColumn('ID',        'ID',          0000);
  ReportBrowse.SetColumn('DESCR',     'Description', 0200);
  ReportBrowse.SetColumn('STATUS',    'Status',      1700);

  If (AnyStrToInt(NfirsAppID) > 0) then begin
    ReportBrowse.SetValue('REPORTTYPE','NFIRSAPP'  );
    ReportBrowse.SetValue('ID',        NfirsAppID  );
    ReportBrowse.SetValue('DESCR',     '<IMG src="idx:1"> Unit ' + UnitNum + ' Report');
    ReportBrowse.SetValue('STATUS',    GetNfirsAppStatType(NfirsAppID));
  end;

  If NfirsAppBrowse.GetValue('UNITNUM') = UnitNum then begin
    Open_Query('NFIRSMAIN',false,'SELECT DONE, NFIRSMAINID, INCNUM, EXPNUM FROM NFIRSMAIN WHERE DISPCALLID = ' + pkValue(DispCallID) + ' AND FDID = ' + AddExpr(FdidVar));
    NfirsCount := A('NFIRSMAIN').QueryRecCount;
    While Not A('NFIRSMAIN').Eof do begin
      If tdbfield('NFIRSMAIN','EXPNUM') = '00' then begin
        ReportBrowse.SetValue('REPORTTYPE','NFIRSMAIN');
        ReportBrowse.SetValue('ID',        GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        ReportBrowse.SetValue('DESCR',     '<IMG src="idx:6"> NFIRS ' + substr(dbfield('NFIRSMAIN','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAIN','INCNUM'),5,6));
        ReportBrowse.SetValue('STATUS',    IIF(tdbfield('NFIRSMAIN','DONE') = 'Y','Approved','Not Done'));
      end else begin
        ReportBrowse.SetValue('REPORTTYPE','EXPOSURE');
        ReportBrowse.SetValue('ID',        GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        ReportBrowse.SetValue('DESCR',     '<IMG src="idx:6"> Exposure ' + dbfield('NFIRSMAIN','EXPNUM'));
        ReportBrowse.SetValue('STATUS',    IIF(tdbfield('NFIRSMAIN','DONE') = 'Y','Done','Not Done'));
      end;
      A('NFIRSMAIN').Skip(1);
    end;
    CloseApollo('NFIRSMAIN');
  end;

  SQLVar := 'SELECT NEMSISSTATTYPE.DESCR NEMSISSTATTYPEDESCR, NEMSIS.NEMSISID, NEMSIS.PATNUM ' +
            'FROM NEMSIS ' +
            'LEFT JOIN NEMSISSTAT ON (NEMSIS.NEMSISSTATID = NEMSISSTAT.NEMSISSTATID) ' +
            'LEFT JOIN NEMSISSTATTYPE ON (NEMSISSTAT.NEMSISSTATTYPEID = NEMSISSTATTYPE.NEMSISSTATTYPEID) ' +
            'WHERE NEMSIS.DISPCALLID = ' + pkValue(DispCallID) + ' AND NEMSIS.E02_11 = ' + AddExpr(UnitNum);

  Open_Query('NEMSIS',false,SQLVar);

  PatCount           := A('NEMSIS').QueryRecCount;
  If PatCount > 0 then
    PatCountField.Text := IntToStr(PatCount)
  else
    PatCountField.Text := '';

  While Not A('NEMSIS').Eof do begin
    ReportBrowse.SetValue('REPORTTYPE','NEMSIS');
    ReportBrowse.SetValue('ID',        GetField('NEMSIS','NEMSISID').AsString);
    ReportBrowse.SetValue('DESCR',     '<IMG src="idx:5"> Patient ' + GetField('NEMSIS','PATNUM').AsString + ' of ' + IntToStr(PatCount));
    ReportBrowse.SetValue('STATUS',    GetField('NEMSIS','NEMSISSTATTYPEDESCR').AsString);
    A('NEMSIS').Skip(1);
  end;
  CloseApollo('NEMSIS');

  OthUnitPanel.Caption.Text := '<IMG src="idx:1"> Other Units on Call ' + NfirsAppBrowse.GetValue('INCNUM');
  RepPanel.Caption.Text     := '<IMG src="idx:10"> Reports to be completed for call ' + NfirsAppBrowse.GetValue('INCNUM');
  NFIRSCountField.Text := IntToStr(NFIRSCount);

  If (NfirsAppBrowse.GetValue('UNITNUM') = UnitNum) then begin
    ReportTitle.Caption     := ' You were the primary unit on the incident, and you are responsible for the NFIRS.';
    NFIRSLabel.Visible      := true;
    NFIRSCountField.Visible := true;
    NFIRSImg.Visible        := true;
    ExposureButton.Enabled  := true;
  end else begin
    ReportTitle.Caption     := ' You were a second in unit';
    NFIRSLabel.Visible      := false;
    NFIRSCountField.Visible := false;
    NFIRSImg.Visible        := false;
    ExposureButton.Enabled  := false;
  end;

  ErrPanel.Caption.Text := '<IMG src="idx:7"> Press Remove to Validate';

  ReportBrowseClick(self);
end;

procedure TQueueIncNemsisForm.ReportBrowseClick(Sender: TObject);
Var ReportType : String;
    EnabledVar : Boolean;
begin
  EnabledVar := (AnyStrToInt(NfirsAppBrowse.GetValue('NFIRSAPPID')) > 0);
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  If Enabledvar then begin
    UnitNumButton  .Enabled := true;
    FinishButton   .Enabled := true;
    EditButton     .Enabled := true;
    NemsisNewButton.Enabled := true;
    ExposureButton .Enabled := true;
    DeleteButton   .Enabled := Not (ReportType = 'NFIRSMAIN') and Not (ReportType = 'NFIRSAPP');
    PatCountField  .Enabled := true;
    PrintButton    .Enabled := true;
    NFIRSCountField.Enabled := true;
    NfirsAppOtherBrowseClick(self);
  end else begin
    UnitNumButton  .Enabled := false;
    FinishButton   .Enabled := false;
    EditButton     .Enabled := false;
    NemsisNewButton.Enabled := false;
    ExposureButton .Enabled := false;
    DeleteButton   .Enabled := false;
    PatCountField  .Enabled := false;
    PrintButton    .Enabled := false;
    NFIRSCountField.Enabled := false;
    UnitNumButton.Caption   := 'Not applicable';
  end;
end;

procedure TQueueIncNemsisForm.EditReport;
Var PK           : String;
    ReportType   : String;
begin
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  PK         := ReportBrowse.GetValue('ID');

  If (ReportType = 'NFIRSAPP') then
    EditNfirsApp(PK)
    
  else if (ReportType = 'NFIRSMAIN') or (ReportType = 'EXPOSURE') then begin
    EditNfirsReport(pk);
    Open_query('GETNFIRSMAIN',false,'SELECT RVSTAT FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PK);
    NFIRSAppBrowse.SetValue('RVSTAT',NFIRSAppBrowse.Row,tdbfield('GETNFIRSMAIN','RVSTAT'));
    CloseApollo('GETNFIRSMAIN');

  end else if ReportType = 'NEMSIS' then
    EditNemsis(Pk);
end;

procedure TQueueIncNemsisForm.EditNfirsReport(pk: String);
var bEditreport: Boolean;
begin
  bEditReport := True;
  if bEditReport then begin
    LoadNFIRSFields(PK);
    RunAlpineFormShowModal(TNFIRSForm,PK,'NFIRSMAIN',NfirsMainNewRecord);
  end else
    AddAddendum(pk);
end;

procedure TQueueIncNemsisForm.AddAddendum(pk: String);
begin
  NfirsMainid := pk;
  RunAlpineFormWithOwner(self,TNFIRSAddendumForm,PK,'NFIRSADDENDUM',NfirsAddendumNewRecord);
end;

procedure TQueueIncNemsisForm.NfirsAddendumNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('NFIRSMAINID').AsString := NfirsMainid;
  if secidvar <> '' then
    DataSet.FieldByName('SECID').AsString := SecIDVar;
  DataSet.FieldByName('ENTRYDATETIME').AsDateTime    := Now;    
end;

procedure TQueueIncNemsisForm.ReportBrowseDblClick(Sender: TObject);
begin
  EditReport;
end;

procedure TQueueIncNemsisForm.ErrorGridDblClick(Sender: TObject);
begin
  EditReport;
end;


procedure TQueueIncNemsisForm.LoadNFIRSFields(NfirsMainID: String);
Var DateTimeAlarm : String;
    SQLVar        : String;
begin
  Open_Query('NFIRSMAIN',true,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + NfirsMainID);
  GetTable('NFIRSMAIN').Edit;
  If (GetField('NFIRSMAIN','PERSIDMAKEREP').AsString = '') and Not (GlobalPersID = '') then begin
    GetField('NFIRSMAIN','PERSIDMAKEREP').AsString := GlobalPersID;
    Open_Query('PERS',false,'SELECT LNAME, FNAME, MNAME FROM PERS WHERE PERSID = ' + GlobalPersID);
    GetField('NFIRSMAIN','MEMREP').AsString  := tdbfield('PERS','LNAME');
    GetField('NFIRSMAIN','MRFIRST').AsString := tdbfield('PERS','FNAME');
    GetField('NFIRSMAIN','MRMI').AsString    := tdbfield('PERS','MNAME');
    GetField('NFIRSMAIN','OFFDATE').AsString := GetDateAsString;
    GetField('NFIRSMAIN','MEMDATE').AsString := GetDateAsString;
    CloseApollo('PERS');

    DateTimeAlarm := AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));
    SQLVar        := 'SELECT SCHDRANKDESCR, NFIRSATTTASKDESCR FROM VWSCHDHIST WHERE PERSID = ' + GlobalPersID + ' AND ' +
                     'DATETIMESTART <= ' + DateTimeAlarm + ' AND DATETIMEEND >= ' + DateTimeAlarm;

    Open_Query('VWSCHDHIST',false,SQLVar);
    GetField('NFIRSMAIN','MEMRANK').AsString := tdbfield('VWSCHDHIST','SCHDRANKDESCR');
    GetField('NFIRSMAIN','MEMASS').AsString  := tdbfield('VWSCHDHIST','NFIRSATTTASKDESCR');
    CloseApollo('VWSCHDHIST');
  end;
  GetTable('NFIRSMAIN').Post;
  CloseApollo('NFIRSMAIN');
end;

procedure TQueueIncNemsisForm.NfirsMainNewRecord(DataSet: TDataSet);
begin
end;

procedure TQueueIncNemsisForm.NemsisNewRecord(DataSet: TDataSet);
Var NfirsMainID : String;
    NfirsAppID  : String;
    DispCallID  : String;
begin
  NfirsMainID                                   := NfirsAppBrowse.GetValue('NFIRSMAINID');
  NfirsAppID                                    := NfirsAppBrowse.GetValue('NFIRSAPPID');
  DispCallID                                    := NfirsAppBrowse.GetValue('DISPCALLID');

  DataSet.FieldByName('PATNUM').AsString        := GetNextVal('SELECT MAX(PATNUM) FROM NEMSIS WHERE DISPCALLID = ' + pkValue(DispCallID) + ' AND E02_11 = ' + AddExpr(UnitNum),'1');

  LoadSysFieldDef(FireID,'NEMSIS',DataSet);
  DataSet.FieldByName('E02_11').AsString        := UnitNum;
  DataSet.FieldByName('NFIRSAPPID').AsString    := NfirsAppID;
  DataSet.FieldByName('NFIRSMAINID').AsString   := NfirsMainID;
  DataSet.FieldByName('DISPCALLID').AsString    := DispCallID;

  Open_Query('NFIRSMAIN',False,'SELECT NFIRSMAIN.INCNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET, NFIRSMAIN.ROOMAPT, ' +
                               'NFIRSMAIN.CITY, NFIRSMAIN.STATE, NFIRSMAIN.ZIP, NFIRSMAIN.DATETIMEALARM, ' +
                               'DISPCALLTYPE.CODE DISPCALLTYPECODE ' +
                               'FROM NFIRSMAIN ' +
                               'LEFT JOIN DISPCALLTYPE ON (NFIRSMAIN.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
                               'WHERE NFIRSMAINID = ' + pkValue(NfirsMainID));

  If A('NFIRSMAIN').RecordsExist then begin
    DataSet.FieldByName('E05_04').AsString        := GetField('NFIRSMAIN','DATETIMEALARM').AsString;
    DataSet.FieldByName('STRNUM').AsString        := tdbfield('NFIRSMAIN','STRNUM');
    DataSet.FieldByName('STREET').AsString        := tdbfield('NFIRSMAIN','STREET');
    DataSet.FieldByName('ROOMAPT').AsString       := tdbfield('NFIRSMAIN','ROOMAPT');
    DataSet.FieldByName('CITY').AsString          := tdbfield('NFIRSMAIN','CITY');
    DataSet.FieldByName('STATE').AsString         := tdbfield('NFIRSMAIN','STATE');
    DataSet.FieldByName('E08_15').AsString        := tdbfield('NFIRSMAIN','ZIP');
  end;
  CloseApollo('NFIRSMAIN');

  LoadNemsisTime(FireID, DispCallID, UnitNum, DataSet);
end;

procedure TQueueIncNemsisForm.DeleteButtonClick(Sender: TObject);
Var ReportType : String;
    ID         : String;
begin
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  ID         := ReportBrowse.GetValue('ID');

  If ReportType = 'NFIRSMAIN' then
    ShowMessage('You cannot delete the main NFIRS report')

  else if ReportType = 'NFIRSAPP' then
    ShowMessage('You cannot delete the unit report')

  else if ReportType = 'EXPOSURE' then begin
    If BooleanMessageDlg('Delete Nfirs Report?') then begin
      RunSQL('DELETE FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(ID));
      NFIRSAppBrowseClick(self);
    end;

  end else if ReportType = 'NEMSIS' then begin
    If BooleanMessageDlg('Delete Nemsis ?') then begin
      RunSQL('DELETE FROM NEMSIS WHERE NEMSISID = ' + pkValue(ID));
      NFIRSAppBrowseClick(self);
    end;
  end;
end;

procedure TQueueIncNemsisForm.ExposureButtonClick(Sender: TObject);
Var NewNfirsMainID: String;
begin
  If TNFIRSForm.CreateExposure(NfirsAppBrowse.GetValue('NFIRSMAINID'), NewNfirsMainID) then
    LoadReportBrowse;
end;

procedure TQueueIncNemsisForm.ResetErrorGrid;
begin
  ErrorGrid.Clear;
  ErrorGrid.RowCount       := 1;
  ErrorGrid.ColCount       := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.FixedRowAlways := true;
  ErrorGrid.RowCount       := ErrorGrid.FixedRows;

  ErrorGrid.SetColumn('TABLENAME',  'TABLENAME',  000);
  ErrorGrid.SetColumn('ID',         'ID',         000);
  ErrorGrid.SetColumn('ERRORDESCR', 'Report Name',140);
  ErrorGrid.SetColumn('ERRORACTION','Procedure',  126);
  ErrorGrid.SetColumn('SPACE',      '',           100);
end;

procedure TQueueIncNemsisForm.FinishButtonClick(Sender: TObject);
Var NfirsAppID     : String;
    NfirsAppStatID : String;
    mNfirsAppRemoved: String;
begin

  NfirsAppID := NfirsAppBrowse.GetValue('NFIRSAPPID');
  if AnyStrToInt(NfirsAppID)<= 0 then begin
    ShowMessage('You Must Select a record in the Unfinished Unit Reports section');
    exit;
  end;  
  mNfirsAppRemoved := SqlLookup(FireID,'FDID','MOBSET','NFIRSAPPREMOVE');
  if mNfirsAppRemoved=''  then begin
    showmessage('You must define the "Removed" code in the Setup.');
    exit;
  end;

  If CheckFinish then begin
    ChangeNfirsAppStat(GlobalPersID, NfirsAppID, mNfirsAppremoved);
    RefreshButtonClick(self);
  end else
    Showmessage('You still have outstanding reports!');
end;

procedure TQueueIncNemsisForm.BottomPanelResize(Sender: TObject);
begin
  ScaleButtonsOnPanel('H',BottomPanel);
end;

procedure TQueueIncNemsisForm.CADIntButtonClick(Sender: TObject);
begin
  if mfireId = '28008' then begin
    DispCallRepForm := TDispCallRepForm.Create(application, NFIRSAppBrowse.GetValue('DISPCALLID'));
    DispCallRepForm.BaseReport.Preview;
    DispCallRepForm.Free;
  end else
    TNfirsAppForm.ViewCAD(NFIRSAppBrowse.GetValue('DISPCALLID'));
end;

function TQueueIncNemsisForm.CheckFinish: Boolean;
Var NfirsAppID       : String;
    NfirsMainID      : String;
    Approved         : Boolean;
    i                : Integer;
begin
  freeAllStringListObjects( QueueErrorList );
  ResetErrorGrid;
  NfirsAppID  := NfirsAppBrowse.GetValue('NFIRSAPPID');
  NfirsMainID := NfirsAppBrowse.GetValue('NFIRSMAINID');

  If AnyStrToInt(NfirsAppID) = 0 then
    Exit;

  CheckQueue(QueueErrorList, UnitNum, NfirsAppID, NfirsMainID);

  Approved := true;
  for i := 0 to QueueErrorList.Count-1 do begin
    Approved := false;
    ErrorGrid.SetValue('TABLENAME',  TErrorObject(QueueErrorList.Objects[i]).TableName);
    ErrorGrid.SetValue('ID',         TErrorObject(QueueErrorList.Objects[i]).ID);
    ErrorGrid.SetValue('ERRORDESCR', TErrorObject(QueueErrorList.Objects[i]).ErrorDescr);
    ErrorGrid.SetValue('ERRORACTION',TErrorObject(QueueErrorList.Objects[i]).ErrorAction);
  end;
  if ValidDate(NfirsAppBrowse.GetValue('DATEALARM')) then
    mDateTimeRecord := strtodate(NfirsAppBrowse.GetValue('DATEALARM'))
  else
    mDateTimeRecord := Date;
      
  If Approved then
    ErrPanel.Caption.Text := '<IMG src="idx:7"> Report ' + NFIRSAppBrowse.GetValue('INCNUM') + ' cleared'
  else
    ErrPanel.Caption.Text := '<IMG src="idx:7"> Requirements for ' + NFIRSAppBrowse.GetValue('INCNUM');
  CheckFinish := Approved;
end;

procedure TQueueIncNemsisForm.SetUnitNum;
begin
  QueueUnitSelectForm := TQueueUnitSelectForm.Create(self);
  if QueueUnitSelectForm.ShowModal=mrok then begin
    UnitNum := QueueUnitSelectForm.UnitField.Text;
    If Not (UnitNum = '') then begin
      UnitNumField.Caption  := UnitNum;
      LocationField.Caption := 'Unit ' + UnitNum;
      RunSQL('UPDATE SEC SET UNITNUM = ' + AddExpr(UnitNum) + ' WHERE SECID = ' + pkValue(SecIDVar));
    end else begin
      UnitNumField.Caption  := 'N/A';
      LocationField.Caption := 'Unit not selected';
    end;
  end;
  QueueUnitSelectForm.Free;
end;

procedure TQueueIncNemsisForm.SetButtonClick(Sender: TObject);
begin
  SetUnitNum;
  If Not (UnitNum = '') then
    LoadForm('-1');
end;

procedure TQueueIncNemsisForm.CreateButtonClick(Sender: TObject);
Var DispCallID  : String;
    PatCount    : Integer;
    PatCreate   : Integer;
    PatNum      : Integer;
    NfirsCount  : Integer;
    NfirsCreate : Integer;
    NfirsNum    : Integer;
    NfirsMainID : String;
begin
  DispCallID  := NfirsAppBrowse.GetValue('DISPCALLID');
  NfirsMainID := NfirsAppBrowse.GetValue('NFIRSMAINID');

  Open_Query('NEMSIS',false,'SELECT NEMSIS .PATNUM FROM NEMSIS ' +
                            'WHERE NEMSIS.DISPCALLID = ' + pkValue(DispCallID) + ' AND NEMSIS.E02_11 = ' + AddExpr(UnitNum));

  PatCount  := AnyStrToInt(PatCountField.Text);
  PatCreate := PatCount - A('NEMSIS').QueryRecCount;
  CloseApollo('NEMSIS');
  For PatNum := 1 to PatCreate do
    CreateNemsisReport;

  If (AnyStrToInt(NFIRSCountField.Value) > 1) and NfirsCountField.Visible then begin

    Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM FROM NFIRSMAIN WHERE DISPCALLID = ' + pkValue(DispCallID));
    NfirsCount  := AnyStrToInt(NfirsCountField.Text);
    NfirsCreate := NfirsCount - A('NFIRSMAIN').QueryRecCount;
    CloseApollo('NFIRSMAIN');

    If BooleanMessageDlg('Create ' + IntToStr(NfirsCreate) + ' exposures?') then begin
      For NfirsNum := 1 to NfirsCreate do
        CreateExposure(NfirsMainID,Padl( IntToStr(NfirsNum),2,'0') );
    end;
  end;

  LoadReportBrowse;
  CreateButton.Enabled := false;
end;

procedure TQueueIncNemsisForm.CreateExposure(NFIRSMainID, NewExpNum: String);
Var FieldNum       : Integer;
    VFieldName     : String;
begin
  Open_Query('NFIRSMAIN',False,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + NfirsMainID);

  Open_Query('NFIRSMAINNEW',True,'SELECT * FROM NFIRSMAIN WHERE FDID = ' + edbfield('NFIRSMAIN','FDID') + ' AND INCNUM = ' + edbfield('NFIRSMAIN','INCNUM') + ' AND EXPNUM = ' + AddExpr(NewExpNum));
  If A('NFIRSMAINNEW').RecordsExist then
    GetTable('NFIRSMAINNEW').Edit
  else
    GetTable('NFIRSMAINNEW').Insert;

  for FieldNum := 0 to GetTable('NFIRSMAIN').FieldCount - 1 do begin
    VFieldName := A('NFIRSMAIN').FieldName(FieldNum);
    If VFieldName <> 'NFIRSMAINID' then begin
      if alltrim(GetField('NFIRSMAINNEW',VFieldName).AsString)='' then
        GetField('NFIRSMAINNEW',VFieldName).AsString := GetField('NFIRSMAIN',VFieldName).AsString;
    end;  
  end;

  GetField('NFIRSMAINNEW','EXPNUM').AsString   := NewExpNum;
  GetField('NFIRSMAINNEW','DONE').AsString     := 'N';
  GetField('NFIRSMAINNEW','LOSSPROP').AsString := '';
  GetField('NFIRSMAINNEW','LOSSCONT').AsString := '';
  GetField('NFIRSMAINNEW','VALPROP').AsString  := '';
  GetField('NFIRSMAINNEW','VALCONT').AsString  := '';
  GetField('NFIRSMAINNEW','FATFIRE').AsString  := ''; 
  GetField('NFIRSMAINNEW','INJFIRE').AsString  := '';
  GetField('NFIRSMAINNEW','FATCIV').AsString   := '';
  GetField('NFIRSMAINNEW','INJCIV').AsString   := '';

  GetTable('NFIRSMAINNEW').Post;
  CloseApollo('NFIRSMAINNEW');
  CloseApollo('NFIRSMAIN');
end;


function TQueueIncNemsisForm.CreateNemsisReport: String;
Var NemsisId     : String;
    NemsisNew    : String;
    NemsisStatID : String;
begin
  Open_Query('NEMSIS',true,'SELECT * FROM NEMSIS WHERE 1=2');
  A('NEMSIS').Append;
  NemsisNewRecord(A('NEMSIS').DataSource.DataSet);
  A('NEMSIS').Post;
  NemsisID := A('NEMSIS').NewPk;

  A('NEMSIS').Edit;

//GetField('NEMSIS','NEMSISSTATID').AsString  := ChangeNemsisStat(GlobalPersID, NemsisID, SqlLookup(FireID,'FDID','NEMSISSET','NEMSISNEW'));
//FDFunctions.AdditionalNemsisNewRecord(A('NEMSIS').DataSource.DataSet);
  TNemsisEMSForm.NewRecord(A('NEMSIS').DataSource.DataSet);

  If (tdbfield('NEMSIS','E08_15') <> '') then begin
    Open_Query('NEMSISZIP',false,'SELECT * FROM NEMSISZIP WHERE ZIP = ' + edbfield('NEMSIS','E08_15'));
    GetField('NEMSIS','CITY').AsString   := tdbfield('NEMSISZIP','CITY');
    GetField('NEMSIS','COUNTY').AsString := tdbfield('NEMSISZIP','COUNTY');
    GetField('NEMSIS','STATE').AsString  := tdbfield('NEMSISZIP','STATE');
    GetField('NEMSIS','E08_12').AsString := tdbfield('NEMSISZIP','CITYFIPS');
    GetField('NEMSIS','E08_13').AsString := tdbfield('NEMSISZIP','COUNTYFIPS');
    GetField('NEMSIS','E08_14').AsString := tdbfield('NEMSISZIP','STATEFIPS');
    GetField('NEMSIS','E23_09').AsString := tdbfield('NEMSISZIP','E23_09');
    CloseApollo('NEMSISZIP');
  end;

  A('NEMSIS').Post;
  
  TFDFunc.AfterNewRecordAdded('NEMSIS',GetField('NEMSIS','NEMSISID').AsInteger);

  CloseApollo('NEMSIS');
  CreateNemsisReport := NemsisId;

  If Not (mFireID = '28008') then
    LoadNemsisSchd(NemsisID, UnitNum);
end;

procedure TQueueIncNemsisForm.NemsisNewButtonClick(Sender: TObject);
Var NemsisID      : String;
begin
  NemsisID := CreateNemsisReport;
  RunAlpineForm(TNemsisEMSForm,NemsisID,'NEMSIS',NemsisNewRecord)
end;

procedure TQueueIncNemsisForm.FormActivate(Sender: TObject);
begin
  If BeenInFormActivate then
    NFIRSAppBrowseClick(self);
  BeenInFormActivate := True;    
end;

procedure TQueueIncNemsisForm.RosterTabShow(Sender: TObject);
begin
  SchdCalendar.Year  := StrToInt(FormatDateTime('YYYY',Now));
  SchdCalendar.Month := StrToInt(FormatDateTime('MM',Now));
  SchdCalendar.Day   := StrToInt(FormatDateTime('DD',Now));
  LoadSchdHistBrowse;
end;

procedure TQueueIncNemsisForm.SchdCalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
begin
  If Pager.ActivePage = RosterTab then
    LoadSchdHistBrowse;
end;

procedure TQueueIncNemsisForm.UnitNumButtonClick(Sender: TObject);
Var NfirsMainID        : String;
    NfirsAppID         : String;
    NewUnitNum         : String;
    IncNum             : String;
    NfirsAppApproveID  : String;
    NfirsAppEdit       : String;
    Approved           : Boolean;
    RowNum             : Integer;
begin
  NfirsMainID := NfirsAppBrowse.GetValue('NFIRSMAINID');
  NewUnitNum  := NfirsAppOtherBrowse.GetValue('UNITNUM');
  IncNum      := NfirsAppBrowse.GetValue('INCNUM');
  NfirsAppID  := NfirsAppOtherBrowse.GetValue('NFIRSAPPID');
  RowNum      := NfirsAppBrowse.Row;

  If BooleanMessageDlg('Assign ' + NewUnitNum + ' as the primary unit for incident ' + IncNum + '?') then begin
    NfirsAppApproveID  := SQLLookUp(FireId,'FDID','MOBSET','NFIRSAPPAPPROVE');
    NfirsAppEdit       := SQLLookup(FireId,'FDID','MOBSET','NFIRSAPPEDIT');
    Approved           := SQLLookup(NfirsAppID,'NFIRSAPPID','VWNFIRSAPP','NFIRSAPPSTATTYPEAPPROVED') = 'Y';

    If Approved and CheckSecVar('QUEUERESTART') then begin
      If BooleanMessageDlg(NewUnitNum + ' has already completed and approved their unit report, restart their unit report?') then begin
        ChangeNfirsAppStat(GlobalPersID, NfirsAppID, SqlLookup(FireID,'FDID','MOBSET','NFIRSAPPEDIT'));
      end;
    end else if Approved then
      ShowMessage(NewUnitNum + ' has already completed and approved their unit report and therefore cannot be assigned primary unit')
    else begin
      AppendToLog('Primary Unit changed to '+NewUnitNum+ ' for incident '+IncNum);
      RunSQL('UPDATE NFIRSMAIN SET UNITNUM = ' + AddExpr(NewUnitNum) + ', UNITNUMLOCK = ' + AddExpr('Y') + ' WHERE NFIRSMAINID = ' + NfirsMainID);
      RefreshButtonClick(self);
    end;
    NfirsAppBrowse.Row := RowNum;
  end;
end;

procedure TQueueIncNemsisForm.PatCountFieldChange(Sender: TObject);
begin
  CreateButton.Enabled := true;
end;


procedure TQueueIncNemsisForm.PrintButtonClick(Sender: TObject);
Var NfirsMainID : String;
begin
  NfirsMainID := NfirsAppBrowse.GetValue('NFIRSMAINID');
  PrintIndividualreport(TQueueIncNemsisForm,'NFIRSMAIN',NfirsMainID);
end;


procedure TQueueIncNemsisForm.EditNemsis(NemsisID: String);
begin
  RunAlpineForm(TNemsisEMSForm,NemsisID,'NEMSIS',NemsisNewRecord)
end;

procedure TQueueIncNemsisForm.EditNfirsApp(NfirsAppID: String);
Var NfirsAppEdit  : String;
    NfirsMainID   : String;
begin
  NfirsMainID   := NfirsAppBrowse.GetValue('NFIRSMAINID');

  RunAlpineForm(TNFIRSAppForm,NfirsAppID,'NFIRSAPP',NfirsAppNewRecord);
end;

procedure TQueueIncNemsisForm.ErrPanelDblClick(Sender: TObject);
begin
  FinishButtonClick(self);
end;

procedure TQueueIncNemsisForm.NfirsAppOtherBrowseClick(Sender: TObject);
begin
  UnitNumButton.Caption := 'Make ' + NfirsAppOtherBrowse.GetValue('UNITNUM') + ' Primary';
end;

procedure TQueueIncNemsisForm.RestartButtonClick(Sender: TObject);
var mNfirsAppID : String;
    bProceed    : Boolean;
begin
  mNfirsAppID := NFIRSAppBrowse.GetValue('NFIRSAPPID');
  QueueRestartForm := TQueueRestartForm.Create(self);
  QueueRestartForm.ShowModal;
  bProceed := QueueRestartForm.DidRestart;
  QueueRestartForm.Free;
  if bProceed then
    LoadForm(mNfirsAppID);
end;

class procedure TQueueIncNemsisForm.CheckQueue(Var QueueErrorList: TStringList; UnitNum, NfirsAppID, NfirsMainId: String);
var bIsPrimaryUnit: Boolean;
begin
  Open_Query('NFIRSAPP',False,'SELECT NFIRSMAIN.NFIRSMAINID, N5DISTRICT.CODE N5DISTRICTCODE, ' +
                              'NFIRSMAIN.FDID, NFIRSMAIN.INCNUM, ' +
                              'NFIRSMAIN.SITFOUND, NFIRSMAIN.EXPNUM, NFIRSMAIN.MAID, NFIRSAPP.NFIRSAPPDISPID, ' +
                              'NFIRSMAIN.UNITNUM NFIRSMAINUNITNUM, NFIRSAPP.UNITNUM NFIRSAPPUNITNUM, NFIRSMAIN.DONE, ' +
                              'NFIRSAPPSTATTYPE.APPROVED NFIRSAPPSTATTYPEAPPROVED ' +
                              'FROM NFIRSAPP ' +
                              'LEFT JOIN NFIRSAPPSTAT ON (NFIRSAPP.NFIRSAPPSTATID = NFIRSAPPSTAT.NFIRSAPPSTATID) ' +
                              'LEFT JOIN NFIRSAPPSTATTYPE ON (NFIRSAPPSTAT.NFIRSAPPSTATTYPEID = NFIRSAPPSTATTYPE.NFIRSAPPSTATTYPEID) ' +
                              'LEFT JOIN NFIRSMAIN ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
                              'LEFT JOIN N5DISTRICT ON (NFIRSMAIN.N5DISTRICTID = N5DISTRICT.N5DISTRICTID) ' +
                              'WHERE NFIRSAPP.NFIRSAPPID = ' + pkValue(NfirsAppID));

  If (tdbfield('NFIRSAPP','NFIRSAPPSTATTYPEAPPROVED') <> 'Y') then
    AddErrorObject(QueueErrorList,'NFIRSAPP', 'NFIRSAPP',NfirsAppID,'FieldName','FieldDescr','C','Unit report', 'Report is not finished','','','','');

  bIsPrimaryUnit := (tdbfield('NFIRSAPP','NFIRSMAINUNITNUM') = tdbfield('NFIRSAPP','NFIRSAPPUNITNUM'));
  If bIsPrimaryUnit and Not (tdbfield('NFIRSAPP','DONE') = 'Y') then
    AddErrorObject(QueueErrorList,'NFIRSMAIN', 'NFIRSMAIN',GetField('NFIRSAPP','NFIRSMAINID').AsString,'FieldName','FieldDescr','C','NFIRS ' + substr(tdbfield('NFIRSAPP','INCNUM'),1,4) + '-' + substr(tdbfield('NFIRSAPP','INCNUM'),5,6), 'Report is not finished','','','','');

  Open_Query('EXPOSURE',false,'SELECT NFIRSMAINID, DONE, EXPNUM FROM NFIRSMAIN WHERE FDID = ' + edbfield('NFIRSAPP','FDID') + ' AND INCNUM = ' + edbfield('NFIRSAPP','INCNUM'));
  While Not A('EXPOSURE').Eof do begin

    If bIsPrimaryUnit and (tdbfield('EXPOSURE','EXPNUM') > '00') and (tdbfield('EXPOSURE','DONE') <> 'Y') then
      AddErrorObject(QueueErrorList,'NFIRSMAIN', 'NFIRSMAIN',GetField('EXPOSURE','NFIRSMAINID').AsString,'FieldName','FieldDescr','C','Exposure ' + tdbfield('EXPOSURE','EXPNUM'),'Exposure is not finished','','','','');
    A('EXPOSURE').Skip(1);
  end;
  CloseApollo('EXPOSURE');

  Open_Query('VWNEMSIS',false,'SELECT NEMSISID, PATNUM, NEMSISSTATTYPEAPPROVED FROM VWNEMSIS WHERE NFIRSMAINID = ' + pkValue(NfirsMainID) + ' AND E02_11 = ' + AddExpr(UnitNum));
  While Not A('VWNEMSIS').Eof do begin
    If Not (tdbfield('VWNEMSIS','NEMSISSTATTYPEAPPROVED') = 'Y') then
      AddErrorObject(QueueErrorList,'NEMSIS', 'NEMSIS',GetField('VWNEMSIS','NEMSISID').AsString,'Nemsis','Nemsis Report','C','Patient Number ' + GetField('VWNEMSIS','PATNUM').AsString, 'Report is not finished','','','','');
    A('VWNEMSIS').Skip(1);
  end;
  CloseApollo('VWNEMSIS');

  FDFunctions.AdditionalCheckQueue(QueueErrorList, UnitNum, NfirsAppID, NfirsMainId);
  CloseApollo('NFIRSAPP');
end;


initialization
  FDFunctions := TFDFunc.Create;
finalization
  FDFunctions.Free;

end. 
