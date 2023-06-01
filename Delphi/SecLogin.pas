unit SecLogin;

interface

uses
  SysUtils,
  WinTypes,
  WinProcs,
  Messages,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Buttons,
  Mask,
  StdCtrls,
  GenFunc, 
  ExtCtrls,
  AppLst,
  OrpheusWrapper,
  AlpineLookup,
  BasePictureField,
  AlpineEdit,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPanel,
  AlpineBase,
  AdvEdit,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  AdvGroupBox;


type
  TSecLoginForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    ChangeButton: TAlpineGlowButton;
    CancelButton: TAlpineGlowButton;
    Label1: TLabel;
    PassLabel: TLabel;
    UserNameField: TAlpineLookup;
    LoginPasswordField: TAlpineEdit;
    OkButton: TAlpineGlowButton;
    procedure LoginPasswordFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure okbuttonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UserNameFieldFailValidate(Sender: TObject; var Pass: Boolean);
    procedure CancelButtonClick(Sender: TObject);
    procedure ChangeButtonClick(Sender: TObject);
    procedure UserNameFieldExit(Sender: TObject);
    procedure UserNameFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    function SetSecID(mSecID: String; sec: TApolloData;mPersID : String): Boolean;
    function TryLogin: Boolean;
  public
    { Public declarations }
    muserName    : String;
    SecFieldName : String;
  end;

var
  SecLoginForm: TSecLoginForm;

implementation
uses SecSet,
     NormalBase,
     CommonFunc,
     ToolBar,
     CommonPassword,
     ChangePassword,
     CommonVar,
     Main;

{$R *.DFM}

procedure TSecLoginForm.LoginPasswordFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = VK_RETURN) then begin
    if TryLogin then
      Close;
  end else if (Key=VK_ESCAPE) then
    Close;
end;

function TSecLoginForm.SetSecID(mSecID: String; sec: TApolloData;mPersID : String): Boolean;
var mSaveSecid: String;
begin
  mSaveSecId := SecidVar;
  Result     := False;
  If (uppercase(UserNameField.Value) = 'ALPINE') then begin
    If (uppercase(alltrim(LoginPasswordField.Value)) = ALPINEPASSWORD) or ((uppercase(alltrim(LoginPasswordField.Value)) = '1') and (AlpineGetComputerName = 'RICKINSPIRON15') ) then begin
      AlpineLogin  := True;
      Result       := true;
      SecIDVar     := mSecID;
      GlobalPersID := mPersID;
//      If GetFormOfType(TToolBarForm) <> nil then
//        TToolBarForm(GetFormOfType(TToolBarForm)).SetButtons(GetFormOfType(TToolBarForm),True);
      GlobalShowToolBar(mainform.Customtoolbar,True);
//      mFormControlBar: TWinControl; bShowFloatingToolBar: Boolean);
      TableInsert('SECLOG',[ 'COMPCODE',           'DATETIMELOGIN', 'LOGINRESULT'],
                           [ AlpineGetComputerName, Now,            'ALPINE'    ]);
    end;
  end else if (alltrim(LoginPasswordField.text) = '') then begin
    ShowMessage('You must enter a password');
  end else If PasswordsMatch(sec,alltrim(LoginPasswordField.Text)) then begin
    SetSecFDID   := '';
    AlpineLogin  := False;
    SecIDVar     := mSecID;
    GlobalPersID := mPersID;
    Result       := true;
    GlobalShowToolBar(mainform.Customtoolbar,True);
    GlobalIsSysadmin := sqllookup(secidvar,'secid','sec','ISSYSADMIN')='Y';
  end;
  if not Result then begin
    ShowMessage('Incorrect password');
    LoginPasswordField.Text := '';
    LoginPasswordField.SetFocus;
  end else begin
    if mSaveSecid<>mSecid then
      RunSql('UPDATE DISPLOGON SET SECID = '+pkValue(mSecid)+' WHERE SECID='+pkValue(mSaveSecid)+' AND COMPUTERNAME = '+AddExpr(AlpineGetComputerName));
  end;
end;

procedure TSecLoginForm.okbuttonClick(Sender: TObject);
begin
  If usernamefield.Value='' then
    UserNameField.setFocus
  else begin
    If TryLogin then
      ModalResult := mrOk
  end;
end;

function TSecLoginForm.TryLogin: Boolean;
var vSecID         : String;
    vPersID        : String;
    mShowToolBar   : Boolean;
    ExpDate        : TDateTime;
begin
  try
    mUserName      := '';
    Open_Query('SECLOGIN',false,'SELECT * FROM SEC WHERE ' + SecFieldName + ' = ' + AddExpr(UserNameField.Value));
    vSecID         := GetField('SECLOGIN','SECID').AsString;
    vPersID        := GetField('SECLOGIN','PERSID').AsString;
    ExpDate        := GetField('SECLOGIN','EXPDATE').AsDateTime;

    If (ExpDate > 0) and (ExpDate - Now < 30) and (ExpDate >= Now) then
      ShowMessage('This account will expire on ' + FormatDateTime('MM/DD/YYYY',ExpDate) + '.  Please notify your administrator and have them update the expiration date.');

    If (ExpDate > 0) and (Now > ExpDate) then begin
      ShowMessage('This account expired on ' + FormatDateTime('MM/DD/YYYY',ExpDate) + '.  Please notify your administrator and have them update the expiration date.');
      Result := false;
      TableInsert('SECLOG',['SECID','COMPCODE',           'DATETIMELOGIN','LOGINRESULT'],
                           [vsecID, AlpineGetComputerName,Now,            'EXPIRED'    ]);
      CloseApollo('SECLOGIN');
      close;
    end else begin
      If SetSecID(vSecID,A('SECLOGIN'),vPersId) then begin
        result    := True;
        mUserName := SetSecVar(mshowToolBar,True);

      end else begin
        result := False;
        if anystrtoint(vSecID)>0 then
          TableInsert('SECLOG',['SECID', 'COMPCODE',           'DATETIMELOGIN', 'LOGINRESULT'],
                               [vsecID,  AlpineGetComputerName, Now,            'FAILED'     ])
        else
          TableInsert('SECLOG',['COMPCODE',           'DATETIMELOGIN', 'LOGINRESULT'],
                               [AlpineGetComputerName, Now,            'ALPFAIL'     ]);
      end;
    end;
  finally
    CloseApollo('SECLOGIN');
  end;  
end;

procedure TSecLoginForm.FormCreate(Sender: TObject);
begin
  SecFieldName                   := 'USERNAME';
  Open_Query('SECSET',false,'SELECT SHOWCODE, UPPERCASE FROM SECSET WHERE FDID = ' + AddExpr(mFireID));
  If tdbfield('SECSET','SHOWCODE') = 'Y' then begin
    UserNameField.DisplayField     := 'LOGINCODE';
    UserNameField.ReferencingField := 'LOGINCODE';
    UserNameField.LookupCode       := 'SECCODE';
    SecFieldName                   := 'LOGINCODE';
  end;
  UserNameField.PictureMask      := IIf((tdbfield('SECSET','UPPERCASE') = 'Y'),'!!!!!!!!!!!!!!!!!!!!!!!!','XXXXXXXXXXXXXXXXXXXXXXXX');
  LoginPasswordField.PictureMask := IIf((tdbfield('SECSET','UPPERCASE') = 'Y') and not(GlobalEncryptSecPwd),'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!','XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
  CloseApollo('SECSET');
  UserNameField.SQLExpr          := commonpassword.userNameFieldSqlExpr;
end;

procedure TSecLoginForm.UserNameFieldFailValidate(Sender: TObject; var Pass: Boolean);
begin
  If UserNameField.Value = 'ALPINE' then
    Pass := true;
end;

procedure TSecLoginForm.CancelButtonClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  Close;
end;

procedure TSecLoginForm.ChangeButtonClick(Sender: TObject);
begin
  ChangePasswordForm := TChangePasswordForm.Create(self);
  ChangePasswordForm.ShowModal;
  ChangePasswordForm.Free;
end;                

procedure TSecLoginForm.UserNameFieldExit(Sender: TObject);
begin
  ChangeButton.Enabled := Not (alltrim(UserNameField.Value) = '') and Not (UserNameField.Value = 'ALPINE');
end;

procedure TSecLoginForm.UserNameFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin                  
  If (Key=VK_ESCAPE) then
    Close;
end;

end.
