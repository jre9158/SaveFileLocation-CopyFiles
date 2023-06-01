unit SchdHist;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Menus,
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
  CusBtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AlpinePanel,
  AlpineBlockBrowse,
  ComCtrls;

type
  TSchdHistForm = class(TNormalBaseForm)
    Panel0B: TAlpinePanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DescrLabel: TLabel;    
    PersIDField: TAlpineLookup;
    SchdRankIDField: TAlpineLookup;
    SchdLocIDField: TAlpineLookup;
    SchdShiftNameIDField: TAlpineLookup;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel2: TAlpinePanel;
    Label1: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    DateTimeStartField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    ShiftLengthField: TAlpineEdit;
    ShiftLengthButton: TAlpineGlowButton;
    Label2: TLabel;
    Label10: TLabel;
    NfirsAttTaskIDLabel: TLabel;
    EMSAttTaskIDLAbel: TLabel;
    SchdTypeIDField: TAlpineLookup;
    DescrField: TAlpineEdit;
    NfirsAttTaskIDField: TAlpineLookup;
    EmsAttTaskIDField: TAlpineLookup;
    SchdHistControl: TPageControl;
    AppTab: TTabSheet;
    SchdReqTab: TTabSheet;
    SchdReqBrowse: TAlpineBlockBrowse;
    Label13: TLabel;
    SchdStatusIDField: TAlpineLookup;
    Label9: TLabel;
    DateTimeApprovedField: TAlpineDateTime;
    Label11: TLabel;
    AppPersIDField: TAlpineLookup;
    Label14: TLabel;
    ReplacePersIDField: TAlpineLookup;
    SchdHistLockButton: TAlpineGlowButton;
    SplitButton: TAlpineGlowButton;
    CustomFields: TTabSheet;
    DateTimeStartButton: TAlpineGlowButton;
    DateTimeEndButton: TAlpineGlowButton;
    Label15: TLabel;
    VerbalField: TAlpineEdit;
    Label8: TLabel;
    SchdSubTypeIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    RadioNumLabel: TLabel;
    RadioNumField: TAlpineEdit;
    PunchPanel: TAlpinePanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DateTimeInField: TAlpineDateTime;
    DateTimeOutField: TAlpineDateTime;
    ActualLengthField: TAlpineEdit;
    ActualLengthButton: TAlpineGlowButton;
    DateTimeInButton: TAlpineGlowButton;
    DateTimeOutButton: TAlpineGlowButton;
    ActualVerbalField: TAlpineEdit;
    procedure ShiftLengthButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PersIDFieldSuccessfulValidate(Sender: TObject);
    procedure SchdShiftNameIDFieldSuccessfulValidate(Sender: TObject);
    procedure ShiftLengthFieldEnter(Sender: TObject);
    procedure LockButtonClick(Sender: TObject);
    procedure SchdReqTabShow(Sender: TObject);
    procedure PersIDFieldSetDescription(Sender: TObject);
    procedure SplitButtonClick(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure DateTimeStartButtonClick(Sender: TObject);
    procedure DateTimeEndButtonClick(Sender: TObject);
    procedure SchdTypeIDFieldEnter(Sender: TObject);
    procedure SchdLocIDFieldEnter(Sender: TObject);
    procedure SchdSubTypeIDFieldEnter(Sender: TObject);
    procedure SchdRankIDFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure ReplacePersIDFieldEnter(Sender: TObject);
    procedure NfirsAttTaskIDFieldEnter(Sender: TObject);
    procedure EmsAttTaskIDFieldEnter(Sender: TObject);
    procedure SchdStatusIDFieldEnter(Sender: TObject);
    procedure AppPersIDFieldEnter(Sender: TObject);
    procedure DateTimeInButtonClick(Sender: TObject);
    procedure DateTimeOutButtonClick(Sender: TObject);
    procedure ActualLengthButtonClick(Sender: TObject);
    procedure ActualLengthFieldEnter(Sender: TObject);
  private
    { Private declarations }
    function GetShiftLength(DateTimeStart, DateTimeEnd : TDateTime): String;
    function GetShiftLengthFromLength(ShiftLength: Real): String;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoAfterSetViewOnly; override;
    procedure SchdReqFormNewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
    class procedure SpecialClick(Sender: TObject); override;
    class procedure SchdHistRecurrenceClick(Sender: TObject);
  end;
var
  SchdHistForm: TSchdHistForm;

implementation
uses GenFunc,
     SysSet,
     SecSet,
     CommonFunc,
     CommonVar,
     SchdReq,
     Schd,
     SchdSplit,
     CustSchdHist,
     SchdHistRecurrence,
     SortGridView,
     Main;

{$R *.DFM}

class procedure TSchdHistForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('DATETIMESTART').AsDateTime := Now;
end;

procedure TSchdHistForm.FormCreate(Sender: TObject);
Var Locked            : String;
    mCustSchdHistForm : TCustSchdHistForm;
begin
  inherited;
  ViewOnly := true;
  Locked   := SqlLookUp(pk,'SCHDHISTID','VWSCHDHIST','LOCKED');

  ViewOnly := not CommonCanEditShift(Locked);

  EMSAttTaskIDLabel.Visible     := CheckModule('EMS');
  EMSAttTaskIDField.Visible     := CheckModule('EMS');
  SchdReqBrowse.Setup('SCHDREQ','SCHDHISTID',pk,TSchdReqForm,SchdReqFormNewRecord);

  ShiftLengthButton.Enabled     := Not ViewOnly;
  DateTimeStartButton.Enabled   := Not ViewOnly;
  DateTimeEndButton.Enabled     := Not ViewOnly;
  CustomFields.TabVisible       := TCustSchdHistForm.ShowTab;
  CreateSubForm(TCustSchdHistForm,CustomFields);
end;

procedure TSchdHistForm.FormShow(Sender: TObject);
begin
  inherited;
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then begin
    If mFireID = '23082' then
      VerbalField.Value  := GetShiftLengthFromLength(StrToFloat(ActualLengthField.Value))
    else
      VerbalField.Value  := GetShiftLength(DateTimeStartField.Value, DateTimeEndField.Value);
  end;
  If (DateTimeInField.Value > 0) and (DateTimeOutField.Value > 0) then begin
    ActualVerbalField.Value        := GetShiftLength(DateTimeInField.Value, DateTimeOutField.Value);
  end;

  SchdReqTab.TabVisible         := SqlTableRecCount('SELECT COUNT(*) FROM SCHDREQTYPE') > 0;
  SchdHistControl.ActivePage    := AppTab;
  VerbalField.Enabled           := false;
  AppTab.TabVisible             := SqlTableRecCount('SELECT COUNT(*) FROM SCHDSTATUS') > 0;

  If mFireID = '07170' then begin
    RadioNumField.Visible := True;
    RadioNumLabel.Visible := True;
    RadioNumField.Enabled := True;
    RadioNumLabel.Enabled := True;
    RadioNumField.DataField:= 'RADIONUM';
  end;

  If mFireID = '28019' then
    DescrLabel.Caption := 'Portable';

  PunchPanel.Visible := (mFireID = '12345') or (mFireID = '34032') or (DateTimeInField.Value > 0); 
  Height             := Height - IIfI(PunchPanel.Visible,0,PunchPanel.Height);

  If mFireID = '23300' then begin
    PersIDField         .AlpineColors.NonEditColor := cllime;
    SchdRankIDField     .AlpineColors.NonEditColor := cllime;
    SchdLocIDField      .AlpineColors.NonEditColor := cllime;
    SchdShiftNameIDField.AlpineColors.NonEditColor := cllime;
    DateTimeStartField  .AlpineColors.NonEditColor := cllime;
    DateTimeEndField    .AlpineColors.NonEditColor := cllime;
    ShiftLengthField    .AlpineColors.NonEditColor := cllime;
    ReplacePersIDField  .AlpineColors.NonEditColor := cllime;
    SchdTypeIDField     .AlpineColors.NonEditColor := cllime;
    UnitNumField        .AlpineColors.NonEditColor := cllime;
    NfirsAttTaskIDField .AlpineColors.NonEditColor := cllime;
    DescrField          .AlpineColors.NonEditColor := cllime;
  end;

  If mFireID = '28017' then begin
    If (UnitNumField.Value <> '') and (NfirsAttTaskIDField.Value = '') then begin
      AlpinePanel2.SetFocus;
      NfirsAttTaskIDField.SetFocus;
    end;
  end;

  If Not AppTab.TabVisible and Not SchdReqTab.TabVisible and Not CustomFields.TabVisible then begin
    SchdHistControl.Visible := false;
    Height                  := Height - IIfI(SchdHistControl.Visible,0,SchdHistControl.Height);
  end;
end;

procedure TSchdHistForm.NfirsAttTaskIDFieldEnter(Sender: TObject);
begin
  inherited;
  NfirsAttTaskIDField.LookupFormWidth := 320;
  NfirsAttTaskIDField.SQLExpr         := 'SELECT * FROM NFIRSATTTASK WHERE ' + GetFdidSQL('NFIRSATTTASK.FDID') + ' ORDER BY CODE';
end;

function TSchdHistForm.GetShiftLength(DateTimeStart, DateTimeEnd : TDateTime): String;
Var ShiftLength : Real;
    HourVar     : Real;
    MinuteVar   : Real;
begin
  ShiftLength    := 24 * (DateTimeEnd - DateTimeStart);
  HourVar        := Trunc(ShiftLength);
  MinuteVar      := (ShiftLength - HourVar) * 60;
  GetShiftLength := FormatFloat('#0',HourVar) +  ' Hour(s) ' + FormatFloat('#0',MinuteVar) + ' Minute(s)';
end;

function TSchdHistForm.GetShiftLengthFromLength(ShiftLength: Real): String;
Var HourVar     : Real;
    MinuteVar   : Real;
begin
  HourVar                  := Trunc(ShiftLength);
  MinuteVar                := (ShiftLength - HourVar) * 60;
  If FormatFloat('#0',MinuteVar) = '0' then
    GetShiftLengthFromLength := FormatFloat('#0',HourVar) +  ' Hour(s) '
  else
    GetShiftLengthFromLength := FormatFloat('#0',HourVar) +  ' Hour(s) ' + FormatFloat('#0',MinuteVar) + ' Minute(s)';
end;

procedure TSchdHistForm.LockButtonClick(Sender: TObject);
begin
  inherited;
  SaveButton.Click;
  TSchdForm.CommonApproveAndLockSchdHist(pk);
  RefreshForm;
end;

procedure TSchdHistForm.ShiftLengthButtonClick(Sender: TObject);
begin
  inherited;
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then begin
    ShiftLengthField.Value   := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );
    VerbalField.Value        := GetShiftLength(DateTimeStartField.Value, DateTimeEndField.Value);
  end;
end;   

procedure TSchdHistForm.ShiftLengthFieldEnter(Sender: TObject);
begin
  inherited;
    ShiftLengthButtonClick(self);
end;

procedure TSchdHistForm.SplitButtonClick(Sender: TObject);
begin
  inherited;
  SchdSplitForm := TSchdSplitForm.Create(application,PK);
  SchdSplitForm.ShowModal;
  SchdSplitForm.Free;
end;

procedure TSchdHistForm.UnitNumFieldEnter(Sender: TObject);
begin
  inherited;
  UnitNumField.LookupFormWidth := 320;
  UnitNumField.SQLExpr         := 'SELECT * FROM VWTRUCK WHERE ' + GetFdidSQL('VWTRUCK.FDID') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM';
end;

procedure TSchdHistForm.SchdLocIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdLocIDField.LookupFormWidth := 320;
  If mfireID = '09206' then begin
     If Not CheckSecVar('SCHDPRIVATEVIEW') then
       SchdLocIDField.SqlExpr  := 'SELECT * FROM SCHDLOC WHERE (PRIVATE = ''N'' OR PRIVATE = '''' OR PRIVATE IS NULL) ORDER BY CODE, DESCR';
  end else
    SchdLocIDField.SQLExpr :=  'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE';
end;

procedure TSchdHistForm.SchdRankIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdRankIDField.LookupFormWidth := 320;
  SchdRankIDField.SQLExpr         := 'SELECT * FROM SCHDRANK WHERE ' + GetFdidSQL('SCHDRANK.FDID') + ' ORDER BY CODE';
end;

procedure TSchdHistForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdShiftNameIDField.LookupFormWidth := 320;
  SchdShiftNameIDField.SQLExpr         := 'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY CODE';
end;

procedure TSchdHistForm.SchdShiftNameIDFieldSuccessfulValidate(Sender: TObject);
Var DateTimeNow : String;
begin
  inherited;
  DateTimeNow := AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',Now));
  If (DateTimeStartField.Value = 0) and (DateTimeEndField.Value = 0) then begin
    Open_Query('SCHDSHIFTTEMP',false,'SELECT * FROM SCHDSHIFTTEMP WHERE SCHDSHIFTNAMEID = ' + SchdShiftNameIDField.Value + ' AND DATETIMESTART <= ' + DateTimeNow + ' AND DATETIMEEND >= ' + DateTimeNow);
    If A('SCHDSHIFTTEMP').RecordsExist then begin
      DateTimeStartField.Value := GetField('SCHDSHIFTTEMP','DATETIMESTART').AsDateTime;
      DateTimeEndField.Value   := GetField('SCHDSHIFTTEMP','DATETIMEEND').AsDateTime;
      ShiftLengthField.Value   := GetField('SCHDSHIFTTEMP','SHIFTLENGTH').AsString;
      SaveButton.Enabled       := true;
    end;
    CloseApollo('SCHDSHIFTTEMP');
  end;
end;

procedure TSchdHistForm.SchdStatusIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdStatusIDField.LookupFormWidth := 320;
  SchdStatusIDField.SQLExpr         := 'SELECT * FROM SCHDSTATUS WHERE ' + GetFdidSQL('SCHDSTATUS.FDID') + ' ORDER BY CODE';
end;

procedure TSchdHistForm.SchdSubTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdSubTypeIDField.LookupFormWidth := 320;
  SchdSubTypeIDField.SQLExpr         := 'SELECT * FROM SCHDSUBTYPE WHERE SCHDTYPEID = ' + pkValue(SchdTypeIDField.Value);
end;

procedure TSchdHistForm.SchdTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdTypeIDField.LookupFormWidth    := 320;
  If mfireID = '09206' then begin
    If Not CheckSecVar('SCHDPRIVATEVIEW') then
      SchdTypeIDField.SqlExpr  := 'SELECT * FROM SCHDTYPE WHERE (PRIVATE = ''N'' OR PRIVATE = '''' OR PRIVATE IS NULL) ORDER BY CODE, DESCR';
  end else
    SchdTypeIDField.SQLExpr := 'SELECT * FROM SCHDTYPE WHERE ' + GetFdidSQL('SCHDTYPE.FDID') + ' ORDER BY CODE';
end;

procedure TSchdHistForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.LookupFormWidth := 400;
  PersIDField.LookUpCode      := IIf(at('PERSCODE',GlobalPersSort) > 0,'PERSBYPERSCODE','PERS');
  PersIDField.SqlExpr         := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + 'ORDER BY ' + GlobalPersSort;
end;

procedure TSchdHistForm.PersIDFieldSetDescription(Sender: TObject);
begin
  inherited;
  SetLastNameFirstNameForLookup(TAlpineLookup(Sender));
end;

procedure TSchdHistForm.PersIDFieldSuccessfulValidate(Sender: TObject);
Var DateTimeStart : String;
begin
  inherited;
  Open_Query('PERS',false,'SELECT SCHDLOCID, SCHDRANKID FROM PERS WHERE PERSID = ' + PkValue(PersIDField.Value));
  If SchdLocIDField.Value = '' then
    SchdLocIDField.Value := GetField('PERS','SCHDLOCID').AsString;
  SchdRankIDField.Value := GetField('PERS','SCHDRANKID').AsString;
  CloseApollo('PERS');
end;

procedure TSchdHistForm.ReplacePersIDFieldEnter(Sender: TObject);
begin
  inherited;
  ReplacePersIDField.LookupFormWidth := 400;
  ReplacePersIDField.LookUpCode      := IIf(at('PERSCODE',GlobalPersSort) > 0,'PERSBYPERSCODE','PERS');
  ReplacePersIDField.SqlExpr         := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
end;

procedure TSchdHistForm.ActualLengthButtonClick(Sender: TObject);
begin
  inherited;
  If (DateTimeInField.Value > 0) and (DateTimeOutField.Value > 0) then begin
    ActuaLLengthField.Value := FormatFloat('###.##',24 * (DateTimeOutField.Value - DateTimeInField.Value) );
    ActualVerbalField.Value := GetShiftLength(DateTimeInField.Value, DateTimeOutField.Value);
  end;
end;

procedure TSchdHistForm.ActualLengthFieldEnter(Sender: TObject);
begin
  inherited;
  ActualLengthButtonClick(self); 
end;

procedure TSchdHistForm.AppPersIDFieldEnter(Sender: TObject);
begin
  inherited;
  AppPersIDField.LookupFormWidth := 400;
  AppPersIDField.LookUpCode      := IIf(at('PERSCODE',GlobalPersSort) > 0,'PERSBYPERSCODE','PERS');
  AppPersIDField.SqlExpr         := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
end;

procedure TSchdHistForm.DateTimeEndButtonClick(Sender: TObject);
begin
  inherited;
  DateTimeEndField.Value := now;
end;

procedure TSchdHistForm.DateTimeInButtonClick(Sender: TObject);
begin
  inherited;
  DateTimeInField.Value := now;
end;

procedure TSchdHistForm.DateTimeOutButtonClick(Sender: TObject);
begin
  inherited;
  DateTimeOutField.Value := now;
end;

procedure TSchdHistForm.DateTimeStartButtonClick(Sender: TObject);
begin
  inherited;
  DateTimeStartField.Value := now;
end;

procedure TSchdHistForm.SchdReqFormNewRecord(DataSet: TDataSet);
begin
  TSchdReqForm.NewRecord(DataSet);
  DataSet.FieldByName('SCHDHISTID').AsString    := PK;
  DataSet.FieldByname('DATEREQ').AsDateTime     := Now;
end;

procedure TSchdHistForm.SchdReqTabShow(Sender: TObject);
var iDays    : Integer;
    mMaxDays : Integer;
begin
  inherited;
  if not CheckSecVar('SCHDREQED') and CheckSecVar('SCHDREQADD') then begin
    mMaxDays := anystrtoint(SqlLookup(mFireID,'FDID','SCHDSET','CHANGEREQUESTMAXDAYS'));
    if mMaxDays<>0 then begin
      Open_Query('GETDATE',False,'SELECT DATETIMESTART FROM SCHDHIST WHERE SCHDHISTID = '+PK);
      iDays := round(GetField('GETDATE','DATETIMESTART').AsDateTime-Now);
      CloseApollo('GETDATE');
      If iDays>mMaxDays then
        SchdReqBrowse.FNewButton.Enabled := False;
    end;
  end;
end;

procedure TSchdHistForm.DoAfterSetViewOnly;
begin
  SchdReqBrowse.ViewOnly        := False;
  SchdReqBrowse.DeleteEnabled   := CheckSecVar('SCHDREQED');
  SchdReqBrowse.EditEnabled     := CheckSecVar('SCHDREQED');
  SchdReqBrowse.NewEnabled      := CheckSecVar('SCHDREQED') OR CheckSecVar('SCHDREQADD');
  SchdStatusIDField.Enabled     := False;
  DateTimeApprovedField.Enabled := False;
  AppPersIDField.Enabled        := False;
  SchdHistLockButton.Enabled    := CheckSecVar('SCHDLOCK');
  SplitButton.Enabled           := Not ViewOnly;
  AuditButton.Enabled           := CheckSecVar('SECLOG');

  if mfireid = '07130' then begin
    PersIDField.Enabled          := CheckSecVar('SCHDSETUP');
    SchdRankIDField.Enabled      := CheckSecVar('SCHDSETUP');
    SchdLocIDField.Enabled       := CheckSecVar('SCHDSETUP');
    SchdShiftNameIDField.Enabled := CheckSecVar('SCHDSETUP');
  end;
end;

procedure TSchdHistForm.DoBeforePost(Sender: TObject);
var bContinue: Boolean;
begin
  // mjs Elizabeth has a custom field that is editable even though form is "ViewOnly".  And they don't want record to become unapproved if saved.
  if mFireID = '20004' then
    bContinue := Not ViewOnly
  else
    bContinue := True;
  if bContinue then begin
    SchdStatusIDField.Value     := '';
    DateTimeApprovedField.Value := 0;
    AppPersIDField.Value        := '';
  end;
end;

procedure TSchdHistForm.EmsAttTaskIDFieldEnter(Sender: TObject);
begin
  inherited;
  EmsAttTaskIDField.LookupFormWidth := 320;
  EmsAttTaskIDField.SQLExpr         := 'SELECT * FROM EMSATTTASK WHERE ' + GetFdidSQL('EMSATTTASK.FDID') + ' ORDER BY CODE';
end;

class procedure TSchdHistForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If Sender is TNewView then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);

    If CheckSecVar('SCHDSETUP') then begin
      m         := TMenuItem.Create(TNewView(Sender));
      m.Caption := 'Shift Recurrence';
      m.Onclick := SchdHistRecurrenceClick;
      TNewView(Sender).PopupMenu.Items.Add(m);
    end;
  end;
end;

class procedure TSchdHistForm.SchdHistRecurrenceClick(Sender: TObject);
var SchdHistID    : String;
    NewSchdHistID : String;
    NewView       : TNewView;
begin
  inherited;
  NewView := nil;
  If TMenuItem(Sender).Owner is TNewView then begin
    NewView    := TNewView(TMenuItem(Sender).Owner);
    SchdHistID := NewView.ViewGrid.GetValue('SCHDHISTID')
  end;
  SchdHistRecurrenceForm := TSchdHistRecurrenceForm.Create(application,SchdHistID);
  SchdHistRecurrenceForm.ShowModal;
  SchdHistRecurrenceForm.Free;
  NewView.RefreshGrid(SchdHistID,'','',True);
end;

end.
