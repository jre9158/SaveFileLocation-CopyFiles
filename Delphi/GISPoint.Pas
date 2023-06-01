unit GISPoint;

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
  TGISPointForm = class(TNormalBaseForm)
    Panel1: TPanel;
    MapPanel: TAlpinePanel;
    Panel2: TPanel;
    Panel0B: TAlpinePanel;
    Label5: TLabel;
    InvNumLabel: TLabel;
    Label1: TLabel;
    Label28: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    IconNameLabel: TLabel;
    Label6: TLabel;
    GISPointTypeIDField: TAlpineLookup;
    DescField: TAlpineEdit;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    DateTimeStartField: TAlpineDateTime;
    GISPointStatusIDField: TAlpineLookup;
    AlpineDateTime1: TAlpineDateTime;
    IconField: TAlpineEdit;
    IconButton: TAlpineGlowButton;
    LocationField: TAlpineEdit;
    LatitudeDecField: TAlpineEdit;
    LongitudeDecField: TAlpineEdit;
    UpdateLatLongButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    Label7: TLabel;
    MapLabelField: TAlpineEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
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
    MinutesToDecButton: TAlpineGlowButton;
    Label13: TLabel;
    CodeField: TAlpineEdit;
    procedure IconButtonClick(Sender: TObject);
    procedure UpdateLatLongButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PlotButtonClick(Sender: TObject);
    procedure MinutesToDecButtonClick(Sender: TObject);
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
    class procedure SpecialClick(Sender: TObject); override;
    Class procedure ReplicateGisPoint(Sender: TObject);
  end;

var
  GISPointForm: TGISPointForm;

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

procedure TGISPointForm.FormCreate(Sender: TObject);
begin
  inherited;
  WebGMaps1             := TWebGMaps.Create(nil);
  WebGMapsGeocoding1    := TWebGMapsGeocoding.Create(nil);
end;

procedure TGISPointForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Try
    FreeAndNil(WebGMaps1);
    FreeAndNil(WebGMapsGeocoding1);
  except
  end;  
end;

procedure TGISPointForm.FormShow(Sender: TObject);
begin
  If (anystrtofloat(LatitudeField.value) <> 0) and (anystrtofloat(LongitudeField.value) <> 0) then
    PlotAddress;
end;

procedure TGISPointForm.PlotAddress;
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

  DecLat                       := MinutesToDecimal(StrToFloat(LatitudeField.Value));
  DecLong                      := MinutesToDecimal(StrToFloat(LongitudeField.Value));

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

procedure TGISPointForm.IconButtonClick(Sender: TObject);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  If mForm <> nil then begin
    PathVar        := 'C:\REDNMXMAP\ICON\';
    SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.ICO');
    If SelectFileForm.ShowModal = mrOk then begin
      FileName             := ExtractFileName(SelectFileForm.FileList.FileName);
      IconField.Value      := UpperCase(substr(FileName,1,at('.',FileName)-1));
      SaveButton.Enabled   := true;
    end;
    SelectFileForm.Free;
  end;
end;

procedure TGISPointForm.MarkerDragEnd(Sender: TObject; MarkerTitle:String; IdMarker:Integer; Latitude,Longitude:Double);
begin
  If BooleanMessageDlg('Update coordinates with new location?') then begin
    LatitudeField.Text     := floattostr(DecimalToMinutes(Latitude));
    LongitudeField.Text    := floattostr(DecimalToMinutes(Longitude));
    MinutesToDecButtonClick(self);    
    SaveButton.Enabled     := True;
  end;
end;

procedure TGISPointForm.MinutesToDecButtonClick(Sender: TObject);
begin
  inherited;
  If (anystrtofloat(LatitudeField.value) <> 0) and (anystrtofloat(LongitudeField.value) <> 0) then begin
    LatitudeDecField.Value  := floattostr(MinutesToDecimal(anystrtofloat(LatitudeField.value)));
    LongitudeDecField.Value := floattostr(MinutesToDecimal(anystrtofloat(LongitudeField.value)));
  end;
end;

class procedure TGISPointForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString         := ' ';
  DataSet.FieldbyName('DATETIMEENT').AsDateTime := Now;
end;

procedure TGISPointForm.PlotButtonClick(Sender: TObject);
Var Latitude : String;
    Longitude: String;
begin
  inherited;
  SetMapLatLong(StrNumfield.Value,StreetField.Value,Cross1Field.Value,CityField.Value,StateField.Value,ZipField.Value,Latitude,Longitude);
  try
    LatitudeField.Value  := formatfloat('###0.0000000',anystrtofloat(Latitude));
    LongitudeField.Value := formatfloat('###0.0000000',anystrtofloat(Longitude));
  except
  end;
  If (anystrtofloat(LatitudeField.value) <> 0) and (anystrtofloat(LongitudeField.value) <> 0) then begin
    PlotAddress;
    MinutesToDecButtonClick(self);
  end;  
end;

procedure TGISPointForm.UpdateLatLongButtonClick(Sender: TObject);
begin
  inherited;
  If (anystrtofloat(LatitudeDecField.value) <> 0) and (anystrtofloat(LongitudeDecField.value) <> 0) then begin
    LatitudeField.Value  := floattostr(DecimalToMinutes(anystrtofloat(LatitudeDecField.value)));
    LongitudeField.Value := floattostr(DecimalToMinutes(anystrtofloat(LongitudeDecField.value)));
  end;
end;

class procedure TGISPointForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Replicate Point of Interest';
    m.Onclick := ReplicateGisPoint;
    TNewView(Sender).PopupMenu.Items.Add(m);
  end;
end;

class procedure TGISPointForm.ReplicateGisPoint(Sender: TObject);
var NewGISPointID : Integer;
    GISPointID    : String;
    NewView         : TNewView;
begin
  inherited;
  NewView := nil;
  If Sender is TNormalBaseForm then
    GISPointID := TNormalBaseForm(Sender).Pk
  else if Sender is TMenuItem then begin
    If TMenuItem(Sender).Owner is TNewView then begin
      NewView := TNewView(TMenuItem(Sender).Owner);
      GisPointID := NewView.ViewGrid.GetValue('GISPOINTID')
    end;
  end else begin
    ShowMessage('There was a problem retrieving the Primary Key for the Table');
    exit;
  end;
  If not BooleanMessageDlg('This feature allows you to duplicate this Point of Interest.  Would you like to proceed?') then
    exit;

  NewGISPointID := AlpineReplicateRecord('GISPOINT',strtoint(GISPointID));

  If NewView <> nil then begin
    NewView.ViewGrid.InsertAtCurrentRow;
    NewView.ViewGrid.SetValue('GISPOINTID',NewView.ViewGrid.Row,inttostr(NewGISPointID));
    NewView.RefreshGrid(inttostr(NewGISPointID),'','',True);
  end;
end;

end.
