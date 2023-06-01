unit RPanel;

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
  OvcBase,
  AlpineMemo,
  StdCtrls,
  AlpineDateTime,
  Blink,
  ExtCtrls,
  Buttons,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AdvPanel,
  AlpinePanel,
  Nfirs,
  db,
  AppLst,
  AdvGroupBox;

type
  TRPanelForm = class(TBaseNfirsForm)
    OvcController1: TOvcController;
    MainPanel: TAlpinePanel;
    PointLabel: TLabel;
    MilesLabel: TLabel;
    Label556: TLabel;
    DispCallTypeIDLabel: TLabel;
    Label80: TLabel;
    PointField: TAlpineEdit;
    MilesField: TAlpineEdit;
    DispCallTypeIDField: TAlpineLookup;
    DoneField: TAlpineEdit;
    CLabel: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;


implementation
uses CommonFunc,
     NfirsSet,
     GenFunc,
     CommonVar,
     SecSet;

{$R *.DFM}

procedure TRPanelForm.FormShow(Sender: TObject);
Var DispCallTypeCnt : Integer;
begin
  MainPanel.Color                     := ColorForm;
  MainPanel.HighlightColor            := ColorHighlight;
  DoneField.Enabled                   := false;
  DispCallTypeIDLabel.Caption         := IIf(mFireID = '03050','NFIRS Type',DispCallTypeIDLabel.Caption);
  DispCallTypeIDField.LookupFormWidth := DispCallTypeIDField.Width;
  DispCallTypeCnt                     := SqlTableRecCount('SELECT COUNT(*) FROM DISPCALLTYPE');
  DispCallTypeIDLabel.Visible         := (DispCallTypeCnt > 0);
  DispCallTypeIDField.Visible         := (DispCallTypeCnt > 0);
end;

end. 
