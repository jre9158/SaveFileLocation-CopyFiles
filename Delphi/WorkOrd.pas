unit WorkOrd;
 
interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  NormalBase,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  StdCtrls,
  ExtCtrls,
  AdvGlowButton,
  DB,
  AlpineGlowButton,
  AdvPanel,
  ALPINEDATETIME,
  AlpinePanel,
  AlpineMemo,
  AlpineBlockBrowse,
  AdvGroupBox,
  ComCtrls,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvObj,
  ImgList,
  AppLst,
  Blink,
  MySBox;

type
  TWorkOrdForm = class(TNormalBaseForm)
    ImageList16: TImageList;
    MyScrollBox1: TMyScrollBox;
    AlpinePanel5: TAlpinePanel;
    NarrField: TAlpineMemo;
    Panel1: TPanel;
    NarrButton: TAlpineGlowButton;
    FdidPanel: TPanel;
    Label20: TLabel;
    FdidField: TAlpineLookup;
    PageControl: TPageControl;
    GeneralTab: TTabSheet;
    AssignedToPanel: TAlpinePanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label3: TLabel;
    AssNarrField: TAlpineMemo;
    AssPersIDField: TAlpineLookup;
    WOAssTypeIDField: TAlpineLookup;
    AssDateField: TAlpineDateTime;
    AssNarrButton: TAlpineGlowButton;
    RolodexIDField: TAlpineLookup;
    AssDateButton: TAlpineGlowButton;
    AlpinePanel3: TAlpinePanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CloseNarrField: TAlpineMemo;
    ClosePersIDField: TAlpineLookup;
    WOStatusIDField: TAlpineLookup;
    CloseDateField: TAlpineDateTime;
    CloseNarrButton: TAlpineGlowButton;
    CloseDateButton: TAlpineGlowButton;
    WorkOrdLinkTab: TTabSheet;
    AlpinePanel2: TAlpinePanel;
    WorkOrdLinkBrowse: TAlpineTMSStringGrid;
    ServiceButtonPanel: TAdvPanel;
    ServiceNewButton: TAlpineGlowButton;
    ServiceDeleteButton: TAlpineGlowButton;
    ServiceEditButton: TAlpineGlowButton;
    PageRemTab: TTabSheet;
    PageRemBrowse: TAlpineBlockBrowse;
    WOImageTab: TTabSheet;
    PageTab: TTabSheet;
    PageQueueListBrowse: TAlpineBlockBrowse;
    AlpinePanel6: TAlpinePanel;
    DateTimePageField: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    CompCodeField: TLabel;
    UserNameField: TLabel;
    Label19: TLabel;
    PageQueueNarrField: TAlpineMemo;
    WorkOrdTab: TTabSheet;
    WorkOrdBrowse: TAlpineBlockBrowse;
    WorkOrdOpenButton: TAlpineGlowButton;
    RequestInfoPanel: TAlpinePanel;
    Label7: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    WorkOrderLabel: TLabel;
    RefNumLabel: TLabel;
    InvIDLabel: TLabel;
    WOSourceIDLabel: TLabel;
    InvLocIDLabel: TLabel;
    computernamelabel: TLabel;
    VendorNumLabel: TLabel;
    WOReqTypeIDField: TAlpineLookup;
    ReqDateField: TAlpineDateTime;
    ReqPersIDField: TAlpineLookup;
    ReqNarrField: TAlpineMemo;
    WorkOrdIDField: TAlpineEdit;
    WorkOrdNumField: TAlpineEdit;
    InvIDField: TAlpineLookup;
    ReqNarrButton: TAlpineGlowButton;
    WOSourceIDField: TAlpineLookup;
    InvLocIDField: TAlpineLookup;
    hydid: TAlpineEdit;
    persid: TAlpineEdit;
    ComputerNameField: TAlpineEdit;
    VendorNumField: TAlpineEdit;
    PageQueueIDField: TAlpineEdit;
    WorkOrdCntPanel: TPanel;
    WorkOrdCntField: TBlinkLabel;
    DescrField: TAlpineEdit;
    InvLocDescrField: TAlpineEdit;
    InfoEnablePanel: TPanel;
    TypePanel: TAlpinePanel;
    GENCheck: TRadioButton;
    HOSECheck: TRadioButton;
    SCBACheck: TRadioButton;
    TRUCKCheck: TRadioButton;
    STATIONCheck: TRadioButton;
    PERSCheck: TRadioButton;
    HYDCheck: TRadioButton;
    MISCCheck: TRadioButton;
    InvTypeField: TAlpineEdit;
    Panel2: TPanel;
    WorkOrdImage: TImage;
    InvPartCheck: TRadioButton;
    procedure ReqPersIDFieldEnter(Sender: TObject);
    procedure GENCheckClick(Sender: TObject);
    procedure WOReqTypeIDFieldEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WorkOrdLinkTabShow(Sender: TObject);
    procedure ServiceNewButtonClick(Sender: TObject);
    procedure ServiceEditButtonClick(Sender: TObject);
    procedure ServiceDeleteButtonClick(Sender: TObject);
    procedure WorkOrdLinkBrowseDblClick(Sender: TObject);
    procedure ReqNarrButtonClick(Sender: TObject);
    procedure AssNarrButtonClick(Sender: TObject);
    procedure CloseNarrButtonClick(Sender: TObject);
    procedure NarrButtonClick(Sender: TObject);
    procedure ShowName(Sender: TObject);
    procedure InvIDFieldSuccessfulValidate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AssDateButtonClick(Sender: TObject);
    procedure CloseDateButtonClick(Sender: TObject);
    procedure PageRemTabShow(Sender: TObject);
    procedure WOImageTabShow(Sender: TObject);
    procedure PageTabShow(Sender: TObject);
    procedure WorkOrdTabShow(Sender: TObject);
    procedure WorkOrdOpenButtonClick(Sender: TObject);
    procedure WOReqTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure WOAssTypeIDFieldEnter(Sender: TObject);
    procedure WOStatusIDFieldEnter(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure WOSourceIDFieldEnter(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PageControlEnter(Sender: TObject);
    procedure WorkOrdBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
  private
    { Private declarations }
    F                     : TBaseSubTabForm;
    procedure SetRadioBoxes;
    procedure InvServHistNewRecord(DataSet: TDataSet);
    procedure LoadInvIDField(mType: String);
    procedure ShowInvLocDescr;
    procedure CheckOpenWorkOrder;
    function CheckTypeIsSelected(): Boolean;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoAfterSetControls(Sender: TObject); override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    procedure DoBeforePost(Sender: TObject); override;
    procedure DoAfterSetViewOnly; override;
    procedure PageRemindPersNewRecord(DataSet: TDataSet);
    procedure WorkOrdNewRecord(DataSet: TDataSet);
    class procedure SpecialClick(Sender: TObject); override;
    class procedure CloseWorkOrd(Sender: TObject);
  end;

var
  WorkOrdForm: TWorkOrdForm;

implementation
uses GenFunc,
     WorkOrdRep,
     HydInspect,
     AlpineRepGen,
     AlpineBaseSummaryReport,
     CommonVar,
     Menus,
     SecSet,
     InvImage,
     WorkOrdHistRep,
     WorkOrdHydHistRep,
     WorkOrdHistNarrRep,
     SortGridView,
     InvServHist,
     FormFunc,
     CommonWorkOrd,
     PageRemind,
     CommonPage,
     CommonFunc;

{$R *.dfm}

procedure TWorkOrdForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly                          := Not (CheckSecVar('WOEDIT') or (CheckSecVar('WOADD') and InsertMode));
  NewButton.Enabled                 := CheckSecVar('WOEDIT');
  DeleteButton.Enabled              := CheckSecVar('WODEL');
  FindButton.Enabled                := CheckSecVar('WOVIEW');
  PageRemTab.TabVisible             := CheckModule('PAGEREM') and CheckSecVar('PAGEREMVIEW');
  FdidPanel.Visible                 := MultiFdid;
  ServiceNewButton.Enabled          := NewButton.Enabled;
  ServiceDeleteButton.Enabled       := DeleteButton.Enabled;
  ServiceEditButton.Enabled         := ServiceNewButton.Enabled;
  InvLocIDField.SelfReferencingTree := True;
  WOImageTab.TabVisible             := (SQLLookUp(mFireID,'FDID','IMAGESET','INV') = 'Y');
  VendorNumField.Visible            := Not (mFireID = '28008');
  VendorNumLabel.Visible            := Not (mFireID = '28008');

  LoadInvIDField(SqlLookUp(pk,'WORKORDID','WORKORD','INVTYPE'));
  if mFireID = '07130' then begin
    Height := 700;
  end;
  PageControl.ActivePage            := GeneralTab;
end;

procedure TWorkOrdForm.FormShow(Sender: TObject);
begin
  inherited;
  WorkOrdCntPanel.Visible := false;
  TypePanel.Enabled       := ( (InvTypeField.Value = '') and not ViewOnly ) or ChecksecVar('WOSETUP');
  EnableAllControls(TypePanel,TypePanel.Enabled);
  SaveButton.Enabled      := False;
  ReqNarrButton.Enabled   := Not ViewOnly;
  AssNarrButton.Enabled   := Not ViewOnly;
  CloseNarrButton.Enabled := Not ViewOnly;
  NarrButton.Enabled      := Not ViewOnly;

  If mFireID = '01309' then
    MISCCheck.Caption := 'RTP';

  If mFireID = '18084' then begin
    WorkOrderLabel.Caption := 'Reference #:';
    RefNumLabel.Caption    := 'W.O. #:';
  end;

  if mFireID = '07130' then begin
    AssignedToPanel.Visible := False;
    PageControl.Height      := 200;
  end;

  If (mFireID = '28008') and Not (InvIDField.Value = '') then
    InvIDField.Enabled := ChecksecVar('WOSETUP');
  If (mFireID = '28008') and Not (WOReqTypeIDField.Value = '') then
    WOReqTypeIDField.Enabled := ChecksecVar('WOSETUP');
  If (mFireID = '28008') and Not (WOSourceIDField.Value = '') then
    WOSourceIDField.Enabled := ChecksecVar('WOSETUP');

  PageTab.TabVisible       := (PageQueueIDField.Value <> '');
  Height                   := IMin(800,Round(Screen.Height * 0.91));

  GENCheck    .Enabled     := CheckModule('INV')  and Not ViewOnly;
  SCBACheck   .Enabled     := CheckModule('SCBA') and Not ViewOnly;
  TRUCKCheck  .Enabled     := CheckModule('APP')  and Not ViewOnly;
  HOSECheck   .Enabled     := CheckModule('HOSE') and Not ViewOnly;
  PERSCheck   .Enabled     := CheckModule('PERS') and Not ViewOnly;
  STATIONCheck.Enabled     := CheckModule('INV')  and Not ViewOnly;
  MISCCheck   .Enabled     :=                         Not ViewOnly;
  HYDCheck    .Enabled     := CheckModule('HYD')  and Not ViewOnly;
  InvPartCheck.Enabled     := CheckModule('INVPM')and Not ViewOnly;

  RequestInfoPanel.Enabled := CheckTypeIsSelected;
  InfoEnablePanel.Visible  := Not CheckTypeIsSelected;
end;

function TWorkOrdForm.CheckTypeIsSelected(): Boolean;
begin
  if GenCheck.Checked or SCBACheck.Checked or TruckCHeck.checked or HOSECheck.Checked or
     PERSCheck.Checked  or STATIONCheck.Checked  or MISCCheck.Checked  or HYDCheck.Checked  or InvPartCheck.Checked  then
    Result := True
  else
    Result := False;  
end;


procedure TWorkOrdForm.NarrButtonClick(Sender: TObject);
begin
  inherited;
//Spellcheck(NarrField);
end;

function IncrementWorkOrderNumber: String;
var WorkOrdTable : TApolloData;
begin
  result := '';
  try
    WorkOrdTable := open_query('SELECT MAX(WORKORDNUM) FROM WORKORD WHERE WORKORDNUM LIKE ' + AddExpr(GetYear(Date)+'%'));
    If trim(WorkOrdTable.fields[0].AsString) = '' then
      result := GetYear(Date) + '-000001'
    else
      result := substr(WorkOrdTable.fields[0].AsString,1,5)+ AddToCode(substr(WorkOrdTable.fields[0].AsString,6),1);
  finally
    WorkOrdTable.free;
  end;
end;

function IncrementWorkOrderNumber2: String;
var WorkOrd    : TApolloData;
    WorkOrdNum : Integer;
begin
  result := '';
  try
    workord    := open_query('SELECT MAX(WORKORDNUM) FROM WORKORD');
    WorkOrdNum := AnyStrToInt(substr(workord.fields[0].AsString,2,8)) + 1;
    result     := 'R' + padl(IntToStr(WorkOrdNum),8,'0');
  finally
    workord.free;
  end;
end;

class procedure TWorkOrdForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('DESCR').AsString        := ' ';
  DataSet.FieldByName('COMPUTERNAME').AsString := AlpineGetComputerName;
  SetDefaultWorkOrderValues(globalAdoConnection,Dataset,anystrtoint(GlobalPersID));
  If (mFireid = '12345') or (mFireid = '30064') or (mFireid = '52009') or (mFireid = '36027') then
    DataSet.FieldByName('WORKORDNUM').AsString := IncrementWorkOrderNumber;
  If (mFireid = '52109') then
    DataSet.FieldByName('WORKORDNUM').AsString := IncrementWorkOrderNumber2;
  If mfireID = '52051' then
    DataSet.FieldByName('WORKORDNUM').AsString := ' ';
  If mfireID = '23239' then
    DataSet.FieldByName('WOSTATUSID').AsString := '3';
  If mfireID = '35009' then
    DataSet.FieldByName('WOSTATUSID').AsString := '3';

  If MultiFdid and (secFDID <> '') then begin
    DataSet.FieldByName('FDID').AsString := secFDID;
  end;
end;

procedure TWorkOrdForm.PageRemTabShow(Sender: TObject);
begin
  inherited;
  PageRemBrowse.ExplicitWhereClause := ' WHERE PAGEREMIND.TABLENAME = ' + AddExpr('WO') + ' AND PAGEREMIND.TABLERECID = ' + pkValue(PK);
  PageRemBrowse.Setup('PAGEREMIND',TPageRemindForm,PageRemindPersNewRecord);
end;

procedure TWorkOrdForm.PageTabShow(Sender: TObject);
begin
  inherited;
  Open_Query('GETPAGEQUEUE',false,'SELECT * FROM PAGEQUEUE WHERE PAGEQUEUEID = ' + pkvalue(PageQueueIDField.Value));
  DateTimePageField.Caption := FormatDateTime('MM/DD/YYYY  HH:NN',GetField('GETPAGEQUEUE','DATETIMEENT').AsDateTime);
  PageQueueNarrField.Text   := GetField('GETPAGEQUEUE','NARR').AsString;
  CompCodeField.Caption     := GetField('GETPAGEQUEUE','COMPCODE').AsString;
  UserNameField.Caption     := SqlLookup(GetField('GETPAGEQUEUE','SECID').AsString,'SECID','SEC','USERNAME');
  CloseApollo('GETPAGEQUEUE');

  PageQueueListBrowse.ExplicitWhereClause := ' WHERE PAGEQUEUEID = ' + pkvalue(PageQueueIDField.Value);
  PageQueueListBrowse.Setup('PAGEQUEUELIST');
end;

procedure TWorkOrdForm.PageControlEnter(Sender: TObject);
begin
  inherited;
//added this to fix the bug where if you enter in a work order and then upload a picture without saving, it was clearing the work order
//SaveButton.Click;
end;

procedure TWorkOrdForm.PageRemindPersNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('TABLENAME').AsString        := 'WO';
  DataSet.FieldByname('TABLERECID').AsString       := pk;
  DataSet.FieldByname('FIELDNAME').AsString        := '';
  DataSet.FieldByname('SUBJECT').AsString          := 'Outstanding work order entered on ' + FormatDateTime('MM/DD/YYYY',ReqDateField.Value);
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  If (mFireID = '08006') then
    DataSet.FieldByname('DATETIMEREMIND').AsDateTime := Now + ((1/6)/25)
  else if (mFireID = '30052') then
    DataSet.FieldByname('DATETIMEREMIND').AsDateTime := ReqDateField.Value + 1
  else
    DataSet.FieldByname('DATETIMEREMIND').AsDateTime := ReqDateField.Value + 30;
  DataSet.FieldByname('CALENDARICONID').AsString   := '31';
  DataSet.FieldByname('NARR').AsString             := 'Please be advised that work order ' + pk + ' was entered on ' + FormatDateTime('MM/DD/YYYY',ReqDateField.Value) + ' and needs your attention';
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
  DataSet.FieldByname('FDID').AsString             := FdidField.Value;
end;

procedure TWorkOrdForm.ReqNarrButtonClick(Sender: TObject);
begin
  inherited;
  Spellcheck(ReqNarrField);
end;

procedure TWorkOrdForm.ReqPersIDFieldEnter(Sender: TObject);
begin
  inherited;
  If (mfireID = '52043') then
    (sender as TAlpineLookup).SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS ORDER BY LNAME, FNAME'
  else
    (sender as TAlpineLookup).SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND PERS.ATTEND = ' + AddExpr('Y') + ' ORDER BY PERS.LNAME, PERS.FNAME';
end;

procedure TWorkOrdForm.GENCheckClick(Sender: TObject);
begin
  inherited;
  InfoEnablePanel.Visible  := False;
  RequestInfoPanel.Enabled := True;
  If Sender = GENCheck then
    InvTypeField.Value := 'GEN'
  else if Sender = HoseCheck then
    InvTypeField.Value := 'HOSE'
  else if Sender = ScbaCheck then
    InvTypeField.Value := 'SCBA'
  else if Sender = TruckCheck then
    InvTypeField.Value := 'TRUCK'
  else if Sender = StationCheck then
    InvTypeField.Value := 'STATION'
  else if Sender = PersCheck then
    InvTypeField.Value := 'PERS'
  else if Sender = HydCheck then
    InvTypeField.Value := 'HYD'
  else if Sender = InvPartCheck then
    InvTypeField.Value := 'INVPART'
  else if Sender = MISCCheck then
    InvTypeField.Value := 'MISC';
  SetRadioBoxes;
  SaveButton.Enabled := true;
end;

procedure TWorkOrdForm.WOAssTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  WOAssTypeIDField.LookupFormWidth := 320;
  WOAssTypeIDField.SQLExpr         := 'SELECT * FROM WOASSTYPE WHERE ' + GetFdidSQL('WOASSTYPE.FDID') + ' ORDER BY CODE';
end;

procedure TWorkOrdForm.WOImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInvImageForm,WOImageTab);
end;

procedure TWorkOrdForm.WOReqTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  WOReqTypeIDField.LookupFormWidth := 320;
  WOReqTypeIDField.SQLExpr := 'SELECT * FROM WOREQTYPE ' +
                              'WHERE ' + 
                              '(INVTYPE = ' + AddExpr('') + ' OR INVTYPE IS NULL OR INVTYPE LIKE ' + AddExpr('%' + InvTypeField.Value + '%') + ') ' + ' AND ' +
                              GetFdidSQL('WOREQTYPE.FDID') + ' ' +
                              'ORDER BY CODE';
end;

procedure TWorkOrdForm.WOReqTypeIDFieldSuccessfulValidate(Sender: TObject);
Var AssDate : Boolean;
begin
  inherited;
  AssDate := false;
  Open_Query('WOREQTYPE',false,'SELECT * FROM WOREQTYPE WHERE WOREQTYPEID = ' + pkValue(WOReqTypeIDField.Value));
  If (GetField('WOREQTYPE','WOASSTYPEID').AsInteger > 0) and (WOAssTypeIDField.Value = '') then begin
    WOAssTypeIDField.Value := GetField('WOREQTYPE','WOASSTYPEID').AsString;
    AssDate              := true;
  end;
  If (GetField('WOREQTYPE','ASSPERSID').AsInteger > 0) and (AssPersIDField.Value = '') then begin
    AssPersIDField.Value := GetField('WOREQTYPE','ASSPERSID').AsString;
    AssDate              := true;
  end;
  If (GetField('WOREQTYPE','ROLODEXID').AsInteger > 0) and (RolodexIDField.Value = '') then begin
    RolodexIDField.Value := GetField('WOREQTYPE','ROLODEXID').AsString;
    AssDate              := true;
  end;
  If AssDate then
    AssDateField.Value := Now;
  CloseApollo('WOREQTYPE');
end;

procedure TWorkOrdForm.SetRadioBoxes;
begin
    InvIDLabel.Caption     := '';
  InvLocIDField.Visible  := false;
  InvLocIDLabel.Visible  := false;
  InvIDField.Visible     := false;

  If InvTypeField.Value = 'HYD' then begin
    HydCheck.Checked       := True;
  end else if InvTypeField.Value = 'PERS' then begin
    PersCheck.Checked       := True;
  end else if (InvTypeField.Value = 'GEN') then begin
    GenCheck.Checked       := True;
    if mfireid = '40070' then InvLocIDField.Visible  := True;
    if mfireid = '40070' then InvLocIDLabel.Visible  := True;
  end else if (InvTypeField.Value = 'HOSE') then begin
    HoseCheck.Checked      := True;
    if mfireid = '40070' then InvLocIDField.Visible  := True;
    if mfireid = '40070' then InvLocIDLabel.Visible  := True;
  end else if (InvTypeField.Value = 'SCBA') then begin
    SCBACheck.Checked      := True;
    if mfireid = '40070' then InvLocIDField.Visible  := True;
    if mfireid = '40070' then InvLocIDLabel.Visible  := True;
  end else if (InvTypeField.Value = 'TRUCK') then begin
    TruckCheck.Checked     := True;
    if mfireid = '40070' then InvLocIDField.Visible  := True;
    if mfireid = '40070' then InvLocIDLabel.Visible  := True;
  end else if (InvTypeField.Value = 'STATION') then begin
    StationCheck.Checked   := True;
    InvLocIDField.Visible  := true;
    InvLocIDLabel.Visible  := true;
  end;

  PersCheck.Checked  := (at('PERS',InvTypeField.Value) > 0);
  MiscCheck.Checked  := (at('MISC',InvTypeField.Value) > 0);
  if mFireID = '52097' then
    InvIDField.Visible := Not (InvTypeField.Value = '')
  else
    InvIDField.Visible := Not (InvTypeField.Value = '') and Not (InvTypeField.Value = 'MISC');
  LoadInvIDField(InvTypeField.Value);
end;

procedure TWorkOrdForm.LoadInvIDField(mType: String);
begin
  InvLocDescrField.Visible:= False;
  InvLocDescrField.Enabled:= False;

  InvIDField.DisplayDescription := True;

  If mType = 'TRUCK' then begin
    WorkOrdImage.Picture.Icon := GetGlowImageIcon('APPARATUS32');

    If mFireID = '64032' then begin
      InvIDField.LookUpCode   := 'INVNUMUNITNUM';
      InvIDField.DisplayField := 'INVNUM';
      InvIDField.SQLExpr      := 'SELECT INVID, INVNUM, UNITNUM, TYPE, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('TRUCK') + ' OR INVFUEL = ' + AddExpr('Y') + ' ORDER BY INVNUM';
      InvIDLabel.Caption      := 'Apparatus #';
    end else if (mFireID = 'CIHVA') or (mFireID = '52009') or (mFireID = '07130') or (mFireID ='30029') then begin
      InvIDField.SQLExpr      := 'SELECT INVID, INVNUM, UNITNUM, TYPE, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY INVNUM';
      InvIDField.LookUpCode   := 'UNITNUMINVNUM';
      InvIDField.DisplayField := 'UNITNUM';
      InvIDLabel.Caption      := 'Apparatus #';
    end else begin
      InvIDField.LookUpCode   := 'UNITNUMINVNUM';
      InvIDField.DisplayField := 'UNITNUM';
      InvIDField.SQLExpr      := 'SELECT INVID, INVNUM, UNITNUM, TYPE, INVLOCFULLDESCR, DESCR FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' ORDER BY UNITNUM';
      InvIDLabel.Caption      := 'Unit Number';
    end;
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDField.DataField            := 'INVID';
    
    ShowInvLocDescr;

  end else if mType = 'GEN' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('INVENTORY32');
    InvIDField.LookUpCode           := 'INVMAKEMOD';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('GEN') + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Inventory Number';
    InvIDField.DataField            := 'INVID';
    ShowInvLocDescr;

  end else if mType = 'INVPART' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('INVPART32');
    InvIDField.LookUpCode           := 'INVPART';
    InvIDField.DisplayField         := 'SERNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL, SERNUM FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('INVPART') + ' ORDER BY SERNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Part Number';
    InvIDField.DataField            := 'INVID';
    ShowInvLocDescr;

  end else if mType = 'HOSE' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('HOSE32');
    InvIDField.LookUpCode           := 'INVMAKEMOD';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('HOSE') + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Hose Number';
    InvIDField.DataField            := 'INVID';

    ShowInvLocDescr;

  end else if mType = 'SCBA' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('SCBA32');
    InvIDField.LookUpCode           := 'INVMAKEMOD';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('SCBA') + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'SCBA Number';
    InvIDField.DataField            := 'INVID';

    ShowInvLocDescr;

  end else if mType = 'STATION' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('STATION32');
    InvIDField.LookUpCode           := 'INVMAKEMOD';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('STATION') + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Station Number';
    InvIDField.DataField            := 'INVID';

  end else if mType = 'PERS' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('PERSONNEL32');
    InvIDField.DataField            := 'PERSID';
    InvIDField.LookUpCode           := 'PERS';
    InvIDField.DisplayField         := 'PERSCODE';
    InvIDField.SQLExpr              := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'PERSID';
    InvIDField.ReferencingTable     := 'PERS';
    InvIDField.ReturnField          := 'LNAME';
    InvIDLabel.Caption              := 'Staff Number';
    if anystrtoint(Persid.Value)>0 then
      InvIDField.Value                := Persid.Value
    else
      InvIDField.Value                := '';

  end else if mType = 'HYD' then begin
    WorkOrdImage.Picture.Icon       := GetGlowImageIcon('HYDRANT32');
    InvIDField.LookUpCode           := 'HYD';
    InvIDField.DisplayField         := 'HYDCODE';
    InvIDField.SQLExpr              := 'SELECT HYDID, STRNUM, STREET, HYDCODE, LOCATION FROM HYD WHERE ' + GetFdidSQL('HYD.FDID') + ' ORDER BY HYDCODE';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'HYDID';
    InvIDField.ReferencingTable     := 'HYD';
    InvIDField.ReturnField          := 'LOCATION';
    InvIDLabel.Caption              := 'Hydrant Number';
    InvIDField.DataField            := 'HYDID';
    InvIDField.Value                := HydID.Value;
    If AnyStrToInt(Hydid.Value) > 0 then
      InvIDField.Value                := Hydid.Value
    else
      InvIDField.Value                := '';
  end else if mType = 'MISC' then begin
    WorkOrdImage.Picture.Icon := GetGlowImageIcon('REDNMX32');
    If mFireID = '52097' then begin
      WorkOrdImage.Picture.Icon       := GetGlowImageIcon('REDNMX32');
      InvIDField.LookUpCode           := 'UNITNUMINVNUM';
      InvIDField.DisplayField         := 'UNITNUM';
      InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, UNITNUM, TYPE, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('TRUCK') + ' ORDER BY UNITNUM';
      InvIDLabel.Caption              := 'Unit Number';
      InvIDField.DataFieldIsCharacter := false;
      InvIDField.ReferencingField     := 'INVID';
      InvIDField.ReferencingTable     := 'INV';
      InvIDField.ReturnField          := 'DESCR';
      InvIDField.DataField            := 'INVID';
    end;
  end else
    WorkOrdImage.Picture.Icon         := GetGlowImageIcon('REDNMX32');

end;

procedure TWorkOrdForm.ShowInvLocDescr;
begin
  InvLocIDLabel.Visible           := true;
  InvLocDescrField.Visible        := true;
  InvLocDescrField.Enabled        := false;
  InvLocDescrField.Left           := InvLocIDField.left;
  InvLocDescrField.Top            := InvLocIDField.Top;
  InvLocDescrField.Text           := SqlLookup(InvIDField.Value,'INVID','VWINV','INVLOCFULLDESCR');
end;

procedure TWorkOrdForm.ShowName(Sender: TObject);
begin
  inherited;
  SetNameForLookup(TAlpineLookup(Sender));
end;

procedure TWorkOrdForm.WorkOrdTabShow(Sender: TObject);
Var InvID : String;
begin
  inherited;
  InvID                                := InvIDField.Value;
  WorkOrdOpenButton.Parent             := WorkOrdBrowse.FButtonPanel;
  WorkOrdOpenButton.Align              := alleft;
  WorkOrdBrowse.FDeleteButton.Position := bpmiddle;
  WorkOrdBrowse.FGrid.WordWrap         := true;
  WorkOrdBrowse.ExplicitWhereClause    := ' WHERE INV.INVID = ' + pkValue(InvID) + IIf(WorkOrdOpenButton.ImageName = 'GLOWBUTTONNONE',' AND WOSTATUS.OPENWO = ' + AddExpr('Y'),'');
  WorkOrdBrowse.Setup('WORKORDINV','INVID',InvID,TWorkOrdForm,WorkOrdNewRecord);
  WorkOrdBrowse.DefaultRowHeight       := 36;
  WorkOrdBrowse.FixedRowHeight         := 22;
end;

procedure TWorkOrdForm.WOSourceIDFieldEnter(Sender: TObject);
begin
  inherited;
  WOSourceIDField.LookupFormWidth := 320;
  WOSourceIDField.SQLExpr         := 'SELECT * FROM WOSOURCE WHERE ' + GetFdidSQL('WOSOURCE.FDID') + ' ORDER BY CODE';
end;

procedure TWorkOrdForm.WOStatusIDFieldEnter(Sender: TObject);
begin
  inherited;
  WOStatusIDField.LookupFormWidth := 320;
  WOStatusIDField.SQLExpr         := 'SELECT * FROM WOSTATUS WHERE ' + GetFdidSQL('WOSTATUS.FDID') + ' ORDER BY CODE';
end;

procedure TWorkOrdForm.WorkOrdOpenButtonClick(Sender: TObject);
begin
  inherited;
  If WorkOrdOpenButton.ImageName = 'GLOWBUTTONNONE' then begin
    WorkOrdOpenButton.ImageName := 'GLOWBUTTONCHECKED';
  end else begin
    WorkOrdOpenButton.ImageName := 'GLOWBUTTONNONE';
  end;
  WorkOrdTabShow(self);
end;

procedure TWorkOrdForm.WorkOrdNewRecord(DataSet: TDataSet);
begin
end;


procedure TWorkOrdForm.DoAfterSetControls(Sender: TObject);
begin
  SetRadioBoxes;
  WOAssTypeIDField.Enabled    := CheckSecVar('WOCLOSE');
  AssDateField.Enabled        := CheckSecVar('WOCLOSE');
  AssDateButton.Enabled       := CheckSecVar('WOCLOSE');
  RolodexIDField.Enabled      := CheckSecVar('WOCLOSE');
  AssPersIDField.Enabled      := CheckSecVar('WOCLOSE');
  AssNarrField.Enabled        := CheckSecVar('WOCLOSE');
  AssNarrField.ReadOnly       := Not CheckSecVar('WOCLOSE');
  AssNarrButton.Enabled       := CheckSecVar('WOCLOSE');
  WOStatusIDField.Enabled     := CheckSecVar('WOCLOSE');
  CloseDateField.Enabled      := CheckSecVar('WOCLOSE');
  CloseDateButton.Enabled     := CheckSecVar('WOCLOSE');
  ClosePersIDField.Enabled    := CheckSecVar('WOCLOSE');
  CloseNarrField.Enabled      := CheckSecVar('WOCLOSE');
  CloseNarrField.ReadOnly     := Not CheckSecVar('WOCLOSE');
  CloseNarrButton.Enabled     := CheckSecVar('WOCLOSE');
  ServiceDeleteButton.Enabled := CheckSecVar('WOCLOSE');
  ServiceEditButton.Enabled   := CheckSecVar('WOCLOSE');
  ServiceNewButton.Enabled    := CheckSecVar('WOCLOSE');
  NarrField.Enabled           := CheckSecVar('WOCLOSE');
  NarrField.ReadOnly          := Not CheckSecVar('WOCLOSE');
  NarrButton.Enabled          := CheckSecVar('WOCLOSE');
  ServiceButtonPanel.Visible  := CheckSecVar('WOCLOSE');

  WorkOrdIDField.Enabled      := false;
  ComputerNameField.Visible   := ComputerNameField.Value<>'';
  ComputerNameLabel.Visible   := ComputerNameField.Visible;
end;

procedure TWorkOrdForm.DoAfterSetViewOnly;
begin
  If (mfireID = '52098') or (mFireID = '30064') then
    WorkOrdNumField.Enabled := false;
  ComputerNameField.Enabled := False;
end;

procedure TWorkOrdForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure TWorkOrdForm.FormActivate(Sender: TObject);
begin
  inherited;
  If mFireID = '52073' then begin
    WindowState := wsMaximized;
    top         := 0;
    left        := 0;
  end;
end;

procedure TWorkOrdForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  If InsertMode and bRecordPosted then
    SendWorkOrderpage(GlobalAdoConnection,pk,WOReqTypeIDField.Value,InvIDField.AlpineEdit.Text,DescrField.Value,ReqNarrField.Text,False);
end;

procedure TWorkOrdForm.WorkOrdLinkTabShow(Sender: TObject);
begin
  inherited;
  Open_Query('WORKORDLINK',false,'SELECT WORKORDLINK.DATETIMECREATE, WORKORDLINK.INVSERVHISTID, INVSERVHIST.DATEDONE, ' +
                                 'INVSERVTYPE.DESCR INVSERVTYPEDESCR, INVSERVHIST.DESCR INVSERVHISTDESCR, PERS.PERSCODE, PERS.LNAME, PERS.FNAME ' + 
                                 'FROM WORKORDLINK ' +
                                 'LEFT JOIN INVSERVHIST ON (WORKORDLINK.INVSERVHISTID = INVSERVHIST.INVSERVHISTID) ' +
                                 'LEFT JOIN INVSERVTYPE ON (INVSERVHIST.INVSERVTYPEID = INVSERVTYPE.INVSERVTYPEID) ' +
                                 'LEFT JOIN PERS        ON (INVSERVHIST.PERSID        = PERS.PERSID) ' +
                                 'WHERE WORKORDLINK.WORKORDID = ' + PK);
  WorkOrdLinkBrowse.Clear;
  WorkOrdLinkBrowse.ColCount       := 0;
  WorkOrdLinkBrowse.RowCount       := 0;
  WorkOrdLinkBrowse.ClearColumns;
  WorkOrdLinkBrowse.FixedRowAlways := true;
  WorkOrdLinkBrowse.RowCount       := WorkOrdLinkBrowse.FixedRows;

  WorkOrdLinkBrowse.SetColumn('INVSERVHISTID',   '',             000);
  WorkOrdLinkBrowse.SetColumn('DATETIMECREATE',  'Created',      080);
  WorkOrdLinkBrowse.SetColumn('DATEDONE',        'Done',         080);
  WorkOrdLinkBrowse.SetColumn('INVSERVTYPEDESCR','Service Type', 200);
  WorkOrdLinkBrowse.SetColumn('INVSERVHISTDESCR','Description',  225);
  WorkOrdLinkBrowse.SetColumn('PERS',            'Staff',        500);

  While Not A('WORKORDLINK').Eof do begin
    WorkOrdLinkBrowse.SetValue('INVSERVHISTID',   Getfield('WORKORDLINK','INVSERVHISTID').AsString);
    WorkOrdLinkBrowse.SetValue('DATETIMECREATE',  AlpineFormatDateTime('MM/DD/YYYY',Getfield('WORKORDLINK','DATETIMECREATE').AsDateTime));
    WorkOrdLinkBrowse.SetValue('DATEDONE',        AlpineFormatDateTime('MM/DD/YYYY',Getfield('WORKORDLINK','DATEDONE').AsDateTime));
    WorkOrdLinkBrowse.SetValue('INVSERVTYPEDESCR',Getfield('WORKORDLINK','INVSERVTYPEDESCR').AsString);
    WorkOrdLinkBrowse.SetValue('INVSERVHISTDESCR',Getfield('WORKORDLINK','INVSERVHISTDESCR').AsString);
    WorkOrdLinkBrowse.SetValue('PERS',            tdbfield('WORKORDLINK','PERSCODE') + '-' + tdbfield('WORKORDLINK','LNAME') + ', ' + tdbfield('WORKORDLINK','FNAME'));
    A('WORKORDLINK').Skip(1);
  end;
  CloseApollo('WORKORDLINK');
end;

function GetInvServForm(InvType: String): String;
begin
  If InvType = 'GEN' then
    GetInvServForm := 'INVSERV'
  else if InvType = 'HOSE' then
    GetInvServForm := 'HOSESERV'
  else if InvType = 'SCBA' then
    GetInvServForm := 'SCBASERV'
  else if InvType = 'TRUCK' then
    GetInvServForm := 'APPSERV'
  else if InvType = 'STATION' then
    GetInvServForm := 'STASERV';
end;

procedure TWorkOrdForm.ServiceNewButtonClick(Sender: TObject);
Var InvServHistID : String;
begin
  inherited;
  Open_Query('INVSERVHIST',true,'SELECT * FROM INVSERVHIST WHERE 1=2');
  A('INVSERVHIST').Append;
  GetField('INVSERVHIST','INVID').AsString       := InvIDField.Value;
  GetField('INVSERVHIST','DATEDONE').AsDateTime  := Now;
  GetField('INVSERVHIST','INVSERVFORM').AsString := GetInvServForm(InvTypeField.Value);
  GetField('INVSERVHIST','FDID').AsString        := FdidField.Value;
  A('INVSERVHIST').Post;
  InvServHistID := A('INVSERVHIST').NewPK;
  CloseApollo('INVSERVHIST');

  Open_Query('WORKORDLINK',true,'SELECT * FROM WORKORDLINK WHERE 1=2');
  A('WORKORDLINK').Append;
  GetField('WORKORDLINK','WORKORDID').AsString        := pk;
  GetField('WORKORDLINK','INVSERVHISTID').AsString    := InvServHistID;
  GetField('WORKORDLINK','DATETIMECREATE').AsDateTime := Now;
  A('WORKORDLINK').Post;
  CloseApollo('WORKORDLINK');

  RunAlpineFormShowModal(TInvServHistForm,InvServHistID,'INVSERVHIST',InvServHistNewRecord);
  WorkOrdLinkTabShow(self);
end;


procedure TWorkOrdForm.InvIDFieldSuccessfulValidate(Sender: TObject);
var mInvLocID: String;
begin
  inherited;
  If StationCheck.Checked  then begin
    If InvLocIDField.Value = '' then begin
      mInvLocID := SqlLookup(InvIDField.Value,'INVID','INV','APPINVLOCID');
      If mInvLocID <> '' then
        InvLocIDField.Value := mInvLocid;
    end;
  end else if mfireid = '40070' then begin
    If InvLocIDField.Value = '' then begin
      mInvLocID := SqlLookup(InvIDField.Value,'INVID','INV','INVLOCID');
      If mInvLocID <> '' then
        InvLocIDField.Value := mInvLocid;
    end;
  end;
  LoadInvIDField(InvTypeField.Value);

  CheckOpenWorkOrder;
end;

procedure TWorkOrdForm.CheckOpenWorkOrder;
Var WorkOrdCnt : Integer;
    SQLVar     : String;
begin
  If TruckCheck.Checked then begin
    SQLVar                  := 'SELECT COUNT(*) FROM WORKORD ' +
                               'LEFT JOIN WOSTATUS ON (WORKORD.WOSTATUSID = WOSTATUS.WOSTATUSID) ' +
                               'WHERE WORKORD.INVID = ' + pkvalue(InvIDField.Value) + ' AND ' +
                               'WORKORD.REQDATE >= ' + FormatDateTimeForSql(Now-2) + ' AND ' +
                               'WOSTATUS.OPENWO = ' + AddExpr('Y');
    WorkOrdCnt              := SqlTableRecCount(SQLVar);
    WorkOrdCntPanel.Visible := (WorkOrdCnt > 0);
    WorkOrdCntField.Caption := 'There are ' + IntToStr(WorkOrdCnt) + ' Work Order(s) in the last 48 hours';
  end;
end;

procedure TWorkOrdForm.InvServHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('DESCR').AsString := ' ';
end;

procedure TWorkOrdForm.ServiceEditButtonClick(Sender: TObject);
Var iId: String;
begin
  inherited;
  if HYDCheck.Checked then begin
    iId := WorkOrdLinkBrowse.GetValue('HYDINSPID',WorkOrdLinkBrowse.Row);  
    RunAlpineFormShowModal(THydInspectForm,iId,'HYDINSPECT',THydInspectForm.NewRecord);
  end else begin
    iId  := WorkOrdLinkBrowse.GetValue('INVSERVHISTID',WorkOrdLinkBrowse.Row);
    RunAlpineFormShowModal(TInvServHistForm,iId,'INVSERVHIST',InvServHistNewRecord)
  end;
  WorkOrdLinkTabShow(self);
end;

procedure TWorkOrdForm.ServiceDeleteButtonClick(Sender: TObject);
Var InvServHistID : String;
begin
  inherited;
  if WorkOrdLinkBrowse.Row >= 1 then begin
    If BooleanMessageDlg('Delete service record?') then begin
      InvServHistID := WorkOrdLinkBrowse.GetValue('INVSERVHISTID',WorkOrdLinkBrowse.Row);
      if (StrToInt(InvServHistID) > 0) then begin
        RunSql('DELETE FROM INVSERVHIST WHERE INVSERVHISTID =  ' + pkValue(InvServHistID));
      end;
      WorkOrdLinkTabShow(self);
    end;
  end else
    ShowMessage('No Service Records to Delete!');
end;

procedure TWorkOrdForm.WorkOrdBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
begin
  inherited;
  If FieldName = 'WORKORDIDALIAS' then
    Value := tdbfield(AlpineQuery,'WORKORDID') + #10#13 + tdbfield(AlpineQuery,'WORKORDNUM')
  else if FieldName = 'REQPERS_REQPERSLNAME' then
    Value := tdbfield(AlpineQuery,'REQPERS_REQPERSLNAME') + IIf(tdbfield(AlpineQuery,'REQPERS_REQPERSLNAME') = '','',', ') + tdbfield(AlpineQuery,'REQPERS_REQPERSFNAME')
  else if FieldName = 'ASSPERS_ASSPERSLNAME' then
    Value := tdbfield(AlpineQuery,'ASSPERS_ASSPERSLNAME') + IIf(tdbfield(AlpineQuery,'ASSPERS_ASSPERSLNAME') = '','',', ') + tdbfield(AlpineQuery,'ASSPERS_ASSPERSFNAME');
end;

procedure TWorkOrdForm.WorkOrdLinkBrowseDblClick(Sender: TObject);
begin
  inherited;
  If CheckSecVar('WOCLOSE') then 
    ServiceEditButtonClick(self);
end;

function TWorkOrdForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('WODEL');
end;

procedure TWorkOrdForm.CloseDateButtonClick(Sender: TObject);
begin
  inherited;
  CloseDateField.Value := Now;
  // Doug is working to make this a new feature. in dev now
 { if MFireID = '72014' then
    SendWorkOrderClosepage(GlobalAdoConnection,pk,WOReqTypeIDField.Value,DescrField.Value,ReqNarrField.Text,ReqPersIDField.Value,ClosePersIDField.Value,False); }
end;

procedure TWorkOrdForm.CloseNarrButtonClick(Sender: TObject);
begin
  inherited;
  Spellcheck(CloseNarrField);
end;

procedure TWorkOrdForm.AssDateButtonClick(Sender: TObject);
begin
  inherited;
  AssDateField.Value := Now;
end;

procedure TWorkOrdForm.AssNarrButtonClick(Sender: TObject);
begin
  inherited;
  Spellcheck(AssNarrField);
end;

function TWorkOrdForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('WOADD');
end;

procedure TWorkOrdForm.DoBeforePost(Sender: TObject);
begin
  If ( (mFireID = '64032') or (mFireID = '12345') or (mFireId = '30030') ) and (InvTypeField.Value = '') then begin
    showmessage('You must select a primary type');
    abort;
  end;
  If (mFireID = '30064') and (ReqPersIDField.Value = '') then begin
    showmessage('You must be specify the "Requested By" field.');
    abort;
  end else if (WOReqTypeIDField.Value = '') and not (mFireID = '30002') then begin
    showmessage('You must select a Request Type');
    abort;
  end else
    inherited;
end;

class procedure TWorkOrdForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    If CheckSecVar('WOEDIT') and ((mFireID = '12345') or (mFireID = '28008'))   then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := '-';
      TNewView(Sender).PopupMenu.Items.Add(m);
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Close Work Order';
      m.Onclick := CloseWorkOrd;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;
  end;
end;

class procedure TWorkOrdForm.CloseWorkOrd(Sender: TObject);
var WorkOrdID : String;
    NewView   : TNewView;
begin
  inherited;
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView   := TNewView(TMenuItem(Sender).Owner);
    WorkOrdID := NewView.ViewGrid.GetValue('WORKORDID')
  end;

  If BooleanMessageDlg('Close Out Work Order?') then begin
    Open_Query('GETWORKORD',true,'SELECT * FROM WORKORD WHERE WORKORDID = ' + pkValue(WorkOrdID));
    If A('GETWORKORD').RecordsExist then begin
      GetTable('GETWORKORD').Edit;
      GetField('GETWORKORD','WOSTATUSID').AsString  := '4';
      GetField('GETWORKORD','CLOSEDATE').AsDateTime := Now;
      GetField('GETWORKORD','CLOSEPERSID').AsString := GlobalPersID;
      GetTable('GETWORKORD').Post;
    end;
    CloseApollo('GETWORKORD');

    If (NewView <> nil) then begin
      NewView.RefreshGrid(WorkOrdID,'','',True);
    end;
  end;                                                           
end;

initialization
  RegisterReport(TWorkOrdHistRepForm,    'WORKORDHISTREP',    'Work Order History',           'INV','WORKORDCOND','Alpine Software Corporation',['INVPANEL','DATEPANEL','ASSIGNPANEL','STATUSPANEL']);
  RegisterReport(TWorkOrdRepForm,        'WORKORDREP',        'Work Orders',                  'INV','WORKORDCOND','Alpine Software Corporation',['INVPANEL','DATEPANEL','ASSIGNPANEL','STATUSPANEL']);
  RegisterReport(TWorkOrdHistNarrRepForm,'WORKORDHISTNARRREP','Work Order History Narratives','INV','WORKORDCOND','Alpine Software Corporation',['INVPANEL','DATEPANEL','ASSIGNPANEL','STATUSPANEL']);
  RegisterReport(TWorkOrdHydHistRepForm, 'WORKORDHYDHISTREP', 'Hydrant Work Order History',   'HYD','WORKORDCOND','Alpine Software Corporation',['DATEPANEL','ASSIGNPANEL','STATUSPANEL']);
  RegisterIndividualReport(TWorkOrdRepForm,'INDWORKSUMMARY','Summary', 'WORKORD','',False,1 );

end.
