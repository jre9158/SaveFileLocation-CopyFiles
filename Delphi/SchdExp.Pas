unit SchdExp;

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
  AlpineCheck;

type
  TSchdExpForm = class(TAlpineBaseForm)
    ButtonPanel: TPanel;
    OvcController1: TOvcController;
    Panel2: TPanel;
    VersionLabel: TLabel;
    CloseButton: TAlpineGlowButton;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    StartDate: TAlpineDateTime;
    FinalDate: TAlpineDateTime;
    Panel3: TPanel;
    Gauge: TGauge;
    FileNameField: TAlpineEdit;
    AssignButton: TAlpineGlowButton;
    Label4: TLabel;
    InvButton: TAlpineGlowButton;
    PersButton: TAlpineGlowButton;
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
    IncState: String;
  public
    { Public declarations }
  end;

var
  SchdExpForm   : TSchdExpForm;


implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     NormalBase,
     FileCtrl;

{$R *.DFM}
{$I rednmx.inc}

procedure TSchdExpForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

end.
