unit SQLSet;
 
interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  NormalBase,
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AlpineLookup,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  ADODB,
  AppLst,
  Tabledefinitions,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  Adox_Tlb,
  CommonFunc,
  Gauges,
  AdvGroupBox,
  UWebGMapsCommon,
  UWebGMapsGeocoding,
  UWebGMaps,
  AdvObj,
  ShellApi,
  QRPrev,
  QuickRpt,
  QRPrntr,
  QRPDFFilt,
  AlpinePanel,
  QRExport,
  QRWebFilt;

type
  TSQLSetForm = class(TNormalBaseForm)
    ASCSetControl: TPageControl;
    DictionaryTab: TTabSheet;
    ExportListBox: TListBox;
    ResetTab: TTabSheet;
    RedNMXTab: TTabSheet;
    UserManTab: TTabSheet;
    SQLServer: TTabSheet;
    InspButton: TAlpineGlowButton;
    suffolkCountySpreadsheet: TOpenDialog;
    openaccess: TOpenDialog;
    Panel1: TPanel;
    NFIRSButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    HazMatButton: TAlpineGlowButton;
    ExportEMSTables: TAlpineGlowButton;
    ExportButton: TAlpineGlowButton;
    InspectButton: TAlpineGlowButton;
    ExportProQA: TAlpineGlowButton;
    Label15: TLabel;
    AlpinePanel1: TAlpinePanel;
    PersTotalButton: TAlpineGlowButton;
    DateTimeInButton: TAlpineGlowButton;
    RemoveDuplicateNfirsAtt: TAlpineGlowButton;
    StrNumButton: TAlpineGlowButton;
    EVLengthButton: TAlpineGlowButton;
    AlpinePanel2: TAlpinePanel;
    AlpinePanel3: TAlpinePanel;
    NITrainCATButton: TAlpineGlowButton;
    RemoveDuplicateNiAtt: TAlpineGlowButton;
    Label13: TLabel;
    Label14: TLabel;
    GUInitialDateField: TAlpineDateTime;
    GUFinalDateField: TAlpineDateTime;
    NfirsAttEvLengthButton: TAlpineGlowButton;
    UtilityBox: TListBox;
    AlpinePanel4: TAlpinePanel;
    Password: TLabel;
    passwordedit: TEdit;
    resultedit: TEdit;
    Label38: TLabel;
    AlpinePanel5: TAlpinePanel;
    AlpinePanel6: TAlpinePanel;
    Label17: TLabel;
    newcoordinate: TEdit;
    coordinate: TEdit;
    Label18: TLabel;
    AlpinePanel7: TAlpinePanel;
    Label8: TLabel;
    Label10: TLabel;
    RedEntryFdidButton: TAlpineGlowButton;
    RedEntryDataField: TEdit;
    NewFdidField: TEdit;
    AlpinePanel8: TAlpinePanel;
    ChangeFDIDSetButton: TAlpineGlowButton;
    FdidOldField: TEdit;
    FdidNewField: TEdit;
    Label39: TLabel;
    Label40: TLabel;
    AlpinePanel9: TAlpinePanel;
    LoadCSVButton: TAlpineGlowButton;
    CSVUniqueField: TAlpineEdit;
    CSVTableNameField: TAlpineEdit;
    CSVFileField: TAlpineEdit;
    Label12: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    AlpinePanel10: TAlpinePanel;
    multistepproblem: TEdit;
    Label16: TLabel;
    RestoreRecord: TAlpineGlowButton;
    CopyTable: TAlpineGlowButton;
    ReportWriteButton: TAlpineGlowButton;
    AlpineGlowButton3: TAlpineGlowButton;
    FixRolodexButton: TAlpineGlowButton;
    PurgeForTransfer: TAlpineGlowButton;
    Label41: TLabel;
    AlpinePanel11: TAlpinePanel;
    ImportProQACodes: TAlpineGlowButton;
    ImportSuffolk: TAlpineGlowButton;
    AlpineCheckBox1: TAlpineCheckBox;
    Label42: TLabel;
    AlpinePanel12: TAlpinePanel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    ClearFDIDButton: TAlpineGlowButton;
    FinalFdidField: TEdit;
    OldFdidList: TMemo;
    Label46: TLabel;
    SetupFdid: TEdit;
    Gauge: TGauge;
    ResetDispCallButton: TAlpineGlowButton;
    AlpineGlowButton1: TAlpineGlowButton;
    SchdButton: TAlpineGlowButton;
    NIButton: TAlpineGlowButton;
    EMSButton: TAlpineGlowButton;
    MultiStepButton: TAlpineGlowButton;
    EncryptButton: TAlpineGlowButton;
    DecryptButton: TAlpineGlowButton;
    MinToDecimalButton: TAlpineGlowButton;
    DecimalToMinuteButton: TAlpineGlowButton;
    WaveButton: TAlpineGlowButton;
    UserManPanel: TAlpinePanel;
    UserManBrowse: TAlpineTMSStringGrid;
    RedNMXReviewButton: TAlpineGlowButton;
    DbaseButton: TAlpineGlowButton;
    WikiFMButton: TAlpineGlowButton;
    AlpinePanel14: TAlpinePanel;
    AlpinePanel15: TAlpinePanel;
    QuerySpacUsed: TAlpineGlowButton;
    Reindex: TAlpineGlowButton;
    appendtologButton: TAlpineGlowButton;
    DataBrowse: TAlpineTMSStringGrid;
    ScanButton: TAlpineGlowButton;
    AdobeButton: TAlpineGlowButton;
    PortTestButton: TAlpineGlowButton;
    ChangeFdidHistoryButton: TAlpineGlowButton;
    QRPtoPDFButton: TAlpineGlowButton;
    PDFReport: TQuickRep;
    QRBand1: TQRBand;
    compreport: TQRCompositeReport;
    QRExcelFilter1: TQRExcelFilter;
    QRHTMLFilter1: TQRHTMLFilter;
    QRRTFFilter1: TQRRTFFilter;
    NILosapCATIDButton: TAlpineGlowButton;
    SQLDefragTab: TTabSheet;
    ImageList: TImageList;
    SQLDefragButtonPanel: TAlpinePanel;
    SQLDefragButton: TAlpineGlowButton;
    DefragPartialButton: TAlpineGlowButton;
    SQLDefragPanel: TAlpinePanel;
    SQLDefragBrowse: TAlpineTMSStringGrid;
    AlpinePanel13: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    PersIDButton: TAlpineGlowButton;
    PersIDOldField: TAlpineLookup;
    PersIDNewField: TAlpineLookup;
    WikiHelpButton: TAlpineGlowButton;
    AlpinePanel16: TAlpinePanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TransferButton: TAlpineGlowButton;
    TransTableNameField: TAlpineEdit;
    TransDatabaseField: TAlpineEdit;
    TransServerField: TAlpineEdit;
    Label6: TLabel;
    Label7: TLabel;
    TransPasswordField: TAlpineEdit;
    TransUserNameField: TAlpineEdit;
    TransTableTypeField: TAlpineEdit;
    Label19: TLabel;
    AlpinePanel17: TAlpinePanel;
    Label20: TLabel;
    PlayFileField: TEdit;
    PlayButton: TAlpineGlowButton;
    DefragNemsisButton: TAlpineGlowButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InvLocButtonClick(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure NFIRSButtonClick(Sender: TObject);
    procedure HazMatButtonClick(Sender: TObject);
    procedure PersTotalButtonClick(Sender: TObject);
    procedure FixRolodexButtonClick(Sender: TObject);
    procedure UserManTabShow(Sender: TObject);
    procedure UserManBrowseDblClick(Sender: TObject);
    procedure EVLengthButtonClick(Sender: TObject);
    procedure QuerySpacUsedClick(Sender: TObject);
    procedure DateTimeInButtonClick(Sender: TObject);
    procedure ExportEMSTablesClick(Sender: TObject);
    procedure AllClick(Sender: TObject);
    procedure RestoreRecordClick(Sender: TObject);
    procedure CopyTableClick(Sender: TObject);
    procedure ReportWriteButtonClick(Sender: TObject);
    procedure InspectButtonClick(Sender: TObject);
    procedure AlpineGlowButton3Click(Sender: TObject);
    procedure DecryptButtonClick(Sender: TObject);
    procedure EncryptButtonClick(Sender: TObject);
    procedure ImportSuffolkClick(Sender: TObject);
    procedure StrNumButtonClick(Sender: TObject);
    procedure RedEntryFdidButtonClick(Sender: TObject);
    procedure ExportProQAClick(Sender: TObject);
    procedure LoadCSVButtonClick(Sender: TObject);
    procedure ReindexClick(Sender: TObject);
    procedure RemoveDuplicateNiAttClick(Sender: TObject);
    procedure RemoveDuplicateNfirsAttClick(Sender: TObject);
    procedure appendtologButtonClick(Sender: TObject);
    procedure PurgeForTransferClick(Sender: TObject);
    procedure ImportProQACodesClick(Sender: TObject);
    procedure NITrainCATButtonClick(Sender: TObject);
    procedure NfirsAttEvLengthButtonClick(Sender: TObject);
    procedure ChangeFDIDSetButtonClick(Sender: TObject);
    procedure ClearFDIDButtonClick(Sender: TObject);
    procedure ResetDispCallButtonClick(Sender: TObject);
    procedure AlpineGlowButton1Click(Sender: TObject);
    procedure NIButtonClick(Sender: TObject);
    procedure SchdButtonClick(Sender: TObject);
    procedure EMSButtonClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure MultiStepButtonClick(Sender: TObject);
    procedure DecimalToMinButtonClick(Sender: TObject);
    procedure DecimalToMinuteButtonClick(Sender: TObject);
    procedure MinToDecimalButtonClick(Sender: TObject);
    procedure WaveButtonClick(Sender: TObject);
    procedure RedNMXReviewButtonClick(Sender: TObject);
    procedure DbaseButtonClick(Sender: TObject);
    procedure WikiFMButtonClick(Sender: TObject);
    procedure SQLServerShow(Sender: TObject);
    procedure ScanButtonClick(Sender: TObject);
    procedure AdobeButtonClick(Sender: TObject);
    procedure PortTestButtonClick(Sender: TObject);
    procedure ChangeFdidHistoryButtonClick(Sender: TObject);
    procedure QRPtoPDFButtonClick(Sender: TObject);
    procedure NILosapCATIDButtonClick(Sender: TObject);
    procedure SQLDefragButtonClick(Sender: TObject);
    procedure SQLDefragTabShow(Sender: TObject);
    procedure DefragPartialButtonClick(Sender: TObject);
    procedure PersIDButtonClick(Sender: TObject);
    procedure PersIDOldFieldEnter(Sender: TObject);
    procedure PersIDNewFieldEnter(Sender: TObject);
    procedure WikiHelpButtonClick(Sender: TObject);
    procedure TransferButtonClick(Sender: TObject);
    procedure PlayButtonClick(Sender: TObject);
    procedure DefragNemsisButtonClick(Sender: TObject);
  private
    { Private declarations }
    bDummyVar          : Boolean;
    SourceDatabaseVar  : TAlpineAdoConnection;
    DispCallTypeID     : String;
    DispSubTypeID      : String;
    CADCallTypeID      : String;
    CADSubTypeID       : String;
    procedure LoadCadCallType(CadCallTypeCode, CadCallTypeDescr: String);
    procedure LoadCadSubType(CadSubTypeCode, CadSubTypeDescr: String);
    procedure ExportData(ExportCode : String);
    procedure AddStatus(MessageVar: String);
    procedure ConvertFdid(DbfName: String);
    procedure SysServiceWebNewRecord(DataSet: TDataSet);
    procedure sysservicewebpagelistNewRecord(DataSet: TDataSet);
    procedure RemoveAttendanceDuplicates(mEventTable,mAttendTable,mCompareField: String);
    procedure UpdateRedNMXFdid(TableName: String);
    procedure DeleteFdidExcept(TableName: String);
    procedure ChangeSetupFdid(TableName, OldFdid, NewFdid: String);
    procedure ResetDataBrowse;
    procedure ResetSQLDefragBrowse;
    procedure DefragPartial(TableName : String);
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  SQLSetForm: TSQLSetForm;

implementation
uses GenFunc,
     EncryptStr,
     Update,
     FdidOwner,
     ExitPass,
     FormFunc,
     gisfunc,
     SysServiceWeb,
     UserManEdit,
     DataSync,
     Search,
     ConvertTable,
     Main,
     ReportConversionHelpGuide,
     RestoreRecord,
     WavePlayer,
     SysServiceWebPageList,
     RedNMXReview,
     DbaseEdit,
     ScanImage,
     PDFCombine,
     ASCPortTest,
     CommonVar;

{$R *.DFM}

class procedure TSQLSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TSQLSetForm.NfirsAttEvLengthButtonClick(Sender: TObject);
Var EvLength : Real;
    DateCond : String;
    SQLVar   : String;
begin
  inherited;
  DateCond := BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',GUInitialDateField.Value,GUFinalDateField.Value);
  If DateCond = '' then
    SQLVar := 'SELECT INCNUM, EVLENGTH, NFIRSMAINID FROM NFIRSMAIN'
  else
    SQLVar := 'SELECT INCNUM, EVLENGTH, NFIRSMAINID FROM NFIRSMAIN WHERE ' + DateCond;

  Open_Query('NFIRSMAIN',false,SQLVar);
  Gauge.MaxValue := A('NFIRSMAIN').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('NFIRSMAIN').Eof do begin
    EvLength := GetField('NFIRSMAIN','EVLENGTH').AsFloat;
    SQLVar := 'UPDATE NFIRSATT SET EVLENGTH = ' + FormatFloat('##,##0.00',EvLength) + ' WHERE NFIRSMAINID = ' + PkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    If EvLength > 0 then
      RunSQL(SQLVar);
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
    A('NFIRSMAIN').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  Gauge.Visible  := false;
  ShowMessage('Done');
end;

procedure TSQLSetForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Open_Query('ASCSET',false,'SELECT FDIDOWNER FROM ASCSET WHERE ASCSETID = 1');
  ASCFdid := GetField('ASCSET','FDIDOWNER').AsString;
  CloseApollo('ASCSET');
end;

procedure TSQLSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  appendtologButton.Enabled       := False;
  bDummyVar                       := False;
  ResetTab.TabVisible             := AlpineLogin;
  ASCSetControl.ActivePage        := RedNMXTab;
  SQLServer.TabVisible            := GlobalAdoConnection.TableType=MSSqlTableType;
  RemoveDuplicateNfirsAtt.Visible := GlobalAdoConnection.TableType=MSSqlTableType;
  PurgeForTransfer.Enabled        := uppercase(GlobalAdoConnection.DatabaseName)<>'REDNMX';
end;

procedure TSQLSetForm.SysServiceWebNewRecord(DataSet: TDataSet);
begin
end;

procedure TSQLSetForm.sysservicewebpagelistNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('receiveall').AsString := 'N';
end;


procedure TSQLSetForm.ImportProQACodesClick(Sender: TObject);
var accessdatabase : TAlpineAdoConnection;
    mError         : String;

  procedure Import(TableName: String);
  begin
    if not booleanmessageDlg('Import table '+TableName+'?') then exit;
    try
      Open_Query(AccessDatabase,'SOURCE',False,'SELECT * FROM '+TableName);
      Open_Query('DEST',True,'SELECT * FROM '+TableName);
      while not A('SOURCE').eof do begin
        if not A('DEST').ExactQueryLocate('CODE',tdbfield('SOURCE','CODE')) then begin
          GetTable('DEST').Insert;
          GetField('DEST','CODE').AsString := tdbfield('SOURCE','rCODE');
          GetField('DEST','DESCR').AsString := tdbfield('SOURCE','DESCR');
          if TableName <> 'PROQAPRIOR' then
            GetField('DEST','SUFFIX').AsString := tdbfield('SOURCE','SUFFIX');
          GetTable('DEST').Post;
        end;
        A('SOURCE').next;
      end;

    finally
      CloseApollo('SOURCE');
      CloseApollo('DEST');
    end;
    ShowMessage('Done');
  end;
begin
  inherited;
  if not BooleanMessageDlg('Use this utility to import tables PROQAEMDCODE,PROQAEFDCODE,PROQAPRIOR.  You will need to have first "Exported ProQa tables".  '+
    'This routine will NOT overwrite or purge existing data in these tables.'+crlf+'Proceed??') then exit;
  if not openaccess.execute then exit;
  try
    accessdatabase := TAlpineAdoConnection.Create(self,openaccess.filename,'','',AccessTableType);
    if not AccessDatabase.connect(merror) then
      showmessage('Could not connect: '+merror)
    else begin
      Import('PROQAEMDCODE');
      Import('PROQAEFDCODE');
      Import('PROQAPRIOR');
    end;
  finally
    accessdatabase.free;
  end;
end;

procedure TSQLSetForm.ImportSuffolkClick(Sender: TObject);
var MainQuery     : TADOQuery;
    sTypeCode     : String;
    sTypeDescr    : String;
    sSubTypeCode  : String;
    sSubTypeDescr : String;
begin
  inherited;
  if not BooleanMessageDlg('Use this utility to import the Suffolk County CAD Codes into tables CADCALLTYPE and CADSUBTYPE.  The native format '+
  'is the P:\document\FireDept\12345.NY\5-29_EVENT_TYPES.xls Excel Spreadsheet.  If you click Yes you will be prompted with an open dialog box to navigate to this file.  Enjoy!!') then exit;

  if not suffolkCountySpreadsheet.execute then exit;

  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+suffolkCountySpreadsheet.filename+';Extended Properties=Excel 8.0;Persist Security Info=False';
  MainQuery.SQL.Text         := 'select * from [SHEET1$]';
  MainQuery.Active           := true;
  Gauge.MaxValue             := mainquery.RecordCount;

  while not MainQuery.Eof do begin
    sTypeCode      :=  alltrim(MainQuery.FieldByName('tycod').AsString);
    sTypeDescr     :=  alltrim(MainQuery.FieldByName('eng').AsString);
    sSubTypeCode   :=  alltrim(MainQuery.FieldByName('sub_tycod').AsString);
    sSubTypeDescr  :=  alltrim(MainQuery.FieldByName('sub_eng').AsString);

    LoadCADCallType(sTypeCode, sTypeDescr);

    if sSubTypeCode <> '<NULL>' then
    LoadCadSubType(sSubTypeCode, sSubTypeDescr);
    application.processmessages;
    MainQuery.next;
    Gauge.Progress := Gauge.Progress + 1;
  end;
  ShowMessage('DONE')
end;

procedure TSQLSetForm.LoadCadSubType(CadSubTypeCode, CadSubTypeDescr: String);
begin
  If Not (alltrim(CadSubTypeCode) = '') then begin
    Open_Query('CADSUBTYPE',true,'SELECT * FROM CADSUBTYPE WHERE CODE = ' + AddExpr(CadSubTypeCode));
    If A('CADSUBTYPE').RecordsExist then
      GetTable('CADSUBTYPE').Edit
    else
      GetTable('CADSUBTYPE').Append;
    GetField('CADSUBTYPE','CODE').AsString          := CadSubTypeCode;

    If alltrim(CadSubTypeDescr) <> '' then       //don't overwrite with null
      GetField('CADSUBTYPE','DESCR').AsString         := CadSubTypeDescr;
    
    GetField('CADSUBTYPE','CADCALLTYPEID').AsString := CadCallTypeID;
    DispSubTypeID                           := GetField('CADSUBTYPE','DISPSUBTYPEID').AsString;
    GetTable('CADSUBTYPE').Post;
    CadSubTypeID                            := IIf(GetField('CADSUBTYPE','CADSUBTYPEID').AsInteger > 0,GetField('CADSUBTYPE','CADSUBTYPEID').AsString,A('CADSUBTYPE').NewPk);
    CloseApollo('CADSUBTYPE');
  end else begin
    DispSubTypeID := '';
    CadSubTypeID  := '';
  end;
end;

procedure TSQLSetForm.LoadCSVButtonClick(Sender: TObject);
var CSVQuery : TADOQuery;
    FileName : String;
begin
  inherited;
  FileName                  := 'C:\TEMP\MECHANICALPARTSINVENTORY.XLSX';
  CSVQuery                  := TADOQuery.Create(self);
  CSVQuery.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FileName+';Extended Properties=Excel 8.0;Persist Security Info=False';
  CSVQuery.SQL.Text         := 'select * from [MechanicalPartsInventory]';
  CSVQuery.Active           := true;
  Gauge.MaxValue            := CSVQuery.RecordCount;

  while not CSVQuery.eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    ShowMessage(alltrim(CSVQuery.FieldByName('PART').AsString));
    CSVQuery.next;
  end;
  CSVQuery.Close;
end;

procedure TSQLSetForm.MinToDecimalButtonClick(Sender: TObject);
begin
  inherited;
  NewCoordinate.Text := FloatToStr(MinutesToDecimal(AnyStrToFloat(Coordinate.Text)));
end;

procedure TSQLSetForm.MultiStepButtonClick(Sender: TObject);
begin
  inherited;
  If (alltrim(MultiStepProblem.text) = '') then
    ShowMessage('You must enter a table name')
  else
    FixMultiStep(MultiStepProblem.Text);
  ShowMessage('Done');
end;

procedure TSQLSetForm.LoadCadCallType(CadCallTypeCode, CadCallTypeDescr: String);
begin
  If Not (alltrim(CadCallTypeCode) = '') then begin
    Open_Query('CADCALLTYPE',true,'SELECT * FROM CADCALLTYPE WHERE CODE = ' + AddExpr(CadCallTypeCode));
    If A('CADCALLTYPE').RecordsExist then
      GetTable('CADCALLTYPE').Edit
    else
      GetTable('CADCALLTYPE').Append;
    GetField('CADCALLTYPE','CODE').AsString  := CadCallTypeCode;

    if alltrim(CadCallTypeDescr) <> '' then  //don't overwrite with null
    GetField('CADCALLTYPE','DESCR').AsString := CadCallTypeDescr;
    
    DispCallTypeID                           := GetField('CADCALLTYPE','DISPCALLTYPEID').AsString;
    GetTable('CADCALLTYPE').Post;
    CadCallTypeID                            := IIf(GetField('CADCALLTYPE','CADCALLTYPEID').AsInteger > 0,GetField('CADCALLTYPE','CADCALLTYPEID').AsString,A('CADCALLTYPE').NewPk);
    CloseApollo('CADCALLTYPE');
  end else begin
    DispCallTypeID := '';
    CadCallTypeID  := '';
  end;
end;

procedure TSQLSetForm.InspButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE INSP');
    RunSQL('TRUNCATE TABLE VIO');
    RunSQL('TRUNCATE TABLE INSPIMAGE');
    RunSQL('TRUNCATE TABLE VIOIMAGE');
    RunSQL('TRUNCATE TABLE INSPTICK');
    ShowMessage('Finished');
  end;
end;

procedure TSQLSetForm.InspectButtonClick(Sender: TObject);
begin
  inherited;
  ExportData('INSPCODES');
end;

procedure TSQLSetForm.InvLocButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INV',false,'SELECT UNITNUM, DESCR FROM INV WHERE TYPE = ' + AddExpr('TRUCK'));
  While Not A('INV').Eof do begin
    TableInsert('INVLOC',['DESCR','PARENTID','FDID'],
                         [tdbfield('INV','DESCR') + ' ' + tdbfield('INV','DESCR'),3,'12345']);
    A('INV').Skip(1);
  end;
  CloseApollo('INV');
  ShowMessage('Finished');
end;

procedure TSQLSetForm.ExportData(ExportCode : String);
var mAccessDataBase       : TAlpineAdoConnection;
    mFileName             : String;
    mdb                   : TTableDef;
    tableType             : Integer;
    i                     : Integer;
    mError                : String;
    DataSource            : string;
    mCond                 : Boolean;
    FExportAsciiTableDefs : TStringList;
    Catalog               : _Catalog;

  procedure ExportTableToAccess;
  var iField: Integer;
      mfield: String;
  begin
    Open_Query('SOURCE',False,'SELECT * FROM '+mdb.Name);
    Open_Query(mAccessDataBase,'DEST',true,'SELECT * FROM '+mdb.Name+' WHERE 1=2');
    Gauge.MaxValue := SqlTableRecCount('SELECT COUNT(*) FROM ' + mdb.Name);
    Gauge.Progress := 0;
    while not A('SOURCE').eof do begin
      Application.processmessages;
      Gauge.Progress := Gauge.Progress + 1;
      GetTable('DEST').Insert;
      for ifield := 0 to GetTable('DEST').Fields.count-1 do begin
        mField := GetTable('DEST').fields[iField].FieldName;
        if (GetTable('DEST').FindField(mfield)<>nil) and (GetTable('SOURCE').FindField(mfield)<>nil) then
          getField('DEST',mfield).AsString := rtrim(getField('SOURCE',mfield).AsString);
      end;
      A('DEST').Post(False);
      A('SOURCE').Skip(1);
    end;
    CloseApollo('SOURCE');
    CloseApollo('DEST');
  end;
begin
  mFileName := ExtractFileDir(ParamStr(0)) + '\' + ExportCode + '.mdb';
  If FileExists(mFileName) then begin
    If not DeleteFile(mFileName) then begin
      showmessage('Could not delete '+mFileName);
      exit;
    end;
  end;
  Catalog         := CoCatalog.Create;
  DataSource      := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=' + mFileName + ';Jet OLEDB:Engine Type=5';
  Catalog.Create(DataSource);

  Tabletype       := AccessTableType;
  mAccessDataBase := TAlpineAdoConnection.Create(self,mFileName,'ALPINE','A_S_C',TableType);

  If not mAccessDatabase.Connect(mError) then begin
    ShowMessage('Could not connect to ' + mFileName + '  Error: ' + mError);
    exit;
  end;
  bDummyVar := False;

  AddStatus('Loading table definitions . . . . . ');
  FExportAsciiTableDefs := ReadAsciiTables(Gauge, '' ,'' ,GlobalAdoConnection, bDummyVar);
  AddStatus('Loading table definitions . . . . . Finished');
  Gauge.progress        := 0;

  Open_Query('EXPSYSTABLE',False,'SELECT * FROM SYSTABLE ORDER BY TABLENAME');
  while not A('EXPSYSTABLE').eof do begin
    If ExportCode = 'REDNMX' then begin
      mCond := TUpdateForm.CheckExportImportFile('EXPSYSTABLE');
      if (GetField('EXPSYSTABLE', 'TABLENAME').AsString = 'N5MOBMAKE') then
        mCond := True;
    end else if ExportCode = 'ALL' then
      mCond := True
    else if ExportCode = 'NFIRS' then
      mCond := (substr(tdbField('EXPSYSTABLE','TABLENAME'),1,2)='N5') and (tdbField('EXPSYSTABLE','TABLENAME')<>'N5DISTRICT')
    else if ExportCode = 'PROQA' then
      mCond := (tdbField('EXPSYSTABLE','TABLENAME')='PROQAEMDCODE') or (tdbField('EXPSYSTABLE','TABLENAME')='PROQAEFDCODE') or  (tdbField('EXPSYSTABLE','TABLENAME')='PROQAPRIOR')
    else if (ExportCode = 'EMSCODES') then
      mCond := (tdbfield('EXPSYSTABLE','MOBTYPE') = 'S') and ( (tdbfield('EXPSYSTABLE','MODCODE') = 'EMS') or (tdbfield('EXPSYSTABLE','MODCODE') = 'NEMSIS') )
    else if (ExportCode = 'INSPCODES') then
      mCond := (tdbfield('EXPSYSTABLE','MOBTYPE') = 'S') and (tdbfield('EXPSYSTABLE','MODCODE') = 'INSP')
    else if ExportCode = 'HAZMAT' then
      mCond := (tdbField('EXPSYSTABLE','TABLENAME')='CHEM') or (substr(tdbField('EXPSYSTABLE','TABLENAME'),1,4)='RIDS') or (tdbField('EXPSYSTABLE','TABLENAME')='SYN');

    If mCond then begin
      AddStatus('Exporting ' + tdbField('EXPSYSTABLE','TABLENAME') + ' . . . . . ');
      i := FExportAsciiTableDefs.IndexOf(tdbField('EXPSYSTABLE','TABLENAME'));
      If i <>-1 then begin
        mdb := TTableDef(FExportAsciiTableDefs.Objects[i]);
        If CreateTable( mAccessDataBase,GlobalAdoConnection,FExportAsciiTableDefs,tdbField('EXPSYSTABLE','TABLENAME')) then
          ExportTableToAccess;
      end;
      AddStatus('Exporting ' + tdbField('EXPSYSTABLE','TABLENAME') + ' . . . . . Finished');
    end;
    A('EXPSYSTABLE').Skip(1);
  end;
  CloseApollo('EXPSYSTABLE');
  mAccessDataBase.Free;
  ClearAndFreeStringList(FExportAsciiTableDefs);
  Gauge.progress := 0;
  Showmessage('Done Exporting Data');
end;

procedure TSQLSetForm.RedEntryFdidButtonClick(Sender: TObject);
begin
  inherited;
  ConvertFdid('APPINC.DBF');
  ConvertFdid('CIVILIAN.DBF');
  ConvertFdid('FIRE.DBF');
  ConvertFdid('FIREEQ.DBF');
  ConvertFdid('INCIDENT.DBF');
  ConvertFdid('INCATT.DBF');
  ConvertFdid('MEMBER.DBF');
  ConvertFdid('NFIRSARS.DBF');
  ConvertFdid('NFIRSEMS.DBF');
  ConvertFdid('NFIRSFIR.DBF');
  ConvertFdid('NFIRSSTR.DBF');
  ConvertFdid('NFIRSHAZ.DBF');
  ConvertFdid('NFIRSJUV.DBF');
  ShowMessage('Done');
end;


procedure TSQLSetForm.ConvertFdid(DbfName: String);
begin
  Net_Open(RedEntryDataField.Text + DbfName,'S','DBF');
  Gauge.MaxValue             := A('DBF').QueryRecCount;
  While Not A('DBF').Eof do begin
    GetTable('DBF').Edit;
    GetField('DBF','FDID').AsString := NewFdidField.text;
    GetTable('DBF').Post;
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
    A('DBF').Skip(1);
  end;
  CloseApollo('DBF');
end;

procedure TSQLSetForm.RedNMXButtonClick(Sender: TObject);
var mAccessDataBase : TAlpineAdoConnection;
    mFileName       : String;
    mError          : String;
begin
  inherited;
  If BooleanMessageDlg('Export to RedNMX.MDB?') then begin
    ExportData('REDNMX');
    mFileName := ExtractFileDir(ParamStr(0)) + '\rednmx.mdb';
    mAccessDataBase := TAlpineAdoConnection.Create(self,mFileName,'ALPINE','A_S_C',AccessTableType);
    If not mAccessDatabase.Connect(mError) then begin
      ShowMessage('Could not connect to ' + mFileName + '  Error: ' + mError);
      exit;
    end;
    RunSql(mAccessDataBase,'DELETE FROM SYSREPDESCR');
    Open_query(mAccessDataBase,'SYSREPDESCR',True,'SELECT * FROM SYSREPDESCR');
    Open_Query('SYSREP',False,'SELECT SYSREPID,REPORTCODE,NARR FROM SYSREP');
    while not A('SYSREP').eof do begin
      If tdbField('SYSREP','REPORTCODE')<>'' then begin
        GetTable('SYSREPDESCR').Insert;
        GetField('SYSREPDESCR','REPORTCODE').AsString    := GetField('SYSREP','REPORTCODE').AsString;
        GetField('SYSREPDESCR','NARR').AsString          := GetField('SYSREP','NARR').AsString;
        GetField('SYSREPDESCR','SYSREPDESCRID').AsString := GetField('SYSREP','SYSREPID').AsString;
        A('SYSREPDESCR').Post(False);
      end;

      A('SYSREP').Skip(1);
    end;
    CloseApollo('SYSREPDESCR');
    CloseApollo('SYSREP');
    ShowMessage('Finished exporting to REDNMX.MDB');
  end;  
end;

procedure TSQLSetForm.RedNMXReviewButtonClick(Sender: TObject);
begin
  inherited;
  RedNMXReviewForm := TRedNMXReviewForm.Create(Self,globaladoconnection);
  RedNMXReviewForm.ShowModal;
  RedNMXReviewForm.Free;
end;

procedure TSQLSetForm.ReindexClick(Sender: TObject);
begin
  inherited;
  appendtolog('start ReIndex');
  GlobalQueryTimeOut := 9999;  
  if RunSql('sp_MSforeachtable @command1="print '+AddExpr('?')+' DBCC DBREINDEX ('+AddExpr('?')+')"') then
    ShowMessage('Reindex Successful')
  else
    ShowMessage('Reindex Failed');
  appendtolog('Done ReIndex');
end;

procedure TSQLSetForm.RemoveDuplicateNfirsAttClick(Sender: TObject);
begin
  inherited;
  RemoveAttendanceDuplicates('NFIRSMAIN','NFIRSATT','DATETIMEALARM');
end;

procedure TSQLSetForm.RemoveDuplicateNiAttClick(Sender: TObject);
begin
  RemoveAttendanceDuplicates('NI','NIATT','DATETIMESTART');
end;

procedure TSQLSetForm.RemoveAttendanceDuplicates(mEventTable,mAttendTable,mCompareField: String);
var comparetable : TApolloData;
    deleteatt    : TApolloData;
    attendTable  : TApolloData;
    iPrimaryKey  : Integer;
    iPersid      : Integer;
    mDate        : String;
begin
  inherited;
  if not BooleanMessageDlg('Remove Duplicate PERSID/'+mEventTable+'ID Records in '+mAttendTable+'?') then exit;
  mDate := '01/01/1990';
  if not DateInputDlg('Date to Process','Date to Process From',mDate) then exit;

  attendTable := open_query('SELECT '+mEventTable+'id,persid, count(*)  FROM '+mAttendTable+' where  not (persid is null) GROUP BY  '+mEventTable+'id,persid  HAVING count(*) > 1   order by '+mEventTable+'id,persid desc');
  iPrimaryKey := -1;
  iPersid := -1;
  while not attendTable.eof do begin
    if (iPrimaryKey <> getfield(attendTable,mEventTable+'id').AsInteger) or (iPersid <> getfield(attendTable,'persid').AsInteger) then begin
      try
        comparetable := open_query('select '+mCompareField+' from '+mEventTable+' where '+mEventTable+'id='+inttostr(iPrimaryKey));
        iPrimaryKey := getfield(attendTable,mEventTable+'id').AsInteger;
        iPersid := getfield(attendTable,'persid').AsInteger;
        deleteatt := open_query('select '+mAttendTable+'.'+mAttendTable+'id'+' from '+mAttendTable +
          ' where '+mAttendTable+'.'+mEventTable+'id = '+tdbfield(AttendTable,mEventTable+'id')+' and '+mAttendTable+'.persid = '+tdbfield(attendTable,'persid'));
        if GetField(compareTable,mCompareField).AsDateTime >= StrToDate(mDate) then begin
          deleteatt.next;
          while not deleteatt.eof do begin
            RunSql('delete from '+mAttendTable+' where '+mAttendTable+'id = '+tdbfield(deleteatt,mAttendTable+'id'));
            deleteatt.next;
          end;
        end;

      finally
        deleteatt.free;
        comparetable.free;
      end;
    end;
    attendTable.next;
    application.processmessages;
  end;
  attendTable.free;
  showmessage('done');
end;

procedure TSQLSetForm.NFIRSButtonClick(Sender: TObject);
begin
  inherited;
  ExportData('NFIRS');
end;

procedure TSQLSetForm.HazMatButtonClick(Sender: TObject);
begin
  inherited;
  ExportData('HAZMAT');
end;

procedure TSQLSetForm.AddStatus(MessageVar: String);
begin
  ExportListBox.Items.Add(MessageVar);
  SendMessage(ExportListBox.Handle,WM_VSCROLL,SB_BOTTOM,0);
end;

procedure TSQLSetForm.ResetDispCallButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE DISPHIST');
    RunSQL('TRUNCATE TABLE DISPPRINT');
    RunSQL('TRUNCATE TABLE DISPCALL');
    RunSQL('TRUNCATE TABLE E911');
    ShowMessage('Finished');
  end else
    showmessage('Incorrect Password');
end;

procedure TSQLSetForm.RestoreRecordClick(Sender: TObject);
begin
  inherited;
  If VerifyPassword('FIXIT2008') then begin
    RestoreRecordForm := TRestoreRecordForm.Create(application);
    RestoreRecordForm.ShowModal;
    RestoreRecordForm.Free;
  end else
    showmessage('Incorrect Password');
end;

procedure TSQLSetForm.AlpineGlowButton1Click(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE NFIRSATT');
    RunSQL('TRUNCATE TABLE NFIRSAPPSTAT');
    RunSQL('TRUNCATE TABLE NFIRSAPP');
    RunSQL('TRUNCATE TABLE NFIRSAPPFOHIST');
    RunSQL('TRUNCATE TABLE NFIRSEQUIPMENTFAILURE');
    RunSQL('TRUNCATE TABLE NFIRSJUVENILE');
    RunSQL('TRUNCATE TABLE NFIRSFIR');
    RunSQL('TRUNCATE TABLE NFIRSSTR');
    RunSQL('TRUNCATE TABLE NFIRSOTH');
    RunSQL('TRUNCATE TABLE NFIRSCIVILIAN');
    RunSQL('TRUNCATE TABLE NFIRSFIRECASUALTY');
    RunSQL('TRUNCATE TABLE NFIRSHAZMAT');
    RunSQL('TRUNCATE TABLE NFIRSARSON');
    RunSQL('TRUNCATE TABLE NFIRSEMS');
    RunSQL('TRUNCATE TABLE NFIRSSPECIALSTUDY');
    RunSQL('TRUNCATE TABLE NFIRSWILDLAND');
    RunSQL('TRUNCATE TABLE NFIRSFDIDCOMP');
    RunSQL('TRUNCATE TABLE NFIRSADDENDUM');
    RunSQL('TRUNCATE TABLE NFIRSHAZMATCHEM');
    RunSQL('TRUNCATE TABLE NFIRSFDIDCOMP');
    RunSQL('TRUNCATE TABLE NFIRSEQUUSE');
    RunSQL('TRUNCATE TABLE NFIRSMAID');
    RunSQL('TRUNCATE TABLE NFIRSMAIN');
    ShowMessage('Finished');
  end else
    ShowMessage('Wrong Password');
end;

procedure TSQLSetForm.ReportWriteButtonClick(Sender: TObject);
begin
  inherited;
  ReportConversionHelpGuideReport := TReportConversionHelpGuideReport.Create(self);
  ReportConversionHelpGuideReport.QuickRep1.Preview;
  ReportConversionHelpGuideReport.Free;
end;

procedure TSQLSetForm.AlpineGlowButton3Click(Sender: TObject);
begin
  inherited;
  Open_Query('SEC',False,'SELECT SECID FROM SEC WHERE NOT (PROFILEID IS NULL) AND (PROFILEID<>SECID)');
  while not A('SEC').eof do begin
    RunSql('DELETE FROM SECFIELDSET WHERE SECID = '+pkValue(tdbfield('SEC','SECID')));
    RunSql('DELETE FROM SECREP WHERE SECID = '+pkValue(tdbfield('SEC','SECID')));

    A('SEC').Skip(1);
  end;
  CloseApollo('SEC');
  showmessage('done');
end;

procedure TSQLSetForm.DefragPartialButtonClick(Sender: TObject);
begin
  inherited;
  SQLDefragBrowse.Clear;
  SQLDefragBrowse.ClearColumns;
  SQLDefragBrowse.ColCount       := 0;
  SQLDefragBrowse.RowCount       := 0;
  SQLDefragBrowse.FixedRowAlways := true;
  SQLDefragBrowse.RowCount       := SQLDefragBrowse.FixedRows;

  SQLDefragBrowse.SetColumn('TABLENAME','Table Name',400);
  SQLDefragBrowse.SetColumn('STARTTIME','Start Time',110);
  SQLDefragBrowse.SetColumn('ENDTIME',  'End Time',  600);

  DefragPartial('DISPCALLTYPE');
  DefragPartial('NFIRSMAIN');
  DefragPartial('NFIRSATT');
  DefragPartial('NFIRSAPP');
  DefragPartial('NFIRSINV');
  DefragPartial('NI');
  DefragPartial('NIATT');
  DefragPartial('SCHDHIST');
  DefragPartial('PERS');
  DefragPartial('PERSACCHIST');
  DefragPartial('DISPCALL');
  DefragPartial('DISPHIST');
  DefragPartial('SECRECLOG');
  DefragPartial('PAGEQUEUE');
  DefragPartial('PAGEQUEUELIST');
  DefragPartial('SYSFIELD');
  DefragPartial('SYSVIEWFIELD');
  ShowMessage('Done');
end;

procedure TSQLSetForm.DefragNemsisButtonClick(Sender: TObject);
begin
  inherited;
  SQLDefragBrowse.Clear;
  SQLDefragBrowse.ClearColumns;
  SQLDefragBrowse.ColCount       := 0;
  SQLDefragBrowse.RowCount       := 0;
  SQLDefragBrowse.FixedRowAlways := true;
  SQLDefragBrowse.RowCount       := SQLDefragBrowse.FixedRows;

  SQLDefragBrowse.SetColumn('TABLENAME','Table Name',400);
  SQLDefragBrowse.SetColumn('STARTTIME','Start Time',110);
  SQLDefragBrowse.SetColumn('ENDTIME',  'End Time',  600);

  DefragPartial('NEM3COMPAINT');
  DefragPartial('NEM3CREW');
  DefragPartial('NEM3CREWSUB');
  DefragPartial('NEM3EXAM');
  DefragPartial('NEM3EXAMSUB');
  DefragPartial('NEM3PCR');
  DefragPartial('NEM3PCRSUB');
  DefragPartial('NEM3PROTOCOL');
  DefragPartial('NEM3STAT');
  DefragPartial('NEM3VITAL');
  DefragPartial('NEM3VITALSUB');
  DefragPartial('NEMSIS');
  ShowMessage('Done');

end;

procedure TSQLSetForm.DefragPartial(TableName : String);
begin
  SQLDefragBrowse.SetValue('TABLENAME',    'Defragging table name = ' + TableName + '. . . . . ');
  SQLDefragBrowse.SetValue('STARTTIME',    FormatDateTime('HH:NN:SS',Now));
  Application.ProcessMessages;
  RunSQL('ALTER INDEX ALL ON ' + TableName + ' REBUILD');
  SQLDefragBrowse.SetValue('ENDTIME',      FormatDateTime('HH:NN:SS',Now));
  Application.ProcessMessages;
end;

procedure TSQLSetForm.appendtologButtonClick(Sender: TObject);
var i       : Integer;
    j       : Integer;
    mString : String;
begin
  inherited;
  for i:=0 to DataBrowse.RowCount-1 do begin
    mString := '';
    for j:= 0 to DataBrowse.ColCount-1 do begin
      mString := mString + databrowse.cells[j,i];
      if j < DataBrowse.ColCount-1 then
        mString := mString + ',';
    end;
    AppendToLog(mString);
  end;
  showmessage('done');  
end;

procedure TSQLSetForm.DecryptButtonClick(Sender: TObject);
begin
  inherited;
  ResultEdit.Text := Decrypt(PasswordEdit.Text,32511);
end;

procedure TSQLSetForm.EncryptButtonClick(Sender: TObject);
begin
  inherited;
  ResultEdit.Text := Encrypt(PassWordEdit.Text,32511);
end;


procedure TSQLSetForm.PersTotalButtonClick(Sender: TObject);
Var PersTotal : Integer;
begin
  inherited;
  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN');

  Gauge.MaxValue := A('NFIRSMAIN').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('NFIRSMAIN').Eof do begin
    PersTotal      := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSATT WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    RunSQL('UPDATE NFIRSMAIN SET PERSTOTAL = ' + IntToStr(PersTotal) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
    A('NFIRSMAIN').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  Gauge.Visible  := false;
  ShowMessage('Done');
end;

procedure TSQLSetForm.PlayButtonClick(Sender: TObject);
begin
  inherited;
  PlayWaveFile(PlayFileField.Text);
end;

procedure TSQLSetForm.PortTestButtonClick(Sender: TObject);
begin
  inherited;
  ASCPortTestForm := TASCPortTestForm.Create(application);
  ASCPortTestForm.ShowModal;
  ASCPortTestForm.Free;
end;

procedure TSQLSetForm.PurgeForTransferClick(Sender: TObject);
var mEndDateTime    : TDateTime;
    mDateTime       : TDateTime;
    imagelist       : TApolloData;
    subtable        : TStringList;
    mPassword       : String;
    bTruncateImages : Boolean;
    bTruncateHazMat : Boolean;

  procedure RunSqlWithLogging(mSql: String);
  begin
    AddStatusListBox(UtilityBox,mSql,True);
    application.processmessages;
    if not RunSql(mSql) then
      AddStatusListBox(UtilityBox,'  -- Error running Sql!!!!',True);
    application.processmessages;
  end;

  procedure DeleteForOneDate(mTable,mField: String; mDate: TDateTime);
  var mWhere : String;
      i      : Integer;
  begin
    mWhere := ' WHERE '+mField+' < '+FormatDateTimeForSql(mDate,globalAdoConnection.TableType);
    for i := 0 to subtable.count-1 do begin
      RunSqlWithLogging('DELETE FROM '+subtable[i]+' where '+mTable+'id not in (select '+mTable+'id from '+mTable+' '+mWhere+')');
    end;
    RunSqlWithLogging('DELETE FROM '+mTable+mWhere);
  end;

  procedure DeleteDate(mTable,mField: String);
  var iYear      : Integer;
      iMonth     : Integer;
      mDateToUse : TDateTime;
      iStartYear : Integer;
      i          : Integer;
      sDateTime  : String;
  begin
    sDateTime := GetMinValue(mField,mTable);
    try
      iStartYear := iMax(1990,strtoint(GetYear(strtodatetime(sDateTime))));
    except
      iStartYear := 1990;
    end;

    for iYear := iStartYear to strtoint(GetYear(mDateTime))+1 do begin
      for iMonth := 1 to 12 do begin
        mDateToUse := strtodate(inttostr(iMonth)+'/01/'+inttostr(iYear));
        if mDateToUse >= mDateTime then
          mDateToUse := mDateTime;
        DeleteForOneDate(mTable,mField,mDateToUse);
      end;
    end;
    RunSqlWithLogging('delete from '+mTable+' where '+mField+' is null');
    for i := 0 to subtable.count-1 do
      RunSqlWithLogging('delete from '+subtable[i]+' where '+mtable+'id is null');

    subtable.clear;
  end;

  procedure DeleteGhost(mSubTable,mMainTable: String);
  begin
    RunSqlWithLogging('DELETE FROM '+mSubTable+' WHERE '+mMainTable+'id not in (select '+mMainTable+'id from '+mMainTable+')');
  end;
begin
  inherited;
  if not BooleanMessageDlg('Use this utility to empty irrelevant tables (e.g. SECRECAUDIT) and limit records for other date specific tables (NFIRSMAIN, NI).  Are you sure you want to continue?') then
    exit;
  mDateTime := strtodate('01/01/'+GetYear(Now));

  if not DateInputDlg('Start Date','Enter Start Date:',mDateTime) then exit;
  mEndDateTime := strtodate('12/31/'+GetYear(Now));
  if not DateInputDlg('End Date','Enter End Date:',mEndDateTime) then exit;

  mPassword := 'FOBCOFFEE';
  if not VerifyPassword('FOBCOFFEE') then begin
    showmessage('Wrong Password!');
    exit;
  end;
  GlobalQueryTimeOut := 400;
  subtable := TStringList.Create;
  bTruncateHazMat := BooleanMessageDlg('Would you like to truncate HazMat Tables?');
  bTruncateImages := BooleanMessageDlg('Would you like to truncate Image Tables?');
  appendtolog('Truncating records before '+formatdatetime('mm/dd/yyyy',mDateTime));

  RunSqlWithLogging('TRUNCATE TABLE DROPPEDDATABASE');
  RunSqlWithLogging('TRUNCATE TABLE SECRECAUD');
  RunSqlWithLogging('TRUNCATE TABLE SECLOG');
  RunSqlWithLogging('TRUNCATE TABLE MOBILEWEBACCESS');
  RunSqlWithLogging('TRUNCATE TABLE BACKUPHIST');
  RunSqlWithLogging('UPDATE COMPUTER SET LOGFILE=NULL');

  subtable.add('DISPHIST');
  DeleteDate('DISPCALL','DATETIMEDISP');

  subtable.add('NFIRSAPP');
  subtable.add('NFIRSATT');
  DeleteDate('NFIRSMAIN','DATETIMEALARM');

  subtable.add('EMSTREAT');
  subtable.add('EMSATT');
  subtable.add('EMSCODEHIST');    
  DeleteDate('EMS','DATETIMEALARM');
  DeleteDate('HYDINSPECT','DATETIMEINSPECT');
  DeleteDate('DL','DATETIMEENT');
  DeleteDate('WORKORD','REQDATE');

  subtable.add('NIATT');
  subtable.add('NIEV');  
  DeleteDate('NI','DATETIMESTART');

  DeleteDate('INVSERVHIST','DATEDONE');



  subtable.add('INSPTICK');
  DeleteDate('INSP','DATETIMESTART');
  DeleteGhost('VIO','INSP');

  RunSqlWithLogging('DELETE FROM INSP WHERE DATETIMESCHD >= '+formatdatetimeForSql(mEndDateTime));

  DeleteDate('SCHDHIST','DATETIMESTART');
  RunSqlWithLogging('DELETE FROM SCHDHIST WHERE DATETIMESTART >= '+formatdatetimeForSql(mEndDateTime));

  DeleteDate('HYDINSPECT','DATETIMEINSPECT');
  DeleteDate('DISPPRINT','DATETIMEENT');
  DeleteDate('PAGEQUEUE','DATETIMEENT');
  RunSqlWithLogging('DELETE FROM NFIRSMAIN WHERE NFIRSMAINID NOT IN (SELECT NFIRSMAINID FROM NFIRSMAIN)');

  subtable.add('nemsise04');
  subtable.add('NEMSISSUB');
  DeleteDate('NEMSIS','E05_04');


  if bTruncateHazMat then begin
    RunSqlWithLogging('TRUNCATE TABLE SYN');
    RunSqlWithLogging('TRUNCATE TABLE RIDSGNRLDSC');
    RunSqlWithLogging('TRUNCATE TABLE RIDSFEXPHAZ');
    RunSqlWithLogging('TRUNCATE TABLE RIDSPRTCLTH');
    RunSqlWithLogging('TRUNCATE TABLE RIDSPROPTY');
    RunSqlWithLogging('TRUNCATE TABLE RIDSHLTHHAZ');
    RunSqlWithLogging('TRUNCATE TABLE RIDSNONFRSP');
    RunSqlWithLogging('TRUNCATE TABLE RIDSFIRSTAID');
    RunSqlWithLogging('TRUNCATE TABLE RIDSFIREFGT');

  end;
  DeleteGhost('NFIRSAPPSTAT','NFIRSAPP');
  DeleteGhost('NIEVATT','NI');
  deleteghost('NEMSISE19','NEMSIS');
  deleteghost('NEMSISE14','NEMSIS');
  deleteghost('NEMSISE12_14','NEMSIS');    

  if bTruncateImages then begin
    imagelist := open_query('select * from VWSYSFIELD WHERE FIELDNAME = '+AddExpr('IMAGELISTID'));
    while not imagelist.eof do begin
      if uppercase(tdbfield(imagelist,'tablename'))<>'IMAGELIST' then
        RunSqlWithLogging('UPDATE '+tdbfield(imagelist,'tablename')+' set imagelistid = null');
      imagelist.next;
    end;
    imagelist.free;          
    RunSqlWithLogging('TRUNCATE TABLE PERSIMAGE');
    RunSqlWithLogging('TRUNCATE TABLE INSPIMAGE');
    RunSqlWithLogging('TRUNCATE TABLE PROPIMAGE');
    RunSqlWithLogging('TRUNCATE TABLE INVIMAGE');
    RunSqlWithLogging('TRUNCATE TABLE EMSIMAGE');
    RunSqlWithLogging('TRUNCATE TABLE NFIRSIMAGE');

    RunSqlWithLogging('DELETE FROM IMAGELIST');
  end;
  ShowMessage('Done');
end;

procedure TSQLSetForm.FixRolodexButtonClick(Sender: TObject);
begin
  inherited;
  If Not BooleanMessageDlg('Fix Rolodex Files') then
    exit;

  RunSQL('TRUNCATE TABLE ROLODEXSET');
  RunSQL('TRUNCATE TABLE ROLODEXTYPE');
  RunSQL('TRUNCATE TABLE ROLODEX');
  
  Open_Query('ROLODEXTYPE',true,'SELECT * FROM ROLODEXTYPE WHERE 1=2');
  Open_Query('RESOURCETYPE',false,'SELECT * FROM RESOURCETYPE');
  While Not A('RESOURCETYPE').Eof do begin
    GetTable('ROLODEXTYPE').Append;
    GetField('ROLODEXTYPE','CODE').AsString   := GetField('RESOURCETYPE','CODE').AsString;
    GetField('ROLODEXTYPE','DESCR').AsString  := GetField('RESOURCETYPE','DESCR').AsString;
    GetTable('ROLODEXTYPE').Post;
    A('RESOURCETYPE').Skip(1);
  end;
  CloseApollo('ROLODEXTYPE');
  CloseApollo('RESOURCETYPE');

  Open_Query('ROLODEXSET',true,'SELECT * FROM ROLODEXSET WHERE 1=2');
  Open_Query('RESOURCESET',false,'SELECT * FROM RESOURCESET');
  While Not A('RESOURCESET').Eof do begin
    GetTable('ROLODEXSET').Append;
    GetField('ROLODEXSET','FDID').AsString              := GetField('RESOURCESET','FDID').AsString;
    GetField('ROLODEXSET','PERSROLODEXTYPEID').AsString := GetField('RESOURCESET','PERSRESOURCETYPEID').AsString;
    GetField('ROLODEXSET','PHONEPICTURE').AsString      := GetField('RESOURCESET','PHONEPICTURE').AsString;
    GetTable('ROLODEXSET').Post;
    A('RESOURCESET').Skip(1);
  end;
  CloseApollo('ROLODEXSET');
  CloseApollo('RESOURCESET');

  Open_Query('ROLODEX',true,'SELECT * FROM ROLODEX WHERE 1=2');
  Open_Query('RESOURCE',false,'SELECT * FROM RESOURCE');
  While Not A('RESOURCE').Eof do begin
    GetTable('ROLODEX').Append;
    GetTable('ROLODEX').Append;
    GetField('ROLODEX','ADDRESS').AsString       := GetField('RESOURCE','ADDRESS').AsString;
    GetField('ROLODEX','CITY').AsString          := GetField('RESOURCE','CITY').AsString;
    GetField('ROLODEX','COMPANY').AsString       := GetField('RESOURCE','COMPANY').AsString;
    GetField('ROLODEX','EXT1').AsString          := GetField('RESOURCE','EXT1').AsString;
    GetField('ROLODEX','EXT2').AsString          := GetField('RESOURCE','EXT2').AsString;
    GetField('ROLODEX','EXT3').AsString          := GetField('RESOURCE','EXT3').AsString;
    GetField('ROLODEX','EXT4').AsString          := GetField('RESOURCE','EXT4').AsString;
    GetField('ROLODEX','EXT5').AsString          := GetField('RESOURCE','EXT5').AsString;
    GetField('ROLODEX','NAME').AsString          := GetField('RESOURCE','NAME').AsString;
    GetField('ROLODEX','NARR').AsString          := GetField('RESOURCE','NARR').AsString;
    GetField('ROLODEX','PERSID').AsString        := GetField('RESOURCE','PERSID').AsString;
    GetField('ROLODEX','PHONE1').AsString        := GetField('RESOURCE','PHONE1').AsString;
    GetField('ROLODEX','PHONE2').AsString        := GetField('RESOURCE','PHONE2').AsString;
    GetField('ROLODEX','PHONE3').AsString        := GetField('RESOURCE','PHONE3').AsString;
    GetField('ROLODEX','PHONE4').AsString        := GetField('RESOURCE','PHONE4').AsString;
    GetField('ROLODEX','PHONE5').AsString        := GetField('RESOURCE','PHONE5').AsString;
    GetField('ROLODEX','ROLODEXTYPEID').AsString := GetField('RESOURCE','RESOURCETYPEID').AsString;
    GetField('ROLODEX','STATE').AsString         := GetField('RESOURCE','STATE').AsString;
    GetField('ROLODEX','UL1').AsString           := GetField('RESOURCE','UL1').AsString;
    GetField('ROLODEX','UL2').AsString           := GetField('RESOURCE','UL2').AsString;
    GetField('ROLODEX','UL3').AsString           := GetField('RESOURCE','UL3').AsString;
    GetField('ROLODEX','UL4').AsString           := GetField('RESOURCE','UL4').AsString;
    GetField('ROLODEX','UL5').AsString           := GetField('RESOURCE','UL5').AsString;
    GetField('ROLODEX','ZIP').AsString           := GetField('RESOURCE','ZIP').AsString;
    GetTable('ROLODEX').Post;
    A('RESOURCE').Skip(1);
  end;
  CloseApollo('ROLODEX');
  CloseApollo('RESOURCE');

  ShowMessage('Done');
end;

procedure TSQLSetForm.UserManTabShow(Sender: TObject);
Var UserManDatabase : TAlpineAdoConnection;
    ErrorString     : String;
    Number          : Integer;
begin
  inherited;
  UserManDatabase := TAlpineAdoConnection.Create(self,'REDNMX.COM' + ':' + 'ALPINEWEB','ALPINE','Alp1n3SQL@22!',MySqlTableType);
  UserManDatabase.Connect(ErrorString);

  Open_Query(UserManDatabase,'USERMAN',false,'SELECT * FROM userman WHERE type = ' + AddExpr('NMX') + ' ORDER BY FILENAME');

  UserManBrowse.Clear;
  UserManBrowse.ClearColumns;
  UserManBrowse.ColCount       := 0;
  UserManBrowse.RowCount       := 0;
  UserManBrowse.FixedRowAlways := true;
  UserManBrowse.RowCount       := UserManBrowse.FixedRows;
  Number                       := 1;

  UserManBrowse.SetColumn('PK',       'PK',         001);
  UserManBrowse.SetColumn('NUMBER',   '#',          040);
  UserManBrowse.SetColumn('FILENAME', 'File Name',  120);
  UserManBrowse.SetColumn('DESCR',    'Description',200);
  UserManBrowse.SetColumn('MODULE',   'Module',     065);
  UserManBrowse.SetColumn('EDITDATE', 'Edit Date',  080);
  UserManBrowse.SetColumn('NARR',     'Comments',   400);

  while not A('USERMAN').Eof do begin
    UserManBrowse.SetValue('PK',      GetField('USERMAN','PK' ).AsString);
    UserManBrowse.SetValue('NUMBER',  IntToStr(Number));
    UserManBrowse.SetValue('FILENAME',GetField('USERMAN','FILENAME' ).AsString);
    UserManBrowse.SetValue('DESCR',   GetField('USERMAN','DESCR' ).AsString);
    UserManBrowse.SetValue('MODULE',  GetField('USERMAN','MODULE' ).AsString);
    UserManBrowse.SetValue('EDITDATE',GetField('USERMAN','EDITDATE' ).AsString);
    UserManBrowse.SetValue('NARR',    GetField('USERMAN','NARR' ).AsString);
    A('USERMAN').Skip(1);
    Number := Number + 1;
  end;
  CloseApollo('USERMAN');
  UserManBrowse.FixedCols      := 0;

  UserManDatabase.Free;
end;

procedure TSQLSetForm.WaveButtonClick(Sender: TObject);
var openWavDialog: TOpenDialog;
begin
  If not BooleanMessageDlg('Use this utility to confirm if a WAV file plays within the RedNMX framework.  You will be prompted to open a WAV file.  Once selected RedNMX will attempt to play the WAV file.  Proceed?') then
    exit;
  openWavDialog            := TOpenDialog.Create(self);
  OpenWavDialog.DefaultExt := 'wav';
  OpenWavDialog.Filter     := 'WAV files (*.wav)|*.WAV';

  If OpenWavDialog.execute then
    PlayWaveFile(OpenWavDialog.FileName);
  OpenWavDialog.Free;
end;

procedure TSQLSetForm.WikiFMButtonClick(Sender: TObject);
Var WebAddress : String;
begin
  WebAddress := 'http://rednmx.wikidot.com/mysqlmultisteperror';
  ShellExecute(Handle, 'open', pchar(WebAddress), nil, nil, SW_SHOW);
end;

procedure TSQLSetForm.WikiHelpButtonClick(Sender: TObject);
begin
  inherited;
  ShellExecute(Handle, 'open', pchar('http://rednmx.wikidot.com/azure-db-indexes-slow-queries'), nil, nil, SW_HIDE);
end;

procedure TSQLSetForm.UserManBrowseDblClick(Sender: TObject);
begin
  inherited;
  UserManEditform := TUserManEditform.Create(application);
  UserManEditform.ShowModal;
  UserManEditform.Free;
end;

procedure TSQLSetForm.EMSButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE EMSTREATCHECKHIST');
    RunSQL('TRUNCATE TABLE EMSPEHISTITEMS');
    RunSQL('TRUNCATE TABLE EMSCODEHIST');
    RunSQL('TRUNCATE TABLE EMSIMAGE');
    RunSQL('TRUNCATE TABLE EMSTREAT');
    RunSQL('TRUNCATE TABLE EMSSTAT');
    RunSQL('TRUNCATE TABLE EMSATT');
    RunSQL('TRUNCATE TABLE EMS');
    ShowMessage('Finished');
  end else
    ShowMessage('Incorrect Password');
end;

procedure TSQLSetForm.EVLengthButtonClick(Sender: TObject);
Var EvLength : Real;
    DateCond : String;
    SQLVar   : String;
begin
  inherited;
  If BooleanMessageDlg('Update incident length based on time of alarm and time in, ' + #10#13 +
                       'and also update incident attendance length with the incident length?') then begin
    DateCond := BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',GUInitialDateField.Value,GUFinalDateField.Value);
    If DateCond = '' then
      SQLVar := 'SELECT EVLENGTH, DATETIMEALARM, DATETIMEIN, NFIRSMAINID FROM NFIRSMAIN'
    else
      SQLVar := 'SELECT EVLENGTH, DATETIMEALARM, DATETIMEIN, NFIRSMAINID FROM NFIRSMAIN WHERE ' + DateCond;
    Open_Query('NFIRSMAIN',false,SQLVar);
    Gauge.MaxValue := A('NFIRSMAIN').RecCount;
    Gauge.Visible  := true;
    Gauge.Progress := 0;

    While Not A('NFIRSMAIN').Eof do begin
      If GetField('NFIRSMAIN','EVLENGTH').AsFloat = 0 then begin
        If (GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime > 0) and (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime > 0) then
          EvLength := (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime - GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime)*24
        else
          EvLength := 0;
        RunSQL('UPDATE NFIRSMAIN SET EVLENGTH = ' + FormatFloat('##,##0.00',EvLength) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      end;
      A('NFIRSMAIN').Skip(1);
      Gauge.Progress := Gauge.Progress + 1;
      Application.processmessages;

    end;
    CloseApollo('NFIRSMAIN');
    Gauge.Visible  := false;
    ShowMessage('Done');
  end;
end;

procedure TSQLSetForm.QRPtoPDFButtonClick(Sender: TObject);
var mReport       : TQuickrep;
    aExportFilter : TQRExportFilter;
    FQRPrinter    : TQRPrinter;
    ExportFile    : String;
begin
  inherited;
//mReport := TQuickRep.Create(self);
  PDFReport.Prepare;
  PDFReport.QRPrinter.Load('P:\TEMP\TEST.QRP');

  ExportFile := 'P:\TEMP\TEST.PDF';
//AExportFilter := TQRPDFDocumentFilter.Create(ExportFile);
//PDFReport.ExportToFilter(AExportFilter);

  ExportReportToPDF(PDFReport,ExportFile,True);

//AExportFilter.free;
//mReport.free;

  //FQRPrinter := TQRPrinter.Create(self);
  //FQRPrinter.Load(ExtractFileDir(ParamStr(0)) + '\test.QRP');
  //AExportFilter := TQRPDFDocumentFilter.Create(ExtractFileDir(ParamStr(0)) + '\report.pdf');
  //FQRPrinter.ExportToFilter(AExportFilter);
  //AExportFilter.free;
  //FQRPrinter.free;
end;

procedure TSQLSetForm.QuerySpacUsedClick(Sender: TObject);
var i           : Integer;
    mTotalData  : Real;
    mTotalIndex : Real;
    c           : TListColumn;
  procedure AddToTotal(var mTotal: Real; mValueToAdd: String);
  var mValue: Real;
  begin
    mValue := StrToFloat(substr(mValueToAdd,1,Pos(' ',mValueToAdd)-1));
    if pos('KB',mValueToAdd)>0 then
      mTotal:=mTotal+mValue/1000
    else if pos('MB',mValueToAdd)>0 then
      mTotal:=mTotal+mValue
    else if pos('GB',mValueToAdd)>0 then
      mTotal:=mTotal+mValue*1000
    else
      ShowMessage('UnReconciled Unit of Diskspace: '+mValuetoAdd);
  end;
begin
  Open_Query('TBLS',False,'SELECT TABLE_NAME TABLENAME FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = ' + AddExpr('BASE TABLE') + ' AND OBJECTPROPERTY(OBJECT_ID(TABLE_NAME), ' + AddExpr('IsMSShipped')+')=0');

  Gauge.MaxValue := A('TBLS').QueryRecCount;
  Open_Query('SPUSED',False,'EXEC SP_SPACEUSED PERS');

  ResetDataBrowse;

  mTotalData  := 0;
  mTotalIndex := 0;
  i           := 0;
  while not A('TBLS').eof do begin
    i              := i + 1;
    Gauge.Progress := i;
    try begin
      A('SPUSED').UpdateSql('EXEC SP_SPACEUSED '+GetField('TBLS','TABLENAME').AsString);
      AddToTotal(mtotalData,tdbField('SPUSED','DATA'));
      AddToTotal(mtotalIndex,tdbField('SPUSED','INDEX_SIZE'));
      If Not (tdbfield('TBLS','TABLENAME') = '') then begin
        DataBrowse.SetValue('TABLENAME',GetField('TBLS','TABLENAME').AsString);
        DataBrowse.SetValue('DATASIZE',tdbField('SPUSED','DATA'));
        DataBrowse.SetValue('INDEXSIZE',tdbField('SPUSED','INDEX_SIZE'));
        DataBrowse.SetValue('NUMROWS',tdbField('SPUSED','ROWS'));
      end;
    end
    except
      on E: Exception do begin
        ShowMessage( E.Message );
      end;
    end;

    A('TBLS').Skip(1);
    Application.ProcessMessages;
  end;
  DataBrowse.SetValue('TABLENAME','ZZTOTAL');
  DataBrowse.SetValue('DATASIZE',FormatFloat('###,###,###.0',mtotalData)+' MB');
  DataBrowse.SetValue('INDEXSIZE',FormatFloat('###,###,###.0',mTotalIndex)+ ' MB'+ ' ('+FormatFloat('###,###,###.0',mTotalIndex+mTotalData)+')');
  Closeapollo('TBLS');
  Closeapollo('SPUSED');
  AppendToLogButton.Enabled := True;
end;

procedure TSQLSetForm.ResetDataBrowse;
begin
  DataBrowse.Clear;
  DataBrowse.ClearColumns;
  DataBrowse.ColCount       := 0;
  DataBrowse.RowCount       := 0;
  DataBrowse.FixedRowAlways := true;
  DataBrowse.RowCount       := DataBrowse.FixedRows;

  DataBrowse.SetColumn('TABLENAME', 'Table Name',   153);
  DataBrowse.SetColumn('DATASIZE',  'Data - Size',  150);
  DataBrowse.SetColumn('INDEXSIZE', 'Index - Size', 150);
  DataBrowse.SetColumn('NUMROWS',   '# Rows',       150,'','N');
  DataBrowse.SetColumn('SPACE',     '',             850);
end;

procedure TSQLSetForm.DateTimeInButtonClick(Sender: TObject);
Var EOACodeID : String;
begin
  inherited;
  Exit;
  EOACodeID := SqlLookUp(FireID,'FDID','DISPSET','EOACODEID');
  Open_Query('NFIRSMAIN',false,'SELECT INCNUM, DATETIMEARR, DATETIMEIN, NFIRSMAINID, DISPCALLID FROM NFIRSMAIN WHERE DISPCALLID > 0 AND DATETIMEIN > 0 AND DATETIMEIN < DATETIMEARR');
  Open_Query('DISPHIST',false,'SELECT DATETIMESTAT FROM DISPHIST WHERE 1=2');

  While Not A('NFIRSMAIN').Eof do begin
    A('DISPHIST').UpdateSQL('SELECT DATETIMESTAT FROM DISPHIST WHERE DISPCALLID = ' + GetField('NFIRSMAIN','DISPCALLID').AsString + ' AND DISPSTATCODEID = ' + EoaCodeID);
    If A('DISPHIST').RecordsExist then
      RunSQL('UPDATE NFIRSMAIN SET DATETIMEIN = ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',GetField('DISPHIST','DATETIMESTAT').AsDateTime)) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    A('NFIRSMAIN').Skip(1);
  end;

  CloseApollo('DISPHIST');
  CloseApollo('NFIRSMAIN');
end;

procedure TSQLSetForm.DbaseButtonClick(Sender: TObject);
begin
  inherited;
  dBaseEditForm := TdBaseEditForm.Create(application,'');
  dBaseEditForm.ShowModal;
  dBaseEditForm.Free;
end;

procedure TSQLSetForm.DecimalToMinButtonClick(Sender: TObject);
begin
  inherited;
  NewCoordinate.Text := FloatToStr(DecimaltoMinutes(AnyStrToFloat(Coordinate.Text)));
end;

procedure TSQLSetForm.DecimalToMinuteButtonClick(Sender: TObject);
begin
  inherited;
  NewCoordinate.Text := FloatToStr(DecimaltoMinutes(AnyStrToFloat(Coordinate.Text)));
end;

procedure TSQLSetForm.ExportEMSTablesClick(Sender: TObject);
begin
  inherited;
  ExportData('EMSCODES');
end;

procedure TSQLSetForm.ExportProQAClick(Sender: TObject);
begin
  inherited;
  ExportData('PROQA');
end;

procedure TSQLSetForm.CopyTableClick(Sender: TObject);
begin
  inherited;
  ConvertTableForm := TConvertTableForm.Create(self);
  ConvertTableForm.ShowModal;
  ConvertTableForm.Free;
end;

procedure TSQLSetForm.ScanButtonClick(Sender: TObject);
begin
  inherited;
  ScanImageForm := TScanImageForm.Create(Self);
  ScanImageForm.ShowModal;
  ScanImageForm.Free;
end;

procedure TSQLSetForm.SchdButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE SCHDHIST');
    ShowMessage('Finished');
  end else
    ShowMessage('Wrong Password');
end;

procedure TSQLSetForm.SQLDefragButtonClick(Sender: TObject);
begin
  inherited;
  if GlobalAdoConnection.TableType = MSSqlTableType then begin

    Open_Query('SQL',false,'SELECT S.name SQLSCHEMA, T.name as TABLENAME, I.name as TABLEINDEX, DDIPS.avg_fragmentation_in_percent DEFRAGPERCENT, DDIPS.page_count PAGECOUNT '  +
                         'FROM sys.dm_db_index_physical_stats (DB_ID(), NULL, NULL, NULL, NULL) AS DDIPS ' +
                         'INNER JOIN sys.tables T on T.object_id = DDIPS.object_id ' +
                         'INNER JOIN sys.schemas S on T.schema_id = S.schema_id ' +
                         'INNER JOIN sys.indexes I ON I.object_id = DDIPS.object_id ' +
                         'AND DDIPS.index_id = I.index_id ' +
                         'WHERE DDIPS.database_id = DB_ID() ' +
                         'and I.name is not null ' +
                         'AND DDIPS.avg_fragmentation_in_percent > 0 ' +
                         'ORDER BY DDIPS.avg_fragmentation_in_percent desc');

    ResetSQLDefragBrowse;

    while not A('SQL').eof do begin
      SQLDefragBrowse.SetValue('SQLSCHEMA',    tdbfield('SQL','SQLSCHEMA'));
      SQLDefragBrowse.SetValue('TABLENAME',    tdbfield('SQL','TABLENAME'));
      SQLDefragBrowse.SetValue('TABLEINDEX',   tdbfield('SQL','TABLEINDEX'));
      SQLDefragBrowse.SetValue('DEFRAGPERCENT',FormatFloat('##0.000',GetField('SQL','DEFRAGPERCENT').AsFloat));
      SQLDefragBrowse.SetValue('PAGECOUNT',    FormatFloat('##0',GetField('SQL','PAGECOUNT').AsFloat));
      A('SQL').Skip(1);
      Application.ProcessMessages;
    end;
    CloseApollo('SQL');
  end else begin
    showmessage('You must be using SQL Server for this utility to function');
  end;
end;

procedure TSQLSetForm.SQLDefragTabShow(Sender: TObject);
begin
  inherited;
  ResetSQLDefragBrowse;
end;

procedure TSQLSetForm.ResetSQLDefragBrowse;
begin
  SQLDefragBrowse.Clear;
  SQLDefragBrowse.ClearColumns;
  SQLDefragBrowse.ColCount       := 0;
  SQLDefragBrowse.RowCount       := 0;
  SQLDefragBrowse.FixedRowAlways := true;
  SQLDefragBrowse.RowCount       := SQLDefragBrowse.FixedRows;

  SQLDefragBrowse.SetColumn('SQLSCHEMA',    'Schema',    150);
  SQLDefragBrowse.SetColumn('TABLENAME',    'Table Name',200);
  SQLDefragBrowse.SetColumn('TABLEINDEX',   'Index',     200);
  SQLDefragBrowse.SetColumn('DEFRAGPERCENT','Percent',   100);
  SQLDefragBrowse.SetColumn('PAGECOUNT',    'Page Count',850);
end;


procedure TSQLSetForm.SQLServerShow(Sender: TObject);
begin
  inherited;
  ResetDataBrowse;
end;

procedure TSQLSetForm.StrNumButtonClick(Sender: TObject);
Var StrNum : String;
begin
  inherited;
  Open_Query('NFIRSMAIN',false,'SELECT STRNUM, NFIRSMAINID FROM NFIRSMAIN');

  Gauge.MaxValue := A('NFIRSMAIN').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('NFIRSMAIN').Eof do begin
    StrNum := alltrim(tdbfield('NFIRSMAIN','STRNUM'));
    RunSQL('UPDATE NFIRSMAIN SET STRNUM = ' + AddExpr(StrNum) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
    A('NFIRSMAIN').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  Gauge.Visible  := false;
  ShowMessage('Done');
end;

procedure TSQLSetForm.AdobeButtonClick(Sender: TObject);
begin
  inherited;
  PDFCombineForm := TPDFCombineForm.Create(application);
  PDFCombineForm.ShowModal;
  PDFCombineForm.Free;
end;

procedure TSQLSetForm.AllClick(Sender: TObject);
begin
  inherited;
  ExportData('ALL');
end;

procedure TSQLSetForm.NIButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE NIEVATT');
    RunSQL('TRUNCATE TABLE NIEV');
    RunSQL('TRUNCATE TABLE NIATT');
    RunSQL('TRUNCATE TABLE NIAPP');
    RunSQL('TRUNCATE TABLE NIFDIDCOMP');
    RunSQL('TRUNCATE TABLE NIPERSINV');
    RunSQL('TRUNCATE TABLE NI');
    ShowMessage('Finished');
  end else
    ShowMessage('Wrong Password');
end;

procedure TSQLSetForm.NILosapCATIDButtonClick(Sender: TObject);
begin
  inherited;
  If booleanmessageDlg('Update NILOSAPCATID from NISTYPE?') then begin
    Open_Query('NI',true,'SELECT NIID, NISTYPEID, NIPTYPEID, DATETIMESTART, NILOSAPCATID FROM NI WHERE ' + BuildSQLAlpineDate('NI.DATETIMESTART',GUInitialDateField.Value,GUFinalDateField.Value));
    Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE ORDER BY NISTYPEID');

    Gauge.MaxValue := A('NI').RecCount;
    Gauge.Visible  := true;
    Gauge.Progress := 0;

    While Not A('NI').eof do begin
      If (GetField('NI','NILOSAPCATID').AsString = '') and A('NISTYPE').ExactQueryLocate('NISTYPEID',GetField('NI','NISTYPEID').AsString) then begin
        A('NI').Edit;
        Getfield('NI','NILOSAPCATID').AsString := Getfield('NISTYPE','NILOSAPCATID').AsString;
        A('NI').Post;
      end;
      A('NI').Skip(1);
      Gauge.Progress := Gauge.Progress + 1;
      Application.processmessages;
    end;

    CloseApollo('NI');
    CloseApollo('NISTYPE');
  end;  
end;

procedure TSQLSetForm.NITrainCATButtonClick(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  Open_Query('NI',false,'SELECT DATETIMESTART, DATETIMEEND, NIID, NITRAINCAT1ID FROM NI WHERE ' + BuildSQLAlpineDate('NI.DATETIMESTART',GUInitialDateField.Value,GUFinalDateField.Value));
  Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIATT',false,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');

  Gauge.MaxValue := A('NI').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('NI').eof do begin
    If GetField('NI','NITRAINCAT1ID').AsInteger > 0 then begin
      A('NIEV').UpDateSQL('SELECT * FROM NIEV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND NITRAINCAT1ID = ' + GetField('NI','NITRAINCAT1ID').AsString);
      If Not A('NIEV').RecordsExist then begin
        A('NIEV').Append;
        GetField('NIEV','NIID').AsString            := GetField('NI','NIID').AsString;
        GetField('NIEV','NITRAINCAT1ID').AsString   := GetField('NI','NITRAINCAT1ID').AsString;
        GetField('NIEV','DATETIMESTART').AsDateTime := GetField('NI','DATETIMESTART').AsDateTime;
        GetField('NIEV','DATETIMEEND').AsDateTime   := GetField('NI','DATETIMEEND').AsDateTime;
        If (GetField('NIEV','DATETIMESTART').AsDateTime > 0) and (GetField('NIEV','DATETIMEEND').AsDateTime > 0) then
          GetField('NIEV','EVLENGTH').AsFloat := 24 * (GetField('NIEV','DATETIMEEND').AsDateTime - GetField('NIEV','DATETIMESTART').AsDateTime);
        A('NIEV').Post;
      end;

      A('NIATT').UpdateSQL('SELECT PERSID FROM NIATT WHERE NIID = ' + pkvalue(GetField('NI','NIID').AsString));
      While Not A('NIATT').Eof do begin
        SQLVar := 'SELECT * FROM NIEVATT WHERE NIID = ' + pkValue(GetField('NI','NIID').AsString) + ' AND NIEVID = ' + pkValue(GetField('NIEV','NIEVID').AsString) + ' AND PERSID = ' + pkValue(GetField('NIATT','PERSID').AsString);
        A('NIEVATT').UpdateSQL(SQLVar);
        If Not A('NIEVATT').RecordsExist then begin
          GetTable('NIEVATT').Append;
          GetField('NIEVATT','NIID').AsInteger   := GetField('NI','NIID').AsInteger;
          GetField('NIEVATT','NIEVID').AsInteger := GetField('NIEV','NIEVID').AsInteger;
          GetField('NIEVATT','PERSID').AsInteger := GetField('NIATT','PERSID').AsInteger;
          GetTable('NIEVATT').Post;
        end;
        A('NIATT').Skip(1);
      end;
    end;
    A('NI').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
  end;
  CloseApollo('NI');
  CloseApollo('NIEV');
  CloseApollo('NIATT');
  CloseApollo('NIEVATT');
end;

procedure TSQLSetForm.ChangeFDIDSetButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  If booleanmessageDlg('Change from FDID=' + FdidOldField.Text + ' to FDID=' + FdidNewField.Text + ' in all of the setup tables?') then begin
    PassWord := 'SKIVT';
    If GetPassword1(Password) then begin
      UpdateRedNMXFdid('APPSET');
      UpdateRedNMXFdid('ARSONSET');
      UpdateRedNMXFdid('ASCSET');
      UpdateRedNMXFdid('COMPLAINTSET');
      UpdateRedNMXFdid('BULLETIN');
      UpdateRedNMXFdid('DISPCALLTAKESET');
      UpdateRedNMXFdid('DISPSET');
      UpdateRedNMXFdid('DISPSCREEN');
      UpdateRedNMXFdid('DLSETUP');
      UpdateRedNMXFdid('EMSSET');
      UpdateRedNMXFdid('FINGERSET');
      UpdateRedNMXFdid('FUNDSET');
      UpdateRedNMXFdid('GISSET');
      UpdateRedNMXFdid('HANDSET');
      UpdateRedNMXFdid('HOSESET');
      UpdateRedNMXFdid('HYDSET');
      UpdateRedNMXFdid('IMAGESET');
      UpdateRedNMXFdid('INSPSET');
      UpdateRedNMXFdid('LOSAPSET');
      UpdateRedNMXFdid('MCISET');
      UpdateRedNMXFdid('MOBSET');
      UpdateRedNMXFdid('NEM3SET');
      UpdateRedNMXFdid('NEMSISSET');
      UpdateRedNMXFdid('NFIRSSET');
      UpdateRedNMXFdid('PAGESET');
      UpdateRedNMXFdid('PERMITSET');
      UpdateRedNMXFdid('SCHDSET');
      UpdateRedNMXFdid('SECSET');
      UpdateRedNMXFdid('SYSSET');
      UpdateRedNMXFdid('WORKORDSET');
      UpdateRedNMXFdid('VOTESET');
      UpdateRedNMXFdid('E911SET');
      UpdateRedNMXFdid('INVSET');
      UpdateRedNMXFdid('PERSSET');
      UpdateRedNMXFdid('PICTSET');
      UpdateRedNMXFdid('PROPSET');
      UpdateRedNMXFdid('QUEUESET');
      UpdateRedNMXFdid('ROLODEXSET');
      UpdateRedNMXFdid('SCBASET');
      UpdateRedNMXFdid('SYSMODULESET');
      
      ShowMessage('Done');
    end;
  end;
end;

procedure TSQLSetForm.ChangeFdidHistoryButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  If booleanmessageDlg('Change from FDID=' + FdidOldField.Text + ' to FDID=' + FdidNewField.Text + ' in all of the history and usage tables?') then begin
    PassWord := 'SKIVT';
    If GetPassword1(Password) then begin

      UpdateRedNMXFdid('BULLETINNARR');
      UpdateRedNMXFdid('COMPUTER');
      UpdateRedNMXFdid('DISPAPP');
      UpdateRedNMXFdid('DISPBOX');
      UpdateRedNMXFdid('DISPCALL');
      UpdateRedNMXFdid('DISPCALLTYPE');
      UpdateRedNMXFdid('DISPLOC');
      UpdateRedNMXFdid('DISPRESPONSE');
      UpdateRedNMXFdid('DISPSTAT');
      UpdateRedNMXFdid('E911');
      UpdateRedNMXFdid('EMS');
      UpdateRedNMXFdid('EMSATTTASK');
      UpdateRedNMXFdid('EMSFD');
      UpdateRedNMXFdid('FDID');
      UpdateRedNMXFdid('FDIDCOMP');
      UpdateRedNMXFdid('FDIDOWNER');
      UpdateRedNMXFdid('HYD');
      UpdateRedNMXFdid('INSP');
      UpdateRedNMXFdid('INV');
      UpdateRedNMXFdid('INVLOC');
      UpdateRedNMXFdid('INVSERVTYPE');
      UpdateRedNMXFdid('LOCATION');
      UpdateRedNMXFdid('MOBAGENCYTOSHOW');
      UpdateRedNMXFdid('N5DISTRICT');
      UpdateRedNMXFdid('NEM3PCR');
      UpdateRedNMXFdid('NEMSIS');
      UpdateRedNMXFdid('NFIRSADDENDUM');
      UpdateRedNMXFdid('NFIRSARSON');
      UpdateRedNMXFdid('NFIRSATTACTLIST');
      UpdateRedNMXFdid('NFIRSATTTASK');
      UpdateRedNMXFdid('NFIRSCIVILIAN');
      UpdateRedNMXFdid('NFIRSFIR');
      UpdateRedNMXFdid('NFIRSJUVENILE');
      UpdateRedNMXFdid('NFIRSMAID');
      UpdateRedNMXFdid('NFIRSMAIN');
      UpdateRedNMXFdid('NFIRSSSSETUP');
      UpdateRedNMXFdid('NFIRSSTR');
      UpdateRedNMXFdid('NI');
      UpdateRedNMXFdid('NIAGENCY');
      UpdateRedNMXFdid('NIAPPTASK');
      UpdateRedNMXFdid('NIATT');
      UpdateRedNMXFdid('NIFIELD');
      UpdateRedNMXFdid('NILOSAPCAT');
      UpdateRedNMXFdid('NIPERSINVTYPE');
      UpdateRedNMXFdid('NIPTYPE');
      UpdateRedNMXFdid('NISTYPE');
      UpdateRedNMXFdid('NITRAINCAT1');
      UpdateRedNMXFdid('NITRAINCAT2');
      UpdateRedNMXFdid('NITRAINCAT3');
      UpdateRedNMXFdid('NITRAINCATREQ');
      UpdateRedNMXFdid('NITRAINCATTYPE');
      UpdateRedNMXFdid('NIUSER1');
      UpdateRedNMXFdid('NIUSER2');
      UpdateRedNMXFdid('NIUSER3');
      UpdateRedNMXFdid('NIUSER4');
      UpdateRedNMXFdid('NIUSER5');
      UpdateRedNMXFdid('NIUSER6');
      UpdateRedNMXFdid('NYSTHRUWAY');
      UpdateRedNMXFdid('PAGEDISP');
      UpdateRedNMXFdid('PAGEGROUP');
      UpdateRedNMXFdid('PAGELINK');
      UpdateRedNMXFdid('PAGELIST');
      UpdateRedNMXFdid('PAGESTAT');
      UpdateRedNMXFdid('PERS');
      UpdateRedNMXFdid('PERSBENTYPE');
      UpdateRedNMXFdid('PERSCOMMHIST');
      UpdateRedNMXFdid('PERSCOMMPOS');
      UpdateRedNMXFdid('PERSCOMMTYPE');
      UpdateRedNMXFdid('PERSCONTTYPE');
      UpdateRedNMXFdid('PERSFDID');
      UpdateRedNMXFdid('PERSMARITAL');
      UpdateRedNMXFdid('PERSMED');
      UpdateRedNMXFdid('PERSPAYSCALE');
      UpdateRedNMXFdid('PERSPHONETYPE');
      UpdateRedNMXFdid('PERSRANK');
      UpdateRedNMXFdid('PERSRANKHIST');
      UpdateRedNMXFdid('PERSRELIGION');
      UpdateRedNMXFdid('PERSSCHDROLE');
      UpdateRedNMXFdid('PERSSTAT');
      UpdateRedNMXFdid('PERSTEAMTYPE');
      UpdateRedNMXFdid('PERSTYPE');
      UpdateRedNMXFdid('PROP');
      UpdateRedNMXFdid('PROPSUBTYPE');
      UpdateRedNMXFdid('PROPTYPE');
      UpdateRedNMXFdid('RD_PRIORITY');
      UpdateRedNMXFdid('RD_STATUS');
      UpdateRedNMXFdid('RD_TYPE');
      UpdateRedNMXFdid('REDNMXCODE');
      UpdateRedNMXFdid('RESPSTAT');
      UpdateRedNMXFdid('SCHDLOC');
      UpdateRedNMXFdid('SCHDRANK');
      UpdateRedNMXFdid('SCHDSHIFT');
      UpdateRedNMXFdid('SCHDSHIFTNAME');
      UpdateRedNMXFdid('SCHDSTATUS');
      UpdateRedNMXFdid('SCHDTYPE');
      UpdateRedNMXFdid('SCHDTYPEGUI');
      UpdateRedNMXFdid('SEC');
      UpdateRedNMXFdid('SECFDID');
      UpdateRedNMXFdid('SYSFIELDDEF');
      UpdateRedNMXFdid('SYSFIELDREQ');
      UpdateRedNMXFdid('SYSNARR');
      UpdateRedNMXFdid('SYSVIEWFDID');
      UpdateRedNMXFdid('SYSVIEWFDIDCUST');
      UpdateRedNMXFdid('TABLEDEFAULT');
      UpdateRedNMXFdid('WOASSTYPE');
      UpdateRedNMXFdid('WOREQTYPE');
      UpdateRedNMXFdid('WORKORD');
      UpdateRedNMXFdid('WOSOURCE');
      UpdateRedNMXFdid('WOSTATUS');
      ShowMessage('Done');
    end;  
  end;
end;

procedure TSQLSetForm.UpdateRedNMXFdid(TableName: String);
Var SQLVar : String;
begin
  SQLVar := 'UPDATE ' + TableName + ' SET FDID = ' + AddExpr(FdidNewField.Text) + ' WHERE FDID = ' + AddExpr(FdidOldField.Text);
  RunSQL(SQLVar);
  AddStatusListBox(UtilityBox,SQLVar);
end;

procedure TSQLSetForm.ClearFDIDButtonClick(Sender: TObject);
Var Password : String;
begin
  inherited;
  PassWord := 'SKIVT';
  If GetPassword1(Password) then begin

    DeleteFdidExcept('NFIRSMAIN');
    DeleteFdidExcept('PROP');
    DeleteFdidExcept('PERS');
    DeleteFdidExcept('NIATT');
    DeleteFdidExcept('NEMSIS');
    DeleteFdidExcept('E911');
    DeleteFdidExcept('NEM3PCR');
    DeleteFdidExcept('INV');
    DeleteFdidExcept('EMS');
    DeleteFdidExcept('INSP');
    DeleteFdidExcept('HYD');
    DeleteFdidExcept('PAGELIST');
    DeleteFdidExcept('NI');
    DeleteFdidExcept('DISPCALL');
    DeleteFdidExcept('WORKORD');
    DeleteFdidExcept('SEC');
    DeleteFdidExcept('NFIRSARSON');
    DeleteFdidExcept('NFIRSADDENDUM');

    ChangeSetupFdid('SYSMODULESET',SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('NEMSISSET',   SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('VOTESET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('SYSSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('QUEUESET',    SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('SECSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('NFIRSSET',    SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('E911SET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('SCBASET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('DLSETUP',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('SCHDSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('PICTSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('INVSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('NEM3SET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('WORKORDSET',  SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('IMAGESET',    SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('INSPSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('PERMITSET',   SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('APPSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('MOBSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('MCISET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('LOSAPSET',    SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('ARSONSET',    SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('HYDSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('COMPLAINTSET',SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('FUNDSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('FINGERSET',   SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('HANDSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('HOSESET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('GISSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('DISPSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('ASCSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('PAGESET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('PROPSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('PERSSET',     SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('EMSSET',      SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('NFIRSSSSETUP',SetupFdid.Text,FinalFdidField.Text);
    ChangeSetupFdid('ROLODEXSET',  SetupFdid.Text,FinalFdidField.Text);

    DeleteFdidExcept('NIPTYPE');
    DeleteFdidExcept('NIPERSINVTYPE');
    DeleteFdidExcept('NITRAINCAT3');
    DeleteFdidExcept('NISTYPE');
    DeleteFdidExcept('NILOSAPCAT');
    DeleteFdidExcept('NITRAINCAT2');
    DeleteFdidExcept('NIUSER1');
    DeleteFdidExcept('NIUSER2');
    DeleteFdidExcept('NIUSER3');
    DeleteFdidExcept('NIUSER4');
    DeleteFdidExcept('NIUSER5');
    DeleteFdidExcept('NIUSER6');
    DeleteFdidExcept('NITRAINCAT1');
    DeleteFdidExcept('NITRAINCATTYPE');
    DeleteFdidExcept('NIFIELD');
    DeleteFdidExcept('NITRAINCATREQ');
    DeleteFdidExcept('NIAGENCY');

    DeleteFdidExcept('PERSMED');
    DeleteFdidExcept('PERSPAYSCALE');
    DeleteFdidExcept('PERSPHONETYPE');
    DeleteFdidExcept('PERSMARITAL');
    DeleteFdidExcept('PERSCOMMPOS');
    DeleteFdidExcept('PERSCOMMTYPE');
    DeleteFdidExcept('PERSFDID');
    DeleteFdidExcept('PERSTEAMTYPE');
    DeleteFdidExcept('PERSSCHDROLE');
    DeleteFdidExcept('PERSRANK');
    DeleteFdidExcept('PERSRANKHIST');
    DeleteFdidExcept('PERSRELIGION');
    DeleteFdidExcept('PERSBENTYPE');
    DeleteFdidExcept('PERSCOMMHIST');
    DeleteFdidExcept('PERSSTAT');
    DeleteFdidExcept('PERSTYPE');
    DeleteFdidExcept('PERSCONTTYPE');

    DeleteFdidExcept('SCHDLOC');
    DeleteFdidExcept('SCHDSTATUS');
    DeleteFdidExcept('SCHDTYPE');
    DeleteFdidExcept('SCHDTYPEGUI');
    DeleteFdidExcept('SCHDSHIFTNAME');
    DeleteFdidExcept('SCHDRANK');
    DeleteFdidExcept('SCHDSHIFT');

    DeleteFdidExcept('WOREQTYPE');
    DeleteFdidExcept('WOSOURCE');
    DeleteFdidExcept('WOSTATUS');
    DeleteFdidExcept('WOASSTYPE');

    DeleteFdidExcept('SYSFIELDREQ');
    DeleteFdidExcept('SYSNARR');
    DeleteFdidExcept('REDNMXCODE');

    DeleteFdidExcept('PROPSUBTYPE');
    DeleteFdidExcept('PROPTYPE');

    DeleteFdidExcept('INSPBOX');
    DeleteFdidExcept('INVLOC');
    DeleteFdidExcept('LOCATION');
    DeleteFdidExcept('INVSERVTYPE');
    DeleteFdidExcept('DISPBOX');
    DeleteFdidExcept('DISPLOC');
    DeleteFdidExcept('DISPAPP');
    DeleteFdidExcept('DISPRESPONSE');
    DeleteFdidExcept('DISPSTAT');

    DeleteFdidExcept('EMSATTTASK');
    DeleteFdidExcept('N5DISTRICT');
    DeleteFdidExcept('NFIRSATTACTLIST');
    DeleteFdidExcept('NIAPPTASK');
    DeleteFdidExcept('NFIRSATTTASK');
    DeleteFdidExcept('DISPCALLTYPE');
    DeleteFdidExcept('PAGEGROUP');

    ShowMessage('Done');
  end;  
end;

procedure TSQLSetForm.ChangeSetupFdid(TableName, OldFdid, NewFdid: String);
Var SQLVar     : String;
begin
  SQLVar     := 'UPDATE ' + TableName + ' SET FDID = ' + AddExpr(NewFdid) + ' WHERE FDID = ' + AddExpr(OldFdid);
  RunSQL(SQLVar);
  AddStatusListBox(UtilityBox,SQLVar);
end;

procedure TSQLSetForm.DeleteFdidExcept(TableName: String);
Var SQLVar     : String;
    FdidRow    : Integer;
    DeleteFdid : String;
begin
  For FdidRow := 0 to OldFdidList.Lines.Count-1 do begin
    DeleteFdid := OldFdidList.Lines[FdidRow];
    SQLVar     := 'DELETE FROM ' + TableName + ' WHERE FDID = ' + AddExpr(DeleteFdid);
    RunSQL(SQLVar);
    AddStatusListBox(UtilityBox,SQLVar);
  end;
end;

procedure TSQLSetForm.PersIDButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  If PersIDOldField.Text = '' then
    ShowMessage('You must enter the old PERSID field')
  else if PersIDNewField.Text= '' then
    ShowMessage('You must enter the new PERSID field')
  else if BooleanMessageDlg('Transfer all data from ' + PersIDOldField.Text + ' to ' + PersIDNewField.Text + '?') then begin
    PassWord := '123!@#';
    If GetPassword1(Password) then begin
      Open_Query('PERSOLD', False, 'SELECT NARR, INVLOCID FROM PERS WHERE PERSID = ' + PersIDOldField.Text);
      Open_Query('PERSNEW', False, 'SELECT NARR, INVLOCID FROM PERS WHERE PERSID = ' + PersIDNewField.Text);
      
      AddStatusListBox(UtilityBox,'Updating NFIRSATT Table',True);
      RunSQL('UPDATE NFIRSATT     SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating NIATT Table',True);
      RunSQL('UPDATE NIATT        SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating NIEVATT Table',True);
      RunSQL('UPDATE NIEVATT      SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating PERSRANKHIST Table',True);
      RunSQL('UPDATE PERSRANKHIST SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating PERSSTATHIST Table',True);
      RunSQL('UPDATE PERSSTATHIST SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating PERSCOMMHIST Table',True);
      RunSQL('UPDATE PERSCOMMHIST SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating NFIRSMAIN Table for officer in charge',True);
      RunSQL('UPDATE NFIRSMAIN    SET PERSIDOFFCHARGE = ' + PersIDNewField.Text + ' WHERE PERSIDOFFCHARGE = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating NFIRSMAIN Table for member making report',True);
      RunSQL('UPDATE NFIRSMAIN    SET PERSIDMAKEREP = ' + PersIDNewField.Text + ' WHERE PERSIDMAKEREP = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating FINGER Table',True);
      RunSQL('UPDATE FINGER SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating PERSIMAGE Table',True);
      RunSQL('UPDATE PERSIMAGE SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);

      AddStatusListBox(UtilityBox,'Updating PERSMEDHIST Table',True);
      RunSQL('UPDATE PERSMEDHIST SET PERSID = ' + PersIDNewField.Text + ' WHERE PERSID = ' + PersIDOldField.Text);
      
      AddStatusListBox(UtilityBox,'Transfering NOTES tab',True);
      RunSQL('UPDATE PERS SET NARR = ' + AddExpr(GetField('PERSOLD', 'NARR').AsString + #13#10 + #13#10 + GetField('PERSNEW', 'NARR').AsString) + ' WHERE PERSID = ' + PersIDNewField.Text);

      if BooleanMessageDlg('Do you want to transfer inventory items?') then
      begin
        AddStatusListBox(UtilityBox,'Transfering INVENTORY',True);
        //Check the old record has an inventory location
        if GetField('PERSOLD', 'INVLOCID').AsString <> '' then
        begin
          //Check if new person has an inventory location
          if GetField('PERSNEW', 'INVLOCID').AsString <> '' then
          begin
            //Transfer all inventory if they both have a location set
            Open_Query('PERSINV', True, 'SELECT INVID, INVLOCID FROM INV WHERE INVLOCID = ' + AddExpr(GetField('PERSOLD', 'INVLOCID').AsString));
            while not A('PERSINV').eof do
            begin
              try
                 GetTable('PERSINV').Edit;
                 GetField('PERSINV', 'INVLOCID').AsString := GetField('PERSNEW', 'INVLOCID').AsString;
                 GetTable('PERSINV').Post;
              finally
                A('PERSINV').Skip(1);
              end;
            end;
            Closeapollo('PERSINV');
          end
          else
          begin
            //set new location if the new record doesnt have a location set
            RunSQL('UPDATE PERS SET INVLOCID = ' + PKValue(GetField('PERSOLD', 'INVLOCID').AsString) + ' WHERE PERSID = ' + PersIDNewField.Text);
          end;
        end;
      end;
      Closeapollo('PERSOLD');
      Closeapollo('PERSNEW');
      AddStatusListBox(UtilityBox,'Update Complete.',True);
    end;
  end;
end;

procedure TSQLSetForm.PersIDOldFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDOldField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS';
end;

procedure TSQLSetForm.PersIDNewFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDNewField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS';
end;


procedure TSQLSetForm.TransferButtonClick(Sender: TObject);
Var SourceDatabase  : TAlpineAdoConnection;
    ErrorString     : String;
    FieldArray      : Array of String;
    DataArray       : Array of Variant;
    FieldNum        : Integer;
    FieldName       : String;
    ArrayCnt        : Integer;
begin
  inherited;
  SourceDatabase := TAlpineAdoConnection.Create(self,TransServerField.Value + ':' + TransDatabaseField.Value,TransUsernameField.Value,TransPasswordField.Value,AnyStrToInt(TransTableTypeField.Value));
  SourceDatabase.Connect(ErrorString);

  RunSQL('SET IDENTITY_INSERT ' + TransTableNameField.Value + ' ON');
  Open_query(SourceDatabase,'TABLENAME',false,'SELECT * FROM ' + TransTableNameField.Value);

  SetLength(FieldArray,A('TABLENAME').FieldCount);
  SetLength(DataArray, A('TABLENAME').FieldCount);

  ArrayCnt := 1;
  While Not A('TABLENAME').Eof do begin
    for FieldNum := 0 to A('TABLENAME').FieldCount-1 do begin
      FieldName := A('TABLENAME').FieldName(FieldNum);
//      If Not (FieldName = 'FDID') and Not (tdbfield('TABLENAME',FieldName) = '') then begin
//        SetLength(FieldArray,ArrayCnt);
//        SetLength(DataArray, ArrayCnt);

        FieldArray[FieldNum] := FieldName;
        If FieldName = 'FDID' then 
          DataArray[FieldNum]  := ''
        else if GetField('TABLENAME',FieldName).AsString = '0' then
          DataArray[FieldNum]  := ''
        else
          DataArray[FieldNum]  := GetField('TABLENAME',FieldName).AsString;
//      ArrayCnt             := ArrayCnt + 1;
//    end;
    end;
    TableInsert(TransTableNameField.Value,FieldArray,DataArray);
    A('TABLENAME').Skip(1);
  end;
  CloseApollo('TABLENAME');
  RunSQL('SET IDENTITY_INSERT ' + TransTableNameField.Value + ' OFF');
  SourceDatabase.Free;
  ShowMessage('Completed');
end;
 

end.

