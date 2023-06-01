unit Hyd;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  db,
  stdctrls,
  buttons,
  extctrls,
  genfunc,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  OrpheusWrapper,
  DBCtrls,
  DBTables,
  OleCtrls,
  vcfi,
  Series,
  TeeProcs,
  Chart,
  NormalBase,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPanel,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  AlpineDateTime,
  AlpineLookGrid,
  AlpinePanel,
  AlpineBlockBrowse,
  AdvPageControl,
  ComCtrls,
  Menus,
  AlpineBaseSummaryReport,
  AdvGroupBox;

type
  THydForm = class(TNormalBaseForm)
    Panel0B: TAlpinePanel;
    Label1: TLabel;
    Label17: TLabel;
    Label3: TLabel;
    StreetLabel: TLabel;
    Label4: TLabel;
    DistrictLabel: TLabel;
    BoxCodeLabel: TLabel;
    Label2: TLabel;
    CrossLabel: TLabel;
    HydCodeField: TAlpineEdit;
    HydStatusIDField: TAlpineLookup;
    LocationField: TAlpineEdit;
    StrNumField: TAlpineEdit;
    N5DistrictIDField: TAlpineLookup;
    HydTypeIDField: TAlpineLookup;
    CrossStreetField: TAlpineLookup;
    DispBoxIDField: TAlpineLookup;
    StreetField: TAlpineLookup;
    Label5: TLabel;
    Label28: TLabel;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    HydControl: TAdvPageControl;
    FlowTab: TAdvTabSheet;
    HydInspTab: TAdvTabSheet;
    CustomTab: TAdvTabSheet;
    NotesTab: TAdvTabSheet;
    woTab: TAdvTabSheet;
    WorkOrdBrowse: TAlpineBlockBrowse;
    FdidField: TAlpineLookup;
    FDIDLabel: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    GSCField: TAlpineEdit;
    Label19: TLabel;
    CityField: TAlpineLookup;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    HydSchdTab: TAdvTabSheet;
    DispLocIDField: TAlpineLookup;
    Label6: TLabel;
    HydContactTab: TAdvTabSheet;
    HydContactBrowse: TAlpineBlockBrowse;
    MapButton: TAlpineGlowButton;
    HydStatusHistTab: TAdvTabSheet;
    HydStatusHistBrowse: TAlpineBlockBrowse;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    decimalLatField: TAlpineEdit;
    DecimalLongField: TAlpineEdit;
    RadianLatitude: TAlpineEdit;
    RadianLongitude: TAlpineEdit;
    PlotButton: TAlpineGlowButton;
    HydMapTab: TAdvTabSheet;
    UpdateLatLongButton: TAlpineGlowButton;
    PropTab: TAdvTabSheet;
    DateTimeMapField: TAlpineDateTime;
    Label11: TLabel;
    procedure FlowTabShow(Sender: TObject);
    procedure HydInspTabShow(Sender: TObject);
    procedure HydControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CustomTabShow(Sender: TObject);
    procedure NotesTabShow(Sender: TObject);
    procedure woTabShow(Sender: TObject);
    procedure HydSchdTabShow(Sender: TObject);
    procedure HydContactTabShow(Sender: TObject);
    procedure MapButtonClick(Sender: TObject);
    procedure LongitudeFieldExit(Sender: TObject);
    procedure HydStatusHistTabShow(Sender: TObject);
    procedure LatitudeFieldChange(Sender: TObject);
    procedure PlotButtonClick(Sender: TObject);
    procedure HydMapTabShow(Sender: TObject);
    procedure UpdateLatLongButtonClick(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure PropTabShow(Sender: TObject);
    procedure CityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    F     : TBaseSubTabForm;
  public
    class function GetNFPACode(rFlow: Real): integer;
    class procedure NewRecord(DataSet: TDataSet);
    procedure WorkOrdNewRecord(DataSet: TDataSet);
    function  CanAddNewRecord(Sender: TObject): Boolean; override;
    function  CanDeleteRecord(Sender: TObject): Boolean; override;
    procedure HydContactNewRecord(DataSet: TDataSet);
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure SetHydLabels;        
    class procedure SpecialClick(Sender: TObject); override;
    class procedure ReplicateHyd(Sender: TObject);
  end;

var
  HydForm: THydForm;

implementation

uses CommonFunc,
     gisdefs,
     Search,
     CommonVar,
     FormFunc,
     HydFlow,
     HydInsp,
     HydSchd,
     HydCustom,
     HydNotes,
     HydRep,
     HydMap,
     HydProp,
     RepHyd,
     HydContact,
     HydStatusHist,
     WorkOrd,
     GisSys,
     gisfunc,
     SecSet,
     SortGridView,
     Math;

{$R *.DFM}

class procedure THydForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('LOCATION').AsString := ' ';
end;

procedure THydForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.LookupFormWidth := 320;
  FdidField.SQLExpr         := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure THydForm.FlowTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydFlowForm,FlowTab);
end;

procedure THydForm.HydInspTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydInspForm,HydInspTab);
end;

procedure THydForm.HydSchdTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydSchdForm,HydSchdTab);
end;

procedure THydForm.HydStatusHistTabShow(Sender: TObject);
begin
  inherited;
  HydStatusHistBrowse.Setup('HYDSTATUSHIST','HYDID',pk,THydStatusHistForm,HydContactNewRecord);
end;

procedure THydForm.LatitudeFieldChange(Sender: TObject);
begin
  inherited;
  SetHydLabels;
end;

procedure THydForm.LongitudeFieldExit(Sender: TObject);
begin
  inherited;
  if LongitudeField.Modified and (anystrtofloat(LongitudeField.Value)>0) then
    ShowMessage('Are you sure '+LongitudeField.Value+' is correct? Longitude values are negative in North America');
end;

procedure THydForm.SetHydLabels;
  procedure ConvertToDec(mField,mDecField: TAlpineEdit; FieldName : TAlpineEdit; bLat: Boolean);
  var rad: Real;
  begin
    try
      if anystrtofloat(mField.Value)=0 then begin
        mDecField.Text := '0';
        FieldName.Value := '';
      end else begin
        rad := DegToRad(MinutesToDecimal(anystrtofloat(mField.value)));
        mDecField.Value  := formatFloat('##0.0000000',MinutesToDecimal(anystrtofloat(mField.value)));
        if bLat then
          RadianLatitude.Value := GisLatitudeToStr(rad)
        else
          RadianLongitude.Value := GisLongitudeToStr(rad);
      end;
    Except
      ShowMessage('Conversion of Lat and Long has failed, please check your values');
    end;
    end;
begin
  ConvertToDec(LatitudeField,DecimalLatField,RadianLatitude,True);
  ConvertToDec(LongitudeField,DecimalLongField,RadianLongitude,False);
end;

procedure THydForm.UpdateLatLongButtonClick(Sender: TObject);
begin
  inherited;
  if (DecimalLatField.value='') and (DecimalLongField.Value='') then
    ShowMessage('Original Latitude and Longitude must be specified!!!')
  else begin
    try
      LatitudeField.Value := floattostr(DecimalToMinutes(anystrtofloat(DecimalLatField.value)));
      LongitudeField.Value := floattostr(DecimalToMinutes(anystrtofloat(DecimalLongField.value)));
    except
      showmessage('Conversion of Lat and Long has failed, please check your values');
      LatitudeField.Value := DecimalLatField.value;
      LongitudeField.Value := DecimalLongField.value;
    end;
  end;
end;

procedure THydForm.DoAfterSetControls(Sender: TObject);
begin
  MapButton.Enabled := anystrtofloat(LatitudeField.Value)<>0;
  SetHydLabels;
end;

procedure THydForm.MapButtonClick(Sender: TObject);
var GisSysForm: TGisSysForm;
begin
  inherited;
  GisSysForm := TGisSysform(GetFormOfType(TGisSysform));
  if GisSysForm=nil then
    GisSysForm := TGisSysform.Create(Application);

  GisSysForm.Show;
  GisSysForm.gissetvar.DisplayatLatLong(anystrtofloat(LatitudeField.Value),anystrtofloat(LongitudeField.Value),0,0,0);
  //GisSysForm.gissetvar.DisplayatLatLong(anystrtofloat(LatitudeField.Value),anystrtofloat(LongitudeField.Value),ScalarConstant(GisSysForm.GisSetVar)*GisSysForm.GisSetVar.StartExt/2,ScalarConstant(GisSysForm.GisSetVar)*GisSysForm.GisSetVar.StartExt/2);

end;

procedure THydForm.HydControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure THydForm.HydContactTabShow(Sender: TObject);
begin
  inherited;
  HydContactBrowse.Setup('HYDCONTACT','HYDID',pk,THydContactForm,HydContactNewRecord);
end;

procedure THydForm.HydContactNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('HYDID').AsString := pk;
end;


class function THydForm.GetNFPACode(rFlow: Real): integer;
var NFPAVar: String;
begin
  NFPAVar := '';
  If (rFlow >= 1500) then
    NFPAVar := 'AA'
  else if (rFlow >= 1000) then
    NFPAVar := 'A'

  else if (rFlow >= 500) then
    NFPAVar := 'B'
  else if (rFlow < 499) then
    NFPAVar := 'C';

  Result  := anystrtoint(SqlLookup(NFPAVAR,'CODE','HYDNFPACLASS','HYDNFPACLASSID'));
end;

procedure THydForm.FormClose(Sender: TObject; var Action: TCloseAction);
Var Form     : TForm;
begin
  inherited;
  //Need to destroy Map Tab before closing main form to avoid throwing an error.
  If HydControl.ActivePage = HydMapTab then begin
    Form := GetFormOfType(THydMapForm);
    THydMapForm(Form).SetFocus;
    THydMapForm(Form).Destroy;
  end;
end;

procedure THydForm.FormCreate(Sender: TObject);
var GisCode: String;
begin
  inherited;
  FdidLabel.Visible           := MultiFdid;
  FdidField.Visible           := MultiFdid;
  WOTab.TabVisible            := CheckModule('WO');
  PropTab.TabVisible          := CheckModule('PROP') and CheckSecVar('PROPSETUP') and CheckSecVar('HYDEDIT');
  CustomTab.TabVisible        := THydrantCustomForm.UseCustomTab;
  ViewOnly                    := Not CheckSecVar('HYDEDIT');
  GisCode                     := SqlLookUp(mFireID,'FDID','SYSSET','GISCODE');
  MapButton.Visible           := CheckModule('GIS');
  UpdateLatLongButton.Visible := AlpineLogIn;
end;

procedure THydForm.FormShow(Sender: TObject);
begin
  inherited;
  HydControl.ActivePage := Flowtab;
  CreateSubForm(F,THydFlowForm,FlowTab);
  If F<>nil then begin
    F.Show;
    F.BringToFront;
  end;
  SetHydLabels;
  DateTimeMapField.Enabled := false;

  If (AnyStrToFloat(LatitudeField.value) = 0) then
    HydMapTab.TabVisible := false;

  If (mFireID = '25127') then begin
    Districtlabel.Caption  := 'CAD District';
    BoxCodeLabel.Visible   := false;
    DispBoxIDField.Visible := false;
  end;
end;

procedure THydForm.CustomTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydrantCustomForm,CustomTab);
end;

procedure THydForm.NotesTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydrantNotesForm,NotesTab);
end;

procedure THydForm.PlotButtonClick(Sender: TObject);
Var Latitude  : String;
    Longitude : String;
begin
  Latitude  := '';
  Longitude := '';
  If alltrim(StrNumField.Value) + alltrim(StreetField.Value) = '' then
    ShowMessage('You must enter a street number, street name, or cross street')
  else if alltrim(CityField.Text) + alltrim(ZipField.Text) = '' then
    ShowMessage('You must enter a city or zip code')
  else if alltrim(StateField.Text) = '' then
    ShowMessage('You must enter the state')
  else begin
    SetMapLatLong(alltrim(StrNumField.Value),StreetField.Value , CrossStreetField.Value, CityField.Text, StateField.Text, ZipField.Text ,Latitude, Longitude);
    If Latitude > '' then begin
      If DisplayLatLongAsDecimal then begin
        Latitude  := FloatToStr(MinutesToDecimal(strtofloat(Latitude)));
        Longitude := FloatToStr(MinutesToDecimal(strtofloat(Longitude)));
      end;
      LatitudeField.Text  := Latitude;
      LongitudeField.Text := Longitude;
      SaveButton.Enabled  := true;
      If (AnyStrToFloat(LatitudeField.value) = 0) then
        HydMapTab.TabVisible := false
      else
        HydMapTab.TabVisible := true;
    end else
      ShowMessage('Could not find location');
  end;
end;

procedure THydForm.PropTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydPropForm,PropTab);
end;

procedure THydForm.woTabShow(Sender: TObject);
begin
  inherited;
  WorkOrdBrowse.ExplicitWhereClause := ' WHERE WORKORD.HYDID = ' + pkValue(PK);
  WorkOrdBrowse.Setup('WORKORDHYD','HYDID',pk,TWorkOrdForm,WorkOrdNewRecord);
end;

procedure THydForm.WorkOrdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('HYDID').AsString   := pk;
  DataSet.FieldByName('INVTYPE').AsString := 'HYD';
  TWorkOrdForm.NewRecord(DataSet);
end;

procedure THydForm.HydMapTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,THydMapForm,HydMapTab);
end;

function THydForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('HYDADD');
end;

function THydForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('HYDDEL');
end;

procedure THydForm.CityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  inherited;
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Value := tdbfield('CITY','STATE');
  ZipField.Text    := substr(dbfield('CITY','ZIP'),1,5);
  CloseApollo('CITY');
end;

class procedure THydForm.SpecialClick(Sender: TObject);
var m: TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Replicate Hydrant';
    m.Onclick := ReplicateHyd;
    If CheckSecVar('HYDADD') then
      TNewView(Sender).PopupMenu.Items.Add(m);
  end;
end;

class procedure THydForm.ReplicateHyd(Sender: TObject);
var mPk     : String;
    mView   : TNewView;
    mSource : TObject;
    mValue  : String;
    HydID   : String;
begin
  mView := nil;
  If Sender is TNormalBaseForm then
    mPk := TNormalBaseForm(Sender).Pk
  else if Sender is TMenuItem then begin
    if TMenuItem(Sender).Owner is TNewView then begin
      mView := TNewView(TMenuItem(Sender).Owner);
      mpk   := mView.ViewGrid.GetValue('HYDID');
    end;
  end else begin
    ShowMessage('There was a problem retrieving the Primary Key for the Table');
    exit;
  end;

  RepHydForm  := TRepHydForm.Create(application,mPk);
  RepHydForm.ShowModal;
  HydID       := RepHydForm.NewHydID;
  RepHydForm.Free;

  If AnyStrToInt(HydID) > 0 then begin
    If mView <> nil then begin
      mView.ViewGrid.SetValue('HYD',mView.ViewGrid.Row,HydID);
      mView.RefreshGrid(HydID,'','',True);
    end;
  end;
end;

initialization
  RegisterIndividualReport(THydRepForm,'INDHYDREP','Individual Hydrant Summary',    'HYD','',False,1);
  RegisterReport(THydRepForm,          'HYDREP',   'Hydrant Listing:  Full Summary','PROP','PROPCOND','Alpine Software Corporation',[]);

end.
