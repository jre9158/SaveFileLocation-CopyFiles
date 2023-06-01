unit DispCall;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Db,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  NormalBase,
  StdCtrls,
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
  ComCtrls,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineMemo,
  AlpineCheck,
  HtmlBtns,
  AdvGroupBox,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  applst,
  UWebGMapsCommon,
  UWebGMapsGeocoding,
  UWebGMaps,
  AdvObj,
  AlpinePanel;

type
  TDispCallForm = class(TNormalBaseForm)
    DispCallTabs: TPageControl;
    MainTab: TTabSheet;
    NFIRSMainTab: TTabSheet;
    DispHistTab: TTabSheet;
    DispHistBrowse: TAlpineBlockBrowse;
    ProQATab: TTabSheet;
    Label20: TLabel;
    Label21: TLabel;
    AlpineEdit11: TAlpineEdit;
    AlpineMemo2: TAlpineMemo;
    ProQAEMDCodeField: TAlpineEdit;
    imglistMain: TImageList;
    TestButton: TAlpineGlowButton;
    Label24: TLabel;
    AlpineEdit2: TAlpineEdit;
    Label25: TLabel;
    AlpineEdit3: TAlpineEdit;
    Label26: TLabel;
    AlpineEdit12: TAlpineEdit;
    Label27: TLabel;
    AlpineEdit13: TAlpineEdit;
    Label28: TLabel;
    AlpineEdit14: TAlpineEdit;
    Label29: TLabel;
    AlpineEdit15: TAlpineEdit;
    MultiFdidPanel: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    NewFdidField: TAlpineLookup;
    NfirsMainBrowse: TAlpineTMSStringGrid;
    AddNfirsMainButton: TAlpineGlowButton;
    AdvPanel1: TAdvPanel;
    PrimeButton: TAlpineGlowButton;
    EditNfirsMainButton: TAlpineGlowButton;
    RefreshButton: TAlpineGlowButton;
    DeleteNfirsMainButton: TAlpineGlowButton;
    GeoTab: TTabSheet;
    GEONarrField: TAlpineMemo;
    CadNarrTab: TTabSheet;
    CADNarrField: TAlpineMemo;
    launchProQA: TButton;
    KeyQuestionsGrid: TAlpineTMSStringGrid;
    Label43: TLabel;
    Label44: TLabel;
    AlpineEdit4: TAlpineEdit;
    AlpineEdit5: TAlpineEdit;
    AlpineEdit6: TAlpineEdit;
    Label45: TLabel;
    AlpineEdit8: TAlpineEdit;
    ProQAParamount: TTabSheet;
    Button1: TButton;
    ProQACommHist: TAlpineMemo;
    Label46: TLabel;
    proqastatelabel: TBlinkLabel;
    proqatimer: TTimer;
    ClearAlert: TButton;
    customtab: TTabSheet;
    MapTab: TTabSheet;
    MapPanel: TAlpinePanel;
    MapPanel2: TAdvPanel;
    EMSTab: TTabSheet;
    EMSBrowse: TAlpineBlockBrowse;
    AlpinePanel1: TAlpinePanel;
    Fdidlabel: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label41: TLabel;
    DispTimerLabel: TLabel;
    colorindexlabel: TLabel;
    countynumlabel: TLabel;
    Label47: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    FdidField: TAlpineLookup;
    DateTimeDispField: TAlpineDateTime;
    DateTimeRecField: TAlpineDateTime;
    DateTimeInField: TAlpineDateTime;
    DispCallTypeIDField: TAlpineLookup;
    DispSubTypeIDField: TAlpineLookup;
    DispBoxIDField: TAlpineLookup;
    AlpineEdit10: TAlpineEdit;
    IncStatField: TAlpineCheckBox;
    DispCallDispositionIDField: TAlpineLookup;
    AlarmNumField: TAlpineEdit;
    MapButton: TAlpineGlowButton;
    CheckGeoCode: TAlpineGlowButton;
    PREPLANBUTTON: TAlpineGlowButton;
    DISPTIMERField: TAlpineEdit;
    colorindexfield: TAlpineEdit;
    AddDispPrintButton: TAlpineGlowButton;
    countynumfield: TAlpineEdit;
    DispCallIDField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    LatitudeField: TAlpineEdit;
    CloseAlarmButton: TAlpineGlowButton;
    NfirsMainIDField: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    Label1: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label42: TLabel;
    StreetField: TAlpineEdit;
    StrNumfield: TAlpineEdit;
    CityField: TAlpineEdit;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    AddressField: TAlpineEdit;
    SiteNameField: TAlpineEdit;
    RoomAptField: TAlpineEdit;
    cross1field: TAlpineEdit;
    cross2field: TAlpineEdit;
    PropIDField: TAlpineEdit;
    AlpinePanel3: TAlpinePanel;
    SecIDField: TAlpineLookup;
    DispCallSourceIDField: TAlpineLookup;
    AlpineEdit7: TAlpineEdit;
    CallPhoneField: TAlpineEdit;
    CallNameField: TAlpineEdit;
    Label23: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    AlpinePanel4: TAlpinePanel;
    AlpineMemo1: TAlpineMemo;
    LocNarrPanel: TAlpinePanel;
    LocNarrField: TAlpineMemo;
    datetimeentrylabel: TLabel;
    DateTimeEntryField: TAlpineDateTime;
    Label10: TLabel;
    procedure DispSubTypeIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DispHistTabShow(Sender: TObject);
    procedure PrimeButtonClick(Sender: TObject);
    procedure TestButtonClick(Sender: TObject);
    procedure NFIRSMainTabShow(Sender: TObject);
    procedure EditNfirsMainButtonClick(Sender: TObject);
    procedure NewFdidFieldChange(Sender: TObject);
    procedure AddNfirsMainButtonClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure DeleteNfirsMainButtonClick(Sender: TObject);
    procedure NfirsMainBrowseDblClick(Sender: TObject);
    procedure MapButtonClick(Sender: TObject);
    procedure IncStatFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckGeoCodeClick(Sender: TObject);
    procedure PREPLANBUTTONClick(Sender: TObject);
    procedure AddDispPrintButtonClick(Sender: TObject);
    procedure launchProQAClick(Sender: TObject);
    procedure PopulateKeyQuestionsGrid(proqakeyquestions: TApolloData);
    procedure proqatimerTimer(Sender: TObject);
    procedure ClearAlertClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure MapTabShow(Sender: TObject);
    procedure EMSTabShow(Sender: TObject);
    procedure CloseAlarmButtonClick(Sender: TObject);
    procedure DispCallTypeIDFieldEnter(Sender: TObject);


  private
    { Private declarations }
    WebGMaps1: TWebGMaps;
    WebGMapsGeocoding1: TWebGMapsGeocoding;
    procedure DispCallDispHistNewRecord(DataSet: TDataSet);
    procedure LoadNfirsMainBrowse;
    procedure LoadEMSBrowse;

    procedure DoAfterSetViewOnly; override;
    procedure LoadDispCallCustomForm;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure DoAfterPost(Sender: TObject); override;
    procedure UpdateParamount;
    procedure EMSNewRecord(DataSet: TDataSet);    
  end;

var
  DispCallForm: TDispCallForm;

implementation
uses GenFunc,
     SecSet,
     AlpineRepGen,
     DispCallRep,
     commonCloud,
     CommonDisp,
     CommonRedNMX,
     DispProp,
     NFIRS,
     SysRepMan,
     DispHist,
     EMS,
     SysSet,
     GisSys,
     Main,
     GisFunc,
     CommonFunc,
     AlpineBaseSummaryReport,
     CommonDispVar,
     CustomUpdate,
     CommonProQA,CommonProQAService,
     CommonVar,
     DispcallCustom,
     FormFunc;
     
{$R *.DFM}

class procedure TDispCallForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('FDID').AsString := ' ';
end;

procedure TDispCallForm.DispSubTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  DispSubTypeIDField.SQLExpr := 'SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeIDField.Value) + ' ORDER BY CODE';
end;

procedure TDispCallForm.proqatimerTimer(Sender: TObject);
begin
  inherited;
  UpdateParamount;
end;

procedure TDispCallForm.UpdateParamount;
var proqakeyquestions : TApolloData;
    mParamountNarr    : String;
    mAlertLabel       : String;
    bShowAlert        : Boolean;
    iDispCalltypeid   : Integer;
    iDispSubTypeid    : Integer;
    ProQAObject       : TProQAObject;
begin
  try
    ProQAObject       := TProQAObject.Create(GlobalAdoConnection);
    proqakeyquestions := open_query('select * from proqakeyquestions where dispcallid = '+pkValue(pk)+' order by proqakeyquestionsid');
    PopulateKeyQuestionsGrid(proqakeyquestions);
    UpdateProQAObjectFromDatabase(ProQAObject,mParamountNarr,mAlertLabel,bShowAlert,iDispCalltypeid,iDispSubTypeid,anystrtoint(pk),GlobalAdoConnection,False);

    proqastatelabel.caption := mAlertLabel;

    SayProQAStateDescr(proqastatelabel.caption);
    If bShowAlert then begin
      ClearAlert.Visible := True;
      ClearAlert.Left    := proqastatelabel.left + proqastatelabel.Width+25;
    end;    
    ProQACommHist.Text := mParamountNarr;

    If bShowAlert then begin
      proqastatelabel.BlinkColor := clRed;
      proqastatelabel.Blink      := True;
    end else begin
      proqastatelabel.Font.Color := clGreen;
      proqastatelabel.BlinkColor := clGreen;
      proqastatelabel.Blink      := False;
    end;

  finally
    proqakeyquestions.Free;
    ProQAObject.Free;    
  end;
end;

procedure TDispCallForm.FormCreate(Sender: TObject);
var proqakeyquestions: TApolloData;
begin
  inherited;
  ViewOnly                                  := (Not CheckSecVar('DISPGEN')) and (not CheckSecVar('CADINTSETUP'));
  NewFdidField.enabled                      := MultiFdid or AlpineLogin;

  If not NewFdidField.enabled then
    NewFdidField.Value  := mFireid;
  AddNfirsMainButton.Enabled := Not (NewFdidField.Value = '');

  DispCallTabs.ActivePage                   := MainTab;
  proqastatelabel.Caption                   := '';
  DispCallDispositionIDField.CanAddToLookup := CheckSecVar('DISPSETUP');
  ProQATab.TabVisible                       := CheckModule('PROQA') and (not UseParamount);
  ProQAParamount.TabVisible                 := UsingParamount;
  If AlpineLogIn or (mFireID = '34034') or (mfireid='14162') or (mFireID = '28017')  then
    CadNarrTab.TabVisible                   := true
  else
    CadNarrTab.TabVisible                   := false;

  If MFireID = '01920' then  begin
    LocNarrPanel.Visible := False;
    LocNarrField.Enabled := False;
  end;

  LatitudeField.Enabled                     := AlpineLogIn;
  LongitudeField.Enabled                    := AlpineLogIn;
  MapButton.Visible                         := CheckModule('GIS');
  DISPTIMERField.Visible                    := GlobalShowDispatchTimer;
  DispTimerLabel.Visible                    := DISPTIMERField.Visible;
  DeleteNfirsMainButton.Enabled             := AlpineLogIn;
  colorindexlabel.Visible                   := AlpineLogin;
  colorindexfield.Visible                   := AlpineLogin;
  AddDispPrintButton.Visible                := AlpineLogin;
  LaunchProQA.visible                       := AlpineLogin;
  EMSTab.TabVisible                         := AlpineLogin or ((mFireid='12345') or (mFireid='25150')) and (CheckSecVar('EMSVIEW'));

  if (mFireID = '44015') and (CheckSecVar('SLFDEDITCAD')) then begin
    TestButton.Enabled                := False;
    PrintButton.Enabled               := False;
    ViewOnly := False;
  end;

  if UseParamount then begin
    UpdateParamount;
    proqatimer.Enabled := True;
  end else
    proqatimer.Enabled := False;
  try
    proqakeyquestions := open_query('select * from proqakeyquestions where dispcallid = '+pkValue(pk)+' order by proqakeyquestionsid');
    PopulateKeyQuestionsGrid(proqakeyquestions);
  finally
    proqakeyquestions.Free;
  end;
  ClearAlert.Visible := False;
  customtab.TabVisible := TDispCallCustomForm.IsVisible;

  If CustomTab.TabVisible then
    LoadDispCallCustomForm;

  If (mFireID = '34034') then
    CustomTab.Caption := 'Additional Info.';
  WebGMaps1             := TWebGMaps.Create(nil);
  WebGMapsGeocoding1    := TWebGMapsGeocoding.Create(nil);
end;


procedure TDispCallForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(WebGMaps1);
  FreeAndNil(WebGMapsGeocoding1);
end;

procedure TDispCallForm.LoadDispCallCustomForm;
var mDispCallCustomForm: TDispCallCustomForm;
begin
  mDispCallCustomForm             := TDispCallCustomForm.Create(self);
  mDispCallCustomForm.borderstyle := forms.bsNone;
  mDispCallCustomForm.left        := 0;
  mDispCallCustomForm.Top         := 0;
  mDispCallCustomForm.Parent      := CustomTab;
  mDispCallCustomForm.Show;
end;

procedure TDispCallForm.PopulateKeyQuestionsGrid(    proqakeyquestions: TApolloData);
begin
  try
    KeyQuestionsGrid.ColCount := 0;
    KeyQuestionsGrid.RowCount := 0;
    KeyQuestionsGrid.ClearColumns;
    KeyQuestionsGrid.FixedRowAlways := true;
    KeyQuestionsGrid.RowCount       := KeyQuestionsGrid.FixedRows;

    KeyQuestionsGrid.SetColumn('proqakeyquestionsid',   '',                 001);
    KeyQuestionsGrid.SetColumn('keyquestionsdescr',   'Description',                 800);
    ProQAkeyquestions.GoTop;
    while not ProQAkeyquestions.eof do begin
      keyquestionsGrid.SetValue('proqakeyquestionsid',tdbfield(ProQAkeyquestions,'ProQAkeyquestionsid'));
      keyquestionsGrid.SetValue('keyquestionsdescr',tdbfield(ProQAkeyquestions,'keyquestionsdescr'));
      ProQAkeyquestions.next;
    end;
  finally
  end;
end;

procedure TDispCallForm.FormShow(Sender: TObject);
Var HeightVar : Integer;
begin
  inherited;
  If CheckSecVar('CADINTSETUP') or CheckSecVar('DISPSETUP') then
    IncStatField.Enabled := true;
  MapTab.TabVisible         := Not (MinutesToDecimal(LatitudeField.Value) = 0) and Not (MinutesToDecimal(LongitudeField.Value) = 0);
  DateTimeRecField .Enabled := (CheckSecVar('DISPEDITTIMEOPEN') and  IncStatField.Checked) or (CheckSecVar('DISPEDITTIMECLOSED') and  Not IncStatField.Checked);
  DateTimeDispField.Enabled := (CheckSecVar('DISPEDITTIMEOPEN') and  IncStatField.Checked) or (CheckSecVar('DISPEDITTIMECLOSED') and  Not IncStatField.Checked);
  DateTimeInField  .Enabled := (CheckSecVar('DISPEDITTIMEOPEN') and  IncStatField.Checked) or (CheckSecVar('DISPEDITTIMECLOSED') and  Not IncStatField.Checked);
//HeightVar                 := Round(Screen.Height * 0.82);
//If HeightVar > 800 then
//  Height := 800;
  PropIDField.Enabled       := false;
  DispCallIDField.Enabled   := false;
end;

procedure TDispCallForm.IncStatFieldClick(Sender: TObject);
begin
  inherited;
  If IncStatField.Checked then begin
    RunSQL('UPDATE DISPCALL SET INCSTAT = ' + AddExpr('OPEN') + ' WHERE DISPCALLID = ' + Pk);
    AddtoHistory(GlobalAdoConnection,'', AddressField.Text,'Manually Re-Opened Alarm', '', pk, '', '', AnyStrToInt(AlarmNumField.Text), Now);

  end else begin
    RunSQL('UPDATE DISPCALL SET INCSTAT = ' + AddExpr('CLOSED') + ' WHERE DISPCALLID = ' + Pk);
    AddtoHistory(GlobalAdoConnection,'', AddressField.Text,'Manually Closed Alarm', '', pk, '', '', AnyStrToInt(AlarmNumField.Text), Now);
  end;
end;

procedure TDispCallForm.launchProQAClick(Sender: TObject);
var
  ProQAObject: TProQAObject;
  LocalDispCall: TDispCall;
begin
  inherited;
  try
    ProQAObject := TProQAObject.Create(GlobalAdoConnection);
    LocalDispCall := CreateDispCallFromDispCallID(GlobalAdoConnection,anystrtoint(pk));

    ProQAObject.SetVariables(False,LocalDispCall,'',DateTimeRecField.Value);
  //  ProQAWrite('SUMMARY',ProQAObject);

    ProQAWrite('OPEN',ProQAObject);
    ShowProQA(ProQAObject);
  finally
    ProQAObject.Free;
    LocalDispCall.Free;
  end;  


end;
 
procedure TDispCallForm.DispHistTabShow(Sender: TObject);
begin
  if mfireid = '01922' then
    DispHistBrowse.Setup('DISPCALLDISPHIST01922','DISPCALLID',pk,TDispHistForm,DispCallDispHistNewRecord)
  else
    DispHistBrowse.Setup('DISPCALLDISPHIST','DISPCALLID',pk,TDispHistForm,DispCallDispHistNewRecord);
  DispHistBrowse.ButtonPanelVisible := (CheckSecVar('DISPEDITTIMEOPEN') and  IncStatField.Checked) or (CheckSecVar('DISPEDITTIMECLOSED') and  Not IncStatField.Checked);
end;

procedure TDispCallForm.DispCallDispHistNewRecord(DataSet: TDataSet);
begin
  TDispHistForm.NewRecordFromDispCall(DataSet,anystrtoint(pk));
end;

procedure TDispCallForm.DispCallTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  DispCallTypeIDField.SQLExpr := 'SELECT * FROM DISPCALLTYPE WHERE RESPONSE = ' + AddExpr('N')+ ' OR RESPONSE IS NULL OR RESPONSE = ' + AddExpr('') + ' ORDER BY CODE';
end;

procedure TDispCallForm.PREPLANBUTTONClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('DispPropForm') then
    DispPropForm := TDispPropForm.Create(Application,sqllookup(pk,'dispcallid','dispcall','propid'),pk);
  DispPropForm.Show;
end;

procedure TDispCallForm.PrimeButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Make Agency ' + NFIRSMainBrowse.GetValue('FDID') + ' and incident ' + NFIRSMainBrowse.GetValue('INCNUM') + ' primary?') then begin
    RunSQL('UPDATE DISPCALL SET NFIRSMAINID = ' + NFIRSMainBrowse.GetValue('NFIRSMAINID') + ' WHERE DISPCALLID = ' + PK);
    RunSQL('UPDATE DISPCALL SET FDID = ' + AddExpr(NFIRSMainBrowse.GetValue('FDID')) + ' WHERE DISPCALLID = ' + PK);
    FdidField.Value    := NFIRSMainBrowse.GetValue('FDID');
    SaveButton.Enabled := true;
    LoadNfirsMainBrowse;
  end;
end;



function TDispCallForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := false;
end;
function TDispCallForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('DISPDEL');
end;

procedure TDispCallForm.CheckGeoCodeClick(Sender: TObject);
Var Latitude : String;
    Longitude: String;
    GeoNarr  : String;
begin
  inherited;
  SetMapLatLong(StrNumfield.Value,StreetField.Value,cross1field.Value,CityField.Value,StateField.Value,ZipField.Value, Latitude,Longitude);
  LatitudeField.Value  := Latitude;
  LongitudeField.Value := Longitude;
  GeoNarr              := Latitude + ',' + Longitude;
  RunSQL('UPDATE DISPCALL SET GEONARR = ' + AddExpr(GeoNarr) + ' WHERE DISPCALLID = ' + PKValue(Pk));
  MapTab.TabVisible   := Not (MinutesToDecimal(LatitudeField.Value) = 0) and Not (MinutesToDecimal(LongitudeField.Value) = 0);
end;

procedure TDispCallForm.ClearAlertClick(Sender: TObject);
begin
  inherited;
  ClearProQAAlert(pk);
  ClearAlert.Visible := False;
end;

procedure TDispCallForm.CloseAlarmButtonClick(Sender: TObject);
begin
  inherited;
  If not BooleanMessageDlg('Close Alarm?  This will close the alarm, put all apparatus "in service", transfer apparatus to NFIRS, and Update NFIRS times') then
    exit;
  CommonEndAlarm(GlobalAdoConnection,pk,Now);
  ShowMessage('Alarm Closed!');
  CloseAlarmButton.enabled := False;
end;

procedure TDispCallForm.MapTabShow(Sender: TObject);
Var AlpineIP : String;
    BoxSize  : String;
    Address  : String;
    qryAddr  : String;
    gpsinfo  : String;
    URL      : String;
    dblLat   : Double;
    dblLong  : Double;
begin
  WebGMaps1.apikey             := REDNMX_GOOGLE_MAP_KEY ;
  WebGMaps1.Parent             := MapPanel;
  WebGMaps1.Left               := 0;
  WebGMaps1.Top                := 0;
  WebGMaps1.Align              := alClient;
  WebGmaps1.MapOptions.ZoomMap := 17;
  WebGmaps1.DeleteAllMapMarker;
  dblLat                       := 0;
  dblLong                      := 0;
  WebGMaps1.Markers.Clear;
  dblLat                       := MinutesToDecimal(LatitudeField.Value);
  dblLong                      := MinutesToDecimal(LongitudeField.Value);
  MapPanel.Caption.Text        := 'Map Location for ' + StrNumField.Value + ' ' + StreetField.Value;

  If (not(dblLat = 0) and not(dblLong = 0)) then begin
    try
      gpsinfo := StrNumField.Value + ' ' + StreetField.Value + ' ('+formatfloat('##0.000000',DecimalToMinutes(dblLat)) + ', ' + formatfloat('##0.000000',DecimalToMinutes(dblLong)) +
                  ' | Dec: '+formatfloat('##0.000000',dblLat) + ', ' + formatfloat('##0.000000',dblLong)+')';
      WebGMaps1.MapOptions.DefaultLatitude  := dblLat;
      WebGMaps1.MapOptions.DefaultLongitude := dblLong;
      WebGmaps1.Markers.Add(dblLat,dblLong,gpsinfo,'',false,true,true,false,false,0);
      WebGMaps1.Launch;
    except
    end;
  end;
end;

procedure TDispCallForm.TestButtonClick(Sender: TObject);
Var Handled: Boolean;
begin
  inherited;
  TCustomUpdate.DoCustomPrintRunCard(self,strtoint(pk),0,Handled);
  if not Handled then begin
    Open_Query('DISPPRINT',true,'SELECT * FROM DISPPRINT WHERE DISPCALLID = ' + PkValue(PK));
    If A('DISPPRINT').RecordsExist then begin
      GetTable('DISPPRINT').Edit;
      GetField('DISPPRINT','DATETIMEENT').AsDateTime := Now;
      GetField('DISPPRINT','DATETIMEPRINT').AsString := '';
      GetField('DISPPRINT','PRINTSTATUS').AsString   := 'N';
      GetTable('DISPPRINT').Post;
      ShowMessage('Test print has been submitted');
    end;
    CloseApollo('DISPPRINT');
  end;
end;

procedure TDispCallForm.NFIRSMainTabShow(Sender: TObject);
begin
  inherited;
  LoadNfirsMainBrowse;
end;

procedure TDispCallForm.EMSNewRecord(DataSet: TDataSet);
begin
  dataset.fieldbyname('FDID').AsString := fdidfield.value;
  dataset.fieldbyname('datetimealarm').AsDateTime := DateTimeDispField.Value;
  dataset.fieldbyname('dispcallid').AsString := pk;

  if mfireid='25150' then
    dataset.fieldbyname('incnum').AsString := '20'+substr(countynumfield.text,2,2)+substr(countynumfield.text,5,6);
end;

procedure TDispCallForm.LoadEMSBrowse;
var
  EMSBrowseObject: TBrowseObject;

begin
  EMSBrowseObject                   := TBrowseObject.Create;
  EMSBrowseObject.AddField('INCNUM',     'INCNUM',     '','Inc#',       100);
  EMSBrowseObject.AddField('PCRNUM',     'PCRNUM',     '','PCRNUM',     100);
  EMSBrowseObject.AddField('PATLAST',     'PATLAST',     '','Last Name',     200);
  EMSBrowseObject.NewRecordFunction := EMSNewRecord;
  EMSBrowseObject.Instance          := TEMSForm;
  EMSBrowseObject.PrimeTable     := 'EMS';
  EMSBrowseObject.FormPrimeTable := 'EMS';
  EMSBrowseObject.PrimeKeyField  := 'EMSID';
  EMSBrowseObject.ForeignKeyField := 'DISPCALLID';
  EMSBrowseObject.ForeignKeyValue := PK;
  EMSBrowseObject.ForeignKeyIsChar:= False;
  EMSBrowse.NewEnabled      := CheckSecVar('EMSEDIT');
  EMSBrowse.DeleteEnabled   := CheckSecVar('EMSDEL');
  EMSBrowse.EditEnabled     := CheckSecVar('EMSEDIT');
  EMSBrowse.Setup(EMSBrowseObject);
end;

procedure TDispCallForm.LoadNfirsMainBrowse;
begin
  NfirsMainBrowse.Clear;
  NfirsMainBrowse.ColCount       := 0;
  NfirsMainBrowse.RowCount       := 0;
  NfirsMainBrowse.ClearColumns;

  NfirsMainBrowse.FixedRowAlways := true;
  NfirsMainBrowse.RowCount       := NfirsMainBrowse.FixedRows;

  NfirsMainBrowse.SetColumn('NFIRSMAINID','NFIRSMAINID',000);
  NfirsMainBrowse.SetColumn('PRIMARY',    'Prime?',     065);
  NfirsMainBrowse.SetColumn('FDID',       'Fdid',       065);
  NfirsMainBrowse.SetColumn('INCNUM',     'Incident',   110);
  NfirsMainBrowse.SetColumn('STRNUM',     'Number',     065);
  NfirsMainBrowse.SetColumn('STREET',     'Street',     320);
  NfirsMainBrowse.SetColumn('SPACE',      '',           999);

  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID, FDID, INCNUM, STRNUM, STREET FROM NFIRSMAIN WHERE DISPCALLID = ' + PK);
  While Not A('NFIRSMAIN').Eof do begin
    NfirsMainBrowse.SetValue('NFIRSMAINID', GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    NfirsMainBrowse.SetValue('PRIMARY',     IIf(tdbfield('NFIRSMAIN','FDID') = FdidField.Value,'Yes',''));
    NfirsMainBrowse.SetValue('FDID',        tdbfield('NFIRSMAIN','FDID'));
    NfirsMainBrowse.SetValue('INCNUM',      tdbfield('NFIRSMAIN','INCNUM'));
    NfirsMainBrowse.SetValue('STRNUM',      tdbfield('NFIRSMAIN','STRNUM'));
    NfirsMainBrowse.SetValue('STREET',      tdbfield('NFIRSMAIN','STREET'));
    A('NFIRSMAIN').Skip(1);
  end;
  CloseApollo('NFIRSMAIN');
end;

procedure TDispCallForm.MapButtonClick(Sender: TObject);
var DispCall   : TDispCall;
    EXECommand : String;                                                                    
begin
  If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
    EXECommand := ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
    If Not ProcessExists('REDNMXMAPBOX.EXE') then
      WinExec(pchar(ExeCommand),SW_SHOW);
    Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    If A('GISD10COMPUTER').RecordsExist then              
      GetTable('GISD10COMPUTER').Edit
    else
      GetTable('GISD10COMPUTER').Append;
    GetField('GISD10COMPUTER','DISPCALLID').AsString   := pk;
    GetField('GISD10COMPUTER','PROPID').AsString       := '';
    GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
    GetTable('GISD10COMPUTER').Post;
    CloseApollo('GISD10COMPUTER');
  end else
    ShowMapForLatitudeLongitude(strtofloat(LatitudeField.Text),strtofloat(LongitudeField.Text),StrNumfield.text+' '+StreetField.Text)
end;

procedure TDispCallForm.EditNfirsMainButtonClick(Sender: TObject);
Var NfirsMainID : String;
begin
  inherited;
  if MultiFDID and (SecFdid<>'') and (secFdid <> NFIRSMainBrowse.GetValue('FDID')) then
    ShowMessage('You are not permitted to access incidents of other departments')
  else begin
    NfirsMainID := NFIRSMainBrowse.GetValue('NFIRSMAINID');
    RunAlpineForm(TNfirsForm,NfirsMainID,'NFIRSMAIN',TNfirsForm.NewRecord);
  end;
end;

procedure TDispCallForm.EMSTabShow(Sender: TObject);
begin
  inherited;
  LoadEMSBrowse;  
end;

procedure TDispCallForm.NewFdidFieldChange(Sender: TObject);
begin
  inherited;
  AddNfirsMainButton.Enabled := Not (NewFdidField.Value = '');
end;

procedure TDispCallForm.AddDispPrintButtonClick(Sender: TObject);
begin
  inherited;
  AddDispPrint(GlobalAdoConnection,anystrtoint(pk));
end;

procedure TDispCallForm.AddNfirsMainButtonClick(Sender: TObject);
Var NfirsMainID : String;
begin
  inherited;
  if MultiFDID and (SecFdid<>'') and (secFdid <> NewFdidField.Value) then begin
    ShowMessage('You are not permitted to add incidents for other departments');
    exit;
  end;

  If AlpineLogIn then begin
    ShowMessage('Generate Incident?');
  end else if not MultiFdid and (FdidField.Value='') then begin
    ShowMessage('FDID Field must be set for Call Record (on the General Tab)');
    exit;
  end;

  Open_Query('NFIRSMAIN',true,'SELECT * FROM NFIRSMAIN WHERE DISPCALLID = ' + pk + ' AND FDID = ' + AddExpr(NewFdidField.Value));
  If A('NFIRSMAIN').RecordsExist then
    NfirsMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString
  else begin
    A('NFIRSMAIN').Append;
    GetField('NFIRSMAIN','DISPCALLID').AsString      := pk;
    GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime := DateTimeRecField.Value;
    GetField('NFIRSMAIN','EXPNUM').AsString          := '00';
    GetField('NFIRSMAIN','STRNUM').AsString          := StrNumField.Value;
    GetField('NFIRSMAIN','STREET').AsString          := StreetField.Value;
    GetField('NFIRSMAIN','ROOMAPT').AsString         := RoomAptField.Value;
    GetField('NFIRSMAIN','CITY').AsString            := CityField.Value;
    GetField('NFIRSMAIN','STATE').AsString           := StateField.Value;
    GetField('NFIRSMAIN','ZIP').AsString             := ZipField.Value;
    GetField('NFIRSMAIN','DONE').AsString            := 'N';
    If MultiFdid then begin
      GetField('NFIRSMAIN','FDID').AsString          := NewFdidField.Value;
      GetField('NFIRSMAIN','INCNUM').AsString        := GetNextIncNum(NewFdidField.Value,'NFIRSMAIN',false);
    end else begin
      GetField('NFIRSMAIN','FDID').AsString          := FdidField.Value;
      GetField('NFIRSMAIN','INCNUM').AsString        := GetNextIncNum(FdidField.Value,'NFIRSMAIN',false);
    end;
    GetTable('NFIRSMAIN').Post;
    If GetField('NFIRSMAIN','NFIRSMAINID').AsInteger > 0 then
      NfirsMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString
    else
      NfirsMainID := A('NFIRSMAIN').NewPk;

    CloseApollo('NFIRSMAIN');

    if NfirsMainIDField.Value = '' then
      RunSQL('UPDATE DISPCALL SET NFIRSMAINID = ' + AddExpr(NfirsMainID) + ' WHERE DISPCALLID = ' + pk);
    
  end;
  AddNfirsMainButton.Enabled := false;

  LoadNfirsMainBrowse;

  RunAlpineForm(TNfirsForm,NfirsMainID,'NFIRSMAIN',TNfirsForm.NewRecord);
end;

procedure TDispCallForm.RefreshButtonClick(Sender: TObject);
begin
  inherited;
  LoadNfirsMainBrowse;
end;

procedure TDispCallForm.DeleteNfirsMainButtonClick(Sender: TObject);
Var NfirsMainID : String;
begin
  inherited;
  NfirsMainID := NFIRSMainBrowse.GetValue('NFIRSMAINID');
  If (AnyStrToInt(NfirsMainID) > 0) and BooleanMessageDlg('Delete Incident ' + NFIRSMainBrowse.GetValue('INCNUM') + ' for agency ' + NFIRSMainBrowse.GetValue('FDID') + '?') then begin
    RunSQL('DELETE FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(NfirsMainID));
    LoadNfirsMainBrowse;
  end;
end;

procedure TDispCallForm.NfirsMainBrowseDblClick(Sender: TObject);
begin
  inherited;
  EditNfirsMainButtonClick(self);
end;

procedure TDispCallForm.DoAfterSetControls(Sender: TObject);
begin
  MapButton.Enabled := LatitudeField.Value <> '';
  launchProQA.Enabled := ProQAEMDCodeField.Value <> '';
  countynumlabel.visible := countynumfield.value <> '';
  countynumfield.visible := countynumfield.value <> '';
  countynumfield.enabled := False;
  Caption := AddressField.Text + ' (Dispatch #'+pk+')';
  DateTimeEntryField.Visible := DateTimeEntryField.Value > 0;
  datetimeentrylabel.Visible := DateTimeEntryField.Visible;

  CloseAlarmButton.visible := CheckModule('CADINT');
  if CloseAlarmButton.visible then
    CloseAlarmButton.Enabled := CheckSecVar('CADINTSETUP') and IncStatField.checked;
  

end;

procedure TDispCallForm.DoAfterPost(Sender: TObject);
begin
  if StrNumfield.modified or StreetField.modified or RoomAptField.modified or
    CityField.modified    or StateField.modified  or ZipField.modified or
    cross1field.modified  or cross2field.modified then begin
    If BooleanMessageDlg('You changed some address fields - would you like to update the linked incident reports to reflect these changes?') then
      UpdateIncidentAddressForDispCallID(GlobalAdoConnection,anystrtoint(pk));
  end;
end;

procedure TDispCallForm.DoAfterSetViewOnly;
begin
  ProQACommHist.readOnly := True;
end;

initialization
  RegisterIndividualReport(TDispCallRepForm,'DISPDISPCALL','Dispatch Call Summary','DISPCALL','',False,1);

end.
