unit ConvIMC;
 
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
  GISFunc,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  AlpineLookGridNemsis,
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
  ADODB,
  Gauges,
  AlpineDateTime,
  EnJpgGr,
  jpeg,
  AlpinePanel,
  AlpineMemo,
  AlpineLookGrid,
  AdvGroupBox,
  htmlbtns,
  alpinecheck;

type
  TConvIMCForm = class(TNormalBaseForm)
    OvcController1: TOvcController;
    Panel2: TPanel;
    Gauge: TGauge;
    Panel4: TPanel;
    AlpinePanel4: TAlpinePanel;
    PropButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel5: TAlpinePanel;
    AlpinePanel8: TAlpinePanel;
    Panel5: TPanel;
    AlpinePanel11: TAlpinePanel;
    AlpinePanel12: TAlpinePanel;
    ErrorBox: TListBox;
    ListBox: TListBox;
    AlpinePanel14: TAlpinePanel;
    AlpinePanel13: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ServerField: TAlpineEdit;
    DatabaseField: TAlpineEdit;
    UserNameField: TAlpineEdit;
    PasswordField: TAlpineEdit;
    TableTypeField: TAlpineEdit;
    Label7: TLabel;
    Label3: TLabel;
    InitialDateField: TAlpineDateTime;
    FinalDateField: TAlpineDateTime;
    AlpinePanel10: TAlpinePanel;
    FHNarrField: TMemo;
    Label6: TLabel;
    ConvRecordField: TAlpineEdit;
    NarrField: TAlpineMemo;
    Splitter2: TSplitter;
    ConvFdidField: TAlpineLookup;
    ConvFdidLabel: TLabel;
    NIFdidField: TAlpineCheckBox;
    Label10: TLabel;
    Image2: TImage;
    AlpinePanel9: TAlpinePanel;
    AlpinePanel2: TAlpinePanel;
    NfirsMainButton: TAlpineGlowButton;
    AlpinePanel6: TAlpinePanel;
    PersButton: TAlpineGlowButton;
    DirectoryField: TAlpineEdit;
    Label11: TLabel;
    NfirsFirButton: TAlpineGlowButton;
    NfirsStrButton: TAlpineGlowButton;
    NfirsFireCasButton: TAlpineGlowButton;
    NfirsCivilianButton: TAlpineGlowButton;
    NfirsFireEquButton: TAlpineGlowButton;
    NfirsAppButton: TAlpineGlowButton;
    NFIRSAttButton: TAlpineGlowButton;
    ConvYearField: TAlpineEdit;
    Label12: TLabel;
    TrainingGroupsButton: TAlpineGlowButton;
    TrainingCourseButton: TAlpineGlowButton;
    TrainingAttButton: TAlpineGlowButton;
    PContactButton: TAlpineGlowButton;
    HoseButton: TAlpineGlowButton;
    DispStatButton: TAlpineGlowButton;
    APPButton: TAlpineGlowButton;
    PersRankButton: TAlpineGlowButton;
    HydButton: TAlpineGlowButton;
    CancelButton: TAlpineGlowButton;
    NITrainCATTypeButton: TAlpineGlowButton;
    DataDiscButton: TAlpineGlowButton;
    MapPanel: TPanel;
    PropLatLongButton: TAlpineGlowButton;
    GEO2Button: TAlpineGlowButton;
    Panel1: TPanel;
    PropNarrResetButton: TAlpineGlowButton;
    PCautionButton: TAlpineGlowButton;
    PContactTypeButton: TAlpineGlowButton;
    GEO1Button: TAlpineGlowButton;
    AlpinePanel3: TAlpinePanel;
    DispCallTypeButton: TAlpineGlowButton;
    PropAliasButton: TAlpineGlowButton;
    AlpinePanel15: TAlpinePanel;
    PermitTypeButton: TAlpineGlowButton;
    PermitType: TAlpineGlowButton;
    AlpinePanel7: TAlpinePanel;
    InspTypeButton: TAlpineGlowButton;
    InspButton: TAlpineGlowButton;
    InspStatButton: TAlpineGlowButton;
    VendorButton: TAlpineGlowButton;
    RolodexTypeButton: TAlpineGlowButton;
    PermitCommentsButton: TAlpineGlowButton;
    Label13: TLabel;
    SheetField: TAlpineEdit;
    VioButton: TAlpineGlowButton;
    NarrativeButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure ConvFdidFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure ConvFdidFieldEnter(Sender: TObject);
    procedure NfirsMainButtonClick(Sender: TObject);
    procedure NfirsFirButtonClick(Sender: TObject);
    procedure NfirsStrButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure NfirsFireCasButtonClick(Sender: TObject);
    procedure NfirsCivilianButtonClick(Sender: TObject);
    procedure NfirsAppButtonClick(Sender: TObject);
    procedure NFIRSAttButtonClick(Sender: TObject);
    procedure NfirsFireEquButtonClick(Sender: TObject);
    procedure TrainingGroupsButtonClick(Sender: TObject);
    procedure TrainingCourseButtonClick(Sender: TObject);
    procedure TrainingAttButtonClick(Sender: TObject);
    procedure PCautionButtonClick(Sender: TObject);
    procedure PContactButtonClick(Sender: TObject);
    procedure HoseButtonClick(Sender: TObject);
    procedure DispStatButtonClick(Sender: TObject);
    procedure APPButtonClick(Sender: TObject);
    procedure PersRankButtonClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure PContactTypeButtonClick(Sender: TObject);
    procedure PropNarrResetButtonClick(Sender: TObject);
    procedure NITrainCATTypeButtonClick(Sender: TObject);
    procedure DataDiscButtonClick(Sender: TObject);
    procedure PropLatLongButtonClick(Sender: TObject);
    procedure GEO2ButtonClick(Sender: TObject);
    procedure GEO1ButtonClick(Sender: TObject);
    procedure DispCallTypeButtonClick(Sender: TObject);
    procedure PropAliasButtonClick(Sender: TObject);
    procedure InspTypeButtonClick(Sender: TObject);
    procedure PermitTypeClick(Sender: TObject);
    procedure PermitTypeButtonClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure InspStatButtonClick(Sender: TObject);
    procedure RolodexTypeButtonClick(Sender: TObject);
    procedure VendorButtonClick(Sender: TObject);
    procedure PermitCommentsButtonClick(Sender: TObject);
    procedure VioButtonClick(Sender: TObject);
    procedure NarrativeButtonClick(Sender: TObject);
  private
    { Private declarations }
    RedNMXDatabase  : TAlpineAdoConnection;
    CancelVar       : Boolean;
    function  GetFileExt(FileName: String): String;
    procedure ConnectRedNMX;
    function  CheckDate(DateVar: TDateTime): Boolean;
    procedure LoadRedNMXCode(FieldName,Code,Descr: String);
    function  GetDate(DateVar : String): TDateTime;
    function  GetZipCode(Zip : String): String;
    function  GetDateTime(DateVar,TimeVar : String): TDateTime;
    function  GetHSize(HSize: String): String;
  public
    function  GetConvFdid(FdidVar: String): String;
    function  GetIncNum(IncNum: String): String;
    procedure AddPropHyd(Code, SortOrd :String);
    { Public declarations }
  end;

var
  ConvIMCForm: TConvIMCForm;

implementation
uses GenFunc,
     CommonFunc,
     AlpineBaseSummaryReport,
     ToolBar,
     PropSet,
     PropRep,
     FormFunc,
     NISet,
     GisViewer,
     GisViewerWnd,
     GisLayerSHP,
     GisDefs,
     GisBaseObject,
     GisLayerVector,
     WinMapDef,
     GisSymbol,
     CommonConv,
     CommonVar;

{$R *.DFM}
{$I rednmx.inc}

function TConvIMCForm.GetDateTime(DateVar, TimeVar : String): TDateTime;
Var TempDate : String;
    RetVal   : TDateTime;
begin
  if (Length(Timevar) < 4) and (TimeVar <> '') then
    TimeVar := FormatFloat('0000',StrtoFloat(TimeVar));
  If (DateVar = '00000000') then
    GetDateTime := 0
  else begin
    try
      TempDate    := substr(DateVar,5,2) + '/' + substr(DateVar,7,2) + '/' + substr(DateVar,1,4) + ' ' + substr(TimeVar,1,2) + ':' + substr(TimeVar,3,2);
      RetVal      := StrToDateTime(TempDate);
      GetDateTime := RetVal;
    except
      GetDateTime := 0;
    end;
  end;
end;

procedure TConvIMCForm.LoadRedNMXCode(FieldName,Code,Descr: String);
begin
  A('REDNMXCODE').UpdateSQL('SELECT * FROM REDNMXCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + AddExpr(Code));
  If A('REDNMXCODE').RecordsExist then
    A('REDNMXCODE').Edit
  else
    A('REDNMXCODE').Append;
  Getfield('REDNMXCODE','FIELDNAME').AsString := FieldName;
  Getfield('REDNMXCODE','CODE').AsString      := Code;
  Getfield('REDNMXCODE','DESCR').AsString     := Descr;
  Getfield('REDNMXCODE','ACTIVE').AsString    := 'Y';
  A('REDNMXCODE').Post;
end;

function TConvIMCForm.GetIncNum(IncNum: String): String;
Var Year : String;
begin
  Year      := '20' + substr(IncNum,1,2);
  IncNum    := substr(IncNum,3,12);
  if mfireid = '23240' then begin
    IncNum    := StringReplace(IncNum, 'PLM-', '',[rfReplaceAll, rfIgnoreCase]);
    IncNum    := alltrim(StringReplace(IncNum, '-IN', '',[rfReplaceAll, rfIgnoreCase]));
    IncNum    := Year + padl(IncNum,6,'0');
  end else if mfireid = '23250' then begin
    IncNum    := StringReplace(IncNum, 'ROC-', '',[rfReplaceAll, rfIgnoreCase]);
    IncNum    := alltrim(StringReplace(IncNum, '-IN', '',[rfReplaceAll, rfIgnoreCase]));
    IncNum    := Year + padl(IncNum,6,'0');
  end else if mfireid = '23118' then begin
    IncNum    := StringReplace(IncNum, 'HAL-', '',[rfReplaceAll, rfIgnoreCase]);
    IncNum    := alltrim(StringReplace(IncNum, '-IN', '',[rfReplaceAll, rfIgnoreCase]));
    IncNum    := Year + padl(IncNum,6,'0');
  end else
    IncNum    := Year+padl(Substr(IncNum,1,at('-',IncNum)-1),6,'0');
  GetIncNum := IncNum;
end;

function TConvIMCForm.GetHSize(HSize: String): String;
begin
  If HSize = '1 1/2' then
    GetHSize := '1.50'
  else if HSize = '1 3/4' then
    GetHSize := '1.75'
  else if HSize = '1 3/4"' then
    GetHSize := '1.75'
  else if HSize = '2 1/2' then
    GetHSize := '2.50'
  else
    GetHSize := HSize;
end;


procedure TConvIMCForm.HoseButtonClick(Sender: TObject);
var MainQuery  : TADOQuery;
    FileName   : String;
    InvNum     : String;
    VendorName : String;
    SheetName  : String;
begin
  AddStatusListBox(ListBox,'Processing Hose Records . . . . . . Started.');
  SheetName                  := 'FireEquipmentControl';
  FileName                   := DirectoryField.text + SheetName + '.xlsx';
  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  MainQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  MainQuery.Active           := true;

  Open_Query('INV',         true, 'SELECT * FROM INV WHERE 1=2');
  Open_Query('ROLODEX',     True, 'SELECT CODE, ROLODEXID FROM ROLODEX');
  Open_Query('INVSUBTYPE',  false,'SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('HOSE'));
  Open_Query('HOSEMATERIAL',false,'SELECT * FROM HOSEMATERIAL');
  Open_Query('HOSEJACKET',  false,'SELECT * FROM HOSEJACKET');
  Open_Query('INVSTAT',     false,'SELECT * FROM INVSTAT');

  Gauge.Progress := 0;
  Gauge.MaxValue := mainquery.RecordCount;

  while not MainQuery.eof do begin
    InvNum := alltrim(MainQuery.FieldByName('EquipID').AsString);
    A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM =' + AddExpr(INVNUM) + ' AND TYPE = ' + AddExpr('HOSE'));      
    if A('INV').RecordsExist then
      A('INV').Edit
    else
      A('INV').Append;

    GetField('INV','INVNUM').AsString             := InvNum;
    GetField('INV','DESCR').AsString              := alltrim(MainQuery.FieldByName('Model').AsString);
    GetField('INV','MODEL').AsString              := '';
    GetField('INV','FDID').AsString               := GetConvFdid(ConvFdidField.Value);
    GetField('INV','TYPE').AsString               := 'HOSE';
    GetField('INV','SERNUM').AsString             := alltrim(MainQuery.FieldByName('SerialNum').AsString);

    GetField('INV','MANUFACT').AsString           := alltrim(MainQuery.FieldByName('Manufacturer').AsString);
    GetField('INV','MANDATE').AsDateTime          := GetDateTime(alltrim(MainQuery.FieldByName('ManufacturedDate').AsString),'0');

    If A('ROLODEX').ExactQueryLocate('COMPANY',alltrim(MainQuery.FieldByName('VendorName').AsString)) then
      GetField('INV','ROLODEXID').AsString          := GetField('ROLODEX','ROLODEXID').AsString;

    If A('INVSUBTYPE').ExactQueryLocate('CODE',alltrim(MainQuery.FieldByName('EquipmentType1').AsString)) then
      GetField('INV','INVSUBTYPEID').AsString          := GetField('INVSUBTYPE','INVSUBTYPEID').AsString;
    If A('HOSEJACKET').ExactQueryLocate('CODE',alltrim(MainQuery.FieldByName('EquipmentType2').AsString)) then
      GetField('INV','HOSEJACKETID').AsString          := GetField('HOSEJACKET','HOSEJACKETID').AsString;
    If A('HOSEMATERIAL').ExactQueryLocate('CODE',alltrim(MainQuery.FieldByName('EquipmentType3').AsString)) then
      GetField('INV','HOSEMATERIALID').AsString          := GetField('HOSEMATERIAL','HOSEMATERIALID').AsString;
    If A('INVSTAT').ExactQueryLocate('INVSTAT','Y') then
      GetField('INV','INVSTATID').AsString          := GetField('INVSTAT','INVSTATID').AsString;

    GetField('INV','PURCHASEDATE').AsDateTime     := GetDateTime(alltrim(MainQuery.FieldByName('PurchaseDate').AsString),'0');
    GetField('INV','COST').AsString               := alltrim(MainQuery.FieldByName('PurchasePrice').AsString);
    GetField('INV','INSERVICEDATE').AsDateTime    := GetDateTime(alltrim(MainQuery.FieldByName('InServiceDate').AsString),'0');
    GetField('INV','VALUESQL').AsString           := alltrim(MainQuery.FieldByName('CurrentValue').AsString);
    GetField('INV','NARR').AsString               := alltrim(MainQuery.FieldByName('Comments1').AsString);
    GetField('INV','HLENGTH').AsString            := alltrim(MainQuery.FieldByName('Feature1').AsString);
    
    Try
      GetField('INV','HSIZE').AsString              := GetHSize(alltrim(MainQuery.FieldByName('Feature2').AsString));
    except
    end;

    GetField('INV','OUTOFSERVICEDATE').AsDateTime := GetDateTime(alltrim(MainQuery.FieldByName('OOServiceDate').AsString),'0');
    A('INV').Post;

    AddStatusListBox(ListBox,'Processing Hose Records ' + InvNum);
    Gauge.Progress := Gauge.Progress + 1;
    MainQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('INV');
  CloseApollo('ROLODEX');
  CloseApollo('INVSUBTYPE');
  CloseApollo('HOSEMATERIAL');
  CloseApollo('HOSEJACKET');
  
  MainQuery.Free;
  AddStatusListBox(ListBox,'Processing Hose Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.HydButtonClick(Sender: TObject);
var HydQuery  : TADOQuery;
    SheetName : String;
    FileName  : String;
    Latitude,Longitude: String;
    HydCode   : String;
    Fdid      : String;
begin
  AddStatusListBox(ListBox,'Processing Hydrant Records . . . . . . Started.');
  SheetName                 := 'Hydrants';
  FileName                  := DirectoryField.text + '\' + SheetName + '.xlsx';
  HydQuery                  := TADOQuery.Create(self);
  HydQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  HydQuery.SQL.Text         := 'select * from [' + SheetName + '$] where jurisdiction = ' + AddExpr('HAL');
  HydQuery.Active           := true;
  Gauge.Progress            := 0;
  Gauge.MaxValue            := HydQuery.RecordCount;
  CancelVar                 := false;

  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');
  Open_Query('DISPBOX',false,'SELECT DISPBOXID, CODE FROM DISPBOX');
  Open_Query('FDID',false,'SELECT FDID, CITY, STATE, ZIP FROM FDID');

  while not HydQuery.eof and Not CancelVar do begin
    HydCode := alltrim(HydQuery.FieldByName('HYDRANTNUM').AsString);
    Fdid    := GetConvFdid(ConvFdidField.Value);
    AddStatusListBox(ListBox,'Processing Hydrant Records ' + HydCode);

    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;

    GetField('HYD','FDID').AsString     := Fdid;

    If A('FDID').ExactQueryLocate('FDID',Fdid) then begin
      GetField('HYD','CITY').AsString  := UpperCase(tdbfield('FDID','CITY'));
      GetField('HYD','STATE').AsString := tdbfield('FDID','STATE');
      GetField('HYD','ZIP').AsString   := substr(tdbfield('FDID','ZIP'),1,5);
    end;

    GetField('HYD','HYDCODE').AsString  := HydCode;
    GetField('HYD','STRNUM').AsString   := alltrim(HydQuery.FieldByName('STREETNUM').AsString);
    GetField('HYD','STREET').AsString   := alltrim(HydQuery.FieldByName('STREETNAME').AsString) + ' ' + alltrim(HydQuery.FieldByName('STREETSUF').AsString);
    GetField('HYD','LOCATION').AsString := alltrim(HydQuery.FieldByName('LOCATION').AsString);
    if (alltrim(HydQuery.FieldByName('FLOWRATE').AsString) <> '?') and (alltrim(HydQuery.FieldByName('FLOWRATE').AsString) <> '8 INCH') and (alltrim(HydQuery.FieldByName('FLOWRATE').AsString) <> '6 INCH') and (alltrim(HydQuery.FieldByName('FLOWRATE').AsString) <> 'N/A') and (alltrim(HydQuery.FieldByName('FLOWRATE').AsString) <> 'HA') then
      GetField('HYD','MAINSIZE').AsString := alltrim(HydQuery.FieldByName('FLOWRATE').AsString);


    If Not (ALLTRIM(HydQuery.FieldByName('LATITUDE').AsString) = '') and Not (ALLTRIM(HydQuery.FieldByName('LONGITUDE').AsString) = '') then begin
      GetField('HYD','LATITUDE').AsFloat  := DecimalToMinutes(HydQuery.FieldByName('LATITUDE').AsFloat);
      GetField('HYD','LONGITUDE').AsFloat := DecimalToMinutes(HydQuery.FieldByName('LONGITUDE').AsFloat);
    end;


    If A('DISPBOX').ExactQueryLocate('CODE',HydQuery.FieldByName('DISTRICT').AsString) then
      GetField('HYD','DISPBOXID').AsString   := ALLTRIM(GetField('DISPBOX','DISPBOXID').AsString);
    A('HYD').Post;

    Gauge.Progress := Gauge.Progress + 1;
    HydQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('HYD');
  CloseApollo('DISPBOX');
  CloseApollo('FDID');
  HydQuery.Free;
  AddStatusListBox(ListBox,'Processing Hydrant Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PContactButtonClick(Sender: TObject);
var PContactQuery   : TADOQuery;
    FileName        : String;
    PropCode        : String;
    PropContactCode : String;
    SortOrd         : String;
    SheetName       : String;
begin
  AddStatusListBox(ListBox,'Processing Property Contacts . . . . . . Started.');
  SheetName                      := 'Site_Contacts';
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  PContactQuery                  := TADOQuery.Create(self);
  PContactQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PContactQuery.SQL.Text         := 'select * from [' + SheetName + '$]' + ' where jur =' + AddExpr('HAL');
  PContactQuery.Active           := true;

  Open_Query('PROPCONTACT',true,'SELECT * FROM PROPCONTACT');
  Open_Query('PROPCONTACTTYPE',false,'SELECT * FROM PROPCONTACTTYPE');
  Open_Query('PROP',false,'SELECT PROPCODE, PROPID FROM PROP WHERE 1=2');
  Gauge.Progress := 0;
  Gauge.MaxValue := PContactQuery.RecordCount;

  while not PContactQuery.eof do begin
    PropCode := alltrim(PContactQuery.FieldByName('JUR').AsString) + '-' + alltrim(PContactQuery.FieldByName('SiteNum').AsString);

    A('PROP').UpdateSQL('SELECT PROPID FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode));
    If A('PROP').RecordsExist then begin

      SortOrd := alltrim(PContactQuery.FieldByName('Seq').AsString);
      A('PROPCONTACT').UpdateSQL('SELECT * FROM PROPCONTACT WHERE PROPID = ' + pkvalue(GetField('PROP','PROPID').AsString) + ' AND SORTORDER = ' + pkValue(SortOrd));
      If A('PROPCONTACT').RecordsExist then
        A('PROPCONTACT').Edit
      else
        A('PROPCONTACT').Append;
        
     { PropContactCode := alltrim(PContactQuery.FieldByName('ContactType').AsString);
      If A('PROPCONTACTTYPE').ExactQueryLocate('CODE',PropContactCode) then
        GetField('PROPCONTACT','PROPCONTACTTYPEID').AsString := GetField('PROPCONTACTTYPE','PROPCONTACTTYPEID').AsString; }
      GetField('PROPCONTACT','PROPID').AsString            := GetField('PROP','PROPID').AsString;
      GetField('PROPCONTACT','NAME').AsString              := alltrim(PContactQuery.FieldByName('FirstName').AsString) + ' ' + alltrim(PContactQuery.FieldByName('MiddleName').AsString) + ' ' + alltrim(PContactQuery.FieldByName('LastName').AsString);
      GetField('PROPCONTACT','ADDRESS').AsString           := alltrim(PContactQuery.FieldByName('StreetNum').AsString) + ' ' + alltrim(PContactQuery.FieldByName('StreetName').AsString) + ' ' + alltrim(PContactQuery.FieldByName('StreetSuf').AsString);
      GetField('PROPCONTACT','CITY').AsString              := alltrim(PContactQuery.FieldByName('City').AsString);
      GetField('PROPCONTACT','ZIP').AsString               := alltrim(PContactQuery.FieldByName('Zip').AsString);
      GetField('PROPCONTACT','OWNER').AsString             := alltrim(PContactQuery.FieldByName('OwnerYN').AsString);
      GetField('PROPCONTACT','DESCR').AsString             := alltrim(PContactQuery.FieldByName('Title').AsString);
      GetField('PROPCONTACT','PHONEHOME').AsString         := alltrim(PContactQuery.FieldByName('HomePhone').AsString);
      GetField('PROPCONTACT','PHONECELL').AsString         := alltrim(PContactQuery.FieldByName('OtherPhone').AsString);
      GetField('PROPCONTACT','PHONEWORK').AsString         := alltrim(PContactQuery.FieldByName('BusinessPhone').AsString);
      GetField('PROPCONTACT','SORTORDER').AsString         := SortOrd;
      A('PROPCONTACT').Post;
      AddStatusListBox(ListBox,'Processing Property Contacts for PROPID = ' + GetField('PROP','PROPID').AsString + ' and SORTORD = ' + SortOrd);

    end else begin
      AddStatusListBox(ErrorBox,'Error in Property Contacts for Row Number ' + IntToStr(PContactQuery.RecNo));

    end;

    Gauge.Progress := Gauge.Progress + 1;
    PContactQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PROPCONTACT');
  CloseApollo('PROPCONTACTTYPE');
  CloseApollo('PROP');
  PContactQuery.Free;
  AddStatusListBox(ListBox,'Processing Property Contacts . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PContactTypeButtonClick(Sender: TObject);
var PContactQuery       : TADOQuery;
    FileName            : String;
    PropCode            : String;
    SortOrd             : String;
    SheetName           : String;
    PropContactTypeCode : String;
begin
  AddStatusListBox(ListBox,'Processing Property Contacts Types. . . . . . Started.');
  SheetName                      := 'PContact';
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  PContactQuery                  := TADOQuery.Create(self);
  PContactQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PContactQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  PContactQuery.Active           := true;

  Open_Query('PROPCONTACTTYPE',true,'SELECT * FROM PROPCONTACTTYPE WHERE 1=2');
  Gauge.Progress                 := 0;
  Gauge.MaxValue                 := PContactQuery.RecordCount;

  while not PContactQuery.eof do begin
    PropContactTypeCode := alltrim(PContactQuery.FieldByName('ContactType').AsString);
    AddStatusListBox(ListBox,'Processing Property Contacts Type = ' + PropContactTypeCode);

    A('PROPCONTACTTYPE').UpdateSQL('SELECT * FROM PROPCONTACTTYPE WHERE CODE = ' + AddExpr(PropContactTypeCode));
    If A('PROPCONTACTTYPE').RecordsExist then
      A('PROPCONTACTTYPE').Edit
    else
      A('PROPCONTACTTYPE').Append;
    GetField('PROPCONTACTTYPE','CODE').AsString            := PropContactTypeCode;
    GetField('PROPCONTACTTYPE','DESCR').AsString           := alltrim(PContactQuery.FieldByName('ContactType').AsString) + ' (Add Description Here)';
    A('PROPCONTACTTYPE').Post;

    Gauge.Progress := Gauge.Progress + 1;
    PContactQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PROPCONTACTTYPE');
  PContactQuery.Free;
  AddStatusListBox(ListBox,'Processing Property Contacts Types . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PCautionButtonClick(Sender: TObject);
var PCautionQuery : TADOQuery;
    FileName      : String;
    PropID        : String;
    ModTime       : TDateTime;
    SheetName     : String;
    PropCode      : String;
begin
  AddStatusListBox(ListBox,'Processing Property Narratives . . . . . . Started.');
  SheetName                      := 'Site_Comments_Cautions';
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  PCautionQuery                  := TADOQuery.Create(self);
  PCautionQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PCautionQuery.SQL.Text         := 'select * from [' + SheetName + '$]' + ' where jur =' + AddExpr('HAL');
  PCautionQuery.Active           := true;
  Gauge.Progress                 := 0;
  Gauge.MaxValue                 := PCautionQuery.RecordCount;

  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  while not PCautionQuery.eof do begin
    PropCode := alltrim(PCautionQuery.FieldByName('JUR').AsString) + '-' + alltrim(PCautionQuery.FieldByName('SiteNum').AsString);

//  If PropCode = 'NAS-17602' then begin

    A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode));
    If A('PROP').RecordsExist then begin
      AddStatusListBox(ListBox,'Processing Property Narratives for ' + tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET'));
      A('PROP').Edit;
      If alltrim(PCautionQuery.FieldByName('SERVICETYPE').AsString) = 'F' then begin
        If Not (alltrim(Getfield('PROP','WARNNARR').AsString) = alltrim(PCautionQuery.FieldByName('TEXT').AsString)) then
          Getfield('PROP','WARNNARR').AsString     := alltrim(Getfield('PROP','WARNNARR').AsString + ' ' + alltrim(PCautionQuery.FieldByName('TEXT').AsString))
      end else if (alltrim(PCautionQuery.FieldByName('SERVICETYPE').AsString) = 'G') then begin
        Getfield('PROP','NARR').AsString     := alltrim(PCautionQuery.FieldByName('TEXT').AsString)
      end else if (alltrim(PCautionQuery.FieldByName('SERVICETYPE').AsString) = 'D') then begin
        If Not (alltrim(Getfield('PROP','WARNNARR').AsString) = alltrim(PCautionQuery.FieldByName('TEXT').AsString)) then
          Getfield('PROP','WARNNARR').AsString     := alltrim(Getfield('PROP','WARNNARR').AsString + ' ' + alltrim(PCautionQuery.FieldByName('TEXT').AsString));
      end;
      A('PROP').Post;
    end;

//  end;

    PCautionQuery.next;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;

  PCautionQuery.Free;
  CloseApollo('PROP');
  AddStatusListBox(ListBox,'Processing Property Narratives . . . . . . Done.');
  ShowMessage('Done');
end;

function TConvIMCForm.GetDate(DateVar : String): TDateTime;
Var TempDate : String;
    RetVal   : TDateTime;
begin
    try
      TempDate    := substr(DateVar,5,2) + '/' + substr(DateVar,7,2) + '/' + substr(DateVar,1,4);
      RetVal      := StrToDateTime(TempDate);
      GetDate     := RetVal;
    except
      GetDate     := 0;
    end;
end;

procedure TConvIMCForm.PermitCommentsButtonClick(Sender: TObject);
var PermitNarrQuery    : TADOQuery;
    FileName           : String;
    SheetName          : String;
    PermitNum          : String;
    PermitNarr         : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Permit Comment Records . . . . . . Started.');
  SheetName                           := 'Permit_Action';
  FileName                            := DirectoryField.text + SheetName + '.xlsx';
  PermitNarrQuery                  := TADOQuery.Create(self);
  PermitNarrQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PermitNarrQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  PermitNarrQuery.Active           := true;

  Open_Query('PERMIT',    true, 'SELECT * FROM PERMIT WHERE 1=2');
  Gauge.Progress := 0;
  Gauge.MaxValue := PermitNarrQuery.RecordCount;

  while not PermitNarrQuery.eof do begin
    PermitNum  := alltrim(PermitNarrQuery.FieldByName('PermitNum').AsString);
    PermitNarr := alltrim(PermitNarrQuery.FieldByName('VarPortion1').AsString);

    if PermitNarr <> '' then begin

      AddStatusListBox(ListBox,'Processing Permit Record ' + PermitNum);

      A('PERMIT').UpdateSQL('SELECT * FROM PERMIT WHERE PERMITNUM = ' + AddExpr(PermitNum));
      If A('PERMIT').RecordsExist then begin
        A('PERMIT').Edit;

        GetField('PERMIT','NARR').AsString           := PermitNarr;

        A('PERMIT').Post;
      end;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    PermitNarrQuery.next;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Processing Permit Comments . . . . . . Finished.');
  PermitNarrQuery.Free;
  CloseApollo('PERMIT');
end;

procedure TConvIMCForm.PermitTypeButtonClick(Sender: TObject);
var FMTableQuery  : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Permit Type Records . . . . . . Started.');
  SheetName                     := 'FMTables_Full';
  FileName                      := DirectoryField.text + SheetName + '.xlsx';
  FMTableQuery                  := TADOQuery.Create(self);
  FMTableQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  FMTableQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  FMTableQuery.Active           := true;

  Open_Query('PERMITTYPE',true,'SELECT * FROM PERMITTYPE WHERE 1=2');

  Gauge.Progress := 0;
  Gauge.MaxValue := FMTableQuery.RecordCount;

  while not FMTableQuery.eof do begin
    Code := alltrim(FMTableQuery.FieldByName('KeyCode').AsString);

    AddStatusListBox(ListBox,'Processing Permit Type Records ' + Code);

    If alltrim(FMTableQuery.FieldByName('Table').AsString) = '4950' then begin
      If A('PERMITTYPE').ExactQueryLocate('CODE',Code) then
        A('PERMITTYPE').Edit
      else
        A('PERMITTYPE').Append;

      GetField('PERMITTYPE','CODE').AsString      := Code;
      GetField('PERMITTYPE','DESCR').AsString     := alltrim(FMTableQuery.FieldByName('desc').AsString);

      A('PERMITTYPE').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    FMTableQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PERMITTYPE');
  AddStatusListBox(ListBox,'Processing Permit Type Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PermitTypeClick(Sender: TObject);
var PermitControlQuery : TADOQuery;
    FileName           : String;
    PermitNum          : String;
    SheetName          : String;
    PropCode           : String;
begin
  AddStatusListBox(ListBox,'Processing Permit Records . . . . . . Started.');
  SheetName                           := 'Permit_Control';
  FileName                            := DirectoryField.text + SheetName + '.xlsx';
  PermitControlQuery                  := TADOQuery.Create(self);
  PermitControlQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PermitControlQuery.SQL.Text         := 'select * from [' + SheetName + '$] where permitnum like ' + AddExpr('%HAL%');
  PermitControlQuery.Active           := true;

  Open_Query('PERMIT',    true, 'SELECT * FROM PERMIT WHERE 1=2');
  Open_Query('PERS',      false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('PERMITTYPE',true,'SELECT * FROM PERMITTYPE');
  Open_Query('DISPBOX',   false,'SELECT CODE, DISPBOXID FROM DISPBOX');
  Open_Query('PROP',      false,'SELECT PROPCODE, PROPID FROM PROP WHERE PROPCODE IS NOT NULL AND PROPCODE <> ' + AddExpr(''));
  Gauge.Progress := 0;
  Gauge.MaxValue := PermitControlQuery.RecordCount;

  while not PermitControlQuery.eof do begin
    PermitNum := alltrim(PermitControlQuery.FieldByName('PermitNum').AsString);
    PropCode  := alltrim(PermitControlQuery.FieldByName('JUR').AsString) + '-' + alltrim(PermitControlQuery.FieldByName('SiteNum').AsString);

    AddStatusListBox(ListBox,'Processing Permit Record ' + PermitNum);



    A('PERMIT').UpdateSQL('SELECT * FROM PERMIT WHERE PERMITNUM = ' + AddExpr(PermitNum));
    If A('PERMIT').RecordsExist then
      A('PERMIT').Edit
    else
      A('PERMIT').Append;

    GetField('PERMIT','PERMITNUM').AsString           := PermitNum;
    GetField('PERMIT','LOCALNUM').AsString            := alltrim(PermitControlQuery.FieldByName('LOCALREFNUM').AsString);
    GetField('PERMIT','STATEREFNUM').AsString         := alltrim(PermitControlQuery.FieldByName('STATEREFNUM').AsString);
    GetField('PERMIT','OTHERREFNUM').AsString         := alltrim(PermitControlQuery.FieldByName('OTHERREFNUM').AsString);
    GetField('PERMIT','RENEWPERMITNUM').AsString      := alltrim(PermitControlQuery.FieldByName('RENEWPERMITNUM').AsString);
    GetField('PERMIT','DESCR').AsString               := alltrim(PermitControlQuery.FieldByName('PERMITTYPEDESC').AsString);
    GetField('PERMIT','CALLNUM').AsString             := alltrim(PermitControlQuery.FieldByName('CALLNUM').AsString);
    GetField('PERMIT','DATEAPPL').AsDateTime          := GetDate(PermitControlQuery.FieldByName('APPLIEDDATE').AsString);
    GetField('PERMIT','DATEAPPR').AsDateTime          := GetDate(PermitControlQuery.FieldByName('APPROVEDBYDATE').AsString);
    GetField('PERMIT','DATEREJECT').AsDateTime        := GetDate(PermitControlQuery.FieldByName('REJECTEDDATE').AsString);
    GetField('PERMIT','DATEISSUED').AsDateTime        := GetDate(PermitControlQuery.FieldByName('ISSUEDDATE').AsString);
    GetField('PERMIT','DATEEFFECT').AsDateTime        := GetDate(PermitControlQuery.FieldByName('EFFECTIVEDATE').AsString);
    GetField('PERMIT','DATEEXP').AsDateTime           := GetDate(PermitControlQuery.FieldByName('EXPIRATIONDATE').AsString);
    GetField('PERMIT','DATEREVOKED').AsDateTime       := GetDate(PermitControlQuery.FieldByName('REVOKEDDATE').AsString);

    If A('PERS').ExactQueryLocate('PERSCODE',PermitControlQuery.FieldByName('ISSUEDBYID').AsString) then
      GetField('PERMIT','PERSIDISSUED').AsString        := GetField('PERS','PERSID').AsString;
    If A('PERS').ExactQueryLocate('PERSCODE',PermitControlQuery.FieldByName('REVOKEDBY').AsString) then
      GetField('PERMIT','PERSIDREVOKED').AsString        := GetField('PERS','PERSID').AsString;
    If A('PERS').ExactQueryLocate('PERSCODE',PermitControlQuery.FieldByName('REJECTEDBY').AsString) then
      GetField('PERMIT','PERSIDREJECT').AsString        := GetField('PERS','PERSID').AsString;

//    GetField('PERMIT','LOCATION').AsString            := alltrim(PermitControlQuery.FieldByName('LOCATION').AsString);
    GetField('PERMIT','STRNUM').AsString              := alltrim(PermitControlQuery.FieldByName('STREETNUM').AsString);
    GetField('PERMIT','STREET').AsString              := alltrim(PermitControlQuery.FieldByName('STREETNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('STREETSUF').AsString);
    GetField('PERMIT','ROOMAPT').AsString             := alltrim(PermitControlQuery.FieldByName('STREETAPT').AsString);
    GetField('PERMIT','CITY').AsString                := alltrim(PermitControlQuery.FieldByName('CITY').AsString);
    GetField('PERMIT','STATE').AsString               := alltrim(PermitControlQuery.FieldByName('STATE').AsString);
    GetField('PERMIT','ZIP').AsString                 := GetZipCode(PermitControlQuery.FieldByName('ZIP').AsString);
    GetField('PERMIT','OCCFNAME').AsString            := alltrim(PermitControlQuery.FieldByName('OCCFIRSTNAME').AsString);
    GetField('PERMIT','OCCMNAME').AsString            := alltrim(PermitControlQuery.FieldByName('OCCMIDDLENAME').AsString);
    GetField('PERMIT','OCCLNAME').AsString            := alltrim(PermitControlQuery.FieldByName('OCCLASTNAME').AsString);
    GetField('PERMIT','OSTRNUM').AsString             := alltrim(PermitControlQuery.FieldByName('OWNERSTREETNUM').AsString);
    GetField('PERMIT','OSTREET').AsString             := alltrim(PermitControlQuery.FieldByName('OWNERSTREETNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('OWNERSTREETSUF').AsString);
    GetField('PERMIT','OROOMAPT').AsString            := alltrim(PermitControlQuery.FieldByName('OWNERSTREETAPT').AsString);
    GetField('PERMIT','OCITY').AsString               := alltrim(PermitControlQuery.FieldByName('OWNERCITY').AsString);
    GetField('PERMIT','OSTATE').AsString              := alltrim(PermitControlQuery.FieldByName('OWNERSTATE').AsString);
    GetField('PERMIT','OZIP').AsString                := GetZipCode(PermitControlQuery.FieldByName('OWNERZIP').AsString);
    GetField('PERMIT','OFNAME').AsString              := alltrim(PermitControlQuery.FieldByName('OWNERFIRSTNAME').AsString);
    GetField('PERMIT','OMNAME').AsString              := alltrim(PermitControlQuery.FieldByName('OWNERMIDDLENAME').AsString);
    GetField('PERMIT','OLNAME').AsString              := alltrim(PermitControlQuery.FieldByName('OWNERLASTNAME').AsString);
    GetField('PERMIT','ONAME').AsString               := alltrim(PermitControlQuery.FieldByName('OWNERFIRSTNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('OWNERMIDDLENAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('OWNERLASTNAME').AsString);

    GetField('PERMIT','CHECKCASH').AsString           := alltrim(PermitControlQuery.FieldByName('CHECKNUMBER').AsString);
    GetField('PERMIT','FEEAMT').AsString              := alltrim(PermitControlQuery.FieldByName('FEE').AsString);
    GetField('PERMIT','PAIDYN').AsString              := alltrim(PermitControlQuery.FieldByName('PAIDYN').AsString);
    GetField('PERMIT','OLOCATION').AsString           := alltrim(PermitControlQuery.FieldByName('OWNERLOCATION').AsString);

    If A('PERS').ExactQueryLocate('PERSCODE',PermitControlQuery.FieldByName('ENTEREDBYID').AsString) then
      GetField('PERMIT','PERSID').AsString        := GetField('PERS','PERSID').AsString;

    GetField('PERMIT','ASTRNUM').AsString             := alltrim(PermitControlQuery.FieldByName('APPLICANTSTREETNUM').AsString);
    GetField('PERMIT','ASTREET').AsString             := alltrim(PermitControlQuery.FieldByName('APPLICANTSTREETNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('APPLICANTSTREETSUF').AsString);
    GetField('PERMIT','AROOMAPT').AsString            := alltrim(PermitControlQuery.FieldByName('APPLICANTSTREETAPT').AsString);
    GetField('PERMIT','ACITY').AsString               := alltrim(PermitControlQuery.FieldByName('APPLICANTCITY').AsString);
    GetField('PERMIT','ASTATE').AsString              := alltrim(PermitControlQuery.FieldByName('APPLICANTSTATE').AsString);
    GetField('PERMIT','AZIP').AsString                := GetZipCode(PermitControlQuery.FieldByName('APPLICANTZIP').AsString);
    GetField('PERMIT','AFNAME').AsString              := alltrim(PermitControlQuery.FieldByName('APPLICANTFIRSTNAME').AsString);
    GetField('PERMIT','AMNAME').AsString              := alltrim(PermitControlQuery.FieldByName('APPLICANTMIDDLENAME').AsString);
    GetField('PERMIT','ALNAME').AsString              := alltrim(PermitControlQuery.FieldByName('APPLICANTLASTNAME').AsString);
    GetField('PERMIT','ACONTACT').AsString            := alltrim(PermitControlQuery.FieldByName('APPLICANTFIRSTNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('APPLICANTMIDDLENAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('APPLICANTLASTNAME').AsString);
    GetField('PERMIT','ACOMPANY').AsString            := alltrim(PermitControlQuery.FieldByName('APPLICANTLOCATION').AsString);
    GetField('PERMIT','LICENSETYPE').AsString         := alltrim(PermitControlQuery.FieldByName('LICENSETYPE').AsString);
    GetField('PERMIT','LICENSENUM').AsString          := alltrim(PermitControlQuery.FieldByName('LICENSENUM').AsString);
    GetField('PERMIT','REJECTDESCR').AsString         := alltrim(PermitControlQuery.FieldByName('REJECTEDREASON').AsString);
    GetField('PERMIT','REVOKEDDESCR').AsString        := alltrim(PermitControlQuery.FieldByName('REVOKEDREASON').AsString);   

    If A('PERMITTYPE').ExactQueryLocate('CODE',PermitControlQuery.FieldByName('PERMITTYPE').AsString) then
      GetField('PERMIT','PERMITTYPEID').AsString        := GetField('PERMITTYPE','PERMITTYPEID').AsString
    else begin
      A('PERMITTYPE').Append;
      Getfield('PERMITTYPE','CODE').AsString   := PermitControlQuery.FieldByName('PERMITTYPE').AsString;
      Getfield('PERMITTYPE','DESCR').AsString  := alltrim(PermitControlQuery.FieldByName('PERMITTYPEDESC').AsString);
      Getfield('PERMITTYPE','ACTIVE').AsString := 'Y';
      A('PERMITTYPE').Post;
      GetField('PERMIT','PERMITTYPEID').AsString        := GetField('PERMITTYPE','PERMITTYPEID').AsString;
    end;
    If A('DISPBOX').ExactQueryLocate('CODE',PermitControlQuery.FieldByName('FireDistrict').AsString) then
      GetField('PERMIT','DISPBOXID').AsString        := GetField('DISPBOX','DISPBOXID').AsString;
    If A('PROP').ExactQueryLocate('PROPCODE',PropCode) then
      GetField('PERMIT','PROPID').AsString        := GetField('PROP','PROPID').AsString;

    if MFireID = '23118' then begin     //PER KEITH IN EMAIL 
      GetField('PERMIT','ONAME').AsString               := alltrim(PermitControlQuery.FieldByName('LOCATION').AsString);
      GetField('PERMIT','OSTRNUM').AsString             := alltrim(PermitControlQuery.FieldByName('STREETNUM').AsString);
      GetField('PERMIT','OSTREET').AsString             := alltrim(PermitControlQuery.FieldByName('STREETNAME').AsString);
      GetField('PERMIT','OROOMAPT').AsString            := alltrim(PermitControlQuery.FieldByName('STREETAPT').AsString);
      GetField('PERMIT','OCITY').AsString               := alltrim(PermitControlQuery.FieldByName('CITY').AsString);
      GetField('PERMIT','OSTATE').AsString              := alltrim(PermitControlQuery.FieldByName('STATE').AsString);
      GetField('PERMIT','OZIP').AsString                := GetZipCode(PermitControlQuery.FieldByName('ZIP').AsString);
      GetField('PERMIT','ACONTACT').AsString            := alltrim(PermitControlQuery.FieldByName('APPLICANTFIRSTNAME').AsString) + ' ' + alltrim(PermitControlQuery.FieldByName('APPLICANTLASTNAME').AsString);
      GetField('PERMIT','ACOMPANY').AsString            := alltrim(PermitControlQuery.FieldByName('LOCATION').AsString);
    end;
    A('PERMIT').Post;

    Gauge.Progress := Gauge.Progress + 1;
    PermitControlQuery.next;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Processing Permit Records . . . . . . Finished.');
  PermitControlQuery.Free;
  CloseApollo('PERMIT');
  CloseApollo('PERS');
  CloseApollo('PERMITTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('PROP');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PersButtonClick(Sender: TObject);
var PersQuery     : TADOQuery;
    FileName      : String;
    PersCode      : String;
    RankCode      : String;
    SheetName     : String;
begin
  AddStatusListBox(ListBox,'Processing Personnel Records . . . . . . Started.');
  SheetName                  := 'Personnel';
  FileName                   := DirectoryField.text + '\' +SheetName + '.xlsx';
  PersQuery                  := TADOQuery.Create(self);
  PersQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  PersQuery.SQL.Text         := 'select * from [' + SheetName + '$]' + ' where [JURISDICTION] = '+ AddExpr('HAL');
  PersQuery.Active           := true;

  Open_Query('PERS',    true,'SELECT * FROM PERS');
  Open_Query('PERSRANK',true,'SELECT * FROM PERSRANK');

  Gauge.Progress             := 0;
  Gauge.MaxValue             := PersQuery.RecordCount;

  while not PersQuery.eof do begin
    PersCode      := alltrim(PersQuery.FieldByName('ID').AsString);
    AddStatusListBox(ListBox,'Processing Personnel Record ' + PersCode);

    If Not A('PERS').ExactQueryLocate('PERSCODE',PersCode) then
      A('PERS').Append
    else
      A('PERS').Edit;

    GetField('PERS','PERSCODE').AsString           := PersCode;
    GetField('PERS','BADGENUM').AsString           := alltrim(PersQuery.FieldByName('BadgeNumber').AsString);
    GetField('PERS','FDID').AsString               := GetConvFdid(ConvFdidField.Value);
    GetField('PERS','ATTEND').AsString             := 'Y';
    GetField('PERS','FNAME').AsString              := alltrim(PersQuery.FieldByName('FirstName').AsString);
    GetField('PERS','LNAME').AsString              := alltrim(PersQuery.FieldByName('LastName').AsString);
    GetField('PERS','MNAME').AsString              := alltrim(PersQuery.FieldByName('MiddleName').AsString);
    GetField('PERS','SUFFIX').AsString             := alltrim(PersQuery.FieldByName('NameSuf').AsString);
    GetField('PERS','ADD1').AsString               := alltrim(PersQuery.FieldByName('StreetNum').AsString) + ' '  + alltrim(PersQuery.FieldByName('StreetName').AsString) + ' ' + alltrim(PersQuery.FieldByName('StreetSuf').AsString) + ' ' + alltrim(PersQuery.FieldByName('StreetApt').AsString);
    GetField('PERS','CITY').AsString               := alltrim(PersQuery.FieldByName('City').AsString);
    GetField('PERS','STATE').AsString              := alltrim(PersQuery.FieldByName('State').AsString);
    GetField('PERS','ZIP').AsString                := '0' + PersQuery.FieldByName('Zip').AsString;
    GetField('PERS','DOB').AsDateTime              := GetDateTime(alltrim(PersQuery.FieldByName('DOB').AsString),'0000');
    GetField('PERS','PHONE').AsString              := alltrim(PersQuery.FieldByName('HomePhone').AsString);
//    GetField('PERS','WORKPHONE').AsString          := alltrim(PersQuery.FieldByName('WorkPhone').AsString);
    GetField('PERS','PERSBLOODTYPEID').AsString    := SQLLookup(alltrim(PersQuery.FieldByName('BloodType').AsString),'CODE','PERSBLOODTYPE','PERSBLOODTYPEID');
    GetField('PERS','ALLERGY').AsString            := alltrim(PersQuery.FieldByName('ALERGIES').AsString);
    GetField('PERS','PERSRELIGIONID').AsString     := SQLLookup(alltrim(PersQuery.FieldByName('RELIGION').AsString),'DESCR','PERSRELIGION','PERSRELIGIONID');
    GetField('PERS','EMERGNAME').AsString          := alltrim(PersQuery.FieldByName('EMERGENCY1').AsString);
    GetField('PERS','EMERGPHONE').AsString         := alltrim(PersQuery.FieldByName('PHONE1').AsString);
    GetField('PERS','EMERGNAME').AsString          := alltrim(PersQuery.FieldByName('EMERGENCY2').AsString);
//    GetField('PERS','EMERGPHONE2').AsString        := alltrim(PersQuery.FieldByName('PHONE2').AsString);
    GetField('PERS','SOCSEC').AsString             := '';
    GetField('PERS','SEX').AsString                := alltrim(PersQuery.FieldByName('SEX').AsString);
    GetField('PERS','JOINDATE').AsDateTime         := GetDateTime(alltrim(PersQuery.FieldByName('HIREDATE').AsString),'0000');
//    GetField('PERS','WORKSTATUS').AsString         := alltrim(PersQuery.FieldByName('WORKSTATUS').AsString);
//    GetField('PERS','HOURLYRATE').AsString         := alltrim(PersQuery.FieldByName('HOURLYRATE').AsString);
//    GetField('PERS','WEEKLYSALARY').AsString       := alltrim(PersQuery.FieldByName('WEEKLYSALARY').AsString);
//    GetField('PERS','HOURSPERWEEK').AsString       := alltrim(PersQuery.FieldByName('HOURSPERWEEK').AsString);
   // GetField('PERS','PERSMARITALID').AsString      := alltrim(PersQuery.FieldByName('MARITALSTATUS').AsString);
  //  GetField('PERS','RESDATE').AsDateTime          := GetDateTime(alltrim(PersQuery.FieldByName('SEPARATIONDATE').AsString),'0000');

    If alltrim(PersQuery.FieldByName('RACE').AsString) = 'W' then
      GetField('PERS','PERSRACEID').AsString               := '1'
    else if alltrim(PersQuery.FieldByName('RACE').AsString) = 'B' then
      GetField('PERS','PERSRACEID').AsString               := '2';

    GetField('PERS','UNITNUM').AsString            := alltrim(PersQuery.FieldByName('DEFAULTUNIT').AsString);
    GetField('PERS','CELL').AsString               := alltrim(PersQuery.FieldByName('CELLPHONE').AsString);
    GetField('PERS','EMAIL').AsString              := alltrim(PersQuery.FieldByName('EMAILADDRESS').AsString);

    If A('PERSRANK').ExactQueryLocate('CODE',PersQuery.FieldByName('RANKCODE').AsString) then
      GetField('PERS','PERSRANKID').AsString   := GetField('PERSRANK','PERSRANKID').AsString
    else begin
      A('PERSRANK').Append;
      Getfield('PERSRANK','CODE').AsString  := PersQuery.FieldByName('RANKCODE').AsString;
      Getfield('PERSRANK','DESCR').AsString := PersQuery.FieldByName('RANK').AsString;
      A('PERSRANK').Post;
      GetField('PERS','PERSRANKID').AsString   := GetField('PERSRANK','PERSRANKID').AsString
    end;

    A('PERS').Post;

    Gauge.Progress := Gauge.Progress + 1;
    PersQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PERS');
  CloseApollo('PERSRANK');
  AddStatusListBox(ListBox,'Processing Personnel Records . . . . . . Finished.');
  PersQuery.Free;
  ShowMessage('Done');
end;


procedure TConvIMCForm.NfirsMainButtonClick(Sender: TObject);
Var MainQuery       : TADOQuery;
    NfirsMainID     : String;
    FileName        : String;
    Fdid            : String;
    IncNum          : String;
    ExpNum          : String;
    SheetName       : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing NFIRSMAIN records . . . . . . ');

  SheetName                  := SheetField.text;
 // SheetName                  := '2018';
  FileName                   := DirectoryField.text + Sheetname + '.XLSX';
  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';

  If ConvYearField.Value = '' then
    MainQuery.SQL.Text         := 'select * from [' + SheetName + '$] where deptfdid =' + AddExpr(MFireID)
  else
    MainQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [incidentnum] like ' + AddExpr(ConvYearField.Value + '%');

  MainQuery.Active           := true;
  Gauge.MaxValue             := Mainquery.RecordCount;

  Open_Query('NFIRSMAIN',  true, 'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('PERS',       false,'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS');

  While Not MainQuery.Eof do begin
    Fdid    := Alltrim(MainQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(MainQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(MainQuery.FieldByName('IncidentNum').AsString);

    AddStatusListBox(ListBox,'Processing NFIRSMAIN records ' + IncNum);

    A('NFIRSMAIN').UpdateSQL('SELECT * FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then
      A('NFIRSMAIN').Edit
    else
      A('NFIRSMAIN').Append;

    GetField('NFIRSMAIN','FDID').AsString               := Fdid;
    GetField('NFIRSMAIN','INCNUM').AsString             := IncNum;
    GetField('NFIRSMAIN','EXPNUM').AsString             := ExpNum;
    GetField('NFIRSMAIN','STRNUM').AsString             := alltrim(MainQuery.FieldByName('StreetNum').AsString);
    GetField('NFIRSMAIN','SITFOUND').AsString           := alltrim(MainQuery.FieldByName('INCIDENTTYPE').AsString);
    GetField('NFIRSMAIN','STREET').AsString             := alltrim(MainQuery.FieldByName('StreetName').AsString) + ' ' +MainQuery.FieldByName('StreetSuf').AsString;
    GetField('NFIRSMAIN','ROOMAPT').AsString            :=iif(MainQuery.FieldByName('StreetApt').AsString = '','',MainQuery.FieldByName('StreetApt').AsString);
    GetField('NFIRSMAIN','CITY').AsString               := MainQuery.FieldByName('city').AsString;
    GetField('NFIRSMAIN','STATE').AsString              := MainQuery.FieldByName('state').AsString;
    GetField('NFIRSMAIN','ZIP').AsString                := MainQuery.FieldByName('zip').AsString;
    GetField('NFIRSMAIN','LOCTYPE').AsString            := MainQuery.FieldByName('LocationType').AsString;
    GetField('NFIRSMAIN','WILDADDR').AsString           := MainQuery.FieldByName('AddressOnWildlandYN').AsString;
    GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime    := GetDateTime(MainQuery.FieldByName('ALARMDATE').AsString ,MainQuery.FieldByName('ALARMTIME').AsString);
    GetField('NFIRSMAIN','DATETIMEARR').AsDateTime      := GetDateTime(MainQuery.FieldByName('ARRIVALDATE').AsString, MainQuery.FieldByName('ARRIVALTIME').AsString);
    GetField('NFIRSMAIN','DATETIMECONT').AsDateTime     := GetDateTime(MainQuery.FieldByName('CONTROLLEDDATE').AsString, MainQuery.FieldByName('CONTROLLEDTIME').AsString);
    GetField('NFIRSMAIN','DATETIMEIN').AsDateTime       := GetDateTime(MainQuery.FieldByName('CLEAREDDATE').AsString, MainQuery.FieldByName('CLEAREDTIME').AsString);
    GetField('NFIRSMAIN','PROPID').AsString             := SQLLookup(MainQuery.FieldByName('SITE').AsString + MainQuery.FieldByName('jur').AsString,'SITENUM','PROP','PROPID');
    GetField('NFIRSMAIN','ALARMNUM').AsString           := ALLTRIM(MainQuery.FieldByName('alarms').AsString);
    GetField('NFIRSMAIN','INJFIRE').AsString            := ALLTRIM(MainQuery.FieldByName('FireInjuries').AsString);
    GetField('NFIRSMAIN','INJCIV').AsString             := ALLTRIM(MainQuery.FieldByName('OtherInjuries').AsString);
    GetField('NFIRSMAIN','FATFIRE').AsString            := ALLTRIM(MainQuery.FieldByName('FireDeaths').AsString);
    GetField('NFIRSMAIN','FATCIV').AsString             := ALLTRIM(MainQuery.FieldByName('OtherDeaths').AsString);
    GetField('NFIRSMAIN','CROSS1').AsString             := MainQuery.FieldByName('iStreetNum').AsString + ' ' + MainQuery.FieldByName('iStreetName').AsString + ' ' +MainQuery.FieldByName('iStreetSuf').AsString;
    GetField('NFIRSMAIN','MAID').AsString               := alltrim(MainQuery.FieldByName('MutualAid').AsString);
    GetField('NFIRSMAIN','MDEPT').AsString              := alltrim(MainQuery.FieldByName('MutualAidFDID').AsString);
    GetField('NFIRSMAIN','MUTSTATE').AsString           := alltrim(MainQuery.FieldByName('MutualAidState').AsString);
    GetField('NFIRSMAIN','MUTINCNUM').AsString          := alltrim(MainQuery.FieldByName('MutualAidIncident').AsString);
    GetField('NFIRSMAIN','TYPEACT').AsString            := MainQuery.FieldByName('Action1').AsString;
    GetField('NFIRSMAIN','ACTION2').AsString            := MainQuery.FieldByName('Action2').AsString;
    GetField('NFIRSMAIN','ACTION3').AsString            := MainQuery.FieldByName('Action3').AsString;
   // GetField('NFIRSMAIN','DETECTOR').AsString           := MainQuery.FieldByName('DectectorAlerted').AsString;
    GetField('NFIRSMAIN','APPSUPP').AsString            := ALLTRIM(MainQuery.FieldByName('SupprApp').AsString);
    GetField('NFIRSMAIN','APPEMS').AsString             := ALLTRIM(MainQuery.FieldByName('EMSApp').AsString);
    GetField('NFIRSMAIN','APPOTH').AsString             := ALLTRIM(MainQuery.FieldByName('OtherApp').AsString);
    GetField('NFIRSMAIN','PERSSUPP').AsString           := ALLTRIM(MainQuery.FieldByName('SupprPer').AsString);
    GetField('NFIRSMAIN','PERSEMS').AsString            := ALLTRIM(MainQuery.FieldByName('EMSPer').AsString);
    GetField('NFIRSMAIN','PERSOTH').AsString            := ALLTRIM(MainQuery.FieldByName('OtherPer').AsString);
    GetField('NFIRSMAIN','HAZMAT').AsString             := MainQuery.FieldByName('HAZMAT').AsString;
    GetField('NFIRSMAIN','COMPLEX').AsString            := MainQuery.FieldByName('MIXEDUSE').AsString;
    GetField('NFIRSMAIN','FIXPROP').AsString            := MainQuery.FieldByName('PROPERTYUSE').AsString;
    if MainQuery.FieldByName('PropertyLoss').AsString = 'N' then
      GetField('NFIRSMAIN','LOSSPROP').AsString           := '0'
    else
      GetField('NFIRSMAIN','LOSSPROP').AsString           := ALLTRIM(MainQuery.FieldByName('PropertyLoss').AsString);
    GetField('NFIRSMAIN','LOSSCONT').AsString           := ALLTRIM(MainQuery.FieldByName('ContentsLoss').AsString);
    GetField('NFIRSMAIN','VALPROP').AsString            := ALLTRIM(MainQuery.FieldByName('PropertyValue').AsString);
    GetField('NFIRSMAIN','VALCONT').AsString            := ALLTRIM(MainQuery.FieldByName('ContentsValue').AsString);
    GetField('NFIRSMAIN','OBUSINESS').AsString          := MainQuery.FieldByName('OwnBusName').AsString;
    GetField('NFIRSMAIN','OLASTNAME').AsString          := MainQuery.FieldByName('OwnLastName').AsString;
    GetField('NFIRSMAIN','OFIRSTNAME').AsString         := MainQuery.FieldByName('OwnFirstName').AsString;
    GetField('NFIRSMAIN','OMI').AsString                := MainQuery.FieldByName('OwnMI').AsString;
    GetField('NFIRSMAIN','OBUSINESS').AsString          := MainQuery.FieldByName('OwnPhone').AsString;
    GetField('NFIRSMAIN','OSTRNUM').AsString            := MainQuery.FieldByName('OwnStreetNum').AsString;
    GetField('NFIRSMAIN','OSTREET').AsString            := MainQuery.FieldByName('OwnStreetName').AsString + ' ' + MainQuery.FieldByName('OwnStreetSuf').AsString;
    GetField('NFIRSMAIN','OROOMAPT').AsString           := MainQuery.FieldByName('OwnStreetApt').AsString;
    GetField('NFIRSMAIN','OCITY').AsString              := MainQuery.FieldByName('OwnCity').AsString;
    GetField('NFIRSMAIN','OSTATE').AsString             := MainQuery.FieldByName('OwnState').AsString;
    GetField('NFIRSMAIN','OZIP').AsString               := ALLTRIM(MainQuery.FieldByName('OwnZip').AsString);

    If A('PERS').ExactQueryLocate('PERSCODE',MainQuery.FieldByName('OfficerInCharge').AsString) then begin
      GetField('NFIRSMAIN','PERSIDOFFCHARGE').AsString    := GetField('PERS','PERSID').AsString;
      GetField('NFIRSMAIN','OFFCHARGE').AsString          := tdbfield('PERS','LNAME');
      GetField('NFIRSMAIN','OCFIRST').AsString            := tdbfield('PERS','FNAME');
      GetField('NFIRSMAIN','OCMI').AsString               := tdbfield('PERS','MNAME');
    end;
    GetField('NFIRSMAIN','OFFRANK').AsString            := MainQuery.FieldByName('OfficerInChargeRank').AsString;
    GetField('NFIRSMAIN','OFFDATE').AsDateTime          := GetDateTime(MainQuery.FieldByName('OfficerInChargeDate').AsString,'00000');

    If A('PERS').ExactQueryLocate('PERSCODE',MainQuery.FieldByName('ReportID').AsString) then begin
      GetField('NFIRSMAIN','PERSIDMAKEREP').AsString      := GetField('PERS','PERSID').AsString;
      GetField('NFIRSMAIN','MEMREP').AsString             := tdbfield('PERS','LNAME');
      GetField('NFIRSMAIN','MRFIRST').AsString            := tdbfield('PERS','FNAME');
      GetField('NFIRSMAIN','MRMI').AsString               := tdbfield('PERS','MNAME');
    end;
    GetField('NFIRSMAIN','MEMRANK').AsString            := MainQuery.FieldByName('ReportRank').AsString;
    GetField('NFIRSMAIN','MEMDATE').AsDateTime          := GetDateTime(MainQuery.FieldByName('ReportDate').AsString,'00000');
    
    If A('PERS').ExactQueryLocate('PERSCODE',MainQuery.FieldByName('ApprovalID').AsString) then begin
      GetField('NFIRSMAIN','PERSIDREVIEW').AsString       := GetField('PERS','PERSID').AsString;
      GetField('NFIRSMAIN','RVLAST').AsString             := tdbfield('PERS','LNAME');
      GetField('NFIRSMAIN','RVFIRST').AsString            := tdbfield('PERS','FNAME');
      GetField('NFIRSMAIN','RVMI').AsString               := tdbfield('PERS','MNAME');
    end;
    GetField('NFIRSMAIN','RVRANK').AsString            := MainQuery.FieldByName('ApprovalRank').AsString;
    GetField('NFIRSMAIN','RVDATE').AsDateTime          := GetDateTime(MainQuery.FieldByName('ApprovalDate').AsString,'00000');

    GetField('NFIRSMAIN','NARR').AsString               :=  AllTrim(MainQuery.FieldByName('text1').AsString) + AllTrim(MainQuery.FieldByName('text2').AsString) + AllTrim(MainQuery.FieldByName('text3').AsString) + AllTrim(MainQuery.FieldByName('text4').AsString) + AllTrim(MainQuery.FieldByName('text5').AsString) + AllTrim(MainQuery.FieldByName('text6').AsString) + AllTrim(MainQuery.FieldByName('text7').AsString) + AllTrim(MainQuery.FieldByName('text8').AsString) + AllTrim(MainQuery.FieldByName('text9').AsString);
    GetTable('NFIRSMAIN').Post;
    MainQuery.Next;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Processing NFIRSMAIN records . . . . . . Done');

  MainQuery.Free;
  CloseApollo('NFIRSMAIN');
  CloseApollo('PERS');
  ShowMessage('Finished');
end;

procedure TConvIMCForm.NfirsFirButtonClick(Sender: TObject);
Var FireQuery       : TADOQuery;
    FileName        : String;
    SheetName       : String;
    Fdid            : String;
    IncNum          : String;
    ExpNum          : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing NFIRSFIR records . . . . . . ');

  SheetName                  := SheetField.Text;
  FileName                   := DirectoryField.text + SheetName + '.xlsx';
  FireQuery                  := TADOQuery.Create(self);
  FireQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  If ConvYearField.Value = '' then
    FireQuery.SQL.Text         := 'select * from [' + SheetName + '$] where deptfdid =' + AddExpr(MFireID)
  else
    FireQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [incidentnum] like ' + AddExpr(ConvYearField.Value + '%');
  FireQuery.Active           := true;
  Gauge.MaxValue             := FireQuery.RecordCount;

  Open_Query('NFIRSFIR', true, 'SELECT * FROM NFIRSFIR  WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');

  While Not FireQuery.Eof do begin
    Fdid    := Alltrim(FireQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(FireQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(FireQuery.FieldByName('IncidentNum').AsString);

    AddStatusListBox(ListBox,'Processing NFIRSFIR records ' + IncNum);

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin

      A('NFIRSFIR').UpdateSQL('SELECT * FROM NFIRSFIR WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      If A('NFIRSFIR').RecordsExist then
        A('NFIRSFIR').Edit
      else
        A('NFIRSFIR').Append;

      GetField('NFIRSFIR','NFIRSMAINID').AsString  := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSFIR','CAUSEIGN').AsString     := alltrim(FireQuery.FieldByName('Cause').AsString);
      If FireQuery.FieldByName('ResidentialYN').AsString ='Y' then
        GetField('NFIRSFIR','NOTRESFLAG').AsString  := 'N'
      else
        GetField('NFIRSFIR','NOTRESFLAG').AsString  := 'Y';
      GetField('NFIRSFIR','NUMRESUNIT').AsString   := alltrim(FireQuery.FieldByName('RESUNITS').AsString);
      GetField('NFIRSFIR','NUMBUILD').AsString     := alltrim(FireQuery.FieldByName('BUILDINGS').AsString);
      GetField('NFIRSFIR','ACREBURN').AsString     := alltrim(FireQuery.FieldByName('ACRESBURNED').AsString);
      GetField('NFIRSFIR','LESSONEACR').AsString   := alltrim(FireQuery.FieldByName('ACRESLESSTHANONE').AsString);
      GetField('NFIRSFIR','ONSITE1').AsString      := alltrim(FireQuery.FieldByName('ONSITEMAT1').AsString);
      GetField('NFIRSFIR','ONSITE2').AsString      := alltrim(FireQuery.FieldByName('ONSITEMAT2').AsString);
      GetField('NFIRSFIR','ONSITE3').AsString      := alltrim(FireQuery.FieldByName('ONSITEMAT3').AsString);
      GetField('NFIRSFIR','STORAGE1').AsString     := alltrim(FireQuery.FieldByName('MATSTORAGE1').AsString);
      GetField('NFIRSFIR','STORAGE2').AsString     := alltrim(FireQuery.FieldByName('MATSTORAGE2').AsString);
      GetField('NFIRSFIR','STORAGE3').AsString     := alltrim(FireQuery.FieldByName('MATSTORAGE3').AsString);
      GetField('NFIRSFIR','AREAORIGIN').AsString   := alltrim(FireQuery.FieldByName('AREAOFORIGIN').AsString);
      GetField('NFIRSFIR','HEATSOURCE').AsString   := alltrim(FireQuery.FieldByName('HEATSOURCE').AsString);
      GetField('NFIRSFIR','ITEMFIRST').AsString    := alltrim(FireQuery.FieldByName('ITEMIGNITED').AsString);
      GetField('NFIRSFIR','TYPEMAT').AsString      := alltrim(FireQuery.FieldByName('MATERIALTYPE').AsString);
      GetField('NFIRSFIR','CONFINEDTO').AsString   := alltrim(FireQuery.FieldByName('CONFINEDYN').AsString);
      GetField('NFIRSFIR','CAUSEIGN').AsString     := alltrim(FireQuery.FieldByName('CAUSE').AsString);
      GetField('NFIRSFIR','CONTIGN1').AsString     := alltrim(FireQuery.FieldByName('IGNITION1').AsString);
      GetField('NFIRSFIR','CONTIGN2').AsString     := alltrim(FireQuery.FieldByName('IGNITION2').AsString);
      GetField('NFIRSFIR','CAUSEAGE').AsString     := alltrim(FireQuery.FieldByName('AGE').AsString);
      GetField('NFIRSFIR','HUMANSEX').AsString     := alltrim(FireQuery.FieldByName('SEX').AsString);
      GetField('NFIRSFIR','EQUINV').AsString       := alltrim(FireQuery.FieldByName('EQUIPMENT').AsString);
      GetField('NFIRSFIR','EQUBRAND').AsString     := alltrim(FireQuery.FieldByName('EQUIPBRAND').AsString);
      GetField('NFIRSFIR','EQUMODEL').AsString     := alltrim(FireQuery.FieldByName('EQUIPMODEL').AsString);
      GetField('NFIRSFIR','EQUSERIAL').AsString    := alltrim(FireQuery.FieldByName('EQUIPSERIAL').AsString);
      GetField('NFIRSFIR','EQUYEAR').AsString      := alltrim(FireQuery.FieldByName('EQUIPYEAR').AsString);
      GetField('NFIRSFIR','EQUPOWER').AsString     := alltrim(FireQuery.FieldByName('EQUIPPOWER').AsString);
      GetField('NFIRSFIR','EQUPORT').AsString      := alltrim(FireQuery.FieldByName('EQUIPPORT').AsString);
      GetField('NFIRSFIR','FIRESUPP1').AsString    := alltrim(FireQuery.FieldByName('SUPPR1').AsString);
      GetField('NFIRSFIR','FIRESUPP2').AsString    := alltrim(FireQuery.FieldByName('SUPPR2').AsString);
      GetField('NFIRSFIR','FIRESUPP3').AsString    := alltrim(FireQuery.FieldByName('SUPPR3').AsString);

      If Not (tdbfield('NFIRSFIR','MOBINV') = 'N') and Not (tdbfield('NFIRSFIR','MOBINV') = '') then begin
        GetField('NFIRSFIR','MOBTYPE').AsString      := alltrim(FireQuery.FieldByName('MOBILETYPE').AsString);
        GetField('NFIRSFIR','MOBMAKE').AsString      := alltrim(FireQuery.FieldByName('MOBILEMAKE').AsString);
        GetField('NFIRSFIR','MOBMODEL').AsString     := alltrim(FireQuery.FieldByName('MOBILMODEL').AsString);
        GetField('NFIRSFIR','MOBYEAR').AsString      := alltrim(FireQuery.FieldByName('MOBILEYEAR').AsString);
        GetField('NFIRSFIR','MOBLIC').AsString       := alltrim(FireQuery.FieldByName('MOBILELICNUM').AsString);
        GetField('NFIRSFIR','MOBSTATE').AsString     := alltrim(FireQuery.FieldByName('MOBILELICSTATE').AsString);
        GetField('NFIRSFIR','MOBSER').AsString       := alltrim(FireQuery.FieldByName('MOBILEVIN').AsString);
      end;
      GetTable('NFIRSFIR').Post;
    end else
      AddStatusListBox(ErrorBox,'Processing NFIRSFIR records ' + IncNum + ' Not Found');

    FireQuery.Next;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Processing NFIRSFIR records . . . . . . Done');
  CloseApollo('NFIRSFIR');
  CloseApollo('NFIRSMAIN');
  FireQuery.Free;
end;

procedure TConvIMCForm.NfirsFireCasButtonClick(Sender: TObject);
Var CasQuery    : TADOQuery;
    FileName    : String;
    PersID      : String;
    Fdid        : String;
    IncNum      : String;
    ExpNum      : String;
begin
  inherited;
  FileName                  := DirectoryField.text+'\N5_5A.xlsx';
  CasQuery                  := TADOQuery.Create(self);
  CasQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  CasQuery.SQL.Text         := 'select * from [N5_5A$] where deptfdid =' + AddExpr(MFireID);
  CasQuery.Active           := true;
  Gauge.MaxValue            := CasQuery.RecordCount;

  Open_Query('NFIRSFIRECASUALTY', true, 'SELECT * FROM NFIRSFIRECASUALTY WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');

  While Not CasQuery.Eof do begin
    Fdid    := Alltrim(CasQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(CasQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(CasQuery.FieldByName('IncidentNum').AsString);
    PersID  := SQLLookup(CasQuery.FieldByName('ID').AsString,'PERSCODE','PERS','PERSID');

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin
      A('NFIRSFIRECASUALTY').UpdateSQL('SELECT * FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND NAME =' + AddExpr(CasQuery.FieldByName('FirstName').AsString));
      If A('NFIRSFIRECASUALTY').RecordsExist then
        A('NFIRSFIRECASUALTY').Edit
      else
        A('NFIRSFIRECASUALTY').Append;
      GetField('NFIRSFIRECASUALTY','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSFIRECASUALTY','PERSID').AsString        := PersID;
      GetField('NFIRSFIRECASUALTY','FIRSTNAME').AsString     := AllTrim(CasQuery.FieldByName('FIRSTNAME').AsString);
      GetField('NFIRSFIRECASUALTY','NAME').AsString          := AllTrim(CasQuery.FieldByName('LASTNAME').AsString);
      GetField('NFIRSFIRECASUALTY','MI').AsString            := AllTrim(CasQuery.FieldByName('MIDDLENAME').AsString);
      GetField('NFIRSFIRECASUALTY','SUFFIX').AsString        := AllTrim(CasQuery.FieldByName('NAMESUF').AsString);
      GetField('NFIRSFIRECASUALTY','DOB').AsDateTime         := GetDateTime(CasQuery.FieldByName('DOB').AsString,'00000');
      GetField('NFIRSFIRECASUALTY','AGE').AsString           := AllTrim(CasQuery.FieldByName('AGE').AsString);
      GetField('NFIRSFIRECASUALTY','SEX').AsString           := AllTrim(CasQuery.FieldByName('SEX').AsString);
      GetField('NFIRSFIRECASUALTY','DATETIMEINJ').AsDateTime := GetDateTime(CasQuery.FieldByName('INJURYDATE').AsString,CasQuery.FieldByName('INJURYTIME').AsString);
      GetField('NFIRSFIRECASUALTY','NARR').AsString          := AllTrim(CasQuery.FieldByName('VarPortion1').AsString);
      GetField('NFIRSFIRECASUALTY','ASSIGN').AsString        := AllTrim(CasQuery.FieldByName('USUALASSIGN').AsString);
      GetField('NFIRSFIRECASUALTY','SEV').AsString           := AllTrim(CasQuery.FieldByName('SEVERITY').AsString);
      GetField('NFIRSFIRECASUALTY','ACTINJ').AsString        := AllTrim(CasQuery.FieldByName('ACTIVITY').AsString);
      GetField('NFIRSFIRECASUALTY','PRIMINJ').AsString       := AllTrim(CasQuery.FieldByName('PRIBODY').AsString);
      GetField('NFIRSFIRECASUALTY','PRIMSYMP').AsString      := AllTrim(CasQuery.FieldByName('PRISYMPTOM').AsString);
      GetField('NFIRSFIRECASUALTY','CAUSEINJ').AsString      := AllTrim(CasQuery.FieldByName('CAUSE').AsString);
      GetField('NFIRSFIRECASUALTY','WHEREINJ').AsString      := AllTrim(CasQuery.FieldByName('INJURYLOC').AsString);
      GetField('NFIRSFIRECASUALTY','SPECLOC').AsString       := AllTrim(CasQuery.FieldByName('SPECIFICLOC').AsString);
      GetField('NFIRSFIRECASUALTY','STORYINJ').AsString      := AllTrim(CasQuery.FieldByName('STORY').AsString);
      GetField('NFIRSFIRECASUALTY','COND').AsString          := AllTrim(CasQuery.FieldByName('PHYSCOND').AsString);
      GetField('NFIRSFIRECASUALTY','TAKENTO').AsString       := AllTrim(CasQuery.FieldByName('TAKENTO').AsString);
      GetField('NFIRSFIRECASUALTY','FACTCONT').AsString      := alltrim(CasQuery.FieldByName('CONTRIB').AsString);
      GetField('NFIRSFIRECASUALTY','OBJINV').AsString        := AllTrim(CasQuery.FieldByName('OBJECT').AsString);
      GetField('NFIRSFIRECASUALTY','VEHTYPE').AsString       := AllTrim(CasQuery.FieldByName('VEHTYPE').AsString);
      A('NFIRSFIRECASUALTY').Post;
    end;
    CasQuery.Next;
  end;
end;

procedure TConvIMCForm.NfirsFireEquButtonClick(Sender: TObject);
Var NfirsEquFailQuery : TADOQuery;
    FileName          : String;
    Fdid              : String;
    IncNum            : String;
    ExpNum            : String;
begin
  inherited;

  FileName                           := DirectoryField.text+'\N5_5B_FireServiceEquiqmentFailureForm.xlsx';
  NfirsEquFailQuery                  := TADOQuery.Create(self);
  NfirsEquFailQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  NfirsEquFailQuery.SQL.Text         := 'select * from [N5_5B_FireServiceEquiqmentFailu$] where deptfdid =' + AddExpr(MFireID);
  NfirsEquFailQuery.Active           := true;
  Gauge.MaxValue                     := NfirsEquFailQuery.RecordCount;
  Open_Query('NFIRSFIRECASUALTY', true, 'SELECT * FROM NFIRSFIRECASUALTY WHERE 1=2');
  Open_Query('NFIRSEQUIPMENTFAILURE',True, 'SELECT * FROM NFIRSEQUIPMENTFAILURE WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');

  While Not NfirsEquFailQuery.Eof do begin
    Fdid    := Alltrim(NfirsEquFailQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(NfirsEquFailQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(NfirsEquFailQuery.FieldByName('IncidentNum').AsString);

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin
      A('NFIRSFIRECASUALTY').UpdateSQL('SELECT * FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + PKValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND PERSID =' + AddExpr(sqllookup(NfirsEquFailQuery.FieldByName('ID').AsString,'PERSCODE','PERS','PERSID')));    //next));
      If A('NFIRSFIRECASUALTY').RecordsExist then begin
        A('NFIRSEQUIPMENTFAILURE').UpdateSQL('SELECT * FROM NFIRSEQUIPMENTFAILURE WHERE NFIRSFIRECASUALTYID = ' + AddExpr(GetField('NFIRSFIRECASUALTY','NFIRSFIRECASUALTYID').AsString));
        if A('NFIRSEQUIPMENTFAILURE').RecordsExist then begin
          GetField('NFIRSEQUIPMENTFAILURE','NFIRSFIRECASUALTYID').AsString:= GetField('NFIRSFIRECASUALTY','NFIRSFIRECASUALTYID').AsString;
          GetField('NFIRSEQUIPMENTFAILURE','EQUPROB').AsString            := NfirsEquFailQuery.FieldByName('PROBLEM').AsString;
          GetField('NFIRSEQUIPMENTFAILURE','EQUITEM').AsString            := NfirsEquFailQuery.FieldByName('ITEM').AsString;
          A('NFIRSEQUIPMENTFAILURE').Post;
        end;
      end;
    end;  
    NfirsEquFailQuery.Next;
  end;
  CloseApollo('NFIRSFIRECASUALTY');
  CloseApollo('NFIRSEQUIPMENTFAILURE');
  CloseApollo('NFIRSMAIN');
  NfirsEquFailQuery.Free;
end;

procedure TConvIMCForm.NfirsStrButtonClick(Sender: TObject);
Var StruQuery       : TADOQuery;
    FileName        : String;
    Fdid            : String;
    SheetName       : String;
    IncNum          : String;
    ExpNum          : String;
begin
  inherited;
  SheetName                  := SheetField.Text;
  FileName                   := DirectoryField.text + SheetName + '.xlsx';
  StruQuery                  := TADOQuery.Create(self);
  StruQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  StruQuery.SQL.Text         := 'select * from [' + SheetName + '$] where deptfdid =' + AddExpr(MFireID);
  StruQuery.Active           := true;
  Gauge.MaxValue             := StruQuery.RecordCount;

  Open_Query('NFIRSSTR', true, 'SELECT * FROM NFIRSSTR  WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');

  While Not StruQuery.Eof do begin
    Fdid    := Alltrim(StruQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(StruQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(StruQuery.FieldByName('IncidentNum').AsString);

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin

      A('NFIRSSTR').UpdateSQL('SELECT * FROM NFIRSSTR WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
      If A('NFIRSSTR').RecordsExist then
        A('NFIRSSTR').Edit
      else
        A('NFIRSSTR').Append;
      GetField('NFIRSSTR','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSSTR','STRTYPE').AsString     := AllTrim(StruQuery.FieldByName('STRUCTTYPE').AsString);
      GetField('NFIRSSTR','BUILDSTAT').AsString   := AllTrim(StruQuery.FieldByName('STRUCTSTATUS').AsString);
      GetField('NFIRSSTR','BLDHEIGHT').AsString   := AllTrim(StruQuery.FieldByName('STORIESABOVE').AsString);
      GetField('NFIRSSTR','BELOWGRADE').AsString  := AllTrim(StruQuery.FieldByName('STORIESBELOW').AsString);

      If AllTrim(StruQuery.FieldByName('SQUAREFEET').AsString) <> '' then
        GetField('NFIRSSTR','SQUAREFEET').AsString := AllTrim(StruQuery.FieldByName('SQUAREFEET').AsString)
      else begin
        GetField('NFIRSSTR','WIDTH').AsString      := AllTrim(StruQuery.FieldByName('BUILDINGWIDTH').AsString);
        GetField('NFIRSSTR','LENGTHSQL').AsString  := AllTrim(StruQuery.FieldByName('BUILDINGLENGTH').AsString);
      end;

      GetField('NFIRSSTR','FIREORIGIN').AsString  := AllTrim(StruQuery.FieldByName('FIREORIGIN').AsString);
      GetField('NFIRSSTR','FIRESPREAD').AsString  := AllTrim(StruQuery.FieldByName('FIRESPREAD').AsString);
      GetField('NFIRSSTR','STORYMINOR').AsString  := AllTrim(StruQuery.FieldByName('STORIESDAMAGEDMINOR').AsString);
      GetField('NFIRSSTR','STORYSIGN').AsString   := AllTrim(StruQuery.FieldByName('STORIESDAMAGEDSIGNIF').AsString);
      GetField('NFIRSSTR','STORYHEAVY').AsString  := AllTrim(StruQuery.FieldByName('STORIESDAMAGEDHEAVY').AsString);
      GetField('NFIRSSTR','STORYEXT').AsString    := AllTrim(StruQuery.FieldByName('STORIESDAMAGEDEXTREM').AsString);
      GetField('NFIRSSTR','ITEMCONTR').AsString   := AllTrim(StruQuery.FieldByName('ITEMCONTRIBTOSPREAD').AsString);
      GetField('NFIRSSTR','TYPEMAT').AsString     := AllTrim(StruQuery.FieldByName('MATCONTRIBTOSPREAD').AsString);
      GetField('NFIRSSTR','DETPRES').AsString     := AllTrim(StruQuery.FieldByName('DETECTORPRESENCE').AsString);
      GetField('NFIRSSTR','DETTYPE').AsString     := AllTrim(StruQuery.FieldByName('DETECTORTYPE').AsString);
      GetField('NFIRSSTR','DETPOWER').AsString    := AllTrim(StruQuery.FieldByName('DETECTORPOWER').AsString);
      GetField('NFIRSSTR','DETOP').AsString       := AllTrim(StruQuery.FieldByName('DETECTOROPERATION').AsString);
      GetField('NFIRSSTR','DETEFF').AsString      := AllTrim(StruQuery.FieldByName('DETECTOREFFECTIVE').AsString);
      GetField('NFIRSSTR','DETFAIL').AsString     := AllTrim(StruQuery.FieldByName('DETECTORFAILURE').AsString);
      GetField('NFIRSSTR','AUTOPRES').AsString    := AllTrim(StruQuery.FieldByName('AESPRESENCE').AsString);
      GetField('NFIRSSTR','AUTOTYPE').AsString    := AllTrim(StruQuery.FieldByName('AESTYPE').AsString);
      GetField('NFIRSSTR','AUTOOP').AsString      := AllTrim(StruQuery.FieldByName('AESOPERATION').AsString);
      GetField('NFIRSSTR','NUMSPR').AsString      := AllTrim(StruQuery.FieldByName('NUMOFSPRINKLERS').AsString);
      GetField('NFIRSSTR','AUTOFAIL').AsString    := AllTrim(StruQuery.FieldByName('AESFAILURE').AsString);
      A('NFIRSSTR').Post;

    end;
    StruQuery.Next;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('NFIRSSTR');
  CloseApollo('NFIRSMAIN');
  StruQuery.Free;
end;

procedure TConvIMCForm.NITrainCATTypeButtonClick(Sender: TObject);
var CouseQuery    : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  AddStatusListBox(ListBox,'Processing NISTYPE Records . . . . . . Started.');
  SheetName                   := 'CategoryCodesFile';
  FileName                    := DirectoryField.text + SheetName + '.xlsx';
  CouseQuery                  := TADOQuery.Create(self);
  CouseQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  CouseQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  CouseQuery.Active           := true;

  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE');

  Gauge.Progress := 0;
  Gauge.MaxValue := CouseQuery.RecordCount;

  while not CouseQuery.eof do begin
    Code          := alltrim(CouseQuery.FieldByName('KeyCode').AsString);

    AddStatusListBox(ListBox,'Processing NISTYPE Records ' + Code);

    If alltrim(CouseQuery.FieldByName('Table').AsString) = 'C' then begin
      If A('NISTYPE').ExactQueryLocate('CODE',Code) then
        A('NISTYPE').Edit
      else
        A('NISTYPE').Append;

      GetField('NISTYPE','FDID').AsString      := GetConvFdid(ConvFdidField.Value);
      GetField('NISTYPE','CODE').AsString      := Code;
      GetField('NISTYPE','NIPTYPEID').AsString := '1';
      GetField('NISTYPE','DESCR').AsString     := alltrim(CouseQuery.FieldByName('desc').AsString);

      A('NISTYPE').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    CouseQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('NISTYPE');
  AddStatusListBox(ListBox,'Processing NISTYPE Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.NarrativeButtonClick(Sender: TObject);
Var NfirsNarrQuery : TADOQuery;
    FileName       : String;
    SheetName      : String;
    UnitNum        : String;
    IncNum         : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing NARRATIVE records . . . . . . loading data');
  SheetName                       := 'N5_IMC_Narrative_ALL';
  FileName                        := DirectoryField.text + SheetName + '.xlsx';
  NfirsNarrQuery                  := TADOQuery.Create(self);
  NfirsNarrQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';


  NfirsNarrQuery.SQL.Text         := 'select * from [' + SheetName + '$]';

  NfirsNarrQuery.Active           := true;
  Gauge.MaxValue                  := NfirsNarrQuery.RecordCount;

  AddStatusListBox(ListBox,'Processing NFIRSAPP records . . . . . . loaded.');

  Open_Query('NFIRSMAIN',true,'SELECT * FROM NFIRSMAIN WHERE 1=2');
  While Not NfirsNarrQuery.Eof do begin
    IncNum  := GetIncNum(NfirsNarrQuery.FieldByName('IncidentNum').AsString);
    AddStatusListBox(ListBox,'Processing NARRATIVE record for incident ' + IncNum);

    A('NFIRSMAIN').UpdateSQL('SELECT * FROM NFIRSMAIN WHERE INCNUM = ' + AddExpr(IncNum));
    If A('NFIRSMAIN').RecordsExist then begin
      A('NFIRSMAIN').Edit;
      GetField('NFIRSMAIN','NARR').AsString         := GetField('NFIRSMAIN','NARR').AsString + AllTrim(NfirsNarrQuery.FieldByName('narr_1').AsString) + AllTrim(NfirsNarrQuery.FieldByName('narr_2').AsString) + AllTrim(NfirsNarrQuery.FieldByName('narr_3').AsString) + AllTrim(NfirsNarrQuery.FieldByName('narr_4').AsString);
      A('NFIRSMAIN').Post;
    end else begin
      AddStatusListBox(ErrorBox,'Processing NARR record for incident ' + IncNum + ' Not Found');
    end;

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
    NfirsNarrQuery.Next;
  end;

end;

procedure TConvIMCForm.NfirsAppButtonClick(Sender: TObject);
Var NfirsAppQuery : TADOQuery;
    FileName      : String;
    SheetName     : String;
    UnitNum       : String;
    Fdid          : String;
    IncNum        : String;
    ExpNum        : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing NFIRSAPP records . . . . . . loading data');
  SheetName                      := SheetField.Text;
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  NfirsAppQuery                  := TADOQuery.Create(self);
  NfirsAppQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';

  If ConvYearField.Value = '' then
    NfirsAppQuery.SQL.Text         := 'select * from [' + SheetName + '$] where deptfdid =' + AddExpr(MFireID)
  else
    NfirsAppQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [incidentnum] like ' + AddExpr(ConvYearField.Value + '%');

  NfirsAppQuery.Active           := true;
  Gauge.MaxValue                 := NfirsAppQuery.RecordCount;

  AddStatusListBox(ListBox,'Processing NFIRSAPP records . . . . . . loaded.');

  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSAPP',true,'SELECT * FROM NFIRSAPP WHERE 1=2');
  While Not NfirsAppQuery.Eof do begin
    Fdid    := Alltrim(NfirsAppQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(NfirsAppQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(NfirsAppQuery.FieldByName('IncidentNum').AsString);
    UnitNum := NfirsAppQuery.FieldByName('ID').AsString;
    AddStatusListBox(ListBox,'Processing NFIRSAPP record ' + UnitNum + ' for incident ' + IncNum);

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin
      A('NFIRSAPP').UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + PKValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND UNITNUM = ' + AddExpr(UnitNum));
      If A('NFIRSAPP').RecordsExist then
        A('NFIRSAPP').Edit
      else
        A('NFIRSAPP').Append;
      GetField('NFIRSAPP','NFIRSMAINID').AsString    := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSAPP','UNITNUM').AsString        := UnitNum;
      GetField('NFIRSAPP','N5AU').AsString           := NfirsAppQuery.FieldByName('USE').AsString;
      GetField('NFIRSAPP','N5ACT1').AsString         := NfirsAppQuery.FieldByName('ACTION1').AsString;
      GetField('NFIRSAPP','N5ACT2').AsString         := NfirsAppQuery.FieldByName('ACTION2').AsString;
      GetField('NFIRSAPP','N5ACT3').AsString         := NfirsAppQuery.FieldByName('ACTION3').AsString;
      GetField('NFIRSAPP','N5ACT4').AsString         := NfirsAppQuery.FieldByName('ACTION4').AsString;
      GetField('NFIRSAPP','DATETIMEALARM').AsDateTime:= GetDateTime(NfirsAppQuery.FieldByName('DispatchDate').AsString,NfirsAppQuery.FieldByName('DispatchTime').AsString);
      GetField('NFIRSAPP','DATETIMEARR').AsDateTime  := GetDateTime(NfirsAppQuery.FieldByName('ArrivalDate').AsString,NfirsAppQuery.FieldByName('ArrivalTime').AsString);
      GetField('NFIRSAPP','DATETIMEIN').AsDateTime   := GetDateTime(NfirsAppQuery.FieldByName('InQuartersDate').AsString,NfirsAppQuery.FieldByName('InQuartersTime').AsString);
      A('NFIRSAPP').Post;
      Gauge.progress := Gauge.progress + 1;
      Application.ProcessMessages;
    end else begin
      AddStatusListBox(ErrorBox,'Processing NFIRSAPP record ' + UnitNum + ' for incident ' + IncNum + ' Not Found');
      Application.ProcessMessages;
    end;

    NfirsAppQuery.Next;
  end;
  CloseApollo('NFIRSAPP');
  CloseApollo('NFIRSMAIN');
  NfirsAppQuery.Free;
  AddStatusListBox(ListBox,'Processing NFIRSAPP records . . . . . . Done');
end;

procedure TConvIMCForm.NFIRSAttButtonClick(Sender: TObject);
Var NfirsAttQuery : TADOQuery;
    FileName      : String;
    Fdid          : String;
    IncNum        : String;
    ExpNum        : String;
    PersCode      : String;
    SheetName     : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing NFIRSATT records . . . . . . loading data');
  SheetName                      := 'N5_PT_PersonnelTimeSheetForm_Rest';
  FileName                       := DirectoryField.text + 'N5_PT_PersonnelTimeSheetForm_Rest' + '.xlsx';
  NfirsAttQuery                  := TADOQuery.Create(self);
  NfirsAttQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';

  If ConvYearField.Value = '' then
    NfirsAttQuery.SQL.Text         := 'select * from [' + 'test' + '$] where deptfdid =' + AddExpr(MFireID)
  else
    NfirsAttQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [incidentnum] like ' + AddExpr(ConvYearField.Value + '%');

  NfirsAttQuery.Active           := true;
  Gauge.MaxValue                 := NfirsAttQuery.RecordCount;

  Open_Query('NFIRSATT', true, 'SELECT * FROM NFIRSATT');
  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSAPP', false,'SELECT NFIRSAPPID FROM NFIRSAPP');
  Open_Query('PERS',     false,'SELECT FDID, PERSCODE, PERSID FROM PERS');

  AddStatusListBox(ListBox,'Processing NFIRSATT records . . . . . . loaded');
  While Not NfirsAttQuery.Eof do begin
    Fdid     := Alltrim(NfirsAttQuery.FieldByName('DeptFDID').AsString);
  //  ExpNum   := padl(Alltrim(NfirsAttQuery.FieldByName('Exposure').AsString),2,'0');
    ExpNum   := '00';
    IncNum   := GetIncNum(NfirsAttQuery.FieldByName('IncidentNum').AsString);
    PersCode := NfirsAttQuery.FieldByName('OFFICERID').AsString;

    If A('PERS').ExactQueryLocate('PERSCODE',PersCode) then begin
      A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum));// + ' AND EXPNUM = ' + AddExpr(ExpNum));
      If A('NFIRSMAIN').RecordsExist then begin
        AddStatusListBox(ListBox,'Processing NFIRSATT records Incident ' + IncNum + ' for Staff ' + PersCode);
     //   A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + PKValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND PERSID = ' + pkValue(GetField('PERS','PERSID').AsString));
        IF A('NFIRSATT').ExactQueryLocate(['PERSID','NFIRSMAINID'],[GetField('PERS','PERSID').AsString,GetField('NFIRSMAIN','NFIRSMAINID').AsString]) then
          A('NFIRSATT').Edit
        else
          A('NFIRSATT').Append;
        GetField('NFIRSATT','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
        GetField('NFIRSATT','PERSID').AsString      := GetField('PERS','PERSID').AsString;
       { GetField('NFIRSATT','N5ACT1').AsString      := NfirsAttQuery.FieldByName('ACTION1').AsString;
        GetField('NFIRSATT','N5ACT2').AsString      := NfirsAttQuery.FieldByName('ACTION2').AsString;
        GetField('NFIRSATT','N5ACT3').AsString      := NfirsAttQuery.FieldByName('ACTION3').AsString;
        GetField('NFIRSATT','N5ACT4').AsString      := NfirsAttQuery.FieldByName('ACTION4').AsString; }
       // A('NFIRSAPP').UpdateSql('SELECT NFIRSAPPID FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND UNITNUM = ' + AddExpr(NfirsAttQuery.FieldByName('UNIT').AsString));
        IF A('NFIRSAPP').ExactQueryLocate(['UNITNUM','NFIRSMAINID'],[NfirsAttQuery.FieldByName('UNIT').AsString,GetField('NFIRSMAIN','NFIRSMAINID').AsString]) then
          GetField('NFIRSATT','NFIRSAPPID').AsString    := GetField('NFIRSAPP','NFIRSAPPID').AsString;
        GetField('NFIRSATT','DATETIMEENTRY').AsDateTime:= GetDateTime(NfirsAttQuery.FieldByName('SEQDATE').AsString,NfirsAttQuery.FieldByName('SEQTIME').AsString);
        A('NFIRSATT').Post;
      end else begin
        AddStatusListBox(ErrorBox,'Incident ' + IncNum + ' not found.');
        Application.ProcessMessages;
      end;
    end else begin
      AddStatusListBox(ErrorBox,'Staff ' + PersCode + ' not found.');
      Application.ProcessMessages;
    end;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
    NfirsAttQuery.Next;
  end;

  CloseApollo('NFIRSATT');
  CloseApollo('NFIRSAPP');
  CloseApollo('NFIRSMAIN');
  CloseApollo('PERS');
  NfirsAttQuery.Free;
  AddStatusListBox(ListBox,'Processing NFIRSATT records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.NfirsCivilianButtonClick(Sender: TObject);
Var CasQuery    : TADOQuery;
    FileName    : String;
    Fdid        : String;
    IncNum      : String;
    ExpNum      : String;
begin
  inherited;
  FileName                  := DirectoryField.text+'\N5_4.xlsx';
  CasQuery                  := TADOQuery.Create(self);
  CasQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  CasQuery.SQL.Text         := 'select * from [N5_4$]';
  CasQuery.Active           := true;
  Gauge.MaxValue            := CasQuery.RecordCount;

  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSCIVILIAN',   true, 'SELECT * FROM NFIRSCIVILIAN  WHERE 1=2');

  While Not CasQuery.Eof do begin
    Fdid    := Alltrim(CasQuery.FieldByName('DeptFDID').AsString);
    ExpNum  := padl(Alltrim(CasQuery.FieldByName('Exposure').AsString),2,'0');
    IncNum  := GetIncNum(CasQuery.FieldByName('IncidentNum').AsString);

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
    If A('NFIRSMAIN').RecordsExist then begin
      A('NFIRSCIVILIAN').UpdateSQL('SELECT * FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' AND NAME =' + AddExpr(CasQuery.FieldByName('FirstName').AsString));
      If A('NFIRSCIVILIAN').RecordsExist then
        A('NFIRSCIVILIAN').Edit
      else
        A('NFIRSCIVILIAN').Append;
      GetField('NFIRSCIVILIAN','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSCIVILIAN','FIRSTNAME').AsString     := AllTrim(CasQuery.FieldByName('FIRSTNAME').AsString);
      GetField('NFIRSCIVILIAN','NAME').AsString          := AllTrim(CasQuery.FieldByName('LASTNAME').AsString);
      GetField('NFIRSCIVILIAN','MI').AsString            := AllTrim(CasQuery.FieldByName('MIDDLENAME').AsString);
      GetField('NFIRSCIVILIAN','SUFFIX').AsString        := AllTrim(CasQuery.FieldByName('NAMESUF').AsString);
      GetField('NFIRSCIVILIAN','DOB').AsDateTime         := GetDateTime(CasQuery.FieldByName('DOB').AsString,'00000');
      GetField('NFIRSCIVILIAN','AGE').AsString           := AllTrim(CasQuery.FieldByName('AGE').AsString);
      GetField('NFIRSCIVILIAN','SEX').AsString           := AllTrim(CasQuery.FieldByName('SEX').AsString);
      GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDateTime := GetDateTime(CasQuery.FieldByName('INJURYDATE').AsString,CasQuery.FieldByName('INJURYTIME').AsString);
      GetField('NFIRSCIVILIAN','NARR').AsString          := AllTrim(CasQuery.FieldByName('VarPortion1').AsString);
      GetField('NFIRSCIVILIAN','CASSEV').AsString        := AllTrim(CasQuery.FieldByName('SEVERITY').AsString);
      GetField('NFIRSCIVILIAN','ACTINJ').AsString        := AllTrim(CasQuery.FieldByName('ACTIVITY').AsString);
      GetField('NFIRSCIVILIAN','PARTINJ').AsString       := AllTrim(CasQuery.FieldByName('PRIBODY').AsString);
      GetField('NFIRSCIVILIAN','PRIMSYM').AsString       := AllTrim(CasQuery.FieldByName('PRISYMPTOM').AsString);
      GetField('NFIRSCIVILIAN','CAUSEINJ').AsString      := AllTrim(CasQuery.FieldByName('CAUSE').AsString);
      GetField('NFIRSCIVILIAN','FACTOR1').AsString       := AllTrim(CasQuery.FieldByName('FACTOR1').AsString);
      GetField('NFIRSCIVILIAN','FACTOR2').AsString       := AllTrim(CasQuery.FieldByName('FACTOR2').AsString);
      GetField('NFIRSCIVILIAN','LOCATION').AsString      := AllTrim(CasQuery.FieldByName('INCIDENTLOC').AsString);
      GetField('NFIRSCIVILIAN','SPECLOC').AsString       := AllTrim(CasQuery.FieldByName('SPECIFICLOC').AsString);
      GetField('NFIRSCIVILIAN','STORYINJ').AsString      := AllTrim(CasQuery.FieldByName('STORYATINJURY').AsString);
      A('NFIRSCIVILIAN').Post;
    end;
    CasQuery.Next;
  end;
  CloseApollo('NFIRSCIVILIAN');
  CloseApollo('NFIRSMAIN');
  CasQuery.Free;
  ShowMessage('Done');
end;

procedure TConvIMCForm.PropAliasButtonClick(Sender: TObject);
var SitAlias  : TADOQuery;
    FileName  : String;
    PropCode  : String;
    Descr     : String;
    SheetName : String;
begin
  AddStatusListBox(ListBox,'Processing Property Aliases . . . . . . Started.');
  SheetName                 := 'SitAlias';
  FileName                  := DirectoryField.text + SheetName + '.xlsx';
  SitAlias                  := TADOQuery.Create(self);
  SitAlias.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  SitAlias.SQL.Text         := 'select * from [' + SheetName + '$]';
  SitAlias.Active           := true;

  Open_Query('PROPALIAS',true,'SELECT * FROM PROPALIAS WHERE 1=2');
  Open_Query('PROP',false,'SELECT PROPCODE, PROPID FROM PROP WHERE 1=2');
  Gauge.Progress := 0;
  Gauge.MaxValue := SitAlias.RecordCount;

  while not SitAlias.eof do begin
    PropCode := alltrim(SitAlias.FieldByName('JUR').AsString) + '-' + alltrim(SitAlias.FieldByName('SiteNum').AsString);
    Descr    := alltrim(SitAlias.FieldByName('SITEALIAS').AsString);

    A('PROP').UpdateSQL('SELECT PROPID FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode));
    If A('PROP').RecordsExist then begin

      A('PROPALIAS').UpdateSQL('SELECT * FROM PROPALIAS WHERE PROPID = ' + pkvalue(GetField('PROP','PROPID').AsString) + ' AND DESCR = ' + AddExpr(Descr));
      If A('PROPALIAS').RecordsExist then
        A('PROPALIAS').Edit
      else
        A('PROPALIAS').Append;

      GetField('PROPALIAS','PROPID').AsString := GetField('PROP','PROPID').AsString;
      GetField('PROPALIAS','DESCR').AsString  := Descr;
      A('PROPALIAS').Post;
      AddStatusListBox(ListBox,'Processing Property Contacts for PROPID = ' + GetField('PROP','PROPID').AsString + ' and ' + Descr);

    end else begin
      AddStatusListBox(ErrorBox,'Error in Property Contacts for Row Number ' + IntToStr(SitAlias.RecNo));

    end;

    Gauge.Progress := Gauge.Progress + 1;
    SitAlias.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PROPALIAS');
  CloseApollo('PROP');
  SitAlias.Free;
  AddStatusListBox(ListBox,'Processing Property Aliases . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.PropButtonClick(Sender: TObject);
var SiteQuery  : TADOQuery;
    Invalid    : String;
    FileName   : String;
    PropCode   : String;
    StrNum     : String;
    Street     : String;
    Fdid       : String;
    Latitude   : Real;
    Longitude  : Real;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Property Records . . . . . . Started.');
  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('PROPHYD',true,'SELECT * FROM PROPHYD WHERE 1=2');
  Open_Query('PROPSUBTYPE',false,'SELECT PROPSUBTYPEID, CODE FROM PROPSUBTYPE');
  Open_Query('DISPBOX',false,'SELECT DISPBOXID, CODE FROM DISPBOX');
  Open_Query('HYD',false,'SELECT HYDCODE,HYDID,STREET,STRNUM FROM HYD');
  Open_Query('FDID',false,'SELECT FDID, CITY, STATE, ZIP FROM FDID');
  Open_Query('PROPADDRSTAT',false,'SELECT * FROM PROPADDRSTAT');

  FileName                   := DirectoryField.text + '\Sites.xlsx';
  SiteQuery                  := TADOQuery.Create(self);
  SiteQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  SiteQuery.SQL.Text         := 'select * from [Sites$] where [AorI] = ' + AddExpr('A') + ' and jur =' + AddExpr('HAL');
  SiteQuery.Active           := true;
  Gauge.MaxValue             := SiteQuery.RecordCount;

  while not SiteQuery.eof do begin
    PropCode := alltrim(SiteQuery.FieldByName('JUR').AsString) + '-' + alltrim(SiteQuery.FieldByName('SiteNum').AsString);
    StrNum   := alltrim(SiteQuery.FieldByName('STREETNUM').AsString);
    Street   := alltrim(alltrim(SiteQuery.FieldByName('STREETNAME').AsString) + ' ' + SiteQuery.FieldByName('STREETSUF').AsString);
    Fdid     := GetConvFdid(ConvFdidField.Value);

    AddStatusListBox(ListBox,'Processing Property Records ' + StrNum + ' ' + Street + ', PROPCODE=' + PropCode);

    A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode));
    If A('PROP').RecordsExist then
      A('PROP').Edit
    else
      A('PROP').Append;

    GetField('PROP','PROPCODE').AsString        := PropCode;
    GetField('PROP','PROPTYPEID').AsString      := '1';
    GetField('PROP','FDID').AsString            := Fdid;

    If A('FDID').ExactQueryLocate('FDID',Fdid) then begin
      GetField('PROP','CITY').AsString  := UpperCase(tdbfield('FDID','CITY'));
      GetField('PROP','STATE').AsString := tdbfield('FDID','STATE');
      GetField('PROP','ZIP').AsString   := substr(tdbfield('FDID','ZIP'),1,5);
    end;

    GetField('PROP','ROOMAPT').AsString         := alltrim(SiteQuery.FieldByName('STREETAPT').AsString);
    GetField('PROP','STRNUM').AsString          := StrNum;
    GetField('PROP','STREET').AsString          := Street;
    GetField('PROP','COMPANY').AsString         := '';
    GetField('PROP','PLASTNAME').AsString       := alltrim(SiteQuery.FieldByName('BUSINESS').AsString);
    GetField('PROP','PHONE').AsString           := alltrim(SiteQuery.FieldByName('PHONE').AsString);
    GetField('PROP','OLASTNAME').AsString       := SiteQuery.FieldByName('OWNERSFIRST').AsString + ' ' + SiteQuery.FieldByName('OWNERSMI').AsString + ' ' + SiteQuery.FieldByName('OWNERSLAST').AsString;
    GetField('PROP','SECONDPHONE').AsString     := SiteQuery.FieldByName('OWNERSPHONE').AsString;
    GetField('PROP','FIRSTPERS').AsString       := SiteQuery.FieldByName('CONTACTFIRST').AsString + ' ' + SiteQuery.FieldByName('CONTACTMI').AsString + ' ' + SiteQuery.FieldByName('CONTACTLAST').AsString;
    GetField('PROP','ALARMPHONE').AsString      := alltrim(SiteQuery.FieldByName('ALARMCOMPANYPHONE').AsString);
    GetField('PROP','ALARMCOMP').AsString       := alltrim(SiteQuery.FieldByName('ALARMCOMPANYNAME').AsString);

    If Not (alltrim(SiteQuery.FieldByName('LATITUDE').AsString) = '') and Not (alltrim(SiteQuery.FieldByName('LONGITUDE').AsString) = '') then begin
      Latitude                                    := DecimalToMinutes(SiteQuery.FieldByName('LATITUDE').AsFloat);
      Longitude                                   := DecimalToMinutes(SiteQuery.FieldByName('LONGITUDE').AsFloat);
      If (Latitude <> 0) then begin
        GetField('PROP','LATITUDE').AsFloat  := Latitude;
        GetField('PROP','LONGITUDE').AsFloat := Longitude;
      end;
    end;  

    GetField('PROP','BOXNUM').AsString          := alltrim(SiteQuery.FieldByName('BOXALARM').AsString);
    GetField('PROP','ALARMTYPE').AsString       := alltrim(SiteQuery.FieldByName('ALARMINSTALLED').AsString);

    Invalid                                     := 'Residents are: ';
    if alltrim(SiteQuery.FieldByName('VISUAL').AsString) = '1' then
      Invalid       := Invalid + ' Visually Impaired;';
    if alltrim(SiteQuery.FieldByName('ORTHOPEDIC').AsString) = '1' then
      Invalid       := Invalid + ' Orthopedic;';
    if alltrim(SiteQuery.FieldByName('HEARING').AsString) = '1' then
      Invalid       := Invalid + 'Hearing Impaired;';
    if alltrim(SiteQuery.FieldByName('OTHER').AsString) = '1' then
      Invalid       := Invalid + 'Other Impairment;';

    if Invalid = 'Residents are: ' then
      Invalid := '';
    

    GetField('PROP','HANDICAP').AsString       := Invalid;

    If A('DISPBOX').ExactQueryLocate('CODE',SiteQuery.FieldByName('DISTRICT').AsString) then
      GetField('PROP','DISPBOXID').AsString   := GetField('DISPBOX','DISPBOXID').AsString;
    If A('PROPSUBTYPE').ExactQueryLocate('CODE',SiteQuery.FieldByName('BORR').AsString) then
      GetField('PROP','PROPSUBTYPEID').AsString   := GetField('PROPSUBTYPE','PROPSUBTYPEID').AsString;
    If A('PROPADDRSTAT').ExactQueryLocate('CODE',SiteQuery.FieldByName('AORI').AsString) then
      GetField('PROP','PROPADDRSTATID').AsString   := GetField('PROPADDRSTAT','PROPADDRSTATID').AsString;
    A('PROP').Post;

    If alltrim(SiteQuery.FieldByName('HYDRANT1').AsString) <> '' then
      AddPropHyd(alltrim(SiteQuery.FieldByName('HYDRANT1').AsString),'1');
    If alltrim(SiteQuery.FieldByName('HYDRANT2').AsString) <> '' then
      AddPropHyd(alltrim(SiteQuery.FieldByName('HYDRANT2').AsString),'2');
    If alltrim(SiteQuery.FieldByName('HYDRANT3').AsString) <> '' then
      AddPropHyd(alltrim(SiteQuery.FieldByName('HYDRANT3').AsString),'3');
    If alltrim(SiteQuery.FieldByName('HYDRANT4').AsString) <> '' then
      AddPropHyd(alltrim(SiteQuery.FieldByName('HYDRANT4').AsString),'4');
    If alltrim(SiteQuery.FieldByName('HYDRANT5').AsString) <> '' then
      AddPropHyd(alltrim(SiteQuery.FieldByName('HYDRANT5').AsString),'5');

    Application.ProcessMessages();
    Gauge.Progress := Gauge.Progress + 1;
    SiteQuery.next;
  end;

  CloseApollo('PROP');
  CloseApollo('PROPHYD');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('HYD');
  CloseApollo('FDID');
  CloseApollo('PROPADDRSTAT');
  SiteQuery.Free;
  AddStatusListBox(ListBox,'Processing Property Records . . . . . . Finished.');
  ShowMessage('DONE');
end;

procedure TConvIMCForm.PropLatLongButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Property Latitude and Longitudes . . . . . . Started.');
  Open_Query('PROP',   true,'SELECT PROPCODE, PROPID, STRNUM, STREET, LATITUDE, LONGITUDE FROM PROP');
  Open_Query('GETPROP',false,'SELECT * FROM PROP WHERE 1=2');
  Gauge.Progress := 0;
  Gauge.MaxValue := A('PROP').RecordCount;

  While Not A('PROP').Eof do begin
    If (GetField('PROP','LATITUDE').AsFloat = 0) then begin
      If Not ( (tdbfield('PROP','STREET') = '') or (tdbfield('PROP','STRNUM') = '') ) then begin
        A('GETPROP').UpdateSQL('SELECT LATITUDE, LONGITUDE FROM PROP WHERE STREET = ' + edbfield('PROP','STREET') + ' AND STRNUM = ' + edbfield('PROP','STRNUM')  + ' AND LATITUDE > 0');
        If A('GETPROP').RecordsExist then begin
          GetTable('PROP').Edit;
          GetField('PROP','LATITUDE').AsFloat  := GetField('GETPROP','LATITUDE').AsFloat;
          GetField('PROP','LONGITUDE').AsFloat := GetField('GETPROP','LONGITUDE').AsFloat;
          GetTable('PROP').Post;
          AddStatusListBox(ListBox,'Address ' + tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET') + ' found with a latitude and longitude and updated');
        end else begin
          AddStatusListBox(ErrorBox,'Error:  Address ' + tdbfield('PROP','STRNUM') +  ' ' + tdbfield('PROP','STREET') + ' not found with a latitude and longitude');
        end;
      end else begin
        AddStatusListBox(ErrorBox,'Error:  PROPCODE = '  + tdbfield('PROP','PROPCODE') + ', Address ' + tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET') + ' not found with a latitude and longitude');
      end;
    end;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PROP').Skip(1);
  end;

  CloseApollo('GETPROP');
  CloseApollo('PROP');
  AddStatusListBox(ListBox,'Processing Property Latitude and Longitudes . . . . . . Done.');
end;

procedure TConvIMCForm.PropNarrResetButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Reseting Property Narratives. . . . . . Started.');
  RunSQL('UPDATE PROP SET NARR      = NULL');
  RunSQL('UPDATE PROP SET WARNNARR  = NULL');
  RunSQL('UPDATE PROP SET DIRECTION = NULL');
  AddStatusListBox(ListBox,'Processing Reseting Property Narratives. . . . . . Done.');
end;

procedure TConvIMCForm.RolodexTypeButtonClick(Sender: TObject);
var FMTableQuery  : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Vendor Type Records . . . . . . Started.');
  SheetName                     := 'FMTables_Full';
  FileName                      := DirectoryField.text + SheetName + '.xlsx';
  FMTableQuery                  := TADOQuery.Create(self);
  FMTableQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  FMTableQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  FMTableQuery.Active           := true;

  Open_Query('ROLODEXTYPE',true,'SELECT * FROM ROLODEXTYPE');

  Gauge.Progress := 0;
  Gauge.MaxValue := FMTableQuery.RecordCount;

  while not FMTableQuery.eof do begin
    Code          := alltrim(FMTableQuery.FieldByName('KeyCode').AsString);

    AddStatusListBox(ListBox,'Processing Vendor Type Records ' + Code);

    If alltrim(FMTableQuery.FieldByName('Table').AsString) = '5400' then begin
      If A('ROLODEXTYPE').ExactQueryLocate('CODE',Code) then
        A('ROLODEXTYPE').Edit
      else
        A('ROLODEXTYPE').Append;

      GetField('ROLODEXTYPE','CODE').AsString      := Code;
      GetField('ROLODEXTYPE','DESCR').AsString     := alltrim(FMTableQuery.FieldByName('desc').AsString);

      A('ROLODEXTYPE').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    FMTableQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('ROLODEXTYPE');
  AddStatusListBox(ListBox,'Processing Vendor Type Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.TrainingAttButtonClick(Sender: TObject);
var TrainAttQuery : TADOQuery;
    FileName      : String;
    Code          : String;
    PersCode      : String;
    SheetName     : String;
    Point         : String;
begin
  AddStatusListBox(ListBox,'Processing Training Attendance . . . . . . Started.');
  SheetName                      := 'PersonnelTrainingRec';
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  TrainAttQuery                  := TADOQuery.Create(self);
  TrainAttQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';

  If ConvYearField.Value = '' then
    TrainAttQuery.SQL.Text         := 'select * from [' + SheetName + '$]'
  else
    TrainAttQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [CourseDate] like ' + AddExpr('20' + ConvYearField.Value + '%');

  TrainAttQuery.Active           := true;
  Gauge.Progress                 := 0;
  Gauge.MaxValue                 := TrainAttQuery.RecordCount;

  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
  Open_Query('NIATT',true,  'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NI',false,    'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIEV',false,  'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('PERS',false,  'SELECT PERSID, PERSCODE FROM PERS');

  while not TrainAttQuery.eof do begin
    PersCode := TrainAttQuery.FieldByName('PersonnelID').AsString;
    If A('PERS').ExactQueryLocate('PERSCODE',PersCode) then begin
      Code       := alltrim(TrainAttQuery.FieldByName('CourseDate').AsString + alltrim(TrainAttQuery.FieldByName('EventNum').AsString));

      AddStatusListBox(ListBox,'Code ' + Code + ', PersCode ' + PersCode);

      A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + AddExpr(Code));

      If A('NI').RecordsExist then begin
        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + pkvalue(GetField('NI','NIID').AsString) + ' AND PERSID = ' + pkValue(GetField('PERS','PERSID').AsString));
        If A('NIATT').RecordsExist then
          A('NIATT').Edit
        else
          A('NIATT').Append;

        Getfield('NIATT','NIID').AsString            := GetField('NI','NIID').AsString;
        Getfield('NIATT','PERSID').AsString          := GetField('PERS','PERSID').AsString;
        Getfield('NIATT','DATETIMEENTRY').AsDateTime := GetField('NI','DATETIMESTART').AsDATETIME;
        Point                                        := alltrim(TrainAttQuery.FieldByName('NumCredits').AsString);
        Getfield('NIATT','POINT').AsString           := SearchandReplace(Point,':','.');
        Getfield('NIATT','EVLENGTH').AsString        := alltrim(TrainAttQuery.FieldByName('CourseHours').AsString);
        A('NIATT').Post;

        A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + pkvalue(GetField('NI','NIID').AsString));
        If A('NIEV').RecordsExist then begin
          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + pkvalue(GetField('NIEV','NIEVID').AsString) + ' AND PERSID = ' + pkValue(GetField('PERS','PERSID').AsString));
          If A('NIEVATT').RecordsExist then
            A('NIEVATT').Edit
          else
            A('NIEVATT').Append;
          Getfield('NIEVATT','NIID').AsString             := GetField('NI','NIID').AsString;
          Getfield('NIEVATT','NIEVID').AsString           := GetField('NIEV','NIEVID').AsString;
          Getfield('NIEVATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
          Getfield('NIEVATT','DATETIMEATTEND').AsDateTime := GetField('NI','DATETIMESTART').AsDateTime;
          Getfield('NIEVATT','NITRAINCAT1ID').AsString    := GetField('NIEV','NITRAINCAT1ID').AsString;
          Getfield('NIEVATT','POINT').AsString            := Getfield('NIATT','POINT').AsString;
          Getfield('NIEVATT','EVLENGTH').AsString         := alltrim(TrainAttQuery.FieldByName('CourseHours').AsString);
          A('NIEVATT').Post;
        end;
      end else begin
        AddStatusListBox(ErrorBox,'Code ' + Code + ' not found');
      end;
    end else begin
      AddStatusListBox(ErrorBox,'PersCode ' + PersCode + ' Not Found');
    end;
    Gauge.Progress := Gauge.Progress + 1;
    TrainAttQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('NIEVATT');
  CloseApollo('NIATT');
  CloseApollo('NI');
  CloseApollo('PERS');
  TrainAttQuery.Free;
  AddStatusListBox(ListBox,'Processing Training Attendance . . . . . . Done.');
end;

procedure TConvIMCForm.TrainingCourseButtonClick(Sender: TObject);
var NIQuery         : TADOQuery;
    FileName        : String;
    SheetName       : String;
    Category        : String;
    Course          : String;
    Code            : String;
    Point           : String;
    NIID            : String;
    NITrainCat1Code : String;
    DateTimeStart   : TDateTime;
    Instructor      : String;
begin
  AddStatusListBox(ListBox,'Processing Training Events . . . . . . Started.');
  SheetName                := 'CourseDescription';
  FileName                 := DirectoryField.text + SheetName + '.xlsx';
  NIQuery                  := TADOQuery.Create(self);
  NIQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  If ConvYearField.Value = '' then
    NIQuery.SQL.Text         := 'select * from [' + SheetName + '$]'
  else
    NIQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [CourseDate] like ' + AddExpr('20' + ConvYearField.Value + '%');
  NIQuery.Active           := true;

  CancelVar                := false;
  Course                   := '';
  Category                 := '';

  Open_Query('NI',           true, 'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIEV',         true, 'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NISTYPE',      false,'SELECT * FROM NISTYPE');
  Open_Query('NITRAINCAT1',  false,'SELECT * FROM NITRAINCAT1');
  Open_Query('NIPERSINV',    true, 'SELECT * FROM NIPERSINV WHERE 1=2');
  Open_Query('NIPERSINVTYPE',false,'SELECT * FROM NIPERSINVTYPE');

  Gauge.Progress := 0;
  Gauge.MaxValue := NIQuery.RecordCount;

  while not NIQuery.eof and Not CancelVar do begin
    Category   := alltrim(NIQuery.FieldByName('Category').AsString);
    Code       := alltrim(NIQuery.FieldByName('CourseDate').AsString + alltrim(NIQuery.FieldByName('EventNumber').AsString));

    If alltrim(NIQuery.FieldByName('Time').AsString) = '' then
      DateTimeStart := GetDateTime(alltrim(NIQuery.FieldByName('CourseDate').AsString),alltrim(NIQuery.FieldByName('CreatedTime').AsString))
    else
      DateTimeStart := GetDateTime(alltrim(NIQuery.FieldByName('CourseDate').AsString),alltrim(NIQuery.FieldByName('Time').AsString));

    AddStatusListBox(ListBox,'Processing Training Events  . . . ' + Code);

    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + AddExpr(Code));
    If A('NI').RecordsExist then
      A('NI').Edit
    else
      A('NI').Append;

    GetField('NI','CODE').AsString               := Code;
    GetField('NI','NIPTYPEID').AsString          := '1';
    GetField('NI','NARR').AsString               := alltrim(NIQuery.FieldByName('VariableLength').AsString);
    GetField('NI','FDID').AsString               := GetConvFdid(ConvFdidField.Value);
    Getfield('NI','DATETIMESTART').AsDateTime    := DateTimeStart;
    GetField('NI','DESCR').AsString              := alltrim(NIQuery.FieldByName('Title').AsString);
    GetField('NI','LOCMISC').AsString            := alltrim(NIQuery.FieldByName('Place').AsString);
    Getfield('NI','EVLENGTH').AsString           := alltrim(NIQuery.FieldByName('CourseHours').AsString);
    Point                                        := alltrim(NIQuery.FieldByName('NumCredits').AsString);
    Getfield('NI','POINT').AsString              := SearchandReplace(Point,':','.');
    
    If (GetField('NI','DATETIMESTART').AsDateTime > 0) and (Getfield('NI','EVLENGTH').AsFloat > 0) then
      GetField('NI','DATETIMEEND').AsDateTime := GetField('NI','DATETIMESTART').AsDateTime + (Getfield('NI','EVLENGTH').AsFloat/24);

    If A('NISTYPE').ExactQueryLocate('CODE',alltrim(NIQuery.FieldByName('Category').AsString)) then
      Getfield('NI','NISTYPEID').AsString:= GetField('NISTYPE','NISTYPEID').AsString;

    A('NI').Post;
    NIID            :=  GetField('NI','NIID').AsString;


    Instructor := alltrim(NIQuery.FieldByName('Instructor').AsString);
    If Not (Instructor = '') and A('NIPERSINVTYPE').ExactQueryLocate('CODE','INS') then begin
      A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + pkValue(NIID) + ' AND NAME = ' + AddExpr(Instructor));
      If A('NIPERSINV').RecordsExist then
        A('NIPERSINV').Edit
      else
        A('NIPERSINV').Append;
      GetField('NIPERSINV','NIID').AsString := NIID;
      GetField('NIPERSINV','NAME').AsString := Instructor;
      GetField('NIPERSINV','NIPERSINVTYPEID').AsString := GetField('NIPERSINVTYPE','NIPERSINVTYPEID').AsString;
      A('NIPERSINV').Post;
    end;  



    NITrainCat1Code := alltrim(NIQuery.FieldByName('SubCategory').AsString);
    A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + pkvalue(NIID));
    If A('NIEV').RecordsExist then
      A('NIEV').Edit
    else
      A('NIEV').Append;
    Getfield('NIEV','NIID').AsString            := NIID;
    If A('NITRAINCAT1').ExactQueryLocate('CODE',NITrainCat1Code) then
      Getfield('NIEV','NITRAINCAT1ID').AsString:= GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
    Getfield('NIEV','DATETIMESTART').AsDateTime := Getfield('NI','DATETIMESTART').AsDateTime;
    Getfield('NIEV','DATETIMEEND').AsDateTime   := Getfield('NI','DATETIMEEND').AsDateTime;
    Getfield('NIEV','DESCR').AsString           := alltrim(NIQuery.FieldByName('VariableLength').AsString);
    Getfield('NIEV','EVLENGTH').AsString        := alltrim(NIQuery.FieldByName('CourseHours').AsString);
    A('NIEV').Post;

    Gauge.Progress := Gauge.Progress + 1;
    NIQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('NI');
  CloseApollo('NIEV');
  CloseApollo('NISTYPE');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NIPERSINV');
  CloseApollo('NIPERSINVTYPE');
  NIQuery.Free;
  AddStatusListBox(ListBox,'Processing Training Events . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.TrainingGroupsButtonClick(Sender: TObject);
var CourseQuery    : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  AddStatusListBox(ListBox,'Processing NITRAINCAT1 Records . . . . . . Started.');
  SheetName                    := 'CategoryCodesFile';
  FileName                     := DirectoryField.text + SheetName + '.xlsx';
  CourseQuery                  := TADOQuery.Create(self);
  CourseQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  CourseQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  CourseQuery.Active           := true;
  Gauge.Progress               := 0;
  Gauge.MaxValue               := CourseQuery.RecordCount;

  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1');

  while not CourseQuery.eof do begin
    Code := alltrim(CourseQuery.FieldByName('KeyCode').AsString);
    AddStatusListBox(ListBox,'Processing NITRAINCAT1 Records ' + Code);
    
    If (alltrim(CourseQuery.FieldByName('Table').AsString) = 'S') then begin
      If A('NITRAINCAT1').ExactQueryLocate('CODE',Code) then
        A('NITRAINCAT1').Edit
      else
        A('NITRAINCAT1').Append;

      GetField('NITRAINCAT1','FDID').AsString  := GetConvFdid(ConvFdidField.Value);
      GetField('NITRAINCAT1','CODE').AsString  := Code;
      GetField('NITRAINCAT1','DESCR').AsString := alltrim(CourseQuery.FieldByName('desc').AsString);
      GetField('NITRAINCAT1','NARR').AsString  := alltrim(CourseQuery.FieldByName('desc').AsString);;

      A('NITRAINCAT1').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    CourseQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('NITRAINCAT1');
  AddStatusListBox(ListBox,'Processing NITRAINCAT1 Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.VendorButtonClick(Sender: TObject);
var VendorsTableQuery : TADOQuery;
    FileName          : String;
    SheetName         : String;
    Code              : String;
    Company           : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Vendor Records . . . . . . Started.');
  SheetName                          := 'Vendors';
  FileName                           := DirectoryField.text + SheetName + '.xlsx';
  VendorsTableQuery                  := TADOQuery.Create(self);
  VendorsTableQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  VendorsTableQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  VendorsTableQuery.Active           := true;

  Open_Query('ROLODEX',true,'SELECT * FROM ROLODEX WHERE 1=2');
  Open_Query('ROLODEXTYPE',false,'SELECT * FROM ROLODEXTYPE');

  Gauge.Progress := 0;
  Gauge.MaxValue := VendorsTableQuery.RecordCount;

  while not VendorsTableQuery.eof do begin
    Code    := alltrim(VendorsTableQuery.FieldByName('VendorID').AsString);
    Company := alltrim(VendorsTableQuery.FieldByName('Name').AsString);

    AddStatusListBox(ListBox,'Processing Vendor Records ' + Code);

    A('ROLODEX').UpdateSQL('SELECT * FROM ROLODEX WHERE CODE = ' + AddExpr(Code) + ' AND COMPANY = ' + AddExpr(Company));
    If A('ROLODEX').RecordsExist then 
      A('ROLODEX').Edit
    else
      A('ROLODEX').Append;

    GetField('ROLODEX','CODE').AsString    := Code;
    GetField('ROLODEX','COMPANY').AsString := Company;
    GetField('ROLODEX','ADDRESS').AsString := alltrim(alltrim(VendorsTableQuery.FieldByName('StreetNum').AsString) + ' ' + alltrim(VendorsTableQuery.FieldByName('StreetName').AsString) + ' ' + alltrim(VendorsTableQuery.FieldByName('StreetSuf').AsString)) + ' ' + alltrim(VendorsTableQuery.FieldByName('StreetApt').AsString);
    GetField('ROLODEX','CITY').AsString    := VendorsTableQuery.FieldByName('City').AsString;
    GetField('ROLODEX','STATE').AsString   := VendorsTableQuery.FieldByName('State').AsString;
    GetField('ROLODEX','ZIP').AsString     := GetZipCode(VendorsTableQuery.FieldByName('ZIP').AsString);

    If A('ROLODEXTYPE').ExactQueryLocate('CODE',VendorsTableQuery.FieldByName('VendorType').AsString) then
      GetField('ROLODEX','ROLODEXTYPEID').AsString := GetField('ROLODEXTYPE','ROLODEXTYPEID').AsString;

    A('ROLODEX').Post;

    Gauge.Progress := Gauge.Progress + 1;
    VendorsTableQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('ROLODEX');
  CloseApollo('ROLODEXTYPE');
  AddStatusListBox(ListBox,'Processing Vendor Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.VioButtonClick(Sender: TObject);
var Violation_ControlQuery : TADOQuery;
    SheetName     : String;
    FileName      : String;
    Code          : String;
begin
  AddStatusListBox(ListBox,'Processing Personnel Rank. . . . . . Started.');
  SheetName                               := 'Violation_Control';
  FileName                                := DirectoryField.text + SheetName + '.xlsx';
  Violation_ControlQuery                  := TADOQuery.Create(self);
  Violation_ControlQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  Violation_ControlQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  Violation_ControlQuery.Active           := true;
  Gauge.Progress                          := 0;

  Open_Query('VIO',true,'SELECT * FROM VIO WHERE 1=2');

  while not Violation_ControlQuery.eof do begin
    Code := alltrim(Violation_ControlQuery.FieldByName('VIOLATIONNUM').AsString);
    AddStatusListBox(ListBox,'Processing VIOLATION NUMBER ' + Code);
    A('VIO').UpdateSQL('SELECT * FROM VIO WHERE VIOLCODE = ' + AddExpr(Code));
      If A('VIO').RecordsExist then
        A('VIO').Edit
      else
        A('VIO').Append;
    GetField('VIO','VIOLCODE').AsString        := Code;
    GetField('VIO','DATEFOUND').AsDateTime     := GetDateTime(Violation_ControlQuery.FieldByName('Discovereddate').AsString,'0800');
    GetField('VIO','NARR').AsString            := Violation_ControlQuery.FieldByName('description').AsString;
    A('VIO').Post;

    Gauge.Progress := Gauge.Progress + 1;
    Violation_ControlQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('VIO');
  Violation_ControlQuery.Free;
  AddStatusListBox(ListBox,'Processing Violation_Control. . . . . . . . Done.');
  ShowMessage('Done');

end;

procedure TConvIMCForm.PersRankButtonClick(Sender: TObject);
var MPSCodesQuery : TADOQuery;
    SheetName     : String;
    FileName      : String;
    Code          : String;
begin
  AddStatusListBox(ListBox,'Processing Personnel Rank. . . . . . Started.');
  SheetName                      := 'Personnel_Codes';
  FileName                       := DirectoryField.text + '\' + SheetName + '.xlsx';
  MPSCodesQuery                  := TADOQuery.Create(self);
  MPSCodesQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  MPSCodesQuery.SQL.Text         := 'select * from [' + 'SHEET1' + '$]';
  MPSCodesQuery.Active           := true;
  Gauge.Progress                 := 0;
  Gauge.MaxValue                 := MPSCodesQuery.RecordCount;

  Open_Query('PERSRANK',true,'SELECT * FROM PERSRANK WHERE 1=2');

  while not MPSCodesQuery.eof do begin
    Code := alltrim(MPSCodesQuery.FieldByName('Code').AsString);
    AddStatusListBox(ListBox,'Processing Personnel Rank ' + Code);

    If MPSCodesQuery.FieldByName('Table').AsString = 'RA' then begin
      A('PERSRANK').UpdateSQL('SELECT * FROM PERSRANK WHERE CODE = ' + AddExpr(Code));
      If A('PERSRANK').RecordsExist then
        A('PERSRANK').Edit
      else
        A('PERSRANK').Append;

      GetField('PERSRANK','CODE').AsString               := Code;
      GetField('PERSRANK','DESCR').AsString              := MPSCodesQuery.FieldByName('Description').AsString;
      GetField('PERSRANK','FDID').AsString               := GetConvFdid(ConvFdidField.Value);
      A('PERSRANK').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    MPSCodesQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('PERSRANK');
  MPSCodesQuery.Free;
  AddStatusListBox(ListBox,'Processing Personnel Rank. . . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.InspButtonClick(Sender: TObject);
var InspCtrlQuery : TADOQuery;
    FileName      : String;
    InspCode      : String;
    SheetName     : String;
    PropCode      : String;
    InspFDID      : String;
begin
  AddStatusListBox(ListBox,'Processing Inspection Records . . . . . . Started.');
  SheetName                      := 'Inspection_Control_REST';
  FileName                       := DirectoryField.text + SheetName + '.xlsx';
  InspCtrlQuery                  := TADOQuery.Create(self);
  InspCtrlQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';

  If ConvYearField.Value = '' then
    InspCtrlQuery.SQL.Text         := 'select * from [' + SheetName + '$] where jur =' + AddExpr('HAL')
  else
    InspCtrlQuery.SQL.Text         := 'select * from [' + SheetName + '$] where [InspectionNum] like ' + AddExpr(ConvYearField.Value + '%');

  InspCtrlQuery.Active           := true;

  Open_Query('INSP',    true, 'SELECT * FROM INSP WHERE 1=2');
  Open_Query('PERS',    false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('INSPTYPE',false,'SELECT * FROM INSPTYPE');
  Open_Query('INSPSTAT',false,'SELECT * FROM INSPSTAT');
  Open_Query('DISPBOX', false,'SELECT CODE, DISPBOXID FROM DISPBOX');
  Open_Query('PROP',    false,'SELECT PROPCODE, PROPID FROM PROP WHERE PROPCODE IS NOT NULL AND PROPCODE <> ' + AddExpr(''));
  Gauge.Progress := 0;
  Gauge.MaxValue := InspCtrlQuery.RecordCount;

  while not InspCtrlQuery.eof do begin
    InspCode  := alltrim(InspCtrlQuery.FieldByName('InspectionNum').AsString);
    InspFDID  := alltrim(InspCtrlQuery.FieldByName('JUR').AsString);
    PropCode  := alltrim(InspCtrlQuery.FieldByName('JUR').AsString) + '-' + alltrim(InspCtrlQuery.FieldByName('SiteNum').AsString);

    AddStatusListBox(ListBox,'Processing Inspection Record ' + InspCode);

    A('INSP').UpdateSQL('SELECT * FROM INSP WHERE INSPCODE = ' + AddExpr(InspCode));
    If A('INSP').RecordsExist then
      A('INSP').Edit
    else
      A('INSP').Append;

    GetField('INSP','INSPCODE').AsString := InspCode;

    GetField('INSP','NAME').AsString                := alltrim(InspCtrlQuery.FieldByName('LOCATION').AsString);
    GetField('INSP','INSPNUM').AsString             := InspCode;
    GetField('INSP','STRNUM').AsString              := alltrim(InspCtrlQuery.FieldByName('STREETNUM').AsString);
    GetField('INSP','STREET').AsString              := alltrim(InspCtrlQuery.FieldByName('STREETNAME').AsString) + ' ' + alltrim(InspCtrlQuery.FieldByName('STREETSUF').AsString);
    GetField('INSP','ROOMAPT').AsString             := alltrim(InspCtrlQuery.FieldByName('STREETAPT').AsString);
    GetField('INSP','CITY').AsString                := alltrim(InspCtrlQuery.FieldByName('CITY').AsString);
    GetField('INSP','STATE').AsString               := alltrim(InspCtrlQuery.FieldByName('STATE').AsString);
    GetField('INSP','ZIP').AsString                 := GetZipCode(InspCtrlQuery.FieldByName('ZIP').AsString);
    GetField('INSP','CONTACT').AsString             := InspCtrlQuery.FieldByName('CONTACTFIRSTNAME').AsString + ' ' + InspCtrlQuery.FieldByName('CONTACTLASTNAME').AsString;
    GetField('INSP','DATETIMESTART').AsDateTime     := GetDateTime(InspCtrlQuery.FieldByName('CompletedDate').AsString, InspCtrlQuery.FieldByName('StartedTime').AsString);
    GetField('INSP','DATETIMEEND').AsDateTime       := GetDateTime(InspCtrlQuery.FieldByName('CompletedDate').AsString, InspCtrlQuery.FieldByName('EndedTime').AsString);

    If A('PERS').ExactQueryLocate('PERSCODE',InspCtrlQuery.FieldByName('INSPECTORID').AsString) then
      GetField('INSP','PERSID').AsString     := GetField('PERS','PERSID').AsString;

    If A('INSPTYPE').ExactQueryLocate('CODE',InspCtrlQuery.FieldByName('InspectionType').AsString) then
      GetField('INSP','INSPTYPEID').AsString := GetField('INSPTYPE','INSPTYPEID').AsString;

    If A('INSPSTAT').ExactQueryLocate('CODE',InspCtrlQuery.FieldByName('Disposition').AsString) then
      GetField('INSP','INSPSTATID').AsString := GetField('INSPSTAT','INSPSTATID').AsString;

    If A('DISPBOX').ExactQueryLocate('CODE',InspCtrlQuery.FieldByName('FireDistrict').AsString) then
      GetField('INSP','DISPBOXID').AsString  := GetField('DISPBOX','DISPBOXID').AsString;

    If A('PROP').ExactQueryLocate('PROPCODE',PropCode) then
      GetField('INSP','PROPID').AsString     := GetField('PROP','PROPID').AsString;

    A('INSP').Post;

    Gauge.Progress := Gauge.Progress + 1;
    InspCtrlQuery.next;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Processing Inspection Records . . . . . . Finished.');
  InspCtrlQuery.Free;
  CloseApollo('INSP');
  CloseApollo('PERS');
  CloseApollo('INSPTYPE');
  CloseApollo('INSPSTAT');
  CloseApollo('DISPBOX');
  CloseApollo('PROP');
  ShowMessage('Done');
end;

procedure TConvIMCForm.APPButtonClick(Sender: TObject);
var InvQuery      : TADOQuery;
    SheetName     : String;
    FileName      : String;
    InvNum        : String;
begin
  AddStatusListBox(ListBox,'Processing Apparatus Records . . . . . . Started.');
  SheetName                 := 'Apparatus';
  FileName                  := DirectoryField.text + '\' + SheetName + '.xlsx';
  InvQuery                  := TADOQuery.Create(self);
  InvQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  InvQuery.SQL.Text         := 'select * from [' + SheetName + '$] WHERE JUR =' + AddExpr('HAL');
  InvQuery.Active           := true;
  Gauge.Progress            := 0;
  Gauge.MaxValue            := InvQuery.RecordCount;

  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('DISPSTAT',true,'SELECT * FROM DISPSTAT WHERE 1=2');

  while not InvQuery.eof do begin
    InvNum := alltrim(InvQuery.FieldByName('UNITID').AsString);
    AddStatusListBox(ListBox,'Processing Apparatus Records ' + InvNum);

    If Not (InvNum = '') and (At('/',InvNum) = 0) and (At('-',InvNum) = 0) then begin

      A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(InvNum));
      If A('INV').RecordsExist then
        A('INV').Edit
      else
        A('INV').Append;

      GetField('INV','TYPE').AsString               := 'TRUCK';
      GetField('INV','FDID').AsString               := GetConvFdid(ConvFdidField.Value);
      GetField('INV','INVNUM').AsString             := InvNum;
      GetField('INV','UNITNUM').AsString            := InvNum;
      GetField('INV','INCLUDE').AsString            := 'Y';
      GetField('INV','DESCR').AsString              := alltrim(InvQuery.FieldByName('DESC').AsString);
     // GetField('INV','SERNUM').AsString             := alltrim(InvQuery.FieldByName('VIN').AsString);
     // GetField('INV','YEAR').AsString               := alltrim(InvQuery.FieldByName('VehYr').AsString);

     // GetField('INV','MANUFACT').AsString           := alltrim(InvQuery.FieldByName('Make').AsString);
     // GetField('INV','MODEL').AsString              := alltrim(InvQuery.FieldByName('Model').AsString);
     // GetField('INV','LICENSENUM').AsString         := alltrim(InvQuery.FieldByName('RegNum').AsString);

     // GetField('INV','COST').AsString               := alltrim(InvQuery.FieldByName('PurchasePrice').AsString);
     // GetField('INV','NARR').AsString               := alltrim(InvQuery.FieldByName('Comments').AsString);
      A('INV').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    InvQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('INV');
  CloseApollo('DISPSTAT');
  InvQuery.Free;
  AddStatusListBox(ListBox,'Processing Apparatus Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.CancelButtonClick(Sender: TObject);
begin
  inherited;
  CancelVar := true;
end;


procedure TConvIMCForm.ConvFdidFieldAfterLookup(Sender: TAlpineLookupForm);
Var FdidVar : String;
begin
  inherited;
  FdidVar := Sender.Grid.GetValue('FDID');
  Open_Query('FDID',false,'SELECT SERVER, DATABASENAME, USERNAME, PASSWORD, TABLETYPE FROM FDID WHERE FDID = ' + AddExpr(FdidVar));
  ServerField.Value    := tdbfield('FDID','SERVER');
  DatabaseField.Value  := tdbfield('FDID','DATABASENAME');
  UserNameField.Value  := tdbfield('FDID','USERNAME');
  PasswordField.Value  := tdbfield('FDID','PASSWORD');
  TableTypeField.Value := tdbfield('FDID','TABLETYPE');
  CloseApollo('FDID');
end;

procedure TConvIMCForm.ConvFdidFieldEnter(Sender: TObject);
begin
  inherited;
  ConvFdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID';
end;

procedure TConvIMCForm.DataDiscButtonClick(Sender: TObject);
Var DataDiscQuery : TADOQuery;
    FileName      : String;
    SheetName     : String;
    StrNum        : String;
    Street        : String;
    PID           : String;
    i             : Integer;
    Map           : TGIS_ViewerWnd;
    GisSetVar     : TGisSetVar;
    Latitude      : Real;
    Longitude     : Real;
    Layerdef      : TWinMapLayerDef;
begin
  inherited;

  AddStatusListBox(ListBox,'Processing DATADISC records . . . . . . loading Map');
  Map               := TGIS_ViewerWnd.Create(MapPanel);
  map.parent        := MapPanel;
  GisSetVar         := TGisSetVar.Create;
  GisSetVar.GisPath := SqlLookup('NASHUA','GISCODE','GISSET','GISPATH');
  GisSetVar.GisCode := 'NASHUA';
  LoadGisSetVar(GlobalAdoConnection, GisSetVar, 'NASHUA');
  CreateMap(GlobalAdoConnection, GisSetVar, Map);
  i                 := GisSetVar.GisLayers.IndexOf('NASHUA_PARCELS');
  LayerDef          := TWinmapLayerDef(GisSetVar.GisLayers.Objects[i]);

  AddStatusListBox(ListBox,'Processing DATADISC records . . . . . . loading data');
  SheetName                      := 'DataDisc';
  FileName                       := DirectoryField.text+'\' + SheetName + '.xlsx';
  DataDiscQuery                  := TADOQuery.Create(self);
  DataDiscQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  DataDiscQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  DataDiscQuery.Active           := true;
  Gauge.MaxValue                 := DataDiscQuery.RecordCount;

  AddStatusListBox(ListBox,'Processing DATADISC records . . . . . . loaded.');

  Net_Open('C:\REDNMXMAP\NASHUA\NASHUA_PARCELS.DBF','S','PARCELS');
  A('PARCELS').Index('C:\REDNMXMAP\NASHUA\NASHUA_PARCELS.NTX','PID',1,false,'');
  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');

  While Not DataDiscQuery.Eof do begin
    Street := alltrim(DataDiscQuery.FieldByName('STREET').AsString);
    StrNum := alltrim(DataDiscQuery.FieldByName('HNUM').AsString);
    PID    := alltrim(DataDiscQuery.FieldByName('PID').AsString);
    
    AddStatusListBox(ListBox,'Processing DATADISC record PID = ' + PID + ', Address ' + StrNum + ' ' + Street);

    If dbseek('PARCELS',PID,false) then begin

      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE STREET = ' + AddExpr(Street) + ' AND STRNUM = ' + AddExpr(StrNum));
      If A('PROP').RecordsExist then begin
        If GetField('PROP','LATITUDE').AsFloat = 0 then begin
          A('PROP').Edit;
          GetLatLongFromRecNo(GisSetVar,GisSetVar.GisLayers,'NASHUA_PARCELS',A('PARCELS').RecNo,Latitude,Longitude);
          If  (Latitude > 0) then begin
            GetField('PROP','LATITUDE').AsFloat  := Latitude;
            GetField('PROP','LONGITUDE').AsFloat := Longitude;
          end;
          A('PROP').Post;
        end else begin
          AddStatusListBox(ErrorBox,'Already Plotted PID = ' + PID + ', Address ' + StrNum + ' ' + Street);
        end;
      end else begin
        AddStatusListBox(ErrorBox,'Not Found in PROP Table PID = ' + PID + ', Address ' + StrNum + ' ' + Street);
      end;
    end else begin
      AddStatusListBox(ErrorBox,'Not Found in NASHUA_PARCELS.DBF PID = ' + PID + ', Address ' + StrNum + ' ' + Street);
    end;

    Gauge.progress := Gauge.progress + 1;
    DataDiscQuery.Next;
    Application.ProcessMessages;
  end;
  CloseApollo('PROP');
  CloseApollo('PARCELS');
  DataDiscQuery.Free;
  AddStatusListBox(ListBox,'Processing DATADISC records . . . . . . Done');
end;

procedure TConvIMCForm.DispCallTypeButtonClick(Sender: TObject);
var SubTypeQuery      : TADOQuery;
    SheetName         : String;
    FileName          : String;
    DispCallTypeDescr : String;
    Code              : String;
begin
  AddStatusListBox(ListBox,'Processing DISPCALLTYPE. . . . . . Started.');
  SheetName                      := 'RevisedCalltypesforNFR';
  FileName                       := DirectoryField.text + '\' + SheetName + '.xlsx';
  SubTypeQuery                  := TADOQuery.Create(self);
  SubTypeQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  SubTypeQuery.SQL.Text         := 'select * from [' + SheetName + '$]';
  SubTypeQuery.Active           := true;
  Gauge.Progress                 := 0;
  Gauge.MaxValue                 := SubTypeQuery.RecordCount;

  Open_Query('DISPCALLTYPE',true,'SELECT * FROM DISPCALLTYPE');
  Open_Query('DISPSUBTYPE',true,'SELECT * FROM DISPSUBTYPE WHERE 1=2');

  while not SubTypeQuery.eof do begin
    Code              := alltrim(SubTypeQuery.FieldByName('Code').AsString);
    DispCallTypeDescr := alltrim(SubTypeQuery.FieldByName('DispCallType').AsString);
    AddStatusListBox(ListBox,'Processing Sub Call Type ' + Code);

    If A('DISPCALLTYPE').ExactQueryLocate('DESCR',DispCallTypeDescr) then begin
      A('DISPSUBTYPE').UpdateSQL('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = ' + GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString + ' AND CODE = ' + AddExpr(Code));
      If A('DISPSUBTYPE').RecordsExist then
        A('DISPSUBTYPE').Edit
      else
        A('DISPSUBTYPE').Append;

      GetField('DISPSUBTYPE','DISPCALLTYPEID').AsString     := GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString;
      GetField('DISPSUBTYPE','CODE').AsString               := Code;
      GetField('DISPSUBTYPE','DESCR').AsString              := SubTypeQuery.FieldByName('DispSubType').AsString;
      GetField('DISPSUBTYPE','SORTORD').AsString            := SubTypeQuery.FieldByName('Order').AsString;
      A('DISPSUBTYPE').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    SubTypeQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('DISPCALLTYPE');
  CloseApollo('DISPSUBTYPE');
  SubTypeQuery.Free;
  AddStatusListBox(ListBox,'Processing DISPCALLTYPE. . . . . . Done.');
end;

procedure TConvIMCForm.DispStatButtonClick(Sender: TObject);
Var DispstatQuery : TADOQuery;
    FileName      : String;
    SheetName     : String;
    UnitNum       : String;
    UnitNumString : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing DISPSTAT records . . . . . . loading data');
  SheetName                      := 'N5_9_ApparatusResourcesForm';
  FileName                       := DirectoryField.text+'\' + SheetName + '.xlsx';
  DispStatQuery                  := TADOQuery.Create(self);
  DispStatQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  DispStatQuery.SQL.Text         := 'select * from [' + SheetName + '$]';

  DispStatQuery.Active           := true;
  Gauge.MaxValue                 := DispStatQuery.RecordCount;

  AddStatusListBox(ListBox,'Processing DISPSTAT records . . . . . . loaded.');

  Open_Query('DISPSTAT',true,'SELECT * FROM DISPSTAT WHERE 1=2');
  While Not DispStatQuery.Eof do begin
    UnitNum := alltrim(DispStatQuery.FieldByName('ID').AsString);
    AddStatusListBox(ListBox,'Processing DISPSTAT record ' + UnitNum);

    If Not (UnitNum = '') then begin
      A('DISPSTAT').UpdateSQL('SELECT * FROM DISPSTAT WHERE UNITNUM = ' + AddExpr(UnitNum));
      If A('DISPSTAT').RecordsExist then
        A('DISPSTAT').Edit
      else
        A('DISPSTAT').Append;
      GetField('DISPSTAT','FDID').AsString    := GetConvFdid(ConvFdidField.Value);
      GetField('DISPSTAT','UNITNUM').AsString := UnitNum;
      A('DISPSTAT').Post;
    end;
    Gauge.progress := Gauge.progress + 1;

    DispStatQuery.Next;
  end;
  CloseApollo('DISPSTAT');
  DispStatQuery.Free;
  AddStatusListBox(ListBox,'Processing DISPSTAT records . . . . . . Done');
end;

procedure TConvIMCForm.FormCreate(Sender: TObject);
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

procedure TConvIMCForm.GEO1ButtonClick(Sender: TObject);
Var GEO1Query     : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Street        : String;
    PropTypeID    : String;
    LowerStrNum   : String;
    UpperStrNum   : String;
    OddEven       : String;
    DispBoxCode   : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing range records . . . . . . loading data');
  SheetName                  := 'GEO1';
  FileName                   := DirectoryField.text+'\' + SheetName + '.xlsx';
  GEO1Query                  := TADOQuery.Create(self);
  GEO1Query.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  GEO1Query.SQL.Text         := 'select * from [' + SheetName + '$]';
  GEO1Query.Active           := true;
  Gauge.MaxValue             := GEO1Query.RecordCount;
  PropTypeID                 := SQLLookUp(mFireID,'FDID','PROPSET','PROPRANGE');

  AddStatusListBox(ListBox,'Processing range records . . . . . . loaded.');

  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('FDID',false,'SELECT FDID, CITY, STATE, ZIP FROM FDID');
  Open_Query('DISPBOX',false,'SELECT CODE, DISPBOXID FROM DISPBOX');
  While Not GEO1Query.Eof do begin
    Street := alltrim(GEO1Query.FieldByName('StreetName').AsString) + ' ' + alltrim(GEO1Query.FieldByName('StreetSuf').AsString);

    If (alltrim(GEO1Query.FieldByName('PorF').AsString) = 'F') and Not (Street = '') then begin
      AddStatusListBox(ListBox,'Processing range record for street = ' + Street + ' for even numbers');
      LowerStrNum := GEO1Query.FieldByName('EvenFrom').AsString;
      UpperStrNum := GEO1Query.FieldByName('EvenTo').AsString;
      DispBoxCode := GEO1Query.FieldByName('ZoneorDistrict').AsString;
      OddEven     := 'E';
      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPTYPEID = ' + pkValue(PropTypeID)  + ' AND STREET = ' + AddExpr(Street) + ' AND LOWERSTRNUM = ' + LowerStrNum + ' AND ODDEVEN = ' + AddExpr(OddEven));
      If A('PROP').RecordsExist then
        A('PROP').Edit
      else
        A('PROP').Append;
      GetField('PROP','FDID').AsString         := GetConvFdid(ConvFdidField.Value);
      GetField('PROP','PROPTYPEID').AsString   := PropTypeID;
      GetField('PROP','STREET').AsString       := Street;
      GetField('PROP','ODDEVEN').AsString      := OddEven;
      GetField('PROP','LOWERSTRNUM').AsString  := LowerStrNum;
      GetField('PROP','UPPERSTRNUM').AsString  := UpperStrNum;
      GetField('PROP','DIRECTION').AsString    := alltrim(GEO1Query.FieldByName('Directions').AsString);

      If A('DISPBOX').ExactQueryLocate('CODE',DispBoxCode) then
        GetField('PROP','DISPBOXID').AsString   := GetField('DISPBOX','DISPBOXID').AsString;
      If A('FDID').ExactQueryLocate('FDID',tdbfield('PROP','FDID')) then begin
        GetField('PROP','CITY').AsString  := UpperCase(tdbfield('FDID','CITY'));
        GetField('PROP','STATE').AsString := tdbfield('FDID','STATE');
        GetField('PROP','ZIP').AsString   := substr(tdbfield('FDID','ZIP'),1,5);
      end;
      A('PROP').Post;
 
      AddStatusListBox(ListBox,'Processing range record for street = ' + Street + ' for odd numbers');
      LowerStrNum := GEO1Query.FieldByName('OddFrom').AsString;
      UpperStrNum := GEO1Query.FieldByName('OddTo').AsString;
      OddEven     := 'O';
      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPTYPEID = ' + pkValue(PropTypeID)  + ' AND STREET = ' + AddExpr(Street) + ' AND LOWERSTRNUM = ' + LowerStrNum + ' AND ODDEVEN = ' + AddExpr(OddEven));
      If A('PROP').RecordsExist then
        A('PROP').Edit
      else
        A('PROP').Append;
      GetField('PROP','FDID').AsString         := GetConvFdid(ConvFdidField.Value);
      GetField('PROP','PROPTYPEID').AsString   := PropTypeID;
      GetField('PROP','STREET').AsString       := Street;
      GetField('PROP','ODDEVEN').AsString      := OddEven;
      GetField('PROP','LOWERSTRNUM').AsString  := LowerStrNum;
      GetField('PROP','UPPERSTRNUM').AsString  := UpperStrNum;
      GetField('PROP','DIRECTION').AsString    := alltrim(GEO1Query.FieldByName('Directions').AsString);

      If A('DISPBOX').ExactQueryLocate('CODE',DispBoxCode) then
        GetField('PROP','DISPBOXID').AsString   := GetField('DISPBOX','DISPBOXID').AsString;
      If A('FDID').ExactQueryLocate('FDID',tdbfield('PROP','FDID')) then begin
        GetField('PROP','CITY').AsString  := UpperCase(tdbfield('FDID','CITY'));
        GetField('PROP','STATE').AsString := tdbfield('FDID','STATE');
        GetField('PROP','ZIP').AsString   := substr(tdbfield('FDID','ZIP'),1,5);
      end;
      A('PROP').Post;

    end else begin
      AddStatusListBox(ListBox,'Range street name is blank');
    end;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    GEO1Query.Next;
  end;
  CloseApollo('PROP');
  CloseApollo('FDID');
  CloseApollo('DISPBOX');
  GEO1Query.Free;
  AddStatusListBox(ListBox,'Processing range records . . . . . . Done');
end;

procedure TConvIMCForm.GEO2ButtonClick(Sender: TObject);
Var GEO2Query     : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Street        : String;
    Cross1        : String;
    PropTypeID    : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Intersection records . . . . . . loading data');
  SheetName                  := 'GEO2';
  FileName                   := DirectoryField.text+'\' + SheetName + '.xlsx';
  GEO2Query                  := TADOQuery.Create(self);
  GEO2Query.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  GEO2Query.SQL.Text         := 'select * from [' + SheetName + '$]';
  GEO2Query.Active           := true;
  Gauge.MaxValue             := GEO2Query.RecordCount;
  PropTypeID                 := SQLLookUp(mFireID,'FDID','PROPSET','PROPINT');

  AddStatusListBox(ListBox,'Processing Intersection records . . . . . . loaded.');

  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('FDID',false,'SELECT FDID, CITY, STATE, ZIP FROM FDID');
  While Not GEO2Query.Eof do begin
    Street := alltrim(GEO2Query.FieldByName('StreetName').AsString) + ' ' + alltrim(GEO2Query.FieldByName('StreetSuf').AsString);
    Cross1 := alltrim(GEO2Query.FieldByName('iStreetName').AsString) + ' ' + alltrim(GEO2Query.FieldByName('iStreetSuf').AsString);

    AddStatusListBox(ListBox,'Processing Intersection record Street = ' + Street + ', Cross = ' + Cross1);

    If Not (Street = '') and Not (Cross1 = '') then begin
      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPTYPEID = ' + pkValue(PropTypeID)  + ' AND STREET = ' + AddExpr(Street) + ' AND CROSS1 = ' + AddExpr(Cross1));
      If Not A('PROP').RecordsExist then begin
        A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPTYPEID = ' + pkValue(PropTypeID)  + ' AND STREET = ' + AddExpr(Cross1) + ' AND CROSS1 = ' + AddExpr(Street));
        If Not A('PROP').RecordsExist then begin
          A('PROP').Append;
          GetField('PROP','FDID').AsString         := GetConvFdid(ConvFdidField.Value);
          GetField('PROP','PROPTYPEID').AsString   := PropTypeID;
          GetField('PROP','STREET').AsString       := Street;
          GetField('PROP','CROSS1').AsString       := Cross1;
          GetField('PROP','CROSS1STRNUM').AsString := alltrim(GEO2Query.FieldByName('Crosses').AsString);
          GetField('PROP','CROSS2STRNUM').AsString := alltrim(GEO2Query.FieldByName('iCrosses').AsString);

          If A('FDID').ExactQueryLocate('FDID',tdbfield('PROP','FDID')) then begin
            GetField('PROP','CITY').AsString  := UpperCase(tdbfield('FDID','CITY'));
            GetField('PROP','STATE').AsString := tdbfield('FDID','STATE');
            GetField('PROP','ZIP').AsString   := substr(tdbfield('FDID','ZIP'),1,5);
          end;
          A('PROP').Post;

        end else begin
          AddStatusListBox(ListBox,'Intersection already exists for record Street = ' + Cross1 + ', Cross = ' + Street);
        end;
      end else begin
        AddStatusListBox(ListBox,'Intersection already exists for record Street = ' + Street + ', Cross = ' + Cross1);
      end;
    end else begin
      AddStatusListBox(ErrorBox,'Blank field in Intersection record Street = ' + Street + ', Cross = ' + Cross1);
    end;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    GEO2Query.Next;
  end;
  CloseApollo('PROP');
  GEO2Query.Free;
  AddStatusListBox(ListBox,'Processing Intersection records . . . . . . Done');
end;

function TConvIMCForm.GetConvFdid(FdidVar: String): String;
begin
  If MultiFdid then begin
    If (FdidVar = '') then
      GetConvFdid := ConvFdidField.Value
    else
      GetConvFdid := FdidVar;
  end else begin
    If (FdidVar = '') then
      GetConvFdid := mFireID
    else
      GetConvFdid := FdidVar;
  end;
end;

function TConvIMCForm.GetFileExt(FileName: String): String;
begin
  If at('.JPG',UpperCase(FileName)) > 0 then
    GetFileExt := 'JPG'
  else if at('.BMP',UpperCase(FileName)) > 0 then
    GetFileExt := 'BMP'
  else if at('.PDF',UpperCase(FileName)) > 0 then
    GetFileExt := 'PDF'
  else begin
    AddStatusListBox(ErrorBox,'Error in file name for ATT_FILE record = ' + tdbfield('ATT_FILE','ATT_ID'));
    GetFileExt := 'ERR'
  end;
end;


procedure TConvIMCForm.AddPropHyd(Code, SortOrd: String);
begin
  If A('HYD').ExactQueryLocate('HYDCODE',Code) then begin
    A('PROPHYD').UpdateSQL('SELECT * FROM PROPHYD WHERE HYDID = ' + pkvalue(GetField('HYD','HYDID').AsString) +' AND PROPID = ' + pkvalue(GetField('PROP','PROPID').AsString));
    If A('PROPHYD').RecordsExist then
       A('PROPHYD').Edit
     else
       A('PROPHYD').Append;
    GetField('PROPHYD','HYDID').AsString           := GetField('HYD','HYDID').AsString;
    GetField('PROPHYD','PROPID').AsString          := GetField('PROP','PROPID').AsString;
    GetField('PROPHYD','SORTORD').AsString         := SortOrd;
    A('PROPHYD').Post;
  end;  
end;

function TConvIMCForm.CheckDate(DateVar: TDateTime): Boolean;
begin
  If (InitialDateField.Value = 0) or (FinalDateField.Value = 0) then
    CheckDate := true
  else if (InitialDateField.Value <= DateVar) and (FinalDateField.Value >= DateVar) then
    CheckDate := true
  else
    CheckDate := false;
end;


procedure TConvIMCForm.InspStatButtonClick(Sender: TObject);
var FMTableQuery  : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Inspection Status Records . . . . . . Started.');
  SheetName                     := 'Inspection_Permit_Violation_Codes';
  FileName                      := DirectoryField.text + SheetName + '.xlsx';
  FMTableQuery                  := TADOQuery.Create(self);
  FMTableQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  FMTableQuery.SQL.Text         := 'select * from [' + 'Sheet1' + '$]';
  FMTableQuery.Active           := true;

  Open_Query('INSPSTAT',true,'SELECT * FROM INSPSTAT');

  Gauge.Progress := 0;
  Gauge.MaxValue := FMTableQuery.RecordCount;

  while not FMTableQuery.eof do begin
    Code          := alltrim(FMTableQuery.FieldByName('Code').AsString);

    AddStatusListBox(ListBox,'Processing Inspection Status Records ' + Code);

    If alltrim(FMTableQuery.FieldByName('Category').AsString) = 'Inspection Disposition' then begin
      If A('INSPSTAT').ExactQueryLocate('CODE',Code) then
        A('INSPSTAT').Edit
      else
        A('INSPSTAT').Append;

      GetField('INSPSTAT','CODE').AsString      := Code;
      GetField('INSPSTAT','DESCR').AsString     := alltrim(FMTableQuery.FieldByName('DESCRIPTION').AsString);

      A('INSPSTAT').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    FMTableQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('INSPSTAT');
  AddStatusListBox(ListBox,'Processing Inspection Status Records . . . . . . Done.');
  ShowMessage('Done');
end;

procedure TConvIMCForm.InspTypeButtonClick(Sender: TObject);
var FMTableQuery  : TADOQuery;
    FileName      : String;
    SheetName     : String;
    Code          : string;
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Inspection Type Records . . . . . . Started.');
  SheetName                     := 'Inspection_Permit_Violation_Codes';
  FileName                      := DirectoryField.text + SheetName + '.xlsx';
  FMTableQuery                  := TADOQuery.Create(self);
  FMTableQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  FMTableQuery.SQL.Text         := 'select * from [' + 'Sheet1' + '$]';
  FMTableQuery.Active           := true;

  Open_Query('INSPTYPE',true,'SELECT * FROM INSPTYPE');

  Gauge.Progress := 0;
  Gauge.MaxValue := FMTableQuery.RecordCount;

  while not FMTableQuery.eof do begin
    Code          := alltrim(FMTableQuery.FieldByName('Code').AsString);

    AddStatusListBox(ListBox,'Processing Inspection Type Records ' + Code);
                                                               
    If alltrim(FMTableQuery.FieldByName('Category').AsString) = 'Inspection Type' then begin
      If A('INSPTYPE').ExactQueryLocate('CODE',Code) then
        A('INSPTYPE').Edit
      else
        A('INSPTYPE').Append;

      GetField('INSPTYPE','CODE').AsString            := Code;
      GetField('INSPTYPE','DESCR').AsString     := alltrim(FMTableQuery.FieldByName('DESCRIPTION').AsString);

      A('INSPTYPE').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    FMTableQuery.next;
    Application.ProcessMessages;
  end;

  CloseApollo('INSPTYPE');
  AddStatusListBox(ListBox,'Processing Inspection Type Records . . . . . . Done.');
  ShowMessage('Done');
end;

function  TConvIMCForm.GetZipCode(Zip : String): String;
begin
  If alltrim(Zip) = '' then
    GetZipCode := ''
  else if (Length(alltrim(Zip)) > 0) and (Length(alltrim(Zip)) < 6) then
    GetZipCode := padl(alltrim(Zip),5,'0')
  else
    GetZipCode := Zip;
end;

procedure TConvIMCForm.ConnectRedNMX;
Var ErrorString   : String;
begin
  inherited;
  RedNMXDatabase := TAlpineAdoConnection.Create(self,'REDNMX.COM:REDNMX','ALPINE','A_S_C',4);
  RedNMXDatabase.Connect(ErrorString);
end;

end.
