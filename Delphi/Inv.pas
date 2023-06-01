unit Inv;
  
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
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  FormFunc,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  AlpineMemo,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  jpeg,
  TreeSetup,
  AppLst,
  chadImage,
  alpinecheck,
  AlpinePanel,
  OvcDbPF,
  OrpheusWrapper,
  InvSet,
  AlpineLookGrid,
  AdvGroupBox;


type
  TInvForm = class(TNormalBaseForm)
    imgPers: TImageList;
    ReplicateInventory: TAlpineGlowButton;
    TopPanel: TPanel;
    GeneralInformationPanel: TAlpinePanel;
    DescrLabel: TLabel;
    FdidLabel: TLabel;
    InvLocIDLabel: TLabel;
    InvSubTypeLabel: TLabel;
    SerNumLabel: TLabel;
    ManufactLabel: TLabel;
    ModelLabel: TLabel;
    DescrField: TAlpineLookup;
    InvLocIDField: TAlpineLookup;
    InvNumField: TAlpineEdit;
    SerNumField: TAlpineEdit;
    ModelField: TAlpineEdit;
    InvControl: TAdvPageControl;
    InvGeneralTab: TAdvTabSheet;
    InvChassisTab: TAdvTabSheet;
    InvFuelTab: TAdvTabSheet;
    NarrTab: TAdvTabSheet;
    WOTab: TAdvTabSheet;
    InvTiresTab: TAdvTabSheet;
    InvEngineTab: TAdvTabSheet;
    ValuationTab: TAdvTabSheet;
    InvMechanicalTab: TAdvTabSheet;
    FDIDField: TAlpineLookup;
    AlpinePanel6: TAlpinePanel;
    Image: TChadImage;
    InvFuelBrowse: TAlpineBlockBrowse;
    InvTab: TAdvTabSheet;
    InvBrowse: TAlpineBlockBrowse;
    AppInvLocIDPanel: TPanel;
    Label53: TLabel;
    AppInvLocIDField: TAlpineLookup;
    Status911Splitter: TSplitter;
    InvTreePanel: TAlpinePanel;
    AlpinePanel10: TAlpinePanel;
    AlpineMemo1: TAlpineMemo;
    Label27: TLabel;
    Label28: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label51: TLabel;
    Label14: TLabel;
    Label36: TLabel;
    DisposalLabel: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label155: TLabel;
    InvDeprMethIDField: TAlpineLookup;
    ValueSQLField: TAlpineEdit;
    CostField: TAlpineEdit;
    ExpLifeField: TAlpineEdit;
    AlpineEdit7: TAlpineEdit;
    PurchaseDateField: TAlpineDateTime;
    OutOfServiceDateField: TAlpineDateTime;
    InServiceDateField: TAlpineDateTime;
    SoldDateField: TAlpineDateTime;
    RefurbishDateField: TAlpineDateTime;
    ManDateField: TAlpineDateTime;
    WorkOrdBrowse: TAlpineBlockBrowse;
    RolodexIDField: TAlpineLookup;
    Label13: TLabel;
    InvInspTab: TAdvTabSheet;
    InvInspSchdBrowse: TAlpineBlockBrowse;
    InvInspHistBrowse: TAlpineBlockBrowse;
    InvServTab: TAdvTabSheet;
    InvServSchdBrowse: TAlpineBlockBrowse;
    InvServHistBrowse: TAlpineBlockBrowse;
    InvSubTypeField: TAlpineLookup;
    InvDisposalIDField: TAlpineLookup;
    InvOwnerIDField: TAlpineLookup;
    Label12: TLabel;
    InvAppAutoCreditButton: TAlpineGlowButton;
    Label8: TLabel;
    ImageListIDField: TAlpineLookup;
    BarCodeDateLabel: TLabel;
    BarCodeDateField: TAlpineDateTime;
    printlocations: TAlpineGlowButton;
    InvLocAuditButton: TAlpineGlowButton;
    ShowAllInventory: TAlpineCheckBox;
    CustomTab: TAdvTabSheet;
    SelectPhotoButton: TAlpineGlowButton;
    DeletePhotoButton: TAlpineGlowButton;
    InvStatIDLabel: TLabel;
    InvStatIDField: TAlpineLookup;
    AdvPanel5: TAdvPanel;
    Image3: TImage;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    Header: TLabel;
    InvImageTab: TAdvTabSheet;
    PageRemTab: TAdvTabSheet;
    PageRemBrowse: TAlpineBlockBrowse;
    QuantityLabel: TLabel;
    QuantityField: TAlpineEdit;
    Label10: TLabel;
    InvStatDescrField: TAlpineEdit;
    TrackingField: TAlpineEdit;
    OpenDocFile: TOpenDialog;
    InvNumLabel: TLabel;
    TrackingLabel: TLabel;
    ExpDateLabel: TLabel;
    ExpDateField: TAlpineDateTime;
    Label61: TLabel;
    InvIDField: TAlpineEdit;
    Label150: TLabel;
    Label151: TLabel;
    WarrantyPeriodField: TAlpineEdit;
    Label152: TLabel;
    ReceiveDateField: TAlpineDateTime;
    ManufactField: TAlpineLookup;
    WorkOrdOpenButton: TAlpineGlowButton;
    PONumLabel: TLabel;
    PONumField: TAlpineEdit;
    SortOrdLabel: TLabel;
    SortOrdField: TAlpineEdit;
    ExpDateButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReplicateInventoryClick(Sender: TObject);
    procedure InvFuelTabShow(Sender: TObject);
    procedure AppInvLocIDFieldSuccessfulValidate(Sender: TObject);
    procedure InvTabShow(Sender: TObject);
    procedure DescrFieldLookupNewRecord(DataSet: TDataSet);
    procedure RolodexIDFieldCustomEditCode(Sender: TObject);
    procedure InvInspTabShow(Sender: TObject);
    procedure InvServTabShow(Sender: TObject);
    procedure WOTabShow(Sender: TObject);
    procedure InvAppAutoCreditButtonClick(Sender: TObject);
    procedure PrintLocationsClick(Sender: TObject);
    procedure InvLocAuditButtonClick(Sender: TObject);
    procedure ShowAllInventoryClick(Sender: TObject);
    procedure CustomTabShow(Sender: TObject);
    procedure SelectPhotoButtonClick(Sender: TObject);
    procedure DeletePhotoButtonClick(Sender: TObject);
    procedure ImageListIDFieldEnter(Sender: TObject);
    procedure ImageListIDFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure InvNumFieldExit(Sender: TObject);
    procedure InvImageTabShow(Sender: TObject);
    procedure InvGeneralTabShow(Sender: TObject);
    procedure PageRemTabShow(Sender: TObject);
    procedure FDIDFieldEnter(Sender: TObject);
    procedure WorkOrdOpenButtonClick(Sender: TObject);
    procedure InvChassisTabShow(Sender: TObject);
    procedure InvEngineTabShow(Sender: TObject);
    procedure InvMechanicalTabShow(Sender: TObject);
    procedure InvTiresTabShow(Sender: TObject);
    procedure InvDisposalIDFieldEnter(Sender: TObject);
    procedure InvDeprMethIDFieldEnter(Sender: TObject);
    procedure PageRemBrowseReplicate(Sender: TObject);
    procedure SerNumFieldExit(Sender: TObject);
    procedure DescrFieldEnter(Sender: TObject);
    procedure InvControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure ExpDateButtonClick(Sender: TObject);
  private
    { Private declarations }
    boInvAuto      : TBrowseObject;
    FCustomForm    : TBaseSubTabForm;
    FTypeVar       : String;
    FSetupSecurity : Boolean;
    FActivePage    : TAdvTabSheet;
    InvSetTree     : TAlpineInvSetTree;
    OldInvLocID    : String;
    NewInvLocID    : String;
    F              : TBaseSubTabForm;

    class procedure ClassReplicateInventory(Sender: TObject);
    class procedure InvLocBatchClick(Sender: TObject);

    procedure InvInspSchdNewRecord(DataSet: TDataSet);
    procedure InvInspHistNewRecord(DataSet: TDataSet);
    procedure InvServSchdNewRecord(DataSet: TDataSet);
    procedure InvServHistNewRecord(DataSet: TDataSet);
    procedure InvFuelNewRecord(DataSet: TDataSet);
    procedure CheckInventoryStatus;
    procedure InvLocChange(Sender: TObject;  Node: TTreeNode);
    procedure AppAutoAttNewRecord(Dataset: TDataSet);
    function GetInvServForm: String;
    function GetInvInspForm: String;
  public
    { Public declarations }
    class procedure TruckNewRecord(DataSet: TDataSet);
    class procedure HoseNewRecord(DataSet: TDataSet);
    class procedure ScbaNewRecord(DataSet: TDataSet);
    class procedure GenNewRecord(DataSet: TDataSet);
    class procedure StationNewRecord(DataSet: TDataSet);
    class procedure InvPartNewRecord(DataSet: TDataSet);
    class procedure ChangeType(Sender: TObject);
    procedure InventoryNewRecord(DataSet: TDataSet);
    class procedure UpdateReader(InvID, Odometer, HourPump, HourEngine, HourAerial: String);
    class procedure SpecialClick(Sender: TObject); override;
    procedure WorkOrdNewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    function ReportOkToAdd(mReportCode,mpk: String): Boolean; override;
    procedure DoBeforePost(Sender: TObject); override;
    procedure ShowInventoryForInvLocID(mInvLocID: TStringList);
    property TypeVar: String read FTypeVar write FTypeVar;
    class function CheckInvSecurity(InvServForm: String): Boolean;
    class function InvDeleteBasedOnType(mCode: String): Boolean;
    procedure DoAfterSetViewOnly; override;
    procedure PageRemindInvNewRecord(DataSet: TDataSet);
    procedure ShowImage;
  end;

var
  InvForm: TInvForm;

implementation
uses SecSet,
     CommonFunc,
     Search,
     CommonVar,
     SortGridView,
     SysSet,
     HoseTest,
     InvInspSchd,
     InvInspHist,
     InvServSchd,
     InvServHist,
     InvFuel,
     InvRep,
     InvImage,
     Rolodex,
     AlpineRepGen,
     Menus,
     WorkOrd,
     AlpineBaseSummaryReport,
     PageRemindRecurrence,
     TruckInvcheckRep,
     GenFunc,
     SubSortGridView,
     SysRepMan,
     InvLocAudit,
     InvCust,
     PersInventory,
     FDFunc,
     InvReplicate,
     InvLocBatch,
     InvChassis,
     InvStation,
     InvGeneral,
     InvEngine,
     InvTires,
     InvMechanical,
     InvApparatus,
     InvHose,
     InvPart,
     SCBARep,
     PageRemind,
     UnitNumHist,
     InvAppAutoCredit;

{$R *.DFM}
{$I rednmx.inc}

class procedure TInvForm.HoseNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString      := 'HOSE';
  DataSet.FieldbyName('FDID').AsString      := GetFdidVar;
  DataSet.FieldByName('QUANTITY').AsInteger := 1;
  if FIREID = '12013' then BEGIN
    DataSet.FieldbyName('INVNUM').AsString := '';
    DataSet.FieldbyName('INVOWNERID').AsString := '16';
  END;
end;

class procedure TInvForm.SCBANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'SCBA';
  DataSet.FieldbyName('FDID').AsString := GetFdidVar;
  if (FIREID = '34026') then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX('+SortPadLeft(GlobalAdoConnection,'INVNUM',24)+') FROM INV WHERE TYPE <> ' + AddExpr('TRUCK'),'1')
  else if (FIREID = '56015') then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX('+SortPadLeft(GlobalAdoConnection,'INVNUM',24)+') FROM INV WHERE TYPE = ' + AddExpr('SCBA'),'1')
  else if FIREID = '12013' then BEGIN
    DataSet.FieldbyName('INVNUM').AsString := '';
    DataSet.FieldbyName('INVOWNERID').AsString := '16';
  end else if GlobalAdoConnection.TableType = MySqlTableType then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX(CAST(invnum AS UNSIGNED)) FROM inv WHERE TYPE = ' + AddExpr('SCBA'),'1')
else
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT max(invnum) FROM inv WHERE TYPE = ' + AddExpr('SCBA') + ' AND ISNUMERIC(REPLACE(invnum,' + AddExpr('%') + ',' + AddExpr('') + ')) = 1','1');
  DataSet.FieldByName('QUANTITY').AsInteger := 1;
  LoadSysFieldDef(FireID,'SCBA',DataSet);
end;

procedure TInvForm.SelectPhotoButtonClick(Sender: TObject);
Var FileName    : String;
    ImageListID : String;
    SysTableID  : String;
    FileSize    : Real;
begin
  inherited;
  OpenDocFile.InitialDir := 'C:\';
  If OpenDocFile.Execute then begin
    FileName := OpenDocFile.Files[0];
    If FileExists(FileName) then begin
      FileSize := GetFileSize(FileName);
      If (FileSize > 2048000) then
        ShowMessage('The file is ' + FormatFloat('#,##0',FileSize/1000) + 'k, needs to be less than 2MB.  Please reformat')
      else begin
        SysTableID := SqlLookUp('INV','TABLENAME','SYSTABLE','SYSTABLEID');
        try
          Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE 1=2');
          GetTable('IMAGELIST').Append;
          (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
          TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);

          GetField('IMAGELIST','DATETIMEFILE').AsDateTime := FileDateToDateTime(FileAge(FileName));
          GetField('IMAGELIST','SYSTABLEID').AsString     := SysTableID;
          GetField('IMAGELIST','DESCR').AsString          := DescrField.Value;
          GetField('IMAGELIST','FILENAME').AsString       := ExtractFileName(FileName);
          GetField('IMAGELIST','SOURCECOMPUTER').AsString := AlpineGetComputerName;
          GetField('IMAGELIST','SOURCEFILE').AsString     := FileName;
          GetTable('IMAGELIST').Post;
          ImageListID                                     := GetField('IMAGELIST','IMAGELISTID').AsString;
          CloseApollo('IMAGELIST');

          ImageListIDField.Value := ImageListID;
          SaveButton.Enabled     := true;

          If AnyStrToInt(ImageListIDField.Value) > 0 then
            ShowImage;
        except
          CloseApollo('IMAGELIST');
        end;
      end;
    end else
      ShowMessage('File does not exist');
  end;
end;

procedure TInvForm.SerNumFieldExit(Sender: TObject);
begin
  inherited;
  If Not (SerNumField.Value = '') then begin
    Open_Query('GETINV',false,'SELECT INVNUM FROM INV WHERE SERNUM = ' + AddExpr(SerNumField.Value) + ' AND NOT INVID = ' + pk);
    If A('GETINV').RecordsExist then begin
      ShowMessage('Serial Number ' + SerNumField.Value + ' is already used in inventory number ' + tdbfield('GETINV','INVNUM'));
    end;
    CloseApollo('GETINV');
  end;
end;

class procedure TInvForm.TruckNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString       := 'TRUCK';
  DataSet.FieldbyName('FDID').AsString       := GetMultiFdidVar;
  DataSet.FieldByName('INCLUDE').AsString    := 'Y';
  DataSet.FieldByName('INCLUDEREP').AsString := 'Y';
  DataSet.FieldByName('QUANTITY').AsInteger  := 1;
  If mFireID = '10700' then
    Dataset.FieldByName('NEWRECORD').AsString := 'Y'
  else if FIREID = '12013' then BEGIN
    DataSet.FieldbyName('INVNUM').AsString := '';
    DataSet.FieldbyName('INVOWNERID').AsString := '16';
  END;
  LoadSysFieldDef(GetMultiFdidVar,'TRUCK',DataSet);
end;

procedure TInvForm.InvGeneralTabShow(Sender: TObject);
begin
  inherited;
  If FTypeVar = 'GEN' then
    CreateSubForm(F,TInvGeneralForm,InvGeneralTab)
  else if FTypeVar = 'SCBA' then
    CreateSubForm(F,TInvGeneralForm,InvGeneralTab)
  else if FTypeVar = 'STATION' then
    CreateSubForm(F,TInvStationForm,InvGeneralTab)
  else if FTypeVar = 'INVPART' then
    CreateSubForm(F,TInvPartForm,InvGeneralTab)
  else if FTypeVar = 'TRUCK' then
    CreateSubForm(F,TInvApparatusForm,InvGeneralTab)
  else if FTypeVar = 'HOSE' then
    CreateSubForm(F,TInvHoseForm,InvGeneralTab);
end;

class procedure TInvForm.GenNewRecord(DataSet: TDataSet);
Var InvNum : String;
begin
  DataSet.FieldbyName('TYPE').AsString      := 'GEN';
  DataSet.FieldbyName('FDID').AsString      := GetFdidVar;
  DataSet.FieldbyName('QUANTITY').AsInteger := 1;
  if FireId = '52065' then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX(INVNUM) FROM INV WHERE TYPE = ' + AddExpr('GEN'),'1')
  else if FireId = '34026' then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX('+SortPadLeft(GlobalAdoConnection,'INVNUM',24)+') FROM INV WHERE TYPE <> ' + AddExpr('TRUCK'),'1')
  else if FireId = '14004' then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX(INVNUM) FROM INV WHERE TYPE = ' + AddExpr('GEN')+' AND LENGTH(INVNUM)=6 AND INVNUM LIKE '+AddExpr('0%'),'1')
  else if (FireID = 'CLYTF') or (FireID = '10700')  then
    DataSet.FieldbyName('INVNUM').AsString := ''
  else if (FireID = '44007') or (FireID = '20004') then
    DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT max(invnum) FROM inv WHERE TYPE = ' + AddExpr('GEN') + ' AND ISNUMERIC(REPLACE(invnum,' + AddExpr('%') + ',' + AddExpr('') + ')) = 1','1')
  else if (FireID = '44003') then
    DataSet.FieldbyName('INVNUM').AsString := padl(GetNextVal('select max(CAST(invnum AS NUMERIC)) from inv where type = ' + AddExpr('GEN'),'1'),5,'0')
  else if FIREID = '12013' then BEGIN
    DataSet.FieldbyName('INVNUM').AsString := '';
    DataSet.FieldbyName('INVOWNERID').AsString := '16';
  end else if (FireID = '12345') then begin
    DataSet.FieldbyName('INVNUM').AsString := padl(GetNextVal('SELECT MAX(CAST(invnum as UNSIGNED)) FROM INV WHERE TYPE = ' + AddExpr('GEN'),'1'),6,'0');
  end else if GlobalAdoConnection.TableType = MySqlTableType then begin
    try
      DataSet.FieldbyName('INVNUM').AsString := GetNextVal('SELECT MAX(CAST(invnum as UNSIGNED)) FROM INV WHERE TYPE = ' + AddExpr('GEN'),'1')
    except
    end;
  end else begin
    try
      DataSet.FieldbyName('INVNUM').AsString := GetNextVal('select max(CAST(invnum AS INTEGER)) from inv where type = ' + AddExpr('GEN'),'1');
    except
    end;
  end;  
  LoadSysFieldDef(FireID,'GEN',DataSet);
end;

class procedure TInvForm.StationNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString      := 'STATION';
  DataSet.FieldbyName('FDID').AsString      := GetFdidVar;
  DataSet.FieldbyName('QUANTITY').AsInteger := 1;
end;

class procedure TInvForm.InvPartNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString      := 'INVPART';
  DataSet.FieldbyName('FDID').AsString      := GetFdidVar;
end;

procedure TInvForm.DoAfterSetViewOnly;
begin
  TFDFunc.NormalFormAfterSetViewOnly(self,pk);
  If ((FIREID = '14004') or (FIREID = '44003')) and (FTypeVar='GEN') then begin
    InvNumField.enabled := CheckSecVar('INVSETUP');
  end;
  If (mFireid = '10700') and (FTypeVar='TRUCK') then begin
    GeneralInformationPanel.enabled := CheckSecVar('APPSETUP');
  end;
end;

procedure TInvForm.FDIDFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure TInvForm.FormCreate(Sender: TObject);
var i       : Integer;
    InvFuel : Boolean;
begin
  inherited;
  TrackingField.Visible          := False;
  TrackingLabel.Visible          := False;
  DescrLabel.Caption             := IIf(FireID = '13000','Asset Type','Description');

  If FIREID = '81000' then begin
    InvStatIDField.Visible        := False;
    InvStatIDLabel.Visible        := False;
  end;

  If FIREID = '52109' then begin
    TrackingField.Visible          := True;
    TrackingLabel.Visible          := True;
    TrackingLabel.Left             := 5;
    TrackingField.Left             := 84;
  end;

  boInvAuto                := TBrowseObject.Create;
  boInvAuto.PrimeTable     := 'INVAPPAUTOCREDIT';
  boInvAuto.PrimeKeyField  := 'INVAPPAUTOCREDITID';

  boInvAuto.AddField('PERSCODE','PERSCODE','PERS','ID#',100);
  boInvAuto.AddField('LNAME','LNAME','PERS','Last Name',150);
  boInvAuto.AddField('FNAME','FNAME','PERS','First Name',150);

  boInvAuto.AddTable('INVAPPAUTOCREDIT','INVAPPAUTOCREDIT','');
  boInvAuto.AddTable('PERS','PERS','PERSID');
  boInvAuto.NewRecordFunction := AppAutoAttNewRecord;
  boInvAuto.Instance          := TInvAppAutoCreditForm;

  FdidLabel.Visible := MultiFdid;
  FdidField.Visible := MultiFdid;

  for i:= 0 to InvControl.PageCount -1 do begin
    If (TAdvTabSheet(InvControl.Pages[i]) <> CustomTab) and (TAdvTabSheet(InvControl.Pages[i]) <> InvGeneralTab) then
      TAdvTabSheet(InvControl.Pages[i]).TabVisible := False;
  end;    

  Open_Query('GETINV',false,'SELECT INVFUEL,TYPE,INVSUBTYPEID FROM INV WHERE INVID = ' + PK);
  FTypeVar := tdbfield('GETINV','TYPE');
  InvFuel  := tdbfield('GETINV','INVFUEL') = 'Y';
  CloseApollo('GETINV');

  InvServTab.TabVisible     := true;
  InvInspTab.TabVisible     := true;
  PageRemTab.TabVisible     := CheckModule('PAGEREM') and CheckSecVar('PAGEREMVIEW');

  WOTab.TabVisible          := CheckModule('WO');
  ValuationTab.TabVisible   := true;
  NarrTab.TabVisible        := true;
  SerNumLabel.Caption       := 'Serial Number:';
  DisposalLabel.Caption     := 'Disposal Date:';
  PrintLocations.Visible    := False;


  If FTypeVar = 'TRUCK' then begin
    PrintLocations.Visible         := True;
    Caption                        := 'Apparatus Management';
    InvGeneralTab.TabVisible       := True;
    FSetupSecurity                 := CheckSecVar('APPSETUP');
    SelectPhotoButton.Enabled      := CheckSecVar('APPEDIT');
    DeletePhotoButton.Enabled      := CheckSecVar('APPEDIT');
    SerNumLabel.Caption            := 'VIN #:';
    DisposalLabel.Caption          := 'Out of Service Date:';
    InvEngineTab.TabVisible        := True;
    InvTiresTab.TabVisible         := True;
    InvMechanicalTab.TabVisible    := True;
    InvChassisTab.TabVisible       := True;
    ViewOnly                       := Not CheckSecVar('APPEDIT');
    NewButton.Enabled              := CheckSecVar('APPNEW');
    InvTab.TabVisible              := true;
    InvFuelTab.TabVisible          := true;
    InvBrowse.Caption.Text         := 'Apparatus Inventory';
    InvNumLabel.Caption            := IIf(mFireid = '10700','UVI','Inventory #');

    AppInvLocIDField.SelfReferencingTree  := True;
    If InvSetTree = nil then begin
      InvSetTree          := TAlpineInvSetTree.Create(self);
      InvSetTree.Parent   := InvTreePanel;
      InvSetTree.Align    := alClient;
      InvSetTree.OnChange := InvLocChange;
    end;

    InvFuelBrowse.DeleteEnabled := CheckSecVar('APPDEL');
    InvGeneralTab.PageIndex     := 0;
    ValuationTab.PageIndex      := 1;
    InvChassisTab.PageIndex     := 2;
    InvMechanicalTab.PageIndex  := 3;
    InvEngineTab.PageIndex      := 4;
    InvTiresTab.PageIndex       := 5;
    InvFuelTab.PageIndex        := 6;
    WOTab.PageIndex             := 7;
    InvServTab.PageIndex        := 8;
    InvInspTab.PageIndex        := 9;
    InvTab.PageIndex            := 10;
    NarrTab.PageIndex           := 11;
    FActivePage                 := InvGeneralTab;

    TitleImage.Picture.Icon     := GetGlowImageIcon('APPARATUS32');
    Header.Caption              := 'Apparatus Entry Screen';
  end else if FTypeVar = 'HOSE' then begin
    ViewOnly                    := Not CheckSecVar('HOSEEDIT');
    SelectPhotoButton.Enabled   := CheckSecVar('HOSEEDIT');
    DeletePhotoButton.Enabled   := CheckSecVar('HOSEEDIT');
    Caption                     := 'Hose Management';
    InvGeneralTab.TabVisible    := True;
    FActivePage                 := InvGeneralTab;
    FSetupSecurity              := CheckSecVar('HOSESETUP');
    InvGeneralTab.PageIndex     := 0;
    ValuationTab.PageIndex      := 1;
    WOTab.PageIndex             := 2;
    InvServTab.PageIndex        := 3;
    InvInspTab.PageIndex        := 4;
    NarrTab.PageIndex           := 5;
    TitleImage.Picture.Icon     := GetGlowImageIcon('HOSE32');
    Header.Caption              := 'Hose Entry Screen';

  end else if FTypeVar = 'SCBA' then begin
    ViewOnly                    := Not CheckSecVar('SCBAEDIT');
    SelectPhotoButton.Enabled   := CheckSecVar('SCBAEDIT');
    DeletePhotoButton.Enabled   := CheckSecVar('SCBAEDIT');
    Caption                     := 'SCBA Management';
    FSetupSecurity              := CheckSecVar('SCBASETUP');
    InvGeneralTab.Caption       := 'SCBA';
    FActivePage                 := InvGeneralTab;
    InvGeneralTab.TabVisible    := true;
    InvGeneralTab.PageIndex     := 0;
    ValuationTab.PageIndex      := 1;
    WOTab.PageIndex             := 2;
    InvServTab.PageIndex        := 3;
    InvInspTab.PageIndex        := 4;
    NarrTab.PageIndex           := 5;
    TitleImage.Picture.Icon     := GetGlowImageIcon('SCBA32');
    Header.Caption              := 'SCBA Entry Screen';

  end else if FTypeVar = 'GEN' then begin
    ViewOnly                    := Not CheckSecVar('INVEDIT');
    SelectPhotoButton.Enabled   := CheckSecVar('INVEDIT');
    DeletePhotoButton.Enabled   := CheckSecVar('INVEDIT');
    Caption                     := 'Inventory Management';
    InvGeneralTab.TabVisible    := true;
    InvFuelTab.TabVisible       := InvFuel;
    FSetupSecurity              := CheckSecVar('INVSETUP');

    InvGeneralTab.Caption       := 'General Inventory';
    InvGeneralTab.PageIndex     := 0;
    ValuationTab.PageIndex      := 1;
    InvFuelTab.PageIndex        := 2;
    WOTab.PageIndex             := 3;
    InvServTab.PageIndex        := 4;
    InvInspTab.PageIndex        := 5;
    NarrTab.PageIndex           := 6;
    FActivePage                 := InvGeneralTab;
    TitleImage.Picture.Icon     := GetGlowImageIcon('INVENTORY32');
    Header.Caption              := 'Inventory Entry Screen';

  end else if FTypeVar = 'STATION' then begin
    ViewOnly                    := Not CheckSecVar('INVEDIT');
    SelectPhotoButton.Enabled   := CheckSecVar('INVEDIT');
    DeletePhotoButton.Enabled   := CheckSecVar('INVEDIT');
    Caption                     := 'Station Management';
    InvGeneralTab.TabVisible    := true;
    InvNumLabel.Caption         := 'Station #';
    InvBrowse.Caption.Text      := 'Station Inventory';
    InvTab.TabVisible           := true;

    If MFireID <> '70814' then begin
      InvLocIDLabel.Visible          := false;
      InvLocIDField.Visible          := false;
      SerNumLabel.Visible            := false;
      SerNumField.Visible            := false;
      ManufactLabel.Visible          := true;
      ManufactLabel.Caption          := 'Contractor:';
      ManufactField.Visible          := true;
      ModelLabel.Visible             := false;
      ModelField.Visible             := false;
    end;
  {
    AppInvLocIDField.SelfReferencingTree  := True;
    If InvSetTree = nil then begin
      InvSetTree          := TAlpineInvSetTree.Create(self);
      InvSetTree.Parent   := InvTreePanel;
      InvSetTree.Align    := alClient;
      InvSetTree.OnChange := InvLocChange;
    end;
     }
    InvGeneralTab.PageIndex     := 0;
    ValuationTab.PageIndex      := 1;
    WOTab.PageIndex             := 2;
    InvServTab.PageIndex        := 3;
    InvInspTab.PageIndex        := 4;
    InvTab.PageIndex            := 5;
    NarrTab.PageIndex           := 6;
    FActivePage                 := InvGeneralTab;
    TitleImage.Picture.Icon     := GetGlowImageIcon('STATION32');
    Header.Caption              := 'Station Entry Screen';

  end else if FTypeVar = 'INVPART' then begin
    ViewOnly                    := Not CheckSecVar('INVEDIT');
    SelectPhotoButton.Enabled   := CheckSecVar('INVEDIT');
    DeletePhotoButton.Enabled   := CheckSecVar('INVEDIT');
    Caption                     := 'Inventory Parts';
    SerNumLabel.Caption         := 'Part Number:';
    InvGeneralTab.TabVisible    := true;
    InvNumLabel.Visible         := false;
    InvNumField.Visible         := false;
    QuantityField.Visible       := false;
    QuantityLabel.Visible       := false;
    SortOrdLabel.Visible        := false;
    SortOrdField.Visible        := false;

    InvTab.TabVisible           := false;
    InvServTab.TabVisible       := false;
    InvInspTab.TabVisible       := false;
    ValuationTab.TabVisible     := false;

    InvGeneralTab.PageIndex     := 0;
    NarrTab.PageIndex           := 1;
    FActivePage                 := InvGeneralTab;
    TitleImage.Picture.Icon     := GetGlowImageIcon('INVENTORY32');
    Header.Caption              := 'Inventory Parts';
  end;

  If FTypeVar <> '' then begin
    InvSubTypeField.SqlExpr         := 'SELECT * FROM INVSUBTYPE WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND TYPE = ' + AddExpr(FTypeVar) + ' ORDER BY CODE';
    DescrField.SqlExpr              := 'SELECT * FROM INVDESCR WHERE ' + GetFdidSQL('INVDESCR.FDID') + ' AND TYPE = ' + AddExpr(FTypeVar)
  end;

  CustomTab.TabVisible                 := TInvCustomForm.TabVisible;
  BarCodeDateLabel.Visible             := CheckModule('INVBAR');
  BarCodeDateField.Visible             := CheckModule('INVBAR');
  ExpDateButton.Enabled                := Not ViewOnly;
  InvLocIDField.SelfReferencingTree    := True;
  AppInvLocIDField.SelfReferencingTree := True;
  InvImageTab.TabVisible               := (SQLLookUp(mFireID,'FDID','IMAGESET','INV') = 'Y');
end;

procedure TInvForm.FormShow(Sender: TObject);
begin
  inherited;
  InvControl.ActivePage := FActivePage;
  If AnyStrToInt(ImageListIDField.Value) > 0 then
    ShowImage;

  InvAppAutoCreditButton.Visible := CheckSecVar('HAND') and CheckSecVar('APPSETUP') and (FTypeVar = 'TRUCK');
  InvAppAutoCreditButton.Visible := False;  // mjs - This is not being used Anywhere.  instead INV.ATTENDPERSID is used.

  If InvSetTree <> nil then
    TTreeSetupForm.ClassDisplay_children(InvSetTree,nil,anystrtoint(AppInvLocIDField.Value),0,False,true,false,false,Nil);

  OldInvLocID             := InvLocIDField.Value;

  If FireID = '81000' then begin
    InvNumField.Enabled        := CheckSecVar('INVADD');
    DescrField.Enabled         := CheckSecVar('INVADD');
    InvLocIDField.Enabled      := CheckSecVar('INVADD');
  end;
  RolodexIDField.CanAddToLookUp := AlpineLogIn;
end;

procedure TInvForm.ShowImage;
var Stream    : TMemoryStream;
    ImageName : TJPegImage;
begin
  inherited;
  Stream    := TMemoryStream.create;
  ImageName := TJpegImage.create;
  try
    Open_Query('IMAGELIST',false,'SELECT IMAGEBLOB FROM IMAGELIST WHERE IMAGELISTID = ' + ImageListIDField.Value);
    TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToStream(Stream);
    Stream.position := 0;
    ImageName.LoadFromStream(stream);
    Image.Picture.bitmap.assign(ImageName);
    CloseApollo('IMAGELIST');
  except
    CloseApollo('IMAGELIST');
  end;
  ImageName.Free;
  Stream.free;
end;

procedure TInvForm.InvImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(FCustomForm,TInvImageForm,InvImageTab);
  SaveButton.Enabled := True;
end;

procedure TInvForm.InvInspHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := GetInvInspForm;
  DataSet.FieldByName('INVID').AsString       := pk;
  DataSet.FieldByName('FDID').AsString        := FdidField.Value;
end;

procedure TInvForm.InvInspSchdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := GetInvInspForm;
  DataSet.FieldByName('INVID').AsString       := pk;
  DataSet.FieldByName('FDID').AsString        := FdidField.Value;
end;

procedure TInvForm.InvFuelTabShow(Sender: TObject);
var ViewCode     : String;
    OverRideCode : String;
begin
  inherited;
  ViewCode     := 'INVFUEL';
  OverRideCode := SqlLookup(ViewCode,'OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  If OverRideCode = '' then
    InvFuelBrowse.Setup(ViewCode,'INVID',pk,TInvFuelForm,InvFuelNewRecord)
  else
    InvFuelBrowse.Setup(OverRideCode,'INVID',pk,TInvFuelForm,InvFuelNewRecord);
end;

procedure TInvForm.InvFuelNewRecord(DataSet: TDataSet);
Var InvFuelTypeID : String;
begin
  InvFuelTypeID                                    := SQLLookUp(pk,'INVID','INV','INVFUELTYPEID');
  DataSet.FieldByName('INVID').AsString            := pk;
  DataSet.FieldByName('DATETIMEFILLED').AsDateTime := Now;
  Dataset.FieldByName('INVFUELTYPEID').AsString    := InvFuelTypeID;
end;

procedure TInvForm.InventoryNewRecord(DataSet: TDataSet);
var InvLocId : String;
    TypeVar  : String;
begin
  If InvTreePanel.Visible then begin
    if InvSetTree.SelectionCount > 0 then
      InvLocID := inttostr(GetLocID(InvSetTree.Selections[0]))
    else
      exit;
  end else
    InvLocID := AppInvLocIDField.Value;

  If InvLocID='' then
    Raise Exception.Create('Need a valid Location Link!');
  DataSet.FieldByName('INVLOCID').AsString := pkValue(InvLocID);

  TInvForm.GenNewRecord(DataSet);
end;

procedure TInvForm.AppInvLocIDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  CheckInventoryStatus;
//ShowAllInventory.Checked := true;
//ShowAllInventoryClick(self);
end;

procedure TInvForm.InvTabShow(Sender: TObject);
begin
  inherited;
  AppInvLocIDPanel.Visible := CheckSecVar('APPSETUP');
  CheckInventoryStatus;
end;

procedure TInvForm.InvTiresTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInvTiresForm,InvTiresTab);
end;

procedure TInvForm.ShowInventoryForInvLocID(mInvLocID: TStringList);
var i            : Integer;
    OverRideCode : String;
begin
  InvBrowse.BrowseObject.ClearWhere;
  For i := 0 to mInvLocID.Count-1 do
    InvBrowse.BrowseObject.AddWhere('INVLOCID',mInvLocID[i]);
  InvBrowse.Caption.Text := 'Inventory in compartment ' + SQLLookUp(mInvLocID[0],'INVLOCID','INVLOC','BARCODE') + ' ' + SQLLookUp(mInvLocID[0],'INVLOCID','INVLOC','DESCR');
  OverRideCode := '';
  OverRideCode := SqlLookup('PERSINV','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  If OverRideCode = '' then
    InvBrowse.Setup('PERSINV','','',TInvForm,InventoryNewRecord)
  else
    InvBrowse.Setup(OverRideCode,'','',TInvForm,InventoryNewRecord);
end;

procedure TInvForm.InvLocChange(Sender: TObject;  Node: TTreeNode);
var mInvLocID: TStringList;
begin
  If InvSetTree.SelectionCount > 0 then begin
    mInvLocID := TStringList.create;
    mInvLocid.Add(IntToStr(GetLocID(InvSetTree.Selections[0])));
    ShowInventoryForInvLocID(mInvLocID);
    mInvLocID.Free;
  end else
    exit;
end;

procedure TInvForm.InvMechanicalTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInvMechanicalForm,InvMechanicalTab);
end;

procedure TInvForm.InvNumFieldExit(Sender: TObject);
begin
  inherited;
  If Not (alltrim(InvNumField.Text) = '') and InvNumField.ModifiedSinceEntered then begin
    Open_Query('INV',false,'SELECT TYPE, DESCR FROM INV WHERE INVNUM = ' + AddExpr(InvNumField.Value) + ' AND INVID <> ' + PK);
    If A('INV').RecordsExist then
      ShowMessage('Inventory Number ' + InvNumField.Value + ' is already used in the ' + SQLLookUp(tdbfield('INV','TYPE'),'CODE','INVTYPE','DESCR') + ' module.  It is recommended that you use another number.');
    CloseApollo('INV');
  end;
end;

procedure TInvForm.CheckInventoryStatus;
var OverRideCode : String;
begin
  InvTreePanel.Visible := False;
  InvBrowse.Visible    := False;
  If (AppInvLocIDField.Text <> '') then begin
    InvTreePanel.Visible     := SqlTableRecCount('SELECT COUNT(*) FROM INVLOC WHERE PARENTID = '+pkValue(AppInvLocIDField.text))>1;
    ShowAllInventory.Visible := InvTreePanel.Visible;
    InvBrowse.Visible        := True;
    OverRideCode             := '';
    OverRideCode             := SqlLookup('PERSINV','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
    If (OverRideCode = '') then
      InvBrowse.Setup('PERSINV','INVLOCID',AppInvLocIDField.Text,TInvForm,InventoryNewRecord)
    else
      InvBrowse.Setup(OverRideCode,'INVLOCID',AppInvLocIDField.Text,TInvForm,InventoryNewRecord);
    //InvSetTree.FreeNodes;
    //TTreeSetupForm.ClassDisplay_children(InvSetTree,nil,strtoint(AppInvLocIDField.Text),0,False,True,False,False,Nil);
    If InvSetTree.Items.Count>0 then begin
      InvSetTree.Selected := InvSetTree.Items[0];
      If InvTreePanel.Visible then
        InvSetTree.SetFocus;
    end;
  end;
end;

procedure TInvForm.DeletePhotoButtonClick(Sender: TObject);
begin
  inherited;
  If (AnyStrToInt(ImageListIDField.Value) > 0) and BooleanMessageDlg('Delete the image and remove the link?') then begin
    RunSQL('DELETE FROM IMAGELIST WHERE IMAGELISTID = ' + pkValue(ImageListIDField.Value));
    Image.Picture          := Nil;
    ImageListIDField.Value := '';
  end;
end;

procedure TInvForm.DescrFieldEnter(Sender: TObject);
begin
  inherited;
  DescrField.LookupFormWidth := DescrField.Width;
  If InvSubTypeField.Value = '' then
    DescrField.SQLExpr := 'SELECT * FROM INVDESCR WHERE TYPE = ' + AddExpr(FTypeVar) + ' ORDER BY DESCR'
  else
    DescrField.SQLExpr := 'SELECT * FROM INVDESCR WHERE TYPE = ' + AddExpr(FTypeVar) + ' AND (INVSUBTYPEID = ' + pkValue(InvSubTypeField.Value) + ' OR INVSUBTYPEID IS NULL) ORDER BY DESCR';
end;

procedure TInvForm.DescrFieldLookupNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TYPE').AsString       := FTypeVar;
end;

procedure TInvForm.RolodexIDFieldCustomEditCode(Sender: TObject);
begin
  inherited;
  If Sender is TAlpineLookupForm then
    RunAlpineForm(TRolodexForm,TAlpineLookupForm(Sender).Pk,'ROLODEX',TRolodexForm.NewRecord);
end;

class procedure TInvForm.SpecialClick(Sender: TObject);
var m    : TMenuItem;
    mSub : TMenuItem;

  procedure AddSub(mCaption: String);
  begin
    mSub             := TMenuItem.Create(TNewView(sender));
    mSub.caption     := mCaption;
    mSub.OnClick     := ChangeType;
    m.Insert(0,mSub);
  end;

begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Replicate';
    m.Onclick := ClassReplicateInventory;
    m.Enabled := CheckSecVar('INVEDIT');
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Change Type';
    m.Enabled := CheckSecVar('INVEDIT');
    AddSub('General');
    AddSub('SCBA');
    AddSub('Hose');
    AddSub('Apparatus');
    AddSub('Station');
    TNewView(Sender).PopupMenu.Items.Add(m);

    If AlpineLogIn then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Batch Update Locations';
      m.Onclick := InvLocBatchClick;
      m.Enabled := true;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;
  end;
end;

class procedure TInvForm.ChangeType(Sender: TObject);
var mView   : TNewView;
    InvID   : String;
    TypeVar : String;
begin
  mView := nil;
  If Sender is TMenuItem then begin
    If TMenuItem(Sender).Owner is TNewView then begin
      mView := TNewView(TMenuItem(Sender).Owner);
      InvID := mView.ViewGrid.GetValue('INVID');
    end;
  end else begin
    ShowMessage('There was a problem retrieving the Primary Key for the Table');
    exit;
  end;
  If (InvID <> '') then begin
    If RemoveCharacter(UpperCase(TMenuItem(Sender).Caption),'&') = 'GENERAL' then
      TypeVar := 'GEN'
    else if RemoveCharacter(UpperCase(TMenuItem(Sender).Caption),'&') = 'SCBA' then
      TypeVar := 'SCBA'
    else if RemoveCharacter(UpperCase(TMenuItem(Sender).Caption),'&') = 'HOSE' then
      TypeVar := 'HOSE'
    else if RemoveCharacter(UpperCase(TMenuItem(Sender).Caption),'&') = 'APPARATUS' then
      TypeVar := 'TRUCK'
    else  if RemoveCharacter(UpperCase(TMenuItem(Sender).Caption),'&') = 'STATION' then
      TypeVar := 'STATION'
    else
      TypeVar := 'GEN';

    RunSQL('UPDATE INV SET TYPE = ' + AddExpr(TypeVar) + ' WHERE INVID = ' + InvID);
    ShowMessage('Type changed to ' + TypeVar);
  end;  
end;

procedure TInvForm.ReplicateInventoryClick(Sender: TObject);
begin
  ClassReplicateInventory(Self);
end;

procedure TInvForm.InvInspTabShow(Sender: TObject);
begin
  inherited;
  InvInspSchdBrowse.Grid.FixedRowHeight := 35;
  InvinspSchdBrowse.ExplicitWhereClause := ' WHERE (((INVSERVSCHD.INVID = ' + pkValue(PK) + ') OR (INVSERVSCHD.INVSUBTYPEID = ' + pkValue(InvSubTypeField.Value) + ') AND INVSERVSCHD.INVID IS NULL)) AND INVSERVSCHD.INVSERVFORM LIKE ' + AddExpr('%INSP');
  InvInspSchdBrowse.Setup(IIf(FTypeVar = 'TRUCK','APPINSPSCHD','INVINSPSCHD'),'INVID',pk,TInvInspSchdForm,InvInspSchdNewRecord);

  InvInspHistBrowse.ExplicitWhereClause := ' WHERE INVSERVHIST.INVID = ' + pkValue(PK) + ' AND INVSERVHIST.INVSERVFORM LIKE ' + AddExpr('%INSP');
  InvInspHistBrowse.Setup('INVINSPHIST','INVID',pk,TInvInspHistForm,InvInspHistNewRecord);
end;

procedure TInvForm.InvServTabShow(Sender: TObject);
begin
  inherited;
  InvServSchdBrowse.Grid.FixedRowHeight := 35;
  InvServSchdBrowse.ExplicitWhereClause := ' WHERE (((INVSERVSCHD.INVID = ' + pkValue(PK) + ') OR (INVSERVSCHD.INVSUBTYPEID = ' + pkValue(InvSubTypeField.Value) + ') AND INVSERVSCHD.INVID IS NULL)) AND INVSERVSCHD.INVSERVFORM LIKE ' + AddExpr('%SERV');
  InvServSchdBrowse.Setup(IIf(FTypeVar = 'TRUCK','APPSERVSCHD','INVSERVSCHD'),'INVID',pk,TInvServSchdForm,InvServSchdNewRecord);

  InvServHistBrowse.ExplicitWhereClause := ' WHERE INVSERVHIST.INVID = ' + pkValue(PK) + ' AND INVSERVHIST.INVSERVFORM LIKE ' + AddExpr('%SERV');
  InvServHistBrowse.Setup('INVSERVHIST','INVID',pk,TInvServHistForm,InvServHistNewRecord);
end;

procedure TInvForm.InvServSchdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := GetInvServForm;
  DataSet.FieldByName('INVID').AsString       := pk;
end;

function TInvForm.GetInvInspForm: String;
begin
  If FTypeVar = 'SCBA' then
    GetInvInspForm := 'SCBAINSP'
  else if FTypeVar = 'GEN' then
    GetInvInspForm := 'INVINSP'
  else if FTypeVar = 'TRUCK' then
    GetInvInspForm := 'APPINSP'
  else if FTypeVar = 'STATION' then
    GetInvInspForm := 'STAINSP'
  else if FTypeVar = 'HOSE' then
    GetInvInspForm := 'HOSEINSP';
end;

function TInvForm.GetInvServForm: String;
begin
  If FTypeVar = 'SCBA' then
    GetInvServForm := 'SCBASERV'
  else if FTypeVar = 'GEN' then
    GetInvServForm := 'INVSERV'
  else if FTypeVar = 'TRUCK' then
    GetInvServForm := 'APPSERV'
  else if FTypeVar = 'STATION' then
    GetInvServForm := 'STASERV'
  else if FTypeVar = 'HOSE' then
    GetInvServForm := 'HOSESERV';
end;

procedure TInvForm.InvServHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := GetInvServForm;
  DataSet.FieldByName('INVID').AsString       := pk;
end;

class procedure TInvform.UpdateReader(InvID, Odometer, HourPump, HourEngine, HourAerial: String);
begin
  If BooleanMessageDlg('Update apparatus readings?') then begin
    Open_Query('INV',true,'SELECT * FROM INV WHERE INVID = ' + PkValue(InvID));
    If A('INV').RecordsExist then begin
      GetTable('INV').Edit;
      If AnyStrToFloat(OdoMeter) > GetField('INV','ODOMETER').AsFloat then begin
        GetField('INV','ODOMETER').AsFloat        := AnyStrToFloat(OdoMeter);
        GetField('INV','ODOMETERDATE').AsDateTime := Now;
      end;
      If AnyStrToFloat(HourEngine) > GetField('INV','HOURENGINE').AsFloat then begin
        GetField('INV','HOURENGINE').AsFloat        := AnyStrToFloat(HourEngine);
        GetField('INV','HOURENGINEDATE').AsDateTime := Now;
      end;
      If AnyStrToFloat(HourPump) > GetField('INV','HOURPUMP').AsFloat then begin
        GetField('INV','HOURPUMP').AsFloat          := AnyStrToFloat(HourPump);
        GetField('INV','HOURPUMPDATE').AsDateTime   := Now;
      end;
      If AnyStrToFloat(HourAerial) > GetField('INV','HOURAERIAL').AsFloat then begin
        GetField('INV','HOURAERIAL').AsFloat        := AnyStrToFloat(HourAerial);
        GetField('INV','HOURAERIALDATE').AsDateTime := Now;
      end;
      GetTable('INV').Post;
    end;
    CloseApollo('INV');
  end;
end;

class procedure TInvForm.ClassReplicateInventory(Sender: TObject);
var RowNum           : Integer;
    NewInvID         : Integer;
    InvID            : String;
    InvView          : TNewView;
    InvNumVar        : String;
    InvServSchdID    : Integer;
    NewInvServSchdID : Integer;
begin
  inherited;
  InvView := nil;
  If Sender is TNormalBaseForm then
    InvID := TNormalBaseForm(Sender).Pk
  else if Sender is TMenuItem then begin
    If TMenuItem(Sender).Owner is TNewView then begin
      InvView := TNewView(TMenuItem(Sender).Owner);
      InvID   := InvView.ViewGrid.GetValue('INVID');
    end;
  end else begin
    ShowMessage('There was a problem retrieving the Primary Key for the Table');
    exit;
  end;

  InvReplicateForm                    := TInvReplicateForm.Create(application);
  InvReplicateForm.TitleField.Caption := 'You are replicating inventory# ' + SQLLookUp(InvID,'INVID','INV','INVNUM') + '.  Follow these steps.';

  If InvReplicateForm.ShowModal = mrOK then begin
    For RowNum := 0 to 1000 do begin
      InvNumVar := InvReplicateForm.InvNumField.Lines[RowNum];
      If Not (InvNumVar = '') then begin
        NewInvID := AlpineReplicateRecord('INV',StrToInt(InvID));
        RunSQL('UPDATE INV SET INVNUM = ' + AddExpr(InvNumVar) + ' WHERE INVID = ' + pkValue(IntToStr(NewInvID)));

        If InvReplicateForm.InvServSchdCheck.checked then begin
          Open_Query('INVSERVSCHD',false,'SELECT INVSERVSCHDID FROM INVSERVSCHD WHERE INVID = ' + InvID);
          While Not A('INVSERVSCHD').Eof do begin
            InvServSchdID    := GetField('INVSERVSCHD','INVSERVSCHDID').AsInteger;
            NewInvServSchdID := AlpineReplicateRecord('INVSERVSCHD',InvServSchdID);
            RunSQL('UPDATE INVSERVSCHD SET INVID = ' + pkValue(IntToStr(NewInvID)) + ' WHERE INVSERVSCHDID = ' + pkValue(IntToStr(NewInvServSchdID)));
            A('INVSERVSCHD').Skip(1);
          end;
          CloseApollo('INVSERVSCHD');
        end;  

        If (InvView <> nil) then begin
          InvView.ViewGrid.InsertAtCurrentRow;
          InvView.ViewGrid.SetValue('INVID',InvView.ViewGrid.Row,IntToStr(NewInvID));
          InvView.RefreshGrid(inttostr(NewInvID),'','',True);
        end;
      end;
    end;
  end;
  InvReplicateForm.Free;
end;

procedure TInvForm.WOTabShow(Sender: TObject);
begin
  inherited;
  WorkOrdOpenButton.Parent             := WorkOrdBrowse.FButtonPanel;
  WorkOrdOpenButton.Align              := alleft;
  WorkOrdBrowse.FDeleteButton.Position := bpmiddle;
  WorkOrdBrowse.FGrid.WordWrap         := true;
  WorkOrdBrowse.ExplicitWhereClause    := ' WHERE INV.INVID = ' + pkValue(PK) + IIf(WorkOrdOpenButton.ImageName = 'GLOWBUTTONNONE',' AND WOSTATUS.OPENWO = ' + AddExpr('Y'),'');
  WorkOrdBrowse.Setup('WORKORDINV','INVID',pk,TWorkOrdForm,WorkOrdNewRecord);
  WorkOrdBrowse.DefaultRowHeight       := 36;
  WorkOrdBrowse.FixedRowHeight         := 22;
end;

procedure TInvForm.WorkOrdOpenButtonClick(Sender: TObject);
begin
  inherited;
  If WorkOrdOpenButton.ImageName = 'GLOWBUTTONNONE' then begin
    WorkOrdOpenButton.ImageName := 'GLOWBUTTONCHECKED';
  end else begin
    WorkOrdOpenButton.ImageName := 'GLOWBUTTONNONE';
  end;
  WOTabShow(self);
end;

procedure TInvForm.WorkOrdNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVID').AsString   := pk;
  DataSet.FieldByName('INVTYPE').AsString := FTypeVar;
  DataSet.FieldByName('FDID').AsString    := FdidField.Value;
  TWorkOrdForm.NewRecord(DataSet);
end;

function TInvForm.CanAddNewRecord(Sender: TObject): Boolean;
Var ViewCode             : String;
    mPersonInventoryform : TPersonInventoryForm;
begin
  mPersonInventoryform := TPersonInventoryForm(GetFormOfType(TPersonInventoryForm));
  CanAddNewRecord      := false;

  If sender is TNewView then begin
    ViewCode := TNewView(Sender).ViewCode;
    If substr(ViewCode,1,3) = 'APP' then
      CanAddNewRecord := CheckSecVar('APPADD')
    else if substr(ViewCode,1,3) = 'GEN' then
      CanAddNewRecord := CheckSecVar('INVADD')
    else if substr(ViewCode,1,7) = 'STATION' then
      CanAddNewRecord := CheckSecVar('INVADD')
    else if substr(ViewCode,1,4) = 'HOSE' then
      CanAddNewRecord := CheckSecVar('HOSEADD')
    else if substr(ViewCode,1,4) = 'SCBA' then
      CanAddNewRecord := CheckSecVar('SCBAADD');
  end else if mPersonInventoryForm <> nil then begin
    if Sender = mPersonInventoryForm.PersonnelInventory then begin
      CanAddNewRecord := CheckSecVar('INVADD');
    end;
  end;
end;

class function TInvForm.InvDeleteBasedOnType(mCode: String): Boolean;
begin
  result := False;
  If substr(mCode,1,3) = 'APP' then
    Result := CheckSecVar('APPDEL')
  else if substr(mCode,1,3) = 'GEN' then
    Result := CheckSecVar('INVDEL')
  else if substr(mCode,1,3) = 'INVPART' then
    Result := CheckSecVar('INVDEL')
  else if substr(mCode,1,7) = 'STATION' then
    Result := CheckSecVar('INVDEL')
  else if substr(mCode,1,4) = 'HOSE' then
    Result := CheckSecVar('HOSEDEL')
  else if substr(mCode,1,4) = 'SCBA' then
    Result := CheckSecVar('SCBADEL');
 end;

procedure TInvForm.InvDeprMethIDFieldEnter(Sender: TObject);
begin
  inherited;
  InvDeprMethIDField.SQLExpr := 'SELECT * FROM INVDEPRMETH WHERE ' + GetFdidSQL('INVDEPRMETH.FDID') + ' ORDER BY CODE';
end;

procedure TInvForm.InvDisposalIDFieldEnter(Sender: TObject);
begin
  inherited;
  InvDisposalIDField.SQLExpr := 'SELECT * FROM INVDISPOSAL WHERE ' + GetFdidSQL('INVDISPOSAL.FDID') + ' ORDER BY CODE';
end;

procedure TInvForm.InvEngineTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInvEngineForm,InvEngineTab);
end;

function TInvForm.CanDeleteRecord(Sender: TObject): Boolean;
Var ViewCode : String;
begin
  CanDeleteRecord := false;
  If sender is TNewView then begin
    ViewCode := TNewView(Sender).ViewCode;
    CanDeleteRecord := InvDeleteBasedOnType(ViewCode);
  end else
    CanDeleteRecord := True;
end;

function TInvForm.ReportOkToAdd(mReportCode,mpk: String): Boolean;
begin
  If (mReportCode = 'INDTRUCKCHECKREP') then
    result := (SqlLookUp(mpk,'INVID','INV','TYPE') = 'TRUCK') or (SqlLookUp(mpk,'INVID','INV','TYPE') = 'STATION')
  else if (mReportCode = 'INDSCBAREP') then
    result := (SqlLookUp(mpk,'INVID','INV','TYPE') = 'SCBA')
  else
    result := true;
end;

procedure TInvForm.ImageListIDFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  inherited;
  If (AnyStrToInt(ImageListIDField.Value) > 0) then 
    ShowImage;
end;

procedure TInvForm.ImageListIDFieldEnter(Sender: TObject);
Var SysTableID : String;
begin
  inherited;
  SysTableID               := SqlLookUp('INV','TABLENAME','SYSTABLE','SYSTABLEID');
  ImageListIDField.SQLExpr := 'SELECT IMAGELISTID, FILENAME, DESCR FROM IMAGELIST WHERE SYSTABLEID = ' + pkValue(SysTableID) + ' ORDER BY DESCR';
end;

procedure TInvForm.InvAppAutoCreditButtonClick(Sender: TObject);
begin
  boInvAuto.ForeignKeyfield   := 'INVID';
  boInvAuto.ForeignKeyValue   := pk;
  boInvAuto.ForeignKeyIsChar  := False;
  SubSortGridViewDriver(boInvAuto,'Automatic Credit for Listed Personnel');
end;

procedure TInvForm.InvChassisTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInvChassisForm,InvChassisTab);
end;

procedure TInvForm.InvControlChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TInvForm.AppAutoAttNewRecord(Dataset: TDataSet);
begin
  DataSet.FieldByname('INVID').AsString := PK;
end;

procedure TInvForm.PrintLocationsClick(Sender: TObject);
var mSysRepManForm: TSysRepManForm;
begin
  inherited;
  mSysRepManForm := TSysRepManForm.Create(application,'INVLOCREP');
  mSysRepManForm.Show;
end;

procedure TInvForm.InvLocAuditButtonClick(Sender: TObject);
begin
  inherited;
  InvLocAuditForm := TInvLocAuditForm.Create(Self,pk);
  InvLocAuditForm.ShowModal;
  InvLocAuditForm.Free;
end;

procedure TInvForm.DoBeforePost(Sender: TObject);
begin
  If (InvLocIDField.Value <> '') and (OldInvLocID <> InvLocIDField.Value) then begin
    Open_Query('INVLOCAUDIT',true,'SELECT * FROM INVLOCAUDIT WHERE 1=2');
    A('INVLOCAUDIT').Append;
    GetField('INVLOCAUDIT','INVID').AsString          := pk;
    GetField('INVLOCAUDIT','OLDINVLOCID').AsString    := OldInvLocID;
    GetField('INVLOCAUDIT','NEWINVLOCID').AsString    := InvLocIDField.Value;
    GetField('INVLOCAUDIT','DATETIMEMOVE').AsDateTime := Now;
    GetField('INVLOCAUDIT','SECID').AsString          := SecIDVar;
    GetField('INVLOCAUDIT','PERSID').AsString         := GlobalPersID;
    If (OldInvLocID = '') then
      GetField('INVLOCAUDIT','DESCR').AsString          := 'First Time Location'
    else
      GetField('INVLOCAUDIT','DESCR').AsString          := 'Moved Inventory';
    A('INVLOCAUDIT').Post;
    CloseApollo('INVLOCAUDIT');
  end;
end;

procedure TInvForm.ExpDateButtonClick(Sender: TObject);
begin
  inherited;
  ExpDateField.Value := ManDateField.Value + StrToFloat(ExpLifeField.value) * 365.25;
end;

procedure TInvForm.PageRemTabShow(Sender: TObject);
begin
  inherited;
  PageRemBrowse.FReplicateButton.Width     := 100;
  PageRemBrowse.FReplicateButton.Left      := PageRemBrowse.FDeleteButton.Left + 1;
  PageRemBrowse.FReplicateButton.Visible   := True;
  PageRemBrowse.ExplicitWhereClause := ' WHERE PAGEREMIND.TABLENAME = ' + AddExpr('INV') + ' AND PAGEREMIND.TABLERECID = ' + pkValue(PK);
  PageRemBrowse.Setup('PAGEREMIND',TPageRemindForm,PageRemindInvNewRecord);
end;

procedure TInvForm.PageRemBrowseReplicate(Sender: TObject);
var PageRemindID : String;
begin
  inherited;
  PageRemindID := PageRemBrowse.GetValue('PAGEREMINDID');

  If (PageRemindID = '') then begin
    ShowMessage('Nothing Selected, Select Reminder Record to Proceed.');
    Exit;
  end;

  PageRemindRecurrenceForm := TPageRemindRecurrenceForm.Create(application,PageRemindID);
  PageRemindRecurrenceForm.ShowModal;
  PageRemindRecurrenceForm.Free;
end;

procedure TInvForm.PageRemindInvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('TABLENAME').AsString        := 'INV';
  DataSet.FieldByname('TABLERECID').AsString       := pk;
  DataSet.FieldByname('FIELDNAME').AsString        := '';
  DataSet.FieldByname('SUBJECT').AsString          := '< General Message >';
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  DataSet.FieldByname('CALENDARICONID').AsString   := '24';
  DataSet.FieldByname('NARR').AsString             := 'Enter the message to be sent';
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('FDID').AsString             := FdidField.Value;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
end;

procedure TInvForm.ShowAllInventoryClick(Sender: TObject);
var mList : TStringList;
    i     : Integer;
begin
  inherited;
  InvTreePanel.Visible := not ShowAllInventory.Checked;
  mList                := TStringList.Create;
  If ShowAllInventory.Checked then begin
    mList.add(AppInvLocIDField.Value);
    for i := 0 to InvSetTree.NodeList.Count-1 do
      mList.add(InvSetTree.NodeList[i]);
  end else if InvSetTree.SelectionCount > 0 then
    mList.add(inttostr(GetLocID(InvSetTree.Selections[0])));

  ShowInventoryForInvLocID(mList);
  mList.Free;
end;

procedure TInvForm.CustomTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(FCustomForm,TInvCustomForm,CustomTab);
end;

class function TInvForm.CheckInvSecurity(InvServForm: String): Boolean;
begin
  If at('SCBA',InvServForm) > 0 then
    CheckInvSecurity := CheckSecVar('SCBAEDIT')
  else if at('APP',InvServForm) > 0 then
    CheckInvSecurity := CheckSecVar('APPEDIT')
  else if at('HOSE',InvServForm) > 0 then
    CheckInvSecurity := CheckSecVar('HOSEEDIT')
  else
    CheckInvSecurity := CheckSecVar('INVEDIT');
end;

class procedure TInvForm.InvLocBatchClick(Sender: TObject);
var RowNum           : Integer;
    InvID            : String;
    InvView          : TNewView;
begin
  inherited;
  If TMenuItem(Sender).Owner is TNewView then begin
    InvView := TNewView(TMenuItem(Sender).Owner);
    InvID   := InvView.ViewGrid.GetValue('INVID');
  end;

  InvLocBatchForm := TInvLocBatchForm.Create(application);

  Open_Query('INV',false,'SELECT MAINCODE, SUBCODE FROM INV WHERE INVID = ' + pkValue(InvID));
  InvLocBatchForm.MainCodeField.Value := tdbfield('INV','MAINCODE');
  InvLocBatchForm.SubCodeField.Value  := tdbfield('INV','SUBCODE');
  CloseApollo('INV');

  InvLocBatchForm.ShowModal;
  InvLocBatchForm.Free;
end;

initialization
  RegisterIndividualReport(TInvRepForm,           'INDINVREP',       'Full Summary',                  'INV','',False,1);
  RegisterIndividualReport(TTruckInvCheckListForm,'INDTRUCKCHECKREP','Unit or Station Inventory List','INV','',False,1);
  RegisterIndividualReport(TSCBARepForm,          'INDSCBAREP',      'SCBA Individual Report',        'INV','',False,1);

end.   
