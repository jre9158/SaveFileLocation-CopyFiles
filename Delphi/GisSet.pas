unit GISSet;
 
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
  FormFunc,
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
  AdvPageControl,
  ComCtrls,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  ComObj,
  SortGridView,
  StrUtils,
  Gauges,
  htmlbtns,
  alpinecheck,
  AdvGroupBox,
  AlpineMemo,
  AlpinePanel;

type
  TGISSetForm = class(TNormalBaseForm)
    GisSetControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    GisLayerTab: TAdvTabSheet;
    GISLayerBrowse: TAlpineBlockBrowse;
    ColorDialog1: TColorDialog;
    ReplicateButton: TAlpineGlowButton;
    ExternalTab: TAdvTabSheet;
    ESRITab: TAdvTabSheet;
    FontDialog1: TFontDialog;
    AdvTabSheet4: TAdvTabSheet;
    Panel0B: TAlpinePanel;
    ProjectionField: TAlpineMemo;
    AlpinePanel1: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label43: TLabel;
    Label46: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label140: TLabel;
    HydrantLayerLabel: TLabel;
    Label142: TLabel;
    UseHYDTableLabel: TLabel;
    Label5: TLabel;
    usegooglemapsLabel: TLabel;
    GISPathField: TAlpineEdit;
    RendShapeField: TAlpineEdit;
    BackColorField: TAlpineEdit;
    StartLatField: TAlpineEdit;
    StartLongField: TAlpineEdit;
    GisCodeField: TAlpineEdit;
    IconPathField: TAlpineEdit;
    StartExtField: TAlpineEdit;
    RendShapeButton: TAlpineGlowButton;
    BackColorButton: TAlpineGlowButton;
    IncScaleField: TAlpineEdit;
    DescrField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    StaticIconField: TAlpineEdit;
    staticfontfield: TAlpineEdit;
    SELECTFONT: TAlpineGlowButton;
    UseHydTableField: TAlpineCheckBox;
    HydLayerIDField: TAlpineLookup;
    usegooglemapsField: TAlpineCheckBox;
    MapTypeLabel: TLabel;
    MeterFeetLabel: TLabel;
    MapUnitLabel: TLabel;
    MapUnitDescr: TLabel;
    MapTypeField: TAlpineEdit;
    MeterFeetField: TAlpineEdit;
    MapUnitField: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    AlpinePanel3: TAlpinePanel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    PlottedField: TLabel;
    TotalField: TLabel;
    GEOButton: TAlpineGlowButton;
    ParcelShapeField: TAlpineEdit;
    ParcelFieldField: TAlpineEdit;
    ParcelExprField: TAlpineEdit;
    AlpinePanel4: TAlpinePanel;
    Label57: TLabel;
    PlotField: TLabel;
    Label62: TLabel;
    PropLabel: TLabel;
    ESRIGeoCodeButton: TAlpineGlowButton;
    AlpinePanel5: TAlpinePanel;
    Label64: TLabel;
    Label66: TLabel;
    kmlhydrant: TAlpineLookup;
    KMLButton: TAlpineGlowButton;
    Label52: TLabel;
    Label53: TLabel;
    TotalCompleteField: TLabel;
    TotalReviewField: TLabel;
    Label56: TLabel;
    AddressLabel: TLabel;
    Label58: TLabel;
    DispLocCodeLabel: TLabel;
    Directionbutton: TAlpineGlowButton;
    CancelButton: TAlpineGlowButton;
    Label54: TLabel;
    StartTimeField: TLabel;
    Label55: TLabel;
    ElapsedField: TLabel;
    AlpinePanel6: TAlpinePanel;
    Gauge: TGauge;
    AlpinePanel7: TAlpinePanel;
    AlpinePanel8: TAlpinePanel;
    AlpinePanel9: TAlpinePanel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label72: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label67: TLabel;
    ExternalButton: TAlpineGlowButton;
    ExtDatabaseField: TAlpineEdit;
    ExtUsernameField: TAlpineEdit;
    ExtPasswordField: TAlpineEdit;
    ExtServerField: TAlpineEdit;
    ExtGisCodeField: TAlpineEdit;
    ExtTableTypeField: TAlpineEdit;
    StaticIconButton: TAlpineGlowButton;
    Label7: TLabel;
    AlpineCheckBox1: TAlpineCheckBox;
    AdvTabSheet1: TAdvTabSheet;
    Memo1: TMemo;
    Label8: TLabel;
    dec_lat: TAlpineEdit;
    Label10: TLabel;
    rednmx_lat: TAlpineEdit;
    Label12: TLabel;
    Label13: TLabel;
    dec_long: TAlpineEdit;
    rednmx_long: TAlpineEdit;
    Button1: TButton;
    Button2: TButton;
    clearrenderinglayer: TAlpineGlowButton;
    Label14: TLabel;
    includeintersections: TAlpineCheckBox;
    Label15: TLabel;
    AlpineEdit2: TAlpineEdit;
    kmlmiles: TAlpineEdit;
    kmllayerstab: TAdvTabSheet;
    KmlLayersBrowse: TAlpineBlockBrowse;
    Label16: TLabel;
    fileprefix: TAlpineEdit;
    Label17: TLabel;
    AlpineCheckBox2: TAlpineCheckBox;
    Label18: TLabel;
    HydGraphicsField: TAlpineCheckBox;
    Label19: TLabel;
    BaseKMLUrlLabel: TLabel;
    BASEKMLURLField: TAlpineEdit;
    Label21: TLabel;
    GoogleZoomLabel: TLabel;
    GOOGLEHYDZOOMField: TAlpineEdit;
    Googleexplanation: TLabel;
    xlatvalue: TAlpineEdit;
    ylongvalue: TAlpineEdit;
    yvalue: TAlpineEdit;
    xvalue: TAlpineEdit;
    Button3: TButton;
    Label20: TLabel;
    Label22: TLabel;
    AlpinePanel10: TAlpinePanel;
    Label23: TLabel;
    step1label: TLabel;
    step4label: TLabel;
    CreateGoogleKML: TAlpineGlowButton;
    DeleteKMLButton: TAlpineGlowButton;
    AlpineGlowButton2: TAlpineGlowButton;
    Label31: TLabel;
    AlpineGlowButton3: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure RendShapeButtonClick(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
    procedure ReplicateButtonClick(Sender: TObject);
    procedure ExternalButtonClick(Sender: TObject);
    procedure GisLayerTabShow(Sender: TObject);
    procedure GisSetControlChange(Sender: TObject);
    procedure GEOButtonClick(Sender: TObject);
    procedure DirectionbuttonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure ESRIGeoCodeButtonClick(Sender: TObject);
    procedure SELECTFONTClick(Sender: TObject);
    procedure HydLayerIDFieldEnter(Sender: TObject);
    procedure GISLayerBrowseReplicate(Sender: TObject);
    procedure DeleteKMLButtonClick(Sender: TObject);
    procedure KMLButtonClick(Sender: TObject);
    procedure GenTabShow(Sender: TObject);
    procedure StaticIconButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure clearrenderinglayerClick(Sender: TObject);
    procedure kmllayerstabShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CreateGoogleKMLClick(Sender: TObject);
  private
    CancelVar : Boolean;
    procedure GISLayerNewRecord(DataSet: TDataSet);
    procedure DoAfterSetViewOnly; override;
    procedure SetupGISLayerBrowse;        
    { Private declarations }
  protected
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  GISSetForm: TGISSetForm;

implementation
uses GenFunc,
     Search,
     GisFunc,
     mobileftp,
     GISLayer,
     KmlLayer,
     GisSys,
     CommonVar,
     Commonfunc,
     CommonCloud,
     SelectFile,
     TableDefinitions,
     WinMapDef,
     applst,
     FontFunc,
     GisViewer,
     GisViewerWnd,
     Main;

{$R *.DFM}

class procedure TGISSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('GISCODE').AsString := ' ';
  DataSet.FieldByName('central_meridian').AsFloat := 0.0;
  DataSet.FieldByName('latitude_of_origin').AsFloat := 0.0;
  DataSet.FieldByName('false_easting').AsFloat := 0.0;
  DataSet.FieldByName('false_northing').AsFloat := 0.0;
  DataSet.FieldByName('standard_parallel_1').AsFloat := 0.0;
  DataSet.FieldByName('standard_parallel_2').AsFloat := 0.0;
  DataSet.FieldByName('zone').AsInteger := 0;
  DataSet.FieldByName('scale_factor').AsFloat := 0.0;
  DataSet.FieldByName('longitude_of_center').AsFloat := 0.0;
  DataSet.FieldByName('latitude_of_center').AsFloat := 0.0;
  DataSet.FieldByName('azimuth').AsFloat := 0.0;
  DataSet.FieldByName('longitude_of_point_1').AsFloat := 0.0;
  DataSet.FieldByName('latitude_of_point_1').AsFloat := 0.0;
  DataSet.FieldByName('longitude_of_point_2').AsFloat := 0.0;
  DataSet.FieldByName('latitude_of_point_2').AsFloat := 0.0;
end;

procedure TGISSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  GisSetControl.ActivePage      := GenTab;
  ReplicateButton.Visible       := AlpineLogin;
  ExternalTab.TabVisible        := AlpineLogin;
  ESRITab.TabVisible            := AlpineLogin;
  HydLayerIDField.Enabled       := AlpineLogin;
  kmllayerstab.TabVisible       := AlpineLogin;
  UseHydTableField.Enabled      := AlpineLogin;
  usegooglemapsLabel.visible    := AlpineLogin or (mFireid='15026');
  usegooglemapsField.visible    := usegooglemapsLabel.visible;
  GoogleZoomLabel.Visible       := AlpineLogin;
  GOOGLEHYDZOOMField.Visible    := AlpineLogin;
  Googleexplanation.Visible     := AlpineLogin;
  HydGraphicsField.Visible      := AlpineLogin;
  BASEKMLURLField.Visible       := AlpineLogin;
  BaseKMLUrlLabel.Visible       := AlpineLogin;
  step1label.Caption            := '1.  Delete the KML Files in www.alpinesoftware.com/gps/'+ASCFdid;
  step4label.Caption            := '4.  Upload the KML Files to www.alpinesoftware.com/gps/'+ASCFdid;
end;
                                                                    
procedure TGISSetForm.GISLayerBrowseReplicate(Sender: TObject);
var iGisLayerID        : Integer;
    iNewGISLayerID     : Integer;
    iNewGISLayerIconid : Integer;
begin
  inherited;
  if not BooleanMessageDlg('Replicate Current Layer?') then exit;
  iGisLayerID := anystrtoint(GISLayerBrowse.GetValue('GISLAYERID'));
  iNewGISLayerid := AlpineReplicateRecord('GISLAYER',iGisLayerID);
  try
    Open_query('REPGISLAYERICON',False,'SELECT * FROM GISLAYERICON WHERE GISLAYERID = '+inttostr(iGisLayerId));
    while not A('REPGISLAYERICON').eof do begin
      iNewGISLayerIconid := AlpineReplicateRecord('GISLAYERICON',GetField('REPGISLAYERICON','GISLAYERICONID').AsInteger);
      runSql('UPDATE GISLAYERICON SET GISLAYERID = '+inttostr(iNewGISLayerId)+' WHERE GISLAYERICONID = '+inttostr(iNewGISLayerIconID));
      A('REPGISLAYERICON').Skip(1);
    end;
  finally
    CloseApollo('REPGISLAYERICON');
  end;

  SetupGISLayerBrowse;
  ShowMessage('Layer Replicated');  
end;

procedure TGISSetForm.GISLayerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GISSETID').AsString := pk;
end;

procedure TGISSetForm.RendShapeButtonClick(Sender: TObject);
Var PathVar     : String;
    FileName    : String;
    ModalResult : Integer;
begin
  inherited;
  PathVar        := GisPathField.Value;
  SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.SHP');
  ModalResult    := SelectFileForm.ShowModal;
  If ModalResult = mrOk then begin
    FileName              := ExtractFileName(SelectFileForm.FileList.FileName);
    RendShapeField.Value  := UpperCase(substr(FileName,1,at('.',FileName)-1));
    SaveButton.Enabled    := true;
  end else if ModalResult = mrCancel then begin 
    RendShapeField.Value  := '';
    SaveButton.Enabled    := true;
  end;
  SelectFileForm.Free;
end;

procedure TGISSetForm.HydLayerIDFieldEnter(Sender: TObject);
begin
  inherited;
  If Sender is TAlpineLookup then
    TAlpineLookup(Sender).SqlExpr := 'SELECT * FROM GISLAYER WHERE GISSETID = '+pkValue(pk);
end;

procedure TGISSetForm.DeleteKMLButtonClick(Sender: TObject);
var
  fileList: TStringList;
begin
  inherited;
  fileList := TStringList.create;
  if GetFTPFolderContents('gps','gps2020','alpinesoftware.com','NY12345',filelist) = 550 then begin
    showmessage('Directory does not exist...  attempting to create it');
    if MakeFTPDirectory('gps','gps2020','alpinesoftware.com','NY12345') then
      ShowMessage('Created Directory');
  end else if FileList.Count=0 then
    ShowMessage('No Files in Directory')
  else if BooleanMessageDlg('Delete Files in folder?'+crlf+FileList.Text) then begin
    DeleteFTPFolderFiles('gps','gps2020','alpinesoftware.com','NY12345',filelist);
  end;




end;

procedure TGISSetForm.BackColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then begin
    BackColorField.Text := colortostring(ColorDialog1.Color);
    SaveButton.Enabled  := true;
  end;
end;

procedure TGISSetForm.Button1Click(Sender: TObject);
begin
  inherited;
  rednmx_lat.Text := floattostr(DecimalToMinutes(strtofloat(dec_lat.text)));
  rednmx_long.Text := floattostr(DecimalToMinutes(strtofloat(dec_long.text)));
end;

procedure TGISSetForm.Button2Click(Sender: TObject);
begin
  inherited;
  dec_lat.Text := floattostr(MinutesToDecimal(strtofloat(rednmx_lat.text)));
  dec_long.Text := floattostr(MinutesToDecimal(strtofloat(rednmx_long.text)));

end;

procedure TGISSetForm.Button3Click(Sender: TObject);
var Latitude  : Real;
    Longitude : Real;
    mGisCode  : String;
begin
  inherited;
  mGisCode := sqllookup(pk,'gissetid','gisset','giscode');
  GetLatLongFromStatePlaneYXUsingGisCode(mfireid,mGisCode,GlobalAdoConnection,strtofloat(yvalue.Text),strtofloat(xvalue.Text),Latitude,Longitude);

  xlatvalue.Text  := floattostr(Latitude);
  ylongvalue.Text := floattostr(Longitude);

end;

procedure TGISSetForm.KMLButtonClick(Sender: TObject);
var LocalGISSet : TGISSetVar;
    map         : TGIS_ViewerWnd;
    mFieldList  : TStringList;
    HydrantList : TStringList;
    mHydCode    : String;
    mString     : String;
    mDescr      : String;
    mHyd        : String;
    hyd         : TApolloData;
    iFile,iHyd,i,iField    : Integer;
    mGisCode: String;

    rlat        : Real;
    rlong       : Real;
    GisWithin   : TGisWithin;


    procedure AddToString(m: string);
    begin
      mHyd := mHyd + m+crlf;
    end;
    procedure WriteFile;
    var
      mf: String;
    begin
      iFile := iFile+1;

      mf := ExtractFileDir(ParamStr(0))+'\'+alltrim(fileprefix.text)+'_'+inttostr(iFile)+'.kml';
      deletefile(mf);
      appendstringtofile(mf,'<?xml version="1.0" encoding="UTF-8"?>');
      appendstringtofile(mf,'<kml xmlns="http://www.opengis.net/kml/2.2">');
      appendstringtofile(mf,'<Document>');
      iHyd := 0;

      appendstringtofile(mf,mHyd);

      appendstringtofile(mf,'</Document>');
      appendstringtofile(mf,'</kml>');
      mHyd := '';
    end;
begin
  If anystrtofloat(StartLatField.Value)=0 then begin
    showmessage('You must set the starting latitude/longitude in the General Tab');
    exit;
  end;
  If (kmlhydrant.Value='') or (anystrtofloat(kmlmiles.Value)=0) then begin
    showmessage('You must set both the KML Hydrant and Miles');
    exit;
  end;

  mHydCode    := sqllookup(kmlhydrant.Value,'GISLAYERID','GISLAYER','SHAPEFILE');
  LocalGisSet := TGisSetVar.Create;
  Map         := TGIS_ViewerWnd.Create(esritab);
  map.parent  := esritab;

  mGisCode := sqllookup(pk,'gissetid','gisset','giscode');
  LoadGisSetVar(LocalGisSet, mGisCode);
  CreateMap(GlobalAdoConnection, LocalGISSet, Map);

  mFieldList := TStringList.Create;
  if mGisCode='BELGIUM' then begin
    RunSql('delete from hyd where userc1 = '+AddExpr('ESRI'));
  
    mFieldList.Add('HYDNUM');
    mFieldList.Add('CAD_COL');
    mFieldList.Add('MAINSIZE');
    mFieldList.Add('LOCATION');
    mFieldList.Add('STREET');

  end else if mfireId='12345' then
    mFieldList.Add('LOCATION')
  else if mfireId='07130' then
    mFieldList.Add('facilityid')
  else if mfireId='30057' then
    mFieldList.Add('facilityid')

  else if substr(mfireId,1,2)='52' then 
    mFieldList.Add('ID1')
  else if mfireId='30037' then 
    mFieldList.Add('LINEOFBUSI')

  else if mfireId='18200' then
    mFieldList.Add('OBJECTID')
  else if mfireid = ('44012') then begin
    mFieldList.Add('HYDRANT_NU');
    mFieldList.Add('TAPE_COLOR');
    mFieldList.Add('LOCATION_D');
  end else if mfireid = ('20019') then begin
    mFieldList.Add('hydrant_id');
    mFieldList.Add('location');
    mFieldList.Add('main_size');
  end else if mfireid = 'B3580' then begin
    mFieldList.Add('HYDRANT_id');
    mFieldList.Add('COLOR');
    mFieldList.Add('MAIN_SIZE');
    mFieldList.Add('location');
  end else if mfireid = '30036' then begin         //lynbrook
    RunSql('delete from hyd where userc1 = '+AddExpr('ESRI'));
    mFieldList.Add('OBJECTID');
    mFieldList.Add('MAINSIZE');
    mFieldList.Add('FIREDIST');
  end;

  HydrantList := GetWithinFeet(Map,LocalGisSet,anystrtofloat(StartLatField.Value),anystrtofloat(StartLongField.Value),round(5280*anystrtofloat(kmlmiles.Value)),mHydCode,mFieldList);
  hyd := open_query(true,'select * from hyd where 1=2');



  if HydrantList.Count = 0 then
    ShowMessage('None Found!')
  else begin
    Gauge.maxValue := HydrantList.Count-1;
    Gauge.progress := 0;
    iFile := 0;
    iHyd := 0;
    mHyd := '';
    for i := 0 to HydrantList.Count-1 do begin
      application.processmessages;
      iHyd := iHyd + 1;
      if iHyd > 950 then
        WriteFile;
      Gauge.progress := Gauge.progress + 1;
      GisWithin := TGisWithin(HydrantList.Objects[i]);
      mString := floattostr(giswithin.latitude)+','+floattostr(giswithin.longitude);
      AddToString('<Placemark>');
      AddToString('<name>Hydrant'+GisWithin.FieldValues[0]+'</name>');


      mDescr := '';
      if mGisCode='BELGIUM' then begin
        mDescr := '';
        if GisWithin.FieldValues[4]<>'' then
          mDescr := mDescr + 'Street:'+alltrim(GisWithin.FieldValues[4])+';';
        if GisWithin.FieldValues[3]<>'' then
          mDescr := mDescr + 'Verbal:'+alltrim(GisWithin.FieldValues[3])+';';
        if GisWithin.FieldValues[2]<>'' then
          mDescr := mDescr + 'Main:'+alltrim(GisWithin.FieldValues[2])+';';
        if GisWithin.FieldValues[1]<>'' then
          mDescr := mDescr + 'Color:'+alltrim(GisWithin.FieldValues[1])+';';
          hyd.insert;
          getfield(hyd,'hydcode').AsString := GisWithin.FieldValues[0];
          getfield(hyd,'mainsize').AsFloat :=AnyStrToFloat(alltrim(GisWithin.FieldValues[2]));
          getfield(hyd,'location').AsString :=GisWithin.FieldValues[3];
          getfield(hyd,'street').AsString :=GisWithin.FieldValues[4];
          getfield(hyd,'userc1').AsString :='ESRI';
          getfield(hyd,'latitude').AsString :=formatfloat('####0.0000000',giswithin.latitude);
          getfield(hyd,'longitude').AsString :=formatfloat('####0.0000000',giswithin.longitude);
          hyd.Post;


      end else if (mfireid='12345') then
        mDescr := GisWithin.FieldValues[0]
      else if mfireId='30057' then begin
        mDescr := 'Imported from ESRI';
        hyd.insert;
        getfield(hyd,'hydcode').AsString := GisWithin.FieldValues[0];
        getfield(hyd,'userc1').AsString :='ESRI';
        getfield(hyd,'sourceimport').AsString :='06_24_2009 FIREHYDRANTS.DBF Shape File';
        getfield(hyd,'dateimport').AsDateTime := Now;
        getfield(hyd,'latitude').AsString :=formatfloat('####0.0000000',giswithin.latitude);
        getfield(hyd,'longitude').AsString :=formatfloat('####0.0000000',giswithin.longitude);
        hyd.Post;


      end else if (mfireid='30037') then begin
        mDescr := 'Converted from GIS Layer';
        TableInsert('HYD',['HYDCODE','LOCATION','USERC1','LATITUDE','LONGITUDE'],
          ['ESRI'+inttostr(i),mDescr,'ESRI',formatfloat('####0.0000000',giswithin.latitude),formatfloat('####0.0000000',giswithin.longitude)]);

      end else if (mfireid = '12345') or (mfireid = '18200') or (mfireid = '07130')  or (mfireid = '52051') then begin
        mDescr := 'HydID:'+GisWithin.FieldValues[0];

      end else if mfireid = '44012' then begin
        if GisWithin.FieldValues[1]<>'' then
          mDescr := mDescr + 'Color:'+GisWithin.FieldValues[2]+'; ';
        mDescr := mDescr + GisWithin.FieldValues[2];
      end else if (mfireid = '20019') then begin
        mDescr :=  GisWithin.FieldValues[1]+'; Size:'+GisWithin.FieldValues[2]+'; ';

      end else if (mfireid = 'B3580') then begin
        if GisWithin.FieldValues[1]<>'' then
          mDescr := mDescr + 'Color:'+GisWithin.FieldValues[1]+'; ';
        mDescr := mDescr + 'Size:'+GisWithin.FieldValues[2]+'; ';
        mDescr := mDescr + GisWithin.FieldValues[3];
      end else if (mfireid = '30036') then begin
          TableInsert('HYD',['HYDCODE','MAINSIZE','LOCATION','USERC1','LATITUDE','LONGITUDE'],
            [GisWithin.FieldValues[0],GisWithin.FieldValues[1],GisWithin.FieldValues[2],'USERC1',formatfloat('####0.0000000',giswithin.latitude),formatfloat('####0.0000000',giswithin.longitude)]);


      end;

      mDescr := SearchAndReplace(mDescr,'&','and');
        AddToString('<description>'+mDescr+'</description>');
        AddToString('<Style><IconStyle><Icon><href>http://www.alpinesoftware.com/images/mapicons/fire-hydrant-2.png</href></Icon></IconStyle></Style>');
        AddToString('<Point>');
        AddToString('<coordinates>'+formatfloat('####0.0000000',MinutesToDecimal(giswithin.longitude))+','+formatfloat('####0.0000000',MinutesToDecimal(giswithin.latitude))+'</coordinates>');
        AddToString('</Point>');
        AddToString('</Placemark>');
    end;
    WriteFile;
  end;
  hyd.free;


  LocalGisSet.Free;
  ClearAndFreeStringList(HydrantList);
  mFieldList.Free;
  showmessage('done');
end;

procedure TGISSetForm.GisLayerTabShow(Sender: TObject);
begin
  inherited;

  SetupGISLayerBrowse;
end;


procedure TGISSetForm.kmllayerstabShow(Sender: TObject);
begin
  inherited;
  KmlLayersBrowse.Setup('KMLLAYERS','GISSETID',PK,TKMLLayerForm,GISLayerNewRecord);
  KmlLayersBrowse.FixedRowHeight := 32;
end;

procedure TGISSetForm.ReplicateButtonClick(Sender: TObject);
var mNewCode          : String;
    iNewGISSETID      : Integer;
    iNewGisLayerID    : Integer;
    iNewGisLayerIconID: Integer;
begin
  inherited;
  If not BooleanMessageDlg('Use this utility to replicate the currrently selected Mapping Configuration.  Would you like to continue?') then
    exit;
  If not InputDlg('New Code', 'Enter New Code:',mNewCode,'!!!!!!!!') then
    exit;
  iNewGISSETID := AlpineReplicateRecord('GISSET',anystrtoint(pk));
  RunSql('UPDATE GISSET SET GISCODE = '+AddExpr(mNewCode)+' WHERE GISSETID = '+inttostr(iNewGISSETID));

  Open_Query('GISLAYER',False,'SELECT GISLAYERID FROM GISLAYER WHERE GISSETID = '+PkValue(pk));
  while not A('GISLAYER').eof do begin
    iNewGisLayerID := AlpineReplicateRecord('GISLAYER',GetField('GISLAYER','GISLAYERID').AsInteger);
    RunSql('UPDATE GISLAYER SET GISSETID = '+inttostr(iNewGisSetID)+' WHERE GISLAYERID = '+inttostr(inewGISLayerID));
    Open_Query('GISLAYERICON',False,'SELECT GISLAYERICONID FROM GISLAYERICON WHERE GISLAYERID = '+pkValue(GetField('GISLAYER','GISLAYERID').AsString));
    while not A('GISLAYERICON').eof do begin
      iNewGisLayerIconID := AlpineReplicateRecord('GISLAYERICON',GetField('GISLAYERICON','GISLAYERICONID').AsInteger);
      RunSql('UPDATE GISLAYERICON SET GISLAYERID = '+inttostr(iNewGISLayerID)+' WHERE GISLAYERICONID = '+inttostr(iNewGisLayerIconID));
      A('GISLAYERICON').Skip(1);
    end;
    CloseApollo('GISLAYERICON');
    A('GISLAYER').Skip(1);

  end;
  CloseApollo('GISLAYER');

  ShowMessage('Configuration Replicated.');
end;

procedure TGISSetForm.SELECTFONTClick(Sender: TObject);
begin
  inherited;
  If StaticFontfield.Value <> '' then
    StringToFont( StaticFontfield.Value,  FontDialog1.Font);
  If FontDialog1.Execute then
    StaticFontfield.Value := FontToString(FontDialog1.Font);
end;

function TGISSetForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  result := true;
end;

procedure TGISSetForm.CancelButtonClick(Sender: TObject);
begin
  inherited;
  CancelVar := true;
end;

function TGISSetForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  result := true;
end;

procedure TGISSetForm.clearrenderinglayerClick(Sender: TObject);
begin
  inherited;
  RendShapeField.Value := '';
end;

procedure TGISSetForm.CreateGoogleKMLClick(Sender: TObject);
var
  mFileStringList: TStringList;
  bsuccess: Boolean;
  mMessage: String;
  i: Integer;
begin
  inherited;
  mFileStringList := TStringList.Create;
  CommonCreateAndAddKMLHydrantsToStringList(GlobalAdoConnection,'rednmx_'+ASCFdid,mFileStringList);
  if BooleanMessageDlg('Would you like to upload to http://www.alpinesoftware.com/gps?') then begin
    bSuccess := True;
    mMessage := 'Add these entries to the KML Layers in Mapping Setup:'+crlf;
    for i := 0 to mFileStringList.Count-1 do begin
      if UploadMobileFile(mFileStringList[i],'gps','gps2020','alpinesoftware.com',ASCFdid) then
        mMessage := mMessage+'http://www.alpinesoftware.com/gps/'+ascfdid+'/'+ExtractFileName(mFileStringList[i])+crlf
      else
        bSuccess := False;
    end;
    if bSuccess then begin
      appendtolog(mMessage);
      ShowMessage(mMessage+crlf+crlf+'These KML Layer have been written to the rednmx.log for your convenience')
    end else
      ShowMessage('There was an error uploading to alpinesofware.com');
  end else
    showmessage('done - Check for files in folder '+extractFileDir(paramStr(0)));

  mFileStringList.Free;
end;




procedure TGISSetForm.DirectionbuttonClick(Sender: TObject);
Var TotalReviewVar   : Integer;
    TotalCompleteVar : Integer;
    DirectionNarr    : String;
    StartTimeVar     : TDateTime;
begin
  inherited;
  if mfireid <> '28019' then begin
    showmessage('This routine no longer supported because it requires Google API Key.  Talk to Mark');
    exit;
  end;
  DirectionButton.Enabled := false;

  Gauge.Visible           := true;
  TotalReviewVar          := 0;
  TotalCompleteVar        := 0;
  Application.ProcessMessages;

  Open_Query('PROPDIRECT',true,'SELECT * FROM PROPDIRECT WHERE 1=2');
  Open_Query('DISPLOC',false,'SELECT CODE, DISPLOCID, LATITUDE, LONGITUDE, SHORTDESCR FROM DISPLOC WHERE ESRI = ' + AddExpr('Y'));
  Open_Query('PROP',false,'SELECT STRNUM, STREET, CROSS1, PROPID, LATITUDE, LONGITUDE FROM PROP ' +
                          ' WHERE LATITUDE > 0 ' +
                          ' AND PROPTYPEID = ' + AddExpr('1') +
                          ' ORDER BY STREET, STRNUM');
  Gauge.MaxValue          := A('PROP').QueryRecCount;

  CancelVar               := false;
  CancelButton.Enabled    := true;

  StartTimeField.Caption  := FormatDateTime('MM/DD/YYYY HH:NN',Now);
  StartTimeVar            := Now;

  While Not A('PROP').Eof and Not CancelVar do begin
    TotalReviewVar           := TotalReviewVar + 1;
    AddressLabel.Caption     := tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET');
    TotalReviewField.Caption := IntToStr(TotalReviewVar);
    ElapsedField.Caption     := FormatDateTime('HH:NN:SS',Now - StartTimeVar);
    Application.ProcessMessages;

    A('DISPLOC').GoTop;
    While Not A('DISPLOC').Eof and Not CancelVar do begin
      If (GetField('DISPLOC','LATITUDE').AsFloat <> 0) and (GetField('DISPLOC','LONGITUDE').AsFloat <> 0) and
         (GetField('PROP','LATITUDE').AsFloat <> 0)    and (GetField('PROP','LONGITUDE').AsFloat <> 0) then begin

        A('PROPDIRECT').UpdateSQL('SELECT * FROM PROPDIRECT WHERE PROPID = ' + GetField('PROP','PROPID').AsString + ' AND DISPLOCID = ' + GetField('DISPLOC','DISPLOCID').AsString);

        If Not A('PROPDIRECT').RecordsExist then begin
          DirectionNarr  :=
          GetGoogleDirectionNarr(GetField('DISPLOC','LATITUDE').AsFloat,GetField('DISPLOC','LONGITUDE').AsFloat,GetField('PROP','LATITUDE').AsFloat,GetField('PROP','LONGITUDE').AsFloat);
          DirectionNarr  := AnsiReplaceStr(DirectionNarr,'Location 1',GetField('DISPLOC','SHORTDESCR').AsString);
          If GetField('PROP','STRNUM').AsString = '' then
            DirectionNarr  := AnsiReplaceStr(DirectionNarr,'Location 2',GetField('PROP','STREET').AsString + '/' + GetField('PROP','CROSS1').AsString)
          else
            DirectionNarr  := AnsiReplaceStr(DirectionNarr,'Location 2',GetField('PROP','STRNUM').AsString + ' ' + GetField('PROP','STREET').AsString);

          If DirectionNarr = '' then
            DirectionNarr := 'Not available';
          A('PROPDIRECT').Append;
          GetField('PROPDIRECT','PROPID').AsString    := GetField('PROP','PROPID').AsString;;
          GetField('PROPDIRECT','DISPLOCID').AsString := GetField('DISPLOC','DISPLOCID').AsString;
          GetField('PROPDIRECT','NARR').AsString := DirectionNarr;
          A('PROPDIRECT').Post;

          TotalCompleteVar           := TotalCompleteVar + 1;
          DispLocCodeLabel.Caption   := tdbfield('DISPLOC','CODE');
          TotalCompleteField.Caption := IntToStr(TotalCompleteVar);
          Application.ProcessMessages;
        end;
      end;
      A('DISPLOC').Skip(1);
      Sleep(3000);
    end;

    A('PROP').Skip(1);
  end;

  CloseApollo('PROP');
  CloseApollo('PROPDIRECT');
  CloseApollo('DISPLOC');
  DirectionButton.Enabled := true;
  CancelButton.Enabled    := false;
end;

procedure TGISSetForm.ESRIGeoCodeButtonClick(Sender: TObject);
Var Latitude   : String;
    Longitude  : String;
    PlotVar    : Integer;
    mSql, mIntersection: String;
    bStreetZipCityLat,bContinue: Boolean;
begin
  inherited; 
  ShowMessage('Important... after this routine runs check the log file for any "Over Query Limit" errors');
  GoogleGeocodeApiKey := REDNMX_GOOGLE_MAP_KEY;
  try
    mIntersection := '';
//    PropAddr := '1';
    
    if includeintersections.checked then begin
      if PropInt <> '' then
        mIntersection := ' OR (PROPTYPEID = '+PropInt+') '
      else
        ShowMessage('"Intersection Type" must be specified in Property Setup - will not be able to do Intersections');
    end;
    mSql := 'SELECT PROPTYPEID,CROSS1,LATITUDE, CITY, STATE, ZIP, STREET, STRNUM, PROPID FROM PROP WHERE ((PROPTYPEID = ' + PropAddr +') '+mIntersection+ ') AND (LATITUDE IS NULL OR LATITUDE = 0) ORDER BY STREET, STRNUM';
    Open_Query('PROP',false,mSql);

    Gauge.MaxValue := A('PROP').QueryRecCount;
    Gauge.Visible  := true;
    PlotVar        := 0;

    While Not A('PROP').Eof do begin
      PropLabel.Caption := tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET');

      bStreetZipCityLat := Not (tdbfield('PROP','STREET') = '') and
                     (GetField('PROP','LATITUDE').AsFloat = 0) and
                     Not ((tdbfield('PROP','ZIP') = '') and (tdbfield('PROP','CITY') = ''));


      if includeintersections.Checked and (tdbfield('PROP','PROPTYPEID')=PropInt) then
        bContinue := Not (tdbfield('PROP','CROSS1') = '') and bStreetZipCityLat
      else
        bContinue := Not (tdbfield('PROP','STRNUM') = '') and bStreetZipCityLat;

      If bContinue then begin
        Latitude  := '';
        Longitude := '';
        SetMapLatLong(alltrim(tdbfield('PROP','STRNUM')),tdbField('PROP','STREET') ,tdbField('PROP','CROSS1') , tdbfield('PROP','CITY'), tdbfield('PROP','STATE'), tdbfield('PROP','ZIP'), Latitude, Longitude);
        Sleep(200);  // needed to prevent 5 requests per second quota limit
        If Latitude > '' then begin
          PlotVar           := PlotVar + 1;
          PlotField.Caption := IntToStr(PlotVar);
          RunSQL('UPDATE PROP SET LATITUDE = ' + Latitude + ', LONGITUDE = ' + Longitude + ', DATETIMEMAP = ' + DTExpr(Now) + ' WHERE PROPID = ' + edbfield('PROP','PROPID'));
        end;
      end;
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('PROP').Skip(1);
    end;
    CloseApollo('PROP');
    Gauge.Progress := 0;
  finally
    GoogleGeocodeApiKey:= '';
  end;  
  ShowMessage('Done');
end;

procedure TGISSetForm.ExternalButtonClick(Sender: TObject);
Var ErrorString    : String;
    SourceDatabase : TAlpineAdoConnection;
    GISLayerID     : String;
    FieldNum       : Integer;
    FieldName      : String;
    OldGisLayerID  : String;
    OldGISSetID    : String;
begin
  inherited;
  SourceDataBase  := TAlpineAdoConnection.Create(self,iif(ExtDatabaseField.Text='','',ExtServerField.Text + ':' + ExtDatabaseField.Text),ExtUserNameField.Text,ExtPasswordField.Text,AnyStrToInt(ExtTableTypeField.Text));
  If SourceDataBase.Connect(ErrorString) then begin
    Open_Query(SourceDatabase,'SOURCEGISSET',false,'SELECT * FROM GISSET WHERE GISCODE = ' + AddExpr(ExtGisCodeField.Text));
    DescrField    .Text  := alltrim(GetField('SOURCEGISSET','DESCR').AsString);
    GISPathField  .Text  := alltrim(GetField('SOURCEGISSET','GISPATH').AsString);
    IconPathField .Text  := alltrim(GetField('SOURCEGISSET','ICONPATH').AsString);
    MapTypeField  .Text  := alltrim(GetField('SOURCEGISSET','MAPTYPE').AsString);
    MeterFeetField.Text  := alltrim(GetField('SOURCEGISSET','METERFEET').AsString);
    RendShapeField.Text  := alltrim(GetField('SOURCEGISSET','RENDSHAPE').AsString);
    BackColorField.Text  := alltrim(GetField('SOURCEGISSET','BACKCOLOR').AsString);
    StartLatField .Text  := alltrim(GetField('SOURCEGISSET','STARTLAT').AsString);
    StartLongField.Text  := alltrim(GetField('SOURCEGISSET','STARTLONG').AsString);
    StartExtField .Text  := alltrim(GetField('SOURCEGISSET','STARTEXT').AsString);
    IncScaleField .Text  := alltrim(GetField('SOURCEGISSET','INCSCALE').AsString);
    ProjectionField.Text := alltrim(GetField('SOURCEGISSET','PROJECTION').AsString);
    OldGISSetID          := alltrim(GetField('SOURCEGISSET','GISSETID').AsString);
    CloseApollo('SOURCEGISSET');

    Open_Query('GISLAYER',true,'SELECT * FROM GISLAYER WHERE 1=2');
    Open_Query(SourceDatabase,'SOURCEGISLAYER',false,'SELECT * FROM GISLAYER WHERE GISSETID = ' + pkvalue(OldGISSetID));
    While Not A('SOURCEGISLAYER').Eof do begin
      A('GISLAYER').UpdateSQL('SELECT * FROM GISLAYER WHERE 1=2');
      A('GISLAYER').Append;
      GetField('GISLAYER','GISSETID').AsString := PK;

      For FieldNum := 0 to A('GISLAYER').FieldCount-1 do begin
        FieldName := A('GISLAYER').FieldName(FieldNum);
        If Not (FieldName = 'GISSETID') and Not (FieldName = 'GISLAYERID') and (A('SOURCEGISLAYER').FindField(FieldName)<>nil) then
          GetField('GISLAYER',FieldName).AsString := alltrim(GetField('SOURCEGISLAYER',FieldName).AsString);
      end;
      A('GISLAYER').Post;
      GisLayerID    := GetField('GISLAYER','GISLAYERID').AsString;
      OldGisLayerID := GetField('SOURCEGISLAYER','GISLAYERID').AsString;

      Open_Query('GISLAYERICON',true,'SELECT * FROM GISLAYERICON WHERE 1=2');
      Open_Query(SourceDatabase,'SOURCEGISLAYERICON',true,'SELECT * FROM GISLAYERICON WHERE GISLAYERID = ' + OldGisLayerID);
      While Not A('SOURCEGISLAYERICON').Eof do begin
        A('GISLAYERICON').UpdateSQL('SELECT * FROM GISLAYERICON WHERE 1=2');
        A('GISLAYERICON').Append;
        GetField('GISLAYERICON','GISLAYERID').AsString := GisLayerID;

        For FieldNum := 0 to A('GISLAYERICON').FieldCount-1 do begin
          FieldName := A('GISLAYERICON').FieldName(FieldNum);
          If Not (FieldName = 'GISLAYERID') and Not (FieldName = 'GISLAYERICONID') and (A('SOURCEGISLAYERICON').FindField(FieldName)<>nil) then
            GetField('GISLAYERICON',FieldName).AsString := alltrim(GetField('SOURCEGISLAYERICON',FieldName).AsString);
        end;
        A('GISLAYERICON').Post;
        A('SOURCEGISLAYERICON').Skip(1);
      end;
      CloseApollo('GISLAYERICON');
      CloseApollo('SOURCEGISLAYERICON');

      A('SOURCEGISLAYER').Skip(1);
    end;
    CloseApollo('GISLAYER');
    CloseApollo('SOURCEGISLAYER');
    SaveButton.Enabled := true;
    SourceDatabase.Free;
    ShowMessage('GIS Maps Loaded');
  end;
end;


procedure TGisSetForm.SetupGISLayerBrowse;
begin
  GISLayerBrowse.Setup('GISLAYER','GISSETID',PK,TGISLayerForm,GISLayerNewRecord);
  GISLayerBrowse.ShowReplicateButton    := AlpineLogin;
  GisLayerBrowse.FReplicateButton.Align := alright;
  If AlpineLogIn then
    GisLayerBrowse.FDeleteButton.Position := bpmiddle;
  GisLayerBrowse.FReplicateButton.Align := alleft;
end;

procedure TGISSetForm.StaticIconButtonClick(Sender: TObject);
Var FileName    : String;
    PathVar     : String;
    ModalResult : Integer;
begin
  inherited;
  PathVar        := IconPathField.Value;
  SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.ICO');
  ModalResult    := SelectFileForm.ShowModal;
  If ModalResult = mrOk then begin
    FileName              := ExtractFileName(SelectFileForm.FileList.FileName);
    StaticIconField.Value := UpperCase(substr(FileName,1,at('.',FileName)-1));
    SaveButton.Enabled    := true;
  end else if ModalResult = mrCancel then begin
    StaticIconField.Value := '';
    SaveButton.Enabled    := true;
  end;
  SelectFileForm.Free;
end;

procedure TGISSetForm.GisSetControlChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := Not (GisSetControl.ActivePage = GisLayerTab);
end;

procedure TGISSetForm.DoAfterSetViewOnly;
begin
  StaticFontField.Enabled := False;  
end;

procedure TGISSetForm.GenTabShow(Sender: TObject);
begin
  inherited;
  MapTypeLabel  .Visible := (ProjectionField.Text = '');
  MeterFeetLabel.Visible := (ProjectionField.Text = '');
  MapUnitLabel  .Visible := (ProjectionField.Text = '');
  MapUnitDescr  .Visible := (ProjectionField.Text = '');
  MapTypeField  .Visible := (ProjectionField.Text = '');
  MeterFeetField.Visible := (ProjectionField.Text = '');
  MapUnitField  .Visible := (ProjectionField.Text = '');
end;

procedure TGISSetForm.GEOButtonClick(Sender: TObject);
Var SeekList      : TStringList;
    PreStreetList : TStringList;
    SeekVar       : String;
    SeekNum       : Integer;
    PreNum        : Integer;
    GeoVar        : TGisSetVar;
    rLatitude     : Real;
    rLongitude    : Real;
    StreetVar     : String;
    ParcelDbf     : String;
    ParcelCdx     : String;
    PlottedVar    : Integer;
    map           : TGIS_ViewerWnd;
begin
  GeoVar            := TGisSetVar.Create;
  Map               := TGIS_ViewerWnd.Create(esritab);
  map.parent        := esritab;
  ParcelDbf         := GISPathField.Value + '\'+ ParcelShapeField.Value + '.DBF';
  ParcelCdx         := GISPathField.Value + '\'+ ParcelShapeField.Value + '.CDX';

  If Not FileExists(ParcelCdx) then begin
    Net_Open(ParcelDbf,'E','PARCEL');
    A('PARCEL').IndexTag('','ADDRESS',ParcelExprField.Value,0,False,'');
    CloseApollo('PARCEL');
  end;

  LoadGisSetVar(GeoVar, GisCode);

  CreateMap(GlobalAdoConnection, geovar, Map);

  GeoVar.MeterFeetVar  := StrToFloat(MeterFeetField.Value);
  GeoVar.gisPath       := GISPathField.Value;
  GeoVar.MapType       := MapTypeField.Value;
  ScalarConstant(GeoVar);
  GeoVar.ParcelShape   := ParcelShapeField.Value;
  GeoVar.ParcelField   := ParcelFieldField.Value;
  PlottedVar           := 0;

  Net_Open(ParcelDbf,'S','PARCEL');
  A('PARCEL').SetOrder(1);

  Open_Query('PROP',false,'SELECT LATITUDE, CITY, ZIP, STREET, STRNUM, PROPID FROM PROP WHERE PROPTYPEID = ' + PropAddr + ' AND LATITUDE IS NULL ORDER BY STREET, STRNUM');
  Gauge.MaxValue     := A('PROP').QueryRecCount;
  Gauge.Visible      := true;
  TotalField.Caption := IntToStr(Gauge.MaxValue);

  While Not A('PROP').Eof do begin
    If Not (tdbfield('PROP','STRNUM') = '') and Not (tdbfield('PROP','STREET') = '') and Not (tdbfield('PROP','ZIP') = '')  then begin
      PreStreetList := GetStreetPre(tdbfield('PROP','STREET'));
      For PreNum := 0 to PreStreetList.Count-1 do begin
        SeekList := GetStreetAbbreviate(PreStreetList[PreNum]+ ' ');
        For SeekNum := 0 to SeekList.Count-1 do begin
          SeekVar  := UpperCase(substr(dbfield('PROP','ZIP'),1,5) + alltrim(tdbfield('PROP','STRNUM'))) + alltrim(SeekList[SeekNum]);
          If dbseek('PARCEL',SeekVar,false) then begin

            GetLatLongFromRecNo(GeoVar,GeoVar.GisLayers,ParcelShapeField.Value,A('PARCEL').RecNo,rLatitude,rLongitude);
            If (rLatitude <> 0) and (rLongitude <> 0) then begin
              RunSQL('UPDATE PROP SET LATITUDE = ' + FloatToStr(rLatitude) + ', LONGITUDE = ' + FloatToStr(rLongitude) + ', DATETIMEMAP = ' + DTExpr(Now) + ' WHERE PROPID = ' + edbfield('PROP','PROPID'));
              PlottedField.Caption := IntToStr(PlottedVar);
              PlottedVar           := PlottedVar + 1;
            end;
          end;     
        end;
      end;
    end;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PROP').Skip(1);
  end;
  SeekList.Free;
  CloseApollo('PROP');
  CloseApollo('PARCEL');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

end.  
