unit ems;

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
  ExtCtrls,
  ImgList,
  AdvPanel,
  AlpineMemo,
  htmlbtns,
  alpinecheck,
  AlpineBlockBrowse,
  ALPINEDATETIME,
  AlpineLookup,
  AlpinePanel,
  MySBox,
  AdvPageControl,
  ComCtrls,
  BasePictureField,
  AlpineEdit,
  AdvGlowButton,
  AlpineGlowButton,
  NormalBtnPanel,
  Blink,
  Buttons,
  cusbtn,
  AdvToolBtn,
  Grids,
  AlpineBaseSummaryReport,
  AlpineBaseReport,
  OvcRLbl,
  BaseGrid,
  AdvGrid,
  AlpineBase,
  AlpineTMSStringGrid,
  AdvOfficePager,
  AdvOfficePagerStylers,
  CommonEMS,
  Menus,
  AdvGroupBox, AdvObj;


type
  TEMSForm = class(TNormalBaseForm)
    TopPanel: TAdvPanel;
    AdvPanelStyler1: TAdvPanelStyler;
    Image2: TImage;
    EMSImages: TImageList;
    AdvPanel13: TAdvPanel;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    Panel1: TPanel;
    EMSPager: TAdvOfficePager;
    EMSTripTab: TAdvOfficePage;
    EMSTripPanel: TAdvPanel;
    EMSPatientTab: TAdvOfficePage;
    EMSPatientPanel: TAdvPanel;
    AssessPage: TAdvOfficePage;
    AssessPanel: TAdvPanel;
    TreatPage: TAdvOfficePage;
    TreatPanel1: TAdvPanel;
    MVAPage: TAdvOfficePage;
    MVAPanel: TAdvPanel;
    NarrPage: TAdvOfficePage;
    NarrPanel: TAdvPanel;
    DispPage: TAdvOfficePage;
    DispPanel: TAdvPanel;
    EMSCustTab: TAdvOfficePage;
    LeftPanel: TPanel;
    AdvPanel5: TAdvPanel;
    Label2: TLabel;
    ErrorGrid: TAlpineTMSStringGrid;
    ValidateButton: TAlpineGlowButton;
    ValidatePanel: TPanel;
    ErrorTypeField: TLabel;
    ErrorActionField: TLabel;
    Title1Field: TLabel;
    Title2Field: TLabel;
    CardiacPage: TAdvOfficePage;
    CardiacPanel: TAdvPanel;
    EMSRefusalTab: TAdvOfficePage;
    PEPanel: TPanel;
    PEIButton: TAlpineGlowButton;
    PERButton: TAlpineGlowButton;
    Panel4: TPanel;
    ReportTypeLabel: TLabel;
    CardiacField: TAlpineCheckBox;
    ReportTypeField: TAlpineLookup;
    MemorizedButton: TAlpineGlowButton;
    EMSAddButton: TAlpineGlowButton;
    EMSADDTab: TAdvOfficePage;
    CADIntButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    RedNMX2Button: TAlpineGlowButton;
    EMSImageTab: TAdvOfficePage;
    DispCallIDField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EMSTripTabShow(Sender: TObject);
    procedure EMSPatientTabShow(Sender: TObject);
    procedure EMSPagerChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
    procedure AssessPageShow(Sender: TObject);
    procedure TreatPageShow(Sender: TObject);
    procedure MVAPageShow(Sender: TObject);
    procedure NarrPageShow(Sender: TObject);
    procedure DispPageShow(Sender: TObject);
    procedure EMSCustTabShow(Sender: TObject);
    procedure ValidateButtonClick(Sender: TObject);
    procedure ErrorGridDblClick(Sender: TObject);
    procedure ErrorGridClick(Sender: TObject);
    procedure CardiacPageShow(Sender: TObject);
    procedure EMSRefusalTabShow(Sender: TObject);
    procedure PEIButtonClick(Sender: TObject);
    procedure PERButtonClick(Sender: TObject);
    procedure CardiacFieldClick(Sender: TObject);
    procedure MemorizedButtonClick(Sender: TObject);
    procedure EMSAddButtonClick(Sender: TObject);
    procedure EMSADDTabShow(Sender: TObject);
    procedure CADIntButtonClick(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure RedNMX2ButtonClick(Sender: TObject);
    procedure EMSImageTabShow(Sender: TObject);
  private
    F           : TBaseEMSForm;
    FInValidate : Boolean;
    procedure CreateSubForm(Instance: TComponentClass; mParent: TWinControl);
    procedure SetSubForm(mComponent: TWinControl);
    procedure GotoComponent(mFieldName: String);
    class procedure ClassReplicateEMS(Sender: TObject);
  protected
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    function ApproveEMS: Integer;
    class procedure CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
    class function CheckRefusal(EMSDisp: String): Boolean;
    procedure DoBeforePost(Sender: TObject); override;
    procedure EnableSave; override;    
    procedure EMSAddNewRecord(DataSet: TDataSet);
    function CheckEMSAtt: Boolean;
    function CheckEMSStat: Boolean;
    class procedure UnApproveEMS(Sender: TObject);
    procedure ReplicateEMSClick(Sender: TObject);
    class procedure SpecialClick(Sender: TObject); override;
    class function ClassCanEditRecord(mpk: String): Boolean; override;
    class procedure IncReNumClick(Sender: TObject);
  end;

var
  FEMSID          : String;
  FEMSTreatTypeID : String;
  EMSForm         : TEMSForm;

const
  MAPPROVE = 'Approve PPCR?';  

implementation
uses GenFunc,
     Main,
     AppLst,
     FormFunc,
     CommonFunc,
     AlpineRepGen,
     EmsAtt,
     EMSRep,
     EMSCust,
     EMSTrip,
     EMSPatient,
     EMSAssess,
     EMSTreat,
     EMSMVA,
     EMSNarr,
     EMSDisposition,
     EMSCardiac,
     EMSRefusal,
     Nfirs,
     SecSet,
     PhysicalExam,
     CommonVar,
     CommonNfirs,
     SortGridView,
     FDFuncBase,
     TableDefaultSelect,
     EMSAdd,
     EMSAddBrowse,
     EMSImage,
     EmsReNum, 
     CommonDispVar,
     NfirsApp,
     SysDemoPictView,
     CommonDisp;

{$R *.DFM}
{$I rednmx.inc}



procedure TEMSForm.FormCreate(Sender: TObject);
Var Approved : Boolean;
begin
  inherited;
  SaveButton.Enabled := false;
  If substr(ASCVAR,1,2) = 'VA' then begin
    Title1Field.Caption := 'Office of Emergency Medical Services';
    Title2Field.Caption := 'Pre-Hospital Patient Care Reporting';
  end else if substr(ASCVAR,1,2) = 'NY' then begin
    Title1Field.Caption := 'State Department of Health';
    Title2Field.Caption := 'Office of Emergency Medical Services';
  end else if FireID = 'KOCEM' then begin
    Title1Field.Caption := 'Kuwait Oil Company';
    Title2Field.Caption := 'PPCR Data Entry System';
  end else begin
    Title1Field.Caption := 'State Department of Health';
    Title2Field.Caption := 'PPCR Data Entry System';
  end;



  If InsertMode then
    EMSPatientTab.TabVisible := true
  else if CheckSecVar('EMSPAT') then
    EMSPatientTab.TabVisible := true
  else if CheckEMSAtt then
    EMSPatientTab.TabVisible := true
  else if CheckEMSStat then
    EMSPatientTab.TabVisible := true
  else
    EMSPatientTab.TabVisible := false;


  Approved := SqlLookup(PK,'EMSID','VWEMS','EMSSTATTYPEAPPROVED') = 'Y';
  If Approved then begin
    ViewOnly := Not CheckSecVar('EMSAPP')
  end else
    ViewOnly := Not CheckSecVar('EMSEDIT');

  FInValidate               := False;
  EMSPager.ActivePage       := EMSTripTab;
  FEMSID                    := PK;
  EMSRefusalTab.TabVisible  := CheckRefusal(tdbfield('EMS','EMSDISP'));


  EMSImageTab.TabVisible    := (SQLLookUp(mFireID,'FDID','IMAGESET','EMS') = 'Y');

  If SqlTableRecCount('SELECT COUNT(*) FROM EMSREPORTTYPE') > 1 then begin
    ReportTypeField.visible := true;
    ReportTypeLabel.visible := true;
  end;

  CADIntButton.Visible     := CheckModule('CADINT');

  MemorizedButton.Visible  := SqlTableRecCount('SELECT COUNT(*) FROM TABLEDEFAULT WHERE MODCODE = ' + AddExpr('EMS')) > 1;
  ValidateButton .Enabled  := Not ViewOnly;
  MemorizedButton.Enabled  := Not ViewOnly;
  PEIButton      .Enabled  := Not ViewOnly;
  PERButton      .Enabled  := Not ViewOnly;
  ReportTypeField.Enabled  := Not ViewOnly;
  RedNMXButton.Visible     := mFireID = '12345';
  RedNMX2Button.Visible    := mFireID = '12345';
end;


function TEMSForm.CheckEMSAtt: Boolean;
begin
  Open_Query('EMSATT',false,'SELECT PERSID FROM EMSATT WHERE EMSID = ' + pk + ' AND PERSID = ' + pkValue(GlobalPersID));
  CheckEMSAtt := A('EMSATT').RecordsExist;
  CloseApollo('EMSATT');
end;

function TEMSForm.CheckEMSStat: Boolean;
Var EMSStatTypeID : String;
begin
  EMSStatTypeID := SqlLookup(FireID,'FDID','EMSSET','EMSNEW');
  Open_Query('EMSSTAT',false,'SELECT PERSID FROM EMSSTAT WHERE EMSID = ' + pk + ' AND PERSID = ' + pkValue(GlobalPersID) + ' AND EMSSTATTYPEID = ' + pkValue(EMSStatTypeID));
  CheckEMSStat := A('EMSSTAT').RecordsExist;
  CloseApollo('EMSSTAT');
end;

procedure TEMSForm.FormShow(Sender: TObject);
begin
  inherited;
  Open_Query('EMSSET',false,'SELECT SHOWSECOND, PROCPEI, PROCPER, EMSCUST FROM EMSSET WHERE FDID = ' + AddExpr(FireID));
  EMSCustTab.TabVisible := TEMSCustForm.TabVisible;
  PEPanel.Visible       := (GetField('EMSSET','PROCPER').AsInteger > 0);
  EMSShowSeconds        := tdbfield('EMSSET','SHOWSECOND') = 'Y';
  CloseApollo('EMSSET');

  DispPage.TabVisible   := Not (mFireID = '07120');
  AssessPage.TabVisible := Not (mFireID = '07120');
  MVAPage.TabVisible    := EMSCheckMVA(pk);
  CardiacFieldClick(self);
  SetSubForm(EMSTripTab);
  ApproveEMS;
  CreateSubForm(TEMSTripForm,EMSTripTab);
  SaveButton.Enabled    := false;
end;

procedure TEMSForm.CreateSubForm(Instance: TComponentClass; mParent: TWinControl);
begin
  if F<>nil then
    F.Free;
  try
    F  := TBaseEMSForm(Instance.NewInstance);
    F.Create(self ,pk);
    Open_Query('GETEMS',True,'SELECT * FROM EMS WHERE EMSID = ' + pk);
    TNormalBaseForm.SetControls(F,nil,'GETEMS','EMS',SaveButton);
    F.BorderStyle := forms.bsNone;
    F.ViewOnly    := ViewOnly;
    F.Width       := mParent.Width;
    F.Height      := mParent.Height;
  finally
    CloseApollo('GETEMS');
  end;
  SetSubForm(mParent);
end;

procedure TEMSForm.SetSubForm(mComponent: TWinControl);
begin
  f.parent  := mComponent;
  f.left    := 0;
  f.top     := 0;
  f.bringtofront;
  f.visible := True;
  f.show;
end;

procedure TEMSForm.EMSTripTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSTripForm,EMSTripTab);
end;

procedure TEMSForm.EMSPatientTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSPatientForm,EMSPatientTab);
end;

procedure TEMSForm.EMSPagerChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TEMSForm.AssessPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSAssessForm,AssessPage);
end;

procedure TEMSForm.TreatPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSTreatForm,TreatPage);
end;

procedure TEMSForm.MVAPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSMVAForm,MVAPage);
end;

procedure TEMSForm.NarrPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSNarrForm,NarrPage);
end;

procedure TEMSForm.DispPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSDispositionForm,DispPage);
end;

procedure TEMSForm.EMSCustTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSCustForm,EMSCustTab);
end;

procedure TEMSForm.EMSImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSImageForm,EMSImageTab);
end;

class procedure TEMSForm.NewRecord(DataSet: TDataSet);
Var Fdid : String;
begin
  Fdid                                            := GetFdidVar;
  DataSet.FieldByname('FDID').AsString            := Fdid;
  DataSet.FieldByname('INCNUM').AsString          := CommonGetNextIncNum(GlobalAdoConnection,Fdid,'EMS',false);
  DataSet.FieldByname('DATETIMEALARM').AsDateTime := Now;
  DataSet.FieldByname('REPORTTYPE').AsString      := 'EMS';

  FDFunctions.AdditionalEmsNewRecord(A('EMS').DataSource.DataSet);

  LoadSysFieldDef(mFireID,'EMS',DataSet);

  DataSet.FieldByName('EMSSTATID').AsString := ChangeEMSStat(GlobalPersID,DataSet.FieldByname('EMSID').AsString,SqlLookup(FireID,'FDID','EMSSET','EMSNEW'));
end;


procedure TEMSForm.RedNMX2ButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'MOBEMS');
  SysDemoPictViewForm.Show;
end;

function TEMSForm.ApproveEMS: Integer;
Var EMSErrorList : TStringList;
    Row          : Integer;
begin
  EMSErrorList := TStringList.Create;
  CheckOneEMS(PK, FireID, EMSErrorList);

  ErrorGrid.Clear;
  ErrorGrid.RowCount      := 1;
  ErrorGrid.ColCount      := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.SetColumn('FORMNAME',   '',                 000);
  ErrorGrid.SetColumn('FIELDNAME',  '',                 000);
  ErrorGrid.SetColumn('FORMDESCR',  'Tab',              070);
  ErrorGrid.SetColumn('FIELDDESCR', 'Field',            133);
  ErrorGrid.SetColumn('ERRORTYPE',  'Type',             000);
  ErrorGrid.SetColumn('ERRORDESCR', 'Error Description',000);
  ErrorGrid.SetColumn('ERRORACTION','Error Action',     000);

  for Row := 0 to EMSErrorList.Count-1 do begin
    ErrorGrid.SetValue('FORMNAME',   TErrorObject(EMSErrorList.Objects[Row]).DeskForm);
    ErrorGrid.SetValue('FIELDNAME',  TErrorObject(EMSErrorList.Objects[Row]).FieldName);
    ErrorGrid.SetValue('FORMDESCR',  TErrorObject(EMSErrorList.Objects[Row]).DeskFormDescr);
    ErrorGrid.SetValue('FIELDDESCR', TErrorObject(EMSErrorList.Objects[Row]).FieldDescr);
    ErrorGrid.SetValue('ERRORTYPE',  TErrorObject(EMSErrorList.Objects[Row]).ErrorType);
    ErrorGrid.SetValue('ERRORDESCR', TErrorObject(EMSErrorList.Objects[Row]).ErrorDescr);
    ErrorGrid.SetValue('ERRORACTION',TErrorObject(EMSErrorList.Objects[Row]).ErrorAction);
  end;

  ApproveEMS := EMSErrorList.Count;
  ErrorGridClick(self);
  If EMSErrorList.Count = 0 then begin
    ValidateButton.Caption   := MAPPROVE;
    ErrorTypeField.Caption   := '';
    ErrorActionField.Caption := '';
  end;
end;

procedure TEMSForm.ErrorGridClick(Sender: TObject);
begin
  inherited;
  ErrorTypeField.Caption   := IIf(ErrorGrid.GetValue('ERRORTYPE') = 'C','Critical Error: ','Warning: ') + ErrorGrid.GetValue('ERRORDESCR');
  ErrorActionField.Caption := 'Remedy: ' + ErrorGrid.GetValue('ERRORACTION');
end;
      
procedure TEMSForm.ErrorGridDblClick(Sender: TObject);
begin
  inherited;
  If ErrorGrid.GetValue('FORMNAME') = 'EMSTRIP' then begin
    If Not (EMSPager.ActivePage = EMSTripTab) then begin
      EMSPager.ActivePage := EMSTripTab;
      EMSTripTabShow(self);
    end;  
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSPATIENT' then begin
    If Not (EMSPager.ActivePage = EMSPatientTab) then begin
      EMSPager.ActivePage := EMSPatientTab;
      EMSPatientTabShow(self);
    end;
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSDISPOSITION' then begin
    If Not (EMSPager.ActivePage = DispPage) then begin
      EMSPager.ActivePage := DispPage;
      DispPageShow(self);
    end;  
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSASSESS' then begin
    EMSPager.ActivePage := AssessPage;
    AssessPageShow(self);
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSMVA' then begin
    EMSPager.ActivePage := MvaPage;
    MvaPageShow(self);
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSTREAT' then begin
    EMSPager.ActivePage := TreatPage;
    TreatPageShow(self);
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSCUST' then begin
    EMSPager.ActivePage := EMSCustTab;
    EMSCustTabShow(self);
  end else if ErrorGrid.GetValue('FORMNAME') = 'EMSNARR' then begin
    EMSPager.ActivePage := NarrPage;
    NarrPageShow(self);

  end;
  if ErrorGrid.GetValue('FIELDNAME') <> '' then
    GotoComponent(ErrorGrid.GetValue('FIELDNAME'));
end;

procedure TEMSForm.GotoComponent(mFieldName: String);
begin
  TNfirsForm.CommonGotoComponent(mFieldName,F,False);
end;

class procedure TEMSForm.CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
var i        : Integer;
    mControl : TWinControl;
    
  procedure FlashControl;
  begin
    if mControl.Enabled then begin
      if mControl is TAlpineEdit then begin
        if mSetGreen then
          TAlpineEdit(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineEdit(mControl).Flash
      end else if mControl is TAlpineLookup then begin
        if mSetGreen then
          TAlpineLookup(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineLookup(mControl).Flash;
      end else if mControl is TAlpineDatetime then begin
        if mSetGreen then
          TAlpineDateTime(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineDateTime(mControl).Flash;
      end;
      if not mSetGreen then
        mControl.SetFocus;
    end;
  end;
begin
  If mSourceForm = nil then
    Exit;
  mControl := nil;
  for i:= 0 to mSourceForm.ComponentCount-1 do begin
    If mSourceForm.Components[i] is TAlpineLookup then begin
      If uppercase(TAlpineLookup(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineLookup(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineEdit then begin
      If uppercase(TAlpineEdit(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineEdit(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineDateTime then begin
      If uppercase(TAlpineDateTime(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineDateTime(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineCheckBox then begin
      If uppercase(TAlpineCheckbox(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineCheckbox(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TCheckBox then begin
      If uppercase(TCheckBox(mSourceForm.Components[i]).Name) = uppercase(mFieldname) then
        mControl := TCheckBox(mSourceForm.Components[i]);
    end;
  end;
  If mControl <> nil then
    FlashControl;
end;

procedure TEMSForm.CardiacPageShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSCardiacForm,CardiacPage);
end;

procedure TEMSForm.EMSRefusalTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSRefusalForm,EMSRefusalTab);
end;

class function TEMSForm.CheckRefusal(EMSDisp: String): Boolean;
begin
  CheckRefusal := SQLLookUp(EMSDisp,'CODE','EMSDISP','REFUSE') = 'Y';
end;

procedure TEMSForm.CADIntButtonClick(Sender: TObject);
begin
  inherited;
  TNFIRSAppForm.ViewCad(emsform.DispCallIDField.Value);
end;

function TEMSForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  result := CheckSecVar('EMSADD');
end;

function TEMSForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('EMSDEL');
end;

procedure TEMSForm.PEIButtonClick(Sender: TObject);
begin
  inherited;
  EditPhysicalExam(FireID, PK,'PROCPEI');
end;

procedure TEMSForm.ValidateButtonClick(Sender: TObject);
Var EMSApprove : String;
    EMSStatID  : String;
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
  If ValidateButton.Caption = MAPPROVE then begin
    EMSStatID := ChangeEMSStat(GlobalPersID, PK, SqlLookup(FireID,'FDID','EMSSET','EMSAPPROVE'));
    RunSQL('UPDATE EMS SET EMSSTATID = ' + pkValue(EmsStatID) + ' WHERE EMSID = ' + pkValue(pk));
    FInValidate := True;
    SaveButtonClick(nil);
    FInValidate := False;
    close;
  end else begin
    ApproveEMS;
  end;
end;

procedure TEMSForm.DoBeforePost(Sender: TObject);
Var EMSEdit   : String;
    EMSStatID : String;
begin
  EMSEdit := SqlLookup(FireID,'FDID','EMSSET','EMSEDIT');
  If not FInValidate then
    If Not (EMSEdit = '') then begin
      EMSStatID := ChangeEMSStat(GlobalPersID, PK, EMSEdit);
      RunSQL('UPDATE EMS SET EMSSTATID = ' + pkValue(EmsStatID) + ' WHERE EMSID = ' + pkValue(pk));
    end;
end;

procedure TEMSForm.EnableSave;
begin
  inherited;
  ValidateButton.caption := 'Validate PPCR Report?';
end;

procedure TEMSForm.PERButtonClick(Sender: TObject);
begin
  inherited;
  EditPhysicalExam(FireID, PK,'PROCPER');
end;

procedure TEMSForm.CardiacFieldClick(Sender: TObject);
begin
  inherited;
  If CardiacField.Checked then
    CardiacPage.TabVisible := true
  else
    CardiacPage.TabVisible := false;
end;


class procedure TEMSForm.UnApproveEMS(Sender: TObject);
var EMSID         : String;
    NewView       : TNewView;
    EMSStatTypeID : String;
    EMSStatID     : String;
begin
  inherited;
  NewView := nil;
  EmsID   := '';
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView := TNewView(TMenuItem(Sender).Owner);
    EMSID   := NewView.ViewGrid.GetValue('EMSID')
  end;

  If (NewView <> nil) and Not (EMSID = '') then begin
    EMSStatTypeID := SqlLookup(FireID,'FDID','EMSSET','EMSEDIT');
    Open_Query('EMSSTAT',false,'SELECT EMSSTATID FROM EMSSTAT WHERE EMSID = ' + pkValue(EmsID) + ' AND EMSSTATTYPEID = ' + pkValue(EmsStatTypeID));
    If A('EMSSTAT').RecordsExist then
      EMSStatID := GetField('EMSSTAT','EMSSTATID').AsString
    else
      EMSStatID := '';
    CloseApollo('EMSSTAT');
    If Not (EMSStatID = '') and Not (EmsID = '') then begin
      RunSQL('UPDATE EMS SET EMSSTATID = ' + EMSStatID + ' WHERE EMSID = ' + EmsID);
      NewView.RefreshGrid(EMSID,'','',True);
    end;  
  end;
end;

procedure TEMSForm.MemorizedButtonClick(Sender: TObject);
var LEMSForm : TEMSForm;
begin
  LEMSForm := TEMSForm(GetFormOfType(TEMSForm));
  If LEmsForm = nil then
    exit;

  If LEMSForm.SaveButton.Enabled then
    LEMSForm.SaveButton.Click;

  TableDefaultSelectForm := TTableDefaultSelectForm.Create(Application,FEMSID,false,'EMS');
  If TableDefaultSelectForm.ShowModal = mrOK then
    RefreshForm;                      

  TableDefaultSelectForm.Free;
end;

procedure TEMSForm.EMSAddButtonClick(Sender: TObject);
Var PKVar : String;
begin
  PkVar := '-1';
  RunAlpineForm(TEMSAddForm,pkVar,'EMSADD',EMSAddNewRecord);
end;

procedure TEMSForm.EMSAddNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('EMSID').AsString         := PK;
  DataSet.FieldByname('DATETIMEENT').AsDateTime := Now;
  DataSet.FieldByname('PERSID').AsString        := GlobalPersID;
  DataSet.FieldByname('SECID').AsString         := SecIDVar;
end;

procedure TEMSForm.EMSADDTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(TEMSAddBrowseForm,EMSAddTab);
end;

class procedure TEMSForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'Unapprove PCR';
    m.Enabled := CheckSecVar('EMSAPP');
    m.Onclick := UnApproveEMS;
    TNewView(Sender).PopupMenu.Items.Add(m);

    If (FireID = '12345') or (FireID = 'CIHVA') or (FireID = 'MDAMB') then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Replicate PCR';
      m.Onclick := ClassReplicateEMS;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;

    If CheckSecVar('EMSSETUP') and ((FireID = '12345') or (FireID = 'CIHVA') or (FireID = 'MDAMB')) then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Renumber Incidents';
      m.Onclick := IncReNumClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;
  end;
end;

class procedure TEmsForm.IncReNumClick(Sender: TObject);
var EmsID   : String;
    NewView : TNewView;
begin
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView := TNewView(TMenuItem(Sender).Owner);
    EmsID   := NewView.ViewGrid.GetValue('EMSID')
  end;

  Open_Query('EMS',false,'SELECT FDID, DATETIMEALARM, INCNUM FROM EMS WHERE EMSID = ' + EmsID);
  EmsReNumForm                          := TEmsReNumForm.Create(application);
  EmsReNumForm.FdidField.Value          := GetField('EMS','FDID').AsString;
  EmsReNumForm.StartDateField.Value     := GetField('EMS','DATETIMEALARM').AsDateTime;
  EmsReNumForm.IncNumField.Value        := GetField('EMS','INCNUM').AsString;
  CloseApollo('EMS');
  EmsReNumForm.ShowModal;
  EmsReNumForm.Free;

  If NewView <> nil then
    NewView.RefreshGrid(EmsID);
end;


procedure TEMSForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'EMS');
  SysDemoPictViewForm.Show;

end;

procedure TEMSForm.ReplicateEMSClick(Sender: TObject);
begin
  ClassReplicateEMS(Self);
end;

class procedure TEMSForm.ClassReplicateEMS(Sender: TObject);
var NewEMSID : Integer;
    EMSID    : String;
    mView    : TNewView;
begin
  inherited;
  mView := nil;
  If Sender is TNormalBaseForm then
    EMSID := TNormalBaseForm(Sender).Pk
  else if Sender is TMenuItem then begin
    If TMenuItem(Sender).Owner is TNewView then begin
      mView := TNewView(TMenuItem(Sender).Owner);
      EMSID := mView.ViewGrid.GetValue('EMSID')
    end;
  end else begin
    ShowMessage('There was a problem retrieving the Primary Key for the Table');
    exit;
  end;
  If not BooleanMessageDlg('This feature allows you to duplicate this PCR.  Would you like to proceed?') then
    exit;

  NewEMSID := AlpineReplicateRecord('EMS',strtoint(EMSID));

  If mView <> nil then begin
    mView.ViewGrid.InsertAtCurrentRow;
    mView.ViewGrid.SetValue('EMSID',mView.ViewGrid.Row,inttostr(NewEMSID));
    mView.RefreshGrid(inttostr(NewEMSID),'','',True);
  end;
end;

class function TEMSForm.classCanEditRecord(mpk: String): Boolean;
var
  mdateTime: String;
begin
  result := True;
  if mFireID='77000' then begin
    mDateTime := sqllookup(mpk,'EMSID','EMS','DATETIMEALARM');
    if ValidDateTime(mDateTime) then begin
      if StrToDateTime(mDateTime)>StrTodateTime('07/01/2010 00:01') then begin
        showmessage('You are trying to edit a PCR from after 07/01/2010 using the "Standard" version - Please use the "NEMSIS" EMS View');
        result := False;
      end;
    end;
  end else if (mFireID='20019') or IsMark then begin
    if anystrtoint(mpk)<=0 then begin
      result := CheckSecVar('EMSADD');
      if not Result then
        ShowMessage('You don''t have rights to add EMS Reports'); 
    end else if CheckSecVar('EMSAPP') {or CheckSecVar('EMSADDADD')} then
      result := True
    else  if GlobalPersID = '' then begin
      Result := False;
      ShowMessage('Your Security Account is not Linked to a Personnel Record - You cannot View EMS Records');
    end else begin
      result := SqlMultiFieldLookUp([mpk,GlobalPersID],['emsid','persid'],'emsatt','persid')=GlobalPersID;
      
      if not result then
        ShowMessage('You cannot view this EMS Record because you are not in the attendance list');
    end;
  end;

end;



initialization
  RegisterIndividualReport(TEMSRepForm,'INDPCRSUMMARY','PCR Summary','EMS','',False,1 );

end.
