unit PageList;

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
  AlpineMemo,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  OvcDbPF,
  OrpheusWrapper,
  AdvGroupBox,
  AlpineCheck,
  AlpinePanel;

type
  TPageListForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label2: TLabel;
    PhoneLabel: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    PersIDLabel: TLabel;
    StaffLabel: TLabel;
    smartphonelabel: TLabel;
    PhonePinLabel1: TLabel;
    PhonePinLabel2: TLabel;
    FdidLabel: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PageCompIDField: TAlpineLookup;
    PhonePinField: TAlpineEdit;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    PersIDField: TAlpineLookup;
    ISSMARTPHONEField: TAlpineCheckBox;
    FdidField: TAlpineLookup;
    PageListTypeIDField: TAlpineLookup;
    TestButton: TAlpineGlowButton;
    Label3: TLabel;
    ActiveField: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure PersIDFieldSetDescription(Sender: TObject);
    procedure TestButtonClick(Sender: TObject);
    procedure PageCompIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  PageListForm: TPageListForm;

implementation
uses SecSet,
     CommonFunc,
     GenFunc,
     Fdid,
     CommonPage,
     CommonVar;

{$R *.DFM}

procedure TPageListForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TPageListForm(GetFormOfType(TPageListForm)),GenPanel);
  SmartPhoneLabel.visible             := CheckModule('MOBURL');
  PageListTypeIDField.CanAddToLookup  := CheckSecVar('PAGESETUP');
  IsSmartPhoneField.Visible           := SmartPhoneLabel.visible;

  PageListTypeIDField.LookupFormWidth := 300;
  PageCompIDField.LookupFormWidth     := 300;
end;

procedure TPageListForm.FormShow(Sender: TObject);
begin
  inherited;
  PageCompIDFieldExit(self);
end;

class procedure TPageListForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
  DataSet.FieldbyName('ACTIVE').AsString := 'Y';
end;

procedure TPageListForm.PageCompIDFieldExit(Sender: TObject);
begin
  inherited;
  if SQLLookup(PageCompIDField.Value,'PAGECOMPID','PAGECOMP','PAGECOMPTYPEID') = '8' then begin
    PhonePinField.Visible     := False;
    PhoneLabel.Visible        := False;
    PhonePinLabel1.Visible    := False;
    PhonePinLabel2.Visible    := False;
    smartphonelabel.Visible   := False;
    ISSMARTPHONEField.Visible := False;
    StaffLabel.Caption        := 'Required Entry';
  end else begin
    PhonePinField.Visible     := True;
    PhoneLabel.Visible        := True;
    PhonePinLabel1.Visible    := True;
    PhonePinLabel2.Visible    := True;
    smartphonelabel.Visible   := True;
    ISSMARTPHONEField.Visible := True;
    StaffLabel.Caption        := 'Recommended Entry';
  end;

  
end;

procedure TPageListForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME, FDID FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME'
end;

procedure TPageListForm.PersIDFieldSetDescription(Sender: TObject);
begin
  inherited;
  SetLastNameFirstNameForLookup(TAlpineLookup(Sender));
end;

procedure TPageListForm.TestButtonClick(Sender: TObject);
Var PageQueueID : String;
    PageNarr    : String;
begin
  PageNarr    := 'The following is a test message from the Department Messaging System.  Enter the fire department name in the subject line and email to TECH@ALPINESOFTWARE.COM that you received this message.  Thank you.';
  PageQueueID := LoadPageQueue(GlobalAdoConnection,'Alpine Test Message',PageNarr,'TESTMESS',nil);
  LoadPageQueueList(PK,PageQueueID,GlobalAdoConnection);
  ShowMessage('Page has been sent to the messaging terminal.');
end;

end.
