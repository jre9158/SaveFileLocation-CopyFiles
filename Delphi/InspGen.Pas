unit InspGen;

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
  OvcBase,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  Jpeg,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  AlpinePanel,
  Grids,
  BaseGrid,
  AdvGrid,
  htmlbtns,
  alpinecheck,
  ALPINEDATETIME,
  AlpineLookGrid,
  Pers,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  NormalBase,
  AlpineMemo,
  AdvGroupBox,
  MySBox;

type
  TInspGenForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    InspGenForm: TPanel;
    InspScrollBox: TMyScrollBox;
    GenPanel: TAlpinePanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label30: TLabel;
    InspNumLabel: TLabel;
    PersIDCompLabel: TLabel;
    InspPriorIDLabel: TLabel;
    InspTypeIDField: TAlpineLookup;
    InspStatIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    AlpineLookup1: TAlpineLookup;
    InspNumField: TAlpineEdit;
    PersIDCompField: TAlpineLookup;
    InspPriorIDField: TAlpineLookup;
    AlpinePanel2: TAlpinePanel;
    dAT: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    DateTimeStartField: TAlpineDateTime;
    DateTimeSchdField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    EvLengthField: TAlpineEdit;
    UserPersIDField: TAlpineLookup;
    DateTimeReturnField: TAlpineDateTime;
    EvLengthButton: TAlpineGlowButton;
    ReinspectButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    Label1: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    StrNumField: TAlpineEdit;
    StreetField: TAlpineLookup;
    RoomAptField: TAlpineEdit;
    PhoneField: TAlpineEdit;
    NameField: TAlpineEdit;
    BuildingField: TAlpineEdit;
    ZipField: TAlpineEdit;
    CityField: TAlpineLookup;
    StateField: TAlpineLookup;
    AddressButton: TAlpineGlowButton;
    PropIDField: TAlpineEdit;
    FaxField: TAlpineEdit;
    EmailField: TAlpineEdit;
    ContactField: TAlpineEdit;
    UpdateButton: TAlpineGlowButton;
    AlpinePanel4: TAlpinePanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    OPhoneField: TAlpineEdit;
    ONameField: TAlpineEdit;
    OContactField: TAlpineEdit;
    OZipField: TAlpineEdit;
    OCityField: TAlpineLookup;
    OStateField: TAlpineLookup;
    OAddressField: TAlpineEdit;
    CopyToOwner: TAlpineGlowButton;
    BillPanel: TAlpinePanel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    AmountBilledField: TAlpineEdit;
    DateBilledField: TAlpineDateTime;
    AmountPaidField: TAlpineEdit;
    DateCollect: TAlpineDateTime;
    AlpinePanel: TPanel;
    COShape: TShape;
    SCShape: TShape;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Image8: TImage;
    Label60: TLabel;
    RCShape: TShape;
    CorrShape: TShape;
    RFIShape: TShape;
    VCShape: TShape;
    RSSShape: TShape;
    SCButton: TAlpineGlowButton;
    CompButton: TAlpineGlowButton;
    RCButton: TAlpineGlowButton;
    RFIButton: TAlpineGlowButton;
    CorrButton: TAlpineGlowButton;
    VLCTButton: TAlpineGlowButton;
    REFFSSButton: TAlpineGlowButton;
    Image1: TImage;
    Image2: TImage;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    SCHDLOCIDLabel: TLabel;
    SCHDLOCIDFIELD: TAlpineLookup;
    ViewButton: TAlpineGlowButton;
    CheckNumField: TAlpineEdit;
    CheckNumLabel: TLabel;
    PermitButton: TAlpineGlowButton;
    Label5: TLabel;
    Email2Field: TAlpineEdit;
    NextInspButton: TAlpineGlowButton;
    procedure CopyToOwnerClick(Sender: TObject);
    procedure AddressButtonClick(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure InspTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure InspTypeIDFieldExit(Sender: TObject);
    procedure CityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure OCityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure UpdateButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PersIDCompFieldEnter(Sender: TObject);
    procedure ReinspectButtonClick(Sender: TObject);
    procedure UserPersIDFieldEnter(Sender: TObject);
    procedure CorrButtonClick(Sender: TObject);
    procedure RCButtonClick(Sender: TObject);
    procedure CompButtonClick(Sender: TObject);
    procedure RFIButtonClick(Sender: TObject);
    procedure SCButtonClick(Sender: TObject);
    procedure VLCTButtonClick(Sender: TObject);
    procedure REFFSSButtonClick(Sender: TObject);
    procedure PersIDFieldExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SCHDLOCIDFIELDEnter(Sender: TObject);
    procedure ViewButtonClick(Sender: TObject);
    procedure PermitButtonClick(Sender: TObject);
    procedure NextInspButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LoadParcelRecord(FPropID: String);
    procedure SetButtonShape;
  end;

var
  InspGenForm: TInspGenForm;

implementation
uses GenFunc,
     AppLst,
     CommonFunc,
     CommonVar,
     PropSelect,
     FormFunc,
     Insp,
     InspTick,
     CommonInsp,
     Permit,
     Fdid,
     Prop,
     SecSet;

{$R *.dfm}
procedure TInspGenForm.AddressButtonClick(Sender: TObject);
var PropID : string;
begin
  If SelectPropID(PropID,'') then begin
    LoadParcelRecord(PropID);
    ViewButton.Enabled       := (PropIDField.Value <> '');
  end;
end;

procedure TInspGenForm.CityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Text  := GetField('CITY','STATE').AsString;
  ZipField.Text    := GetField('CITY','ZIP').AsString;
  CloseApollo('CITY');
end;

procedure TInspGenForm.CompButtonClick(Sender: TObject);
Var InspTickID : String;
begin
  InspStatIDField.Value                                  := SQLLookUp('CO','CODE','INSPSTAT','INSPSTATID');
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  DateTimeEndField.Value                                 := now;
  if PersIDCompField.Value = '' then
    PersIDCompField.Value                                  := GlobalPersID;
  SetButtonShape;
  InspTickID            := UpdateInspTick(PK, 'CO', 'CI', 'Great Inspection.', 'Inspection done, and no violations found.');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.CopyToOwnerClick(Sender: TObject);
begin
  If BooleanMessageDlg('Fill owner information with occupant name and address?') then begin
    ONameField.Value    := NameField.Value;
    OContactField.Value := ContactField.Value;
    OAddressField.Value := trim(trim(StrNumField.Value)+' '+trim(StreetField.Value)+' '+trim(RoomAptField.Value));
    OCityField.Value    := CityField.Value;
    OStateField.Value   := StateField.Value;
    OZipField.Value     := ZipField.Value;
    OPhoneField.Value   := ValidPhone(PhoneField.Value);
  end;
end;

procedure TInspGenForm.CorrButtonClick(Sender: TObject);
Var VioCount   : Integer;
    InspTickID : String;
begin
  inherited;
  If BooleanMessageDlg('Compete and Compliant, are you sure?') then begin
    VioCount := 0;
    Open_Query('VIO',false,'SELECT VIOSTAT.OPENVIO FROM VIO LEFT JOIN VIOSTAT ON (VIO.VIOSTATID = VIOSTAT.VIOSTATID) WHERE VIO.INSPID = ' + pk);
    While Not A('VIO').Eof do begin
      If tdbfield('VIO','OPENVIO') = 'Y' then
        VioCount := VioCount + 1;
      A('VIO').Skip(1);
    end;
    CloseApollo('VIO');

    If VioCount > 0 then
      ShowMessage('There are still open violations')
    else begin
      InspStatIDField.Value := SQLLookUp('CO','CODE','INSPSTAT','INSPSTATID');
      DateTimeEndField.Value                                 := now;
      PersIDCompField.Value                                  := GlobalPersID;
      TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
      SetButtonShape;
      InspTickID := UpdateInspTick(PK, 'CO', 'CRI', 'Completed and Compliant', 'Fire Inspector inspected premises and all violations are cleared.');
      RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
    end;
  end;
end;

procedure TInspGenForm.EvLengthButtonClick(Sender: TObject);
begin
  EvLengthFieldEnter(self);
end;

procedure TInspGenForm.EvLengthFieldEnter(Sender: TObject);
Var EvLength : Real;
begin
  If (AnyStrToFloat(EvLengthField.Value) = 0) and (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then begin
    EvLength            := 24 * (DateTimeEndField.Value - DateTimeStartField.Value);
    EvLengthField.Value := FormatFloat('###.##',EvLength);
  end;    
end;

procedure TInspGenForm.FormCreate(Sender: TObject);
begin
  if SqlTableRecCount('SELECT COUNT(*) FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID')) > 0 then begin
    SCHDLOCIDFIELD.Visible := True;
    SCHDLOCIDLabel.Visible := True;
  end;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TInspGenForm(GetFormOfType(TInspGenForm)),GenPanel);
end;

procedure TInspGenForm.FormShow(Sender: TObject);
begin
  InspNumField.Visible     := (mFireID = '73914') or (mFireID = '02113') or (mFireID = '12345') or (mFireID = '27188') or (mFireID = '23118');
  InspNumLabel.Visible     := (mFireID = '73914') or (mFireID = '02113') or (mFireID = '12345') or (mFireID = '27188') or (mFireID = '23118');
  NextInspButton.Visible   := (mFireID = '27188') or (mFireID = '23118');
  NextInspButton.Enabled   := (mFireID = '27188') or (mFireID = '23118');
  BillPanel.Visible        := (mFireID <> '02113'); //did this per kevins request. He says he doesn't need that section.
  PersIDCompLabel.Visible  := (mFireID = '12345');
  PersIDCompField.Visible  := (mFireID = '12345');
  InspPriorIDLabel.Visible := (mFireID = '12345');
  CheckNumField.Visible    := (mFireID = '01920');
  CheckNumLabel.Visible    := (mFireID = '01920');
  UpdateButton.Visible := True;
  InspPriorIDField.Visible := (mFireID = '12345');
  AlpinePanel.Visible      := (mFireID = '12345') and AlpineLogIn;
  ViewButton.Enabled       := (PropIDField.Value <> '') AND not FormExists('PROPForm');
  Email2Field.Visible      := (mFireID = '06001'); 
  
  If mFireID = '12345' then 
    SetButtonShape;
  if (mFireID = '70814') and (UserPersIDField.Value = '') then
    UserPersIDField.Value   := GlobalPersID;
end;

//DONT TOUCH THIS WITHOUT ASKING DOUG WEBER
procedure TInspGenForm.InspTypeIDFieldExit(Sender: TObject);
begin
  If (SqlTableRecCount('SELECT COUNT(*) FROM INSPCODETEMP WHERE INSPTYPEID = ' + pkValue(InspTypeIDField.Value)) > 0) then
    TInspform(GetFormOfType(TInspForm)).InspVioCheckTab.TabVisible := true
  else
    TInspform(GetFormOfType(TInspForm)).InspVioCheckTab.TabVisible := false;    
end;


procedure TInspGenForm.InspTypeIDFieldSuccessfulValidate(Sender: TObject);
var rFee: real;
begin
  inherited;
  rFee := AnyStrToFloat(SqlLookup(InspTypeIDField.Value,'INSPTYPEID','INSPTYPE','INSPFEE'));
  if rFee <> 0 then begin
    if BooleanMessageDlg('Set Bill Amount to $'+formatfloat('#,##0.00',rFee)) then
      AmountBilledField.Value := floattostr(rFee);
  end;
end;

procedure TInspGenForm.LoadParcelRecord(FPropID: String);
begin
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  Open_Query('PROPSEL',false,'SELECT * FROM PROP WHERE PROPID = ' + FPropID);
  InspNumField.Enabled       := CheckSecVar('INSPEDIT');
  If tdbField('PROPSEL','COMPANY')<>'' then
    NameField.Value := tdbfield('PROPSEL','COMPANY')
  else
    NameField.Value := tdbfield('PROPSEL','PLASTNAME');

  If mFIREID = '30019' then
    NameField.Value := tdbfield('PROPSEL','BUSINESS_N');

  If mFIREID = 'EGELS' then
    SchdLocIDField.Value := tdbfield('PROPSEL','SCHDLOCID');

  If mFIREID = '55234' then begin
    ContactField.Value := alltrim(tdbfield('PROPSEL','PFIRSTNAME') + ' ' + tdbfield('PROPSEL','PLASTNAME'));
    EmailField.Value   := alltrim(tdbfield('PROPSEL','EMAIL'));
  end;

  if mFireID = '06001' then begin
    ContactField.Value := alltrim(tdbfield('PROPSEL','FIRSTPERS'));
    Email2Field.Value   := alltrim(tdbfield('PROPSEL','EMAIL2'));
  end;

  ONameField.Value    := tdbfield('PROPSEL','OLASTNAME');

  If mFireID ='02113' then begin
    OContactField.Value := tdbfield('PROPSEL','OLASTNAME');
    ContactField.Value  := tdbfield('PROPSEL','PLASTNAME');
    NameField.Value     := ' ';
    ONameField.Value    := ' ';
  end;

  PropIDField.Value   := tdbfield('PROPSEL','PROPID');
  StrNumField.Value   := tdbfield('PROPSEL','STRNUM');
  StreetField.Value   := tdbfield('PROPSEL','STREET');
  RoomAptField.Value  := tdbfield('PROPSEL','ROOMAPT');
  CityField.Value     := tdbfield('PROPSEL','CITY');
  StateField.Value    := tdbfield('PROPSEL','STATE');
  ZipField.Value      := tdbfield('PROPSEL','ZIP');
  PhoneField.Value    := ValidPhone(tdbfield('PROPSEL','PHONE'));
  OAddressField.Value := tdbfield('PROPSEL','OADDRESS');
  OCityField.Value    := tdbfield('PROPSEL','OCITY');
  OStateField.Value   := tdbfield('PROPSEL','OSTATE');
  OZipField.Value     := tdbfield('PROPSEL','OZIP');
  OPhoneField.Value   := ValidPhone(tdbfield('PROPSEL','OPHONE'));
  if tdbfield('PROPSEL','INSPTYPEID') <> '' then
    InspTypeIDField.Value    := sqllookup(tdbfield('PROPSEL','INSPTYPEID'),'INSPTYPEID','INSPTYPE','INSPTYPEID');
  CloseApollo('PROPSEL');
end;
 
//Added for Millville, Halifax
procedure TInspGenForm.NextInspButtonClick(Sender: TObject);
var InspCode   : String;
    Start      : String;
begin
  inherited;
  if (InspNumField.Value='') and (InspTypeIDField.Value<>'') and (DateTimeStartField.Value>0) then begin
    InspCode := SqlLookup(InspTypeIDField.Value,'INSPTYPEID','INSPTYPE','CODE');
    if (InspCode<>'')  then begin
      Start := InspCode+'.'+FormatDateTime('YY',DateTimeStartField.Value);
      InspNumField.Value := GetNextVal(GlobalAdoConnection,
        'SELECT MAX(INSPNUM) FROM INSP WHERE INSPNUM LIKE '+ AddExpr(Start+'%') + ' AND INSPTYPEID = ' + InspTypeIDField.Value,Start+'-'+'0001');            //ADDED THE INSPTYPEID TO MAKE THE INSP NUMBER UNIQUE TO THE TYPE OF INSPECTION
    end;
  end else begin
    ShowMessage('You must select an Inspection type and start time')
  end;
end;

procedure TInspGenForm.OCityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  OStateField.Text  := GetField('CITY','STATE').AsString;
  OZipField.Text    := GetField('CITY','ZIP').AsString;
  CloseApollo('CITY');
end;

procedure TInspGenForm.PermitButtonClick(Sender: TObject);
Var PermitID : String;
begin
  inherited;
  Open_Query('PERMIT',true,'SELECT * FROM PERMIT WHERE INSPID = ' + pkValue(PK));
  If Not A('PERMIT').RecordsExist then begin
    A('PERMIT').Append;
    GetField('PERMIT','PROPID').AsString         := PropIDField.Value;
    GetField('PERMIT','INSPID').AsString         := PK;
    GetField('PERMIT','DATEAPPL').AsDateTime     := Now;
  //added this for the ROCCC departments
    if (MFireid = '23118') then begin
      GetField('PERMIT','ONAME').AsString      := ONameField.Value;
      GetField('PERMIT','OSTRNUM').AsString    := StrNumField.Value;
      GetField('PERMIT','OSTREET').AsString    := StreetField.Value;
      GetField('PERMIT','OROOMAPT').AsString   := RoomAptField.Value;
      GetField('PERMIT','OEMAIL').AsString     := EmailField.Value;
      GetField('PERMIT','OPHONE').AsString     := PhoneField.Value;
      GetField('PERMIT','OCITY').AsString      := CityField.Value;
      GetField('PERMIT','OSTATE').AsString     := StateField.Value;
      GetField('PERMIT','OZIP').AsString       := ZipField.Value;
      GetField('PERMIT','ACONTACT').AsString   := OContactField.Value;
      GetField('PERMIT','ACOMPANY').AsString   := NameField.Value;
    end;

    A('PERMIT').Post;



    PermitID := GetField('PERMIT','PERMITID').AsString;
  end else begin
    PermitID := GetField('PERMIT','PERMITID').AsString;
  end;
  CloseApollo('PERMIT');
  TInspform(GetFormOfType(TInspForm)).SaveButton.Click;
  RunAlpineForm(TPermitForm,PermitID,'PERMIT',TPermitForm.NewRecord);
end;

procedure TInspGenForm.PersIDCompFieldEnter(Sender: TObject);
begin
  PersIDCompField.SqlExpr := 'SELECT PERSID, LNAME, FNAME, PERSCODE FROM PERS WHERE INSPECTOR = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TInspGenForm.PersIDFieldEnter(Sender: TObject);
begin
  if mFireID = '07170' then
    PersIDField.SqlExpr := 'SELECT PERSID, LNAME, FNAME, PERSCODE FROM PERS ORDER BY LNAME, FNAME'
  else
    PersIDField.SqlExpr := 'SELECT PERSID, LNAME, FNAME, PERSCODE FROM PERS WHERE INSPECTOR = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TInspGenForm.PersIDFieldExit(Sender: TObject);
begin
    if UnitNumField.Value = '' then
      UnitNumField.Value        := SQLLookUp(PersIDField.Value,'PERSID','PERS','UNITNUM');
end;

procedure TInspGenForm.ReinspectButtonClick(Sender: TObject);
Var InspID  : String;
begin
  inherited;
  InspID := '';
  If DateTimeReturnField.Value = 0 then begin
    ShowMessage('You must enter an Abate date');
    abort;
  end;
  Open_Query('INSP',true,'SELECT * FROM INSP WHERE ORGINSPID = ' + pk);
  If A('INSP').RecordsExist then begin
    ShowMessage('Return Inspection already exists.');
  end else begin
    A('INSP').Append;
    GetField('INSP','ORGINSPID').AsString       := pk;
    GetField('INSP','INSPTYPEID').AsString      := InspTypeIDField.Value;
    GetField('INSP','PERSID').AsString          := PersIDField.Value;
    if MFireID = '01920' then
      GetField('INSP','INSPSTATID').AsString      := '3';
    GetField('INSP','FDID').AsString            := FDIDField.Value;
    GetField('INSP','DATETIMESCHD').AsDateTime  := Now;
    GetField('INSP','DATETIMESTART').AsDateTime := DateTimeReturnField.Value;
    GetField('INSP','NAME').AsString            := NameField.Value;
    GetField('INSP','PROPID').AsString          := PropIDField.Value;
    GetField('INSP','BUILDING').AsString        := BuildingField.Value;
    GetField('INSP','CONTACT').AsString         := ContactField.Value;
    GetField('INSP','STRNUM').AsString          := StrNumField.Value;
    GetField('INSP','STREET').AsString          := StreetField.Value;
    GetField('INSP','ROOMAPT').AsString         := RoomAptField.Value;
    GetField('INSP','CITY').AsString            := CityField.Value;
    GetField('INSP','STATE').AsString           := StateField.Value;
    GetField('INSP','ZIP').AsString             := ZipField.Value;
    GetField('INSP','PHONE').AsString           := PhoneField.Value;
    GetField('INSP','ONAME').AsString           := oNameField.Value;
    GetField('INSP','OCONTACT').AsString        := oContactField.Value;
    GetField('INSP','OADDRESS').AsString        := oAddressField.Value;
    GetField('INSP','OCITY').AsString           := oCityField.Value;
    GetField('INSP','OSTATE').AsString          := oStateField.Value;
    GetField('INSP','OZIP').AsString            := oZipField.Value;
    GetField('INSP','OPHONE').AsString          := oPhoneField.Value;

    A('INSP').Post;

    InspID               := GetField('INSP','INSPID').AsString;
    
    ShowMessage('Return Inspection has been generated.  Inspection Number is ' + InspID);
  end;

  CloseApollo('INSP');
end;

procedure TInspGenForm.RFIButtonClick(Sender: TObject);
Var InspTickID : String;
begin                                                                 
  InspStatIDField.Value := SQLLookUp('RFI','CODE','INSPSTAT','INSPSTATID');
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  SetButtonShape;
  InspTickID := UpdateInspTick(PK, 'RFI', 'RFI', 'Issues with this inspection.', 'The inspection has been referred to the fire inspector office.');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.RCButtonClick(Sender: TObject);
Var InspTickID : String;
begin
  InspStatIDField.Value := SQLLookUp('RC','CODE','INSPSTAT','INSPSTATID');
  PersIDField.Value     := GlobalPersID;
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  SetButtonShape;
  InspTickID := UpdateInspTick(PK, 'RC', 'CI', 'Completed.', 'Inspection done, and violations found.');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.REFFSSButtonClick(Sender: TObject);
Var InspTickID : String;
begin
  InspStatIDField.Value := SQLLookUp('RSS','CODE','INSPSTAT','INSPSTATID');
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  SetButtonShape;
  InspTickID := UpdateInspTick(PK, 'RSS', 'RSS', 'This is the last resort.', 'This has been reffered to the fire inspector because they will not fix the violations.');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.UpdateButtonClick(Sender: TObject);
var PropID : string;
begin
  If PropIDField.Value <> '' then begin
    Open_Query('PROP',true,'SELECT * FROM PROP WHERE PROPID = ' + pkvalue(PropIDField.Value));
    GetTable('PROP').edit;

    getfield('PROP','COMPANY').AsString                := NameField.Value;
    getfield('PROP','PFIRSTNAME').AsString             := ContactField.Value;
    getfield('PROP','OLASTNAME').AsString              := ONameField.Value;
    getfield('PROP','OADDRESS').AsString               := OAddressField.Value;
    getfield('PROP','OCITY').AsString                  := OCityField.Value;
    getfield('PROP','OSTATE').AsString                 := OStateField.Value;
    getfield('PROP','OZIP').AsString                   := OZipField.Value;
    getfield('PROP','PHONE').AsString                  := PhoneField.Value;
    getfield('PROP','OPHONE').AsString                 := OPhoneField.Value;
    getfield('PROP','ZIP').AsString                    := ZipField.Value;
    getfield('PROP','STATE').AsString                  := StateField.Value;
    getfield('PROP','CITY').AsString                   := CityField.Value;
    getfield('PROP','ROOMAPT').AsString                := RoomAptField.Value;
    getfield('PROP','STREET').AsString                 := StreetField.Value;
    getfield('PROP','STRNUM').AsString                 := StrNumField.Value;
    GetTable('PROP').post;
    CloseApollo('PROP');
    ShowMessage('Record successfully edited');
  end else
    ShowMessage('This property does not exist');
end;

procedure TInspGenForm.UserPersIDFieldEnter(Sender: TObject);
begin
  UserPersIDField.SqlExpr := 'SELECT PERSID, LNAME, FNAME, PERSCODE FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TInspGenForm.ViewButtonClick(Sender: TObject);
begin
  If (PropIDField.Value <> '') then begin
    RunAlpineForm(TPropForm,PropIDField.Value,'PROP',TPropForm.NewRecord);
  end;
end;

procedure TInspGenForm.VLCTButtonClick(Sender: TObject);
Var InspTickID : String;
begin
  InspStatIDField.Value := SQLLookUp('VC','CODE','INSPSTAT','INSPSTATID');
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  SetButtonShape;
  InspTickID := UpdateInspTick(PK, 'VC', 'VC', 'Still open violations.', 'The fire inspector inspected the address and cited violations.');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.SCButtonClick(Sender: TObject);
Var InspTickID : String;
begin
  InspStatIDField.Value   := SQLLookUp('SC','CODE','INSPSTAT','INSPSTATID');
  DateTimeSchdField.Value := Now;
  UserPersIDField.Value   := GlobalPersID;
  TInspform(GetFormOfType(TInspForm)).SaveButton.Enabled := true;
  SetButtonShape;
  InspTickID            := UpdateInspTick(PK, 'SC', 'SI', 'Scheduled the inspection.', '');
  RunAlpineFormShowModal(TInspTickForm,InspTickID,'INSPTICK',TInspTickForm.NewRecord);
end;

procedure TInspGenForm.SCHDLOCIDFIELDEnter(Sender: TObject);
begin
  SCHDLOCIDFIELD.LookupFormWidth := 320;
  SCHDLOCIDFIELD.SQLExpr         := 'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID');
end;

procedure TInspGenForm.SetButtonShape;
Var VioCnt : Integer;
begin
  VioCnt                       := SqlTableRecCount('SELECT COUNT(*) FROM VIO WHERE INSPID = ' + PkValue(PK));
  SCShape     .Visible         := (InspStatIDField.Value = '1');
  COShape     .Visible         := (InspStatIDField.Value = '2') and (VioCnt = 0);
  RCShape     .Visible         := (InspStatIDField.Value = '3');
  CorrShape   .Visible         := (InspStatIDField.Value = '2') and (VioCnt > 0);
  RFIShape    .Visible         := (InspStatIDField.Value = '7') or (InspStatIDField.Value = '8');
  VCShape     .Visible         := (InspStatIDField.Value = '11');
  RSSShape    .Visible         := (InspStatIDField.Value = '12');
end;

end. 
