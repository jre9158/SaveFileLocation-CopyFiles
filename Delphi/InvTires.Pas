unit InvTires;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  OvcBase,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  AlpinePanel,
  Grids,
  BaseGrid,
  AdvGrid,
  htmlbtns,
  alpinecheck,
  ALPINEDATETIME,
  AlpineLookGrid,
  Pers,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  NormalBase,
  AlpineMemo,
  AdvGroupBox;

type
  TInvTiresForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    AlpinePanel11: TAlpinePanel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label71: TLabel;
    Label63: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Shape13: TShape;
    Shape14: TShape;
    Label68: TLabel;
    Label78: TLabel;
    Label82: TLabel;
    Label87: TLabel;
    Label70: TLabel;
    Label77: TLabel;
    Shape8: TShape;
    Shape9: TShape;
    Label85: TLabel;
    Label86: TLabel;
    MyDBEdit25: TAlpineEdit;
    MyDBEdit26: TAlpineEdit;
    AlpineEdit12: TAlpineEdit;
    MyDBEdit27: TAlpineEdit;
    MyDBEdit28: TAlpineEdit;
    TCountFField: TAlpineEdit;
    MyDBEdit30: TAlpineEdit;
    MyDBEdit31: TAlpineEdit;
    MyDBEdit32: TAlpineEdit;
    MyDBEdit29: TAlpineEdit;
    MyDBEdit34: TAlpineEdit;
    MyDBEdit35: TAlpineEdit;
    MyDBEdit38: TAlpineEdit;
    MyDBEdit39: TAlpineEdit;
    MyDBEdit40: TAlpineEdit;
    MyDBEdit41: TAlpineEdit;
    MyDBEdit42: TAlpineEdit;
    MyDBEdit43: TAlpineEdit;
    MyDBEdit44: TAlpineEdit;
    DateFrontNFPAField: TAlpineDateTime;
    Shape15: TShape;
    DateFrontNFPALabel: TLabel;
    DateBackNFPALabel: TLabel;
    DateBackNFPAField: TAlpineDateTime;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvTiresForm: TInvTiresForm;

implementation
uses GenFunc,
     AppLst,
     CommonFunc,
     CommonVar;

{$R *.dfm}
{$I rednmx.inc}


end.

