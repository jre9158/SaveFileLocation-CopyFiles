unit GisLayerRen;
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
  htmlbtns,
  alpinecheck,
  AlpinePanel;

type
  TGisLayerRenForm = class(TNormalBaseForm)
    ColorDialog1: TColorDialog;
    AlpinePanel1: TAlpinePanel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    LabelField: TAlpineEdit;
    AlpineEdit8: TAlpineEdit;
    LabelSizeField: TAlpineEdit;
    LabelFontField: TAlpineEdit;
    LabelColorField: TAlpineEdit;
    AlpineCheckBox1: TAlpineCheckBox;
    LabelBoldField: TAlpineCheckBox;
    AlpineCheckBox4: TAlpineCheckBox;
    LabelFontButton: TAlpineGlowButton;
    BackColorButton: TAlpineGlowButton;
    LabelButton: TAlpineGlowButton;
    Panel0B: TAlpinePanel;
    DescrLabel: TLabel;
    RenValueLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DescrField: TAlpineEdit;
    RenValueField: TAlpineEdit;
    RenSizeField: TAlpineEdit;
    RenColorField: TAlpineEdit;
    RenColorButton: TAlpineGlowButton;
    OutlineWidthField: TAlpineEdit;
    OutlineColorField: TAlpineEdit;
    OutlineColorButton: TAlpineGlowButton;
    AlpineEdit4: TAlpineEdit;
    ShapeExtentLWRField: TAlpineEdit;
    AlpineEdit5: TAlpineEdit;
    RenValueButton: TAlpineGlowButton;
    ShapePanel: TPanel;
    Outline1Shape: TShape;
    InnerShape: TShape;
    Outline2Shape: TShape;
    procedure RenColorButtonClick(Sender: TObject);
    procedure OutlineColorButtonClick(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
    procedure LabelButtonClick(Sender: TObject);
    procedure LabelFontButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RenValueButtonClick(Sender: TObject);
    procedure OutlineWidthFieldChange(Sender: TObject);
  private
    { Private declarations }
    procedure SelectColor(mEdit: TAlpineEdit);
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  GisLayerRenForm: TGisLayerRenForm;

implementation
uses GenFunc,
     GisLayer,
     GisSet,
     CommonFunc,
     GisLayerRenSelect,
     Main;
     
{$R *.DFM}

procedure TGisLayerRenForm.BackColorButtonClick(Sender: TObject);
begin
  inherited;
  SelectColor(LabelColorField);
end;

procedure TGisLayerRenForm.FormShow(Sender: TObject);
begin
  inherited;
  RenColorField    .Enabled := alpinelogin;
  RenValueField    .Enabled := alpinelogin;
  OutlineColorField.Enabled := alpinelogin;
  LabelColorField  .Enabled := alpinelogin;
  LabelFontField   .Enabled := alpinelogin;
  OutlineWidthFieldChange(self);
end;

procedure TGisLayerRenForm.LabelButtonClick(Sender: TObject);
var GisLayerform : TGisLayerForm;
begin
  inherited;
  GisLayerForm := TGisLayerForm(GetFormOfType(TGisLayerForm));
  If GisLayerForm = nil then
    Exit;
  TGISLayerForm.SelectGISField(LabelField,GisLayerForm.ShapeFileField);
end;

procedure TGisLayerRenForm.LabelFontButtonClick(Sender: TObject);
begin
  inherited;
  TGISLayerForm.SelectFontField(LabelFontField,LabelColorField,LabelSizeField,LabelBoldField,self);
end;

class procedure TGisLayerRenForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TGisLayerRenForm.SelectColor(mEdit: TAlpineEdit);
begin
  If ColorDialog1.Execute then begin
    mEdit.Text         := colortostring(ColorDialog1.Color);
    SaveButton.Enabled := true
  end else begin
    mEdit.Text         := '';
    SaveButton.Enabled := true;
  end;
end;

procedure TGisLayerRenForm.RenColorButtonClick(Sender: TObject);
begin
  inherited;
  SelectColor(RenColorField);
  OutlineWidthFieldChange(self);
end;

procedure TGisLayerRenForm.RenValueButtonClick(Sender: TObject);
Var FileName     : String;
    GisLayerForm : TForm;
    GisSetForm   : TForm;
    PathVar      : String;
    ShapeFile    : String;
    FieldName    : String;
    ModalResult  : Integer;
begin
  inherited;
  GisLayerForm          := GetFormOfType(TGisLayerForm);
  GisSetForm            := GetFormOfType(TGisSetForm);
  FileName              := TGisSetForm(GisSetForm).GISPathField.Value + TGisLayerForm(GisLayerForm).ShapeFileField.Value + '.DBF';
  ShapeFile             := TGisLayerForm(GisLayerForm).ShapeFileField.Value;
  FieldName             := TGisLayerForm(GisLayerForm).RenFieldField.Value;
  GisLayerRenSelectForm := TGisLayerRenSelectForm.Create(self, FileName, FieldName);
  ModalResult           := GisLayerRenSelectForm.ShowModal;
  If ModalResult = mrOk then begin
    RenValueField.Value := GisLayerRenSelectForm.FieldBrowse.GetValue('FIELDVALUE');
    SaveButton.Enabled  := true;
  end else if ModalResult = mrCancel then begin
    RenValueField.Value := '';
    SaveButton.Enabled  := true;
  end;
  GisLayerRenSelectForm.Free;
end;

procedure TGisLayerRenForm.OutlineColorButtonClick(Sender: TObject);
begin
  inherited;
  SelectColor(OutlineColorField);
  OutlineWidthFieldChange(self);
end;

procedure TGisLayerRenForm.OutlineWidthFieldChange(Sender: TObject);
begin
  inherited;
  Outline1Shape.Width       := AnyStrToInt(OutlineWidthField.Value);
  Outline2Shape.Width       := AnyStrToInt(OutlineWidthField.Value);
  InnerShape.Width          := AnyStrToInt(RenSizeField.Value);
  ShapePanel.Width          := AnyStrToInt(OutlineWidthField.Value) + AnyStrToInt(OutlineWidthField.Value) + AnyStrToInt(RenSizeField.Value);

  try
    InnerShape.Pen.Color      := StringToColor(RenColorField.Value);
    InnerShape.Brush.Color    := StringToColor(RenColorField.Value);
    Outline1Shape.Pen.Color   := StringToColor(OutlineColorField.Value);
    Outline1Shape.Brush.Color := StringToColor(OutlineColorField.Value);
    Outline2Shape.Pen.Color   := StringToColor(OutlineColorField.Value);
    Outline2Shape.Brush.Color := StringToColor(OutlineColorField.Value);
  except
  end;  
end;  

end. 
