unit BulletinProfile;

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
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AlpinePanel;

type
  TBulletinProfileForm = class(TNormalBaseForm)
    MainPanel: TAlpinePanel;
    DescrLabel: TLabel;
    ProfileLabel: TLabel;
    DescrField: TAlpineEdit;
    ProfileField: TAlpineEdit;
    MapBoxAPIKeyLabel: TLabel;
    MapBoxAPIKeyField: TAlpineEdit;
    MapBoxStyleLabel: TLabel;
    MapBoxStyleField: TAlpineEdit;
    MapBoxStyleDarkLabel: TLabel;
    MapBoxStyleDarkField: TAlpineEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BulletinProfileForm: TBulletinProfileForm;

implementation
uses GenFunc,
     CommonFunc,
     Main;

{$R *.DFM}
 
end.
 
