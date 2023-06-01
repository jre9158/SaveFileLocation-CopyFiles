unit NFIRSMainRep;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  commonvar,
  forms,
  dialogs,
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AlpineBaseSummaryReport,
  applst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  printers,
  jpeg,
  QRXMLSFilt,
  QRXLSXFilt,
  EnPngGr,
  gtScrollingPanel,
  gtPDFViewer,
  gtPDFClasses,
  gtCstPDFDoc,
  gtExPDFDoc,
  gtExProPDFDoc,
  gtPDFDoc,
  gtViewerTypes,
  EnImgScr,
  EnPrint;

type
  TNFIRSMainRepForm = class(TAlpineBaseSummaryReportForm)
    DetailData: TQRBand;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    AddressField: TQRLabel;
    TimeAlarmField: TQRLabel;
    QRLabel1: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel2: TQRLabel;
    LocTypeField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;  
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ExpNumField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    KBand: TQRChildBand;
    SitFoundLabel: TQRLabel;
    OccupantLetter: TQRLabel;
    QRLabel17: TQRLabel;
    DateTimeAlarmField: TQRLabel;
    DateTimeOutField: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel18: TQRLabel;
    M5MaidDescrField: TQRLabel;
    DateTimeArrField: TQRLabel;
    QRLabel23: TQRLabel;
    DateTimeContField: TQRLabel;
    QRLabel24: TQRLabel;
    DateTimeInField: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    QRLabel49: TQRLabel;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    SitFoundField: TQRLabel;
    QRShape9: TQRShape;
    CensusField: TQRLabel;
    QRLabel57: TQRLabel;
    HazMatField: TQRLabel;
    ActionField: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRLabel70: TQRLabel;
    QRLabel71: TQRLabel;
    QRShape10: TQRShape;
    FixPropField: TQRLabel;
    ComplexField: TQRLabel;
    K2Band: TQRChildBand;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    NarrField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel30: TQRLabel;
    DetectorField: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel76: TQRLabel;
    FatFireField: TQRLabel;
    FatCivField: TQRLabel;
    InjCivField: TQRLabel;
    InjFireField: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel81: TQRLabel;
    QRLabel82: TQRLabel;
    QRLabel83: TQRLabel;
    QRLabel84: TQRLabel;
    QRLabel85: TQRLabel;
    QRLabel86: TQRLabel;
    QRLabel87: TQRLabel;
    QRLabel88: TQRLabel;
    QRLabel89: TQRLabel;
    QRLabel90: TQRLabel;
    QRLabel91: TQRLabel;
    OICField: TQRLabel;
    QRLabel93: TQRLabel;
    MMRField: TQRLabel;
    QRLabel95: TQRLabel;
    QRShape12: TQRShape;
    QRImage1: TQRImage;
    QRLabel92: TQRLabel;
    QRLabel96: TQRLabel;
    QRLabel98: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel102: TQRLabel;
    QRLabel104: TQRLabel;
    QRLabel106: TQRLabel;
    OffRankField: TQRLabel;
    OffAssField: TQRLabel;
    OffDateField: TQRLabel;
    MemDateField: TQRLabel;
    MemAssField: TQRLabel;
    MemRankField: TQRLabel;
    NFIRSFirBand: TQRSubDetail;
    QRLabel94: TQRLabel;
    QRLabel97: TQRLabel;
    QRLabel99: TQRLabel;
    QRLabel101: TQRLabel;
    QRLabel103: TQRLabel;
    QRLabel105: TQRLabel;
    QRLabel107: TQRLabel;
    QRLabel108: TQRLabel;
    NumResUnitField: TQRLabel;
    QRLabel109: TQRLabel;
    QRLabel110: TQRLabel;
    QRLabel115: TQRLabel;
    QRLabel116: TQRLabel;
    NumBuildField: TQRLabel;
    AcreBurnField: TQRLabel;
    QRLabel111: TQRLabel;
    QRLabel112: TQRLabel;
    QRShape14: TQRShape;
    QRLabel113: TQRLabel;
    OnSite1Field: TQRLabel;
    QRLabel117: TQRLabel;
    Storage1Field: TQRLabel;
    QRLabel119: TQRLabel;
    QRLabel120: TQRLabel;
    QRLabel121: TQRLabel;
    QRLabel122: TQRLabel;
    QRLabel123: TQRLabel;
    QRLabel124: TQRLabel;
    QRLabel125: TQRLabel;
    QRLabel126: TQRLabel;
    QRShape15: TQRShape;
    AppEMSField: TQRLabel;
    AppSuppField: TQRLabel;
    AppOthField: TQRLabel;
    PersEMSField: TQRLabel;
    PersSuppField: TQRLabel;
    PersOthField: TQRLabel;
    PersMiscField: TQRLabel;
    PersTotalField: TQRLabel;
    QRImage2: TQRImage;
    NFIRSStrBand: TQRSubDetail;
    QRLabel60: TQRLabel;
    QRImage3: TQRImage;
    QRShape16: TQRShape;
    QRLabel61: TQRLabel;
    QRLabel63: TQRLabel;
    LossPropField: TQRLabel;
    LossContField: TQRLabel;
    ValPropField: TQRLabel;
    ValContField: TQRLabel;
    mDeptField: TQRLabel;
    MutStateField: TQRLabel;
    MutIncNumField: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel62: TQRLabel;
    QRLabel64: TQRLabel;
    QRLabel65: TQRLabel;
    StrTypeDescr: TQRLabel;
    BuildStatField: TQRLabel;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRLabel67: TQRLabel;
    QRLabel114: TQRLabel;
    QRLabel118: TQRLabel;
    QRLabel127: TQRLabel;
    QRLabel128: TQRLabel;
    QRLabel129: TQRLabel;
    BldHeightField: TQRLabel;
    BelowGradeField: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    MainFloorSize: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel130: TQRLabel;
    QRLabel131: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel135: TQRLabel;
    QRLabel136: TQRLabel;
    QRLabel137: TQRLabel;
    FireOriginField: TQRLabel;
    FireSpreadField: TQRLabel;
    FlameDamageField: TQRLabel;
    QRShape24: TQRShape;
    QRLabel138: TQRLabel;
    QRLabel140: TQRLabel;
    ItemContrField: TQRLabel;
    TypeMatDesc: TQRLabel;
    NFIRSFirDEBand: TQRChildBand;
    QRLabel142: TQRLabel;
    QRLabel143: TQRLabel;
    AreaOriginField: TQRLabel;
    QRLabel145: TQRLabel;
    QRLabel146: TQRLabel;
    HeatSourceField: TQRLabel;
    ItemFirstField: TQRLabel;
    QRLabel149: TQRLabel;
    QRLabel150: TQRLabel;
    TypeMatField: TQRLabel;
    QRLabel152: TQRLabel;
    QRLabel153: TQRLabel;
    QRShape25: TQRShape;
    QRLabel154: TQRLabel;
    CauseIgnField: TQRLabel;
    QRShape13: TQRShape;
    QRShape26: TQRShape;
    QRLabel144: TQRLabel;
    QRLabel147: TQRLabel;
    QRLabel148: TQRLabel;
    ContIgnField: TQRLabel;
    QRLabel151: TQRLabel;
    QRLabel155: TQRLabel;
    QRLabel156: TQRLabel;
    HumanFactorField: TQRLabel;
    NFIRSFirNoFBand: TQRChildBand;
    QRLabel168: TQRLabel;
    QRLabel169: TQRLabel;
    NFIRSStrNoLBand: TQRChildBand;
    QRLabel139: TQRLabel;
    QRLabel141: TQRLabel;
    QRLabel170: TQRLabel;
    DetPres1Field: TQRLabel;
    NFIRSStrLBand: TQRChildBand;
    QRLabel171: TQRLabel;
    QRLabel172: TQRLabel;
    QRLabel173: TQRLabel;
    QRLabel175: TQRLabel;
    QRLabel176: TQRLabel;
    QRLabel177: TQRLabel;
    QRLabel179: TQRLabel;
    QRLabel180: TQRLabel;
    QRLabel181: TQRLabel;
    QRLabel183: TQRLabel;
    QRLabel184: TQRLabel;
    QRLabel185: TQRLabel;
    QRShape17: TQRShape;
    QRLabel187: TQRLabel;
    QRLabel188: TQRLabel;
    QRLabel189: TQRLabel;
    QRLabel191: TQRLabel;
    QRLabel192: TQRLabel;
    QRLabel193: TQRLabel;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    DetPres2Field: TQRLabel;
    DetPowerField: TQRLabel;
    DetEffField: TQRLabel;
    DetTypeField: TQRLabel;
    DetOpField: TQRLabel;
    DetFailField: TQRLabel;
    NFIRSFirFBand: TQRChildBand;
    NFIRSFireGBand: TQRChildBand;
    NFIRSFirNoHBand: TQRChildBand;
    QRLabel174: TQRLabel;
    QRLabel182: TQRLabel;
    QRLabel186: TQRLabel;
    QRLabel166: TQRLabel;
    QRLabel167: TQRLabel;
    FireSuppField: TQRLabel;
    QRLabel157: TQRLabel;
    QRLabel158: TQRLabel;
    QRLabel159: TQRLabel;
    QRShape27: TQRShape;
    EquInvField: TQRLabel;
    EquBrandField: TQRLabel;
    QRLabel160: TQRLabel;
    QRLabel161: TQRLabel;
    QRLabel162: TQRLabel;
    QRLabel163: TQRLabel;
    QRLabel164: TQRLabel;
    QRLabel165: TQRLabel;
    QRShape29: TQRShape;
    EquPowerField: TQRLabel;
    EquPortField: TQRLabel;
    QRLabel194: TQRLabel;
    QRLabel196: TQRLabel;
    QRLabel197: TQRLabel;
    NFIRSFirHBand: TQRChildBand;
    QRLabel190: TQRLabel;
    QRLabel198: TQRLabel;
    QRLabel199: TQRLabel;
    MobInvField: TQRLabel;
    QRLabel201: TQRLabel;
    QRLabel202: TQRLabel;
    QRLabel203: TQRLabel;
    MobTypeField: TQRLabel;
    QRShape28: TQRShape;
    MobMakeField: TQRLabel;
    QRLabel206: TQRLabel;
    QRShape32: TQRShape;
    MobModelField: TQRLabel;
    QRLabel208: TQRLabel;
    MobYearField: TQRLabel;
    QRLabel210: TQRLabel;
    MobLicField: TQRLabel;
    QRLabel212: TQRLabel;
    MobStateField: TQRLabel;
    QRLabel214: TQRLabel;
    MobSerField: TQRLabel;
    QRLabel216: TQRLabel;
    IncNumFooter: TQRLabel;
    QRLabel178: TQRLabel;
    QRLabel195: TQRLabel;
    QRLabel219: TQRLabel;
    QRLabel220: TQRLabel;
    ActionLabel: TQRLabel;
    SchdShiftNameIDField: TQRLabel;
    AlarmNumField: TQRLabel;
    N5DistrictIDField: TQRLabel;
    DispBoxIDField: TQRLabel;
    NFIRSStrNoMBand: TQRChildBand;
    NFIRSStrMBand: TQRChildBand;
    QRLabel75: TQRLabel;
    QRLabel217: TQRLabel;
    QRLabel218: TQRLabel;
    AutoPresField: TQRLabel;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    QRLabel222: TQRLabel;
    QRLabel223: TQRLabel;
    QRLabel224: TQRLabel;
    AutoTypeField: TQRLabel;
    QRLabel226: TQRLabel;
    QRLabel227: TQRLabel;
    QRLabel228: TQRLabel;
    NumSprField: TQRLabel;
    QRLabel230: TQRLabel;
    QRLabel231: TQRLabel;
    QRLabel232: TQRLabel;
    AutoOpField: TQRLabel;
    QRShape35: TQRShape;
    QRLabel234: TQRLabel;
    QRLabel235: TQRLabel;
    QRLabel236: TQRLabel;
    AutoFailField: TQRLabel;
    QRLabel238: TQRLabel;
    QRLabel239: TQRLabel;
    QRLabel240: TQRLabel;
    AutoPres1Field: TQRLabel;
    QRLabel21: TQRLabel;
    NfirsMaidDescrField: TQRLabel;
    QRLabel77: TQRLabel;
    QRLabel78: TQRLabel;
    QRLabel79: TQRLabel;
    EquSerialField: TQRLabel;
    EquModelField: TQRLabel;
    QRLabel204: TQRLabel;
    EquYearField: TQRLabel;
    rpanelBand: TQRChildBand;
    QRLabel80: TQRLabel;
    QRShape36: TQRShape;
    LogoImage: TQRImage;
    NFIRSSSBand: TQRChildBand;
    QRLabel200: TQRLabel;
    QRLabel205: TQRLabel;
    QRLabel207: TQRLabel;
    QRLabel209: TQRLabel;
    QRLabel211: TQRLabel;
    NFIRSSSIdNumberField: TQRLabel;
    NFIRSSSCaptionField: TQRLabel;
    NFIRSSSDescrField: TQRLabel;
    QRLabel213: TQRLabel;
    NFIRSAPPBand: TQRSubDetail;
    QRLabel13: TQRLabel;
    UnitNumField: TQRLabel;
    NFIRSAPPNarr: TQRLabel;
    QRLabel22: TQRLabel;
    NfirsImageBand: TQRSubDetail;
    PictureImage: TQRImage;
    NfirsImageHeader: TQRSubDetail;
    OccupantNumber: TQRLabel;
    OccupantTitle: TQRLabel;
    OccupantField: TQRLabel;
    OwnerLetter: TQRLabel;
    OwnerNumber: TQRLabel;
    OwnerTitle: TQRLabel;
    OwnerField: TQRLabel;
    KLine: TQRShape;
    NfirsInvTypeDescrField: TQRLabel;
    NfirsInvField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSFirBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSStrBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure rpanelBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSSSBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSAPPBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NfirsImageBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NFIRSMainIDTable : TApolloData;
    NFIRSMainTable   : TApolloData;
    NFIRSFirtable    : TApolloData;
    NFIRSStrTable    : TApolloData;
    NFirsAppTable    : TApolloData;
    NFIRSImageTable  : TApolloData;
    NFirsInvTable    : TApolloData;
    RPanelHeight     : Integer;
    IncludeUnits     : Boolean;
    KForm            : Boolean;
    function GetNfirsMaidDescr: String;
    function GetDollar(FieldName: String): String;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    class procedure OpenAndSetLabels(Form: TForm; mNfirsTable: TApolloData);
  end;
  function SetCode(mCode, mSeekVar: String): String; 
  function SetCheckBox2(mValue: String) : String;
{$I rednmx.inc}

var
  NFIRSMainRepForm: TNFIRSMainRepForm;

implementation
uses GenFunc,
     CommonFunc,
     FormFunc,
     SecSet,
     AlpineRepGen,
     SysRepMan,
     NfirsRPanelRep,
     NfirsBaseRPanelRep;
     
{$R *.DFM}

procedure TNFIRSMainRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  rpanelBand.Height      := 1;
end;

procedure TNFIRSMainRepForm.FormCreate(Sender: TObject);
var mNfirsRPanelRepForm : TNfirsRPanelRepForm;
    i                   : Integer;
    NoNfirsImage        : Boolean;
begin
  inherited;
  IncludeUnits           := False;
  NFIRSMainIDTable       := Open_Query(Sql);
  BaseReport.DataSet     := NFIRSMainIDTable.DataSource.DataSet;
  NFIRSMainTable         := Open_Query('SELECT * FROM NFIRSMAIN WHERE 1=2');
  NFIRSFirTable          := Open_Query('SELECT * FROM NFIRSFIR WHERE 1=2');
  NFIRSStrTable          := Open_Query('SELECT * FROM NFIRSSTR WHERE 1=2');
  NFirsAppTable          := Open_Query('SELECT * FROM NFIRSAPP WHERE 1=2');
  NFIRSImageTable        := Open_Query('SELECT * FROM NFIRSIMAGE WHERE 1=2');
  NFirsInvTable          := Open_Query('SELECT * FROM NFIRSINV WHERE 1=2');
  mNfirsRPanelRepForm    := TNfirsRPanelRepForm.Create(self,GetField(NFIRSMainIDTable,'NFIRSMAINID').AsInteger);

  If mNfirsRPanelRepForm.PrintRPanelReport then begin
    RPanelHeight           := mNfirsRPanelRepForm.TitleBand.Height;
    for i := mNfirsRPanelRepForm.TitleBand.controlCount-1 downto 0 do begin
      mNfirsRPanelRepForm.TitleBand.controls[i].Parent := rpanelBand;
    end;
    RPanelBand.Height      := RPanelHeight;
  end else
    RPanelBand.Enabled     := False;

  NFIRSSSBand.Enabled    := (SqlTableRecCount('SELECT COUNT(*) FROM NFIRSSSSETUP') > 0);

  NFIRSAPPBand.DataSet   := NFirsAppTable.DataSource.DataSet;
  NFIRSImageBand.DataSet := NFIRSImageTable.DataSource.DataSet;
  If mFireID = '52280' then begin
    If CheckModule('QUEUE') then
      IncludeUnits := BooleanMessageDlg('Include Unit Reports?')
    else
      NFIRSAPPBand.Height := 0;
  end else
    NFIRSAPPBand.Height := 0;

  if IncludeUnits then begin
    NFirsAppTable.UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + AddExpr(GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString) + ' AND NARR IS NOT NULL');
    NFIRSAPPBand.Enabled := NFirsAppTable.RecordsExist;
  end;

  AlpineBaseFooter.Enabled     := true;
  NFIRSFirTable.UpdateSQL('SELECT * FROM NFIRSFIR WHERE NFIRSMAINID = ' + AddExpr(GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString));
  If NFIRSFirTable.RecordsExist then begin
    NFIRSFirBand.enabled    := true;
    NFIRSFirDEBand.enabled  := true;
    NFIRSFirNoFBand.Enabled := (tdbfield(NFIRSFirTable,'EQUINV') = '') or (tdbfield(NFIRSFirTable,'EQUINV') = 'NNN') or (tdbfield(NFIRSFirTable,'EQUINV') = 'UUU');
    NFIRSFirFBand.enabled   := Not NFIRSFirNoFBand.Enabled;
    NFIRSFireGBand.enabled  := true;
    NFIRSFirNoHBand.Enabled := (tdbfield(NFIRSFirTable,'MOBINV') = '') or (tdbfield(NFIRSFirTable,'MOBINV') = 'N');
    NFIRSFirHBand.enabled   := Not NFIRSFirNoHBand.Enabled;
  end else begin
    NFIRSFirBand.enabled    := false;
    NFIRSFirDEBand.enabled  := false;
    NFIRSFirNoFBand.Enabled := false;
    NFIRSFirFBand.enabled   := false;
    NFIRSFireGBand.enabled  := false;
    NFIRSFirNoHBand.Enabled := false;
    NFIRSFirHBand.enabled   := false;
  end;

  if not NFIRSFIRBand.Enabled then begin
  end;

  NFIRSStrTable.UpdateSQL('SELECT * FROM NFIRSSTR WHERE NFIRSMAINID = ' +AddExpr(GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString));
  If NFIRSStrTable.RecordsExist then begin
    NFIRSStrBand.enabled    := true;
    NFIRSStrNoLBand.Enabled := Not (tdbfield(NFIRSStrTable,'DETPRES') = '1') or (tdbfield(NFIRSStrTable,'DETPRES') = '');
    NFIRSStrLBand.Enabled   := (tdbfield(NFIRSStrTable,'DETPRES') = '1');
    NFIRSStrNoMBand.Enabled := ( Not (tdbfield(NFIRSStrTable,'AUTOPRES') = '1') and Not (tdbfield(NFIRSStrTable,'AUTOPRES') = '2') ) or (tdbfield(NFIRSStrTable,'AUTOPRES') = '');
    NFIRSStrMBand.Enabled   := (tdbfield(NFIRSStrTable,'AUTOPRES') = '1') or (tdbfield(NFIRSStrTable,'AUTOPRES') = '2');
  end else begin
    NFIRSStrBand.enabled    := false;
    NFIRSStrNoLBand.Enabled := false;
    NFIRSStrLBand.Enabled   := false;
    NFIRSStrNoMBand.Enabled := false;
    NFIRSStrMBand.Enabled   := false;
  end;

  NoNfirsImage := false;
  If FormExists('AlpineReportGenerator') then
    NoNfirsImage := SQLLookUp(AlpineReportGenerator.SysRepID,'SYSREPID','SYSREP','REPORTCODE') = 'INCNFIRSMAINNOIMAGE';
  if MFIREID = '12002' then
    NoNfirsImage := true;
  If NoNfirsImage then begin
    NfirsImageBand.enabled        := false;
    NfirsImageHeader.enabled      := false;
    NfirsImageHeader.ForceNewPage := false;
  end else begin
    NfirsImageTable.UpdateSQL('SELECT * FROM NFIRSIMAGE WHERE NFIRSMAINID = ' + pkValue(GetField(NfirsMainIDTable,'NFIRSMAINID').AsString) + ' AND FILEEXT = ' + AddExpr('JPG'));
    If NfirsImageTable.RecordsExist then begin
      NfirsImageBand.enabled        := true;
      NfirsImageHeader.enabled      := true;
      NfirsImageHeader.ForceNewPage := true;
    end else begin
      NfirsImageBand.enabled        := false;
      NfirsImageHeader.enabled      := false;
      NfirsImageHeader.ForceNewPage := false;
    end;
  end;  

  PrintLogo(LogoImage);

  Open_Query('NFIRSSET',false,'SELECT KFORM FROM NFIRSSET WHERE FDID = ' + AddExpr(FireID));
  KForm := (tdbfield('NFIRSSET','KFORM') = 'Y');
  CloseApollo('NFIRSSET');
end;

function PrintTime(TimeVar: TDateTime): String;
begin
  If TimeVar = 0 then
    PrintTime := ''
  else
    PrintTime := FormatDateTime('MM/DD/YYYY HH:NN:SS',TimeVar);
end;

procedure TNFIRSMainRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  NFIRSMainTable.UpdateSQL('SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + AddExpr(GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString));

  IncNumFooter.Caption         := mFireDept;
  FireDeptField.Caption        := SqlLookUp(tdbfield(NFIRSMainTable,'FDID'),'FDID','FDID','DEPTNAME');
  DateAlarmField.Caption       := FormatDateTime('MM/DD/YYYY',GetField(NFIRSMainTable,'DATETIMEALARM').AsDateTime);
  TimeAlarmField.Caption       := FormatDateTime('HH:NN:SS',GetField(NFIRSMainTable,'DATETIMEALARM').AsDateTime);
  IncNumField.Caption          := substr(dbfield(NFIRSMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSMainTable,'INCNUM'),5,6);
  ExpNumField.Caption          := dbfield(NFIRSMainTable,'EXPNUM');
  CensusField.Caption          := dbfield(NFIRSMainTable,'CENSUS');

  if MFireID = '20019' then begin
    QRLabel83.Caption := 'Dispatched';
    QRLabel20.Caption := 'Responding';
  end;

  LocTypeField.Caption         := SQLLookUp(dbfield(NFIRSMainTable,'LOCTYPE'),'CODE','N5LOCTYPE','DESCR');
  SitFoundLabel.Caption        := 'Incident Type:  ' + tdbfield(NFIRSMainTable,'SITFOUND');
  SitFoundField.Caption        := SQLLookUp(dbfield(NFIRSMainTable,'SITFOUND'),'CODE','N5INCTYPE','DESCR');
  if MFireID= '18084' then
    SitFoundField.Caption        := dbfield(NFIRSMainTable,'SITFOUND') + ' ' + SQLLookUp(dbfield(NFIRSMainTable,'SITFOUND'),'CODE','N5INCTYPE','DESCR');

  mDeptField.Caption           := dbfield(NFIRSMainTable,'MDEPT');
  MutStateField.Caption        := dbfield(NFIRSMainTable,'MUTSTATE');
  MutIncNumField.Caption       := dbfield(NFIRSMainTable,'MUTINCNUM');

  AddressField.Caption         := alltrim(alltrim(dbField(NFIRSMainTable,'STRNUM')) + ' ' + tdbField(NFIRSMainTable,'STREET')) + IIf( tdbField(NFIRSMainTable,'ROOMAPT') = '','',' Apt or Room ' + tdbField(NFIRSMainTable,'ROOMAPT')) + #10 + #13 +
                                  tdbField(NFIRSMainTable,'CITY') + ', ' + dbField(NFIRSMainTable,'STATE') + '  ' + substr(dbField(NFIRSMainTable,'ZIP'),1,5) + #10 + #13 +
                                  IIf(tdbfield(NFIRSMainTable,'CROSS1') = '','','Cross Street: ' + tdbfield(NFIRSMainTable,'CROSS1'));

  DateTimeAlarmField.Caption   := PrintTime(GetField(NFIRSMainTable,'DATETIMEALARM').AsDateTime);
  DateTimeOutField.Caption     := PrintTime(GetField(NFIRSMainTable,'DATETIMEOUT').AsDateTime);
  DateTimeArrField.Caption     := PrintTime(GetField(NFIRSMainTable,'DATETIMEARR').AsDateTime);
  DateTimeContField.Caption    := PrintTime(GetField(NFIRSMainTable,'DATETIMECONT').AsDateTime);
  DateTimeInField.Caption      := PrintTime(GetField(NFIRSMainTable,'DATETIMEIN').AsDateTime);

  SchdShiftNameIDField.Caption := SQLLookUp(dbfield(NFIRSMainTable,'SCHDSHIFTNAMEID'),'SCHDSHIFTNAMEID','SCHDSHIFTNAME','CODE');
  AlarmNumField     .Caption   := GetField(NFIRSMainTable,'ALARMNUM').AsString;
  N5DistrictIDField .Caption   := SQLLookUp(dbfield(NFIRSMainTable,'N5DISTRICTID'),'N5DISTRICTID','N5DISTRICT','CODE');
  DispBoxIDField    .Caption   := SQLLookUp(dbfield(NFIRSMainTable,'DISPBOXID'),'DISPBOXID','DISPBOX','CODE');

  If (tdbfield(NFIRSMainTable,'MAID') = 'N') then
    M5MaidDescrField.Caption     := 'Mutual Aid:  None'
  else if (tdbfield(NFIRSMainTable,'MAID') = '') then
    M5MaidDescrField.Caption     := 'Mutual Aid:  Not Entered.'
  else begin
    M5MaidDescrField.Caption     := SQLLookUp(dbfield(NFIRSMainTable,'MAID'),'CODE','N5MAID','DESCR');
    NfirsMaidDescrField.Caption  := GetNfirsMaidDescr;
  end;

  ActionField.Caption          := IIf(tdbfield(NFIRSMainTable,'TYPEACT') = '','','1. ') + SQLLookUp(dbfield(NFIRSMainTable,'TYPEACT'),'CODE','N5ACTION','DESCR') + #10 + #13 +
                                  IIf(tdbfield(NFIRSMainTable,'ACTION2') = '','','2. ') + SQLLookUp(dbfield(NFIRSMainTable,'ACTION2'),'CODE','N5ACTION','DESCR') + #10 + #13 +
                                  IIf(tdbfield(NFIRSMainTable,'ACTION3') = '','','3. ') + SQLLookUp(dbfield(NFIRSMainTable,'ACTION3'),'CODE','N5ACTION','DESCR');

  ActionLabel.Caption          := 'Actions Taken: ' + IIf(tdbfield(NFIRSMainTable,'TYPEACT') = '','','') +dbfield(NFIRSMainTable,'TYPEACT') +
                                  IIf(tdbfield(NFIRSMainTable,'ACTION2') = '','',', ') + dbfield(NFIRSMainTable,'ACTION2') +
                                  IIf(tdbfield(NFIRSMainTable,'ACTION3') = '','',', ') + dbfield(NFIRSMainTable,'ACTION3');

  AppEMSField   .Caption       := GetField(NFIRSMainTable,'APPEMS').AsString;
  AppSuppField  .Caption       := GetField(NFIRSMainTable,'APPSUPP').AsString;
  AppOthField   .Caption       := GetField(NFIRSMainTable,'APPOTH').AsString;
  PersEMSField  .Caption       := GetField(NFIRSMainTable,'PERSEMS').AsString;
  PersSuppField .Caption       := GetField(NFIRSMainTable,'PERSSUPP').AsString;
  PersOthField  .Caption       := GetField(NFIRSMainTable,'PERSOTH').AsString;
  PersMiscField .Caption       := GetField(NFIRSMainTable,'PERSMISC').AsString;
  PersTotalField.Caption       := GetField(NFIRSMainTable,'PERSTOTAL').AsString;

  LossPropField .Caption       := GetDollar('LOSSPROP');
  LossContField .Caption       := GetDollar('LOSSCONT');
  ValPropField  .Caption       := GetDollar('VALPROP');
  ValContField  .Caption       := GetDollar('VALCONT');

  FatFireField.Caption         := FormatFloat('##0',GetField(NFIRSMainTable,'FATFIRE').AsFloat);
  FatCivField.Caption          := FormatFloat('##0',GetField(NFIRSMainTable,'FATCIV').AsFloat);
  InjFireField.Caption         := FormatFloat('##0',GetField(NFIRSMainTable,'INJFIRE').AsFloat);
  InjCivField.Caption          := FormatFloat('##0',GetField(NFIRSMainTable,'INJCIV').AsFloat);

  HazMatField.Caption          := SQLLookUp(dbfield(NFIRSMainTable,'HAZMAT'),'CODE','N5HAZMAT','DESCR');
  if MFireID= '18084' then
    HazMatField.Caption          :=dbfield(NFIRSMainTable,'HAZMAT') + ' ' + SQLLookUp(dbfield(NFIRSMainTable,'HAZMAT'),'CODE','N5HAZMAT','DESCR');
  ComplexField.Caption         := SQLLookUp(dbfield(NFIRSMainTable,'COMPLEX'),'CODE','N5MIXEDUSE','DESCR');
  if MFireID= '18084' then
    ComplexField.Caption         :=dbfield(NFIRSMainTable,'COMPLEX') + ' ' + SQLLookUp(dbfield(NFIRSMainTable,'COMPLEX'),'CODE','N5MIXEDUSE','DESCR');
  FixPropField.Caption         := SQLLookUp(dbfield(NFIRSMainTable,'FIXPROP'),'CODE','N5PROPUSE','DESCR');
  if MFireID= '18084' then
    FixPropField.Caption         := dbfield(NFIRSMainTable,'FIXPROP') + ' ' + SQLLookUp(dbfield(NFIRSMainTable,'FIXPROP'),'CODE','N5PROPUSE','DESCR');


  If KForm then begin
    OccupantNumber        .Enabled := false;
    OccupantField         .Enabled := false;
    OwnerLetter           .Enabled := false;
    OwnerNumber           .Enabled := false;
    OwnerTitle            .Enabled := false;
    OwnerField            .Enabled := false;
    KLine                 .Enabled := false;
    NfirsInvTypeDescrField.Enabled := true;
    NfirsInvField         .Enabled := true;
    NfirsInvTypeDescrField.caption := '';
    NfirsInvField.Caption          := '';

    NFirsInvTable.UpdateSQL('SELECT NFIRSINVTYPE.DESCR NFIRSINVTYPEDESCR, NFIRSINV.* FROM NFIRSINV LEFT JOIN NFIRSINVTYPE ON (NFIRSINV.NFIRSINVTYPEID = NFIRSINVTYPE.NFIRSINVTYPEID) WHERE NFIRSINV.NFIRSMAINID = ' + pkValue(GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString));
    While Not NfirsInvTable.Eof do begin
      NfirsInvTypeDescrField.Caption := NfirsInvTypeDescrField.Caption + tdbfield(NfirsInvTable,'NFIRSINVTYPEDESCR') + #10#13; 
      NfirsInvField         .Caption := NfirsInvField.Caption          + tdbfield(NfirsInvTable,'BUSINESSNAME') + '.  ' + tdbfield(NfirsInvTable,'STRNUM') + ' ' + tdbfield(NfirsInvTable,'STREET') + ', ' + tdbfield(NfirsInvTable,'CITY') + ', ' + tdbfield(NfirsInvTable,'STATE') + '  ' + substr(tdbfield(NfirsInvTable,'ZIP'),1,5) + #10#13;
      NfirsINvTable.Skip(1);
    end;

  end else begin
    NfirsInvTypeDescrField.Enabled := false;
    NfirsInvField.Enabled          := false;
    OccupantField.Caption          := IIf(tdbfield(NFIRSMainTable,'BUSNAME') = '','',tdbfield(NFIRSMainTable,'BUSNAME') + #10 + #13) +
                                      IIf(tdbfield(NFIRSMainTable,'PLASTNAME') = '','',tdbfield(NFIRSMainTable,'PFIRSTNAME') + ' ' + tdbfield(NFIRSMainTable,'PLASTNAME') + #10 + #13) +
                                      alltrim(alltrim(dbField(NFIRSMainTable,'PESTRNUM')) + ' ' + tdbField(NFIRSMainTable,'PESTREET')) + #10 + #13 +
                                      tdbField(NFIRSMainTable,'PECITY') + ', ' + dbField(NFIRSMainTable,'PESTATE') + '  ' + substr(dbField(NFIRSMainTable,'PEZIP'),1,5) + #10 + #13 +
                                      IIf(tdbfield(NFIRSMainTable,'PHONE') = '','',tdbfield(NFIRSMainTable,'PHONE'));
    OwnerField.Caption             := IIf(tdbfield(NFIRSMainTable,'OBUSINESS') = '','',tdbfield(NFIRSMainTable,'OBUSINESS') + #10 + #13) +
                                      IIf(tdbfield(NFIRSMainTable,'OLASTNAME') = '','',tdbfield(NFIRSMainTable,'OFIRSTNAME') + ' ' + tdbfield(NFIRSMainTable,'OLASTNAME') + #10 + #13) +
                                      alltrim(alltrim(dbField(NFIRSMainTable,'OSTRNUM')) + ' ' + tdbField(NFIRSMainTable,'OSTREET')) + #10 + #13 +
                                      IIf(tdbField(NFIRSMainTable,'OCITY') = '','',tdbField(NFIRSMainTable,'OCITY') + ', ') + dbField(NFIRSMainTable,'OSTATE') + '  ' + substr(dbField(NFIRSMainTable,'OZIP'),1,5) + #10 + #13 +
                                      IIf(tdbfield(NFIRSMainTable,'OPHONE') = '','',tdbfield(NFIRSMainTable,'OPHONE'));
  end;

  DetectorField.Caption        := SQLLookUp(dbfield(NFIRSMainTable,'DETECTOR'),'CODE','N5DETECTOR','DESCR');
  if MFireID= '18084' then
    DetectorField.Caption        := dbfield(NFIRSMainTable,'DETECTOR') + ' ' + SQLLookUp(dbfield(NFIRSMainTable,'DETECTOR'),'CODE','N5DETECTOR','DESCR');
  NarrField.Caption            := GetField(NFIRSMainTable,'NARR').AsString;

  OICField.Caption             := alltrim(alltrim(tdbfield(NFIRSMainTable,'OCFIRST') + ' ' + tdbfield(NFIRSMainTable,'OCMI')) + ' ' + tdbfield(NFIRSMainTable,'OFFCHARGE'));
  OffRankField.Caption         := tdbfield(NFIRSMainTable,'OFFRANK');
  OffAssField.Caption          := tdbfield(NFIRSMainTable,'OFFASS');
  OffDateField.Caption         := AlpineFormatDateTime('MM/DD/YYYY',GetField(NFIRSMainTable,'OFFDATE').AsDateTime);

  MMRField.Caption             := alltrim(alltrim(tdbfield(NFIRSMainTable,'MRFIRST') + ' ' + tdbfield(NFIRSMainTable,'MRMI')) + ' ' + tdbfield(NFIRSMainTable,'MEMREP'));
  MemAssField.Caption          := tdbfield(NFIRSMainTable,'MEMASS');
  MemRankField.Caption         := tdbfield(NFIRSMainTable,'MEMRANK');
  MemDateField.Caption         := AlpineFormatDateTime('MM/DD/YYYY',GetField(NFIRSMainTable,'MEMDATE').AsDateTime);

  KBand.Enabled                := Not (tdbfield(NFIRSMainTable,'BUSNAME') +
                                       tdbfield(NFIRSMainTable,'PLASTNAME') +
                                       tdbfield(NFIRSMainTable,'PESTREET') +
                                       tdbfield(NFIRSMainTable,'OBUSINESS') +
                                       tdbfield(NFIRSMainTable,'OLASTNAME') +
                                       tdbfield(NFIRSMainTable,'OSTREET') = '');
end;

function TNFIRSMainRepForm.GetDollar(FieldName: String): String;
begin
  If (GetField(NFIRSMainTable,FieldName).AsString = '') then
    GetDollar := 'Unknown'
  else
    GetDollar := FormatFloat('$###,###,##0',GetField(NFIRSMainTable,FieldName).AsFloat);
end;

procedure TNFIRSMainRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NFIRSMainIDTable.Free;
  NFIRSMainTable.Free;
  NFIRSFirTable.Free;
  NFIRSStrTable.Free;
  NFIRSAppTable.Free;
  NFIRSImageTable.Free;
  NfirsInvTable.Free;
end;

function TNFIRSMainRepForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAINID FROM NFIRSMAIN ' ;
end;

function TNFIRSMainRepForm.ReportJoins: String;
begin
  result := '';
end;

procedure TNFIRSMainRepForm.rpanelBandBeforePrint(Sender: TQRCustomBand;   var PrintBand: Boolean);
begin
  inherited;
  rpanelBand.height := RPanelHeight;
end;

function TNFIRSMainRepForm.GetNfirsMaidDescr: String;
Var RetVal : String;
begin
  Open_Query('NFIRSMAID',false,'SELECT NFIRSMAID.FDID, FDID.ABBREVIATE FROM NFIRSMAID LEFT JOIN FDID ON (NFIRSMAID.FDID = FDID.FDID) WHERE NFIRSMAID.NFIRSMAINID = ' + pkValue(GetField(NfirsMainTable,'NFIRSMAINID').Asstring));
  While Not A('NFIRSMAID').Eof do begin
    If (tdbfield('NFIRSMAID','ABBREVIATE') = '') then
      RetVal := RetVal + tdbfield('NFIRSMAID','FDID') + ', '
    else
      RetVal := RetVal + tdbfield('NFIRSMAID','ABBREVIATE') + ', ';
    A('NFIRSMAID').Skip(1);
  end;
  CloseApollo('NFIRSMAID');
  RetVal            := substr(RetVal,1,Length(RetVal) - 2);
  GetNfirsMaidDescr := RetVal;
end;

procedure TNFIRSMainRepForm.NFIRSAPPBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  UnitNumField.Caption           := tdbfield(NFIRSAppTable,'UNITNUM');
  NFIRSAPPNarr.Caption           := GetField(NFIRSAppTable,'NARR').AsString;
end;

procedure TNFIRSMainRepForm.NFIRSFirBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  function GetContIgn: String;
  Var RetVal : String;
  begin
    RetVal := '';
    If Not (tdbfield(NFIRSFirTable,'CONTIGN1') = '') then
      RetVal := '1. ' + alltrim(SQLLookUp(dbfield(NFIRSFirTable,'CONTIGN1'),'CODE','N5FACTIGN','DESCR'));
    If Not (tdbfield(NFIRSFirTable,'CONTIGN2') = '') then
      RetVal := RetVal + #10#13 + '2. ' + alltrim(SQLLookUp(dbfield(NFIRSFirTable,'CONTIGN2'),'CODE','N5FACTIGN','DESCR'));
    If RetVal = '' then
      GetContIgn := 'Not entered'
    else
      GetContIgn := RetVal;
  end;

  function GetHumanFactor: String;
  Var RetVal : String;
  begin
    RetVal := '';
    If tdbfield(NFIRSFirTable,'NOCAUSE') = 'N' then
      GetHumanFactor := 'None'
    else begin
      If tdbfield(NFIRSFirTable,'HUMAN1') = '1' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Asleep';
      If tdbfield(NFIRSFirTable,'HUMAN2') = '2' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Impaired by alcohol or drugs';
      If tdbfield(NFIRSFirTable,'HUMAN3') = '3' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Unattended persons';
      If tdbfield(NFIRSFirTable,'HUMAN4') = '4' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Possibly mentally disabled';
      If tdbfield(NFIRSFirTable,'HUMAN5') = '5' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Physically disabled';
      If tdbfield(NFIRSFirTable,'HUMAN6') = '6' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Multiple persons involved';
      If tdbfield(NFIRSFirTable,'HUMAN7') = '7' then
        RetVal := IIf(RetVal = '','',RetVal + ',' + #10#13) + 'Age was a factor' + IIf(GetField(NFIRSFirTable,'CAUSEAGE').AsInteger > 0, ', ' + GetField(NFIRSFirTable,'CAUSEAGE').AsString + ' year old','') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'HUMANSEX'),'CODE','N5GENDER','DESCR');
      GetHumanFactor := RetVal;
    end;
  end;


  function GetFireSupp: String;
  Var RetVal : String;
  begin
    RetVal := '';
    If tdbfield(NFIRSFirTable,'NOFIRESUPP') = 'N' then
      RetVal := 'None'
    else begin
      If Not (tdbfield(NFIRSFirTable,'FIRESUPP1') = '') then
        RetVal := '1. ' + alltrim(SQLLookUp(dbfield(NFIRSFirTable,'FIRESUPP1'),'CODE','N5FIRESUP','DESCR'));
      If Not (tdbfield(NFIRSFirTable,'FIRESUPP2') = '') then
        RetVal := RetVal + #10#13 + '2. ' + alltrim(SQLLookUp(dbfield(NFIRSFirTable,'FIRESUPP2'),'CODE','N5FIRESUP','DESCR'));
      If Not (tdbfield(NFIRSFirTable,'FIRESUPP3') = '') then
        RetVal := RetVal + #10#13 + '3. ' + alltrim(SQLLookUp(dbfield(NFIRSFirTable,'FIRESUPP3'),'CODE','N5FIRESUP','DESCR'));
    end;
    GetFireSupp := RetVal;
  end;
begin
  inherited;
  If tdbfield(NFIRSFirTable,'NOTRESFLAG') = 'Y' then
    NumResUnitField.Caption  := 'Not Residential'
  else
    NumResUnitField.Caption := GetField(NFIRSFirTable,'NUMRESUNIT').AsString;

  If tdbfield(NFIRSFirTable,'BUILDNOINV') = 'Y' then
    NumBuildField.Caption := 'Buildings not Involved'
  else
    NumBuildField.Caption := GetField(NFIRSFirTable,'NUMBUILD').AsString;

  If tdbfield(NFIRSFirTable,'ACRENONE') = 'Y' then
    AcreBurnField.Caption := 'None'
  else if tdbfield(NFIRSFirTable,'LESSONEACR') = 'Y' then
    AcreBurnField.Caption := 'Less than one acre'
  else
    AcreBurnField.Caption := GetField(NFIRSFirTable,'ACREBURN').AsString;

  OnSite1Field.Caption     := SQLLookUp(dbfield(NFIRSFirTable,'ONSITE1'),'CODE','N5ONSITEMAT','DESCR');
  if MFireID= '18084' then
    OnSite1Field.Caption     := dbfield(NFIRSFirTable,'ONSITE1') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'ONSITE1'),'CODE','N5ONSITEMAT','DESCR');
  Storage1Field.Caption    := SQLLookUp(dbfield(NFIRSFirTable,'STORAGE1'),'CODE','N5ONSITESTOR','DESCR');
  if MFireID= '18084' then
    Storage1Field.Caption    := dbfield(NFIRSFirTable,'STORAGE1') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'STORAGE1'),'CODE','N5ONSITESTOR','DESCR');
  AreaOriginField.Caption  := SQLLookUp(dbfield(NFIRSFirTable,'AREAORIGIN'),'CODE','N5FIREORIGIN','DESCR');
  if MFireID= '18084' then
    AreaOriginField.Caption  :=dbfield(NFIRSFirTable,'AREAORIGIN') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'AREAORIGIN'),'CODE','N5FIREORIGIN','DESCR'); 
  HeatSourceField.Caption  := SQLLookUp(dbfield(NFIRSFirTable,'HEATSOURCE'),'CODE','N5HEATSOURCE','DESCR');
  if MFireID= '18084' then
     HeatSourceField.Caption  := dbfield(NFIRSFirTable,'HEATSOURCE') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'HEATSOURCE'),'CODE','N5HEATSOURCE','DESCR');

  If dbfield(NFIRSFirTable,'CONFINEDTO') = '1' then
    ItemFirstField.Caption  := 'Confined to object of origin'
  else begin
    ItemFirstField.Caption  := SQLLookUp(dbfield(NFIRSFirTable,'ITEMFIRST'),'CODE','N5FIRSTIGNIT','DESCR');
    if MFireID= '18084' then
      ItemFirstField.Caption  := dbfield(NFIRSFirTable,'ITEMFIRST') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'ITEMFIRST'),'CODE','N5FIRSTIGNIT','DESCR');
  end;
  TypeMatField.Caption     := SQLLookUp(dbfield(NFIRSFirTable,'TYPEMAT'),'CODE','N5TYPMAT','DESCR');
  if MFireID= '18084' then
    TypeMatField.Caption     := dbfield(NFIRSFirTable,'TYPEMAT') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'TYPEMAT'),'CODE','N5TYPMAT','DESCR');
  CauseIgnField.Caption    := SQLLookUp(dbfield(NFIRSFirTable,'CAUSEIGN'),'CODE','N5IGNCAUSE','DESCR');
  if MFireID= '18084' then
    CauseIgnField.Caption    := dbfield(NFIRSFirTable,'CAUSEIGN') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'CAUSEIGN'),'CODE','N5IGNCAUSE','DESCR');
  ContIgnField.Caption     := GetContIgn;
  HumanFactorField.Caption := GetHumanFactor;
  EquInvField.Caption      := SQLLookUp(dbfield(NFIRSFirTable,'EQUINV'),'CODE','N5EQUIP','DESCR');
  if MFireID= '18084' then
    EquInvField.Caption      :=dbfield(NFIRSFirTable,'EQUINV') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'EQUINV'),'CODE','N5EQUIP','DESCR');
  EquBrandField.Caption    := tdbfield(NFIRSFirTable,'EQUBRAND');
  EquSerialField.Caption   := tdbfield(NFIRSFirTable,'EQUSERIAL');
  EquModelField.Caption    := tdbfield(NFIRSFirTable,'EQUMODEL');
  EquYearField.Caption     := tdbfield(NFIRSFirTable,'EQUYEAR');

  EquPowerField.Caption    := SQLLookUp(dbfield(NFIRSFirTable,'EQUPOWER'),'CODE','N5EQUIPPOWER','DESCR');
  if MFireID= '18084' then
    EquPowerField.Caption    := dbfield(NFIRSFirTable,'EQUPOWER') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'EQUPOWER'),'CODE','N5EQUIPPOWER','DESCR');
  EquPortField.Caption     := SQLLookUp(dbfield(NFIRSFirTable,'EQUPORT'),'CODE','N5EQUIPPORT','DESCR');
  if MFireID= '18084' then
    EquPortField.Caption     := dbfield(NFIRSFirTable,'EQUPORT') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'EQUPORT'),'CODE','N5EQUIPPORT','DESCR');
  FireSuppField.Caption    := GetFireSupp;
  
  MobYearField.Caption     := GetField(NFIRSFirTable,'MOBYEAR').AsString;
  MobModelField.Caption    := GetField(NFIRSFirTable,'MOBMODEL').AsString;
  MobMAKEField.Caption     := SQLLookUp(dbfield(NFIRSFirTable,'MOBMAKE'),'CODE','N5MOBMAKE','DESCR');
  if MFireID= '18084' then
    MobMAKEField.Caption     := dbfield(NFIRSFirTable,'MOBMAKE') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'MOBMAKE'),'CODE','N5MOBMAKE','DESCR');
  MobLICField.Caption      := GetField(NFIRSFirTable,'MOBLIC').AsString;
  MobSerField.Caption      := GetField(NFIRSFirTable,'MOBSER').AsString;
  MobStateField.Caption    := GetField(NFIRSFirTable,'MOBSTATE').AsString;

  MobTypeField.Caption     := SQLLookUp(dbfield(NFIRSFirTable,'MOBTYPE'),'CODE','N5MOBTYPE','DESCR');
  if MFireID= '18084' then
     MobTypeField.Caption     := dbfield(NFIRSFirTable,'MOBTYPE') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'MOBTYPE'),'CODE','N5MOBTYPE','DESCR');
  MobInvField.Caption      := SQLLookUp(dbfield(NFIRSFirTable,'MOBINV'),'CODE','N5MOBPROP','DESCR');
  if MFireID= '18084' then
    MobInvField.Caption      := dbfield(NFIRSFirTable,'MOBINV') + ' ' + SQLLookUp(dbfield(NFIRSFirTable,'MOBINV'),'CODE','N5MOBPROP','DESCR');
end;

procedure TNFIRSMainRepForm.NfirsImageBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
  Var Stream : TMemoryStream;
      ImageName  : TJPegImage;
      InitialWidth : Integer;
begin
  inherited;
  Stream     := TMemoryStream.create;
  ImageName  := TJpegImage.create;
  try
    try
      TBlobField(NfirsImageTable.FieldByName('IMAGEBLOB')).SaveToStream(Stream);
      Stream.position := 0;
      ImageName.LoadFromStream(stream);
      PictureImage.Picture.bitmap.assign(ImageName);
      If PictureImage.Width  < PictureImage.Picture.Width then
        PictureImage.Stretch := true;

      if PictureImage.Width > (NfirsImageBand.Width * 0.9) then begin
        InitialWidth := PictureImage.Width;
        PictureImage.Width := Round(NfirsImageBand.Width * 0.9);
        PictureImage.Height := Round(PictureImage.Height * (PictureImage.Width / InitialWidth));
      end;

      NfirsImageBand.Height := PictureImage.Height + 50;
      PictureImage.Left := Trunc((NfirsImageBand.Width - PictureImage.Width) / 2);
    except

    end;
  finally
   Stream.Free;
   ImageName.Free;
  end;
end;

procedure TNFIRSMainRepForm.NFIRSSSBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var NFIRSSSIdNumberVar : String;
    NFIRSSSCaptionVar  : String;
    NFIRSSSDescrVar    : String;
    FieldValue         : String;
    FieldName          : String;
    TableName          : String;
    FieldDescr         : String;
begin
  inherited;
  NFIRSSSIdNumberVar := '';
  NFIRSSSCaptionVar  := '';
  NFIRSSSDescrVar    := '';
  Open_Query('NFIRSSSSETUP',false,'SELECT * FROM NFIRSSSSETUP ORDER BY SORTORD');
  While Not A('NFIRSSSSETUP').Eof do begin
    If (mFireID = '08700') and (tdbfield('NFIRSSSSETUP','IDNUMBER') = '9244') then begin
    end else begin     
      NFIRSSSIDNumberVar := NFIRSSSIDNumberVar + tdbfield('NFIRSSSSETUP','IDNUMBER') + #10#13;
      NFIRSSSCaptionVar  := NFIRSSSCaptionVar + tdbfield('NFIRSSSSETUP','CAPTION') + #10#13;
      FieldValue         := tdbfield(NfirsMainTable,tdbfield('NFIRSSSSETUP','FIELDNAME'));
      TableName          := tdbfield('NFIRSSSSETUP','TABLENAME');
      If TableName = 'REDNMXCODE' then begin
        Open_Query('GETREDNMXCODE',false,'SELECT DESCR FROM REDNMXCODE WHERE FIELDNAME = ' + edbfield('NFIRSSSSETUP','FIELDNAME') + ' AND CODE = ' + AddExpr(FieldValue));
        FieldDescr         := tdbfield('GETREDNMXCODE','DESCR');
        CloseApollo('GETREDNMXCODE');
      end else begin
        FieldDescr         := SQLLookUp(FieldValue,'CODE',TableName,'DESCR');
      end;
      NFIRSSSDescrVar    := NFIRSSSDescrVar + FieldDescr + #10#13;
    end;   
    A('NFIRSSSSETUP').Skip(1);
  end;
  CloseApollo('NFIRSSSSETUP');
  NFIRSSSIDNumberField.Caption := NFIRSSSIDNumberVar;  
  NFIRSSSCaptionField.Caption  := NFIRSSSCaptionVar;  
  NFIRSSSDescrField.Caption    := NFIRSSSDescrVar;  
end;

procedure TNFIRSMainRepForm.NFIRSStrBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  function GetBldHeight: String;
  begin
    If Getfield(NFIRSStrTable,'BLDHEIGHT').AsInteger = 0 then
      GetBldHeight := '# of stories above not entered'
    else if Getfield(NFIRSStrTable,'BLDHEIGHT').AsInteger = 1 then
      GetBldHeight := '1 story above grade'
    else if Getfield(NFIRSStrTable,'BLDHEIGHT').AsInteger > 1 then
      GetBldHeight := Getfield(NFIRSStrTable,'BLDHEIGHT').AsString + ' stories above grade';
  end;

  function GetBelowGrade: String;
  begin
    If Getfield(NFIRSStrTable,'BELOWGRADE').AsInteger = 0 then
      GetBelowGrade := '# of stories below not entered'
    else if Getfield(NFIRSStrTable,'BELOWGRADE').AsInteger = 1 then
      GetBelowGrade := '1 story below grade'
    else if Getfield(NFIRSStrTable,'BELOWGRADE').AsInteger > 1 then
      GetBelowGrade := Getfield(NFIRSStrTable,'BELOWGRADE').AsString + ' stories below grade';
  end;

  function GetMainFloorSize: String;
  begin
    If Getfield(NFIRSStrTable,'SQUAREFEET').AsFloat > 0 then
      GetMainFloorSize := FormatFloat('###,###,##0',Getfield(NFIRSStrTable,'SQUAREFEET').AsFloat) + ' total square feet'
    else if (Getfield(NFIRSStrTable,'LENGTHSQL').AsFloat > 0) and (Getfield(NFIRSStrTable,'WIDTH').AsFloat > 0) then
      GetMainFloorSize := 'A length of ' + FormatFloat('###,###,##0',Getfield(NFIRSStrTable,'LENGTHSQL').AsFloat) + ' feet by a ' +
                          'width of ' + FormatFloat('###,###,##0',Getfield(NFIRSStrTable,'WIDTH').AsFloat) + ' feet'
    else
      GetMainFloorSize := 'Not entered';
  end;

  function GetFireOrigin: String;
  begin
    If GetField(NFIRSStrTable,'FIREORIGIN').AsFloat = 0 then
      GetFireOrigin := 'Not entered'
    else if (GetField(NFIRSStrTable,'FIREORIGIN').AsFloat = 1) then
      GetFireOrigin := '1 story ' + IIf(tdbfield(NFIRSStrTable,'BELOWCHECK') = '','above','below')
    else if (GetField(NFIRSStrTable,'FIREORIGIN').AsFloat > 1) then
      GetFireOrigin := GetField(NFIRSStrTable,'FIREORIGIN').AsString + ' stories ' + IIf(tdbfield(NFIRSStrTable,'BELOWCHECK') = '','above','below');
  end;

  function GetFlameDamage: String;
  Var RetVal : String;
  begin
    RetVal := '';
    If GetField(NFIRSStrTable,'STORYMINOR').AsFloat = 1 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + '1 story with minor damage'
    else if GetField(NFIRSStrTable,'STORYMINOR').AsFloat > 0 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + GetField(NFIRSStrTable,'STORYMINOR').AsString + ' stories with minor damage';

    If GetField(NFIRSStrTable,'STORYSIGN').AsFloat = 1 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + '1 story with significant damage'
    else if GetField(NFIRSStrTable,'STORYSIGN').AsFloat > 0 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + GetField(NFIRSStrTable,'STORYSIGN').AsString + ' stories with significant damage';

    If GetField(NFIRSStrTable,'STORYHEAVY').AsFloat = 1 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + '1 story with heavy damage'
    else if GetField(NFIRSStrTable,'STORYHEAVY').AsFloat > 0 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + GetField(NFIRSStrTable,'STORYHEAVY').AsString + ' stories with heavy damage';

    If GetField(NFIRSStrTable,'STORYEXT').AsFloat = 1 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + '1 story with extreme damage'
    else if GetField(NFIRSStrTable,'STORYEXT').AsFloat > 0 then
      RetVal := RetVal + IIf(RetVal = '','',', ') + GetField(NFIRSStrTable,'STORYEXT').AsString + ' stories with extreme damage';

    If RetVal = '' then
      RetVal := 'No floors damaged by flame or data not entered.';
    GetFlameDamage := RetVal;
  end;
  
begin
  inherited;
  StrTypeDescr.Caption     := SQLLookUp(dbfield(NFIRSStrTable,'STRTYPE'),'CODE','N5CONSTYPE','DESCR');
  If MFireID= '18084' then
    StrTypeDescr.Caption     := dbfield(NFIRSStrTable,'STRTYPE') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'STRTYPE'),'CODE','N5CONSTYPE','DESCR');
  BuildStatField.Caption   := SQLLookUp(dbfield(NFIRSStrTable,'BUILDSTAT'),'CODE','N5BLDSTATUS','DESCR');
  If MFireID= '18084' then
    BuildStatField.Caption   := dbfield(NFIRSStrTable,'BUILDSTAT') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'BUILDSTAT'),'CODE','N5BLDSTATUS','DESCR');

  BldHeightField.Caption   := GetBldHeight;
  BelowGradeField.Caption  := GetBelowGrade;
  MainFloorSize.Caption    := GetMainFloorSize;
  FireOriginField.Caption  := GetFireOrigin;
  FireSpreadField.Caption  := SQLLookUp(dbfield(NFIRSStrTable,'FIRESPREAD'),'CODE','N5FIRESPREAD','DESCR');
  FlameDamageField.Caption := GetFlameDamage;

  If dbfield(NFIRSStrTable,'NOFLAMESPR') = 'Y' then begin
    ItemContrField.Caption := 'No Flame Spead or same as material ignited';
    TypeMatDesc.Caption    := 'No Flame Spead or same as material ignited';
  end else begin
    ItemContrField.Caption := SQLLookUp(dbfield(NFIRSStrTable,'ITEMCONTR'),'CODE','N5FIRSTIGNIT','DESCR');
    TypeMatDesc.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'TYPEMAT'),'CODE','N5TYPMAT','DESCR');
  end;

  If (tdbfield(NFIRSStrTable,'DETPRES') = '') then
    DetPres1Field.Caption    := 'Not entered'
  else begin
    DetPres1Field.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETPRES'),'CODE','N5DETPRES','DESCR');
    if MFireID= '18084' then
      DetPres1Field.Caption    := dbfield(NFIRSStrTable,'DETPRES') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETPRES'),'CODE','N5DETPRES','DESCR');
    end;
  DetPres2Field.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETPRES'),'CODE','N5DETPRES','DESCR');
  if MFireID= '18084' then
    DetPres2Field.Caption    := dbfield(NFIRSStrTable,'DETPRES') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETPRES'),'CODE','N5DETPRES','DESCR');
  DetPowerField.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETPOWER'),'CODE','N5DETPOWER','DESCR');
  if MFireID= '18084' then
    DetPowerField.Caption    := dbfield(NFIRSStrTable,'DETPOWER') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETPOWER'),'CODE','N5DETPOWER','DESCR');
  DetEffField  .Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETEFF'),'CODE','N5DETEFF','DESCR');
  if MFireID= '18084' then
    DetEffField  .Caption    := dbfield(NFIRSStrTable,'DETEFF') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETEFF'),'CODE','N5DETEFF','DESCR');
  DetTypeField .Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETTYPE'),'CODE','N5DETTYPE','DESCR');
  if MFireID= '18084' then
    DetTypeField .Caption    := dbfield(NFIRSStrTable,'DETTYPE') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETTYPE'),'CODE','N5DETTYPE','DESCR');
  DetOpField   .Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETOP'),'CODE','N5DETOP','DESCR');
  if MFireID= '18084' then
    DetOpField   .Caption    := dbfield(NFIRSStrTable,'DETOP') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETOP'),'CODE','N5DETOP','DESCR');
  DetFailField .Caption    := SQLLookUp(dbfield(NFIRSStrTable,'DETFAIL'),'CODE','N5DETFAIL','DESCR');
  if MFireID= '18084' then
     DetFailField .Caption    := dbfield(NFIRSStrTable,'DETFAIL') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'DETFAIL'),'CODE','N5DETFAIL','DESCR');
  If (tdbfield(NFIRSStrTable,'AUTOPRES') = '') then
    AutoPres1Field.Caption    := 'Not entered'
  else begin
  
    AutoPres1Field.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'AUTOPRES'),'CODE','N5AUTOPRES','DESCR');
    if MFireID= '18084' then
      AutoPres1Field.Caption    := dbfield(NFIRSStrTable,'AUTOPRES') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'AUTOPRES'),'CODE','N5AUTOPRES','DESCR');
  end;
  AutoPresField.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'AUTOPRES'),'CODE','N5AUTOPRES','DESCR');
  if MFireID= '18084' then
    AutoPresField.Caption    := dbfield(NFIRSStrTable,'AUTOPRES') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'AUTOPRES'),'CODE','N5AUTOPRES','DESCR');
  AutoTypeField.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'AUTOTYPE'),'CODE','N5AUTOTYPE','DESCR');
  if MFireID= '18084' then
    AutoTypeField.Caption    := dbfield(NFIRSStrTable,'AUTOTYPE') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'AUTOTYPE'),'CODE','N5AUTOTYPE','DESCR');
  AutoOpField.Caption      := SQLLookUp(dbfield(NFIRSStrTable,'AUTOOP'),'CODE','N5AUTOOP','DESCR');
  if MFireID= '18084' then
    AutoOpField.Caption      := dbfield(NFIRSStrTable,'AUTOOP') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'AUTOOP'),'CODE','N5AUTOOP','DESCR');
  NumSprField.Caption      := GetField(NFIRSStrTable,'NUMSPR').AsString;
  AutoFailField.Caption    := SQLLookUp(dbfield(NFIRSStrTable,'AUTOFAIL'),'CODE','N5AUTOFAIL','DESCR');
  if MFireID= '18084' then
    AutoFailField.Caption    := dbfield(NFIRSStrTable,'AUTOFAIL') + ' ' + SQLLookUp(dbfield(NFIRSStrTable,'AUTOFAIL'),'CODE','N5AUTOFAIL','DESCR');
end;


class procedure TNFIRSMainRepForm.OpenAndSetLabels(Form: TForm; mNfirsTable: TApolloData);
begin
  with Form do begin
    TQRLabel(FindComponent('FdidField')).Caption       := tdbField(mNfirsTable,'FDID');
    TQRLabel(FindComponent('mSys_TitleField')).Caption := SQLLookUp(tdbfield(mNfirsTable, 'FDID'),'FDID','FDID','DEPTNAME');
    if MFireID= '18084' then
      TQRLabel(FindComponent('mSys_TitleField')).Caption := tdbfield(mNfirsTable, 'FDID') + ' ' + SQLLookUp(tdbfield(mNfirsTable, 'FDID'),'FDID','FDID','DEPTNAME');
    TQRLabel(FindComponent('IncStateField')).Caption   := tdbfield('INC','PSTATE');
    TQRLabel(FindComponent('DateFieldLabel')).Caption  := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(mNfirsTable,'DATETIMEALARM').AsDateTime);
    TQRLabel(FindComponent('IncNumField')).Caption     := substr(tdbfield(mNfirsTable,'INCNUM'),1,4) + '-' + substr(tdbfield(mNfirsTable,'INCNUM'),5,6);
    TQRLabel(FindComponent('ExpNumField')).Caption     := '0' + tdbfield(mNfirsTable,'EXPNUM');
  end;
end;

function SetCode(mCode, mSeekVar: String): String;
begin
  result:=mCode+' - '+ StandardSqlLookUp(mCode,'N5'+mSeekVar);
  if result = ' - ' then
    result := '';
end;

function SetCheckBox2(mValue: String) : String;
begin
  mValue := trim(mValue);
  if (mValue='') then
    result:=' '
  else
    result:='X';
end;

end.
