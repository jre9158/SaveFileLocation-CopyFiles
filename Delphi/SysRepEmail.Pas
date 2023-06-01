unit SysRepEmail;

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
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineBase,
  Gauges, AlpineMemo;

type
  TSysRepEmailForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    ReplyEmailField: TAlpineEdit;
    Label2: TLabel;
    EmailSubjectField: TAlpineEdit;
    Label4: TLabel;
    EmailMessageField: TAlpineMemo;
    Label3: TLabel;
    EmailField: TAlpineEdit;
    Label1: TLabel;
    FileNameField: TAlpineEdit;
    Label5: TLabel;
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    BottomPanel: TAdvPanel;
    CancelButton: TAlpineGlowButton;
    EmailButton: TAlpineGlowButton;
    procedure CancelButtonClick(Sender: TObject);
    procedure EmailButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
  end;

var
  SysRepEmailForm: TSysRepEmailForm;

implementation
uses GenFunc,
     FormFunc,
     SendMail,
     CommonPage,
     CommonVar,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TSysRepEmailForm.EmailButtonClick(Sender: TObject);
var MessageBody            : TStringList;
    FileList               : TStringList;
    EmailAddress           : String;
    msmtp                  : String;
    muser                  : String;
    mpass                  : String;
    TagID                  : String;
    iPort                  : Integer;
begin
  MessageBody  := TStringList.Create;
  MessageBody.Add('This is a test of the email system');
  FileList     := TStringList.create;
  FileList.Add(FileNameField.Text);
  EmailAddress := IIf(EmailField.Text = '','Ricks@AlpineSoftware.Com',EmailField.Text);
  If (mfireid='23300') or (mfireid='12345') then
    iPort := 587;

  if (mFireid = '26600') then  begin
    msmtp := 'smtp.socketlabs.com';
    mUser := 'server39685';
    mpass := 'Js97DcTe64XpAm3y8F';
  end else begin
    msmtp := 'smtp.socketlabs.com';
    mUser := 'server4162';
    mpass := 'Z6XqDXshmQQbtjtZmDui';
  end;
  SendSMTPEmail(msmtp,muser,mpass,ReplyEmailField.Value,ReplyEmailField.Value,EmailAddress,'','',EmailSubjectField.Text,MessageBody.Text,iPort,FileList);
  ShowMessage('Email has been sent');
end;

procedure TSysRepEmailForm.FormCreate(Sender: TObject);
begin
  TitleImage.Picture.Icon     := GetGlowImageIcon('EMAIL32');
end;

procedure TSysRepEmailForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

end.
