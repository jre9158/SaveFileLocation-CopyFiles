unit Permit;

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
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AdvGroupBox,
  AlpineMemo,
  AdvOfficePager,
  AdvOfficePagerStylers,
  AlpinePanel;

type
  TPermitForm = class(TNormalBaseForm)
    TitlePanel: TAdvPanel;
    Image1: TImage;
    DeptLabel: TLabel;
    Label3: TLabel;
    Image2: TImage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    ImageList1: TImageList;
    Pager: TAdvOfficePager;
    GenTab: TAdvOfficePage;
    NarrTab: TAdvOfficePage;
    InspTickTab: TAdvOfficePage;
    InspTickBrowse: TAlpineBlockBrowse;
    PermitImageTab: TAdvOfficePage;
    AdvPanel1: TAdvPanel;
    RedNMXRPanelButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    AlpinePanel2: TAlpinePanel;
    Label5: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label14: TLabel;
    DateApplField: TAlpineDateTime;
    PermitNumField: TAlpineEdit;
    DateApprField: TAlpineDateTime;
    DateExpField: TAlpineDateTime;
    PropIDField: TAlpineEdit;
    DateRecField: TAlpineDateTime;
    AlpinePanel3: TAlpinePanel;
    AlpinePanel4: TAlpinePanel;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label55: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label60: TLabel;
    StrNumField: TAlpineEdit;
    ZipField: TAlpineEdit;
    StreetField: TAlpineLookup;
    CityField: TAlpineLookup;
    StateField: TAlpineLookup;
    RoomAptField: TAlpineEdit;
    NameField: TAlpineEdit;
    BusinessField: TAlpineEdit;
    PhoneField: TAlpineEdit;
    AddressButton: TAlpineGlowButton;
    Label12: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    AssignedToField: TLabel;
    FeeAmtField: TAlpineEdit;
    PermitStatIDField: TAlpineLookup;
    PermitTypeIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    Emailbutton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure AddressButtonClick(Sender: TObject);
    procedure TitlePanelDblClick(Sender: TObject);
    procedure RedNMXRPanelButtonClick(Sender: TObject);
    procedure PermitImageTabShow(Sender: TObject);
    procedure InspTickTabShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateExpFieldExit(Sender: TObject);
    procedure EmailbuttonClick(Sender: TObject);
  private
    procedure InspTickNewRecord(DataSet: TDataSet);
  public
    F              : TBaseSubTabForm;
    UpdateExpired  : Boolean;
    class procedure NewRecord(DataSet: TDataSet);
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    procedure CheckExpiredStatus();
  end;

var
  PermitForm: TPermitForm;

implementation
uses GenFunc,
     SecSet,
     CommonFunc,
     CommonVar,
     PermitSample,
     SysDemoPictView,
     PermitImage,
     InspTick,
     PropSelect,
     ReportEmail;

{$R *.DFM}

class procedure TPermitForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('PERMITNUM').AsString := ' ';
end;

function TPermitForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('PERMADD');
end;

function TPermitForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('PERMDEL');
end;
 
procedure TPermitForm.RedNMXRPanelButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'PERMIT');
  SysDemoPictViewForm.Show;
end;

procedure TPermitForm.DateExpFieldExit(Sender: TObject);
begin
  inherited;
  CheckExpiredStatus;
end;

procedure TPermitForm.EmailbuttonClick(Sender: TObject);
Var ReportEmailForm : TReportEmailForm;
begin
  inherited;
  ReportEmailForm := TReportEmailForm.Create(self,Pk,'PERMIT');
  ReportEmailForm.EmailSubjectField.Value := sqllookup(mfireid,'FDID','PERMITSET','EMAILSUBJECT');
  ReportEmailForm.EmailMessageField.Value := sqllookup(mfireid,'FDID','PERMITSET','EMAILMESSAGE');
  ReportEmailForm.ShowModal;
  ReportEmailForm.Free;
end;

procedure TPermitForm.FormCreate(Sender: TObject);
begin
  inherited;
  DeptLabel.Caption          := FireDept;
  RedNMXRPanelButton.Visible := FireID = '12345';
  Emailbutton.Visible := (sqllookup(mfireid,'FDID','PERMITSET','EMAILFAX') = 'Y');
  PersIDField.SqlExpr        := 'SELECT PERSID, LNAME, FNAME, PERSCODE FROM PERS WHERE INSPECTOR = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';

  ViewOnly := Not CheckSecVar('PERMEDIT');

  If mFireID = 'B3580' then
    AssignedToField.Caption    := 'Approved By';
end;

procedure TPermitForm.CheckExpiredStatus();
var PermitExpiredStatusID: String;
    PermitActive: Boolean;
begin
  if UpdateExpired then begin
    PermitExpiredStatusID := SQLLookup('Y','EXPIREDYN','PERMITSTAT','PERMITSTATID');
    PermitActive          := SQLLookup(PermitStatIDField.Value,'PERMITSTATID','PERMITSTAT','ACTIVEYN') = 'Y';
    if (PermitExpiredStatusID <> '') and (DateExpField.Value > 0) and PermitActive then begin
      if (DateExpField.Value < Now) and (PermitStatIDField.Value <> PermitExpiredStatusID) then begin
        PermitStatIDField.Value := PermitExpiredStatusID;
        ShowMessage('Permit past exipration date! Updated Status.');
      end;
    end;
  end;
end;

procedure TPermitForm.FormShow(Sender: TObject);
var mpermitCode,mStart: String;
begin
  inherited;
  PermitImageTab.TabVisible  := (SQLLookUp(FireID,'FDID','IMAGESET','PERMIT') = 'Y');
  UpdateExpired              := SQLLookup(FireID,'FDID','PERMITSET','UPDATEEXPIREDYN') = 'Y';
  Pager.ActivePage           := GenTab;

  if (mfireID = '21350') and (PermitNumField.Value = '') then begin
    PermitNumField.Value:='';
    PermitTypeIDField.Value:='';
    if (PermitNumField.Value='') then begin
      mStart := FormatDateTime('YYYY',now);
      PermitNumField.Value := GetNextVal(GlobalAdoConnection,
      'SELECT MAX(PERMITNUM) FROM PERMIT WHERE PERMITNUM LIKE '+AddExpr(mStart+'%'),mStart+'-'+'001');            //ADDED THE PERMITTYPEID TO MAKE THE PERMIT NUMBER UNIQUE TO THE TYPE OF PERMIT
    end;
  end;

  CheckExpiredStatus;
end;

procedure TPermitForm.InspTickTabShow(Sender: TObject);
begin
  inherited;
  InspTickBrowse.Setup('INSPTICK','PERMITID',pk,TInspTickForm,InspTickNewRecord);
end;

procedure TPermitForm.PermitImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPermitImageForm,PermitImageTab);
end;

procedure TPermitForm.AddressButtonClick(Sender: TObject);
Var PropID : String;
begin
  inherited;
  If SelectPropID(PropID,'') then begin
    SaveButton.Enabled := true;
    Open_Query('PROPSEL',false,'SELECT * FROM PROP WHERE PROPID = ' + PropID);
    NameField.Value     := tdbfield('PROPSEL','COMPANY');
    BusinessField.Value := tdbfield('PROPSEL','FIRSTPERS');
    PropIDField.Value   := tdbfield('PROPSEL','PROPID');
    StrNumField.Value   := tdbfield('PROPSEL','STRNUM');
    StreetField.Value   := tdbfield('PROPSEL','STREET');
    RoomAptField.Value  := tdbfield('PROPSEL','ROOMAPT');
    CityField.Value     := tdbfield('PROPSEL','CITY');
    StateField.Value    := tdbfield('PROPSEL','STATE');
    ZipField.Value      := tdbfield('PROPSEL','ZIP');
    PhoneField.Value    := tdbfield('PROPSEL','PHONE');
    CloseApollo('PROPSEL');
  end;
end;

procedure TPermitForm.TitlePanelDblClick(Sender: TObject);
begin
  inherited;
  RunAlpineForm(TPermitSampleForm,pk,'PERMIT',TPermitSampleForm.NewRecord);
end;

procedure TPermitForm.InspTickNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('PERMITID').AsString        := PK;
  DataSet.FieldByName('DATETIMESTART').AsDateTime := Now;
  DataSet.FieldByName('PERSID').AsString          := GlobalPersID;
end;

end. 
