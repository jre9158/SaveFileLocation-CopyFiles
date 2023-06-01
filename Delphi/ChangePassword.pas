unit ChangePassword;

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
  DB,
  DBTables,
  Buttons,
  Mask,
  StdCtrls,
  genfunc,
  ExtCtrls,
  applst,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  AlpineLookup,
  BasePictureField,
  AlpineEdit,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPanel,
  AlpineBase;

type
  TChangePasswordForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    OKButton: TAlpineGlowButton;
    PassLabel: TLabel;
    OldField: TAlpineEdit;
    Label1: TLabel;
    NewField: TAlpineEdit;
    Label2: TLabel;
    ConfirmField: TAlpineEdit;
    procedure CancelButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure ConfirmFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ChangePasswordForm: TChangePasswordForm;

implementation
uses NormalBase,
     CommonPassword,
     CommonFunc,
     SecLogin,
     CommonVar;
{$R *.DFM}

procedure TChangePasswordForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TChangePasswordForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TChangePasswordForm.OKButtonClick(Sender: TObject);
Var vSecIDVar       : String;
    bPasswordsMatch : Boolean;
    SecTable        : TApolloData;
    DateTimeEXE     : TDateTime;
    EXEName         : String;
    CompCode        : String;
begin
  Open_Query('SEC',false,'SELECT * FROM SEC WHERE ' + SecLoginForm.SecFieldName + ' = ' + AddExpr(SecLoginForm.UserNameField.Value));
  vSecIDVar     := GetField('SEC','SECID').AsString;
  bPasswordsMatch := PasswordsMatch(A('SEC'),OldField.Value);
  CloseApollo('SEC');
  If Not bPasswordsMatch then
    ShowMessage('You did not enter the original password correctly . . try again.')
  else if Not ( alltrim(NewField.Value) = alltrim(ConfirmField.Value) ) then
    ShowMessage('You did not confirm the new password correctly . . try again.')
  else begin
    SecTable := open_query(True,'SELECT * FROM SEC WHERE ' + SecLoginForm.SecFieldName + ' = ' + AddExpr(SecLoginForm.UserNameField.Value));
    SecTable.edit;
    SetPasswordToValue(SecTable,ConfirmField.Value);
    SecTable.post;
    SecTable.free;
    ShowMessage('New password confirmed.');
    //Close;
    
    CompCode    := AlpineGetComputerName;
    EXEName     := UpperCase(ExtractFileName(ParamStr(0)));
    DateTimeEXE := FileDateToDateTime(FileAge((ParamStr(0))));
    TableInsert('SECLOG',['SECID',  'COMPCODE','DATETIMEEXE','EXENAME','DATETIMELOGIN', 'LOGINRESULT'],
                         [vSecIDVar,CompCode,  DateTimeEXE,  ExeName,  Now,             'CHANGEPASS' ]);
    Close;
    
  end;
end;

procedure TChangePasswordForm.ConfirmFieldChange(Sender: TObject);
begin
  OKButton.Enabled := Not (alltrim(OldField.Value) = '') and Not (alltrim(NewField.Value) = '') and Not (alltrim(ConfirmField.Value) = '');
end;

procedure TChangePasswordForm.FormCreate(Sender: TObject);
begin
  OKButton.Enabled := False;
  try
    Open_Query('SECSET',false,'SELECT UPPERCASE FROM SECSET WHERE FDID = ' + AddExpr(mFireID));
    If not(tdbfield('SECSET','UPPERCASE') = 'Y') then begin
      OldField.PictureMask      := 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
      NewField.PictureMask      := 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
      ConfirmField.PictureMask  := 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX';
    end;
  finally
    CloseApollo('SECSET');
  end;
end;

end.
