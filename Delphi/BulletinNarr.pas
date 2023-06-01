unit BulletinNarr;

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
  AlpineMemo,
  AdvGroupBox,
  htmlbtns,
  alpinecheck,
  AlpinePanel;

type
  TBulletinNarrForm = class(TNormalBaseForm)
    NarrPanel: TAlpinePanel;
    GenPanel: TAlpinePanel;
    NarrMainField: TAlpineMemo;
    FdidPanel: TAlpinePanel;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    Label2: TLabel;
    BulletinNarrIDLabel: TLabel;
    ScrollNarrLabel: TLabel;
    MyDBEdit2: TAlpineEdit;
    BulletinNarrIDField: TAlpineEdit;
    ScrollNarrField: TAlpineCheckBox;
    BulletinNarrIDDescr: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BulletinNarrForm: TBulletinNarrForm;

implementation
uses GenFunc,
     CommonSec,
     CommonFunc,
     CommonVar,
     Main;
     
{$R *.DFM}

procedure TBulletinNarrForm.FormShow(Sender: TObject);
Var BulletinNarrForm : TNormalBaseForm;
begin
  inherited;
  BulletinNarrForm        := TNormalBaseForm(GetFormOfType(TBulletinNarrForm));
  ScrollNarrLabel.Visible := (mFireid = '12345') or (mFireid = '15037');
  ScrollNarrField.Visible := (mFireid = '12345') or (mFireid = '15037');
  FdidPanel.Visible       := (mFireid='HARFO') or (mFireid='12345') or (mFireid='EGELS') or (mFireid='21012');
  If ((mFireid='HARFO') or (mFireid='12345') or (mFireid='EGELS')) and (SecFdid <> '') then begin
    BulletinNarrForm.ViewOnly  := not (FdidField.Value = SecFdid);
  end;
  BulletinNarrIDField.Enabled := false;
  BulletinNarrIDDescr.Caption := 'Enter this line: BULLETINNARRID=' + pk + ' in the REDNMXBULLETIN.INI file';
  NarrPanel.Caption.Text      := 'This message can be displayed on the bulletin where BULLETINNARRID=' + pk + ' set in the REDNMXBULLETIN.INI file';
end;

end. 
