unit SysSet;
 
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
  AlpineLookup,
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
  AlpineCheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  FormFunc,
  AdvGroupBox,
  AdvSplitter,
  AlpinePanel,
  ad3SpellBase,
  ad3Spell,
  ad3ConfigurationDialogCtrl,
  ad3SpellLanguages,  
  Gauges,
  Jpeg,
  AdvObj,
  ExtDlgs,
  Menus,
  AdvOfficeImage;

type
  TSysSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    SysSetControl: TAdvPageControl;
    SmallImage: TImageList;
    GenTab: TAdvTabSheet;
    FDIDTab: TAdvTabSheet;
    FDIDBrowse: TAlpineBlockBrowse;
    SysModTab: TAdvTabSheet;
    StreetTab: TAdvTabSheet;
    SysModuleTab: TAdvTabSheet;
    SysModuleBrowse: TAlpineBlockBrowse;
    SysToolTab: TAdvTabSheet;
    SysToolBrowse: TAlpineBlockBrowse;
    CityTab: TAdvTabSheet;
    CityBrowse: TAlpineBlockBrowse;
    SysNarrTab: TAdvTabSheet;
    SysNarrBrowse: TAlpineBlockBrowse;
    ComputerTab: TAdvTabSheet;
    ComputerBrowse: TAlpineBlockBrowse;
    SysFieldDefReqTab: TAdvTabSheet;
    SysFieldDefBrowse: TAlpineBlockBrowse;
    SysFieldReqBrowse: TAlpineBlockBrowse;
    CustSpellTab: TAdvTabSheet;
    CustSpellBrowse: TAlpineBlockBrowse;
    GisTab: TAdvTabSheet;
    CustDictDialog: TOpenDialog;
    ServiceTab: TAdvTabSheet;
    SysServiceBrowse: TAlpineBlockBrowse;
    Panel2: TPanel;
    CustDictCntPanel: TAlpinePanel;
    CustWordField: TAlpineEdit;
    Label6: TLabel;
    SearchWordButton: TAlpineGlowButton;
    CustDictCntField: TBlinkLabel;
    CustDictSetupPanel: TAlpinePanel;
    ImportButton: TAlpineGlowButton;
    LoadCustDictButton: TAlpineGlowButton;
    ImportDictionaryLabel: TLabel;
    DictionaryGauge: TGauge;
    BuildDescription: TLabel;
    FileDialog: TOpenDialog;
    StreetDialog: TOpenDialog;
    ImportFdidButton: TAlpineGlowButton;
    AlpinePanel3: TAlpinePanel;
    SysModuleSetBrowse: TAlpineTMSStringGrid;
    AlpinePanel4: TAlpinePanel;
    GisCodeLabel: TLabel;
    esriusernamelabel: TLabel;
    esripasswordnameLabel: TLabel;
    PlotAddrIDLabel: TLabel;
    PlotOccIDLabel: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    GisCodeField: TAlpineLookup;
    esriusernameField: TAlpineEdit;
    esripasswordnameField: TAlpineEdit;
    PlotAddrIDField: TAlpineLookup;
    PlotOccIDField: TAlpineLookup;
    AlpineLookup1: TAlpineLookup;
    UseArcGISOnline: TAlpineCheckBox;
    AlpineLookup2: TAlpineLookup;
    AlpineLookup3: TAlpineLookup;
    SlowQueryLogButton: TAlpineGlowButton;
    SaveTextFileDialog1: TSaveTextFileDialog;
    StreetExtBrowse: TAlpineBlockBrowse;
    Panel5: TPanel;
    StreetBrowse: TAlpineBlockBrowse;
    UpdateButton: TAlpineGlowButton;
    SearchButton: TAlpineGlowButton;
    SearchAndReplace: TAlpineGlowButton; 
    ImportStreetButton: TAlpineGlowButton;
    AdvSplitter1: TAdvSplitter;
    StreetAliasBrowse: TAlpineBlockBrowse;
    Panel4: TPanel;
    EnableGoogleMapsCheck: TAlpineCheckBox;
    SearchLogs: TAlpineGlowButton;
    AliasTestPanel: TPanel;
    Label7: TLabel;
    StreetBeforeField: TAlpineEdit;
    AliasTestButton: TAlpineGlowButton;
    StreetAfterLabel: TLabel;
    Label8: TLabel;
    IncGisCodeField: TAlpineLookup;
    StreetListMenu: TPopupMenu;
    Street11: TMenuItem;
    Street21: TMenuItem;
    StreetExtButton: TAlpineGlowButton;
    Label9: TLabel;
    AlpineLookup4: TAlpineLookup;
    Panel6: TPanel;
    AlpinePanel1: TAlpinePanel;
    CrystalDirLabel: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    DateFormatLabel: TLabel;
    memoryloglabel1: TLabel;
    memoryloglabel2: TLabel;
    MultiFdidField: TAlpineCheckBox;
    FullStreetField: TAlpineCheckBox;
    CrystalDirField: TAlpineEdit;
    SecIDField: TAlpineLookup;
    AlpineEdit1: TAlpineEdit;
    UseHTMLField: TAlpineCheckBox;
    DockedToolBarField: TAlpineCheckBox;
    SDIFormatField: TAlpineCheckBox;
    DateFormatField: TAlpineEdit;
    AlpineCheckBox1: TAlpineCheckBox;
    MEMORYWRITEField: TAlpineEdit;
    LogoPanel: TAlpinePanel;
    LogoButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    Panel3: TPanel;
    LogoImage: TImage;
    SplashScreenButton: TAlpineGlowButton;
    SysViewOverridesBrowse: TAlpineBlockBrowse;
    RedNMXCodeTab: TAdvTabSheet;
    RedNMXTableBrowse: TAlpineBlockBrowse;
    RedNMXCodeBrowse: TAlpineBlockBrowse;
    RedNMXCloudField: TAlpineCheckBox;
    NIValidatorField: TAlpineCheckBox;
    LogoPngImage: TAdvOfficeImage;
    Status911Splitter: TSplitter;
    FdidPanel: TPanel;
    FdidField: TAlpineLookup;
    Label10: TLabel;
    CanPlotHydrantsField: TAlpineCheckBox;
    FindThisComputer: TAlpineGlowButton;
    WEATHERLINKLabel: TLabel;
    WEATHERLINKField: TAlpineEdit;
    USESQLCRYSTALODBCCheck: TAlpineCheckBox;
    Label11: TLabel;
    AlpineEdit2: TAlpineEdit;
    SysViewCustField: TAlpineCheckBox;
    Label12: TLabel;
    MapBoxIDField: TAlpineLookup;
    procedure SysModTabShow(Sender: TObject);
    procedure SysModuleSetBrowseDblClick(Sender: TObject);
    procedure SysModuleSetBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StreetTabShow(Sender: TObject);
    procedure FDIDTabShow(Sender: TObject);
    procedure SysModuleTabShow(Sender: TObject);
    procedure SysToolTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CityTabShow(Sender: TObject);
    procedure StreetBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure UpdateButtonClick(Sender: TObject);
    procedure SysRepPanelNewRecord(DataSet: TDataSet);
    procedure GenTabShow(Sender: TObject);
    procedure SysNarrTabShow(Sender: TObject);
    procedure ComputerTabShow(Sender: TObject);
    procedure SecIDFieldEnter(Sender: TObject);
    procedure SysSetControlChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SysFieldDefReqTabShow(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure CustSpellTabShow(Sender: TObject);
    procedure SearchAndReplaceClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure LoadCustDictButtonClick(Sender: TObject);
    procedure ServiceTabShow(Sender: TObject);
    procedure SearchWordButtonClick(Sender: TObject);
    procedure LogoButtonClick(Sender: TObject);
    procedure LogoImageClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure ImportStreetButtonClick(Sender: TObject);
    procedure ImportFdidButtonClick(Sender: TObject);
    procedure SplashScreenButtonClick(Sender: TObject);
    procedure SlowQueryLogButtonClick(Sender: TObject);
    procedure SearchLogsClick(Sender: TObject);
    procedure AliasTestButtonClick(Sender: TObject);
    procedure StreetListMenuPopup(Sender: TObject);
    procedure StreetExtButtonClick(Sender: TObject);
    procedure RedNMXCodeTabShow(Sender: TObject);
    procedure RedNMXTableBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure FdidFieldEnter(Sender: TObject);
    procedure FdidFieldChange(Sender: TObject);
    procedure FindThisComputerClick(Sender: TObject);
    procedure MultiFdidFieldClick(Sender: TObject);
  private
    { Private declarations }
    function  CustomStripNonChar(StringVar: String): String;
    function  StreetStripNonChar(StringVar: String): String;
    procedure BuildCustDict;
    procedure SetGaugeVisible(iCount: Integer);
    procedure SetGaugeInVisible;
    procedure LoadDictionary;
    procedure ShowImage();
    procedure SearchLogsProc(mString,mFile: String);
    procedure LoadStreetAlias(Sender: TObject);
    procedure RedNMXCodeNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    class procedure RefreshStreetList;
    procedure CustomWordNewRecord(DataSet: TDataSet);
    procedure CheckCustomDictionary;
  end;

var
  SysSetForm: TSysSetForm;
  LastSpellUpdate: TDateTime;
  procedure SysSetVar;

implementation
uses Fdid,
     CommonVar,CommonProp,
     Street,
     StreetAlias,
     SysModule,
     SysTool,
     StreetSearchReplace,
     City,
     SysViewOverRide,
     Computer,
     SysService,
     SysNarr,
     SecSet,
     CustSpell,
     SysFieldDef,
     SysFieldReq,
     GenFunc,
     RedNMXTable,
     RedNMXCode,
     CommonFunc,
     applst,
     StreetExt,
     Search,
     Main;
     
{$R *.DFM}

procedure TSysSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  SysSetControl.ActivePage          := GenTab;
  SysModuleTab.TabVisible           := AlpineLogin;
  SysModTab.TabVisible              := AlpineLogin;
  SysViewOverridesBrowse.Visible    := AlpineLogin;

  UseHTMLField.Visible              := AlpineLogin;
  UpdateButton.Enabled              := AlpineLogin;
  StreetExtButton.Enabled           := AlpineLogin;

  DateFormatLabel.Visible           := AlpineLogin;
  DateFormatField.Visible           := AlpineLogin;

  CanPlotHydrantsField.Visible      := AlpineLogin;
  esriusernamelabel.Visible         := AlpineLogin;
  esripasswordnameLabel.Visible     := AlpineLogin;
  esriusernameField.Visible         := AlpineLogin;
  esripasswordnameField.Visible     := AlpineLogin;
  UseArcGISOnline.Visible           := AlpineLogin;
  LogoButton.Visible                := AlpineLogin;
  ClearButton.Visible               := AlpineLogin;
  SplashScreenButton.Visible        := AlpineLogin;
  ImportStreetButton.Enabled        := AlpineLogin;
  ImportFdidButton.Enabled          := AlpineLogin;
  MEMORYWRITEField.Visible          := AlpineLogin;
  memoryloglabel2.Visible           := AlpineLogin;
  memoryloglabel1.Visible           := AlpineLogin;
  SlowQueryLogButton.Visible        := AlpineLogin;
  SearchLogs.Visible                := AlpineLogin;
  EnableGoogleMapsCheck.Visible     := AlpineLogin;
  AliasTestPanel.Visible            := AlpineLogin;
  NIValidatorField.Visible          := AlpineLogin;
  UseSQLCrystalODBCCheck.Visible    := AlpineLogin;
  SysViewCustField.Visible          := AlpineLogin;

  If UseSQLCrystalODBCCheck.Visible then
    UseSQLCrystalODBCCheck.Visible := GlobalAdoConnection.TableType = MsSqlTableType;

  GisCodeLabel.Visible              := CheckModule('GIS');
  GisCodeField.Visible              := CheckModule('GIS');
  DictionaryGauge.Top               := round(LoadCustDictButton.Top + LoadCustDictButton.height/2 - DictionaryGauge.height/2);
  DictionaryGauge.left              := ImportDictionaryLabel.Left;
end;

class procedure TSysSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure SysSetVar;
var i        : Integer;
    Computer : TApolloData;
begin
  //appendtolog('Z1');
  GlobalCrystalDirectory := SqlLookup(AlpineGetComputerName,'COMPUTERNAME','COMPUTER','CRYSTALDIR');
  try
    //appendtolog('Z2');
    Open_Query('SYSSET',false,'SELECT * FROM SYSSET WHERE FDID = ' + AddExpr(mFireID));

    //appendtolog('syssetid:'+tdbfield('SYSSET','SYSSETID'));
    //appendtolog('lastspell:'+tdbfield('SYSSET','LASTSPELLUPDATE'));
    appendtolog(GetField('SYSSET','LASTSPELLUPDATE').AsString);
    LastSpellUpdate        := GetField('SYSSET','LASTSPELLUPDATE').AsDateTime;
    GisCode                := GetField('SYSSET','GISCODE').AsString;
    try
      computer := open_query(False,'SELECT GISCODE FROM COMPUTER WHERE COMPUTERNAME = '+AddExpr(AlpineGetComputerName));
      If tdbfield(computer,'GISCODE')<>'' then
        GisCode := tdbfield(computer,'GISCODE');
    finally
      computer.free;
    end;

    commonvar.MultiFdid    := tdbfield('SYSSET','MULTIFDID') = 'Y';
    FullStreet             := tdbfield('SYSSET','FULLSTREET') = 'Y';
    if GlobalCrystalDirectory = '' then
      GlobalCrystalDirectory := GetField('SYSSET','CRYSTALDIR').AsString;           
    TimeSyncComp           := tdbfield('SYSSET','TIMESYNCCOMP');
    DockedToolBar          := tdbField('SYSSET','DOCKEDTOOLBAR') = 'Y';
    SdiFormat              := tdbfield('SYSSET','SDIFORMAT') = 'Y';
    ViewOptionIcon         := tdbfield('SYSSET','VIEWOPTIONICON') = 'Y';
    MemoryWrite            := anystrtoint(tdbfield('SYSSET','MEMORYWRITE'));
    DisplayDateFormat      := IIf(tdbfield('SYSSET','DATEFORMAT') = '','MM/DD/YYYY',tdbfield('SYSSET','DATEFORMAT'));
    UseArcGISOnline        := tdbfield('SYSSET','USEARCGISONLINE') = 'Y';
    EnableGoogleMaps       := tdbfield('SYSSET','ENABLEGOOGLEMAPS') = 'Y';
    GlobalLogSlowQueries   := True;  //tdbfield('SYSSET','LOGSLOWQUERIES') = 'Y';
    UseSQLCrystalODBC      := tdbfield('SYSSET','USESQLCRYSTALODBC') = 'Y';
  finally
    CloseApollo('SYSSET');
  end;
  If MemoryWrite>0 then
    WriteMemoryLog(True);
end;

procedure TSysSetForm.SysModTabShow(Sender: TObject);
Var ColNum          : Integer;
    mAddedNewColumn : Boolean;
begin
  inherited;
  SysModuleSetBrowse.ColCount := 0;
  SysModuleSetBrowse.ClearColumns;
  SysModuleSetBrowse.SetColumn('MODCODE','MODCODE',0,'');
  SysModuleSetBrowse.SetColumn('DESCR',  'Modules',300,'');

  Open_Query('FDID',false,'SELECT FDID,MULTIINC FROM FDID ORDER BY FDID');
  A('FDID').GoTop;
  mAddedNewColumn := False;
  While Not A('FDID').Eof do begin
    If (mFireID = tdbfield('FDID','FDID')) then begin
      mAddedNewColumn := True;
      SysModuleSetBrowse.SetColumn(GetField('FDID','FDID').AsString,tdbfield('FDID','FDID'),75,'');
    end;  
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');

  If mAddedNewColumn then
    SysModuleSetBrowse.FixedCols := 2;

  SysModuleSetBrowse.RowCount  := SysModuleSetBrowse.FixedRows;
  Open_Query('SYSMODULESET',false,'SELECT * FROM SYSMODULESET');
  Open_Query('SYSMODULE',false,'SELECT MODCODE, DESCR FROM SYSMODULE ORDER BY DESCR');
  While Not A('SYSMODULE').Eof do begin
    SysModuleSetBrowse.SetValue('MODCODE', GetField('SYSMODULE','MODCODE').AsString);
    SysModuleSetBrowse.SetValue('DESCR',GetField('SYSMODULE','DESCR').AsString);
    for ColNum := SysModuleSetBrowse.FixedCols to SysModuleSetBrowse.ColCount-1 do begin
      if A('SYSMODULESET').ExactQueryLocate(['MODCODE','FDID'],[tdbfield('SYSMODULE','MODCODE'),SysModuleSetBrowse.ColumnNames[ColNum]]) then
        SysModuleSetBrowse.SetValue(SysModuleSetBrowse.ColumnNames[ColNum],'Yes')
      else
        SysModuleSetBrowse.SetValue(SysModuleSetBrowse.ColumnNames[ColNum],'')
    end;
    A('SYSMODULE').Skip(1);
  end;

  CloseApollo('SYSMODULE');
  CloseApollo('SYSMODULESET');
end;

procedure TSysSetForm.SysModuleSetBrowseDblClick(Sender: TObject);
Var Code : String;
    Fdid : String;
begin
  inherited;
  Code := SysModuleSetBrowse.GetValue('MODCODE');
  Fdid := SysModuleSetBrowse.ColumnNames[SysModuleSetBrowse.Col];;

  Open_Query('SYSMODULESET',true,'SELECT * FROM SYSMODULESET WHERE FDID = ' + AddExpr(Fdid) + ' AND MODCODE = ' + AddExpr(Code));
  If A('SYSMODULESET').RecordsExist then begin
    A('SYSMODULESET').Delete;
    SysModuleSetBrowse.Cells[SysModuleSetBrowse.Col,SysModuleSetBrowse.Row] := '';
  end else begin
    A('SYSMODULESET').Append;
    GetField('SYSMODULESET','FDID').AsString := Fdid;
    GetField('SYSMODULESET','MODCODE').AsString := Code;
    A('SYSMODULESET').Post;
    SysModuleSetBrowse.Cells[SysModuleSetBrowse.Col,SysModuleSetBrowse.Row] := 'Yes';
  end;
  CloseApollo('SYSMODULESET');
  SysModuleSetBrowse.SetFocus;
end;

procedure TSysSetForm.SysModuleSetBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key=VK_DELETE) then
  else if (key=VK_RETURN) or (key=VK_SPACE) then
    SysModuleSetBrowseDblClick(self);
end;

procedure TSysSetForm.StreetTabShow(Sender: TObject);
var ViewCode     : String;
    OverRideCode : String;
begin                          
  inherited;
  appendtolog('testd6');
  OverRideCode := SqlLookup('STREET','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  If Not (OverRideCode = '') then
    ViewCode := OverRideCode
  else if FullStreet then
    ViewCode := 'STREETALL'
  else
    ViewCode := 'STREET';

  UpdateButton.Parent       := StreetBrowse.FButtonPanel;
  UpdateButton.Align        := alleft;

  StreetExtButton.Parent    := StreetBrowse.FButtonPanel;
  StreetExtButton.Align     := alleft;

  SearchButton.Parent       := StreetBrowse.FButtonPanel;
  SearchButton.Align        := alleft;

  SearchAndReplace.Parent   := StreetBrowse.FButtonPanel;
  SearchAndReplace.Align    := alleft;

  ImportStreetButton.Parent := StreetBrowse.FButtonPanel;
  ImportStreetButton.Align  := alleft;
  
  appendtolog('testd7');
  StreetBrowse.Setup(ViewCode,TStreetForm,TStreetForm.NewRecord);
  appendtolog('testd8');
  StreetAliasBrowse.Setup('STREETALIAS','STREETID',SysSetForm.StreetBrowse.Grid.GetValue('STREETID',0), TStreetAliasForm,TStreetAliasForm.NewRecord);
  appendtolog('testd9');
  StreetBrowse.OnRowUpdate := StreetBrowseRowUpdate;
  StreetBrowseRowUpdate(self,1,1);
  StreetExtBrowse.Setup('STREETEXT',TStreetExtForm,TStreetExtForm.NewRecord);
  appendtolog('testd10');
end;

procedure TSysSetForm.StreetBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
Var StreetID : String;
begin
  inherited;
  StreetID                       := SysSetForm.StreetBrowse.Grid.GetValue('STREETID',NewRow);
  StreetAliasBrowse.Caption.Text := 'Street aliases for ' + SysSetForm.StreetBrowse.Grid.GetValue('STREET',NewRow);
  StreetAliasBrowse.Setup('STREETALIAS','STREETID',StreetID,TStreetAliasForm,TStreetAliasForm.NewRecord);
  StreetBeforeField.Text := SysSetForm.StreetBrowse.Grid.GetValue('STREET',NewRow);
end;

procedure TSysSetForm.StreetExtButtonClick(Sender: TObject);
begin
  inherited;
  if BooleanMessageDlg('This Function will update Street Listing Extensions based on Street Extension Alias Table, Continue?') then begin
    Open_Query('STREET',true,'SELECT * FROM STREET');
    while Not A('STREET').eof do begin
      A('STREET').Edit;
      StreetExtButton.Caption := GetField('STREET','STREETID').AsString;
      GetField('STREET','STREET').AsString := CheckStreetExt(GetField('STREET','STREET').AsString);
      A('STREET').Post;

      A('STREET').Skip(1);
      Application.ProcessMessages;
    end;
    CloseApollo('STREET');
    StreetExtButton.Caption := 'Correct Extensions';
    ShowMessage('Done');
    Application.ProcessMessages;
  end;
end;

procedure TSysSetForm.StreetListMenuPopup(Sender: TObject);
var m         : TMenuItem;
    i         : Integer;
    StartRow  : Integer;
    Street    : String;
begin
  StartRow := StreetBrowse.FGrid.Row-4;
  Street   := StreetBrowse.FGrid.GetValue('STREET',StreetBrowse.FGrid.Row);
  StreetListMenu.Items.Clear;
  for i := 1 to 15 do begin
    If (Street <> StreetBrowse.FGrid.GetValue('STREET',StartRow + i)) then begin
      m         := TMenuItem.Create(self);
      m.caption := StreetBrowse.FGrid.GetValue('STREET',StartRow + i);
      m.Tag     := AnyStrToInt(StreetBrowse.FGrid.GetValue('STREETID',StartRow + i));
      m.OnClick := LoadStreetAlias;
      StreetListMenu.Items.Add(m);
    end;  
  end;
end;

procedure TSysSetForm.LoadStreetAlias(Sender: TObject);
Var NewStreetID     : String;
    StreetName      : String;
begin
  NewStreetID     := IntToStr( (Sender as TMenuItem).Tag );
  StreetName      := StreetBrowse.FGrid.GetValue('STREET',StreetBrowse.FGrid.Row);
  Open_Query('STREETALIAS',true,'SELECT * FROM STREETALIAS WHERE STREETID = ' + pkvalue(NewStreetID) + ' AND STREETALIAS = ' + AddExpr(StreetName));
  If Not A('STREETALIAS').RecordsExist then begin
    A('STREETALIAS').Append;
    GetField('STREETALIAS','STREETID').AsString    := NewStreetID;
    GetField('STREETALIAS','STREETALIAS').AsString := StreetName;
    A('STREETALIAS').Post;
  end;
  CloseApollo('STREETALIAS');
  SendMessage( StreetBrowse.FGrid.Handle, WM_KEYDOWN, VK_DELETE, 0 );
end;

procedure TSysSetForm.FdidFieldChange(Sender: TObject);
begin
  inherited;
  RedNMXTableBrowseRowUpdate(self,RedNMXTableBrowse.FGrid.Row,RedNMXTableBrowse.FGrid.Row);
end;

procedure TSysSetForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y');
end;

procedure TSysSetForm.FDIDTabShow(Sender: TObject);
begin
  inherited;
  ImportFdidButton.Parent := FdidBrowse.FButtonPanel;
  ImportFdidButton.Align  := alleft;
  
  FdidBrowse.Setup('FDID',TFDIDForm,TFDIDForm.NewRecord);
end;

procedure TSysSetForm.FindThisComputerClick(Sender: TObject);
var i: Integer;
begin
  inherited;
  for i := 0 to ComputerBrowse.Grid.RowCount-1 do begin
    if uppercase(ComputerBrowse.GetValue('COMPUTERNAME',i)) = uppercase(AlpineGetComputerName) then begin
      ComputerBrowse.Grid.Row := i;
      break;
    end;
  end;
  if i = ComputerBrowse.Grid.RowCount then
    ShowMessage('Could not find Computer - Click New');
end;

procedure TSysSetForm.SysModuleTabShow(Sender: TObject);
begin
  inherited;
  SysModuleBrowse.Setup('SYSMODULE',TSysModuleForm,TSysModuleForm.NewRecord);
end;

procedure TSysSetForm.SysToolTabShow(Sender: TObject);
begin
  inherited;
  SysToolBrowse.Setup('SYSTOOL',TSysToolForm,TSysToolForm.NewRecord);
end;

procedure TSysSetForm.CityTabShow(Sender: TObject);
begin
  inherited;
  CityBrowse.Setup('CITY',TCityForm,TCityForm.NewRecord);
end;

procedure TSysSetForm.ClearButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('SYSSET',True,'SELECT * FROM SYSSET WHERE SYSSETID = ' + pkValue(pk));
  GetTable('SYSSET').Edit;
  GetField('SYSSET','LOGO').AsString := '';
  GetTable('SYSSET').Post;
  CloseApollo('SYSSET');
  LogoImage.Picture.Icon := GetGlowImageIcon('CLEAR');
end;


class procedure TSysSetForm.RefreshStreetList;
begin
  If BooleanMessageDlg('Are you sure?') then begin
    UpdateStreetsFromProp(GlobalAdoConnection);
  end;
end;

procedure TSysSetForm.UpdateButtonClick(Sender: TObject);
begin
  inherited;
  If mFireid='HARFO' then
    ShowMessage('Feature disabled for Harford County because they have intersections in PROP.STREET')
  else if BooleanMessageDlg('Are you sure?') then begin
    RefreshStreetList;
    StreetTabShow(nil);
    ShowMessage('Done');
  end;
end;

procedure TSysSetForm.SysRepPanelNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('PANEL').AsString := ' ';
end;

procedure TSysSetForm.GenTabShow(Sender: TObject);
begin
  inherited;
  SysViewOverridesBrowse.Setup('SYSVIEWOVERRIDES',TSystemViewOverridesForm,TSystemViewOverridesForm.NewRecord);
end;

procedure TSysSetForm.SetGaugeInVisible;
begin
  BuildDescription.Visible := True;
  DictionaryGauge.Visible  := false;
end;

procedure TSysSetForm.SetGaugeVisible(iCount: Integer);
begin
  BuildDescription.Visible := False;
  DictionaryGauge.Visible  := true;
  DictionaryGauge.MaxValue := iCount;
  DictionaryGauge.Progress := 0;
end;

procedure TSysSetForm.ImportButtonClick(Sender: TObject);
Var FileStringList : TStringList;
    i              : Integer;
    CustWord       : String;
    FullFileName   : String;
    FileName       : String;
begin
  If CustDictDialog.execute then begin
    FileStringList := TStringList.Create;
    FullFileName   := CustDictDialog.FileName;
    FileName       := ExtractFileName(CustDictDialog.FileName);
    FileName       := UpperCase(Substr(FileName,1,At('.',FileName)-1));

    FileToStringList(FullFileName,FileStringList);
    SetGaugeVisible(FileStringList.Count);

    Open_Query('CUSTSPELL',true,'SELECT * FROM CUSTSPELL WHERE 1=2');
    for i := 0 to FileStringList.Count - 1 do begin
      DictionaryGauge.Progress := DictionaryGauge.Progress + 1;
      CustWord                 := CustomStripNonChar(FileStringList[i]);

      Application.ProcessMessages;

      A('CUSTSPELL').UpdateSQL('SELECT * FROM CUSTSPELL WHERE CUSTWORD = ' + AddExpr(CustWord));
      If A('CUSTSPELL').RecordsExist then
        A('CUSTSPELL').Edit
      else
        A('CUSTSPELL').Append;
      GetField('CUSTSPELL','WORDSOURCE').AsString := FileName;
      GetField('CUSTSPELL','CUSTWORD').AsString   := CustWord;
      A('CUSTSPELL').Post;
    end;

    FileStringList.Free;
    CloseApollo('CUSTSPELL');
    SetGaugeInvisible;
    LoadDictionary;
    if BooleanMessageDlg('Done - Would you now like to Build the custdict.adm?') then
      BuildCustDict;
  end;
end;

procedure TSysSetForm.ImportFdidButtonClick(Sender: TObject);
Var FileStringList : TStringList;
    i              : Integer;
    FileName       : String;
    LineVar        : String;
    FdidVar        : String;
    DeptNameVar    : String;
begin
  inherited;
  If FileDialog.execute then begin
    FileStringList := TStringList.Create;
    FileName       := FileDialog.FileName;
    FileToStringList(FileName,FileStringList);

    Open_Query('FDID',True,'SELECT * FROM FDID WHERE 1=2');
    for i := 0 to FileStringList.Count - 1 do begin
      LineVar     := alltrim(StreetStripNonChar(alltrim(FileStringList[i])));
      FdidVar     := substr(LineVar,1,5);
      DeptNameVar := substr(LineVar,6,100);
      If Not (FdidVar = '') and Not (mFireID = FdidVar) then begin
        A('FDID').UpdateSQL('SELECT * FROM FDID WHERE FDID = ' + AddExpr(FdidVar));
        If Not A('FDID').RecordsExist then begin
          A('FDID').Append;
          GetField('FDID','FDID').AsString     := FdidVar;
          GetField('FDID','DEPTNAME').AsString := DeptNameVar;
          A('FDID').Post;
        end;  
      end;
    end;
    FileStringList.Free;
    CloseApollo('FDID');
    FDIDTabShow(self);
    ShowMessage('Agencies are imported from ' + FileName);
  end;
end;

procedure TSysSetForm.ImportStreetButtonClick(Sender: TObject);
Var FileStringList : TStringList;
    i              : Integer;
    FileName       : String;
    Street         : String;
begin
  inherited;
  If StreetDialog.execute then begin
    FileStringList := TStringList.Create;
    FileName       := StreetDialog.FileName;
    FileToStringList(FileName,FileStringList);

    Open_Query('STREET',True,'SELECT * FROM STREET WHERE 1=2');
    for i := 0 to FileStringList.Count - 1 do begin
      Street := alltrim(StreetStripNonChar(alltrim(FileStringList[i])));
      If Not (Street = '') then begin
        A('STREET').UpdateSQL('SELECT * FROM STREET WHERE STREET = ' + AddExpr(Street));
        If A('STREET').RecordsExist then
          A('STREET').Edit
        else
          A('STREET').Append;
        GetField('STREET','STREET').AsString := Street;
        A('STREET').Post;
      end;
    end;
    FileStringList.Free;
    CloseApollo('STREET');
    StreetTabShow(self);
    ShowMessage('Streets are imported from ' + FileName);
  end;
end;

function TSysSetForm.StreetStripNonChar(StringVar: String): String;
Var ColVar: Integer;
    RetVal: String;
begin
  RetVal := '';
  For ColVar := 1 to Length(StringVar) do begin
    If at(substr(UpperCase(StringVar),ColVar,1),#39 + ' -0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ') > 0 then
      RetVal := RetVal + substr(StringVar,ColVar,1);
  end;
  StreetStripNonChar := RetVal;
end;

function TSysSetForm.CustomStripNonChar(StringVar: String): String;
Var ColVar: Integer;
    RetVal: String;
begin
  RetVal := '';
  For ColVar := 1 to Length(StringVar) do begin
    If at(substr(UpperCase(StringVar),ColVar,1),#39 + ',.-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ') > 0 then
      RetVal := RetVal + substr(StringVar,ColVar,1);
  end;
  CustomStripNonChar := RetVal;
end;

procedure TSysSetForm.SysNarrTabShow(Sender: TObject);
begin
  inherited;
  SysNarrBrowse.Setup('SYSNARR',TSysNarrForm,TSysNarrForm.NewRecord);
end;

procedure TSysSetForm.ComputerTabShow(Sender: TObject);
begin
  inherited;
  SlowQueryLogButton.Parent             := ComputerBrowse.FButtonPanel;
  SearchLogs.Parent                     := ComputerBrowse.FButtonPanel;
  SlowQueryLogButton.Align              := alleft;
  SearchLogs.Align                      := alleft;
  FindThisComputer.Parent               := ComputerBrowse.FButtonPanel;
  FindThisComputer.Caption              := 'Find Computer ' + AlpineGetComputerName;
  FindThisComputer.Align                := alleft;
  ComputerBrowse.Setup('COMPUTER',TComputerForm,TComputerForm.NewRecord);
  ComputerBrowse.FDeleteButton.Position := bpmiddle;
end;

procedure TSysSetForm.SecIDFieldEnter(Sender: TObject);
begin
  inherited;
  SecIDField.SQLExpr := 'SELECT DESCR, SECID, LOGINCODE,USERNAME FROM SEC WHERE USERNAME <> ' + AddExpr('ALPINE') + ' AND (PROFILE = ' + AddExpr('') + ' OR PROFILE IS NULL) ORDER BY USERNAME';
end;

procedure TSysSetForm.ServiceTabShow(Sender: TObject);
begin
  inherited;
  SysServiceBrowse.Setup('SYSSERVICE',TSysServiceForm,TSysServiceForm.NewRecord);
end;

procedure TSysSetForm.SysSetControlChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := (SysSetControl.ActivePage = GenTab) or (SysSetControl.ActivePage = GisTab);
end;

procedure TSysSetForm.FormShow(Sender: TObject);
begin
  inherited;
  MultiFdidField.Enabled      := AlpineLogin;
  FullStreetField.Enabled     := AlpineLogin;
  DockedToolBarField.Enabled  := AlpineLogin;
  SDIFormatField.Enabled      := AlpineLogin;
  RedNMXCloudField.Enabled    := AlpineLogin;
  WEATHERLINKField.Enabled    := AlpineLogin;
  WEATHERLINKLabel.Enabled    := AlpineLogin;
  ShowImage;
end;

procedure TSysSetForm.SysFieldDefReqTabShow(Sender: TObject);
begin
  inherited;
  SysFieldDefBrowse.Setup('SYSFIELDDEF',TSysFieldDefForm,NewRecord);
  SysFieldReqBrowse.Setup('SYSFIELDREQ',TSysFieldReqForm,NewRecord);
end;

procedure TSysSetForm.SearchAndReplaceClick(Sender: TObject);
begin
  inherited;
  StreetSearchAndReplaceForm := TStreetSearchAndReplaceForm.Create(self,StreetBrowse.Grid.GetValue('STREET'));
  If StreetSearchAndReplaceForm.ShowModal = mrOk then
    StreetBrowse.Grid.DeleteCurrentRow;
  StreetSearchAndReplaceForm.Free;
end;

procedure TSysSetForm.SearchButtonClick(Sender: TObject);
begin
  inherited;
  StreetBrowse.Grid.SearchFooter.Visible := Not StreetBrowse.Grid.SearchFooter.Visible;
end;

procedure TSysSetForm.SearchLogsClick(Sender: TObject);
var mInput: String;
begin
  inherited;
  if not InputDlg('Query Logs','Search Term',mInput,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!') then
    exit;
  SearchLogsProc(mInput,ExtractFilePath(ParamStr(0))+'search.log');
end;

procedure TSysSetForm.SearchWordButtonClick(Sender: TObject);
begin
  inherited;
  CustSpellBrowse.ExplicitWhereClause := ' WHERE CUSTWORD LIKE ' + AddExpr(CustWordField.Text + '%');
  CustSpellBrowse.Setup('CUSTSPELL',TCustomWordForm,CustomWordNewRecord);
end;

procedure TSysSetForm.CustSpellTabShow(Sender: TObject);
begin
  LoadDictionary;
end;

procedure TSysSetForm.LoadDictionary;
Var CustSpellCnt : Integer;
begin
  inherited;
  CustSpellCnt := SqlTableRecCount('SELECT COUNT(*) FROM CUSTSPELL');

  If CustSpellCnt > 1000 then begin
    CustDictCntField.Caption            := 'There are ' + FormatFloat('###,##0',CustSpellCnt) + ' words, you must use the filter search';
    CustDictCntPanel.Visible            := true;
    CustSpellBrowse.ExplicitWhereClause := ' WHERE 1=2'
  end else begin
    CustDictCntPanel.Visible            := false;
    CustSpellBrowse.ExplicitWhereClause := '';
  end;
  CustSpellBrowse.Setup('CUSTSPELL',TCustomWordForm,CustomWordNewRecord);
end;

procedure TSysSetForm.CustomWordNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('WORDSOURCE').AsString := 'MANUAL';
  DataSet.FieldByname('CUSTWORD').AsString   := '<<Enter custom word>>';
end;

procedure TSysSetForm.LogoButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  If not FileDialog.execute then
    exit;
  FileName     := UpperCase(FileDialog.FileName);
  try
    Open_Query('SYSSET',True,'SELECT * FROM SYSSET WHERE SYSSETID = ' + pkValue(pk));
    GetTable('SYSSET').Edit;
    if At('.PNG',FileName) > 0 then
      GetField('SYSSET','LOGOEXT').AsString := 'PNG';

    (A('SYSSET').FieldByName('LOGO') as TBlobField).BlobType := ftBlob;
    TBlobField(A('SYSSET').FieldByName('LOGO')).LoadFromFile(FileName);
    GetTable('SYSSET').Post;
  finally
    CloseApollo('SYSSET');
  end;
  ShowImage;
end;

procedure TSysSetForm.LogoImageClick(Sender: TObject);
begin
  inherited;
  ShowImage;
end;

procedure TSysSetForm.MultiFdidFieldClick(Sender: TObject);
begin
  inherited;
  CommonVar.MultiFdid := MultiFdidField.Checked;
end;

procedure TSysSetForm.LoadCustDictButtonClick(Sender: TObject);
begin
  BuildCustDict;
end;

procedure TSysSetForm.AliasTestButtonClick(Sender: TObject);
var Street : String;
    C      : string;
begin
  inherited;
  Street                   := StreetBeforeField.Text;
  Street                   := CommonFunc.CheckStreetAlias(GlobalAdoConnection,Street);
  Street                   := CommonFunc.CheckStreetExt(GlobalAdoConnection,Street);
  StreetAfterLabel.Caption := Street;
end;

procedure TSysSetForm.BuildCustDict;
Var FileName : String;
begin
  inherited;
  if GlobalAdoConnection.IsJsonTableType then begin
    appendtolog('Need to implement TSysSetForm.BuildCustDict for json');
    exit;
  end;    
  CheckCustomDictionary;
  Try
    FileName := ExtractFilePath(ParamStr(0)) + '\CUSTDICT.ADM';
    Open_Query('SYSDICTIONARY',True,'SELECT * FROM SYSDICTIONARY WHERE CODE = ' + AddExpr('CUSTDICT'));
    PutInUpdateMode('SYSDICTIONARY');
    GetField('SYSDICTIONARY','CODE').AsString             := 'CUSTDICT';
    GetField('SYSDICTIONARY','UPDATEDATETIME').AsDateTime := Now;;
    TBlobField(A('SYSDICTIONARY').FieldByName('DICTBLOB')).LoadFromFile(Filename);
    GetTable('SYSDICTIONARY').Post;
  finally
    CloseApollo('SYSDICTIONARY');
  end;
  ShowMessage('Rebuilding and loading of the custdict.adm is finished.  The custom dictionary will be copied out to your computer on application restart.  Redstart RedNMX now.');
end;

procedure TSysSetForm.CheckCustomDictionary;
var FileName    : String;
    AddictSpell : TAddictSpell3;
begin
  FileName := ExtractFileDir(ParamStr(0))+'\'+'custdict.adm';
  If FileExists(FileName) then begin
    If not DeleteFile(FileName) then
      Exit;
  end;

  try
    AddictSpell                           := TAddictSpell3.Create(nil);
    AddictSpell.ConfigDictionaryDir.Add(ExtractFilePath(ParamStr(0)));
    AddictSpell.SuggestionsLearning       := False;

    AddictSpell.ConfigDefaultActiveCustom := 'custdict.adm';
    AddictSpell.ConfigUseMSWordCustom     := False;
    AddictSpell.ConfigStorage             := csNone;
    AddictSpell.Configuration.Loaded      := True;

    Open_Query('CUSTSPELL',False,'SELECT * FROM CUSTSPELL');

    SetGaugeVisible(A('CUSTSPELL').QueryRecCount);

    while not A('CUSTSPELL').eof do begin
      DictionaryGauge.Progress := DictionaryGauge.Progress + 1;
      Application.ProcessMessages;
      AddictSpell.ActiveCustomDictionary.AddIgnore(lowercase(tdbField('CUSTSPELL','CUSTWORD')));
      A('CUSTSPELL').Skip(1);
    end;
    SetGaugeInvisible;
  finally
    CloseApollo('CUSTSPELL');
    AddictSpell.Free;
  end;
end;


procedure TSysSetForm.ShowImage();
var Stream    : TMemoryStream;
    UsePNG    : Boolean;
    ImageName : TJPegImage;
    Ratio     : Real;
begin
  Stream    := TMemoryStream.create;

  try
    Open_Query('SYSSET',false,'SELECT LOGO, LOGOEXT FROM SYSSET WHERE SYSSETID = ' + PK);
    If Not (GetField('SYSSET','LOGO').AsString = '') then begin
      if tdbfield('SYSSET','LOGOEXT') = 'PNG' then begin
        UsePNG       := True;
      end else begin
        UsePNG       := False;
        ImageName    := TJpegImage.create;
      end;

      TBlobField(A('SYSSET').FieldByName('LOGO')).SaveToStream(Stream);
      Stream.position := 0;

      if UsePNG then begin
        LogoPngImage.Align := alClient;
        LogoImage.Visible  := false;
        LogoPngImage.Picture.LoadFromStream(stream);
      end else begin
        ImageName.LoadFromStream(stream);
        LogoImage.Align       := alClient;
        LogoPngImage.Visible  := false;
        LogoImage.Picture.bitmap.assign(ImageName);
      end;
    end;
  finally
    CloseApollo('SYSSET');
  end;
  ImageName.Free;
  Stream.free;
end;

procedure TSysSetForm.SlowQueryLogButtonClick(Sender: TObject);
begin
  SearchLogsProc('SLOW QUERY',ExtractFilePath(ParamStr(0))+'slowquery.log');
end;

procedure TSysSetForm.SearchLogsProc(mString,mFile: String);
Var LogList  : TStringList;
    SlowList : TStringList;
    i        : integer;
begin
  inherited;
  try
    loglist := TStringList.Create;
    slowlist := TStringList.Create;
    Open_Query('SLOW',false,'SELECT COMPUTERID, COMPUTERNAME, DESCR, LOGFILE FROM COMPUTER WHERE LOGFILE like '+AddExpr('%'+mString+'%'));
    If A('SLOW').RecordCount > 0 then begin
      while not A('SLOW').eof do begin
        try
          ParseBasedOnDelimiter(trim(GetField('SLOW','LOGFILE').AsString),#13#10,loglist);
          for i := 0 to LogList.Count - 1 do begin
            if (Pos(mString,UpperCase(trim(LogList[i]))) > 0) then
              SlowList.Add('['+tdbfield('SLOW','COMPUTERNAME')+'] '+trim(LogList[i]));
          end;
        finally
          A('SLOW').next;
        end;
      end;
      If SlowList.Count > 0 then begin
        AppendStringListToFile(mFile,SlowList);
        MessageDlg('Query for '+mString+' ('+ IntToStr(SlowList.Count) +') exported to:'+#13+#10+''+#13+#10+mFile, mtInformation, [mbOK], 0);
      end;
    end;
  finally
    CloseApollo('SLOW');
    FreeAndNil(loglist);
    FreeAndNil(slowlist);
  end;
end;

procedure TSysSetForm.SplashScreenButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  If not FileDialog.execute then
    exit;

  FileName     := UpperCase(FileDialog.FileName);

  Open_Query('SYSSET',True,'SELECT * FROM SYSSET WHERE SYSSETID = ' + pkValue(pk));
  GetTable('SYSSET').Edit;
  (A('SYSSET').FieldByName('SPLASHSCREEN') as TBlobField).BlobType := ftBlob;
  TBlobField(A('SYSSET').FieldByName('SPLASHSCREEN')).LoadFromFile(FileName);
  GetTable('SYSSET').Post;
  CloseApollo('SYSSET');
  ShowMessage(FileName + ' has been loaded into the system.');
end;

procedure TSysSetForm.RedNMXCodeTabShow(Sender: TObject);
begin
  inherited;
  UpdateButton.Parent       := StreetBrowse.FButtonPanel;
  UpdateButton.Align        := alleft;

  FdidPanel.Parent       := RedNMXCodeBrowse.FButtonPanel;
  FdidPanel.Align        := alleft;

  RedNMXTableBrowse.Setup('REDNMXTABLE',TRedNMXTableForm,TRedNMXTableForm.NewRecord);
  RedNMXTableBrowse.OnRowUpdate := RedNMXTableBrowseRowUpdate;
  RedNMXTableBrowseRowUpdate(self,1,1);
end;

procedure TSysSetForm.RedNMXTableBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
Var TableName : String;
    FieldName : String;
    SQLVar    : String;
begin
  TableName                            := RedNMXTableBrowse.Grid.GetValue('TABLENAME',NewRow);
  FieldName                            := RedNMXTableBrowse.Grid.GetValue('FIELDNAME',NewRow);
  RedNMXCodeBrowse.Caption.Text        := 'Code Set for ' + FieldName;
  If FdidField.Value  = '' then
    RedNMXCodeBrowse.ExplicitWhereClause := ' WHERE FIELDNAME = ' + AddExpr(FieldName)
  else begin
    SQLVar                               := ' WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND ((FDID = ' + AddExpr(FdidField.Value) +') OR (FDID IS NULL) OR (FDID = ' + AddExpr('')+'))';
    RedNMXCodeBrowse.ExplicitWhereClause := SQLVar;
  end;
  RedNMXCodeBrowse.Setup('REDNMXCODE',TRedNMXCodeForm,RedNMXCodeNewRecord);
end;

procedure TSysSetForm.RedNMXCodeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TABLENAME').AsString := RedNMXTableBrowse.Grid.GetValue('TABLENAME');
  DataSet.FieldbyName('FIELDNAME').AsString := RedNMXTableBrowse.Grid.GetValue('FIELDNAME');
  DataSet.FieldByname('ACTIVE').AsString    := 'Y';
end;

end.
