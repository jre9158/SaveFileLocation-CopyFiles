unit NFIRS;

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
  AlpineMemo,
  AlpineBlockBrowse,
  AlpineCheck,
  MySBox,
  OvcDbPF,
  OrpheusWrapper,
  AdvListV,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  Menus,
  PersAccHistSelect,
  AlpineBase, AdvObj;

type
  TRowObject = class
  private
    CanAdd                : Boolean;
    AlreadyExpanded       : Boolean;
    DisplayGrid           : Boolean;
    Startchildren         : Integer;
    EndChildren           : Integer;
    CanDelete             : Boolean;
    HeaderRow             : Boolean;
    ShowFormIndependently : Boolean;
    Row                   : Integer;
    col                   : Integer;
    Instance              : TComponentClass;
    CompareField          : String;
    PrimeTable            : String;
    Caption               : String;
    NewRec                : TDataSetNotifyEvent;
    ParentRow             : TRowObject;
    Node                  : TTreeNode;
    pk                    : String;
    mParentComponent      : TWinControl;
  end;


type
  TBaseNfirsForm = class(TBaseSubTabForm)

  private
    function GetViewOnly: Boolean;

  protected
    procedure SetViewOnly(Value: Boolean);
  public
    constructor Create(AOwner: TComponent; mPk: String); virtual;
    destructor Destroy; override;
    property ViewOnly: Boolean read GetViewOnly write SetViewOnly;
    class procedure GetNavigation(mRowObject: TRowObject); virtual;
    property PK: String read FPK write FPK;
  end;

type THackPanel = class(TPanel)
end;

const
  MAPPROVE = 'Approve &Incident?';

type
  TNFIRSForm = class(TNormalBaseForm)
    MainPanel: TPanel;
    Splitter1: TSplitter;
    mainnfirspanel: TPanel;
    displaypanel: TPanel;
    LeftPanel: TPanel;
    SectionsGrid: TTreeView;
    AdvPanel5: TAdvPanel;
    Image2: TImage;
    Image1: TImage;
    Label1: TLabel;
    IncNumLabel: TLabel;
    Splitter2: TSplitter;
    headerpanel: TAdvPanel;
    SectionsGridMenu: TPopupMenu;
    DeleteMenu: TMenuItem;
    DateTimeLabel: TLabel;
    Label2: TLabel;
    LocationLabel: TLabel;
    Label4: TLabel;
    AttendButton: TAlpineGlowButton;
    ArsonButton: TAlpineGlowButton;
    AppButton: TAlpineGlowButton;
    PersAccHistButton: TAlpineGlowButton;
    ValidateIncident: TAlpineGlowButton;
    SubBlockBrowse: TAlpineBlockBrowse;
    Splitter3: TSplitter;
    DispCallButton: TAlpineGlowButton;
    EquipmentButton: TAlpineGlowButton;
    Emailbutton: TAlpineGlowButton;
    Panel1: TPanel;
    LongDescrField: TLabel;
    ErrorGrid: TAlpineTMSStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure ValidateClick(Sender: TObject);
    procedure ErrorGridDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BaseBottomPanelClick(Sender: TObject);
    procedure SectionsGridChange(Sender: TObject; Node: TTreeNode);
    procedure SectionsGridClick(Sender: TObject);
    procedure ErrorGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure AttendButtonClick(Sender: TObject);
    procedure AppButtonClick(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DispCallButtonClick(Sender: TObject);
    procedure PersAccHistButtonClick(Sender: TObject);
    procedure ErrorGridClick(Sender: TObject);
    procedure EquipmentButtonClick(Sender: TObject);
    procedure ArsonButtonClick(Sender: TObject);
    procedure EmailbuttonClick(Sender: TObject);

  private
    { Private declarations }
    FDoneField                 : TAlpineEdit;
    mFocusPanel                : TAlpinePanel;
    mFireCasualtyHeaderRow     : TRowObject;
    mCivilianCasualtyHeaderRow : TRowObject;
    FCanShowAppAndAtt          : Boolean;
    FRowCount                  : Integer;
    BasicNode         : TRowObject;
    FCurrentPk        : String;
    icurrentRow       : Integer;
    FCurrenTRowObject : TRowObject;
    FIncidentType     : String;
    FFirOrWild        : String;
    FWildAddr         : String;
    FCauseIgn         : String;
    UseNfirsEMS       : Boolean;
    FFireCause        : String;
    FHazmat           : String;
    FFatFire          : Integer;
    FInjFire          : Integer;
    FFatCiv           : Integer;
    FInjCiv           : Integer;

    FCurrentBaseNfirsForm: TBaseNfirsForm;
    FNodeList            : TStringList;
    procedure UpdateCurrentValidationColors;    
    procedure SetViewOnlySecurity;
    procedure DisplayForm(mInstance: TComponentClass;mpk,mPrimeTable,mCompareField: String; mNewRecFunc: TDataSetNotifyEvent);
    procedure DisplayNfirsImageForm;    
    procedure FreeCurrentForm;
    procedure EditFromBrowse(Sender: TObject);
    function AddHeaderAndDisplayGrid(mCaption,mPrimeTable: String;mCanDelete,mCanAdd: Boolean;mInstance: TComponentClass;mNewRec: TDataSetNotifyEvent;mpk: String): TRowObject;
    procedure GotoRow(HeaderRowObject: TRowObject; ipk: String);

    procedure NfirsNewRecord(DataSet: TDataSet);
    procedure NfirsFireCasualtyNewRecord(DataSet: TDataSet);
    procedure EMSNewRecord(DataSet: TDataSet);
    procedure NemsisNewRecord(DataSet: TDataSet);
    procedure Nem3NewRecord(DataSet: TDataSet);

    procedure NfirsEMSNewRecord(DataSet: TDataSet);
    procedure NfirsCivilianNewRecord(DataSet: TDataSet);
    procedure NfirsHazmatNewRecord(DataSet: TDataSet);
    procedure NfirsEquUseNewRecord(DataSet: TDataSet);
    function  LoadForm(mRowObject: TRowObject;ForceFormRefresh: Boolean = False): TAlpinePanel;
    Function  AddForm(mParentObject: TRowObject;mCaption: String; mInstance: TComponentClass; mPrimeTable,mCompareField: String; mypk: String; mNewRec: TDataSetNotifyEvent; iCol: Integer; mCanAdd: Boolean; iRow: Integer = -1): TRowObject;
    function  AddHeader(mCaption,mPrimeTable: String;mCanDelete,mCanAdd: Boolean; mInstance: TComponentClass; mPk: String): TRowObject;
    procedure PersExpNewRecord(DataSet: TDataSet);
  protected
    function DoSave: Boolean; override;
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    procedure EnableSave; override;
  public
    { Public declarations }
    N5ErrorList : TStringList;
    class procedure NewRecord(DataSet: TDataSet);
    procedure Validate(mSaveIt: Boolean);
    procedure WMDROPFILE(var message:TMessage); message WM_DROPFILES;
    procedure GotoComponent(mFieldName: String; mSourceForm: TForm);
    procedure ColorComponentGreen(mFieldName: String; mSourceForm: TForm);
    class procedure CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
    class procedure ResetNonEditColor(mSourceForm: TForm);    
    property CurrentBaseNfirsForm: TBaseNfirsForm read FCurrenTBaseNfirsForm write FCurrenTBaseNfirsForm;
    property IncidentType: String read FIncidentType write FIncidentType;
    class procedure SetupControls(mComponent: TComponent);
    procedure UpdateNodesBasedOnWildLand(bNoSave, bWildLand: Boolean);
    procedure BaseUpdateNodesBasedOnIncType(mNoSave, bUseWildLandField,bWildLandValue: Boolean);
    procedure UpdateNodesBasedOnInctype(mNoSave: Boolean);
    procedure RefreshForm;
    class procedure AddLink(mRowObject: TRowObject; mcaption: String);
    class procedure AddRow(mParentObject,mRowObject: TRowObject);
    property RowCount: Integer read FRowCount write FRowCount;
    class function CreateExposure(NFIRSMainID: String; Var NewNfirsMainID: String): Boolean;

    function GetNfirsFormName(FormName: String): TComponentClass;
    class function ClassViewOnlyBasedOnDone(mDone: String; mDateTimeAlarm: TDateTime): Boolean;
    class function ClassGetNfirsViewOnly(ipk: Integer): Boolean;
    procedure DoAfterPost(Sender: TObject); override;
    property CanShowAppAndAtt: Boolean read FCanShowAppAndAtt write FCanShowAppAndAtt;
    class procedure SpecialClick(Sender: TObject); override;
    class procedure CreateExposureClick(Sender: TObject);
    class procedure ReplicateIncidentClick(Sender: TObject);
    class procedure IncReNumClick(Sender: TObject);
    procedure CreateDispCallRecord(pk: String);    
    class procedure UnApproveClick(Sender: TObject);
    procedure DoAfterSetControls(Sender: TObject); override;
    class procedure DoAttendance(mpk: String);
    procedure NfirsArsonInvNewRecord(DataSet: TDataSet);
    class procedure RCMenuClick(Sender: TObject);
  end;

implementation
uses CheckBox,
     SortGridView,
     genfunc,
     NFIRSSet,
     Nfirsbas,
     NfirsFir,
     NFirsStr,
     NfirsArsRep,
     N5Check,
     NfirsFireCasualty,
     NfirsAppUse,
     NFIRSAppUseRA,
     NfirsCivilian,
     NfirsArsonInv,
     NfirsWildLandRep,
     NfirsEqu,
     CommonFunc,
     CommonNfirs,
     AlpineRepGen,
     NfirsMainRep,
     NfirsAttRep,
     NfirsAttEntryRep,
     NfirsAppRep,
     NfirsEMSReport,
     NfirsInvRep,
     IncAttR,
     NfirsHazMat,
     NFIRSHazMatChem,
     NfirsCivilianCasualtyReport,
     NfirsFireCasualtyReport,
     NfirsHazMatRep,
     NfirsWild,
     CommonVar,
     CommonDisp,
     NfirsArs,
     NFIRSEms,
     Nem3MultiPick,
     NfirsEquUse,
     NfirsEquUseRep,
     EMS,
     applst,
     DispCallRep,
     NYThruway,
     SecSet,
     SysSet,
     FormFunc,
     AlpineBaseSummaryReport,
     SubSortGridView,
     CommonDispVar,
     RPanel,
     Queue,
     FdFunc,
     IncReNum,
     RepInc,
     NfirsImage,
     EmsRep,
     NemsisEms,
     Nem3Ems,
     PersExp,
     DispCall,
     ReportEmail;

{$R *.DFM}

function CreateAndCopyRowObject(mRowObject: TRowObject): TRowObject;
var mNewRow: TRowObject;
begin
  mNewRow              := TRowObject.create;
  mNewRow.Instance     := mRowObject.Instance;
  mNewRow.CompareField := mRowObject.CompareField;
  mNewRow.PrimeTable   := mRowObject.PrimeTable;
  mNewRow.NewRec       := mRowObject.NewRec;
  mNewRow.caption      := mRowObject.Caption;
  mNewRow.pk           := mRowObject.pk;
  result               := mNewRow;
end;

procedure TNfirsForm.RefreshForm;
begin
  try
    Open_Query('GETNFIRS',True,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = '+pkvalue(PK));
    TNormalBaseForm.SetControls(TControl(FCurrentBaseNfirsForm),nil, 'GETNFIRS','NFIRSMAIN',SaveButton);
    TBaseNfirsForm(FCurrentBaseNfirsForm).DoAfterSetControls(self);
  finally
    CloseApollo('GETNFIRS');
  end;  
end;

class procedure TNFIRSForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('EXPNUM').AsString          := '00';
  DataSet.FieldbyName('DATETIMEALARM').AsDateTime := Now;
  DataSet.FieldByName('FDID').AsString            := GetNewFDID;
  DataSet.FieldByName('INCNUM').AsString          := GetNextIncNum(DataSet.FieldByName('FDID').AsString,'NFIRSMAIN',false);
  DataSet.FieldByName('DONE').AsString            := 'N';
  If (mFireID <> '07110') and (mFireID <> '23123') then
    DataSet.FieldByName('MAID').AsString            := 'N';

  DataSet.FieldByName('LOCTYPE').AsString         := '1';
  DataSet.FieldByName('ALARMNUM').AsString        := '1';
  LoadSysFieldDef(GetNewFdid,'NFIRSMAIN',DataSet);
end;

class procedure TNfirsForm.AddLink(mRowObject: TRowObject; mcaption: String);
var mNewRow: TRowObject;
begin
  mNewRow         := CreateAndCopyRowObject(mRowObject);
  mNewRow.Col     := mRowObject.Col+1;
  mNewRow.Caption := mCaption;
  AddRow(mRowObject,mNewRow);
end;

class function TNfirsForm.ClassGetNfirsViewOnly(ipk: Integer): Boolean;
var
  bViewOnly, bSetInCustom: Boolean;
begin
  TFDFunc.CustomSetNfirsViewOnly(ipk,bViewOnly, bSetInCustom);
  if bSetInCustom then
    result := bViewOnly
  else begin
    Open_Query('CHKNFIRS',False,'SELECT DONE,DATETIMEALARM FROM NFIRSMAIN WHERE NFIRSMAINID = '+inttostr(ipk));
    result := TNfirsForm.ClassViewOnlyBasedOnDone(tdbField('CHKNFIRS','DONE'),GetField('CHKNFIRS','DATETIMEALARM').AsDateTime);
    CloseApollo('CHKNFIRS');
  end;  
end;

class function TNfirsForm.ClassViewOnlyBasedOnDone(mDone: String; mDateTimeAlarm: TDateTime): Boolean;
begin
  If (mDone = 'Y') and Not CheckSecVar('INCAPP') then
    result := true
  else if CheckSecVar('INCEDIT') then begin
    if NfirsIncTime>0 then begin
      if CheckSecVar('INCTIME') then
        result := False
      else
        result := (Now-mDateTimeAlarm)*24 > NfirsIncTime;
    end else 
      result := false
  end else begin
    If FormExists('QueueForm') then
      result := false
    else
      result := True;
  end;
end;

procedure TNfirsForm.SetViewOnlySecurity;
begin
  if UpdateControl is TQueueform then
    ViewOnly                := False
  else
    ViewOnly                  := ClassGetNfirsViewOnly(strtoint(pk));
end;    

procedure TNFIRSForm.FormCreate(Sender: TObject);
Var SQLVar : String;
begin
  FDoneField                := TAlpineEdit.Create(self);
  FDoneField.Name           := 'DoneField';
  FDoneField.Parent         := self;
  FDoneField.Visible        := False;
  FDoneField.DataField      := 'DONE';
  UseNfirsEMS               := False;
  UpdateNfirsEvlength       := False;
  Open_Query('NFIRSSET',false,'SELECT USENFIRSEMS, UPDATENFIRSEVLENGTH, EMAILFAX FROM NFIRSSET WHERE FDID = ' + AddExpr(FireID));
  Emailbutton.Visible := (tdbfield('NFIRSSET','EMAILFAX') = 'Y');
  If tdbfield('NFIRSSET','USENFIRSEMS') = 'Y' then begin
    UseNfirsEMS             := true;
  end;
  If tdbfield('NFIRSSET','UPDATENFIRSEVLENGTH') = 'Y' then begin
    UpdateNfirsEvlength     := true;
  end;
  CloseApollo('NFIRSSET');

  inherited;                                                                     
  FDoneField.Controller     := OvcController;
  SetViewOnlySecurity;

  if (mfireid='40002') or (mfireid='30029') then
    AttendButton.Enabled      := CheckSecVar('INCATT')
  else
    AttendButton.Enabled      := (Not ViewOnly) and CheckSecVar('INCATT');

  if (mfireid='23239') then
    AttendButton.Enabled      := CheckSecVar('INCSETUP');

  AppButton       .Enabled  := (Not ViewOnly) and CheckSecVar('INCEDIT');
  EquipmentButton .Enabled  := (Not ViewOnly) and CheckSecVar('INCEDIT');
  ValidateIncident.Enabled  := Not ViewOnly;

  If CheckModule('QUEUE') then
    FCanShowAppAndAtt := CheckSecVar('NFIRSQUEUE') or (mfireid = '12345')
  else
    FCanShowAppAndAtt := true;

  AttendButton.Visible      := FCanShowAppAndAtt;
  Appbutton.Visible         := FCanShowAppAndAtt;
  ImageName                 := 'INCIDENT';
  Height                    := Screen.Height - 110;
  DispCallButton.Visible    := CheckModule('DISP') or CheckModule('CADINT');
  DispCallButton.Enabled    := CheckSecVar('INCEDIT') or CheckSecVar('DISPVIEW');
  PersAccHistButton.Enabled := CheckSecVar('INCACCHIST') and Not ViewOnly;
  PersAccHistButton.Visible := CheckModule('HAND') or CheckModule('FINGER');
  ArsonButton.Visible       := CheckModule('ARS')  and CheckSecVar('ARSVIEW');

  If mfireid = '00190' then begin
    AppButton.Caption    := '&Units';
    AttendButton.Caption := 'P&ersonnel';
  end;

  If CheckModule('HAND') and (mfireid <> '12345') then begin
    PersAccHistButton.ImageName := 'HANDSCAN';
  end else begin
    PersAccHistButton.ImageName := 'FINGER';
  end;

  If Screen.Width > 1100 then begin
    Width           := 1075;
    LeftPanel.Width := 200;
  end else if Screen.Width > 900 then begin
    Width           := 950;
    LeftPanel.Width := 200;
  end;
  FNodeList                  := TStringList.Create;
  UpdateNodesBasedOnIncType(True);
  SubBlockBrowse.OnEditClick := EditFromBrowse;
  N5ErrorList                := TStringList.Create;

  If (mfireID = '01922') then begin
    SQLVar := 'SELECT PROP.FIXPROP PROPFIXPROP, NFIRSMAIN.FIXPROP NFIRSMAINFIXPROP FROM NFIRSMAIN LEFT JOIN PROP ON (NFIRSMAIN.PROPID = PROP.PROPID) WHERE NFIRSMAIN.NFIRSMAINID = ' + pk;
    Open_query('GETNFIRSMAIN',false,SQLVar);
    If Not (tdbfield('GETNFIRSMAIN','PROPFIXPROP') = '') and (tdbfield('GETNFIRSMAIN','NFIRSMAINFIXPROP') = '') then
      RunSQL('UPDATE NFIRSMAIN SET FIXPROP = ' + edbfield('GETNFIRSMAIN','PROPFIXPROP') + ' WHERE NFIRSMAINID = ' + pk);
    CloseApollo('GETNFIRSMAIN');
  end;   
end;

procedure TNfirsForm.EditFromBrowse(Sender: TObject);
var mpk : String;
    b   : TAlpineBlockBrowse;
begin
  if SaveButton.enabled then
    SaveButtonClick(self);
  b := TAlpineBlockBrowse(Sender);
  if b.InsertMode then begin
    mpk := '-1';
  end else
    mpk := b.GetValue(b.PrimeKeyField);

  If FCurrentRowObject.ShowFormIndependently then
    RunAlpineFormWithOwner(b,FCurrentRowObject.Instance,mpk,b.PrimeTable,FCurrentRowObject.NewRec)
  else begin
    FCurrentRowObject.pk           := mpk;
    FCurrentRowObject.PrimeTable   := b.PrimeTable;
    FCurrentRowObject.CompareField := b.PrimeTable+'ID';
    FreeCurrentForm;
    displaypanel.Visible := False;
    If (FCurrentRowObject.Instance <> nil) then
      DisplayForm(FCurrentRowObject.Instance,mpk,b.PrimeTable,b.PrimeTable+'ID',FCurrentRowObject.NewRec);
    displaypanel.Visible := True;
    THackPanel(DisplayPanel).SelectFirst;
  end;
end;

procedure TNfirsForm.EmailbuttonClick(Sender: TObject);
Var ReportEmailForm : TReportEmailForm;
begin
  inherited;
  ReportEmailForm := TReportEmailForm.Create(self,Pk,'NFIRSMAIN');
  ReportEmailForm.EmailSubjectField.Value := sqllookup(mfireid,'FDID','NFIRSSET','EMAILSUBJECT');
  ReportEmailForm.EmailMessageField.Value := sqllookup(mfireid,'FDID','NFIRSSET','EMAILMESSAGE');
  ReportEmailForm.ShowModal;
  ReportEmailForm.Free;
end;

Function TNfirsForm.AddForm(mParentObject: TRowObject;mCaption: String; mInstance: TComponentClass; mPrimeTable,mCompareField: String; mypk: String; mNewRec: TDataSetNotifyEvent; iCol: Integer; mCanAdd: Boolean; iRow: Integer): TRowObject;
var RowObject : TRowObject;
    iComp     : Integer;
begin
  RowObject              := TRowObject.Create;
  RowObject.Caption      := mcaption;
  RowObject.Instance     := mInstance;
  RowObject.PrimeTable   := mPrimeTable;
  RowObject.CompareField := mCompareField;
  RowObject.CanAdd       := mCanAdd;
  RowObject.pk           := mypk;
  RowObject.NewRec       := mNewRec;
  RowObject.Col          := iCol;
  AddRow(mParentObject,RowObject);
  TBaseNfirsForm(mInstance.NewInstance).GetNavigation(RowObject);
  result := RowObject;
end;

class procedure TNfirsForm.AddRow(mParentObject,mRowObject: TRowObject);
var FNewNode   : TTreeNode;
    mNfirsForm : TNfirsForm;
begin
  mNfirsForm := TNfirsForm(GetFormOfType(TNfirsForm));
  if mNfirsForm=nil then exit;

  mNfirsForm.RowCount := mNfirsForm.RowCount + 1;
  if mParentObject=nil then
    FNewNode := mNFirsForm.SectionsGrid.Items.Add(nil,mRowObject.Caption)
  else
    FNewNode := mNfirsForm.SectionsGrid.Items.AddChild(mParentObject.Node,mRowObject.Caption);

  mRowObject.Node := FNewNode;
  mRowObject.Row := mNfirsForm.iCurrentRow;
  mRowObject.AlreadyExpanded := false;
  mNfirsForm.FNodeList.AddObject(mRowObject.caption,mRowObject);
  mNfirsForm.icurrentRow := mNfirsForm.iCurrentrow + 1;
end;

function TNfirsForm.AddHeaderAndDisplayGrid(mCaption,mPrimeTable: String;mCanDelete,mCanAdd: Boolean;mInstance: TComponentClass;mNewRec: TDataSetNotifyEvent; mpk: String): TRowObject;
begin
  result                                   := AddHeader(mCaption,mPrimeTable,mCanDelete,mCanAdd,mInstance,mpk);
  TRowObject(result).DisplayGrid           := True;
  TRowObject(result).ShowFormIndependently := True;
  TRowObject(result).NewRec                := mNewRec;
end;

function TNfirsForm.AddHeader(mCaption,mPrimeTable: String;mCanDelete,mCanAdd: Boolean;mInstance: TComponentClass;mpk: String): TRowObject;
var HeaderObject: TRowObject;
begin
  HeaderObject            := TRowObject.Create;
  HeaderObject.Instance   := mInstance;
  HeaderObject.PrimeTable := mPrimeTable;
  HeaderObject.HeaderRow  := True;
  HeaderObject.Caption    := mCaption;
  HeaderObject.CanAdd     := mCanAdd;
  HeaderObject.CanDelete  := False;
  HeaderObject.PK         := mpk;

  AddRow(nil,HeaderObject);
  result                  := HeaderObject;
end;

procedure TNFIRSForm.UpdateNodesBasedOnWildLand(bNoSave,bWildLand: Boolean);
begin
  BaseUpdateNodesBasedOnIncType(bNoSave,True,bWildLand);
end;

procedure TNFIRSForm.UpdateNodesBasedOnIncType(mNoSave: Boolean);
begin
  BaseUpdateNodesBasedOnIncType(mNoSave,False,False);
end;

procedure TNFIRSForm.BaseUpdateNodesBasedOnIncType(mNoSave, bUseWildLandField,bWildLandValue: Boolean);
var Disabled           : Boolean;
    i                  : Integer;
    mTempRowObject     : TRowObject;
    mCurrentCaption    : String;
    Form               : TForm;
    ImageListCntVar    : Integer;
    ImageListCntString : String;
    mWildAddr          : String;
begin
  Form              := GetFormofType(TNfirsBasicForm);
  SubBlockBrowse.visible := False;
  if FcurrentRowObject<>nil then
    mCurrentCaption := FcurrentRowObject.Caption
  else
    mCurrentCaption := '';

  If SaveButton.Enabled and Not mNoSave then begin
    bShowRequiredMessage := False;
    try
      SaveButtonClick(self);
    finally
      bShowRequiredMessage := True;
    end;  
  end;  

  Open_Query('GETPARAMS',False, 'SELECT NFIRSMAIN.STRNUM, NFIRSMAIN.STREET, NFIRSMAIN.EXPNUM, NFIRSMAIN.INCNUM, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.SITFOUND,NFIRSMAIN.WILDADDR, ' +
                                'NFIRSMAIN.FIRORWILD, NFIRSMAIN.FATFIRE, NFIRSMAIN.INJFIRE, NFIRSMAIN.FATCIV, NFIRSMAIN.INJCIV, NFIRSMAIN.HAZMAT, ' +
                                'FDID.DEPTNAME, ' +
                                'NFIRSFIR.CAUSEIGN, NFIRSWILDLAND.FIRECAUSE ' +
                                'FROM NFIRSMAIN ' +
                                'LEFT JOIN NFIRSFIR ON (NFIRSMAIN.NFIRSMAINID = NFIRSFIR.NFIRSMAINID) ' +
                                'LEFT JOIN NFIRSWILDLAND ON (NFIRSMAIN.NFIRSMAINID = NFIRSWILDLAND.NFIRSMAINID) ' +
                                'LEFT JOIN FDID ON (NFIRSMAIN.FDID = FDID.FDID) ' +
                                'WHERE NFIRSMAIN.NFIRSMAINID = ' + PkValue(pk));

  FIncidentType         := tdbField('GETPARAMS','SITFOUND');
  if bUseWildLandField then
    FFirOrWild := iif(bWildLandValue,'Y','')
  else
    FFirOrWild            := tdbfield('GETPARAMS','FIRORWILD');

  FFatFire              := GetField('GETPARAMS','FATFIRE').AsInteger;
  FInjFire              := GetField('GETPARAMS','INJFIRE').AsInteger;
  FFatCiv               := GetField('GETPARAMS','FATCIV').AsInteger;
  FInjCiv               := GetField('GETPARAMS','INJCIV').AsInteger;
  FHazmat               := tdbField('GETPARAMS','HAZMAT');
  FCauseIgn             := tdbField('GETPARAMS','CAUSEIGN');
  FFireCause            := tdbField('GETPARAMS','FIRECAUSE');
  mWildAddr             := tdbField('GETPARAMS','WILDADDR');
  IncNumLabel.Caption   := FormatIncNum(tdbField('GETPARAMS','INCNUM'));
  DateTimeLabel.Caption := FormatDateTime('MM/DD/YYYYY  HH:NN',GetField('GETPARAMS','DATETIMEALARM').AsDateTime);
  LocationLabel.Caption := alltrim(alltrim(dbfield('GETPARAMS','STRNUM')) + ' ' + tdbfield('GETPARAMS','STREET'));
  CloseApollo('GETPARAMS');

  FRowCount := 0;

  iCurrentRow := 0;
  freeAllStringListObjects( FNodeList );

  SectionsGrid.Items.Clear;

  BasicNode := AddForm(nil,'Basic',TNfirsBasicForm,'NFIRSMAIN','NFIRSMAINID',PK,NfirsNewRecord,0,False);

  If FireModuleAllowed(FFirOrWild,FIncidentType) then
    AddForm(nil,'Fire Report',TNfirsFireForm,'NFIRSFIR','NFIRSMAINID',PK,NfirsNewRecord,0,False);
  If GetStructureCondition(FIncidentType) then
    AddForm(nil,'Structure',TNfirsStrForm,'NFIRSSTR','NFIRSMAINID',PK,NfirsNewRecord,0,False);
  If (FFatFire+FInjFire) > 0 then
    mFireCasualtyHeaderRow := AddHeaderAndDisplayGrid('Fire Casualty Reports','NFIRSFIRECASUALTY',True,True,TNfirsFireCasualtyForm,NfirsFireCasualtyNewRecord,pk);
  If (FFatCiv+FInjCiv) > 0 then
    mCivilianCasualtyHeaderRow := AddHeaderAndDisplaygrid('Civilian Casualty Reports','NFIRSCIVILIAN',True,True,TNfirsCivilianForm,NfirsCivilianNewRecord,pk);
  If GetHazMatCondition(FIncidentType, FHazMat) then
    AddForm(nil,'HazMat',TNfirsHazMatForm,'NFIRSHAZMAT','NFIRSMAINID',PK,NfirsNewRecord,0,False);
  If GetWildLandCondition(FFirOrWild,FIncidentType,mWildAddr) then
    AddForm(nil,'Wildland',TNfirsWildlandForm,'NFIRSWILDLAND','NFIRSMAINID',PK,NfirsNewRecord,0,False);

  If GetArsonCondition(FFirOrWild,FIncidentType,FCauseIgn,FFireCause,mWildAddr) and CheckSecVar('INCARSON') then
    AddForm(nil,'Arson',TNfirsArsonForm,'NFIRSARSON','NFIRSMAINID',PK,NfirsNewRecord,0,False);

  If CheckModule('NEMSIS') and CheckSecVar('NEMSISNFIRSVIEW') then begin
    AddHeaderAndDisplayGrid('NEMSIS PCR Reports',SysViewOverRide('NEMSISNFIRS'),True,True,TNemsisEMSForm,NemsisNewRecord,pk);
  end;

  If CheckModule('NEMSIS3') and CheckSecVar('NEMSIS3NFIRSVIEW') then begin
    AddHeaderAndDisplayGrid('NEMSIS 3 PCR Reports',SysViewOverRide('NEM3NFIRS'),True,True,TNem3EMSForm,Nem3NewRecord,pk);
  end;

  If CheckSecVar('PERSCONF') and (mFireID = '12345') then begin 
    AddHeaderAndDisplayGrid('Personnel Exposures',SysViewOverRide('NFIRSPERSEXP'),True,True,TPersExpForm,PersExpNewRecord,pk);
  end;
  
  If CheckModule('EMS') and CheckSecVar('EMSNFIRSVIEW') then begin
    If CheckModule('NEMSIS') and (mfireID = '77000') then
      AddHeaderAndDisplayGrid('EMS and PCR Reports',SysViewOverRide('EMSNFIRS'),True,True,TNemsisEMSForm,EMSNewRecord,pk)
    else begin
      AddHeaderAndDisplayGrid('EMS and PCR Reports',SysViewOverRide('EMSNFIRS'),True,True,TEMSForm,EMSNewRecord,pk);
    end;  
  end;
  
  If UseNfirsEMS then
    AddHeaderAndDisplayGrid('NFIRS EMS Reports',SysViewOverRide('NFIRSEMS'),True,True,TNfirsEMSForm,NfirsEMSNewRecord,pk);

  If (SQLLookUp(FireID,'FDID','IMAGESET','INC') = 'Y') then begin
    ImageListCntVar    := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSIMAGE WHERE NFIRSMAINID = ' + PK);
    If ImageListCntVar = 0 then
      ImageListCntString := 'Documents and Images'
    else if ImageListCntVar = 1 then
      ImageListCntString := '1 Document or Image'
    else
      ImageListCntString := IntToStr(ImageListCntVar) + ' Documents and Images';
    AddForm(nil,ImageListCntString,TNfirsImageForm,'NFIRSMAIN','NFIRSMAINID',PK,NfirsNewRecord,0,False);
  end;

  If FIncidentType = '611' then begin
    If FIREID = '32D03' then begin
      If FormExists('NfirsBasicForm') then
        TNfirsBasicForm(Form).TypeActField.Value := '93';
    end;
  end;

  If mCurrentCaption<>'' then
    If FNodeList.IndexOf(mCurrentCaption)<>-1 then
      FCurrenTRowObject := TRowObject(FNodeList.Objects[FNodeList.IndexOf(mCurrentCaption)]);
end;

class procedure TNfirsForm.SetupControls(mComponent: TComponent);
var i: Integer;
begin
  with mComponent do begin
    for i:=0 to ComponentCount-1 do
      if Components[i] is TAlpineLookup then
        if TAlpineLookup(Components[i]).ReferencingField='' then begin
          TAlpineLookup(Components[i]).ReferencingField := 'CODE';
          if TAlpineLookup(Components[i]).DisplayField='' then
            TAlpineLookup(Components[i]).DisplayField := 'CODE';
          TAlpineLookup(Components[i]).DatafieldIsCharacter := True;
        end;
  end;
end;

procedure TNfirsForm.NemsisNewRecord(DataSet: TDataSet);
Var Zip        : String;
    ShowSecond : Boolean;
begin
  try
    ShowSecond                                  := (SQLLookUp(FireID,'FDID','NEMSISSET','SHOWSECOND') = 'Y');
    Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, DATETIMEALARM, STRNUM, STREET, ROOMAPT, CITY, STATE, ZIP, DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(PK));
    Zip                                         := alltrim(Substr(tdbfield('NFIRSMAIN','ZIP'),1,5));
    DataSet.FieldByname('E22_05').AsString      := tdbfield('NFIRSMAIN','INCNUM');
    DataSet.FieldByname('STRNUM').AsString      := tdbfield('NFIRSMAIN','STRNUM');
    DataSet.FieldByname('STREET').AsString      := tdbfield('NFIRSMAIN','STREET');
    DataSet.FieldByname('ROOMAPT').AsString     := tdbfield('NFIRSMAIN','ROOMAPT');
    DataSet.FieldByname('FDID').AsString        := tdbfield('NFIRSMAIN','FDID');
    DataSet.FieldByname('E05_04').AsDateTime    := SetTimeSeconds(ShowSecond,GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime);
    DataSet.FieldByname('E08_15').AsString      := Zip;

    If (Zip <> '') then begin
      Open_Query('NEMSISZIP',false,'SELECT * FROM NEMSISZIP WHERE ZIP = ' + AddExpr(Zip));
      DataSet.FieldByname('CITY').AsString   := tdbfield('NEMSISZIP','CITY');
      DataSet.FieldByname('COUNTY').AsString := tdbfield('NEMSISZIP','COUNTY');
      DataSet.FieldByname('STATE').AsString  := tdbfield('NEMSISZIP','STATE');
      DataSet.FieldByname('E08_12').AsString := tdbfield('NEMSISZIP','CITYFIPS');
      DataSet.FieldByname('E08_13').AsString := tdbfield('NEMSISZIP','COUNTYFIPS');
      DataSet.FieldByname('E08_14').AsString := tdbfield('NEMSISZIP','STATEFIPS');
      CloseApollo('NEMSISZIP');
    end;

    DataSet.FieldByname('DISPCALLID').AsString  := GetField('NFIRSMAIN','DISPCALLID').AsString;
    DataSet.FieldByname('PATNUM').AsString      := '1';
    DataSet.FieldByname('NFIRSMAINID').AsString := pk;
  
  finally
    CloseApollo('NFIRSMAIN');
  end;
  TNemsisEMSForm.NewRecord(DataSet)
end;

procedure TNfirsForm.PersExpNewRecord(DataSet: TDataSet);
begin
  try
    Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, DATETIMEALARM, STRNUM, STREET, ROOMAPT, CITY, STATE, ZIP, DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(PK));
    DataSet.FieldByname('DATETIMEEXP').AsDateTime := GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime;
    DataSet.FieldByname('ADDR').AsString          := tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET');
    DataSet.FieldByname('NFIRSMAINID').AsString   := pk;
  finally
    CloseApollo('NFIRSMAIN');
  end;
  TPersExpForm.NewRecord(DataSet)
end;

procedure TNfirsForm.Nem3NewRecord(DataSet: TDataSet);
Var Zip        : String;
    ShowSecond : Boolean;
begin
  try
    ShowSecond                                  := (SQLLookUp(FireID,'FDID','NEMSISSET','SHOWSECOND') = 'Y');
    Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, DATETIMEALARM, STRNUM, STREET, ROOMAPT, CITY, STATE, ZIP, DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(PK));
    Zip                                         := alltrim(Substr(tdbfield('NFIRSMAIN','ZIP'),1,5));
    DataSet.FieldByname('ERECORD01').AsString   := tdbfield('NFIRSMAIN','INCNUM') + '-1';
    DataSet.FieldByname('STRNUM').AsString      := tdbfield('NFIRSMAIN','STRNUM');
    DataSet.FieldByname('STREET').AsString      := tdbfield('NFIRSMAIN','STREET');

    DataSet.FieldByname('ESCENE15').AsString    := tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET');
    DataSet.FieldByname('ESCENE16').AsString    := tdbfield('NFIRSMAIN','ROOMAPT');
    DataSet.FieldByname('FDID').AsString        := tdbfield('NFIRSMAIN','FDID');
    DataSet.FieldByname('ETIMES03').AsDateTime  := SetTimeSeconds(ShowSecond,GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime);
    DataSet.FieldByname('ESCENE19').AsString    := Zip;

    If (Zip <> '') and Not (mFireID = 'EGELS') then begin
      Open_Query('NEMSISZIP',false,'SELECT * FROM NEMSISZIP WHERE ZIP = ' + AddExpr(Zip));
      DataSet.FieldByname('ESCENE17').AsString := tdbfield('NEMSISZIP','GNIS');
      DataSet.FieldByname('ESCENE21').AsString := tdbfield('NEMSISZIP','STATEFIPS') + tdbfield('NEMSISZIP','COUNTYFIPS');
      DataSet.FieldByname('ESCENE18').AsString := tdbfield('NEMSISZIP','STATEFIPS');
      CloseApollo('NEMSISZIP');
    end;

    DataSet.FieldByname('DISPCALLID').AsString  := GetField('NFIRSMAIN','DISPCALLID').AsString;
    DataSet.FieldByname('PATNUM').AsString      := '1';
    DataSet.FieldByname('NFIRSMAINID').AsString := pk;
  
  finally
    CloseApollo('NFIRSMAIN');
  end;
  TNem3EMSForm.NewRecord(DataSet)
end;

procedure TNfirsForm.EMSNewRecord(DataSet: TDataSet);
Var DispCallID : String;
begin                                      
  Open_Query('NFIRSMAIN',false,'SELECT STRNUM, STREET, ROOMAPT, CITY, STATE, ZIP, DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(PK));
  DispCallID := GetField('NFIRSMAIN','DISPCALLID').AsString;
  DataSet.FieldByname('STRNUM').AsString  := tdbfield('NFIRSMAIN','STRNUM');
  DataSet.FieldByname('STREET').AsString  := tdbfield('NFIRSMAIN','STREET');
  DataSet.FieldByname('ROOMAPT').AsString := tdbfield('NFIRSMAIN','ROOMAPT');
  DataSet.FieldByname('CITY').AsString    := tdbfield('NFIRSMAIN','CITY');
  DataSet.FieldByname('STATE').AsString   := tdbfield('NFIRSMAIN','STATE');
  DataSet.FieldByname('ZIP').AsString     := tdbfield('NFIRSMAIN','ZIP');
  CloseApollo('NFIRSMAIN');

  DataSet.FieldByname('PATNUM').AsString      := '1';
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
  DataSet.FieldByname('DISPCALLID').AsString  := DispCallID;

  If CheckModule('NEMSIS') and (mfireID = '77000') then
    TNemsisEMSForm.NewRecord(DataSet)
  else
    TEMSForm.NewRecord(DataSet);
end;

procedure TNfirsForm.NfirsEMSNewRecord(DataSet: TDataSet);
begin
  //DataSet.FieldByname('PATNUM').AsString      := '1';
  DataSet.FieldByname('PATNUM').AsString      :=  GetNextVal('SELECT MAX(PATNUM) FROM NFIRSEMS WHERE NFIRSMAINID = ' + pkValue(pk),'1');
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
end;

procedure TNfirsForm.NfirsNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
end;

procedure TNfirsForm.NfirsCivilianNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
  DataSet.FieldByName('CASNUM').AsString      := GetNextVal('SELECT MAX(CASNUM) FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + pk,'1');
end;

procedure TNfirsForm.NfirsFireCasualtyNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
  DataSet.FieldByName('CASNUM').AsString      := GetNextVal('SELECT MAX(CASNUM) FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + pk,'1');
end;

procedure TNfirsForm.NfirsHazmatNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
end;

procedure TNFIRSForm.ValidateClick(Sender: TObject);
begin
  If ValidateIncident.Caption = 'Submit to NYS?' then begin
    RunSql('UPDATE NFIRSMAIN SET DONE = '+Addexpr('Y')+' WHERE NFIRSMAINID = '+pk);
    RunSql('UPDATE NFIRSMAIN SET SUBDATE = '+Addexpr(FormatDateTime('YYYY-MM-DD',Now))+' WHERE NFIRSMAINID = ' + pk);
    ShowMessage('Report has been submitted to NYS Bureau Fire');
    close;
  end else if ValidateIncident.Caption = MAPPROVE then begin
    If ((MFireID = '15006') and not (CheckSecVar('INCAPP'))) then begin
      ValidateIncident.Enabled         := False;
      ShowMessage('You do not have the required permission to approve this incident.  Please use the RPanel to mark for approval.');
    end else if ((MFireID = '35009') and not (CheckSecVar('APPRINC'))) then begin
      ValidateIncident.Enabled         := False;
      ShowMessage('You do not have the required permission to approve this incident.');
    end else begin
      If (mFireID <> '07130') then begin
        if ((mFireID = '13193') and (SQLLookup(sqllookup(pk,'nfirsmainid','nfirsmain','dispcallid'),'DISPCALLID','DISPCALL','INCSTAT') = 'OPEN')) then
          CommonEndAlarm(GlobalAdoConnection,sqllookup(pk,'nfirsmainid','nfirsmain','dispcallid'),Now);
        RunSql('UPDATE NFIRSMAIN SET DONE = '+Addexpr('Y')+' WHERE NFIRSMAINID = '+pk);
      end;
      InsertSecRecAud('NFIRSMAIN','APPROVE',PK,'Approved Incident');
    end;
    If (mFireID = '09007') or (mFireID = '12345') or (mFireID = 'EGELS') then
      RunSql('UPDATE NFIRSMAIN SET RVSTAT = ' + Addexpr('PR')+' WHERE NFIRSMAINID = '+pk);

    SaveButtonClick(nil);

    If mFireID = 'XXXXX' then
      ValidateIncident.Caption := 'Submit to NYS?'
    else if (mFireID = '07130') then
      ShowMessage('Incident Passes Validation.  Select Reviewed and Completed button to fully submit incident.')
    else 
      Close;
  end else begin
    If SaveButton.Enabled then
      SaveButton.Click;
    Validate(True);
  end;
end;

procedure TNfirsForm.EnableSave;
begin
  inherited;
  ValidateIncident.Caption := 'NFIRS 5.0 Validator';
end;

procedure TNFIRSForm.EquipmentButtonClick(Sender: TObject);
Var NfirsEquUseObject : TBrowseObject;
begin
  inherited;
  NfirsEquForm := TNfirsEquForm.Create(self,pk);
  NfirsEquForm.ShowModal;
  NfirsEquForm.Free;

  {
  end else begin
    NfirsEquUseObject               := TBrowseObject.Create;
    NfirsEquUseObject.PrimeTable    := 'NFIRSEQUUSE';
    NfirsEquUseObject.PrimeKeyField := 'NFIRSEQUUSEID';

    NfirsEquUseObject.AddTable('NFIRSEQUUSE', 'NFIRSEQUUSE', 'NFIRSEQUUSEID');
    NfirsEquUseObject.AddTable('PERS',        'PERS',        'PERSID');
    NfirsEquUseObject.AddTable('NFIRSEQUTYPE','NFIRSEQUTYPE','NFIRSEQUTYPEID');

    If (mFireID = '15006') then begin
      NfirsEquUseObject.AddTable('NFIRSAPP','NFIRSAPP','NFIRSAPPID');
      NfirsEquUseObject.AddField('UNITNUM',          'UNITNUM', 'NFIRSAPP',    'Unit Number',   100);
      NfirsEquUseObject.AddField('NFIRSEQUTYPEDESCR','DESCR',   'NFIRSEQUTYPE','Equipment',     250);
      NfirsEquUseObject.AddField('QUANTITY',         'QUANTITY','NFIRSEQUUSE', 'Quantity',      200);
    end else begin
      NfirsEquUseObject.AddField('NFIRSEQUTYPEDESCR','DESCR',   'NFIRSEQUTYPE','Equipment Type',250);
      NfirsEquUseObject.AddField('QTY',              'QTY',     'NFIRSEQUUSE', 'Quantity',      070);
      NfirsEquUseObject.AddField('QUANTITY',         'QUANTITY','NFIRSEQUUSE', 'Quantity Note', 120);
      NfirsEquUseObject.AddField('DESCR',            'DESCR',   'NFIRSEQUUSE', 'Equipment',     200);
      NfirsEquUseObject.AddField('NARR',             'NARR',    'NFIRSEQUUSE', 'Comments',      200);
    end;

    NfirsEquUseObject.ForeignKeyField   := 'NFIRSMAINID';
    NfirsEquUseObject.ForeignKeyValue   := pk;
    NfirsEquUseObject.Instance          := TNfirsEquUseForm;
    NfirsEquUseObject.NewRecordFunction := NfirsEquUseNewRecord;

    SubSortGridViewDriver(NfirsEquUseObject,'Equipment Used');
  end;
  }
end;

procedure TNfirsForm.NfirsEquUseNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString := pk;
end;

procedure TNfirsForm.UpdateCurrentValidationColors;
var
  i: Integer;
begin
  if mFireid = 'PLTFR' then
    TNfirsForm.ResetNonEditColor(CurrentBaseNfirsForm);
  for i := 0 to N5ErrorList.Count-1 do begin
    If FCurrentRowObject <> nil then begin
      If (GetNfirsFormName(TN5ErrorObject(N5ErrorList.Objects[i]).FormName) = FCurrentRowObject.Instance) and (pk = FCurrentRowObject.Pk) then
        ColorComponentGreen(TN5ErrorObject(N5ErrorList.Objects[i]).FieldName,CurrentBaseNfirsForm);

      if CurrentBaseNfirsForm<>nil then
        if CurrentBaseNfirsForm is TNfirsBasicForm then
          ColorComponentGreen(TN5ErrorObject(N5ErrorList.Objects[i]).FieldName,TNfirsBasicForm(CurrentBaseNfirsForm).RPanelForm);
    end;
  end;  
end;    



procedure TNFIRSForm.Validate(mSaveIt: Boolean);
var i                 : Integer;
    LabelColor        : TColor;
    RowCount          : Integer;
    FatalError        : Boolean;
begin
  inherited;
  If mSaveIt then
    SaveButtonClick(self);

  freeAllStringListObjects( N5ErrorList);

  CheckOneIncident(FireID, pk, N5ErrorList);

  FatalError              := false;
  ErrorGrid.Clear;
  ErrorGrid.RowCount      := 1;
  ErrorGrid.ColCount      := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.SetColumn('ERRORNUM', '',         001);
  ErrorGrid.SetColumn('SECTION',  'Page',     050);
  ErrorGrid.SetColumn('BOX',      '#',        020);
  ErrorGrid.SetColumn('FIELD',    'Field',    200);
  ErrorGrid.SetColumn('LONGDESCR','LONGDESCR',001);


  for i := 0 to N5ErrorList.Count-1 do begin
    If TN5ErrorObject(N5ErrorList.Objects[i]).ErrorType = 'W' then begin
      LabelColor := clblack;
    end else begin
      LabelColor := clred;
      FatalError := True;
    end;

    ErrorGrid.SetValue('ERRORNUM', IntToStr(i));
    ErrorGrid.SetValue('SECTION',  TN5ErrorObject(N5ErrorList.Objects[i]).FormDescr);
    ErrorGrid.SetValue('BOX',      TN5ErrorObject(N5ErrorList.Objects[i]).FormSection);
    ErrorGrid.SetValue('FIELD',    TN5ErrorObject(N5ErrorList.Objects[i]).FieldDescr);
    ErrorGrid.SetValue('LONGDESCR',TN5ErrorObject(N5ErrorList.Objects[i]).ErrorDescr);
  end;


  UpdateCurrentValidationColors;

  ErrorGridClick(self);

  //If N5ErrorList.Count = 0 then begin
  if Not FatalError then begin
    ValidateIncident.Caption := MAPPROVE;
    LongDescrField.Caption   := 'Incident ' + IncNumLabel.Caption + ' meets the minimum NFIRS 5.0 approval requirements . . .';
    if not CheckSecVar('INC_CAN_APPR') then begin
      ValidateIncident.Caption := 'Needs Approval';
      ValidateIncident.Enabled := false;
    end;
  end;
end;

function TNFIRSForm.GetNfirsFormName(FormName: String): TComponentClass;
begin
  If FormName = 'NFIRSBAS' then
    GetNfirsFormName := TNfirsBasicForm
  else if FormName = 'NFIRSFIR' then
    GetNfirsFormName := TNfirsFireForm
  else if FormName = 'NFIRSEMS' then
    GetNfirsFormName := TNfirsEmsForm
  else if FormName = 'NFIRSSTR' then
    GetNfirsFormName := TNfirsStrForm
  else if FormName = 'NFIRSFF' then
    GetNfirsFormName := TNfirsFireCasualtyForm
  else if FormName = 'NFIRSCIV' then
    GetNfirsFormName := TNfirsCivilianForm
  else if FormName = 'NFIRSHAZMAT' then
    GetNfirsFormName := TNfirsHazMatForm
  else if FormName = 'NFIRSHAZMATCHEM' then
    GetNfirsFormName := TNFIRSHazMatChemForm
  else if FormName = 'NFIRSWILD' then
    GetNfirsFormName := TNfirsWildlandForm
  else if FormName = 'NFIRSARS' then
    GetNfirsFormName := TNfirsArsonForm;
end;

procedure TNFIRSForm.ErrorGridClick(Sender: TObject);
begin
  inherited;
  LongDescrField.Caption := ErrorGrid.GetValue('LONGDESCR',ErrorGrid.Row);
end;

procedure TNFIRSForm.ErrorGridDblClick(Sender: TObject);
var iError     : Integer;
    EObject    : TN5ErrorObject;
    i          : Integer;
    mRowObject : TRowObject;
    Handled    : Boolean;
begin
  iError  := strtoint(ErrorGrid.GetValue('ERRORNUM'));
  EObject :=  TN5ErrorObject(N5ErrorList.Objects[iError]);

  if ((EObject.FormName='NFIRSARS') or (EObject.FormName='NFIRSJUV')) and not checkSecVar('INCARSON') then begin
    ShowMessage('You do not have security for the Arson Module');
    exit;
  end;  

  mRowObject := nil;
  Handled    := False;
  for i := 0 to FNodeList.Count - 1 do
    if TRowObject(FNodeList.Objects[i]).Instance <> nil then begin
      if TRowObject(FNodeList.Objects[i]).Instance = GetNfirsFormName(EObject.FormName) then begin
        mRowObject := TRowObject(FNodeList.Objects[i]);
        if mRowObject.pk = EObject.pk then begin
          LoadForm(mRowObject);
          GotoComponent(EObject.FieldName,CurrenTBaseNfirsForm);
          Handled := True;
          break;
        end else if mRowObject.ShowFormIndependently then begin
          RunAlpineFormWithOwner(nil,mRowObject.Instance,EObject.pk,mRowObject.PrimeTable,mRowObject.NewRec);
          GotoComponent(EObject.FieldName,GetFormOfType(mRowObject.Instance));
          Handled := True;
          break;
        end;
      end;
    end;

  If not Handled then
    if EObject.FormName = 'NFIRSAPP' then
      ShowMessage('You will need to manually open the apparatus record to change the value')
    else
      ShowMessage('Invalid field is not mapped.  You will need to manually complete the invalid entry.');
end;

procedure TNfirsForm.GotoComponent(mFieldName: String; mSourceForm: TForm);
begin
  CommonGotoComponent(mFieldName,mSourceForm,False);
  if mSourceForm is TNfirsBasicForm then
    CommonGotoComponent(mFieldName,TNfirsBasicForm(mSourceForm).RPanelForm,False);
end;

procedure TNfirsForm.ColorComponentGreen(mFieldName: String; mSourceForm: TForm);
begin
  CommonGotoComponent(mFieldName,mSourceForm,True);
end;


class procedure TNfirsForm.ResetNonEditColor(mSourceForm: TForm);
var
  i: Integer;
begin
  if mSourceForm = nil then exit;
  for i:= 0 to mSourceForm.ComponentCount-1 do begin
    If mSourceForm.Components[i] is TAlpineLookup then
        TAlpineLookup(mSourceForm.Components[i]).AlpineColors.NonEditColor := clWhite
    else if mSourceForm.Components[i] is TAlpineEdit then 
        TAlpineEdit(mSourceForm.Components[i]).AlpineColors.NonEditColor := ClWhite
    else if mSourceForm.Components[i] is TAlpineMemo then
       TAlpineMemo(mSourceForm.Components[i]).AlpineColors.NonEditColor := clWhite
    else if mSourceForm.Components[i] is TAlpineDateTime then
        TAlpineDateTime(mSourceForm.Components[i]).AlpineColors.NonEditColor := clWhite
  end;

end;


class procedure TNfirsForm.CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
var i        : Integer;
    mControl : TWinControl;
  procedure FlashControl;
  begin
      
    if mControl.Enabled then begin
      if mControl is TAlpineEdit then begin
        if mSetGreen then
          TAlpineEdit(mControl).AlpineColors.NonEditColor := ColorRequired
        else
          TAlpineEdit(mControl).Flash

      end else if mControl is TNem3MultiPick then
        TNem3MultiPick(mControl).Flash
      else if mControl is TAlpineLookup then begin
        if mSetGreen then
          TAlpineLookup(mControl).AlpineColors.NonEditColor := ColorRequired
        else
          TAlpineLookup(mControl).Flash;
      end else if mControl is TAlpineMemo then begin
        if mSetGreen then begin
          if mSourceForm is TAlpineBaseForm then begin
            if not TAlpinebaseForm(mSourceForm).ViewOnly then
              TAlpineMemo(mControl).AlpineColors.NonEditColor := ColorRequired;
          end;
        end else
          TAlpineMemo(mControl).Flash;
      end else if mControl is TAlpineDatetime then begin
        if mSetGreen then
          TAlpineDateTime(mControl).AlpineColors.NonEditColor := ColorRequired
        else
          TAlpineDateTime(mControl).Flash;
      end;
      if not mSetGreen then
        mControl.SetFocus;
    end;
  end;
begin
  If mSourceForm = nil then
    Exit;
  mSourceForm.BringToFront;
  mControl := nil;

  for i:= 0 to mSourceForm.ComponentCount-1 do begin
    If mSourceForm.Components[i] is TAlpineLookup then begin
      If uppercase(TAlpineLookup(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineLookup(mSourceForm.Components[i]);

    end else if mSourceForm.Components[i] is TNem3MultiPick then begin
      If uppercase(TNem3MultiPick(mSourceForm.Components[i]).DataFieldName) = uppercase(mFieldname) then
        mControl := TNem3MultiPick(mSourceForm.Components[i]);

    end else if mSourceForm.Components[i] is TAlpineEdit then begin
      If uppercase(TAlpineEdit(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineEdit(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineMemo then begin
      If uppercase(TAlpinememo(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineEdit(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineDateTime then begin
      If uppercase(TAlpineDateTime(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineDateTime(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineCheckBox then begin
      If uppercase(TAlpineCheckbox(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineCheckbox(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TCheckBox then begin
      If uppercase(TCheckBox(mSourceForm.Components[i]).Name) = uppercase(mFieldname) then
        mControl := TCheckBox(mSourceForm.Components[i]);
    end;
  end;
  If mControl <> nil then begin
    if mControl.Visible and mControl.Enabled then
      FlashControl
  end;  
end;


procedure TNfirsForm.DisplayNfirsImageForm;
begin
  FCurrentBaseNfirsForm  := TBaseNfirsForm(TNfirsImageForm.NewInstance);
  FCurrentBaseNfirsForm.Create(self ,pk);
  TBaseNfirsForm(FCurrentBaseNfirsForm).DoAfterSetControls(self);
  FCurrentbaseNfirsForm.Parent             := MainNfirsPanel;  //DisplayPanel;
  FCurrentBaseNfirsForm.show;
  FCurrentBaseNfirsForm.bringtofront;
end;

procedure TNfirsForm.DisplayForm(mInstance: TComponentClass;mpk,mPrimeTable,mCompareField: String; mNewRecFunc: TDataSetNotifyEvent );
Var mFieldList : String;
begin
  if FCurrentBaseNfirsForm<>nil then
    FCurrentBaseNfirsForm.Free;
  FCurrentBaseNfirsForm  := TBaseNfirsForm(mInstance.NewInstance);
  mFieldList             := BuildFieldListBasedOnComponents(FCurrentBaseNfirsForm,FieldsFromComponents);
  try

    Open_Query('GETNFIRS',True,'SELECT * FROM ' + mPrimeTable + ' WHERE ' + mCompareField + ' = ' + mpk);
    A('GETNFIRS').OnNewRecord := mNewRecFunc;
    If not A('GETNFIRS').RecordsExist then begin
      GetTable('GETNFIRS').Insert;
      GetTable('GETNFIRS').Post;
      mpk := A('GETNFIRS').NewPk;
    end else
      mpk := GetField('GETNFIRS',mPrimetable+'ID').AsString;

    FCurrentBaseNfirsForm.Create(self ,mpk);


    SetupControls(FCurrenTBaseNfirsForm);
    try
      TNormalBaseForm.SetControls(TControl(FCurrenTBaseNfirsForm),nil, 'GETNFIRS',mPrimeTable,SaveButton);
      TBaseNfirsForm(FCurrentBaseNfirsForm).DoAfterSetControls(self);
      TNormalBaseForm(FCurrenTBaseNfirsForm).ViewOnly := ViewOnly;
      FCurrentBaseNfirsForm.ViewOnly := ViewOnly;

      if mInstance = TNfirsBasicForm then begin
        TNormalBaseForm.ClassSetViewOnly(TNfirsBasicForm(FCurrentBaseNfirsForm).RPanelForm,ViewOnly);
        TNfirsBasicForm(FCurrentBaseNfirsForm).RPanelForm.DoAfterSetViewOnly;

      end;

      if (FIREID = '28042') or (FIREID = '20019') or (FIREID = '30029') or (FIREID = '03800') or (FIREID = '52280') then
        TNfirsBasicForm(FCurrentBaseNfirsForm).ResourceButtonClick(self);

      if mInstance=TNfirsBasicForm then begin
        SetControls(TNfirsBasicForm(FCurrentBaseNfirsForm).RPanelForm,nil,'GETNFIRS',mPrimeTable,SaveButton);
        TNfirsBasicForm(FCurrentBaseNfirsForm).RPanelForm.DoAfterSetControls(self);
      end;
    finally
      CloseApollo('GETNFIRS');
    end;
  finally
    CloseApollo('GETNFIRS');
  end;
  FCurrentBaseNfirsForm.Controls[0].Parent := DisplayPanel;
  FCurrentbaseNfirsForm.Parent             := DisplayPanel;
  FCurrentBaseNfirsForm.BorderStyle        := bsNone;
  FCurrentBaseNfirsForm.CreateWnd;
  if FCurrentBaseNfirsForm is TNfirsImageForm then
    TNfirsImageForm(FCurrentBaseNfirsForm).DoInitializationStuff;
end;

function TNFIRSForm.LoadForm(mRowObject: TRowObject; ForceFormRefresh: Boolean): TAlpinePanel;
var i: Integer;
begin
  result := nil;
  If (FCurrenTRowObject<>nil) and (mRowObject<>nil) then begin
    If (FCurrenTRowObject.Instance <> mRowObject.Instance) or (FCurrenTRowObject.pk <> mRowObject.pk) then begin
      If SaveButton.enabled then begin
        SaveButtonClick(nil);
      end;
    end;
  end;

  FCurrenTRowObject := mRowObject;
  If mRowObject <> nil then
    If (FCurrenTBaseNfirsForm<> nil) and (mRowObject.pk=FCurrentPk) then
      If FCurrenTBaseNfirsForm is mRowObject.Instance then begin
        For i := 0 to FCurrenTBaseNfirsForm.ComponentCount-1 do begin
          If FCurrenTBaseNfirsForm.Components[i] is TAlpinepanel then
            If TAlpinePanel(FCurrenTBaseNfirsForm.Components[i]).rightCaption = mRowObject.Caption then begin
              TAlpinePanel(FCurrenTBaseNfirsForm.Components[i]).FocusFirstControl;
              result := TAlpinePanel(FCurrenTBaseNfirsForm.Components[i]);
              if not ForceFormRefresh then
                exit;
            end;
        end;
        if not ForceFormRefresh then
          exit;
      end;

  FCurrentPk := mRowObject.pk;
  FreeCurrentForm;
  displaypanel.Visible := False;

  If (mRowObject.Instance <> nil) and (not mRowObject.HeaderRow) then
    DisplayForm(mRowObject.Instance,mRowObject.pk,mRowObject.PrimeTable,mRowObject.CompareField,mRowObject.NewRec);
  displaypanel.Visible := True;
  UpdateCurrentValidationColors;

  THackPanel(DisplayPanel).SelectFirst;
end;

procedure TNFIRSForm.FreeCurrentForm;
begin
  If FCurrenTBaseNfirsForm <> nil then begin
    FCurrenTBaseNfirsForm.close;
    FCurrenTBaseNfirsForm.Free;
    FCurrenTBaseNfirsForm := nil;
  end;
end;

procedure TNFIRSForm.FormDestroy(Sender: TObject);
begin
  FreeCurrentForm;
  ClearAndFreeStringList( FNodeList );
  ClearandFreeStringList( N5ErrorList );
  inherited;
end;

procedure TNFIRSForm.FormShow(Sender: TObject);
begin
  inherited;
  LoadForm(BasicNode);
  Validate(False);
  ScaleButtonsOnPanel('H',BaseBottomPanel);
  if (FDoneField.Value = 'N') and ((mFireID = 'HARFO') or (mFireID = '28029') or (mFireID = '28030')) then begin
    TNfirsBasicForm.UpdateResource(PK);
  end;
end;

function TNfirsForm.DoSave: Boolean;
var mRecordModified : Boolean;
    mInsertModex     : Boolean;
    LocalPk         : String;

  procedure SavesubForm(mPanel: TWinControl; mTable, compfield : String; var ipk: String);
  var mRecordModifed: Boolean;
  begin
    If (trim(mTable)='') or (trim(CompField)='') or (trim(ipk)='') then
      exit;
    try
      Open_Query('CHKIT',False,'SELECT '+mTable+'ID FROM '+mTable+' WHERE '+compfield+'  = '+pkValue(ipk));
      If not A('CHKIT').RecordsExist then begin
        mInsertModex := True;
        TableInsertReturnPk(mTable,['NFIRSMAINID'],[pk],ipk);
        FCurrentBaseNfirsForm.FPk := ipk;
      end else begin
        ipk := GetField('CHKIT',mTable+'ID').AsString;
        mInsertModex := False;
      end;
      TNormalBaseForm.SaveComponents(mRecordModified,mTable,mPanel,ipk,TButton(SaveButton),mTable+'ID',False,bShowRequiredMessage);
      If TNfirsForm(GetFormOfType(TNfirsForm))<>nil then
        TNfirsForm(GetFormOfType(TNfirsForm)).RecordModified := mRecordModified;
    finally
      CloseApollo('CHKIT');
    end;
    TFDFunc.AfterPost(mTable,anystrtoint(ipk));
  end;




begin
  result := True;
  If FCurrenTRowObject<>nil then begin
    If FCurrenTRowObject.Instance <>nil  then begin
      If FCurrenTRowObject.CompareField='NFIRSMAINID' then
        LocalPk := Pk
      else                                                                            
        LocalPk := FCurrentRowObject.Pk;
      DoBeforePost(self);

      SaveSubForm(DisplayPanel,FCurrenTRowObject.PrimeTable,FCurrenTRowObject.CompareField,LocalPk);
      DoAfterPost(self);
      if FUpdateControl <> nil then
        if FUpdateControl is TNewView then
          if FUpdateControl <> nil then
            TNewView(FUpdateControl).RefreshGrid(pk,'','',true);

      InsertMode := False;
    end;
  end;
  If subBlockBrowse.Visible then
    If FCurrentBaseNfirsForm<>nil then
      SubBlockBrowse.RefreshGrid(FCurrentBaseNfirsForm.FPK)
    else
      SubBlockBrowse.RefreshGrid();
end;


class procedure TBaseNfirsForm.GetNavigation(mRowObject: TRowObject);
begin

end;

function TBaseNfirsForm.GetViewOnly: Boolean;
var mNfirsForm: TNfirsForm;
begin
  mNfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If mNfirsForm<>nil then
    result := mNfirsForm.ViewOnly
  else
    result := False;
end;

procedure TBaseNfirsform.SetViewOnly(Value: Boolean);
var mNfirsForm: TNfirsForm;
begin
  inherited;
  mNfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If mNfirsForm<>nil then
    mNfirsForm.ViewOnly := Value
  else
    mNfirsForm.ViewOnly := False;
end;



constructor TBaseNfirsForm.Create(AOwner: TComponent; mPk: String);
begin
  FPK       := mpk;
  inherited Create(AOwner,mpk);
  FSubForm  := True;
end;

destructor TBaseNfirsForm.Destroy;
begin
  inherited;
end;

procedure TNFIRSForm.BaseBottomPanelClick(Sender: TObject);
begin
  inherited;
  UpdateNodesBasedOnIncType(false);
end;

procedure TNfirsForm.GotoRow(HeaderRowObject: TRowObject; ipk: String);
var mRowObject : TRowObject;
    i          : Integer;
begin
  for i := 0 to FNodeList.Count-1 do begin
    mRowObject := TRowObject(FNodeList.Objects[i]);
    if (mRowObject.Instance = HeaderRowObject.Instance) and (mRowObject.pk = ipk) then begin
      SectionsGrid.Selected := mRowObject.Node;
      break;
    end;                                               
  end;
end;

procedure TNFIRSForm.SectionsGridChange(Sender: TObject; Node: TTreeNode);
var i          : Integer;
    mRowObject : TRowObject;
begin
  inherited;
  SectionsGrid.SetFocus;
  mFocusPanel := nil;
  for i := 0 to FNodeList.count - 1 do begin
    mRowObject := TRowObject(FNodeList.Objects[i]);
    If mRowObject.Node = Node then begin
      If mRowObject.DisplayGrid then begin
        if SubBlockBrowse.BrowseObject <> nil then begin
          SubBlockBrowse.BrowseObject.Free;
          SubBlockBrowse.BrowseObject := nil;
        end;
        SubBlockBrowse.Visible            := True;
        SubBlockBrowse.ExplicitWhereClause :=  ' WHERE NFIRSMAINID = ' + PkValue(Pk);

        SubBlockBrowse.Setup(mRowObject.PrimeTable,mrowObject.Instance,mrowObject.NewRec);
      end else
        SubBlockBrowse.Visible := False;

      mFocusPanel           := LoadForm(mRowObject);
    end;
  end;
end;

procedure TNFIRSForm.SectionsGridClick(Sender: TObject);
begin
  inherited;
  if mFocusPanel <> nil then
    mFocusPanel.FocusfirstControl;
end;

procedure TNFIRSForm.ErrorGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
begin
  inherited;
  LongDescrField.Caption := ErrorGrid.GetValue('LONGDESCR',NewRow);
end;

procedure TNFIRSForm.AttendButtonClick(Sender: TObject);
Var Done : Boolean;
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
  TNfirsForm.DoAttendance(pk);

  Done := (SQLLookUp(pk,'NFIRSMAINID','NFIRSMAIN','DONE') = 'Y');
  If Not Done then
    TNfirsBasicForm.UpdateResource(PK);
end;

class procedure TNfirsForm.DoAttendance(mpk: String);
Var FdidVar       : String;
    IncNumVar     : String;
    DateTimeAlarm : TDateTime;
begin
  try
    Open_Query('GETNFIRSMAIN',false,'SELECT DATETIMEALARM, INCNUM, FDID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(mPK));
    FdidVar       := dbfield('GETNFIRSMAIN','FDID');
    IncNumVar     := dbfield('GETNFIRSMAIN','INCNUM');
    DateTimeAlarm := GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime;

  finally
    CloseApollo('GETNFIRSMAIN');
  end;

  If (mFireID = '10700') then
    ShowMessage('You must take attendance from the apparatus usage')
  else begin
    CheckBoxForm                       := TCheckBoxForm.Create(Application,'NFIRSMAIN','NFIRSATT',mPK,FdidVar);
    CheckBoxForm.TitleLabel.Caption    := 'NFIRS Incident Attendance';
    CheckBoxForm.DescrField.Caption    := 'Attendance for ' + substr(IncNumVar,1,4) + '-' + substr(IncNumVar,5,6);
    CheckBoxForm.DateTimeField.Caption := FormatDateTime('MM/DD/YYYY HH:NN',DateTimeAlarm);
    CheckBoxForm.ShowModal;
    CheckBoxForm.Free;
  end;  
end;  


procedure TNFIRSForm.AppButtonClick(Sender: TObject);
Var Done : Boolean;
begin
  inherited;
  if mFireid= '89011' then begin
    if sqllookup(pk,'nfirsmainid','nfirsmain','dispcallid')='' then  // this ensures existence of DISPCALL record, which is needed to link times.
      CreateDispCallRecord(pk);
  end;    


  If SaveButton.Enabled and (MFireID <> '01920') then     //added for deputy eldrige 01920
    SaveButtonClick(self); 
  If (SqlLookUp(mFireID,'FDID','NFIRSSET','RESBROWSE') = 'R') then begin
    NFIRSAppUseRAForm := TNFIRSAppUseRAForm.Create(self,pk);
    NFIRSAppUseRAForm.ShowModal;
    NFIRSAppUseRAForm.Free;
  end else begin
    NFIRSAppUseForm := TNFIRSAppUseForm.Create(self,pk);
    NFIRSAppUseForm.ShowModal;
    NFIRSAppUseForm.Free;
  end;
  Done := (SQLLookUp(pk,'NFIRSMAINID','NFIRSMAIN','DONE') = 'Y');
  If Not Done then
    TNfirsBasicForm.UpdateResource(pk);
end;

procedure TNFIRSForm.ArsonButtonClick(Sender: TObject);
Var NfirsArsonID : String;
begin
  NfirsArsonID := SQLLookUp(PK,'NFIRSMAINID','NFIRSARSON','NFIRSARSONID');
  RunAlpineForm(TNfirsArsonInvForm,NfirsArsonID,'NFIRSARSON',NfirsArsonInvNewRecord);
end;

procedure TNFIRSForm.NfirsArsonInvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSMAINID').AsString := PK;
  Open_Query('NFIRSMAIN',false,'SELECT STRNUM, STREET, ROOMAPT, PLASTNAME FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pk);
  DataSet.FieldbyName('ADDRESS').AsString     := tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET');
  CloseApollo('NFIRSMAIN');
end;

procedure TNFIRSForm.FindButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('NFIRSMAIN',TNFIRSForm,TNFIRSForm.NewRecord,nil);
end;

function TNFIRSForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  result := CheckSecVar('INCADD');
  if Sender is TNewView then begin
    if TNewView(Sender).ViewCode = 'NFIRSINVALL' then
      result := False;
  end;
end;

function TNFIRSForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('INCDEL');
end;


procedure TNFIRSForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TNFIRSForm.DispCallButtonClick(Sender: TObject);
Var DispCallID   : String;
begin
  try
    Open_Query('NFIRSMAIN',false,'SELECT DISPCALLID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(PK));
    DispCallID := GetField('NFIRSMAIN','DISPCALLID').AsString;
  finally
    CloseApollo('NFIRSMAIN');
  end;  

  If (AnyStrToInt(DispCallID) > 0) then
    RunAlpineForm(TDispCallForm,DispCallID,'DISPCALL',TDispCallForm.NewRecord);
end;


class function TNFIRSForm.CreateExposure(NFIRSMainID: String; Var NewNfirsMainID: String): Boolean;
Var FieldNum       : Integer;
    VFieldName     : String;
    Fdid           : String;
    IncNum         : String;
    ExpNum         : String;
    NewExpNum      : String;
    RetVal         : Boolean;
begin
  NewNfirsMainID := '';
  Open_Query('NFIRSMAIN',False,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkvalue(NfirsMainID));
  Fdid   := GetField('NFIRSMAIN','FDID').AsString;
  IncNum := GetField('NFIRSMAIN','INCNUM').AsString;

  Open_Query('GETEXP',False,'SELECT EXPNUM FROM NFIRSMAIN WHERE FDID = ' +  AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' ORDER BY EXPNUM DESC');
  ExpNum := padl(IntToStr(AnyStrToInt(GetField('GETEXP','EXPNUM').AsString)+1),2,'0');
  CloseApollo('GETEXP');

  RetVal := false;
  If BooleanMessageDlg('Do you want to create exposure number ' + IntToStr(AnyStrToInt(ExpNum)) + ' for incident ' + substr(IncNum,1,4) + '-' + substr(IncNum,5,6)) then begin
    Open_Query('NFIRSMAINNEW',True,'SELECT * FROM NFIRSMAIN WHERE 1=2');
    GetTable('NFIRSMAINNEW').Insert;

    for FieldNum := 0 to GetTable('NFIRSMAIN').FieldCount - 1 do begin
      VFieldName := A('NFIRSMAIN').FieldName(FieldNum);
      If VFieldName <> 'NFIRSMAINID' then
        GetField('NFIRSMAINNEW',VFieldName).AsString := GetField('NFIRSMAIN',VFieldName).AsString;
    end;


    GetField('NFIRSMAINNEW','EXPNUM').AsString   := ExpNum;
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
    NewNfirsMainID := GetField('NFIRSMAINNEW','NFIRSMAINID').AsString;

    CloseApollo('NFIRSMAINNEW');
    RetVal := true;
  end;
  CloseApollo('NFIRSMAIN');
  CreateExposure := RetVal;
end;

procedure TNFIRSForm.CreateDispCallRecord(pk: String);
var
  nfirsmain, dispcall: TApolloData;

begin
  nfirsmain := open_query(true,'select * from nfirsmain where nfirsmainid = '+pkValue(pk));
  dispcall := open_query(true,'select * from dispcall where 1=2');
  dispcall.insert;
  if getfield(nfirsmain,'datetimealarm').AsDatetime = 0 then begin
    dispcall.fieldbyname('datetimedisp').AsDateTime := Now;
    dispcall.fieldbyname('datetimerec').AsDateTime := Now;
  end else  begin
    dispcall.fieldbyname('datetimedisp').AsDateTime := getfield(nfirsmain,'datetimealarm').AsDatetime;
    dispcall.fieldbyname('datetimerec').AsDateTime := getfield(nfirsmain,'datetimealarm').AsDatetime;
  end;
  dispcall.fieldbyname('datetimecreate').AsDateTime := Now;
  getfield(dispcall,'strnum').AsString := getfield(nfirsmain,'strnum').AsString;
  if tdbfield(nfirsmain,'street')='' then
    getfield(dispcall,'street').AsString := 'Added automatically for incident '+tdbfield(nfirsmain,'incnum')
  else
    getfield(dispcall,'street').AsString := tdbfield(nfirsmain,'street');

  getfield(dispcall,'address').AsString := alltrim(tdbfield(dispcall,'strnum')+' '+tdbfield(dispcall,'street'));      
  getfield(dispcall,'nfirsmainid').AsString := pk;
  getfield(dispcall,'fdid').AsString := getfield(nfirsmain,'fdid').AsString;           
  dispcall.post;
  nfirsmain.edit;
  GetField(nfirsmain,'dispcallid').AsString := getfield(dispcall,'dispcallid').AsString;
  nfirsmain.Post;
  nfirsmain.free;
  dispcall.free;
end;


procedure TNfirsForm.DoAfterPost(Sender: TObject);
begin
  If (FDoneField.Value = 'Y') then begin
    ShowMessage('NOTE - You are saving changes to an Approved Incident.  The incident will now be marked "Unapproved".  Please be sure to Re-Approve the incident!');
    RunSQL('UPDATE NFIRSMAIN SET DONE = ' + AddExpr('N') + ' WHERE NFIRSMAINID = ' + PKValue(PK));
    FDoneField.Value := 'N';
    If (mFireID = '09007') or (mFireID = '07130') then
      RunSql('UPDATE NFIRSMAIN SET RVSTAT = '+Addexpr('PR')+' WHERE NFIRSMAINID = '+pk);
  end;

  if (mFireID = '07130') and (FDoneField.Value = 'N') and (ValidateIncident.Enabled = False) then begin
    ValidateIncident.Enabled := True;
    Validate(False);
    RunSql('UPDATE NFIRSMAIN SET RVSTAT = '+Addexpr('PR')+' WHERE NFIRSMAINID = '+pk);
  end;

  if CHECKMODULE('CADINT') or CHECKMODULE('DISP') then begin
    if anystrtoint(sqllookup(pk,'nfirsmainid','nfirsmain','dispcallid'))=0 then
      CreateDispCallRecord(pk);
  end;



end;

class procedure TNfirsForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Create Exposure';
    m.Onclick := CreateExposureClick;
    TNewView(Sender).PopupMenu.Items.Add(m);

    If CheckSecVar('INCAPP') then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Unapprove Incident';
      m.Onclick := UnApproveClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

    If CheckSecVar('INCADD') then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Replicate Incident';
      m.Onclick := ReplicateIncidentClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

    If AlpineLogin or ((mFireid='28030') AND CheckSecVar('INCSETUP')) or ((mFireid='AMHER') AND CheckSecVar('INCSETUP')) then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Renumber Incidents';
      m.Onclick := IncReNumClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

    If AlpineLogin or ((mFireid='28008') and CheckSecVar('INCREVIEW')) then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Enter Reviewed and Completed';
      m.Onclick := RCMenuClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

  end;
end;

class procedure TNfirsForm.RCMenuClick(Sender: TObject);
var NfirsMainID    : String;
    NewNfirsMainID : String;
    mView          : TNewView;
begin
  NfirsMainID := '';
  mView       := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    mView       := TNewView(TMenuItem(Sender).Owner);
    NfirsMainID := mView.ViewGrid.GetValue('NFIRSMAINID');
    If Not (NfirsMainID = '') then begin
      Open_Query('NFIRSMAIN',true,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkvalue(NfirsMainID));
      GetTable('NFIRSMAIN').Edit;
      GetField('NFIRSMAIN','DONE').AsString         := 'Y';
      GetField('NFIRSMAIN','RVSTAT').AsString       := 'RC';
      GetField('NFIRSMAIN','RVDATE').AsString       := GetDateAsString;
      GetField('NFIRSMAIN','RVDESCR').AsString      := '';

      If Not (GlobalPersID = '') then begin
        GetField('NFIRSMAIN','PERSIDREVIEW').AsString := GlobalPersID;
        Open_Query('PERS',false,'SELECT PERS.LNAME, PERS.FNAME, PERS.MNAME, PERSRANK.DESCR PERSRANKDESCR FROM PERS ' +
                                'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
                                'WHERE PERS.PERSID = ' + pkValue(GlobalPersID));
        If A('PERS').RecordsExist then begin
          GetField('NFIRSMAIN','RVLAST').AsString  := tdbfield('PERS','LNAME');
          GetField('NFIRSMAIN','RVFIRST').AsString := tdbfield('PERS','FNAME');
          GetField('NFIRSMAIN','RVMI').AsString    := tdbfield('PERS','MNAME');
          GetField('NFIRSMAIN','RVRANK').AsString  := tdbfield('PERS','PERSRANKDESCR');
        end;
        CloseApollo('PERS');
      end;

      GetTable('NFIRSMAIN').Post;
      CloseApollo('NFIRSMAIN');
      If mView <> nil then
        mView.RefreshGrid(NfirsMainID);
    end;
  end;
end;


class procedure TNfirsForm.ReplicateIncidentClick(Sender: TObject);
var NfirsMainID    : String;
    NewNfirsMainID : String;
    mView          : TNewView;
begin
  inherited;
  mView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    mView       := TNewView(TMenuItem(Sender).Owner);
    NfirsMainID := mView.ViewGrid.GetValue('NFIRSMAINID')
  end;

  RepIncForm     := TRepIncForm.Create(application,NfirsMainID);
  RepIncForm.ShowModal;
  NewNfirsMainID := RepIncForm.NewNfirsMainID;
  RepIncForm.Free;

  If (mView <> nil) and Not (NewNfirsMainID = '') then begin
    mView.ViewGrid.SetValue('NFIRSMAIN',mView.ViewGrid.Row,NewNfirsMainID);
    mView.RefreshGrid(NewNfirsMainID,'','',True);
  end;
end;

class procedure TNfirsForm.CreateExposureClick(Sender: TObject);
var NfirsMainID    : String;
    NewNfirsMainID : String;
    mView          : TNewView;
begin
  inherited;
  mView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    mView := TNewView(TMenuItem(Sender).Owner);
    NfirsMainID := mView.ViewGrid.GetValue('NFIRSMAINID')
  end;

  TNFIRSForm.CreateExposure(NFIRSMainID, NewNfirsMainID);
  If (mView <> nil) and Not (NewNfirsMainID = '') then begin
    mView.ViewGrid.SetValue('NFIRSMAIN',mView.ViewGrid.Row,NewNfirsMainID);
    mView.RefreshGrid(NewNfirsMainID,'','',True);
  end;
end;

class procedure TNfirsForm.UnApproveClick(Sender: TObject);
var NfirsMainID   : String;
    NewView          : TNewView;
begin
  inherited;
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView     := TNewView(TMenuItem(Sender).Owner);
    NfirsMainID := NewView.ViewGrid.GetValue('NFIRSMAINID');
  end;

  If BooleanMessageDlg('Unapprove Incident?') then begin
    If (NewView <> nil) and Not (NfirsMainID = '') then begin
      RunSQL('UPDATE NFIRSMAIN SET DONE = ' + AddExpr('N') + ' WHERE NFIRSMAINID = ' + pkValue(NfirsMainID));
      NewView.RefreshGrid(NfirsMainID,'','',True);
    end;
  end;
end;

class procedure TNfirsForm.IncReNumClick(Sender: TObject);
var NfirsMainID    : String;
    mView          : TNewView;
begin
  mView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    mView       := TNewView(TMenuItem(Sender).Owner);
    NfirsMainID := mView.ViewGrid.GetValue('NFIRSMAINID')
  end;
  try
    Open_Query('NFIRSMAIN',false,'SELECT FDID, DATETIMEALARM, INCNUM FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkvalue(NfirsMainID));

    IncReNumForm                          := TIncReNumForm.Create(application);
    IncReNumForm.FdidField.Value          := GetField('NFIRSMAIN','FDID').AsString;
    IncReNumForm.StartDateField.Value     := GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime;
    IncReNumForm.IncNumField.Value        := GetField('NFIRSMAIN','INCNUM').AsString;
  finally
    CloseApollo('NFIRSMAIN');
  end;
  IncReNumForm.ShowModal;
  IncReNumForm.Free;

  If mView <> nil then
    mView.RefreshGrid(NfirsMainID);
end;

procedure TNFIRSForm.WMDropFile(var message:TMessage);
begin
  if FCurrentBaseNfirsForm is TNfirsImageForm then
    TNfirsImageForm(FCurrentBaseNfirsForm).WMDropFile(message);
end;



procedure TNFIRSForm.PersAccHistButtonClick(Sender: TObject);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);

  PersAccHistSelectForm := TPersAccHistSelectForm.Create(Application,'NFIRSMAIN',PK);
  PersAccHistSelectForm.ShowModal;
  PersAccHistSelectForm.Free;
  TNfirsBasicForm.UpdateResource(PK);
end;


procedure TNfirsForm.DoAfterSetControls(Sender: TObject);
begin               
  SetViewOnlySecurity;
end;

initialization
  RegisterIndividualReport(TNFIRSMainRepForm,               'INCNFIRSMAIN',  'NFIRS-1 Basic,Fire,Structure Report','NFIRSMAIN','',False,10);
  RegisterIndividualReport(TNfirsInvRepForm,                'NFIRSINVREP',   'NFIRS-1 Others Involved','NFIRSMAIN','',False,15);
  RegisterIndividualReport(TNfirsCivilianCasualtyReportForm,'NFIRS4',        'NFIRS-4 Civilian Casualty Reports','NFIRSMAIN','',False,20);
  RegisterIndividualReport(TNfirsFireCasualtyReportForm,    'NFIRS5',        'NFIRS-5 Fire Casualty Reports', 'NFIRSMAIN','', False,30);
  RegisterIndividualReport(TNfirsEMSReportForm,             'NFIRS6',        'NFIRS-6 EMS', 'NFIRSMAIN','', False,33);
  RegisterIndividualReport(TNfirsHazMatRepForm,             'NFIRS7',        'NFIRS-7 HazMat Reports', 'NFIRSMAIN','', False,35);
  RegisterIndividualReport(TNfirsWildLandRepForm,           'NFIRS8',        'NFIRS-8 Wildland Report', 'NFIRSMAIN','', False,38);
  RegisterIndividualReport(TNfirsAttRepForm,                'NFIRS10',       'NFIRS-10 Attending Personnel','NFIRSMAIN','',False,40);
  RegisterIndividualReport(TNfirsArsRepForm,                'NFIRS11',       'NFIRS-11 Arson Report','NFIRSMAIN','',False,50);
  RegisterIndividualReport(TIncidentAttendance,             'NFIRSATT',      'Attending Personnel','NFIRSMAIN','',False,60);
  RegisterIndividualReport(TNfirsAttEntryRepForm,           'NFIRSENTRYREP', 'Attending Personnel Entry Method','NFIRSMAIN','',False,65);
  RegisterIndividualReport(TNfirsAppRepForm,                'NFIRSAPP',      'Apparatus Used','NFIRSMAIN','',False,70);
  RegisterIndividualReport(TNfirsEquUseRepForm,             'NFIRSEQUUSEREP','Equipment Used','NFIRSMAIN','',False,75);
  RegisterIndividualReport(TDispCallRepForm,                'NFIRSDISPCALL', 'Dispatch Call Summary','NFIRSMAIN','DISPCALL',False,78);

end.  
