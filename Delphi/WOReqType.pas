unit WOReqType;

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
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AlpinePanel;

type
  TWOReqTypeForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label1: TLabel;
    FdidLabel: TLabel;
    Label3: TLabel;
    MyDBEdit2: TAlpineEdit;
    TypeField: TAlpineEdit;
    FdidField: TAlpineLookup;
    InvTypeField: TAlpineEdit;
    AlpinePanel1: TAlpinePanel;
    TruckCheck: TCheckBox;
    HoseCheck: TCheckBox;
    SCBACheck: TCheckBox;
    GenCheck: TCheckBox;
    PERSCheck: TCheckBox;
    STATIONCheck: TCheckBox;
    HydCheck: TCheckBox;
    MiscCheck: TCheckBox;
    MSGPanel: TAlpinePanel;
    PageGroupIDField: TAlpineLookup;
    Label2: TLabel;
    AlpinePanel2: TAlpinePanel;
    WOAssTypeIDField: TAlpineLookup;
    AssPersIDField: TAlpineLookup;
    Label10: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    RolodexIDField: TAlpineLookup;
    InvPartCheck: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TruckCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AssPersIDFieldEnter(Sender: TObject);
    procedure WOAssTypeIDFieldEnter(Sender: TObject);
    procedure PageGroupIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }                               
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  WOReqTypeForm: TWOReqTypeForm;

implementation
uses GenFunc,
     CommonVar,
     SecSet,
     Fdid,
     CommonFunc,
     Main;

{$R *.DFM}

class procedure TWOReqTypeForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString :=  ' ';
end;

procedure TWOReqTypeForm.PageGroupIDFieldEnter(Sender: TObject);
begin
  inherited;
  PageGroupIDField.SQLExpr := 'SELECT * FROM PAGEGROUP WHERE ' + GetFdidSQL('PAGEGROUP.FDID') + ' ORDER BY CODE';
end;

procedure TWOReqTypeForm.AssPersIDFieldEnter(Sender: TObject);
begin
  inherited;
  (sender as TAlpineLookup).SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND PERS.ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TWOReqTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TWOReqTypeForm(GetFormOfType(TWOReqTypeForm)),GenPanel);
end;

procedure TWOReqTypeForm.TruckCheckClick(Sender: TObject);
Var InvType : String;
begin
  inherited;
  InvType := '';
  If TruckCheck.Checked then
    InvType := InvType + 'TRUCK ';
  If GenCheck.Checked then
    InvType := InvType + 'GEN ';
  If SCBACheck.Checked then
    InvType := InvType + 'SCBA ';
  If HoseCheck.Checked then
    InvType := InvType + 'HOSE ';
  If PersCheck.Checked then
    InvType := InvType + 'PERS ';
  If StationCheck.Checked then
    InvType := InvType + 'STATION ';
  If HydCheck.Checked then
    InvType := InvType + 'HYD ';
  If MiscCheck.Checked then
    InvType := InvType + 'MISC ';
  If InvPartCheck.Checked then
    InvType := InvType + 'INVPART ';

  InvTypeField.Value := InvType;
  SaveButton.Enabled := true;
end;

procedure TWOReqTypeForm.WOAssTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  WOAssTypeIDField.SQLExpr := 'SELECT * FROM WOASSTYPE WHERE ' + GetFdidSQL('WOASSTYPE.FDID');
end;

procedure TWOReqTypeForm.FormShow(Sender: TObject);
begin
  inherited;
  TruckCheck.Checked   := (at('TRUCK',InvTypeField.Value)   > 0);
  HoseCheck.Checked    := (at('HOSE',InvTypeField.Value)    > 0);
  GenCheck.Checked     := (at('GEN',InvTypeField.Value)     > 0);
  SCBACheck.Checked    := (at('SCBA',InvTypeField.Value)    > 0);
  PersCheck.Checked    := (at('PERS',InvTypeField.Value)    > 0);
  StationCheck.Checked := (at('STATION',InvTypeField.Value) > 0);
  HydCheck.Checked     := (at('HYD',InvTypeField.Value)     > 0);
  MiscCheck.Checked    := (at('MISC',InvTypeField.Value)    > 0);
  InvPartCheck.Checked := (at('INVPART',InvTypeField.Value) > 0);

  TruckCheck.  OnClick := TruckCheckClick;
  HoseCheck.   OnClick := TruckCheckClick;
  GenCheck.    OnClick := TruckCheckClick;
  SCBACheck.   OnClick := TruckCheckClick;
  PersCheck.   OnClick := TruckCheckClick;
  StationCheck.OnClick := TruckCheckClick;
  HydCheck.    OnClick := TruckCheckClick;
  MiscCheck.   OnClick := TruckCheckClick;
  InvPartCheck.OnClick := TruckCheckClick;

  TruckCheck.Enabled   := CheckModule('APP');
  HoseCheck.Enabled    := CheckModule('HOSE');
  GenCheck.Enabled     := CheckModule('INV');
  SCBACheck.Enabled    := CheckModule('SCBA');
  PersCheck.Enabled    := CheckModule('PERS');
  StationCheck.Enabled := CheckModule('INV');
  HydCheck.Enabled     := CheckModule('HYD');
  MiscCheck.Enabled    := true;
  InvPartCheck.Enabled := CheckModule('INVPM');

  MSGPanel.Visible     := CheckModule('MSG') or CheckModule('PAGEREM') or (mFireID = 'HARFO') or (mFireID = '30032') or (mFireID = '30050') or (mFireID = '28029') or (mFireID = '23122') or (mFireID = '01922') or (mFireID = '52027') or (mFireID = '28019') or (mFireID = '70814') or (mFireID = '73014');
end;

end. 
