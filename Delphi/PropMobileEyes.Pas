unit PropMobileEyes;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  extctrls,
  stdctrls,
  mask,
  comctrls,
  dbtables,
  buttons,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  OrpheusWrapper,
  AlpineLookup,
  AlpineBase,
  Gauges,
  AlpineEdit,
  ALPINEDATETIME,
  FormFunc,
  BasePictureField,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  HtmlBtns,
  AlpineCheck,
  EnJpgGr,
  AdvPanel;

type
  TPropMobileEyesForm = class(TAlpineBaseForm)
    ButtonPanel: TPanel;
    OvcController1: TOvcController;
    IncButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    Panel1: TPanel;
    SSField: TAlpineCheckBox;
    SSLabel: TLabel;
    Label3: TLabel;
    AlpineCheckBox1: TAlpineCheckBox;
    FileNameField: TAlpineEdit;
    Label4: TLabel;
    Label5: TLabel;
    AlpineCheckBox2: TAlpineCheckBox;
    AdvPanel5: TAdvPanel;
    TitleImage: TImage;
    PropCntField: TLabel;
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
    IncState: String;
  public
    { Public declarations }
  end;

var
  PropMobileEyesForm   : TPropMobileEyesForm;


implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     NormalBase,
     FileCtrl;

{$R *.DFM}
{$I rednmx.inc}

procedure TPropMobileEyesForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

end.
