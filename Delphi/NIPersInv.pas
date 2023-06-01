unit NIPersInv;

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
  AdvGroupBox, AlpinePanel;

type
  TNIPersInvForm = class(TNormalBaseForm)
    AlpinePanel6: TAlpinePanel;
    FdidLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PersIDField: TAlpineLookup;
    NIPersInvTypeIDField: TAlpineLookup;
    DescrField: TAlpineEdit;
    PersRankIDField: TAlpineLookup;
    EvLengthLabel: TLabel;
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
  NIPersInvForm: TNIPersInvForm;

implementation
uses GenFunc,
     NI,
     CommonVar,
     Commonfunc,
     SecSet,
     Main;

{$R *.DFM}

procedure TNIPersInvForm.FormShow(Sender: TObject);
var NIForm : TForm;
begin
  inherited;
  If mFIREID = '81000' then
    ViewOnly := Not CheckSecVar('NIEDIT') and Not CheckSecVar('VBFDSTATIONDRILLS')
  else
    ViewOnly := Not CheckSecVar('NIEDIT');
  If FormExists('NIFORM') then begin
    NIForm := GetFormOfType(TNIForm);
    NIPersInvTypeIDField.SQLExpr := 'SELECT * FROM NIPERSINVTYPE WHERE FDID = ' + AddExpr(TNiform(NIForm).FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
  end else
    ViewOnly := true;
end;

procedure TNIPersInvForm.PersIDFieldEnter(Sender: TObject);
var mForm: TForm;
begin
  inherited;
  mForm               := GetFormOfType(TNIForm);
  PersIDField.SqlExpr := GetPersSQL(TNiform(mForm).FdidField.Value,'LNAME,FNAME');
end;

procedure TNIPersInvForm.PersIDFieldExit(Sender: TObject);
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
