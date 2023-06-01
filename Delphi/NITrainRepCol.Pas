unit NITrainRepCol;

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
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  Htmlbtns,
  AlpineCheck,
  AlpinePanel;

type
  TNITrainRepColForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label2: TLabel;
    MyDBEdit2: TAlpineEdit;
    Label4: TLabel;
    AlpineEdit3: TAlpineEdit;
    Label1: TLabel;
    CodeField: TAlpineEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NITrainRepColForm: TNITrainRepColForm;

implementation
uses GenFunc,
     CommonFunc,
     Main;
     
{$R *.DFM}
{$I rednmx.inc}

end.
