unit BulletinPanel;

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
  TBulletinPanelForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    ComponentNameLabel: TLabel;
    ActiveLabel: TLabel;
    AlignCLientLabel: TLabel;
    WidthLabel: TLabel;
    DescrLabel: TLabel;
    HeightLabel: TLabel;
    TitleLabel: TLabel;
    ComponentTypeLabel: TLabel;
    ParentPanelLabel: TLabel;
    ProfileLabel: TLabel;
    ProfileField: TAlpineEdit;
    ComponentNameField: TAlpineEdit;
    ComponentTypeField: TAlpineEdit;
    ParentPanelField: TAlpineEdit;
    DescrField: TAlpineEdit;
    WidthField: TAlpineEdit;
    HeightField: TAlpineEdit;
    AlignClientField: TAlpineEdit;
    ActiveField: TAlpineEdit;
    TitleField: TAlpineEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    ActiveDescr: TLabel;
    Label5: TLabel;
    CodeLabel: TLabel;
    CodeField: TAlpineEdit;
    LevelSQLLabel: TLabel;
    LevelSQLField: TAlpineEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
  end;

var
  BulletinPanelForm: TBulletinPanelForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar;

{$R *.DFM}

procedure TBulletinPanelForm.FormShow(Sender: TObject);
begin
  inherited;
  ProfileLabel      .Enabled := AlpineLogIn;
  ProfileField      .Enabled := AlpineLogIn;
  ComponentNameField.Enabled := AlpineLogIn;
  ComponentTypeField.Enabled := AlpineLogIn;
  ParentPanelField  .Enabled := AlpineLogIn;
  DescrField        .Enabled := AlpineLogIn;
  CodeField         .Enabled := AlpineLogIn;
  LevelSQLField     .Enabled := AlpineLogIn;
end;

function TBulletinPanelForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := AlpineLogIn;
end;

function TBulletinPanelForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := AlpineLogIn; 
end;

end.
