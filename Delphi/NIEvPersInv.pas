unit NIEvPersInv;

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
  AdvGroupBox;

type
  TNIEvPersInvForm = class(TNormalBaseForm)
    Panel1: TPanel;
    Label1: TLabel;
    NIPersInvTypeIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    FdidLabel: TLabel;
    Label2: TLabel;
    DescrField: TAlpineEdit;
    PersRankIDField: TAlpineLookup;
    Label3: TLabel;
    HoursLabel: TLabel;
    EvLengthField: TAlpineEdit;
    procedure PersIDFieldEnter(Sender: TObject);
    procedure PersIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NIEvPersInvForm: TNIEvPersInvForm;

implementation
uses GenFunc,
     NI,
     CommonVar,
     Commonfunc,
     SecSet,
     Main;
     
{$R *.DFM}

procedure TNIEvPersInvForm.FormShow(Sender: TObject);
var NIForm            : TForm;
begin
  inherited;
  NIForm := GetFormOfType(TNIForm);
  If mFireID = '81000' then
    ViewOnly                          := Not CheckSecVar('NIEDIT') and Not CheckSecVar('VBFDSTATIONDRILLS')
  else begin
    If NIForm <> nil then
      ViewOnly               := TNIForm(NIForm).ViewOnly;
  end;
  NIPersInvTypeIDField.SQLExpr := 'SELECT * FROM NIPERSINVTYPE WHERE FDID = ' + AddExpr(TNiform(NIForm).FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
end;

procedure TNIEvPersInvForm.PersIDFieldEnter(Sender: TObject);
var mForm: TForm;
begin
  inherited;
  mForm               := GetFormOfType(TNIForm);
  PersIDField.SqlExpr := GetPersSQL(TNiform(mForm).FdidField.Value,'LNAME,FNAME');
end;

procedure TNIEvPersInvForm.PersIDFieldExit(Sender: TObject);
begin
  inherited;
  If (PersIDField.Value <> '') and (PersRankIDField.Value = '') then begin
    Open_Query('PERS',false,'SELECT PERSRANKID FROM PERS WHERE PERSID = ' + pkValue(PersIDField.Value));
    If (GetField('PERS','PERSRANKID').AsInteger > 0) then begin
      PersRankIDField.Value := GetField('PERS','PERSRANKID').AsString;
      SaveButton.Enabled    := true;
    end;
    CloseApollo('PERS');
  end;
end;

end. 
