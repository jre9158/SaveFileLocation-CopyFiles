unit InspReSendDoc;

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
  OvcBase,
  StdCtrls,
  ExtCtrls,
  AlpineBase,
  AlpineLookup,
  AlpineLookGrid,
  MySBox,
  htmlbtns,
  alpinecheck,
  AdvGlowButton,
  AlpineGlowButton,
  quickrpt,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineDateTime,
  AdvPanel,
  AlpinePanel,
  AdvGroupBox,
  AlpineMemo;


type
  TInspReSendDocForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    OvcController2: TOvcController;
    resizepanel: TPanel;
    BottomPanel: TAdvPanel;
    ClearButton: TAlpineGlowButton;
    EMailButton: TAlpineGlowButton;
    FaxButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    Panel1: TPanel;
    FieldPanel: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EmailField: TAlpineEdit;
    ReplyEmailField: TAlpineEdit;
    EmailMessageField: TAlpineMemo;
    EmailSubjectField: TAlpineEdit;
    FaxNumField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure EmailFieldChange(Sender: TObject);
    procedure ReplyEmailFieldChange(Sender: TObject);
    procedure DoneEmailAction(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    EMailServer   : String;
    EMailUserName : String;
    EMailPassword : String;
    InspImageID   : String;
    InspID        : String;
  public
    { Public declarations }
    procedure SetButton;
    constructor Create(Aowner: TComponent; FInspID, FInspImageID : String);
  end;

var
  InspReSendDocForm: TInspReSendDocForm;

implementation
uses CommonVar,
     CommonFunc,
     GenFunc,
     AlpineBaseSummaryReport,
     SendMail,
     InterFax,
     NormalBase,
     InvImage,
     DB,
     commonpage,
     SecSet;

{$R *.DFM}

constructor TInspReSendDocForm.Create(Aowner: TComponent; FInspID, FInspImageID : String);
begin
  InspImageID := FInspImageID;
  InspID      := FInspID;
  inherited Create(AOwner);
end;

procedure TInspReSendDocForm.ClearButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TInspReSendDocForm.FormCreate(Sender: TObject);
begin
  TitleImage.Picture.Icon     := GetGlowImageIcon('PRINTER32');

  If AlpineLogin then
    ReplyEmailField.Text        := 'ricks@alpinesoftware.com'
  else begin
    Open_Query('GETINSP',false,'SELECT PERS.EMAIL FROM INSP LEFT JOIN PERS ON (PERS.PERSID = INSP.PERSID) WHERE INSPID = ' + pkValue(InspID));
    ReplyEmailField.Text        := tdbfield('GETINSP','EMAIL');
    CloseApollo('GETINSP');
  end;

  Open_Query('INSPSET',false,'SELECT * FROM INSPSET WHERE FDID = ' + AddExpr(mfireid));
  EmailSubjectField.Value     := tdbfield('INSPSET','EMAILSUBJECT');
  EmailMessageField.Value     := Getfield('INSPSET','EMAILMESSAGE').AsString;
  EmailServer                 := GetField('INSPSET','EMAILSERVER').AsString;
  EmailUserName               := GetField('INSPSET','EMAILUSERNAME').AsString;
  EmailPassword               := GetField('INSPSET','EMAILPASSWORD').AsString;
  CloseApollo('INSPSET');
end;

procedure TInspReSendDocForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',BottomPanel);
  FaxNumField.Value := SearchAndReplace(FaxNumField.Value,'-','');
end;

procedure TInspReSendDocForm.ReplyEmailFieldChange(Sender: TObject);
begin
  SetButton;
end;

procedure TInspReSendDocForm.SetButton;
begin
  EMailButton.Enabled           := Not (EmailField.Value = '')  and Not (ReplyEmailField.Value = '');
  FaxButton.Enabled             := Not (FaxNumField.Value = '');
end;

procedure TInspReSendDocForm.PrintButtonClick(Sender: TObject);
var MessageBody            : TStringList;
    FileList               : TStringList;
    FileName               : String;
    EmailAddress           : String;
    msmtp                  : String;
    muser                  : String;
    mpass                  : String;
    TagID                  : String;
    Descr                  : String;
begin
  FileName := ExtractFileDir(ParamStr(0)) + '\RESENDFAXEMAIL.PDF';
  Open_Query('INSPIMAGE',false,'SELECT DESCR, IMAGEBLOB FROM INSPIMAGE WHERE INSPIMAGEID = ' + pkvalue(InspImageID));
  Descr    := tdbfield('INSPIMAGE','DESCR');
  TBlobField(A('INSPIMAGE').FieldByName('IMAGEBLOB')).SaveToFile(FileName);
  CloseApollo('INSPIMAGE');

  FaxNumField.Value     := SearchAndReplace(FaxNumField.Value,'-','');
  EMailButton.Enabled   := false;
  FaxButton.Enabled     := false;

  If Sender = FaxButton then begin
    TagID := SendInterFaxPDF(FaxNumField.Value,FileName);
    LoadFaxEmailStatus(TagID, FaxNumField.value,'', 'INSP', InspID, 'Resent inspection document ' + Descr);

  end else if Sender = EmailButton then begin
    MessageBody  := TStringList.Create;
    MessageBody.Add(EmailMessageField.Value);
    FileList     := TStringList.create;
    FileList.Add(FileName);
    EmailAddress := IIf(EmailField.Text = '','Ricks@AlpineSoftware.Com',EmailField.Text);
    If (mFireid = '00190') and Not FileExists('C:\REDNMX\MAIN.PAS') then begin
      //msmtp := 'messagingO365.westy.cow';
      //muser := 'AlpineRMS@cityofwestminster.us';
      //mpass := 'search&R3scu3';
      msmtp := 'smtp.socketlabs.com';
      mUser := 'server4162';
      mpass := 'Z6XqDXshmQQbtjtZmDui';
    end else if (mFireid = '26600') then  begin
      msmtp := 'smtp.socketlabs.com';
      mUser := 'server39685';
      mpass := 'Js97DcTe64XpAm3y8F';
    end else begin
      msmtp := 'smtp.socketlabs.com';
      mUser := 'server4162';
      mpass := 'Z6XqDXshmQQbtjtZmDui';
    end;

    SendSMTPEmail(msmtp,muser,mpass,ReplyEmailField.Value,ReplyEmailField.Value,EmailAddress,'','',EmailSubjectField.Text,MessageBody.Text,25,FileList);

  end;
  SetButton;
end;

procedure TInspReSendDocForm.DoneEmailAction(Sender: TObject);
begin
  ShowMessage('Email Sent.');
end;

procedure TInspReSendDocForm.EmailFieldChange(Sender: TObject);
begin
  SetButton;
end;

end.
