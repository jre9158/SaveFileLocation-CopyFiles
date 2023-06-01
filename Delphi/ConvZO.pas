unit ConvZO;

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
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineBaseSummaryReport,
  Gauges,
  AlpineDateTime,
  AdvEdit,
  HTMListB,
  ADODB,
  AlpinePanel,
  EnJpgGr;

type
  TConvZOForm = class(TNormalBaseForm)
    Panel3: TPanel;
    Image1: TImage;
    AdvPanel5: TAdvPanel;
    Panel2: TPanel;
    OvcController1: TOvcController;
    Panel1: TPanel;
    AlpinePanel3: TAlpinePanel;
    AlpinePanel6: TAlpinePanel;
    PersButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    NfirsMainButton: TAlpineGlowButton;
    AlpinePanel2: TAlpinePanel;
    InventoryButton: TAlpineGlowButton;
    AlpinePanel5: TAlpinePanel;
    PropButton: TAlpineGlowButton;
    AlpinePanel4: TAlpinePanel;
    AlpinePanel7: TAlpinePanel;
    HydButton: TAlpineGlowButton;
    AlpinePanel8: TAlpinePanel;
    NISetupButton: TAlpineGlowButton;
    NITrainCat1Button: TAlpineGlowButton;
    ApparatusButton: TAlpineGlowButton;
    CLASSESButton: TAlpineGlowButton;
    PERSRANKButton: TAlpineGlowButton;
    InspSetButton: TAlpineGlowButton;
    InspButton: TAlpineGlowButton;
    PropSetUpButton: TAlpineGlowButton;
    SchdHistButton: TAlpineGlowButton;
    DLButton: TAlpineGlowButton;
    SchdShiftNameButton: TAlpineGlowButton;
    UserLKUPButton: TAlpineGlowButton;
    SchdTypeButton: TAlpineGlowButton;
    StreetButton: TAlpineGlowButton;
    CityButton: TAlpineGlowButton;
    AlpinePanel9: TAlpinePanel;
    ListBox: TListBox;
    AlpinePanel10: TAlpinePanel;
    Errorbox: TListBox;
    Gauge: TGauge;
    AlpinePanel11: TAlpinePanel;
    AlpinePanel12: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    InitialDateField: TAlpineDateTime;
    FinalDateField: TAlpineDateTime;
    ServerField: TAlpineEdit;
    DatabaseField: TAlpineEdit;
    UserNameField: TAlpineEdit;
    PasswordField: TAlpineEdit;
    Memo1: TMemo;
    SchdLocButton: TAlpineGlowButton;
    AlpinePanel13: TAlpinePanel;
    AlpineGlowButton1: TAlpineGlowButton;
    PermitButton: TAlpineGlowButton;
    procedure CloseButtonClick(Sender: TObject);
    procedure NfirsMainButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure InventoryButtonClick(Sender: TObject);
    procedure UserLKUPButtonClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure NISetupButtonClick(Sender: TObject);
    procedure NITrainCat1ButtonClick(Sender: TObject);
    procedure ApparatusButtonClick(Sender: TObject);
    procedure PERSRANKButtonClick(Sender: TObject);
    procedure PropSetUpButtonClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure InspSetButtonClick(Sender: TObject);
    procedure SchdTypeButtonClick(Sender: TObject);
    procedure CLASSESButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SchdLocButtonClick(Sender: TObject);
    procedure StreetButtonClick(Sender: TObject);
    procedure CityButtonClick(Sender: TObject);
  private
    ZollDatabase  : TAlpineAdoConnection;
    LosapDatabase : TAlpineAdoConnection;
    procedure ConnectZoll;
    procedure ConnectLosap;
    procedure ConvNfirsMain;
    procedure ConvNfirsFir;
    procedure ConvNfirsStr;
    procedure ConvNfirsEqu;
    procedure ConvNfirsApp;
    procedure ConvNfirsAtt;
    procedure ConvNfirsEntity;
    procedure ConvNFIRSCivilian;
    procedure ConvNFIRSFireCasualty;
    procedure ConvMutualAid;
    function  GetNfirsMainNarr: String;
    procedure ConvProp;
    procedure ConvPropContact;
    procedure ConvVio;
    procedure LoadDispCall;
    procedure LoadPersImageList;
    function  FixDate(DateVar: TDateTime): TDateTime;
    function  UCaseFirst(s : string) : string;
    function  CleanPhone(Phone : string) : string;
    function  SetBooleanY(b : string; rs : string = 'Y') : string;
    function  ZeroIsEmpty(s : string) : string;
    function  GetInvType(Code: String): String;
    procedure ConvNIAtt;
    procedure ConvNIEV;
    procedure ConvNIPersInv(NIPersInvTypeID: String);
    procedure LoadPersCont(PersContTypeID: String);
    function  GetFdid(Code: String): String;
  public
    { Public declarations }
  end;

var
  ConvZOForm: TConvZOForm;

implementation
uses GenFunc,
     FormFunc,
     CommonSec,
     SortGridView,
     GisFunc,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TConvZOForm.FormCreate(Sender: TObject);
begin
  inherited;
  If AlpineLogin then begin
    ServerField.options   := [efoCaretToEnd,efoTrimBlanks];
    DatabaseField.options := [efoCaretToEnd,efoTrimBlanks];
    UserNameField.options := [efoCaretToEnd,efoTrimBlanks];
    PasswordField.options := [efoCaretToEnd,efoTrimBlanks];
  end else begin
    ServerField.options   := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    DatabaseField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    UserNameField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    PasswordField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
  end;
end;

procedure TConvZOForm.NfirsMainButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'NFIRSMAIN Conversion . . . . . . Started');
  ConnectZoll;
  Open_Query('NFIRSMAIN',        true, 'SELECT * FROM NFIRSMAIN         WHERE 1=2');
  Open_Query('NFIRSATT',         true, 'SELECT * FROM NFIRSATT          WHERE 1=2');
  Open_Query('NFIRSAPP',         true, 'SELECT * FROM NFIRSAPP          WHERE 1=2');
  Open_Query('NFIRSFIR',         true, 'SELECT * FROM NFIRSFIR          WHERE 1=2');
  Open_Query('NFIRSSTR',         true, 'SELECT * FROM NFIRSSTR          WHERE 1=2');
  Open_Query('NFIRSEQUUSE',      true, 'SELECT * FROM NFIRSEQUUSE       WHERE 1=2');
  Open_Query('NFIRSATT',         true, 'SELECT * FROM NFIRSATT          WHERE 1=2');
  Open_Query('NFIRSMAID',        true, 'SELECT * FROM NFIRSMAID         WHERE 1=2');
  Open_Query('NFIRSCIVILIAN',    true, 'SELECT * FROM NFIRSCIVILIAN     WHERE 1=2');
  Open_Query('NFIRSFIRECASUALTY',true, 'SELECT * FROM NFIRSFIRECASUALTY WHERE 1=2');
  Open_Query('DISPCALL',         true, 'SELECT * FROM DISPCALL          WHERE 1=2');
  Open_Query('DISPHIST',         true, 'SELECT * FROM DISPHIST          WHERE 1=2');

  Open_Query('PERS',             false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('SCHDSHIFTNAME',    false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('N5DISTRICT',       false,'SELECT * FROM N5DISTRICT');
  Open_Query('INV',              false,'SELECT UNITNUM, DESCR FROM INV WHERE TYPE = ' + AddExpr('TRUCK'));

  Open_Query(ZollDatabase,'INCIDENT',    false,'SELECT * FROM INCIDENT  WHERE ' + BuildSQLAlpineDate('INCIDENT.INCIDENTDATE',InitialDateField.Value,FinalDateField.Value) + ' ORDER BY INCIDENTNUMBER');//AddExpr('_SHWCDX3021808')); 
  Open_Query(ZollDatabase,'APPARATUS',   false,'SELECT * FROM APPARATUS WHERE 1=2');
  Open_Query(ZollDatabase,'PERSONNEL',   false,'SELECT * FROM PERSONNEL WHERE 1=2');
  Open_Query(ZollDatabase,'FIRE',        false,'SELECT * FROM FIRE      WHERE 1=2');
  Open_Query(ZollDatabase,'STRUCTURE',   false,'SELECT * FROM STRUCTURE WHERE 1=2');
  Open_Query(ZollDatabase,'NARRATIVE',   false,'SELECT * FROM NARRATIVE WHERE 1=2');
  Open_Query(ZollDatabase,'AUTHORITY',   false,'SELECT * FROM AUTHORITY WHERE 1=2');
  Open_Query(ZollDatabase,'APPEQUIPMENT',false,'SELECT * FROM APPEQUIPMENT WHERE 1=2');
  Open_Query(ZollDatabase,'CIVILIAN',    false,'SELECT * FROM CIVILIANCASUALTY WHERE 1=2');
  Open_Query(ZollDatabase,'FIRECAS',     false,'SELECT * FROM FIRESERVICECASUALTY WHERE 1=2');
  Open_Query(ZollDatabase,'MUTUALAID',   false,'SELECT * FROM MUTUALAID WHERE 1=2');
{  Open_Query(ZollDatabase,'NOTEFILE', false,'SELECT * FROM NOTEFILE  WHERE 1=2');
  Open_Query(ZollDatabase,'IN5INVL',  false,'SELECT * FROM IN5INVL   WHERE 1=2');

  Open_Query(ZollDatabase,'IN5CCAS',  false,'SELECT * FROM IN5CCAS   WHERE 1=2');
  Open_Query(ZollDatabase,'IN5FCAS',  false,'SELECT * FROM IN5FCAS   WHERE 1=2');
}

  Gauge.MaxValue := A('INCIDENT').RecCount;
  Gauge.Progress := 0;
  While Not A('INCIDENT').Eof do begin
    Gauge.Progress     := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('NFIRSMAIN').UpdateSQL('SELECT * FROM NFIRSMAIN WHERE GUIDIDNUMBER = ' + PKValue(edbfield('INCIDENT','INCIDENTKEY')));
    If A('NFIRSMAIN').RecordsExist then
      GetTable('NFIRSMAIN').Edit
    else
      GetTable('NFIRSMAIN').Append;

    ConvNfirsMain;
    GetNfirsMainNarr;
//    ConvNfirsEntity;
    GetTable('NFIRSMAIN').Post;

    AddStatusListBox(ListBox,'Loaded ' + tdbfield('NFIRSMAIN','INCNUM'));

    ConvNfirsApp;
    ConvNfirsEqu;
    ConvNfirsAtt;


    ConvNfirsFir;
    A('STRUCTURE').UpdateSQL('SELECT * FROM STRUCTURE WHERE INCIDENTKEY = ' + AddExpr(tdbfield('INCIDENT','INCIDENTKEY')));
    if A('STRUCTURE').RecordsExist then
      ConvNfirsStr;
    ConvMutualAid;
    ConvNfirsCivilian;
    ConvNfirsFireCasualty;

    If CheckModule('DISP') or CheckModule('CADINT') then begin
      LoadDispCall;
    end;

    A('INCIDENT').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSATT');
  CloseApollo('NFIRSEQUUSE');
  CloseApollo('NFIRSAPP');
  CloseApollo('NFIRSFIR');
  CloseApollo('NFIRSSTR');
  CloseApollo('NFIRSATT');
  CloseApollo('NFIRSMAID');
  CloseApollo('NFIRSCIVILIAN');
  CloseApollo('NFIRSFIRECASUALTY');
  CloseApollo('DISPCALL');
  CloseApollo('DISPHIST');
  
  CloseApollo('PERS');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('N5DISTRICT');
  CloseApollo('INV');

  CloseApollo('INCIDENT');
  CloseApollo('APPARATUS');
  CloseApollo('PERSONNEL');
  CloseApollo('FIRE');
  CloseApollo('STRUCTURE');
  CloseApollo('NARRATIVE');
  CloseApollo('APPEQUIPMENT');
  CloseApollo('CIVILIAN');
  CloseApollo('FIRECAS');
  CloseApollo('MUTUALAID');
  {
  CloseApollo('NOTEFILE');
  CloseApollo('INCDPERS');
  CloseApollo('INCDAPPS');
  CloseApollo('IN5INVL');
  CloseApollo('MUTUALAID');
  CloseApollo('IN5CCAS');
  CloseApollo('IN5FCAS');
  }

  ZollDatabase.Free;
  AddStatusListBox(ListBox,'NFIRSMAIN Conversion . . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvZOForm.ConvNfirsMain;
Var IncNum    : String;
    Latitude  : String;
    Longitude : String;
begin
  IncNum                                           := tdbfield('INCIDENT','INCIDENTNUMBER');
  IncNum                                           := FormatDateTime('YYYY',GetField('INCIDENT','INCIDENTDATE').AsDatetime) + padl(alltrim(substr(IncNum,at('0',IncNum),7)),6,'0');
  GetField('NFIRSMAIN','GUIDIDNUMBER').AsString    := tdbfield('INCIDENT','INCIDENTKEY');
  GetField('NFIRSMAIN','FDID').AsString            := FireID;
  GetField('NFIRSMAIN','INCNUM').AsString          := IncNum;
  GetField('NFIRSMAIN','EXPNUM').AsString          := padl(tdbfield('INCIDENT','EXPOSURE'),2,'0');
  GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime := GetField('INCIDENT','INCIDENTDATE').AsDateTime;
  GetField('NFIRSMAIN','STRNUM').AsString          := tdbfield('INCIDENT','NUMBERORMILE');
  GetField('NFIRSMAIN','STREET').AsString          := alltrim(tdbfield('INCIDENT','STREETPREFIX') + ' ' + tdbfield('INCIDENT','STREETHIGHWAY') + ' ' + tdbfield('INCIDENT','STREETTYPE'));
  GetField('NFIRSMAIN','ROOMAPT').AsString         := tdbfield('INCIDENT','APARTMENT');
  GetField('NFIRSMAIN','SITFOUND').AsString        := GetField('INCIDENT','INCIDENTTYPE').AsString;

  GetField('NFIRSMAIN','CITY').AsString            := trim(GetField('INCIDENT','CITY').AsString);
  GetField('NFIRSMAIN','STATE').AsString           := trim(GetField('INCIDENT','STATE').AsString);
  GetField('NFIRSMAIN','ZIP').AsString             := trim(GetField('INCIDENT','POSTALCODE').AsString);

  GetField('NFIRSMAIN','MAID').AsString            := GetField('INCIDENT','MUTUALAIDCODE').AsString;
  GetField('NFIRSMAIN','MDEPT').AsString           := GetField('INCIDENT','MADEPARTMENT').AsString;
  GetField('NFIRSMAIN','MUTSTATE').AsString        := GetField('INCIDENT','MADEPTSTATE').AsString;
  GetField('NFIRSMAIN','MUTINCNUM').AsString       := GetField('INCIDENT','MADEPTINCIDENTNO').AsString;

  GetField('NFIRSMAIN','DATETIMEARR').AsDateTime   := GetField('INCIDENT','ARRIVALDATE').AsDateTime;
  GetField('NFIRSMAIN','DATETIMEIN').AsDateTime    := GetField('INCIDENT','LASTUNITCLEAREDDATE').AsDateTime;
  GetField('NFIRSMAIN','DATETIMECONT').AsDateTime  := GetField('INCIDENT','CONTROLLEDDATE').AsDateTime;

  If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('INCIDENT','SHIFT')) then
    GetField('NFIRSMAIN','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;
  If A('N5DISTRICT').ExactQueryLocate('CODE',tdbfield('INCIDENT','STATION')) then
    GetField('NFIRSMAIN','N5DISTRICTID').AsString := GetField( 'N5DISTRICT','N5DISTRICTID').AsString;

  GetField('NFIRSMAIN','ALARMNUM').AsInteger       := 1;
  GetField('NFIRSMAIN','TYPEACT').AsString         := GetField('INCIDENT','ACTIONTAKEN1').AsString;
  GetField('NFIRSMAIN','ACTION2').AsString         := GetField('INCIDENT','ACTIONTAKEN2').AsString;
  GetField('NFIRSMAIN','ACTION3').AsString         := GetField('INCIDENT','ACTIONTAKEN3').AsString;

  GetField('NFIRSMAIN','APPSUPP').AsInteger        := GetField('INCIDENT','APPARATUSSUPPRESSION').AsInteger;
  GetField('NFIRSMAIN','APPEMS').AsInteger         := GetField('INCIDENT','APPARATUSEMS').AsInteger;
  GetField('NFIRSMAIN','APPOTH').AsInteger         := GetField('INCIDENT','APPARATUSOTHER').AsInteger;
  GetField('NFIRSMAIN','PERSSUPP').AsInteger       := GetField('INCIDENT','PERSONNELSUPPRESSION').AsInteger;
  GetField('NFIRSMAIN','PERSEMS').AsInteger        := GetField('INCIDENT','PERSONNELEMS').AsInteger;
  GetField('NFIRSMAIN','PERSOTH').AsInteger        := GetField('INCIDENT','PERSONNELOTHER').AsInteger;
  GetField('NFIRSMAIN','PERSTOTAL').AsInteger      := GetField('NFIRSMAIN','PERSSUPP').AsInteger + GetField('NFIRSMAIN','PERSEMS').AsInteger + GetField('NFIRSMAIN','PERSOTH').AsInteger;

  GetField('NFIRSMAIN','LOSSPROP').AsInteger       := GetField('INCIDENT','LOSSPROPERTY').AsInteger;
  GetField('NFIRSMAIN','LOSSCONT').AsInteger       := GetField('INCIDENT','LOSSCONTENTS').AsInteger;
  GetField('NFIRSMAIN','LOSSPROPU').AsString       := SetBooleanY(GetField('INCIDENT','LOSS_NOT_KNOWN').AsString);
  GetField('NFIRSMAIN','LOSSCONTU').AsString       := SetBooleanY(GetField('INCIDENT','LOSS_NOT_KNOWN').AsString);
  GetField('NFIRSMAIN','VALPROP').AsInteger        := GetField('INCIDENT','VALUEPROPERTY').AsInteger;
  GetField('NFIRSMAIN','VALCONT').AsInteger        := GetField('INCIDENT','VALUECONTENTS').AsInteger;
  GetField('NFIRSMAIN','FATFIRE').AsInteger        := GetField('INCIDENT','FATALFIRESERVICE').AsInteger;
  GetField('NFIRSMAIN','FATCIV').AsInteger         := GetField('INCIDENT','FATALOTHER').AsInteger;
  GetField('NFIRSMAIN','INJFIRE').AsInteger        := GetField('INCIDENT','NONFATALFIRESERVICE').AsInteger;
  GetField('NFIRSMAIN','INJCIV').AsInteger         := GetField('INCIDENT','NONFATALOTHER').AsInteger;

  GetField('NFIRSMAIN','DETECTOR').AsString        := trim(GetField('INCIDENT','DETECTOR').AsString);
  GetField('NFIRSMAIN','HAZMAT').AsString          := trim(GetField('INCIDENT','HAZARDMATERIALRELEASED').AsString);
  GetField('NFIRSMAIN','COMPLEX').AsString         := trim(GetField('INCIDENT','MIXEDUSE').AsString);
  GetField('NFIRSMAIN','FIXPROP').AsString         := trim(GetField('INCIDENT','PROPERTYUSE').AsString);
  GetField('NFIRSMAIN','CENSUS').AsString          := trim(GetField('INCIDENT','CENSUSTRACT').AsString);

  GetField('NFIRSMAIN','LOCTYPE').AsString         := trim(GetField('INCIDENT','LOCATIONTYPE').AsString);
  GetField('NFIRSMAIN','CROSS1').AsString          := alltrim(tdbfield('INCIDENT','CROSSSTREETPREFIX') + ' ' + tdbfield('INCIDENT','CROSSSTREETHIGHWAY') + ' ' + tdbfield('INCIDENT','CROSSSTREETTYPE'));

  If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('INCIDENT','REPORTEDBY')) then
    GetField('NFIRSMAIN','PERSIDMAKEREP').AsString := GetField('PERS','PERSID').AsString;

  GetField('NFIRSMAIN','OBUSINESS').AsString       := trim(GetField('INCIDENT','OCCUPANCYNAME').AsString);
{
  GetField('NFIRSMAIN','MAID').AsString            := GetField('INCIDENT','AIDGIVENORRECEIVED').AsString;
  GetField('NFIRSMAIN','MDEPT').AsString           := GetField('INCIDENT','FDIDRECEIVINGAID').AsString;
  GetField('NFIRSMAIN','MUTSTATE').AsString        := GetField('INCIDENT','FDIDSTATERECEIVINGAID').AsString;
  GetField('NFIRSMAIN','MUTINCNUM').AsString       := GetField('INCIDENT','INCIDENTNUMBEROFFDIDRECAID').AsString;

  GetField('NFIRSMAIN','DATETIMEARR').AsDateTime   := FixDate(GetField('INCIDENT','ARRIVALDATE').AsDateTime);
  GetField('NFIRSMAIN','DATETIMECONT').AsDateTime  := FixDate(GetField('INCIDENT','INCIDENTCONTROLLEDDATE').AsDateTime);
  GetField('NFIRSMAIN','DATETIMEIN').AsDateTime    := FixDate(GetField('INCIDENT','LASTUNITCLEAREDDATE').AsDateTime);

  If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('INCIDENT','SHIFT')) then
    GetField('NFIRSMAIN','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;
  If A('N5DISTRICT').ExactQueryLocate('CODE',tdbfield('INCIDENT','STATION')) then
    GetField('NFIRSMAIN','N5DISTRICTID').AsString := GetField('N5DISTRICT','N5DISTRICTID').AsString;
    
  GetField('NFIRSMAIN','ALARMNUM').AsInteger       := 1;
  GetField('NFIRSMAIN','TYPEACT').AsString         := GetField('INCIDENT','ACTIONSTAKEN1').AsString;
  GetField('NFIRSMAIN','ACTION2').AsString         := GetField('INCIDENT','ACTIONSTAKEN2').AsString;
  GetField('NFIRSMAIN','ACTION3').AsString         := GetField('INCIDENT','ACTIONSTAKEN3').AsString;

  GetField('NFIRSMAIN','APPSUPP').AsInteger        := GetField('INCIDENT','SUPPRESSIONAPPARATUS').AsInteger;
  GetField('NFIRSMAIN','APPEMS').AsInteger         := GetField('INCIDENT','EMSAPPARATUS').AsInteger;
  GetField('NFIRSMAIN','APPOTH').AsInteger         := GetField('INCIDENT','OTHERAPPARATUS').AsInteger;
  GetField('NFIRSMAIN','PERSSUPP').AsInteger       := GetField('INCIDENT','SUPPRESSIONPERSONNEL').AsInteger;
  GetField('NFIRSMAIN','PERSEMS').AsInteger        := GetField('INCIDENT','EMSPERSONNEL').AsInteger;
  GetField('NFIRSMAIN','PERSOTH').AsInteger        := GetField('INCIDENT','OTHERPERSONNEL').AsInteger;
  GetField('NFIRSMAIN','PERSTOTAL').AsInteger      := GetField('NFIRSMAIN','PERSSUPP').AsInteger + GetField('NFIRSMAIN','PERSEMS').AsInteger + GetField('NFIRSMAIN','PERSOTH').AsInteger;

  GetField('NFIRSMAIN','LOSSPROP').AsInteger       := GetField('INCIDENT','PROPERTYLOSS').AsInteger;
  GetField('NFIRSMAIN','LOSSCONT').AsInteger       := GetField('INCIDENT','CONTENTSLOSS').AsInteger;
  GetField('NFIRSMAIN','VALPROP').AsInteger        := GetField('INCIDENT','PROPERTYVALUE').AsInteger;
  GetField('NFIRSMAIN','VALCONT').AsInteger        := GetField('INCIDENT','CONTENTSVALUE').AsInteger;
  GetField('NFIRSMAIN','FATFIRE').AsInteger        := GetField('INCIDENT','FIRESERVICEDEATHS').AsInteger;
  GetField('NFIRSMAIN','FATCIV').AsInteger         := GetField('INCIDENT','OTHERDEATHS').AsInteger;
  GetField('NFIRSMAIN','INJFIRE').AsInteger        := GetField('INCIDENT','FIRESERVICEINJURIES').AsInteger;
  GetField('NFIRSMAIN','INJCIV').AsInteger         := GetField('INCIDENT','OTHERINJURIES').AsInteger;

  GetField('NFIRSMAIN','DETECTOR').AsString        := trim(GetField('INCIDENT','DETECTORALERTEDOCCUPANTS').AsString);
  GetField('NFIRSMAIN','HAZMAT').AsString          := trim(GetField('INCIDENT','HAZARDOUSMATERIALRELEASED').AsString);
  GetField('NFIRSMAIN','COMPLEX').AsString         := trim(GetField('INCIDENT','MIXEDUSE').AsString);
  GetField('NFIRSMAIN','FIXPROP').AsString         := trim(GetField('INCIDENT','PROPERTYUSE').AsString);
  GetField('NFIRSMAIN','CENSUS').AsString          := trim(GetField('INCIDENT','CENSUSTRACT').AsString);

  GetField('NFIRSMAIN','LOCTYPE').AsString         := trim(GetField('INCIDENT','LOCATIONTYPE').AsString);
  GetField('NFIRSMAIN','CROSS1').AsString          := trim(GetField('INCIDENT','CROSSSTREETORDIRECTIONS').AsString);

  If A('PERS').ExactQueryLocate('LOOKUPID',tdbfield('INCIDENT','AUTHORITYPERSONNELID')) then
    GetField('NFIRSMAIN','PERSIDOFFCHARGE').AsString := GetField('PERS','PERSID').AsString;
  GetField('NFIRSMAIN','OFFASS').AsString          := tdbfield('INCIDENT','AUTHORITYASSIGNMENT');
  GetField('NFIRSMAIN','OFFRANK').AsString         := tdbfield('INCIDENT','AUTHORITYRANK');
  GetField('NFIRSMAIN','OFFCHARGE').AsString       := tdbfield('INCIDENT','AUTHORITYLASTNAME');
  GetField('NFIRSMAIN','OCFIRST').AsString         := tdbfield('INCIDENT','AUTHORITYFIRSTNAME');
  GetField('NFIRSMAIN','OCMI').AsString            := tdbfield('INCIDENT','AUTHORITYMIDDLEINITIAL');
  GetField('NFIRSMAIN','OFFDATE').AsString         := GetField('INCIDENT','AUTHORITYDATE').AsString;

  If A('PERS').ExactQueryLocate('LOOKUPID',tdbfield('INCIDENT','MEMBERMAKINGREPORTID')) then
    GetField('NFIRSMAIN','PERSIDMAKEREP').AsString := GetField('PERS','PERSID').AsString;
  GetField('NFIRSMAIN','MEMRANK').AsString         := tdbfield('INCIDENT','MEMBERMAKINGREPORTRANK');
  GetField('NFIRSMAIN','MEMASS').AsString          := tdbfield('INCIDENT','MEMBERMAKINGREPORTASSIGNMENT');
  GetField('NFIRSMAIN','MEMREP').AsString          := tdbfield('INCIDENT','MEMBERMAKINGREPORTLASTNAME');
  GetField('NFIRSMAIN','MRFIRST').AsString         := tdbfield('INCIDENT','MEMBERMAKINGREPORTFIRSTNAME');
  GetField('NFIRSMAIN','MRMI').AsString            := tdbfield('INCIDENT','MEMBERMAKINGREPORTMI');
  GetField('NFIRSMAIN','MEMDATE').AsString         := GetField('INCIDENT','MEMBERMAKINGREPORTDATE').AsString;

  GetField('NFIRSMAIN','OPRE').AsString            := trim(GetField('INCIDENT','OWNERNAMEPREFIX').AsString);
  GetField('NFIRSMAIN','OFIRSTNAME').AsString      := trim(GetField('INCIDENT','OWNERFIRSTNAME').AsString);
  GetField('NFIRSMAIN','OMI').AsString             := trim(GetField('INCIDENT','OWNERMIDDLEINITIAL').AsString);
  GetField('NFIRSMAIN','OLASTNAME').AsString       := trim(GetField('INCIDENT','OWNERLASTNAME').AsString);
  GetField('NFIRSMAIN','OSUFF').AsString           := trim(GetField('INCIDENT','OWNERNAMESUFFIX').AsString);

  GetField('NFIRSMAIN','OBUSINESS').AsString       := trim(GetField('INCIDENT','OWNERBUSINESSNAME').AsString);
  GetField('NFIRSMAIN','OPHONE').AsString          := trim(GetField('INCIDENT','OWNERPHONE').AsString);
  GetField('NFIRSMAIN','OSTRNUM').AsString         := trim(GetField('INCIDENT','OWNERSTREETNUMBERORMILEPOST').AsString);
  GetField('NFIRSMAIN','OSTREETPRE').AsString      := trim(GetField('INCIDENT','OWNERSTREETPREFIX').AsString);
  GetField('NFIRSMAIN','OSTREET').AsString         := trim(GetField('INCIDENT','OWNERSTREETORHIGHWAYNAME').AsString);
  GetField('NFIRSMAIN','OTYPE').AsString           := trim(GetField('INCIDENT','OWNERSTREETTYPE').AsString);
  GetField('NFIRSMAIN','OSUFF').AsString           := trim(GetField('INCIDENT','OWNERSTREETSUFFIX').AsString);
  GetField('NFIRSMAIN','OPOBOX').AsString          := trim(GetField('INCIDENT','OWNERPOSTOFFICEBOX').AsString);
  GetField('NFIRSMAIN','OROOMAPT').AsString        := trim(GetField('INCIDENT','OWNERAPARTMENT').AsString);
  GetField('NFIRSMAIN','OCITY').AsString           := trim(GetField('INCIDENT','OWNERCITY').AsString);
  GetField('NFIRSMAIN','OSTATE').AsString          := trim(GetField('INCIDENT','OWNERSTATE').AsString);
  GetField('NFIRSMAIN','OZIP').AsString            := trim(GetField('INCIDENT','OWNERZIP').AsString);
  }
  GetField('NFIRSMAIN','DONE').AsString            := SetBooleanY(trim(GetField('INCIDENT','COMPLETED').AsString));
  {
  If Not (tdbfield('INCIDENT','LATITUDE') = '') then begin
    Latitude                                  := tdbfield('INCIDENT','LATITUDE');
    Latitude                                  := substr(Latitude,1,2) + '.' + substr(Latitude,3,9);
    GetField('NFIRSMAIN','LATITUDE').AsFloat  := DecimalToMinutes(StrToFloat(Latitude));
  end;

  If Not (tdbfield('INCIDENT','LONGITUDE') = '') then begin
    Longitude                                 := tdbfield('INCIDENT','LONGITUDE');
    Longitude                                 := substr(Longitude,1,3) + '.' + substr(Longitude,4,9);
    GetField('NFIRSMAIN','LONGITUDE').AsFloat := DecimalToMinutes(StrToFloat(Longitude));
  end;
  }
end;

procedure TConvZOForm.ConvNfirsEntity;
begin
  A('IN5INVL').UpdateSQL('SELECT * FROM IN5INVL WHERE IN5BASICGUIDIDNUMBER = ' + edbfield('INCIDENT','GUIDIDNUMBER'));
  If A('IN5INVL').RecordsExist then begin
    While not A('IN5INVL').Eof do begin
      GetField('NFIRSMAIN','BUSNAME').AsString            := trim(GetField('IN5INVL','BUSINESSNAME').AsString);
      GetField('NFIRSMAIN','PHONE').AsString              := trim(GetField('IN5INVL','PHONE').AsString);
      GetField('NFIRSMAIN','PESTRNUM').AsString           := trim(GetField('IN5INVL','STREETNUMBERORMILEPOST').AsString);
      GetField('NFIRSMAIN','PEPRE').AsString              := trim(GetField('IN5INVL','STREETPREFIX').AsString);
      GetField('NFIRSMAIN','PESTREET').AsString           := trim(GetField('IN5INVL','STREETORHIGHWAYNAME').AsString);
      GetField('NFIRSMAIN','PETYPE').AsString             := trim(GetField('IN5INVL','STREETTYPE').AsString);
      GetField('NFIRSMAIN','PESUFF').AsString             := trim(GetField('IN5INVL','STREETSUFFIX').AsString);
      GetField('NFIRSMAIN','PEPOBOX').AsString            := trim(GetField('IN5INVL','POSTOFFICEBOX').AsString);
      GetField('NFIRSMAIN','PEROOMAPT').AsString          := trim(GetField('IN5INVL','APARTMENT').AsString);
      GetField('NFIRSMAIN','PECITY').AsString             := trim(GetField('IN5INVL','CITY').AsString);
      GetField('NFIRSMAIN','PESTATE').AsString            := trim(GetField('IN5INVL','STATE').AsString);
      GetField('NFIRSMAIN','PEZIP').AsString              := trim(GetField('IN5INVL','ZIP').AsString);
      A('IN5INVL').Skip(1);
    end;
  end;
end;

function TConvZOForm.GetNfirsMainNarr: String;
begin
  A('NARRATIVE').UpdateSQL('SELECT * FROM NARRATIVE WHERE INCIDENTKEY = ' + edbfield('NFIRSMAIN','GUIDIDNUMBER') + ' ORDER BY SEQUENCE');
  If A('NARRATIVE').RecordsExist then begin
    While not A('NARRATIVE').Eof do begin
      if (trim(GetField('NARRATIVE','NARRATIVENAME').AsString) = 'CAD Narrative') OR (trim(GetField('NARRATIVE','NARRATIVENAME').AsString) = 'New Narrative') then
        GetField('NFIRSMAIN','NARR').AsString := Alltrim(GetField('NFIRSMAIN','NARR').AsString + #13#10 + GetField('NARRATIVE','NARRATIVETEXT').AsString);
      A('NARRATIVE').Skip(1);
    end;
  end;
end;

procedure TConvZOForm.ConvMutualAid;
begin
  A('MUTUALAID').UpdateSQL('SELECT * FROM MUTUALAID WHERE INCIDENTKEY = ' + edbfield('NFIRSMAIN','GUIDIDNUMBER'));
  While Not A('MUTUALAID').Eof do begin
    A('NFIRSMAID').UpdateSQL('SELECT * FROM NFIRSMAID WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' AND GUIDIDNUMBER = ' + edbfield('MUTUALAID','INCIDENTKEY'));
    If A('NFIRSMAID').RecordsExist then
      GetTable('NFIRSMAID').Edit
    else
      GetTable('NFIRSMAID').Append;

    GetField('NFIRSMAID','GUIDIDNUMBER').AsString        := tdbfield('MUTUALAID','MUTUALAIDKEY');
    GetField('NFIRSMAID','NFIRSMAINID').AsString         := GetField('NFIRSMAIN','NFIRSMAINID').AsString;

    GetField('NFIRSMAID','FDID').AsString                := tdbfield('MUTUALAID','MADEPTARTMENT');
    GetField('NFIRSMAID','STATE').AsString               := tdbfield('MUTUALAID','MADEPTSTATE');
    GetField('NFIRSMAID','INCNUM').AsString              := tdbfield('MUTUALAID','MADEPTINCIDENTNO');

    GetTable('NFIRSMAID').Post;
    A('MUTUALAID').Skip(1);
  end;
end;


procedure TConvZOForm.ConvNfirsFir;
begin
  A('FIRE').UpdateSQL('SELECT * FROM FIRE WHERE INCIDENTKEY = ' + edbfield('INCIDENT','INCIDENTKEY'));
  If A('FIRE').RecordsExist then begin
    A('NFIRSFIR').UpdateSQL('SELECT * FROM NFIRSFIR WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    If A('NFIRSFIR').RecordsExist then
      GetTable('NFIRSFIR').Edit
    else
      GetTable('NFIRSFIR').Append;

    GetField('NFIRSFIR','NFIRSMAINID').AsString       := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('NFIRSFIR','AREAORIGIN').AsString        := UpperCase(tdbfield('FIRE','AREAOFORIGIN'));

    GetField('NFIRSFIR','NUMRESUNIT').AsString        := tdbfield('FIRE','RESIDENTIALUNITS');
    GetField('NFIRSFIR','NOTRESFLAG').AsString        := SetBooleanY(tdbfield('FIRE','NOTRESIDENTIAL'));
    GetField('NFIRSFIR','NUMBUILD').AsString          := tdbfield('FIRE','BUILDINGSINVOLVED');
    GetField('NFIRSFIR','ACREBURN').AsString          := tdbfield('FIRE','ACRESBURNED');
    GetField('NFIRSFIR','ACRENONE').AsString          := SetBooleanY(tdbfield('FIRE','NOACRESBURNED'));
    GetField('NFIRSFIR','LESSONEACR').AsString        := SetBooleanY(tdbfield('FIRE','FIRELESSTHANONEACRE'));
    GetField('NFIRSFIR','ONSITENONE').AsString        := SetBooleanY(tdbfield('FIRE','PROPERTYMATERIALSNONEFLAG'),'NNN');
    GetField('NFIRSFIR','HEATSOURCE').AsString        := UpperCase(tdbfield('FIRE','HEATSOURCE'));
    GetField('NFIRSFIR','ITEMFIRST').AsString         := UpperCase(tdbfield('FIRE','ITEMFIRSTIGNITED'));
    GetField('NFIRSFIR','CONFINEDTO').AsString        := SetBooleanY(tdbfield('FIRE','CONFINEDTOORIGIN'),'1');
    GetField('NFIRSFIR','TYPEMAT').AsString           := UpperCase(tdbfield('FIRE','TYPEOFMATERIAL'));

    GetField('NFIRSFIR','CAUSEIGN').AsString          := UpperCase(tdbfield('FIRE','CAUSEOFIGNITION'));
    GetField('NFIRSFIR','CONTIGN1').AsString          := UpperCase(tdbfield('FIRE','CONTRIBUTIONTOIGNITION1'));
    GetField('NFIRSFIR','CONTIGN2').AsString          := UpperCase(tdbfield('FIRE','CONTRIBUTIONTOIGNITION2'));

    GetField('NFIRSFIR','NOCAUSE').AsString           := SetBooleanY(tdbfield('FIRE','NOHUMANFACTORFLAG'),'N');
    GetField('NFIRSFIR','HUMAN1').AsString            := SetBooleanY(tdbfield('FIRE','ASLEEPFLAG'),'1');
    GetField('NFIRSFIR','HUMAN2').AsString            := SetBooleanY(tdbfield('FIRE','POSSIBLEALCOHOLFLAG'),'2');
    GetField('NFIRSFIR','HUMAN3').AsString            := SetBooleanY(tdbfield('FIRE','UNATTENDEDPERSONFLAG'),'3');
    GetField('NFIRSFIR','HUMAN4').AsString            := SetBooleanY(tdbfield('FIRE','MENTALLYDISABLEDFLAG'),'4');
    GetField('NFIRSFIR','HUMAN5').AsString            := SetBooleanY(tdbfield('FIRE','PHYSICALLYDISABLEDFLAG'),'5');
    GetField('NFIRSFIR','HUMAN6').AsString            := SetBooleanY(tdbfield('FIRE','MULTIPLEPERSONSFLAG'),'6');
    GetField('NFIRSFIR','HUMAN7').AsString            := SetBooleanY(tdbfield('FIRE','AGEFACTORFLAG'),'7');
    GetField('NFIRSFIR','CAUSEAGE').AsString          := tdbfield('FIRE','AGE');
    GetField('NFIRSFIR','HUMANSEX').AsString          := tdbfield('FIRE','GENDER');
    GetField('NFIRSFIR','EQUINV').AsString            := tdbfield('FIRE','EQUIPMENTTYPE');
    GetField('NFIRSFIR','EQUBRAND').AsString          := tdbfield('FIRE','BRAND');
    GetField('NFIRSFIR','EQUSERIAL').AsString         := tdbfield('FIRE','SERIALNUMBER');
    GetField('NFIRSFIR','EQUMODEL').AsString          := tdbfield('FIRE','EQUIPMENTMODEL');
    GetField('NFIRSFIR','EQUYEAR').AsString           := ZeroIsEmpty(tdbfield('FIRE','EQUIPMENTYEAR'));
    GetField('NFIRSFIR','EQUPOWER').AsString          := tdbfield('FIRE','POWER');
    GetField('NFIRSFIR','EQUPORT').AsString           := tdbfield('FIRE','PORTABILITY');
    GetField('NFIRSFIR','FIRESUPP1').AsString         := tdbfield('FIRE','SUPPRESSFACTORS1');
    GetField('NFIRSFIR','FIRESUPP2').AsString         := tdbfield('FIRE','SUPPRESSFACTORS2');
    GetField('NFIRSFIR','FIRESUPP3').AsString         := tdbfield('FIRE','SUPPRESSFACTORS3');

    if (GetField('NFIRSFIR','FIRESUPP3').AsString = '') AND (GetField('NFIRSFIR','FIRESUPP2').AsString = '') AND (GetField('NFIRSFIR','FIRESUPP1').AsString = '') then
      GetField('NFIRSFIR','NOFIRESUPP').AsString := 'N';

    GetField('NFIRSFIR','MOBINV').AsString            := tdbfield('FIRE','INVOLVED');
    GetField('NFIRSFIR','MOBTYPE').AsString           := tdbfield('FIRE','TYPE');
    GetField('NFIRSFIR','MOBMAKE').AsString           := tdbfield('FIRE','MAKE');
    GetField('NFIRSFIR','MOBMODEL').AsString          := tdbfield('FIRE','MODEL');
    GetField('NFIRSFIR','MOBYEAR').AsString           := ZeroIsEmpty(tdbfield('FIRE','YEAR'));
    GetField('NFIRSFIR','MOBLIC').AsString            := tdbfield('FIRE','LICENSEPLATE');
    GetField('NFIRSFIR','MOBSTATE').AsString          := tdbfield('FIRE','STATE');
    GetField('NFIRSFIR','MOBSER').AsString            := tdbfield('FIRE','VIN');
    GetField('NFIRSFIR','ONSITENONE').AsString        := 'NNN';
    {
    GetField('NFIRSFIR','NUMRESUNIT').AsString        := tdbfield('IN5FIRE','FIRENUMBEROFRESIDENTIALUNITS');
    GetField('NFIRSFIR','NOTRESFLAG').AsString        := SetBooleanY(tdbfield('IN5FIRE','NOTRESIDENTIAL'));
    GetField('NFIRSFIR','NUMBUILD').AsString          := tdbfield('IN5FIRE','FIRENUMBEROFBUILDINGSINVOLVED');
    GetField('NFIRSFIR','BUILDNOINV').AsString        := SetBooleanY(tdbfield('IN5FIRE','BUILDINGSNOTINVOLVED'));
    GetField('NFIRSFIR','ACREBURN').AsString          := tdbfield('IN5FIRE','FIREACRESBURNED');
    GetField('NFIRSFIR','ACRENONE').AsString          := SetBooleanY(tdbfield('IN5FIRE','NOACRESBURNED'));
    GetField('NFIRSFIR','LESSONEACR').AsString        := SetBooleanY(tdbfield('IN5FIRE','FIRELESSTHANONEACRE'));
    GetField('NFIRSFIR','ONSITENONE').AsString        := SetBooleanY(tdbfield('IN5FIRE','ONSITEMATNONE'),'NNN');
    GetField('NFIRSFIR','ONSITE1').AsString           := tdbfield('IN5FIRE','FIREONSITEMATERIALS1');
    GetField('NFIRSFIR','ONSITE2').AsString           := tdbfield('IN5FIRE','FIREONSITEMATERIALS2');
    GetField('NFIRSFIR','ONSITE3').AsString           := tdbfield('IN5FIRE','FIREONSITEMATERIALS3');
    GetField('NFIRSFIR','STORAGE1').AsString          := tdbfield('IN5FIRE','FIREMATERIALSTORAGEUSE1');
    GetField('NFIRSFIR','STORAGE2').AsString          := tdbfield('IN5FIRE','FIREMATERIALSTORAGEUSE2');
    GetField('NFIRSFIR','STORAGE3').AsString          := tdbfield('IN5FIRE','FIREMATERIALSTORAGEUSE3');
    GetField('NFIRSFIR','HEATSOURCE').AsString        := UpperCase(tdbfield('IN5FIRE','FIREHEATSOURCE'));
    GetField('NFIRSFIR','ITEMFIRST').AsString         := UpperCase(tdbfield('IN5FIRE','FIREITEMFIRSTIGNITED'));
    GetField('NFIRSFIR','CONFINEDTO').AsString        := SetBooleanY(tdbfield('IN5FIRE','FIRECONFINEDTOORIGIN'),'1');
    GetField('NFIRSFIR','TYPEMAT').AsString           := UpperCase(tdbfield('IN5FIRE','FIRETYPEOFMATERIAL'));

    GetField('NFIRSFIR','CAUSEIGN').AsString          := UpperCase(tdbfield('IN5FIRE','FIRECAUSEOFIGNITION'));
    GetField('NFIRSFIR','CONTIGN1').AsString          := UpperCase(tdbfield('IN5FIRE','FIRECONTRIBIGNITIONFACT1'));
    GetField('NFIRSFIR','CONTIGN2').AsString          := UpperCase(tdbfield('IN5FIRE','FIRECONTRIBIGNITIONFACT2'));

    GetField('NFIRSFIR','NOCAUSE').AsString           := SetBooleanY(tdbfield('IN5FIRE','HUMANFACTORSNONE'),'N');
    GetField('NFIRSFIR','HUMAN1').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS1'),'1');
    GetField('NFIRSFIR','HUMAN2').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS2'),'2');
    GetField('NFIRSFIR','HUMAN3').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS3'),'3');
    GetField('NFIRSFIR','HUMAN4').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS4'),'4');
    GetField('NFIRSFIR','HUMAN5').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS5'),'5');
    GetField('NFIRSFIR','HUMAN6').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS6'),'6');
    GetField('NFIRSFIR','HUMAN7').AsString            := SetBooleanY(tdbfield('IN5FIRE','FIREHUMANFACTORS7'),'7');
    GetField('NFIRSFIR','CAUSEAGE').AsString          := tdbfield('IN5FIRE','FIREAGEOFPERSON');
    GetField('NFIRSFIR','HUMANSEX').AsString          := tdbfield('IN5FIRE','FIRESEXOFPERSON');
    GetField('NFIRSFIR','EQUINV').AsString            := tdbfield('IN5FIRE','FIREEQUIPMENTINVOLVED');
    GetField('NFIRSFIR','EQUBRAND').AsString          := tdbfield('IN5FIRE','FIREEQUIPMENTBRAND');
    GetField('NFIRSFIR','EQUSERIAL').AsString         := tdbfield('IN5FIRE','FIREEQUIPMENTSERIALNUMBER');
    GetField('NFIRSFIR','EQUMODEL').AsString          := tdbfield('IN5FIRE','FIREEQUIPMENTMODEL');
    GetField('NFIRSFIR','EQUYEAR').AsString           := ZeroIsEmpty(tdbfield('IN5FIRE','FIREEQUIPMENTYEAR'));
    GetField('NFIRSFIR','EQUPOWER').AsString          := tdbfield('IN5FIRE','FIREEQUIPMENTPOWER');
    GetField('NFIRSFIR','EQUPORT').AsString           := tdbfield('IN5FIRE','FIREEQUIPMENTPORTABILITY');
    GetField('NFIRSFIR','NOFIRESUPP').AsString        := SetBooleanY(tdbfield('IN5FIRE','SUPPRESSIONFACTORSNONE'),'N');
    GetField('NFIRSFIR','FIRESUPP1').AsString         := tdbfield('IN5FIRE','FIRESUPPRESSIONFACTORS1');
    GetField('NFIRSFIR','FIRESUPP2').AsString         := tdbfield('IN5FIRE','FIRESUPPRESSIONFACTORS2');
    GetField('NFIRSFIR','FIRESUPP3').AsString         := tdbfield('IN5FIRE','FIRESUPPRESSIONFACTORS3');
    GetField('NFIRSFIR','MOBINV').AsString            := tdbfield('IN5FIRE','FIREMOBILEPROPERTYINVOLVED');
    GetField('NFIRSFIR','MOBTYPE').AsString           := tdbfield('IN5FIRE','FIREMOBILEPROPERTYTYPE');
    GetField('NFIRSFIR','MOBMAKE').AsString           := tdbfield('IN5FIRE','FIREMOBILEPROPERTYMAKE');
    GetField('NFIRSFIR','MOBMODEL').AsString          := tdbfield('IN5FIRE','FIREMOBILEPROPERTYMODEL');
    GetField('NFIRSFIR','MOBYEAR').AsString           := ZeroIsEmpty(tdbfield('IN5FIRE','FIREMOBILEPROPERTYYEAR'));
    GetField('NFIRSFIR','MOBLIC').AsString            := tdbfield('IN5FIRE','FIREMOBILEPROPERTYLICENSEPLATE');
    GetField('NFIRSFIR','MOBSTATE').AsString          := tdbfield('IN5FIRE','FIREMOBILEPROPERTYSTATE');
    GetField('NFIRSFIR','MOBSER').AsString            := tdbfield('IN5FIRE','FIREMOBILEPROPERTYVINNUMBER');
    }
    A('NFIRSFIR').Post;
    AddStatusListBox(ListBox,'Converted ' + tdbfield('NFIRSMAIN','INCNUM') + ' Fire Section');
  end;
end;

procedure TConvZOForm.ConvNfirsStr;
begin
  A('NFIRSSTR').UpdateSQL('SELECT * FROM NFIRSSTR WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
  If A('NFIRSSTR').RecordsExist then
    GetTable('NFIRSSTR').Edit
  else
    GetTable('NFIRSSTR').Append;

  GetField('NFIRSSTR','NFIRSMAINID').AsString       := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
  GetField('NFIRSSTR','STRTYPE').AsString           := tdbfield('FIRE','STRUCTURETYPE');
  GetField('NFIRSSTR','BUILDSTAT').AsString         := tdbfield('STRUCTURE','STATUS');
  GetField('NFIRSSTR','BLDHEIGHT').AsString         := tdbfield('STRUCTURE','FLOORSABOVEGRADE');
  GetField('NFIRSSTR','BELOWGRADE').AsString        := tdbfield('STRUCTURE','FLOORSBELOWGRADE');
  GetField('NFIRSSTR','SQUAREFEET').AsString        := tdbfield('STRUCTURE','TOTALSQUAREFOOT');
  GetField('NFIRSSTR','LENGTHSQL').AsString         := tdbfield('STRUCTURE','BUILDINGLENGTH');
  GetField('NFIRSSTR','WIDTH').AsString             := tdbfield('STRUCTURE','BUILDINGWIDTH');
  GetField('NFIRSSTR','FIREORIGIN').AsString        := tdbfield('STRUCTURE','FLOOROFORIGIN');
  GetField('NFIRSSTR','FIRESPREAD').AsString        := tdbfield('STRUCTURE','FIRESPREAD');
  GetField('NFIRSSTR','STORYMINOR').AsString        := tdbfield('STRUCTURE','MINORDAMAGE');
  GetField('NFIRSSTR','STORYSIGN').AsString         := tdbfield('STRUCTURE','SIGNIFICANTDAMAGE');
  GetField('NFIRSSTR','STORYHEAVY').AsString        := tdbfield('STRUCTURE','HEAVYDAMAGE');
  GetField('NFIRSSTR','STORYEXT').AsString          := tdbfield('STRUCTURE','EXTREMEDAMAGE');
  GetField('NFIRSSTR','NOFLAMESPR').AsString        := SetBooleanY(tdbfield('STRUCTURE','NOFLAMESPREAD'));
  GetField('NFIRSSTR','ITEMCONTR').AsString         := tdbfield('STRUCTURE','ITEMTOSPREAD');
  GetField('NFIRSSTR','TYPEMAT').AsString           := tdbfield('STRUCTURE','MATERIALTOSPREAD');
  GetField('NFIRSSTR','DETPRES').AsString           := tdbfield('STRUCTURE','DETECTPRESENT');
  GetField('NFIRSSTR','DETTYPE').AsString           := tdbfield('STRUCTURE','DETECTTYPE');
  GetField('NFIRSSTR','DETPOWER').AsString          := tdbfield('STRUCTURE','DETECTPOWER');
  GetField('NFIRSSTR','DETOP').AsString             := tdbfield('STRUCTURE','DETECTOPERATION');
  GetField('NFIRSSTR','DETEFF').AsString            := tdbfield('STRUCTURE','DETECTEFFECT');
  GetField('NFIRSSTR','DETFAIL').AsString           := tdbfield('STRUCTURE','DETECTFAILURE');
  if tdbfield('STRUCTURE','AESPRESENT') = '3' then
    GetField('NFIRSSTR','AUTOPRES').AsString := 'N'
  else
    GetField('NFIRSSTR','AUTOPRES').AsString        := tdbfield('STRUCTURE','AESPRESENT');
    
  GetField('NFIRSSTR','AUTOTYPE').AsString          := tdbfield('STRUCTURE','AESTYPE');
  GetField('NFIRSSTR','AUTOOP').AsString            := tdbfield('STRUCTURE','AESOPERATION');
  GetField('NFIRSSTR','NUMSPR').AsString            := tdbfield('STRUCTURE','NUMBEROFPSRINKLERS');
  GetField('NFIRSSTR','AUTOFAIL').AsString          := tdbfield('STRUCTURE','AESFAILURE');
  A('NFIRSSTR').Post;
end;

procedure TConvZOForm.ConvNfirsApp;
Var UnitNum : String;
begin
  A('APPARATUS').UpdateSQL('SELECT * FROM APPARATUS WHERE INCIDENTKEY = ' + edbfield('INCIDENT','INCIDENTKEY'));
  While Not A('APPARATUS').Eof do begin
    UnitNum := tdbfield('APPARATUS','APPARATUSID');
    A('NFIRSAPP').UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkvalue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND UNITNUM = ' + AddExpr(UnitNum));
    A('NARRATIVE').UpdateSQL('SELECT * FROM NARRATIVE WHERE INCIDENTKEY = ' + edbfield('INCIDENT','INCIDENTKEY') + ' AND NARRATIVENAME = ' + AddExpr(UnitNum));
    If A('NFIRSAPP').RecordsExist then
      GetTable('NFIRSAPP').Edit
    else
      GetTable('NFIRSAPP').Append;

    GetField('NFIRSAPP','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('NFIRSAPP','UNITNUM').AsString     := UnitNum;
    GetField('NFIRSAPP','N5AORT').AsString      := tdbfield('APPARATUS','APPARATUSTYPE');
    GetField('NFIRSAPP','N5ACT1').AsString      := tdbfield('APPARATUS','ACTIONTAKEN1');
    GetField('NFIRSAPP','N5ACT2').AsString      := tdbfield('APPARATUS','ACTIONTAKEN2');
    GetField('NFIRSAPP','N5ACT3').AsString      := tdbfield('APPARATUS','ACTIONTAKEN3');
    GetField('NFIRSAPP','N5ACT4').AsString      := tdbfield('APPARATUS','ACTIONTAKEN4');
    GetField('NFIRSAPP','N5AU').AsString        := tdbfield('APPARATUS','USECODE');
    GetField('NFIRSAPP','NARR').AsString        := GetField('APPARATUS','LOGCOMMENTS').AsString + GetField('NARRATIVE','NARRATIVETEXT').AsString;

    {
    GetField('NFIRSAPP','N5AORT').AsString      := tdbfield('INCDAPPS','APPTYPE');
    GetField('NFIRSAPP','N5ACT1').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN1');
    GetField('NFIRSAPP','N5ACT2').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN2');
    GetField('NFIRSAPP','N5ACT3').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN3');
    GetField('NFIRSAPP','N5ACT4').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN4');
    GetField('NFIRSAPP','N5AU').AsString        := tdbfield('INCDAPPS','APPUSE');
    GetField('NFIRSAPP','NARR').AsString        := GetField('INCDAPPS','NOTES').AsString;
    }
    GetTable('NFIRSAPP').Post;
    A('APPARATUS').Skip(1);
  end;
end;

procedure TConvZOForm.ConvNfirsEqu;
Var UnitNum : String;
begin
  A('APPEQUIPMENT').UpdateSql('SELECT * FROM APPEQUIPMENT WHERE INCIDENTKEY = ' + AddExpr(tdbfield('INCIDENT','INCIDENTKEY')));
  While Not A('APPEQUIPMENT').Eof do begin
    A('APPARATUS').UpdateSQL('SELECT * FROM APPARATUS WHERE APPARATUSKEY = ' + AddExpr(tdbfield('APPEQUIPMENT','APPARATUSKEY')));
    UnitNum := tdbfield('APPARATUS','APPARATUSID');
    A('NFIRSAPP').UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' AND UNITNUM = ' + AddExpr(UnitNum));
    A('NFIRSEQUUSE').UpdateSQL('SELECT * FROM NFIRSEQUUSE WHERE NFIRSMAINID = ' + pkvalue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND NFIRSAPPID = ' + PKvalue(GetField('NFIRSAPP','NFIRSAPPID').AsString));
    If A('NFIRSEQUUSE').RecordsExist then
      GetTable('NFIRSEQUUSE').Edit
    else
      GetTable('NFIRSEQUUSE').Append;

    GetField('NFIRSEQUUSE','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('NFIRSEQUUSE','NFIRSAPPID').AsString  := GetField('NFIRSAPP','NFIRSAPPID').AsString;

    {
    GetField('NFIRSAPP','N5AORT').AsString      := tdbfield('INCDAPPS','APPTYPE');
    GetField('NFIRSAPP','N5ACT1').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN1');
    GetField('NFIRSAPP','N5ACT2').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN2');
    GetField('NFIRSAPP','N5ACT3').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN3');
    GetField('NFIRSAPP','N5ACT4').AsString      := tdbfield('INCDAPPS','APPACTIONTAKEN4');
    GetField('NFIRSAPP','N5AU').AsString        := tdbfield('INCDAPPS','APPUSE');
    GetField('NFIRSAPP','NARR').AsString        := GetField('INCDAPPS','NOTES').AsString;
    }
    GetTable('NFIRSEQUUSE').Post;
    A('APPEQUIPMENT').Skip(1);
  end;
end;

procedure TConvZOForm.ConvNfirsAtt;
begin
  A('PERSONNEL').UpdateSQL('SELECT * FROM PERSONNEL WHERE INCIDENTKEY = ' + edbfield('NFIRSMAIN','GUIDIDNUMBER'));
  While Not A('PERSONNEL').Eof do begin
    If A('PERS').ExactQueryLocate('PERSCODE',GetField('PERSONNEL','PERSONNELID').AsString) then begin
      A('APPARATUS').UpdateSQL('SELECT APPARATUSID FROM APPARATUS WHERE APPARATUSKEY = ' + AddExpr(GetField('PERSONNEL','APPARATUSKEY').AsString));
      A('NFIRSAPP').UpdateSql('SELECT NFIRSAPPID FROM NFIRSAPP WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' AND UNITNUM = ' + AddExpr(GetField('APPARATUS','APPARATUSID').AsString));
      A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE PERSID = ' + PkValue(GetField('PERS','PERSID').AsString) + ' AND NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      If A('NFIRSATT').RecordsExist then
        GetTable('NFIRSATT').Edit
      else
        GetTable('NFIRSATT').Append;

      GetField('NFIRSATT','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSATT','PERSID').AsString      := GetField('PERS','PERSID').AsString;
      GetField('NFIRSATT','NFIRSAPPID').AsString  := GetField('NFIRSAPP','NFIRSAPPID').AsString;
      GetField('NFIRSATT','N5ACT1').AsString      := tdbfield('PERSONNEL','ACTIONTAKEN1');
      GetField('NFIRSATT','N5ACT2').AsString      := tdbfield('PERSONNEL','ACTIONTAKEN2');
      GetField('NFIRSATT','N5ACT3').AsString      := tdbfield('PERSONNEL','ACTIONTAKEN3');
      GetField('NFIRSATT','N5ACT4').AsString      := tdbfield('PERSONNEL','ACTIONTAKEN4');
      if GetField('PERSONNEL','LLOSAP_CREDIT').AsBoolean then
        GetField('NFIRSATT','PERSPOINTTYPEID').AsInteger := 1
      else
        GetField('NFIRSATT','PERSPOINTTYPEID').AsInteger := 2;

      GetTable('NFIRSATT').Post;
    end;
    A('PERSONNEL').Skip(1);
  end;
end;

procedure TConvZOForm.ConvNFIRSCivilian;
begin
  A('CIVILIAN').UpdateSQL('SELECT * FROM CIVILIANCASUALTY WHERE INCIDENTKEY = ' + PkValue(edbfield('NFIRSMAIN','GUIDIDNUMBER')));
  While Not A('CIVILIAN').Eof do begin
    A('NFIRSCIVILIAN').UpdateSQL('SELECT * FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + PkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
    If A('NFIRSCIVILIAN').RecordsExist then
      GetTable('NFIRSCIVILIAN').Edit
    else
      GetTable('NFIRSCIVILIAN').Append;

    GetField('NFIRSCIVILIAN','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('NFIRSCIVILIAN','GUIDIDNUMBER').AsString  := GetField('CIVILIAN','CIVILIANCASUALTYKEY').AsString;

    GetField('NFIRSCIVILIAN','CASNUM').AsString        := GetField('CIVILIAN','SEQUENCE').AsString;
    GetField('NFIRSCIVILIAN','FIRSTNAME').AsString     := tdbfield('CIVILIAN','FIRSTNAME');
    GetField('NFIRSCIVILIAN','NAME').AsString          := tdbfield('CIVILIAN','LASTNAME');
    GetField('NFIRSCIVILIAN','MI').AsString            := tdbfield('CIVILIAN','MIDDLEINITIAL');

    GetField('NFIRSCIVILIAN','SEX').AsString           := tdbfield('CIVILIAN','GENDER');
    GetField('NFIRSCIVILIAN','SUFFIX').AsString        := tdbfield('CIVILIAN','NAMESUFFIX');

    GetField('NFIRSCIVILIAN','AGE').AsFloat            := Int(GetField('CIVILIAN','AGE').AsFloat);
    GetField('NFIRSCIVILIAN','DOB').AsDateTime         := GetField('CIVILIAN','DATEOFBIRTH').AsDateTime;
    GetField('NFIRSCIVILIAN','RACE').AsString          := tdbfield('CIVILIAN','RACE');
    GetField('NFIRSCIVILIAN','ETHNICITY').AsString     := tdbfield('CIVILIAN','ETHNICITY');
    GetField('NFIRSCIVILIAN','AFFILIAT').AsString      := tdbfield('CIVILIAN','AFFILIATION');
    GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDateTime := GetField('CIVILIAN','DATETIMEOFCASUALTY').AsDateTime;
    GetField('NFIRSCIVILIAN','CASSEV').AsString        := tdbfield('CIVILIAN','SEVERITY');
    GetField('NFIRSCIVILIAN','CAUSEINJ').AsString      := tdbfield('CIVILIAN','CAUSEOFINJURY');

    GetField('NFIRSCIVILIAN','HUMANNONE').AsString     := IIf(GetField('CIVILIAN','NONEFLAG').AsString       = 'True','N','');
    GetField('NFIRSCIVILIAN','HUMAN1').AsString        := IIf(tdbfield('CIVILIAN','ASLEEPFLAG')              = 'True','1','');
    GetField('NFIRSCIVILIAN','HUMAN2').AsString        := IIf(tdbfield('CIVILIAN','UNCONCIOUSFLAG')          = 'True','2','');
    GetField('NFIRSCIVILIAN','HUMAN3').AsString        := IIf(tdbfield('CIVILIAN','POSSIBLEALCOHOLFLAG')     = 'True','3','');
    GetField('NFIRSCIVILIAN','HUMAN4').AsString        := IIf(tdbfield('CIVILIAN','POSSIBLEDRUGFLAG')        = 'True','4','');
    GetField('NFIRSCIVILIAN','HUMAN5').AsString        := IIf(tdbfield('CIVILIAN','MENTALLYDISABLEDFLAG')    = 'True','5','');
    GetField('NFIRSCIVILIAN','HUMAN6').AsString        := IIf(tdbfield('CIVILIAN','PHYSICALLYDISABLEDFLAG')  = 'True','6','');
    GetField('NFIRSCIVILIAN','HUMAN7').AsString        := IIf(tdbfield('CIVILIAN','PHYSICALLYRESTRAINEDFLAG')= 'True','7','');
    GetField('NFIRSCIVILIAN','HUMAN8').AsString        := IIf(tdbfield('CIVILIAN','UNATTENDEDPERSONFLAG')    = 'True','8','');

    GetField('NFIRSCIVILIAN','FACTOR1').AsString       := tdbfield('CIVILIAN','CONTRIBUTIONFACTOR1');
    GetField('NFIRSCIVILIAN','FACTOR2').AsString       := tdbfield('CIVILIAN','CONTRIBUTIONFACTOR2');
    GetField('NFIRSCIVILIAN','FACTOR3').AsString       := tdbfield('CIVILIAN','CONTRIBUTIONFACTOR3');
    if (GetField('NFIRSCIVILIAN','FACTOR1').AsString = '') and (GetField('NFIRSCIVILIAN','FACTOR2').AsString = '') and (GetField('NFIRSCIVILIAN','FACTOR3').AsString = '') then
      GetField('NFIRSCIVILIAN','NOFACTORS').AsString := 'N'
    else
      GetField('NFIRSCIVILIAN','NOFACTORS').AsString := 'Y';

    GetField('NFIRSCIVILIAN','ACTINJ').AsString        := tdbfield('CIVILIAN','ACTIVITYATINJURY');
    GetField('NFIRSCIVILIAN','LOCATION').AsString      := tdbfield('CIVILIAN','LOCATIONATINJURY');
    if GetField('NFIRSCIVILIAN','LOCATION').AsString = '4' then
      GetField('NFIRSCIVILIAN','LOCATION').AsString := 'U';
    GetField('NFIRSCIVILIAN','GENLOC').AsString        := tdbfield('CIVILIAN','GENLOCATION');
    if GetField('NFIRSCIVILIAN','GENLOC').AsString = '4' then
      GetField('NFIRSCIVILIAN','GENLOC').AsString := 'U';
    GetField('NFIRSCIVILIAN','STORYSTART').AsString    := tdbfield('CIVILIAN','STORYSTART');
    GetField('NFIRSCIVILIAN','STARTBELOW').AsString    := IIf(tdbfield('CIVILIAN','STARTSTORYBELOW')   = 'True','Y','');
    GetField('NFIRSCIVILIAN','STORYINJ').AsString      := tdbfield('CIVILIAN','STORYWHERE');
    GetField('NFIRSCIVILIAN','INJBELOW').AsString      := IIf(tdbfield('CIVILIAN','STARTSTORYWHEREBELOWGRADE')   = 'True','Y','');

//    GetField('NFIRSCIVILIAN','SPECLOC').AsString       := tdbfield('CIVILIAN','SPECIFICLOCATIONATTIMEOFINJURY');
    GetField('NFIRSCIVILIAN','PRIMSYM').AsString       := tdbfield('CIVILIAN','PRIMARYSYMPTOM');
    GetField('NFIRSCIVILIAN','PARTINJ').AsString       := tdbfield('CIVILIAN','PRIMARYBODYPART');
    GetField('NFIRSCIVILIAN','DISPOSIT').AsString      := IIf(tdbfield('CIVILIAN','DISPOSITION')   = 'True','Y','');


    GetTable('NFIRSCIVILIAN').Post;
    A('CIVILIAN').Skip(1);
  end;

//  A('IN5CCAS').UpdateSQL('SELECT * FROM IN5CCAS WHERE IN5BASICGUIDIDNUMBER = ' + edbfield('INCIDENT','GUIDIDNUMBER'));
//  While not A('IN5CCAS').Eof do begin
//    A('NFIRSCIVILIAN').UpdateSQL('SELECT * FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' AND GUIDIDNUMBER = ' + edbfield('IN5CCAS','GUIDIDNUMBER'));
//    If A('NFIRSCIVILIAN').recordsexist then
//      A('NFIRSCIVILIAN').Edit
//    else
//      A('NFIRSCIVILIAN').Append;
//    GetField('NFIRSCIVILIAN','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
//    GetField('NFIRSCIVILIAN','GUIDIDNUMBER').AsString  := tdbfield('IN5CCAS','GUIDIDNUMBER');
//    GetField('NFIRSCIVILIAN','CASNUM').AsString        := GetField('IN5CCAS','CIVFIRECASUALTYSEQNUM').AsString;
//    GetField('NFIRSCIVILIAN','FIRSTNAME').AsString     := tdbfield('IN5CCAS','FIRSTNAME');
//    GetField('NFIRSCIVILIAN','NAME').AsString          := tdbfield('IN5CCAS','LASTNAME');
//    GetField('NFIRSCIVILIAN','MI').AsString            := tdbfield('IN5CCAS','MIDDLEINITIAL');
//
//    GetField('NFIRSCIVILIAN','SEX').AsString           := tdbfield('IN5CCAS','GENDER');
//    GetField('NFIRSCIVILIAN','SUFFIX').AsString        := tdbfield('IN5CCAS','NAMESUFFIX');
//
//    GetField('NFIRSCIVILIAN','AGE').AsFloat            := Int(GetField('IN5CCAS','AGE').AsFloat);
//    GetField('NFIRSCIVILIAN','DOB').AsDateTime         := GetField('IN5CCAS','DATEOFBIRTH').AsDateTime;
//    GetField('NFIRSCIVILIAN','RACE').AsString          := tdbfield('IN5CCAS','RACE');
//    GetField('NFIRSCIVILIAN','ETHNICITY').AsString     := tdbfield('IN5CCAS','ETHNICITY');
//    GetField('NFIRSCIVILIAN','AFFILIAT').AsString      := tdbfield('IN5CCAS','AFFILIATION');
//    GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDateTime := GetField('IN5CCAS','INJURYDATE').AsDateTime;
//    GetField('NFIRSCIVILIAN','CASSEV').AsString        := tdbfield('IN5CCAS','SEVERITY');
//    GetField('NFIRSCIVILIAN','CAUSEINJ').AsString      := tdbfield('IN5CCAS','CAUSEOFINJURY');
//
//    GetField('NFIRSCIVILIAN','HUMANNONE').AsString     := IIf(tdbfield('IN5CCAS','HUMANFACTORSNONE') = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN1').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS1')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN2').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS2')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN3').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS3')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN4').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS4')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN5').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS5')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN6').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS6')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN7').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS7')    = '1','Y','');
//    GetField('NFIRSCIVILIAN','HUMAN8').AsString        := IIf(tdbfield('IN5CCAS','HUMANFACTORS8')    = '1','Y','');
//
//    GetField('NFIRSCIVILIAN','NOFACTORS').AsString     := IIf(tdbfield('IN5CCAS','FACTORSCONNONE')   = '1','Y','');
//    GetField('NFIRSCIVILIAN','FACTOR1').AsString       := tdbfield('IN5CCAS','CONTRIBUTINGFACTORS1');
//    GetField('NFIRSCIVILIAN','FACTOR2').AsString       := tdbfield('IN5CCAS','CONTRIBUTINGFACTORS2');
//    GetField('NFIRSCIVILIAN','FACTOR3').AsString       := tdbfield('IN5CCAS','CONTRIBUTINGFACTORS3');
//
//    GetField('NFIRSCIVILIAN','ACTINJ').AsString        := tdbfield('IN5CCAS','ACTIVITYWHENINJURED');
//    GetField('NFIRSCIVILIAN','LOCATION').AsString      := tdbfield('IN5CCAS','LOCATIONATTIMEOFINCIDENT');
//    GetField('NFIRSCIVILIAN','GENLOC').AsString        := tdbfield('IN5CCAS','GENERALLOCATIONATTIMEOFINJURY');
//
//    GetField('NFIRSCIVILIAN','STORYSTART').AsString    := tdbfield('IN5CCAS','STORYATSTARTOFINCIDENT');
//    GetField('NFIRSCIVILIAN','STARTBELOW').AsString    := IIf(tdbfield('IN5CCAS','STORYATSTARTBELOW')   = '1','Y','');
//    GetField('NFIRSCIVILIAN','STORYINJ').AsString      := tdbfield('IN5CCAS','STORYWHENINJURYOCCURRED');
//    GetField('NFIRSCIVILIAN','INJBELOW').AsString      := IIf(tdbfield('IN5CCAS','STORYWHEREINJURYOCCURREDBELOW')   = '1','Y','');
//
//    GetField('NFIRSCIVILIAN','SPECLOC').AsString       := tdbfield('IN5CCAS','SPECIFICLOCATIONATTIMEOFINJURY');
//    GetField('NFIRSCIVILIAN','PRIMSYM').AsString       := tdbfield('IN5CCAS','PRIMARYAPPARENTSYMPTOM');
//    GetField('NFIRSCIVILIAN','PARTINJ').AsString       := tdbfield('IN5CCAS','PRIMARYPARTOFBODYINJURED');
//    GetField('NFIRSCIVILIAN','DISPOSIT').AsString      := IIf(tdbfield('IN5CCAS','DISPOSITION')   = '1','Y','');
//    GetField('NFIRSCIVILIAN','NARR').AsString          := GetField('IN5CCAS','REMARKS').AsString;
//    A('NFIRSCIVILIAN').Post;
//
//    A('IN5CCAS').Skip(1);
//  end;
end;

procedure TConvZOForm.ConvNFIRSFireCasualty;
begin
  A('FIRECAS').UpdateSQL('SELECT * FROM FIRESERVICECASUALTY WHERE INCIDENTKEY = ' + AddExpr(GetField('NFIRSMAIN','GUIDIDNUMBER').AsString));
  While not A('FIRECAS').Eof do begin
    A('NFIRSFIRECASUALTY').UpdateSQL('SELECT * FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + PkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND GUIDIDNUMBER = ' + AddExpr(GetField('FIRECAS','FIRESERVICECASUALTYKEY').AsString));
    If A('NFIRSFIRECASUALTY').recordsexist then
      A('NFIRSFIRECASUALTY').Edit
    else
      A('NFIRSFIRECASUALTY').Append;
    GetField('NFIRSFIRECASUALTY','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('NFIRSFIRECASUALTY','GUIDIDNUMBER').AsString  := tdbfield('FIRECAS','FIRESERVICECASUALTYKEY');
    GetField('NFIRSFIRECASUALTY','PERSID').AsString        := tdbfield('FIRECAS','PERSONNELID');

    GetField('NFIRSFIRECASUALTY','SEX').AsString           := tdbfield('FIRECAS','GENDER');
    GetField('NFIRSFIRECASUALTY','FIRSTNAME').AsString     := tdbfield('FIRECAS','FIRSTNAME');
    GetField('NFIRSFIRECASUALTY','MI').AsString            := tdbfield('FIRECAS','MIDDLEINITIAL');
    GetField('NFIRSFIRECASUALTY','NAME').AsString          := tdbfield('FIRECAS','LASTNAME');
    GetField('NFIRSFIRECASUALTY','SUFFIX').AsString        := tdbfield('FIRECAS','NAMESUFFIX');
    GetField('NFIRSFIRECASUALTY','CARVOL').AsString        := tdbfield('FIRECAS','CAREER');

    GetField('NFIRSFIRECASUALTY','AGE').AsString           := tdbfield('FIRECAS','AGE');
    GetField('NFIRSFIRECASUALTY','DOB').AsString           := tdbfield('FIRECAS','DATEOFBIRTH');
    GetField('NFIRSFIRECASUALTY','NUMRESP').AsString       := tdbfield('FIRECAS','RESPONSES');
    GetField('NFIRSFIRECASUALTY','ASSIGN').AsString        := tdbfield('FIRECAS','USUALASSIGNMENT');
    GetField('NFIRSFIRECASUALTY','COND').AsString          := tdbfield('FIRECAS','CONDITIONPRIOR');
    GetField('NFIRSFIRECASUALTY','DATETIMEINJ').AsString   := tdbfield('FIRECAS','DATETIMEOFCASUALTY');

    GetField('NFIRSFIRECASUALTY','SEV').AsString           := tdbfield('FIRECAS','SEVERITY');
    GetField('NFIRSFIRECASUALTY','TAKENTO').AsString       := tdbfield('FIRECAS','TAKENTO');
    GetField('NFIRSFIRECASUALTY','ACTINJ').AsString        := tdbfield('FIRECAS','ACTIVITYATINJURY');
    GetField('NFIRSFIRECASUALTY','PRIMSYMP').AsString      := tdbfield('FIRECAS','PRIMARYSYMPTOM');
    GetField('NFIRSFIRECASUALTY','PRIMINJ').AsString       := tdbfield('FIRECAS','PRIMARYBODYPART');
    GetField('NFIRSFIRECASUALTY','CAUSEINJ').AsString      := tdbfield('FIRECAS','CAUSEOFINJURY');
    GetField('NFIRSFIRECASUALTY','FACTCONT').AsString      := tdbfield('FIRECAS','CONTRIBUTIONFACTOR');
    GetField('NFIRSFIRECASUALTY','OBJINV').AsString        := tdbfield('FIRECAS','OBJECTINVOLVEDINJURY');

    GetField('NFIRSFIRECASUALTY','WHEREINJ').AsString      := tdbfield('FIRECAS','WHEREOCCUR');
    GetField('NFIRSFIRECASUALTY','INJREL').AsString        := tdbfield('FIRECAS','INSIDESTRUCTURE');
    GetField('NFIRSFIRECASUALTY','SPECLOC').AsString       := tdbfield('FIRECAS','SPECIFICLOCATION');
    GetField('NFIRSFIRECASUALTY','STORYINJ').AsString      := tdbfield('FIRECAS','STORYOFINJURY');
    GetField('NFIRSFIRECASUALTY','VEHTYPE').AsString       := tdbfield('FIRECAS','VEHICLETYPE');
    GetField('NFIRSFIRECASUALTY','INJREL').AsString        := IIF(tdbfield('FIRECAS','INSIDESTRUCTURE') = 'True','1','2');
    GetField('NFIRSFIRECASUALTY','PROTEQUF').AsString      := IIF(tdbfield('FIRECAS','PROTECTIVEEQUIPMENTFACTOR') = 'True','Y','N');

//    GetField('NFIRSFIRECASUALTY','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
//    GetField('NFIRSFIRECASUALTY','GUIDIDNUMBER').AsString  := tdbfield('IN5FCAS','GUIDIDNUMBER');
//    GetField('NFIRSFIRECASUALTY','CASNUM').AsString        := GetField('IN5FCAS','FIRESERVICECASUALTYSEQNUM').AsString;
//
//    GetField('NFIRSFIRECASUALTY','SEX').AsString           := tdbfield('IN5FCAS','GENDER');
//    GetField('NFIRSFIRECASUALTY','FIRSTNAME').AsString     := tdbfield('IN5FCAS','FIRSTNAME');
//    GetField('NFIRSFIRECASUALTY','MI').AsString            := tdbfield('IN5FCAS','MIDDLEINITIAL');
//    GetField('NFIRSFIRECASUALTY','NAME').AsString          := tdbfield('IN5FCAS','LASTNAME');
//    GetField('NFIRSFIRECASUALTY','SUFFIX').AsString        := tdbfield('IN5FCAS','NAMESUFFIX');
//    GetField('NFIRSFIRECASUALTY','CARVOL').AsString        := tdbfield('IN5FCAS','CAREER');
//
//    GetField('NFIRSFIRECASUALTY','AGE').AsString           := tdbfield('IN5FCAS','AGE');
//    GetField('NFIRSFIRECASUALTY','DOB').AsString           := tdbfield('IN5FCAS','DATEOFBIRTH');
//    GetField('NFIRSFIRECASUALTY','NUMRESP').AsString       := tdbfield('IN5FCAS','RESPONSES');
//    GetField('NFIRSFIRECASUALTY','ASSIGN').AsString        := tdbfield('IN5FCAS','USUALASSIGNMENT');
//    GetField('NFIRSFIRECASUALTY','COND').AsString          := tdbfield('IN5FCAS','PHYSICALCONDITION');
//    GetField('NFIRSFIRECASUALTY','DATETIMEINJ').AsString   := tdbfield('IN5FCAS','INJURYDATE');
//
//    GetField('NFIRSFIRECASUALTY','SEV').AsString           := tdbfield('IN5FCAS','SEVERITY');
//    GetField('NFIRSFIRECASUALTY','TAKENTO').AsString       := tdbfield('IN5FCAS','TAKENTO');
//    GetField('NFIRSFIRECASUALTY','ACTINJ').AsString        := tdbfield('IN5FCAS','ACTIVITYATTIMEOFINJURY');
//    GetField('NFIRSFIRECASUALTY','PRIMSYMP').AsString      := tdbfield('IN5FCAS','PRIMARYAPPARENTSYMPTOM');
//    GetField('NFIRSFIRECASUALTY','PRIMINJ').AsString       := tdbfield('IN5FCAS','PRIMARYAREAOFBODYINJURED');
//    GetField('NFIRSFIRECASUALTY','CAUSEINJ').AsString      := tdbfield('IN5FCAS','CAUSEOFFIREFIGHTERINJURY');
//    GetField('NFIRSFIRECASUALTY','FACTCONT').AsString      := tdbfield('IN5FCAS','FACTORCONTRIBUTINGTOINJURY');
//    GetField('NFIRSFIRECASUALTY','OBJINV').AsString        := tdbfield('IN5FCAS','OBJECTINVOLVEDININJURY');
//
//    GetField('NFIRSFIRECASUALTY','WHEREINJ').AsString      := tdbfield('IN5FCAS','WHEREINJURYOCCURRED');
//    GetField('NFIRSFIRECASUALTY','INJREL').AsString        := tdbfield('IN5FCAS','INJURYRELATIONTOSTRUCTURE');
//    GetField('NFIRSFIRECASUALTY','SPECLOC').AsString       := tdbfield('IN5FCAS','SPECIFICLOCATION');
//    GetField('NFIRSFIRECASUALTY','STORYINJ').AsString      := tdbfield('IN5FCAS','STORYOFINJURY');
//    GetField('NFIRSFIRECASUALTY','VEHTYPE').AsString       := tdbfield('IN5FCAS','VEHICLETYPE');
//    GetField('NFIRSFIRECASUALTY','PROTEQUF').AsString      := tdbfield('IN5FCAS','PROTEQUIPCONTRIBINJURY');
//    GetField('NFIRSFIRECASUALTY','NARR').AsString          := tdbfield('IN5FCAS','REMARKS');
    A('NFIRSFIRECASUALTY').Post;

    A('FIRECAS').Skip(1);
  end;
end;

procedure TConvZOForm.LoadDispCall;
begin
  A('DISPCALL').UpdateSQL('SELECT * FROM DISPCALL WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
  If A('DISPCALL').recordsexist then
    A('DISPCALL').Edit
  else
    A('DISPCALL').Append;
  GetField('DISPCALL','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
  GetField('DISPCALL','DATETIMEREC').AsDateTime := GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime;
  GetField('DISPCALL','DATETIMEOUT').AsDateTime := GetField('NFIRSMAIN','DATETIMEOUT').AsDateTime;
  GetField('DISPCALL','DATETIMEARR').AsDateTime := GetField('NFIRSMAIN','DATETIMEARR').AsDateTime;
  GetField('DISPCALL','DATETIMEIN').AsDateTime  := GetField('NFIRSMAIN','DATETIMEIN').AsDateTime;
  GetField('DISPCALL','FDID').AsString          := tdbfield('NFIRSMAIN','FDID');
  GetField('DISPCALL','STRNUM').AsString        := alltrim(tdbfield('NFIRSMAIN','STRNUM'));
  GetField('DISPCALL','STREET').AsString        := alltrim(tdbfield('NFIRSMAIN','STREET'));
  GetField('DISPCALL','ADDRESS').AsString       := alltrim(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET'));
  GetField('DISPCALL','CITY').AsString          := alltrim(tdbfield('NFIRSMAIN','CITY'));
  GetField('DISPCALL','STATE').AsString         := alltrim(tdbfield('NFIRSMAIN','STATE'));
  GetField('DISPCALL','ZIP').AsString           := alltrim(tdbfield('NFIRSMAIN','ZIP'));
  GetField('DISPCALL','SITENAME').AsString      := tdbfield('NFIRSMAIN','PLASTNAME');
  GetField('DISPCALL','CROSS1').AsString        := tdbfield('NFIRSMAIN','CROSS1');
  GetField('DISPCALL','CROSS2').AsString        := tdbfield('NFIRSMAIN','CROSS2');
  GetField('DISPCALL','COUNTYNUM').AsString     := tdbfield('NFIRSMAIN','COUNTYNUM');
  GetField('DISPCALL','INCSTAT').AsString       := 'CLOSED';
  GetField('DISPCALL','LATITUDE').AsFloat       := GetField('NFIRSMAIN','LATITUDE').AsFloat;
  GetField('DISPCALL','LONGITUDE').AsFloat      := GetField('NFIRSMAIN','LONGITUDE').AsFloat;
  A('DISPCALL').Post;
  RunSQL('UPDATE NFIRSMAIN SET DISPCALLID = ' + PkValue(GetField('DISPCALL','DISPCALLID').AsString) + ' WHERE NFIRSMAINID = ' + PkValue(Getfield('NFIRSMAIN','NFIRSMAINID').AsString));
end;

function TConvZOForm.GetFdid(Code: String): String;
begin
  If Code = '1' then
    GetFdid := '13001'
  else if Code = '2' then
    GetFdid := '13002'
  else if Code = '3' then
    GetFdid := '13003'
  else if Code = '4' then
    GetFdid := '13004'
  else if Code = '5' then
    GetFdid := '13005'
  else if Code = '6' then
    GetFdid := '13006'
  else if Code = '7' then
    GetFdid := '13007'
  else if Code = '8' then
    GetFdid := '13008'
  else if Code = '9' then
    GetFdid := '13009'
  else if Code = '10' then
    GetFdid := '13010'
  else if Code = '11' then
    GetFdid := '13011'
  else if Code = '12' then
    GetFdid := '13012'
  else if Code = '13' then
    GetFdid := '13013'
  else
    GetFdid := '13000';
end;

procedure TConvZOForm.PersButtonClick(Sender: TObject);
var PersCode       : String;
begin
  AddStatusListBox(ListBox,'PERSON Conversion . . . . . . Started');
  ConnectZoll;
  ConnectLosap;

  Open_Query(ZollDatabase,'PER_BAS',false,'SELECT * FROM PER_BAS');
  //Open_Query(ZollDatabase,'PER_BAS',false,'SELECT * FROM PER_BAS WHERE CODE = ' + AddExpr('8722'));
  Open_Query(ZollDatabase,'PER_NOTES',false,'SELECT * FROM PER_NOTES WHERE 1=2');
  Open_Query(LosapDatabase,'VOLUNTEER',false,'SELECT * FROM VOLUNTEER WHERE 1=2');
  Open_Query(LosapDatabase,'RELATION_CODE',false,'SELECT RELATION_CODE, RELATION_DESCRIPTION FROM RELATION_CODE');

  Open_Query('PERS',      true, 'SELECT * FROM PERS     WHERE 1=2');
  Open_Query('PERSNARR',  true, 'SELECT * FROM PERSNARR WHERE 1=2');
  Open_Query('PERSBEN',   true, 'SELECT * FROM PERSBEN  WHERE 1=2');
  Open_Query('PERSSTAT',  false,'SELECT * FROM PERSSTAT');
  Open_Query('PERSTYPE',  false,'SELECT * FROM PERSTYPE');
  Open_Query('PERSRACE',  false,'SELECT * FROM PERSRACE');
  Open_Query('REDNMXCODE',false,'SELECT * FROM REDNMXCODE');
  Open_Query('SCHDLOC',   false,'SELECT * FROM SCHDLOC');

  Gauge.MaxValue := A('PER_BAS').QueryRecCount;
  Gauge.Progress := 0;
  while not A('PER_BAS').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    PersCode       := tdbfield('PER_BAS','CODE');
    If Not (PersCode = '')  then begin
      A('PERS').UpdateSQL('SELECT * FROM PERS WHERE PERSCODE = ' + AddExpr(PersCode));

      If A('PERS').recordsexist then
        A('PERS').Edit
      else
        A('PERS').Append;

      GetField('PERS','DOB').AsString         := '';
      GetField('PERS','JOINDATE').AsString    := '';
      GetField('PERS','RESDATE').AsString     := '';
      GetField('PERS','PERSRACEID').AsString  := '';

      GetField('PERS','PERSCODE').AsString    := PersCode;
 //     GetField('PERS','FDID').AsString        := MFireID;

      GetField('PERS','FNAME').AsString       := tdbfield('PER_BAS','firstname');
      GetField('PERS','LNAME').AsString       := tdbfield('PER_BAS','lastname');
      GetField('PERS','MNAME').AsString       := UpperCase(copy(trim(GetField('PER_BAS','mi').AsString),1,1));
      GetField('PERS','ADD1').AsString        := trim(GetField('PER_BAS','ADDRESS1').AsString);
      GetField('PERS','ADD2').AsString        := trim(GetField('PER_BAS','ADDRESS2').AsString);
      GetField('PERS','CITY').AsString        := trim(GetField('PER_BAS','CITY').AsString);
      GetField('PERS','STATE').AsString       := trim(GetField('PER_BAS','STATE').AsString);
      GetField('PERS','ZIP').AsString         := trim(GetField('PER_BAS','ZIPCODE').AsString);
      GetField('PERS','PHONE').AsString       := CleanPhone(tdbfield('PER_BAS','HM_Phone'));
      GetField('PERS','OCCPHONE').AsString    := CleanPhone(tdbfield('PER_BAS','WK_Phone'));
      GetField('PERS','CELL').AsString        := CleanPhone(tdbfield('PER_BAS','Pager'));
      GetField('PERS','EMERGPHONE').AsString  := CleanPhone(tdbfield('PER_BAS','EM_Phone'));
      GetField('PERS','PAGER').AsString       := '';
      GetField('PERS','EMERGNAME').AsString   := trim(GetField('PER_BAS','EM_CONTACT').AsString);
      GetField('PERS','SOCSEC').AsString      := IIf(tdbfield('PER_BAS','SS_No') = '','',substr(tdbfield('PER_BAS','SS_No'),1,3) + '-' + substr(tdbfield('PER_BAS','SS_No'),4,2) + '-' + substr(tdbfield('PER_BAS','SS_No'),6,4));

      If GetField('PER_BAS','BIRTH_DATE').AsDateTime > 0 then
        GetField('PERS','DOB').AsDateTime := GetField('PER_BAS','Birth_Date').AsDateTime;

      If GetField('PER_BAS','PSLSTADATE').AsDateTime > 0 then
        GetField('PERS','JOINDATE').AsDateTime := GetField('PER_BAS','PSLSTADATE').AsDateTime;

      If GetField('PER_BAS','PSLENDDATE').AsDateTime > 0 then begin
        GetField('PERS','RESDATE').AsDateTime := GetField('PER_BAS','Pslenddate').AsDateTime;
        GetField('PERS','ATTEND').AsString    := 'N';

      end else begin
        GetField('PERS','ATTEND').AsString    := 'Y';

      end;


      If GetField('PER_BAS','DL_Expr_Date').AsDateTime > 0 then
        GetField('PERS','DLEXP').AsDateTime := GetField('PER_BAS','DL_Expr_Date').AsDateTime;

      GetField('PERS','SEX').AsString           := substr(tdbfield('PER_BAS','Gender'),1,1);
      GetField('PERS','DLNUM').AsString         := tdbfield('PER_BAS','DL_Number');
      GetField('PERS','DLSTATE').AsString       := 'MD';
      GetField('PERS','EMAIL').AsString         := tdbfield('PER_BAS','emailaddress');

      GetField('PERS','ROLODEX').AsString       := 'Y';

      If A('PERSRACE').ExactQueryLocate('CONVCODE',tdbfield('PER_BAS','PB_RACE')) then
        GetField('PERS','PERSRACEID').AsString := GetField('PERSRACE','PERSRACEID').AsString;
      If A('PERSTYPE').ExactQueryLocate('DESCR',tdbfield('PER_BAS','STATUS')) then
        GetField('PERS','PERSTYPEID').AsString := GetField('PERSTYPE','PERSTYPEID').AsString;

     { A('VOLUNTEER').UpdateSQL('SELECT * FROM VOLUNTEER WHERE EID_NO = ' + AddExpr(persCode));
      // If person has entry in LOSAP Database
      if A('VOLUNTEER').RecordsExist then begin
        GetField('PERS','YOS').AsString               := GetField('VOLUNTEER','YEARS_STATE').AsString;
       GetField('PERS','HCYOSCOUNTY').AsString       := GetField('VOLUNTEER','YEARS_COUNTY').AsString;
        GetField('PERS','HCCOUNTYPIN').AsString       := iif(GetField('VOLUNTEER','COUNTY_SERVICE_PIN').AsString = 'True', 'Y', 'N');
        GetField('PERS','HCCORPPIN').AsString         := GetField('VOLUNTEER','CORP_SERVICE_PIN_CODE').AsString;
        GetField('PERS','HCNEWSLETTER').AsString      := iif(GetField('VOLUNTEER','NEWSLETTER').AsString = 'True', 'Y', 'N');
        GetField('PERS','HCCORP').AsString            := GetField('VOLUNTEER','CORPORATION_CODE').AsString;
        GetField('PERS','HCFIRECERTLEVEL').AsString   := GetField('VOLUNTEER','FIRE_LEVEL_CODE').AsString;
        GetField('PERS','HCEMSCERTLEVEL').AsString    := GetField('VOLUNTEER','EMS_LEVEL_CODE').AsString;
        GetField('PERS','HCPRIORSTATEYEARS').AsString := GetField('VOLUNTEER','PRIOR_STATE_YEARS').AsString;
        GetField('PERS','HCFIRSTJOIN').AsString       := GetField('VOLUNTEER','FIRST_JOINED_DATE').AsString;
        GetField('PERS','HCLATESTJOIN').AsString      := GetField('VOLUNTEER','LATEST_REJOINED_DATE').AsString;
        GetField('PERS','PERSDLCLASSID').AsString     := GetField('VOLUNTEER','DRIVERS_LICENSE_CLASS_CODE').AsString;
        GetField('PERS','HCENDORSEMENTS').AsString    := GetField('VOLUNTEER','DRIVERS_LICENSE_ENDORSEMENTS').AsString;


        // Add beneficiaries
        if not(GetField('VOLUNTEER','BEN1_NAME').AsString = '') then begin
          A('PERSBEN').Append;
          GetField('PERS','BENEFIT').AsString           := GetField('VOLUNTEER','BEN1_NAME').AsString;
          GetField('PERS','BENEFITPHONE').AsString      := GetField('VOLUNTEER','BEN1_PHONE').AsString;
          GetField('PERSBEN','PERSID').AsString         := GetField('PERS','PERSID').AsString;
          GetField('PERSBEN','NAME').AsString           := GetField('VOLUNTEER','BEN1_NAME').AsString;
          GetField('PERSBEN','DESCR').AsString          := SQLLookup(LosapDatabase, GetField('VOLUNTEER','BEN1_RELATION_CODE').AsString,'RELATION_CODE','RELATION_CODE','RELATION_DESCRIPTION');
          GetField('PERSBEN','NARR').AsString           := CleanPhone(GetField('VOLUNTEER','BEN1_PHONE').AsString);
          GetField('PERSBEN','PERSBENTYPEID').AsString  := '3'; // Primary Beneficiary key
          A('PERSBEN').Post;
        end;
        if not(GetField('VOLUNTEER','BEN2_NAME').AsString = '') then begin
          A('PERSBEN').Append;
          GetField('PERSBEN','PERSID').AsString         := GetField('PERS','PERSID').AsString;
          GetField('PERSBEN','NAME').AsString           := GetField('VOLUNTEER','BEN2_NAME').AsString;
          GetField('PERSBEN','DESCR').AsString          := SQLLookup(LosapDatabase, GetField('VOLUNTEER','BEN2_RELATION_CODE').AsString,'RELATION_CODE','RELATION_CODE','RELATION_DESCRIPTION');
          GetField('PERSBEN','NARR').AsString           := CleanPhone(GetField('VOLUNTEER','BEN2_PHONE').AsString);
          GetField('PERSBEN','PERSBENTYPEID').AsString  := '4'; // Secondary Beneficiary key
          A('PERSBEN').Post;
        end;

        // If not in Zoll
        if GetField('PERS','DLNUM').AsString = '' then
          GetField('PERS','DLNUM').AsString := GetField('VOLUNTEER','DRIVERS_LICENSE_NO').AsString;
      end;     }




    {  A('PER_NOTES').UpdateSQL('SELECT * FROM PER_NOTES WHERE PSLID = ' + edbfield('PER_BAS','PSLID'));
      While Not A('PER_NOTES').Eof do begin
        If substr(dbfield('PER_NOTES','DESCRIPTION'),1,2) = 'WC' then begin
          GetField('PERS','HCWC').AsString     := tdbfield('PER_NOTES','DESCRIPTION');
          GetField('PERS','HCWCDATE').AsString := GetField('PER_NOTES','NOTE_DATE').AsString;
        end else if substr(dbfield('PER_NOTES','DESCRIPTION'),1,2) = 'LI' then begin
          GetField('PERS','HCLI').AsString     := tdbfield('PER_NOTES','DESCRIPTION');
          GetField('PERS','HCLIDATE').AsString := GetField('PER_NOTES','NOTE_DATE').AsString;
        end;
        A('PER_NOTES').Skip(1);
      end;    }

      A('PERS').Post;

     { A('PER_NOTES').GoTop;
      While Not A('PER_NOTES').Eof do begin
        A('PERSNARR').UpdateSQL('SELECT * FROM PERSNARR WHERE CONVCODE = ' + edbfield('PER_NOTES','PSNOTEID'));
        If A('PERSNARR').RecordsExist then
          A('PERSNARR').Edit
        else
          A('PERSNARR').Append;
        GetField('PERSNARR','PERSID').AsString        := GetField('PERS','PERSID').AsString;
        GetField('PERSNARR','CODE').AsString          := GetField('PER_NOTES','TYPE').AsString;
        GetField('PERSNARR','DESCR').AsString         := GetField('PER_NOTES','DESCRIPTION').AsString;
        GetField('PERSNARR','NARR').AsString          := GetField('PER_NOTES','TEXT').AsString;
        GetField('PERSNARR','CONVCODE').AsString      := GetField('PER_NOTES','PSNOTEID').AsString;
        GetField('PERSNARR','DATETIMEENT').AsDateTime := GetField('PER_NOTES','NOTE_DATE').AsDateTime;
        A('PERSNARR').Post;
        A('PER_NOTES').Skip(1);
      end;   }

      AddStatusListBox(ListBox,'Loaded Personnel ' + tdbfield('PERS','PERSCODE'));
    end;
    A('PER_BAS').Skip(1);
  end;
  CloseApollo('PER_BAS');
  CloseApollo('PER_NOTES');
  CloseApollo('VOLUNTEER');
  CloseApollo('RELATION_CODE');
  CloseApollo('PERS');
  CloseApollo('PERSBEN');
  CloseApollo('PERSNARR');
  CloseApollo('PERSTYPE');
  CloseApollo('PERSSTAT');
  CloseApollo('PERSRACE');
  CloseApollo('REDNMXCODE');
  CloseApollo('SCHDLOC');
  ZollDatabase.Free;
  LosapDatabase.Free;

  AddStatusListBox(ListBox,'PERSON Conversion . . . . . . Done');
end;

procedure TConvZOForm.LoadPersImageList;
begin
  A('PERSONPIC').UpdateSQL('SELECT * FROM PERSONPIC WHERE PERSONGUIDIDNUMBER = ' + edbfield('PERSON','GUIDIDNUMBER'));
  If A('PERSONPIC').RecordsExist then begin
    A('IMAGELIST').UpdateSQL('SELECT * FROM IMAGELIST WHERE GUIDIDNUMBER = ' + edbfield('PERSONPIC','GUIDIDNUMBER'));
    If A('IMAGELIST').RecordsExist then
      GetTable('IMAGELIST').Edit
    else
      GetTable('IMAGELIST').Append;
    Getfield('IMAGELIST','GUIDIDNUMBER').AsString := tdbfield('PERSONPIC','GUIDIDNUMBER');
    Getfield('IMAGELIST','IMAGEBLOB').AsString    := Getfield('PERSONPIC','PICTURE').AsString;
    GetField('IMAGELIST','FILENAME').AsString     := tdbfield('PERS','PERSCODE') + '.JPG';
    GetField('IMAGELIST','DESCR').AsString        := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME') + ' Member Picture';
    GetField('IMAGELIST','SYSTABLEID').AsString   := SqlLookUp('PERS','TABLENAME','SYSTABLE','SYSTABLEID');
    GetTable('IMAGELIST').Post;
    RunSQL('UPDATE PERS SET IMAGELISTID = ' + GetField('IMAGELIST','IMAGELISTID').AsString + ' WHERE PERSID = ' + GetField('PERS','PERSID').AsString);
  end;
end;

procedure TConvZOForm.LoadPersCont(PersContTypeID: String);
begin
  A('PERSCONT').UpdateSql('SELECT * FROM PERSCONT WHERE PERSID = ' + pkValue(GetField('PERS','PERSID').AsString) + ' AND PERSCONTTYPEID = ' + pkValue(PersContTypeID));
  If A('PERSCONT').RecordsExist then
    A('PERSCONT').Edit
  else
    A('PERSCONT').Append;
  GetField('PERSCONT','PERSID').AsString         := GetField('PERS','PERSID').AsString;
  GetField('PERSCONT','PERSCONTTYPEID').AsString := PersContTypeID;
  GetField('PERSCONT','DESCR').AsString          := tdbfield('PERSON','KINRELATIONSHIP');
  GetField('PERSCONT','NAME').AsString           := tdbfield('PERSON','KINNAME');
  GetField('PERSCONT','HOME').AsString           := CleanPhone(tdbfield('PERSON','KINPHONE1'));
  GetField('PERSCONT','WORK').AsString           := CleanPhone(tdbfield('PERSON','KINPHONE2'));
  GetField('PERSCONT','ADDRESS1').AsString       := tdbfield('PERSON','KINADDRESS1');
  GetField('PERSCONT','ADDRESS2').AsString       := tdbfield('PERSON','KINADDRESS2');
  GetField('PERSCONT','CITY').AsString           := tdbfield('PERSON','KINCITY');
  GetField('PERSCONT','STATE').AsString          := tdbfield('PERSON','KINSTATE');
  GetField('PERSCONT','ZIP').AsString            := tdbfield('PERSON','KINZIP');
  A('PERSCONT').Post;
end;

procedure TConvZOForm.PERSRANKButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Personnel Rank Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'DPTCODES',false,'SELECT * FROM DPTCODES WHERE CATEGORY = ' + AddExpr('POSITION'));
  Open_Query('REDNMXCODE',true,'SELECT * FROM REDNMXCODE WHERE 1=2');

  Gauge.MaxValue := A('DPTCODES').RecordCount;
  Gauge.Progress := 0;

  while not A('DPTCODES').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('REDNMXCODE').UpdateSql('SELECT * FROM REDNMXCODE WHERE CONVCODE = ' + edbfield('DPTCODES','DPTID'));
    If A('REDNMXCODE').RecordsExist then
      A('REDNMXCODE').Edit
    else
      A('REDNMXCODE').Append;

    GetField('REDNMXCODE','FDID').AsString      := FireID;
    GetField('REDNMXCODE','CODE').AsString      := tdbfield('DPTCODES','CODE');
    GetField('REDNMXCODE','DESCR').AsString     := tdbfield('DPTCODES','DESCRIP');
    GetField('REDNMXCODE','FIELDNAME').AsString := 'HCFRPOS';
    GetField('REDNMXCODE','TABLENAME').AsString := 'PERS';
    GetField('REDNMXCODE','CONVCODE').AsString  := tdbfield('DPTCODES','DPTID');
    GetField('REDNMXCODE','ACTIVE').AsString    := 'Y';
    A('REDNMXCODE').Post;

    A('DPTCODES').Skip(1);
  end;

  CloseApollo('REDNMXCODE');
  CloseApollo('DPTCODES');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Personnel Rank Conversion. . . . . . Complete');
end;

procedure TConvZOForm.PropButtonClick(Sender: TObject);
Var Street : String;
    StrNum : String;
begin
  AddStatusListBox(ListBox,'Property Conversion . . . . . . Started');
  ConnectZoll;
  Open_Query(ZollDatabase,'PROPERTY',false,'SELECT * FROM PROPERTY');
  Open_Query(ZollDatabase,'CONTACTS',false,'SELECT * FROM CONTACTS WHERE 1=2');


  Open_Query('PROP',       true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('PROPCONTACT',true,'SELECT * FROM PROPCONTACT WHERE 1=2');

  Gauge.Progress := 0;
  Gauge.MaxValue := A('PROPERTY').QueryRecCount;
  while not A('PROPERTY').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    StrNum         := alltrim(tdbfield('PROPERTY','STREETNUMBER'));
    Street         := UpperCase(alltrim(trim(GetField('PROPERTY','STREETDIRECTION').AsString) + ' ' + trim(GetField('PROPERTY','STREET').AsString) + ' ' + trim(GetField('PROPERTY','STREETTYPE').AsString)));

    If Not (StrNum = '') and Not (Street = '') then begin
      A('PROP').UpdateSql('SELECT * FROM PROP WHERE GUIDIDNUMBER = ' + AddExpr(trim(GetField('PROPERTY','GUIDIDNUMBER').AsString)));
      If A('PROP').RecordsExist then
        A('PROP').Edit
      else
        A('PROP').Append;
      ConvProp;
      A('PROP').Post;
      ConvPropContact;
      AddStatusListBox(ListBox,tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET') + ' ' + tdbfield('PROP','ROOMAPT'));
    end;

    A('PROPERTY').Skip(1);
    Application.ProcessMessages;
  end;
  CloseApollo('PROPERTY');
  CloseApollo('CONTACTS');
  CloseApollo('PROP');
  CloseApollo('PROPCONTACT');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Property Conversion . . . . . . Completed');
end;


procedure TConvZOForm.ConvProp;
begin
  GetField('PROP','GUIDIDNUMBER').AsString  := tdbfield('PROPERTY','GUIDIDNUMBER');
  GetField('PROP','STRNUM').AsString        := alltrim(tdbfield('PROPERTY','STREETNUMBER'));
  GetField('PROP','STREET').AsString        := UpperCase(alltrim(trim(GetField('PROPERTY','STREETDIRECTION').AsString) + ' ' + trim(GetField('PROPERTY','STREET').AsString) + ' ' + trim(GetField('PROPERTY','STREETTYPE').AsString)));
  GetField('PROP','ROOMAPT').AsString       := trim(GetField('PROPERTY','ROOMNUMBER').AsString);
  GetField('PROP','FDID').AsString          := FireID;

  GetField('PROP','CITY').AsString            := UpperCase(tdbfield('PROPERTY','CITY'));
  GetField('PROP','STATE').AsString           := UpperCase(tdbfield('PROPERTY','STATE'));
  GetField('PROP','ZIP').AsString             := tdbfield('PROPERTY','ZIPCODE');
  GetField('PROP','CROSS1').AsString          := Uppercase(trim(GetField('PROPERTY','CROSSSTREETHIGH').AsString));
  GetField('PROP','CROSS2').AsString          := Uppercase(trim(GetField('PROPERTY','CROSSSTREETLOW').AsString));
  GetField('PROP','BOXNUM').AsString          := trim(GetField('PROPERTY','BOXNUMBER').AsString);
  GetField('PROP','PROPTYPEID').AsString      := '1';
  GetField('PROP','PLASTNAME').AsString       := trim(GetField('PROPERTY','BUSINESSNAME').AsString);
  GetField('PROP','CENSUS').AsString          := trim(GetField('PROPERTY','CENSUSTRACT').AsString);

  If (copy(UpperCase(trim(GetField('PROPERTY','DISTRICT').AsString)),1,4) = 'KNOX') then
    GetField('PROP','KNOXBOXYN').AsString       := 'Y';

//GetField('PROP','WORKPHONE').AsString       := CleanPhone(trim(GetField('PROPERTY','PHONE1').AsString));
//GetField('PROP','CELLPHONE').AsString       := CleanPhone(trim(GetField('PROPERTY','PHONE2').AsString));
  GetField('PROP','FIRSTPERS').AsString       := trim(GetField('PROPERTY','EMERNAME1').AsString);
  GetField('PROP','FIRSTPHONE').AsString      := CleanPhone(trim(GetField('PROPERTY','EMERNAME1PHONE').AsString));
  GetField('PROP','SECONDPERS').AsString      := trim(GetField('PROPERTY','EMERNAME2').AsString);
  GetField('PROP','SECONDPHONE').AsString     := CleanPhone(trim(GetField('PROPERTY','EMERNAME2PHONE').AsString));
  GetField('PROP','FIXPROP').AsString         := trim(GetField('PROPERTY','FIXEDPROPERTYUSE').AsString);
  GetField('PROP','NARR').AsString            := trim(GetField('PROPERTY','NOTES').AsString);
end;

procedure TConvZOForm.ConvPropContact;
begin
  A('CONTACTS').UpdateSQL('SELECT * FROM CONTACTS WHERE PROPERTYGUIDIDNUMBER = ' + edbfield('PROPERTY','GUIDIDNUMBER'));
  While not A('CONTACTS').Eof do begin
    If Not (tdbfield('CONTACTS','CONTACTNAME') = '') and Not (tdbfield('CONTACTS','CONTACTNAME') = '.') then begin
      A('PROPCONTACT').UpdateSQL('SELECT * FROM PROPCONTACT WHERE PROPID = ' + GetField('PROP','PROPID').AsString + ' AND NAME = ' + edbfield('CONTACTS','CONTACTNAME'));
      If A('PROPCONTACT').RecordsExist then
        A('PROPCONTACT').Edit
      else
        A('PROPCONTACT').Append;
      GetField('PROPCONTACT','PROPID').AsString          := GetField('PROP','PROPID').AsString;
      GetField('PROPCONTACT','NAME').AsString            := tdbfield('CONTACTS','CONTACTNAME');
      GetField('PROPCONTACT','DESCR').AsString           := tdbfield('CONTACTS','TITLE');
      GetField('PROPCONTACT','PHONEHOME').AsString       := CleanPhone(tdbfield('CONTACTS','PHONE1'));
      GetField('PROPCONTACT','PHONEWORK').AsString       := CleanPhone(tdbfield('CONTACTS','PHONE2'));
      A('PROPCONTACT').Post;
    end;
    A('CONTACTS').Skip(1);
  end;
end;

procedure TConvZOForm.PropSetUpButtonClick(Sender: TObject);
Var Descr : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Property Setup Conversion . . . . . . Started');

  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'USERLKUP',false,'SELECT * FROM USERLKUP');
  Open_Query('PROPCODE',     true,'SELECT * FROM PROPCODE WHERE 1=2');

  Gauge.MaxValue := A('USERLKUP').RecordCount;

  while not A('USERLKUP').Eof do begin
    If tdbfield('USERLKUP','FIELDID') = 'status' then begin
      A('PERSSTAT').UpdateSQL('SELECT * FROM PERSSTAT WHERE DESCR = ' + edbfield('USERLKUP','VALUE'));
      If A('PERSSTAT').RecordsExist then
        A('PERSSTAT').Edit
      else
        A('PERSSTAT').Append;
      Getfield('PERSSTAT','FDID').AsString       := FireID;
      Getfield('PERSSTAT','CODE').AsString       := UpperCase(substr(tdbfield('USERLKUP','VALUE'),1,3));
      Getfield('PERSSTAT','DESCR').AsString      := tdbfield('USERLKUP','VALUE');
      Getfield('PERSSTAT','SHORTDESCR').AsString := tdbfield('USERLKUP','VALUE');
      A('PERSSTAT').Post;
    end;

    A('USERLKUP').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('USERLKUP');
  CloseApollo('PROPCODE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Property Setup Conversion . . . . . . Completed');
end;

procedure TConvZOForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

function TConvZOForm.UCaseFirst(s : string) : string;
begin
  case length(s) of
    0: Result := '';
    1: Result := UpperCase(s);
  else
    Result := UpperCase(copy(s,1,1))+LowerCase(copy(s,2,length(s)));
  end;
end;

procedure TConvZOForm.UserLKUPButtonClick(Sender: TObject);
Var Descr : String;
begin
  inherited;
  AddStatusListBox(ListBox,'901 Codes Conversion . . . . . . Started');

  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'CODES901',false,'SELECT * FROM CODES901');

  Open_Query('PERSSTAT',     true,'SELECT * FROM PERSSTAT      WHERE 1=2');
  Open_Query('PERSTYPE',     true,'SELECT * FROM PERSTYPE      WHERE 1=2');
  Open_Query('PERSRANK',     true,'SELECT * FROM PERSRANK      WHERE 1=2');
  Open_Query('PERSBLOODTYPE',true,'SELECT * FROM PERSBLOODTYPE WHERE 1=2');
  Open_Query('PERSDLCLASS',  true,'SELECT * FROM PERSDLCLASS   WHERE 1=2');
  Open_Query('SCHDRANK',     true,'SELECT * FROM SCHDRANK      WHERE 1=2');
  Open_Query('PERSRACE',     true,'SELECT * FROM PERSRACE      WHERE 1=2');

  Gauge.MaxValue := A('CODES901').RecordCount;

  while not A('CODES901').Eof do begin

    If tdbfield('CODES901','CATEGORY') = 'RACE' then begin
      A('PERSRACE').UpdateSQL('SELECT * FROM PERSRACE WHERE CODE = ' + edbfield('CODES901','CODE'));
      If A('PERSRACE').RecordsExist then
        A('PERSRACE').Edit
      else
        A('PERSRACE').Append;
      Getfield('PERSRACE','CONVCODE').AsString   := tdbfield('CODES901','CDSID');
      Getfield('PERSRACE','CODE').AsString       := tdbfield('CODES901','CODE');
      Getfield('PERSRACE','DESCR').AsString      := tdbfield('CODES901','DESCRIP');
      A('PERSRACE').Post;

    end;

    A('CODES901').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('CODES901');
  CloseApollo('PERSSTAT');
  CloseApollo('PERSTYPE');
  CloseApollo('PERSRANK');
  CloseApollo('SCHDRANK');
  CloseApollo('PERSBLOODTYPE');
  CloseApollo('PERSDLCLASS');
  CloseApollo('PERSRACE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'901 Codes Conversion . . . . . . Completed');
end;

procedure TConvZOForm.NISetupButtonClick(Sender: TObject);
Var Descr     : String;
    NIPTypeID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'User Look Up Conversion . . . . . . Started');

  ConnectZoll;

  NIPTypeID      := SQLLookUp('TR','CODE','NIPTYPE','NIPTYPEID');
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'TRAININGCAT',false,'SELECT * FROM TrainingCATEGORY');

  Open_Query('NITRAINCATTYPE',true,'SELECT * FROM NITRAINCATTYPE WHERE 1=2');
  Open_Query('NISTYPE',       true,'SELECT * FROM NISTYPE WHERE 1=2');

  Gauge.MaxValue := A('TRAININGCAT').RecordCount;
  while not A('TRAININGCAT').Eof do begin
    If tdbfield('TRAININGCAT','CATLEVEL') = '1' then begin
      A('NITRAINCATTYPE').UpdateSQL('SELECT * FROM NITRAINCATTYPE WHERE DESCR = ' + edbfield('TRAININGCAT','VALUE'));
      If A('NITRAINCATTYPE').RecordsExist then
        A('NITRAINCATTYPE').Edit
      else
        A('NITRAINCATTYPE').Append;
      Getfield('NITRAINCATTYPE','CODE').AsString       := UpperCase(substr(tdbfield('TRAININGCAT','VALUE'),1,3));
      Getfield('NITRAINCATTYPE','DESCR').AsString      := tdbfield('TRAININGCAT','VALUE');
      A('NITRAINCATTYPE').Post;

    end else if tdbfield('TRAININGCAT','FIELDID') = 'TRAType' then begin
      A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + pkValue(NIPTypeID) + ' AND DESCR = ' + edbfield('TRAININGCAT','VALUE'));
      If A('NISTYPE').RecordsExist then
        A('NISTYPE').Edit
      else
        A('NISTYPE').Append;
      Getfield('NISTYPE','FDID').AsString       := FireID;
      Getfield('NISTYPE','NIPTYPEID').AsString  := NIPTypeID;
      Getfield('NISTYPE','CODE').AsString       := UpperCase(substr(tdbfield('TRAININGCAT','VALUE'),1,3));
      Getfield('NISTYPE','DESCR').AsString      := tdbfield('TRAININGCAT','VALUE');
      Getfield('NISTYPE','SHORTDESCR').AsString := tdbfield('TRAININGCAT','VALUE');
      A('NISTYPE').Post;

    end;

    A('TRAININGCAT').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('USERLKUP');
  CloseApollo('NISTYPE');
  CloseApollo('NITRAINCATTYPE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'User Look Up Conversion . . . . . . Completed');

end;

procedure TConvZOForm.NITrainCat1ButtonClick(Sender: TObject);
Var CatID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'NITRAINCAT1 Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'TRAININGCATEGORY',false,'SELECT * FROM TRAININGCATEGORY');
  Open_Query('NITRAINCAT1',true,    'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Open_Query('NITRAINCATTYPE',false,'SELECT * FROM NITRAINCATTYPE');

  Gauge.MaxValue := A('TRAININGCATEGORY').RecordCount;
  while not A('TRAININGCATEGORY').Eof do begin

    CatID := tdbfield('TRAININGCATEGORY','CATID');

    A('NITRAINCAT1').UpdateSql('SELECT * FROM NITRAINCAT1 WHERE CATID = ' + edbfield('TRAININGCATEGORY','CATID'));
    If A('NITRAINCAT1').RecordsExist then begin
      A('NITRAINCAT1').Edit;
      AddStatusListBox(ListBox,'Editing NITrainCat ' + CatID);
    end else begin
      A('NITRAINCAT1').Append;
      AddStatusListBox(ListBox,'Adding NITrainCat ' + CatID);
    end;

    GetField('NITRAINCAT1','CATID').AsString    := tdbfield('TRAININGCATEGORY','CATID');
    GetField('NITRAINCAT1','CODE').AsString     := tdbfield('TRAININGCATEGORY','CATCODE');
    GetField('NITRAINCAT1','DESCR').AsString    := tdbfield('TRAININGCATEGORY','CATTITLE');
    GetField('NITRAINCAT1','ACTIVE').AsString   := 'Y';

    {
    If A('NITRAINCATTYPE').ExactQueryLocate('DESCR',tdbfield('TRAINLIB','CATEGORY')) then
      GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString := GetField('NITRAINCATTYPE','NITRAINCATTYPEID').AsString;
    }

    A('NITRAINCAT1').Post;
    A('TRAININGCATEGORY').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('TRAININGCATEGORY');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NITRAINCATTYPE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'NITRAINCAT1 Conversion . . . . . . Started');
end;

procedure TConvZOForm.InspButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Inspection History Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'INSPECT', false,'SELECT * FROM INSPECT  WHERE ' + BuildSQLAlpineDate('INSPECT.INSPECTIONDATE',InitialDateField.Value,FinalDateField.Value) + ' ORDER BY INSPECTIONDATE');
  Open_Query(ZollDatabase,'PROPERTY',false,'SELECT * FROM PROPERTY WHERE 1=2');
  Open_Query(ZollDatabase,'VIOLATE', false,'SELECT * FROM VIOLATE  WHERE 1=2');
  Open_Query('INSP',    true, 'SELECT * FROM INSP WHERE 1=2');
  Open_Query('VIO',     true, 'SELECT * FROM VIO  WHERE 1=2');
  Open_Query('INSPTYPE',false,'SELECT * FROM INSPTYPE');
  Open_Query('PERS',    false,'SELECT LOOKUPID, PERSID FROM PERS');

  Gauge.MaxValue := A('INSPECT').RecordCount;
  while not A('INSPECT').Eof do begin
    A('INSP').UpdateSql('SELECT * FROM INSP WHERE GUIDIDNUMBER = ' + edbfield('INSPECT','GUIDIDNUMBER'));
    If A('INSP').RecordsExist then
      A('INSP').Edit
    else
      A('INSP').Append;
    GetField('INSP','GUIDIDNUMBER').AsString  := tdbfield('INSPECT','GUIDIDNUMBER');
    GetField('INSP','DATETIMESTART').AsString := GetField('INSPECT','INSPECTIONDATE').AsString;
    A('PROPERTY').UpdateSQL('SELECT * FROM PROPERTY WHERE GUIDIDNUMBER = ' + edbfield('INSPECT','PROPERTYGUIDIDNUMBER'));
    If A('PROPERTY').RecordsExist then begin
      GetField('INSP','STRNUM').AsString  := alltrim(tdbfield('PROPERTY','STREETNUMBER'));
      GetField('INSP','STREET').AsString  := UpperCase(alltrim(trim(GetField('PROPERTY','STREETDIRECTION').AsString) + ' ' + trim(GetField('PROPERTY','STREET').AsString) + ' ' + trim(GetField('PROPERTY','STREETTYPE').AsString)));
      GetField('INSP','ROOMAPT').AsString := tdbfield('PROPERTY','ROOMNUMBER');
      GetField('INSP','CITY').AsString    := UpperCase(tdbfield('PROPERTY','CITY'));
      GetField('INSP','STATE').AsString   := UpperCase(tdbfield('PROPERTY','STATE'));
      GetField('INSP','ZIP').AsString     := tdbfield('PROPERTY','ZIPCODE');
      GetField('INSP','NAME').AsString    := tdbfield('PROPERTY','BUSINESSNAME');
    end;

    If A('PERS').ExactQueryLocate('LOOKUPID',tdbfield('INSPECT','INSPECTORLOOKUPID')) then
      GetField('INSP','PERSID').AsString := GetField('PERS','PERSID').AsString;
    If A('INSPTYPE').ExactQueryLocate('DESCR',tdbfield('INSPECT','INSPECTIONTYPE')) then
      GetField('INSP','INSPTYPEID').AsString := GetField('INSPTYPE','INSPTYPEID').AsString;

    A('INSP').Post;

    ConvVio;

    AddStatusListBox(ListBox,GetField('INSP','DATETIMESTART').AsString + ' Added');
    A('INSPECT').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('INSPECT');
  CloseApollo('VIOLATE');
  CloseApollo('PROPERTY');
  CloseApollo('INSP');
  CloseApollo('VIO');
  CloseApollo('INSPTYPE');
  CloseApollo('PERS');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Inspection History Conversion . . . . . . Completed');
end;

procedure TConvZOForm.ConvVio;
begin
  A('VIOLATE').UpdateSQL('SELECT * FROM VIOLATE WHERE INSPECTIONGUIDIDNUMBER = ' + edbfield('INSPECT','GUIDIDNUMBER'));
  While not A('VIOLATE').Eof do begin
    A('VIO').UpdateSQL('SELECT * FROM VIO WHERE INSPID = ' + GetField('INSP','INSPID').AsString + ' AND GUIDIDNUMBER = ' + edbfield('VIOLATE','GUIDIDNUMBER'));
    If A('VIO').RecordsExist then
      A('VIO').Edit
    else
      A('VIO').Append;
    GetField('VIO','INSPID').AsString       := GetField('INSP','INSPID').AsString;
    GetField('VIO','GUIDIDNUMBER').AsString := tdbfield('VIOLATE','GUIDIDNUMBER');
    GetField('VIO','CODE').AsString         := tdbfield('VIOLATE','LKUPCODE');
    GetField('VIO','DESCR').AsString        := tdbfield('VIOLATE','DESCRIPTIONLINE1');
    GetField('VIO','VIONARR').AsString      := GetField('VIOLATE','ADDITIONALNOTES').AsString;
    A('VIO').Post;
    A('VIOLATE').Skip(1);
  end;
end;

procedure TConvZOForm.InspSetButtonClick(Sender: TObject);
Var Descr : String;
begin
  inherited;
  AddStatusListBox(ListBox,'User Look Up Conversion . . . . . . Started');

  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'USERLKUP',false,'SELECT * FROM USERLKUP');

  Open_Query('INSPTYPE',     true,'SELECT * FROM INSPTYPE WHERE 1=2');

  Gauge.MaxValue := A('USERLKUP').RecordCount;
  while not A('USERLKUP').Eof do begin
    If tdbfield('USERLKUP','FIELDID') = 'INS:InspectionType' then begin
      A('INSPTYPE').UpdateSQL('SELECT * FROM INSPTYPE WHERE DESCR = ' + edbfield('USERLKUP','VALUE'));
      If A('INSPTYPE').RecordsExist then
        A('INSPTYPE').Edit
      else
        A('INSPTYPE').Append;
      Getfield('INSPTYPE','CODE').AsString       := UpperCase(substr(tdbfield('USERLKUP','VALUE'),1,3));
      Getfield('INSPTYPE','DESCR').AsString      := tdbfield('USERLKUP','VALUE');
      A('INSPTYPE').Post;
    end;

    A('USERLKUP').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('USERLKUP');
  CloseApollo('INSPTYPE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'User Look Up Conversion . . . . . . Completed');
end;

procedure TConvZOForm.InventoryButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Inventory Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'INVHEAD',false,'SELECT * FROM INVHEAD');
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('INVDESCR',true,'SELECT * FROM INVDESCR');
  Open_Query('INVLOC',True,'SELECT * FROM INVLOC');
  Open_Query('INVMANUFACT',true,'SELECT * FROM INVMANUFACT');
  Open_Query('INVSUBTYPE',true,'SELECT * FROM INVSUBTYPE');

  Gauge.MaxValue := A('INVHEAD').RecordCount;
  while not A('INVHEAD').Eof do begin
    A('INV').UpdateSql('SELECT * FROM INV WHERE GUIDIDNUMBER = ' + edbfield('INVHEAD','GUIDIDNUMBER'));
    If A('INV').RecordsExist then
      A('INV').Edit
    else
      A('INV').Append;

    GetField('INV','GUIDIDNUMBER').AsString  := trim(GetField('INVHEAD','GUIDIDNUMBER').AsString);
    GetField('INV','FDID').AsString          := FireID;
    GetField('INV','TYPE').AsString          := GetInvType(tdbfield('INVHEAD','TYPEUNITPART'));
    GetField('INV','UNITNUM').AsString       := trim(GetField('INVHEAD','UNITPARTID').AsString);
    GetField('INV','LICENSENUM').AsString    := trim(GetField('INVHEAD','SERIALNUM').AsString);
    GetField('INV','INVNUM').AsString        := trim(GetField('INVHEAD','BARCODE').AsString);
    GetField('INV','INCLUDE').AsString       := 'Y';

    If A('INVLOC').ExactQueryLocate('DESCR',trim(GetField('INVHEAD','LOCATIONPRIMARY').AsString)) then
      GetField('INV','INVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
    GetField('INV','INSERVICEDATE').AsString  := trim(GetField('INVHEAD','DATEINSERVICE').AsString);
    If A('INVMANUFACT').ExactQueryLocate('DESCR',alltrim(GetField('INVHEAD','MAKE').AsString)) then
      GetField('INV','MANUFACT').AsString := GetField('INVMANUFACT','DESCR').AsString;
    GetField('INV','MODEL').AsString  := trim(GetField('INVHEAD','MODEL').AsString);

    If A('INVSUBTYPE').ExactQueryLocate('DESCR',alltrim(GetField('INVHEAD','TYPE').AsString)) then
      GetField('INV','INVSUBTYPEID').AsString := GetField('INVSUBTYPE','INVSUBTYPEID').AsString;
    A('INV').Post;
    
    AddStatusListBox(ListBox,trim(GetField('INVHEAD','UNITPARTID').AsString)+': '+alltrim(GetField('INVHEAD','DESCRIPTION').AsString)+ ' Added');
    A('INVHEAD').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('INVHEAD');
  CloseApollo('INV');
  CloseApollo('INVDESCR');
  CloseApollo('INVLOC');
  CloseApollo('INVMANUFACT');
  CloseApollo('INVSUBTYPE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Inventory Conversion . . . . . . Complete');
end;

procedure TConvZOForm.HydButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Hydrant Conversion . . . . . . . Started.');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'HYDRANTS',false,'SELECT * FROM HYDRANTS');
  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');

  Gauge.MaxValue := A('HYDRANTS').RecordCount;
  while not A('HYDRANTS').Eof do begin
    A('HYD').UpdateSql('SELECT * FROM HYD WHERE GUIDIDNUMBER = ' + edbfield('HYDRANTS','GUIDIDNUMBER'));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;

    GetField('HYD','GUIDIDNUMBER').AsString := tdbfield('HYDRANTS','GUIDIDNUMBER');
    GetField('HYD','HYDCODE').AsString      := tdbfield('HYDRANTS','HYDRANTNUMBER');
    GetField('HYD','STRNUM').AsString       := tdbfield('HYDRANTS','STREETNUMBER');
    GetField('HYD','STREET').AsString       := tdbfield('HYDRANTS','STREETNAME');
    GetField('HYD','NARR').AsString         := GetField('HYDRANTS','NOTES').AsString;
    A('HYD').Post;

    AddStatusListBox(ListBox,tdbfield('HYD','HYDCODE') + ' added.');

    A('HYDRANTS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('HYD');
  CloseApollo('HYDRANTS');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Hydrant Conversion . . . . . . . Complete.');
end;

procedure TConvZOForm.ApparatusButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Apparatus Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'APP_BAS',false,'SELECT * FROM APP_BAS');

  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');

  Gauge.MaxValue := A('APP_BAS').RecordCount;
  while not A('APP_BAS').Eof do begin
    A('INV').UpdateSql('SELECT * FROM INV WHERE  UNITNUM = ' + edbfield('APP_BAS','APPCODE'));
    If A('INV').RecordsExist then
      A('INV').Edit
    else
      A('INV').Append;
    GetField('INV','FDID').AsString          := '13000';
    GetField('INV','TYPE').AsString          := 'TRUCK';
    GetField('INV','UNITNUM').AsString       := tdbfield('APP_BAS','APPCODE');
    GetField('INV','INCLUDE').AsString       := 'N';

    AddStatusListBox(ListBox,tdbfield('APP_BAS','APPCODE') + ' Added');

    A('INV').Post;
    A('APP_BAS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('APP_BAS');
  CloseApollo('INV');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Apparatus Conversion . . . . . . Complete');
end;

procedure TConvZOForm.CityButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'City Conversion . . . . . . . Started.');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'cty',false,'SELECT * FROM city');
  Open_Query('CITY',true,'SELECT * FROM CITY WHERE 1=2');

  Gauge.MaxValue := A('cty').RecordCount;
  while not A('cty').Eof do begin
    A('CITY').UpdateSql('SELECT * FROM CITY WHERE CITY = ' + edbfield('ZIPCODES','CITY') + ' AND ZIP = ' + edbfield('ZIPCODES','ZIPCODE'));
    If A('CITY').RecordsExist then
      A('CITY').Edit
    else
      A('CITY').Append;

    GetField('CITY','CITY').AsString    := UpperCase(tdbfield('cty','CTYNAME'));
    GetField('CITY','STATE').AsString   := tdbfield('cty','CTYSTATE');
    GetField('CITY','CADCODE').AsString := tdbfield('cty','CTYID');    //USED FOR LINKING 

    A('CITY').Post;

    AddStatusListBox(ListBox,UpperCase(tdbfield('cty','CTYNAME')) + ', ' + tdbfield('cty','CTYSTATE') +  ' added.');

    A('cty').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('cty');
  CloseApollo('CITY');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'City Conversion . . . . . . . Complete.');
end;

procedure TConvZOForm.CLASSESButtonClick(Sender: TObject);
Var NIPersInvTypeID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Training Classes Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'TRAININGSESSIONHEADER', false,'SELECT * FROM TRAININGSESSIONHEADER WHERE ' + BuildSQLAlpineDate('TRAININGSESSIONHEADER.SESSTART',InitialDateField.Value,FinalDateField.Value) + ' ORDER BY SESSTART');
  Open_Query(ZollDatabase,'TRAININGPARTICIPANT',false,'SELECT * FROM TRAININGPARTICIPANT WHERE 1=2');
  Open_Query(ZollDatabase,'TRAININGCATEGORYHISTORY',false,'SELECT * FROM TRAININGCATEGORYHISTORY WHERE 1=2');
  Open_Query('NI',         true, 'SELECT * FROM NI        WHERE 1=2');
  Open_Query('NIATT',      true, 'SELECT * FROM NIATT     WHERE 1=2');
  Open_Query('NIEV',       true, 'SELECT * FROM NIATT     WHERE 1=2');
  Open_Query('NIEVATT',    true, 'SELECT * FROM NIEVATT   WHERE 1=2');
  Open_Query('NIPERSINV',  true, 'SELECT * FROM NIPERSINV WHERE 1=2');
  Open_Query('NISTYPE',    false,'SELECT * FROM NISTYPE');
  Open_Query('PERS',       false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');

  NIPersInvTypeID := SQLLookUp('OIC','CODE','NIPERSINVTYPE','NIPERSINVTYPEID');

  Gauge.MaxValue := A('TRAININGSESSIONHEADER').RecordCount;
  while not A('TRAININGSESSIONHEADER').Eof do begin
    A('NI').UpdateSql('SELECT * FROM NI WHERE GUIDIDNUMBER = ' + edbfield('C','SESID'));
    If A('NI').RecordsExist then begin
      A('NI').Edit;
      AddStatusListBoxNoTime(ListBox,'Editing NI ' + FormatDateTime('MM/DD/YYYY',GetField('TRAININGSESSIONHEADER','SESSTART').AsDatetime) + ' ' + tdbfield('TRAININGSESSIONHEADER','SESPRVDESC'));
    end else begin
      A('NI').Append;
      AddStatusListBoxNoTime(ListBox,'Adding NI ' + FormatDateTime('MM/DD/YYYY',GetField('TRAININGSESSIONHEADER','SESSTART').AsDatetime) + ' ' + tdbfield('TRAININGSESSIONHEADER','SESPRVDESC'));
    end;

    If A('NISTYPE').ExactQueryLocate('CODE','TR') then begin
      Getfield('NI','NIPTYPEID').AsString := Getfield('NISTYPE','NIPTYPEID').AsString;
      Getfield('NI','NISTYPEID').AsString := Getfield('NISTYPE','NISTYPEID').AsString;
    end;

    GetField('NI','GUIDIDNUMBER').AsString   := tdbfield('TRAININGSESSIONHEADER','SESID');
    GetField('NI','DATETIMESTART').AsString  := Getfield('TRAININGSESSIONHEADER','SESSTART').AsString;
    GetField('NI','DATETIMEEND').AsString    := Getfield('TRAININGSESSIONHEADER','SESEND').AsString;
    GetField('NI','DESCR').AsString          := tdbfield('TRAININGSESSIONHEADER','SESPRVDESC');
    GetField('NI','NARR').AsString           := GetField('TRAININGSESSIONHEADER','SESNOTES').AsString;
    GetField('NI','EVLENGTH').AsFloat        := Getfield('TRAININGSESSIONHEADER','SESDEFHRS').AsFloat;
    GetField('NI','NILOSAPCATID').AsString   := '1';
    A('NI').Post;
//  ConvNIPersInv(NIPersInvTypeID);
    ConvNIAtt;
    ConvNIEV;

    A('TRAININGSESSIONHEADER').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('TRAININGSESSIONHEADER');
  CloseApollo('TRAININGPARTICIPANT');
  CloseApollo('TRAININGCATEGORYHISTORY');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  CloseApollo('NIPERSINV');
  CloseApollo('NISTYPE');
  CloseApollo('PERS');
  CloseApollo('NITRAINCAT1');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Training Classes Conversion . . . . . . Completed');
end;

procedure TConvZOForm.ConvNIPersInv(NIPersInvTypeID: String);
begin
  If Not (tdbfield('CLASSES','LEADINSTRUCTORLOOKUPID') = '') then begin
    A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND NIPERSINVTYPEID = ' + pkvalue(NIPersInvTypeID));
    If A('NIPERSINV').RecordsExist then
      GetTable('NIPERSINV').Edit
    else
      GetTable('NIPERSINV').Append;
    GetField('NIPERSINV','NIID').AsString            := GetField('NI','NIID').AsString;
    GetField('NIPERSINV','NIPERSINVTYPEID').AsString := NIPersInvTypeID;
    If A('PERS').ExactQueryLocate('LOOKUPID',tdbfield('CLASSES','LEADINSTRUCTORLOOKUPID')) then begin
      Getfield('NIPERSINV','PERSID').AsString     := GetField('PERS','PERSID').AsString;
      Getfield('NIPERSINV','PERSRANKID').AsString := GetField('PERS','PERSRANKID').AsString;
    end else
      GetField('NIPERSINV','NAME').AsString   := tdbfield('CLASSES','LEADINSTRUCTORLOOKUPID');

    GetTable('NIPERSINV').Post;
  end;
end;

procedure TConvZOForm.ConvNIAtt;
begin
  A('TRAININGPARTICIPANT').UpdateSQL('SELECT * FROM TRAININGPARTICIPANT WHERE SESID = ' + edbfield('TRAININGSESSIONHEADER','SESID'));
  While Not A('TRAININGPARTICIPANT').Eof do begin
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('TRAININGPARTICIPANT','PARPRSCODE')) then begin
      A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + GetField('NI','NIID').AsString);
      If A('NIATT').RecordsExist then
        GetTable('NIATT').Edit
      else
        GetTable('NIATT').Append;
      GetField('NIATT','NIID').AsString     := GetField('NI','NIID').AsString;
      GetField('NIATT','PERSID').AsString   := GetField('PERS','PERSID').AsString;
      GetField('NIATT','EVLENGTH').AsString := GetField('NI','EVLENGTH').AsString;
      GetField('NIATT','POINT').AsString    := GetField('NI','POINT').AsString;
      GetTable('NIATT').Post;
    end;
    A('TRAININGPARTICIPANT').Skip(1);
  end;
end;

procedure TConvZOForm.ConvNIEV;
begin
  A('TRAININGCATEGORYHISTORY').UpdateSQL('SELECT * FROM TRAININGCATEGORYHISTORY WHERE TCSSESID = ' + edbfield('TRAININGSESSIONHEADER','SESID'));
  While Not A('TRAININGCATEGORYHISTORY').Eof do begin
    If A('NITRAINCAT1').ExactQueryLocate('CATID',tdbfield('TRAININGCATEGORYHISTORY','TCSCATID')) then begin
      A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + Getfield('NI','NIID').AsString + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
      If A('NIEV').RecordsExist then
        GetTable('NIEV').Edit
      else
        GetTable('NIEV').Append;
      GetField('NIEV','NIID').AsString             := GetField('NI','NIID').AsString;
      GetField('NIEV','NITRAINCAT1ID').AsString    := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
      GetField('NIEV','NITRAINCATTYPEID').AsString := GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString;
      GetField('NIEV','DATETIMESTART').AsString    := GetField('NI','DATETIMESTART').AsString;
      GetField('NIEV','EVLENGTH').AsFloat          := GetField('NI','EVLENGTH').AsFloat;
      GetTable('NIEV').Post;

      A('NIATT').UpdateSQL('SELECT PERSID FROM NIATT WHERE NIID = ' + GetField('NI','NIID').AsString);
      While Not A('NIATT').Eof do begin
        A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + GetField('NIEV','NIEVID').AsString + ' AND PERSID = ' + GetField('NIATT','PERSID').AsString);
        If A('NIEVATT').RecordsExist then
          GetTable('NIEVATT').Edit
        else
          GetTable('NIEVATT').Append;
        GetField('NIEVATT','NIID').AsString          := GetField('NI','NIID').AsString;
        GetField('NIEVATT','PERSID').AsString        := GetField('NIATT','PERSID').AsString;
        GetField('NIEVATT','NIEVID').AsString        := GetField('NIEV','NIEVID').AsString;
        GetTable('NIEVATT').Post;
        A('NIATT').Skip(1);
      end;
    end;
    A('TRAININGCATEGORYHISTORY').Skip(1);  
  end;
end;

function TConvZOForm.CleanPhone(Phone: String): String;
begin
  If Length(Phone) = 10 then
    CleanPhone := substr(Phone,1,3) + '-' + substr(Phone,4,3) + '-' + substr(Phone,7,4)
  else if Phone = '(000)000-0000' then
    CleanPhone := ''
  else if (substr(Phone,1,1) = '(') and (Length(Phone) = 13) then
    CleanPhone := substr(Phone,2,3) + '-' + substr(Phone,6,3) + '-' + substr(Phone,10,4)
  else
    CleanPhone := '';
end;

function TConvZOForm.GetInvType(Code: String): String;
begin
  If Code = 'FLEET' then
    GetInvType := 'TRUCK'
  else if Code = 'EQUIPMENT' then
    GetInvType := 'GEN'
  else if Code = 'HOSE' then
    GetInvType := 'HOSE'
  else if Code = 'SCBA' then
    GetInvType := 'SCBA'
  else
    GetInvType := 'GEN'
end;

procedure TConvZOForm.SchdLocButtonClick(Sender: TObject);
Var Code : String;
begin
  inherited;
  AddStatusListBox(ListBox,'SCHDLOC Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'DEPT_STA',false,'SELECT * FROM DEPT_STA');
  Open_Query('SCHDLOC',              true, 'SELECT * FROM SCHDLOC WHERE 1=2');

  Gauge.MaxValue := A('DEPT_STA').RecordCount;
  while not A('DEPT_STA').Eof do begin
    A('SCHDLOC').UpdateSql('SELECT * FROM SCHDLOC WHERE CONVCODE = ' + edbfield('DEPT_STA','STAID'));
    If A('SCHDLOC').RecordsExist then
      A('SCHDLOC').Edit
    else
      A('SCHDLOC').Append;

    GetField('SCHDLOC','CONVCODE').AsString := tdbfield('DEPT_STA','STAID');
    GetField('SCHDLOC','CODE').AsString     := tdbfield('DEPT_STA','STATION');
    GetField('SCHDLOC','DESCR').AsString    := tdbfield('DEPT_STA','DESCRIP');
    A('SCHDLOC').Post;

    AddStatusListBox(ListBox,'Working on SCHDLOC ' + tdbfield('DEPT_STA','STATION'));
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('DEPT_STA').Skip(1);
  end;
  CloseApollo('DEPT_STA');
  CloseApollo('SCHDLOC');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'SCHDLOC Conversion . . . . . . Completed');
end;

procedure TConvZOForm.SchdTypeButtonClick(Sender: TObject);
Var Code : String;
begin
  inherited;
  AddStatusListBox(ListBox,'SCHDTYPE Conversion . . . . . . Started');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'TIMEOFFREASONS',false,'SELECT * FROM TIMEOFFREASONS');
  Open_Query('SCHDTYPE',true,    'SELECT * FROM SCHDTYPE WHERE 1=2');

  Gauge.MaxValue := A('TIMEOFFREASONS').RecordCount;
  while not A('TIMEOFFREASONS').Eof do begin

    Code := uppercase(substr(tdbfield('TIMEOFFREASONS','DESCRIPTION'),1,4));

    A('SCHDTYPE').UpdateSql('SELECT * FROM SCHDTYPE WHERE DESCR = ' + edbfield('TIMEOFFREASONS','DESCRIPTION'));
    If A('SCHDTYPE').RecordsExist then begin
      A('SCHDTYPE').Edit;
      AddStatusListBox(ListBox,'Editing SCHDTYPE ' + Code + '-' + tdbfield('TIMEOFFREASONS','DESCRIPTION'));
    end else begin
      A('SCHDTYPE').Append;
      AddStatusListBox(ListBox,'Adding SCHDTYPE ' + Code + '-' + tdbfield('TIMEOFFREASONS','DESCRIPTION'));
    end;
    GetField('SCHDTYPE','CODE').AsString     := Code;
    GetField('SCHDTYPE','DESCR').AsString    := tdbfield('TIMEOFFREASONS','DESCRIPTION');
    A('SCHDTYPE').Post;

    A('TIMEOFFREASONS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('TIMEOFFREASONS');
  CloseApollo('SCHDTYPE');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'SCHDTYPE Conversion . . . . . . Started');
end;

function TConvZOForm.SetBooleanY(b : string; rs : string = 'Y') : string;
begin
  Result := '';
  if (b = '1') or (b = 'Y') or (b = 'y') or (b = 'True') then
    Result := rs;
end;

procedure TConvZOForm.StreetButtonClick(Sender: TObject);
Var Street : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Street Conversion . . . . . . . Started.');
  ConnectZoll;
  Gauge.Progress := 0;
  Open_Query(ZollDatabase,'STREETS',false,'SELECT * FROM STREETS');
  Open_Query('STREET',true,'SELECT * FROM STREET WHERE 1=2');

  Gauge.MaxValue := A('STREETS').RecordCount;
  while not A('STREETS').Eof do begin
    Street := UpperCase(alltrim(tdbfield('STREETS','NAME')));
    A('STREET').UpdateSql('SELECT * FROM STREET WHERE STREET = ' + AddExpr(Street));
    If A('STREET').RecordsExist then
      A('STREET').Edit
    else
      A('STREET').Append;

    GetField('STREET','STREET').AsString := Street;
    A('STREET').Post;

    AddStatusListBox(ListBox,Street + ' added.');

    A('STREETS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('STREET');
  CloseApollo('STREETS');
  ZollDatabase.Free;
  AddStatusListBox(ListBox,'Street Conversion . . . . . . . Complete.');
end;

function TConvZOForm.ZeroIsEmpty(s : string) : string;
begin
  Result := '';
  if not(trim(s) = '0') then
    Result := s;
end;

function TConvZOForm.FixDate(DateVar: TDateTime): TDateTime;
begin
  If DateVar >= StrToDate('01/01/1901') then
    FixDate := DateVar
  else
    FixDate := 0;
end;

procedure TConvZOForm.ConnectZoll;
Var TableType     : Integer;
    ErrorString   : String;
begin
  inherited;
  TableType    := 3;
  ZollDatabase := TAlpineAdoConnection.Create(self,ServerField.Value + ':' + DatabaseField.Value,UserNameField.Value,PasswordField.Value,TableType);
  ZollDatabase.Connect(ErrorString);
end;

procedure TConvZOForm.ConnectLosap;
Var TableType     : Integer;
    ErrorString   : String;
begin
  inherited;
  TableType     := 3;
  LosapDatabase := TAlpineAdoConnection.Create(self,'rednmx.com,1438:HowardCountyLosap','ALPINE','A_S_C',TableType);
  LosapDatabase.Connect(ErrorString);
end;

end.
