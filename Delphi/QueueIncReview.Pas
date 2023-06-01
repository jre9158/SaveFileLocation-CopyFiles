unit QueueIncReview;

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
  AlpineRepGen,
  PlannerMonthView,
  AdvMenus,
  AdvGroupBox,
  AlpineLookup,
  htmlbtns,
  AlpineCheck,
  AdvObj;

type

  TQueueIncReviewForm = class(TAlpineBaseForm)
    OvcController: TOvcController;
    AdvPanel1: TAdvPanel;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    HTMLabel2: THTMLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    img1: TImageList;
    AdvFormStyler1: TAdvFormStyler;
    img32: TImageList;
    AdvPanel2: TAdvPanel;
    QPanel: TAdvPanel;
    Label4: TLabel;
    UserNameField: TLabel;
    ErrPanel: TAdvPanel;
    ErrorGrid: TAlpineTMSStringGrid;
    AdvOfficeImage5: TAdvOfficeImage;
    MainPanel: TAdvPanel;
    BottomPanel: TPanel;
    ExposureButton: TAlpineGlowButton;
    Nem3PCRNewButton: TAlpineGlowButton;
    DeleteButton: TAlpineGlowButton;
    EditButton: TAlpineGlowButton;
    RestartButton: TAlpineGlowButton;
    RefreshButton: TAlpineGlowButton;
    FinishButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    TitleField: TLabel;
    Label1: TLabel;
    DayRangeLabel: TLabel;
    AdvOfficeImage2: TAdvOfficeImage;
    AdvPanel3: TAdvPanel;
    Label22: TLabel;
    TitleImage: TImage;
    NFIRSMainBrowse: TAlpineTMSStringGrid;
    RepPanel: TAdvPanel;
    ReportBrowse: TAlpineTMSStringGrid;
    PrintButton: TAlpineGlowButton;
    OthUnitPanel: TAdvPanel;
    NfirsAppOtherBrowse: TAlpineTMSStringGrid;
    Splitter2: TSplitter;
    ParameterPanel: TAdvPanel;
    CADIntButton: TAlpineGlowButton;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PersidReviewField: TAlpineLookup;
    PersIDMakeRepField: TAlpineLookup;
    DayRangeField: TAlpineEdit;
    Label7: TLabel;
    Label2: TLabel;
    DoneField: TRadioButton;
    NotDoneField: TRadioButton;
    BothField: TRadioButton;
    UnitNumField: TAlpineLookup;
    Label8: TLabel;
    Label9: TLabel;
    PRField: TAlpineCheckBox;
    CNField: TAlpineCheckBox;
    RCField: TAlpineCheckBox;
    FdidField: TAlpineLookup;
    Label3: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    Label12: TLabel;
    Refresh2Button: TAlpineGlowButton;
    UnitNumBlankCheck: TAlpineCheckBox;
    SchdShiftNameBlankField: TAlpineCheckBox;
    ActiveCheck: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseButtonClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure ReportBrowseDblClick(Sender: TObject);
    procedure Nem3PCRNewButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure ExposureButtonClick(Sender: TObject);
    procedure FinishButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ReportBrowseClick(Sender: TObject);
    procedure ErrorGridDblClick(Sender: TObject);
    procedure ErrPanelDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure NfirsAppOtherBrowseDblClick(Sender: TObject);
    procedure CADIntButtonClick(Sender: TObject);
    procedure NFIRSMainBrowseDblClick(Sender: TObject);
    procedure NFIRSMainBrowseClick(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure PersIDMakeRepFieldEnter(Sender: TObject);
    procedure NfirsAppOtherBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NFIRSMainBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ReportBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PersidReviewFieldEnter(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FAlpineTMSStringGrid: TAlpineTMSStringGrid;
    procedure LoadNfirsMainBrowse;
    procedure NfirsMainNewRecord(DataSet: TDataSet);
    procedure NfirsAppNewRecord(DataSet: TDataSet);
    procedure Nem3PCRNewRecord(DataSet: TDataSet);
    procedure LoadReportBrowse;
    procedure ResetErrorGrid;
    procedure LoadForm;
    function CreateNem3PCRReport: String;
    procedure EditNem3PCR(Nem3PCRID: String);
    procedure LoadNFIRSFields(NfirsMainID: String);
    procedure LoadNfirsAppOtherBrowse;
    function  CheckFinish: Boolean;
    function  GetWhereString: String;
    function  CheckNfirsApp: Boolean;
    function  CheckActive: Boolean;
    function  GetDone(DoneVar: String): String;
    function  GetQueueSec(ReportType,ID : String): Boolean;
  public
    { Public declarations }
    QueueErrorList : TStringList;
    DayRange       : Real;
    class procedure CheckQueue(Var QueueErrorList: TStringList; NfirsMainId: String);
  end;

var
  QueueIncReviewForm : TQueueIncReviewForm;
  FDFunctions  : TFDFunc;

implementation
uses NormalBase,
     CommonFunc,
     CommonNem3,
     CommonNfirs,
     Nfirs,
     Nem3EMS,
     SortGridView,
     SchdHist,
     QueueUnitSelect,
     QueueRestart,
     SecSet,
     NFIRSApp,
     EMSTrip,
     CommonVar,
     DispMemo,
     DispCADNarr,
     FormFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TQueueIncReviewForm.FormCreate(Sender: TObject);
begin
  If mFireID = '13000' then
    FdidField.Value         := ''
  else
    FdidField.Value         := GetFdidVar;
    
  FdidField.Enabled       := (secFdid = '') or (mFireID = '13000');
  TitleField.Caption      := FireDept + ':  NFIRS Queue System';
  TitleImage.Picture.Icon := GetGlowImageIcon('INCIDENT32');

  UnitNumField.SQLExpr    := 'SELECT * FROM VWTRUCK WHERE INCLUDE = ' + AddExpr('Y') + ' ORDER BY SORTORD, UNITNUM';

  Open_Query('QUEUESET',false,'SELECT DAYRANGE FROM QUEUESET WHERE FDID = ' + AddExpr(FireID));
  DayRange              := GetField('QUEUESET','DAYRANGE').AsFloat;
  DayRangeField.Value   := GetField('QUEUESET','DAYRANGE').AsString;
  DayRangeLabel.Caption := IIf(DayRange = 0,'Not Applicable','Last ' + FloatToStr(DayRange) + ' days');
  CloseApollo('QUEUESET');

  If AlpineLogIn then
    UserNameField.Caption := 'Alpine User'
  else begin
    Open_Query('SEC',false,'SELECT PERSID, DESCR, UNITNUM FROM SEC WHERE SECID = ' + pkValue(SecIDVar));
    UserNameField.Caption := SQLLookup(tdbfield('SEC','PERSID'),'PERSID','PERS','LNAME') + ', ' + SQLLookup(tdbfield('SEC','PERSID'),'PERSID','PERS','FNAME');
    CloseApollo('SEC');
  end;  

  LoadForm;
  WindowState              := wsMaximized;
  Left                     := 0;
  Top                      := 0;
  Height                   := Screen.Height;
  Width                    := Screen.Width;
  QueueErrorList           := TStringList.Create;
  Nem3PCRNewButton.Visible := CheckModule('NEMSIS3');
  CADIntButton.Enabled     := CheckSecVar('VIEWCADINT');
  RestartButton.Enabled    := CheckSecVar('QUEUERESTART');
  ActiveCheck.Visible      := AlpineLogIn or (mFireID = '13000');
end;

procedure TQueueIncReviewForm.FormResize(Sender: TObject);
begin
  ScaleButtonsOnPanel('H',BottomPanel);
end;

procedure TQueueIncReviewForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanel('H',BottomPanel);
end;

procedure TQueueIncReviewForm.LoadForm;
begin
  RefreshButtonClick(self);
  ResetErrorGrid;
end;

function TQueueIncReviewForm.GetWhereString: String;
Var WhereString : String;
    RVWhere     : String;
begin
  WhereString := ' WHERE 1=1';
  If AnyStrToInt(DayRangeField.Value) > 0 then
    WhereString := WhereString + ' AND NFIRSMAIN.DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',Now - AnyStrToInt(DayRangeField.Value)));

  If DoneField.Checked then
    WhereString := WhereString + ' AND NFIRSMAIN.DONE = ' + AddExpr('Y')
  else if NotDoneField.Checked then
    WhereString := WhereString + ' AND (NFIRSMAIN.DONE = ' + AddExpr('N') + ' OR NFIRSMAIN.DONE = ' + AddExpr('F') + ')';

  If Not (FdidField.Value = '') then
    WhereString := WhereString + ' AND NFIRSMAIN.FDID = ' + AddExpr(FdidField.Value);
  If Not (SchdShiftNameIDField.Value = '') then
    WhereString := WhereString + ' AND NFIRSMAIN.SCHDSHIFTNAMEID = ' + pkValue(SchdShiftNameIDField.Value);

  If Not (PersIDMakeRepField.Value = '') then
    WhereString := WhereString + ' AND NFIRSMAIN.PERSIDMAKEREP = ' + pkValue(PersIDMakeRepField.Value);

  If (PRField.Checked or CNField.Checked or RCField.Checked) then begin
    If PRField.Checked then
      RVWhere := ' OR NFIRSMAIN.RVSTAT = ' + AddExpr('PR');
    If CNField.Checked then
      RVWhere := RVWhere + ' OR NFIRSMAIN.RVSTAT = ' + AddExpr('CN');
    If RCField.Checked then
      RVWhere := RVWhere + ' OR NFIRSMAIN.RVSTAT = ' + AddExpr('RC');
    RVWhere := '(' + alltrim(Substr(RVWhere,4,200)) + ')';
    WhereString := WhereString + ' AND ' + RVWhere;
  end;

  If Not (PersidReviewField.Value = '') then
    WhereString := WhereString + ' AND NFIRSMAIN.PERSIDREVIEW = ' + pkValue(PersidReviewField.Value);

  GetWhereString := WhereString;
end;

function TQueueIncReviewForm.CheckActive: Boolean;
begin
  If ActiveCheck.Checked then
    CheckActive := true
  else
    CheckActive := (GetField('NFIRSMAIN','DATETIMEIN').AsdateTime > 0);
end;

procedure TQueueIncReviewForm.LoadNfirsMainBrowse;
Var SQLString     : String;
    iRow          : Integer;
begin
  iRow                     := NfirsMainBrowse.Row;
  NfirsMainBrowse.Clear;
  NfirsMainBrowse.ColCount := 0;
  NfirsMainBrowse.RowCount := 0;
  NfirsMainBrowse.ClearColumns;

  NfirsMainBrowse.FixedRowAlways := true;
  NfirsMainBrowse.RowCount       := NfirsMainBrowse.FixedRows;
  NfirsMainBrowse.SetColumn('DISPCALLID',      'DISPCALLID',           000);
  NfirsMainBrowse.SetColumn('NFIRSMAINID',     'NFIRSMAINID',          000);
  NfirsMainBrowse.SetColumn('FDID',            'FDID',                 IIfI(mFireID = '13000',070,000));
  NfirsMainBrowse.SetColumn('COUNTYNUM',       'County #',             IIfI(mFireID = '28017',085,000));
  NfirsMainBrowse.SetColumn('INCNUM',          'Incident #',           085);
  NfirsMainBrowse.SetColumn('DATEALARM',       'Date',                 040);
  NfirsMainBrowse.SetColumn('UNITNUM',         'Unit',                 080);
  NfirsMainBrowse.SetColumn('SHIFT',           'Shift',                080);
  NfirsMainBrowse.SetColumn('TIMEALARM',       'Time',                 040);
  NfirsMainBrowse.SetColumn('TIMEIN',          'Time In',              040);
  NfirsMainBrowse.SetColumn('ADDRESS',         'Address',              150);
  NfirsMainBrowse.SetColumn('DISPCALLTYPECODE','Call Type',            000);
  NfirsMainBrowse.SetColumn('DONE',            'Status',               090);
  if mFireID = '47000' then
    NfirsMainBrowse.SetColumn('AUTHOR',        'Officer In Charge',    100)
  else
    NfirsMainBrowse.SetColumn('AUTHOR',        'Author',               100);
  NfirsMainBrowse.SetColumn('RVSTAT',          'QA Status',            150);
  NfirsMainBrowse.SetColumn('REVIEWER',        'Reviewer',             100);
  NfirsMainBrowse.SetColumn('RVDESCR',         'Rejection Reason',     300);
  NfirsMainBrowse.SetColumn('SPACE',           '',                     999);

  SQLString := 'SELECT NFIRSMAIN.COUNTYNUM, NFIRSMAIN.UNITNUM, NFIRSMAIN.FDID, NFIRSMAIN.INCNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.PLASTNAME, '  +
               'SCHDSHIFTNAME.CODE CODE, NFIRSMAIN.DONE, NFIRSMAIN.STREET, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEIN, NFIRSMAIN.DISPCALLID, ' +
               'DISPCALLTYPE.CODE DISPCALLTYPECODE, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR, DISPSUBTYPE.DESCR DISPSUBTYPEDESCR, ' +
               'NFIRSMAIN.RVSTAT, RVSTAT.DESCR RVSTATDESCR, PERS.PERSCODE, PERS.LNAME, NFIRSMAIN.PERSIDMAKEREP, NFIRSMAIN.RVDESCR, ' +
               'NFIRSMAIN.PERSIDOFFCHARGE, NFIRSMAIN.OFFCHARGE, ' +
               'PERSREP.LNAME PERSREPLNAME, PERSREP.PERSCODE PERSREPPERSCODE ' +
               'FROM NFIRSMAIN ' +
               'LEFT JOIN SCHDSHIFTNAME ON (NFIRSMAIN.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
               'LEFT JOIN DISPCALL ON (NFIRSMAIN.DISPCALLID = DISPCALL.DISPCALLID) ' +
               'LEFT JOIN DISPCALLTYPE ON (NFIRSMAIN.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
               'LEFT JOIN DISPSUBTYPE ON (DISPCALL.DISPSUBTYPEID = DISPSUBTYPE.DISPSUBTYPEID) ' +
               'LEFT JOIN PERS ON (NFIRSMAIN.PERSIDREVIEW = PERS.PERSID) ' +
               'LEFT OUTER JOIN PERS PERSREP ON (NFIRSMAIN.PERSIDMAKEREP = PERSREP.PERSID) ' +
               'LEFT JOIN RVSTAT ON (NFIRSMAIN.RVSTAT = RVSTAT.CODE) ' +
               GetWhereString + ' ' +
               'ORDER BY NFIRSMAIN.DATETIMEALARM DESC';

  Open_Query('NFIRSMAIN',false,SqlString);
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');

  SQLString := 'SELECT NFIRSAPP.NFIRSMAINID, NFIRSAPP.UNITNUM FROM NFIRSAPP ' +
               'LEFT JOIN NFIRSMAIN ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
               GetWhereString;

  Open_Query('NFIRSAPP',false,SQLString);

  While Not A('NFIRSMAIN').Eof do begin
    If CheckNfirsApp and CheckActive then begin
      NfirsMainBrowse.SetValue('DISPCALLID',      GetField('NFIRSMAIN','DISPCALLID').AsString);
      NfirsMainBrowse.SetValue('NFIRSMAINID',     GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      NfirsMainBrowse.SetValue('FDID',            tdbfield('NFIRSMAIN','FDID'));
      NfirsMainBrowse.SetValue('COUNTYNUM',       tdbfield('NFIRSMAIN','COUNTYNUM'));
      NfirsMainBrowse.SetValue('INCNUM',          tdbfield('NFIRSMAIN','INCNUM'));
      NfirsMainBrowse.SetValue('DATEALARM',       AlpineFormatDateTime('MM/DD',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));
      NfirsMainBrowse.SetValue('UNITNUM',         tdbfield('NFIRSMAIN','UNITNUM'));
      NfirsMainBrowse.SetValue('SHIFT',           tdbfield('NFIRSMAIN','CODE'));
      NfirsMainBrowse.SetValue('TIMEALARM',       AlpineFormatDateTime('HH:NN',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));
      NfirsMainBrowse.SetValue('TIMEIN',          AlpineFormatDateTime('HH:NN',GetField('NFIRSMAIN','DATETIMEIN').AsDateTime));
      NfirsMainBrowse.SetValue('ADDRESS',         alltrim(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET')));
      NfirsMainBrowse.SetValue('DISPCALLTYPECODE',tdbfield('NFIRSMAIN','DISPCALLTYPECODE') + IIf(tdbfield('NFIRSMAIN','DISPCALLTYPEDESCR') = '','','-') + tdbfield('NFIRSMAIN','DISPCALLTYPEDESCR'));
      NfirsMainBrowse.SetValue('DONE',            GetDone(tdbfield('NFIRSMAIN','DONE')));
      If mFireID = '47000' then begin
        If A('PERS').ExactQueryLocate('PERSID',GetField('NFIRSMAIN','PERSIDOFFCHARGE').AsString) then
          NfirsMainBrowse.SetValue('AUTHOR', tdbfield('PERS','PERSCODE') + '-' + tdbfield('NFIRSMAIN','OFFCHARGE'));
      end else
        NfirsMainBrowse.SetValue('AUTHOR',tdbfield('NFIRSMAIN','PERSREPPERSCODE') + '-' + tdbfield('NFIRSMAIN','PERSREPLNAME'));
      NfirsMainBrowse.SetValue('RVSTAT',          tdbfield('NFIRSMAIN','RVSTAT') + '-' + tdbfield('NFIRSMAIN','RVSTATDESCR'));
      NfirsMainBrowse.SetValue('REVIEWER',        tdbfield('NFIRSMAIN','PERSCODE') + '-' + tdbfield('NFIRSMAIN','LNAME'));
      NfirsMainBrowse.SetValue('RVDESCR',         tdbfield('NFIRSMAIN','RVDESCR'));
      NfirsMainBrowse.SetValue('SPACE',           '');
    end;
    A('NFIRSMAIN').Skip(1);
  end;

  try
    if iRow <> 0 then
      NfirsMainBrowse.Row := iRow;
  except
  end;

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSAPP');
  CloseApollo('PERS');
  LoadNfirsAppOtherBrowse;
end;

function TQueueIncReviewForm.GetDone(DoneVar: String): String;
begin
  If (DoneVar = 'Y') then
    GetDone := 'Completed'
  else
    GetDone := 'Not Done';
end;

function TQueueIncReviewForm.CheckNfirsApp: Boolean;
begin
  If UnitNumField.Value = '' then
    CheckNfirsApp := true
  else if A('NFIRSAPP').ExactQueryLocate(['NFIRSMAINID','UNITNUM'],[GetField('NFIRSMAIN','NFIRSMAINID').AsString,UnitNumField.Value]) then
    CheckNfirsApp := true
  else
    CheckNfirsApp := false;
end;

procedure TQueueIncReviewForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := caFree;
end;
 
procedure TQueueIncReviewForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TQueueIncReviewForm.RefreshButtonClick(Sender: TObject);
begin
  LoadNfirsMainBrowse;
end;

procedure TQueueIncReviewForm.NfirsAppOtherBrowseDblClick(Sender: TObject);
Var NfirsAppID : String;
begin
  NfirsAppID := NfirsAppOtherBrowse.GetValue('NFIRSAPPID');
  RunAlpineFormShowModal(TNFIRSAppForm,NfirsAppID,'NFIRSAPP',NfirsAppNewRecord);
end;

procedure TQueueIncReviewForm.NfirsAppOtherBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) then
    NfirsAppOtherBrowseDblClick(self);
end;

procedure TQueueIncReviewForm.NFIRSMainBrowseClick(Sender: TObject);
begin
  ResetErrorGrid;
  LoadReportBrowse;
  LoadNfirsAppOtherBrowse;
  CheckFinish;
end;

procedure TQueueIncReviewForm.NFIRSMainBrowseDblClick(Sender: TObject);
Var NfirsMainID : String;
begin
  NfirsMainID := NfirsMainBrowse.GetValue('NFIRSMAINID');
  LoadNFIRSFields(NfirsMainID);
  RunAlpineFormWithOwner(self,TNFIRSForm,NfirsMainID,'NFIRSMAIN',NfirsMainNewRecord)
end;

procedure TQueueIncReviewForm.NFIRSMainBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) then
    NFIRSMainBrowseDblClick(self);
end;

procedure TQueueIncReviewForm.LoadReportBrowse;
Var DispCallID  : String;
    PatCount    : Integer;
    NFIRSCount  : Integer;
    Fdid        : String;
    IncNum      : String;
    NfirsMainID : String;
    FdidVar     : String;
    SQLVar      : String;
begin
  DispCallID  := NfirsMainBrowse.GetValue('DISPCALLID');
  NfirsMainID := NfirsMainBrowse.GetValue('NFIRSMAINID');
  FdidVar     := NfirsMainBrowse.GetValue('FDID');
  IncNum      := substr(NfirsMainBrowse.GetValue('INCNUM'),1,4) + substr(NfirsMainBrowse.GetValue('INCNUM'),6,6);

  ReportBrowse.Clear;
  ReportBrowse.ColCount := 0;
  ReportBrowse.RowCount := 0;
  ReportBrowse.ClearColumns;

  ReportBrowse.FixedRowAlways := true;
  ReportBrowse.RowCount       := NfirsMainBrowse.FixedRows;
  ReportBrowse.SetColumn('REPORTTYPE','REPORTTYPE',  0000);
  ReportBrowse.SetColumn('ID',        'ID',          0000);
  ReportBrowse.SetColumn('ICON',      '',            0030);
  ReportBrowse.SetColumn('DESCR',     'Type',        0180);
  ReportBrowse.SetColumn('NUMBER',    'Event #',     0180);
  ReportBrowse.SetColumn('STATUS',    'ReportStatus',1700);

  if alltrim(Incnum) = '' then
    SQLVar := 'SELECT DONE, NFIRSMAINID, INCNUM, EXPNUM FROM NFIRSMAIN WHERE FDID = ' + AddExpr(FdidVar) + ' AND NFIRSMAINID = ' + AddExpr(NfirsMainID)
  else
    SQLVar := 'SELECT DONE, NFIRSMAINID, INCNUM, EXPNUM FROM NFIRSMAIN WHERE FDID = ' + AddExpr(FdidVar) + ' AND INCNUM = ' + AddExpr(IncNum);

  Open_Query('NFIRSMAINBROWSE',false,SQLVar);
  NfirsCount := A('NFIRSMAINBROWSE').QueryRecCount;
  While Not A('NFIRSMAINBROWSE').Eof do begin
    If tdbfield('NFIRSMAINBROWSE','EXPNUM') = '00' then begin
      ReportBrowse.SetValue('REPORTTYPE','NFIRSMAIN');
      ReportBrowse.SetValue('ID',        GetField('NFIRSMAINBROWSE','NFIRSMAINID').AsString);
      ReportBrowse.SetValue('ICON',      '<IMG src="idx:6">');
      ReportBrowse.SetValue('DESCR',     'NFIRS Report ');
      ReportBrowse.SetValue('NUMBER',    substr(dbfield('NFIRSMAINBROWSE','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAINBROWSE','INCNUM'),5,6));
      ReportBrowse.SetValue('STATUS',    GetDone(tdbfield('NFIRSMAINBROWSE','DONE')));
    end else begin
      ReportBrowse.SetValue('REPORTTYPE','EXPOSURE');
      ReportBrowse.SetValue('ID',        GetField('NFIRSMAINBROWSE','NFIRSMAINID').AsString);
      ReportBrowse.SetValue('ICON',      '<IMG src="idx:6">');
      ReportBrowse.SetValue('DESCR',     'NFIRS Report ');
      ReportBrowse.SetValue('NUMBER',    substr(dbfield('NFIRSMAINBROWSE','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAINBROWSE','INCNUM'),5,6) + '  ' + dbfield('NFIRSMAINBROWSE','EXPNUM'));
      ReportBrowse.SetValue('STATUS',    GetDone(tdbfield('NFIRSMAINBROWSE','DONE')));
    end;
    A('NFIRSMAINBROWSE').Skip(1);
  end;
  CloseApollo('NFIRSMAINBROWSE');

  If CheckModule('NEMSIS3') then begin
    Open_Query('NEM3PCR',false,'SELECT NEM3PCR.NEM3PCRID, NEM3PCR.ERECORD01, NEM3PCR.PATNUM, NEM3STATTYPE.DESCR NEM3STATTYPEDESCR ' +
                               'FROM NEM3PCR ' +
                               'LEFT JOIN NEM3STAT ON (NEM3PCR.NEM3STATID = NEM3STAT.NEM3STATID) ' +
                               'LEFT JOIN NEM3STATTYPE ON (NEM3STAT.NEM3STATTYPEID = NEM3STATTYPE.NEM3STATTYPEID) ' +
                               'WHERE NEM3PCR.NFIRSMAINID = ' + pkValue(NfirsMainID));

    Patcount := A('NEM3PCR').QueryRecCount;

    While Not A('NEM3PCR').Eof do begin
      ReportBrowse.SetValue('REPORTTYPE','NEM3PCR');
      ReportBrowse.SetValue('ID',        GetField('NEM3PCR','NEM3PCRID').AsString);
      ReportBrowse.SetValue('ICON',      '<IMG src="idx:5">');
      ReportBrowse.SetValue('DESCR',     'Patient ' + GetField('NEM3PCR','PATNUM').AsString + ' of ' + IntToStr(PatCount));
      ReportBrowse.SetValue('NUMBER',    GetField('NEM3PCR','ERECORD01').AsString);
      ReportBrowse.SetValue('STATUS',    tdbfield('NEM3PCR','NEM3STATTYPEDESCR'));
      A('NEM3PCR').Skip(1);
    end;
    CloseApollo('NEM3PCR');
  end;  

  RepPanel.Caption.Text := '<IMG src="idx:10"> Reports to be completed for call ' + NfirsMainBrowse.GetValue('INCNUM');
  ErrPanel.Caption.Text := '<IMG src="idx:7"> Press Remove to Validate';

  ReportBrowseClick(self);
end;

procedure TQueueIncReviewForm.ReportBrowseClick(Sender: TObject);
Var ReportType : String;
    EnabledVar : Boolean;
    ID         : String;
begin
  EnabledVar := (AnyStrToInt(NfirsMainBrowse.GetValue('NFIRSMAINID')) > 0);
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  ID         := ReportBrowse.GetValue('ID');
  If Enabledvar then begin
    FinishButton    .Enabled  := true;
    EditButton      .Enabled  := true;
    Nem3PCRNewButton.Enabled  := true;
    ExposureButton  .Enabled  := true;
    DeleteButton    .Enabled  := GetQueueSec(ReportType,ID);
  end else begin
    FinishButton    .Enabled  := false;
    EditButton      .Enabled  := false;
    Nem3PCRNewButton.Enabled  := false;
    ExposureButton  .Enabled  := false;
    DeleteButton    .Enabled  := false;
  end;
end;

function TQueueIncReviewForm.GetQueueSec(ReportType,ID : String): Boolean;
begin
  If ReportType = 'NFIRSMAIN' then
    GetQueueSec := false
  else if (ReportType = 'NEM3PCR') and (ReportBrowse.GetValue('STATUS') = 'Approved') then
    GetQueueSec := false
  else
    GetQueueSec := true;
end;

procedure TQueueIncReviewForm.ReportBrowseDblClick(Sender: TObject);
Var PK           : String;
    ReportType   : String;
begin
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  PK         := ReportBrowse.GetValue('ID');

  If (ReportType = 'NFIRSMAIN') or (ReportType = 'EXPOSURE') then begin
    LoadNFIRSFields(PK);
    RunAlpineFormWithOwner(self,TNFIRSForm,PK,'NFIRSMAIN',NfirsMainNewRecord)

  end else if ReportType = 'NEM3PCR' then begin
    RunAlpineForm(TNem3EMSForm,PK,'NEM3PCR',Nem3PCRNewRecord);
  end;
end;

procedure TQueueIncReviewForm.ReportBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) then
    ReportBrowseDblClick(self);
end;

procedure TQueueIncReviewForm.LoadNFIRSFields(NfirsMainID: String);
Var DateTimeAlarm : String;
    SQLVar        : String;
begin
end;

procedure TQueueIncReviewForm.NfirsMainNewRecord(DataSet: TDataSet);
begin
end;

procedure TQueueIncReviewForm.NfirsAppNewRecord(DataSet: TDataSet);
begin
end;


procedure TQueueIncReviewForm.Nem3PCRNewRecord(DataSet: TDataSet);
Var Zip        : String;
    ShowSecond : Boolean;
    NfirsMainID : String;
    DispCallID  : String;
    SQLVar      : String;
begin
  NfirsMainID                                   := NfirsMainBrowse.GetValue('NFIRSMAINID');
  try
    ShowSecond                                  := (SQLLookUp(FireID,'FDID','NEMSISSET','SHOWSECOND') = 'Y');
    Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, DATETIMEALARM, STRNUM, STREET, ROOMAPT, CITY, STATE, ZIP, PLASTNAME, CROSS1, DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(NfirsMainID));
    Zip                                         := alltrim(Substr(tdbfield('NFIRSMAIN','ZIP'),1,5));
    DataSet.FieldByname('ERECORD01').AsString   := tdbfield('NFIRSMAIN','INCNUM') + '-1';
    DataSet.FieldByname('STRNUM').AsString      := tdbfield('NFIRSMAIN','STRNUM');
    DataSet.FieldByname('STREET').AsString      := tdbfield('NFIRSMAIN','STREET');

    DataSet.FieldByname('ESCENE15').AsString    := tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET');
    DataSet.FieldByname('ESCENE16').AsString    := tdbfield('NFIRSMAIN','ROOMAPT');
    DataSet.FieldByname('FDID').AsString        := tdbfield('NFIRSMAIN','FDID');
    DataSet.FieldByname('ETIMES03').AsDateTime  := SetTimeSeconds(ShowSecond,GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime);
    DataSet.FieldByname('ESCENE19').AsString    := Zip;
    DataSet.FieldByname('ESCENE13').AsString    := tdbfield('NFIRSMAIN','PLASTNAME');
    DataSet.FieldByname('ESCENE20').AsString    := tdbfield('NFIRSMAIN','CROSS1');

    If (Zip <> '') then begin
      Open_Query('NEMSISZIP',false,'SELECT * FROM NEMSISZIP WHERE ZIP = ' + AddExpr(Zip));
      DataSet.FieldByname('ESCENE17').AsString := tdbfield('NEMSISZIP','GNIS');
      DataSet.FieldByname('ESCENE21').AsString := tdbfield('NEMSISZIP','STATEFIPS') + tdbfield('NEMSISZIP','COUNTYFIPS');
      DataSet.FieldByname('ESCENE18').AsString := tdbfield('NEMSISZIP','STATEFIPS');
      CloseApollo('NEMSISZIP');
    end;

    DataSet.FieldByname('DISPCALLID').AsString  := GetField('NFIRSMAIN','DISPCALLID').AsString;
    DataSet.FieldByname('PATNUM').AsString      := '1';
    DataSet.FieldByname('NFIRSMAINID').AsString := NfirsMainID;

  finally
    CloseApollo('NFIRSMAIN');
  end;
  TNem3EMSForm.NewRecord(DataSet)
end;

procedure TQueueIncReviewForm.DeleteButtonClick(Sender: TObject);
Var ReportType : String;
    ID         : String;
begin
  ReportType := ReportBrowse.GetValue('REPORTTYPE');
  ID         := ReportBrowse.GetValue('ID');

  If ReportType = 'NFIRSMAIN' then
    ShowMessage('You cannot delete the main NFIRS report')

  else if ReportType = 'EXPOSURE' then begin
    If BooleanMessageDlg('Delete Nfirs Report?') then begin
      RunSQL('DELETE FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(ID));
      NFIRSMainBrowseClick(self);
    end;

  end else if ReportType = 'NEM3PCR' then begin
    If BooleanMessageDlg('Delete ePCR ?') then begin
      RunSQL('DELETE FROM NEM3PCR WHERE NEM3PCRID = ' + pkValue(ID));
      NFIRSMainBrowseClick(self);
    end;
  end;
end;

procedure TQueueIncReviewForm.CADIntButtonClick(Sender: TObject);
begin
  TNfirsAppForm.ViewCAD(NFIRSMainBrowse.GetValue('DISPCALLID'));
end;

procedure TQueueIncReviewForm.ExposureButtonClick(Sender: TObject);
Var NewNfirsMainID: String;
begin
  If TNFIRSForm.CreateExposure(NfirsMainBrowse.GetValue('NFIRSMAINID'), NewNfirsMainID) then
    LoadReportBrowse;
end;

procedure TQueueIncReviewForm.ResetErrorGrid;
begin
  ErrorGrid.Clear;
  ErrorGrid.RowCount       := 1;
  ErrorGrid.ColCount       := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.FixedRowAlways := true;
  ErrorGrid.RowCount       := ErrorGrid.FixedRows;

  ErrorGrid.SetColumn('TABLENAME',  'TABLENAME',  000);
  ErrorGrid.SetColumn('ID',         'ID',         000);
  ErrorGrid.SetColumn('ERRORDESCR', 'Report Name',125);
  ErrorGrid.SetColumn('ERRORACTION','Procedure',  110);
  ErrorGrid.SetColumn('SPACE',      '',           110);
end;

procedure TQueueIncReviewForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TQueueIncReviewForm.UnitNumFieldEnter(Sender: TObject);
begin
  If mFireID = '13000' then
    UnitNumField.SQLExpr := 'SELECT * FROM VWTRUCK WHERE UNITNUM IS NOT NULL AND UNITNUM <> ' + AddExpr('') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM'
  else
    UnitNumField.SQLExpr := 'SELECT * FROM VWTRUCK WHERE FDID = ' + AddExpr(FdidField.Value) + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM'
end;

procedure TQueueIncReviewForm.FdidFieldEnter(Sender: TObject);
begin
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y');
end;

procedure TQueueIncReviewForm.FinishButtonClick(Sender: TObject);
begin
  If CheckFinish then begin
    RefreshButtonClick(self);
  end;
end;

function TQueueIncReviewForm.CheckFinish: Boolean;
Var NfirsMainID      : String;
    Approved         : Boolean;
    i                : Integer;
begin
  freeAllStringListObjects( QueueErrorList );
  ResetErrorGrid;
  NfirsMainID := NfirsMainBrowse.GetValue('NFIRSMAINID');

  If AnyStrToInt(NfirsMainID) = 0 then
    Exit;

  TQueueIncReviewForm.CheckQueue(QueueErrorList, NfirsMainID);

  Approved := true;
  for i := 0 to QueueErrorList.Count-1 do begin
    Approved := false;
    ErrorGrid.SetValue('TABLENAME',  TErrorObject(QueueErrorList.Objects[i]).TableName);
    ErrorGrid.SetValue('ID',         TErrorObject(QueueErrorList.Objects[i]).ID);
    ErrorGrid.SetValue('ERRORDESCR', TErrorObject(QueueErrorList.Objects[i]).ErrorDescr);
    ErrorGrid.SetValue('ERRORACTION',TErrorObject(QueueErrorList.Objects[i]).ErrorAction);
    ErrorGrid.SetValue('SPACE',      ' ');
  end;

  If Approved then
    ErrPanel.Caption.Text := '<IMG src="idx:7"> Report ' + NFIRSMainBrowse.GetValue('INCNUM') + ' cleared'
  else
    ErrPanel.Caption.Text := '<IMG src="idx:7"> Requirements for ' + NFIRSMainBrowse.GetValue('INCNUM');
  CheckFinish := Approved;
end;

function TQueueIncReviewForm.CreateNem3PCRReport;
Var Nem3PCRID     : String;
    Nem3PCRStatID : String;
begin
  Open_Query('NEM3PCR',true,'SELECT * FROM NEM3PCR WHERE 1=2');
  A('NEM3PCR').Append;
  Nem3PCRNewRecord(A('NEM3PCR').DataSource.DataSet);
  A('NEM3PCR').Post;
  Nem3PCRID := A('NEM3PCR').NewPk;
  LoadNem3NfirsAtt(Nem3PCRID, GetField('NEM3PCR','NFIRSMAINID').Asstring);
  CloseApollo('NEM3PCR');
  CreateNem3PCRReport := Nem3PcrId;
end;

procedure TQueueIncReviewForm.Nem3PCRNewButtonClick(Sender: TObject);
Var Nem3PCRID      : String;
begin
  If BooleanMessageDlg('Create Patient Care Report?') then begin
    Nem3PCRID := CreateNem3PCRReport;
    RunAlpineForm(TNem3EmsForm,Nem3PCRID,'NEM3PCR',Nem3PCRNewRecord);
  end;
end;

procedure TQueueIncReviewForm.FormActivate(Sender: TObject);
begin
  LoadNfirsMainBrowse;
  NFIRSMainBrowseClick(self);
end;

procedure TQueueIncReviewForm.PersIDMakeRepFieldEnter(Sender: TObject);
begin
  If (FdidField.Value = '') then
    PersIDMakeRepField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort
  else
    PersIDMakeRepField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE FDID = ' + AddExpr(FdidField.Value) + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
end;

procedure TQueueIncReviewForm.PersidReviewFieldEnter(Sender: TObject);
begin
  If (FdidField.Value = '') then
    PersIDReviewField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort
  else
    PersIDReviewField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE FDID = ' + AddExpr(FdidField.Value) + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
end;

procedure TQueueIncReviewForm.PrintButtonClick(Sender: TObject);
Var NfirsMainID : String;
begin
  NfirsMainID := NfirsMainBrowse.GetValue('NFIRSMAINID');
  PrintIndividualreport(TQueueIncreviewForm,'NFIRSMAIN',NfirsMainID);
end;

procedure TQueueIncReviewForm.ErrorGridDblClick(Sender: TObject);
Var ReportType : String;
    Pk         : String;
begin
  ReportType := ErrorGrid.GetValue('TABLENAME');
  Pk         := ErrorGrid.GetValue('ID');

  If (ReportType = 'NFIRSMAIN') or (ReportType = 'EXPOSURE') then
    RunAlpineForm(TNFIRSForm,Pk,'NFIRSMAIN',NfirsMainNewRecord)

  else if ReportType = 'NEM3PCR' then
    EditNem3PCR(Pk);
end;

procedure TQueueIncReviewForm.EditNem3PCR(Nem3PCRID: String);
begin
  RunAlpineForm(TNem3EMSForm,Nem3PCRID,'NEM3PCR',Nem3PCRNewRecord);
end;


procedure TQueueIncReviewForm.ErrPanelDblClick(Sender: TObject);
begin
  FinishButtonClick(self);
end;

class procedure TQueueIncReviewForm.CheckQueue(Var QueueErrorList: TStringList; NfirsMainId: String);
begin
  Open_Query('NFIRSMAIN_CHECKQUEUE',False,'SELECT NFIRSMAIN.NFIRSMAINID, N5DISTRICT.CODE N5DISTRICTCODE, ' +
                               'NFIRSMAIN.FDID, NFIRSMAIN.INCNUM, ' +
                               'NFIRSMAIN.SITFOUND, NFIRSMAIN.EXPNUM, NFIRSMAIN.MAID, NFIRSMAIN.DONE ' +
                               'FROM NFIRSMAIN ' +
                               'LEFT JOIN N5DISTRICT ON (NFIRSMAIN.N5DISTRICTID = N5DISTRICT.N5DISTRICTID) ' +
                               'WHERE NFIRSMAIN.NFIRSMAINID = ' + pkValue(NfirsMainID));

  If Not (tdbfield('NFIRSMAIN_CHECKQUEUE','DONE') = 'Y') then
    AddErrorObject(QueueErrorList,'NFIRSMAIN_CHECKQUEUE', 'NFIRSMAIN',GetField('NFIRSMAIN_CHECKQUEUE','NFIRSMAINID').AsString,'FieldName','FieldDescr','C','NFIRS ' + substr(tdbfield('NFIRSMAIN_CHECKQUEUE','INCNUM'),1,4) + '-' + substr(tdbfield('NFIRSMAIN_CHECKQUEUE','INCNUM'),5,6), 'Report is not finished','','','','');

  Open_Query('EXPOSURE',false,'SELECT NFIRSMAINID, DONE, EXPNUM FROM NFIRSMAIN WHERE FDID = ' + edbfield('NFIRSMAIN_CHECKQUEUE','FDID') + ' AND INCNUM = ' + edbfield('NFIRSMAIN_CHECKQUEUE','INCNUM'));
  While Not A('EXPOSURE').Eof do begin
    If (tdbfield('EXPOSURE','EXPNUM') > '00') and (tdbfield('EXPOSURE','DONE') <> 'Y') then
      AddErrorObject(QueueErrorList,'NFIRSMAIN_CHECKQUEUE', 'NFIRSMAIN',GetField('EXPOSURE','NFIRSMAINID').AsString,'FieldName','FieldDescr','C','Exposure ' + tdbfield('EXPOSURE','EXPNUM'),'Exposure is not finished','','','','');
    A('EXPOSURE').Skip(1);
  end;
  CloseApollo('EXPOSURE');

  Open_Query('NEM3PCR',false,'SELECT NEM3PCR.NEM3PCRID, NEM3PCR.ERECORD01, NEM3PCR.PATNUM, NEM3STATTYPE.APPROVED NEM3STATTYPEAPPROVED ' +
                             'FROM NEM3PCR ' +
                             'LEFT JOIN NEM3STAT ON (NEM3PCR.NEM3STATID = NEM3STAT.NEM3STATID) ' +
                             'LEFT JOIN NEM3STATTYPE ON (NEM3STAT.NEM3STATTYPEID = NEM3STATTYPE.NEM3STATTYPEID) ' +
                             'WHERE NEM3PCR.NFIRSMAINID = ' + pkValue(NfirsMainID));

  While Not A('NEM3PCR').Eof do begin
    If Not (tdbfield('NEM3PCR','NEM3STATTYPEAPPROVED') = 'Y') then
      AddErrorObject(QueueErrorList,'NEM3PCR', 'NEM3PCR',GetField('NEM3PCR','NEM3PCRID').AsString,'FieldName','FieldDescr','C','Patient Number ' + GetField('NEM3PCR','PATNUM').AsString, 'Report is not finished','','','','');
    A('NEM3PCR').Skip(1);
  end;
  CloseApollo('NEM3PCR');

  CloseApollo('NFIRSMAIN_CHECKQUEUE');
end;


procedure TQueueIncReviewForm.LoadNfirsAppOtherBrowse;
Var DispCallID : String;
begin
  DispCallID := NfirsMainBrowse.GetValue('DISPCALLID');

  NfirsAppOtherBrowse.Clear;
  NfirsAppOtherBrowse.ColCount := 0;
  NfirsAppOtherBrowse.RowCount := 0;
  NfirsAppOtherBrowse.ClearColumns;

  NfirsAppOtherBrowse.FixedRowAlways := true;
  NfirsAppOtherBrowse.RowCount       := NfirsAppOtherBrowse.FixedRows;
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPID',           'NFIRSAPPID' ,000);
  NfirsAppOtherBrowse.SetColumn('UNITNUM',              'Unit #',     080);
  NfirsAppOtherBrowse.SetColumn('SHORTDESCR',           'Agency',     IIFI(mFireID = '13000',0,100));
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPDISPDESCR',    'Disposition',000);
  NfirsAppOtherBrowse.SetColumn('NFIRSAPPSTATTYPEDESCR','Status',     IIFI(mFireID = '13000',100,0));
  NfirsAppOtherBrowse.SetColumn('SPACE',                '',           500);

  Open_Query('VWNFIRSAPP',false,'SELECT FDID.SHORTDESCR, NFIRSAPPDISP.DESCR NFIRSAPPDISPDESCR, VWNFIRSAPP.UNITNUM, VWNFIRSAPP.NFIRSAPPSTATTYPEDESCR, VWNFIRSAPP.NFIRSAPPID FROM VWNFIRSAPP ' +
                                'LEFT JOIN FDID ON (VWNFIRSAPP.FDID = FDID.FDID) ' +
                                'LEFT JOIN NFIRSAPPDISP ON (VWNFIRSAPP.NFIRSAPPDISPID = NFIRSAPPDISP.NFIRSAPPDISPID) ' + 
                                'WHERE VWNFIRSAPP.DISPCALLID = ' + pkValue(DispCallID) + ' ORDER BY VWNFIRSAPP.UNITNUM');

  While Not A('VWNFIRSAPP').Eof do begin
    NfirsAppOtherBrowse.SetValue('NFIRSAPPID',           GetField('VWNFIRSAPP','NFIRSAPPID').AsString);
    NfirsAppOtherBrowse.SetValue('UNITNUM',              tdbfield('VWNFIRSAPP','UNITNUM'));
    NfirsAppOtherBrowse.SetValue('SHORTDESCR',           tdbfield('VWNFIRSAPP','SHORTDESCR'));
    NfirsAppOtherBrowse.SetValue('NFIRSAPPDISPDESCR',    tdbfield('VWNFIRSAPP','NFIRSAPPDISPDESCR'));
    NfirsAppOtherBrowse.SetValue('NFIRSAPPSTATTYPEDESCR',tdbfield('VWNFIRSAPP','NFIRSAPPSTATTYPEDESCR'));
    A('VWNFIRSAPP').Skip(1);
  end;
  CloseApollo('VWNFIRSAPP');
end;

initialization
  FDFunctions := TFDFunc.Create;
finalization
  FDFunctions.Free;

end. 
