unit MapBox;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Menus,
  Dialogs,
  NormalBase,
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AlpineLookup,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  AlpineMemo,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  UWebGMapsMarkers,
  UWebGMapsCommon,
  UWebGMapsGeocoding,
  UWebGMaps,
  AlpinePanel;

type
  TMapBoxForm = class(TNormalBaseForm)
    Panel1: TPanel;
    MapPanel: TAlpinePanel;
    Panel2: TPanel;
    Panel0B: TAlpinePanel;
    InvNumLabel: TLabel;
    Label1: TLabel;
    Label28: TLabel;
    Label6: TLabel;
    DescField: TAlpineEdit;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    APIKeyField: TAlpineEdit;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    AlpinePanel2: TAlpinePanel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    StreetField: TAlpineEdit;
    StrNumfield: TAlpineEdit;
    CityField: TAlpineEdit;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    cross1field: TAlpineEdit;
    PlotButton: TAlpineGlowButton;
    Label13: TLabel;
    CodeField: TAlpineEdit;
    Label2: TLabel;
    StyleField: TAlpineEdit;
    Label3: TLabel;
    DefZoomField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlotButtonClick(Sender: TObject);
  private
    { Private declarations }
    WebGMaps1          : TWebGMaps;
    WebGMapsGeocoding1 : TWebGMapsGeocoding;
    mHydrantMarker     : TMarker;
    procedure MarkerDragEnd(Sender: TObject; MarkerTitle:String; IdMarker:Integer; Latitude,Longitude:Double);
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure PlotAddress;
  end;

var
  MapBoxForm: TMapBoxForm;

implementation
uses SecSet,
     SortGridView,
     CommonFunc,
     GenFunc,
     CommonCloud,
     GisDefs,
     GisFunc,
     FormFunc,
     SelectFile;

{$R *.DFM}

procedure TMapBoxForm.FormCreate(Sender: TObject);
begin
  inherited;
  WebGMaps1             := TWebGMaps.Create(nil);
  WebGMapsGeocoding1    := TWebGMapsGeocoding.Create(nil);
end;

procedure TMapBoxForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Try
    FreeAndNil(WebGMaps1);
    FreeAndNil(WebGMapsGeocoding1);
  except
  end;  
end;

procedure TMapBoxForm.FormShow(Sender: TObject);
begin
  If (anystrtofloat(LatitudeField.value) <> 0) and (anystrtofloat(LongitudeField.value) <> 0) then
    PlotAddress;
end;

procedure TMapBoxForm.PlotAddress;
Var AlpineIP : String;
    BoxSize  : String;
    Address  : String;
    qryAddr  : String;
    gpsinfo  : String;
    URL      : String;
    DecLat   : Double;
    DecLong  : Double;
begin
  WebGMaps1.apikey             := REDNMX_GOOGLE_MAP_KEY;
  WebGMaps1.Parent             := MapPanel;
  WebGMaps1.Left               := 0;
  WebGMaps1.Top                := 0;
  WebGMaps1.Align              := alClient;
  WebGmaps1.MapOptions.ZoomMap := 17;
  WebGmaps1.DeleteAllMapMarker;
  DecLat                       := 0;
  DecLong                      := 0;
  WebGMaps1.Markers.Clear;

  DecLat                       := StrToFloat(LatitudeField.Value);
  DecLong                      := StrToFloat(LongitudeField.Value);

  If (not(DecLat = 0) and not(DecLong = 0)) then begin
    try
      gpsinfo := Address+ ' ('+formatfloat('##0.000000',DecimalToMinutes(DecLat)) + ', ' + formatfloat('##0.000000',DecimalToMinutes(DecLong)) + ' | Dec: '+formatfloat('##0.000000',DecLat) + ', ' + formatfloat('##0.000000',DecLong)+')';
      WebGMaps1.MapOptions.DefaultLatitude  := DecLat;
      WebGMaps1.MapOptions.DefaultLongitude := DecLong;
      mHydrantMarker                        := WebGmaps1.Markers.Add(DecLat,DecLong,gpsinfo,'',false,true,true,false,false,0);
      mHydrantMarker.Draggable              := True;
      WebGMaps1.OnMarkerDragEnd             := MarkerDragEnd;
      WebGMaps1.Launch;
    except
    end;
  end;
end;

procedure TMapBoxForm.MarkerDragEnd(Sender: TObject; MarkerTitle:String; IdMarker:Integer; Latitude,Longitude:Double);
begin
  If BooleanMessageDlg('Update coordinates with new location?') then begin
    LatitudeField.Text     := floattostr(Latitude);
    LongitudeField.Text    := floattostr(Longitude);
    SaveButton.Enabled     := True;
  end;
end;

class procedure TMapBoxForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString         := ' ';
  DataSet.FieldbyName('DEFZOOM').AsString       := '15.5';
end;

procedure TMapBoxForm.PlotButtonClick(Sender: TObject);
Var Latitude : String;
    Longitude: String;
begin
  inherited;
  SetMapLatLong(StrNumfield.Value,StreetField.Value,Cross1Field.Value,CityField.Value,StateField.Value,ZipField.Value,Latitude,Longitude);
  try
    LatitudeField.Value  := formatfloat('###0.0000000',MinutesToDecimal(anystrtofloat(Latitude)));
    LongitudeField.Value := formatfloat('###0.0000000',MinutesToDecimal(anystrtofloat(Longitude)));
  except
  end;
  If (Anystrtofloat(LatitudeField.value) <> 0) and (anystrtofloat(LongitudeField.value) <> 0) then begin
    PlotAddress;
  end;
end;


end.
