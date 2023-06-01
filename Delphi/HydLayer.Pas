unit HydLayer;

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
  CommonFunc,
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
  AlpineBlockBrowse,
  alpinecheck,
  AdvGlowButton,
  AlpineGlowButton,
  htmlbtns,
  AdvGroupBox,
  AlpinePanel,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineLookGrid,
  AlpineTMSStringGrid,
  Gauges, AlpineMemo;

type
  THydLayerForm = class(TNormalBaseForm)
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    Panel2: TPanel;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel2: TAlpinePanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Distance1Label: TLabel;
    Label21: TLabel;
    Label1: TLabel;
    Distance2Label: TLabel;
    Label6: TLabel;
    AlpineEdit2: TAlpineEdit;
    ShapeFileField: TAlpineEdit;
    DescrField: TAlpineEdit;
    ShapeExtentField: TAlpineEdit;
    ShapeAliasField: TAlpineEdit;
    ShapeFileButton: TAlpineGlowButton;
    ShapeExtentLwrField: TAlpineEdit;
    GisSetIDField: TAlpineEdit;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Distance3Label: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    LabelField: TAlpineEdit;
    LabelExtentField: TAlpineEdit;
    LabelColorField: TAlpineEdit;
    LabelFontField: TAlpineEdit;
    LabelSizeField: TAlpineEdit;
    LabelDuplicateField: TAlpineCheckBox;
    LabelBoldField: TAlpineCheckBox;
    LabelButton: TAlpineGlowButton;
    BackColorButton: TAlpineGlowButton;
    LabelFontButton: TAlpineGlowButton;
    HydPanel: TAlpinePanel;
    HydBrowse: TAlpineTMSStringGrid;
    Panel3: TPanel;
    PointField: TAlpineCheckBox;
    IconNameLabel: TLabel;
    IconSizeLabel: TLabel;
    IconNameField: TAlpineEdit;
    IconSizeField: TAlpineEdit;
    IconButton: TAlpineGlowButton;
    Gauge: TGauge;
    Label9: TLabel;
    RecCountField: TAlpineEdit;
    Panel1: TPanel;
    AlpinePanel6: TAlpinePanel;
    MapPanel: TPanel;
    AlpinePanel3: TAlpinePanel;
    ShapeFieldNarrField: TAlpineMemo;
    Panel4: TPanel;
    AlpinePanel4: TAlpinePanel;
    AlpinePanel5: TAlpinePanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label17: TLabel;
    Label23: TLabel;
    FDIDLabel: TLabel;
    Label2: TLabel;
    StrNumField: TAlpineEdit;
    StreetField: TAlpineEdit;
    HydCodeField: TAlpineEdit;
    HydCodeTextField: TAlpineEdit;
    LocationField: TAlpineEdit;
    HydStatusIDField: TAlpineLookup;
    HydTypeIDField: TAlpineLookup;
    cityField: TAlpineLookup;
    StateField: TAlpineLookup;
    zipfield: TAlpineEdit;
    HydFdidField: TAlpineLookup;
    N5DistrictIDField: TAlpineLookup;
    HydCodePLField: TAlpineEdit;
    LoadHydBrowse: TAlpineGlowButton;
    LoadHydButton: TAlpineGlowButton;
    Label24: TLabel;
    Label28: TLabel;
    Label25: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    CenterLongitudeField: TAlpineEdit;
    CenterLatitudeField: TAlpineEdit;
    CenterRadiusField: TAlpineEdit;
    CenterCityField: TAlpineLookup;
    CenterStateField: TAlpineLookup;
    CenterZipField: TAlpineEdit;
    CenterStrNumField: TAlpineEdit;
    CenterStreetField: TAlpineEdit;
    LatLongButton: TAlpineGlowButton;
    HydButton: TAlpineGlowButton;
    DBFButton: TAlpineGlowButton;
    Label33: TLabel;
    HydRecNoField: TAlpineCheckBox;
    Label34: TLabel;
    MainSizeField: TAlpineEdit;
    LoadGisPointButton: TAlpineGlowButton;
    GisPointTypeIDField: TAlpineLookup;
    procedure FormShow(Sender: TObject);
    procedure ShapeFileButtonClick(Sender: TObject);
    procedure LabelFontButtonClick(Sender: TObject);
    procedure IconButtonClick(Sender: TObject);
    procedure LabelButtonClick(Sender: TObject);
    procedure LoadHydBrowseClick(Sender: TObject);
    procedure LoadHydButtonClick(Sender: TObject);
    procedure cityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure HydFdidFieldEnter(Sender: TObject);
    procedure LatLongButtonClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure DBFButtonClick(Sender: TObject);
    procedure LoadGisPointButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure GISLayerIconNewRecord(DataSet: TDataSet);
    class procedure SelectFontField(LabelFontField,LabelColorField, LabelSizeField: TAlpineEdit; LabelBoldField: TAlpineCheckBox; mForm: TNormalBaseForm);
    procedure SelectGISField(mEdit,ShapeFileField: TAlpineEdit);
  end;

var
  HydLayerForm: THydLayerForm;

implementation
uses GenFunc,
     Hyd,
     SortGridView,
     FormFunc,
     GisSet,
     SelectFile,
     CommonVar,
     SelectField,
     GisViewer,
     GisViewerWnd,
     GisLayerSHP,
     GisDefs,
     GisBaseObject,
     GisLayerVector,
     GisFunc,
     DbaseEdit,
     WinMapDef,
     GISLayerRen,
     GISLayerIcon;

{$R *.DFM}

procedure THydLayerForm.GISLayerIconNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GISLAYERID').AsString := pk;
end;

procedure THydLayerForm.HydButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('HYD',THydForm,THydForm.NewRecord,nil);
end;

procedure THydLayerForm.HydFdidFieldEnter(Sender: TObject);
begin
  inherited;
  HydFdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID';
end;

procedure THydLayerForm.cityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  inherited;
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Value := tdbfield('CITY','STATE');
  ZipField.Text    := substr(dbfield('CITY','ZIP'),1,5);
  CloseApollo('CITY');
end;

procedure THydLayerForm.DBFButtonClick(Sender: TObject);
Var DbfFile : String;
    DbfPath : String;
begin
  inherited;
  DbfPath       := SqlLookup(GISSetIDField.Value,'GISSETID','GISSET','GISPATH');
  DbfFile       := DbfPath + ShapeFileField.Value + '.dbf';
  dBaseEditForm := TdBaseEditForm.Create(application,DbfFile);
  dBaseEditForm.ShowModal;
  dBaseEditForm.Free;
end;

procedure THydLayerForm.FormShow(Sender: TObject);
begin
  inherited;
  GisSetIDField.Enabled := AlpineLogin;
end;

procedure THydLayerForm.ShapeFileButtonClick(Sender: TObject);
Var FileName : String;
    PathVar  : String;
begin
  inherited;
  PathVar        := SQLLookUp(GisSetIDField.Value,'GISSETID','GISSET','GISPATH');
  SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.SHP;*.TIF;*.SID');
  If SelectFileForm.ShowModal = mrOk then begin
    FileName              := ExtractFileName(SelectFileForm.FileList.FileName);
    ShapeFileField.Value  := UpperCase(substr(FileName,1,at('.',FileName)-1));
    ShapeAliasField.Value := UpperCase(substr(FileName,1,at('.',FileName)-1));
    SaveButton.Enabled    := true;
    ShapeAliasField.SetFocus;
  end;
  SelectFileForm.Free;
end;

procedure THydLayerForm.LabelFontButtonClick(Sender: TObject);
begin
  SelectFontField(LabelFontField,LabelColorField,LabelSizeField,LabelBoldField,self);
end;

procedure THydLayerForm.LatLongButtonClick(Sender: TObject);
Var Latitude  : String;
    Longitude : String;
begin
  SaveButtonClick(self);
  Latitude  := '';
  Longitude := '';

  SetMapLatLong(CenterStrNumField.Text,CenterStreetField.Text ,'', CenterCityField.Text, CenterStateField.Text, CenterZipField.Text ,Latitude, Longitude);
  If Latitude > '' then begin
     If DisplayLatLongAsDecimal then begin
       Latitude := FloatToStr(MinutesToDecimal(strtofloat(Latitude)));
       Longitude := FloatToStr(MinutesToDecimal(strtofloat(Longitude)));
    end;
    CenterLatitudeField.Text  := Latitude;
    CenterLongitudeField.Text := Longitude;
    SaveButton.Enabled        := true;
  end else
    ShowMessage('Could not find location');
end;

procedure THydLayerForm.LoadGisPointButtonClick(Sender: TObject);
Var RowNum    : Integer;
    Code      : String;
    Latitude  : String;
    Longitude : String;
begin
  inherited;
  If BooleanMessageDlg('Load in the GIS data to Points?') then begin
    Open_Query('GISPOINT',true,'SELECT * FROM GISPOINT WHERE 1=2');
    Gauge.MaxValue := HydBrowse.RowCount;
    Gauge.Progress := 1;

    For RowNum := 1 to HydBrowse.RowCount do begin
      Code      := HydBrowse.GetValue(HydCodeField.Value,RowNum);
      Latitude  := HydBrowse.GetValue('LATITUDE',RowNum);
      Longitude := HydBrowse.GetValue('LONGITUDE',RowNum);

      A('GISPOINT').UpdateSQL('SELECT * FROM GISPOINT WHERE CODE = ' + AddExpr(Code));
      If A('GISPOINT').RecordsExist then
        A('GISPOINT').Edit
      else
        A('GISPOINT').Append;

      GetField('GISPOINT','CODE').AsString           := Code;
      GetField('GISPOINT','LATITUDE').AsString       := Latitude;
      GetField('GISPOINT','LONGITUDE').AsString      := Longitude;

      GetField('GISPOINT','LATITUDEDEC').AsString    := floattostr(MinutesToDecimal(anystrtofloat(Latitude)));
      GetField('GISPOINT','LONGITUDEDEC').AsString   := floattostr(MinutesToDecimal(anystrtofloat(Longitude)));

      GetField('GISPOINT','DATETIMEENT').AsDateTime  := Now;
      GetField('GISPOINT','GISPOINTTYPEID').AsString := GisPointTypeIDField.Value;

      GetField('GISPOINT','MAPLABEL').AsString       := HydBrowse.GetValue('LABELFIELD',RowNum);       
      GetField('GISPOINT','DESCR').AsString          := HydBrowse.GetValue('LABELFIELD',RowNum);
      GetField('GISPOINT','LOCATION').AsString       := HydBrowse.GetValue('STREET',RowNum);
      A('GISPOINT').Post;
      Gauge.Progress := Gauge.Progress + 1;
      Application.processmessages;
    end;

    CloseApollo('GISPOINT');
    ShowMessage('Finished');
  end;
end;

procedure THydLayerForm.LoadHydBrowseClick(Sender: TObject);
Var FieldName       : String;
    FieldNum        : Integer;
    RecNo           : Integer;
    i               : Integer;
    Map             : TGIS_ViewerWnd;
    GisSetVar       : TGisSetVar;
    Latitude        : Real;
    Longitude       : Real;
    CenterLatitude  : Real;
    CenterLongitude : Real;
    Layerdef        : TWinMapLayerDef;
    DbfFile         : String;
    HydCodePL       : Integer;
    HydLat          : Real;
    HydLong         : Real;
    CenterDistance  : Integer;
    HydCnt          : Integer;
begin
  inherited;
  Map               := TGIS_ViewerWnd.Create(MapPanel);
  map.parent        := MapPanel;
  map.Align         := alclient;
  GisSetVar         := TGisSetVar.Create;
  GisSetVar.GisPath := SqlLookup(GISSetIDField.Value,'GISSETID','GISSET','GISPATH');
  DbfFile           := GisSetVar.GisPath + '\' + ShapeFileField.Value + '.dbf';
  GisSetVar.GisCode := SqlLookup(GISSetIDField.Value,'GISSETID','GISSET','GISCODE');

  LoadGisSetVar(GlobalAdoConnection, GisSetVar, GisSetVar.GisCode);
  CreateMap(GlobalAdoConnection, GisSetVar, Map);

  i                 := GisSetVar.GisLayers.IndexOf(ShapeFileField.Value);

  LayerDef          := TWinmapLayerDef(GisSetVar.GisLayers.Objects[i]);
  HydCodePL         := AnyStrToInt(HydCodePLField.Value);

  Net_Open(DbfFile,'S','HYD');

  HydCnt             := 0;
  HydBrowse.Clear;
  HydBrowse.ColCount := 0;
  HydBrowse.RowCount := 0;
  HydBrowse.ClearColumns;
  HydBrowse.FixedRowAlways := true;
  HydBrowse.RowCount       := HydBrowse.FixedRows;

  If HydRecNoField.Checked then
    HydBrowse.SetColumn('HYDRECNO', 'HYDRECNO', 110);


  For FieldNum := 1 to A('HYD').FieldCount do begin
    FieldName := A('HYD').FieldName(FieldNum);
    If (ShapeFieldNarrField.Value = '') or (At(FieldName+',',ShapeFieldNarrField.Value) > 0) then
      HydBrowse.SetColumn(A('HYD').FieldName(FieldNum),A('HYD').FieldName(FieldNum),100);
  end;
  HydBrowse.SetColumn('LATITUDE',      'LATITUDE', 110);
  HydBrowse.SetColumn('LONGITUDE',     'LONGITUDE',110);
  HydBrowse.SetColumn('CENTERDISTANCE','DISTANCE', 110);

  If Not (LocationField.Value = '') then
    HydBrowse.SetColumn('LABELFIELD','LABELFIELD', 110);

  Gauge.MaxValue := A('HYD').QueryRecCount;
  Gauge.Progress := 0;
  While Not A('HYD').Eof do begin

    GetLatLongFromRecNo(GisSetVar,GisSetVar.GisLayers,ShapeFileField.Value,A('HYD').RecNo,Latitude,Longitude);
    If Not (Latitude = 0) and Not (Longitude = 0) then begin
      CenterLatitude  := StrToFloat(CenterLatitudeField.Value);
      CenterLongitude := StrToFloat(CenterLongitudeField.Value);
      CenterDistance  := Round(DistanceInFeetBetweenTwoCoordinates(Latitude,Longitude,CenterLatitude,CenterLongitude));
    end;

    If (StrToInt(CenterRadiusField.Value) = 0) or (CenterDistance <= StrToInt(CenterRadiusField.Value)) then begin
      If HydRecNoField.Checked then
        HydBrowse.SetValue('HYDRECNO',IntToStr(A('HYD').RecNo));
      For FieldNum := 1 to A('HYD').FieldCount do begin
        FieldName := A('HYD').FieldName(FieldNum);
        If (ShapeFieldNarrField.Value = '') or (At(FieldName+',',ShapeFieldNarrField.Value) > 0) then begin
          If (FieldName = HydCodeField.Value) and Not (HydCodeTextField.Value = '') then begin
            If HydCodePL = 0 then
              HydBrowse.SetValue(FieldName,HydCodeTextField.Value + GetField('HYD',FieldName).AsString)
            else
              HydBrowse.SetValue(FieldName,HydCodeTextField.Text + padl(GetField('HYD',FieldName).AsString,HydCodePL,'0'));
          end else begin
            If FieldName = HydCodeField.Value then begin
              If HydCodePL = 0 then begin
                try
                  HydBrowse.SetValue(FieldName,GetField('HYD',FieldName).AsString)
                except
                  HydBrowse.SetValue(FieldName,'ERROR');
                end;
              end else begin
                try
                  HydBrowse.SetValue(FieldName,HydCodeTextField.Text + padl(GetField('HYD',FieldName).AsString,HydCodePL,'0'))
                except
                  HydBrowse.SetValue(FieldName,'ERROR');
                end;
              end;
            end else begin
              Try
                HydBrowse.SetValue(FieldName,GetField('HYD',FieldName).AsString)
              except
                HydBrowse.SetValue(FieldName,'ERROR');
              end;
            end;
          end;
        end;
      end;

      HydBrowse.SetValue('LATITUDE',FloatToStr(Latitude));
      HydBrowse.SetValue('LONGITUDE',FloatToStr(Longitude));
      HydBrowse.SetValue('CENTERDISTANCE',FloatToStr(CenterDistance));

      If Not (LocationField.Value = '') then
        HydBrowse.SetValue('LABELFIELD',GetField('HYD',Locationfield.Value).AsString);

      HydCnt := HydCnt + 1;
    end;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('HYD').Skip(1);
  end;
  HydPanel.Caption.Text := 'Hydrant Shape File Import Result: ' + IntToStr(HydCnt) + ' hydrants';
  CloseApollo('HYD');
  RecCountField.Value := IntToStr(Gauge.Progress);
end;

procedure THydLayerForm.LoadHydButtonClick(Sender: TObject);
Var RowNum    : Integer;
    HydCode   : String;
    Latitude  : String;
    Longitude : String;
begin
  inherited;
  If BooleanMessageDlg('Load in the hydrant data?') then begin
  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');
  Gauge.MaxValue := HydBrowse.RowCount;
  Gauge.Progress := 1;

  For RowNum := 1 to HydBrowse.RowCount do begin
   try
    try
      If HydRecNoField.Checked then
        HydCode := 'H-' + padl(IntToStr(Gauge.Progress),4,'0')
      else
        HydCode   := HydBrowse.GetValue(HydCodeField.Value,RowNum);

      if mFireID = '30011' then begin
        Latitude  := FloatToStr(DecimalToMinutes(HydBrowse.GetValue('ESRIGNSS_L',RowNum)));
        Longitude := FloatToStr(DecimalToMinutes(HydBrowse.GetValue('ESRIGNSS_1',RowNum)));
      end else begin
        Latitude  := HydBrowse.GetValue('LATITUDE',RowNum);
        Longitude := HydBrowse.GetValue('LONGITUDE',RowNum);
      end;

      A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
      If A('HYD').RecordsExist then
        A('HYD').Edit
      else
        A('HYD').Append;

      GetField('HYD','FDID')  .AsString       := HydFdidField.Value;
      GetField('HYD','HYDCODE').AsString      := HydCode;
      GetField('HYD','LATITUDE').AsString     := Latitude;
      GetField('HYD','LONGITUDE').AsString    := Longitude;
    {try
      if A('HYD').FindField('LATITUDEDEC')<>nil then begin
        GetField('HYD','LATITUDEDEC').AsString  := MinutesToDecimal(Latitude);
        GetField('HYD','LONGITUDEDEC').AsString := MinutesToDecimal(Longitude);
      end;
    except
    end;  }
      GetField('HYD','DATEIMPORT').AsDateTime := Now;
      GetField('HYD','SOURCEIMPORT').AsString := 'Shape File: ' + ShapeFileField.Value;

      If Not (HydBrowse.GetValue(StreetField.Value,RowNum) = '') then
        GetField('HYD','STREET').AsString       := HydBrowse.GetValue(StreetField.Value,RowNum);
      If Not (HydBrowse.GetValue(StreetField.Value,RowNum) = '') then
        GetField('HYD','STRNUM').AsString       := HydBrowse.GetValue(StrNumField.Value,RowNum);
      If Not (HydBrowse.GetValue(LocationField.Value,RowNum)='') then
        GetField('HYD','LOCATION').AsString     := HydBrowse.GetValue(LocationField.Value,RowNum)
      else if Not (tdbfield('HYD','STRNUM') = '') and Not (tdbfield('HYD','STREET') = '') then
        GetField('HYD','LOCATION').AsString := 'IFO ' + tdbfield('HYD','STRNUM' ) + ' ' + tdbfield('HYD','STREET');

      If Not (HydBrowse.GetValue(MainSizeField.Value,RowNum) = '') then
        GetField('HYD','MAINSIZE').AsString     := HydBrowse.GetValue(MainSizeField.Value,RowNum);

      If Not (CityField.Value = '') then
        GetField('HYD','CITY').AsString         := CityField.Value;
      If Not (StateField.Value = '') then
        GetField('HYD','STATE').AsString        := StateField.Value;
      If Not (ZipField.Value = '') then
        GetField('HYD','ZIP').AsString          := ZipField.Value;
      If Not (HydStatusIDField.Value = '') then
        GetField('HYD','HYDSTATUSID').AsString  := HydStatusIDField.Value;
      If Not (HydTypeIDField.Value = '') then
        GetField('HYD','HYDTYPEID').AsString    := HydTypeIDField.Value;


      A('HYD').Post;
    except
      on e: exception do begin
        AppendToLog('HydLayer Load Table ERROR: '+e.message);
      end;
    end;
   finally
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
   end;
  end;

  CloseApollo('HYD');
  ShowMessage('Finished');
  end;
end;

class procedure THydLayerForm.SelectFontField(LabelFontField,LabelColorField,LabelSizeField: TAlpineEdit; LabelBoldField: TAlpineCheckBox; mForm: TNormalBaseForm);
var FontDialog1: TFontDialog;
begin
  inherited;
  FontDialog1 := TFontDialog.Create(nil);
  If FontDialog1.Execute then begin
    LabelFontField.Value  := FontDialog1.Font.Name;
    If (FontDialog1.Font.Color < 0) then
      LabelColorField.Value := 'clblack'
    else
      LabelColorField.Value := ColorToString(FontDialog1.Font.Color);

    LabelSizeField.Value     := IntToStr(FontDialog1.Font.size);
    LabelBoldField.Checked   := FontDialog1.Font.Style = [fsBold];
    mForm.SaveButton.Enabled := true;
  end;
  FontDialog1.Free;
end;

procedure THydLayerForm.IconButtonClick(Sender: TObject);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  PathVar        := SQLLookUp(GisSetIDField.Value,'GISSETID','GISSET','ICONPATH');
  SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.ICO');
  If SelectFileForm.ShowModal = mrOk then begin
    FileName             := ExtractFileName(SelectFileForm.FileList.FileName);
    IconNameField.Value  := UpperCase(substr(FileName,1,at('.',FileName)-1));
    SaveButton.Enabled   := true;
    IconSizeField.SetFocus;
  end;
  SelectFileForm.Free;
end;

procedure THydLayerForm.LabelButtonClick(Sender: TObject);
begin
  SelectGISField(LabelField,ShapeFileField);
end;

procedure THydLayerForm.SelectGISField(mEdit,ShapeFileField: TAlpineEdit);
Var FileName : String;
    PathVar  : String;
begin
  inherited;
  PathVar         := SQLLookUp(GisSetIDField.Value,'GISSETID','GISSET','ICONPATH');
  SelectFieldForm := TSelectFieldForm.Create(nil,PathVar + '\'+ShapeFileField.Value + '.dbf');
  If SelectFieldForm.ShowModal = mrOK then
    mEdit.Value := SelectFieldForm.FieldBrowse.GetValue('FIELDNAME');
  SelectFieldForm.Free;
end;

end.
