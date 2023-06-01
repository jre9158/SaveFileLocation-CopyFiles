unit PersConfidential;

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
  AdvGroupBox;

type
  TPersonConfidentialForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel1: TPanel;
    AlpinePanel1: TAlpinePanel;
    Label37: TLabel;
    Label38: TLabel;
    PersReligionIDLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SocSecField: TAlpineEdit;
    DobField: TAlpineDateTime;
    PersRaceIDField: TAlpineLookup;
    AlpineEdit1: TAlpineEdit;
    DependField: TAlpineEdit;
    AlpineLookup2: TAlpineLookup;
    PersReligionIDField: TAlpineLookup;
    PersExpBrowse: TAlpineBlockBrowse;
    Label5: TLabel;
    SpouseField: TAlpineEdit;
    DobMailButton: TAlpineGlowButton;
    Label6: TLabel;
    AlpineEdit3: TAlpineEdit;
    AlpinePanel3: TAlpinePanel;
    Panel2: TPanel;
    PersBenBrowse: TAlpineBlockBrowse;
    PersContBrowse: TAlpineBlockBrowse;
    Label7: TLabel;
    PhoneField: TAlpineEdit;
    AlpineMemo1: TAlpineMemo;
    DeceasedLabelField: TLabel;
    DeceasedDateField: TAlpineDateTime;
    Panel3: TPanel;
    AlpinePanel2: TAlpinePanel;
    Label10: TLabel;
    Label14: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label36: TLabel;
    Label8: TLabel;
    DLNumField: TAlpineEdit;
    DLExpField: TAlpineDateTime;
    DLStateField: TAlpineEdit;
    PersDriverIDField: TAlpineLookup;
    PersDLClassIDField: TAlpineLookup;
    EmailButton: TAlpineGlowButton;
    AlpineEdit2: TAlpineEdit;
    AlpinePanel4: TAlpinePanel;
    Label16: TLabel;
    CemeteryLocField: TAlpineEdit;
    Label9: TLabel;
    AlpineEdit4: TAlpineEdit;
    DistResField: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure EmailButtonClick(Sender: TObject);
    procedure DobMailButtonClick(Sender: TObject);
    procedure SocSecFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure PersContNewRecord(DataSet: TDataSet);
    procedure PersBenNewRecord(DataSet: TDataSet);
    procedure PersExpNewRecord(DataSet: TDataSet);
    procedure PageRemindNewRecord(DataSet: TDataSet);
    procedure PageRemindDobNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  PersonConfidentialForm: TPersonConfidentialForm;

implementation
uses GenFunc,
     AppLst,
     CommonFunc,
     SchdHist,
     PersMedHist,
     PageRemind,
     CommonVar,
     SecSet,
     PersCont,
     PersExp,
     PersBen,
     CommonEncrypt;

{$R *.dfm}

procedure TPersonConfidentialForm.DobMailButtonClick(Sender: TObject);
Var PageRemindID : String;
begin
  If DobField.Value = 0 then
    ShowMessage('You must enter the date of birth')
  else begin
    Open_Query('PAGEREMIND',false,'SELECT PAGEREMINDID FROM PAGEREMIND WHERE TABLENAME = ' + AddExpr('PERS') + ' AND TABLERECID = ' + PK + ' AND FIELDNAME = ' + AddExpr('DOB'));
    If A('PAGEREMIND').RecordsExist then
      PageRemindID := GetField('PAGEREMIND','PAGEREMINDID').AsString
    else
      PageRemindID := '-1';
    CloseApollo('PAGEREMIND');
    RunAlpineForm(TPageRemindForm,PageRemindID,'PAGEREMIND',PageRemindDobNewRecord);
  end;
end;

procedure TPersonConfidentialForm.PageRemindDobNewRecord(DataSet: TDataSet);
Var NameVar          : String;
    PageRemindTypeID : String;
    CalendarIconID   : String;
begin
  Open_Query('PERS',false,'SELECT LNAME, FNAME FROM PERS WHERE PERSID = ' + pk);
  NameVar := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME'); 
  CloseApollo('PERS');
  PageRemindTypeID                                 := SqlMultiFieldLookUp(['PERS','DOB'],['TABLENAME','FIELDNAME'],'PAGEREMINDTYPE','PAGEREMINDTYPEID');
  CalendarIconID                                   := SqlMultiFieldLookUp(['PERS','DOB'],['TABLENAME','FIELDNAME'],'PAGEREMINDTYPE','CALENDARICONID');
  DataSet.FieldByname('TABLENAME').AsString        := 'PERS';
  DataSet.FieldByname('TABLERECID').AsString       := PK;
  DataSet.FieldByname('FIELDNAME').AsString        := 'DOB';
  DataSet.FieldByname('SUBJECT').AsString          := NameVar + #39 + 's Birthday';
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  DataSet.FieldByname('DATETIMEREMIND').AsDateTime := StrToDate(AlpineFormatDateTime('MM/DD',DOBField.Value) + '/' + AlpineFormatDateTime('YYYY',Now));
  DataSet.FieldByname('NARR').AsString             := 'Today is ' + NameVar + #39 + 's Birthday.';
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('PAGEREMINDTYPEID').AsString := PageRemindTypeID;
  DataSet.FieldByname('CALENDARICONID').AsString   := CalendarIconID;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
end;


procedure TPersonConfidentialForm.EmailButtonClick(Sender: TObject);
Var PageRemindID : String;
begin
  If DlExpField.Value = 0 then
    ShowMessage('You must enter the expiration date')
  else begin
    Open_Query('PAGEREMIND',false,'SELECT PAGEREMINDID FROM PAGEREMIND WHERE TABLENAME = ' + AddExpr('PERS') + ' AND TABLERECID = ' + PK + ' AND FIELDNAME = ' + AddExpr('DLEXP'));
    If A('PAGEREMIND').RecordsExist then
      PageRemindID := GetField('PAGEREMIND','PAGEREMINDID').AsString
    else
      PageRemindID := '-1';
    CloseApollo('PAGEREMIND');
    RunAlpineForm(TPageRemindForm,PageRemindID,'PAGEREMIND',PageRemindNewRecord);
  end;
end;

procedure TPersonConfidentialForm.PageRemindNewRecord(DataSet: TDataSet);
Var NameVar          : String;
    PageRemindTypeID : String;
begin
  Open_Query('PERS',false,'SELECT LNAME, FNAME FROM PERS WHERE PERSID = ' + pk);
  NameVar := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME');
  CloseApollo('PERS');

  PageRemindTypeID                                 := SqlMultiFieldLookUp(['PERS','DLEXP'],['TABLENAME','FIELDNAME'],'PAGEREMINDTYPE','PAGEREMINDTYPEID');

  DataSet.FieldByname('TABLENAME').AsString        := 'PERS';
  DataSet.FieldByname('TABLERECID').AsString       := PK;
  DataSet.FieldByname('FIELDNAME').AsString        := 'DLEXP';
  DataSet.FieldByname('SUBJECT').AsString          := 'Expiring Drivers License';
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  DataSet.FieldByname('DATETIMEREMIND').AsDateTime := DLExpField.Value - 30;
  DataSet.FieldByname('NARR').AsString             := 'The drivers license for ' + NameVar + ' will expire on ' + FormatDateTime('MM/DD/YYYY',DLExpField.Value);
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('PAGEREMINDTYPEID').AsString := PageRemindTypeID;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
end;

procedure TPersonConfidentialForm.FormCreate(Sender: TObject);
begin
  PersContBrowse.Setup('PERSCONT','PERSID',pk,TPersContForm,PersContNewRecord);
  PersBenBrowse.Setup('PERSBEN','PERSID',pk,TPersBenForm,PersBenNewRecord);

  PersReligionIDField.Visible  := SqlTableRecCount('SELECT COUNT(*) FROM PERSRELIGION') > 0; 
  PersReligionIDLabel.Visible  := PersReligionIDField.Visible;

  If CheckModule('PAGEREM') then begin
    EmailButton.Visible   := true;
    DobMailButton.Visible := true;
  end;
  If (mFireID = '12345') or (mFireID = '28014') or (mFireID = '60061') or (mFireID = '10021') or (mFireID = '52009') then begin
    PersExpBrowse.Visible := true;
    PersExpBrowse.Setup('PERSEXP','PERSID',pk,TPersExpForm,PersExpNewRecord);
  end;
  If (mFireID = '52054') then begin
    SocSecField.Enabled   := False;
    SocSecField.Visible   := False;
    Label37.Visible       := False;
  end;
  DobMailButton.Enabled := CheckSecVar('PAGEREMVIEW');
  EmailButton.Enabled   := CheckSecVar('PAGEREMVIEW');
end;

procedure TPersonConfidentialForm.FormShow(Sender: TObject);
var
  xtxt : string;
begin
  // Decrypt SSN before showing in field
  if not(trim(SocSecField.Value) = '') and GlobalEncryptPersSSN then begin
    try
      xtxt := DecryptAndHex(SocSecField.Value,ASCDeptSalt);
      if not(xtxt = '') then
        SocSecField.Text := xtxt;
    except
      on e: exception do begin
        if SocSecField.Enabled and (Length(trim(SocSecField.Text)) < 15) then  // error likely due to ssn not encrypted
          SocSecField.Value := trim(SocSecField.Value); // flag field as modified, so that user will save & trigger encryption
      end;
    end;
  end;
end;

procedure TPersonConfidentialForm.PersExpNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('PERSID').AsString := PK;
  Open_Query('PERS',false,'SELECT LNAME, FNAME, CITY, STATE, ZIP, ADD1, SCHDLOCID, MNAME FROM PERS WHERE PERSID = ' + pk);
  DataSet.FieldByname('LNAME').AsString := tdbfield('PERS','LNAME');
  DataSet.FieldByname('MNAME').AsString := tdbfield('PERS','MNAME');
  DataSet.FieldByname('FNAME').AsString := tdbfield('PERS','FNAME');
  
  DataSet.FieldByname('CITY').AsString  := tdbfield('PERS','CITY');
  DataSet.FieldByname('STATE').AsString := tdbfield('PERS','STATE');
  DataSet.FieldByname('ZIP').AsString   := tdbfield('PERS','ZIP');
  DataSet.FieldByname('ADDR').AsString  := tdbfield('PERS','ADD1');

  if mfireid = '60061' then
    DataSet.FieldByname('SCHDLOCID').AsString  := tdbfield('PERS','SCHDLOCID');
  CloseApollo('PERS');
end;

procedure TPersonConfidentialForm.SocSecFieldExit(Sender: TObject);
begin
  If (AnyStrToInt(SubStr(SocSecField.Value,1,3)) > 0) and SocSecField.ModifiedSinceEntered and not(GlobalEncryptPersSSN) then begin
      try
        Open_Query('PERS',false,'SELECT LNAME, FNAME FROM PERS WHERE SOCSEC = ' + AddExpr(SocSecField.Value) + ' AND PERSID <> ' + PK);
        If A('PERS').RecordsExist then begin
          ShowMessage('Social Security # ' + SocSecField.Value + ' is used by ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME') + '.  Please verify your entry.');
        end;
      finally
        CloseApollo('PERS');
      end;
  end;
end;

procedure TPersonConfidentialForm.PersContNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('PERSID').AsString := PK;
end;

procedure TPersonConfidentialForm.PersBenNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('PERSID').AsString := PK;
end;

end.
