unit Main;
   
interface
                                                                             
uses
  Windows,
  Messages,
  SysUtils,                                                                      
  Classes,              
  Graphics,
  Forms,
  Dialogs,
  StdCtrls,
  db,
  Menus,
  OvcBase,
  ovcpb, 
  ovcpf, 
  AlpineEdit,
  AdvToolBarStylers,                                                               
  ImgList,                           
  AdvGlowButton,                            
  AlpineGlowButton,
  ExtCtrls, 
  Tabledefinitions,
  BasePictureField,
  htmlbtns,                                                      
  AdoDB,
  AdvToolBtn,
  AdvToolBar,
  AdvMenus,
  AdvMenuStylers,
  Grids,
  BaseGrid,
  AdvGrid,
  AdvPanel,  
  applst,
  AlpineBase,
  ShellApi,
  WavePlayer,
  AdvOfficeHint,
  AdvGroupBox,
  AlpineLookup,
  Controls,
  Collabornation,
  AdvOfficeImage,
  NforsExport,
  RedNMXInitialize;
                   
type
  TMainForm = class(TAlpineBaseForm)
    PropMenu: TAdvPopupMenu;
    AddAddressChoice: TMenuItem;
    PersMenu: TAdvPopupMenu;
    PersAddChoice: TMenuItem;
    ViewPersChoice: TMenuItem;
    PersSetupChoice: TMenuItem;
    DispMenu: TAdvPopupMenu;
    DispSetupChoice: TMenuItem;
    GISMenu: TAdvPopupMenu;
    GISSetChoice: TMenuItem;
    PropSetUpChoice: TMenuItem;
    SchdMenu: TAdvPopupMenu;
    SchdSetChoice: TMenuItem;
    InvMenu: TAdvPopupMenu;
    InvSetChoice: TMenuItem;
    PropViewAddressChoice: TMenuItem;
    NIMenu: TAdvPopupMenu;
    NISetChoice: TMenuItem;
    BaseBottomPanel: TAdvPanel;
    SecIDLabel: TLabel;
    Label1: TLabel;
    DatabaseLabel: TLabel;
    Label3: TLabel;
    AlpineToolbarStyler: TAdvToolBarFantasyStyler;
    AdvPanel1: TAdvPanel;
    FireDeptField: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    StartLabel: TLabel;
    NFIRSMenu: TAdvPopupMenu;
    IncSetupChoice: TMenuItem;
    IncDiskChoice: TMenuItem;
    ImageList16: TImageList;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AlpineMenu: TAdvMenuOfficeStyler;
    MainPanel: TAdvToolBarPager;
    PageModules: TAdvPage;
    DispPanel: TAdvToolBar;
    PropPanel: TAdvToolBar;
    ReportPanel: TAdvToolBar;
    PersPanel: TAdvToolBar;
    PrintPanel: TAdvToolBar;
    AuxTab: TAdvPage;
    NotifyPanel: TAdvToolBar;
    MainMenu: TAdvMainMenu;
    SysMenu: TMenuItem;
    ManageTables2: TMenuItem;
    ManageViews1: TMenuItem;
    System1: TMenuItem;
    AllWindows: TMenuItem;
    ManageDatabaseViews2: TMenuItem;
    ManageLookupViews2: TMenuItem;
    ConvMenu: TMenuItem;
    SetMenu: TMenuItem;
    SecMenu: TMenuItem;
    PagingChoice: TMenuItem;
    ShowToolBar2: TMenuItem;
    ShowMenuButtons1: TMenuItem;
    PersButton: TAlpineGlowButton;
    DLButton: TAlpineGlowButton;
    NIButton: TAlpineGlowButton;
    NFIRSButton: TAlpineGlowButton;
    EMSButton: TAlpineGlowButton;
    SecPanel: TAdvToolBar;
    ExitPanel: TAdvToolBar;
    PropButton: TAlpineGlowButton;
    GISButton: TAlpineGlowButton;
    HydButton: TAlpineGlowButton;
    NewDispButton: TAlpineGlowButton;
    DispButton: TAlpineGlowButton;
    ExitButton: TAlpineGlowButton;
    SecButton: TAlpineGlowButton;
    ReportButton: TAlpineGlowButton;
    PageButton: TAlpineGlowButton;
    TBButton: TAlpineGlowButton;
    InvPanel: TAdvToolBar;
    InvButton: TAlpineGlowButton;
    AppButton: TAlpineGlowButton;
    MiscPanel: TAdvToolBar;
    FundButton: TAlpineGlowButton; 
    TitleField: TLabel;
    WOButton: TAlpineGlowButton;
    InvBarButton: TAlpineGlowButton;
    HazMatButton: TAlpineGlowButton;
    AdvToolBar1: TAdvToolBar;
    AlpineGlowButton1: TAlpineGlowButton;
    InspTab: TAdvPage;
    InspPanel: TAdvToolBar;
    InspButton: TAlpineGlowButton;
    AdvToolBar2: TAdvToolBar;
    AlpineGlowButton3: TAlpineGlowButton;
    SchdButton: TAlpineGlowButton;
    CallIDButton: TAlpineGlowButton;
    VoteButton: TAlpineGlowButton;
    InternetChoice: TMenuItem;
    RequestUpdate1: TMenuItem;
    DownloadanUpdate1: TMenuItem;
    FrequentlyAskedQuestions1: TMenuItem;
    NewFeatures1: TMenuItem;
    UserManChoice: TMenuItem;
    IPAddressChoice: TMenuItem; 
    SysStatChoice: TMenuItem;
    Login1: TMenuItem;
    HandButton: TAlpineGlowButton;
    HandMenu: TAdvPopupMenu;
    HandSetupChoice: TMenuItem;
    PersAccBrowseChoice: TMenuItem;
    DispCallChoice: TMenuItem;
    GISPlotChoice: TMenuItem;
    SysFieldChoice: TMenuItem;
    TrainingLabel: TLabel;
    RolodexButton: TAlpineGlowButton;
    MCIButton: TAlpineGlowButton;
    MCIMenu: TAdvPopupMenu;
    MCISetChoice: TMenuItem;
    MCIHistChoice: TMenuItem;
    MCIListBrowse: TMenuItem;
    PropStatChoice: TMenuItem;
    PropViewRangeChoice: TMenuItem;
    PropViewIntersectionChoice: TMenuItem;
    ImageButton: TAlpineGlowButton;
    RolodexMenu: TAdvPopupMenu;
    RolodexSetChoice: TMenuItem;
    ImageMenu: TAdvPopupMenu;
    ImageSetChoice: TMenuItem;
    VoteMenu: TAdvPopupMenu;
    VoteSetupChoice: TMenuItem;
    RedDirectChoice: TMenuItem;
    SCBAButton: TAlpineGlowButton;
    HoseButton: TAlpineGlowButton;
    toolbartab: TAdvPage;
    HoseMenu: TAdvPopupMenu;
    HoseSetChoice: TMenuItem;
    SCBAMenu: TAdvPopupMenu;
    SCBASetChoice: TMenuItem;
    AppMenu: TAdvPopupMenu;
    AppSetChoice: TMenuItem;
    ReportSetup: TMenuItem;
    EMSMenu: TAdvPopupMenu;
    EMSSetupChoice: TMenuItem;
    ManageCustomViews1: TMenuItem;
    EMSDispButton: TAlpineGlowButton;
    ConvSQLChoice: TMenuItem;
    ConversionDbaseRedNMX: TMenuItem;
    ConvChoice: TMenuItem;
    ClockTimer: TTimer;
    ClockField: TLabel;
    MobSetup: TMenuItem;
    E911Menu: TAdvPopupMenu;
    E911Setup: TMenuItem;
    WorkOrdMenu: TAdvPopupMenu;
    WorkOrdChoice: TMenuItem;
    HydMenu: TAdvPopupMenu; 
    HydSetChoice: TMenuItem;
    ComplaintButton: TAlpineGlowButton;
    PermitButton: TAlpineGlowButton;
    MCITimer: TTimer;
    AppServSchdChoice: TMenuItem;
    AppServHistChoice: TMenuItem;
    AppInspSchdChoice: TMenuItem;
    AppInspHistChoice: TMenuItem;
    InvFuelChoice: TMenuItem;
    PropStatViewChoice: TMenuItem;
    QueueMenu: TAdvPopupMenu;
    QueueSetup: TMenuItem;
    DownloadNetworkStreamingClient1: TMenuItem;
    AliasAddressChoice: TMenuItem;
    DownloadChoice: TMenuItem;    StationButton: TAlpineGlowButton;
    EMSDiskSubmission: TMenuItem;
    FingerButton: TAlpineGlowButton;
    PictometryMenu: TAdvPopupMenu;
    PictometrySetupChoice: TMenuItem;
    InspMenu: TAdvPopupMenu;
    LogOutButton: TAlpineGlowButton;
    InspSetupChoice: TMenuItem;
    VioButton: TAlpineGlowButton;
    ComplaintMenu: TAdvPopupMenu;
    ComplaintSetupChoice: TMenuItem;
    InspQueueButton: TAlpineGlowButton;
    PermitMenu: TAdvPopupMenu;
    PermitSetupChoice: TMenuItem;
    InspAddrButton: TAlpineGlowButton;
    InspSchdChoice: TMenuItem;
    SchdReqChoice: TMenuItem;
    HydWorkOrdChoice: TMenuItem;
    InspectionHistory1: TMenuItem;
    ServiceHistory1: TMenuItem;
    DLMenu: TAdvPopupMenu;
    DLSetupChoice: TMenuItem;
    SchdVacChoice: TMenuItem;
    SchdHistChoice: TMenuItem;
    CalendarButton: TAlpineGlowButton;
    KOCInvButton: TAlpineGlowButton;
    NFIRSOpenHistory1: TMenuItem;
    FingerMenu: TAdvPopupMenu;
    FingerSetupChoice: TMenuItem;
    FingerHistoryChoice: TMenuItem;
    FingerChoice: TMenuItem;
    FingerEnrollTargus: TMenuItem;
    FundMenu: TAdvPopupMenu;
    FundSetupChoice: TMenuItem;
    FundDonateChoice: TMenuItem;
    FundEventChoice: TMenuItem;
    FundCheckChoice: TMenuItem;
    HoseTestBatchChoice: TMenuItem;
    AttendPersIDChoice: TMenuItem;
    ImagePropChoice: TMenuItem;
    CRSetUpChoice: TMenuItem;
    GISIncChoice: TMenuItem;
    PDFButton: TAlpineGlowButton;
    NEMSISSetupChoice: TMenuItem;
    ScbaInspHistChoice: TMenuItem;
    ScbaServHistChoice: TMenuItem;
    HoseTestChoice: TMenuItem;
    InvServHistChoice: TMenuItem;
    QueueButton: TAlpineGlowButton;
    customtoolbar: TAdvToolBar;
    EMSQAChoice: TMenuItem;
    ArsPanel: TAdvToolBar;
    ArsButton: TAlpineGlowButton;
    AdvToolBar3: TAdvToolBar;
    Exit3Button: TAlpineGlowButton;
    NIEVChoice: TMenuItem;
    HazMenu: TAdvPopupMenu;
    PropHazChoice: TMenuItem;
    SecRecAudChoice: TMenuItem;
    GISHydrantPlotting: TMenuItem;
    InspCalButton: TAlpineGlowButton;
    PictButton: TAlpineGlowButton;
    FundDriveAddressChoice: TMenuItem;
    ConversionEntryLevel: TMenuItem;
    QAQueryChoice: TMenuItem;
    InspLetterChoice: TMenuItem;
    MobileMessageHistory: TMenuItem;
    NemsisButton: TAlpineGlowButton;
    InvAllChoice: TMenuItem;
    HydInspBatchChoice: TMenuItem;
    SearchDailyLogChoice: TMenuItem;
    InvPartButton: TAlpineGlowButton;
    WaterwaysImport: TMenuItem;
    BatchChangeChoice: TMenuItem;
    FingerEnrollGriaule: TMenuItem;
    EMSFFChoice: TMenuItem;
    FastSupportChoice: TMenuItem;
    MCIServerChoice: TMenuItem;
    MCIErrorChoice: TMenuItem;
    CrossImage: TAdvOfficeImage;
    PageRemButton: TAlpineGlowButton;                               
    PageRemMenu: TAdvPopupMenu;
    ViewRemindChoice: TMenuItem;
    ViewRemindListChoice: TMenuItem;
    AddGeneralReminderChoice: TMenuItem;
    MCIUnavailableMenu: TMenuItem;
    TargetChoice: TMenuItem;
    ViewPersImageChoice: TMenuItem;
    NemsisMenu: TAdvPopupMenu;
    NemsisSetup: TMenuItem;
    NemsisDiskSubmission: TMenuItem;
    NemsisFFChoice: TMenuItem;
    ProQATimer: TTimer;
    ViewNfirsImageChoice: TMenuItem;
    NemsisQAChoice: TMenuItem;
    CentreLearnChoice: TMenuItem;
    NIAppAllChoice: TMenuItem;
    NemsisQAHistChoice: TMenuItem;
    ViewInspImageChoice: TMenuItem;
    ViewPropImageChoice: TMenuItem;
    ViewInvImageChoice: TMenuItem;
    ViewNemsisImageChoice: TMenuItem;
    NassauExportChoice: TMenuItem;
    NFIRS50ImportChoice: TMenuItem;
    InspTickChoice: TMenuItem;
    SCBAServSchdChoice: TMenuItem;
    SCBAInspSchdChoice: TMenuItem;
    PictureButton: TAlpineGlowButton;
    StationMenu: TAdvPopupMenu;
    StaInspChoice: TMenuItem;
    StaServChoice: TMenuItem;
    ConvFTChoice: TMenuItem;
    ConvFHChoice: TMenuItem;
    ConvFPChoice: TMenuItem;
    ConversionZoll1: TMenuItem;
    ConversionHighPlainsSoftware1: TMenuItem;
    ViewNIImageChoice: TMenuItem;
    DispPrintChoice: TMenuItem;
    GISPointChoice: TMenuItem;
    PersRankChoice: TMenuItem;
    SchdGuiChoice: TMenuItem;
    FingerAdminChoice: TMenuItem;
    Nem3Button: TAlpineGlowButton;
    PersBatchChangeChoice: TMenuItem;
    VioCodeChoice: TMenuItem;
    RespStatChoice: TMenuItem;
    SchdExpChoice: TMenuItem;
    PersonsInvolved1: TMenuItem;
    CADIntDispCallChoice: TMenuItem;
    SchdGuiButton: TAlpineGlowButton;
    viewnfirsbycompany: TMenuItem;
    HydrantPlottingChoice: TMenuItem;
    CrewSenseChoice: TMenuItem;
    NfirsAppTimesExport: TMenuItem;
    PersExpChoice: TMenuItem;
    Nem3ExportChoice: TMenuItem;
    ConvIMCChoice: TMenuItem;
    code3Export: TMenuItem;
    FTToolsChoice: TMenuItem;
    CloudSetChoice: TMenuItem;
    SQLSetChoice: TMenuItem;
    InvAssSignUpChoice: TMenuItem;
    Contacts1: TMenuItem;
    PersMedHistBatchChoice: TMenuItem;
    DispHistChoice: TMenuItem;
    KioskSchdHistChoice: TMenuItem;
    ConvPametChoice: TMenuItem;
    PersCommHistChoice: TMenuItem;
    NIPersInvChoice: TMenuItem;
    PersNIEVAttChoice: TMenuItem;
    SchdPayPeriodChoice: TMenuItem;
    BatchScheduleChoice: TMenuItem;
    CollabornationImport: TMenuItem;
    InspectionCheckListHistory1: TMenuItem;
    PersStatHistChoice: TMenuItem;
    NFORSExportChoice: TMenuItem;
    SecLogChoice: TMenuItem;
    InvServHistButton: TAlpineGlowButton;
    BridgeDatabaseChoice: TMenuItem;
    VoteAddrChoice: TMenuItem;
    SysViewCustChoice: TMenuItem;
    MobileEyesChoice: TMenuItem;
    HoseFailSafeChoice: TMenuItem;
    MapBoxChoice: TMenuItem;
    procedure OnAppException(Sender: TObject; E: Exception);
    procedure FormCreate(Sender: TObject);
    procedure ManageTables(Sender: TObject);
    procedure ManageViews(Sender: TObject);
    procedure ManageLookupViews1Click(Sender: TObject);
    procedure SysTableButtonClick(Sender: TObject);
    procedure SysViewButtonClick(Sender: TObject);
    procedure SysLookButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure NIButtonClick(Sender: TObject);
    procedure ExitButtonClick(Sender: TObject);
    procedure SecMenuClick(Sender: TObject);
    procedure DispButtonClick(Sender: TObject);
    procedure DispSetupChoiceClick(Sender: TObject);
    procedure PersAddChoiceClick(Sender: TObject);
    procedure NewDispButtonClick(Sender: TObject);
    procedure GISButtonClick(Sender: TObject);
    procedure NFIRSButtonClick(Sender: TObject);
    procedure GISSetChoiceClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure SetMenuClick(Sender: TObject);
    procedure PropSetUpChoiceClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SchdbUTTONClick(Sender: TObject);
    procedure GeoSearchButtonClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure GeoSearchButtonDblClick(Sender: TObject);
    procedure SchdSetChoiceClick(Sender: TObject);
    procedure AppButtonClick(Sender: TObject);
    procedure ReportButtonClick(Sender: TObject);
    procedure ShowMenuButtonClick(Sender: TObject);
    procedure InvSetChoiceClick(Sender: TObject);
    procedure PropViewAddressChoiceClick(Sender: TObject);
    procedure NISetChoiceClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure ShowToolBar1Click(Sender: TObject);
    procedure IncSetupChoiceClick(Sender: TObject);
    procedure EMSButtonClick(Sender: TObject);
    procedure PagingChoiceClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PageButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PersSetupChoiceClick(Sender: TObject);
    procedure ManageDatabaseViews2Click(Sender: TObject);
    procedure TBButtonClick(Sender: TObject);
    procedure IncDiskChoiceClick(Sender: TObject);
    procedure DLButtonClick(Sender: TObject);
    procedure SysStatChoiceClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InvButtonClick(Sender: TObject);
    procedure HazMatButtonClick(Sender: TObject);
    procedure HandButtonClick(Sender: TObject);
    procedure HandSetupChoiceClick(Sender: TObject);
    procedure PersAccBrowseChoiceClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure DispCallChoiceClick(Sender: TObject);
    procedure ViewPersChoiceClick(Sender: TObject);
    procedure GISPlotChoiceClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure RolodexButtonClick(Sender: TObject);
    procedure MCIListBrowseClick(Sender: TObject);
    procedure PropStatChoiceClick(Sender: TObject);
    procedure PropViewRangeChoiceClick(Sender: TObject);
    procedure PropViewIntersectionChoiceClick(Sender: TObject);
    procedure ImageButtonClick(Sender: TObject);
    procedure RolodexSetChoiceClick(Sender: TObject);
    procedure ImageSetChoiceClick(Sender: TObject);
    procedure VoteButtonClick(Sender: TObject);
    procedure VoteSetupChoiceClick(Sender: TObject);
    procedure RedDirectChoiceClick(Sender: TObject);
    procedure HoseButtonClick(Sender: TObject);
    procedure MCIButtonClick(Sender: TObject);
    procedure MCIHistChoiceClick(Sender: TObject);
    procedure MCISetChoiceClick(Sender: TObject);
    procedure SCBAButtonClick(Sender: TObject);
    procedure IPAddressChoiceClick(Sender: TObject);
    procedure UserManChoiceClick(Sender: TObject);
    procedure HoseSetChoiceClick(Sender: TObject);
    procedure SCBASetChoiceClick(Sender: TObject);
    procedure AppSetChoiceClick(Sender: TObject);
    procedure ReportSetupClick(Sender: TObject);
    procedure WOButtonClick(Sender: TObject);
    procedure EMSSetupChoiceClick(Sender: TObject);
    procedure ManageCustomViews1Click(Sender: TObject);
    procedure EMSDispButtonClick(Sender: TObject);
    procedure ConversionDbaseRedNMXClick(Sender: TObject);
    procedure ConvChoiceClick(Sender: TObject);
    procedure ConvSQLChoiceClick(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
    procedure QueueButtonClick(Sender: TObject);
    procedure MobSetupClick(Sender: TObject);
    procedure CallIDButtonClick(Sender: TObject);
    procedure E911SetupClick(Sender: TObject);
    procedure WorkOrdChoiceClick(Sender: TObject);
    procedure HydSetChoiceClick(Sender: TObject);
    procedure PermitButtonClick(Sender: TObject);
    procedure MCITimerTimer(Sender: TObject);
    procedure AppServHistChoiceClick(Sender: TObject);
    procedure AppServSchdChoiceClick(Sender: TObject);
    procedure AppInspSchdChoiceClick(Sender: TObject);
    procedure AppInspHistChoiceClick(Sender: TObject);
    procedure PropStatViewChoiceClick(Sender: TObject);
    procedure QueueSetupClick(Sender: TObject);
    procedure PersInvQualChoiceClick(Sender: TObject);
    procedure AliasAddressChoiceClick(Sender: TObject);
    procedure AddAddressChoiceClick(Sender: TObject);
    procedure DownloadChoiceClick(Sender: TObject);
    procedure StationButtonClick(Sender: TObject);
    procedure EMSDiskSubmissionClick(Sender: TObject);
    procedure FingerButtonClick(Sender: TObject);
    procedure PictometrySetupChoiceClick(Sender: TObject);
    procedure PictButtonClick(Sender: TObject);
    procedure FundButtonClick(Sender: TObject);
    procedure LogOutButtonClick(Sender: TObject);
    procedure InspSetupChoiceClick(Sender: TObject);
    procedure ComplaintButtonClick(Sender: TObject);
    procedure ComplaintSetupChoiceClick(Sender: TObject);
    procedure PermitSetupChoiceClick(Sender: TObject);
    procedure VioButtonClick(Sender: TObject);
    procedure InspAddrButtonClick(Sender: TObject);
    procedure InspQueueButtonClick(Sender: TObject);
    procedure InspSchdChoiceClick(Sender: TObject);
    procedure SchdReqChoiceClick(Sender: TObject);
    procedure HydWorkOrdChoiceClick(Sender: TObject);
    procedure DLSetupChoiceClick(Sender: TObject);
    procedure SchdVacChoiceClick(Sender: TObject);
    procedure SchdHistChoiceClick(Sender: TObject);
    procedure CalendarButtonClick(Sender: TObject);
    procedure NFIRSOpenHistory1Click(Sender: TObject);
    procedure FingerSetupChoiceClick(Sender: TObject);
    procedure FingerHistoryChoiceClick(Sender: TObject);
    procedure FingerChoiceClick(Sender: TObject);
    procedure FingerEnrollTargusClick(Sender: TObject);
    procedure FundEventChoiceClick(Sender: TObject);
    procedure FundCheckChoiceClick(Sender: TObject);
    procedure FundSetupChoiceClick(Sender: TObject);
    procedure HoseTestBatchChoiceClick(Sender: TObject);
    procedure AttendPersIDChoiceClick(Sender: TObject);
    procedure ImagePropChoiceClick(Sender: TObject);
    procedure CRSetUpChoiceClick(Sender: TObject);
    procedure GISIncChoiceClick(Sender: TObject);
    procedure PDFButtonClick(Sender: TObject);
    procedure NEMSISSetupChoiceClick(Sender: TObject);
    procedure ScbaInspHistChoiceClick(Sender: TObject);
    procedure ScbaServHistChoiceClick(Sender: TObject);
    procedure HoseTestChoiceClick(Sender: TObject);
    procedure InvServHistChoiceClick(Sender: TObject);
    procedure EMSQAChoiceClick(Sender: TObject);
    procedure ArsButtonClick(Sender: TObject);
    procedure NIEVChoiceClick(Sender: TObject);
    procedure PropHazChoiceClick(Sender: TObject);
    procedure SecRecAudChoiceClick(Sender: TObject);
    procedure GISHydrantPlottingClick(Sender: TObject);
    procedure InspCalButtonClick(Sender: TObject);
    procedure FundDriveAddressChoiceClick(Sender: TObject);
    procedure ConversionEntryLevelClick(Sender: TObject);
    procedure QAQueryChoiceClick(Sender: TObject);
    procedure InvFuelChoiceClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure InspLetterChoiceClick(Sender: TObject);
    procedure MobileMessageHistoryClick(Sender: TObject);
    procedure NemsisButtonClick(Sender: TObject);
    procedure InvAllChoiceClick(Sender: TObject);
    procedure HydInspBatchChoiceClick(Sender: TObject);
    procedure SearchDailyLogChoiceClick(Sender: TObject);
    procedure InvPartButtonClick(Sender: TObject);
    procedure WaterwaysImportClick(Sender: TObject);
    procedure BatchChangeChoiceClick(Sender: TObject);
    procedure FingerEnrollGriauleClick(Sender: TObject);
    procedure EMSFFChoiceClick(Sender: TObject);
    procedure RequestUpdate1Click(Sender: TObject);
    procedure FastSupportChoiceClick(Sender: TObject);
    procedure RedNMXChoiceClick(Sender: TObject);
    procedure MCIServerChoiceClick(Sender: TObject);
    procedure MCIErrorChoiceClick(Sender: TObject);
    procedure SysFieldChoiceClick(Sender: TObject);
    procedure PageRemButtonClick(Sender: TObject);
    procedure ViewRemindChoiceClick(Sender: TObject);
    procedure ViewRemindListChoiceClick(Sender: TObject);
    procedure AddGeneralReminderChoiceClick(Sender: TObject);
    procedure MCIUnavailableMenuClick(Sender: TObject);
    procedure TargetChoiceClick(Sender: TObject);
    procedure ViewPersImageChoiceClick(Sender: TObject);
    procedure NemsisSetupClick(Sender: TObject);
    procedure NemsisDiskSubmissionClick(Sender: TObject);
    procedure NemsisFFChoiceClick(Sender: TObject);
    procedure ArsonSetupClick(Sender: TObject);
    procedure ArsonPersonChoiceClick(Sender: TObject);
    procedure EvidenceList1Click(Sender: TObject);
    procedure ProQATimerTimer(Sender: TObject);
    procedure InspectionHistory1Click(Sender: TObject);
    procedure ViewNfirsImageChoiceClick(Sender: TObject);
    procedure NemsisQAChoiceClick(Sender: TObject);
    procedure CentreLearnChoiceClick(Sender: TObject);
    procedure NIAppAllChoiceClick(Sender: TObject);
    procedure handstatviewClick(Sender: TObject);
    procedure NemsisQAHistChoiceClick(Sender: TObject);
    procedure ViewInspImageChoiceClick(Sender: TObject);
    procedure ViewPropImageChoiceClick(Sender: TObject);
    procedure ViewInvImageChoiceClick(Sender: TObject);
    procedure ViewNemsisImageChoiceClick(Sender: TObject);
    procedure NassauExportChoiceClick(Sender: TObject);
    procedure NFIRS50ImportChoiceClick(Sender: TObject);
    procedure InspTickChoiceClick(Sender: TObject);
    procedure SCBAServSchdChoiceClick(Sender: TObject);
    procedure SCBAInspSchdChoiceClick(Sender: TObject);
    procedure PictureButtonClick(Sender: TObject);
    procedure StaServChoiceClick(Sender: TObject);
    procedure StaInspChoiceClick(Sender: TObject);
    procedure ConvFTChoiceClick(Sender: TObject);
    procedure ConvFToolsChoiceClick(Sender: TObject);
    procedure ConvFHChoiceClick(Sender: TObject);
   // procedure ConvPametChoiceClick(Sender: TObject);
    procedure ConvFPChoiceClick(Sender: TObject);
    procedure ConversionZoll1Click(Sender: TObject);
    procedure ConversionHighPlainsSoftware1Click(Sender: TObject);
    procedure ViewNIImageChoiceClick(Sender: TObject);
    procedure DispPrintChoiceClick(Sender: TObject);
    procedure GISPointChoiceClick(Sender: TObject);
    procedure PersRankChoiceClick(Sender: TObject);
    procedure SchdGuiChoiceClick(Sender: TObject);
    procedure FingerAdminChoiceClick(Sender: TObject);
    procedure Nem3ButtonClick(Sender: TObject);
    procedure Nem3SetChoiceClick(Sender: TObject);
    procedure PersBatchChangeChoiceClick(Sender: TObject);
    procedure ClockFieldDblClick(Sender: TObject);
    procedure VioCodeChoiceClick(Sender: TObject);
    procedure RespStatChoiceClick(Sender: TObject);
    procedure SchdExpChoiceClick(Sender: TObject);
    procedure PersonsInvolved1Click(Sender: TObject);
    procedure CADIntDispCallChoiceClick(Sender: TObject);
    procedure SchdGuiButtonClick(Sender: TObject);
    procedure viewnfirsbycompanyClick(Sender: TObject);
    procedure CrewSenseChoiceClick(Sender: TObject);
    procedure NfirsAppTimesExportClick(Sender: TObject);
    procedure PersExpChoiceClick(Sender: TObject);
    procedure Nem3ExportChoiceClick(Sender: TObject);
    procedure ConvIMCChoiceClick(Sender: TObject);
    procedure code3ExportClick(Sender: TObject);
    procedure CloudSetChoiceClick(Sender: TObject);
    procedure SQLSetChoiceClick(Sender: TObject);
    procedure InvAssSignUpChoiceClick(Sender: TObject);
    procedure PropSyncChoiceClick(Sender: TObject);
    procedure Contacts1Click(Sender: TObject);
    procedure PersMedHistBatchChoiceClick(Sender: TObject);
    procedure DispHistChoiceClick(Sender: TObject);
    procedure ReminderImportChoiceClick(Sender: TObject);
    procedure KioskSchdHistChoiceClick(Sender: TObject);
    procedure ConvPametChoiceClick(Sender: TObject);
    procedure PersCommHistChoiceClick(Sender: TObject);
    procedure NIPersInvChoiceClick(Sender: TObject);
    procedure PersNIEVAttChoiceClick(Sender: TObject);
    procedure SchdPayPeriodChoiceClick(Sender: TObject);
    procedure BatchScheduleChoiceClick(Sender: TObject);
    procedure CollabornationImportClick(Sender: TObject);
    procedure InspectionCheckListHistory1Click(Sender: TObject);
    procedure PersStatHistChoiceClick(Sender: TObject);
    procedure NFORSExportChoiceClick(Sender: TObject);
    procedure SecLogChoiceClick(Sender: TObject);
    procedure InvServHistButtonClick(Sender: TObject);
    procedure BridgeDatabaseChoiceClick(Sender: TObject);
    procedure VoteAddrChoiceClick(Sender: TObject);
    procedure SysViewCustChoiceClick(Sender: TObject);
    procedure MobileEyesChoiceClick(Sender: TObject);
    procedure HoseFailSafeChoiceClick(Sender: TObject);
    procedure MapBoxChoiceClick(Sender: TObject);
  private
    { Private declarations }
    WindowMenuItems : TList;
    FLastForm       : TForm;
    FLastActive     : TDateTime;
    LastLogWrite    : TDateTime;
    bInTimeOutState : Boolean;
    LastmemoryWrite : TDatetime;
    mLastHeartBeat  : TDatetime;
    mControlCaption : String;
    mControlField   : String;
    FdidProfileID   : String;
    bHideDateTimeCreate: Boolean;
    procedure setAgencyCaption;
    procedure LoadSplashScreen;
    procedure NewASCSetRecord(DataSet: TDataSet);
    procedure ApplicationMessage(var Msg: TMsg; var Handled: Boolean);
    procedure MarksApplicationMessage(var Msg: TMsg; var Handled: Boolean);
    procedure DoCommonMessages(var Msg: TMsg; var Handled: Boolean);
    procedure ApplicationDeActivate(Sender: TObject);
    procedure ApplicationActivate(Sender: TObject);
    Procedure UMUpdateWindowMenu( Var msg: TUmUpdateWIndowMenu ); message UM_UPDATEWINDOWMENU;
    Procedure HandleWindowMenus( Sender: TObject );
    procedure PropertySearch(mViewCode: String);
    procedure SetMenuSecurity;
    procedure ProcessCustomMenus;
    function CallIDVisible: Boolean;
    procedure ResetSystem(HaltVar : Boolean);
    procedure SetIconsToInvisible;
    procedure SaveSplashScreen;
    procedure DeleteDispCallFunction(Sender: TObject);
    procedure NIPersInvNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    MCIHistID : Integer;
    constructor Create(AOwner: TComponent); override;
    class function ConnectToDatabase(mSetPk: Boolean= true): Boolean;
    function CheckAutoLogin: String;
    procedure ShowToolBar;
    procedure WmGetMinMaxInfo(var WmMsg: TWmGetMinMaxInfo);  message WM_GETMINMAXINFO;
    class procedure RetrieveFile(mSourceDir,mDestDir,mFileName: String; mCopyFileRegardless: Boolean);
    function GetSecIDLabel: String;
    procedure ProcessConnectionBackup(mdb: TAlpineAdoConnection);  override;
    procedure WriteLogFile;
    procedure MCINewAction;
    function GetSetupMultiFdidID(mTable, Fdid : String): String;
  end;
  function GetSetupID(mTable: String): String;

{$I rednmx.inc}

var
  MainForm  : TMainForm;

implementation
uses Disp,
     CADBridgeView,
     Search,
     mobileftp,
     UWebGMapsCommon,
     emsrep,
     Chem,
     CommonPers,
     GenFunc,
     SortGridView,
     CommonSec,
     CommonFunc,
     SysView,
     ComObj,
     SysTable,
     SysField,
     SysLook,
     SysConvert,
     SysServiceWeb,
     FdidOwner,
     CalendarNMX,
     NI,
     NIPersInv,
     NIApp,
     PersNIEVAtt,
     Target,
     CrewSense,
     CentreLearn,
     Insp,
     InspSet,
     InspQueue,
     InspSchd,
     InspLettQueue,
     InspCal,
     InspTick,
     Vio,
     VioCodeEdit,
     Complaint,
     ComplaintSet,
     PermitSet,
     NISet,
     NormalBase,
     Pers,
     PersSet,
     PersExp,
     PersRankHist,
     PersCommHist,
     PersStatHist,
     PersImageEntry,
     PersBatchChange,
     PersRespStat,
     PersMedHistBatch,
     NfirsImageEntry,
     InspImageEntry,
     PropImageEntry,
     InvImageEntry,
     NIImageEntry,
     NemsisImageEntry,
     gisfunc,
     progress,
     SecSet,
     SecRecAud,
     DispSet,
     PropSet,
     GisSet,
     GisSys,
     GisPoint,
     GisPlot,
     MapBox,
     SysSet,
     MobSet,
     RepSet,
     CRSet,
     HydInspect,
     MCIHist,
     NFIRS,
     NFIRSSet,
     Nfirs50Import,
     NfirsArsonInv,
     ArsonPerson,
     ArsonEvidence,
     ArsonSet,
     DispMobMessage,
     CommonDisp,
     CommonDispVar,
     CommonVar,
     Email,
     Schd,
     SchdExp,
     SchdSet,
     SchdReq,
     SchdVac,
     SchdGui,
     SchdHist,
     SchdPayPeriod,
     Conv,
     DispCallTake,
     DispCall,
     DispPrint,
     EMSDisp,
     SysRepMan,
     E911Set,
     AlpineBaseSummaryReport,
     Inv,
     InvPart,
     InvFuel,
     InvSet,
     InvServSchd,
     InvServHist,
     InvInspSchd,
     InvInspHist,
     InvServTypeHist,
     InvAssSignUp,
     EMSSet,
     EMSQa,
     EMSQAQuery,
     HoseSet,
     ScbaSet,
     AppSet,
     SecLogin,
     CloudSet,
     SQLSet,
     Prop,
     PropHazMat,
     EMS,
     EMSFF,
     NemsisEMS,
     NassauNemsisExport,
     NemsisQA,
     EMSViewAdd,
     ToolBar,
     SysDBView,
     Update,
     Page,
     Bulletin,
     AlpineProgress,
     DiskCond,
     ConvSQL,
     ConvDbase,
     ConvEntry,
     ConvFT,
     ConvFTools,
     ConvFH,
     ConvFP,
     ConvPamet,
     ConvZO,
     ConvHP,
     ConvIMC,
     DLSet,
     DL,
     DLEntry,
     SysStat,
     Hand,
     HandSet,
     HandStat,
     AttendPersID,
     FingerSet,
     Finger,
     FingerEntry,
     FingerEnrollT,
     FingerEnrollGB,
     FingerSchdHist,
     PersAccHist,
     Hyd,
     HydSet,
     HydInspBatch,
     PrintSupport,
     Rolodex,
     RolodexCont,
     MCIList,
     MCI,
     MCISet,
     MCIAlpine,
     MCIUnavailable,
     PropStat,
     PropStatView,
     PropBatchChange,
     MobileEyes,
     PropSync,
     RolodexSet,
     ImageSet,
     ImageList,
     ImageProp,
     Vote,
     VoteSet,
     WorkOrd,
     WorkOrdSet,
     RedDirect,
     Queue,
     QueueInc,
     QueueEMS,
     QueueIncNemsis,
     QueueIncReview,
     NemsisQAHist,
     Permit,
     QueueSet,
     PersInvQual,
     FormFunc,
     EMSVASub,
     EMSNYSub,
     EMSNemsisSub,
     EMSNemsis3Sub,
     NemsisSet,
     Nem3Set,
     Nem3EMS,
     NemsisFF,
     PictSet,
     Pict,
     PageRemind,
     PageRemindList,
     PageRemindSec,
     PageRemindImport,
     FTP,
     FundSet,
     FundEvent,
     FundCheck,
     FundDonate,
     FundAddr,
     E911,
     CustomUpdate,
     HoseTest,
     HoseTestBatch,
     HoseWaterWay,
     HoseFailSafe,
     ad3SpellBase,
     ad3Spell,
     ad3ConfigurationDialogCtrl,
     ad3SpellLanguages,
     GISInc,
     AlpineMemo,
     NIEV,
     commonrednmx,
     GisHydrantPlot,
     CommonCrystal,
     WebNF,
     SplashScreen,
     MailCalendar,
     AlpineDateTime,
     mcierror,math,
     SysDemoPictView,
     CommonProQA,
     commonproqaservice,
     DispHist,
     NFIRSAppExport,
     PersAdminSet,
     {$ifdef MD16014}
     HVFDNfirs,
     {$endif}
     {$ifdef MD16001}
     HVFDNfirs,
     {$endif}
     {$ifdef NYROCHP}
     ROCHPNfirs,
     {$endif}
     {$ifdef MA01920}
     PersBatchBank,
     {$endif}
     SysDemoRepView,
     StrUtils;

{$R *.DFM}

constructor TMainForm.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure TMainForm.CrewSenseChoiceClick(Sender: TObject);
begin
  CrewSenseForm := TCrewSenseForm.Create(application);
  CrewSenseForm.ShowModal;
  CrewSenseForm.Free;
end;

procedure TMainForm.CRSetUpChoiceClick(Sender: TObject);
begin
  CRSetForm := TCRSetForm.Create(application);
  CRSetForm.ShowModal;
  CRSetForm.Free;                   
end;

class function TMainForm.ConnectToDatabase(mSetPk: Boolean): Boolean;
begin
  result := CommonFunc.ConnectToDatabase(mSetPK,CLIENTUSER,CLIENTPASS);
end;

procedure TMainForm.Contacts1Click(Sender: TObject);
begin
  SortGridViewDriver('ROLODEXCONT',TRolodexContForm,TRolodexContForm.NewRecord,nil);  
end;

function GetSetupID(mTable: String): String;
begin
  Open_Query('GETPK',false,'SELECT '+mTable+'ID FROM '+mTable+ ' WHERE FDID = ' + AddExpr(mFireID));
  If GetField('GETPK',mTable+'ID').AsInteger > 0 then
    result := GetField('GETPK',mTable+'ID').AsString
  else
    result := '-1';
  CloseApollo('GETPK');
end;

function TMainForm.GetSetupMultiFdidID(mTable, Fdid: String): String;
begin
  Open_Query('GETPK',false,'SELECT '+mTable+'ID FROM '+mTable+ ' WHERE FDID = ' + AddExpr(Fdid));
  If GetField('GETPK',mTable+'ID').AsInteger > 0 then
    result := GetField('GETPK',mTable+'ID').AsString
  else
    result := '-1';
  CloseApollo('GETPK');
end;

function IsTraining: Boolean;
begin
  result := at('TRAIN',UpperCase(ParamStr(1))) > 0;
end;

procedure TMainForm.OnAppException(Sender: TObject; E: Exception);
begin
  CommonFunc.AppException(Sender, E);
end;

procedure TMainForm.FormCreate(Sender: TObject);
var mShowToolBar: Boolean;
begin
  Application.OnException  := OnAppException;
  LastLogWrite             := Date -1;
  LastmemoryWrite          := Now;
  DeleteLogMB(10);
  SetIconsToInvisible;
  GlobalKeepMainformInBack := False;
  GlobalSysFormReset       := False;
  FLastActive              := Now;
  bInTimeOutState          := False;
  MobileConfig             := False;
  MobKeyBoard              := '';
  mLastHeartBeat           := Date-1;

  If FileExists(ExtractFilePath(ParamStr(0))+'\clickcomponents.txt') then
    Application.OnMessage := MarksApplicationMessage
  else
    Application.OnMessage := ApplicationMessage;

  If (Screen.Width = 800) and (Screen.Height = 600) then begin
    ShowMessage('You must have your screen resolution settings greater than 800x600 for RedNMX to operate.');
    application.terminate;
    exit;
  end;

  WindowMenuItems    := TList.Create;
  SysStartTime       := Now;
  Caption            := 'RedAlert RedNMX:  Last Updated - ' + SayLastUpdated;
  mFireID            := FireID;
  mFireDept          := FireDept;
  mUsername          := CLIENTUSER;
  mPass              := CLIENTPASS;
  If (FireID = '07090') and ((ContainsText(alltrim(ParamStr(1)),'rednmxdisp')) or (ContainsText(alltrim(ParamStr(1)),'university'))) then
    mFireDept := 'REMCS Fire Dispatch';

  CommonRednmx.SetSysModuleList(mFireID);
  ToolBarTab.TabVisible := False;
  ShortDateFormat       := 'mm/dd/yyyy';
  LongDateFormat        := 'mm/dd/yyyy';
  LongTimeFormat        := 'hh:nn:ss';
  ShortTimeFormat       := 'hh:nn';
  DisplayDateFormat     := 'MM/DD/YYYY';
  RunSql('UPDATE COMPUTER SET PROQASTATE = ' + AddExpr('') + ' WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
  try
    SysSetVar;
    DispSetVar(globaladoconnection);
    PersSetVar;
    TDLSetupForm.DLSetVar;
    TInspSetForm.InspSetVar;
    TPropSetForm.PropSetVar;
  except
    ShowMessage('Warning - system did not successfully initialize - some components/modules may not work properly! - Please contact Alpine');
  end;

  Code3Export.Visible         := (mFireid = '12345') or (mFireid = '23122');
  If (mFireid = '12345') or ((mFireid = 'NEMSI')) then
    GlobalNem3CodeTable := open_query('select * from nem3code order by fieldname,code ');
  ASCFdid       := ASCVar;
  SecIDVar      := CheckAutoLogin;

  SetSecVar(mShowToolBar,True);
  SecIDLabel.Caption := GetSecIDLabel;
  StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:MM',Now);

  If mShowToolBar then
    MainForm.ShowToolBar;

  MainPanel.ActivePageIndex := 0;
  RunSql('DELETE FROM DISPLOGON WHERE DATETIMELOGON <= '+FormatDateTimeForSql(Date-7));  

  If (at('DATABASE.WINDOWS.NET',alltrim(ParamStr(1))) > 0) or (at('REDNMXSERVICES.COM',alltrim(ParamStr(1))) > 0) then begin
    DatabaseLabel.Caption := 'REDNMX CLOUD' + alltrim(substr(alltrim(ParamStr(1)),at(':',alltrim(ParamStr(1))),50));
  end else begin
    DatabaseLabel.Caption := alltrim(ParamStr(1));
  end;

  If UseSSL then begin
    DatabaseLabel.Caption := DatabaseLabel.Caption + ':SSL/TLS';
    If (Screen.Width >= 1100) then
      DatabaseLabel.AutoSize := True;
  end;

  RunSql('DELETE FROM SECRECLOCK WHERE COMPCODE = ' + AddExpr(AlpineGetComputerName) + ' AND LOCKSTATUS = ' + AddExpr('T'));
  RunSql('DELETE FROM SECRECLOCK WHERE DATETIMELOCK <= '+FormatDateTimeForSql(Now-0.5/24)+ ' AND LOCKSTATUS = ' + AddExpr('T'));  // delete locks older than an 30 minutes
  RunSql('DELETE FROM DISPCALL WHERE (DATETIMEREC <= '+FormatDateTimeForSql(Date-2)+' OR DATETIMEREC IS NULL) AND INCSTAT = '+AddExpr('NEW'));

  If Not (TimeSyncComp = '') then
    WinExec(pChar('net time \\' + TimeSyncComp + ' /set /y'),SW_HIDE);

  Application.OnDeactivate    := ApplicationDeActivate;
  Application.OnActivate      := ApplicationActivate;

  mSupportFDID                := mFireId;
  mSupportstate               := Copy(ASCFdid,1,2);
  TrainingLabel.Visible       := IsTraining;
  If (mFireID = '52051') then
    TrainingLabel.Caption := 'Holbrook Multi Agency Test System';
  
  NFIRSSetVar(GlobalAdoConnection,mFireId);

  InspTickChoice.Visible      := (mFireID = '12345');
  NFORSExportChoice.Visible   := sqllookup(mFireID,'FDID','NFIRSSET','NFORSEXPORT') = 'Y';

  GetAmericanDict('AMERICAN',ExtractFileDir(ParamStr(0))+'\american.adm');
  GetAmericanDict('CUSTDICT',ExtractFileDir(ParamStr(0))+'\custdict.adm');

  ProcessCustomMenus;

  TCustomUpdate.DoAfterMainFormCreate(self);
  SetMenuSecurity;

  CreateODBCEntry(False);

  AddStartToSecLog(GlobalAdoConnection);
  WriteLogFile;
  If FileExists(ExtractFileDir(ParamStr(0))+'\globalextendedlogging.txt') then begin
    GlobalExtendedLogging := True;
    AppendToLog('WARNING - GLOBALEXTENDEDLOGGING SET TO TRUE');
  end;
  AppendToLog('Start '+ParamStr(0)+':'+ParamStr(1)+':'+datetimetostr(FileDateToDateTime(FileAge(ParamStr(0)))));

  If CheckModule('CADINT') then
    bHideDateTimeCreate := SqlTableRecCount('select count(*) from dispcall where datetimedisp >= '+FormatDateTimeForSql(Now-30,globaladoconnection.tabletype) + ' and datetimecreate >0 ') < 5
  else
    bHideDateTimeCreate := True;

  if (mFireID = '23239') or (mFireID = 'SEMRE') or (mFireID = '70814') then
    GlobalQueryTimeOut := 60;
end;

procedure TMainForm.WriteLogFile;
begin
  If GetMinuteDiff(Now,LastLogWrite)>15 then begin
    LastLogWrite := Now;
    WriteLogFileToComputerTable(GlobalAdoConnection);
  end;
end;

procedure TMainForm.ProcessCustomMenus;
var i                 : Integer;
    mToolbarObject    : TToolBarObject;
    mAlpineGlowButton : TAlpineGlowButton;
begin
  if not (AlpineToolBarList = nil) then begin
    for i := 0 to AlpineToolBarList.count-1 do begin
      mtoolBarObject := TToolBarObject(AlpinetoolBarList.Objects[i]);
      if mToolBarObject.ComponentParent <> '' then begin
        if FindComponent(mToolBarObject.ComponentParent)<>nil then begin
          if FindComponent(mToolBarObject.ComponentParent) is TAdvToolBar then begin
            mAlpineGlowButton           := TAlpineGlowButton.create(self);
            mAlpineGlowButton.Parent    := TAdvToolBar(FindComponent(mToolBarObject.ComponentParent));
            mAlpineGlowButton.ImageName := mToolBarObject.LargeImage;
            mAlpineGlowbutton.Width     := 50;
            mAlpineGlowbutton.Height    := 50;
            mAlpineGlowButton.Hint      := mToolBarObject.Descr;
            mAlpineGlowButton.OnClick   := mToolBarObject.OnClickEvent;
            mAlpineGlowButton.Appearance.Assign(mainform.emsdispbutton.appearance);
            mAlpineGlowButton.Name      := mToolBarObject.FuncCode;
            mAlpineGlowButton.caption   := '';
          end;
        end;
      end;
    end;
  end;
end;

procedure TMainForm.DoCommonMessages(var Msg: TMsg; var Handled: Boolean);
begin
  Case msg.Message of
    WM_KEYFIRST..WM_KEYLAST, WM_MOUSEFIRST..WM_MOUSELAST:
    begin
      FLastActive := Now;
      bInTimeOutState := False;
    end;
  end;
end;

procedure TMainForm.ApplicationMessage(var Msg: TMsg; var Handled: Boolean);
begin
  DoCommonMessages(Msg,Handled);
end;

procedure TMainForm.MarksApplicationMessage(var Msg: TMsg; var Handled: Boolean);
var pt       : tPoint;
    mControl : TControl;
    blookup  : Boolean;
begin
  DoCommonMessages(msg,Handled);
  case Msg.message of wm_RButtonDown:
    begin
      pt       := Mouse.CursorPos;
      mControl := FindDragTarget(pt,True);
      if mControl<>nil then  begin
        Handled := True;
        bLookup := false;
        if mControl is TLabel then begin
          mControlCaption := TLabel(mControl).Caption;
          InputDlg('Set Field Caption','Field Caption',mControlCaption,'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end;
        if mControl is TAlpineEdit then begin
          mControlField := TAlpineEdit(mControl).DataField;
          if TAlpineEdit(mControl).parent<>nil then
            bLookup := TAlpineEdit(mControl).parent is TAlpineLookup;
        end;
        if mControl is TAlpineDateTime then
          mControlField := TAlpineDateTime(mControl).DataField;
        if mControl is TMemo then begin
          if TMemo(mControl).parent<>nil then
            mControlField := TAlpineMemo(TPanel(mControl).parent).DataField;
        end;

        if (mControlCaption<>'') and (mControlField<>'') then begin
          if BooleanMessageDlg('Append line for '+mControlCaption+':'+mControlField) then begin
            appendtolog(''+iif(bLookup,'AddLookup','AddIt')+'('+Addexpr(mControlCaption)+','+Addexpr(mControlField)+')');
            mControlCaption := '';
            mControlField := '';
          end else if BooleanMessageDlg('Clear?') then begin
            mControlCaption := '';
            mControlField := '';
          end;
        end;
      end;
    end;
  end;
end;

procedure TMainForm.FormShow(Sender: TObject);
var pngH : Word;
    pngW : Word;
    mSql: String;
begin
  {$Define REDNMX}
  FireDeptField.Caption := mFireDept;
  TitleField.Visible    := false;
  TitleField.Caption    := mFireDept;
  CrossImage.visible    := False;
  ProQATimer.enabled := CheckModule('PROQA') or CheckModule('PROQAF');

  If FireID = 'KOCEM' then
    SaveSplashScreen;

  If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmx.png') then begin
    GetPNGSize(ExtractFileDir(ParamStr(0)) + '\rednmx.png',pngW,pngH);
    CrossImage.Picture.LoadFromFile(ExtractFileDir(ParamStr(0)) + '\rednmx.png');

    CrossImage.Height  := pngH;
    CrossImage.Width   := pngW;

    if pngW <> Screen.Width then
      CrossImage.Left := Round((Screen.Width - pngW)/2)
    else
      CrossImage.Left := 0;

    if pngH <> Screen.Height then
      CrossImage.Top     := Round((Screen.Height - pngH)/2) - 180
    else
      CrossImage.Top := -180;
      
    CrossImage.visible := True;

    //TitleField.Left    := Round(Screen.Width/2) + 100;
    //TitleField.Visible := true;

  end else If FileExists(ExtractFileDir(ParamStr(0)) + '\RedNmx.Bmp') then begin
    CrossImage.Picture.LoadFromFile(ExtractFileDir(ParamStr(0)) + '\RedNmx.Bmp');

    //CrossImage.Height  := CrossImage.Picture.Height;
    //CrossImage.Width   := CrossImage.Picture.Width;

    CrossImage.Left    := Round((Screen.Width - CrossImage.Width)/2);
    CrossImage.Top     := 37;
    TitleField.Left    := Round(Screen.Width/2) + 100;
    CrossImage.visible := true;
    TitleField.Visible := true;
  end else
    LoadSplashScreen;

  If (Pos('TRAINING',ParamStr(1))>0) then
    TitleField.Caption := 'Training System';
  If (Pos('TEST',UpperCase(ParamStr(1))) > 0) or (Pos('TEST',UpperCase(ParamStr(0))) > 0) then begin
    TrainingLabel.Caption := 'Test System using REDNMXTEST database.';
    TrainingLabel.Visible := true;
  end;

  If FireID = 'KOCKW' then
    TitleField.Visible := false;

  If CheckModule('MCI') and (SQLLookUp(AlpineGetComputerName,'COMPUTERNAME','COMPUTER','MCI') = 'Y') then begin
    MCIHistID        := GetMaxPK(GlobalAdoConnection,GlobalAdoConnection.TableType,'MCIHIST');
    MCITimer.Enabled := true;
  end;

  if GlobalAdoConnection.TableType=MSSQLTableType then begin
    mSql := ' WHERE UNITNUM IS NULL OR RTRIM(UNITNUM)='+AddExpr('');
    if sqltableRecCount('SELECT COUNT(*) FROM DISPSTAT '+mSql)>0 then begin
      if RunSql('DELETE FROM DISPSTAT '+mSql) then
        ShowMessage('RedNMX deleted records from the Dispatch Unit table having no Unit Number.  This is a routine maintenance procedure.  '+
          'However if you continue to see this message it may indicate a problem elsewhere.  In this case please contact Alpine');
    end;
  end; 
end;

procedure TMainForm.LoadSplashScreen;
var SplashScreen: TSplashScreenForm;
begin
  try
    SplashScreen := TSplashScreenForm.Create(self);
    CrossImage.Picture.Assign(SplashScreen.CrossImage.Picture);
    CrossImage.Left    := Round((Screen.Width - CrossImage.Width)/2);
    CrossImage.Top     := 37;
    CrossImage.visible := true;
    TitleField.Visible := False;
  finally
    SplashScreen.Free;
  end;  

end;

procedure TMainForm.ApplicationDeActivate(Sender: TObject);
begin
  If Screen <> nil then
    FLastForm := Screen.ActiveForm;
end;

procedure TMainForm.ApplicationActivate(Sender: TObject);
var i: Integer;
begin
  if FLastForm = nil then exit;
  if Screen.ActiveForm = nil then exit;
  if Screen.ActiveForm = FLastForm then begin
    for i:= Screen.formCount-1 downto 0 do
      if Screen.Forms[i] = FLastform then
        break;
    if i <= Screen.FormCount-1 then
      FLastForm.BringToFront;
  end else begin
    application.processmessages;
    Screen.ActiveForm.Show;
  end;
end;

function TMainForm.CheckAutoLogin: String;
begin
  Open_Query('SEC',false,'SELECT * FROM SEC WHERE LOGINNAME = ' + AddExpr(GetNtUserName));
  If A('SEC').RecordsExist then begin
    Result       := GetField('SEC','SECID').AsString;
    GlobalPersID := GetField('SEC','PERSID').AsString;
    SetSecFDID   := tdbfield('SEC','FDID');
  end else begin
    Open_Query('COMPUTER',false,'SELECT SECID FROM COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    If A('COMPUTER').RecordsExist and (GetField('COMPUTER','SECID').AsInteger > 0) then begin
      Result       := GetField('COMPUTER','SECID').AsString;
      GlobalPersID := SqlLookup(GetField('COMPUTER','SECID').AsString,'SECID','SEC','PERSID');
    end else begin
      Open_Query('SYSSET',false,'SELECT SECID FROM SYSSET WHERE FDID = ' + AddExpr(mFireID));
      If GetField('SYSSET','SECID').AsInteger > 0 then begin
        Result       := GetField('SYSSET','SECID').AsString;
        GlobalPersID := SqlLookup(GetField('SYSSET','SECID').AsString,'SECID','SEC','PERSID');
      end else
        Result := '0';
      CloseApollo('SYSSET');
    end;
    CloseApollo('COMPUTER');
  end;
  CloseApollo('SEC');
  If anystrtoint(Result) > 0 then
    GlobalIsSysadmin := SqlLookUp(Result,'secid','sec','issysadmin')='Y'
  else
    GlobalIsSysadmin := False;
end;

procedure TMainForm.ManageTables(Sender: TObject);
begin
  SortGridViewDriver('SYSTABLE',TSysTableForm,TSysTableForm.NewRecord,Nil);
end;

procedure TMainForm.ManageViews(Sender: TObject);
begin
  SortGridViewDriver('SYSVIEW',TSysViewForm,TSysViewForm.NewRecord,Nil);
end;

procedure TMainForm.MapBoxChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('MAPBOX',TMapBoxForm,TMapBoxForm.NewRecord,nil);
end;

procedure TMainForm.SysFieldChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SYSFIELDALL',TSysFieldForm,TSysFieldForm.SysFieldNewRecord,nil);
end;

procedure TMainForm.ManageLookupViews1Click(Sender: TObject);
begin
  SortGridViewDriver('SYSLOOK',TSysLookForm,TSysLookForm.NewRecord,nil);
end;

procedure TMainForm.SysTableButtonClick(Sender: TObject);
begin
  ManageTables(self);
end;

procedure TMainForm.SysViewButtonClick(Sender: TObject);
begin
  ManageViews(self);
end;

procedure TMainForm.SysViewCustChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SYSVIEWCUST',TSysViewForm,TSysViewForm.NewRecord,Nil);
end;

procedure TMainForm.SysLookButtonClick(sender: TObject);
begin
  ManageLookupViews1Click(self);
end;

procedure TMainForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.CloudSetChoiceClick(Sender: TObject);
Var ASCSetID : String;
begin
  ASCSetID     := '1';
  CloudSetForm := TCloudSetForm.Create(application,'ASCSET',ASCSetID,TCloudSetForm.NewRecord);
  CloudSetForm.ShowModal;
  CloudSetForm.Free;
end;

procedure TMainForm.NIButtonClick(Sender: TObject);
begin
  If mFireID = '60061' then
    ShowMessage('Please use the Evolutions Option')
  else
    SortGridViewDriver('NI',TNIForm,TNIForm.NewRecord,nil);
end;

procedure TMainForm.ExitButtonClick(Sender: TObject);
begin 
  Close;
end;

procedure TMainForm.SecMenuClick(Sender: TObject);
Var PKVar : String;
begin
  Open_Query('SECSET',true,'SELECT SECSETID,FDID FROM SECSET WHERE FDID = ' + AddExpr(mFireID));
  If GetField('SECSET','SECSETID').AsInteger > 0 then
    PKVar := GetField('SECSET','SECSETID').Asstring
  else begin
    A('SECSET').Append;
    GetField('SECSET','FDID').AsString := mFireID;
    GetTable('SECSET').Post;
    PKVar := A('SECSET').NewPK;
  end;  
  CloseApollo('SECSET');

  SecSetForm := TSecSetForm.Create(application,'SECSET',PKVar,TSecSetForm.NewRecord);
  SecSetForm.ShowModal;
  SecSetForm.Free;
end;

procedure TMainForm.SecRecAudChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SECRECAUDALL',TSecRecAudForm,TSecRecAudForm.NewRecord,Nil);
end;

procedure TMainForm.SCBAServSchdChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCBASERVSCHDALL',TInvServSchdForm,TInvServSchdForm.AppNewRecord,Nil);
end;

procedure TMainForm.DispButtonClick(Sender: TObject);
begin
  if not (CheckModule('DISP') and CheckSecVar('DISPGEN')) then begin
    if not CheckModule('DISP') then
      ShowMessage('You don''t have the Dispatching Module')
    else
      ShowMessage('You don''t have security access to Dispatch');
    exit;      
  end;  
  If Not FormExists('DispForm') then begin
    DispForm := TDispForm.Create(Application);
  end;
  DispForm.WindowState := wsMaximized;
  DispForm.Show;
end;

procedure TMainForm.DispSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar := GetSetupID('DISPSET');
  DispSetForm := TDispSetForm.Create(application,'DISPSET',PkVar,TDispSetForm.NewRecord);
  DispSetForm.ShowModal;
  DispSetForm.Free;
end;

procedure TMainForm.PersAddChoiceClick(Sender: TObject);
Var PKVar    : String; 
begin
  PkVar := '-1';
  RunAlpineForm(TPersForm,pkVar,'PERS',TPersForm.NewRecord);
end;

procedure TMainForm.NewDispButtonClick(Sender: TObject);
begin
  If Not FormExists('DispCallTakeForm') then
    DispCallTakeForm :=TDispCallTakeForm.Create(Application,True);
  If CheckModule('DISP') then
    DispCallTakeForm.AddNewCall;
  DispCallTakeForm.Show;
end;

procedure TMainForm.GISButtonClick(Sender: TObject);
Var EXECommand : String;
begin
  If FileExists(ExtractFileDir(ParamStr(0)) + '\REDNMXMAPBOX.EXE') then begin
    EXECommand := ExtractFileDir(ParamStr(0)) + '\REDNMXMAPBOX.EXE ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
    If ProcessExists('REDNMXMAPBOX.EXE') then begin
      Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
      If A('GISD10COMPUTER').RecordsExist then
        GetTable('GISD10COMPUTER').Edit
      else
        GetTable('GISD10COMPUTER').Append;
      GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
      GetField('GISD10COMPUTER','BRINGTOFRONT').AsString := 'Y';
      GetTable('GISD10COMPUTER').Post;
      CloseApollo('GISD10COMPUTER');
    end else begin
      WinExec(pchar(ExeCommand),SW_SHOW)
    end;
  end else begin
    If Not FormExists('GisSysForm') then
      GisSysForm := TGisSysForm.Create(Application);
    GisSysForm.Show;
  end;  
end;

procedure TMainForm.NFIRS50ImportChoiceClick(Sender: TObject);
begin
  Nfirs50ImportForm := TNfirs50ImportForm.Create(self);
  Nfirs50ImportForm.ShowModal;
  Nfirs50ImportForm.Free;
end;

procedure TMainForm.NFIRSButtonClick(Sender: TObject);
begin
  {$ifdef NYROCHP}
    SortGridViewDriver('NFIRSMAIN',TROCHPNFIRSForm,TROCHPNFIRSForm.NewRecord,Nil);
  {$endif}
  {$ifdef MD16001}
  SortGridViewDriver('NFIRSMAIN',THVFDNFIRSForm,THVFDNFIRSForm.NewRecord,Nil);
  {$else}
    {$ifdef MD16014}
    SortGridViewDriver('NFIRSMAIN',THVFDNFIRSForm,THVFDNFIRSForm.NewRecord,Nil);
    {$else}
    SortGridViewDriver('NFIRSMAIN',TNFIRSForm,TNFIRSForm.NewRecord,nil);
    {$endif}
  {$endif}
end;

procedure TMainForm.GISSetChoiceClick(Sender: TObject);
Var PKVar : String;
begin
  SortGridViewDriver('GISSET',TGisSetForm,TGisSetForm.NewRecord,nil);
end;

procedure TMainForm.PropButtonClick(Sender: TObject);
begin
  If CheckModule('DISP') then begin
    If Not FormExists('DispCallTakeForm') then
      DispCallTakeForm := TDispCallTakeForm.Create(Application,False);
    DispCallTakeForm.DispatchButton.Onclick := DispCallTakeForm.AddCallClick;
    DispCallTakeForm.Show;
  end else
    PropViewAddressChoiceClick(self);
end;

procedure TMainForm.SetMenuClick(Sender: TObject);
var PkVar: String;
begin
  PkVar      := GetSetupID('SYSSET');
  SysSetForm := TSysSetForm.Create(application,'SYSSET',PkVar,TSysSetForm.NewRecord);
  SysSetForm.ShowModal;
  SysSetForm.Free;
  SysSetVar;
end;

procedure TMainForm.PropSetUpChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar := GetSetupID('PROPSET');
  PropSetForm := TPropSetForm.Create(application,'PROPSET',pkVar,TPropSetForm.NewRecord);
  PropSetForm.ShowModal;
  PropSetForm.Free;
end;

procedure TMainForm.SchdbUTTONClick(Sender: TObject);
begin
  If Not FormExists('SchdForm') then
    SchdForm := TSchdForm.Create(Application);
  SchdForm.Show;
end;

procedure TMainForm.SchdExpChoiceClick(Sender: TObject);
begin
  SchdExpForm := TSchdExpForm.Create(self);
  SchdExpForm.ShowModal;
  SchdExpForm.Free;
end;

procedure TMainForm.SchdGuiButtonClick(Sender: TObject);
begin
  SchdGuiChoiceClick(self);
end;

procedure TMainForm.SchdGuiChoiceClick(Sender: TObject);
begin
  If Not FormExists('SchdGuiForm') then
    SchdGuiForm := TSchdGuiForm.Create(Application);
  SchdGuiForm.Show;
end;

procedure TMainForm.GeoSearchButtonClick(Sender: TObject);
begin
  If Not FormExists('DispCallTakeForm') then
    DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
  DispCallTakeForm.DispatchButton.Onclick := DispCallTakeForm.AddCallClick;
  DispCallTakeForm.Show;
end;

procedure TMainForm.setAgencyCaption;
var
  sec: TApolloData;
begin
  if (mFireid = 'PLTFR') then begin
    FireDeptField.Caption := FireDept;


    if (SecIDVar<>'') then begin
      sec := open_query('select deptname from sec left outer join fdid on (sec.fdid=fdid.fdid) where sec.secid = '+Secidvar);
      if tdbfield(sec,'deptname')<>'' then
        FireDeptField.Caption := tdbfield(sec,'deptname');
      sec.free;
    end;
  end;
end;

procedure TMainForm.SearchDailyLogChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('DL',TDLEntryForm,TDLEntryForm.NewRecord,nil);
end;

procedure TMainForm.SecButtonClick(Sender: TObject);
var mShowToolBar: Boolean;
begin
  SecLoginForm := TSecLoginForm.Create(application);
  SecLoginForm.ShowModal;
  if SecLoginForm.mUserName <>'' then begin
    StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:MM',Now);
    SetSecVar(mShowToolBar,True);
    setmenuSecurity;
    If mShowToolBar then
      MainForm.ShowToolBar
    else
      toolbartab.TabVisible := false;
  end;
  SecLoginForm.Free;
  SecIDLabel.Caption := GetSecIDLabel;
  if (MFireID = '23145') and (secIDLabel.Caption <> '') then begin
    If Not FormExists('EmailForm') then
      EmailForm := TEmailForm.Create(Application);
    EmailForm.Show;
  end;
  SetAgencyCaption;
end;
 
procedure TMainForm.SecLogChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SECLOG',Nil,Nil,Nil);
end;

function TMainForm.CallIDVisible: Boolean;
begin
  result := CheckModule('CALLID') or CheckModule('E911') or CheckModule('CADINT');
end;

procedure TMainForm.CentreLearnChoiceClick(Sender: TObject);
begin
  CentreLearnForm := TCentreLearnForm.Create(application);
  CentreLearnForm.ShowModal;
  CentreLearnForm.Free;
end;

procedure TMainForm.SetMenuSecurity;
var ShowDispSetup  : Boolean;
begin
  MainForm.ConvMenu.Visible           := AlpineLogin;
  MainForm.ConvChoice.Caption         := 'Conversion:  ' + FireDept;
  MainForm.SQLSetChoice.Visible       := AlpineLogin;
  MainForm.CloudSetChoice.Visible     := AlpineLogin;

  MainForm.ReportSetup.Visible        := AlpineLogin;
  MainForm.CRSetUpChoice.Visible      := CheckSecVar('CRSETUP');
  MainForm.DownloadChoice.Visible     := AlpineLogin;

  MainForm.InternetChoice.Visible     := CheckSecVar('INTERNET');
  MainForm.PageButton.Visible         := CheckModule('PAGE') and CheckSecVar('PAGE');
  MainForm.PagingChoice.Visible       := CheckModule('PAGE') and CheckSecVar('PAGE');

  If CheckModule('DISP') then begin
    MainForm.NewDispButton.Visible    := CheckSecVar('DISPGEN')
  end else if CheckModule('PROP') then begin
    MainForm.NewDispButton.Visible    := CheckSecVar('PROPVIEW') and Not (FireID = '77000') and Not (FireID = 'EGELS');
    MainForm.DispPanel.Caption        := 'Find Site';
    MainForm.NewDispButton.Hint       := 'Find a location';
    MainForm.NewDispbutton.ImageName  := 'PREPLAN32';
  end else
    MainForm.NewDispButton.Visible    := false;

  MainForm.PdfButton.Visible          := (FireID = '12345');
  MainForm.PictureButton.Visible      := (FireID = '12345');

  MainForm.DispButton.Visible         := ((CheckModule('DISP') or CheckModule('MOBCAD')) or AlpineLogIn);

  if CheckModule('DISP') and CheckModule('MOBCAD') then  
    ShowDispSetup := CheckSecVar('DISPSETUP')
  else if CheckModule('MOBCAD') then
    ShowDispSetup := CheckSecVar('MOBSETUP')
  else if CheckModule('DISP') then
    ShowDispSetup := CheckSecVar('DISPSETUP')
  else if CheckModule('CADINT') then
    ShowDispSetup := CheckSecVar('CADINTSETUP')
  else
    ShowDispSetup := False;

  DispCallChoice.Visible                  := (CheckModule('DISP') and CheckSecVar('DISPVIEW')) or
                                             (CheckModule('MOBCAD') and CheckSecVar('MOBSETUP')) or
                                             (CheckModule('CADINT') and CheckSecVar('CADINTSETUP'));

  BridgeDatabaseChoice.Visible            := DispCallChoice.Visible;

  NfirsAppTimesExport.Visible             := (CheckModule('CADINT') or CheckModule('DISP')) and CheckSecVar('INCSETUP');

  CADIntDispCallChoice.Visible            := (CheckModule('MOBCAD') and CheckSecVar('MOBSETUP')) or (CheckModule('CADINT') and CheckSecVar('CADINTSETUP'));
  DispSetupChoice.Visible                 := ShowDispSetup;
  DispPrintChoice.Visible                 := ShowDispSetup;
  DispButton.DropDownButton               := DispCallChoice.Visible or DispSetupChoice.Visible;

  MainForm.EMSDispButton.Visible          := CheckModule('EMSDISP') and CheckSecVar('EMSDISP')   and (FireID = '12345');

  MainForm.PersButton.Visible             := CheckModule('PERS')    and (CheckSecVar('PERSVIEW') or CheckSecVar('PERSVWREC'));
  MainForm.PersButton.DropDownButton      := CheckSecVar('PERSSETUP') or CheckModule('PERSEXP');
  MainForm.PersAddChoice.Visible          := CheckSecVar('PERSADD');
  MainForm.ViewPersChoice.Visible         := CheckSecVar('PERSVIEW');
  MainForm.PersRankChoice.Enabled         := CheckSecVar('PERSSETUP') or (FireID = '12345');
  MainForm.PersCommHistChoice.Enabled     := CheckSecVar('PERSSETUP') or (FireID = '12345');
  MainForm.PersStatHistChoice.Enabled     := CheckSecVar('PERSSETUP') or (FireID = '12345');
  MainForm.PersBatchChangeChoice.Visible  := CheckSecVar('PERSSETUP');
  MainForm.PersMedHistBatchChoice.Visible := CheckSecVar('PERSSETUP');
  MainForm.PersSetupChoice.Visible        := CheckSecVar('PERSSETUP');
  MainForm.PersExpChoice.Visible          := CheckModule('PERSEXP') and CheckSecVar('PERSEXPVIEW');
  MainForm.NIButton.Visible               := CheckModule('NI') and CheckSecVar('NIVIEW');

  If FireID = '00190' then begin
    MainForm.NIButton.DropDownButton      := CheckSecVar('NISETUP');
    NIEVChoice.Visible                    := false;
  end else if MainForm.NIButton.visible then
    MainForm.NIButton.DropDownButton      := CheckModule('NI');

  NIEVChoice.Enabled                      := CheckSecVar('NISETUP');
  NIAppAllChoice.Enabled                  := CheckSecVar('NISETUP');
  NISetChoice.Enabled                     := CheckSecVar('NISETUP');                    
  NIPersInvChoice.Enabled                 := CheckSecVar('NISETUP');
  PersNIEVAttChoice.Enabled               := CheckSecVar('NISETUP');

  TargetChoice.Visible                    := CheckSecVar('NISETUP') and ((FireID = '12345')or (FireID = '30007') or (FireID = '60059') or (FireID = 'DH000') or (FireID = '01309') or (FireID = '10700') or (FireId = '60005') or (FireId = '60008') or (FireId = '52095') or (FireId = '28001'));
  CrewSenseChoice.Visible                 := CheckSecVar('SCHDSETUP') and ((FireID = '12345') or (FireID = '01922') or (FireID = '72014') or (FireID = '28001'));
  CentreLearnChoice.Visible               := CheckSecVar('NISETUP') and ((FireID = '12345') or (FireID = '28003'));
  CollabornationImport.Visible            := (FireID = '12345') and AlpineLogIn;

  MainForm.CalendarButton.Visible         := CheckModule('NI')   and CheckSecVar('CALENDAR');

  MainForm.HydButton.Visible              := CheckModule('HYD')  and CheckSecVar('HYDVIEW');
  MainForm.HydSetChoice.Visible           := CheckModule('HYD')  and ChecksecVar('HYDSETUP');

  MainForm.GISHydrantPlotting.Visible     := CheckModule('HYD')  and ChecksecVar('HYDEDIT') and 
                                             ( ((FireID = '12345')
                                             or (FireID = '44009')
                                             or (FireID = '30014')
                                             or (FireID = '44006')
                                             or (FireID = '29001')
                                             or (FireID = '52005')
                                             or (FireID = '30052')
                                             or (FireID = '70814')
                                             or (FireID = '30034')
                                             or (FireID = '30029')
                                             or (FireID = '30035')
                                             or (FireID = '30039')
                                             or (FireID = '14008'))
                                             or (SqlLookup(Fireid,'FDID','SYSSET','CANPLOTHYDRANTS')='Y'));

  MainForm.HydrantPlottingChoice.Visible  := MainForm.GISHydrantPlotting.Visible;

  If FireID = '28024' then
    MainForm.GISHydrantPlotting.Visible   := CheckSecVar('GISSETUP');

  MainForm.HydWorkOrdChoice.Visible       := CheckModule('WO')   and CheckSecVar('WOVIEW');

  MainForm.EMSButton.Visible              := CheckModule('EMS')  and (CheckSecVar('EMSVIEW') or CheckSecVar('EMSADDADD'));
  If (SQLLookUp(FireID,'FDID','EMSSET','DISKCODE') = '') then
    MainForm.EMSDiskSubmission.Visible      := false
  else if CheckSecVar('EMSEXP') or CheckSecVar('WFDEMSBILL') then
    MainForm.EMSDiskSubmission.Visible      := true;

  MainForm.EMSButton.DropDownButton       := CheckSecVar('EMSSETUP') or CheckSecVar('EMSEXP') or CheckSecVar('WFDEMSBILL');
  MainForm.EMSSetupChoice.Visible         := CheckSecVar('EMSSETUP');

  If mFireID = '77000' then
    MainForm.NemsisButton.Visible := CheckSecVar('EMSSETUP') or CheckSecVar('EMSEXP') or CheckSecVar('WFDEMSBILL')
  else
    MainForm.NemsisButton.Visible           := CheckModule('NEMSIS') and (CheckSecVar('NEMSISVIEW') or CheckSecVar('NEMSISADDADD'));

  MainForm.Nem3Button.Visible             := CheckModule('NEMSIS3') and CheckSecVar('NEMSIS3VIEW');
  MainForm.Nem3Button.DropDownButton      := CheckSecVar('NEMSIS3SETUP');

  MainForm.NemsisButton.DropDownButton    := CheckSecVar('NEMSISSETUP') or CheckSecVar('NEMSISEXP');
  MainForm.NemsisSetup.Visible            := CheckSecVar('NEMSISSETUP');
  MainForm.NemsisDiskSubmission.Visible   := CheckSecVar('NEMSISEXP');
  NassauExportChoice.Visible              := (mFireID = '12345') or AlpineLogIn or (substr(mFireID,1,3) = '300');
  NemsisQAChoice.Visible                  := (mFireID = '12345') or (mFireID = '28008') or (mFireID = '30EMS') or (mFireID = '89011') or CheckModule('NEMSISQA');
  NemsisQAChoice.Enabled                  := CheckSecVar('NEMSISQAVIEW');
  NemsisQAHistChoice.Visible              := (mFireID = '12345') or (mFireID = '28008') or (mFireID = '89011') or CheckModule('NEMSISQA');
  NemsisQAHistChoice.Enabled              := CheckSecVar('NEMSISQAVIEW');

  MainForm.EMSFFChoice.Visible            := ( (mFireID = '12345') or (mFireID = '00190') or (mFireID = '30003') or (mFireID = 'KOCEM') or (mFireID = '73014') ) and CheckSecVar('EMSSETUP');
  MainForm.EMSFFChoice.Caption            := IIf(mFireID = '00190','Previous Contacts','Frequent Fliers');

  MainForm.NemsisSetupChoice.Visible      := CheckModule('NEMSIS');
  MainForm.EMSQAChoice.Visible            := false;
  MainForm.QAQueryChoice.Visible          := CheckModule('EMSQA') and CheckSecVar('EMSQAVIEW');

  MainForm.NFIRSButton.DropDownButton     := CheckModule('INC') and ( CheckSecVar('INCDISK') or CheckSecVar('INCSETUP') );
  MainForm.NFIRSButton.Visible            := CheckModule('INC')  and CheckSecVar('INCVIEW');
  MainForm.IncDiskChoice.Enabled          := CheckSecVar('INCDISK');
  MainForm.IncSetupChoice.Enabled         := CheckSecVar('INCSETUP');

  MainForm.viewnfirsbycompany.Visible     := (mFireid ='12345') or (mFireid ='34027');
  MainForm.viewnfirsbycompany.enabled     := CheckSecVar('INCVIEW');

  MainForm.NFIRS50ImportChoice.Enabled    := AlpineLogIn or (mFireID = '12345') or ((mFireID = 'HARFO') and CheckSecVar('INCSETUP'));

  MainForm.SysMenu.Visible                := CheckSecVar('SYSTABLE');
  MainForm.SetMenu.Visible                := CheckSecVar('SYSSETUP');
  MainForm.SysViewCustChoice.Visible      := CheckSecVar('SYSSETUP') and(SQLLookUp(mFireID,'FDID','SYSSET','SYSVIEWCUST') = 'Y');
  MainForm.SecMenu.Visible                := CheckModule('SEC')  and CheckSecVar('SECSETUP');
  MainForm.SecRecAudChoice.Visible        := CheckModule('SEC')  and CheckSecVar('SECSETUP');
  MainForm.SecRecAudChoice.Visible        := CheckModule('SEC')  and CheckSecVar('SECSETUP');
  MainForm.SchdButton.Visible             := CheckModule('SCHD') and CheckSecVar('SCHDCAL');
  MainForm.SchdGuiChoice.Visible          := AlpineLogin or (SQLLookUp(mFireID,'FDID','SCHDSET','SCHDGUI') = 'Y');
  MainForm.SchdGUIButton.Visible          := CheckModule('SCHD') and CheckSecVar('SCHDCAL') and (AlpineLogin or (SQLLookUp(mFireID,'FDID','SCHDSET','SCHDGUI') = 'Y'));
  MainForm.SchdExpChoice.Visible          := AlpineLogin or (((mFireid ='07130') or (mFireid ='11540')) and (CheckSecVar('SCHDEXPORT')));
  MainForm.SchdPayPeriodChoice.Visible    := (mFireID = '12345');

  MainForm.SchdButton.DropDownButton      := CheckModule('SCHD') and CheckSecVar('SCHDSETUP');
  MainForm.SchdReqChoice.Visible          := (SqlTableRecCount('SELECT COUNT(*) FROM SCHDREQTYPE') > 0);

  MainForm.InvButton.Visible              := CheckModule('INV')  and CheckSecVar('INVVIEW');
  MainForm.InvButton.DropDownButton       := CheckModule('INV')  and CheckSecVar('INVSETUP');
  MainForm.StationButton.Visible          := CheckModule('INV')  and CheckSecVar('INVVIEW');
  MainForm.InvPartButton.Visible          := CheckModule('INVPM')and CheckSecVar('INVVIEW');


  MainForm.WOButton.Visible               := CheckModule('WO')   and ChecksecVar('WOVIEW');
  MainForm.WOButton.DropDownButton        := CheckModule('WO')   and ChecksecVar('WOSETUP');

  MainForm.AppButton.Visible              := CheckModule('APP')  and CheckSecVar('APPVIEW');
  MainForm.InvServHistButton.Visible      := (mFireID = '28008') and CheckSecVar('INVEDIT');
  MainForm.AppButton.DropDownButton       := CheckModule('APP');
  MainForm.AppSetChoice.Visible           := CheckSecVar('APPSETUP');
  Mainform.InvAssSignUpChoice.Visible     := AlpineLogin;

  AppServSchdChoice.Visible               := Not MultiFdid;
  AppServHistChoice.Visible               := Not MultiFdid;
  if MFireID = '70814' then
    AppServHistChoice.Visible             := True;

  if MFireID = '01920' then
    BatchScheduleChoice.Visible             := True;
    
  AppInspSchdChoice.Visible               := Not MultiFdid;
  AppInspHistChoice.Visible               := Not MultiFdid;
  InvFuelChoice    .Visible               := ((Not MultiFdid) OR (mfireid = '52114'));

  StaInspChoice    .Visible               := Not MultiFdid;
  StaServChoice    .Visible               := Not MultiFdid;

  SCBAServSchdChoice.Visible              := Not MultiFdid;
  ScbaServHistChoice.Visible              := Not MultiFdid;
  SCBAInspSchdChoice.Visible              := Not MultiFdid;
  ScbaInspHistChoice.Visible              := Not MultiFdid;

  AttendPersIDChoice.Visible              := CheckModule('CADINT') or CheckModule('DISP') or CheckModule('HAND') or CheckModule('FINGER');

  MainForm.HoseButton.Visible             := CheckModule('HOSE') and CheckSecVar('HOSEVIEW');
  MainForm.HoseButton.DropDownButton      := CheckSecVar('HOSESETUP') or CheckSecVar('HOSEEDIT');
  MainForm.HoseSetChoice.Enabled          := CheckSecVar('HOSESETUP');
  MainForm.HoseTestBatchChoice.Enabled    := CheckSecVar('HOSEEDIT');
  MainForm.WaterwaysImport.Visible        := (SQLLookUp(mFireID,'FDID','HOSESET','WATERWAY') = 'Y') and (AlpineLogIn or ((mFireID='30014') and CheckSecVar('HOSESETUP')));
  MainForm.HoseFailSafeChoice.Visible     := AlpineLogIn;

  MobileMessageHistory.Enabled            := CheckSecVar('DISPVIEW');

  MainForm.ScbaButton.Visible             := CheckModule('SCBA') and CheckSecVar('SCBAVIEW');
  MainForm.ScbaButton.DropDownButton      := CheckModule('SCBA') and CheckSecVar('SCBASETUP');


  MainForm.PictButton.Visible             := CheckModule('PICT') and CheckSecVar('PICTVIEW');
  MainForm.PictButton.DropDownbutton      := CheckSecVar('PICTSETUP');

  MainForm.GISButton.Visible              := CheckModule('GIS')  and CheckSecVar('GISVIEW');
  MainForm.GISButton.DropDownButton       := CheckModule('GIS')  and CheckSecVar('GISSETUP');
  MainForm.GISIncChoice.Visible           := AlpineLogin or (mfireID = '21099') or (mfireID = '30029') or (mfireID = '01309');
  MainForm.MapBoxChoice.Visible           := AlpineLogin;

  MainForm.PropButton.Visible             := CheckModule('PROP') and CheckSecVar('PROPVIEW');
  AddAddressChoice.Enabled                := CheckSecVar('PROPADD');
  PropViewAddressChoice.enabled           := CheckSecVar('PROPVIEW');

  PropViewRangeChoice.Visible             := Not (PropRange = '');
  PropViewIntersectionChoice.Visible      := Not (PropInt = '');

  PropViewRangeChoice.Enabled             := CheckSecVar('PROPVIEW');
  PropViewIntersectionChoice.Enabled      := CheckSecVar('PROPVIEW');

  AliasAddressChoice.Visible              := (SqlTableRecCount('SELECT COUNT(*) FROM PROPALIAS') > 0);
  AliasAddressChoice.Enabled              := CheckSecVar('PROPVIEW');

  If SqlTableRecCount('SELECT COUNT(*) FROM PROPSTATTYPE') = 0 then begin
    PropStatChoice.visible     := false;
    PropStatViewChoice.visible := false;
  end;

  PropStatChoice.enabled                  := CheckSecVar('PROPVIEW');
  PropStatViewChoice.enabled              := CheckSecVar('PROPVIEW');

  MainForm.PropButton.DropDownButton      := True;
  MainForm.PropSetUpChoice.Visible        := CheckSecVar('PROPSETUP');
  MainForm.BatchChangeChoice.Visible      := (CheckSecVar('PROPSETUP') and (SQLLookUp(FireID,'FDID','PROPSET','BATCHCHANGE') = 'Y')) or AlpineLogin;
  MainForm.MobileEyesChoice.Visible       := AlpineLogin;

  MainForm.FundButton.Visible             := CheckModule('FUND') and CheckSecVar('FUNDVIEW');
  MainForm.FundButton.DropDownButton      := CheckSecVar('FUNDSETUP');

  MainForm.CallIDButton.Visible           := CallIDVisible;
  MainForm.CallIDButton.DropDownButton    := CheckSecVar('CALLIDSETUP') or CheckSecVar('E911SETUP') or CheckSecVar('CADINTSETUP');

  MainForm.VoteButton.Visible             := CheckModule('VOTE');

  MainForm.MCIButton.Visible              := CheckModule('MCI') and CheckSecVar('MCIVIEW');
  MainForm.PageRemButton.Visible          := CheckModule('PAGEREM') and CheckSecVar('PAGEREMVIEW');
  MainForm.MCIButton.DropDownButton       := CheckModule('MCI') and CheckSecVar('MCISETUP');
  MainForm.MCIServerChoice.Visible        := AlpineLogIn or (mFireID = '12345');

  MainForm.InspButton.Visible             := CheckModule('INSP') and CheckSecVar('INSPVIEW');
  MainForm.InspCalButton.Visible          := CheckModule('INSP') and CheckSecVar('INSPVIEW') and Not (FireID = '00190');
  MainForm.ArsButton.Visible              := CheckModule('ARS')  and CheckSecVar('ARSVIEW');

  MainForm.KocInvButton.Visible           := CheckModule('INSP') and CheckSecVar('INSPVIEW') and (FireID = 'KOCKW');

  MainForm.PermitButton.Visible           := CheckModule('PERM') and CheckSecVar('PERMVIEW');
  MainForm.ComplaintButton.Visible        := CheckModule('COMP') and CheckSecVar('COMPVIEW');
  MainForm.VioButton.Visible              := CheckModule('INSP') and CheckSecVar('VIOVIEW');
  MainForm.InspQueueButton.Visible        := ((FireId = '00190') or (FireId = '28008') or (FireId = '12345') or (FireId = '01920')) and CheckSecVar('INSPQUEUE');

  MainForm.InspAddrButton.Visible         := CheckModule('INSP') and CheckSecVar('INSPVIEW');

  MainForm.InspButton.DropDownButton      := CheckSecVar('INSPSETUP') or CheckSecVar('INSPSCHED');
  MainForm.InspSetUpChoice.Visible        := CheckSecVar('INSPSETUP');
  MainForm.InspSchdChoice.Visible         := CheckSecVar('INSPSCHED');
  MainForm.InspLetterChoice.Visible       := (FireID = '12345') or (FireID = '28008');

  MainForm.PermitButton.DropDownButton    := CheckSecVar('PERMSETUP');
  MainForm.ComplaintButton.DropDownButton := CheckSecVar('COMPSETUP');          

  MainForm.DLButton.Visible               := CheckModule('DL');
  MainForm.DLButton.DropDownButton        := CheckSecVar('DLSETUP') or (mFireID = '07130');
  MainForm.DLSetupChoice.Visible          := CheckSecVar('DLSETUP');

  MainForm.QueueButton.Visible            := CheckModule('QUEUE') and CheckSecVar('QUEUE');

  If FireID = 'KOCEM' then
    MainForm.MobSetup.Visible               := AlpineLogIn
  else
    MainForm.MobSetup.Visible               := (CheckModule('MOBEMS') or CheckModule('MOBINSP') or CheckModule('MOBDISP') or CheckModule('MOBNFIRS') or CheckModule('MOBCAD')) and CheckSecVar('MOBSETUP');
    
  MainForm.MobileMessageHistory.Visible   := CheckModule('MOBCAD');
  MainForm.InvBarButton.Visible           := CheckModule('INVBAR') and CheckSecVar('INVBARVIEW');
  MainForm.HazMatButton.Visible           := CheckModule('HAZ');
  MainForm.HazMatButton.DropDownButton    := CheckModule('PROP');
  MainForm.TBButton.Visible               := CheckModule('TB') and CheckSecVar('TBEDIT');
                                       
  MainForm.HandButton.Visible             := CheckModule('HAND');
  MainForm.HandButton.DropDownButton      := CheckModule('HAND') and CheckSecVar('HANDSETUP');

  MainForm.FingerButton.Visible           := CheckModule('FINGER') and (CheckSecVar('FINGERVIEW') or CheckSecVar('FINGERSETUP'));
  MainForm.FingerButton.DropDownButton    := CheckSecVar('FINGERSETUP');
  
  Open_Query('FINGERSET',false,'SELECT * FROM FINGERSET WHERE FDID = ' + AddExpr(mFireID));
  FingerEnrollTargus.Visible              := (tdbfield('FINGERSET','FINGERVERSION') = 'T') or (mFireID = '12345');
  FingerEnrollGriaule.Visible             := (tdbfield('FINGERSET','FINGERVERSION') = '')  or (tdbfield('FINGERSET','FINGERVERSION') = 'G') or (mFireID = '12345');
  KioskSchdHistChoice.Visible             := (tdbfield('FINGERSET','ENABLESIGNIN') = 'Y') or (mFireID = '12345');
  CloseApollo('FINGERSET');

  MainForm.VoteButton.Visible             := CheckModule('VOTE') and CheckSecVar('VOTE');
  MainForm.VoteButton.DropDownButton      := CheckSecVar('VOTESETUP');

  MainForm.ImageButton.Visible            := (CheckModule('IMAGE') or CheckModule('SITE'))   and CheckSecVar('IMAGEVIEW');
  ViewPersImageChoice.Visible             := (CheckModule('IMAGE') and CheckModule('PERS')   and CheckSecVar('PERSSETUP'));
  ViewNfirsImageChoice.Visible            := (CheckModule('IMAGE') and CheckModule('INC')    and CheckSecVar('INCSETUP'));
  ViewInvImageChoice.Visible              := (CheckModule('IMAGE') and CheckModule('INV')    and CheckSecVar('INVSETUP'));
  ViewInspImageChoice.Visible             := (CheckModule('IMAGE') and CheckModule('INSP')   and CheckSecVar('INSPSETUP'));
  ViewNIImageChoice.Visible               := (CheckModule('IMAGE') and CheckModule('NI')     and CheckSecVar('NISETUP'));
  ViewNemsisImageChoice.Visible           := (CheckModule('IMAGE') and CheckModule('NEMSIS') and CheckSecVar('NEMSISSETUP'));

  MainForm.QueueButton.DropDownButton     := CheckSecVar('QUEUESETUP');
  MainForm.QueueSetup.Visible             := CheckSecVar('QUEUESETUP');

  MainForm.DLButton.Visible               := CheckModule('DL') and CheckSecVar('DLVIEW');
  CallIDButton.Visible                    := CallIDVisible and (CheckSecVar('CADINTVIEW'));
  MainForm.RolodexButton.Visible          := CheckSecVar('ROLODEXVIEW');

  If mFireID = '07130' then begin
    SchdGuiButton.Visible := AlpineLogin or (AnyStrToInt(GlobalPersID) > 0);
  end;

  ResizeMainPanel(MainForm.DispPanel);
  ResizeMainPanel(MainForm.PropPanel);
  ResizeMainPanel(MainForm.PersPanel);
  ResizeMainPanel(MainForm.MiscPanel);
  ResizeMainPanel(MainForm.NotifyPanel);
  ResizeMainPanel(MainForm.InspPanel);
  ResizeMainPanel(MainForm.ArsPanel);
  ResizeMainPanel(MainForm.PrintPanel);
  ResizeMainPanel(MainForm.SecPanel);
  ResizeMainPanel(MainForm.ReportPanel);
  ResizeMainPanel(MainForm.ExitPanel);
  ResizeMainPanel(MainForm.InvPanel);

  AuxTab.TabVisible  := MainForm.NotifyPanel.Visible or MainForm.InvPanel.Visible or MainForm.MiscPanel.Visible;
  InspTab.TabVisible := MainForm.InspPanel.Visible or MainForm.ArsPanel.Visible or ComplaintButton.Visible;

  If TPageRemindSecForm.CheckPageRemindSec(SecIDVar) then begin
    If Not FormExists('PageRemindSecForm') then
      PageRemindSecForm := TPageRemindSecForm.Create(application);
    PageRemindSecForm.Show;
  end;
  TCustomUpdate.DoAfterSetMenuSecurity(self);
end;

procedure TMainForm.GeoSearchButtonDblClick(Sender: TObject);
begin
  PropSetUpChoiceClick(SELF);
end;

procedure TMainForm.SchdSetChoiceClick(Sender: TObject);
var PkVar: String;
begin
{
  If MultiFdid and (SecFDID = '') then begin
    If (SecFDID = '') then
      SortGridViewDriver('SCHDSET',TSchdSetForm,TSchdSetForm.NewRecord,nil)
    else begin
      PkVar       := GetSetupMultiFdidID('SCHDSET',SecFDID);
      SchdSetForm := TSchdSetForm.Create(application,'SCHDSET',PkVar,TSchdSetForm.NewRecord);
      SchdSetForm.ShowModal;
      SchdSetForm.Free;
    end;
  end else begin
}
    PkVar       := GetSetupID('SCHDSET');
    SchdSetForm := TSchdSetForm.Create(application,'SCHDSET',PkVar,TSchdSetForm.NewRecord);
    SchdSetForm.ShowModal;
    SchdSetForm.Free;
//end;
end;

procedure TMainForm.SchdReqChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCHDREQALL',TSchdReqForm,TSchdReqForm.NewRecord,nil);
end;

procedure TMainForm.SchdVacChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCHDVAC',TSchdVacForm,TSchdVacForm.NewRecord,nil);
end;

procedure TMainForm.code3ExportClick(Sender: TObject);
var
  mInitialDate,mFinalDate: TDateTime;
  rLatitude,rLongitude: Real;
  dispstatcode,vwnfirsapptimes,updatedispcall,dispcall: TApolloData;
  progressf: TProgressForm;
  mWhere,FileNameCalls,FileNameResponse,mUnitResponse,mCall: String;
  i: Integer;
  function SayTime(mField: String): String;
  var
    mFieldName: String;
  begin
    result := '"';
    if mField <> '' then begin
      if dispstatcode.exactquerylocate('dispstatcodeid',mField) then begin
        mFieldName := 'datetime_'+tdbfield(dispstatcode,'code');
        if vwnfirsapptimes.FindField(mFieldName)<>nil then begin
          if getfield(vwnfirsapptimes,mFieldname).AsDateTime>0 then
            result := result + formatdatetime('mm-dd-yyyy hh:nn:ss',getfield(vwnfirsapptimes,mFieldname).AsDateTime);
        end;
      end;
    end;
    result := result + '"';
  end;
  function GetFile(mBase: String): String;
  begin
    result := ExtractFileDir(ParamStr(0))+'\' + mBase+'_'+formatdatetime('yyyymmdd',mInitialDate)+'_'+formatdatetime('yyyymmdd',mFinalDate)+'.csv';
  end;
begin
  mInitialDate := strtodate('01/01/'+GetYear(Now));
  mFinalDate := Now;
   if DateInputDlg('Start Date','Enter Start Date',mInitialDate) then begin
    if DateInputDlg('Final Date','Enter Final Date',mFinalDate) then begin
      mWhere := ' where dispcall.datetimedisp >= '+formatdatetimeforSql(minitialdate)+' and dispcall.datetimedisp <= '+formatdatetimeforSql(mFinalDate)+' ';
    
      mCall := 'UniqueId,NatureCode,DispatchDate,DispatchTime,StreetAddr,XLoc,YLoc,sitfound,datetimealarm,datetimeout,datetimearr,datetimecont,datetimein,'+
      'shift,alarm,district,covid19,action,propuse'+crlf;
      mUnitResponse := 'UniqueID,Unitid,Dispatched,Responding,OnScene,InService'+crlf;
      progressf:= TProgressForm.create(self);
      dispstatcode := Open_query('select * from dispstatcode');
      dispcall := open_query('select dispcall.dispcallid,geolocstring,dispcall.dispcallid,dispcalltype.code,dispcall.datetimedisp,address,dispcall.latitude,dispcall.longitude,'+
      'nfirsmain.sitfound, nfirsmain.datetimealarm, nfirsmain.datetimeout, nfirsmain.datetimearr, nfirsmain.datetimecont,nfirsmain.datetimein,'+
      'schdshiftname.code schdshiftnamecode, nfirsmain.alarmnum, n5district.code districtcode, nfirsmain.nfirsss9244, nfirsmain.typeact, nfirsmain.fixprop from dispcall '+
        'left outer join dispcalltype on (dispcall.dispcalltypeid=dispcalltype.dispcalltypeid) '+
        'left join nfirsmain on (dispcall.dispcallid = nfirsmain.dispcallid) '+
        'left join schdshiftname on (schdshiftname.schdshiftnameid = nfirsmain.schdshiftnameid) '+
        'left join N5DISTRICT on (nfirsmain.n5districtid = n5district.n5districtid) '+mWhere +
        ' order by dispcall.dispcallid');
      updatedispcall := open_query(True,'select * from dispcall '+mWhere);

      vwnfirsapptimes := open_query('select * from vwnfirsapptimes where datetimealarm >= '+formatdatetimeforSql(minitialdate-1)+' and datetimealarm <= '+formatdatetimeforSql(mFinalDate+1)+
        'order by dispcallid');
      progressf.Initialize('Exporting Data',dispcall.queryreccount,False);
      while not dispcall.eof do begin
        rLatitude := 0;
        rLongitude := 0;
        if (tdbfield(dispcall,'geolocstring')='') and (getfield(dispcall,'latitude').AsFloat = 0) then begin
          if updatedispcall.ExactQueryLocate('dispcallid',tdbfield(dispcall,'dispcallid')) then begin
            updatedispcall.edit;
            SetMapLatLong(updatedispcall,[ltApproximate,ltGeometricCenter]);
            rLatitude := getfield(updatedispcall,'latitude').AsFloat;
            rLongitude := GetField(updatedispcall,'longitude').AsFloat;
            updatedispcall.Post;
          end;
        end else begin
          rLatitude := getfield(dispcall,'latitude').AsFloat;
          rLongitude := GetField(dispcall,'longitude').AsFloat;
        end;

        mCall := mCall + tdbfield(dispcall,'dispcallid')+','+tdbfield(dispcall,'code')+','+formatdatetime('mm/dd/yyyy',getfield(dispcall,'datetimedisp').AsDateTime)+','+
          formatdatetime('hh:nn:ss',getfield(dispcall,'datetimedisp').AsDateTime)+',"'+tdbfield(dispcall,'address')+'",'+formatfloat('###0.0000000',MinutesToDecimal(rLatitude))+
          ','+formatfloat('###0.0000000',MinutesToDecimal(rlongitude))+','+tdbfield(dispcall,'sitfound')+','+formatdatetime('yyyy-mm-dd hh:nn:ss',GetField(DispCall,'datetimealarm').AsDateTime)+
          ','+formatdatetime('yyyy-mm-dd hh:nn:ss',GetField(DispCall,'datetimeout').AsDateTime)+','+formatdatetime('yyyy-mm-dd hh:nn:ss',GetField(DispCall,'datetimearr').AsDateTime)+
          ',';
          if GetField(DispCall,'datetimecont').AsString <> '' then
            mCall := mCall + formatdatetime('yyyy-mm-dd hh:nn:ss',GetField(DispCall,'datetimecont').AsDateTime);

          mCall := mCall + ','+formatdatetime('yyyy-mm-dd hh:nn:ss',GetField(DispCall,'datetimein').AsDateTime)+
          ','+tdbfield(dispcall,'schdshiftnamecode')+','+tdbfield(dispcall,'alarmnum')+','+tdbfield(dispcall,'districtcode')+','+tdbfield(dispcall,'nfirsss9244')+
          ','+tdbfield(dispcall,'typeact')+','+tdbfield(dispcall,'fixprop')+crlf;
        vwnfirsapptimes.ExactQueryLocate('dispcallid',tdbfield(dispcall,'dispcallid'));
        while (not vwnfirsapptimes.eof) and (tdbfield(vwnfirsapptimes,'dispcallid')=tdbfield(dispcall,'dispcallid')) do begin
          mUnitResponse := mUnitResponse + tdbfield(vwnfirsapptimes,'dispcallid')+','+tdbfield(vwnfirsapptimes,'unitnum')+','+
            SayTime(TimeDispID)+','+SayTime(TimeOutId)+','+SayTime(TimeArrId)+','+SayTime(TimeInId)+crlf;

          vwnfirsapptimes.next;
        end;
        progressf.Increment;
        dispcall.next;
      end;
      dispcall.free;
      updatedispcall.free;
      vwnfirsapptimes.free;
      dispstatcode.free;
      progressf.Free;
      FileNameCalls := GetFile('code3calls');
      FileNameResponse := GetFile('code3response');

      if StringTofile(FileNameCalls,mCall) and StringTofile(FileNameResponse,mUnitResponse) then
        showmessage('Created Files:'+crlf+FileNameCalls+crlf+FileNameResponse)
      else
        showmessage('There was an error creating csv file');
    end;

  end;
end;

procedure TMainForm.NfirsAppTimesExportClick(Sender: TObject);
begin
  NFIRSAppExportForm := TNFIRSAppExportForm.Create(application);
  NFIRSAppExportForm.ShowModal;
  NFIRSAppExportForm.Free;
end;

procedure TMainForm.AppButtonClick(Sender: TObject);
begin
  SortGridViewDriver('APP',TInvForm,TInvForm.TruckNewRecord,nil);
end;

procedure TMainForm.ReportButtonClick(Sender: TObject);
begin
  If Not FormExists('SysRepManForm') then
    SysRepManForm := TSysRepManForm.Create(application);
  SysRepManForm.Show;
end;

procedure TMainForm.ShowMenuButtonClick(Sender: TObject);
begin
  MainPanel.Visible := true;
end;
                                      
procedure TMainForm.InvServHistButtonClick(Sender: TObject);
begin
  SortGridViewDriver('APPSERVHISTALL',TInvServHistForm,TInvServHistForm.AppNewRecord,Nil);
end;

procedure TMainForm.InvServHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INVSERVHISTALL',TInvServHistForm,TInvServHistForm.INVNewRecord,Nil);
end;

procedure TMainForm.InvSetChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  PkVar      := GetSetupID('INVSET');
  InvSetForm := TInvSetForm.Create(application,'INVSET',PkVar,TInvSetForm.NewRecord);
  InvSetForm.ShowModal;
  InvSetForm.Free;
end;

procedure TMainForm.AttendPersIDChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('ATTENDPERSINV',TAttendPersIDForm,TAttendPersIDForm.NewRecord,nil);
end;

procedure TMainForm.PersBatchChangeChoiceClick(Sender: TObject);
begin
  PersBatchChangeForm := TPersBatchChangeForm.Create(application);
  PersBatchChangeForm.ShowModal;
  PersBatchChangeForm.Free;
end;

procedure TMainForm.BatchChangeChoiceClick(Sender: TObject);
begin
  PropBatchChangeForm := TPropBatchChangeForm.Create(application);
  PropBatchChangeForm.ShowModal;
  PropBatchChangeForm.Free;
end;

procedure TMainForm.BatchScheduleChoiceClick(Sender: TObject);
begin
  {$ifdef MA01920}
  PersBatchBankForm := TPersBatchBankForm.Create(application);
  PersBatchBankForm.ShowModal;
  PersBatchBankForm.Free;
  {$endif}
end;

procedure TMainForm.BridgeDatabaseChoiceClick(Sender: TObject);
begin
  CADBridgeViewForm := TCADBridgeViewForm.Create(application);
  CADBridgeViewForm.ShowModal;
  CADBridgeViewForm.Free;
end;

procedure TMainForm.NISetChoiceClick(Sender: TObject);
begin
  NISetForm := TNISetForm.Create(application);
  NISetForm.ShowModal;
  NISetForm.Free;
end;

procedure TMainForm.HydButtonClick(Sender: TObject);
begin
  SortGridViewDriver('HYD',THydForm,THydForm.NewRecord,nil);
end;

procedure TMainForm.HydInspBatchChoiceClick(Sender: TObject);
begin
  HydInspBatchForm := THydInspBatchForm.Create(application);
  HydInspBatchForm.ShowModal;
  HydInspBatchForm.Free;
end;

procedure TMainForm.GISHydrantPlottingClick(Sender: TObject);
begin 
  If SqlLookup(mFireID,'FDID','SYSSET','PLOTHYDGISSETID')='' then begin
    ShowMessage('You must set the GIS Plotting Code in the System Setup!');
    exit;
  end;
 
  If Not FormExists('GisHydrantPlotForm') then
    GISHydrantPlotForm := TGISHydrantPlotForm.Create(application,SqlLookup(mFireID,'FDID','SYSSET','PLOTHYDGISSETID'));
  GISHydrantPlotForm.Show;
end;

procedure TMainForm.ShowToolBar1Click(Sender: TObject);
begin
  if anystrtoint(SecIDVar)> 0 then
    RunSql('UPDATE SEC SET SHOWFLOATINGTOOL='+Addexpr('Y')+' WHERE SECID = '+pkValue(SecidVar));
  ShowToolBar;
end;

procedure TMainForm.SQLSetChoiceClick(Sender: TObject);
Var ASCSetID : String;
begin
  ASCSetID   := '1';
  SQLSetForm := TSQLSetForm.Create(application,'ASCSET',ASCSetID,TSQLSetForm.NewRecord);
  SQLSetForm.ShowModal;
  SQLSetForm.Free;
end;

procedure TMainForm.ShowToolBar;
var mShowToolBar : Boolean;
    i            : Integer;
    bShowFloatingToolBar: Boolean;
begin
  toolbartab.Tabvisible := False;
  try
    Open_Query('SEC',false,'SELECT SHOWFLOATINGTOOL,TOOLSHOW FROM SEC WHERE SECID = ' + pkValue(SecIDVar));
    if ShowToolBarForAll then
      mShowToolBar := True
    else begin
      mShowToolBar := (tdbfield('SEC','TOOLSHOW') = 'Y') or AlpineLogin;
    end;
    if (mFireid = '28008') or (mFireID='30053')  THEN
      bShowFloatingToolBar := True
    else if anystrtoint(SecIDVar)>0 then
      bShowFloatingToolBar := tdbfield('SEC','SHOWFLOATINGTOOL')='Y'
    else
      bShowFloatingToolBar := True;
  finally
    CloseApollo('SEC');
  end;
  if mShowToolBar then
    GlobalShowToolBar(Customtoolbar,bShowFloatingToolBar);

  If (mainform.windowstate=wsMaximized) and SdiFormat then begin
    mainform.visible := False;
    mainform.visible := true;
  end;
end;

procedure TMainForm.IncSetupChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar := GetSetupID('NFIRSSET');
  NfirsSetForm := TNfirsSetForm.Create(application,'NFIRSSET',pkVar,TNfirsSetForm.NewRecord);
  NfirsSetForm.ShowModal;
  NfirsSetForm.Free;
  NFIRSSetVar(GlobalAdoConnection,mfireid);
end;

procedure TMainForm.EMSButtonClick(Sender: TObject);
Var EmsView : String;
begin
  If CheckSecVar('EMSVIEW') then
    SortGridViewDriver('EMS',TEMSForm,TEMSForm.NewRecord,nil)
  else
    SortGridViewDriver('EMS',TEMSViewAddForm,TEMSViewAddForm.NewRecord,nil);
end;

procedure TMainForm.PagingChoiceClick(Sender: TObject);
begin
  If Not FormExists('PageForm') then
    PageForm := TPageForm.Create(application);
  PageForm.Show;
end;

procedure TMainForm.PDFButtonClick(Sender: TObject);
begin
  If Not FormExists('SysDemoRepViewForm') then
    SysDemoRepViewForm := TSysDemoRepViewForm.Create(application);
  SysDemoRepViewForm.Show;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_F10) and (ssShift in Shift) then
    SecButtonClick(Sender);
end;

procedure TMainForm.PageButtonClick(Sender: TObject);
begin
  PagingChoiceClick(self);
end;

procedure TMainForm.PersButtonClick(Sender: TObject);
begin
  if not CheckSecVar('PERSVIEW') then
    TToolBarForm.ViewOwnRecord(self)
  else
    SortGridViewDriver('PERS',TPersForm,TPersForm.NewRecord,nil);
end;


procedure TMainForm.PersExpChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSEXPALL',TPersExpForm,TPersExpForm.NewRecord,Nil);
end;

procedure TMainForm.FormResize(Sender: TObject);
begin
  CrossImage.Left := Round((Width - CrossImage.Width)/2);
  TitleField.Left := Round(Width/2) + 100;

  CrossImage.Top     := Round((Height - CrossImage.Height)/2) - 180;
  TitleField.Top     := Round((Height - CrossImage.Height)/2) - 64;
end;

procedure TMainForm.PersSetupChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar := GetSetupID('PERSSET');
  PersSetForm := TPersSetForm.Create(application,'PERSSET',pkVar,TPersSetForm.NewRecord);
  PersSetForm.ShowModal;
  PersSetForm.Free;
end;

procedure TMainForm.PersStatHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSSTATHISTALL',TPersStatHistForm,NIPersInvNewRecord,Nil);
end;

procedure TMainForm.ManageDatabaseViews2Click(Sender: TObject);
begin
  SortGridViewDriver('SYSDBVIEW',TSysDBViewForm,TSysDBViewForm.NewRecord,Nil);
end;

procedure TMainForm.TargetChoiceClick(Sender: TObject);
begin
  TargetForm := TTargetForm.Create(application);
  TargetForm.ShowModal;
  TargetForm.Free;
end;

procedure TMainForm.TBButtonClick(Sender: TObject);
var Pkvar: String;
begin
  PkVar        := GetSetupID('BULLETIN');
  BulletinForm := TBulletinForm.Create(application,'BULLETIN',pkVar,TBulletinForm.NewRecord);
  BulletinForm.ShowModal;
  BulletinForm.Free;
end;

procedure TMainForm.IncDiskChoiceClick(Sender: TObject);
begin
  DiskCondForm := TDiskCondForm.Create(self);
  DiskCondForm.ShowModal;
  DiskCondForm.Free;
end;

procedure TMainForm.DLButtonClick(Sender: TObject);
begin
  If Not FormExists('DLForm') then
    DLForm := TDLForm.Create(application);
  DLForm.Show;
end;

procedure TMainForm.SysStatChoiceClick(Sender: TObject);
begin
  SysStatForm := TSysStatForm.Create(self);
  SysStatForm.ShowModal;
  SysStatForm.Free;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
Var DateTimeEXE : TDateTime;
    EXEName     : String;
    CompCode    : String;
begin
  If GetFormOfType(TToolBarForm) <>nil then
    TToolBarForm(GetFormOfType(TToolBarForm)).SaveToolBarPos;
  AppendToLog ('Normal Application Close');
  CompCode    := AlpineGetComputerName;
  EXEName     := UpperCase(ExtractFileName(ParamStr(0)));
  DateTimeEXE := FileDateToDateTime(FileAge((ParamStr(0))));
  if anystrtoint(SecIDVar)>0 then
    TableInsert('SECLOG',['SECID',  'COMPCODE','DATETIMEEXE','EXENAME','DATETIMELOGIN', 'LOGINRESULT'],
                         [SecIDVar,CompCode,  DateTimeEXE,  ExeName,  Now,             'EXIT' ])
  else
    TableInsert('SECLOG',['COMPCODE','DATETIMEEXE','EXENAME','DATETIMELOGIN', 'LOGINRESULT'],
                         [CompCode,  DateTimeEXE,  ExeName,  Now,             'EXIT' ]);

end;

procedure TMainForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If (Fireid = '30070') or (Fireid = '34027') or (Fireid = '21099') or (Fireid = '01038') or
     (Fireid = '44021') or (Fireid = '52095') or (Fireid = '13193') or (Fireid = '30018') or
     (Fireid = '34012') or (Fireid = '15035') or (Fireid = '03050') or (Fireid = '36049') or
     (Fireid = '44003') or (Fireid = 'EGELS') or (Fireid = '15006') or (Fireid = '15027') or
     (Fireid = 'ABEAC') or (Fireid = '89011') or (Fireid = '30012') or (Fireid = '44008') or
     (Fireid = '13282') or (Fireid = '28035') or (Fireid = '23118') or (Fireid = '44012') or
     (Fireid = '16001') or (Fireid = '42111') or (Fireid = '13191') or (Fireid = 'PVANY') or
     (Fireid = '56005') or (Fireid = '46011') or (Fireid = '52115') or (SqlLookup(Fireid,'FDID','SYSSET','REDNMXCLOUD')='Y') then begin

    DownloadMobileUpdate(GlobalAdoConnection,fireid);
    AppendToLog('Checking for update');
  end else If FireID = 'PVANY' then begin
    CanClose := BooleanMessageDlg('Are you sure you want to quit?');
  end;  
end;

procedure TMainForm.InvButtonClick(Sender: TObject);
begin
  SortGridViewDriver('GEN',TInvForm,TInvForm.GenNewRecord,nil);
end;

procedure TMainForm.InvFuelChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INVFUELHIST',TInvFuelForm,TInvFuelForm.NewRecord,nil);
end;

procedure TMainForm.InvPartButtonClick(Sender: TObject);
begin
  SortGridViewDriver('INVPART',TInvForm,TInvForm.InvPartNewRecord,nil);
end;

procedure TMainForm.StaInspChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('STAINSPHISTALL',TInvInspHistForm,TInvInspHistForm.STANewRecord,Nil);
end;

procedure TMainForm.StaServChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('STASERVHISTALL',TInvServHistForm,TInvServHistForm.StaNewRecord,Nil);
end;

procedure TMainForm.StationButtonClick(Sender: TObject);
begin
  SortGridViewDriver('STATION',TInvForm,TInvForm.StationNewRecord,nil);
end;

procedure TMainForm.HazMatButtonClick(Sender: TObject);
begin
  SortGridViewDriver('CHEM',TChemform,nil,Nil);
end;

procedure TMainForm.HandButtonClick(Sender: TObject);
begin
  If CheckSecVar('HAND') then begin
     If Not FormExists('HandForm') then
      HandForm := THandForm.Create(Application);
    HandForm.Show;
  end else
    ShowMessage('You do not have security to access the hand reader manager');
end;

procedure TMainForm.HandSetupChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar := GetSetupID('HANDSET');
  HandSetForm := THandSetForm.Create(application,'HANDSET',pkVar,THandSetForm.NewRecord);
  HandSetForm.ShowModal;
  HandSetForm.Free;
end;

procedure TMainForm.handstatviewClick(Sender: TObject);
begin
  NFIRSOpenHistory1Click(SELF);
end;

procedure TMainForm.PersAccBrowseChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSACCHIST',TPersAccHistForm,TPersAccHistForm.NewRecord,nil);
end;

procedure TMainForm.InspButtonClick(Sender: TObject);
begin
  SortGridViewDriver('INSP',TInspForm,TInspForm.NewRecord,nil);
end;

procedure TMainForm.InspCalButtonClick(Sender: TObject);
begin
  If Not FormExists('InspCalForm') then
    InspCalForm := TInspCalForm.Create(Application);
  InspCalForm.Show;
end;

procedure TMainForm.InspectionCheckListHistory1Click(Sender: TObject);
begin
  SortGridViewDriver('INVSERVTYPEHISTALL',TInvServTypeHistForm,Nil,nil);
end;

procedure TMainForm.InspectionHistory1Click(Sender: TObject);
begin
  SortGridViewDriver('HYDINSPALL',THydInspectForm,THydInspectForm.NewRecord,nil);
end;

procedure TMainForm.SCBAInspSchdChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCBAINSPSCHDALL',TInvInspSchdForm,TInvInspSchdForm.SCBANewRecord,Nil);
end;

procedure TMainForm.InspLetterChoiceClick(Sender: TObject);
var InspLettQueueForm : TInspLettQueueForm;
begin
  If GetFormOfType(TInspLettQueueForm)=nil then begin
    InspLettQueueForm := TInspLettQueueForm.Create(application);
    InspLettQueueForm.Show;
  end else
    GetFormOfType(TInspLettQueueForm).Show;
end;

procedure TMainForm.DispCallChoiceClick(Sender: TObject);
var mDispCallView : TNewView;
    iColumn       : Integer;
begin
  SortGridViewDriver('DISPCALL',TDispCallForm,TDispCallForm.NewRecord,DeleteDispCallFunction);
  if bHideDateTimeCreate then begin
    mDispCallView := TNewView(GetForm('VIEWDISPCALL'));
    if mDispCallView <> nil then begin
      iColumn := mDispCallView.ViewGrid.ColumnNames.IndexOf('DATETIMECREATE');
      if iColumn >= 0 then
        mDispCallView.ViewGrid.ColWidths[iColumn]:=1;
    end;
  end;

end;

procedure TMainForm.DeleteDispCallFunction(Sender: TObject);
var iNfirs      : Integer;
    mDispCallid : String;
begin
  if DeleteNfirsPrompt then begin
    if Sender is TNewView then
      mDispCallid := TNewView(Sender).ViewGrid.GetValue('DISPCALLID');
      iNfirs := SqlTableReccount('select count(*) from nfirsmain where dispcallid = '+pkValue(mDispCallid));
      if iNfirs>0 then begin
        if BooleanMessageDlg('Deleted linked NFIRS? (there are '+inttostr(iNfirs)+')') then begin
          if not RunSql('delete from nfirsmain where dispcallid = '+pkValue(mDispCallid)) then
            ShowMessage('Note - There was an error deleting the linked NFIRS');
        end;
      end;
  end;
end;

procedure TMainForm.DispPrintChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('DISPPRINT',TDispPrintForm,TDispPrintForm.NewRecord,Nil);
end;

procedure TMainForm.DispHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('DISPHIST',TDispHistForm,TDispHistForm.NewRecord,Nil);
end;

procedure TMainForm.ViewNIImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NIIMAGEALL',TNIImageEntryForm,Nil,Nil);
end;

procedure TMainForm.ViewPersChoiceClick(Sender: TObject);
begin
  PersButtonClick(self);
end;

procedure TMainForm.NIAppAllChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NIAPPALL',TNIAppForm,TNIAppForm.NewRecord,Nil);
end;

procedure TMainForm.ViewInspImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INSPIMAGEALL',TInspImageEntryForm,Nil,Nil);
end;

procedure TMainForm.ViewInvImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INVIMAGEALL',TInvImageEntryForm,TInvImageEntryForm.NewRecord,Nil);
end;

procedure TMainForm.ViewNemsisImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NEMSISIMAGEALL',TNemsisImageEntryForm,Nil,Nil);
end;

procedure TMainForm.viewnfirsbycompanyClick(Sender: TObject);
begin
  SortGridViewDriver('NFIRSFDIDCOMP',TNFIRSForm,TNFIRSForm.NewRecord,nil);
//  SortGridViewDriver('NFIRSINVALL',TNFIRSForm,TNFIRSForm.NewRecord,nil);  
end;

procedure TMainForm.ViewNfirsImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NFIRSIMAGEALL',TNfirsImageEntryForm,Nil,Nil);
end;

procedure TMainForm.ViewPersImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSIMAGEALL',TPersImageEntryForm,Nil,Nil);
end;

procedure TMainForm.ViewPropImageChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PROPIMAGEALL',TPropImageEntryForm,Nil,Nil);
end;

procedure TMainForm.GISPlotChoiceClick(Sender: TObject);
begin 
  If Not FormExists('GisPlotForm') then
    GISPlotForm := TGISPlotForm.Create(application);
  GISPlotForm.Show;
end;

procedure TMainForm.GISPointChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('GISPOINT',TGisPointForm,TGisPointForm.NewRecord,nil); 
end;

Procedure TMainForm.UMUpdateWindowMenu( Var msg: TUmUpdateWIndowMenu );
  function FindMenuItemForForm(mForm: TForm): TMenuItem;
  var i: Integer;
  begin
    for I := 0 to AllWindows.Count-1 do begin
      if mForm is TAlpineBaseForm then begin
        if TAlpineBaseForm(mForm).FMenuItem = TMenuItem(AllWindows.Items[i]) then
          result := TMenuItem(AllWindows.Items[i]);
      end;
    end;
  end;
  function AlreadyThere(CaptionVar : String): Boolean;
  var i      : Integer;
      RetVal : Boolean;
  begin
    RetVal := false;
    for i := 0 to AllWindows.Count-1 do begin
      If CaptionVar = RemoveCharacter(TMenuItem(AllWindows.Items[i]).Caption,'&') then begin
        RetVal := true;
      end;
    end;
    AlreadyThere := RetVal;
  end;
begin
  If msg.Action = UWM_AddItem Then Begin
    If Not AlreadyThere(msg.form.caption) then begin
      msg.Result     := NewItem(msg.form.caption,0,False,True,HandleWindowMenus,0,'windowmenu'+IntToStr(WindowMenuItems.Count+1));
      msg.Result.Tag := Longint( msg.form );
      AllWindows.Add( msg.result );
      WindowMenuItems.Add( msg.result );
    end;
  end else begin
    msg.Result := FindMenuItemForForm( msg.form );
    If Assigned( msg.Result ) Then Begin
      AllWindows.Remove( msg.Result );
      WindowMenuItems.Remove( msg.result );
      msg.Result.Free;
    end;
  end;
end;

Procedure TMainForm.HandleWindowMenus( Sender: TObject );
Begin
  With Sender As TMenuItem Do
    If Tag <> 0 Then
      if TForm(Tag)<>nil then begin
        TForm(Tag).WindowState := wsNormal;
        TForm(Tag).Show;
      end;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  WindowMenuItems.Free;
end;

procedure TMainForm.RolodexButtonClick(Sender: TObject);
begin
  SortGridViewDriver('ROLODEX',TRolodexForm,TRolodexForm.NewRecord,nil);
end;

procedure TMainForm.MCIListBrowseClick(Sender: TObject);
begin
  SortGridViewDriver('MCILIST',TMCIListForm,TMCIListForm.NewRecord,Nil);
end;

procedure TMainForm.PropStatChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PROPSTAT',TPropStatForm,TPropStatForm.NewRecord,Nil);
end;

procedure TMainForm.AddAddressChoiceClick(Sender: TObject);
var mpk: String;
begin
  mpk := '-1';
  RunAlpineFormWithOwner(self,TPropForm,mpk,'PROP',TPropForm.NewRecord,False);
end;

procedure TMainForm.PropertySearch(mViewCode: String);
begin
  SortGridViewDriver(mViewCode,TPropForm,TPropForm.NewRecord,nil); 
end;

procedure TMainForm.PropHazChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('HAZMATALL',TPropHazMatForm,TPropHazMatForm.NewRecord,nil);
end;

procedure TMainForm.PropViewAddressChoiceClick(Sender: TObject);
begin
  PropertySearch('PROP');
end;

procedure TMainForm.PropViewRangeChoiceClick(Sender: TObject);
begin
  PropertySearch('PROPRANGE');
end;

procedure TMainForm.ProQATimerTimer(Sender: TObject);
  procedure CheckProQA(bFire: Boolean);
  var LocalProQAObject: TProQAObject;
  begin
    try
      LocalProQAObject      := TProQAObject.Create(GlobalAdoConnection);
      LocalProQAObject.Fire := bFire;
      ProcessProQA(LocalProQAObject);
    finally
      LocalProQAObject.Free;
    end;  
  end;
begin
  try
    ProQATimer.enabled := False;
    CheckProQA(False);
    if CheckModule('PROQAF') then
      CheckProQA(True);
  finally
    ProQATimer.Enabled := True;
  end;
end;

procedure TMainForm.PropViewIntersectionChoiceClick(Sender: TObject);
begin
  PropertySearch('PROPINT');
end;

procedure TMainForm.ImageButtonClick(Sender: TObject);
begin
  SortGridViewDriver('IMAGELIST',TImageListForm,TImageListForm.NewRecord,nil);
end;

procedure TMainForm.ImagePropChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('IMAGEPROPALL',TImagePropForm,TImagePropForm.NewRecord,Nil);
end;

procedure TMainForm.RolodexSetChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar := GetSetupID('ROLODEXSET');
  RolodexSetForm := TRolodexSetForm.Create(application,'ROLODEXSET',pkVar,TRolodexSetForm.NewRecord);
  RolodexSetForm.ShowModal;
  RolodexSetForm.Free;
end;

procedure TMainForm.ImageSetChoiceClick(Sender: TObject);
var pkVar: String;
begin
  pkVar        := GetSetupID('IMAGESET');
  ImageSetForm := TImageSetForm.Create(application,'IMAGESET',pkVar,TImageSetForm.NewRecord);
  ImageSetForm.ShowModal;
  ImageSetForm.Free;
end;

procedure TMainForm.VoteAddrChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('VOTEADDR',Nil,Nil,Nil);
end;

procedure TMainForm.VoteButtonClick(Sender: TObject);
begin
  If Not FormExists('VoteForm') then
    VoteForm := TVoteForm.Create(Application);
  VoteForm.Show;
end;

procedure TMainForm.VoteSetupChoiceClick(Sender: TObject);
var
  Pkvar: String;
begin
  pkVar := GetSetupID('VOTESET');
  VoteSetForm := TVoteSetForm.Create(application,'VOTESET',pkVar,TVoteSetForm.NewRecord);
  VoteSetForm.ShowModal;
  VoteSetForm.Free;
end;

procedure TMainForm.WaterwaysImportClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar            := GetSetupID('HOSESET');
  HoseWaterWayForm := THoseWaterWayForm.Create(application,'HOSESET',pkVar,THoseWaterWayForm.NewRecord);
  HoseWaterWayForm.ShowModal;
  HoseWaterWayForm.Free;
end;

procedure TMainForm.HoseFailSafeChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar            := GetSetupID('HOSESET');
  HoseFailSafeForm := THoseFailSafeForm.Create(application,'HOSESET',pkVar,THoseWaterWayForm.NewRecord);
  HoseFailSafeForm.ShowModal;
  HoseFailSafeForm.Free;
end;

procedure TMainForm.WmGetMinMaxInfo(var WmMsg: TWmGetMinMaxInfo);
var iHeight: Integer;
begin
  If SdiFormat then begin
    iHeight := mainpanel.top+mainpanel.height+BaseBottomPanel.height+ GetSystemMetrics(SM_CYMENU)+GetSystemMetrics(SM_CYCAPTION);
  end else
    iHeight := Screen.Height;

  with wmMsg.MinMaxInfo^ do begin
    ptMaxSize     := Point(Screen.Width, iHeight);
    ptMaxPosition := Point(0, 0);
  end;
end;

procedure TMainForm.HoseButtonClick(Sender: TObject);
begin
  SortGridViewDriver('HOSE',TInvForm,TInvForm.HoseNewRecord,nil);
end;


procedure TMainForm.MCINewAction;
begin
  If Not FormExists('MCIForm') then begin
    MCIForm := TMCIForm.Create(Application);
    MCIForm.LoadMCIHist;
    MCIForm.Show;
  end else begin
    MCIForm.LoadMCIHist;
    If SQLLookUp(FireID,'FDID','MCISET','SETFOCUS') = 'Y' then
      MCIForm.Show;
  end;
end;
 
procedure TMainForm.MCIButtonClick(Sender: TObject);
begin
  If Not FormExists('MCIForm') then begin
    MCIForm := TMCIForm.Create(Application);
    MCIForm.LoadMCIHist;
    MCIForm.Show;
  end else begin
    MCIForm.LoadMCIHist;
    MCIForm.Show;
  end;
end;

procedure TMainForm.MCIErrorChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('MCIERROR',TMciErrorForm,Nil,Nil);
end;

procedure TMainForm.MCIHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('MCIHIST',TMCIHistForm, Nil, Nil);
end;

procedure TMainForm.FingerSetupChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar         := GetSetupID('FINGERSET');
  FingerSetForm := TFingerSetForm.Create(application,'FINGERSET',pkVar,TFingerSetForm.NewRecord);
  FingerSetForm.ShowModal;
  FingerSetForm.Free;
end;

procedure TMainForm.FundSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar       := GetSetupID('FUNDSET');
  FundSetForm := TFundSetForm.Create(Self,'FUNDSET',pkVar,TFundSetForm.NewRecord);
  FundSetForm.ShowModal;
  FundSetForm.Free;
end;

procedure TMainForm.MCIServerChoiceClick(Sender: TObject);
begin
  MCIAlpineForm := TMCIAlpineForm.Create(application);
  MCIAlpineForm.ShowModal;
  MCIAlpineForm.Free;
end;

procedure TMainForm.MCISetChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar      := GetSetupID('MCISET');
  MCISetForm := TMCISetForm.Create(application,'MCISET',pkVar ,TMCISetForm.NewRecord);
  MCISetForm.ShowModal;
  MCISetForm.Free;
end;

procedure TMainForm.SCBAButtonClick(Sender: TObject);
begin
  SortGridViewDriver('SCBA',TInvForm,TInvForm.SCBANewRecord,nil);
end;

procedure TMainForm.ScbaInspHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCBAINSPHISTALL',TInvInspHistForm,TInvInspHistForm.SCBANewRecord,Nil);
end;

procedure TMainForm.ScbaServHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCBASERVHISTALL',TInvServHistForm,TInvServHistForm.SCBANewRecord,Nil);
end;

procedure TMainForm.IPAddressChoiceClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('http://www.alpinesoftware.com/ip'), nil, nil, SW_HIDE);
end;

procedure TMainForm.KioskSchdHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('FINGERSCHDHIST',TFingerSchdHistForm,TFingerSchdHistForm.NewRecord,nil);
end;

procedure TMainForm.RedDirectChoiceClick(Sender: TObject);
begin
  If Not FormExists('RedDirectForm') then
    RedDirectForm := TRedDirectForm.Create(Application, mSupportState + mSupportFDID, SQLLookup(SecIDVar,'SECID','SEC','USERNAME'));
  RedDirectForm.Show;
end;

procedure TMainForm.RedNMXChoiceClick(Sender: TObject);
begin
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'SUPP');
  SysDemoPictViewForm.Show;
end;

procedure TMainForm.ReminderImportChoiceClick(Sender: TObject);
var PkVar: String;
begin
  If ((mfireid = '52067') or (mfireid = '12345')) then begin
    PkVar                := GetSetupID('PAGEREMINDSET');
    PageRemindImportForm := TPageRemindImportForm.Create(application,'PAGEREMINDSET',PkVar,TPageRemindImportForm.NewRecord);
    PageRemindImportForm.ShowModal;
    PageRemindImportForm.Free;
  end;
end;

procedure TMainForm.UserManChoiceClick(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('http://www.alpinesoftware.com/mannmx.php'), nil, nil, SW_HIDE);
end;

procedure TMainForm.NIEVChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NIEVALL',TNIEVForm,TNIEVForm.NewRecord,Nil);
end;

procedure TMainForm.NIPersInvChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NIPERSINVALL',TNIPersInvForm,NIPersInvNewRecord,Nil);
end;

procedure TMainForm.NIPersInvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString        := ' ';
end;

procedure TMainForm.HoseSetChoiceClick(Sender: TObject);
var PkVar: String;
begin
  pkVar := GetSetupID('HOSESET');
  HoseSetForm := THoseSetForm.Create(application,'HOSESET',pkVar,THoseSetForm.NewRecord);
  HoseSetForm.ShowModal;
  HoseSetForm.Free;
end;

procedure TMainForm.HoseTestBatchChoiceClick(Sender: TObject);
begin
  HoseTestBatchForm := THoseTestBatchForm.Create(application);
  HoseTestBatchForm.ShowModal;
  HoseTestBatchForm.Free;
end;

procedure TMainForm.HoseTestChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('HOSETESTALL',THoseTestForm,THoseTestForm.NewRecord,Nil);
end;

procedure TMainForm.SCBASetChoiceClick(Sender: TObject);
Var PKVar : String;
begin
  PKVar       := GetSetupID('SCBASET');
  ScbaSetForm := TScbaSetForm.Create(application,'SCBASET',PKVar,TScbaSetForm.NewRecord);
  ScbaSetForm.ShowModal;
  ScbaSetForm.Free;
end;

procedure TMainForm.AppSetChoiceClick(Sender: TObject);
Var PKVar : String;
begin
  PKVar      := GetSetupID('APPSET');
  AppSetForm := TAppSetForm.Create(application,'APPSET',PKVar,TAppSetForm.NewRecord);
  AppSetForm.ShowModal;
  AppSetForm.Free;
end;

procedure TMainForm.ArsButtonClick(Sender: TObject);
begin
  SortGridViewDriver('NFIRSARSON',TNfirsArsonInvForm,TNfirsArsonInvForm.NewRecord,nil);
end;

procedure TMainForm.ArsonPersonChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('ARSONPERSONALL',TArsonPersonForm,TArsonPersonForm.NewRecord,nil);
end;

procedure TMainForm.ArsonSetupClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar        := GetSetupID('ARSONSET');
  ArsonSetForm := TArsonSetForm.Create(application,'ARSONSET',pkVar,TArsonSetForm.NewRecord);
  ArsonSetForm.ShowModal;
  ArsonSetForm.Free;
end;

procedure TMainForm.ReportSetupClick(Sender: TObject);
begin
  RepSetForm := TRepSetForm.Create(application);
  RepSetForm.ShowModal;
  RepSetForm.Free;
end;

procedure TMainForm.RequestUpdate1Click(Sender: TObject);
begin
  ShellExecute(Handle, 'open', pchar('http://www.alpinesoftware.com/requpdate'), nil, nil, SW_HIDE);
end;

procedure TMainForm.WOButtonClick(Sender: TObject);
begin
  SortGridViewDriver('WORKORD',TWorkOrdForm,TWorkOrdForm.NewRecord,nil);
end;

procedure TMainForm.EMSSetupChoiceClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar      := GetSetupID('EMSSET');
  EmsSetForm := TEmsSetForm.Create(application,'EMSSET',pkVar,TEmsSetForm.NewRecord);
  EmsSetForm.ShowModal;
  EmsSetForm.Free;
end;

procedure TMainForm.EvidenceList1Click(Sender: TObject);
begin
  SortGridViewDriver('ARSONEVIDENCEALL',TArsonEvidenceForm,TArsonEvidenceForm.NewRecord,nil);
end;

procedure TMainForm.FingerChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('FINGER',TFingerEntryForm,Nil,nil);
end;

procedure TMainForm.FingerAdminChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSFINGERSET',TPersAdminSetForm,Nil,nil);
end;

procedure TMainForm.FingerEnrollGriauleClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar            := GetSetupID('FINGERSET');
  try
    if FileExists('C:\rednmx\finger\bin\GrFinger.dll') then begin
      FingerEnrollGBForm := TFingerEnrollGBForm.Create(application,'FINGERSET',pkVar,TFingerSetForm.NewRecord);
      FingerEnrollGBForm.ShowModal;
      FingerEnrollGBForm.Free;
    end else
      ShowMessage('Could not initialize Finger Reader Device.  Finger device requires a license to be used on this PC.');
  except
    on e: exception do begin
      ShowMessage('Error opening Finger Enrollment Form: '+e.message);
    end;
  end;
end;

procedure TMainForm.FingerEnrollTargusClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar            := GetSetupID('FINGERSET');
  FingerEnrollTForm := TFingerEnrollTForm.Create(application,'FINGERSET',pkVar,TFingerSetForm.NewRecord);
  FingerEnrollTForm.ShowModal;
  FingerEnrollTForm.Free;
end;

procedure TMainForm.PageRemButtonClick(Sender: TObject);
begin
  If Not FormExists('MailCalendarForm') then
    MailCalendarForm := TMailCalendarForm.Create(Application);
  MailCalendarForm.Show;
end;

procedure TMainForm.AddGeneralReminderChoiceClick(Sender: TObject);
Var PageRemindID : String;
begin
  PageRemindID := '-1';
  RunAlpineForm(TPageRemindForm,PageRemindID,'PAGEREMIND',TPageRemindForm.PageRemindNewRecord);
end;

procedure TMainForm.ViewRemindChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PAGEREMIND',TPageRemindForm,TPageRemindForm.PageRemindNewRecord,Nil);
end;

procedure TMainForm.ViewRemindListChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PAGEREMINDLIST',TPageRemindListForm,TPageRemindListForm.NewRecord,Nil);
end;

procedure TMainForm.ManageCustomViews1Click(Sender: TObject);
begin
  SortGridViewDriver('SYSVIEWCUST',TSysViewForm,TSysViewForm.NewRecord,Nil);
end;

procedure TMainForm.EMSDispButtonClick(Sender: TObject);
begin
  If Not FormExists('EMSDispForm') then
    EMSDispForm := TEMSDispForm.Create(Application);
  EMSDispForm.Show;
end;

procedure TMainForm.EMSFFChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('EMSFF',TEMSFFForm,TEMSFFForm.NewRecord,nil)
end;

procedure TMainForm.EMSQAChoiceClick(Sender: TObject);
begin
  If GetFormOfType(TEMSQAForm) = nil then begin
    EMSQAForm := TEMSQAForm.Create(application);
    EMSQAForm.Show;
  end else
    GetFormOfType(TEMSQAForm).Show;
end;

procedure TMainForm.ConversionDbaseRedNMXClick(Sender: TObject);
var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvDbaseForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConversionEntryLevelClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvEntryForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConversionHighPlainsSoftware1Click(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvHPForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConversionZoll1Click(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvZOForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvFHChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvFHForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvFPChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvFPForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvFTChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvFTForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvFToolsChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvFToolsForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvIMCChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvIMCForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvPametChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvPametForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.ConvChoiceClick(Sender: TObject);
begin
  ConvForm := TConvForm.Create(application);
  ConvForm.ShowModal;
  ConvForm.Free;
end;

procedure TMainForm.ConvSQLChoiceClick(Sender: TObject);
Var mpk: String;
begin
  mpk := SqlLookup(mfireID,'FDID','ASCSET','ASCSETID');
  RunAlpineForm(TConvSqlForm,mpk,'ASCSET',NewASCSetRecord);
end;

procedure TMainForm.NemsisDiskSubmissionClick(Sender: TObject);
begin
  EMSNemsisSubForm := TEMSNemsisSubForm.Create(application);
  EMSNemsisSubForm.ShowModal;
  EMSNemsisSubForm.Free;
end;

procedure TMainForm.NemsisFFChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NEMSISFF',TNemsisFFForm,TNemsisFFForm.NewRecord,nil)
end;

procedure TMainForm.NemsisQAChoiceClick(Sender: TObject);
begin
  If GetFormOfType(TNemsisQAForm) = nil then begin
    NemsisQAForm := TNemsisQAForm.Create(application);
    NemsisQAForm.Show;
  end else
    GetFormOfType(TNemsisQAForm).Show;
end;

procedure TMainForm.NemsisQAHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NEMSISQAHISTALL',TNemsisQAHistForm,TNemsisQAHistForm.NewRecord,nil)
end;

procedure TMainForm.NassauExportChoiceClick(Sender: TObject);
begin
  NassauNemsisExportForm := TNassauNemsisExportForm.Create(application);
  NassauNemsisExportForm.ShowModal;
  NassauNemsisExportForm.Free;
end;

procedure TMainForm.Nem3ButtonClick(Sender: TObject);
begin
  SortGridViewDriver('NEM3PCR',TNem3EMSForm,TNem3EMSForm.NewRecord,nil)
end;

procedure TMainForm.Nem3ExportChoiceClick(Sender: TObject);
begin
  EMSNemsis3SubForm := TEMSNemsis3SubForm.Create(application);
  EMSNemsis3SubForm.ShowModal;
  EMSNemsis3SubForm.Free;
end;

procedure TMainForm.NemsisButtonClick(Sender: TObject);
begin
  If (mFireID = '77000') then
    SortGridViewDriver('EMS',TNemsisEMSForm,TNemsisEMSForm.NewRecord,nil)
  else
    SortGridViewDriver('NEMSIS',TNemsisEMSForm,TNemsisEMSForm.NewRecord,nil)
end;

procedure TMainForm.NEMSISSetupChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('NEMSISSET',TNEMSISSetForm,TNEMSISSetForm.NewRecord,nil)
end;

procedure TMainForm.NemsisSetupClick(Sender: TObject);
Var PkVar: String;
begin
  PkVar         := GetSetupID('NEMSISSET');
  NemsisSetForm := TNemsisSetForm.Create(application,'NEMSISSET',pkVar,TNemsisSetForm.NewRecord);
  NemsisSetForm.ShowModal;
  NemsisSetForm.Free;
end;

procedure TMainForm.NewASCSetRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('FDID').AsString := mFireID;
end;

procedure TMainForm.ResetSystem(HaltVar : Boolean);
Var ShowToolBar : Boolean;
begin
  StartLabel.Caption    := FormatDateTime(DisplayDateFormat + '  HH:MM',Now);
  SecIDLabel.Caption    := 'Not logged on';
  AlpineLogin           := False;
  SecIDVar              := '0';
  GlobalPersID          := '0';
  FdidProfileID         := '';
  SecTimeOut            := 0;
  toolbartab.TabVisible := False;
  GlobalIsSysadmin := False;
  
  try
    Open_Query('SYSSET',false,'SELECT SECID FROM SYSSET WHERE FDID = ' + AddExpr(mFireID));
    SecIDVar := GetField('SYSSET','SECID').AsString;
  finally
    CloseApollo('SYSSET');
  end;

  If GetFormOfType(TToolBarForm) <> nil then
    GlobalShowToolBar(Customtoolbar,sqllookup(SecIDVar,'secid','sec','TOOLSHOW')='Y');

  If (SecIDVar = '') then begin
    If HaltVar then
      Halt
  end else begin
    StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:MM',Now);
    SecIDLabel.Caption := GetSecIDLabel;
  end;
  SetSecVar(ShowToolBar,False);
  SetMenuSecurity;
end;

procedure TMainForm.RespStatChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSRESPSTAT',TPersRespStatForm,TPersRespStatForm.NewRecord,Nil);
end;

function TMainForm.GetSecIDLabel: String;
begin
  result := CommonGetSecIDLabel(GlobalAdoConnection);
end;


procedure TMainForm.ClockFieldDblClick(Sender: TObject);
Var Nem3PCRID : String;
begin
  If (mFireID = '12345') then begin
    Nem3PCRID := '1';
    RunAlpineForm(TNem3EmsForm,Nem3PCRID,'NEM3PCR',TNem3EMSForm.NewRecord);
  end;
end;

procedure TMainForm.ClockTimerTimer(Sender: TObject);
var i          : Integer;
    mForm      : TForm;
    TimeOut    : Real;
    pers       : TApolloData;
    iHeartBeat : Integer;
begin
  if (mfireid = '30053') or (mfireid='44003') then
    iHeartbeat := 5
  else
    iHeartBeat := 30;

  If (SecTimeOut > 0) and Not (bInTimeOutState) then begin
    If ((Now - FLastActive)*24*60) > SecTimeOut then begin
      if (mfireid = '30053') and (SecIDVar = '50') then begin
        Close;
      end else
        ResetSystem(true);
      bInTimeOutState := True;
    end;
  end;
  ClockField.Caption := GetTimeAsString + ' ';
  if TimeDifferenceInSeconds(Now,mLastHeartBeat)>iHeartBeat then begin
    mLastHeartBeat := now;
    try
      pers := open_query('SELECT PERSCODE FROM PERS WHERE PERSID = 1');
    finally
      pers.free;
    end;
  end;
  if MemoryWrite>0 then begin
    if GetMinuteDiff(Now,LastmemoryWrite)>MemoryWrite then begin
      LastmemoryWrite := Now;
      WriteMemoryLog();
    end;
  end;

  If (SecTimeOut > 0) then begin
      TimeOut := SecTimeOut - (Now - FLastActive)*24*60;
    If (TimeOut > 1)  then
      StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:NN:SS',SysStartTime) + '.  Time out in ' + alltrim(FormatFloat('##0',TimeOut)) + ' minutes'
    else
      StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:NN:SS',SysStartTime) + '.  Time out in ' + alltrim(FormatFloat('##0',60*TimeOut)) + ' seconds';
  end else
    StartLabel.Caption := FormatDateTime(DisplayDateFormat + '  HH:NN:SS',SysStartTime);
  WriteLogFile;
end;

procedure TMainForm.QAQueryChoiceClick(Sender: TObject);
begin
  If GetFormOfType(TEMSQAQueryForm) = nil then begin
    EMSQAQueryForm := TEMSQAQueryForm.Create(application);
    EMSQAQueryForm.Show;
  end else
    GetFormOfType(TEMSQAQueryForm).Show;
end;

procedure TMainForm.QueueButtonClick(Sender: TObject);
var QueueType    : String;
    QueueForm    : TQueueForm;
    QueueIncForm : TQueueIncForm;

begin
  QueueType := SQLLookUp(mFireID,'FDID','QUEUESET','QUEUETYPE');
  If QueueType = 'INC' then begin
    If GetFormOfType(TQueueIncForm) = nil then begin
      QueueIncForm := TQueueIncForm.Create(application);
      QueueIncForm.Show;
    end else
      GetFormOfType(TQueueIncForm).Show;
      
  end else if QueueType = 'EMS' then begin
    If GetFormOfType(TQueueEMSForm) = nil then begin
      QueueEMSForm := TQueueEMSForm.Create(application);
      QueueEMSForm.Show;
    end else
      GetFormOfType(TQueueEMSForm).Show;

  end else if QueueType = 'INCNEMSIS' then begin
    If GetFormOfType(TQueueIncNemsisForm) = nil then begin
      QueueIncNemsisForm := TQueueIncNemsisForm.Create(application);
      QueueIncNemsisForm.Show;
    end else
      GetFormOfType(TQueueIncNemsisForm).Show;
      
  end else if QueueType = 'INCREVIEW' then begin
    If GetFormOfType(TQueueIncReviewForm) = nil then begin
      QueueIncReviewForm := TQueueIncReviewForm.Create(application);
      QueueIncReviewForm.Show;
    end else
      GetFormOfType(TQueueIncReviewForm).Show;

  end else begin
    If GetFormOfType(TQueueForm) = nil then begin
      QueueForm := TQueueForm.Create(application);
      QueueForm.Show;
    end else
      GetFormOfType(TQueueForm).Show;
  end;                                     
end;

procedure TMainForm.MobileEyesChoiceClick(Sender: TObject);
begin
  MobileEyesForm := TMobileEyesForm.Create(application);
  MobileEyesForm.ShowModal;
  MobileEyesForm.Free;
end;

procedure TMainForm.MobileMessageHistoryClick(Sender: TObject);
begin
  SortGridViewDriver('DISPMOBMESSAGE',TDispMobMessageForm, Nil, Nil);
end;

procedure TMainForm.MobSetupClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar := GetSetupID('MOBSET');
  MobSetForm := TMobSetForm.Create(application,'MOBSET',pkVar,TMobSetForm.NewRecord);
  MobSetForm.ShowModal;
  MobSetForm.Free;
end;

procedure TMainForm.CallIDButtonClick(Sender: TObject);
begin
  SortGridViewDriver('E911',TE911Form, TE911Form.NewRecord, Nil);
end;

procedure TMainForm.E911SetupClick(Sender: TObject);
var Pkvar: String;
begin
  pkVar       := GetSetupID('E911SET');
  E911SetForm := TE911SetForm.Create(application,'E911SET',pkVar,TE911SetForm.NewRecord);
  E911SetForm.ShowModal;
  E911SetForm.Free;
end;

procedure TMainForm.WorkOrdChoiceClick(Sender: TObject);
Var PKVar : String;
begin
  pkVar          := GetSetupID('WORKORDSET');
  WorkOrdSetForm := TWorkOrdSetForm.Create(application,'WORKORDSET',PKVar,TWorkOrdSetForm.NewRecord);
  WorkOrdSetForm.ShowModal;
  WorkOrdSetForm.Free;
end;

procedure TMainForm.HydSetChoiceClick(Sender: TObject);
Var PKVar : String;
begin
  pkVar      := GetSetupID('HYDSET');
  HydSetForm := THydSetForm.Create(application,'HYDSET',PKVar,THydSetForm.NewRecord);
  HydSetForm.ShowModal;
  HydSetForm.Free;
end;

procedure TMainForm.PermitButtonClick(Sender: TObject);
begin
  SortGridViewDriver('PERMIT',TPermitForm,TPermitForm.NewRecord,nil);
end;

procedure TMainForm.MCITimerTimer(Sender: TObject);
Var TempMCIHistID : Integer;
begin
  MCITimer.Enabled := false;
  TempMCIHistID    := GetMaxPK(GlobalAdoConnection,GlobalAdoConnection.TableType,'MCIHIST');
  If TempMCIHistID > MCIHistID then begin
    MCIHistID := TempMCIHistID;
    MCINewAction;
//  MCIButtonClick(self);
  end;
  MCITimer.Enabled := true;
end;
 
procedure TMainForm.MCIUnavailableMenuClick(Sender: TObject);
begin
  SortGridViewDriver('MCIUNAVAILABLE',TMCIUnavailableForm,TMCIUnavailableForm.NewRecord,Nil);
end;

procedure TMainForm.Nem3SetChoiceClick(Sender: TObject);
Var Nem3SetID : String;
begin
  If AlpineLogin then begin
    SortGridViewDriver('NEM3SET',TNem3SetForm,TNem3SetForm.NewRecord,Nil)
  end else if MultiFdid then begin
    If (secFdid = '') then begin
      SortGridViewDriver('NEM3SET',TNem3SetForm,TNem3SetForm.NewRecord,Nil)
    end else begin
      Nem3SetID   := SQLLookUp(secFdid,'FDID','NEM3SET','NEM3SETID');
      Nem3SetForm := TNem3SetForm.Create(application,'NEM3SET',Nem3SetID,TNem3SetForm.NewRecord);
      Nem3SetForm.ShowModal;
      Nem3SetForm.Free;
    end;
  end else begin
    Nem3SetID   := GetSetupID('NEM3SET');
    Nem3SetForm := TNem3SetForm.Create(application,'NEM3SET',Nem3SetID,TNem3SetForm.NewRecord);
    Nem3SetForm.ShowModal;
    Nem3SetForm.Free;
  end;
end;

procedure TMainForm.AppServHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('APPSERVHISTALL',TInvServHistForm,TInvServHistForm.AppNewRecord,Nil);
end;

procedure TMainForm.AppServSchdChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('APPSERVSCHDALL',TInvServSchdForm,TInvServSchdForm.AppNewRecord,Nil);
end;

procedure TMainForm.AppInspSchdChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('APPINSPSCHDALL',TInvInspSchdForm,TInvInspSchdForm.AppNewRecord,Nil);
end;

procedure TMainForm.AppInspHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('APPINSPHISTALL',TInvInspHistForm,TInvInspHistForm.AppNewRecord,Nil);
end;

procedure TMainForm.PropStatViewChoiceClick(Sender: TObject);
var PropStatViewForm: TPropStatViewForm;
begin
  If GetFormOfType(TPropStatViewForm) = nil then begin
    PropStatViewForm := TPropStatViewForm.Create(application);
    PropStatViewForm.Show;
  end else
    GetFormOfType(TPropStatViewForm).Show;
end;

procedure TMainForm.PropSyncChoiceClick(Sender: TObject);
begin
  PropSyncForm := TPropSyncForm.Create(application);
  PropSyncForm.ShowModal;
  PropSyncForm.Free;
end;

procedure TMainForm.QueueSetupClick(Sender: TObject);
var Pkvar: String;
begin
  PkVar        := GetSetupID('QUEUESET');
  QueueSetForm := TQueueSetForm.Create(application,'QUEUESET',PkVar,TQueueSetForm.NewRecord);
  QueueSetForm.ShowModal;
  QueueSetForm.Free;
end;

procedure TMainForm.PersInvQualChoiceClick(Sender: TObject);
var PersInvQualForm : TPersInvQualForm;
begin
  If GetFormOfType(TPersInvQualForm) = nil then begin
    PersInvQualForm := TPersInvQualForm.Create(application);
    PersInvQualForm.Show;
  end else
    GetFormOfType(TPersInvQualForm).Show;
end;

procedure TMainForm.PersMedHistBatchChoiceClick(Sender: TObject);
begin
  PersMedHistBatchForm := TPersMedHistBatchForm.Create(application);
  PersMedHistBatchForm.ShowModal;
  PersMedHistBatchForm.Free;
end;

procedure TMainForm.PersNIEVAttChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSNIEVATTALL',TPersNIEVAttForm,NIPersInvNewRecord,nil);
end;

procedure TMainForm.PersonsInvolved1Click(Sender: TObject);
begin
  SortGridViewDriver('NFIRSINVALL',TNFIRSForm,TNFIRSForm.NewRecord,nil);
end;

procedure TMainForm.PersRankChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSRANKHISTALL',TPersRankHistForm,TPersRankHistForm.NewRecord,nil);
end;

procedure TMainForm.PersCommHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSCOMMHISTALL',TPersCommHistForm,TPersCommHistForm.NewRecord,nil);
end;

procedure TMainForm.AliasAddressChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('ALIASPROPALL',Nil,Nil,nil);
end;

procedure TMainForm.DownloadChoiceClick(Sender: TObject);
begin
  FTPForm := TFTPForm.Create(application);
  FTPForm.ShowModal;
  FTPForm.Free;
end;

class procedure TMainfORM.RetrieveFile(mSourceDir,mDestDir,mFileName: String;mCopyFileRegardless: Boolean);
var mSourceFile    : String;
    mFileAgeDiffer : Boolean;
begin
  mSourceFile := mSourceDir+'\'+mFileName;

  If AnsiCompareFileName(mSourceDir,mDestDir) = 0 then
    exit;

  mFileAgeDiffer := False;
  If FileExists(mDestDir+'\'+mFileName) and FileExists(mSourceDir+'\'+mFileName) then
    mFileAgeDiffer := (FileAge(mDestDir+'\'+mFileName) <> FileAge(mSourceDir+'\'+mFileName));

  If (not FileExists(mDestDir+'\'+mFileName)) or mCopyFileRegardless or mFileAgeDiffer then begin
    try
      if FileExists(mSourceDir+'\'+mFileName) Then
        CopyFileProgress(mSourceDir+'\'+mFileName,mDestDir+'\'+mFileName);
    except
    end;
  end;
end;

procedure TMainForm.EMSDiskSubmissionClick(Sender: TObject);
Var DiskCode : String;
begin
  DiskCode := SQLLookUp(FireID,'FDID','EMSSET','DISKCODE');
  If DiskCode = 'VA' then begin
    EMSVASubForm := TEMSVASubForm.Create(application);
    EMSVASubForm.ShowModal;
    EMSVASubForm.Free;
  end else if DiskCode = 'NY' then begin
    EMSNYSubForm := TEMSNYSubForm.Create(application);
    EMSNYSubForm.ShowModal;
    EMSNYSubForm.Free;
  end else if DiskCode = 'NEMSIS' then begin
    EMSNemsisSubForm := TEMSNemsisSubForm.Create(application);
    EMSNemsisSubForm.ShowModal;
    EMSNemsisSubForm.Free;
  end;       
end;

procedure TMainForm.FastSupportChoiceClick(Sender: TObject);
begin
  If not BooleanMessageDlg('Only use this option when requested by an Alpine representative for remote support dial in.  Proceed?') then
    exit;
  ShellExecute(application.Handle, 'open', pchar('https://rednmx.screenconnect.com/'), nil, nil, SW_HIDE);
end;

procedure TMainForm.FingerButtonClick(Sender: TObject);
var mFingerForm: TFingerForm;
begin
  If SqlTableRecCount('SELECT COUNT(*) FROM COMPUTER WHERE FINGER = ' + AddExpr('Y')) > 0 then begin
    mFingerForm := TFingerForm(GetFormOfType(TFingerForm));
    if mFingerForm = nil then
      mFingerForm := TFingerForm.Create(Application);
    mFingerForm.Show;
  end else
    ShowMessage('There are no Kiosks defined');
end;

procedure TMainForm.FingerHistoryChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('PERSACCHIST',TPersAccHistForm,TPersAccHistForm.NewRecord,nil);
end;

procedure TMainForm.PictometrySetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar       := GetSetupID('PICTSET');
  PictSetForm := TPictSetForm.Create(Self,'PICTSET',pkVar,TPictSetForm.NewRecord);
  PictSetForm.ShowModal;
  PictSetForm.Free;
end;

procedure TMainForm.PictureButtonClick(Sender: TObject);
begin
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(application,'');
  SysDemoPictViewForm.Show;
end;

procedure TMainForm.GISIncChoiceClick(Sender: TObject);
begin
  CreateGISIncForm;
end;

procedure TMainForm.PictButtonClick(Sender: TObject);
Var StartLat  : Real;
    StartLong : Real;
    f         : TPictForm;
begin
  f := TPictForm(GetFormOfType(TPictForm));
  If F <> Nil then
    F.Show
  else begin
    Open_Query('PICTSET',false,'SELECT STARTLAT, STARTLONG FROM PICTSET WHERE FDID = ' + AddExpr(mFireID));
    StartLat  := AnyStrToFloat(GetField('PICTSET','STARTLAT').AsString);
    StartLong := AnyStrToFloat(GetField('PICTSET','STARTLONG').AsString);
    CloseApollo('PICTSET');
    DisplayPictometry(StartLat,StartLong);
  end;
end;

procedure TMainForm.FundButtonClick(Sender: TObject);
var FundDonateForm : TFundDonateForm;
begin
  If GetFormOfType(TFundDonateForm) = nil then begin
    FundDonateForm := TFundDonateForm.Create(application);
    FundDonateForm.Show;
  end else
    GetFormOfType(TFundDonateForm).Show;
end;

procedure TMainForm.FundCheckChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('FUNDCHECK',TFundCheckForm,TFundCheckForm.NewRecord,Nil);
end;

procedure TMainForm.FundDriveAddressChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('FUNDADDR',TFundAddrForm,TFundAddrForm.NewRecord,nil);
end;

procedure TMainForm.FundEventChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('FUNDEVENT',TFundEventForm,TFundEventForm.NewRecord,Nil);
end;

procedure TMainForm.InvAllChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INVALL',TInvForm,TInvForm.GenNewRecord,nil);
end;

procedure TMainForm.InvAssSignUpChoiceClick(Sender: TObject);
begin
  InvAssSignUpForm := TInvAssSignUpForm.Create(application);
  InvAssSignUpForm.ShowModal;
  InvAssSignUpForm.Free;
end;

procedure TMainForm.LogOutButtonClick(Sender: TObject);
begin
  ResetSystem(false);
  SetAgencycaption;
end;

procedure TMainForm.InspSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar       := GetSetupID('INSPSET');
  InspSetForm := TInspSetForm.Create(Self,'INSPSET',pkVar,TInspSetForm.NewRecord);
  InspSetForm.ShowModal;
  InspSetForm.Free;
end;

procedure TMainForm.InspTickChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('INSPTICKHIST',TInspTickForm,TInspTickForm.NewRecord,nil);
end;

procedure TMainForm.VioCodeChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('VIOCODE',TVioCodeEditForm,TVioCodeEditForm.NewRecord,nil);
end;

procedure TMainForm.CollabornationImportClick(Sender: TObject);
begin
  CollabornationForm := TCollabornationForm.Create(application);
  CollabornationForm.ShowModal;
  CollabornationForm.Free;
end;

procedure TMainForm.ComplaintButtonClick(Sender: TObject);
begin
  SortGridViewDriver('COMPLAINT',TComplaintForm,TComplaintForm.NewRecord,nil);
end;

procedure TMainForm.ComplaintSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar       := GetSetupID('COMPLAINTSET');
  ComplaintSetForm := TComplaintSetForm.Create(Self,'COMPLAINTSET',pkVar,TComplaintSetForm.NewRecord);
  ComplaintSetForm.ShowModal;
  ComplaintSetForm.Free;
end;

procedure TMainForm.PermitSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar         := GetSetupID('PERMITSET');
  PermitSetForm := TPermitSetForm.Create(Self,'PERMITSET',pkVar,TPermitSetForm.NewRecord);
  PermitSetForm.ShowModal;
  PermitSetForm.Free;
end;

procedure TMainForm.VioButtonClick(Sender: TObject);
begin
  SortGridViewDriver('VIO',TVioform,TVioForm.NewRecord,nil);
end;

procedure TMainForm.InspAddrButtonClick(Sender: TObject);
begin
  SortGridViewDriver('INSPPROP',TPropForm,TPropForm.NewRecord,nil);
end;

procedure TMainForm.InspQueueButtonClick(Sender: TObject);
var InspQueueForm : TInspQueueForm;
begin
  If GetFormOfType(TInspQueueForm)=nil then begin
    InspQueueForm := TInspQueueForm.Create(application);
    InspQueueForm.Show;
  end else
    GetFormOfType(TInspQueueForm).Show;
end;

procedure TMainForm.InspSchdChoiceClick(Sender: TObject);
var InspSchdForm : TInspSchdForm;
begin             
  If GetFormOfType(TInspSchdForm)=nil then begin
    InspSchdForm := TInspSchdForm.Create(application);
    InspSchdForm.Show;
  end else
    GetFormOfType(TInspSchdForm).Show;
end;

procedure TMainForm.HydWorkOrdChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('HYDWORKORD',TWorkOrdForm,TWorkOrdForm.NewRecord,nil);
end;

procedure TMainForm.DLSetupChoiceClick(Sender: TObject);
var PkVar: String;
begin
  PkVar       := GetSetupID('DLSETUP');
  DLSetUpForm := TDLSetUpForm.Create(Self,'DLSETUP',pkVar,TDLSetUpForm.NewRecord);
  DLSetUpForm.ShowModal;
  DLSetUpForm.Free;
end;

procedure TMainForm.SchdHistChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCHDHIST',TSchdHistForm,TSchdHistForm.NewRecord,nil);
end;

procedure TMainForm.SchdPayPeriodChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('SCHDPAYPERIOD',TSchdPayPeriodForm,TSchdPayPeriodForm.NewRecord,Nil);
end;

procedure TMainForm.CADIntDispCallChoiceClick(Sender: TObject);
begin
  DispCallChoiceClick(self);
end;

procedure TMainForm.CalendarButtonClick(Sender: TObject);
begin
  If Not FormExists('CalendarNMXForm') then
    CalendarNMXForm := TCalendarNMXForm.Create(Application);
  CalendarNMXForm.Show;
end;

procedure TMainForm.NFIRSOpenHistory1Click(Sender: TObject);
begin
  SortGridViewDriver('HANDSTATNFIRS',THandStatForm,THandStatForm.NewRecord,Nil);
end;

procedure TMainForm.NFORSExportChoiceClick(Sender: TObject);
begin
  NforsExportForm := TNforsExportForm.Create(self);
  NforsExportForm.ShowModal;
  NforsExportForm.Free;
end;

procedure TMainForm.ProcessConnectionBackup(mdb: TAlpineAdoConnection);
begin
end;

procedure TMainForm.SetIconsToInvisible;
begin
  MainForm.PageButton.Visible                := False;
  MainForm.PagingChoice.Visible              := False;
  MainForm.DispButton.Visible                := False;
  MainForm.DispButton.DropDownButton         := False;
  MainForm.PersButton.Visible                := False;
  MainForm.PersButton.DropDownButton         := False;
  MainForm.NIButton.Visible                  := False;
  MainForm.NIButton.DropDownButton           := False;
  MainForm.CalendarButton.Visible            := False;
  MainForm.HydButton.Visible                 := False;
  MainForm.HydSetChoice.Visible              := False;
  MainForm.GISHydrantPlotting.Visible        := False;
  MainForm.HydWorkOrdChoice.Visible          := False;
  MainForm.EMSButton.Visible                 := False;
  MainForm.NemsisSetupChoice.Visible         := False;
  MainForm.QAQueryChoice.Visible             := False;
  MainForm.NFIRSButton.DropDownButton        := False;
  MainForm.NFIRSButton.Visible               := False;
  MainForm.SecMenu.Visible                   := False;
  MainForm.SecRecAudChoice.Visible           := False;
  MainForm.SchdButton.Visible                := False;
  MainForm.SchdButton.DropDownButton         := False;
  MainForm.InvButton.Visible                 := False;
  MainForm.InvButton.DropDownButton          := False;
  MainForm.StationButton.Visible             := False;
  MainForm.WOButton.Visible                  := False;
  MainForm.WOButton.DropDownButton           := False;
  MainForm.AppButton.Visible                 := False;
  MainForm.AppButton.DropDownButton          := False;
  MainForm.AttendPersIDChoice.Visible        := False;
  MainForm.HoseButton.Visible                := False;
  MainForm.ScbaButton.Visible                := False;
  MainForm.ScbaButton.DropDownButton         := False;
  MainForm.PictButton.Visible                := False;
  MainForm.GISButton.Visible                 := False;
  MainForm.GISButton.DropDownButton          := False;
  MainForm.PropButton.Visible                := False;
  MainForm.FundButton.Visible                := False;
  MainForm.VoteButton.Visible                := False;
  MainForm.MCIButton.Visible                 := False;
  MainForm.MCIButton.DropDownButton          := False;
  MainForm.InspButton.Visible                := False;
  MainForm.InspCalButton.Visible             := False;
  MainForm.ArsButton.Visible                 := False;
  MainForm.KocInvButton.Visible              := False;
  MainForm.PermitButton.Visible              := False;
  MainForm.ComplaintButton.Visible           := False;
  MainForm.VioButton.Visible                 := False;
  MainForm.InspAddrButton.Visible            := False;
  MainForm.DLButton.Visible                  := False;
  MainForm.QueueButton.Visible               := False;
  MainForm.MobSetup.Visible                  := False;
  MainForm.MobileMessageHistory.Visible      := False;
  MainForm.InvBarButton.Visible              := False;
  MainForm.HazMatButton.Visible              := False;
  MainForm.TBButton.Visible                  := False;
  MainForm.HandButton.Visible                := False;
  MainForm.HandButton.DropDownButton         := False;
  MainForm.FingerButton.Visible              := False;
  MainForm.VoteButton.Visible                := False;
  MainForm.ImageButton.Visible               := False;
  MainForm.DLButton.Visible                  := False;
  MainForm.InvServHistButton.Visible         := False;
  MainForm.InvServHistButton.DropDownButton  := False;
end;

procedure TMainForm.SaveSplashScreen;
var FileStream     : TFileStream;
    FileName       : String;
begin
  Open_Query('SYSSET',false,'SELECT SPLASHSCREEN FROM SYSSET WHERE FDID = ' + AddExpr(mFireID));
  If A('SYSSET').RecordsExist and Not (GetField('SYSSET','SPLASHSCREEN').AsString = '') then begin
    FileName   := ExtractFileDir(ParamStr(0)) + '\rednmx.png';
    FileStream := TFileStream.Create(Filename,fmCreate);
    TBlobField(A('SYSSET').FieldByName('SPLASHSCREEN')).SaveToStream(FileStream);
    FileStream.Free;
  end;
  CloseApollo('SYSSET');
end;

initialization
  TerminateOnDatabaseLoss := True;

end.      
