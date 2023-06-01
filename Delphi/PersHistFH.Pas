unit PersHistFH;

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
  CusBtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineDateTime,
  AdvGroupBox,
  HtmlBtns,
  AlpineCheck,
  AlpinePanel,
  AlpineMemo;

type
  TPersHistFHForm = class(TNormalBaseForm)
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    AlpinePanel3: TAlpinePanel;
    Label15: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DateTimeDoneField: TAlpineDateTime;
    PersHistTypeIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    DescrField: TAlpineEdit;
    procedure PersIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersHistFHForm: TPersHistFHForm;

implementation
uses GenFunc,
     CommonVar,
     SecSet,
     SysSet;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersHistFHForm.FormShow(Sender: TObject);
begin
  inherited;
  PersIDField.Enabled := false;
end;

procedure TPersHistFHForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TPersHistFHForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly           := Not CheckSecVar('PERSEDIT');
end;

end.
