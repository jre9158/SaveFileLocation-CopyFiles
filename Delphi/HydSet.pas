unit HydSet;

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
  ADOdb,
  AlpineLookup,
  AlpineLookGrid,
  Blink,
  Buttons,
  cusbtn,
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
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  Gauges,
  AdvObj,
  AdvGroupBox,ipwjson,AppLst;

type
  THydSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    HydSetControl: TAdvPageControl;
    HydTypeTab: TAdvTabSheet;
    HydTypeBrowse: TAlpineBlockBrowse;
    HydStatusTab: TAdvTabSheet;
    HydStatusBrowse: TAlpineBlockBrowse;
    HydNFPAClassTab: TAdvTabSheet;
    HydNFPAClassBrowse: TAlpineBlockBrowse;
    GenerateDefaultNFPA: TAlpineGlowButton;
    HydLoadTab: TAdvTabSheet;
    HydInspectTypeTab: TAdvTabSheet;
    HydInspectTypeBrowse: TAlpineBlockBrowse;
    HydNFPAClassButton: TAlpineGlowButton;
    HydPhoneTypeBrowse: TAlpineBlockBrowse;
    HydContactTypeBrowse: TAlpineBlockBrowse;
    HydUrlTab: TAdvTabSheet;
    HydUrlBrowse: TAlpineBlockBrowse;
    OpenDialog1: TOpenDialog;
    AdvTabSheet1: TAdvTabSheet;
    Panel0B: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    Label16: TLabel;
    Label3: TLabel;
    DistanceField: TAlpineEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    AddressField: TLabel;
    HydIDField: TLabel;
    Label7: TLabel;
    MatchField: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MaxHydField: TAlpineEdit;
    Label10: TLabel;
    DeleteHydCheck: TAlpineCheckBox;
    PropGauge: TGauge;
    Gauge: TGauge;
    Panel2: TPanel;
    AlpinePanel3: TAlpinePanel;
    Label35: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label42: TLabel;
    IPAddressField: TAlpineEdit;
    DatabaseField: TAlpineEdit;
    LoadButton: TAlpineGlowButton;
    UserNameField: TAlpineEdit;
    PasswordField: TAlpineEdit;
    TableTypeField: TAlpineEdit;
    AlpinePanel4: TAlpinePanel;
    ESRIButton: TAlpineGlowButton;
    ESRIDBFButton: TAlpineGlowButton;
    ESRIDBF2Button: TAlpineGlowButton;
    AlpinePanel7: TAlpinePanel;
    AlpinePanel2: TAlpinePanel;
    Label17: TLabel;
    HYDGRAPHICSIDField: TAlpineLookup;
    GisLayerBrowse: TAlpineBlockBrowse;
    Panel3: TPanel;
    AlpinePanel5: TAlpinePanel;
    GISSetIDLabel: TLabel;
    GisSetIDField: TAlpineLookup;
    AlpinePanel6: TAlpinePanel;
    MapPanel: TPanel;
    Label2: TLabel;
    HydCntField: TAlpineEdit;
    QueryStreetField: TAlpineLookup;
    Label11: TLabel;
    Query500Button: TAlpineGlowButton;
    LatLongButton: TAlpineGlowButton;
    CreateGoogleKML: TAlpineGlowButton;
    ExcelImport: TAlpineGlowButton;
    ExportGeoJSONButton: TAlpineGlowButton;
    procedure HydTypeTabShow(Sender: TObject);
    procedure HydStatusTabShow(Sender: TObject);
    procedure HydNFPAClassTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GenerateDefaultNFPAClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure HydInspectTypeTabShow(Sender: TObject);
    procedure CreateGoogleKMLClick(Sender: TObject);
    procedure HydUrlTabShow(Sender: TObject);
    procedure ExcelImportClick(Sender: TObject);
    procedure ESRIButtonClick(Sender: TObject);
    procedure ESRIDBFButtonClick(Sender: TObject);
    procedure ESRIDBF2ButtonClick(Sender: TObject);
    procedure Query500ButtonClick(Sender: TObject);
    procedure AdvTabSheet1Show(Sender: TObject);
    procedure HydLoadTabShow(Sender: TObject);
    procedure GisSetIDFieldSuccessfulValidate(Sender: TObject);
    procedure HydSetControlChange(Sender: TObject);
    procedure QueryStreetFieldEnter(Sender: TObject);
    procedure LatLongButtonClick(Sender: TObject);
    procedure ExportGeoJSONButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure GetClosestHydrantsToCoordinates(DefaultDistance : Real);
    function GetGeoJSONHydrants(FDatabase: TAlpineAdoConnection): String;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure HydURLNewRecord(DataSet: TDataSet);
    procedure HydTypeNewRecord(DataSet: TDataSet);
    procedure HYDLayerNewRecord(DataSet: TDataSet);
  end;

var
  HydSetForm  : THydSetForm;

implementation
uses GenFunc,
     SortGridView,
     CommonFunc,
     Search,
     HydType,
     HydStatus,
     GisFunc,
     HydNfpaClass,
     hydurl,
     HydLayer,
     GisViewer,
     GisViewerWnd,
     GisLayerSHP,
     GisDefs,
     GisBaseObject,
     GisLayerVector,
     WinMapDef,
     HydInspectType,
     FormFunc,
     MobileFTP,
     SelectFile,
     CommonVar;

{$R *.DFM}

class procedure THydSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure THydSetForm.HydTypeTabShow(Sender: TObject);
begin
  inherited;
  HydTypeBrowse.Setup('HYDTYPE',THydTypeForm,HydTypeNewRecord);
  HydContactTypeBrowse.Setup('HYDCONTACTTYPE',THydTypeForm,HydTypeNewRecord);
  HydPhoneTypeBrowse.Setup('HYDPHONETYPE',THydTypeForm,HydTypeNewRecord);
end;

procedure THydSetForm.HydUrlTabShow(Sender: TObject);
begin
  inherited;
  HydUrlBrowse.Setup('HYDURL',THydURLForm,HydURLNewRecord);
end;

procedure THydSetForm.HydURLNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('url').AsString := '<put url to graphic here>';
end;

procedure THydSetForm.LoadButtonClick(Sender: TObject);
Var SourceDatabase : TAlpineAdoConnection;
    ErrorString    : String;
begin
  If TableTypeField.Text = '1' then
    SourceDataBase  := TAlpineAdoConnection.Create(self,IPAddressField.Text,UserNameField.Text,PasswordField.Text,AnyStrToInt(TableTypeField.Value))
  else
    SourceDataBase  := TAlpineAdoConnection.Create(self,IPAddressField.Text + ':' + DatabaseField.Text,UserNameField.Text,PasswordField.Text,AnyStrToInt(TableTypeField.Value));

  If SourceDataBase.Connect(ErrorString) then begin
    Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');
    Open_Query(SourceDatabase,'SOURCEHYD',false,'SELECT * FROM HYD');

    While Not A('SOURCEHYD').Eof do begin
      A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + edbfield('SOURCEHYD','HYD'));
      If A('HYD').RecordsExist then
        A('HYD').Edit
      else
        A('HYD').Append;
      GetField('HYD','HYDCODE').AsString    := GetField('SOURCEHYD','HYDCODE').AsString;
      GetField('HYD','FDID').AsString       := GetField('SOURCEHYD','FDID').AsString;
      GetField('HYD','STRNUM').AsString     := GetField('SOURCEHYD','STRNUM').AsString;
      GetField('HYD','STREET').AsString     := GetField('SOURCEHYD','STREET').AsString;
      GetField('HYD','LOCATION').AsString   := GetField('SOURCEHYD','LOCATION').AsString;
      GetField('HYD','LATITUDE').AsString   := GetField('SOURCEHYD','LATITUDE').AsString;
      GetField('HYD','LONGITUDE').AsString  := GetField('SOURCEHYD','LONGITUDE').AsString;
      A('HYD').Post;
      A('SOURCEHYD').Skip(1);
    end;
    CloseApollo('SOURCEHYD');
    CloseApollo('HYD');
    ShowMessage('Done');
  end;
  SourceDataBase.Free;
end;

procedure THydSetForm.HydTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure THydSetForm.HydSetControlChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := (HydSetControl.ActivePage = HydLoadTab);
end;

procedure THydSetForm.HydStatusTabShow(Sender: TObject);
begin
  inherited;
  HydStatusBrowse.Setup('HYDSTATUS',THydStatusForm,HydTypeNewRecord);
end;

procedure THydSetForm.HydInspectTypeTabShow(Sender: TObject);
begin
  inherited;
  HydInspectTypeBrowse.Setup('HYDINSPECTTYPE',THydInspectTypeForm,HydTypeNewRecord);
  HydNFPAClassButton.Parent := HydInspectTypeBrowse.FButtonPanel;
  HydNFPAClassButton.Align  := alleft;
end;

procedure THydSetForm.HydLoadTabShow(Sender: TObject);
Var GisSetID : String;
    HydCnt   : Integer;
begin
  inherited;
  GisSetID := GisSetIDField.Value;
  HydCnt   := 0;
  GISLayerBrowse.Setup('HYDLAYER','GISSETID',GisSetID,THydLayerForm,HYDLayerNewRecord);

  Open_Query('GISLAYER',false,'SELECT RECCOUNT FROM GISLAYER WHERE GISSETID = ' + pkvalue(GisSetID));
  While Not A('GISLAYER').Eof do begin
    HydCnt := HydCnt + Getfield('GISLAYER','RECCOUNT').AsInteger;
    A('GISLAYER').Skip(1);
  end;
  CloseApollo('GISLAYER');

  HydCntField.Value := IntToStr(HydCnt);
end;

procedure THydSetForm.HYDLayerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GISSETID').AsString := GisSetIDField.Value;
end;

procedure THydSetForm.HydNFPAClassTabShow(Sender: TObject);
begin
  inherited;
  HydNFPAClassBrowse.Setup('HYDNFPACLASS',THydNfpaClassForm,HydTypeNewRecord);
  GenerateDefaultNFPA.Parent := HydNFPAClassBrowse.FButtonPanel;
  GenerateDefaultNFPA.Align  := alleft;
end;

procedure THydSetForm.AdvTabSheet1Show(Sender: TObject);
begin
  inherited;
  DistanceField.Text    := '1000';
  QueryStreetField.Text := '';
end;

procedure THydSetForm.LatLongButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Are you sure you want to process the hydrant data?') then begin
   try
    Open_Query('HYD',true,'SELECT HYDID, LATITUDE, LONGITUDE, LATITUDEDEC, LONGITUDEDEC FROM HYD WHERE LATITUDE IS NOT NULL AND LATITUDE <> ' + AddExpr(''));
    PropGauge.MaxValue := A('HYD').QueryRecCount;
    PropGauge.progress := 0;
    While Not A('HYD').Eof do begin
      try
        try
          GetTable('HYD').Edit;
          GetField('HYD','LATITUDEDEC').AsFloat := MinutesToDecimal(StrToFloat(GetField('HYD','LATITUDE').AsString));
          GetField('HYD','LONGITUDEDEC').AsFloat := MinutesToDecimal(StrToFloat(GetField('HYD','LONGITUDE').AsString));
          GetTable('HYD').Post;
        except
          on e: exception do begin

          end;
        end;
      finally
        A('HYD').Skip(1);
      end;

      PropGauge.Progress   := PropGauge.Progress + 1;
      Application.ProcessMessages;
    end;
   finally
    CloseApollo('HYD');
   end;

   ShowMessage('Done');
  end;
end;

procedure THydSetForm.CreateGoogleKMLClick(Sender: TObject);
var m               : String;
    basename        : String;
    mFileName       : String;
    mString         : String;
    mMessage        : String;
    icount          : Integer;
    i               : Integer;
    iLower          : Integer;
    iUpper          : Integer;
    mFileStringList : TStringList;
    bSuccess        : Boolean;
begin
  inherited;
  basename:='rednmx_'+mfireid;
  If not InputDlg('Base Name','Enter Base Name for KML',basename,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
    then exit;
    
  mFileStringList := TStringList.Create;
  CommonCreateAndAddKMLHydrantsToStringList(GlobalAdoConnection,baseName,mFileStringList);

  if mFileStringList.Count=0 then
    showmessage('There was a problem - no files were created')
  else if BooleanMessageDlg('Would you like to upload to http://www.alpinesoftware.com/gps?') then begin
    bSuccess := True;
    mMessage := 'Add these entries to the KML Layers in Mapping Setup:'+crlf;
    for i := 0 to mFileStringList.Count-1 do begin
      if UploadMobileFile(mFileStringList[i],'gps','gps2020','alpinesoftware.com') then
        mMessage := mMessage+'http://www.alpinesoftware.com/gps/'+ExtractFileName(mFileStringList[i])+crlf
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

procedure THydSetForm.ESRIButtonClick(Sender: TObject);
var map            : TGIS_ViewerWnd;
    GisSetVar      : TGisSetVar;
    Latitude       : Real;
    Longitude      : Real;
    Layerdef       : TWinMapLayerDef;
    i              : Integer;
//  fieldlist      : TStringList;
    GisWithin      : TGisWithin;
    ShapeFieldList : TStringList;
    HydStringList : TStringList;
    HydCode       : String;
begin
  Map               := TGIS_ViewerWnd.Create(self);
  map.parent        := self;
  GisSetVar         := TGisSetVar.Create;
  GisSetVar.GisCode := 'HYD';

  GisSetVar.GisPath := SqlLookup(GisSetVar.GisCode,'GISCODE','GISSET','GISPATH');
  LoadGisSetVar(GlobalAdoConnection, GisSetVar, GisSetVar.GisCode);
  CreateMap(GlobalAdoConnection, GisSetVar, Map);

  I                := GisSetVar.GisLayers.IndexOf('HYDRANTS');
  LayerDef         := TWinmapLayerDef(GisSetVar.GisLayers.Objects[i]);
  ShapeFieldList   := TStringList.Create;
  ShapeFieldList.Add('OBJECTID');

  HydStringList := GetWithinFeet(globalAdoConnection, 40.10,-74.13,999999999,'HYDRANTS',ShapeFieldList);

  appendtolog('Number of hydrants:'+inttostr(HydStringList.Count));

  Open_Query('HYD',True,'SELECT * FROM HYD WHERE 1=2');
//fieldlist := TStringList.Create;
//fieldlist.add('STRNUM');
//fieldlist.add('STREET');
  for i := 0 to HydStringList.Count-1 do begin
    GisWithin := TGisWithin(HydStringList.objects[i]);
    HydCode   := GisWithin.FieldValues[0];
    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;
    GetField('HYD','HYDCODE').AsString  := HydCode;
    GetField('HYD','LATITUDE').AsFloat  := GISWithIn.Latitude;
    GetField('HYD','LONGITUDE').AsFloat := GISWithIn.Longitude;
    A('HYD').Post;
  end;
  CloseApollo('HYD');
end;

procedure THydSetForm.ESRIDBF2ButtonClick(Sender: TObject);
Var Map         : TGIS_ViewerWnd;
    LayerDefs   : TStringList;
    GisSetVar   : TGisSetVar;
    Latitude    : Real;
    Longitude   : Real;
    HydCode     : String;
begin
  Map               := TGIS_ViewerWnd.Create(MapPanel);
  Map.parent        := MapPanel;
  GisSetVar         := TGisSetVar.Create;
  GisSetVar.GisPath := 'C:\RedNMXMap';
  GisSetVar.GisCode := 'HYD';

  LoadGisSetVar(GlobalAdoConnection, GisSetVar, 'NF3');
  CreateMap(GlobalAdoConnection, GisSetVar, Map);

  Net_Open('C:\RedNMXMap\HYDRANTS.DBF','S','HYDRANTS');
  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');

  Gauge.MaxValue    := A('HYDRANTS').RecCount;
  Gauge.Progress    := 0;

  While Not A('HYDRANTS').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    HydCode   := tdbfield('HYDRANTS','FACILITYID');
    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;
    GetField('HYD','HYDCODE').AsString  := HydCode;

    GetLatLongFromRecNo(GisSetVar,GisSetVar.GisLayers,'HYDRANTS',A('HYDRANTS').RecNo,Latitude,Longitude);
    If Latitude > 0 then begin
      GetField('HYD','LATITUDE').AsString  := FormatFloat('###0.000000000',Latitude);
      GetField('HYD','LONGITUDE').AsString := FormatFloat('###0.000000000',Longitude);
    end;
    A('HYD').Post;

    A('HYDRANTS').Skip(1);
  end;

  CloseApollo('HYDRANTS');
  CloseApollo('HYD');
  ShowMessage('DONE');
end;

procedure THydSetForm.ESRIDBFButtonClick(Sender: TObject);
Var Map         : TGIS_ViewerWnd;
    LayerDefs   : TStringList;
    GisSetVar   : TGisSetVar;
    Latitude    : Real;
    Longitude   : Real;
    HydCode     : String;
begin
  Map               := TGIS_ViewerWnd.Create(MapPanel);
  Map.parent        := MapPanel;
  GisSetVar         := TGisSetVar.Create;
  GisSetVar.GisPath := 'D:\SOUTHARDMAP\';
  GisSetVar.GisCode := 'HYD';

  LoadGisSetVar(GlobalAdoConnection, GisSetVar, 'HYD');
  CreateMap(GlobalAdoConnection, GisSetVar, Map);

  Net_Open('D:\SOUTHARDMAP\HYDRANTS.DBF','S','HYDRANTS');
  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');

  Gauge.MaxValue    := A('HYDRANTS').RecCount;
  Gauge.Progress    := 0;

  While Not A('HYDRANTS').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    HydCode   := tdbfield('HYDRANTS','OBJECTID');
    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;
    GetField('HYD','HYDCODE').AsString  := HydCode;

    GetLatLongFromRecNo(GisSetVar,GisSetVar.GisLayers,'HYDRANTS',A('HYDRANTS').RecNo,Latitude,Longitude);
    If Latitude > 0 then begin
      GetField('HYD','LATITUDE').AsString  := FormatFloat('###0.000000000',Latitude);
      GetField('HYD','LONGITUDE').AsString := FormatFloat('###0.000000000',Longitude);
    end;
    A('HYD').Post;

    A('HYDRANTS').Skip(1);
  end;

  CloseApollo('HYDRANTS');
  CloseApollo('HYD');
  ShowMessage('DONE');
end;

procedure THydSetForm.ExcelImportClick(Sender: TObject);
Var FileName    : String;
    MainQuery   : TADOQuery;
    HydCode      : String;
begin
  inherited;

  OpenDialog1.FileName    := '';
  OpenDialog1.Options     := [ofFileMustExist];
  OpenDialog1.Filter      := 'XLS Files (*.xls)|*.xls|All files (*.*)|*.*';
  OpenDialog1.FilterIndex := 1;
  OpenDialog1.Title       := 'Select Data File';
  if not opendialog1.execute then exit;
  FileName                   := opendialog1.filename;


  //FileName                   := 'P:\document\FireDept\21012.PA\HYD\CopyofLowerAllenHydrants.xlsx';
  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.Jet.OLEDB.4.0;Data Source='+FileName+';Extended Properties="Excel 8.0;HDR=Yes;IMEX=1"';
  MainQuery.SQL.Text         := 'select * from [sheet1$]';
  MainQuery.Active           := true;
  Gauge.MaxValue             := 344;
  Gauge.Progress             := 0;

  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');
  While not MainQuery.Eof do begin
    HydCode := alltrim(Mainquery.FieldByName('HYDNUM').AsString);
    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode));
    If not A('HYD').RecordsExist then begin

      A('HYD').Append;

      GetField('HYD','HYDCODE').AsString      := alltrim(Mainquery.FieldByName('HYDNUM').AsString);
      GetField('HYD','HYDTYPEID').AsString    := SQLLookup(alltrim(Mainquery.FieldByName('TYPE').AsString),'DESCR','HYDTYPE','HYDTYPEID');
      GetField('HYD','HYDSTATUSID').AsString  := '1';

      GetField('HYD','STRNUM').AsString       := alltrim(Mainquery.FieldByName('STRNUM').AsString);
      GetField('HYD','STREET').AsString       := alltrim(Mainquery.FieldByName('STREET').AsString);
      GetField('HYD','CITY').AsString         := alltrim(Mainquery.FieldByName('CITY').AsString);
      GetField('HYD','STATE').AsString        := alltrim(Mainquery.FieldByName('STATE').AsString);

      GetField('HYD','NUMOUTLETS').AsString   := alltrim(Mainquery.FieldByName('NUMOUTLETS').AsString);
      GetField('HYD','STEAMERSIZE').AsString  := alltrim(Mainquery.FieldByName('STEAMERSIZE').AsString);

      GetField('HYD','LATITUDE').AsString     := alltrim(Mainquery.FieldByName('ALPINELAT').AsString);
      GetField('HYD','LONGITUDE').AsString    := alltrim(Mainquery.FieldByName('ALPINELONG').AsString);

      A('HYD').Post;

    end;
    MainQuery.Next;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

  end;
  MainQuery.Free;
  CloseApollo('HYD');

  ShowMessage('Done');
end;

procedure THydSetForm.ExportGeoJSONButtonClick(Sender: TObject);
var
  basename,geojson : String;
begin
  basename := mfireid+'_hyd_nmx_'+FormatDateTime('yymmdd',Now);
  If not InputDlg('Base Name','Enter File Name',basename,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!')
    then exit;

  try
    geojson := GetGeoJSONHydrants(GlobalADOConnection);

    if not(geojson = '') then begin
      stringtofile(ExtractFileDir(ParamStr(0))+'\'+basename+'.geojson',geojson);
      showmessage('Done - Check for file in folder '+extractFileDir(paramStr(0)));
    end else begin
      ShowMessage('Aborting, no hydrants found.');
    end;
  except
    on e: exception do begin
      ShowMessage('Aborting, error in export.');
      AppendToLog('ERROR in hydrant geojson export: '+E.message);
    end;
  end;
end;


procedure THydSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  HydSetControl.ActivePage     := HydTypeTab;
  HydLoadTab.TabVisible        := AlpineLogIn;
  CreateGoogleKML.Visible      := AlpineLogon;
  HydUrlTab.TabVisible         := AlpineLogon;
  HYDGRAPHICSIDField.Enabled   := AlpineLogon;
end;

procedure THydSetForm.GenerateDefaultNFPAClick(Sender: TObject);
  procedure CheckIt(mCode,mDescr: String);
  begin
    if not A('HYDNFPA').ExactQueryLocate('CODE',mCode) then begin
      GetTable('HYDNFPA').Insert;
      GetField('HYDNFPA','CODE').AsString := mCode;
      GetField('HYDNFPA','DESCR').AsString := mDescr;
      GetTable('HYDNFPA').Post;
    end;
  end;

begin
  try
    Open_Query('HYDNFPA',True,'SELECT * FROM HYDNFPACLASS');
    CheckIt('AA','Greater than or equal 1500 GPM');
    CheckIt('A','1000 - 1499 GPM');
    CheckIt('B','500 - 999 GPM');
    CheckIt('C','Less than 499 GPM');
  finally
    CloseApollo('HYDNFPA');
  end;
  HydNFPAClassBrowse.RefreshGrid;
  ShowMessage('Done');
end;

procedure THydSetForm.Query500ButtonClick(Sender: TObject);
Var Distance : Real;
    PropCnt  : Integer;
begin
  inherited;
  If (QueryStreetField.Text = '') then
    Open_Query('PROP',false,'SELECT STRNUM, STREET, PROPID, LATITUDE, LONGITUDE FROM PROP')
  else
    Open_Query('PROP',false,'SELECT STRNUM, STREET, PROPID, LATITUDE, LONGITUDE FROM PROP WHERE STREET LIKE ' + AddExpr(QueryStreetField.Text + '%'));

  PropCnt := A('PROP').QueryRecCount;
  If BooleanMessageDlg('Are you sure you want to process the hydrant data for ' + FormatFloat('###,##0',PropCnt) + ' locations?') then begin
    Open_Query('HYD',false,'SELECT HYDID, STRNUM, STREET, CROSSSTREET, LOCATION, LONGITUDE, LATITUDE FROM HYD WHERE LATITUDE IS NOT NULL');
    Open_Query('PROPHYD',true,'SELECT * FROM PROPHYD WHERE 1=2');
    PropGauge.MaxValue := A('PROP').QueryRecCount;
    PropGauge.progress := 0;
    Distance           := StrToFloat(DistanceField.Value);
    While Not A('PROP').Eof do begin
      AddressField.Caption := alltrim(tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET'));
      PropGauge.Progress   := PropGauge.Progress + 1;
      If DeleteHydCheck.Checked then
        RunSQL('DELETE FROM PROPHYD WHERE PROPID = ' + GetField('PROP','PROPID').AsString);
      GetClosestHydrantsToCoordinates(Distance);
      A('PROP').next;
    end;
    CloseApollo('HYD');
    CloseApollo('PROPHYD');
    ShowMessage('Done');
  end;
  CloseApollo('PROP');
end;


procedure THydSetForm.QueryStreetFieldEnter(Sender: TObject);
begin
  inherited;
  QueryStreetField.LookupFormWidth := 300;
end;

procedure THydSetForm.GetClosestHydrantsToCoordinates(DefaultDistance : Real);
var HydLat    : Real;
    HydLong   : Real;
    Distance  : Real;
    SortOrd   : Integer;
    Latitude  : Real;
    Longitude : Real;
    PropID    : String;
    MatchVar  : Integer;
begin
  Latitude  := GetField('PROP','LATITUDE').AsFloat;
  Longitude := GetField('PROP','LONGITUDE').AsFloat;
  PropID    := GetField('PROP','PROPID').AsString;
  A('HYD').Gotop;
  MatchVar  := 0;
  While not A('HYD').Eof do begin
    HydIDField.Caption := GetField('HYD','HYDID').AsString;
    If (AnyStrToFloat(GetField('HYD','LATITUDE').AsString) <> 0) then begin
      HydLat   := GetField('HYD','LATITUDE').AsFloat;
      HydLong  := GetField('HYD','LONGITUDE').AsFloat;
      HydLat   := MinutesToDecimal(HydLat);
      HydLong  := MinutesToDecimal(HydLong);
      Distance := DistanceInFeetBetweenTwoCoordinates(MinutesToDecimal(Latitude),MinutesToDecimal(Longitude),HydLat,HydLong);

      If (Distance < DefaultDistance) then begin
        MatchVar           := MatchVar + 1;
        MatchField.Caption := IntToStr(MatchVar);
        Application.ProcessMessages;
        A('PROPHYD').UpdateSQL('SELECT * FROM PROPHYD WHERE PROPID = ' + PropID + ' AND HYDID = ' + GetField('HYD','HYDID').AsString);
        If A('PROPHYD').RecordsExist then
          A('PROPHYD').Edit
        else
          A('PROPHYD').Append;
        GetField('PROPHYD','PROPID').AsString  := PropID;
        GetField('PROPHYD','HYDID').AsString   := GetField('HYD','HYDID').AsString;
        GetField('PROPHYD','DISTANCE').AsFloat := Distance;
        A('PROPHYD').Post;
      end;
    end;
    A('HYD').Skip(1);
  end;
  A('PROPHYD').UpdateSQL('SELECT * FROM PROPHYD WHERE PROPID = ' + PropID + ' ORDER BY DISTANCE');
  SortOrd := 1;
  While Not A('PROPHYD').Eof do begin
    A('PROPHYD').Edit;
    GetField('PROPHYD','SORTORD').AsInteger := SortOrd;
    A('PROPHYD').Post;
    A('PROPHYD').Skip(1);
    SortOrd := SortOrd + 1;
  end;
  If (AnyStrToInt(MaxHydField.Value) > 0) then begin
    RunSQL('DELETE FROM PROPHYD WHERE PROPID = ' + PropID + ' AND SORTORD > ' + MaxHydField.Value)
  end;
end;

procedure THydSetForm.GisSetIDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  HydLoadTabShow(self);
end;


function THydSetForm.GetGeoJSONHydrants(FDatabase: TAlpineAdoConnection): String;
var
  hyd : TApolloData;
  json1 : Tipwjson;
  MyResult,mDescription,mName,mIcon : String;
  iCount : Integer;

  function IsValidGPSCoord(n : double) : System.Boolean;
  var myRes : System.Boolean;
  begin
    Result := True;
    myRes  := True;
    try
      try
        if n = 0 then begin
          myRes := False;
        end else begin
          if (n < -360) or (n > 360) then
            myRes := False;
        end;
      except
        on e: exception do begin
          Result := True;
        end;
      end;
    finally
      Result := myRes;
    end;
  end;
begin
  Result := '';
  MyResult := '';
  iCount := 0;
  try

    json1 := Tipwjson.Create(nil);

    hyd := Open_Query(FDatabase,'SELECT HYD.HYDID, HYD.HYDCODE, HYD.STRNUM, HYD.STREET, HYD.LOCATION, HYD.LATITUDE, HYD.LONGITUDE, '+
      ' HYD.HYDTYPEID, HYD.HYDSTATUSID, HYD.HYDNFPACLASSID, HYDTYPE.DESCR HYDTYPEDESCR, HYDSTATUS.DESCR HYDSTATUSDESCR, HYDNFPACLASS.DESCR HYDNFPACLASSDESCR ' +
      ' FROM HYD '+
      ' LEFT OUTER JOIN HYDTYPE ON HYD.HYDTYPEID = HYDTYPE.HYDTYPEID ' +
      ' LEFT OUTER JOIN HYDSTATUS ON HYD.HYDSTATUSID = HYDSTATUS.HYDSTATUSID ' +
      ' LEFT OUTER JOIN HYDNFPACLASS ON HYD.HYDNFPACLASSID = HYDNFPACLASS.HYDNFPACLASSID ' +
      ' WHERE (HYD.LATITUDE IS NOT NULL) AND (HYD.LATITUDE <> ' + AddExpr('')+') AND (HYD.LATITUDE <> '+AddExpr('0')+')');

    if hyd.RecordsExist then begin
      json1.StartObject;
      json1.PutProperty('type','FeatureCollection',2);
      json1.PutName('features');
      json1.StartArray; // Start array of points
      while not hyd.eof do begin
        try
          //If (anystrtofloat(tdbfield(hyd,'latitude'))<>0) then begin
          If IsValidGPSCoord(MinutesToDecimal(getField(hyd,'latitude').AsFloat)) and IsValidGPSCoord(MinutesToDecimal(getField(hyd,'longitude').AsFloat)) then begin
            Inc(iCount);

            mDescription := alltrim(tdbfield(hyd,'strnum')+' '+tdbfield(hyd,'street'));
            If (mDescription <>'') and (tdbfield(hyd,'location')<>'') then
              mDescription := mDescription + '-';
            mDescription := alltrim(mDescription+tdbfield(hyd,'location'));

            if (tdbfield(hyd,'hydcode') <> '') then
              mName := tdbfield(hyd,'hydcode')
            else
              mName := 'Hydrant'+tdbfield(hyd,'hydid');

            mIcon := 'hydrant_red'; // for now, just base hydrant icon

            json1.StartObject; // begin point
            json1.PutProperty('type','Feature',2);
            json1.PutName('geometry');
            json1.StartObject;
            json1.PutProperty('type','Point',2);
            json1.PutName('coordinates');
            json1.StartArray;
            json1.PutValue(FloatToStr(MinutesToDecimal(getField(hyd,'longitude').AsFloat)),3);
            json1.PutValue(FloatToStr(MinutesToDecimal(getField(hyd,'latitude').AsFloat)),3);
            json1.EndArray;
            json1.EndObject;

            json1.PutName('properties');
            json1.StartObject;
            json1.PutProperty('title',mName,2);
            json1.PutProperty('description',mDescription,2);
            json1.PutProperty('marker-symbol','hydrant_red',2);

            // custom
            json1.PutProperty('location',tdbfield(hyd,'LOCATION'),2);
            json1.PutProperty('strnum',tdbfield(hyd,'STRNUM'),2);
            json1.PutProperty('street',tdbfield(hyd,'STREET'),2);
            json1.PutProperty('status',tdbfield(hyd,'HYDSTATUSDESCR'),2);
            json1.PutProperty('type',tdbfield(hyd,'HYDTYPEDESCR'),2);
            json1.PutProperty('class',tdbfield(hyd,'HYDNFPACLASSDESCR'),2);
            json1.EndObject;

            json1.EndObject; // end point
          end;
        finally
          hyd.Next;
        end;
      end;
      json1.EndArray;   // end array of points
      json1.EndObject;
      json1.Flush;

      if iCount > 0 then
        MyResult := trim(json1.OutputData);
    end;
  finally
    FreeAndNil(json1);
    hyd.Free;
  end;
  Result := MyResult;
end;



end.
