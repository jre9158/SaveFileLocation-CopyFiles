unit Prop;
 
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
  AlpineDateTime,
  Disp,
  AdvGlowButton,
  AlpineGlowButton,
  ComCtrls,
  AlpineMemo,
  Menus,
  AlpineLookGrid,
  AlpineBlockBrowse,
  AlpineBaseSummaryReport,
  AdvPageControl,
  IniFiles,
  AdvGroupBox,
  AlpinePanel,
  HtmlBtns,
  AlpineCheck;

type
  TPropForm = class(TNormalBaseForm)
    DispatchButton: TAlpineGlowButton;
    E911Button: TAlpineGlowButton;
    GeoControl: TAdvPageControl;
    AddressTab: TAdvTabSheet;
    IntersectionTab: TAdvTabSheet;
    RangeTab: TAdvTabSheet;
    HydrantTab: TAdvTabSheet;
    DirectionTab: TAdvTabSheet;
    DispWarnTab: TAdvTabSheet;
    propstattab: TAdvTabSheet;
    ImagePropTab: TAdvTabSheet;
    PropHazMatTab: TAdvTabSheet;
    PropPhoneTab: TAdvTabSheet;
    PropAliasTab: TAdvTabSheet;
    PropMapTab: TAdvTabSheet;
    PropCustomTab: TAdvTabSheet;
    InspTab: TAdvTabSheet;
    DispPrintButton: TAlpineGlowButton;
    TopPanel: TAlpinePanel;
    FdidLabel: TLabel;
    DispBoxIDLabel: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    LatitudeLabel: TLabel;
    LongitudeLabel: TLabel;
    BoxNumLabel: TLabel;
    FixPropLabel: TLabel;
    Label7: TLabel;
    PropIDLabel: TLabel;
    PropAddrStatIDLabel: TLabel;
    FdidField: TAlpineLookup;
    DispBoxIDField: TAlpineLookup;
    PropTypeIDField: TAlpineLookup;
    CityField: TAlpineLookup;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    LatLongButton: TAlpineGlowButton;
    MapButton: TAlpineGlowButton;
    BoxNumField: TAlpineEdit;
    FixPropField: TAlpineLookup;
    within500feet: TAlpineGlowButton;
    DateTimeEditField: TAlpineDateTime;
    PropAddrStatIDField: TAlpineLookup;
    SetMobileButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    PropContactTab: TAdvTabSheet;
    propcontactbrowse: TAlpineBlockBrowse;
    PropBuildInfoTab: TAdvTabSheet;
    DateTimeMapField: TAlpineDateTime;
    Label1: TLabel;
    ActiveField: TAlpineCheckBox;
    ActiveLabel: TLabel;
    MobileEyesButton: TAlpineGlowButton;
    procedure FindButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure DispatchButtonClick(Sender: TObject);
    procedure LatLongButtonClick(Sender: TObject);
    procedure PropTypeIDFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E911ButtonClick(Sender: TObject);
    procedure GeoControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure AddressTabShow(Sender: TObject);
    procedure IntersectionTabShow(Sender: TObject);
    procedure RangeTabShow(Sender: TObject);
    procedure HydrantTabShow(Sender: TObject);
    procedure DirectionTabShow(Sender: TObject);
    procedure DispWarnTabShow(Sender: TObject);
    procedure propstattabShow(Sender: TObject);
    procedure ImagePropTabShow(Sender: TObject);
    procedure PropHazMatTabShow(Sender: TObject);
    procedure PropPhoneTabShow(Sender: TObject);
    procedure PropAliasTabShow(Sender: TObject);
    procedure PropMapTabShow(Sender: TObject);
    procedure PropCustomTabShow(Sender: TObject);
    procedure MapButtonClick(Sender: TObject);
    procedure InspTabShow(Sender: TObject);
    procedure DispPrintButtonClick(Sender: TObject);
    procedure within500feetClick(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure SetMobileButtonClick(Sender: TObject);
    procedure PropBuildInfoTabShow(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure PropContactTabShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MobileEyesButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    F     : TBaseSubTabForm;
    class procedure NewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    class procedure SpecialClick(Sender: TObject); override;
    class procedure ReplicateProperty(Sender: TObject);
    procedure DoBeforePost(Sender: TObject); override;
    procedure DoAfterPost(Sender: TObject); override;
    procedure Loaded; override;
    procedure DoAfterSetControls(Sender: TObject); override;        
  end;

var
  PropForm: TPropForm;

implementation
uses GenFunc,
     CommonDisp,
     propcontact,
     CommonDispVar,
     CommonRedNMX,
     CommonProp,
     CommonVar,
     CommonFunc,
     SortGridView,
     PropStat,
     ImageProp,
     GisFunc,
     PropDirect,
     PropHazMat,
     DispProp,
     GisSet,
     GisSys,
     SecSet,
     Hyd,
     FormFunc,
     PropHydrant,
     PropMobileEyes,
     E911,
     Propintersection,
     PropWarning,
     PropDirections,
     PropRangeFrm,
     PropAddress,
     PropStatus,
     PropSitePlans,
     PropHaz,
     PropBuildInfo,
     PropPhoneTab,
     PropAliasTab,
     PropCustom,
     PropContactView,
     PropNfirsRep,
     PropHazMatRep,
     Search,
     PropRep,
     PropMap,
     PropInsp,
     PrintSupport,
     Pict,
     DispatchObject,
     WinMapDef,
     CustomUpdate,
     SysDemoPictView,
     Main;

{$R *.DFM}                                                                                               
{$I rednmx.inc}

class procedure TPropForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('FDID').AsString  := FireID;
  DataSet.FieldByname('STATE').AsString := mSupportstate;
  LoadSysFieldDef(mFireID,'PROP',DataSet);
  TDispatchObject.PropNewRecord(DataSet);
end;

procedure TPropForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure TPropForm.FindButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('PROP',TPropForm,TPropForm.NewRecord,nil);
end;

procedure TPropForm.FormShow(Sender: TObject);
begin
  inherited;
  DateTimeEditField.Enabled := False;

  PropTypeIDFieldChange(self);
  If F <> nil then begin
    F.Show;
    F.BringToFront;
  end;

  If (FireID = '30036') or (FireID = '12345') then
    DispPrintButton.Visible := True;
  If (FireID = '00190') or (FireID = '30028') then begin
    E911Button.Visible      := false;
    DispPrintButton.Visible := false;
  end;
  //Kevin requested this field be removed on 4-23-15
  If (FireID = '02113') then begin
    BoxNumField.Visible   := false;
    BoxNumLabel.Visible   := false;
  end;
  
  If FireID = '04034' then
    BoxNumLabel.Caption   := 'Tax Map ID';

  ActiveLabel.Visible := (FireID = '52280') or (FireID = '12345');
  ActiveField.Visible := (FireID = '52280') or (FireID = '12345');

  FdidLabel.Visible   := MultiFdid;
  FdidField.Visible   := MultiFdid;

  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);
  DispBoxIDField.Visible      := (SqlTableRecCount('SELECT COUNT(*) FROM DISPBOX') > 0);
  DispBoxIDLabel.Visible      := DispBoxIDField.Visible;
  PropAddrStatIDField.Visible := (SqlTableRecCount('SELECT COUNT(*) FROM PROPADDRSTAT') > 0);
  PropAddrStatIDLabel.Visible := PropAddrStatIDField.Visible;

  If FireID = '00190' then begin
    BoxNumField.Visible := false;
    BoxNumLabel.Visible := false;
  end;

  If FireID = '18084' then begin
    BoxNumLabel.caption := 'Premise#';
  end;

  If FireID = 'AMHER' then begin       //10/14/22  Requested Change
    DispBoxIDLabel.caption := 'Mutual Aid Zone';
  end;

  Height := IMin(Height,Round(Screen.Height * 0.91));
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);
end;

procedure TPropForm.CityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  inherited;
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Text  := GetField('CITY','STATE').AsString;
  ZipField.Text    := GetField('CITY','ZIP').AsString;
  CloseApollo('CITY');
end;

procedure TPropForm.DispatchButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('DispPropForm') then
    DispPropForm := TDispPropForm.Create(Application,PK,'');
  DispPropForm.FPropID     := PK;
  DispPropForm.FDispCallID := '';
  DispPropForm.Show;
end;


procedure TPropForm.DispPrintButtonClick(Sender: TObject);
var Handled: Boolean;
begin
  inherited;
  If BooleanMessageDlg('Test dispatch printers?') then begin
    TCustomUpdate.DoCustomPrintRunCard(self,0,strtoint(pk),Handled);
    if not Handled then begin
      Open_Query('DISPPRINT',true,'SELECT * FROM DISPPRINT WHERE 1=2');
      A('DISPPRINT').Append;
      GetField('DISPPRINT','PRINTSTATUS').AsString   := 'N';
      GetField('DISPPRINT','DATETIMEENT').AsDateTime := Now;
      GetField('DISPPRINT','PROPID').AsString        := pk;
      GetField('DISPPRINT','PRINTTYPE').AsString     := 'T';
      A('DISPPRINT').Post;
      CloseApollo('DISPPRINT');
      ShowMessage('Print job has been submitted to the print server');
    end;  
  end;
end;

procedure TPropForm.PropTypeIDFieldChange(Sender: TObject);
begin
  inherited;                           
  If PropTypeIDField.Value = PropRange then begin 
    AddressTab.TabVisible      := false;
    IntersectionTab.TabVisible := false;
    RangeTab.TabVisible        := true and TPropRangeForm.TabVisible;
    PropHazMatTab.TabVisible   := false;
    ImagePropTab.TabVisible    := CheckModule('IMAGE') or CheckModule('SITE');
    PropPhoneTab.TabVisible    := false;
    PropAliasTab.TabVisible    := True;
    PropBuildInfoTab.TabVisible:= false;
    InspTab.TabVisible         := false;
    if mFireId = '52007' then
      ImagePropTab.TabVisible  := true;
    GeoControl.ActivePage      := RangeTab;
    RangeTabShow(self);
  end else if PropTypeIDField.Value = PropInt then begin
    AddressTab.TabVisible      := false;
    IntersectionTab.TabVisible := true;
    RangeTab.TabVisible        := false;
    PropHazMatTab.TabVisible   := false;
    ImagePropTab.TabVisible    := false;
    PropPhoneTab.TabVisible    := false;
    PropAliasTab.TabVisible    := True;
    PropBuildInfoTab.TabVisible:= false;
    InspTab.TabVisible         := false;
    GeoControl.ActivePage      := IntersectionTab;
    IntersectionTabShow(self);
  end else  begin
    AddressTab.TabVisible      := true;
    IntersectionTab.TabVisible := false;
    RangeTab.TabVisible        := false;
    PropHazMatTab.TabVisible   := CheckModule('HAZ');
    ImagePropTab.TabVisible    := CheckModule('IMAGE') or CheckModule('SITE');
    PropPhoneTab.TabVisible    := CheckModule('CALLID');
    PropAliasTab.TabVisible    := true;
    PropBuildInfoTab.TabVisible:= True;
    InspTab.TabVisible         := CheckModule('INSP') or CheckModule('PERMIT') or CheckModule('COMP');
    GeoControl.ActivePage      := AddressTab;
    if ((mFireId = '12313') or (mfireid ='02280') or (mfireid ='30007') OR (mfireID = '15010') OR (mfireID = 'AMHER') OR (mfireID = 'DH000')) then
      PropbuildInfoTab.TabVisible := False;
    if (mFireID = 'AMHER') then
      DirectionTab.TabVisible  := false;
    if mFireID = '30010' then
      DirectionTab.TabVisible  := True;

    AddressTabShow(self);
  end;
end;

procedure TPropForm.LatLongButtonClick(Sender: TObject);
Var Latitude  : String;
    Longitude : String;
    Cross1    : String;
begin
  SaveButtonClick(self);
  Latitude  := '';
  Longitude := '';

  Open_Query('GETLAT',False,'SELECT STRNUM,STREET,ZIP,CITY,CROSS1 FROM PROP WHERE PROPID = '+pkValue(pk));
  If alltrim(tdbfield('GETLAT','STRNUM')) + alltrim(tdbField('GETLAT','STREET')) = '' then
    ShowMessage('You must enter a street number, street name, or cross street')
  else if alltrim(CityField.Text) + alltrim(ZipField.Text) = '' then
    ShowMessage('You must enter a city or zip code')
  else if alltrim(StateField.Text) = '' then
    ShowMessage('You must enter the state')
  else begin
    Cross1 := UpperCase(tdbField('GETLAT','CROSS1'));
    Cross1 := IIf(Cross1 = 'DEAD END','',Cross1);

    SetMapLatLong(alltrim(tdbfield('GETLAT','STRNUM')),tdbField('GETLAT','STREET') , tdbField('GETLAT','CROSS1'), CityField.Text, StateField.Text, ZipField.Text ,Latitude, Longitude);
    If Latitude > '' then begin

      if DisplayLatLongAsDecimal then begin
        Latitude := FloatToStr(MinutesToDecimal(strtofloat(Latitude)));
        Longitude := FloatToStr(MinutesToDecimal(strtofloat(Longitude)));
      end;
      LatitudeField.Text     := Latitude;
      LongitudeField.Text    := Longitude;
      DateTimeMapField.Value := Now;
      SaveButton.Enabled     := true;
    end else
      ShowMessage('Could not find location');
  end;
  CloseApollo('GETLAT');
  SaveButtonClick(self);
end;

procedure TPropForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);
end;

function TPropForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('PROPADD');
end;

function TPropForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('PROPDEL');
end;

procedure TPropForm.FormClose(Sender: TObject; var Action: TCloseAction);
Var Form     : TForm;
begin
  inherited;
  //Need to destroy Map Tab before closing main form to avoid throwing an error.
  If GeoControl.ActivePage = PropMapTab then begin
    Form := GetFormOfType(TPropMapForm);
    TPropMapForm(Form).SetFocus;
    TPropMapForm(Form).Destroy;
  end;
end;

procedure TPropForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly                 := Not CheckSecVar('PROPEDIT');
  Within500feet.Visible    := AlpineLogin;
  AddressTab.TabVisible    := true;
  GeoControl.ActivePage    := nil;
  LatLongButton.Enabled    := Not ViewOnly;
  E911Button.Visible       := AlpineLogin;
  SetMobileButton.Visible  := AlpineLogin;
  MobileEyesButton.Visible := AlpineLogin;
  PropMapTab.TabVisible    := TPropMapForm.ShowMapTab and CheckModule('GIS');
  PropCustomTab.TabVisible := TPropCustomForm.UseCustomTab;
  If Not CheckModule('GIS') then begin
    LatitudeLabel.Visible    := false;
    LatitudeField.Visible    := false;
    LongitudeLabel.Visible   := false;
    LongitudeField.Visible   := false;
    SetMobileButton.Visible  := false;
    Within500Feet.Visible    := false;
    LatLongButton.Visible    := false;
    MapButton    .Visible    := false;
  end;
  If CheckModule('MOBCAD') then begin
    LatitudeLabel.Visible    := true;
    LatitudeField.Visible    := true;
    LongitudeLabel.Visible   := true;
    LongitudeField.Visible   := true;
    LatLongButton.Visible    := true;
  end;
  HydrantTab.TabVisible    := CheckModule('HYD');
  DispWarnTab.TabVisible   := CheckModule('DISP') or CheckModule('CADINT') ;
  DispPrintButton.Visible  := CheckSecVar('DISPSETUP') or CheckSecVar('PROPSETUP');
  if mFireID = '35011' then
    BoxNumLabel.Caption := 'Gamewell #:';
  if mFireID = '52052' then
    DispPrintButton.Visible := False;
  if ((mFireID = '23082') OR (mFireID = '30012') OR (mFireID = '30051') OR (mFireID = '30018') OR (mFireID = '30010') OR (mFireID = '28030'))  then BEGIN
    DispWarnTab.TabVisible     := True;
    DispWarnTab.Visible        := True;
  END;
  RedNMXButton.Visible     := mFireID = '12345';
  if mFireId = '00190' then
    LatLongButton.enabled := false;
  if mFireId = '30065' then
    HydrantTab.TabVisible    := True;
  if mFireID = '52067' then
    DispWarnTab.Caption    := 'Dispatcher Notes';

  PropContactTab.TabVisible := TDispatchObject.PropContactTabVisible;
  PropContactTab.TabVisible := true;
end;

procedure TPropForm.PropContactTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropContactViewForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.E911ButtonClick(Sender: TObject);
Var E911ID : String;
begin
  inherited;
  Open_Query('PROP',false,'SELECT * FROM PROP WHERE PROPID = ' + PK);
  Open_Query('E911',true,'SELECT * FROM E911 WHERE 1=2');
  A('E911').Append;
  GetField('E911','DISPLAY').AsString       := 'Y';
  GetField('E911','DATETIMEENT').AsDateTime := Now;
  GetField('E911','DATETIMEREC').AsDateTime := Now;
  GetField('E911','FDID').AsString          := GetField('PROP','FDID').AsString;
  GetField('E911','STRNUM').AsString        := GetField('PROP','STRNUM').AsString;
  GetField('E911','STREET').AsString        := GetField('PROP','STREET').AsString;
  GetField('E911','OCCUPANT').AsString      := GetField('PROP','PLASTNAME').AsString;
  GetField('E911','CALLPHONE').AsString     := GetField('PROP','PHONE').AsString;
  GetField('E911','CALLADDR').AsString      := alltrim(GetField('PROP','STRNUM').AsString + ' ' + GetField('PROP','STREET').AsString);
  GetField('E911','CALLNAME').AsString      := GetField('PROP','PLASTNAME').AsString;
  A('E911').Post;

  E911ID := A('E911').NewPk;
  AddtoHistory(GlobalAdoConnection,'',tdbfield('E911','STRNUM') + ' ' + tdbfield('E911','STREET') , '','','','','',0,Now);
  CloseApollo('E911');
  CloseApollo('PROP');
  RunAlpineForm(TE911Form,E911ID,'E911',TE911Form.NewRecord);
end;

procedure TPropForm.GeoControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  Open_Query('GETPROP',false,'SELECT STRNUM, STREET, CROSS1 FROM PROP WHERE PROPID = ' + pk);
  Caption := 'Property Entry Screen: ' + alltrim(tdbfield('GETPROP','STRNUM') + ' ' + tdbfield('GETPROP','STREET'));
  CloseApollo('GETPROP');
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TPropForm.AddressTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropAddressForm,AddressTab);
end;

procedure TPropForm.IntersectionTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropIntersectionForm,IntersectionTab);
end;

procedure TPropForm.RangeTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropRangeForm,RangeTab);
end;

procedure TPropForm.HydrantTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropHydrantForm,HydrantTab);
end;

procedure TPropForm.DirectionTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropDirectionsForm,TAdvTabSheet(Sender));
end; 

procedure TPropForm.DispWarnTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropWarningForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.propstattabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropStatusForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.ImagePropTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropSitePlanForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.PropHazMatTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropHazMatFrm,TAdvTabSheet(Sender));
end;

procedure TPropForm.PropPhoneTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropPhoneTabForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.PropAliasTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropAliasTabForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.PropBuildInfoTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropBuildInfoForm,PropBuildInfoTab);
end;

procedure TPropForm.InspTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropInspForm,TAdvTabSheet(Sender));
end;

procedure TPropForm.SetMobileButtonClick(Sender: TObject);
var IniFile  : TIniFile;
    FileName : String;
begin
  FileName := ExtractFilePath(ParamStr(0)) + '\MOBILEDISP.INI';
  IniFile  := TIniFile.Create( FileName );
  IniFile.WriteString('SETTINGS','LATITUDEDEMO',alltrim(LatitudeField.Value));
  IniFile.WriteString('SETTINGS','LONGITUDEDEMO',alltrim(LongitudeField.Value));
  IniFile.Free;
end;

class procedure TPropForm.SpecialClick(Sender: TObject);
begin
  ConfigureMenuForReplicate(Sender,ReplicateProperty);
end;

procedure TPropForm.within500feetClick(Sender: TObject);
var mFieldList: TStringList;
begin
  mFieldList := TStringList.Create;
  mFieldList.Add('DISP_ADDR');
  mFieldList.Add('O_NAME_1');
  GetWithinFeet(GlobalAdoConnection,StrToFloat(LatitudeField.Text),strtofloat(LongitudeField.Text),500,'CITY_PAR',mFieldList);
  mFieldList.Free;
  showmessage('done');
end;

procedure TPropForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'PROP');
  SysDemoPictViewForm.Show;
end;

class procedure TPropForm.ReplicateProperty(Sender: TObject);
begin
  commonprop.replicateproperty(Sender);
end;

procedure TPropForm.DoAfterPost(Sender: TObject);
begin
  if mFireId = '52067' then
    RunSQL('UPDATE PROP SET UPDATE1 = ' + AddExpr(FormatDateTime('YYYY-MM-DD',Now)) + ' WHERE PROPID = ' + PKValue(PK));
  if DisplayLatLongAsDecimal then begin
    try
      Open_Query('UPLAT',True,'SELECT * FROM PROP WHERE PROPID = '+pkValue(PK));
      GetTable('UPLAT').Edit;
      GetField('UPLAT','LATITUDE').AsFloat := DecimalToMinutes(strtofloat(LatitudeField.Value));
      GetField('UPLAT','LONGITUDE').AsFloat := DecimalToMinutes(strtofloat(LongitudeField.Value));
      GetTable('UPLAT').Post;
    finally
      CloseApollo('UPLAT');
    end;
  end;
  TDispatchObject.AfterPropPost(self);
end;

procedure TPropForm.PropMapTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropMapForm,PropMapTab);
end;

procedure TPropForm.PropCustomTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPropCustomForm,TAdvTabSheet(PropCustomTab));
end;

procedure TPropForm.MapButtonClick(Sender: TObject);
Var DispCall   : TDispCall;
    ExeCommand : String;
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);

  If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
    EXECommand := ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
    If Not ProcessExists('REDNMXMAPBOX.EXE') then
      WinExec(pchar(ExeCommand),SW_SHOW);
    Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    If A('GISD10COMPUTER').RecordsExist then
      GetTable('GISD10COMPUTER').Edit
    else
      GetTable('GISD10COMPUTER').Append;
    GetField('GISD10COMPUTER','DISPCALLID').AsString   := '';
    GetField('GISD10COMPUTER','PROPID').AsString       := pk;
    GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
    GetTable('GISD10COMPUTER').Post;
    CloseApollo('GISD10COMPUTER');
  end else begin
    If Not FormExists('GisSysForm') then
      GisSysForm := TGisSysform.Create(Application);
    GisSysForm.Show;

    Open_Query('GETPROP',false,'SELECT STRNUM, STREET, LATITUDE, LONGITUDE FROM PROP WHERE PROPID = ' + PkValue(PK));
    DispCall           := TDispCall.Create;
    DispCall.Latitude  := GetField('GETPROP','LATITUDE').AsFloat;
    DispCall.Longitude := GetField('GETPROP','LONGITUDE').AsFloat;

    DispCall.Address   := alltrim(tdbfield('GETPROP','STRNUM') + ' ' + tdbfield('GETPROP','STREET'));

    If GetField('GETPROP','LATITUDE').AsFloat > 0 then begin
      DisplayProperty(GisSysForm.GisSetVar, GisSysForm.Map,DispCall);
      {$ifdef PICT}
      DisplayPictometry(GetField('GETPROP','LATITUDE').AsFloat,GetField('GETPROP','LONGITUDE').AsFloat);
      {$ENDIF}
    end;
    CloseApollo('GETPROP');
    DispCall.Free;
  end;  
end;

procedure TPropForm.MobileEyesButtonClick(Sender: TObject);
begin
  inherited;
  PropMobileEyesForm := TPropMobileEyesForm.Create(self);
  PropMobileEyesForm.ShowModal;
  PropMobileEyesForm.Free;
end;

procedure TPropForm.Loaded;
begin
  inherited;
  geocontrol.activepage := AddressTab;
end;

procedure TPropForm.DoBeforePost(Sender: TObject);
begin
  DateTimeEditField.Value  := Now;
end;

procedure TPropForm.DoAfterSetControls(Sender: TObject);
begin
  If DisplayLatLongAsDecimal then begin
    LatitudeField.Value := FloatToStr(MinutesToDecimal(strtofloat(LatitudeField.Value)));
    LongitudeField.Value := FloatToStr(MinutesToDecimal(strtofloat(LongitudeField.Value)));
  end;
  PropIDLabel.Caption := pk;  
end;

initialization
  RegisterIndividualReport(TPropRepForm,      'INDPROPREP',      'Individual Address',           'PROP','',False,1);
  RegisterIndividualReport(TPropNfirsRepForm, 'INDPROPNFIRSREP', 'Address Incident History',     'PROP','',true,2);
  RegisterIndividualReport(TPropHazMatRepForm,'INDPROPHAZMAT',   'Hazardous Materials Inventory','PROP','',False,3);

end.        
