unit NfirsArsonInv;
      
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
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AdvGroupBox,
  ALPINEDATETIME,
  AlpinePanel,
  AdvPageControl,
  ComCtrls,
  AlpineMemo,
  htmlbtns,
  AlpineBaseSummaryReport,
  Alpinecheck,
  AlpineLookGrid,
  MySBox,
  Jpeg;

type
  TNfirsArsonInvForm = class(TNormalBaseForm)
    ArsonControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    NfirsArsonTab: TAdvTabSheet;
    Panel1: TPanel;
    AdvPanel8: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    PersonTab: TAdvTabSheet;
    TitleField: TLabel;
    CaseActionTab: TAdvTabSheet;
    ArsonHistBrowse: TAlpineBlockBrowse;
    CaseTab: TAdvTabSheet;
    StructTab: TAdvTabSheet;
    VehicleTab: TAdvTabSheet;
    Panel2: TPanel;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel3: TAlpinePanel;
    Panel3: TPanel;
    AlpinePanel4: TAlpinePanel;
    AlpinePanel5: TAlpinePanel;
    InsMortTab: TAdvTabSheet;
    ArsonPersonBrowse: TAlpineBlockBrowse;
    AlpinePanel7: TAlpinePanel;
    AlpinePanel6: TAlpinePanel;
    Label37: TLabel;
    InsAgentNameField: TAlpineEdit;
    Label38: TLabel;
    InsAgentPhoneField: TAlpineEdit;
    Label39: TLabel;
    InsAgentExtField: TAlpineEdit;
    Label40: TLabel;
    InsAdjustNameField: TAlpineEdit;
    Label41: TLabel;
    InsAdjustPhoneField: TAlpineEdit;
    Label42: TLabel;
    InsAdjustExtField: TAlpineEdit;
    Label43: TLabel;
    insCompNameField: TAlpineEdit;
    Label44: TLabel;
    InsAddressField: TAlpineEdit;
    Label45: TLabel;
    InsCSZField: TAlpineEdit;
    Label47: TLabel;
    InsPhoneField: TAlpineEdit;
    Label48: TLabel;
    InsFaxField: TAlpineEdit;
    Label49: TLabel;
    InsTypeField: TAlpineLookup;
    Label50: TLabel;
    InsPolNumField: TAlpineEdit;
    Label51: TLabel;
    InsClaimNumField: TAlpineEdit;
    Label52: TLabel;
    InsIssuedField: TAlpineDateTime;
    Label53: TLabel;
    InsExpiresField: TAlpineDateTime;
    InsPropAmountField: TAlpineEdit;
    InsPropLossField: TAlpineEdit;
    InsContAmountField: TAlpineEdit;
    InsContLossField: TAlpineEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    MortCompNameField: TAlpineEdit;
    Label59: TLabel;
    MortAddressField: TAlpineEdit;
    Label60: TLabel;
    MortCSZField: TAlpineEdit;
    Label62: TLabel;
    MortPhoneField: TAlpineEdit;
    Label63: TLabel;
    MortFaxField: TAlpineEdit;
    Label64: TLabel;
    MortLoanNumField: TAlpineEdit;
    MortPurchaseField: TAlpineDateTime;
    Label65: TLabel;
    MortLoanStatField: TAlpineLookup;
    Label66: TLabel;
    MortPrincipalField: TAlpineEdit;
    Label67: TLabel;
    Label68: TLabel;
    MortTermField: TAlpineEdit;
    Label69: TLabel;
    MortMonthPayField: TAlpineEdit;
    Label71: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label29: TLabel;
    Label72: TLabel;
    Label80: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Label94: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label99: TLabel;
    Label95: TLabel;
    Label98: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label103: TLabel;
    Label104: TLabel;
    Label105: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Shape1: TShape;
    Label116: TLabel;
    Label117: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Shape2: TShape;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    AdvTabSheet2: TAdvTabSheet;
    ArsonArrestBrowse: TAlpineBlockBrowse;
    ArsonImageTab: TAdvTabSheet;
    EvidenceTab: TAdvTabSheet;
    ArsonEvidenceBrowse: TAlpineBlockBrowse;
    AlpinePanel12: TAlpinePanel;
    Label164: TLabel;
    Label167: TLabel;
    Label166: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    Label165: TLabel;
    Label168: TLabel;
    Label70: TLabel;
    MobMakeField: TAlpineLookup;
    MobLicField: TAlpineEdit;
    MobStateField: TAlpineEdit;
    MobSerField: TAlpineEdit;
    MobYearField: TAlpineEdit;
    MobModelField: TAlpineEdit;
    MobDamageField: TAlpineEdit;
    Panel5: TPanel;
    ArsonNarrTab: TAdvTabSheet;
    ArsonNarrBrowse: TAlpineBlockBrowse;
    Panel0B: TAlpinePanel;
    NarrField: TAlpineMemo;
    Panel4: TPanel;
    AlpinePanel2: TAlpinePanel;
    Label1: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label36: TLabel;
    AddressField: TAlpineEdit;
    ArsonStatIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    ARCaseNumbField: TAlpineEdit;
    ArsonSubjectIDField: TAlpineLookup;
    AssignedByField: TAlpineEdit;
    PropSubTypeIDField: TAlpineLookup;
    AlpinePanel11: TAlpinePanel;
    StructTabField: TAlpineCheckBox;
    VehicleTabField: TAlpineCheckBox;
    InsTabField: TAlpineCheckBox;
    Panel6: TPanel;
    AlpinePanel14: TAlpinePanel;
    AlpinePanel15: TAlpinePanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DateTimeAlarmField: TAlpineDateTime;
    DateTimeReqField: TAlpineDateTime;
    DateTimeStartField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    Label23: TLabel;
    Label25: TLabel;
    FixPropField: TAlpineLookup;
    ComplexField: TAlpineLookup;
    NfirsMainIDField: TAlpineLookup;
    Label137: TLabel;
    strnumField: TAlpineEdit;
    pStrNumLabel: TLabel;
    StreetField: TAlpineLookup;
    Label138: TLabel;
    pRoomAptLabel: TLabel;
    RoomAptField: TAlpineEdit;
    CityField: TAlpineLookup;
    pCityLabel: TLabel;
    pStateLabel: TLabel;
    pZipLabel: TLabel;
    ZipField: TAlpineEdit;
    Label5: TLabel;
    FDIDField: TAlpineLookup;
    Panel7: TPanel;
    AlpinePanel9: TAlpinePanel;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    Label134: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    AlpinePanel10: TAlpinePanel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    Label130: TLabel;
    StrNameField: TAlpineLookup;
    StrTypeField: TAlpineLookup;
    BuildStatField: TAlpineLookup;
    ConsTypeField: TAlpineLookup;
    DamageField: TAlpineLookup;
    AlpinePanel13: TAlpinePanel;
    StrNarrField: TAlpineMemo;
    MobTypeField: TAlpineLookup;
    SmokeDetField: TAlpineLookup;
    HeatDetField: TAlpineLookup;
    GasDetField: TAlpineLookup;
    FlameDetField: TAlpineLookup;
    AutoManAlarmField: TAlpineLookup;
    AutoSprField: TAlpineLookup;
    AlpinePanel8: TAlpinePanel;
    AlpineCheckBox35: TAlpineCheckBox;
    AlpineCheckBox36: TAlpineCheckBox;
    AlpineCheckBox37: TAlpineCheckBox;
    AlpineCheckBox38: TAlpineCheckBox;
    AlpineCheckBox39: TAlpineCheckBox;
    NfirsStrTab: TAdvTabSheet;
    EvidenceTabField: TAlpineCheckBox;
    PersIDReviewField: TAlpineLookup;
    Label2: TLabel;
    DatePersIDField: TAlpineDateTime;
    Label3: TLabel;
    Label4: TLabel;
    DateReviewField: TAlpineDateTime;
    MortTabField: TAlpineCheckBox;
    PersonTabField: TAlpineCheckBox;
    Label6: TLabel;
    WeatherField: TAlpineEdit;
    Label7: TLabel;
    WindField: TAlpineEdit;
    SecRecAudBrowse: TAlpineBlockBrowse;
    EvLengthButton: TAlpineGlowButton;
    EvLengthField: TAlpineEdit;
    Label8: TLabel;
    StateField: TAlpineLookup;
    procedure FormShow(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PersonTabShow(Sender: TObject);
    procedure AdvTabSheet2Show(Sender: TObject);
    procedure ArsonImageTabShow(Sender: TObject);
    procedure StructTabFieldClick(Sender: TObject);
    procedure EvidenceTabShow(Sender: TObject);
    procedure ArsonNarrTabShow(Sender: TObject);
    procedure VehicleTabFieldClick(Sender: TObject);
    procedure InsTabFieldClick(Sender: TObject);
    procedure NfirsArsonTabShow(Sender: TObject);
    procedure NFIRSStrTabShow(Sender: TObject);
    procedure EvidenceTabFieldClick(Sender: TObject);
    procedure PersonTabFieldClick(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure NfirsMainIDFieldEnter(Sender: TObject);
    procedure NfirsMainIDFieldSuccessfulValidate(Sender: TObject);
  private
    { Private declarations }
    F     : TBaseSubTabForm;
    procedure ArsonNarrNewRecord(DataSet: TDataSet);
    function  GetInsMortTabCaption: String;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure ArsonHistNewRecord(DataSet: TDataSet);
    procedure ArsonPersonNewRecord(DataSet: TDataSet);
    procedure ArsonEvidenceNewRecord(DataSet: TDataSet);
    procedure ArsonArrestNewRecord(DataSet: TDataSet);
  end;

var
  ArsonHistID       : String;
  ArsonPersonID     : String;
  ArsonEvidenceID   : String;
  NfirsArsonID      : String;
  NfirsArsonInvForm : TNfirsArsonInvForm;

implementation
uses GenFunc,
     ArsonHist,
     FormFunc,
     CommonVar,
     ArsonPerson,
     ArsonEvidence,
     ArsonArrest,
     ArsonImage,
     ArsonNarr,
     NfirsArsonInvRep,
     NfirsArs,
     NfirsArsonStr,
     CommonFunc;

{$R *.DFM}

procedure TNfirsArsonInvForm.FormCreate(Sender: TObject);
begin
  inherited;
  ArsonHistBrowse.Setup('ARSONHIST','NFIRSARSONID',pk,TArsonHistForm,ArsonHistNewRecord);
  TitleImage.Picture.Icon   := GetGlowImageIcon('OFFICE32');
  StrNameField.SQLExpr      := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('STRNAME');
  StrTypeField.SQLExpr      := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('STRTYPE');
  BuildStatField.SQLExpr    := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('BUILDSTAT');
  ConsTypeField.SQLExpr     := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('CONSTYPE');
  DamageField.SQLExpr       := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('DAMAGE');

  SmokeDetField.SQLExpr     := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('SMOKEDET');
  HeatDetField.SQLExpr      := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('HEATDET');
  GasDetField.SQLExpr       := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('GASDET');
  FlameDetField.SQLExpr     := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('FLAMEDET');
  AutoManAlarmField.SQLExpr := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('AUTOMANALARM');
  AutoSprField.SQLExpr      := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('AUTOSPR');

  InsTypeField.SQLExpr      := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('INSTYPE');
  MortLoanStatField.SQLExpr := 'SELECT * FROM ARSONCODE WHERE FIELDNAME = ' + AddExpr('MORTLOANSTAT');
end;

procedure TNfirsArsonInvForm.ArsonHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSARSONID').AsString := pk;
end;

procedure TNfirsArsonInvForm.FormShow(Sender: TObject);
begin
  inherited;
  Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, SITFOUND, DATETIMEALARM, STRNUM, STREET, PLASTNAME, CITY, ROOMAPT,STATE, ZIP FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(NfirsMainIDField.Value));
  If FdidField.Value = '' then
    FdidField.Value            := tdbfield('NFIRSMAIN','FDID');
  If StrNumField.Value = '' then
    StrNumField.Value          := tdbfield('NFIRSMAIN','STRNUM');
  If StreetField.Value = '' then
    StreetField.Value          := tdbfield('NFIRSMAIN','STREET');
  If RoomAptField.Value = '' then
    RoomAptField.Value         := tdbfield('NFIRSMAIN','ROOMAPT');
  If CityField.Value = '' then
    CityField.Value            := tdbfield('NFIRSMAIN','CITY');
  If StateField.Value = '' then
    StateField.Value           := tdbfield('NFIRSMAIN','STATE');
  If alltrim(substr(ZipField.Value,1,1)) = '' then
  ZipField.Value             := alltrim(tdbfield('NFIRSMAIN','ZIP'));
  CloseApollo('NFIRSMAIN');

  TitleField.Caption            := 'Case '  + ARCaseNumbField.Text + ' ' + AddressField.Text;

  StructTab.TabVisible          := StructTabField.Checked;
  NfirsStrTab.TabVisible        := True;

  VehicleTab.TabVisible         := VehicleTabField.Checked;
  InsMortTab.Caption            := GetInsMortTabCaption;
  CaseTab.TabVisible            := false;
  NfirsArsonTab.TabVisible      := true;
  ArsonControl.ActivePage       := GenTab;
  SaveButton.Enabled            := false;
  EvidenceTab.TabVisible        := Not EvidenceTabField.Checked;
  PersonTab.TabVisible          := Not PersonTabField.Checked;

  NfirsArsonID                  := pk;

  MobTypeField.ReferencingTable := 'N5MOBTYPE';
  MobMakeField.ReferencingTable := 'N5MOBMAKE';
end;

function TNfirsArsonInvForm.GetInsMortTabCaption: String;
begin
  InsMortTab.TabVisible := InsTabField.Checked or MortTabField.Checked;
  If InsTabfield.Checked and Not MortTabField.Checked then
    GetInsMortTabCaption := 'Insurance'
  else if InsTabField.Checked and MortTabField.Checked then
    GetInsMortTabCaption := 'Insurance / Mortgage'
  else if Not InsTabField.Checked and MortTabField.Checked then
    GetInsMortTabCaption := 'Mortgage'
  else
    GetInsMortTabCaption := '';
end;

class procedure TNfirsArsonInvForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('CITY').AsString := ' ';
end;

procedure TNfirsArsonInvForm.NfirsArsonTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TNfirsArsonForm,NfirsArsonTab);
end;

procedure TNfirsArsonInvForm.NfirsMainIDFieldEnter(Sender: TObject);
begin
  inherited;
  NfirsMainIDField.SqlExpr := 'SELECT NFIRSMAINID, FDID, INCNUM, DATETIMEALARM, STRNUM, STREET ' +
                              'FROM NFIRSMAIN WHERE ' +
                              'DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',DateTimeAlarmField.Value-5)) + ' AND ' +
                              'DATETIMEALARM <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',DateTimeAlarmField.Value+5)) + ' ' +
                              'ORDER BY DATETIMEALARM DESC';
end;

procedure TNfirsArsonInvForm.NfirsMainIDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, SITFOUND, DATETIMEALARM, STRNUM, STREET, PLASTNAME, CITY, ROOMAPT,STATE, ZIP, COMPLEX, FIXPROP FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(NfirsMainIDField.Value));
  FdidField.Value            := tdbfield('NFIRSMAIN','FDID');
  StrNumField.Value          := tdbfield('NFIRSMAIN','STRNUM');
  StreetField.Value          := tdbfield('NFIRSMAIN','STREET');
  RoomAptField.Value         := tdbfield('NFIRSMAIN','ROOMAPT');
  CityField.Value            := tdbfield('NFIRSMAIN','CITY');
  StateField.Value           := tdbfield('NFIRSMAIN','STATE');
  ZipField.Value             := alltrim(tdbfield('NFIRSMAIN','ZIP'));
  ComplexField.Value         := tdbfield('NFIRSMAIN','COMPLEX');
  FixPropField.Value         := tdbfield('NFIRSMAIN','FIXPROP');
  CloseApollo('NFIRSMAIN');
end;

procedure TNfirsArsonInvForm.PersonTabShow(Sender: TObject);
begin
  inherited;
  ArsonPersonBrowse.Grid.DefaultRowHeight := 32;
  ArsonPersonBrowse.Setup('ARSONPERSON','NFIRSARSONID',pk,TArsonPersonForm,ArsonPersonNewRecord);
end;

procedure TNfirsArsonInvForm.NFIRSStrTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TNfirsArsonStrForm,NfirsStrTab);
end;

procedure TNfirsArsonInvForm.ArsonPersonNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSARSONID').AsString := pk;
  DataSet.FieldbyName('LNAME').AsString        := ' ';
end;

procedure TNfirsArsonInvForm.EvidenceTabFieldClick(Sender: TObject);
begin
  inherited;
  EvidenceTab.TabVisible      := Not EvidenceTabField.Checked;
end;

procedure TNfirsArsonInvForm.EvidenceTabShow(Sender: TObject);
begin
  inherited;
  ArsonEvidenceBrowse.Setup('ARSONEVIDENCE','NFIRSARSONID',pk,TArsonEvidenceForm,ArsonEvidenceNewRecord);
end;

procedure TNfirsArsonInvForm.EvLengthButtonClick(Sender: TObject);
begin
  inherited;
   EvLengthFieldEnter(self);
end;

procedure TNfirsArsonInvForm.EvLengthFieldEnter(Sender: TObject);
Var EvLength : Real;
begin
  inherited;
  EvLength            := 0;
  If (AnyStrToFloat(EvLengthField.Value) = 0) and (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then begin
    EvLength          := 24 * (DateTimeEndField.Value - DateTimeStartField.Value);
  end;
  EvLengthField.Value := FormatFloat('###.##',EvLength);
end;

procedure TNfirsArsonInvForm.AdvTabSheet2Show(Sender: TObject);
begin
  inherited;
  ArsonArrestBrowse.Setup('ARSONARREST','NFIRSARSONID',pk,TArsonArrestForm,ArsonArrestNewRecord);
end;

procedure TNfirsArsonInvForm.ArsonEvidenceNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSARSONID').AsString := pk;
  DataSet.FieldbyName('DESCR').AsString        := ' ';
end;

procedure TNfirsArsonInvForm.ArsonImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TArsonImageForm,ArsonImageTab);
  TArsonImageForm(F).ArsonImageBrowse.ButtonPanelVisible := false;
end;

procedure TNfirsArsonInvForm.ArsonNarrTabShow(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  ArsonNarrBrowse.Setup('ARSONNARR','NFIRSARSONID',pk,TArsonNarrForm,ArsonNarrNewRecord);
  SQLVar                              := ' WHERE SECRECAUD.TABLENAME = ' + AddExpr('NFIRSARSON') + ' AND SECRECAUD.TABLEID = ' + AddExpr(PK);
  SecRecAudBrowse.ExplicitWhereClause := SQLVar;
  SecRecAudBrowse.Setup('SECRECAUD');
end;

procedure TNfirsArsonInvForm.ArsonNarrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSARSONID').AsString  := pk;
  DataSet.FieldbyName('DESCR').AsString         := ' ';
  DataSet.FieldbyName('SECID').AsString         := SecIDVar;
  DataSet.FieldbyName('DATETIMEENT').AsDateTime := Now;             
end;                                                                                  

procedure TNfirsArsonInvForm.ArsonArrestNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NFIRSARSONID').AsString  := pk;
  DataSet.FieldbyName('DESCR').AsString         := ' ';
end;
                                                                                                   
procedure TNfirsArsonInvForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TNfirsArsonInvForm.PersonTabFieldClick(Sender: TObject);
begin
  inherited;
  PersonTab.TabVisible       := Not PersonTabField.Checked;
end;

procedure TNfirsArsonInvForm.StructTabFieldClick(Sender: TObject);
begin
  inherited;
  StructTab.TabVisible       := StructTabField.Checked;
end;

procedure TNfirsArsonInvForm.VehicleTabFieldClick(Sender: TObject);
begin
  inherited;
  VehicleTab.TabVisible      := VehicleTabField.Checked;
end;

procedure TNfirsArsonInvForm.InsTabFieldClick(Sender: TObject);
begin
  inherited;
  InsMortTab.Caption := GetInsMortTabCaption;
end;

initialization
  RegisterIndividualReport(TNfirsArsonInvRepForm,'NFIRSARSONINVREP', 'Fire Investigation Summary','NFIRSARSON','',False,10);

end. 
