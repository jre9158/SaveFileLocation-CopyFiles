unit NITrainCat;
    
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
  htmlbtns,
  alpinecheck,
  AlpineMemo,
  AdvGroupBox,
  AlpinePanel;

type
  TNITrainCATForm = class(TNormalBaseForm)
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    GenPanel: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    DescrLabel: TLabel;
    Label1: TLabel;
    FdidLabel: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PointLabel: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    FdidField: TAlpineLookup;
    AlpineEdit2: TAlpineEdit;
    AlpineCheckBox3: TAlpineCheckBox;
    NITrainCatTypeIDField: TAlpineLookup;
    QualPeriodField: TAlpineEdit;
    PointField: TAlpineEdit;
    EVLengthField: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    LoadAttField: TAlpineCheckBox;
    ReqHourField: TAlpineEdit;
    ActiveField: TAlpineCheckBox;
    Label6: TLabel;
    OnlineAliasLabel: TLabel;
    OnlineAliasField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure NITrainCatTypeIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NITrainCATForm: TNITrainCATForm;

implementation
uses GenFunc,
     CommonFunc,
     Fdid,
     Main;

{$R *.DFM}

procedure TNITrainCATForm.NITrainCatTypeIDFieldEnter(Sender: TObject);
begin
  NITrainCatTypeIDField.SQLExpr := 'SELECT * FROM NITRAINCATTYPE WHERE ' + GetFdidSQL('NITRAINCATTYPE.FDID') + ' ORDER BY CODE';
end;

procedure TNITrainCATForm.FormCreate(Sender: TObject);
begin
  inherited;
  TitleImage.Picture.Icon := GetGlowImageIcon('TRAINING32');
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TNITrainCATForm(GetFormOfType(TNITrainCATForm)),GenPanel);
end;

end.
