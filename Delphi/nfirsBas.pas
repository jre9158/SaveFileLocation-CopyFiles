unit nfirsBas;

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
  OvcBase,
  AlpineMemo,
  StdCtrls,
  AlpineDateTime,
  Blink,
  ExtCtrls,
  Buttons,
  db,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  MySBox,
  AdvPanel,
  AlpinePanel,
  AdvGlowButton,
  NormalBase,
  AlpineGlowButton,
  AlpineTMSStringGrid,
  Nfirs,
  RPanel,
  AlpineLookGrid,
  AlpineCheck,
  HtmlBtns,
  StrUtils,
  AdvGroupBox,
  AppLst,
  AlpineBlockBrowse, QuickRpt, QRCtrls;

type
  TNfirsBasicForm = class(TBaseNfirsForm)
    NfirsMainScrollbox: TMyScrollBox;
    OvcController1: TOvcController;
    BPanel: TAlpinePanel;
    APanel: TAlpinePanel;
    Label5: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    FDIDField: TAlpineLookup;
    DateTimeAlarmHeadField: TAlpineDateTime;
    IncNumField: TAlpineEdit;
    ExpNumField: TAlpineEdit;
    IncTypeLabel: TLabel;
    pStrNumLabel: TLabel;
    StreetPreLabel: TLabel;
    Label15: TLabel;
    pcensusLabel: TLabel;
    pRoomAptLabel: TLabel;
    pCityLabel: TLabel;
    pStateLabel: TLabel;
    pZipLabel: TLabel;
    StreetTypeLabel: TLabel;
    StreetSuffLabel: TLabel;
    LocTypeField: TAlpineLookup;
    StreetPreField: TAlpineLookup;
    RoomAptField: TAlpineEdit;
    cityField: TAlpineLookup;
    StateField: TAlpineLookup;
    zipfield: TAlpineEdit;
    StreetTypeField: TAlpineLookup;
    StreetSuffField: TAlpineLookup;
    CrossDirField: TAlpineLookup;
    StreetField: TAlpineLookup;
    CrossDirLabel: TLabel;
    PropButton: TAlpineGlowButton;
    K1Panel: TAlpinePanel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label508: TLabel;
    Label509: TLabel;
    Label510: TLabel;
    Label511: TLabel;
    Label512: TLabel;
    Label513: TLabel;
    Label514: TLabel;
    Label515: TLabel;
    Label516: TLabel;
    Label517: TLabel;
    Label518: TLabel;
    peTypeLabel: TLabel;
    peSuffLabel: TLabel;
    Label519: TLabel;
    BusNameField: TAlpineEdit;
    PHONEField: TAlpineEdit;
    NamePreField: TAlpineLookup;
    PFIRSTNAMEFIELD: TAlpineEdit;
    MIField: TAlpineEdit;
    NameSufField: TAlpineLookup;
    peStreetField: TAlpineLookup;
    pePreField: TAlpineLookup;
    PeRoomAptField: TAlpineEdit;
    peStateField: TAlpineLookup;
    pezipfield: TAlpineEdit;
    peTypeField: TAlpineLookup;
    peSuffField: TAlpineLookup;
    PEPOBOXField: TAlpineEdit;
    pLastNameField: TAlpineEdit;
    K2Panel: TAlpinePanel;
    Label524: TLabel;
    Label525: TLabel;
    Label526: TLabel;
    Label527: TLabel;
    Label528: TLabel;
    Label529: TLabel;
    Label530: TLabel;
    Label531: TLabel;
    oStreetPreFieldlABEL: TLabel;
    Label532: TLabel;
    Label533: TLabel;
    Label534: TLabel;
    Label535: TLabel;
    Label536: TLabel;
    oTypeFieldLabel: TLabel;
    oStreetSufLabel: TLabel;
    Label537: TLabel;
    OBusinessField: TAlpineEdit;
    OPHONEField: TAlpineEdit;
    oPreField: TAlpineLookup;
    OFIRSTNAMEFIELD: TAlpineEdit;
    OLastNameField: TAlpineEdit;
    OMIField: TAlpineEdit;
    OStrNumField: TAlpineEdit;
    oStreetField: TAlpineLookup;
    oStreetPreField: TAlpineLookup;
    OROOMAPTField: TAlpineEdit;
    OStateField: TAlpineLookup;
    OZipField: TAlpineEdit;
    oTypeField: TAlpineLookup;
    OPOBOXField: TAlpineEdit;
    oStreetSufField: TAlpineLookup;
    OSuffField: TAlpineLookup;
    LPanel: TAlpinePanel;
    NarrField: TAlpineMemo;
    MPanel: TAlpinePanel;
    Label543: TLabel;
    Label545: TLabel;
    Label546: TLabel;
    Label547: TLabel;
    Label548: TLabel;
    Label549: TLabel;
    Label550: TLabel;
    OffAssLabel: TLabel;
    MemAssLabel: TLabel;
    Label553: TLabel;
    Label554: TLabel;
    OffDateField: TAlpineDateTime;
    MemDateField: TAlpineDateTime;
    MemReportCode: TAlpineLookup;
    MemOfficeCode: TAlpineLookup;
    OffRankField: TAlpineLookup;
    MemRankField: TAlpineLookup;
    OffAssField: TAlpineLookup;
    MemAssField: TAlpineLookup;
    MRFIRSTField: TAlpineEdit;
    MRMIField: TAlpineEdit;
    RPanel: TAlpinePanel;
    ALabel: TLabel;
    BLabel: TLabel;
    LocationLabel: TLabel;
    Panel1: TPanel;
    E1Panel: TAlpinePanel;
    Label34: TLabel;
    arrivallabel: TLabel;
    Label45: TLabel;
    DateTimeInLabel: TLabel;
    timeoutlabel: TLabel;
    DateTimeAlarmField: TAlpineDateTime;
    DateTimeOutField: TAlpineDateTime;
    DateTimeArrField: TAlpineDateTime;
    DateTimeContField: TAlpineDateTime;
    DateTimeInField: TAlpineDateTime;
    E1Label: TLabel;
    Label24: TLabel;
    Panel2: TPanel;
    CPanel: TAlpinePanel;
    InctypeDesc: TLabel;
    CLabel: TLabel;
    Label18: TLabel;
    IncTypeField: TAlpineLookup;
    FirOrWildField: TAlpineCheckBox;
    IncidentTemplate: TAlpineGlowButton;
    DPanel: TAlpinePanel;
    NfirsMaidLabel: TLabel;
    mDeptLabel: TLabel;
    Label6: TLabel;
    MutStateLabel: TLabel;
    MutIncNumLabel: TLabel;
    DLabel: TLabel;
    mDeptField: TAlpineLookup;
    MutIncNumField: TAlpineEdit;
    MaidField: TAlpineLookup;
    Label9: TLabel;
    Panel3: TPanel;
    E2Panel: TAlpinePanel;
    ShiftLabel: TLabel;
    AlarmNumLabel: TLabel;
    DistrictLabel: TLabel;
    DispBoxIDLabel: TLabel;
    E2Label: TLabel;
    Label25: TLabel;
    AlarmNumField: TAlpineEdit;
    SchdShiftNameIDField: TAlpineLookup;
    N5DistrictIDField: TAlpineLookup;
    DispBoxIDField: TAlpineLookup;
    E3Panel: TAlpinePanel;
    E3Label: TLabel;
    Label31: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel4: TPanel;
    FPanel: TAlpinePanel;
    Label53: TLabel;
    Label54: TLabel;
    Label4: TLabel;
    TypeActField: TAlpineLookup;
    Label52: TLabel;
    Action2Field: TAlpineLookup;
    Action3Field: TAlpineLookup;
    FLabel: TLabel;
    Label29: TLabel;
    G1Panel: TAlpinePanel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    ApparatusLabel: TLabel;
    PersonnelLabel: TLabel;
    Label172: TLabel;
    Label3: TLabel;
    AppSuppField: TAlpineEdit;
    AppEMSField: TAlpineEdit;
    AppOthField: TAlpineEdit;
    PersSuppField: TAlpineEdit;
    PersEMSField: TAlpineEdit;
    PersOthField: TAlpineEdit;
    PersTotalField: TAlpineEdit;
    PersMiscField: TAlpineEdit;
    G2Panel: TAlpinePanel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    losspropfield: TAlpineEdit;
    valpropfield: TAlpineEdit;
    valcontfield: TAlpineEdit;
    losscontfield: TAlpineEdit;
    proplossunknown: TCheckBox;
    contentlossunknown: TCheckBox;
    G1Label: TLabel;
    ResourceLabel: TLabel;
    G2Label: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Action1Label: TLabel;
    Action2Label: TLabel;
    Action3Label: TLabel;
    Panel5: TPanel;
    Panel6: TPanel;
    H1Panel: TAlpinePanel;
    Label82: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    FatFireField: TAlpineEdit;
    FatCivField: TAlpineEdit;
    InjFireField: TAlpineEdit;
    InjCivField: TAlpineEdit;
    H2Panel: TAlpinePanel;
    DetectorField: TAlpineLookup;
    Panel7: TPanel;
    H3Panel: TAlpinePanel;
    HazMatField: TAlpineLookup;
    IPanel: TAlpinePanel;
    ComplexField: TAlpineLookup;
    JPanel: TAlpinePanel;
    FixPropField: TAlpineLookup;
    H1Label: TLabel;
    H2Label: TLabel;
    H3Label: TLabel;
    ILabel: TLabel;
    JLabel: TLabel;
    K1Label: TLabel;
    K2Label: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Label51: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    LLabel: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    BaseBottomPanel: TAdvPanel;
    MLabel: TLabel;
    Label78: TLabel;
    propvalueunknown: TCheckBox;
    contentvalueunknown: TCheckBox;
    WildLandField: TAlpineCheckBox;
    K1FromBButton: TAlpineGlowButton;
    OthersInvolved: TAlpineGlowButton;
    peStrNumField: TAlpineEdit;
    Label544: TLabel;
    Label551: TLabel;
    Label552: TLabel;
    OCFIRSTField: TAlpineEdit;
    OCMIField: TAlpineEdit;
    OffChargeField: TAlpineEdit;
    MemRepField: TAlpineEdit;
    MutStateField: TAlpineLookup;
    K2FromK1Button: TAlpineGlowButton;
    K2FromBButton: TAlpineGlowButton;
    PeCityField: TAlpineLookup;
    OCityField: TAlpineLookup;
    DateTimeOutButton: TAlpineGlowButton;
    DateTimeArrButton: TAlpineGlowButton;
    DateTimeContButton: TAlpineGlowButton;
    DateTimeInButton: TAlpineGlowButton;
    NarrButton: TAlpineGlowButton;
    timestampButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    LengthLabel: TLabel;
    EvLengthField: TAlpineEdit;
    EvLengthButton: TAlpineGlowButton;
    ResourceButton: TAlpineGlowButton;
    PROPIDFIELD: TAlpineEdit;
    NfirsMaidButton: TAlpineGlowButton;
    NfirsMaidField: TAlpineEdit;
    UnitNumLabel: TLabel;
    UnitNumField: TAlpineEdit;
    E3ScrollBox: TMyScrollBox;
    MSameAsButton: TAlpineGlowButton;
    SpellCheckButton: TAlpineGlowButton;
    DispCallShape: TShape;
    DispCallLabel: TLabel;
    DispCallIDField: TAlpineEdit;
    DispcallButton: TButton;
    ShowOnMap: TButton;
    strnumField: TAlpineEdit;
    NfirsAttButton: TAlpineGlowButton;
    COUNTYNUMFIELD: TAlpineEdit;
    COUNTYNUMLABEL: TLabel;
    CensusField: TAlpineLookup;
    CurrentButton: TAlpineGlowButton;
    NfirsInvBrowse: TAlpineBlockBrowse;
    Label7: TLabel;
    Label8: TLabel;
    OICButton: TAlpineGlowButton;
    AlarmNumUnknown: TCheckBox;
    CovidPanel: TAlpinePanel;
    Label1: TLabel;
    Covid1Field: TAlpineLookup;
    Label2: TLabel;
    Label10: TLabel;
    Covid2Field: TAlpineLookup;
    Label13: TLabel;
    Covid3Field: TAlpineLookup;
    GenNarrButton: TAlpineGlowButton;
    Label16: TLabel;
    QRShape50: TQRShape;
    QRShape1: TQRShape;
    Label17: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure IncTypeFieldSuccessfulValidate(Sender: TObject);
    procedure FatFireFieldExit(Sender: TObject);
    procedure cityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure WildLandFieldClick(Sender: TObject);
    procedure DoSpellcheck(Sender: TObject);
    procedure K1FromBButtonClick(Sender: TObject);
    procedure HazMatFieldSuccessfulValidate(Sender: TObject);
    procedure ResourcesUsedChange(Sender: TObject);
    procedure IncNumFieldExit(Sender: TObject);
    procedure MemOfficeCodeExit(Sender: TObject);
    procedure MemOfficeCodeSuccessfulValidate(Sender: TObject);
    procedure MemReportCodeSuccessfulValidate(Sender: TObject);
    procedure MemReportCodeEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure NarrButtonClick(Sender: TObject);
    procedure IncidentTemplateClick(Sender: TObject);
    procedure DateTimeOutButtonClick(Sender: TObject);
    procedure DateTimeArrButtonClick(Sender: TObject);
    procedure DateTimeContButtonClick(Sender: TObject);
    procedure DateTimeInButtonClick(Sender: TObject);
    procedure FirOrWildFieldClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure AddRPanel(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure K2FromK1ButtonClick(Sender: TObject);
    procedure K2FromBButtonClick(Sender: TObject);
    procedure ResourceButtonClick(Sender: TObject);
    procedure mDeptFieldSuccessfulValidate(Sender: TObject);
    procedure NfirsMaidButtonClick(Sender: TObject);
    procedure OthersInvolvedClick(Sender: TObject);
    procedure PeCityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure OCityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure MSameAsButtonClick(Sender: TObject);
    procedure timestampButtonClick(Sender: TObject);
    procedure DateTimeAlarmHeadFieldChange(Sender: TObject);
    procedure DispcallButtonClick(Sender: TObject);
    procedure RPanelResize(Sender: TObject);
    procedure ShowOnMapClick(Sender: TObject);
    procedure DateTimeInFieldExit(Sender: TObject);
    procedure FDIDFieldEnter(Sender: TObject);
    procedure IncTypeFieldExit(Sender: TObject);
    procedure CensusFieldEnter(Sender: TObject);
    procedure CurrentButtonClick(Sender: TObject);
    procedure N5DistrictIDFieldEnter(Sender: TObject);
    procedure OICButtonClick(Sender: TObject);
    procedure DispBoxIDFieldEnter(Sender: TObject);
    procedure IncNumFieldEnter(Sender: TObject);
    procedure NfirsInvBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
    procedure mDeptFieldEnter(Sender: TObject);
    procedure NfirsAttButtonClick(Sender: TObject);
    procedure GenNarrButtonClick(Sender: TObject);
    procedure StreetFieldExit(Sender: TObject);
  private
    { Private declarations }
    FNfirsForm : TNfirsForm;
    KForm      : Boolean;
    procedure NfirsInvNewRecord(DataSet: TDataSet);
    function LoadPersAss(FieldName: TAlpineLookUp; NfirsMainID, PersID: String): String;
    procedure SetWildLandFields;
  protected
  public
    { Public declarations }
    RPanelForm: TRPanelForm;
    procedure LoadMFields(PersID, FieldName: String);
    constructor Create(AOwner: TComponent; mPk: String); override;
    class procedure UpdateResource(NFIRSMainID : String);
    procedure DoAfterSetControls(Sender: TObject); override;
    class procedure GetNavigation(mRowObject: TRowObject); override;
    procedure DoAfterSetViewOnly; override;    
    procedure SetSpecialStudyLists;
    procedure SetMemberMakingReportBasedOnLoggedOnUser;    
  end;

implementation
uses CommonFunc,
     SecSet,
     GenFunc,
     SysNarrSelect,
     TableDefaultSelect,
     NfirsMaidEntry,
     PropSelect,
     PersSet,
     AlpineSelect,
     CommonVar,
     Clipbrd,
     NfirsInv,
     SubSortGridView,
     FDFunc,
     CommonNfirs,
     GisFunc,
     FormFunc,
     GisSys,
     NFIRSSet;

{$R *.DFM}
{$I rednmx.inc}

constructor TNfirsBasicForm.Create(AOwner: TComponent; mPk: String);
begin
  FPk := mpk;
  inherited;
end;

procedure TNfirsBasicForm.OICButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  If Not (GlobalPersID = '') then begin
    MemOfficeCode.Value := GlobalPersID;
    LoadMFields(MemOfficeCode.Value,'INCHARGE');
//    Open_Query('PERS',false,'SELECT PERS.LNAME, PERS.FNAME, PERS.MNAME, PERSRANK.DESCR PERSRANKDESCR FROM PERS ' +
//                            'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
//                            'WHERE PERS.PERSID = ' + pkValue(GlobalPersID));
//    OffChargeField.Value   := tdbfield('PERS','LNAME');
//    OCFIRSTField.Value  := tdbfield('PERS','FNAME');
//    OCMIField.Value     := tdbfield('PERS','MNAME');
//    OffRankField.Value  := tdbfield('PERS','PERSRANKDESCR');
//    OffDateField.Value  := Now;
//    CloseApollo('PERS');
  end;

  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;


procedure TNfirsBasicForm.CurrentButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  If Not (GlobalPersID = '') then begin
    MemReportCode.Value := GlobalPersID;
    LoadMFields(MemReportCode.Value,'MEMBERREPORT');
//    Open_Query('PERS',false,'SELECT PERS.LNAME, PERS.FNAME, PERS.MNAME, PERSRANK.DESCR PERSRANKDESCR FROM PERS ' +
//                            'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
//                            'WHERE PERS.PERSID = ' + pkValue(GlobalPersID));
//    MemRepField.Value   := tdbfield('PERS','LNAME');
//    MRFIRSTField.Value  := tdbfield('PERS','FNAME');
//    MRMIField.Value     := tdbfield('PERS','MNAME');
//    MemRankField.Value  := tdbfield('PERS','PERSRANKDESCR');
//    MemDateField.Value  := Now;
//    CloseApollo('PERS');
  end;

  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;

procedure TNfirsBasicForm.FormCreate(Sender: TObject);
var i         : Integer;
begin
  APanel.Color  := ColorForm;
  BPanel.Color  := ColorForm;
  CPanel.Color  := ColorForm;
  DPanel.Color  := ColorForm;
  E1Panel.Color := ColorForm;
  E2Panel.Color := ColorForm;
  E3Panel.Color := ColorForm;
  FPanel.Color  := ColorForm;
  G1Panel.Color := ColorForm;
  G2Panel.Color := ColorForm;
  H1Panel.Color := ColorForm;
  H2Panel.Color := ColorForm;
  H3Panel.Color := ColorForm;
  IPanel.Color  := ColorForm;
  JPanel.Color  := ColorForm;
  K1Panel.Color := ColorForm;
  K2Panel.Color := ColorForm;
  LPanel.Color  := ColorForm;
  MPanel.Color  := ColorForm;

  APanel.HighlightColor  := ColorHighlight;
  BPanel.HighlightColor  := ColorHighlight;
  CPanel.HighlightColor  := ColorHighlight;
  DPanel.HighlightColor  := ColorHighlight;
  E1Panel.HighlightColor := ColorHighlight;
  E2Panel.HighlightColor := ColorHighlight;
  E3Panel.HighlightColor := ColorHighlight;
  FPanel.HighlightColor  := ColorHighlight;
  G1Panel.HighlightColor := ColorHighlight;
  G2Panel.HighlightColor := ColorHighlight;
  H1Panel.HighlightColor := ColorHighlight;
  H2Panel.HighlightColor := ColorHighlight;
  H3Panel.HighlightColor := ColorHighlight;
  IPanel.HighlightColor  := ColorHighlight;
  JPanel.HighlightColor  := ColorHighlight;
  K1Panel.HighlightColor := ColorHighlight;
  K2Panel.HighlightColor := ColorHighlight;
  LPanel.HighlightColor  := ColorHighlight;
  MPanel.HighlightColor  := ColorHighlight;

  ALabel.Color  := ColorLeft;
  BLabel.Color  := ColorLeft;
  CLabel.Color  := ColorLeft;
  DLabel.Color  := ColorLeft;
  E1Label.Color := ColorLeft;
  E2Label.Color := ColorLeft;
  E3Label.Color := ColorLeft;
  FLabel.Color  := ColorLeft;
  G1Label.Color := ColorLeft;
  G2Label.Color := ColorLeft;
  H1Label.Color := ColorLeft;
  H2Label.Color := ColorLeft;
  H3Label.Color := ColorLeft;
  ILabel.Color  := ColorLeft;
  JLabel.Color  := ColorLeft;
  K1Label.Color := ColorLeft;
  K2Label.Color := ColorLeft;
  LLabel.Color  := ColorLeft;
  MLabel.Color  := ColorLeft;

{
  LinksList.Add('APanel');
  LinksList.Add('BPanel');
  LinksList.Add('CPanel');
  LinksList.Add('DPanel');
  LinksList.Add('E1Panel');
  LinksList.Add('E2Panel');
  LinksList.Add('FPanel');
  LinksList.Add('G1Panel');
  LinksList.Add('G2Panel');
  LinksList.Add('H1Panel');
  LinksList.Add('H2Panel');
  LinksList.Add('H3Panel');
  LinksList.Add('IPanel');
  LinksList.Add('JPanel');
  LinksList.Add('K1Panel');
  LinksList.Add('K2Panel');
  LinksList.Add('LPanel');
  LinksList.Add('MPanel');
  LinksList.Add('RPanel');
 }

  OthersInvolved.Enabled         := Not ViewOnly;
  K1FromBButton.Enabled          := Not ViewOnly;
  K2FromK1Button.Enabled         := Not ViewOnly;
  K2FromBButton.Enabled          := Not ViewOnly;
  IncidentTemplate.Enabled       := Not ViewOnly;
  DateTimeOutButton.Enabled      := Not ViewOnly;
  DateTimeArrButton.Enabled      := Not ViewOnly;
  DateTimeContButton.Enabled     := Not ViewOnly;
  DateTimeInButton.Enabled       := Not ViewOnly;
  EvLengthButton.Enabled         := Not ViewOnly;
  ResourceButton.Enabled         := Not ViewOnly;
  NfirsAttButton.Enabled         := Not ViewOnly;
  NfirsMaidButton.Enabled        := Not ViewOnly;
  MSameAsButton.Enabled          := Not ViewOnly;
  CurrentButton.Enabled          := Not ViewOnly;
  OICButton    .Enabled          := Not ViewOnly;

  PropButton.Enabled             := Not ViewOnly;
  NarrButton.Enabled             := Not ViewOnly;
  SpellCheckButton.Enabled       := Not ViewOnly;
  ClearButton.Enabled            := Not ViewOnly;

  If mFireID = '81000' then begin
    N5DistrictIDField.Enabled  := GlobalIsSysadmin;
    DateTimeAlarmField.Enabled := GlobalIsSysadmin;
    DateTimeArrField.Enabled   := GlobalIsSysadmin;
    DateTimeContField.Enabled  := GlobalIsSysadmin;
    DateTimeInField.Enabled    := GlobalIsSysadmin;
    StreetField.NoValidate     := False;
    cityField.NoValidate       := False;
  end;

  WildLandField.OnClick          := WildLandFieldClick;
  E3Panel.Visible                := false;

  SetSpecialStudyLists;
  FNfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));

  Open_Query('NFIRSSET',false,'SELECT * FROM NFIRSSET WHERE FDID = ' + AddExpr(FireID));
  If tdbfield('NFIRSSET','SHOWSECOND') = 'Y' then begin
    DateTimeAlarmField.ShowSeconds := true;
    DateTimeOutField.ShowSeconds   := true;
    DateTimeArrField.ShowSeconds   := true;
    DateTimeContField.ShowSeconds  := true;
    DateTimeInField.ShowSeconds    := true;
  end;
  KForm := (tdbfield('NFIRSSET','KFORM') = 'Y');
  CloseApollo('NFIRSSET');

  CovidPanel.Visible                        := (SqlTableRecCount('SELECT COUNT(*) FROM COVID19') > 0);
  PropButton.Visible                        := CheckModule('PROP');
  FDIDField.Enabled                         := false;
  NfirsMainScrollbox.VertScrollBar.Position := 0;
  UnitNumField.Visible                      := mFireID = '64032';
  UnitNumLabel.Visible                      := mFireID = '64032';
  NarrButton.Visible                        := mFireID <> '81000';
  if not (mFireID = '07130') then begin
    AlarmNumUnknown.Visible := False;
    AlarmNumUnknown.State   := cbUnchecked;
  end;

  If mFireID = '07110' then
    H1Panel.Visible := False;
  AddRpanel(self);
  NfirsMaidField.Enabled   := false;

  DispcallButton.Visible   := AlpineLogon;
  DispCallIDField.Visible  := AlpineLogon;
  DispCallLabel.Visible    := AlpineLogon;
  DispCallShape.Visible    := AlpineLogon;
  ShowOnMap.Visible        := AlpineLogon;

  If (mFireID = '35009') or (mFireID = '01920') then begin
    N5DistrictIDField.Visible := False;
    DistrictLabel.Visible     := False;
  end;
  NfirsAttButton.Visible   := AlpineLogon or (mFireID = '11540');
  
  If KForm then begin
    NfirsInvBrowse.Visible := true;
    NfirsInvBrowse.Setup('NFIRSINV','NFIRSMAINID',pk,TNfirsInvForm,NfirsInvNewRecord);
    K1Panel.Visible        := false;
    K2Panel.Visible        := false;
  end else begin
    NfirsInvBrowse.Visible := false;
    K1Panel.Visible        := true;
    K2Panel.Visible        := true;
  end;
  NfirsInvBrowse.Caption.Color      := ColorForm;
  NfirsInvBrowse.Caption.ColorTo    := ColorForm;
  NfirsInvBrowse.FButtonPanel.Color := ColorForm;

  MaidField           .LookupFormWidth := 350;
  SchdShiftNameIDField.LookupFormWidth := 350;
  N5DistrictIDField   .LookupFormWidth := 350;
  DispBoxIDField      .LookupFormWidth := 350;

  If mfireid = '14353' then begin
    timeoutlabel.Caption := 'Respond';
    arrivallabel.Caption := 'Scene';
  end;

  If mfireid = '01920' then begin
    NarrButton.Visible := False;
    NarrButton.Enabled := False;
    FirorWildField.Enabled := False;
    FirorWildField.Visible := False;
    WildLandField.Visible  := False;
    WildLandField.Enabled  := False;
  end;

  If (mfireid = '70214') AND (Narrfield.Caption = '') then begin
    Narrfield.Value  := 'PLEASE FILL THIS OUT';
  end;

  If ((mFireID = '20019') AND (SQLTableRecCount('SELECT COUNT(*) FROM NFIRSINV WHERE NFIRSMAINID = ' + AddExpr(pk)) > 0))then begin
    OthersInvolved.Appearance.Color := clLime;
    OthersInvolved.Appearance.ColorTo := clLime;
    OthersInvolved.Appearance.ColorMirrorTo := clLime;
    OthersInvolved.Appearance.ColorMirror := $0000D500;
  end;

  if (mFireID = '20019') then begin
    Label34.Caption      := 'Dispatched';
    TimeOutLabel.Caption := 'Responding'
  end;

  if (mFireID = '20013') then begin
    IncNumField.Color := clLime;
  end;

    
  If (mFireID = '11540') then begin
    IncTypeField.SQLExpr := 'SELECT * FROM N5INCTYPE WHERE LEVELSQL <= ' + AddExpr('3') + ' ORDER BY LEVELSQL,CODE';
    TypeActField.SQLExpr := 'SELECT * FROM N5ACTION  WHERE LEVELSQL <= ' + AddExpr('2') + ' ORDER BY LEVELSQL,CODE';
    Action2Field.SQLExpr := 'SELECT * FROM N5ACTION  WHERE LEVELSQL <= ' + AddExpr('2') + ' ORDER BY LEVELSQL,CODE';
    Action3Field.SQLExpr := 'SELECT * FROM N5ACTION  WHERE LEVELSQL <= ' + AddExpr('2') + ' ORDER BY LEVELSQL,CODE';
  end;
end;

procedure TNfirsBasicForm.SetSpecialStudyLists;
var i : Integer;
  procedure AddE3Label(Value: String; Number: Integer);
  var LabelName : TLabel;
  begin
    LabelName   := TLabel.Create(self);
    with LabelName do begin
      Parent    := E3ScrollBox;
      Left      := 0;
      AutoSize  := false;
      Alignment := taRightJustify;
      Width     := 131;
      Top       := 3 + Number * 22;
      Height    := 13;
      Caption   := Value;
    end;

    If LabelName.Top > 75 then begin
      E3ScrollBox.VertScrollBar.Visible  := True;
      E3ScrollBox.VertScrollBar.Range    := LabelName.Top + 40;
    end;
  end;
  procedure AddE3Field(TName: String; FName: String; Number: Integer);
  var LookupName : TAlpineLookup;
  begin
    If (TName <> '')  then begin
      LookupName   := TAlpineLookup.Create(self);
      with LookupName do begin
        Parent                := E3ScrollBox;
        Left                  := 135;
        Width                 := 71;
        EditWidth             := 50;
        Top                   := Number * 22;
        DataField             := FName;
        DisplayField          := 'CODE';
        DisplayDescription    := FALSE;
        ReferencingField      := 'CODE';
        ReferencingTable      := TName;
        DataFieldIsCharacter  := True;
        ReturnField           := 'DESCR';
        LookUpCode            := IIf(tdbfield('NFIRSSSSETUP','LOOKUPCODE') = '','CODEDESCR',tdbfield('NFIRSSSSETUP','LOOKUPCODE'));
        CanAddToLookup        := false;
        Font                  := SchdShiftNameIDField.Font;
      end;
    end;
  end;
begin
  i := 0;
  Open_Query('NFIRSSSSETUP',false,'SELECT * FROM NFIRSSSSETUP WHERE FDID = ' + AddExpr(FireID) + ' ORDER BY SORTORD');
  If A('NFIRSSSSETUP').RecordsExist then begin
    E3Panel.Visible  := true;
    While not A('NFIRSSSSETUP').eof do begin
      AddE3Label(tdbfield('NFIRSSSSETUP','CAPTION'), i);
      AddE3Field(tdbfield('NFIRSSSSETUP','TABLENAME'), tdbfield('NFIRSSSSETUP','FIELDNAME'), i);
      i := i + 1;
      A('NFIRSSSSETUP').Skip(1);
    end;
  end;
  CloseApollo('NFIRSSSSETUP');
end;


procedure TNfirsBasicForm.DoAfterSetViewOnly;
var bFdidEnabled: Boolean;
begin
  inherited;
  if (mFireid ='81000') then begin
    bFdidEnabled := (Not Viewonly) and CheckSecVar('INCSETUP');
    StreetField.Enabled := bFdidEnabled;
  end else
    bFdidEnabled :=  Not Viewonly and (secFdid = '') and (MultiFdid);

  FDIDField.Enabled := bFdidEnabled;
  if FNfirsForm<>nil then begin
    if not FNfirsForm.CanShowAppAndAtt then begin
      APanel.Enabled := False;
      EnableAllControls( APanel,False);
    end;
  end;
  TimeStampButton.Enabled := Not Viewonly;
  If DisableIncNum and not CheckSecVar('INCSETUP') then begin
    IncNumField.enabled := False;
    ExpNumField.enabled := False;
  end;

  if (mfireid = '28045') then begin
    DateTimeAlarmField.Enabled     := (Not Viewonly) and CheckSecVar('INCSETUP');
    DateTimeAlarmHeadField.Enabled := (Not Viewonly) and CheckSecVar('INCSETUP');
  end;

  if (mfireid = '28017') then begin
    APanel.Enabled := CheckSecVar('INCEDIT');
    EnableAllControls( APanel,CheckSecVar('INCEDIT'));
    if (COUNTYNUMField.Value = '') or CheckSecVar('INCSETUP') then
      COUNTYNUMField.Enabled      := True
    else
      COUNTYNUMField.Enabled      := False;
    DispBoxIDField.Visible  := False;
    DispBoxIDLabel.Visible  := False;
    DistrictLabel.Caption   := 'Planning Zone';
    E1Panel.Enabled := False;
    EnableAllControls( E1Panel,False);
  end;

  if (mfireid='07130') then begin
    DispBoxIDField.Visible  := False;
    DispBoxIDLabel.Visible  := False;
    OffAssField.Enabled     := False;
    MemAssField.Enabled     := False;
  end;

  TFDFunc.SetNfirsBasSecurity(self);

  if mFireid = '10700' then begin
//    if CheckSecVar('INCSETUP') and (not IsMark) then exit;
    if (Pos('lossprop',lowercase(sqllookup(pk,'nfirsmainid','nfirsmain','firemarshalchanges')))>0) then begin
      losspropfield.enabled      := False;
      proplossunknown.enabled    := False;
      losscontfield.enabled      := False;
      contentlossunknown.Enabled := False;
    end;
  end;
  If (mFireID = '71630') then begin
    If (AnyStrToInt(AlarmNumfield.Value) = 0) then
      AlarmNumfield.Enabled := SchdShiftNameIDField.Enabled;
  end;    
end;

procedure TNfirsBasicForm.IncTypeFieldExit(Sender: TObject);
begin
  If mFireID = '12309' then begin
    If SubStr(IncTypeField.Value,1,1) = '1' then
      ShowMessage('Reminder: Fill Out the Fire Report');
  end;
  If IncTypeField.Modified then begin
    FixPropField.AlpineColors.NonEditColor := clWhite;
    FNfirsForm.ValidateClick(nil);
  end;
end;

procedure TNfirsBasicForm.IncTypeFieldSuccessfulValidate(Sender: TObject);
begin
  If FNfirsForm<>nil then begin
    FNfirsForm.UpdateNodesBasedOnIncType(False);
    If (TypeActField.Value='') and (substr(IncTypeField.Value,1,3)='611') then begin
      TypeActField.Value := '93';
      If (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then begin
        If BooleanMessageDlg('Apply "93 - Cancelled Enroute" to all responding Apparatus?') then
          RunSql('UPDATE NFIRSAPP SET N5ACT1 = ' + AddExpr('93') + ' WHERE NFIRSMAINID = ' + pkValue(PK));
      end;
    end;
    If (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then
      FNfirsForm.ValidateClick(self);
  end;      
end;

procedure TNfirsBasicForm.FatFireFieldExit(Sender: TObject);
begin
  If not TAlpineEdit(Sender).ModifiedSinceEntered then
    exit;
  If FNfirsForm<>nil then
    FNfirsForm.UpdateNodesBasedOnIncType(False);
end;

procedure TNfirsBasicForm.FDIDFieldEnter(Sender: TObject);
begin
  FdidField.SQLExpr := 'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' OR DISPATCH = ' + AddExpr('Y');
end;

procedure TNfirsBasicForm.NfirsMaidButtonClick(Sender: TObject);
begin
  NfirsMaidEntryForm := TNfirsMaidEntryForm.Create(application,FPK);
  NfirsMaidEntryForm.ShowModal;
  NfirsMaidEntryForm.Free;
  NfirsMaidField.Text := GetNfirsMaid(MaidField.Text, FPK);
end;

procedure TNfirsBasicForm.OCityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  OStateField.Value := tdbfield('CITY','STATE');
  OZipField.Text    := substr(dbfield('CITY','ZIP'),1,5);
  CloseApollo('CITY');
end;


procedure TNfirsBasicForm.OthersInvolvedClick(Sender: TObject);
Var OthersInvolvedObject : TBrowseObject;
begin
  OthersInvolvedObject                   := TBrowseObject.Create;
  OthersInvolvedObject.PrimeTable        := 'NFIRSINV';
  OthersInvolvedObject.PrimeKeyField     := 'NFIRSINVID';

  othersinvolvedObject.AddTable('NFIRSINV','','');
  othersinvolvedObject.AddTable('NFIRSINVTYPE','NFIRSINVTYPE','NFIRSINVTYPEID');

  OthersInvolvedObject.AddField('DESCR','DESCR','NFIRSINVTYPE','Description',200);
  OthersInvolvedObject.AddField('LASTNAME','LASTNAME','NFIRSINV','Last Name',200);
  OthersInvolvedObject.AddField('FIRSTNAME','FIRSTNAME','NFIRSINV','First Name',200);

  OthersInvolvedObject.ForeignKeyField   := 'NFIRSMAINID';
  OthersInvolvedObject.ForeignKeyValue   := pk;
  OthersInvolvedObject.Instance          := TNfirsInvForm;
  OthersInvolvedObject.NewRecordFunction := NfirsInvNewRecord;

  SubSortGridViewDriver(OthersInvolvedObject,'Other Person/Entity Involved');
end;

procedure TNfirsBasicForm.NfirsAttButtonClick(Sender: TObject);
begin
  If BooleanMessageDlg('Update all attending personnel with the length of the incident?' + #10#13 +
                       'This will overwrite the variable length(s) you entered for each individual personnel attendance record.') then begin
    RunSQL('UPDATE NFIRSATT SET EVLENGTH = ' + FormatFloat('###0.00',AnyStrToFloat(EvLengthField.Value)) + ' WHERE NFIRSMAINID = ' + pkValue(pk));
    ShowMessage('Done');
  end; 
end;

procedure TNfirsBasicForm.NfirsInvBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
begin
  If FieldName = 'BUSINESSNAME' then begin
    If Not (tdbfield(AlpineQuery,'BUSINESSNAME') = '') then
      Value := tdbfield(AlpineQuery,'BUSINESSNAME')
    else if Not (tdbfield(AlpineQuery,'LASTNAME') = '') then
      Value := alltrim(tdbfield(AlpineQuery,'FIRSTNAME') + ' ' + tdbfield(AlpineQuery,'LASTNAME'));
  end else if FieldName = 'STREET' then begin
    Value := tdbfield(AlpineQuery,'STRNUM') + ' ' + tdbfield(AlpineQuery,'STREET') +  IIf(tdbfield(AlpineQuery,'CITY') = '','',', ' + tdbfield(AlpineQuery,'CITY')) + IIf(tdbfield(AlpineQuery,'STATE') = '','',', ' + tdbfield(AlpineQuery,'STATE')) + '  ' + substr(tdbfield(AlpineQuery,'ZIP'),1,5); 
  end;
end;

procedure TNfirsBasicForm.NfirsInvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('NFIRSMAINID').AsString := pk
end;

procedure TNfirsBasicForm.CensusFieldEnter(Sender: TObject);
Var FieldName : String;
begin
  (Sender as TAlpineLookUp).LookupFormWidth := 400;
  FieldName                                 := (Sender as TAlpineLookUp).DataField;
  (Sender as TAlpineLookUp).SQLExpr         := 'SELECT * FROM REDNMXCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND ACTIVE = ' + AddExpr('Y');
end;

procedure TNfirsBasicForm.cityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Value := tdbfield('CITY','STATE');
  ZipField.Text    := substr(dbfield('CITY','ZIP'),1,5);
  CloseApollo('CITY');
end;

procedure TNfirsBasicForm.WildLandFieldClick(Sender: TObject);
begin
  SetWildLandFields;
end;

procedure TNfirsBasicForm.SetWildLandFields;
begin
  If WildLandField.Checked then begin
    LocTypeField.Enabled    := false;
    StrNumField.Enabled     := false;
    StreetField.Enabled     := false;
    CityField.Enabled       := false;
    StateField.Enabled      := false;
    ZipField.Enabled        := false;
    StreetPreField.Enabled  := false;
    StreetTypeField.Enabled := false;
    StreetSuffField.Enabled := false;
    ROOMAPTField.Enabled    := false;
  end else begin
    StrNumField.Enabled     := Not Viewonly;
    StreetField.Enabled     := IncTypeField.Enabled;
    CityField.Enabled       := IncTypeField.Enabled;
    StateField.Enabled      := IncTypeField.Enabled;
    ZipField.Enabled        := IncTypeField.Enabled;
    LocTypeField.Enabled    := IncTypeField.Enabled;
    StreetPreField.Enabled  := IncTypeField.Enabled;
    StreetTypeField.Enabled := IncTypeField.Enabled;
    StreetSuffField.Enabled := IncTypeField.Enabled;
    RoomAptField.Enabled    := IncTypeField.Enabled;
  end;
end;

procedure TNfirsBasicForm.ShowOnMapClick(Sender: TObject);
var dispcall: TApolloData;
begin
  try
    dispcall := open_query('SELECT LATITUDE,LONGITUDE FROM DISPCALL WHERE DISPCALLID = '+pkValue(DispCallIDField.Value));
    ShowMapForLatitudeLongitude(getfield(dispcall,'LATITUDE').AsFloat,getfield(dispcall,'LONGITUDE').AsFloat,StrNumField.text+' '+StreetField.Text);
  finally
    dispcall.free;
  end;
end;

procedure TNfirsBasicForm.StreetFieldExit(Sender: TObject);
begin
  If MFireID ='08010' then
    StreetField.Value := UpperCase(StreetField.Value);
end;

procedure TNfirsBasicForm.DoSpellcheck(Sender: TObject);
begin
  SpellCheck(NarrField);
end;

procedure TNfirsBasicForm.timestampButtonClick(Sender: TObject);
begin
  TAlpineMemo.ClassTimeStamp(NarrField);
end;

procedure TNfirsBasicForm.HazMatFieldSuccessfulValidate(Sender: TObject);
begin
  If FNfirsForm<>nil then
    FNfirsForm.UpdateNodesBasedOnIncType(False);
end;

procedure TNfirsBasicForm.ResourcesUsedChange(Sender: TObject);
var PersTotal : Integer;
begin
  PersTotal           := 0;
  PersTotal           := PersTotal + AnyStrToInt(PersSuppField.Value);
  PersTotal           := PersTotal + AnyStrToInt(PersEMSField.Value);
  PersTotal           := PersTotal + AnyStrToInt(PersOthField.Value);
  If FireID = '52002' then
    PersTotal         := PersTotal + AnyStrToInt(PersMiscField.Value);
  PersTotalField.Text := Inttostr(PersTotal);
end;

procedure TNfirsBasicForm.RPanelResize(Sender: TObject);
begin
  if rPanelForm <> nil then
    rPanelForm.Width       := RPanel.width;
end;

procedure TNfirsBasicForm.IncNumFieldEnter(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  If mfireid = '28017' then begin
    NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
    If NfirsForm<>nil then
      NfirsForm.SaveButton.Enabled := true;
    if IncNumField.Text = '' then
      IncNumField.Text := GetNextIncNum(mfireid,'NFIRSMAIN',false);
  end;
end;

procedure TNfirsBasicForm.IncNumFieldExit(Sender: TObject);
var mExists    : Boolean;
    mIncNum    : String;
begin
  If FNfirsForm = nil then
    exit;

  if (mFireID = '28017') and (IncNumField.Text = '') then
    exit;
       
  Open_Query('CHKINCNUM',False,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = '+AddExpr(FDIDField.Text)+' AND INCNUM = '+AddExpr(IncNumField.Text)+' AND EXPNUM = '+AddExpr(ExpNumField.Text)+' AND NFIRSMAINID <> '+PkValue(FNfirsForm.PK));
  mExists := A('CHKINCNUM').RecordsExist;
  CloseApollo('CHKINCNUM');

  If mExists then begin
    mIncNum := FormatIncNum(IncNumField.Text);
    IncNumField.Text := '';
    IncNumField.SetFocus;
    ShowMessage(mIncNum + ' Already Exists!');
  end;
end;

procedure TNfirsBasicForm.LoadMFields(PersID, FieldName: String);
Var  SQLVar        : String;
begin
  If (PersID = '') then
    Exit;
  Open_Query('GETNAMES',False,'SELECT PERS.LNAME LNAME, PERS.FNAME FNAME, PERS.MNAME MNAME, PERSRANK.DESCR PERSRANKDESCR FROM PERS ' +
                              'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
                              'WHERE PERSID = ' + PersID);
  If (FieldName = 'INCHARGE') then begin
    If CheckModule('SCHD') and NOT(mFireId = '00190') then begin
      SQLVar        := 'SELECT SCHDRANKDESCR, NFIRSATTTASKDESCR FROM VWSCHDHIST WHERE PERSID = ' + PersID + ' AND ' +
                       'DATETIMESTART <= ' + FormatDateTimeForSql(DateTimeAlarmField) + ' AND DATETIMEEND >= ' + FormatDateTimeForSql(DateTimeAlarmField);
      Open_Query('VWSCHDHIST',false,SQLVar);
      If A('VWSCHDHIST').RecordsExist then begin
        OffRankField.Text := tdbfield('VWSCHDHIST','SCHDRANKDESCR');
        OffAssField.Text  := tdbfield('VWSCHDHIST','NFIRSATTTASKDESCR');
      end;
      CloseApollo('VWSCHDHIST');
    end;                    

    OffChargeField.Value := GetField('GETNAMES','LNAME').AsString;
    OCFIRSTField.Value   := GetField('GETNAMES','FNAME').AsString;
    OCMIField.Value      := GetField('GETNAMES','MNAME').AsString;
    If OffRankField.Value='' then
      OffRankField.Value   := GetField('GETNAMES','PERSRANKDESCR').AsString;
    If OffAssField.Value='' then
      OffAssField.Value    := LoadPersAss(OffAssField,FPK,PersID);

    If mFireId = '52280' then begin
      OffRankField.Value   := GetField('GETNAMES','PERSRANKDESCR').AsString;
      OffAssField.Value    := LoadPersAss(OffAssField,FPK,PersID);
    end;

    OffDateField.Value   := Now;

    If mFireId = '21040' then
      OffAssField.Value  := 'INCIDENT COMMANDER';

    If mFireId = '00190' then
      OffAssField.Value  := 'Suppression';

  end else if (FieldName = 'MEMBERREPORT') then begin
    If CheckModule('SCHD') and NOT(mFireId = '00190') then begin
      SQLVar        := 'SELECT SCHDRANKDESCR, NFIRSATTTASKDESCR FROM VWSCHDHIST WHERE PERSID = ' + PersID + ' AND ' +
                       'DATETIMESTART <= ' + FormatDateTimeForSql(DateTimeAlarmField) + ' AND DATETIMEEND >= ' + FormatDateTimeForSql(DateTimeAlarmField);
      Open_Query('VWSCHDHIST',false,SQLVar);
      if A('VWSCHDHIST').RecordsExist then begin
        MemRankField.Text := tdbfield('VWSCHDHIST','SCHDRANKDESCR');
        MemAssField.Text  := tdbfield('VWSCHDHIST','NFIRSATTTASKDESCR');
      end;
      CloseApollo('VWSCHDHIST');
    end;
    MemRepField.Value    := GetField('GETNAMES','LNAME').AsString;
    MRFIRSTField.Value   := GetField('GETNAMES','FNAME').AsString;
    MRMIField.Value      := GetField('GETNAMES','MNAME').AsString;
    If MemRankField.Value = '' then
      MemRankField.Value   := GetField('GETNAMES','PERSRANKDESCR').AsString;
    If MemAssField.Value = '' then
      MemAssField.Value    := LoadPersAss(MemAssField,FPK,PersID);
    MemDateField.Value   := Now;

    If mFireId = '52280' then begin
      MemRankField.Value   := GetField('GETNAMES','PERSRANKDESCR').AsString;
      MemAssField.Value    := LoadPersAss(MemAssField,FPK,PersID);
    end;

    If mFireId = '21040' then
      MemAssField.Value  := '';

    If mFireId = '00190' then
      MemAssField.Value  := 'Suppression';
  end;
  CloseApollo('GETNAMES');
end;

function TNfirsBasicForm.LoadPersAss(FieldName: TAlpineLookUp; NfirsMainID, PersID: String): String;
begin
  Open_Query('NFIRSATT',false,'SELECT NFIRSATTTASK.DESCR FROM NFIRSATT LEFT JOIN NFIRSATTTASK ON (NFIRSATT.NFIRSATTTASKID = NFIRSATTTASK.NFIRSATTTASKID) ' +
                              'WHERE NFIRSMAINID = ' + pkValue(NfirsMainID) + ' AND PERSID = ' + pkValue(PersID));
  LoadPersAss := tdbfield('NFIRSATT','DESCR');
  CloseApollo('NFIRSATT');
end;

procedure TNfirsBasicForm.MemOfficeCodeExit(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    MemOfficeCode.LookUpCode := 'PERSBYPERSCODE';

  If (FdidField.Value <> '55209') and
     (FdidField.Value <> '30002') and
     (FdidField.Value <> '30006') and
     (FdidField.Value <> '30017') and
     (FdidField.Value <> '30031') and
     (FdidField.Value <> '30041') and
     (FdidField.Value <> '30044') and
     (FdidField.Value <> '30052') and
     (FdidField.Value <> '30065') then
    MemOfficeCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + IIf(MultiFdid,' AND FDID = ' + AddExpr(FdidField.Value),'') + ' ORDER BY ' + GlobalPersSort
  else
    MemOfficeCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;

  If MFireId = '05005' then
    MemOfficeCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;

  If (MFireId = '10700') or (mFireID = '13000') then
    MemOfficeCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
end;

procedure TNfirsBasicForm.MemReportCodeEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    MemReportCode.LookUpCode := 'PERSBYPERSCODE';
  If (FdidField.Value <> '55209') and
     (FdidField.Value <> '30002') and
     (FdidField.Value <> '30006') and
     (FdidField.Value <> '30017') and
     (FdidField.Value <> '30031') and
     (FdidField.Value <> '30041') and
     (FdidField.Value <> '30044') and
     (FdidField.Value <> '30052') and
     (FdidField.Value <> '30065') then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + IIf(MultiFdid,' AND FDID = ' + AddExpr(FdidField.Value),'') + ' ORDER BY ' + GlobalPersSort
  else
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;

  If mFireId = '30044' then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE (ATTEND = ' + AddExpr('Y') + ' OR PERSTYPEID =  ' + AddExpr('14') + ') ORDER BY ' + GlobalPersSort;

  If MFireId = '30019' then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' AND (FDID = ' + AddExpr('30019') + 'OR FDID = ' + AddExpr('GCFDV') + ') ORDER BY ' + GlobalPersSort;

  If MFireId = '05005' then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y')  + ' ORDER BY ' + GlobalPersSort;

  If (MFireId = '10700') or (mFireID = '13000')  then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y')  + ' ORDER BY ' + GlobalPersSort;

  If MFireId = '15037' then
    MemReportCode.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS ORDER BY ' + GlobalPersSort;
end;

procedure TNfirsBasicForm.MemOfficeCodeSuccessfulValidate(Sender: TObject);
begin
  LoadMFields(MemOfficeCode.Value,'INCHARGE');
end;

procedure TNfirsBasicForm.MemReportCodeSuccessfulValidate(Sender: TObject);
begin
  LoadMFields(MemReportCode.Value,'MEMBERREPORT');
end;

procedure TNfirsBasicForm.GenNarrButtonClick(Sender: TObject);
begin
  Narrfield.Value  := 'On ' + FormatDateTime('MM/DD/YYYY',DateTimeAlarmHeadField.Value) + ' at ' + FormatDateTime('hh:mm:ss',DateTimeAlarmHeadField.Value) + ' a '  +
                      InctypeField.DescLabel.Caption + ' occured ' + Iif(LocTypeField.Value = '1','at ' + LocTypeField.DescLabel.Caption + ' ' + StrNumField.Value + ' ' + StreetField.Value,'') + Iif(LocTypeField.Value = '2','at the ' + LocTypeField.DescLabel.Caption + ' of ' + StreetField.Value + ' and ' +CrossDirField.Value ,'') +
                      IIf(not ((LocTypeField.Value = '1') or (LocTypeField.Value = '2')),LocTypeField.DescLabel.Caption + ' ' + StrNumField.Value + ' ' + StreetField.Value,'') + '.';

  If (Action1Label.Caption <> '') then
    NarrField.Value := NarrField.Value + '  The following actions(s) were done:' + #13#10 + ' - ' + Action1Label.Caption;
  If (Action2Label.Caption <> '') then
    NarrField.Value := NarrField.Value + #13#10 + ' - ' + Action2Label.Caption;
  If (Action3Label.Caption <> '') then
    NarrField.Value := NarrField.Value + #13#10 + ' - ' + Action3Label.Caption;

  If MaidField.Value <> 'N' then
    Narrfield.Value := Narrfield.Value + '  ' + MaidField.DescLabel.Caption + ' ' + Iif(((MaidField.Value = '1') or (Maidfield.Value = '2')),'' ,'to ' + MDeptField.DescLabel.Caption) +'.';
end;

class procedure TNfirsBasicForm.GetNavigation(mRowObject: TRowObject);
begin
  TNfirsForm.AddLink(mRowObject,'A - Date and Number');
  TNfirsForm.AddLink(mRowObject,'B - Location');
  TNfirsForm.AddLink(mRowObject,'C - Incident Type');
  TNfirsForm.AddLink(mRowObject,'D - Mutual Aid');
  TNfirsForm.AddLink(mRowObject,'E1 - Dates and Time');
  TNfirsForm.AddLink(mRowObject,'E2 - Shift and Alarm');
  TNfirsForm.AddLink(mRowObject,'F - Actions Taken');
  TNfirsForm.AddLink(mRowObject,'G1 - Resource');
  TNfirsForm.AddLink(mRowObject,'G2 - Dollar Loss');
  TNfirsForm.AddLink(mRowObject,'H1 - Casualties');
  TNfirsForm.AddLink(mRowObject,'H2 - Detector');
  TNfirsForm.AddLink(mRowObject,'H3 - HazMat Release');
  TNfirsForm.AddLink(mRowObject,'I - Mixed Use');
  TNfirsForm.AddLink(mRowObject,'J - Property Use');
  TNfirsForm.AddLink(mRowObject,'K1 - Person Involved');
  TNfirsForm.AddLink(mRowObject,'K2 - Owner');
  TNfirsForm.AddLink(mRowObject,'L - Remarks');
  TNfirsForm.AddLink(mRowObject,'M - Authorization');
  TNfirsForm.AddLink(mRowObject,'R - Department');
end;

class procedure TNfirsBasicForm.UpdateResource(NFIRSMainID : String);
Var AppSupp  : Integer;
    AppEMS   : Integer;
    AppOth   : Integer;
    PersSupp : Integer;
    PersEMS  : Integer;
    PersOth  : Integer;
    PersMisc : Integer;
    F        : TNfirsForm;
begin
  CalculateG1Fields(GlobalAdoConnection,anystrtoint(Nfirsmainid),AppEMS,AppSupp,AppOth,PersSupp,PersEMS,PersOth,PersMisc);
  If GetFormOfType(TNFIRSForm)<>nil then begin
    f := TNFIRSForm(GetFormOfType(TNFIRSForm));
    If F.CurrenTBaseNfirsForm is TNfirsBasicForm then begin
      with TNfirsBasicForm(F.CurrentBaseNfirsForm) do begin
        If (FireID = '52002') or (FireID = '28011') then
          PersTotalField.Value  := IntToStr(PersEMS + PersSupp + PersOth + PersMisc)
        else if (ASCVAR = 'NJ15006') then begin
          AppEMSField.Value     := IntToStr(AppEMS);
          AppSuppField.Value    := IntToStr(AppSupp);
          AppOthField.Value     := IntToStr(AppOth);
          PersEMSField.Value    := IntToStr(PersEMS);
          PersSuppField.Value   := IntToStr(PersSupp);
          PersOthField.Value    := IntToStr(PersOth);
          PersTotalField.Value  := IntToStr(PersEMS + PersSupp + PersOth +StrToInt(PersMiscField.Value));
        end else begin
          AppEMSField.Value     := IntToStr(AppEMS);
          AppSuppField.Value    := IntToStr(AppSupp);
          AppOthField.Value     := IntToStr(AppOth);
          PersEMSField.Value    := IntToStr(PersEMS);
          PersSuppField.Value   := IntToStr(PersSupp);
          PersOthField.Value    := IntToStr(PersOth);
          PersMiscField.Value   := IntToStr(PersMisc);
          PersTotalField.Value  := IntToStr(PersEMS + PersSupp + PersOth + PersMisc);
        end;
      end;
    end;
  end else begin
  end;
end;

procedure TNfirsBasicForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  SchdShiftNameIDField.LookupFormWidth := 250;
  If (mfireID = '10021') then
    SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE NFIRSSHIFT = ' + AddExpr('Y')
  else
    SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TNfirsBasicForm.N5DistrictIDFieldEnter(Sender: TObject);
begin
  N5DistrictIDField.LookupFormWidth := 250;
  if (mfireid = '28017') then
    N5DistrictIDField.SQLExpr         := 'SELECT * FROM N5DISTRICT WHERE (FDID = ' + AddExpr(FdidField.Value)  + ')'
  else if FdidField.Value <> '' then
    N5DistrictIDField.SQLExpr         := 'SELECT * FROM N5DISTRICT WHERE (FDID = ' + AddExpr(FdidField.Value) + ') OR (FDID IS NULL) OR (FDID = ' + AddExpr('') + ')'
  else
    N5DistrictIDField.SQLExpr         := 'SELECT * FROM N5DISTRICT WHERE (FDID = ' + AddExpr(MFireid) + ') OR (FDID IS NULL) OR (FDID = ' + AddExpr('') + ')';
end;

procedure TNfirsBasicForm.NarrButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  NarrField.SetFocus;
  SysNarrSelectForm := TSysNarrSelectForm.Create(application,'NFIRSMAIN','NARR');
  If SysNarrSelectForm.ShowModal = mrOK then begin
    ClipBoard.AsText := SysNarrSelectForm.NarrField.Value;
    NarrField.Memo.PasteFromClipboard;
    NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
    If NfirsForm <> nil then
      NfirsForm.SaveButton.Enabled := true;
  end;
  SysNarrSelectForm.Free;
  NarrField.SetFocus;
end;

procedure TNfirsBasicForm.IncidentTemplateClick(Sender: TObject);
var mNfirsForm: TNfirsForm;
begin
  mNfirsForm := TNfirsForm(GetFormOfType(TNFIRSForm));
  If mNfirsForm=nil then
    exit;

  If mNfirsForm.SaveButton.Enabled then
    mNfirsForm.SaveButton.Click;

  TableDefaultSelectForm := TTableDefaultSelectForm.Create(Application,FPK,CheckSecVar('INCSETUP'),'INC');
  If TableDefaultSelectForm.ShowModal = mrOK then begin
    If mNfirsForm<>nil then begin
      mNfirsForm.RefreshForm;
      mNfirsForm.UpdateNodesBasedOnIncType(False);

      if mNfirsForm.CurrentBaseNfirsForm is TNfirsBasicForm then begin
        try
          Open_query('RPANEL',False,'SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = '+pkValue(pk));
          mNfirsForm.SetControls(TNfirsBasicForm(mNfirsForm.CurrentBaseNfirsForm).RPanelForm,nil,'RPANEL','NFIRSMAIN',mNfirsForm.SaveButton);
        finally
          CloseApollo('RPANEL');
        end;
      end;
    end;
  end;
  TableDefaultSelectForm.Free;
end;

procedure TNfirsBasicForm.DateTimeOutButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm<>nil then
    NfirsForm.SaveButton.Enabled := true;
  DateTimeOutField.Value := DateTimeAlarmField.Value;
  DateTimeOutField.TimeField.SetFocus;
end;

procedure TNfirsBasicForm.DispBoxIDFieldEnter(Sender: TObject);
begin
  DispBoxIDField.SQLExpr := 'SELECT DISPBOXID, CODE, DESCR FROM DISPBOX WHERE FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TNfirsBasicForm.DispcallButtonClick(Sender: TObject);
var mBrowseObject : TBrowseObject;
    iDispCallid   : Integer;
begin
  mBrowseObject := TAlpineTMSStringGrid.CreateBrowseObjectForViewCode( 'DISPCALL');
  mBrowseObject.ExplicitWhereClause := ' WHERE DATETIMEREC >= '+FormatDateTimeForSql(DateTimeAlarmHeadField.Value-30)+' AND DATETIMEREC <= '+ FormatDateTimeForSql(DateTimeAlarmHeadField.Value+30);
  iDispCallid := DoAlpineSelect(mBrowseObject,True);
  if iDispCallid > 0 then
    DispCallIDField.Value := inttostr(iDispCallid);
end;

procedure TNfirsBasicForm.DateTimeAlarmHeadFieldChange(Sender: TObject);
begin
  If (DateTimeAlarmHeadField.Value <> DateTimeAlarmField.Value) then
    DateTimeAlarmField.Value := DateTimeAlarmHeadField.Value;
end;

procedure TNfirsBasicForm.DateTimeArrButtonClick(Sender: TObject);
begin
  If (DateTimeOutField.Value = 0) then 
    DateTimeArrField.Value := DateTimeAlarmField.Value
  else
    DateTimeArrField.Value := DateTimeOutField.Value;
  DateTimeArrField.TimeField.SetFocus;
end;

procedure TNfirsBasicForm.DateTimeContButtonClick(Sender: TObject);
begin
  If (DateTimeArrField.Value = 0) and (DateTimeOutField.Value = 0) then
    DateTimeContField.Value := DateTimeAlarmField.Value
  else if (DateTimeArrField.Value = 0) and (DateTimeOutField.Value > 0) then
    DateTimeContField.Value := DateTimeOutField.Value
  else
    DateTimeContField.Value := DateTimeArrField.Value;
  DateTimeContField.TimeField.SetFocus;
end;

procedure TNfirsBasicForm.DateTimeInButtonClick(Sender: TObject);
begin
  If DateTimeContField.Value = 0 then
    DateTimeInField.Value := DateTimeArrField.Value
  else
    DateTimeInField.Value := DateTimeContField.Value;
  DateTimeInField.TimeField.SetFocus;
end;

procedure TNfirsBasicForm.DateTimeInFieldExit(Sender: TObject);
begin
  EvLengthButtonClick(self);
end;

procedure TNfirsBasicForm.FirOrWildFieldClick(Sender: TObject);
begin
  If FNfirsForm<>nil then
    FNfirsForm.UpdateNodesBasedOnWildLand(False,FirOrWildField.checked);
end;

procedure TNfirsBasicForm.PeCityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  peStateField.Value := tdbfield('CITY','STATE');
  peZipField.Text    := substr(dbfield('CITY','ZIP'),1,5);
  CloseApollo('CITY');
end;

procedure TNfirsBasicForm.PropButtonClick(Sender: TObject);
Var PropID    : String;
    Position  : Integer;//used for the farmingdale function
begin
  inherited;
  If SelectPropID(PropID,'STRNUM') then begin
    Open_Query('PROP',false,'SELECT * FROM PROP WHERE PROPID = ' + PropID);
    StrNumField.Value     := RemoveLeftZero(alltrim(tdbfield('PROP','STRNUM')));
    PropIDField.Value     := tdbField('PROP','PROPID');
    StreetField.Value     := tdbfield('PROP','STREET');
    RoomAptField.Value    := tdbfield('PROP','ROOMAPT');
    CityField.Value       := tdbfield('PROP','CITY');
    StateField.Value      := tdbfield('PROP','STATE');
    ZipField.Value        := tdbfield('PROP','ZIP');
    PhoneField.Value      := tdbfield('PROP','PHONE');
    CrossDirField.Value   := tdbfield('PROP','CROSS1');
    PFirstNameField.Value := tdbfield('PROP','PFIRSTNAME');
    if FireID = '52280' then
      BusNameField.Value  := tdbfield('PROP','PLASTNAME')
    else
      PLastNameField.Value  := tdbfield('PROP','PLASTNAME');
    if FireID ='08010' then
      BusNameField.Value  := tdbfield('PROP','BUSNAME');
    OLastNameField.Value  := tdbfield('PROP','OLASTNAME');
    OFirstNameField.Value := tdbfield('PROP','OFIRSTNAME');
    OMIField.Value        := tdbfield('PROP','OMI');
    OStreetField.Value    := tdbfield('PROP','OADDRESS');
    PEStrNumField.Value   := RemoveLeftZero(alltrim(tdbfield('PROP','STRNUM')));
    PEStreetField.Value   := tdbfield('PROP','STREET');
    PERoomAptField.Value  := tdbfield('PROP','ROOMAPT');
    PECityField.Value     := tdbfield('PROP','CITY');
    PEStateField.Value    := tdbfield('PROP','STATE');
    PEZipField.Value      := tdbfield('PROP','ZIP');
    OCityField.Value      := tdbfield('PROP','OCITY');
    OStateField.Value     := tdbfield('PROP','OSTATE');
    OZipField.Value       := tdbfield('PROP','OZIP');
    OPhoneField.Value     := tdbfield('PROP','OPHONE');
    FixPropField.Value    := tdbfield('PROP','FIXPROP');
    OPOBOXField.Value     := tdbfield('PROP','OPOBOX');

    If FireId = '72014' then
      N5DistrictIDField.Value  := SqlLookup(tdbfield('PROP','PRIMARYDISTRICT'),'CODE','N5DISTRICT','N5DISTRICTID');

    If ASCVAR = 'NJ15006' then begin
      BusNameField.Value  := tdbfield('PROP','COMPANY');
      MIField.Value       := tdbfield('PROP','PMI');
    end;

    If (FireId = '30014') then begin
      Position                := Pos(' ',alltrim(getfield('PROP','OADDRESS').AsString));
      OStreetField.Value      := RightStr(tdbfield('PROP','OADDRESS'), (Length(tdbfield('PROP','OADDRESS'))-Position));
      OStrNumField.Value      := LeftStr(tdbfield('PROP','OADDRESS'), Position);
    end;
    CloseApollo('PROP');
    TNFirsForm(GetFormOfType(TNfirsForm)).SaveButton.Enabled := true;
  end;
end;

procedure TNfirsBasicForm.ClearButtonClick(Sender: TObject);
begin
  NarrField.Value := '';
end;

procedure TNfirsBasicForm.AddRPanel(Sender: TObject);
var b: TNfirsBasicForm;
    n: TNfirsForm;
begin
  n                                         := TNfirsForm(GetFormOfType(TNfirsForm));
  RPanelForm                                := TRPanelForm.create(application,n.pk);
  RPanelForm.BorderIcons                    := [];
  RPanelForm.BorderStyle                    := forms.bsNone;
  If mFireID = '81000' then
    RPanelForm.Height := 1500;
  If KForm then
    NfirsMainScrollBox.VertScrollBar.Range    := NfirsMainScrollBox.VertScrollBar.Range + RPanelForm.Height - RPanel.Height - K1Panel.Height - K2Panel.Height
  else
    NfirsMainScrollBox.VertScrollBar.Range    := NfirsMainScrollBox.VertScrollBar.Range + RPanelForm.Height - RPanel.Height - NfirsInvBrowse.Height;
  NfirsMainScrollbox.VertScrollBar.Position := 0;
  RpanelForm.SetSubFormParent(RPanel);
  rpanel.visible                            := True;
end;

procedure TNfirsBasicForm.EvLengthFieldEnter(Sender: TObject);
var rNewLength : Real;
    bContinue  : Boolean;
begin
  If (DateTimeInField.Value > 0) and (DateTimeAlarmField.Value > 0) then begin
    rNewLength := 24 * (DateTimeInField.Value - DateTimeAlarmField.Value);
    If (AnyStrToFloat(EvLengthField.Value) = 0) then
      bContinue := True
    else begin
      If (formatfloat('###,##0.00',anystrtofloat(EvLengthField.Value))<> formatfloat('###,##0.00',rNewLength)) then
        bcontinue := BooleanMessageDlg('Replace length of '+formatfloat('##0.00',AnyStrToFloat(EvLengthField.Value))+' with '+formatfloat('##0.00',rNewLength))
      else
        bContinue := False;
    end;
    If bContinue then
      EvLengthField.Value := FormatFloat('###.##',rNewLength );
  end;
end;

procedure TNfirsBasicForm.EvLengthButtonClick(Sender: TObject);
begin
  If (DateTimeInField.Value > 0) and (DateTimeAlarmField.Value > 0) then
    EvLengthField.Value := FormatFloat('###.##',24 * (DateTimeInField.Value - DateTimeAlarmField.Value) );

  If  ((FireId = 'HARFO') or UpdateNfirsEvlength) and (BooleanMessageDlg('Update Attendance Manpower Hours with Event Length?')) then begin
    RunSQL('UPDATE NFIRSATT SET EVLENGTH = ' + AddExpr(EvLengthField.Value) + ' WHERE NFIRSATT.NFIRSMAINID = ' + PK);
  end;
end;

procedure TNfirsBasicForm.K2FromK1ButtonClick(Sender: TObject);
Var NfirsForm : TNfirsForm;
begin
  OBusinessField.Value     := BusNameField.Value;
  OPhoneField.Value        := IIf(alltrim(substr(PhoneField.Value,1,3)) = '','',PhoneField.Value);
  OPREField.Value          := NAMEPREField.Value;
  OFIRSTNAMEField.Value    := PFIRSTNAMEField.Value;
  OMIField.Value           := MIField.Value;
  OLASTNAMEField.Value     := PLASTNAMEField.Value;
  OSUFFField.Value         := NAMESUFField.Value;
  OSTRNUMField.Value       := PESTRNUMField.Value;
  OSTREETPREField.Value    := PEPREField.Value;
  OSTREETField.Value       := PESTREETField.Value;
  OTYPEField.Value         := PETYPEField.Value;
  OSTREETSUFField.Value    := PESUFFField.Value;
  OPOBOXField.Value        := PEPOBOXField.Value;
  OROOMAPTField.Value      := PEROOMAPTField.Value;
  OCITYField.Value         := PECITYField.Value;
  OSTATEField.Value        := PESTATEField.Value;
  OZIPField.Value          := PEZIPField.Value;
  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;

procedure TNfirsBasicForm.K1FromBButtonClick(Sender: TObject);
Var NfirsForm : TNfirsForm;
begin
  peStrNumField.Value  := StrNumField.Value;
  pePreField.Value     := StreetPreField.Value;
  peStreetField.Value  := StreetField.Value;
  peTypeField.Value    := StreetTypeField.Value;
  peSuffField.Value    := StreetSuffField.Value;
  PeRoomAptField.Value := ROOMAPTField.Value;
  PeCityField.Value    := CityField.Value;
  peStateField.Value   := StateField.Value;
  pezipfield.Value     := ZipField.Value;
  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;

procedure TNfirsBasicForm.K2FromBButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  OSTRNUMField.Value       := STRNUMField.Value;
  OSTREETPREField.Value    := STREETPREField.Value;
  OSTREETField.Value       := STREETField.Value;
  OTYPEField.Value         := STREETTYPEField.Value;
  OSTREETSUFField.Value    := STREETSUFFField.Value;
  OROOMAPTField.Value      := ROOMAPTField.Value;
  OCITYField.Value         := CITYField.Value;
  OSTATEField.Value        := STATEField.Value;
  OZIPField.Value          := ZIPField.Value;
  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;

procedure TNfirsBasicForm.MSameAsButtonClick(Sender: TObject);
Var NfirsForm: TNfirsForm;
begin
  MemReportCode.Value     := MemOfficeCode.Value;
  MemRepField.Value       := OffChargeField.Value;
  MRFIRSTField.Value      := OCFIRSTField.Value;
  MRMIField.Value         := OCMIField.Value;
  MemRankField.Value      := OffRankField.Value;
  MemAssField.Value       := OffAssField.Value;
  MemDateField.Value      := OffDateField.Value;

  NfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If NfirsForm <> nil then
    NfirsForm.SaveButton.Enabled := true;
end;

procedure TNfirsBasicForm.ResourceButtonClick(Sender: TObject);
begin
  TNfirsBasicForm.UpdateResource(FPK);
end;

procedure TNfirsBasicForm.mDeptFieldEnter(Sender: TObject);
begin
  mDeptField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID ORDER BY FDID';
end;

procedure TNfirsBasicForm.mDeptFieldSuccessfulValidate(Sender: TObject);
begin
  Open_Query('FDID',false,'SELECT STATE FROM FDID WHERE FDID = ' + AddExpr(mDeptField.Value));
  MutStateField.Value := tdbfield('FDID','STATE');
  CloseApollo('FDID');
end;

procedure TNfirsBasicForm.DoAfterSetControls(Sender: TObject);
var mFireMarshalChanges  : String;
    bMakeFieldsInvisible : Boolean;
begin
  SetWildLandFields;
  NfirsMaidField.Text := GetNfirsMaid(MaidField.Text, FPK);

  If DispCallIDField.Value <> '' then
    ShowOnMap.enabled := AnyStrToFloat(sqllookup(DispCallIDField.Value,'DISPCALLID','DISPCALL','LATITUDE'))>0
  else
    ShowOnMap.Enabled := False;
  if (mFireID <> '28017') then begin
    countynumlabel.visible := countynumfield.value <> '';
    countynumfield.visible := countynumfield.value <> '';
  end;
  if mFireID = '02480' then begin
    countynumlabel.visible  := True;
    countynumfield.Visible  := True;
    countyNumField.Enabled  := True;
  end;

  countynumfield.enabled := False;
  If (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then
    SetMemberMakingReportBasedOnLoggedOnUser;
  if mFireid = '10700' then begin
    if CheckSecVar('INCSETUP') then exit;
    SetLoudounVars(mFireMarshalChanges,bMakeFieldsInvisible,pk);
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsbas',losspropfield,'LOSSPROP');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsbas',losscontfield,'LOSSCONT');
    proplossunknown.enabled    := losspropfield.enabled;
    contentlossunknown.enabled := losscontfield.enabled;
  end;
end;

procedure TNfirsBasicForm.SetMemberMakingReportBasedOnLoggedOnUser;
var mPersid: String;
begin
    if not ViewOnly then begin
      if MemReportCode.Value='' then  begin
        if SecIDVar<>'' then begin
          mPersid := SQLLookUp(SecIDVar,'SECID','SEC','PERSID');
          if mPersid <> '' then begin
            if BooleanMessageDlg('Would you like to set yourself as the Member Making Report?') then begin
              MemReportCode.Value := mPersid;
              LoadMFields(MemReportCode.Value,'MEMBERREPORT');
            end;
          end;
        end;
      end;
    end;
end;    

end.  
