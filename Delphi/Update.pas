unit update;

interface

uses
  BDE,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,                                         
  Dialogs,
  StdCtrls,
  Apollo,
  ComCtrls,
  ExtCtrls,
  FormFunc,
  Buttons,
  cusbtn,
  Db,
  DBTables,
  Gauges,
  applst,
  TableDefinitions,
  AdvGlowButton,
  AlpineGlowButton,
  Menus,
  DataSync, OvcBase, OvcEF, OvcPB, OvcPF, BasePictureField, AlpineEdit;
  
type
  TUpdateForm = class(TForm)
    Panel2: TPanel;
    Panel1: TPanel;
    closebutton: TAlpineGlowButton;
    progressbar1: TGauge;
    BackPanel: TPanel;
    Panel4: TPanel;
    MIDDLEPANEL: TPanel;
    Splitter1: TSplitter;
    StatusLabel: TLabel;
    Panel5: TPanel;
    Image1: TImage;
    Image2: TImage;
    RunUpdate: TAlpineGlowButton;
    CancelButton: TAlpineGlowButton;
    ListBox1: TListBox;
    ErrorListBox: TListBox;
    MainButtonGroupbox: TPanel;
    CustomPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CheckBox1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel6: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    FdidField: TLabel;
    FireDeptField: TLabel;
    Label9: TLabel;
    DatabaseField: TLabel;
    Label11: TLabel;
    TableTypeField: TLabel;
    Label13: TLabel;
    LibraryField: TLabel;
    Label10: TLabel;
    ServerField: TLabel;
    Label12: TLabel;
    EXEDateField: TLabel;
    Label15: TLabel;
    MdbDateField: TLabel;
    OptionsMenu: TPopupMenu;
    Label6: TLabel;
    UpdateListBox: TListBox;
    Splitter2: TSplitter;
    Label16: TLabel;
    UpdateDateButton: TAlpineGlowButton;
    CorrectDatabaseButton: TAlpineGlowButton;
    ImportSupportFiles: TAlpineGlowButton;
    CreateDatabaseView: TAlpineGlowButton;
    CreateForeignKeys: TAlpineGlowButton;
    ImportNfirs: TAlpineGlowButton;
    Miscellaneous: TAlpineGlowButton;
    CustSpecButton: TAlpineGlowButton;
    DropForeignKeysButton: TAlpineGlowButton;
    ImportHazMatButton: TAlpineGlowButton;
    DropHazMatButton: TAlpineGlowButton;
    DropAllIndexesButton: TAlpineGlowButton;
    ImportEMSCodes: TAlpineGlowButton;
    DropSqlTriggers: TAlpineGlowButton;
    CorrectDatabaseCheck: TCheckBox;
    ImportSupportFilesCheckBox: TCheckBox;
    CreateDatabaseViewCheckBox: TCheckBox;
    CreateForeignKeysCheckBox: TCheckBox;
    ImportNFIRSCheckBox: TCheckBox;
    MiscellaneousCheckBox: TCheckBox;
    custspec: TCheckBox;
    CanShrinkFields: TCheckBox;
    PromptOnFieldShrink: TCheckBox;
    candropfields: TCheckBox;
    CanAlterFieldTypes: TCheckBox;
    ImportPagingCompButton: TAlpineGlowButton;
    Label14: TLabel;
    VerifySingleTable: TAlpineEdit;
    ModCodeField: TAlpineEdit;
    OvcController1: TOvcController;
    procedure CorrectDatabaseClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure closebuttonClick(Sender: TObject);
    procedure CreateForeignKeysClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ErrorListBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImportNfirsClick(Sender: TObject);
    procedure RunUpdateClick(Sender: TObject);
    procedure MiscellaneousClick(Sender: TObject);
    procedure CustSpecButtonClick(Sender: TObject);
    procedure DropForeignKeysButtonClick(Sender: TObject);
    procedure ImportHazMatButtonClick(Sender: TObject);
    procedure DropHazMatButtonClick(Sender: TObject);
    procedure DropAllIndexesButtonClick(Sender: TObject);
    procedure VerifySingleTableExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DropBAKandGHOSTTables1Click(Sender: TObject);
    procedure ImportEMSCodesClick(Sender: TObject);
    procedure CustomPanelDblClick(Sender: TObject);
    procedure DropSqlTriggersClick(Sender: TObject);
    procedure StatusLabelDblClick(Sender: TObject);
    procedure UpdateDateButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImportSupportFilesClick(Sender: TObject);
    procedure CreateDatabaseViewClick(Sender: TObject);
    procedure CanAlterFieldTypesClick(Sender: TObject);
    procedure CanShrinkFieldsClick(Sender: TObject);
    procedure PromptOnFieldShrinkClick(Sender: TObject);
    procedure candropfieldsClick(Sender: TObject);
    procedure ImportPagingCompButtonClick(Sender: TObject);
  private
    FFdid                  : String;
    FContinueUpdate        : Boolean;
    FLogFile               : String;
    FErrorFile             : String;
    TableImported          : TStringList;
    FUpdateDataBase        : TAlpineAdoConnection;
    FCancelState           : Boolean;
    FCreatedAsciiDefs      : Boolean;
    FAlpineMode            : Boolean;
    LastUpdateDateTime     : TDateTime;
    bNeedToConvertVoteHist : Boolean;
    procedure WriteAsciiDefs(AsciiDefs: TStringList);
    function GetAsciiDefs: TStringList;
    procedure ImportAmericanDictionary;
    procedure UpdateN5MobMake;

    procedure AddNfirsSSField(FieldName: String);
    procedure DoNJ6000;
    procedure CreateAmbuProView;
    procedure DoNJ6100;
    procedure DoNJ7000;
    procedure DoNJ8000;
    procedure Do9244;

    procedure AddToNFIRSSS(Caption, SortOrd, TableName, FieldName, IDNumber, LookUpCode: String);
    procedure ConvertVoteHist;
    procedure PopulateNfirs(mTable: String);
    procedure SayDatabaseDrops;
    procedure CheckNewSecurityFields;
    function DropAllFKConstaintsReferencingThisTable(mTable: String): Boolean;
    procedure SetSysTool(Sender: TObject);
    procedure LoadInvServForm(InvServForm, Descr, ModCode: String);
    function CreateTable( var FUpdateDatabase: TAlpineAdoConnection; mTableName: String;mProcessSystemTables: Boolean ; mNewTableName: String = ''): Boolean;
    procedure CreateGlenCovePCR;
    procedure LoadNIActive;
    procedure LoadPageListActive;
    procedure LoadNITrainCAT1Active;
    procedure UpdateInvInspType;
    procedure LoadBulletinTables;
  public
    procedure SetDateTimeUpdate;
    class procedure CreateAndReadDefintions(RemoteData: TAlpineAdoConnection);
    class procedure ImportAccessTable(mdataBase,mSingleTable: String; sqldb: TBaseTablesObject; progressbar1: TGauge; bGetReferencingTables: Boolean = True); overload;
    class procedure ImportAccessTable(mdataBase,mSingleTable: String; progressbar1: TGauge; bGetReferencingTables: Boolean = True); overload;
    procedure DoUpdateMessage(mMessage: String);
    property ContinueUpdate : Boolean read FContinueUpdate write FContinueUpdate;
    procedure ReadTableDefinitions;
    procedure CheckForDuplicateNfirsAtt;
    procedure CheckForDuplicateNIAtt;
    constructor Create(AOwner: TComponent); overload; override;
    constructor Create(AOwner: TComponent; var mUpdateDataBase,mDefinitionsdatabase: TAlpineAdoConnection; mAsciiDefs: TStringList); overload;
    property UpdateDataBase: TAlpineAdoConnection read FUpdateDataBase write FUpdateDataBase;
    class procedure AddPlusOne(mtable,levelsql,code,descr: String);
    class function AddSecurity(mp1,mp2,mp3,mp4: String): Integer;
    class Procedure AddToLookup(mTableName,mCodeField,mDescr: String);
    class procedure DoSysViewOverRide(mOldCode,mNewCode: String);
    class function CheckExportImportFile(mAlias: String): Boolean;
    Procedure AddReportSecurity(mNewRepCode,mSourceRepcode: String);
    function CheckOracleSequences(asciiTableDef: TTAbleDef): Boolean;
    class procedure SetReportSecurity(mCode: String);
    property AsciiDefs: TStringList read GetAsciiDefs write WriteAsciiDefs;
    procedure CreateNfirsAppTimesView;
    procedure CheckUpdateWarnings;
    procedure ImportFipsIntoNemsisCode;
    procedure CheckRedundantIntersections;
    procedure AnalyzeStreetAliases;
  end;
  function CreateTable(mtableCode: String): Boolean; overload;
  function CreateTable(var mAdoConnection, mdefDatabase: TAlpineAdoConnection; mAsciiDefs: TStringList; mTableCode: String): Boolean; overload;
var
  UpdateForm: TUpdateForm;

{$I rednmx.inc}

implementation
uses genfunc,
     adox_tlb,
     Commonfunc,
     CommonVar,
     Normalbase,
     CommonDispVar,
     Search,
     CommonDisp,
     commonupdate,
     AlpineBaseSummaryReport,
     {$IFDEF REDNMX}
     vote,
     ToolBar,
     CustomUpdate,
     {$ENDIF}
     CommonRedNMX;

const
  MYISAM = 1;
  INNODB = 2;

constructor TUpdateform.Create(AOwner: TComponent; var mUpdateDataBase,mDefinitionsDatabase: TAlpineAdoConnection; mAsciiDefs: TStringList);
begin
  GlobalUpdateDatabase := TAlpineAdoConnection(mDefinitionsDatabase);
  FUpdateDatabase      := mUpdateDatabase;
  FAsciiDefs           := mAsciiDefs;
  Create(AOwner);
end;

procedure DefaultSecurityTrue(iSecFieldid: Integer);
begin
  if iSecFieldid = 0 then exit;
  open_query('SECTRUE',False,'SELECT SECID FROM SEC');
  while not A('SECTRUE').eof do begin
    TableInsert('SECFIELDSET',['SECID','SECFIELDID'],[tdbfield('SECTRUE','SECID'),iSecFieldid]);
    A('SECTRUE').Skip(1);
  end;
  CloseApollo('SECTRUE');
end;

procedure TUpdateForm.DoUpdateMessage(mMessage: String);
begin
  if GlobalSilentMode then
    AddTobox(mMessage)
  else
    showmessage(mMessage);
end;


constructor TUpdateForm.Create(AOwner: TComponent);
var mFileName      : String;
    mError         : String;
    mSupportTables : String;
    iTableType     : Integer;
    mredNMX        : String;
begin
  FAlpineMode      := ParamsContainString('ALPINE');
  GlobalSilentMode := ParamsContainString('SILENT');
  FContinueUpdate  := True;

  If FUpdateDatabase=nil then begin
    if not commonfunc.ConnectToDataBase(False,CLIENTUSER,CLIENTPASS) then begin
      DoUpdateMessage('Could Not Connect to Database');
      FContinueUpdate := False;
    end;
    FUpdateDatabase := GlobalAdoConnection;

  end;
  If GlobalUpdateDatabase=nil then begin
    if ParamsContainString('USEALPINEDEF') then begin
      iTableType := MySqlTableType;
      mRedNMX    := 'REDNMX.COM,3307:REDNMX';
      GlobalUpdateDatabase := TAlpineAdoConnection.create(self,mRedNMX,'ALPINE','Alp1n3SQL@22!',iTableType);
      If not GlobalUpdateDatabase.Connect(mError) then begin
        DoUpdateMessage('Could not connect to Alpine Database Library.  Ensure you have MySql ODBC installed.  Or your firewall may be preventing access.');
        FContinueUpdate := False;
      end;
    end else begin
      mFileName := ExtractFileDir(ParamStr(0))+'\rednmx.mdb';
      if not FileExists(mFileName) then begin
        DoUpdateMessage(mFileName+' does not exist');
        FContinueUpdate := False;
      end else begin
        iTableType := AccessTableType;
        GlobalUpdateDatabase := TAlpineAdoConnection.create(self,mfileName,'ALPINE','A_S_C',iTableType);
        if not GlobalUpdateDatabase.Connect(mError) then begin
          DoUpdateMessage('Could not connect to '+mFileName);
          FContinueUpdate := False;
        end;
      end;
    end;
  end;

  inherited Create(AOwner);
  if FContinueUpdate then begin
    if ParamsContainString('USEALPINEDEF') then
      mSupportTables := 'Alpine Server'
    else if mFileName<>'' then
      mSupportTables := mFilename
    else if GlobalUpdateDatabase<> nil then
      mSupportTables := GlobalUpdateDatabase.ServiceName;

    AddToBox('Support tables connected to '+mSupportTables);
    AddToBox('Connected to '+GlobalAdoConnection.ServerName+iif(GlobalAdoConnection.TableType=OracleTableType,'',':')+GlobalAdoConnection.DataBaseName);
  end else begin
    Application.ShowMainForm := False;
    application.Terminate;
  end;
end;

{$R *.DFM}

procedure TUpdateForm.CorrectDatabaseClick(Sender: TObject);
var i: Integer;
    bGotHere: Boolean;
begin
  if FCancelState then exit;
  bGotHere := False;
  CancelButton.Enabled := True;

  {if GlobalAdoConnection.TableType = 4 then begin
    RunSql('set innodb_strict_mode=0');
    UpdateListBox.Items.add('innodb_strict_mode=0');
  end;}

  if FAsciiDefs.Count>0 then begin
    ProgressBar1.MaxValue := FAsciiDefs.Count-1;




    for i:= 0 to FAsciiDefs.Count - 1 do begin
      progressbar1.progress := i;
      if iifb(trim(VerifySingleTable.Text)='',True,trim(VerifySingleTable.Text)=FAsciiDefs[i]) then begin
        bGotHere := True;
        commonupdate.ProcessTable(GlobalAdoConnection,FAsciiDefs[i],trim(VerifySingleTable.text));
      end;
      if FCancelState then Break;
    end;

  end;



  if (not bGotHere) and (VerifySingleTable.text<>'') then
    AddToBox('Table '+VerifySingleTable.text+' not found in Defintions!',True);
  CancelButton.Enabled := False;
  FCancelState := False;
end;

function TUpdateForm.CheckOracleSequences(asciiTableDef: TTableDef): Boolean;
var mField      : TFieldDef;
    mSeqName    : String;
    mTriggerName: String;
begin
  result := true;
  if GlobalAdoConnection.TableType <> OracleTableType then
    exit;
  if AsciiTableDef.GetPrimeKey<>nil then begin
    if AsciiTableDef.GetPrimeKey.Fields.Count>0 then begin
      mField := AsciiTableDef.GetFieldDef(AsciiTableDef.GetPrimeKey.Fields[0]);
      if mField.PrimeKeyField then begin
        mSeqName := 'NEXTPK_'+AsciiTableDef.Name;
        if SqlTableRecCount('SELECT COUNT(*) FROM USER_SEQUENCES WHERE SEQUENCE_NAME = '+AddExpr(mSeqName))>0 then
          RunSql('DROP SEQUENCE '+mSeqName);
        result := RunSql('CREATE SEQUENCE '+mSeqName+' NOCYCLE MAXVALUE 9999999999 START WITH '+inttostr(imax(1,1+SqlTableRecCount('SELECT MAX('+mField.Name+') FROM '+AsciiTableDef.name)))+' ORDER');
        if Result then
            AddTobox('Created Sequence '+mSeqName)
        else
          AddToBox('Failed to create Sequence '+mSeqName,True);

        mTriggerName := 'SET_'+AsciiTableDef.Name;
        if SqlTableRecCount('SELECT COUNT(*) FROM USER_TRIGGERS WHERE TRIGGER_NAME = '+AddExpr(mTriggerName))=0 then
          result := result and
            RunSql('CREATE OR REPLACE TRIGGER '+mTriggerName+' '+CRLF+
            'BEFORE INSERT ON '+AsciiTableDef.Name+' '+CRLF+
            'FOR EACH ROW '+CRLF+
            'DECLARE next_no NUMBER; '+CRLF+
            'BEGIN '+
            'SELECT NEXTPK_'+AsciiTableDef.Name+'.NEXTVAL INTO next_no FROM dual;'+CRLF+
            ':new.'+mField.Name+' := next_no; '+CRLF+
            'END;');

      end;
    end;
  end;
end;







procedure TUpdateForm.DropSqlTriggersClick(Sender: TObject);
begin
  Open_Query('TRIGGERS',False,'select NAME from SYSOBJECTS where XTYPE='+AddExpr('TR'));
  progressBar1.MaxValue := A('TRIGGERS').QueryRecCount;
  progressBar1.Progress := 0;
  while not A('TRIGGERS').eof do begin
    progressBar1.Progress := progressBar1.Progress +1;
    application.processmessages;
    if RunSql('DROP TRIGGER '+tdbField('TRIGGERS','NAME')) then
      AddToBox(' --> Dropped Trigger '+tdbField('TRIGGERS','NAME'),False)
    else
      AddToBox(' --> Could not drop Trigger '+tdbField('TRIGGERS','NAME'),True);
    A('TRIGGERS').Skip(1);
  end;
  CloseApollo('TRIGGERS');
  DoUpdateMessage('done');
end;

function TUpdateForm.DropAllFKConstaintsReferencingThisTable(mTable: String): Boolean;
var i         : Integer;
    mTableDef : TTableDef;
begin
  mTableDef := CreateAndSetDbDef(mTable,False,True);
  result    := True;

  for i:= 0 to mTableDef.FConstraintsReferencingThisTable.Count-1 do
     result := result and DropForeignKey(FUpdateDatabase,mTableDef.FTablesReferencingThisTable[i],mTableDef.FConstraintsReferencingThisTable[i]);
  ClearFromDbDefs(mTable);
end;

function CreateTable(mtableCode: String): Boolean;
begin
  result := commonupdate.CreateTable(GlobalAdoConnection,mTableCode,True);
end;
function CreateTable(var mAdoConnection, mdefDatabase: TAlpineAdoConnection; mAsciiDefs: TStringList; mTableCode: String): Boolean;
begin
  UpdateForm := TUpdateForm.Create(application,mAdoConnection,mDefDatabase,mAsciiDefs);
  result := UpdateForm.CreateTable( mAdoConnection,mTableCode,True,mTableCode);
  UpdateForm.Free;
end;

function TUpdateForm.CreateTable( var FUpdateDatabase: TAlpineAdoConnection; mTableName: String;mProcessSystemTables: Boolean ; mNewTableName: String = ''): Boolean;
begin
  result := commonupdate.CreateTable(FUpdatedataBase,mTableName,True,mNewTablename);
end;

function ProcessTable( var mAdoConnection,mdefDatabase: TAlpineAdoConnection; mAsciiDefs: TStringList; mTableCode: String): Boolean;
begin
  UpdateForm := TUpdateForm.Create(application,mAdoConnection,mDefDatabase,mAsciiDefs);
  UpdateForm.Show;
  result := commonupdate.ProcessTable(mAdoConnection,mTableCode,ASCVar);
  UpdateForm.Free;
end;

{function CreateTable( var mAdoConnection,mdefDatabase: TAlpineAdoConnection; mAsciiDefs: TStringList; mTableCode: String): Boolean;
begin
  UpdateForm := TUpdateForm.Create(application,mAdoConnection,mDefDatabase,mAsciiDefs);
  result := UpdateForm.CreateTable( mAdoConnection,mTableCode,True,mTableCode);
  UpdateForm.Free;
end;
 }

procedure TUpdateform.SetDateTimeUpdate;
begin
  DateTimeUpdate := 0;
  if not CheckTableExists('SYSSET') then exit;
  if Open_Query('SYSSET',false,'SELECT DATETIMEUPDATE FROM SYSSET WHERE FDID = ' + AddExpr(FIREID)) then begin
    try
      DateTimeUpdate := GetField('SYSSET','DATETIMEUPDATE').AsDateTime;
    except
      AppendToLog('Error selecting Time Update');
    end;
    CloseApollo('SYSSET');
  end;
end;  

procedure TUpdateForm.FormCreate(Sender: TObject);
begin
  FLogFile                           := ExtractFileDir(ParamStr(0))+'\update.log';
  FErrorFile                         := ExtractFileDir(ParamStr(0))+'\updateerror.log';
  Caption                            := 'RedNMX Update';
  If not FContinueUpdate then
    Exit;
  UpdateListBox1                     := ListBox1;
  UpdateerrorListBox                 := ErrorListBox;
  Updatestatuslabel                  := StatusLabel;
  Updateascvar                       := ascvar;
  UpdateprogressBar                  := progressbar1;
  FAlpineUpateMode                   := ParamsContainString('ALPINE');
  bNeedToConvertVoteHist             := True;
  dbDefs                             := TStringList.Create;

  SetDateTimeUpdate;
  if CheckTableExists('SYSMODULESET') then
    SetSysModuleList(FireID);

  If (GlobalAdoConnection.TableType = MSSQLTableType) then
     RunSql('SET ANSI_WARNINGS OFF');


  if (DateTimeUpdate >0) and (DateTimeUpdate < strtodate('05/06/2018')) then begin

    if TableRecCount('PERSSKILL')=0 then begin
      if not RunSql('DROP TABLE PERSSKILL') then
        appendtolog('COULD NOT DROP TABLE PERSSKILL');

    end else
      appendtolog('PERSSKILL table has records');
  end;

  GlobalQueryTimeOut                 := 9999;
  TableImported                      := TStringList.Create;

  FFdid                              := ASCVar;
  Updateascvar                       := ASCVar;

  PromptOnFieldShrink.Checked        := True;
  FCancelState                       := False;

  FdidField.Caption                  := FFdid;
  ExeDateField.Caption               := FormatDateTime('MM/DD/YYYY HH:NN',FileDateToDateTime(FileAge(ParamStr(0))));
  FireDeptField.Caption              := FireDept;
  DatabaseField.Caption              := GlobalAdoConnection.DatabaseName;
  ServerField.Caption                := IIf(at('DATABASE.WINDOWS.NET',UpperCase(GlobalAdoConnection.ServerName)) > 0,'ASC Azure Cloud',GlobalAdoConnection.ServerName);
  TableTypeField.Caption             := IIf(GlobalAdoConnection.TableType = 4,'MySQL','SQL Server');

  MdbDateField.Caption               := FormatDateTime('MM/DD/YYYY HH:NN',Now);
  LibraryField.Caption               := 'RedNMX SQL Library';

  If GlobalUpdateDatabase<>nil then begin
    if (GlobalUpdateDatabase.TableType=AccessTableType) and FileExists(ExtractFileDir(ParamStr(0))+'\rednmx.mdb') then begin
      MdbDateField.Caption             := FormatDateTime('MM/DD/YYYY HH:NN',FileDateToDateTime(FileAge(ExtractFileDir(ParamStr(0))+'\rednmx.mdb')));
      LibraryField.Caption             := ExtractFileDir(ParamStr(0))+'\rednmx.mdb';
      if Now - FileDateToDateTime(FileAge(ExtractFileDir(ParamStr(0))+'\rednmx.mdb')) > 1 then
        if not BooleanMessageDlg('The rednmx.mdb file is older than 24 hours - are you sure you want to proceed?') then
          Halt;
    end;
  end;

  AddTobox('Executable compiled for FDID '+FireID);
  mFireid                    := FireID;
  UpdateDateButton.Visible   := (FireID = '12345');
  addtobox('Start Update '+datetimetostr(now));
  GlobalBaseTablesObject := CreateTablesObject(GlobalAdoConnection);

  dispsetvar(globaladoconnection);

  {
  try
    open_query('VOTEHIST',False,'SELECT * FROM VOTEHIST WHERE 1=2');
    bNeedToConvertVoteHist :=  A('VOTEHIST').FindField('MAILADDR1') = nil;
  finally
    CloseApollo('VOTEHIST');
  end;
  }
  
end;

procedure TUpdateForm.closebuttonClick(Sender: TObject);
begin
  close;
end;

procedure TUpdateForm.CreateForeignKeysClick(Sender: TObject);
begin
  UpdateCreateForeignKeys(VerifySingleTable.Text,progressbar1);

end;

procedure TUpdateForm.FormDestroy(Sender: TObject);
begin
  if FCreatedAsciiDefs then
    ClearAndFreeStringList(FAsciiDefs);
  TableImported.Free;
end;

procedure TUpdateForm.FormShow(Sender: TObject);
begin
  if not CheckTableExists('SYSSET') then exit;
  if (TableRecCount('SYSSET')>0) and (sqllookup(fireid,'fdid','fdid','fdid')<>fireid) then begin
    if not BooleanMessageDlg('System compiled for '+fireid+'.  No records for this FDID could be found in FDID table.  Sure you want to continue?') then begin
      Halt;
    end;
  end;
  Globalcandropfields       := candropfields.Checked;
  GlobalPromptOnFieldShrink := PromptOnFieldShrink.Checked;
  UpdateCanAlterFieldTypes  := CanAlterFieldTypes.Checked;
  GlobalCanShrinkFields     := CanShrinkFields.Checked;

  If Not FAlpineMode then begin
    UpdateDateButton          .Enabled := false;
    CorrectDatabaseButton     .Enabled := false;
    ImportSupportFiles        .Enabled := false;
    CreateDatabaseView        .Enabled := false;
    CreateForeignKeys         .Enabled := false;
    ImportNfirs               .Enabled := false;
    Miscellaneous             .Enabled := false;
    CustSpecButton            .Enabled := false;
    DropForeignKeysButton     .Enabled := false;
    ImportHazMatButton        .Enabled := false;
    DropHazMatButton          .Enabled := false;
    DropAllIndexesButton      .Enabled := false;
    ImportEMSCodes            .Enabled := false;
    DropSqlTriggers           .Enabled := false;

    CorrectDatabaseCheck      .Enabled := false;
    ImportSupportFilesCheckBox.Enabled := false;
    CreateDatabaseViewCheckBox.Enabled := false;
    CreateForeignKeysCheckBox .Enabled := false;
    ImportNFIRSCheckBox       .Enabled := false;
    MiscellaneousCheckBox     .Enabled := false;
    custspec                  .Enabled := false;
    CanShrinkFields           .Enabled := false;
    PromptOnFieldShrink       .Enabled := false;
    candropfields             .Enabled := false;
    CanAlterFieldTypes        .Enabled := false;
    VerifySingleTable         .Enabled := false;
    ModCodeField              .Enabled := false;
    UpdateDateButton          .Enabled := false;
  end;  
end;

class function TUpdateForm.CheckExportImportFile(mAlias: String): Boolean;
begin
  result := (tdbField(mAlias,'COPYDATA')='Y');
end;

procedure TUpdateForm.CanAlterFieldTypesClick(Sender: TObject);
begin
  UpdateCanAlterFieldTypes := CanAlterFieldTypes.Checked;
end;

procedure TUpdateForm.CancelButtonClick(Sender: TObject);
begin
  if BooleanMessageDlg('Abort Operation?') then begin
    FCancelState := True;
    abort;
  end;
end;

procedure TUpdateForm.candropfieldsClick(Sender: TObject);
begin
  Globalcandropfields :=candropfields.Checked;
end;

procedure TUpdateForm.CanShrinkFieldsClick(Sender: TObject);
begin
  GlobalCanShrinkFields := CanShrinkFields.Checked;
end;

procedure TUpdateForm.UpdateDateButtonClick(Sender: TObject);
begin
  RunSql('UPDATE SYSSET SET DATETIMEUPDATE = ' + FormatDateTimeForSql(FileDateToDateTime(FileAge(ParamStr(0)))));
end;

procedure TUpdateForm.ErrorListBoxMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    WinExec(pChar(extractfilepath(ParamStr(0))+'errors.log'),SW_SHOW);
end;

procedure TUpdateForm.ImportNfirsClick(Sender: TObject);
var mPrefix   : String;
    NfirsFile : String;
begin
  If FCancelState then
    exit;
  mPrefix   := 'N5';
  NfirsFile := ExtractFileDir(ParamStr(0))+'\nfirs.mdb';

  If FileExists(NfirsFile) then begin
    try
      Open_Query('N5TABLES',False,'SELECT TABLENAME FROM SYSTABLE WHERE TABLENAME LIKE '+AddExpr('N5%')+' ORDER BY TABLENAME');

      progressbar1.maxvalue := A('N5TABLES').QueryRecCount;
      progressbar1.progress := 0;

      A('N5TABLES').Gotop;
      while not A('N5TABLES').eof do begin
       try
        If tdbField('N5TABLES','TABLENAME')<>'N5DISTRICT' then begin
          AddToBox('Importing table ' + tdbField('N5TABLES','TABLENAME') + ' . . . .');
          ImportAccessTable(NfirsFile,tdbField('N5TABLES','TABLENAME'),progressbar1,False);
        end;
       finally
         A('N5TABLES').Skip(1);
       end;
      end;
    finally
      AddtoBox('Done Importing NFIRS Tables');
      CloseApollo('N5TABLES');
    end;
  end else begin
    AddtoBox('The file ' + NfirsFile + ' is missing');
  end;
end;

procedure TUpdateForm.ImportPagingCompButtonClick(Sender: TObject);
var mPrefix: String;
begin
  if FCancelState then
    exit;
  mPrefix := 'N5';
  try

    Open_Query('PAGECOMPTABLES',False,'SELECT TABLENAME FROM SYSTABLE WHERE TABLENAME = '+AddExpr('PAGECOMP')+' ORDER BY TABLENAME');

    progressbar1.maxvalue := A('PAGECOMPTABLES').QueryRecCount;
    progressbar1.progress := 0;

    A('PAGECOMPTABLES').Gotop;
    while not A('PAGECOMPTABLES').eof do begin
     try
      If tdbField('PAGECOMPTABLES','TABLENAME')='PAGECOMP' then begin
        AddToBox('Importing table ' + tdbField('PAGECOMPTABLES','TABLENAME') + ' . . . .');
        try
          ImportAccessTable(ExtractFileDir(ParamStr(0))+'\PagingCompanies.mdb',tdbField('PAGECOMPTABLES','TABLENAME'),progressbar1,False);
          AddtoBox('Done Importing Paging Companies');
        Except
          on E: Exception do
            begin
              ShowMessage('An Exception has occured! Ensure that PagingCompanies.mdb is in the directory of this RedNMX executable! You can export this from the Demo System using SimpleView.');
              AddToBox('Exeption while importing Paging Companies: '+E.Message);
              AddToBox('Ensure that PagingCompanies.mdb is in the directory of this RedNMX executable!');
              AddToBox('You can export this from the Demo System using SimpleView!');
            end;
        end;
      end;
     finally
       A('PAGECOMPTABLES').Skip(1);
     end;
    end;
  finally
    CloseApollo('PAGECOMPTABLES');
  end;
end;


class procedure TUpdateForm.ImportAccessTable(mdataBase, mSingleTable: String; progressbar1: TGauge; bGetReferencingTables: Boolean);
begin
  ImportAccessTable(mdataBase, mSingleTable,nil,progressbar1,bGetReferencingTables);
end;

class procedure TUpdateForm.ImportAccessTable(mdataBase, mSingleTable: String; sqldb: TBaseTablesObject; progressbar1: TGauge; bGetReferencingTables: Boolean);
var i                : Integer;
    FAccessDataBAse  : TAlpineAdoConnection;
    mFieldName,mTable: String;
    iTable           : Integer;
    mTablesToConvert : TStringList;
    mTabledef        : TTableDef;
    bIdentFieldExists: Boolean;
begin
  FAccessDataBase := CreateAccessDataBase(nil,mDataBase);
  If FAccessDataBase = nil then
    exit;

  mTablesToConvert := TStringList.Create;
  If mSingleTable = '' then begin
    FAccessDataBase.GetTableNames(mTablesToConvert);
  end else
    mTablesToConvert.Add(uppercase(mSingleTable));

  application.ProcessMessages;
  progressbar1.progress:=0;
  for iTable := 0
  to mTablesToConvert.count-1 do begin
    try
      mTable := mTablesToConvert[iTable];
      CommonProcessFK(mTable,sqldb,bGetReferencingTables);
      mTabledef := ClassCreateAndSetDbDef(GlobalAdoConnection,mTable,True,bGetReferencingTables);
      If (GlobalAdoConnection.TableType=MSSQLTABLETYPE) then begin
      end else begin
//        for i:=0 to mTableDef.indexes.count-1 do begin
//          mIndexDef := TIndexDef(mTableDef.indexes.objects[i]);
//          if mIndexDef.IsPrimeKey then
//            CommonDropIndex(mTable,mIndexDef.FullName,ErrorString);
//        end;
      end;

      Open_Query(FAccessDataBase,'ACCESSN5',False,'SELECT COUNT(*) FROM '+mTable);
      progressbar1.maxValue := GetTable('ACCESSN5').Fields[0].AsInteger;
      CloseApollo('ACCESSN5');

      Open_Query(FAccessDataBase,'ACCESSN5',False,'SELECT * FROM '+mTable);
      Open_Query('CODETABLE',True,'SELECT * FROM '+mTable);
      bIdentFieldExists := GetTable('ACCESSN5').FindField(mTable+'ID')<>nil;


      RunSql('DELETE FROM '+mTable);

      while not A('ACCESSN5').eof do begin
        try

          GetTable('CODETABLE').Insert;
          progressbar1.progress := progressbar1.progress + 1;
          application.processmessages;
          for i := 0 to GetTable('CODETABLE').Fields.Count-1 do begin
            mFieldName := uppercase(GetTable('CODETABLE').Fields[i].FieldName);
            If (A('ACCESSN5').FindField(mFieldName) <> nil)  then
              If Not (bIdentFieldExists and (mFieldName = mTable+'ID')) then
                GetField('CODETABLE',mFieldName).AsString := GetField('ACCESSN5',mFieldName).AsString;
          end;
          A('CODETABLE').Post(False);
        except
          AppendToLog('Error importing Table ' + mTable);
        end;
        A('ACCESSN5').Skip(1);
      end;

    finally
      CloseApollo('CODETABLE');
      CloseApollo('ACCESSN5');
    end;
  end;
  FAccessDataBase.Free;
  mTablesToConvert.Free;
end;

procedure TUpdateForm.CheckUpdateWarnings;
begin
  If not CheckTableExists('SYSMODULESET')
    then exit;
  If DateTimeUpdate < StrToDate('04/01/2009') then
    If TablerecCount('EMS') > 50 then
      UpdateListBox.Items.add('Notify customer about setting the EMSNFIRSVIEW security setting');
  Application.ProcessMessages;
end;

procedure TUpdateForm.CheckNewSecurityFields;
  Procedure AddSecurity(mNewField,mSourceField: String);
  var mNewSecFieldID: String;
  begin
    If (sqllookup(mNewField,'SECFIELD','SECFIELD','SECFIELD')=mNewField) then
      exit;
    TableInsertReturnPk('SECFIELD',['SECFIELD'],[mNewField],mNewSecFieldID);
    ApplySecuritySettingsToNewSecFieldID(mNewSecFieldID,mSourceField);
    AddToBox('Added Security Field '+mNewField);
  end;

begin
  if not CheckTableExists('SECFIELD') then exit;
  AddSecurity('NIATT','NIEDIT');
  AddSecurity('INCARSON','INCEDIT');
  AddReportSecurity('DISPCALLSOURCEREP','DISPCALLTYPEREP');
  AddSecurity('SECLOG','SECSETUP');
  Open_Query('SECFIELD',True,'SELECT * FROM SECFIELD WHERE SECFIELD = ' + AddExpr('INC_CAN_APPR'));
  if NOT A('SECFIELD').RecordsExist then begin
    TUpdateForm.AddSecurity('INC_CAN_APPR','Approve Incidents','Approve Incidents','INC');
    ApplySecuritySettingsToNewSecFieldID(sqllookup('INC_CAN_APPR','SECFIELD','SECFIELD','SECFIELDID'),'INCEDIT');
  end;
  CloseApollo('SECFIELD');
end;

Procedure TUpdateForm.AddReportSecurity(mNewRepCode,mSourceRepcode: String);
var mSysRepid : String;
    secrep    : TApolloData;
begin
  try
    mSysRepId := sqllookup(mNewRepCode,'REPORTCODE','SYSREP','SYSREPID');
    if mSysRepId = '' then exit;
    secrep := open_query('SELECT * FROM SECREP WHERE SYSREPID = '+pkValue(sqllookup(mSourceRepCode,'REPORTCODE','SYSREP','SYSREPID')));
    while not secrep.eof do begin
      TableInsert('SECREP',['SYSREPID','SECID'],[mSysRepid,tdbfield(secrep,'SECID')]);
      secrep.skip(1);
    end;
  finally
    secrep.free;
  end;
  AddToBox('Added Security for Report '+mNewRepCode);
end;

procedure TUpdateForm.RunUpdateClick(Sender: TObject);
var sysset      : TApolloData;
    UpdateStart : TDateTime;
begin
  UpdateStart := Now;
  appendtolog('Start Update at '+datetimetostr(UpdateStart));

  CheckUpdateWarnings;
  If CheckTableExists('SYSSET') then begin
    If Open_Query('LASTUPDATE',False,'SELECT DATETIMEUPDATE FROM SYSSET WHERE FDID= '+AddExpr(FireID)) then begin
      LastUpdateDateTime := GetField('LASTUPDATE','DATETIMEUPDATE').AsDateTime;
      CloseApollo('LASTUPDATE');
    end;
    {
    try
      open_query('VOTEHIST',False,'SELECT * FROM VOTEHIST WHERE 1=2');
      bNeedToConvertVoteHist :=  A('VOTEHIST').FindField('MAILADDR1') = nil;
    finally
      CloseApollo('VOTEHIST');
    end;
    }
  end;

  If (CheckTableExists('SYSVIEWOPEN')) and (LastUpdateDateTime <= StrToDate('08/15/2014')) then begin
    RunSql('DELETE FROM SYSVIEWOPEN WHERE SYSVIEWID = ' + AddExpr('48'));
    UpdateListBox.Items.add('SYSVIEWOPEN NFIRSMAIN Fix Applied');
  end;

  If CheckTableExists('SYSSET') then
    RunSql('UPDATE SYSSET SET DATETIMEUPDATE = ' + FormatDateTimeForSql(FileDateToDateTime(FileAge(ParamStr(0)))));
  RunUpdate.Enabled := False;
  CheckNewSecurityFields;
  If CorrectDatabaseCheck.Checked then CorrectDatabaseClick(nil);
  If ImportSupportFilesCheckBox.Checked then ImportSupportFilesClick(nil);
  If CreateForeignKeysCheckBox.Checked then CreateForeignKeysClick(nil);
  If CreateDatabaseViewCheckBox.Checked then CreateDatabaseViewClick(nil);
  If ImportNFIRSCheckBox.Checked then ImportNfirsClick(nil);
  If MiscellaneousCheckBox.Checked then MiscellaneousClick(nil);
  if custspec.Checked then CustSpecButtonClick(nil);

  If errorlistbox.Items.Count>0 then
    UpdateListBox.Items.add('Update Complete with Warnings/Errors')
  else begin
    UpdateListBox.Items.add('Update Completed Successfully!');
  end;
  SayDatabaseDrops;

  try
    sysset := open_query(True,'select * from sysset where fdid = '+AddExpr(FireID));
    sysset.edit;
    getfield(sysset,'updaterlog').AsString := FileToString(FLogFile);
    getfield(sysset,'updatererrorlog').AsString := FileToString(FErrorFile);
    sysset.post;
  finally
    sysset.free;
  end;
  appendtolog('Update Complete.  Took '+inttostr(TimeDifferenceInSeconds(Now,UpdateStart))+' seconds.');
  DoUpdateMessage('Done');
  if GlobalSilentMode then begin
    application.terminate;
  end else if mFireID='30030' then
    ShowMessage('For Jericho System please ensure RedNMX Training System is updated too');
end;

procedure TUpdateForm.SayDatabaseDrops;
begin
  EXIT;
  if LastUpdateDateTime >0 then begin
    Open_Query('DROPPEDDATABASE',False,'SELECT * FROM DROPPEDDATABASE WHERE DATETIMEDROPPED >= '+FormatDateTimeForSql(LastUpdateDateTime));
    if A('DROPPEDDATABASE').recordsexist then begin
      AddToBox('NOTE: There have been database drops since the last update!');
      while not A('DROPPEDDATABASE').eof do begin
        AddToBox(GetField('DROPPEDDATABASE','DATETIMEDROPPED').AsString +'- Computer:'+GetField('DROPPEDDATABASE','COMPUTERNAME').AsString);
        A('DROPPEDDATABASE').skip(1);
      end;
    end;
    CloseApollo('DROPPEDDATABASE');
  end;
end;

procedure TUpdateForm.ConvertVoteHist;
var voteaddr : TApolloData;
    votehist : TApolloData;
    iconvert : Integer;
begin

  {$IFDEF REDNMX}
  
  try
    AddToBox('Start Conversion of VOTEHIST Table');
    voteaddr := open_query('select * from voteaddr');
    votehist := open_query(true,'select * from votehist');
    progressbar1.MaxValue := tablereccount('VOTEHIST');
    progressbar1.progress := 0;
    iConvert := 0;
    while not votehist.eof do begin
      if getfield(votehist,'voteaddrid').AsInteger > 0 then begin
        if voteaddr.exactquerylocate('voteaddrid',tdbfield(votehist,'voteaddrid')) then begin
          try
            votehist.edit;
            CopyVoteAddrFieldsToVoteHist(voteaddr,votehist);
            votehist.Post;
            iConvert := iConvert + 1;
          except
          end;
        end;
      end;
      votehist.next;
    end;
    AddToBox('  --> Converted '+inttostr(iConvert)+' of '+inttostr(progressbar1.maxvalue)+' VOTEHIST records');
  finally
    votehist.free;
    voteaddr.free;
  end;
  {$endif}
end;

procedure TUpdateForm.AddNfirsSSField(FieldName: String);
var NfirsMainTable : TApolloData;
begin
  try
    NfirsMainTable:= open_query('select * from nfirsmain where 1=2');
    If NfirsMainTable.findfield('NFIRSSS8000')=nil then begin
      If GlobalAdoConnection.TableType = MySqlTableType then begin
        If RunSql('alter table nfirsmain add column NFIRSSS8000 char(8)') then
          AddToBox('Added NFIRSMAIN.NFIRSSS8000 field')
        else
          AddToBox('Could not add NFIRSMAIN.NFIRSSS8000 field!',True)
      end else begin
        If RunSql('alter table nfirsmain add NFIRSSS8000 char(8)') then
          AddToBox('Added NFIRSMAIN.NFIRSSS8000 field')
        else
          AddToBox('Could not add NFIRSMAIN.NFIRSSS8000 field!',True)
      end;
    end;
  finally
    NfirsMainTable.free;
  end;
end;

procedure TUpdateForm.DoNJ6000;
begin
  AddNfirsSSField('NFIRSSS6000');
  AddToLookup('NFIRSSS6000','1','Not Used');
  AddToLookup('NFIRSSS6000','2','Used to locate primary fire');
  AddToLookup('NFIRSSS6000','3','Used to locate fire extension');
  AddToLookup('NFIRSSS6000','4','Used to conduct primary search/no victims present');
  AddToLookup('NFIRSSS6000','5','Used to conduct primary search/victims found');
  AddToLookup('NFIRSSS6000','6','Used to conduct primary search/victims not found');
  AddToLookup('NFIRSSS6000','7','Used to search for missing firefighter(s)/firefighter(s) found');
  AddToLookup('NFIRSSS6000','8','Used to search for missing firefighter(s)/firefighter(s) not found');
  AddToLookup('NFIRSSS6000','9','None');
  AddToNFIRSSS('Thermal Imaging Camera','1','NFIRSSS6000','NFIRSSS6000','6000','STD1080');
end;

procedure TUpdateForm.DoNJ6100;
begin
  AddNfirsSSField('NFIRSSS6100');
  AddToLookup('NFIRSSS6100','1','No smoke detector present - Smoke detector issued to occupant');
  AddToLookup('NFIRSSS6100','2','No smoke detector present - Smoke detector installed by FD');
  AddToLookup('NFIRSSS6100','3','Smoke detector did not operate - Smoke detector issued to occupant');
  AddToLookup('NFIRSSS6100','4','Smoke detector did not operate - Smoke detector installed by FD');
  AddToLookup('NFIRSSS6100','5','Smoke detector offered to occupant/occupant refused');
  AddToLookup('NFIRSSS6100','6','Replaced smoke detector battery');
  AddToNFIRSSS('Smoke Detector','2','NFIRSSS6100','NFIRSSS6100','6100','STD1080');
end;

procedure TUpdateForm.DoNJ7000;
begin
  AddNfirsSSField('NFIRSSS7000');
  AddToLookup('NFIRSSS7000','1','Used on civilian(s) - effective');
  AddToLookup('NFIRSSS7000','2','Used on civilian(s) - not effective');
  AddToLookup('NFIRSSS7000','3','Used on firefigher(s) - effective');
  AddToLookup('NFIRSSS7000','4','Used on firefigher(s) - not effective');
  AddToNFIRSSS('AED','3','NFIRSSS7000','NFIRSSS7000','7000','STD1080');
end;

procedure TUpdateForm.DoNJ8000;
begin
  AddNfirsSSField('NFIRSSS8000');
  AddToLookup('NFIRSSS8000','1','Solar equipment involved in start of fire');
  AddToLookup('NFIRSSS8000','2','Solar equipment involved in spread of fire');
  AddToLookup('NFIRSSS8000','3','Solar equipment present - Involvement undetermined');
  AddToNFIRSSS('Solar Equipment','4','NFIRSSS8000','NFIRSSS8000','8000','STD1080');
end;

procedure TUpdateForm.AddToNFIRSSS(Caption, SortOrd, TableName, FieldName, IDNumber, LookUpCode: String);
begin
  Open_Query('NFIRSSSSETUP',true,'SELECT * FROM NFIRSSSSETUP WHERE IDNUMBER = ' + AddExpr(IdNumber));
  If A('NFIRSSSSETUP').RecordsExist then
    GetTable('NFIRSSSSETUP').Edit
  else
    GetTable('NFIRSSSSETUP').Append;
  GetField('NFIRSSSSETUP','FDID').AsString       := mFireID;
  GetField('NFIRSSSSETUP','CAPTION').AsString    := Caption;
  GetField('NFIRSSSSETUP','SORTORD').AsString    := SortOrd;
  GetField('NFIRSSSSETUP','TABLENAME').AsString  := TableName;
  GetField('NFIRSSSSETUP','FIELDNAME').AsString  := FieldName;
  GetField('NFIRSSSSETUP','IDNUMBER').AsString   := IDNumber;
  GetField('NFIRSSSSETUP','LOOKUPCODE').AsString := LookUpCode;
  GetTable('NFIRSSSSETUP').Post;
  CloseApollo('NFIRSSSSETUP');
end;

procedure TUpdateForm.Do9244;
begin
  AddNfirsSSField('NFIRSSS9244');
  AddToLookup('NFIRSSS9244','1','Yes, Covid 19 was suspected.');
  AddToLookup('NFIRSSS9244','2','Yes, Covid 19 was confirmed.');
  AddToLookup('NFIRSSS9244','3','No, COVID 19 was not a factor.');
  AddToLookup('NFIRSSS9244','4','Unknown');
  AddToNFIRSSS('COVID 19 Discovery','3','NFIRSSS9244','NFIRSSS9244','9244','STD1080');
end;


procedure TUpdateForm.MiscellaneousClick(Sender: TObject);
var ReportCode : String;
    Descr      : String;
    CondForm   : String;
    ModCode    : String;
    Author     : String;
    SourceSec  : String;
    RNum       : Integer;
    IndRep     : Boolean;
    SortOrd    : Integer;
    bNewReport : Boolean;
    gisset     : TApolloData;
  procedure CheckCode(mTable,mCode,mDescr: String; iLevel: Integer);
  begin
  If SqlLookup(mcode,'CODE',mTable,'CODE')<>mcode then
    TableInsert(mTable,['CODE','DESCR','LEVELSQL'],[mcode,mdescr,ilevel]);
  end;

  procedure LoadNemsisCode(FieldName, Code, Descr: String);
  begin
    A('NEMSISCODE').UpdateSQL('SELECT * FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + AddExpr(Code));
    If Not A('NEMSISCODE').RecordsExist then begin
      GetTable('NEMSISCODE').Append;
      GetField('NEMSISCODE','FIELDNAME').AsString := FieldName;
      GetField('NEMSISCODE','CODE').AsString      := Code;
      GetField('NEMSISCODE','DESCR').AsString     := Descr;
      GetField('NEMSISCODE','ACTIVE').AsString    := 'Y';
      GetTable('NEMSISCODE').Post;
    end;
  end;

begin
  UpdateN5MobMake;

  RunSQL('UPDATE N5IGNCAUSE SET DESCR = ' + AddExpr('Cause, other (System generated code only, not used for data entry)') + ' WHERE CODE = ' + AddExpr('0'));

  LoadNIActive;
  LoadNITrainCat1Active;
  CheckNewSecurityFields;
  CheckForDuplicateNfirsAtt;
  CheckForDuplicateNIAtt;
  If not GlobalSilentMode then begin
    {
    If bNeedToConvertVoteHist and BooleanMessageDlg('Update needs to convert Vote History, proceed?') then
      ConvertVoteHist;
    }
  end;

  If SqlTableRecCount('SELECT COUNT(*) FROM FDID') = 0 then
    TableInsert('FDID',['FDID','MULTIINC','DEPTNAME'],[FIREID,'Y',FIREDEPT]);

  If SqlTableRecCount('SELECT COUNT(*) FROM SYSSET WHERE FDID = '+AddExpr(FIREID))=0 then
    TableInsert('SYSSET',['FDID'],[FIREID]);

  Open_Query('SEC',true,'SELECT * FROM SEC WHERE USERNAME = ' + AddExpr('ALPINE'));
  If A('SEC').RecordsExist then
    A('SEC').Edit
  else
    A('SEC').Append;
  GetField('SEC','LOGINCODE').AsString := 'ALPINE';
  GetField('SEC','USERNAME').AsString  := 'ALPINE';
  GetField('SEC','DESCR').AsString     := 'Alpine Internal Account';
  A('SEC').Post;
  CloseApollo('SEC');

  Open_Query('SYSREP',true,'SELECT * FROM SYSREP WHERE 1=2');
  Open_Query('SYSREPDESCR',False,'SELECT * FROM SYSREPDESCR');

  Open_Query('GETMOD',False,'SELECT MODCODE,TABLENAME FROM SYSTABLE');
  Open_Query('SYSMODULE',False,'SELECT MODCODE FROM SYSMODULE');

  AddToBox('Loading System Reports . . . . ');
  progressBar1.MaxValue := ReportManagerList.Count;
  progressBar1.Progress := 0;
  For RNum := 0 to ReportManagerList.Count-1 do begin
    progressBar1.Progress := progressBar1.Progress + 1;
    Application.ProcessMessages;
  
    ReportCode := alltrim(ReportManagerList[RNum]);
    Descr      := TReportObject(ReportManagerList.Objects[RNum]).Caption;
    CondForm   := TReportObject(ReportManagerList.Objects[RNum]).CondForm;
    Author     := TReportObject(ReportManagerList.Objects[RNum]).Author;
    IndRep     := TReportObject(ReportManagerList.Objects[RNum]).IndividualReport;
    ModCode    := TReportObject(ReportManagerList.Objects[RNum]).ModCode;
    SortOrd    := TReportObject(ReportManagerList.Objects[RNum]).SortOrd;
    SourceSec  := TReportObject(ReportManagerList.Objects[RNum]).SourceSec;
    bNewReport := False;

    A('SYSREP').UpdateSQL('SELECT * FROM SYSREP WHERE REPORTCODE = ' + AddExpr(ReportCode));
    If A('SYSREP').RecordsExist then begin
      A('SYSREP').Edit;
      If GetField('SYSREP','DATECREATE').AsDateTime = 0 then
        GetField('SYSREP','DATECREATE').AsString := '01/01/2010';
    end else begin
      AppendToLog('Adding Report');
      A('SYSREP').Append;
      GetField('SYSREP','DATECREATE').AsString := GetDateAsString;
      bNewReport := True;
    end;

    if IndRep then begin
      if A('GETMOD').ExactQueryLocate('TABLENAME',TReportObject(ReportManagerList.Objects[RNum]).TableName) then
        ModCode := tdbField('GETMOD','MODCODE');
      if ModCode ='' then
        AddTobox('Could not reconcile module for table '+TReportObject(ReportManagerList.Objects[RNum]).TableName+'.  Individual Report '+
          ReportCode+' will not work with security.  Ensure that table has a specified module in SYSTABLE.',True);
      GetField('SYSREP','INDIVIDUALREPORT').AsString := 'Y';
    end else begin
      GetField('SYSREP','INDIVIDUALREPORT').AsString := 'N';
      if not A('SYSMODULE').ExactQueryLocate('MODCODE',ModCode) then begin
        AddTobox('Could not reconcile module '+ModCode+' '+
          ReportCode+' will not work with security.  Ensure that Module is properly set in RegisterReport Function.',True);
        ModCode := '';
      end;
    end;

    Getfield('SYSREP','SYSREPTYPE').AsString := 'DELPHI';
    Getfield('SYSREP','REPORTCODE').AsString := ReportCode;
    GetField('SYSREP','DESCR').AsString      := Descr;
    GetField('SYSREP','MENUHEAD').AsString   := Descr;
    GetField('SYSREP','CONDFORM').AsString   := CondForm;
    GetField('SYSREP','SORTORD').AsInteger   := SortOrd;
    If ModCode <> '' then
      GetField('SYSREP','MODCODE').AsString    := ModCode;
    GetField('SYSREP','AUTHOR').AsString     := Author;
    If FireID <> '12345' then begin
      If A('SYSREPDESCR').ExactQueryLocate('REPORTCODE',ReportCode) then
        GetField('SYSREP','NARR').AsString       := GetField('SYSREPDESCR','NARR').AsString;
    end;

    GetField('SYSREP','TABLENAME').AsString  := TReportObject(ReportManagerList.Objects[RNum]).TableName;
    A('SYSREP').Post;
    if bNewReport and (SourceSec<>'') then begin
      AddReportSecurity(ReportCode,SourceSec);
      AppendToLog('Done Adding New report');
    end;

  end;
  CloseApollo('SYSREP');
  CloseApollo('SYSREPDESCR');
  CloseApollo('GETMOD');
  CloseApollo('SYSMODULE');
  appendtolog('Done Analyzing Reports');

  If (GlobalAdoconnection.TableType = MySqlTableType) or (GlobalAdoConnection.TableType=MSSqlTableType) then
    RunSql('TRUNCATE TABLE DROPPEDDATABASE');
  AddToBox('Loading System Reports . . . . Done');

  SetSysTool(self);

  If SqlLookup('87','CODE','N5ACTION','CODE')<>'87' then
    TableInsert('N5ACTION',['CODE','DESCR','LEVELSQL'],['87','Investigate fire out on arrival','2']);

  If SqlLookup('28','CODE','N5TYPMAT','CODE')<>'28' then
    TableInsert('N5TYPMAT',['CODE','DESCR','LEVELSQL'],['28','Ethanol','2']);

  If SqlLookup('0','CODE','N5IGNCAUSE','CODE')<>'0' then
    TableInsert('N5IGNCAUSE',['CODE','DESCR','LEVELSQL'],['0','Cause, other','1']);

  If SqlLookup('49','CODE','N5FACTREL','CODE')<>'49' then
    TableInsert('N5FACTREL',['CODE','DESCR','LEVELSQL'],['49','Criminal Activity','2']);

  If SqlLookup('877','CODE','N5EQUIP','CODE')<>'877' then
    TableInsert('N5EQUIP',['CODE','DESCR','LEVELSQL'],['877','Novelty lighter','3']);

  CheckCode('N5INCTYPE','244','Dust explosion (no fire)',3);
  CheckCode('N5INCTYPE','320','Emergency medical service incident, other',3);
  CheckCode('N5PROPUSE','632','Flight control tower',3);
  CheckCode('N5EQUIP','646','Range, stove with/without oven or cooking surface',3);
  CheckCode('N5FIRESUP','115','Solar panels',3);

  if MFireID = '81000' then begin
    CheckCode('N5GL','O','Other location',3);
    CheckCode('N5GL','1','In area of origin and not involved in starting the fire',3);
    CheckCode('N5GL','2','Not in area of origin and not involved in starting the fire',3);
    CheckCode('N5GL','3','Not in area of origin, but involved in starting the fire',3);
    CheckCode('N5GL','4','In area of ignition and involved in starting the fire',3);
    CheckCode('N5GL','U','Undertermined.',3);
  end;

  If (substr(ASCVAR,1,2) = 'NJ') then begin
    CheckCode('N5INCTYPE',  '500A','Service call other',4);
    CheckCode('N5INCTYPE',  '123A','Fire in a mobile building used as an amusement ride',4);
    CheckCode('N5INCTYPE',  '137A','Open amusement ride on wheels/trailer',4);
    CheckCode('N5INCTYPE',  '142M','Mulch Fire',4);
    CheckCode('N5INCTYPE',  '243A','Sparklers / Novelty Devices',4);
    CheckCode('N5PROPUSE',  '129A','Amusement Piers:  indoor/outdoor, except arcade',4);
    CheckCode('N5PROPUSE',  '129B','Boardwalk, ramp, and other elevated pedestrian walk',4);
    CheckCode('N5BLDSTATUS','2A',  'Illegal residential conversion',1);
    CheckCode('N5BLDSTATUS','2B',  'Overcrowding',1);
    CheckCode('N5IGNCAUSE', '3A',  'Lithium Ion Battery',1);
    CheckCode('N5FACTIGN', '30A',  'Lithium Ion Battery',2);
  end;


  RunSql('UPDATE N5MOBMAKE SET DESCR = '+AddExpr('Kubota') + ' WHERE CODE = '+Addexpr('KU'));

  CommonDisp.PropSetVar(GlobalAdoConnection);
  ImportAmericanDictionary;

  Open_Query('MCISET',true,'SELECT * FROM MCISET WHERE FDID = ' + AddExpr(FireID));
  If A('MCISET').RecordsExist and (tdbfield('MCISET','SETFOCUS') = '') then begin
    GetTable('MCISET').Edit;
    GetField('MCISET','SETFOCUS').AsString := 'Y';
    GetTable('MCISET').Post;
  end;
  CloseApollo('MCISET');

  if SqlLookup('OO','CODE','N5STATE','CODE')<>'OO' then
    TableInsert('N5STATE',['CODE','DESCR'],['OO','Other']);
  RunSql('DELETE FROM N5STATE WHERE CODE = '+Addexpr('00'));   // accidentally mixed up letter O with zero.

  ImportFIPSIntoNemsisCode;

  PopulateNFIRS('N5FIRSTIGNIT');
  PopulateNFIRS('N5TYPMAT');

  If substr(mFireID,1,2)='44' then begin
    AddPlusOne('N5INCTYPE','4','6001','Smoke from cooking activated smoke detector.');
    AddPlusOne('N5INCTYPE','4','7001','Workers activated fire alarm system in a residence.');
    AddPlusOne('N5INCTYPE','4','7002','Workers activated fire alarm system in commercial building.');
  end;

  If mFireid='14285' then begin  // Vermont
    AddPlusOne('N5INCTYPE','4','3111','Called Paramedic Intercept.');
    AddPlusOne('N5HEATSOURCE','3','541','Legal Vermont Fireworks');
    AddPlusOne('N5HEATSOURCE','3','542','Illegal Vermont Fireworks');
    AddPlusOne('N5HEATSOURCE','3','549','Fireworks Unknown');
    AddPlusOne('N5HEATSOURCE','3','611','"Fire Safe" Cigarettes');
    AddPlusOne('N5HEATSOURCE','3','612','Non-Fire Safe Cigarettes');
    AddPlusOne('N5HEATSOURCE','3','619','Cigarettes - Unknown');

    AddPlusOne('N5HEATSOURCE','3','411','Wood Chip');
    AddPlusOne('N5HEATSOURCE','3','412','Wood Log');
    AddPlusOne('N5HEATSOURCE','3','413','Wood Pellet');
    AddPlusOne('N5HEATSOURCE','3','419','Paper');

    AddPlusOne('N5HEATSOURCE','3','401','Corn');
    AddPlusOne('N5HEATSOURCE','3','402','Other');
  end;


  Open_Query('MCISET',true,'SELECT * FROM MCISET WHERE FDID = ' + AddExpr(FireID));
  If A('MCISET').RecordsExist and (tdbfield('MCISET','SETFOCUS') = '') then begin
    GetTable('MCISET').Edit;
    GetField('MCISET','SETFOCUS').AsString := 'Y';
    GetTable('MCISET').Post;
  end;
  CloseApollo('MCISET');

  Open_Query('SYSMODULESET',false,'SELECT * FROM SYSMODULESET WHERE FDID = ' + AddExpr(FireID));
  Open_Query('INVSERVFORM',true,'SELECT * FROM INVSERVFORM WHERE 1=2');

  LoadInvServForm('HOSETEST','Hose Test',           'HOSE');
  LoadInvServForm('HOSEINSP','Hose Inspection',     'HOSE');
  LoadInvServForm('HOSESERV','Hose Service',        'HOSE');
  LoadInvServForm('APPSERV', 'Apparatus Service',   'APP');
  LoadInvServForm('APPINSP', 'Apparatus Inspection','APP');
  LoadInvServForm('GENINSP', 'Inventory Inspection','INV');
  LoadInvServForm('GENSERV', 'Inventory Service',   'INV');
  LoadInvServForm('SCBAINSP','SCBA Inspection',     'SCBA');
  LoadInvServForm('SCBASERV','SCBA Service',        'SCBA');
  LoadInvServForm('STAINSP', 'Station Inspection','  INV');
  LoadInvServForm('STASERV', 'Station Service',     'INV');

  CloseApollo('INVSERVFORM');
  CloseApollo('SYSMODULESET');

  RunSql('DELETE FROM SECFIELD WHERE SECFIELD = ' + AddExpr('PERSHIDDEN'));
  RunSql('DELETE FROM SYSREP WHERE REPORTCODE = ' + Addexpr('SCHDVACFORM') + ' AND CONDFORM = ' + AddExpr('SCHDREQCOND'));
  If SubStr(ASCVAR,1,2)='NJ' then begin
    If Not (ASCVAR = 'NJ07130') then
      DoNJ8000;
    If (ASCVAR = 'NJ12113') or (ASCVAR = 'NJ09007') or (ASCVAR = 'NJ07110') or (ASCVAR = 'NJ12309') or (ASCVAR = 'NJ07170') or (ASCVAR = 'NJ08100') then begin
      DoNJ6000;
      DoNJ6100;
      DoNJ7000;
    end;
    If (ASCVAR = 'NJ07140') then begin
      DoNJ6000;
    end;
    if ASCVAR = 'NJ02480' then begin
      DoNJ6000;
      DoNJ7000;
    end;
  end;
  If (ASCVAR = 'NY28023') then
    DoNJ6100;
  Do9244;

  RunSql('DELETE FROM IMAGEPROP WHERE IMAGELISTID IS NULL');

  If (sqllookup(mfireid,'fdid','dispset','AUTOTYPEID')<>'')  and
    (sqltablereccount('select count(*) from dispstatcode where sortord > 0')>0) and
    (sqltablereccount('select count(*) from dispstatcode where sortord > 0 and endcard = '+AddExpr('Y'))=0) then
      AddTobox('Note - "Autocredit Point Type" is set in dispatch setup; but none of the DISPSTATCODE have "Print End of Alarm" set on.  Apparatus Autocredit will not be implemented at time of dispatch.',True);

  If (SubStr(ASCVAR,1,2) = 'NY') then begin
    Open_Query('NEMSISCODE',true,'SELECT * FROM NEMSISCODE WHERE 1=2');

    LoadNemsisCode('E06_10','-25','Not Applicable');
    LoadNemsisCode('E06_10','-20','Not Recorded');
    LoadNemsisCode('E06_10','-15','Not Reporting');
    LoadNemsisCode('E06_10','-10','Not Known');
    LoadNemsisCode('E06_10','-5', 'Not Available');

    LoadNemsisCode('E06_16','-25','Not Applicable');
    LoadNemsisCode('E06_16','-20','Not Recorded');
    LoadNemsisCode('E06_16','-15','Not Reporting');
    LoadNemsisCode('E06_16','-10','Not Known');
    LoadNemsisCode('E06_16','-5', 'Not Available');

    LoadNemsisCode('E16_04','-25','Not Applicable');
    LoadNemsisCode('E16_04','-20','Not Recorded');
    LoadNemsisCode('E16_04','-15','Not Reporting');
    LoadNemsisCode('E16_04','-10','Not Known');
    LoadNemsisCode('E16_04','-5', 'Not Available');
    LoadNemsisCode('E16_04','3420','Normal');
    LoadNemsisCode('E16_04','3425','Not Done');
    LoadNemsisCode('E16_04','3430','Clammy');
    LoadNemsisCode('E16_04','3435','Cold');
    LoadNemsisCode('E16_04','3440','Cyanotic');
    LoadNemsisCode('E16_04','3445','Jaundiced');
    LoadNemsisCode('E16_04','3450','Lividity');
    LoadNemsisCode('E16_04','3455','Mottled');
    LoadNemsisCode('E16_04','3460','Pale');
    LoadNemsisCode('E16_04','3465','Warm');

    LoadNemsisCode('E12_20','-25','Not Applicable');
    LoadNemsisCode('E12_20','-20','Not Recorded');
    LoadNemsisCode('E12_20','-15','Not Reporting');
    LoadNemsisCode('E12_20','-10','Not Known');
    LoadNemsisCode('E12_20','-5','Not Available');
    LoadNemsisCode('E12_20','0','No');
    LoadNemsisCode('E12_20','1','Yes');

    LoadNemsisCode('E10_07','-25', 'Not Applicable');
    LoadNemsisCode('E10_07','-20', 'Not Recorded');
    LoadNemsisCode('E10_07','-15', 'Not Reporting');
    LoadNemsisCode('E10_07','-10', 'Not Known');
    LoadNemsisCode('E10_07','-5',  'Not Available');
    LoadNemsisCode('E10_07','2145','Driver');
    LoadNemsisCode('E10_07','2150','Left (non-driver)');
    LoadNemsisCode('E10_07','2155','Middle');
    LoadNemsisCode('E10_07','2160','Other');
    LoadNemsisCode('E10_07','2165','Right');

    CloseApollo('NEMSISCODE');
  end;

  CheckRedundantIntersections;

  GisSet := open_query('select * from gisset');
  while not GisSet.eof do begin
    If tdbfield(gisset,'kmllayer')<> '' then begin
      If sqltablereccount('select count(*) from kmllayers where gissetid = '+tdbfield(gisset,'gissetid')+' and url ='+AddExpr(tdbfield(gisset,'kmllayer')))=0 then begin
        If TableInsert('kmllayers',['url','gissetid','lowerzoom','upperzoom'],[tdbfield(gisset,'kmllayer'),tdbfield(gisset,'gissetid'),'20','17']) then
          RunSql('update gisset set kmllayer='+AddExpr('')+' where gissetid = '+tdbfield(gisset,'gissetid'));
      end;
    end;
    GisSet.next;
  end;
  GisSet.free;
  AnalyzeStreetAliases;

  UpdateInvInspType;
  LoadPageListActive;

//If mSupportTables = 'Alpine Server' then
//  LoadBulletinTables;

  AddToBox('Done with Miscellaneous');
  Application.ProcessMessages;
end;

procedure TUpdateForm.LoadBulletinTables;
begin
  Open_Query('BULLETINPROFILE',false,'SELECT * FROM BULLETINPROFILE');
  While Not A('BULLETINPROFILE').Eof do begin
    A('BULLETINPROFILE').Skip(1);
  end;
  CloseApollo('BULLETINPROFILE');
end;

procedure TUpdateForm.UpdateInvInspType;
Var SQLStat : String;
begin
  AddToBox('Updating INVSERVTYPE field SQLSTAT . . . . . . ');
  Open_Query('INVSERVTYPE',true,'SELECT * FROM INVSERVTYPE');
  While Not A('INVSERVTYPE').Eof do begin
    GetTable('INVSERVTYPE').Edit;
    SQLStat := alltrim(SearchAndReplace(GetField('INVSERVTYPE','SQLSTAT').AsString,'INVSERVTYPESTATUS','INVSERVSTATUS'));
    If Not (SQLStat = '') then begin
      GetField('INVSERVTYPE','SQLSTAT').AsString := SQLStat;
      AddToBox('Updated INVSERVTYPE where code = ' + tdbfield('INVSERVTYPE','CODE'));
    end;
    If tdbfield('INVSERVTYPE','ACTIVE') = '' then begin
      GetField('INVSERVTYPE','ACTIVE').AsString := 'Y';
    end;
    GetTable('INVSERVTYPE').Post;
    A('INVSERVTYPE').Skip(1);
  end;
  CloseApollo('INVSERVTYPE');
  AddToBox('Updating INVSERVTYPE field SQLSTAT . . . . . . Done');
end;

procedure TUpdateForm.UpdateN5MobMake;
begin

  If CheckTableExists(GlobalUpdateDatabase, 'N5MOBMAKE', GlobalUpdateDatabase.TableType)  then begin
    Open_Query(GlobalUpdateDatabase,'LIBN5MOBMAKE',false,'SELECT * FROM N5MOBMAKE ORDER BY DESCR');
    Open_Query('N5MOBMAKE',true,'SELECT * FROM N5MOBMAKE ORDER BY DESCR');

    If (A('N5MOBMAKE').QueryRecCount < 174) then begin
      AddToBox('Updating N5MOBMAKE table . . . . ');

      While Not A('LIBN5MOBMAKE').Eof do begin
        If Not A('N5MOBMAKE').ExactQueryLocate('CODE',tdbfield('LIBN5MOBMAKE','CODE')) then begin
          TableInsert('N5MOBMAKE',['CODE','DESCR','LEVELSQL'],[tdbfield('LIBN5MOBMAKE','CODE'),tdbfield('LIBN5MOBMAKE','DESCR'),'2']);
          AddToBox('Updating N5MOBMAKE table with ' + tdbfield('LIBN5MOBMAKE','CODE') + '-' + tdbfield('LIBN5MOBMAKE','DESCR'));
        end;
        A('LIBN5MOBMAKE').Skip(1);
      end;

      AddToBox('Updating N5MOBMAKE table . . . . Done');
    end;

    CloseApollo('LIBN5MOBMAKE');
    CloseApollo('N5MOBMAKE');
  end;
end;

procedure TUpdateForm.AnalyzeStreetAliases;
var street      : TApolloData;
    streetalias : TApolloData;
    mAlias      : String;
    mString     : String;
    iStrCount   : Integer;
    iAliasCount : Integer;
begin
  try
    street := open_query('select * from street order by street');
    streetalias := open_query('select * from streetalias order by streetalias');
    progressbar1.MaxValue := street.queryreccount;
    progressbar1.progress := 0;
    while not street.eof do begin
      progressbar1.progress := progressbar1.progress+1;     
      if StreetAlias.ExactQueryLocate('streetalias',tdbfield(street,'street')) then begin
        mAlias := sqllookup(tdbfield(streetalias,'streetid'),'streetid','street','street');
        iStrCount := sqltablereccount('select count(*) from prop where street = '+edbfield(street,'street'));
        iAliasCount := sqltablereccount('select count(*) from prop where street = '+AddExpr(mAlias));
        mString := 'Note: '+tdbfield(street,'street')+' is listed as a street AND an ALIAS to '+mAlias;
        if iStrCount=0 then
          AddTobox(mString+'  There are no properties with streetname '+tdbfield(street,'street')+'; consider deleting it from STREET table!' ,True)
        else
          AddTobox(mString);
      end;
      application.processmessages;
      street.next;
    end;
  finally
    streetalias.free;
  end;
end;

procedure TUpdateForm.CheckRedundantIntersections;
var prop     : TApolloData;
    propint  : TApolloData;
    iPropInt : Integer;
    bCheckIt : Boolean;
    mSql     : String;
    street   : TStringList;
    cross1   : TStringList;

  function CheckIt(mField: String; iCharToCheck: Integer=0): Boolean;
  begin
    if iCharToCheck=0 then
      result := tdbfield(prop,mField)<>tdbfield(propint,mField)
    else
      result := substr(tdbfield(prop,mField),1,iCharToCheck)<>substr(tdbfield(propint,mField),1,iCharToCheck);
  end;
  function SayProp(mTable: TApolloData): String;
    function SayField(mField: String): String;
    begin
      result := mField+':'+tdbfield(mTable,mField);
    end;
  begin
    result := '  -->'+SayField('Street')+','+SayField('Cross1')+','+SayField('City')+','+SayField('Zip')+','+SayField('Latitude');
  end;
begin
  iPropInt := anystrtoint(sqllookup(mfireid,'fdid','propset','propint'));
  if iPropInt = 0 then
    exit;
  mSql := 'select fdid,propid,street,cross1,city,zip,latitude,longitude from prop where proptypeid = '+inttostr(iPropint);
  try
    prop                  := open_query(mSql);
    propint               := open_query(mSql);
    street                := TStringList.Create;
    cross1                := TStringList.Create;
    progressbar1.MaxValue := propint.queryreccount;
    progressbar1.progress := 0;

    while not prop.eof do begin
      progressbar1.progress := progressbar1.progress +1;
      application.processmessages;
      if propint.exactquerylocate(['fdid','cross1','street'],[tdbfield(prop,'fdid'),tdbField(prop,'street'),tdbField(prop,'cross1')])
        and (street.IndexOf(tdbField(prop,'cross1'))=-1) and (cross1.IndexOf(tdbField(prop,'street'))=-1) then begin
        bCheckIt :=  CheckIt('city') or CheckIt('zip') or CheckIt('latitude',7);
        appendtolog('Possible Redundant Intersection:'+tdbField(prop,'street')+'/'+tdbField(prop,'cross1')+' Different Data:'+iif(bCheckIt,'Yes','No'));
        street.Add(tdbField(prop,'street'));
        cross1.Add(tdbField(prop,'cross1'));
        if bCheckIt then begin
          AppendtoLog(SayProp(prop));
          AppendtoLog(SayProp(propint));
          appendtolog('');
        end;
      end;
      prop.next;
    end;
  finally
    prop.free;
    propint.free;
    street.free;
    cross1.Free;
  end;
end;


procedure TUpdateForm.LoadInvServForm(InvServForm, Descr, ModCode: String);
begin
  If A('SYSMODULESET').ExactQueryLocate('MODCODE',ModCode) then begin
    A('INVSERVFORM').UpdateSQL('SELECT * FROM INVSERVFORM WHERE CODE = ' + AddExpr(InvServForm));
    If A('INVSERVFORM').RecordsExist then
      A('INVSERVFORM').Edit
    else
      A('INVSERVFORM').Append;
    GetField('INVSERVFORM','CODE').AsString  := InvServForm;
    GetField('INVSERVFORM','DESCR').AsString := Descr;
    A('INVSERVFORM').Post;
  end;
end;

procedure TUpdateForm.CheckForDuplicateNfirsAtt;
var vwnfirsatt   : TApolloData;
    nfirsatt     : TApolloData;
    mFileName    : String;
    iRecCount    : Integer;
    iNfirsMainid : Integer;
    iPersid      : Integer;
begin
  If GlobalAdoConnection.TableType<>MSSqlTableType then
    exit;
  try
    nfirsatt := open_query('SELECT nfirsmainid,persid, count(*)  FROM nfirsatt  where  not (persid is null) GROUP BY  nfirsmainid,persid  HAVING count(*) > 1   order by nfirsmainid,persid desc');
    iRecCount := nfirsatt.QueryRecCount;
    if iRecCount>0 then begin
      mFileName := ExtractFileDir(ParamStr(0))+'\duplicatenfirsatt.txt';
      DeleteFile(mFileName);
      AddTobox('Found '+inttostr(iRecCount)+' instances where NFIRSATT was duplicated for individual personnel.  Please see file '+mFileName+'.  There is a utility to purge duplicates in the Alpine Setup',True);
      iNfirsmainid := -1;
      iPersid := -1;

      while not nfirsatt.eof do begin
        if (iNfirsmainid <> getfield(nfirsatt,'nfirsmainid').AsInteger) or (iPersid <> getfield(nfirsatt,'persid').AsInteger) then begin
          iNfirsmainid := getfield(nfirsatt,'nfirsmainid').AsInteger;
          iPersid := getfield(nfirsatt,'persid').AsInteger;
          try
            vwnfirsatt := open_query('select nfirsatt.point,pers.lname,pers.fname,nfirsmain.incnum from nfirsatt '+
              ' left outer join nfirsmain on (nfirsmain.nfirsmainid = nfirsatt.nfirsmainid) '+
              ' left outer join pers on (pers.persid = nfirsatt.persid) '+
              ' where nfirsatt.nfirsmainid = '+pkValue(tdbfield(nfirsatt,'nfirsmainid'))+' and nfirsatt.persid = '+pkValue(tdbfield(nfirsatt,'persid')));
            while not vwnfirsatt.eof do begin
              AppendStringToFile(mFileName,padr(tdbfield(vwnfirsatt,'incnum'),12,' ')+' '+padr(tdbfield(vwnfirsatt,'lname')+','+tdbfield(vwnfirsatt,'fname'),28,' ')+padr(GetField(vwnfirsatt,'point').AsString,5,' '));
              vwnfirsatt.next;
            end;

          finally
            vwnfirsatt.free;
          end;
          application.processmessages;  
        end;
        nfirsatt.next;
      end;
    end;
  finally
    nfirsatt.free;
  end;
end;

procedure TUpdateForm.CheckForDuplicateNIAtt;
var vwniatt   : TApolloData;
    niatt     : TApolloData;
    mFileName : String;
    iRecCount : Integer;
    iNIid     : Integer;
    iPersid   : Integer;
begin
  If GlobalAdoConnection.TableType<>MSSqlTableType then
    exit;
  appendtolog('CheckForDuplicateNIAtt');
  try
    niatt := open_query('SELECT NIid,persid, count(*)  FROM niatt  where  not (persid is null) GROUP BY  NIid,persid  HAVING count(*) > 1   order by NIid,persid desc');
    iRecCount := niatt.QueryRecCount;
    if iRecCount>0 then begin
      mFileName := ExtractFileDir(ParamStr(0))+'\duplicateniatt.txt';
      DeleteFile(mFileName);
      AddTobox('Found '+inttostr(iRecCount)+' instances where niatt was duplicated for individual personnel.  Please see file '+mFileName,True);
      iNIid := -1;
      iPersid := -1;

      while not niatt.eof do begin
        if (iNIid <> getfield(niatt,'NIid').AsInteger) or (iPersid <> getfield(niatt,'persid').AsInteger) then begin
          iNIid := getfield(niatt,'NIid').AsInteger;
          iPersid := getfield(niatt,'persid').AsInteger;
          vwniatt := open_query('select niatt.point,pers.lname,pers.fname,NI.datetimestart,ni.descr from niatt '+
            ' left outer join NI on (NI.NIid = niatt.NIid) '+
            ' left outer join pers on (pers.persid = niatt.persid) '+
            ' where niatt.NIid = '+pkValue(tdbfield(niatt,'NIid'))+' and niatt.persid = '+pkValue(tdbfield(niatt,'persid')));
          while not vwniatt.eof do begin
            AppendStringToFile(mFileName,padr(formatdatetime('mm/dd/yyyy',getfield(vwniatt,'datetimestart').AsDateTime)+'-'+tdbfield(vwniatt,'descr'),40,' ')+' '+padr(tdbfield(vwniatt,'lname')+','+tdbfield(vwniatt,'fname'),28,' ')+padr(GetField(vwniatt,'point').AsString,5,' '));
            vwniatt.next;
          end;
          vwniatt.free;
        end;
        niatt.next;
      end;
    end;
  finally
    niatt.free;
  end;
  appendtolog('Done CheckForDuplicateNIAtt');  
end;


procedure TUpdateForm.PopulateNfirs(mTable: String);
var source,dest: TApolloData;
begin
  if TableRecCount(mTable+'2') = 0 then begin
    try
      AddTobox('Populating table '+mTable+'2');
      source := open_query('select * from '+mTable);
      dest   := open_query(True,'select * from '+mTable+'2');
      while not source.eof do begin
        if tdbfield(source,'code')<>'99' then begin
          dest.insert;
          getfield(dest,'levelsql').AsString := getfield(source,'levelsql').AsString;
          getfield(dest,'code').AsString     := getfield(source,'code').AsString;
          getfield(dest,'descr').AsString    := getfield(source,'descr').AsString;
          dest.post;
        end;
        source.next;
      end;
      AddTobox('Done Populating table '+mTable+'2');      
    finally
      source.free;
      dest.free;
    end;
  end;

end;


procedure TUpdateForm.PromptOnFieldShrinkClick(Sender: TObject);
begin
  GlobalPromptOnFieldShrink := PromptOnFieldShrink.Checked;
end;

procedure TUpdateForm.ImportFipsIntoNemsisCode;
  procedure DoIt(mCode,mDescr: String);
  begin
    mcode := alltrim(mcode);
    mDescr := alltrim(mDescr);
    A('NEMSISCODE').ExactQueryLocateAndPutInEditMode(['CODE'],[mCode]);
    GetField('NEMSISCODE','FIELDNAME').AsString := 'E06_18';
    GetField('NEMSISCODE','CODE').AsString := mcode;
    GetField('NEMSISCODE','DESCR').AsString := mDescr;
    GetTable('NEMSISCODE').Post;
  end;
begin
  Open_query('NEMSISCODE',True,'SELECT * FROM NEMSISCODE WHERE FIELDNAME= '+AddExpr('E06_18'));

  DoIt(' 01',' Alabama                  ');
  DoIt(' 02',' Alaska                   ');
  DoIt(' 04',' Arizona                  ');
  DoIt(' 05',' Arkansas                 ');
  DoIt(' 06',' California               ');
  DoIt(' 08',' Colorado                 ');
  DoIt(' 09',' Connecticut              ');
  DoIt(' 10',' Delaware                 '); 
  DoIt(' 11',' District of Columbia     ');
  DoIt(' 12',' Florida                  ');
  DoIt(' 13',' Georgia                  ');
  DoIt(' 15',' Hawaii                   ');
  DoIt(' 16',' Idaho                    ');
  DoIt(' 17',' Illinois                 ');
  DoIt(' 18',' Indiana                  ');
  DoIt(' 19',' Iowa                     ');
  DoIt(' 20',' Kansas                   ');
  DoIt(' 21',' Kentucky                 ');
  DoIt(' 22',' Louisiana                ');
  DoIt(' 23',' Maine                    ');
  DoIt(' 24',' Maryland                 ');
  DoIt(' 25',' Massachusetts            ');
  DoIt(' 26',' Michigan                 ');
  DoIt(' 27',' Minnesota                ');
  DoIt(' 28',' Mississippi              ');
  DoIt(' 29',' Missouri                 ');
  DoIt(' 30',' Montana                  ');
  DoIt(' 31',' Nebraska                 ');
  DoIt(' 32',' Nevada                   ');
  DoIt(' 33',' New Hampshire            ');
  DoIt(' 34',' New Jersey               ');
  DoIt(' 35',' New Mexico               ');
  DoIt(' 36',' New York                 ');
  DoIt(' 37',' North Carolina           ');
  DoIt(' 38',' North Dakota             ');
  DoIt(' 39',' Ohio                     ');
  DoIt(' 40',' Oklahoma                 ');
  DoIt(' 41',' Oregon                   ');
  DoIt(' 42',' Pennsylvania             ');
  DoIt(' 44',' Rhode Island             ');
  DoIt(' 45',' South Carolina           ');
  DoIt(' 46',' South Dakota             ');
  DoIt(' 47',' Tennessee                ');
  DoIt(' 48',' Texas                    ');
  DoIt(' 49',' Utah                     ');
  DoIt(' 50',' Vermont                  ');
  DoIt(' 51',' Virginia                 ');
  DoIt(' 53',' Washington               ');
  DoIt(' 54',' West Virginia            ');
  DoIt(' 55',' Wisconsin                ');
  DoIt(' 56',' Wyoming                  ');
  DoIt(' 72',' Puerto Rico              ');
  CloseApollo('NEMSISCODE');
end;

class procedure TUpdateform.AddPlusOne(mtable,levelsql,code,descr: String);
begin
  open_query('N5CODE',True,'SELECT * FROM '+mTable+' WHERE CODE = '+AddExpr(code));
  a('N5CODE').PutInUpdateMode;
  GetField('N5CODE','LEVELSQL').AsString := LevelSql;
  GetField('N5CODE','code').AsString     := code;
  GetField('N5CODE','descr').AsString    := descr;
  GetTable('N5CODE').Post;
  CloseApollo('N5CODE');
end;

procedure TUpdateform.CreateNfirsAppTimesView;
var msql,mBaseTable : String;
    mTimes          : TSTringList;
    mdispstatcodeid : TStringList;
    i               : Integer;
    mNfirsAppid     : String;
    bIncludeDisp    : Boolean;


  procedure AddCode;
  var mCode           : String;
  begin
    mCode := SearchAndReplace(tdbfield('DISPSTATCODE','CODE'),' ','_');
    mcode := SearchAndReplace(mCode,'/','_');
    mTimes.Add(mCode);
    mdispstatcodeid.Add(tdbfield('DISPSTATCODE','DISPSTATCODEID'));
  end;

  procedure CheckIt(mID: String);
  begin
    if anystrtoint(mid)>0 then begin
      if A('DISPSTATCODE').ExactQueryLocate('dispstatcodeid',mid) then begin
        if mTimes.IndexOf(tdbfield('DISPSTATCODE','CODE'))=-1 then
          AddCode;
      end;
    end;  
  end;

begin
  If ( mFireid = '81000') then begin
    mBaseTable := 'VWDISPHIST_UNITNUM';
    if CheckViewExists(FUpdateDatabase,'VWDISPHIST_UNITNUM') then
      RunSql('DROP VIEW VWDISPHIST_UNITNUM');
    RunSql('CREATE VIEW VWDISPHIST_UNITNUM AS select NFIRSMAINID,UNITNUM,DISPCALLID FROM DISPHIST '+
      'WHERE NOT (UNITNUM IS NULL) AND NOT (UNITNUM = '+AddExpr('')+') GROUP BY NFIRSMAINID,DISPCALLID,UNITNUM');
    mNfirsAppid := '';
    bIncludeDisp := False;
  end else begin
    mBaseTable   := 'NFIRSAPP';
    mNfirsAppid  := 'NFIRSAPP.NFIRSAPPID,';
    bIncludeDisp := True;
  end;
  If CheckViewExists(FUpdateDatabase,'VWNFIRSAPPTIMES') then
    RunSql('DROP VIEW VWNFIRSAPPTIMES');

  mTimes := TStringList.Create;
  mdispstatcodeid := TStringList.Create;

  Open_Query('DISPSTATCODE',False,'SELECT SORTORD,CODE,DISPSTATCODEID FROM DISPSTATCODE WHERE SORTORD > 0');
  while not A('DISPSTATCODE').eof do begin
    if getfield('DISPSTATCODE','SORTORD').AsInteger > 0 then
      AddCode
    else begin
      CheckIt(TimeDispID);
      CheckIt(TimeOutID);
      CheckIt(TimeArrID);
      CheckIt(TimeContID);
      CheckIt(TimeInID);
      CheckIt(TimePatID);
      CheckIt(TimeEnrHospID);
      CheckIt(TimeAtHospID);
      CheckIt(TimeClrHospID);
    end;
    A('DISPSTATCODE').Skip(1);
  end;
  CloseApollo('DISPSTATCODE');

  mSql := 'CREATE VIEW VWNFIRSAPPTIMES AS SELECT '+mnfirsappid+mBaseTable+'.DISPCALLID,'+mBaseTable+'.UNITNUM,'+
          'INV.FDID UNIT_FDID,N5DISTRICT.CODE DISTRICT,NFIRSMAIN.STRNUM,NFIRSMAIN.STREET,NFIRSMAIN.ROOMAPT,NFIRSMAIN.CITY,NFIRSMAIN.ZIP, '+
          'DISPCALL.LATITUDE,DISPCALL.LONGITUDE, NFIRSAPP.MILESTART, NFIRSAPP.MILEEND, NFIRSAPP.MILETRAVEL, ' + 
          'NFIRSMAIN.NFIRSMAINID,NFIRSMAIN.FDID,NFIRSMAIN.INCNUM, DISPCALL.DATETIMEREC, '+
          'NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEOUT, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMECONT, NFIRSMAIN.DATETIMEIN, NFIRSMAIN.SITFOUND,'+
          'DISPCALLTYPE.CODE DISPCALLTYPECODE,DISPSUBTYPE.CODE DISPSUBTYPECODE, DISPBOX.CODE DISPBOXCODE, SCHDSHIFTNAME.CODE SCHDSHIFTNAME, ';
  If bIncludeDisp then
    mSql := mSql + 'NFIRSAPPDISP.CODE NFIRSAPPDISP_CODE,NFIRSAPPDISP.DESCR NFIRSAPPDISP_DESCR, ';
  mSql := mSql + 'INVSUBTYPE.CODE INVSUBTYPECODE,';

  for i:= 0 to mTimes.count - 1 do begin
    mSql := mSql + ' DISPHIST_'+mTimes[i]+'.DATETIMESTAT DATETIME_'+mTimes[i];
    If i < mTimes.count-1 then
      mSql := mSql + ', ';
  end;

  mSql := mSql + ' FROM  '+mBaseTable+' ';
  mSql := mSql + ' LEFT OUTER JOIN NFIRSMAIN ON (NFIRSMAIN.NFIRSMAINID = '+mBaseTable+'.NFIRSMAINID) ';
  if mFireID = '81000' then
    mSql := mSql + ' LEFT OUTER JOIN NFIRSAPP ON  (NFIRSMAIN.NFIRSMAINID = NFIRSAPP.NFIRSMAINID)';
  mSql := mSql + ' LEFT OUTER JOIN N5DISTRICT ON (NFIRSMAIN.N5DISTRICTID=N5DISTRICT.N5DISTRICTID) ';
  mSql := mSql + ' LEFT OUTER JOIN DISPBOX ON (NFIRSMAIN.DISPBOXID = DISPBOX.DISPBOXID) ';
  mSql := mSql + ' LEFT OUTER JOIN INV ON (INV.UNITNUM = '+mBaseTable+'.UNITNUM) ';
  mSql := mSql + ' LEFT OUTER JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID) ';
  mSql := mSql + ' LEFT OUTER JOIN DISPCALL ON (NFIRSMAIN.DISPCALLID=DISPCALL.DISPCALLID) ';
  mSql := mSql + ' LEFT OUTER JOIN DISPCALLTYPE ON (DISPCALLTYPE.DISPCALLTYPEID=DISPCALL.DISPCALLTYPEID) ';
  mSql := mSql + ' LEFT OUTER JOIN DISPSUBTYPE ON (DISPSUBTYPE.DISPSUBTYPEID=DISPCALL.DISPSUBTYPEID) ';
  if bIncludeDisp then
    mSql := mSql + ' LEFT OUTER JOIN NFIRSAPPDISP ON (NFIRSAPPDISP.NFIRSAPPDISPID=NFIRSAPP.NFIRSAPPDISPID) ';
  mSql := mSql + ' LEFT OUTER JOIN SCHDSHIFTNAME ON (NFIRSMAIN.SCHDSHIFTNAMEID=SCHDSHIFTNAME.SCHDSHIFTNAMEID) ';
  for i:= 0 to mTimes.Count -1 do
    mSql := mSql +' LEFT OUTER JOIN DISPHIST DISPHIST_'+mTimes[I]+' ON ('+mBaseTable+'.DISPCALLID = DISPHIST_'+mTimes[i]+
    '.DISPCALLID AND '+mBaseTable+'.UNITNUM = DISPHIST_'+mTimes[i]+'.UNITNUM AND DISPHIST_'+mTimes[i]+'.DISPSTATCODEID = '+mdispstatcodeid[i]+')';

  appendtolog(msql);
  if mTimes.Count>0 then begin
    if RunSql(mSql) then
      AddToBox('Created VWNFIRSAPPTIMES View')
    else
      AddToBox('Failed to Create VWNFIRSAPPTIMES View.  SQL is:'+mSql,True);
  end;
end;

procedure TUpdateform.ImportAmericanDictionary;
var mFileName     : String;
    mLastUpdate   : TDateTime;
    mFileDateTime : TDateTime;
begin
  If GlobalAdoConnection.TableType=OracleTableType then
    exit;
  mFileName := ExtractFileDir(ParamStr(0))+'\american.adm';
  if fileexists(mFileName) then begin
    try
      Open_Query('SYSDICTIONARY',False,'SELECT UPDATEDATETIME FROM SYSDICTIONARY WHERE CODE = '+AddExpr('AMERICAN'));
      mLastUpdate := GetField('SYSDICTIONARY','UPDATEDATETIME').AsDateTime;
    finally
      CloseApollo('SYSDICTIONARY');
    end;
    mFileDateTime := FileDateToDateTime(FileAge(mFileName));
    if (mFileDateTime > mLastUpdate) and (mFileDateTime >0) then begin
      try
        AddToBox('Importing American.adm');
        Open_Query('SYSDICTIONARY',True,'SELECT * FROM SYSDICTIONARY WHERE CODE = '+AddExpr('AMERICAN'));
        PutInUpdateMode('SYSDICTIONARY');
        GetField('SYSDICTIONARY','CODE').AsString := 'AMERICAN';
        GetField('SYSDICTIONARY','UPDATEDATETIME').AsDateTime := mFiledateTime;
        TBlobField(A('SYSDICTIONARY').FieldByName('DICTBLOB')).LoadFromFile(mFilename);
        GetTable('SYSDICTIONARY').Post;
        AddToBox('Done Importing Amerian.adm');
      finally
        Closeapollo('SYSDICTIONARY');
      end;
    end;
  end;
end;

procedure TUpdateForm.CustomPanelDblClick(Sender: TObject);
begin
  CreateNfirsAppTimesView;
end;

procedure TUpdateForm.SetSysTool(Sender: TObject);
begin
  {$IFDEF REDNMX}
  AddToBox('Set SYSTOOL Table . . ');
  TToolBarForm.SetSysTool(self);
  AddToBox('Set SYSTOOL Table . . Done');
  {$ENDIF}
end;

procedure TUpdateForm.StatusLabelDblClick(Sender: TObject);
begin
  saydatabasedrops;
end;

procedure TUpdateForm.CustSpecButtonClick(Sender: TObject);
begin
  {$IFDEF REDNMX}
  TCustomUpdate.DoCustomProcedures(self);
  AddtoBox(' - Done with Custom Updates');
  {$ENDIF}
end;

procedure TUpdateForm.DropForeignKeysButtonClick(Sender: TObject);
var i: Integer;
begin
  if FCancelState then
    exit;
  AddToBox(' - Begin Dropping Foreign Keys');
  if VerifySingleTable.Text <>'' then begin
    AddTobox(' - Dropping FK on '+VerifySingleTable.Text);
    CommonProcessFK(VerifySingleTable.Text, GlobalBaseTablesObject,BooleanMessageDlg('Drop FK on Tables Referencing this Table?'),Listbox1)
  end else begin
    if FAsciiDefs.Count>0 then begin
      for i:= 0 to FAsciiDefs.Count - 1 do begin
        AddTobox(' - Dropping FK on '+FAsciiDefs[i]);
        progressbar1.progress := i;
        CommonProcessFK(FAsciiDefs[i],False,Listbox1)
      end;
    end;
  end;  
  AddToBox(' - Done Dropping Foreign Keys');
end;

procedure TUpdateForm.ImportHazMatButtonClick(Sender: TObject);
Var HazMatMDB : String;

  procedure ImportHazMat(mTable: String);
  var mAsciiTableDef  : TTableDef;
      iTable          : Integer;
      FHazmatDatabase : TAlpineAdoConnection;
  begin
    SetDbDef(mTable,False,False);
    FHazMatDatabase := CreateAccessDataBase(self,ExtractFileDir(ParamStr(0))+'\hazmat.mdb');
    ImportAccessSupportTable(FHazMatDataBase,progressbar1,mTable);
    Exit;

    {
    SetDbDef(mTable,False,False);
    iTable := FAsciiDefs.IndexOf(mTable);
    if iTable>-1 then begin
      mAsciiTableDef := TTableDef(FAsciiDefs.Objects[iTable]);
      mAsciiTableDef.Indexes.Clear;
      mAsciiTableDef.GetFieldDef(mTable+'ID').PrimeKeyField := false;

      DropAllFKConstaints(mTable);
      DropPrimaryKey(FGlobaldbTableDef);
      dropField( FGlobaldbTableDef.GetFieldDef(mTable+'ID'));
      AddField( mAsciiTableDef.GetFieldDef(mTable+'ID'),mAsciiTableDef,FGlobalDbTableDef);
      AddToBox('Importing table ' + mTable + ' . . . .');
      ImportAccessTable(ExtractFileDir(ParamStr(0))+'\hazmat.mdb',mTable,progressbar1);
    end;
    }
  end;

begin
  HazMatMDB := ExtractFileDir(ParamStr(0)+'\hazmat.mdb');
  If FileExists(HazMatMDB) then begin
    ImportHazmat('CHEM');
    ImportHazmat('SYN');
    ImportHazmat('RIDSGNRLDSC');
    ImportHazmat('RIDSFEXPHAZ');
    ImportHazmat('RIDSFIREFGT');
    ImportHazmat('RIDSPRTCLTH');
    ImportHazmat('RIDSNONFRSP');
    ImportHazmat('RIDSHLTHHAZ');
    ImportHazmat('RIDSFIRSTAID');
    ImportHazmat('RIDSPROPTY');
    DoUpdateMessage('Done Importing HazMat');
  end else begin
    AddtoBox('The file ' + HazMatMDB + ' is missing');
  end;  
end;

procedure TUpdateForm.DropHazMatButtonClick(Sender: TObject);
begin
  RunSQL('DROP TABLE SYN');
  RunSQL('DROP TABLE RIDSPRTCLTH');
  RunSQL('DROP TABLE RIDSPROPTY');
  RunSQL('DROP TABLE RIDSNONFRSP');
  RunSQL('DROP TABLE RIDSHLTHHAZ');
  RunSQL('DROP TABLE RIDSGNRLDSC');
  RunSQL('DROP TABLE RIDSFIRSTAID');
  RunSQL('DROP TABLE RIDSFIREFGT');
  RunSQL('DROP TABLE RIDSFEXPHAZ');
  DropAllFKConstaintsReferencingThisTable('CHEM'); 
  RunSQL('DROP TABLE CHEM');
  DoUpdateMessage('Done');
end;

procedure TUpdateForm.DropAllIndexesButtonClick(Sender: TObject);
var mTableDef : TTableDef;
    i         : Integer;
begin
  if FCancelState then exit;
  AddToBox(' - Begin Dropping Indexes');

  if FAsciiDefs.Count>0 then begin
    for i:= 0 to FAsciiDefs.Count - 1 do begin
      progressbar1.progress := i;
      if iifb(VerifySingleTable.Text='',True,VerifySingleTable.Text=FAsciiDefs[i]) then begin
        mTabledef := CreateAndSetDbDef(FAsciiDefs[i],True,True);
        DropAllIndexes(mTableDef,true);

      end;
    end;
  end;
  AddToBox(' - Done Dropping Indexes');
end;

procedure TUpdateForm.ReadTableDefinitions;
  procedure SetCustomPanel(b: Boolean);
  var i: Integer;
  begin
    for i := 0 to customPanel.ControlCount-1 do begin
      if CustomPanel.Controls[i] is TAlpineGlowButton then
        TAlpineGlowButton(CustomPanel.Controls[i]).Enabled := FAlpineMode;
    end;
  end;
begin
  CancelButton.Enabled := True;
  RunUpdate.Enabled    := False;
  SetCustomPanel(False);

  if FAsciiDefs=nil then begin
    FAsciiDefs := ReadAsciiTables(progressbar1,'',FFdid,GlobalUpdateDatabase,FCancelState);
    FCreatedAsciiDefs := true;
  end else
    FCreatedAsciiDefs := false;
  progressbar1.progress              := 0;
  if FCancelState then begin
    DoUpdateMessage('Update Process Will Now Abort');
    Close;
  end;
  CancelButton.Enabled := False;
  RunUpdate.Enabled    := True;
  SetCustomPanel(True);

  CorrectDatabaseCheck.Checked       := True;
  CreateForeignKeysCheckBox.Checked  := True;
  ImportSupportFilesCheckBox.Checked := True;
  CreateDatabaseViewCheckBox.Checked := True;
  ImportNFIRSCheckBox.Checked        := False;
  MiscellaneousCheckBox.Checked      := True;
  CanAlterFieldTypes.Checked         := True;
  CustSpec.Checked                   := True;
  DropSqlTriggers.Enabled            := GlobalAdoConnection.TableType=MSSqlTableType;
end;

procedure TUpdateForm.VerifySingleTableExit(Sender: TObject);
begin
  VerifySingleTable.Text := trim(VerifySingleTable.Text);
end;

procedure TUpdateForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if (Not FAlpineMode) then
    if substr(ExtractFileDir(ParamStr(0)),1,1)='\' then
      RunSql('UPDATE SYSSET SET UPDATELOCATION = '+AddExpr(ExtractFileDir(ParamStr(0))));
end;

procedure TUpdateForm.DropBAKandGHOSTTables1Click(Sender: TObject);
var mPass      : String;
    mError     : String;
    mTableName : String;
begin
  If not InputDlg('Password','Password',mPass,'!!!!!!!!',True) then
    exit;
  If mPass<>'SKIUTAH' then begin
    DoUpdateMessage('Incorrect Password');
    exit;
  end;

  if GlobalAdoConnection.TableType=MSSqlTableType then
    open_query('TBLS',False,'select TABLE_NAME TABLENAME from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='+AddExpr('BASE TABLE')+
      ' and OBJECTPROPERTY(OBJECT_ID(TABLE_NAME),'+AddExpr('IsMSShipped')+')=0')
  else if GlobalAdoconnection.TableType = MySqlTableType then
    Open_Query('TBLS',False,'SHOW TABLES FROM '+GlobalAdoConnection.DataBaseName)
  else
    open_Query('TBLS',False,'SELECT TABLE_NAME TABLENAME FROM USER_TABLES');

  Open_Query('SYSTABLE',False,'SELECT * FROM SYSTABLE');
  while not a('TBLS').eof do begin
    if GlobalAdoConnection.TableType=MySqlTableType then
      mTableName := uppercase(GetTable('TBLS').Fields[0].AsString)
    else
      mTableName := uppercase(tdbField('TBLS','TABLENAME'));
    If substr(mTableName,1,2) = 'VW' then begin
      //Ignore here.
    end else if (Pos('_BAK',mTablename)>0) or (Pos('_GHOST',mTableName)>0) then begin
      if FAsciiDefs.IndexOf(mTableName)=-1 then begin
        AddToBox('Dropping Table '+mTableName);
        if RunSqlReturnException('DROP TABLE '+mTableName,mError) then
          AddToBox('Dropped Table '+mTableName)
        else
          AddToBox('Could Not Drop Table '+CRLF+mError,True);
      end;
    end else begin
      if not A('SYSTABLE').ExactQueryLocate('TABLENAME',mTableName) then begin
        if BooleanMessageDlg('Drop Table '+mTableName) then begin
          if RunSqlReturnException('DROP TABLE '+mTableName,mError) then
            AddToBox('Dropped Table '+mTableName)
          else
            AddToBox('Could Not Drop Table '+CRLF+mError,True);
        end;
      end;  
    end;
    A('TBLS').Skip(1);
  end;
  CloseApollo('TBLS');
end;

class procedure TUpdateForm.SetReportSecurity(mCode: String);
var mRepID: String;
begin
  mRepID := SqlLookup(mCode,'REPORTCODE','SYSREP','SYSREPID');
  if mRepID='' then exit;
  try
    Open_Query('GETSEC',False,'SELECT SECID FROM SEC');
    Open_Query('SETSECREP',True,'SELECT * FROM SECREP WHERE SYSREPID = '+mRepID);
    while not A('GETSEC').eof do begin
      if not A('SETSECREP').ExactQueryLocate('SECID',GetField('GETSEC','SECID').AsString) then
        TableInsert('SECREP',['SECID','SYSREPID'],[tdbField('GETSEC','SECID'),mRepID]);
      A('GETSEC').Skip(1);
    end;
  finally
    CloseApollo('GETSEC');
    CloseApollo('SETSECREP');
  end;  
end;


procedure TUpdateForm.ImportEMSCodesClick(Sender: TObject);
begin
{ ImportAccessTable('EMSCODES','EMSTREATTYPE',['EMSTREATTYPEID']);
  ImportAccessTable('EMSCODES','EMSPROVIMP',['EMSPROVIMPID']);

  mAccess :=  CreateAccessDataBase('EMSCODES');
  If mAccess = nil then begin
    showmessage('Could not connect to emscodes.mdb');
    exit;
  end;

  Open_Query(maccess,'AEMSCODETYPE',False,'SELECT * FROM EMSCODETYPE');
  Open_Query(maccess,'AEMSCODE',False,'SELECT * FROM EMSCODE');
  Open_Query('EMSCODETYPE',True,'SELECT * FROM EMSCODETYPE');
  Open_Query('EMSCODE',True,'SELECT * FROM EMSCODE');
  while not A('AEMSCODETYPE').eof do begin
    A('EMSCODETYPE').ExactQueryLocateAndPutInEditMode(['CODE'],[tdbField('AEMSCODETYPE','CODE')]);
    for i := 0 to GetTable('EMSCODETYPE').Fields.Count-1 do
      if GetTable('EMSCODETYPE').fields[i].FieldName<>'EMSCODETYPEID' then
        GetField('EMSCODETYPE',GetTable('EMSCODETYPE').fields[i].FieldName).AsString := GetField('AEMSCODETYPE',GetTable('EMSCODETYPE').fields[i].FieldName).AsString;

    A('EMSCODETYPE').Post;
    A('AEMSCODE').UpdateSql('SELECT * FROM EMSCODE WHERE EMSCODETYPEID = '+GetField('AEMSCODETYPE','EMSCODETYPEID').AsString);
    while not A('AEMSCODE').eof do begin
      A('EMSCODE').ExactQueryLocateAndPutInEditMode(['EMSCODETYPEID','CODE'],[    A('EMSCODETYPE').GetPk('EMSCODETYPEID'),tdbField('AEMSCODE','CODE')]);
      for i := 0 to GetTable('EMSCODE').Fields.Count-1 do
        if (GetTable('EMSCODE').fields[i].FieldName<>'EMSCODEID') AND (GetTable('EMSCODE').fields[i].FieldName<>'EMSCODETYPEID') then
          GetField('EMSCODE',GetTable('EMSCODE').fields[i].FieldName).AsString := GetField('AEMSCODE',GetTable('EMSCODE').fields[i].FieldName).AsString;

      GetField('EMSCODE','EMSCODETYPEID').AsString := A('EMSCODETYPE').GetPk('EMSCODETYPEID');
      GetTable('EMSCODE').Post;
      A('AEMSCODE').Skip(1);
    end;
    A('AEMSCODETYPE').Skip(1);
  end;

  CloseApollo('AEMSCODETYPE');
  CloseApollo('AEMSCODE');
  CloseApollo('EMSCODETYPE');
  CloseApollo('EMSCODE');
  showmessage('done');}
end;

class function TUpdateForm.AddSecurity(mp1,mp2,mp3,mp4: String): Integer;
var mpk: String;
begin
  result  := 0;
  try
    Open_Query('SECFIELD',True,'SELECT * FROM SECFIELD WHERE SECFIELD = '+AddExpr(mp1));
    if not A('SECFIELD').recordsExist then begin
      TableInsertReturnPK('SECFIELD',['SECFIELD','SHORTDESCR','DESCR','MODCODE'],[mp1,mp2,mp3,mp4],mpk);
      result := anystrtoint(mpk);
    end;
  finally
    CloseApollo('SECFIELD');
  end;
end;

class Procedure TUpdateForm.AddToLookup(mTableName,mCodeField,mDescr: String);
begin
  commonfunc.AddToLookup(mTableName,mCodeField,mDescr);
end;

procedure TUpdateForm.ImportSupportFilesClick(Sender: TObject);
begin
  ImportSupportTables(VerifySingleTable.Text,progressbar1,False);
end;

class procedure TUpdateForm.DoSysViewOverRide(mOldCode,mNewCode: String);
begin
  if SqlLookup(mOldCode,'OLDVIEWCODE','SYSVIEWOVERRIDES','OLDVIEWCODE')<>mOldCode then
      TableInsert('SYSVIEWOVERRIDES',['OLDVIEWCODE','NEWVIEWCODE'],[mOldCode,mNewCode]);
end;

class procedure TUpdateForm.CreateAndReadDefintions(RemoteData: TAlpineAdoConnection);
begin
  UpdateForm := TUpdateform.Create(nil,GlobalAdoConnection,Remotedata,nil);
  UpdateForm.Show;
  UpdateForm.ReadTableDefinitions;
  UpdateForm.RunUpdate.Enabled := False;
  UpdateForm.closebutton.Enabled := False;
  UpdateForm.Hide;
end;

procedure TUpdateForm.CreateAmbuProView;
var mSql         : String;
    mSelectDates : String;
    mJoins       : String;
  procedure CreateSelectField(dispstatcodeid,mViewField: String);
  begin
    if mSelectDates<>'' then begin
      mSelectDates := mSelectDates + ', ';
    end;
    mJoins := mJoins + ' left outer join disphist disphist_'+mviewfield+' on (disphist_'+mViewField+'.dispcallid=nfirsapp.dispcallid and disphist_'+mViewField+'.dispstatcodeid='+iif(anystrtoint(dispstatcodeid)>0,dispstatcodeid,'-1')+
      ' and nfirsapp.unitnum=disphist_'+mViewField+'.unitnum '+ ') ';
    mSelectDates := mSelectDates + 'disphist_'+mViewField+'.datetimestat as '+mviewField+' ';
  end;

  procedure GrantSelect(mfdid,muser: String);
  begin
    if mFireid = mFdid then
      if not RunSql('GRANT SELECT on dbo.AMBUPROVIEW to '+mUser) then
        AddToBox('Failed to grant "SELECT" to AMBUPROVIEW to '+mUser+' user');
  end;
begin
  runSql('drop view AMBUPROVIEW');
  mSelectDates := '';
  mJoins       := '';
  CreateSelectField(timedispid,'DTDISP');
  CreateSelectField(timeoutid,'DTRESP');
  CreateSelectField(timearrid,'DTSCENE');
  CreateSelectField(timepatid,'DTATPATIENT');
  CreateSelectField(TIMEENRHOSPID,'DTTOHOSP');
  CreateSelectField(TIMEATHOSPID,'DTATHOSP');
  CreateSelectField(TIMECLRHOSPID,'DTCLRHOSP');
  CreateSelectField(timeinid,'DTINSERVICE');
  mSql := 'create view AMBUPROVIEW as '+
    'select nfirsapp.nfirsappid dispcadlogid,dispcall.sitename,nfirsapp.dispcallid callid,nfirsapp.unitnum,nfirsmain.incnum,nfirsapp.nfirsmainid,'+
    'nfirsapp.milestart,nfirsapp.mileend,nfirsappdisp.descr receiving_facility,'+
    'dispcall.datetimerec DTCALLRECEIVED,dispcall.datetimein DTLASTUNITCLEAR,dispcalltype.descr calltype,dispsubtype.descr callsubtype,dispcall.incstat callstatus,'+
    'dispcall.strnum,dispcall.street,dispcall.city,dispcall.roomapt,dispcall.state,dispcall.zip, '+
    mSelectDates+
  ' from nfirsapp '+mJoins+
  ' left outer join nfirsmain on (nfirsmain.nfirsmainid=nfirsapp.nfirsmainid) '+
  ' left outer join dispcall on (dispcall.dispcallid=nfirsmain.dispcallid) '+
  ' left outer join dispcalltype on (dispcalltype.dispcalltypeid=dispcall.dispcalltypeid) '+
  ' left outer join dispsubtype on (dispsubtype.dispsubtypeid=dispcall.dispsubtypeid) '+
  ' left outer join nfirsappdisp on (nfirsappdisp.nfirsappdispid = nfirsapp.nfirsappdispid) ';
  if RunSql(mSql) then begin
    AddToBox('Created AMBUPROVIEW View');
    GrantSelect('03800','cadlog');
    GrantSelect('21101','AMBUPROUSER');
    if mFireid='21101'  then begin
      RunSql('GRANT SELECT ON AMBUPROVIEW TO '+AddExpr('AMBUPROUSER')+'@'+AddExpr('LOCALHOST'));
      RunSql('GRANT SELECT ON AMBUPROVIEW TO '+AddExpr('AMBUPROUSER')+'@'+AddExpr('%'));
    end;
    if mfireid = '52089' then begin
      RunSql('GRANT SELECT ON AMBUPROVIEW TO '+AddExpr('AMBUPRO')+'@'+AddExpr('LOCALHOST'));
      RunSql('GRANT SELECT ON AMBUPROVIEW TO '+AddExpr('AMBUPRO')+'@'+AddExpr('%'));
    end;
  end else
    AddToBox('Failed to Create AMBUPROVIEW View.  SQL is:'+mSql,True);
  appendtolog(msql);
end;

procedure TUpdateForm.LoadNIActive;
begin
  AddToBox('Updating NIPTYPE.ACTIVE Field . . . ');
  Open_Query('NIPTYPE',True,'SELECT * FROM NIPTYPE');
  While Not A('NIPTYPE').Eof do begin
    If tdbfield('NIPTYPE','ACTIVE') = '' then begin
      GetTable('NIPTYPE').Edit;
      GetField('NIPTYPE','ACTIVE').AsString := 'Y';
      GetTable('NIPTYPE').Post;
    end;
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');
  AddToBox('Updated NIPTYPE.ACTIVE.');

  AddToBox('Updating NISTYPE.ACTIVE Field . . . ');
  Open_Query('NISTYPE',True,'SELECT * FROM NISTYPE');
  While Not A('NISTYPE').Eof do begin
    If tdbfield('NISTYPE','ACTIVE') = '' then begin
      GetTable('NISTYPE').Edit;
      GetField('NISTYPE','ACTIVE').AsString := 'Y';
      GetTable('NISTYPE').Post;
    end;
    A('NISTYPE').Skip(1);
  end;
  CloseApollo('NISTYPE');
  AddToBox('Updated NISTYPE.ACTIVE.');
end;

procedure TUpdateForm.LoadNITrainCat1Active;
begin
  AddToBox('Updating NITRAINCAT1.ACTIVE Field . . . ');
  Open_Query('NITRAINCAT1',True,'SELECT * FROM NITRAINCAT1');
  While Not A('NITRAINCAT1').Eof do begin
    If tdbfield('NITRAINCAT1','ACTIVE') = '' then begin
      GetTable('NITRAINCAT1').Edit;
      GetField('NITRAINCAT1','ACTIVE').AsString := 'Y';
      GetTable('NITRAINCAT1').Post;
    end;
    A('NITRAINCAT1').Skip(1);
  end;
  CloseApollo('NITRAINCAT1');
  AddToBox('Updated NITRAINCAT1.ACTIVE.');
end;

procedure TUpdateForm.LoadPageListActive;
begin
  AddToBox('Updating PAGELIST.ACTIVE Field . . . ');
  Open_Query('PAGELIST',True,'SELECT * FROM PAGELIST');
  While Not A('PAGELIST').Eof do begin
    If tdbfield('PAGELIST','ACTIVE') = '' then begin
      GetTable('PAGELIST').Edit;
      GetField('PAGELIST','ACTIVE').AsString := 'Y';
      GetTable('PAGELIST').Post;
    end;
    A('PAGELIST').Skip(1);
  end;
  CloseApollo('PAGELIST');
  AddToBox('Updated PAGELIST.ACTIVE.');
end;


procedure TUpdateForm.CreateDatabaseViewClick(Sender: TObject);
begin
  If mfireID = '30021' then
    CreateGlenCovePCR;
  UpdateCreateDatabases(VerifySingleTable.Text);
  CreateNfirsAppTimesView;
  CreateAmbuProView ;
end;

procedure TUpdateform.CreateGlenCovePCR;
var SQLVar : String;
begin
  If CheckViewExists(FUpdateDatabase,'VWGLENCOVEPCR') then
    RunSql('DROP VIEW VWGLENCOVEPCR');

  SQLVar := 'CREATE VIEW VWGLENCOVEPCR AS ' +
            'SELECT EMS.INCNUM CALLNUMBERID,DISPCALL.FDID AGENCY, DISPCALL.DATETIMEREC SERVICEDATE, DISPCALL.DATETIMEREC CALLRECEIVED, ' +
            'DISPCALL.DATETIMEDISP DISPATCHED, ' +
            'DISPHIST_21.DATETIMESTAT ENROUTE, DISPHIST_22.DATETIMESTAT ONSCENE, DISPHIST_21H.DATETIMESTAT LEFTSCENE, ' +
            'DISPHIST_22H.DATETIMESTAT ATDESTINATION, DISPHIST_13.DATETIMESTAT INSERVICE, NFIRSAPP.UNITNUM VEHICLEID, ' +
            'DISPCALLTYPE.CODE EMDCODE, DISPCALLTYPE.DESCR EMDDESCR, DISPSUBTYPE.CODE EMDSUBCODE, DISPSUBTYPE.DESCR EMDSUBDESCR, ' +
            'DISPCALL.STRNUM INCIDENTSTRNUM, DISPCALL.STREET INCIDENTSTREET, DISPCALL.ROOMAPT INCIDENTAPTNUMBER, ' +
            'DISPCALL.CROSS1, DISPCALL.CROSS2, ' + 
            'DISPCALL.CITY INCIDENTCITY, DISPCALL.STATE INCIDENTSTATE, DISPCALL.ZIP INCIDENTZIP, ' +
            'EMS.STATEFIPS FIPS, EMS.COUNTYFIPS INCIDENTCOUNTYID, ' +  
            'NFIRSAPPDISP.CODE TRANSPORT_TOID, ' +
            'DISPCALL.LATITUDE, DISPCALL.LONGITUDE, NFIRSAPP.NFIRSAPPID, NFIRSAPP.DISPCALLID, INVSUBTYPE.CODE INVSUBTYPECODE ' +
            'FROM NFIRSAPP ' +
            'LEFT OUTER JOIN EMS ON (EMS.DISPCALLID = NFIRSAPP.DISPCALLID) ' +
            'LEFT OUTER JOIN DISPCALL ON (DISPCALL.DISPCALLID = NFIRSAPP.DISPCALLID) ' +
            'LEFT OUTER JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
            'LEFT OUTER JOIN DISPSUBTYPE ON (DISPCALL.DISPSUBTYPEID = DISPSUBTYPE.DISPSUBTYPEID) ' +
            'LEFT OUTER JOIN NFIRSAPPDISP ON (NFIRSAPP.NFIRSAPPDISPID = NFIRSAPPDISP.NFIRSAPPDISPID) ' +
            'LEFT OUTER JOIN INV ON (INV.UNITNUM = NFIRSAPP.UNITNUM) ' +
            'LEFT OUTER JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID)' +
            'LEFT OUTER JOIN DISPHIST DISPHIST_21 ON (NFIRSAPP.DISPCALLID = DISPHIST_21.DISPCALLID AND NFIRSAPP.UNITNUM = DISPHIST_21.UNITNUM AND DISPHIST_21.DISPSTATCODEID = 7) ' +
            'LEFT OUTER JOIN DISPHIST DISPHIST_22 ON (NFIRSAPP.DISPCALLID = DISPHIST_22.DISPCALLID AND NFIRSAPP.UNITNUM = DISPHIST_22.UNITNUM AND DISPHIST_22.DISPSTATCODEID = 8) ' +
            'LEFT OUTER JOIN DISPHIST DISPHIST_21H ON (NFIRSAPP.DISPCALLID = DISPHIST_21H.DISPCALLID AND NFIRSAPP.UNITNUM = DISPHIST_21H.UNITNUM AND DISPHIST_21H.DISPSTATCODEID = 9) ' +
            'LEFT OUTER JOIN DISPHIST DISPHIST_22H ON (NFIRSAPP.DISPCALLID = DISPHIST_22H.DISPCALLID AND NFIRSAPP.UNITNUM = DISPHIST_22H.UNITNUM AND DISPHIST_22H.DISPSTATCODEID = 10) ' +
            'LEFT OUTER JOIN DISPHIST DISPHIST_13 ON (NFIRSAPP.DISPCALLID = DISPHIST_13.DISPCALLID AND NFIRSAPP.UNITNUM = DISPHIST_13.UNITNUM AND DISPHIST_13.DISPSTATCODEID = 11)';

  AppendToLog(SQLVar);
  If RunSql(SQLVar) then
    AddToBox('Created VWGLENCOVEPCR View')
  else
    AddToBox('Failed to Create VWGLENCOVEPCR View.  See Log');
end;

procedure TUpdateForm.WriteAsciiDefs(AsciiDefs: TStringList);
begin
  FAsciiDefs := AsciiDefs;
end;

function TUpdateForm.GetAsciiDefs: TStringList;
begin
  result := FAsciiDefs;
end;

end. 
