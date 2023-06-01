unit InspVio;

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
  Jpeg,
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
  AlpineMemo;

type
  TInspVioForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel1: TPanel;
    InspVioBrowse: TAlpineBlockBrowse;
    VioButtonPanel: TPanel;
    CurrentButton: TRadioButton;
    AllButton: TRadioButton;
    OpenButton: TRadioButton;
    DateTimeStartField: TAlpineDateTime;
    PropIDField: TAlpineEdit;
    ErrorLabel: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CurrentButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure VioNewRecord(DataSet: TDataSet);
    procedure LoadInspVioBrowse;
  public
    { Public declarations }
  end;

var
  InspVioForm: TInspVioForm;

implementation
uses GenFunc,
     AppLst,
     SortGridView,
     CommonFunc,
     CommonVar,
     Vio,
     SecSet;

{$R *.dfm}

procedure TInspVioForm.CurrentButtonClick(Sender: TObject);
begin
  LoadInspVioBrowse;
end;

procedure TInspVioForm.FormShow(Sender: TObject);
begin
  CurrentButton.Enabled          := Not (alltrim(PropIDField.Value) = '');
  AllButton.Enabled              := Not (alltrim(PropIDField.Value) = '');
  OpenButton.Enabled             := Not (alltrim(PropIDField.Value) = '');
  if MFireID = '02220' then
    CurrentButton.Checked        := True
  else
    OpenButton.Checked           := True;
  ErrorLabel.Visible             := (alltrim(PropIDField.Value) = '');
  VioButtonPanel.Parent          := InspVioBrowse.FButtonPanel;
  VioButtonPanel.Align           := alRight;
  LoadInspVioBrowse;
end;

procedure TInspVioForm.VioNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INSPID').AsString       := PK;
  DataSet.FieldByname('DATEFOUND').AsDateTime  := DateTimeStartField.Value;
  DataSet.FieldByname('VIOCODESETID').AsString := SqlLookUp(mFireID,'FDID','INSPSET','VIOCODESETID');
  DataSet.FieldByname('VIOSTATID').AsString    := SqlLookUp(mFireID,'FDID','INSPSET','VIOSTATID');
end;

procedure TInspVioForm.LoadInspVioBrowse  ;
begin
  InspVioBrowse.Grid.MultiLineCells   := true;
  InspVioBrowse.Grid.DefaultRowHeight := 55;
  InspVioBrowse.Grid.FixedRowHeight   := 22;

  If CurrentButton.Checked then
    InspVioBrowse.ExplicitWhereClause   := ' WHERE VIO.INSPID = ' + pk
  else if AllButton.Checked then
    InspVioBrowse.ExplicitWhereClause   := ' WHERE INSP.PROPID = ' + pkValue(PropIDField.Value)
  else if OpenButton.Checked then
    InspVioBrowse.ExplicitWhereClause   := ' WHERE INSP.PROPID = ' + pkValue(PropIDField.Value) + ' AND VIOSTAT.OPENVIO = ' + AddExpr('Y');

  InspVioBrowse.Setup('INSPVIO','INSPID',pk,TVioForm,VioNewRecord);
end;

end.
