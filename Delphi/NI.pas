unit NI;
 
interface

uses                             
  Messages,
  Windows,
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
  AdvMemo,
  AdvSelectors,
  AdvCardList,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvToolBar,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  ComCtrls,
  AlpineLookup,
  DBAdvMemo,
  AlpineMemo,
  AlpineLookGrid, 
  AlpineBlockBrowse,
  FormFunc,
  AdvPageControl,
  Menus,
  AdvGroupBox,
  AdvCombo,
  ColCombo,
  AdvObj,
  HtmlBtns,
  AlpineCheck;

type
  TNIForm = class(TNormalBaseForm)
    AdvPanel5: TAdvPanel;
    Image3: TImage;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    CalendarIconIDField: TAlpineEdit;
    RedNMXButton: TAlpineGlowButton;
    CalendarIconIDCombo: TColumnComboBox;
    Panel1: TPanel;
    NIPageControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    LeftPanel: TPanel;
    GenPanel: TPanel;
    GenLabel: TLabel;
    CodePanel: TPanel;
    CodeLabel: TLabel;
    CodeField: TAlpineEdit;
    FdidPanel: TPanel;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    STypePanel: TPanel;
    Label11: TLabel;
    NISTypeIDField: TAlpineLookup;
    PTypePanel: TPanel;
    PTypeLabel: TLabel;
    NIPTypeIDField: TAlpineLookup;
    DescrPanel: TPanel;
    DescrLabel: TLabel;
    DescrField: TAlpineEdit;
    LocationPanel: TPanel;
    LocationLabel: TLabel;
    CompanyPanel: TPanel;
    CompanyLabel: TLabel;
    FdidCompIDField: TAlpineLookup;
    LocMiscPanel: TPanel;
    LocMiscLabel: TLabel;
    LocMiscField: TAlpineEdit;
    LocCodePanel: TPanel;
    LocCodeLabel: TLabel;
    LocationIDField: TAlpineLookup;
    ShiftPanel: TPanel;
    ShiftLabel: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    UnitNumPanel: TPanel;
    UnitNumLabel: TLabel;
    UnitNumField: TAlpineLookup;
    SchdUnitButton: TAlpineGlowButton;
    AgencyPanel: TPanel;
    AgencyLabel: TLabel;
    NIAgencyIDField: TAlpineLookup;
    Panel8: TPanel;
    Panel7: TPanel;
    Label27: TLabel;
    HourPanel: TPanel;
    TrainHourPanel: TPanel;
    TrainHourLabel: TLabel;
    TrainHourField: TAlpineEdit;
    EvLengthPanel: TPanel;
    EvLengthLabel: TLabel;
    EvLengthField: TAlpineEdit;
    EVLengthButton: TAlpineGlowButton;
    DateEndPanel: TPanel;
    DateEndLabel: TLabel;
    DateTimeEndField: TAlpineDateTime;
    SameDateButton: TAlpineGlowButton;
    DateStartPanel: TPanel;
    DateStartLabel: TLabel;
    DateTimeStartField: TAlpineDateTime;
    LOSAPPanel: TPanel;
    LosapLabel: TLabel;
    User34Panel: TPanel;
    User4Panel: TPanel;
    User4Label: TLabel;
    User4Field: TAlpineLookup;
    User3Panel: TPanel;
    User3Label: TLabel;
    User3Field: TAlpineLookup;
    PointPanel: TPanel;
    PointLabel: TLabel;
    PointField: TAlpineEdit;
    LosapCatPanel: TPanel;
    LosapCatLabel: TLabel;
    NILosapCatField: TAlpineLookup;
    User12Panel: TPanel;
    User1Panel: TPanel;
    User1Label: TLabel;
    User1Field: TAlpineLookup;
    User2Panel: TPanel;
    User2Label: TLabel;
    User2Field: TAlpineLookup;
    Panel10: TPanel;
    Label5: TLabel;
    TrainCat2Panel: TPanel;
    TrainCat2Label: TLabel;
    NITrainCat2IDField: TAlpineLookup;
    TrainDatePanel: TPanel;
    DateExpPanel: TPanel;
    DateExpLabel: TLabel;
    AlpineDateTime3: TAlpineDateTime;
    DateCertPanel: TPanel;
    DateCertLabel: TLabel;
    AlpineDateTime2: TAlpineDateTime;
    TrainCat1Panel: TPanel;
    TrainCat1Label: TLabel;
    NITrainCat1IDField: TAlpineLookup;
    TrainCat3Panel: TPanel;
    TrainCat3Label: TLabel;
    NITrainCat3IDField: TAlpineLookup;
    NIApprovePanel: TPanel;
    Label1: TLabel;
    CompTab: TAdvTabSheet;
    CompPanel: TPanel;
    Label12: TLabel;
    AdvDockPanel1: TAdvDockPanel;
    FdidCompBrowse: TAlpineTMSStringGrid;
    AdvPanel2: TAdvPanel;
    CompanyAttendButton: TAlpineGlowButton;
    CompanyDeleteButton: TAlpineGlowButton;
    NIAttTab: TAdvTabSheet;
    ButtonPanel: TPanel;
    RosterButton: TAlpineGlowButton;
    UpdateButton: TAlpineGlowButton;
    PersAccHistButton: TAlpineGlowButton;
    ManPowerButton: TAlpineGlowButton;
    SchdButton: TAlpineGlowButton;
    EvTab: TAdvTabSheet;
    NIEVBrowse: TAlpineBlockBrowse;
    AddTab: TAdvTabSheet;
    Panel4: TPanel;
    Label10: TLabel;
    NarrField: TAlpineMemo;
    AppTab: TAdvTabSheet;
    Label8: TLabel;
    NIAppBrowse: TAlpineTMSStringGrid;
    Panel5: TPanel;
    NIAppEditBrowse: TAlpineBlockBrowse;
    Panel9: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EvLengthDescr: TLabel;
    Label9: TLabel;
    NIAppDescrField: TAlpineEdit;
    NIAppTaskIDField: TAlpineLookup;
    NIAppEvLengthField: TAlpineEdit;
    AdvPanel3: TAdvPanel;
    NIAppButton: TAlpineGlowButton;
    NIAppNarrField: TAlpineMemo;
    EquTab: TAdvTabSheet;
    ValidatorPanel: TPanel;
    AdvPanel4: TAdvPanel;
    Label14: TLabel;
    ErrorGrid: TAlpineTMSStringGrid;
    ValidateButton: TAlpineGlowButton;
    ValidatePanel: TPanel;
    ErrorTypeField: TLabel;
    ErrorActionField: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    AppDateField: TAlpineDateTime;
    Label16: TLabel;
    AppStatField: TAlpineCheckBox;
    AppPersIDDescrField: TAlpineEdit;
    AppPersIDField: TAlpineEdit;
    PageRemButton: TAlpineGlowButton;
    NIEvAttMenu: TPopupMenu;
    SchdShiftNameChoice: TMenuItem;
    Panel3: TPanel;
    Label13: TLabel;
    NIEVATTBrowse: TAlpineTMSStringGrid;
    AdvPanel1: TAdvPanel;
    NIEVAttCreditButton: TAlpineGlowButton;
    NIEVAttCreditAllButton: TAlpineGlowButton;
    Status911Splitter: TSplitter;
    EditNIEVAttButton: TAlpineGlowButton;
    PageRemBrowse: TAlpineBlockBrowse;
    CopyButton: TAlpineGlowButton;
    User56Panel: TPanel;
    User6Panel: TPanel;
    User6Label: TLabel;
    User6Field: TAlpineLookup;
    User5Panel: TPanel;
    User5Label: TLabel;
    User5Field: TAlpineLookup;
    custom: TAdvTabSheet;
    Label19: TLabel;
    NIAppMilesField: TAlpineEdit;
    Label20: TLabel;
    AdvPanel6: TAdvPanel;
    Header: TLabel;
    NIImageTab: TAdvTabSheet;
    NIAttPanel: TPanel;
    NIAttBrowse: TAlpineBlockBrowse;
    AttPanel: TPanel;
    Label4: TLabel;
    Label18: TLabel;
    AttField: TLabel;
    EvLengthTotField: TLabel;
    NISignUpBrowse: TAlpineBlockBrowse;
    Panel11: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    NISignUpPanel: TPanel;
    AddOneButton: TAlpineGlowButton;
    AddAllButton: TAlpineGlowButton;
    Label26: TLabel;
    SchdLocPanel: TPanel;
    SchdLocLabel: TLabel;
    SchdLocField: TAlpineLookup;
    FHPanel: TPanel;
    FHLabel: TLabel;
    FHFireField: TAlpineCheckBox;
    FHMedicalField: TAlpineCheckBox;
    FHRescueField: TAlpineCheckBox;
    FHOtherField: TAlpineCheckBox;
    NIPersInvPanel: TPanel;
    NIPersInvBrowse: TAlpineBlockBrowse;
    NFIRSFireCasualtyBrowse: TAlpineBlockBrowse;
    SignMinMaxPanel: TPanel;
    SignInMinLabel: TLabel;
    SignInMinField: TAlpineEdit;
    SignInMaxField: TAlpineEdit;
    SignInMaxLabel: TLabel;
    ImageList: TImageList;
    SchdHistBrowse: TAlpineBlockBrowse;
    Panel6: TPanel;
    Label23: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    NIKioskTab: TAdvTabSheet;
    procedure NIPTypeIDFieldEnter(Sender: TObject);
    procedure NISTypeIDFieldEnter(Sender: TObject);
    procedure NILosapCatFieldEnter(Sender: TObject);
    procedure RosterButtonClick(Sender: TObject);
    procedure NIAttTabShow(Sender: TObject);
    procedure EvTabShow(Sender: TObject);
    procedure NIPTypeIDFieldExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FdidCompIDFieldEnter(Sender: TObject);
    procedure CompTabShow(Sender: TObject);
    procedure NIEVBrowseAfterDelete(Sender: TObject);
    procedure NIEVAttCreditButtonClick(Sender: TObject);
    procedure NIEVAttCreditAllButtonClick(Sender: TObject);
    procedure LocationIDFieldEnter(Sender: TObject);
    procedure EVLengthButtonClick(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
    procedure SameDateButtonClick(Sender: TObject);
    procedure DescrFieldChange(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
    procedure NIEVATTBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NIEVATTBrowseDblClick(Sender: TObject);
    procedure NITrainCat1IDFieldExit(Sender: TObject);
    procedure NITrainCat1IDFieldEnter(Sender: TObject);
    procedure NIAgencyIDFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure AppTabShow(Sender: TObject);
    procedure NIAppButtonClick(Sender: TObject);
    procedure NIAppBrowseDblClick(Sender: TObject);
    procedure NIAppBrowseClick(Sender: TObject);
    procedure NIAppTaskIDFieldChange(Sender: TObject);
    procedure NIAppEditBrowseAfterDelete(Sender: TObject);
    procedure NIAppEvLengthFieldChange(Sender: TObject);
    procedure CompanyAttendButtonClick(Sender: TObject);
    procedure CompanyDeleteButtonClick(Sender: TObject);
    procedure FdidCompIDFieldExit(Sender: TObject);
    procedure NISTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure PersAccHistButtonClick(Sender: TObject);
    procedure DateTimeEndFieldExit(Sender: TObject);
    procedure SchdUnitButtonClick(Sender: TObject);
    procedure UnitNumFieldSuccessfulValidate(Sender: TObject);
    procedure DateTimeStartFieldChange(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure CalendarIconIDComboChange(Sender: TObject);
    procedure EvLengthFieldExit(Sender: TObject);
    procedure SchdButtonClick(Sender: TObject);
    procedure NIAttBrowseAfterRefresh(Sender: TObject);
    procedure ManPowerButtonClick(Sender: TObject);
    procedure ValidateButtonClick(Sender: TObject);
    procedure ErrorGridClick(Sender: TObject);
    procedure PageRemButtonClick(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure NIAttBrowseAfterDelete(Sender: TObject);
    procedure SchdShiftNameChoiceClick(Sender: TObject);
    procedure EditNIEVAttButtonClick(Sender: TObject);
    procedure CopyButtonClick(Sender: TObject);
    procedure NIAttBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure FdidFieldEnter(Sender: TObject);
    procedure customShow(Sender: TObject);
    procedure NIAppBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NIPTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure PointFieldChange(Sender: TObject);
    procedure EvLengthFieldChange(Sender: TObject);
    procedure NIImageTabShow(Sender: TObject);
    procedure AddOneButtonClick(Sender: TObject);
    procedure AddAllButtonClick(Sender: TObject);
    procedure User1FieldSuccessfulValidate(Sender: TObject);
    procedure SchdLocFieldEnter(Sender: TObject);
    procedure NIPageControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure NIKioskTabShow(Sender: TObject);
  private
    { Private declarations }
    RequiredFieldList : TStringList;
    RequiredLabelList : TStringList;
    FInEnableSave     : Boolean;
    FCustomForm       : TBaseSubTabForm;
    procedure SetFields;
    procedure UpdateAttLabel;
    procedure CheckTransferbutton;
    procedure GiveAttendanceForAllEvolutions;
    procedure ResetNIAttBrowse;
    function  ValidateNI: Integer;
    function  Validate00190: Integer;
    function  ValidateHarfo: Integer;
    function  ValidateB3580: Integer;
    function  ValidateLakeShore: Integer;
    function  ValidateGeneral: Integer;
    procedure PageRemindNewRecord(DataSet: TDataSet);
    procedure UpdateApprovalFields(mAppstat: String; mAppDateTime: TDateTime; mAppPersId: String);
    function  GetDateTimeRemindTime(DateTimeStart: TDateTime): TDateTime;
    function  CheckLoudounIsCloseOut(Fdid: String; DateTimeStart: TDateTime): Boolean;
    procedure SetLoudounFields;
  public
    { Public declarations }
    FdidVar   : String;
    NIApprove : Boolean;
    AppStat   : String;
    ErrorCnt  : Integer;
    procedure EnableSave; override;    
    class procedure NewRecord(DataSet: TDataSet);
    Procedure NIAttFormNewRecord(DataSet: TDataSet);
    Procedure NIEvFormNewRecord(DataSet: TDataSet);
    Procedure NISignUpNewRecord(DataSet: TDataSet);

    procedure NIPersInvFormNewRecord(DataSet: TDataSet);
    procedure LoadNIEvAttBrowse;
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    procedure NIAppNewRecord(DataSet: TDataSet);
    procedure DoNewClick; override;
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure ResetErrorGrid;
    class procedure SpecialClick(Sender: TObject); override;
    class procedure ReplicateNonIncidentClick(Sender: TObject);
    class procedure NIRecurrenceClick(Sender: TObject);
    class procedure LoadErrorGrid(ErrorGrid: TAlpineTMSStringGrid; Var ErrorCnt: Integer; FormName, FieldName, ErrorType, FormDescr, FieldDescr, ErrorDescr, ErrorAction : String);
    procedure DoBeforePost(Sender: TObject); override;
    Procedure SchdHistNewRecord(DataSet: TDataSet);
  end;

var
  NIForm: TNIForm;

implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     SecSet,
     NIAtt,
     NISignUp,
     NIApp,
     NIEv,
     NIPersInv,
     NIRep,
     NIRepNon,
     NIEVRep,
     NISchd,
     NIEVAtt,
     NIKiosk,
     RepNI,
     NIRecurrence,
     AlpineRepGen,
     SortGridView,
     CheckBox,
     CheckBoxNI,
     PersAccHistSelect,
     SysDemoPictView,
     PageRemind,
     NICust,
     NIImage,
     NIPersRoster,
     NFIRSFireCasualty,
     AlpineBaseSummaryReport,
     Math,
     SchdHist,
     DateUtils;

{$R *.DFM}

class procedure TNIForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('FDID').AsString    := GetFdidVar;
  LoadSysFieldDef(mFireID,'NI',DataSet);
  DataSet.FieldByname('APPSTAT').AsString := 'N';
end;

procedure TNIForm.FormCreate(Sender: TObject);
var i             : Integer;
    bAccess       : Boolean;
    NISignUpCount : Integer;
begin
  inherited;
  FInEnableSave         := False;
  NIApprove             := (SQLLookUp(mFireID,'FDID','SYSSET','NIVALIDATOR') = 'Y') or (FireID = '00190') or (FireID = 'HARFO') or (FireID = 'B3580');
  RequiredFieldList     := TStringList.Create;
  RequiredLabelList     := TStringList.Create;
  If FIREID = '15051' then
    ValidateButton.Enabled := CheckSecVar('NIAPP');

  CompTab.TabVisible    := false;
  AppTab.TabVisible     := false;
  EVTab.TabVisible      := false;
  EquTab.TabVisible     := false;
  FdidPanel.Visible     := MultiFdid;
  NIImageTab.TabVisible := (SQLLookUp(mFireID,'FDID','IMAGESET','NI') = 'Y');
  NIKioskTab.TabVisible := (SQLLookUp(mFireID,'FDID','PERSSET','NIKIOSK') = 'Y');

  AttPanel.Parent       := NIAttBrowse.FButtonPanel;
  AttPanel.Align        := alright;
  Custom.TabVisible     := TNICustomForm.TabVisible;

  NIPersInvBrowse.Setup('NIPERSINV','NIID',PK,TNIPersInvForm,NIPersInvFormNewRecord);
  If mFireID = '12345' then begin
    NfirsFireCasualtyBrowse.Visible := true;
    NfirsFireCasualtyBrowse.Setup('NFIRSFIRECASUALTY','NIID',PK,TNFIRSFireCasualtyForm,NIPersInvFormNewRecord);
  end;

  If NIApprove then begin
    AppStat := SQLLookUp(PK,'NIID','NI','APPSTAT');
    If (AppStat = 'Y') and Not CheckSecVar('NIAPP') then
      ViewOnly := true
    else if (AppStat = 'Y') and CheckSecVar('NIAPP') then
      ViewOnly := false
    else if Not (AppStat = 'Y') and CheckSecVar('NIEDIT') then
      ViewOnly := false
    else
      ViewOnly := true;
  end else begin
    If InsertMode then
      ViewOnly := false
    else
      ViewOnly := Not CheckSecVar('NIEDIT')
  end;

  If FireID = '52043' then begin
    if Not CheckSecVar('NISETUP') then begin
      if DateTimeEndField.Value > 0 then
        ViewOnly := True;
    end;

    If User1Field.Value = '1' then
      Custom.TabVisible  := true
    else
      Custom.TabVisible  := false;
  end;

  SameDateButton        .Enabled    := Not ViewOnly;
  EVLengthButton        .Enabled    := Not ViewOnly;
  RosterButton          .Enabled    := Not ViewOnly;
  CopyButton            .Enabled    := Not ViewOnly;
  UpdateButton          .Enabled    := Not ViewOnly;
  ManPowerButton        .Enabled    := Not ViewOnly;
  NIEVAttCreditAllButton.Enabled    := Not ViewOnly;
  NIEVAttCreditButton   .Enabled    := Not ViewOnly;
  EditNIEVAttButton     .Enabled    := Not ViewOnly;
  CompanyAttendButton   .Enabled    := Not ViewOnly;
  CompanyDeleteButton   .Enabled    := Not ViewOnly;
  AddOneButton          .Enabled    := Not ViewOnly;
  AddAllButton          .Enabled    := Not ViewOnly;
  PersAccHistButton     .Enabled    := CheckSecVar('NIACCHIST') and Not ViewOnly;
  PersAccHistButton     .Visible    := CheckModule('HAND') or CheckModule('FINGER');

  If NIApprove then begin
    bAccess                           := Not ViewOnly;
    SchdButton.Enabled                := Not ViewOnly;
  end else begin
    bAccess                           := CheckSecVar('NIATT');
    SchdButton.Enabled                := CheckSecVar('NIATT');
  end;

  If FireID = '30061' then begin
    LocCodeLabel.Caption := 'Name';
    CodeLabel.Caption    := 'PCR-NUM';
    LocMiscLabel.Caption := 'Location';
  end;

  If FireID = '28014' then begin
    PointField.Enabled := False;
  end;

  if mFIreID = '28042' then begin
    LocationIDField.LookupCode := 'CODESORT';
  end;

  if mFireID = '10700' then begin
    PointField.Enabled       := False;
    EvLengthField.Enabled    := False;
    NILosapCatField.Enabled  := False;
  end;

  if mFireID = '60045' then begin
    NILosapCatField.Enabled  := False;
  end;

  If (FireID = '00190') then begin
    LosapLabel.Caption           := ' Additional Information';
    LocationLabel.Caption        := ' Location and Units';
    NIPersInvBrowse.Caption.Text := 'Others Involved';
  end else if (FireID = '28008') or (FireID = '09259') then begin
    LosapLabel.Caption           := ' Additional Information';
  end;

  NIAttBrowse.ViewOnly          := not bAccess;
  PersAccHistButton.Enabled     := bAccess;
  ManPowerButton.Enabled        := bAccess;
  RosterButton.Enabled          := bAccess;
  CopyButton.Enabled            := bAccess;
  UpdateButton.Enabled          := bAccess;

  If CheckModule('HAND') and (mfireid <> '12345') then begin
    PersAccHistButton.ImageName := 'HANDSCAN32';
    PersAccHistButton.Caption   := 'Hand Reader Interface';
  end else begin
    PersAccHistButton.ImageName := 'FINGER32';
    PersAccHistButton.Caption   := 'Finger Reader Interface';
  end;

  RedNMXButton.Visible        := mFireID = '12345';
  CalendarIconIDCombo.Visible := true;

  CalendarIconIDCombo.comboitems.clear;
  for i := 0 to ImageList.Count-1 do begin
    with CalendarIconIDCombo.ComboItems.Add do begin
      imageindex := i;
      Strings.Add('');
    end;
  end;
  if mFireID = '52007' then
    NewButton.Visible                  := False;

  ValidatorPanel.Visible             := NIApprove;
  NIApprovePanel.Visible             := NIApprove;
  Width                              := IIfI(NIApprove,Width,Width - ValidatorPanel.Width);
  PageRemBrowse.FGrid.TabStop        := false;
  PageRemBrowse.FNewButton.TabStop   := false;
  NIPersInvBrowse.FGrid.TabStop      := false;
  NIPersInvBrowse.FNewButton.TabStop := false;
  NISignUpCount                      := SqlTableRecCount('SELECT COUNT(*) FROM NISIGNUP WHERE NIID = ' + pkValue(PK));
  NISignUpBrowse.Visible             := (FireID = '12345') or (NISignUpCount > 0);
  NISignUpPanel .Visible             := (FireID = '12345') or (NISignUpCount > 0);
end;

procedure TNIForm.NIPageControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TNIForm.NIPersInvFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NIID').AsString := PK;
end;

function TNIForm.CheckLoudounIsCloseOut(Fdid: String; DateTimeStart: TDateTime): Boolean;
Var YearVar : String;
    RetVal  : Boolean;
begin
  YearVar := FormatDateTime('YYYY',DateTimeStart);
  RetVal  := false;
  Open_Query('LCFRCLOSEOUTYEAR',false,'SELECT * FROM LCFRCLOSEOUTYEAR WHERE FDID = ' + AddExpr(Fdid) + ' AND YEAR = ' + AddExpr(YearVar));
  If A('LCFRCLOSEOUTYEAR').RecordsExist and (DateTimeStart <= GetField('LCFRCLOSEOUTYEAR','DATETIMECLOSE').AsDateTime) then begin
    PersTitleLabel.Caption   := 'CLOSED OUT';
    PersTitleLabel.Font.Size := 14;
    PersNumLabel.caption     := AlpineFormatDateTime('MM/DD/YYYY',GetField('LCFRCLOSEOUTYEAR','DATETIMECLOSE').AsDateTime);
    RetVal                   := true;
  end;  
  CloseApollo('LCFRCLOSEOUTYEAR');
  CheckLoudounIsCloseOut := RetVal;
end;

procedure TNIForm.FormShow(Sender: TObject);
begin
  inherited;
  SetFields;
  DescrFieldChange(self);
  TitleImage.Picture.Icon     := GetGlowImageIcon('TRAINING32');
  CalendarIconIDField.Visible := false;

  If (mFireID = '30052') or (mFireID = '52043') then
    User1Field.Enabled := CheckSecVar('NISETUP');


  If mfireid = '07110' then begin
    CodeField.Value := '07110' + PK;
  end;

  NIPageControl.ActivePage    := GenTab;
  SchdButton.Visible          := CheckModule('SCHD');
  ScaleButtonsOnPanelUsingTags('H',ButtonPanel);

  If NIApprove then begin
    ErrorCnt                    := ValidateNI;
    AppPersIDDescrField.Enabled := false;
    AppDateField.Enabled        := false;
    AppStatField.Enabled        := false;
    AppPersIDDescrField.Value   := SQLLookUp(AppPersIDField.Value,'PERSID','PERS','LNAME') + ', ' + SQLLookUp(AppPersIDField.Value,'PERSID','PERS','FNAME');
    If AppStatField.Checked and (ErrorCnt = 0) then begin
      ValidateButton.Enabled      := false;
      ValidateButton.Caption      := 'Event Approved';
    end else
      ValidateButton.Caption      := 'Validate Event?';
  end;

  CalendarIconIDCombo.EditHeight  := 19;
  CalendarIconIDCombo.ButtonWidth := 30;

  If CheckModule('PAGEREM') and CheckSecVar('PAGEREMVIEW') then begin
    PageRemBrowse.Visible             := true;
    PageRemButton.Visible             := true;
    PageRemBrowse.ExplicitWhereClause := ' WHERE PAGEREMIND.TABLENAME = ' + AddExpr('NI') + ' AND PAGEREMIND.TABLERECID = ' + pkValue(PK);
    PageRemBrowse.Setup('PAGEREMIND',TPageRemindForm,PageRemindNewRecord);
  end;
  PageRemButton.Enabled           := CheckSecVar('PAGEREMVIEW');

  If Not PageRemBrowse.Visible then
    LocationPanel.Align := alclient;
  Height                          := IMin(745,Round(Screen.Height * 0.91));

  User1Field.LookupFormWidth := 320;
  User2Field.LookupFormWidth := 320;
  User3Field.LookupFormWidth := 320;
  User4Field.LookupFormWidth := 320;
  User5Field.LookupFormWidth := 320;
  User6Field.LookupFormWidth := 320;
end;

procedure TNIForm.NIPTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  NIPTypeIDField.SQLExpr := 'SELECT * FROM NIPTYPE WHERE (FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL) AND ACTIVE = ' + AddExpr('Y') + ' ORDER BY CODE'
end;

procedure TNIForm.NISTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  If (NIPTypeIDField.Value = '0') or (NIPTypeIDField.Value = '') then
    NISTypeIDField.SQLExpr := 'SELECT * FROM NISTYPE WHERE 1=2'
  else
    NISTypeIDField.SQLExpr := 'SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + pkValue(NIPTypeIDField.Value) + ' AND (FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL) AND ACTIVE = ' + AddExpr('Y') +  ' ORDER BY CODE';
end;

procedure TNIForm.NILosapCatFieldEnter(Sender: TObject);
begin
  inherited;
  NILosapCATField.SQLExpr := 'SELECT * FROM NILOSAPCAT WHERE ' + GetFdidSQL('NILOSAPCAT.FDID') + ' ORDER BY CODE';
end;

procedure TNIForm.RosterButtonClick(Sender: TObject);
begin
  inherited;
  InsertSecRecAud('NI', 'ATTEND',PK,'');
  CheckBoxForm                       := TCheckBoxForm.Create(Application,'NI','NIATT',PK,FdidField.Value);
  CheckBoxForm.DescrField.Caption    := DescrField.Value;
  CheckBoxForm.TitleLabel.Caption    := 'Non Incident Attendance';
  CheckBoxForm.DateTimeField.Caption := AlpineFormatDateTime(DisplayDateFormat + ' HH:NN AM',DateTimeStartField.Value);
  CheckBoxForm.ShowModal;
  CheckBoxForm.Free;
  NIAttTabShow(self);

  If NIApprove then   
    EnableSave;
end;

procedure TNIForm.NIAttTabShow(Sender: TObject);
begin
  inherited;
  ResetNIATTBrowse;
  NIAttBrowse.FDeleteButton.Position := bpmiddle;
  UpdateAttLabel;
  NISignUpBrowse.Setup(SysViewOverRide('NISIGNUP'),'NIID',pk,TNISignUpForm,NISignUpNewRecord);

  If (mFireID = '01920') and CheckSecVar('SCHDED') then begin
    SchdHistBrowse.Visible := true;
    SchdHistBrowse.Setup('SCHDHISTOVERTIME','NIID',pk,TSchdHistForm,SchdHistNewRecord);
  end;
end;

Procedure TNIForm.SchdHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NIID').AsString            := pk;
  DataSet.FieldByname('DATETIMESTART').AsDateTime := DateTimeStartField.Value;
  DataSet.FieldByname('DATETIMEEND').AsDateTime   := DateTimeEndField.Value;
  DataSet.FieldByname('SHIFTLENGTH').AsFloat      := 24 * (DateTimeEndField.Value - DateTimeStartField.Value);
  If (mFireID = '01920') then begin
    DataSet.FieldByname('ACTUALLENGTH').AsFloat     := Int(24 * (DateTimeEndField.Value - DateTimeStartField.Value)) + 1;
    DataSet.FieldByname('SCHDTYPEID').AsString      := '92';
  end;  
end;

Procedure TNIForm.NISignUpNewRecord(DataSet: TDataSet);
begin
  If ViewOnly then
    GetField('NISIGNUP','PERSID').AsString := GlobalPersID;
  GetField('NISIGNUP','NIID').AsString          := PK;
  GetField('NISIGNUP','ENTRYMETH').AsString     := 'MANUAL';
  GetField('NISIGNUP','DATETIMEENT').AsDateTime := Now;
  GetField('NISIGNUP','ENTRYCOMP').AsString     := AlpineGetComputerName;
  GetField('NISIGNUP','ENTRYSECID').AsString    := SecIDVar;
  LoadSysFieldDef(mFireID,'NISIGNUP',DataSet);
end;

procedure TNIForm.UnitNumFieldEnter(Sender: TObject);
begin
  inherited;
  UnitNumField.SQLExpr := 'SELECT * FROM VWTRUCK WHERE ' + GetFdidSQL('VWTRUCK.FDID') + ' AND INCLUDE = ' + AddExpr('Y');
end;

procedure TNIForm.UnitNumFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  CheckTransferbutton;
end;

procedure TNIForm.UpdateAttLabel;
Var EvLengthVar : Real;
    AttVar      : Real;
begin
  EvLengthVar := 0;
  AttVar      := 0;
  Open_Query('NIATT',false,'SELECT EVLENGTH FROM NIATT WHERE NIID = ' + pkValue(pk));
  While Not A('NIATT').Eof do begin
    EvLengthVar := EvLengthVar + GetField('NIATT','EVLENGTH').AsFloat;
    AttVar      := AttVar + 1;
    A('NIATT').Skip(1);
  end;
  CloseApollo('NIATT');
  AttField.Caption         := FormatFloat('##0',AttVar);
  EvLengthTotField.Caption := FormatFloat('##0.00',EvLengthVar);
end;

procedure TNIForm.NIAttBrowseAfterDelete(Sender: TObject);
begin
  inherited;
{  If NIApprove then
    EnableSave;}
end;

procedure TNIForm.NIAttBrowseAfterRefresh(Sender: TObject);
begin
  inherited;
{  If NIApprove then
    EnableSave;}
end;

procedure TNIForm.NIAttBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var DeletePersID : String;
begin
  inherited;
  If BooleanMessageDlg('Delete attendance record?') then begin
    CanDelete := False;
    DeletePersID := SQLLookup(NIAttBrowse.Grid.GetValue('NIATTID'),'NIATTID','NIATT','PERSID');
    If (DeletePersID <> '') and (SqlTableRecCount('SELECT COUNT(*) FROM NIEVATT WHERE NIID = ' + pkValue(PK) + ' AND PERSID = ' + pkValue(DeletePersID)) > 0) then begin
      If BooleanMessageDlg('Deleting attendance record will also delete the person''s evolution attendance for this event, continue?') then begin
        RunSQL('DELETE FROM NIEVATT WHERE NIID = ' + pkValue(PK) + ' AND PERSID = ' + pkValue(DeletePersID));
        CanDelete := True;
      end;
    end else
      CanDelete := True;
  end else
    CanDelete := false;
end;

Procedure TNIForm.NIAttFormNewRecord(DataSet: TDataSet);
begin
  GetField('NIATT','NIID').AsString         := PK;
  GetField('NIATT','NIPTYPEID').AsString    := NIPTypeIDField.Value;
  GetField('NIATT','NISTYPEID').AsString    := NISTypeIDField.Value;
  GetField('NIATT','NILOSAPCATID').AsString := NILosapCatField.Value;
  GetField('NIATT','EVLENGTH').AsFloat      := AnyStrToFloat(EvLengthField.Value);
  GetField('NIATT','POINT').AsString        := PointField.Value;
  LoadSysFieldDef(mFireID,'NIATT',DataSet);  
end;                                                       

Procedure TNIForm.NIEvFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NIID').AsString            := PK;
  DataSet.FieldByname('DATETIMESTART').AsDateTime := DateTimeStartField.Value;
  DataSet.FieldByname('DATETIMEEND').AsDateTime   := DateTimeEndField.Value;
  DataSet.FieldByname('LOCATIONID').AsString      := LocationIDField.Value;
  If (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then
    DataSet.FieldByname('EVLENGTH').AsFloat := 24 * (DateTimeEndField.Value - DateTimeStartField.Value) ;
  If mFIreID = '28042' then
    DataSet.FieldByname('NITRAINCATTYPEID').AsString   := '2';
end;

procedure TNIForm.NIImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(FCustomForm,TNIImageForm,NIImageTab);
end;

procedure TNIForm.SetFields;
begin
  RequiredFieldList.Clear;
  RequiredLabelList.Clear;
  If (anystrtoint(NIPTypeIDField.Value) > 0) then begin
    Open_Query('NIFIELD',false,'SELECT NIFIELD.PICTUREMASK PICTUREMASK, NIFIELD.APPDESC APPDESC, NIFIELD.REQUIRED REQUIRED, NIFIELDLIST.COMPNAME COMPNAME, NIFIELD.NEWLABEL NEWLABEL FROM NIFIELD ' +
                               'LEFT JOIN NIFIELDLIST ON (NIFIELD.NIFIELDLISTID = NIFIELDLIST.NIFIELDLISTID) ' +
                               'WHERE NIPTYPEID = ' + NIPTypeIDField.Value + ' ORDER BY NIFIELDLIST.SORTORD');
    While Not A('NIFIELD').Eof do begin
      If (tdbfield('NIFIELD','COMPNAME') = 'EVTAB') then begin
        EvTab.TabVisible := true;
        EvTab.Caption    := IIf(tdbfield('NIFIELD','NEWLABEL') = '','Evolutions',tdbfield('NIFIELD','NEWLABEL'));
      end else if (tdbfield('NIFIELD','COMPNAME') = 'COMPTAB') then begin
        CompTab.TabVisible := true;
      end else if (tdbfield('NIFIELD','COMPNAME') = 'APPTAB') then begin
        AppTab.TabVisible := true;
      end else if (tdbfield('NIFIELD','COMPNAME') = 'EQUTAB') then begin
        EquTab.TabVisible := true;
      end else begin
        If (TPanel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Panel')) <> Nil) then
          TPanel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Panel')).Visible := true;
        If (Tlabel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Label')) <> Nil) then
          TLabel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Label')).Caption := IIf(tdbfield('NIFIELD','NEWLABEL') = '',TLabel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Label')).Caption,tdbfield('NIFIELD','NEWLABEL'));

        If Not (tdbfield('NIFIELD','PICTUREMASK') = '') then begin
          If (substr(tdbfield('NIFIELD','COMPNAME'),1,4) = 'USER') then
            TAlpineLookUp(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Field')).PictureMask := tdbfield('NIFIELD','PICTUREMASK')
          else
            TAlpineEdit(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Field')).PictureMask := tdbfield('NIFIELD','PICTUREMASK');
        end;
      end;
      If tdbfield('NIFIELD','REQUIRED') = 'Y' then begin
        RequiredFieldList.Add(tdbfield('NIFIELD','COMPNAME'));
        RequiredLabelList.Add(tdbfield('NIFIELD','APPDESC'));
      end;
      A('NIFIELD').Skip(1);
    end;
    CloseApollo('NIFIELD');
    User12Panel.Visible    := User1Panel.Visible or User2Panel.Visible;
    User34Panel.Visible    := User3Panel.Visible or User4Panel.Visible;
    User56Panel.Visible    := User5Panel.Visible or User6Panel.Visible;
    TrainDatePanel.Visible := DateCertPanel.Visible or DateExpPanel.Visible;

    GenPanel.Height        := GenLabel.Height      + IIfI(FdidPanel.Visible,FdidPanel.Height,0)       + IIfI(PTypePanel.Visible,PTypePanel.Height,0)     +
                                                     IIfI(STypePanel.Visible,STypePanel.Height,0)     + IIfI(CodePanel.Visible,CodePanel.Height,0)       +
                                                     IIfI(DescrPanel.Visible,DescrPanel.Height,0)     + 4;

    LocationPanel.Height   := LocationLabel.Height + IIfI(CompanyPanel.Visible,CompanyPanel.Height,0) + IIfI(LocCodePanel.Visible,LocCodePanel.Height,0) +
                                                     IIfI(LocMiscPanel.Visible,LocMiscPanel.Height,0) + IIfI(UnitNumPanel.Visible,UnitNumPanel.Height,0) +
                                                     IIfI(SchdLocPanel.Visible,SchdLocPanel.Height,0) + IIfI(ShiftPanel.Visible,ShiftPanel.Height,0)     +
                                                     IIfI(AgencyPanel.Visible,AgencyPanel.Height,0)   + 4;
  end;

  LocationPanel.Height := IIfI(LocationPanel.Height > 30,LocationPanel.Height,0);
end;

procedure TNIForm.SchdUnitButtonClick(Sender: TObject);
Var SqlVar : String;
begin
  inherited;
  If not BooleanMessageDlg('Transfer all personnel working on ' + UnitNumField.Value + ' at ' + FormatDateTime('mm/dd/yyyy hh:nn',DateTimeStartField.Value)+' to this Event?') then
    exit;
  try
    SQLVar := 'SELECT PERSID FROM SCHDHIST LEFT JOIN SCHDTYPE ON (SCHDHIST.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) WHERE DATETIMESTART <= '+FormatDateTimeForSql(DateTimeStartField) + ' AND '  +
              'DATETIMEEND >= '+FormatDateTimeForSql(DateTimeStartField) + ' AND ' +
              'SCHDTYPE.ROSTER = ' + AddExpr('Y') + ' AND ' +
              'UNITNUM = '+AddExpr(UnitNumField.Value);

    Open_Query('GETSCHDHIST',False,SQLVar);
    Open_Query('NIATT',True,'SELECT * FROM NIATT WHERE NIID = ' + pkValue(pk));
    while not A('GETSCHDHIST').eof do begin
      A('NIATT').ExactQueryLocateAndPutIneditMode(['PERSID'],[tdbField('GETSCHDHIST','PERSID')]);
      GetField('NIATT','PERSID').AsString := GetField('GETSCHDHIST','PERSID').AsString;
      GetField('NIATT','EVLENGTH').AsFloat := AnyStrToFloat(EvLengthField.Value);
      GetField('NIATT','NIID').AsString    := pk;
      GetField('NIATT','POINT').AsFloat := AnyStrToFloat(PointField.Value);
      GetTable('NIATT').Post;
      A('GETSCHDHIST').Skip(1);
    end;
  finally
    CloseApollo('GETSCHDHIST');
    CloseApollo('NIATT');
    GiveAttendanceForAllEvolutions;
  end;
end;

procedure TNIForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'NI');
  SysDemoPictViewForm.Show;
end;

procedure TNIForm.resetNIAttBrowse;
begin
  NIAttBrowse.Setup(SysViewOverRide('NIATT'),'NIID',pk,TNIAttForm,NIAttFormNewRecord);
end;

procedure TNIForm.NIPTypeIDFieldExit(Sender: TObject);
begin
  inherited;
  SetFields;
end;

procedure TNIForm.NIPTypeIDFieldSuccessfulValidate(Sender: TObject);
var mstart : string;
begin
  inherited;
    If MFireID = '01211' then begin
      mStart := FormatDateTime('YY',Now);
      If NipTypeIDField.Value = '1' then
        CodeField.Value := GetNextVal(GlobalAdoConnection,'SELECT MAX(CODE) FROM NI WHERE CODE LIKE '+AddExpr(mStart+'%') + ' AND NIPTYPEID = ' + AddExpr('1'),mStart+'0001')
      else
        CodeField.Value := GetNextVal(GlobalAdoConnection,'SELECT MAX(CODE) FROM NI WHERE CODE LIKE '+AddExpr(mStart+'%') + ' AND NIPTYPEID = ' + AddExpr('3'),mStart+'001')
    end;
end;

procedure TNIForm.FdidCompIDFieldEnter(Sender: TObject);
begin
  inherited;
  FdidCompIDField.SQLExpr := 'SELECT * FROM FDIDCOMP WHERE FDID = ' + AddExpr(FdidField.Value) + ' ORDER BY CODE';
end;

procedure TNIForm.CompTabShow(Sender: TObject);
begin
  inherited;
  FdidCompBrowse.Clear;
  FdidCompBrowse.ColCount       := 0;
  FdidCompBrowse.RowCount       := 0;
  FdidCompBrowse.ClearColumns;

  FdidCompBrowse.FixedRowAlways := true;
  FdidCompBrowse.RowCount       := FdidCompBrowse.FixedRows;

  FdidCompBrowse.SetColumn('FDIDCOMPID','FDIDCOMPID', 001);
  FdidCompBrowse.SetColumn('CODE',      'Code',       100);
  FdidCompBrowse.SetColumn('DESCR',     'Company',    230);
  FdidCompBrowse.SetColumn('ATTEND',    'Attended',   650);

  Open_Query('NIFDIDCOMP',false,'SELECT * FROM NIFDIDCOMP WHERE NIID = ' + pkValue(PK));
  Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP WHERE FDID = ' + AddExpr(FdidField.Value)+iif(mfireid='34027',' AND ACTIVE = '+AddExpr('Y'),''));
  While Not A('FDIDCOMP').Eof do begin
    FdidCompBrowse.SetValue('FDIDCOMPID',GetField('FDIDCOMP','FDIDCOMPID').AsString);
    FdidCompBrowse.SetValue('CODE',      GetField('FDIDCOMP','CODE').AsString);
    FdidCompBrowse.SetValue('DESCR',     GetField('FDIDCOMP','DESCR').AsString);
    If A('NIFDIDCOMP').ExactQueryLocate('FDIDCOMPID',GetField('FDIDCOMP','FDIDCOMPID').AsString) then
      FdidCompBrowse.SetValue('ATTEND',    IIf(GetField('FDIDCOMP','FDIDCOMPID').AsString = FdidCompIDField.Value,'Primary','Yes'))
    else
      FdidCompBrowse.SetValue('ATTEND',    '-');
    A('FDIDCOMP').Skip(1);
  end;
  CloseApollo('FDIDCOMP');
  CloseApollo('NIFDIDCOMP');
end;

procedure TNIForm.CopyButtonClick(Sender: TObject);
begin
  inherited;
  CheckBoxNIForm          := TCheckBoxNIForm.Create(Application ,pk);
  CheckBoxNIForm.DestNIID := pk;
  CheckBoxNIForm.ShowModal;
  CheckBoxNIForm.Free;

  ResetNIATTBrowse;
  NIAttBrowse.FDeleteButton.Position := bpmiddle;
  UpdateAttLabel;
end;

procedure TNIForm.customShow(Sender: TObject);
begin
  inherited;
  SaveButton.Click;
  CreateSubForm(TNICustomForm,Custom);
end;

procedure TNIForm.CompanyAttendButtonClick(Sender: TObject);
Var FdidCompID : String;
begin
  inherited;
  FdidCompID := FdidCompBrowse.GetValue('FDIDCOMPID',FdidCompBrowse.Row);
  Open_Query('NIFDIDCOMP',true,'SELECT * FROM NIFDIDCOMP WHERE FDIDCOMPID = ' + pkValue(FdidCompID) + ' AND NIID = ' + pkValue(PK));
  If A('NIFDIDCOMP').RecordsExist then
    A('NIFDIDCOMP').Edit
  else
    A('NIFDIDCOMP').Append;
  GetField('NIFDIDCOMP','FDIDCOMPID').AsString := FdidCompID;
  GetField('NIFDIDCOMP','NIID').AsString       := PK;
  GetTable('NIFDIDCOMP').Post;
  CloseApollo('NIFDIDCOMP');

  FdidCompBrowse.SetValue('ATTEND',FdidCompBrowse.Row,'Yes');
end;

procedure TNIForm.CompanyDeleteButtonClick(Sender: TObject);
Var FdidCompID : String;
begin
  inherited;
  FdidCompID := FdidCompBrowse.GetValue('FDIDCOMPID',FdidCompBrowse.Row);
  RunSQL('DELETE FROM NIFDIDCOMP WHERE FDIDCOMPID = ' + pkValue(FdidCompID) + ' AND NIID = ' + PK);
  FdidCompBrowse.SetValue('ATTEND',FdidCompBrowse.Row,'-');
end;

procedure TNIForm.NIEVBrowseAfterDelete(Sender: TObject);
begin
  inherited;
  LoadNIEvAttBrowse;
end;

procedure TNIForm.NIEVAttCreditButtonClick(Sender: TObject);
var ColumnName : String;
    iSaveRow   : Integer;
    iSaveCol   : Integer;
begin
  inherited;
  iSaveRow   := NIEVAttBrowse.Row;
  iSaveCol   := NIEVAttBrowse.Col;
  ColumnName := NIEVATTBrowse.GetCurrentColumnName;

  If Substr(NIEVATTBrowse.GetValue(ColumnName),1,3) = 'Yes' then begin
    RunSql('DELETE FROM NIEVATT WHERE NIID = ' + PK + ' AND NIEVID = ' + pkValue(NIEVATTBrowse.GetCurrentColumnName) + ' AND PERSID = ' + PkValue(NIEVATTBrowse.GetValue('PERSID')));
    NIEVAttBrowse.Cells[iSaveCol,iSaveRow] := '-';
  end else begin
    If AnyStrToInt( NIEVATTBrowse.GetValue('PERSID') ) > 0 then begin
      TableInsert('NIEVATT',['NIID','NIEVID','PERSID'], [PK, AnyStrToInt(NIEVATTBrowse.GetCurrentColumnName) ,AnyStrToInt(NIEVATTBrowse.GetValue('PERSID')) ]);
      NIEVAttBrowse.Cells[iSaveCol,iSaveRow] := 'Yes';
    end;
  end;

  If NiApprove then
    EnableSave;  
end;

procedure TNIForm.EvTabShow(Sender: TObject);
var OverRideCode : String;
begin
  inherited;
  OverRideCode := SqlLookup('NIEV','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  If OverRideCode = '' then
    NIEvBrowse.Setup('NIEV','NIID',PK,TNIEvForm,NIEvFormNewRecord)
  else
    NIEvBrowse.Setup(OverRideCode,'NIID',PK,TNIEvForm,NIEvFormNewRecord);
  LoadNIEVATTBrowse;
end;

procedure TNIForm.CheckTransferbutton;
begin
  SchdUnitButton.Visible   := CheckModule('SCHD');
  SchdUnitButton.Enabled   := (UnitNumField.Value<>'') and (DateTimeStartField.Value>0) and Not ViewOnly;
end;  

procedure TNIForm.LoadNIEvAttBrowse;
Var iCol     : Integer;
    DescrVar : String;
begin
  NIEVAttBrowse.Clear;
  NIEVAttBrowse.ColCount := 0;
  NiEvAttBrowse.RowCount := 0;
  NIEVAttBrowse.ClearColumns;

  NIEVATTBrowse.FixedRowAlways := true;
  NIEVATTBrowse.RowCount := NIEVATTBrowse.FixedRows;
  
  NIEVATTBrowse.SetColumn('PERSID',      'PERSID',000);
  NIEVATTBrowse.SetColumn('PERSCODE',    'ID#',   065);
  NIEVATTBrowse.SetColumn('NAME',        'Name',  150);
  NIEVATTBrowse.SetColumn('PERSRANKCODE','Rank',  IIfI(mFireID = '00190',060,000));
  NIEVATTBrowse.SetColumn('EMSQUALCODE', 'EMS',   IIfI(mFireID = '00190',060,000));

  Open_Query('NIEV',false,'SELECT * FROM VWNIEV WHERE NIID = ' + PK + ' ORDER BY DATETIMESTART');
  Open_Query('NIEVATT',false,'SELECT * FROM NIEVATT WHERE NIID = ' + PK);

  NIEVAttCreditButton.Enabled    := false;
  NIEVAttCreditAllButton.Enabled := false;
  EditNIEVAttButton.Enabled      := false;
  A('NIEV').GoTop;
  While Not A('NIEV').Eof do begin
    If tdbfield('NIEV','TRAINDESCR') = tdbfield('NIEV','NIEVDESCR') then
      DescrVar := AlpineFormatDateTime(DisplayDateFormat + ' HH:NN',Getfield('NIEV','DATETIMESTART').AsDateTime) + #10#13 + tdbfield('NIEV','NIEVDESCR')
    else
      DescrVar := AlpineFormatDateTime(DisplayDateFormat + ' HH:NN',Getfield('NIEV','DATETIMESTART').AsDateTime) + #10#13 + tdbfield('NIEV','TRAINDESCR') + #10#13 + tdbfield('NIEV','NIEVDESCR');

    if (FIREID = '25150') then
      DescrVar :=  DescrVar + '(' + Getfield('NIEV','EVLENGTH').AsString + ' hours)';
    

    NIEVATTBrowse.SetColumn(GetField('NIEV','NIEVID').AsString,DescrVar,150);

    NIEVAttCreditButton.Enabled    := Not ViewOnly;
    NIEVAttCreditAllButton.Enabled := Not ViewOnly;
    EditNIEVAttButton.Enabled      := Not ViewOnly;
    A('NIEV').Skip(1);
  end;

  NIEVATTBrowse.SetColumn('BLANKFIELD','',700);

  Open_Query('NIATT',false,'SELECT NIATT.PERSID, PERS.PERSCODE, PERS.LNAME, PERS.FNAME, PERSRANK.CODE PERSRANKCODE, EMSQUAL.CODE EMSQUALCODE FROM NIATT ' +
                           'LEFT JOIN PERS ON (NIATT.PERSID = PERS.PERSID) ' +
                           'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
                           'LEFT JOIN EMSQUAL ON (PERS.EMSQUALID   = EMSQUAL.EMSQUALID) ' +
                           'WHERE NIATT.NIID = ' + PK + ' ORDER BY ' + GlobalPersSort);

  While Not A('NIATT').Eof do begin
    NIEVATTBrowse.SetValue('PERSID',      GetField('NIATT','PERSID').AsString);
    NIEVATTBrowse.SetValue('PERSCODE',    GetField('NIATT','PERSCODE').AsString);
    NIEVATTBrowse.SetValue('NAME',        tdbfield('NIATT','LNAME') + ', ' + tdbfield('NIATT','FNAME'));
    NIEVATTBrowse.SetValue('PERSRANKCODE',tdbfield('NIATT','PERSRANKCODE'));
    NIEVATTBrowse.SetValue('EMSQUALCODE', tdbfield('NIATT','EMSQUALCODE'));

    for icol := 5 to NIEVAttBrowse.ColCount-2 do begin
      if A('NIEVATT').ExactQueryLocate(['PERSID','NIEVID'],[GetField('NIATT','PERSID').AsString,NIEVATTBrowse.ColumnNames[icol]    ]) then begin
        If (tdbfield('NIEVATT','CERTNUM') = '') then
          NIEVAttBrowse.SetValue(NIEVATTBrowse.ColumnNames[icol],'Yes')
        else
          NIEVAttBrowse.SetValue(NIEVATTBrowse.ColumnNames[icol],'Yes - ' + tdbfield('NIEVATT','CERTNUM'));
      end else
        NIEVAttBrowse.SetValue(NIEVATTBrowse.ColumnNames[icol],'-')
    end;

    A('NIATT').Skip(1);
  end;

  NIEVAttBrowse.FixedCols := 5;

  CloseApollo('NIATT');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  NIEVAttBrowse.Invalidate;
end;

procedure TNIForm.NIEVAttCreditAllButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Give attendance for all Evolutions and Sessions ?') then begin
    GiveAttendanceForAllEvolutions;
    LoadNIEVATTBrowse;
  end;
end;

procedure TNIForm.GiveAttendanceForAllEvolutions;
begin
  try
    Open_Query('NIEV',false,'SELECT * FROM NIEV WHERE NIID = ' + PK);
    Open_Query('NIATT',false,'SELECT PERSID FROM NIATT WHERE NIID = ' + PK);
    Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE NIID = ' + PK );
    While Not A('NIEV').Eof do begin
      A('NIATT').GoTop;
      While Not A('NIATT').Eof do begin
        if getfield('NIATT','PERSID').AsInteger >0 then begin
          if not A('NIEVATT').ExactQueryLocate(['NIEVID','PERSID'],[GetField('NIEV','NIEVID').AsString ,GetField('NIATT','PERSID').AsString]) then begin
            A('NIEVATT').Append;
            GetField('NIEVATT','NIID').AsString    := PK;
            GetField('NIEVATT','NIEVID').AsInteger := GetField('NIEV','NIEVID').AsInteger;
            GetField('NIEVATT','PERSID').AsInteger := GetField('NIATT','PERSID').AsInteger;
            GetTable('NIEVATT').Post;
          end;
        end;  
        A('NIATT').Skip(1);
      end;
      A('NIEV').Skip(1);
    end;
  finally
    CloseApollo('NIEV');
    CloseApollo('NIEVATT');
    CloseApollo('NIATT');
  end;  
end;

procedure TNIForm.NIKioskTabShow(Sender: TObject);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButton.Click;
  CreateSubForm(TNIKioskForm,NIKioskTab);
end;

procedure TNIForm.LocationIDFieldEnter(Sender: TObject);
begin
  inherited;
  LocationIDField.SQLExpr := 'SELECT * FROM LOCATION WHERE ' + GetFdidSQL('LOCATION.FDID') + ' ORDER BY CODE';
end;

procedure TNIForm.ManPowerButtonClick(Sender: TObject);
Var EvLength : Real;
begin
  inherited;
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE NIID = ' + pk);
  Open_Query('NIEVATT',false,'SELECT NIEVEVLENGTH FROM VWNIEVATT WHERE 1=2');
  While Not A('NIATT').Eof do begin
    EvLength := 0;
    A('NIEVATT').UpdateSQL('SELECT NIEVEVLENGTH FROM VWNIEVATT WHERE PERSID = ' + pkValue(GetField('NIATT','PERSID').AsString) + ' AND NIID = ' + pk);
    While Not A('NIEVATT').Eof do begin
      EvLength := EvLength + GetField('NIEVATT','NIEVEVLENGTH').AsFloat;
      A('NIEVATT').Skip(1);
    end;
    GetTable('NIATT').Edit;
    GetField('NIATT','EVLENGTH').AsFloat := EvLength;
    GetTable('NIATT').Post;
    A('NIATT').Skip(1);
  end;
  CloseApollo('NIATT');
  CloseApollo('NIEVATT');
  UpdateAttLabel;
  ResetNIATTBrowse;
end;

procedure TNIForm.EVLengthButtonClick(Sender: TObject);
var NILOSAPCODE: String;
begin
  inherited;
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then
    EvLengthField.Value := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );

  If ((FIREID = '28014') and (NIPTypeIDField.Value = '7')) or
     ((FIREID = 'HBVAC') and (NIPTypeIDField.Value = '16')) or
     ((FIREID = '28030') and (NISTypeIDField.Value = '2')) or
     ((FIREID = '28029') and (NISTypeIDField.Value = '18')) or
     ((FIREID = '30028') and (NISTypeIDField.Value = '2')) or
     ((FIREID = '28025') and (NISTypeIDField.Value = '2')) then begin
       if StrToFloat(EvLengthField.Value) < 1 then
         PointField.Value := FormatFloat('###.##',1)
       else if (StrToFloat(EvLengthField.Value) >= 1) and (StrToFloat(EvLengthField.Value) < 20) then
         PointField.Value := FormatFloat('###.##',Round(rMin(StrToFloat(EvLengthField.Value),5)))
       else if (StrToFloat(EvLengthField.Value) >= 20) and (StrToFloat(EvLengthField.Value) < 45) then
         PointField.Value := FormatFloat('###.##',Round(rMin(StrToFloat(EvLengthField.Value) - 20 + 5,10)))
       else if  (StrToFloat(EvLengthField.Value) >= 45) and (StrToFloat(EvLengthField.Value) < 100) then
         PointField.Value := FormatFloat('###.##',15)
       else if StrToFloat(EvLengthField.Value) >= 100 then
         PointField.Value := FormatFloat('###.##',25);
  end else if (FIREID = '10700') then begin
    NILOSAPCODE := SQLLookup(NILosapCatField.Value,'NILOSAPCATID','NILOSAPCAT','CODE');

    if (NILOSAPCODE = 'MT') then
      PointField.Value := FormatFloat('###.##',1.00)
    else if (NILOSAPCODE = 'TRDR') then
      PointField.Value := FormatFloat('###.##',(StrToFloat(EvLengthField.Value) * (2/3)))
    else if (NILOSAPCODE = 'INHOUSE') then
      PointField.Value := FormatFloat('###.##',(StrToFloat(EvLengthField.Value) * (1/2)))
    else if (NILOSAPCODE = 'NONEVENT') or (NILOSAPCODE = 'ADMFUNC') then
      PointField.Value := FormatFloat('###.##',(StrToFloat(EvLengthField.Value) * (1/3)))
    else if (NILOSAPCODE = 'TEACHING') then
      PointField.Value := FormatFloat('###.##',(StrToFloat(EvLengthField.Value) * (4/3)));

    SaveButton.Click;
  end else if ((FIREID = '28024') and (NISTypeIDField.Value = '2')) then begin
    If StrToFloat(EvLengthField.Value) >= 100 then
      PointField.Value :=  FormatFloat('###.##', 25)
    else If StrToFloat(EvLengthField.Value) >=45 then
      PointField.Value :=  FormatFloat('###.##', 15)
    else if StrToFloat(EvLengthField.Value) >= 20 then
      PointField.Value :=  FormatFloat('###.##', (5 + rMin(ceil(StrToFloat(EvLengthField.Value)) - 19, 5)))
    else // NIEVLENGTH < 20
      PointField.Value :=  FormatFloat('###.##', rMin(ceil(StrToFloat(EvLengthField.Value)), 5));
  end else if (FIREID = '13000') then begin
    if NisTypeIDField.Value = '6' then
      PointField.Value := FormatFloat('#0',Floor(StrToFloat(EvLengthField.Value) / 4))
    else if NistypeIDField.Value = '5' then
      PointField.Value := FormatFloat('#0',Floor(StrToFloat(EvLengthField.Value) / 8));   
  end;

end;

procedure TNIForm.EvLengthFieldChange(Sender: TObject);
begin
  inherited;
  if (mfireID = '28036') then begin
    Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE NIID = ' + PK);

    if A('NIATT').RecordsExist then begin
      if BooleanMessageDlg('Update ALL Personnel Attending With New Event Length Value?') then begin
        While Not A('NIATT').Eof do begin
          GetTable('NIATT').Edit;
          GetField('NIATT','EVLENGTH').AsFloat := StrToFloat(EvLengthField.Value);
          GetTable('NIATT').Post;
          A('NIATT').Skip(1);
        end;
      end;
    end;
    CloseApollo('NIATT');
  end;
end;

procedure TNIForm.EvLengthFieldEnter(Sender: TObject);
begin
  inherited;
  If AnyStrToFloat(EvLengthField.Value) = 0 then
    EVLengthButtonClick(self);
end;

procedure TNIForm.EvLengthFieldExit(Sender: TObject);
begin
  inherited;
  If ((FIREID = '28014') and (NIPTypeIDField.Value = '7')) or
     ((FIREID = 'HBVAC') and (NIPTypeIDField.Value = '16')) or
     ((FIREID = '28029') and (NISTypeIDField.Value = '18')) or
     ((FIREID = '30028') and (NISTypeIDField.Value = '2')) then begin
       if StrToFloat(EvLengthField.Value) < 1 then
         PointField.Value := FormatFloat('###.##',1)
       else if (StrToFloat(EvLengthField.Value) >= 1) and (StrToFloat(EvLengthField.Value) < 20) then
         PointField.Value := FormatFloat('###.##',Round(rMin(StrToFloat(EvLengthField.Value),5)))
       else if (StrToFloat(EvLengthField.Value) >= 20) and (StrToFloat(EvLengthField.Value) < 45) then
         PointField.Value := FormatFloat('###.##',Round(rMin(StrToFloat(EvLengthField.Value) - 20 + 5,10)))
       else if  (StrToFloat(EvLengthField.Value) >= 45) and (StrToFloat(EvLengthField.Value) < 100) then
         PointField.Value := FormatFloat('###.##',15)
       else if StrToFloat(EvLengthField.Value) >= 100 then
         PointField.Value := FormatFloat('###.##',25);
  end else if  ((FIREID = '28025') and (NISTypeIDField.Value = '2'))  then begin
    if Frac(StrToFloat(EvLengthField.Value)/2) = 0 then
      PointField.Value := FormatFloat('###.##',Round(StrToFloat(EvLengthField.Value)/2))
    else
      PointField.Value := FormatFloat('###.##',(Round((StrToFloat(EvLengthField.Value)/2)+0.49)));
  end;
end;

procedure TNIForm.SameDateButtonClick(Sender: TObject);
begin
  inherited;
  DateTimeEndField.Value := DateTimeStartField.Value;
end;

procedure TNIForm.DateTimeEndFieldExit(Sender: TObject);
begin
  inherited;
  If (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then begin
    If DateTimeStartField.Value > DateTimeEndField.Value then begin
      DateTimeEndField.Value := 0;
      ShowMessage('Start date cannot be after end date');
      DateTimeEndField.SetFocus;
    end;
  end;

  If (FireID = '10700') then begin
    EVLengthButtonClick(self);
    SetLoudounFields;
  end;
end;

procedure TNIForm.DateTimeStartFieldChange(Sender: TObject);
begin
  inherited;
  CheckTransferButton;
end;

procedure TNIForm.DescrFieldChange(Sender: TObject);
begin
  inherited;
  If mFireID = '00190' then
    Header.Caption := DescrField.Text
  else begin
    If Length(DescrField.Text) > 50 then begin
      Header.Font.Size := 10;
      Header.Top       := 2;
    end else begin
      Header.Font.Size := 16;
      Header.Top       := 8;
    end;
      Header.Caption := 'Ref# ' + PK + ' ' + DescrField.Text;
  end;
end;

procedure TNIForm.FindButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('NI',TNIForm,TNIForm.NewRecord,nil);
end;

procedure TNIForm.NIEVATTBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key = VK_RETURN) and NIEVAttCreditButton.Enabled then
    NIEVAttCreditButtonClick(self);
end;

procedure TNIForm.NIEVATTBrowseDblClick(Sender: TObject);
begin
  inherited;
  If NIEVAttCreditButton.Enabled then
    NIEVAttCreditButtonClick(self);
end;

procedure TNIForm.NITrainCat1IDFieldExit(Sender: TObject);
begin
  inherited;
  If Not (NITrainCAT1IDField.Value = '') then begin
    Open_Query('NITRAINCAT1',false,'SELECT POINT, LOADNIEV FROM NITRAINCAT1 WHERE NITRAINCAT1ID = ' + pkValue(NITrainCAT1IDField.Value));
    If A('NITRAINCAT1').RecordsExist and (tdbfield('NITRAINCAT1','LOADNIEV') = 'Y') then begin
      Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE NIID = ' + PK + ' AND NITRAINCAT1ID = ' + pkValue(NITrainCAT1IDField.Value));
      If Not A('NIEV').RecordsExist then begin
        A('NIEV').Append;
        GetField('NIEV','NIID').AsString            := PK;
        GetField('NIEV','NITRAINCAT1ID').AsString   := NITrainCAT1IDField.Value;
        GetField('NIEV','DATETIMESTART').AsDateTime := DateTimeStartField.Value;
        GetField('NIEV','DATETIMEEND').AsDateTime   := DateTimeEndField.Value;
        If (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then
          GetField('NIEV','EVLENGTH').AsFloat := 24 * (DateTimeEndField.Value - DateTimeStartField.Value);
        A('NIEV').Post;
      end;
      CloseApollo('NIEV');
    end;
    If GetField('NITRAINCAT1','POINT').AsFloat > 0 then
      PointField.Value := GetField('NITRAINCAT1','POINT').AsString;
    CloseApollo('NITRAINCAT1');
  end;
end;

procedure TNIForm.CalendarIconIDComboChange(Sender: TObject);
begin
  inherited;
  CalendarIconIDField.Value := inttostr(CalendarIconIDCombo.itemIndex);
  savebutton.enabled := True;
end;

function TNIForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('NIADD');
end;

function TNIForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('NIDEL');
end;

procedure TNIForm.NITrainCat1IDFieldEnter(Sender: TObject);
begin
  inherited;
  NITrainCat1IDField.SQLExpr := 'SELECT * FROM VWNITRAINCAT1 WHERE VWNITRAINCAT1.FDID = ' + AddExpr('') + ' OR VWNITRAINCAT1.FDID IS NULL OR VWNITRAINCAT1.FDID = ' + AddExpr(FdidField.Value) + ' ORDER BY VWNITRAINCAT1.CODE';
end;

procedure TNIForm.NIAgencyIDFieldEnter(Sender: TObject);
begin
  inherited;
  NIAgencyIDField.SQLExpr := 'SELECT * FROM NIAGENCY WHERE FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TNIForm.SchdButtonClick(Sender: TObject);
begin
  inherited;
  NISchdForm := TNISchdForm.Create(Application,PK);
  NISchdForm.ShowModal;
  NISchdForm.Free;

  ResetNIATTBrowse;
  NIAttBrowse.FDeleteButton.Position := bpmiddle;
  UpdateAttLabel;

  If NIApprove then
    EnableSave;
end;

procedure TNIForm.SchdLocFieldEnter(Sender: TObject);
begin
  inherited;
  SchdLocField.SQLExpr := 'SELECT * FROM SCHDLOC WHERE FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TNIForm.SchdShiftNameChoiceClick(Sender: TObject);
Var NIEVAttID : String;
    NIEVID    : String;
    PersID    : String;
    CertNum   : String;
begin
  inherited;
  NIEVID    := NIEVATTBrowse.GetCurrentColumnName;
  PersID    := NIEVATTBrowse.GetValue('PERSID');

  Open_Query('NIEVATT',false,'SELECT NIEVATTID FROM NIEVATT WHERE NIEVID = ' + pkValue(NIEVID) + ' AND PERSID = ' + PkValue(PersID));
  NIEVAttID := GetField('NIEVATT','NIEVATTID').AsString;
  CloseApollo('NIEVATT');
  If AnyStrToInt(NIEvAttID) > 0 then begin
    RunAlpineFormShowModal(TNIEvAttForm,NIEvAttID,'NIEVATT',Nil);
    CertNum := SQLLookUp(NIEvAttID,'NIEVATTID','NIEVATT','CERTNUM');
    NIEVAttBrowse.Cells[NIEVAttBrowse.Col,NIEVAttBrowse.Row] := 'Yes' + IIf(CertNum = '','',' - ' + CertNum);
  end else
    ShowMessage('First credit the attendance');
end;

procedure TNIForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY CODE';
end;

procedure TNIForm.UpdateButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE NIID = ' + PK);
  While Not A('NIATT').Eof do begin
    GetTable('NIATT').Edit;
    GetField('NIATT','EVLENGTH').AsFloat := StrToFloat(EvLengthField.Value);
    GetField('NIATT','POINT').AsFloat    := StrToFloat(PointField.Value);
    GetTable('NIATT').Post;
    A('NIATT').Skip(1);
  end;
  CloseApollo('NIATT');
  ResetNIATTBrowse;
  UpdateAttLabel;
  ShowMessage('Attendance records updated with the new point and length values');
end;


procedure TNIForm.User1FieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  If FireID = '52043' then begin
    if User1Field.Value = '1' then
      Custom.TabVisible  := true
    else
      Custom.TabVisible  := false;
  end;
end;

procedure TNIForm.EditNIEVAttButtonClick(Sender: TObject);
begin
  inherited;
  SchdShiftNameChoiceClick(self);
end;

function GetColWidth(UnitNum: String): Integer;
begin
  GetColWidth := IMax( Length(UnitNum)* 8, 45);
end;

procedure TNIForm.AddAllButtonClick(Sender: TObject);
Var PersID          : String;
    NISignUpID      : String;
    PersPointTypeID : String;
begin
  inherited;

  If BooleanMessageDlg('Transfer staff signed up for event to attendance') then begin

    Open_Query('PERSPOINTTYPE',false,'SELECT PERSPOINTTYPEID FROM PERSPOINTTYPE ORDER BY SORTORD');
    PersPointTypeID := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
    CloseApollo('PERSPOINTTYPE');

    Open_Query('NISIGNUP',true,'SELECT * FROM NISIGNUP WHERE NIID = ' + pkValue(pk));
    Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');

    While Not A('NISIGNUP').Eof do begin
      PersID     := Getfield('NISIGNUP','PERSID').AsString;

      A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + pkValue(PK) + ' AND PERSID = ' + pkValue(PersID));

      If A('NIATT').RecordsExist then
        A('NIATT').Edit
      else
        A('NIATT').Append;
      GetField('NIATT','NIID').AsString            := pk;
      GetField('NIATT','PERSID').AsString          := PersID;
      GetField('NIATT','EVLENGTH').AsString        := EvLengthField.Value;
      GetField('NIATT','POINT').AsString           := PointField.Value;
      GetField('NIATT','ENTRYSECID').AsString      := SecIDVar;
      GetField('NIATT','DATETIMEENTRY').AsDateTime := Now;
      GetField('NIATT','ENTRYCOMP').AsString       := AlpineGetComputerName;
      GetField('NIATT','ENTRYMETH').AsString       := 'SIGNUP';
      GetField('NIATT','NILOSAPCATID').AsString    := NILosapCatField.Value;
      GetField('NIATT','NISTYPEID').AsString       := NISTypeIDField.Value;
      GetField('NIATT','NIPTYPEID').AsString       := NIPTypeIDField.Value;
      GetField('NIATT','PERSPOINTTYPEID').AsString := PersPointTypeID;
      A('NIATT').Post;

      A('NISIGNUP').Skip(1);
    end;

    CloseApollo('NIATT');
    CloseApollo('NISIGNUP');

    ResetNIAttBrowse;
  end;  
end;

procedure TNIForm.AddOneButtonClick(Sender: TObject);
Var PersID          : String;
    NISignUpID      : String;
    PersPointTypeID : String;
begin
  inherited;
  NISignUpID := NISignUpBrowse.FGrid.GetValue('NISIGNUPID');
  PersID     := NISignUpBrowse.FGrid.GetValue('PERSID');

  Open_Query('PERSPOINTTYPE',false,'SELECT PERSPOINTTYPEID FROM PERSPOINTTYPE ORDER BY SORTORD');
  PersPointTypeID := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
  CloseApollo('PERSPOINTTYPE');
  

  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE NIID = ' + pkValue(pk) + ' AND PERSID = ' + pkValue(PersID));
  If A('NIATT').RecordsExist then
    A('NIATT').Edit
  else
    A('NIATT').Append;
  GetField('NIATT','NIID').AsString            := pk;
  GetField('NIATT','PERSID').AsString          := PersID;
  GetField('NIATT','EVLENGTH').AsString        := EvLengthField.Value;
  GetField('NIATT','POINT').AsString           := PointField.Value;
  GetField('NIATT','ENTRYSECID').AsString      := SecIDVar;
  GetField('NIATT','DATETIMEENTRY').AsDateTime := Now;
  GetField('NIATT','ENTRYCOMP').AsString       := AlpineGetComputerName;
  GetField('NIATT','ENTRYMETH').AsString       := 'SIGNUP';
  GetField('NIATT','NILOSAPCATID').AsString    := NILosapCatField.Value;
  GetField('NIATT','NISTYPEID').AsString       := NISTypeIDField.Value;
  GetField('NIATT','NIPTYPEID').AsString       := NIPTypeIDField.Value;
  GetField('NIATT','PERSPOINTTYPEID').AsString := PersPointTypeID;
  A('NIATT').Post;
  CloseApollo('NIATT');

  ResetNIAttBrowse;
end;

procedure TNIForm.AppTabShow(Sender: TObject);
Var iCol        : Integer;
    CurrentRow  : Integer;
    CurrentCol  : Integer;
    mAdd        : String;
    NIAppCnt    : Integer;
begin
  CurrentRow                 := NIAppBrowse.Row;
  CurrentCol                 := NIAppBrowse.Col;
  NIAppBrowse.Clear;
  NIAppBrowse.ColCount       := 0;
  NIAppBrowse.RowCount       := 0;
  NIAppBrowse.ClearColumns;
  NIAppBrowse.FixedRowAlways := true;
  NIAppBrowse.RowCount       := NIAppBrowse.FixedRows;
  NIAppBrowse.SetColumn('PERSID',  'PERSID',000);
  NIAppBrowse.SetColumn('PERSCODE','ID#',   055);
  NIAppBrowse.SetColumn('NAME',    'Name',  120);

  If MultiFdid then
    mAdd := ' AND FDID = ' + AddExpr(FdidField.Value)
  else if (mFireID = '15038') then
    mAdd := ' AND UNITNUM LIKE ' + AddExpr('H%')
  else
    mAdd := '';

  Open_Query('INV',false,'SELECT INVID, UNITNUM FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y') + mAdd + ' ORDER BY UNITNUM');
  A('INV').GoTop;
  While Not A('INV').Eof do begin
    NIAppBrowse.SetColumn(GetField('INV','INVID').AsString,tdbfield('INV','UNITNUM'),GetColWidth(tdbfield('INV','UNITNUM')));
    A('INV').Skip(1);
  end;
  CloseApollo('INV');

  NIAppBrowse.SetColumn('BLANKFIELD','',700);

  Open_Query('NIAPP',false,'SELECT * FROM NIAPP WHERE NIID = ' + pkValue(PK));
  Open_Query('NIATT',false,'SELECT PERSID, PERSCODE, LNAME, FNAME FROM VWNIATT WHERE NIID = ' + pkValue(PK) + ' ORDER BY LNAME');
  While Not A('NIATT').Eof do begin
    NIAppBrowse.SetValue('PERSID',  GetField('NIATT','PERSID').AsString);
    NIAppBrowse.SetValue('PERSCODE',GetField('NIATT','PERSCODE').AsString);
    NIAppBrowse.SetValue('NAME',    tdbfield('NIATT','LNAME') + ', ' + tdbfield('NIATT','FNAME'));
    for icol := 3  to NIAppBrowse.ColCount - 2 do begin
      If A('NIAPP').ExactQueryLocate(['PERSID','INVID'],[GetField('NIATT','PERSID').AsString,NIAppBrowse.ColumnNames[icol]]) then begin
        NIAppCnt := 0;
        While (Getfield('NIAPP','PERSID').AsString = GetField('NIATT','PERSID').AsString) and (Getfield('NIAPP','INVID').AsString = NIAppBrowse.ColumnNames[icol]) and not A('NIAPP').EOF do begin      //doug added this    and not A('NIAPP').EOF to the end due to an infinate loop that was occuring
          NIAppCnt := NIAppCnt + 1;
          A('NIAPP').Skip(1);
        end;
        NIAppBrowse.SetValue(NIAppBrowse.ColumnNames[icol],'Yes' + IIf(NIAppCnt > 1,' (' + IntToStr(NIAppCnt) + ')',''));
      end else
        NIAppBrowse.SetValue(NIAppBrowse.ColumnNames[icol],'-');
    end;
    A('NIATT').Skip(1);
  end;

  NIAppBrowse.FixedCols := 3;
  CloseApollo('NIAPP');
  CloseApollo('NIATT');
  NIAppBrowse.Invalidate;
  NIAppBrowseClick(self);

  If (CurrentRow > 1) and (CurrentCol > 2) then begin
    NIAppBrowse.Row := CurrentRow;
    NIAppBrowse.Col := CurrentCol;
  end;
end;

procedure TNIForm.NIAppButtonClick(Sender: TObject);
var SaveRow     : Integer;
    SaveCol     : Integer;
    InvID       : String;
    PersID      : String;
    NIAppTaskID : String;
begin
  If Not ViewOnly then begin
    If (AnyStrToInt(NIAppTaskIDField.Value) > 0) then begin
      SaveRow     := NIAPPBrowse.Row;
      SaveCol     := NIAPPBrowse.Col;
      InvID       := NIAppBrowse.GetCurrentColumnName;
      PersID      := NIAppBrowse.GetValue('PERSID');
      NIAppTaskID := NIAppTaskIDField.Value;

      Open_Query('NIAPP',true,'SELECT * FROM NIAPP WHERE NIID = ' + PK + ' AND PERSID = ' + pkValue(PersID) + ' AND INVID = ' + pkValue(InvID) + ' AND NIAPPTASKID = ' + pkValue(NIAppTaskID));
      If Not A('NIAPP').RecordsExist then begin
        A('NIAPP').Append;
        GetField('NIAPP','NIID').AsString        := PK;
        GetField('NIAPP','PERSID').AsString      := PersID;
        GetField('NIAPP','INVID').AsString       := InvID;
        GetField('NIAPP','NIAPPTASKID').AsString := NIAppTaskID;
        GetField('NIAPP','DESCR').AsString       := NIAppDescrField.Value;
        GetField('NIAPP','EVLENGTH').AsString    := NIAppEvLengthField.Value;
        GetField('NIAPP','MILES').AsString       := NIAppMilesField.Value;
        GetField('NIAPP','NARR').AsString        := NIAppNarrField.Value;
        A('NIAPP').Post;
        NIAppBrowse.Cells[SaveCol,SaveRow] := 'Yes';
      end;
      CloseApollo('NIAPP');
      NIAppBrowseClick(self);
    end else
      ShowMessage('You need to enter a task');
  end;    
end;

procedure TNIForm.NIAppBrowseDblClick(Sender: TObject);
begin
  inherited;
  NIAppButtonClick(self);
end;

procedure TNIForm.NIAppBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var InvID       : String;
    PersID      : String;
    NIAppTaskID : String;
begin
  inherited;
  If (Key = VK_RETURN) then
    NIAppButtonClick(self)
  else if (Key = VK_DELETE) and Not ViewOnly then begin
    If BooleanMessageDlg('Delete record?') then begin
      InvID       := NIAppBrowse.GetCurrentColumnName;
      PersID      := NIAppBrowse.GetValue('PERSID');
      NIAppTaskID := NIAppTaskIDField.Value;
      RunSQL('DELETE FROM NIAPP WHERE NIID = ' + PK + ' AND PERSID = ' + pkValue(PersID) + ' AND INVID = ' + pkValue(InvID));
      NIAppBrowse.Cells[NIAppBrowse.Col,NIAppBrowse.Row] := '-';
    end;  
  end;
end;

procedure TNIForm.NIAppNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INVID').AsString       := NIAppBrowse.GetCurrentColumnName;
  DataSet.FieldByname('PERSID').AsString      := NIAppBrowse.GetValue('PERSID');
  DataSet.FieldByname('NIAPPTASKID').AsString := NIAppTaskIDField.Value;
  DataSet.FieldByname('NIID').AsString        := PK;
end;

procedure TNIForm.NIAppBrowseClick(Sender: TObject);
Var InvID       : String;
    PersID      : String;
    NIAppTaskID : String;
begin
  inherited;
  InvID                               := NIAppBrowse.GetCurrentColumnName;
  PersID                              := NIAppBrowse.GetValue('PERSID');
  NIAppTaskID                         := NIAppTaskIDField.Value;
//NIAppEditBrowse.Caption.Text        := 'Apparatus usage for ' + NIAppBrowse.GetValue('NAME') + ' on unit ' + SQLLookUp(InvID,'INVID','INV','UNITNUM'); 
//NIAppEditBrowse.ExplicitWhereClause := ' WHERE NIID = ' + PK + ' AND PERSID = ' + pkValue(PersID) + ' AND INVID = ' + pkValue(InvID);
  NIAppEditBrowse.ExplicitWhereClause := ' WHERE NIID = ' + PK;
  NIAppEditBrowse.Setup('NIAPP',TNIAppForm,NIAppNewRecord);
end;

procedure TNIForm.NIAppTaskIDFieldChange(Sender: TObject);
begin
  inherited;
  NIAppButton.Enabled := (AnyStrToInt(NIAppTaskIDField.Value) > 0); 
end;

procedure TNIForm.NIAppEditBrowseAfterDelete(Sender: TObject);
Var Row : Integer;
    Col : Integer;
begin
  inherited;
  Row := NIAppBrowse.Row;
  Col := NIAppBrowse.Col;
  AppTabShow(self);
  NIAppBrowse.Row := Row;
  NIAppBrowse.Col := Col;
end;

procedure TNiform.DoNewClick;
begin
  NiPageControl.ActivePage := gentab;
end;

procedure TNIForm.NIAppEvLengthFieldChange(Sender: TObject);
Var EvLength : Real;
begin
  inherited;
  EvLength := AnyStrToFloat(SearchAndReplace(NIAppEvLengthField.Value,' ',''));
  If EvLength >= 2 then
    EvLengthDescr.Caption := IntToStr(Trunc(EvLength)) + ' Hours ' + FloatToStr(60*Frac(EvLength)) + ' Minutes'
  else if EvLength >= 1 then
    EvLengthDescr.Caption := IntToStr(Trunc(EvLength)) + ' Hour ' + FloatToStr(60*Frac(EvLength)) + ' Minutes'
  else
    EvLengthDescr.Caption := FloatToStr(60 * Frac(EvLength)) + ' Minutes';
end;

procedure TNIForm.FdidCompIDFieldExit(Sender: TObject);
begin
  inherited;
  If AnyStrToInt(FdidCompIDField.Value) > 0 then begin
    Open_Query('NIFDIDCOMP',true,'SELECT * FROM NIFDIDCOMP WHERE FDIDCOMPID = ' + pkValue(FdidCompIDField.Value) + ' AND NIID = ' + PK);
    If A('NIFDIDCOMP').RecordsExist then
      A('NIFDIDCOMP').Edit
    else
      A('NIFDIDCOMP').Append;
    GetField('NIFDIDCOMP','FDIDCOMPID').AsString := FdidCompIDField.Value;
    GetField('NIFDIDCOMP','NIID').AsString       := PK;
    GetTable('NIFDIDCOMP').Post;
    CloseApollo('NIFDIDCOMP');
  end;
end;

procedure TNIForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure TNIForm.NISTypeIDFieldSuccessfulValidate(Sender: TObject);
var mStart : String;
begin
  inherited;
  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE WHERE NISTYPEID = ' + pkValue(NISTypeIDField.Value));
  If A('NISTYPE').RecordsExist then begin
    SaveButton.Enabled    := true;
    NILosapCatField.Value := GetField('NISTYPE','NILOSAPCATID').AsString;
    PointField.Value      := GetField('NISTYPE','POINT').AsString;
    User1Field.Value  := GetField('NISTYPE','NIUSER1ID').AsString;
    User2Field.Value  := GetField('NISTYPE','NIUSER2ID').AsString;
    User3Field.Value  := GetField('NISTYPE','NIUSER3ID').AsString;
    User4Field.Value  := GetField('NISTYPE','NIUSER4ID').AsString;
    User5Field.Value  := GetField('NISTYPE','NIUSER5ID').AsString;
    User6Field.Value  := GetField('NISTYPE','NIUSER6ID').AsString;
    If FireID = '52109' then begin
       Open_Query('GETNI',false,'SELECT LPAD(MAX(CODE) + 1,8,''0'') CODE FROM NI WHERE NIPTYPEID = ' + pkValue(NIPTypeIDField.Value));
       If A('GETNI').RecordsExist then
         CodeField.Value    := GetField('GETNI','CODE').AsString;
       CloseApollo('GETNI');
    end;
  end;

  If FireID = '52043' then begin
    if User1Field.Value = '1' then
      Custom.TabVisible  := true
    else
      Custom.TabVisible  := false;
  end;
  CloseApollo('NISTYPE');
end;

procedure TNIForm.PersAccHistButtonClick(Sender: TObject);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);

  PersAccHistSelectForm := TPersAccHistSelectForm.Create(Application,'NI',PK);
  PersAccHistSelectForm.ShowModal;
  PersAccHistSelectForm.Free;
  NIAttTabShow(self);
end;

procedure TNIForm.PointFieldChange(Sender: TObject);
begin
  inherited;
  if (mfireID = '28036') then begin
    Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE NIID = ' + PK);

    if A('NIATT').RecordsExist then begin
      if BooleanMessageDlg('Update ALL Personnel Attending With New Point Value?') then begin
        While Not A('NIATT').Eof do begin
          GetTable('NIATT').Edit;
          GetField('NIATT','POINT').AsFloat    := StrToFloat(PointField.Value);
          GetTable('NIATT').Post;
          A('NIATT').Skip(1);
        end;
      end;
    end;
    CloseApollo('NIATT');
  end;
end;

procedure TNIForm.DoAfterSetControls(Sender: TObject);
begin
  CheckTransferbutton;
  If (anystrtoint(CalendarIconIDField.Value)>=0) and (anystrtoint(CalendarIconIDField.Value)<=CalendarIconIDCombo.ComboItems.count-1) then
    CalendarIconIDCombo.itemIndex := anystrtoint(CalendarIconIDField.Value);
  If mfireid = '46006' then
    CodeField.Value := GetNextVal(GlobalAdoConnection,'SELECT MAX(CODE) FROM NI','0001');

  SetLoudounFields;
end;

procedure TNIForm.SetLoudounFields;
Var NIAttCnt : Integer;
begin
  If (mFireId = '10700') then begin
    If CheckSecVar('PERSBENEFITS') then begin
      DateTimeStartField.Enabled   := true;
      DateTimeEndField.Enabled     := true;
      SameDateButton.Enabled       := true;
      EVLengthButton.Enabled       := true;
      ViewOnly                     := false;
      NIAttBrowse.ViewOnly         := false;
      NIAttBrowse.Locked           := false;
      Rosterbutton.Enabled         := true;
      CopyButton.Enabled           := true;
      SchdButton.Enabled           := true;
      UpdateButton.Enabled         := true;
      ManPowerButton.Enabled       := true;
      NIAttBrowse.DeleteEnabled    := true;
    end else begin
      If CheckLoudounIsCloseOut(FdidField.Value,DateTimeStartField.Value) then begin
        ViewOnly                   := true;
        DateTimeStartField.Enabled := false;
        DateTimeEndField.Enabled   := false;
        SameDateButton.Enabled     := false;
        EVLengthButton.Enabled     := false;
        NIAttBrowse.ViewOnly       := false;
        NIAttBrowse.Locked         := false;
        Rosterbutton.Enabled       := false;
        CopyButton.Enabled         := False;
        SchdButton.Enabled         := false;
        UpdateButton.Enabled       := false;
        ManPowerButton.Enabled     := false;
        NIAttBrowse.DeleteEnabled  := false;
      end;
    end;
  end;
end;

class procedure TNIForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    If CheckSecVar('NIEDIT') then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Replicate Event';
      m.Onclick := ReplicateNonIncidentClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

    If CheckSecVar('NIEDIT') and ((CheckSecVar('NISETUP')) or (FireID = 'HARFO'))   then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Event Recurrence';
      m.Onclick := NIRecurrenceClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;
  end;
end;

class procedure TNIForm.ReplicateNonIncidentClick(Sender: TObject);
var NIID    : String;
    NewNIID : String;
    NewView : TNewView;
begin
  inherited;
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView := TNewView(TMenuItem(Sender).Owner);
    NIID    := NewView.ViewGrid.GetValue('NIID')
  end;

  RepNIForm  := TRepNIForm.Create(application,NIID);
  RepNIForm.ShowModal;
  NewNIID    := RepNIForm.NewNIID;
  RepNIForm.Free;

  If (NewView <> nil) and Not (NewNIID = '') then begin
    NewView.ViewGrid.SetValue('NI',NewView.ViewGrid.Row,NewNIID);
    NewView.RefreshGrid(NewNIID,'','',True);
  end;
end;

class procedure TNIForm.NIRecurrenceClick(Sender: TObject);
var NIID    : String;
    NewNIID : String;
    NewView : TNewView;
begin
  inherited;
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView := TNewView(TMenuItem(Sender).Owner);
    NIID    := NewView.ViewGrid.GetValue('NIID')
  end;

  NIRecurrenceForm := TNIRecurrenceForm.Create(application,NIID);
  NIRecurrenceForm.ShowModal;
  NIRecurrenceForm.Free;

  NewView.RefreshGrid(NIID,'','',True);
end;


procedure TNIForm.ValidateButtonClick(Sender: TObject);
begin
  inherited;
  ErrorTypeField.Caption   := '';
  ErrorActionField.Caption := '';

  SaveButtonClick(self);
  ErrorCnt                 := ValidateNI;

  If ErrorCnt = 0 then begin
    If ValidateButton.Caption = 'Validate Event?' then
      ValidateButton.Caption := 'Approve Event?'
    else begin
      try
        FInEnableSave             := True;
        AppStatField.Checked      := true;
        AppDateField.Value        := Now;
        AppPersIDDescrField.Value := SQLLookUp(GlobalPersID,'PERSID','PERS','LNAME') + ', ' + SQLLookUp(GlobalPersID,'PERSID','PERS','FNAME');
        UpdateApprovalFields('Y',Now,GlobalPersId);
        SaveButton.Enabled        := false;
      finally
        FInEnableSave             := True;
      end;
      ValidateButton.Caption    := 'Event Approved';
      if FUpdateControl <> nil then
        if FUpdateControl is TNewView then
          if FUpdateControl <> nil then
            TNewView(FUpdateControl).RefreshGrid(pk,'','',true);
      close;
    end;  
  end else
    ValidateButton.Caption    := 'Validate Event?';
end;

function TNIForm.ValidateNI: Integer;
begin
  If mFireID = '00190' then
    ValidateNI := Validate00190
  else if mFireID = '12345' then
    ValidateNI := ValidateHarfo
  else if mFireID = 'HARFO' then 
    ValidateNI := ValidateHarfo
  else if mFireID = 'B3580' then
    ValidateNI := ValidateB3580
  else if mFireId = '15051' then
    ValidateNI := ValidateLakeShore
  else
    ValidateNI := ValidateGeneral;
end;

procedure TNIForm.ResetErrorGrid;
begin
  ErrorCnt                := 0;
  ErrorGrid.Clear;
  ErrorGrid.RowCount      := 1;
  ErrorGrid.ColCount      := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.SetColumn('FORMNAME',   '',                 000);
  ErrorGrid.SetColumn('FIELDNAME',  '',                 000);
  ErrorGrid.SetColumn('ERRORTYPE',  'Type',             030);
  ErrorGrid.SetColumn('FORMDESCR',  'Tab',              070);
  ErrorGrid.SetColumn('FIELDDESCR', 'Field',            103);
  ErrorGrid.SetColumn('ERRORDESCR', 'Error Description',000);
  ErrorGrid.SetColumn('ERRORACTION','Error Action',     000);
end;

class procedure TNIForm.LoadErrorGrid(ErrorGrid: TAlpineTMSStringGrid; Var ErrorCnt: Integer; FormName, FieldName, ErrorType, FormDescr, FieldDescr, ErrorDescr, ErrorAction : String);
begin
  ErrorGrid.SetValue('FORMNAME',   FormName);
  ErrorGrid.SetValue('FIELDNAME',  FieldName);
  ErrorGrid.SetValue('ERRORTYPE',  ErrorType);
  ErrorGrid.SetValue('FORMDESCR',  FormDescr);
  ErrorGrid.SetValue('FIELDDESCR', FieldDescr);
  ErrorGrid.SetValue('ERRORDESCR', ErrorDescr);
  ErrorGrid.SetValue('ERRORACTION',ErrorAction);
  ErrorCnt := ErrorCnt + 1;
end;

function TNIForm.Validate00190: Integer;
Var Row                   : Integer;
    NIAttCnt              : Integer;
    NIEvCntVar            : Integer;
    NIEvEvLength          : Real;
    EvLength              : Real;
    EvLengthString        : String;
    NIPTypeCode           : String;
    StartEndString        : String;
    NIEvAttEvLength       : Real;
    NIEvAttEvLengthString : String;
begin
  NIPTypeCode             := SQLLookUp(NIPTypeIDField.Value,'NIPTYPEID','NIPTYPE','CODE');
  NIAttCnt                := SqlTableRecCount('SELECT COUNT(*) FROM NIATT WHERE NIID = ' + PK);
  EvLength                := StrToFloat(EvLengthField.Value);
  StartEndString          := FormatFloat('#0.00',((DateTimeEndField.Value - DateTimeStartField.Value) * 24));
  EvLengthString          := FormatFloat('#0.00',EvLength);

  ResetErrorGrid;

  If AnyStrToFloat(EvLengthField.Value) = 0 then 
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','EVLENGTH','C','General','Length','Length is required','Enter Length');
  If DateTimeStartField.Value = 0 then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DATETIMESTART','C','General','Start Date / Time','Start Date / Time is required','Enter Start Date / Time');

  If DateTimeEndField.Value = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'DATETIMEEND');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'End Date / Time');
    ErrorGrid.SetValue('ERRORDESCR', 'End Date / Time is required');
    ErrorGrid.SetValue('ERRORACTION','Enter End Date / Time');
    ErrorCnt := ErrorCnt + 1;
  end;

  If (EvlengthString <> StartEndString) then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'EVLENGTH');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Event Length');
    ErrorGrid.SetValue('ERRORDESCR', 'Event length is incorrect for start and end times');
    ErrorGrid.SetValue('ERRORACTION','Recalculate Event Length');
    ErrorCnt := ErrorCnt + 1;
  end;  

  If NIAttCnt = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIATT');
    ErrorGrid.SetValue('FIELDNAME',  'NIATT');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'Attendance');
    ErrorGrid.SetValue('FIELDDESCR', 'Attendance');
    ErrorGrid.SetValue('ERRORDESCR', 'Attendance is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Attendance');
    ErrorCnt := ErrorCnt + 1;
  end;

  If (NIPTypeCode = 'TR') or (NIPTypeCode = 'PB') then begin
    If LocationIDField.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'LOCATIONID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Location');
      ErrorGrid.SetValue('ERRORDESCR', 'Location is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Location');
      ErrorCnt := ErrorCnt + 1;
    end;
  end;

  If (NIPTypeCode = 'PB') then begin
    If AnyStrToFloat(TrainHourField.Value) = 0 then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'TRAINHOUR');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Number of Contacts');
      ErrorGrid.SetValue('ERRORDESCR', 'Number of Contacts is required');
      ErrorGrid.SetValue('ERRORACTION','Enter the Number of Contacts');
      ErrorCnt := ErrorCnt + 1;
    end;
  end;

  If (NIPTypeCode = 'NA') then begin
    If (alltrim(UnitNumField.Value) = '') then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'UNITNUM');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Unit');
      ErrorGrid.SetValue('ERRORDESCR', 'Unit is required');
      ErrorGrid.SetValue('ERRORACTION','Enter the Unit');
      ErrorCnt := ErrorCnt + 1;
    end;
  end;
  

  If NIPTypeCode = 'TR' then begin
    If User1Field.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'NIUSER1ID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Night Training');
      ErrorGrid.SetValue('ERRORDESCR', 'Night Training is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Night Training');
      ErrorCnt := ErrorCnt + 1;
    end;

    If User2Field.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'NIUSER2ID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Multi Company Training');
      ErrorGrid.SetValue('ERRORDESCR', 'Multi Company Training is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Multi Company Training');
      ErrorCnt := ErrorCnt + 1;
    end;

    If User3Field.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'NIUSER3ID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Class / Practical');
      ErrorGrid.SetValue('ERRORDESCR', 'Class / Practical is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Class / Practical');
      ErrorCnt := ErrorCnt + 1;
    end;

    If User4Field.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'NIUSER4ID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Training Type');
      ErrorGrid.SetValue('ERRORDESCR', 'Training Type is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Training Type');
      ErrorCnt := ErrorCnt + 1;
    end;

    If User5Field.Value = '' then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'NIUSER5ID');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'General');
      ErrorGrid.SetValue('FIELDDESCR', 'Mutual Aid');
      ErrorGrid.SetValue('ERRORDESCR', 'Mutual Aid is required');
      ErrorGrid.SetValue('ERRORACTION','Enter Mutual Aid');
      ErrorCnt := ErrorCnt + 1;
    end;

    NIEvEvLength := 0;
    Open_Query('NIEV',false,'SELECT * FROM NIEV WHERE NIID = ' + PK);
    NIEvCntVar := A('NIEV').QueryRecCount;
    While Not A('NIEV').Eof do begin
      NIEvEvLength := NIEvEvLength + GetField('NIEV','EVLENGTH').AsFloat;
      If (GetField('NIEV','NITRAINCATTYPEID').AsString = '') or (GetField('NIEV','NITRAINCAT1ID').AsString = '') then begin
        ErrorGrid.SetValue('FORMNAME',   'EVTAB');
        ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
        ErrorGrid.SetValue('ERRORTYPE',  'C');
        ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
        ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
        ErrorGrid.SetValue('ERRORDESCR', 'One or more evolution is missing the group or training type.');
        ErrorGrid.SetValue('ERRORACTION','Enter group or training type.');
        ErrorCnt := ErrorCnt + 1;
      end;

      Open_Query('NIEVPERSINV',false,'SELECT * FROM NIEVPERSINV WHERE NIEVID = ' + pkValue(GetField('NIEV','NIEVID').AsString));
      If A('NIEVPERSINV').RecordsExist then begin
        While Not A('NIEVPERSINV').Eof do begin
          If (GetField('NIEVPERSINV','PERSID').AsString = '') and (tdbfield('NIEVPERSINV','DESCR') = '') then begin
            ErrorGrid.SetValue('FORMNAME',   'EVTAB');
            ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
            ErrorGrid.SetValue('ERRORTYPE',  'C');
            ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
            ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
            ErrorGrid.SetValue('ERRORDESCR', 'One or more evolution is missing others involved entry fields.');
            ErrorGrid.SetValue('ERRORACTION','Enter other involved for the evolution.');
            ErrorCnt := ErrorCnt + 1;
          end;
          A('NIEVPERSINV').Skip(1);
        end;
      end else begin
        ErrorGrid.SetValue('FORMNAME',   'EVTAB');
        ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
        ErrorGrid.SetValue('ERRORTYPE',  'C');
        ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
        ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
        ErrorGrid.SetValue('ERRORDESCR', 'One or more evolution is missing others involved.');
        ErrorGrid.SetValue('ERRORACTION','Enter other involved for the evolution.');
        ErrorCnt := ErrorCnt + 1;
      end;
      CloseApollo('NIEVPERSINV');
      
      A('NIEV').Skip(1);
    end;
    CloseApollo('NIEV');

    If NIEvCntVar= 0 then begin
      ErrorGrid.SetValue('FORMNAME',   'EVTAB');
      ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
      ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
      ErrorGrid.SetValue('ERRORDESCR', 'One Evolution is required');
      ErrorGrid.SetValue('ERRORACTION','Enter one or more Evolutions');
      ErrorCnt := ErrorCnt + 1;
    end;

    Open_Query('NIATT',false,'SELECT PERS.LNAME, NIATT.PERSID FROM NIATT LEFT JOIN PERS ON (NIATT.PERSID = PERS.PERSID) WHERE NIATT.NIID = ' + pkValue(pk));
    Open_Query('NIEVATT',false,'SELECT * FROM NIEVATT WHERE 1=2');
    While Not A('NIATT').Eof do begin
      NIEvAttEvLength := 0;

      A('NIEVATT').UpdateSQL('SELECT NIEV.EVLENGTH FROM NIEVATT LEFT JOIN NIEV ON (NIEVATT.NIEVID = NIEV.NIEVID) WHERE NIEVATT.NIID = ' +pkValue(pk) + ' AND NIEVATT.PERSID = ' + pkvalue(GetField('NIATT','PERSID').AsString));
      While Not A('NIEVATT').Eof do begin
        NIEvAttEvLength := NIEvAttEvLength + GetField('NIEVATT','EVLENGTH').AsFloat;
        A('NIEVATT').Skip(1);
      end;

      If (NIEvAttEvLength > EvLength) then begin
        ErrorGrid.SetValue('FORMNAME',   'EVTAB');
        ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
        ErrorGrid.SetValue('ERRORTYPE',  'C');
        ErrorGrid.SetValue('FORMDESCR',  'Classes');
        ErrorGrid.SetValue('FIELDDESCR', 'Classes Attendance');
        ErrorGrid.SetValue('ERRORDESCR', tdbfield('NIATT','LNAME') + ' has attendance to many classes');
        ErrorGrid.SetValue('ERRORACTION','Correct Attendance');
        ErrorCnt := ErrorCnt + 1;
      end;

      A('NIATT').Skip(1);
    end;
    CloseApollo('NIATT');
    CloseApollo('NIEVATT');
  end;

  Validate00190 := ErrorCnt;
end;

function TNIForm.ValidateHarfo: Integer;
Var Row                   : Integer;
    NIAttCnt              : Integer;
    ErrorCnt              : Integer;
    NIEvCntVar            : Integer;
    NIEvEvLength          : Real;
    EvLength              : Real;
    EvLengthString        : String;
    NIPTypeCode           : String;
    StartEndString        : String;
    NIEvAttEvLength       : Real;
    NIEvAttEvLengthString : String;
begin
  NIPTypeCode             := SQLLookUp(NIPTypeIDField.Value,'NIPTYPEID','NIPTYPE','CODE');
  NIAttCnt                := SqlTableRecCount('SELECT COUNT(*) FROM NIATT WHERE NIID = ' + PK);
  EvLength                := StrToFloat(EvLengthField.Value);
  StartEndString          := FormatFloat('#0.00',((DateTimeEndField.Value - DateTimeStartField.Value) * 24));
  EvLengthString          := FormatFloat('#0.00',EvLength);

  ResetErrorGrid;

  If (NISTypeIDField.Value = '') then 
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NISTYPEID','C','General','Secondary Type','Secondary Type is required','Enter Secondary Type');

  If (DescrField.Value = '') then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DESCR','C','General','Description','Description is required','Enter Description');

  If AnyStrToFloat(EvLengthField.Value) = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'EVLENGTH');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Length');
    ErrorGrid.SetValue('ERRORDESCR', 'Length is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Length');
    ErrorCnt := ErrorCnt + 1;
  end;

  If DateTimeStartField.Value = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'DATETIMESTART');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Start Date / Time');
    ErrorGrid.SetValue('ERRORDESCR', 'Start Date / Time is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Start Date / Time');
    ErrorCnt := ErrorCnt + 1;
  end;

  If DateTimeEndField.Value = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'DATETIMEEND');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'End Date / Time');
    ErrorGrid.SetValue('ERRORDESCR', 'End Date / Time is required');
    ErrorGrid.SetValue('ERRORACTION','Enter End Date / Time');
    ErrorCnt := ErrorCnt + 1;
  end;

  If NIAttCnt = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIATT');
    ErrorGrid.SetValue('FIELDNAME',  'NIATT');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'Attendance');
    ErrorGrid.SetValue('FIELDDESCR', 'Attendance');
    ErrorGrid.SetValue('ERRORDESCR', 'Attendance is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Attendance');
    ErrorCnt := ErrorCnt + 1;
  end;

  If (LocationIDField.Value = '') and (LocMiscField.Value = '') then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'LOCATIONID');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Location');
    ErrorGrid.SetValue('ERRORDESCR', 'Location is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Location');
    ErrorCnt := ErrorCnt + 1;
  end;

  If (NIPTypeCode = 'DRILL') or (NIPTypeCode = 'TRAINING') then begin
    NIEvEvLength := 0;
    Open_Query('NIEV',false,'SELECT * FROM NIEV WHERE NIID = ' + PK);
    NIEvCntVar := A('NIEV').QueryRecCount;
    While Not A('NIEV').Eof do begin
      NIEvEvLength := NIEvEvLength + GetField('NIEV','EVLENGTH').AsFloat;
      If (GetField('NIEV','NITRAINCATTYPEID').AsString = '') or (GetField('NIEV','NITRAINCAT1ID').AsString = '') then begin
        ErrorGrid.SetValue('FORMNAME',   'EVTAB');
        ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
        ErrorGrid.SetValue('ERRORTYPE',  'C');
        ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
        ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
        ErrorGrid.SetValue('ERRORDESCR', 'One or more evolution is missing the group or training type.');
        ErrorGrid.SetValue('ERRORACTION','Enter group or training type.');
        ErrorCnt := ErrorCnt + 1;
      end;
      A('NIEV').Skip(1);
    end;
    CloseApollo('NIEV');

    If NIEvCntVar= 0 then begin
      ErrorGrid.SetValue('FORMNAME',   'EVTAB');
      ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'Evolutions');
      ErrorGrid.SetValue('FIELDDESCR', 'Evolutions');
      ErrorGrid.SetValue('ERRORDESCR', 'One Evolution is required');
      ErrorGrid.SetValue('ERRORACTION','Enter one or more Evolutions');
      ErrorCnt := ErrorCnt + 1;
    end;

    If AnyStrToFloat(TrainHourField.Value) = 0 then begin
      ErrorGrid.SetValue('FORMNAME',   'NIGEN');
      ErrorGrid.SetValue('FIELDNAME',  'TRAINHOUR');
      ErrorGrid.SetValue('ERRORTYPE',  'C');
      ErrorGrid.SetValue('FORMDESCR',  'Dates and Times');
      ErrorGrid.SetValue('FIELDDESCR', 'Training Hours');
      ErrorGrid.SetValue('ERRORDESCR', 'Training Hours is required');
      ErrorGrid.SetValue('ERRORACTION','Enter the Training Hours');
      ErrorCnt := ErrorCnt + 1;
    end;

    Open_Query('NIATT',false,'SELECT PERS.LNAME, NIATT.PERSID FROM NIATT LEFT JOIN PERS ON (NIATT.PERSID = PERS.PERSID) WHERE NIATT.NIID = ' + pkValue(pk));
    Open_Query('NIEVATT',false,'SELECT * FROM NIEVATT WHERE 1=2');
    While Not A('NIATT').Eof do begin
      NIEvAttEvLength := 0;

      A('NIEVATT').UpdateSQL('SELECT NIEV.EVLENGTH FROM NIEVATT LEFT JOIN NIEV ON (NIEVATT.NIEVID = NIEV.NIEVID) WHERE NIEVATT.NIID = ' +pkValue(pk) + ' AND NIEVATT.PERSID = ' + pkvalue(GetField('NIATT','PERSID').AsString));
      While Not A('NIEVATT').Eof do begin
        NIEvAttEvLength := NIEvAttEvLength + GetField('NIEVATT','EVLENGTH').AsFloat;
        A('NIEVATT').Skip(1);
      end;

      If (NIEvAttEvLength > EvLength) then begin
        ErrorGrid.SetValue('FORMNAME',   'EVTAB');
        ErrorGrid.SetValue('FIELDNAME',  'NIEVBROWSE');
        ErrorGrid.SetValue('ERRORTYPE',  'C');
        ErrorGrid.SetValue('FORMDESCR',  'Classes');
        ErrorGrid.SetValue('FIELDDESCR', 'Classes Attendance');
        ErrorGrid.SetValue('ERRORDESCR', 'Total hours for classes ('+formatfloat('##0.0',NIEvAttEvLength)+') for '+tdbfield('NIATT','LNAME') +' exceeds the total length of the event:'+formatfloat('##0.0',EvLength));
        ErrorGrid.SetValue('ERRORACTION','Correct Attendance');
        ErrorCnt := ErrorCnt + 1;
      end;

      A('NIATT').Skip(1);
    end;
    CloseApollo('NIATT');
    CloseApollo('NIEVATT');
  end;
  ValidateHarfo := ErrorCnt;
end;

function TNIForm.ValidateLakeShore: Integer;
Var Row                   : Integer;
    NIAttCnt              : Integer;
    ErrorCnt              : Integer;
    NIEvCntVar            : Integer;
    NIEvEvLength          : Real;
    EvLength              : Real;
    EvLengthString        : String;
    NIPTypeCode           : String;
    StartEndString        : String;
    NIEvAttEvLength       : Real;
    NIEvAttEvLengthString : String;
begin
  NIPTypeCode             := SQLLookUp(NIPTypeIDField.Value,'NIPTYPEID','NIPTYPE','CODE');
  NIAttCnt                := SqlTableRecCount('SELECT COUNT(*) FROM NIATT WHERE NIID = ' + PK);
  EvLength                := StrToFloat(EvLengthField.Value);
  StartEndString          := FormatFloat('#0.00',((DateTimeEndField.Value - DateTimeStartField.Value) * 24));
  EvLengthString          := FormatFloat('#0.00',EvLength);

  ResetErrorGrid;

  If (NISTypeIDField.Value = '') then 
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NISTYPEID','C','General','Secondary Type','Secondary Type is required','Enter Secondary Type');

  If (DescrField.Value = '') then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DESCR','C','General','Description','Description is required','Enter Description');

  If AnyStrToFloat(EvLengthField.Value) = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'EVLENGTH');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Length');
    ErrorGrid.SetValue('ERRORDESCR', 'Length is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Length');
    ErrorCnt := ErrorCnt + 1;
  end;

  If DateTimeStartField.Value = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'DATETIMESTART');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Start Date / Time');
    ErrorGrid.SetValue('ERRORDESCR', 'Start Date / Time is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Start Date / Time');
    ErrorCnt := ErrorCnt + 1;
  end;

  If DateTimeEndField.Value = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'DATETIMEEND');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'End Date / Time');
    ErrorGrid.SetValue('ERRORDESCR', 'End Date / Time is required');
    ErrorGrid.SetValue('ERRORACTION','Enter End Date / Time');
    ErrorCnt := ErrorCnt + 1;
  end;

  If NIAttCnt = 0 then begin
    ErrorGrid.SetValue('FORMNAME',   'NIATT');
    ErrorGrid.SetValue('FIELDNAME',  'NIATT');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'Attendance');
    ErrorGrid.SetValue('FIELDDESCR', 'Attendance');
    ErrorGrid.SetValue('ERRORDESCR', 'Attendance is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Attendance');
    ErrorCnt := ErrorCnt + 1;
  end;

  If (LocationIDField.Value = '') and (LocMiscField.Value = '') then begin
    ErrorGrid.SetValue('FORMNAME',   'NIGEN');
    ErrorGrid.SetValue('FIELDNAME',  'LOCATIONID');
    ErrorGrid.SetValue('ERRORTYPE',  'C');
    ErrorGrid.SetValue('FORMDESCR',  'General');
    ErrorGrid.SetValue('FIELDDESCR', 'Location');
    ErrorGrid.SetValue('ERRORDESCR', 'Location is required');
    ErrorGrid.SetValue('ERRORACTION','Enter Location');
    ErrorCnt := ErrorCnt + 1;
  end;

  ValidateLakeShore := ErrorCnt;
end;

function TNIForm.ValidateB3580: Integer;
Var NIPTypeCode           : String;
begin
  NIPTypeCode := SQLLookUp(NIPTypeIDField.Value,'NIPTYPEID','NIPTYPE','CODE');

  ResetErrorGrid;

  If (NIPTypeCode = 'DT') then begin
    If (NIAgencyIDField.Value = '') then 
      TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NIAGENCYID','C','Agency','Agency','Agency is required','Enter the Agency');
    If (User2Field.Value = '') then
      TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NIUSER2ID','C','Location Code','Location Code','Location Code is required','Enter the Location Code');
    If (User4Field.Value = '') then
      TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NIUSER4ID','C','Method','Method','Method is required','Enter the Method');
  end;
  ValidateB3580 := ErrorCnt;
end;

function TNIForm.ValidateGeneral: Integer;
Var NIAttCnt              : Integer;
    ErrorCnt              : Integer;
    EvLength              : Real;
begin
  NIAttCnt                := SqlTableRecCount('SELECT COUNT(*) FROM NIATT WHERE NIID = ' + PK);
  EvLength                := StrToFloat(EvLengthField.Value);
  ErrorCnt                := 0;

  ResetErrorGrid;

  If (NISTypeIDField.Value = '') then 
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','NISTYPEID','C','General','Secondary Type','Secondary Type is required','Enter Secondary Type');
  If (DescrField.Value = '') then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DESCR','C','General','Description','Description is required','Enter Description');
  If AnyStrToFloat(EvLengthField.Value) = 0 then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','EVLENGTH','C','General','Length','Length is required','Enter Length');
  If DateTimeStartField.Value = 0 then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DATETIMESTART','C','General','Start Date / Time','Start Date/Time is required','Enter Start Date/Time');
  If DateTimeEndField.Value = 0 then
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIGEN','DATETIMEEND','C','General','End Date / Time','End Date/Time is required','Enter End Date/Time');
  If NIAttCnt = 0 then 
    TNIForm.LoadErrorGrid(ErrorGrid,ErrorCnt,'NIATT','NIATT','C','Attendance','Attendance','Attendance is required','Enter Attendance');

  ValidateGeneral := ErrorCnt;
end;


procedure TNIForm.PageRemButtonClick(Sender: TObject);
Var PageRemindID : String;
begin
  If DateTimeStartField.Value = 0 then
    ShowMessage('You must enter the start date')
  else begin
    Open_Query('PAGEREMIND',false,'SELECT PAGEREMINDID FROM PAGEREMIND WHERE TABLENAME = ' + AddExpr('NI') + ' AND TABLERECID = ' + PK + ' AND FIELDNAME = ' + AddExpr('DATETIMESTART'));
    If A('PAGEREMIND').RecordsExist then
      PageRemindID := GetField('PAGEREMIND','PAGEREMINDID').AsString
    else
      PageRemindID := '-1';
    CloseApollo('PAGEREMIND');
    RunAlpineForm(TPageRemindForm,PageRemindID,'PAGEREMIND',PageRemindNewRecord);

    PageRemBrowse.ExplicitWhereClause := ' WHERE PAGEREMIND.TABLENAME = ' + AddExpr('NI') + ' AND PAGEREMIND.TABLERECID = ' + pkValue(PK);
    PageRemBrowse.Setup('PAGEREMIND',TPageRemindForm,PageRemindNewRecord);
  end;
end;
                                                                                
function TNIForm.GetDateTimeRemindTime(DateTimeStart: TDateTime): TDateTime;
Var DateTimeRemind : TDateTime;
begin
  DateTimeRemind := DateTimeStart - (1/8);                           
  If (DateTimeRemind > Now) then
    GetDateTimeRemindTime := DateTimeRemind
  else
    GetDateTimeRemindTime := Now + (1/72);
end;

procedure TNIForm.PageRemindNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('TABLENAME').AsString        := 'NI';
  DataSet.FieldByname('TABLERECID').AsString       := PK;
  DataSet.FieldByname('FIELDNAME').AsString        := 'DATETIMESTART';
  DataSet.FieldByname('SUBJECT').AsString          := 'Event Reminder ' + DescrField.Value;
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  DataSet.FieldByname('DATETIMEREMIND').AsDateTime := GetDateTimeRemindTime(DateTimeStartField.Value);
  DataSet.FieldByname('NARR').AsString             := 'This is a reminder that you are scheduled to attend a ' + DescrField.Value + ' on ' + FormatDateTime('MM/DD/YYYY',DateTimeStartField.Value) + ' at ' + AlpineFormatDateTime('HH:NN',DateTimeStartField.Value) + '.';
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('FDID').AsString             := FdidField.Value;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
  DataSet.FieldByname('PAGEREMINDTYPEID').AsString := SQLLookUp(NIPTypeIDField.Value,'NIPTYPEID','NIPTYPE','PAGEREMINDTYPEID');
end; 

procedure TNIForm.ErrorGridClick(Sender: TObject);
begin
  inherited;
  ErrorTypeField.Caption   := IIf(ErrorGrid.GetValue('ERRORTYPE') = 'C','Critical Error: ','Warning: ') + ErrorGrid.GetValue('ERRORDESCR');
  ErrorActionField.Caption := 'Remedy: ' + ErrorGrid.GetValue('ERRORACTION');
end;

procedure TNiForm.UpdateApprovalFields(mAppstat: String; mAppDateTime: TDateTime; mAppPersId: String);
begin
  try
    Open_Query('NI',true,'SELECT * FROM NI WHERE NIID = ' + pk);
    GetTable('NI').Edit;
    GetField('NI','APPSTAT').AsString   := mAppStat;
    GetField('NI','APPDATE').AsDateTime := mAppDateTime;
    GetField('NI','APPPERSID').AsString := mAppPersid;
    GetTable('NI').Post;
  finally
    CloseApollo('NI');
  end;
end;

procedure TNIForm.EnableSave;
begin
  inherited;
  If FInEnableSave then
    exit;
  try
    FInEnableSave := True;
    If AppStatField.Checked then begin
      AppPersIDDescrField.Value := '';
      AppDateField.Value        := 0;
      AppStatField.Checked      := False;
      UpdateApprovalFields('',0,'');
      ValidateButton.Enabled      := True;
      ValidateButton.Caption      := 'Validate Event?';
    end;
  finally
    FInEnableSave := False;
  end;
end;

procedure TNIForm.DoBeforePost(Sender: TObject);
begin
  If (mFireID = '10700') then begin
    If DateTimeStartField.Modified and CheckLoudounIsCloseOut(FdidField.Value,DateTimeStartField.Value) and Not CheckSecVar('PERSBENEFITS') then begin
      ShowMessage('You cannot enter a date before the close out period');
      DateTimeStartField.Value := 0;
      DateTimeStartField.SetFocus;
    end;
  end;
end;

initialization
  RegisterIndividualReport(TNIRepForm,  'INDNIREP',  'Non Incident Event With Entry',  'NI','',False,1);
  RegisterIndividualReport(TNIRepNonForm,'INDNIREPNON','Non Incident Event Without Entry', 'NI','',False,1);
  RegisterIndividualReport(TNIEVRepForm,'INDNIEVREP','Training Report with Evolutions','NI','',False,1);
  RegisterIndividualReport(TNIEVRepForm,'INDNIEVREP','Training Report with Evolutions','NI','',False,1);
  RegisterIndividualReport(TNIPersRosterForm,'INDNIPERSROSTER','Roster Report',        'NI','',False,2);

end.   
