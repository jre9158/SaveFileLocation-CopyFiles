unit GISLayer;

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
  CommonFunc,
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
  AlpineBlockBrowse,
  alpinecheck,
  AdvGlowButton,
  AlpineGlowButton,
  htmlbtns,
  AdvGroupBox,
  AlpinePanel;

type
  TGISLayerForm = class(TNormalBaseForm)
    ColorDialog1: TColorDialog;
    FontDialog1: TFontDialog;
    GisLayerIconBrowse: TAlpineBlockBrowse;
    Panel0B: TAlpinePanel;
    IconNameLabel: TLabel;
    IconSizeLabel: TLabel;
    RenFieldLabel: TLabel;
    Label4: TLabel;
    IconNameField: TAlpineEdit;
    IconSizeField: TAlpineEdit;
    RenFieldField: TAlpineEdit;
    PolygonField: TAlpineCheckBox;
    PointField: TAlpineCheckBox;
    IconButton: TAlpineGlowButton;
    RenButton: TAlpineGlowButton;
    Panel2: TPanel;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel2: TAlpinePanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Distance1Label: TLabel;
    Label18: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Distance2Label: TLabel;
    Label6: TLabel;
    AlpineEdit2: TAlpineEdit;
    ShapeFileField: TAlpineEdit;
    DescrField: TAlpineEdit;
    ShapeColorField: TAlpineEdit;
    ShapeWidthField: TAlpineEdit;
    ShapeExtentField: TAlpineEdit;
    ShapeAliasField: TAlpineEdit;
    ShapeTransField: TAlpineCheckBox;
    ShapeColorButton: TAlpineGlowButton;
    ShapeFileButton: TAlpineGlowButton;
    ShapeExtentLwrField: TAlpineEdit;
    OutLineWidthField: TAlpineEdit;
    OutlineColorField: TAlpineEdit;
    OutlineColorButton: TAlpineGlowButton;
    GisSetIDField: TAlpineEdit;
    Label3: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Distance3Label: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label16: TLabel;
    LabelField: TAlpineEdit;
    LabelExtentField: TAlpineEdit;
    LabelColorField: TAlpineEdit;
    LabelFontField: TAlpineEdit;
    LabelSizeField: TAlpineEdit;
    LabelDuplicateField: TAlpineCheckBox;
    LabelBoldField: TAlpineCheckBox;
    LabelOnlyField: TAlpineCheckBox;
    GisLabelAlignmentIDField: TAlpineLookup;
    GisLabelPositionIDField: TAlpineLookup;
    LabelButton: TAlpineGlowButton;
    BackColorButton: TAlpineGlowButton;
    LabelFontButton: TAlpineGlowButton;
    ShapePanel: TPanel;
    Outline1Shape: TShape;
    InnerShape: TShape;
    Outline2Shape: TShape;
    DBFButton: TAlpineGlowButton;
    procedure PolygonFieldClick(Sender: TObject);
    procedure PointFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
    procedure ShapeColorButtonClick(Sender: TObject);
    procedure ShapeFileButtonClick(Sender: TObject);
    procedure LabelFontButtonClick(Sender: TObject);
    procedure IconButtonClick(Sender: TObject);
    procedure LabelButtonClick(Sender: TObject);
    procedure RenButtonClick(Sender: TObject);
    procedure OutlineColorButtonClick(Sender: TObject);
    procedure RenFieldFieldChange(Sender: TObject);
    procedure ShapeWidthFieldChange(Sender: TObject);
    procedure DBFButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeLabel;
  public
    { Public declarations }
    mViewCode: String;
    procedure GISLayerIconNewRecord(DataSet: TDataSet);
    class procedure SelectFontField(LabelFontField,LabelColorField, LabelSizeField: TAlpineEdit; LabelBoldField: TAlpineCheckBox; mForm: TNormalBaseForm);
    class procedure SelectGISField(mEdit,ShapeFileField: TAlpineEdit);
  end;

var
  GISLayerForm: TGISLayerForm;

implementation
uses GenFunc,
     GisSet,
     SelectFile,
     dBaseEdit,
     SelectField,
     GISLayerRen,
     GISLayerIcon;

{$R *.DFM}

procedure TGISLayerForm.GISLayerIconNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('GISLAYERID').AsString := pk;
end;

procedure TGISLayerForm.PolygonFieldClick(Sender: TObject);
begin
  inherited;
  PointField.Checked    := Not PolygonField.Checked;
  ChangeLabel;
end;

procedure TGisLayerForm.ChangeLabel;
begin
  GisLayerIconBrowse.Reset;
  If PolygonField.Checked then begin
    IconNameLabel.Enabled           := false;
    IconNameField.Enabled           := false;
    IconButton.Enabled              := false;
    IconSizeLabel.Enabled           := false;
    IconSizeField.Enabled           := false;
    RenFieldLabel.Enabled           := true;
    RenFieldField.Enabled           := true;
    RenButton.Enabled               := true;
    GisLayerIconBrowse.Setup('GISLAYERPOLYGON','GISLAYERID',PK,TGisLayerRenForm,GISLayerIconNewRecord);
    GisLayerIconBrowse.Enabled      := true;
    GisLayerIconBrowse.NewEnabled   := true;
    GisLayerIconBrowse.caption.Text := 'Rendering Layers';
  end else if PointField.Checked then begin
    IconNameLabel.Enabled           := true;
    IconNameField.Enabled           := true;
    IconButton.Enabled              := true;
    IconSizeLabel.Enabled           := true;
    IconSizeField.Enabled           := true;
    RenFieldLabel.Enabled           := false;
    RenFieldField.Enabled           := false;
    RenButton.Enabled               := false;
    GisLayerIconBrowse.Setup('GISLAYERPOINT','GISLAYERID',PK,TGISLayerIconForm,GISLayerIconNewRecord);
    GisLayerIconBrowse.NewEnabled   := true;
    GisLayerIconBrowse.Enabled      := true;
    GisLayerIconBrowse.caption.Text := 'Icon List';
  end else begin
    IconNameLabel.Enabled           := false;
    IconNameField.Enabled           := false;
    IconButton.Enabled              := false;
    IconSizeLabel.Enabled           := false;
    IconSizeField.Enabled           := false;
    RenFieldLabel.Enabled           := false;
    RenFieldField.Enabled           := false;
    RenButton.Enabled               := false;
    GisLayerIconBrowse.Setup('GISLAYERPOINT','GISLAYERID',PK,TGISLayerIconForm,GISLayerIconNewRecord);
    GisLayerIconBrowse.Enabled      := false;
    GisLayerIconBrowse.NewEnabled   := false;
    GisLayerIconBrowse.caption.Text := 'Not Applicable';
  end;
end;

procedure TGISLayerForm.DBFButtonClick(Sender: TObject);
begin
  inherited;
  dBaseEditForm := TdBaseEditForm.Create(application,'');
  dBaseEditForm.ShowModal;
  dBaseEditForm.Free;
end;

procedure TGISLayerForm.PointFieldClick(Sender: TObject);
begin
  inherited;
  PolygonField.Checked    := Not PointField.Checked;
  ChangeLabel;
end;

procedure TGISLayerForm.FormShow(Sender: TObject);
begin
  inherited;
  GisSetIDField.Enabled := AlpineLogin;
  ChangeLabel;
  If SQLLookUp(GisSetIDField.Text,'GISSETID','GISSET','MAPUNIT') = 'M' then begin
    Distance1Label.Caption := 'Kilometers';
    Distance2Label.Caption := 'Kilometers';
    Distance3Label.Caption := 'Kilometers';
  end;
  RenFieldFieldChange(self);
  ChangeLabel;
  ShapeWidthFieldChange(self);  
end;

procedure TGISLayerForm.BackColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then begin
    LabelColorField.Value := colortostring(ColorDialog1.Color);
    SaveButton.Enabled    := true;
  end;
end;

procedure TGISLayerForm.ShapeColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then begin
    ShapeColorField.Text := colortostring(ColorDialog1.Color);
    SaveButton.Enabled   := true;
  end else
    ShapeColorField.Text := '';
  ShapeWidthFieldChange(self);
end;

procedure TGISLayerForm.ShapeFileButtonClick(Sender: TObject);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  mForm := GetFormOfType(TGisSetForm);
  If mForm <> nil then begin
    PathVar        := TGisSetForm(mForm).GisPathField.Value;
    SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.SHP;*.TIF;*.SID');
    If SelectFileForm.ShowModal = mrOk then begin
      FileName              := ExtractFileName(SelectFileForm.FileList.FileName);
      ShapeFileField.Value  := UpperCase(substr(FileName,1,at('.',FileName)-1));
      ShapeAliasField.Value := UpperCase(substr(FileName,1,at('.',FileName)-1));
      SaveButton.Enabled    := true;
      ShapeAliasField.SetFocus;
    end;
    SelectFileForm.Free;
  end;
end;
procedure TGISLayerForm.ShapeWidthFieldChange(Sender: TObject);
  function LocalStringToColor(mString: String): TColor;
  begin
    if mString = '' then
      result:= 0
    else
      result := StringToColor(mString);
  end;
begin
  inherited;
  Outline1Shape.Width       := AnyStrToInt(OutlineWidthField.Value);
  Outline2Shape.Width       := AnyStrToInt(OutlineWidthField.Value);
  InnerShape.Width          := AnyStrToInt(ShapeWidthField.Value);
  ShapePanel.Width          := AnyStrToInt(OutlineWidthField.Value) + AnyStrToInt(OutlineWidthField.Value) + AnyStrToInt(ShapeWidthField.Value);

  Try
    InnerShape.Pen.Color      := LocalStringToColor(ShapeColorField.Value);
    InnerShape.Brush.Color    := LocalStringToColor(ShapeColorField.Value);
    Outline1Shape.Pen.Color   := LocalStringToColor(OutlineColorField.Value);
    Outline1Shape.Brush.Color := LocalStringToColor(OutlineColorField.Value);
    Outline2Shape.Pen.Color   := LocalStringToColor(OutlineColorField.Value);
    Outline2Shape.Brush.Color := LocalStringToColor(OutlineColorField.Value);
  except
  end;  

  ShapePanel.Visible        := (AnyStrToInt(OutlineWidthField.Value) + AnyStrToInt(ShapeWidthField.Value) > 0); 
end;

procedure TGISLayerForm.LabelFontButtonClick(Sender: TObject);
begin
  SelectFontField(LabelFontField,LabelColorField,LabelSizeField,LabelBoldField,self);
end;

class procedure TGISLayerForm.SelectFontField(LabelFontField,LabelColorField,LabelSizeField: TAlpineEdit; LabelBoldField: TAlpineCheckBox; mForm: TNormalBaseForm);
var FontDialog1: TFontDialog;
begin
  inherited;
  FontDialog1 := TFontDialog.Create(nil);
  If FontDialog1.Execute then begin
    LabelFontField.Value  := FontDialog1.Font.Name;
    If (FontDialog1.Font.Color < 0) then
      LabelColorField.Value := 'clblack'
    else
      LabelColorField.Value := ColorToString(FontDialog1.Font.Color);

    LabelSizeField.Value     := IntToStr(FontDialog1.Font.size);
    LabelBoldField.Checked   := FontDialog1.Font.Style = [fsBold];
    mForm.SaveButton.Enabled := true;
  end;
  FontDialog1.Free;
end;

procedure TGISLayerForm.IconButtonClick(Sender: TObject);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  mForm := GetFormOfType(TGisSetForm);
  If mForm <> nil then begin
    PathVar        := TGisSetForm(mForm).IconPathField.Value;
    SelectFileForm := TSelectFileForm.Create(self,PathVar,'*.ICO');
    If SelectFileForm.ShowModal = mrOk then begin
      FileName             := ExtractFileName(SelectFileForm.FileList.FileName);
      IconNameField.Value  := UpperCase(substr(FileName,1,at('.',FileName)-1));
      SaveButton.Enabled   := true;
      IconSizeField.SetFocus;
    end;
    SelectFileForm.Free;
    ChangeLabel;
  end;
end;

procedure TGISLayerForm.LabelButtonClick(Sender: TObject);
begin
  SelectGISField(LabelField,ShapeFileField);
end;

class procedure TGISLayerForm.SelectGISField(mEdit,ShapeFileField: TAlpineEdit);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  mForm := GetFormOfType(TGisSetForm);
  If mForm <> nil then begin
    PathVar         := TGisSetForm(mForm).GisPathField.Value;
    SelectFieldForm := TSelectFieldForm.Create(nil,PathVar + '\'+ShapeFileField.Value + '.dbf');
    If SelectFieldForm.ShowModal = mrOK then
      mEdit.Value := SelectFieldForm.FieldBrowse.GetValue('FIELDNAME');
    SelectFieldForm.Free;
  end;
end;

procedure TGISLayerForm.RenButtonClick(Sender: TObject);
Var FileName : String;
    mForm    : TForm;
    PathVar  : String;
begin
  inherited;
  mForm := GetFormOfType(TGisSetForm);
  If mForm <> nil then begin
    PathVar         := TGisSetForm(mForm).GisPathField.Value;
    SelectFieldForm := TSelectFieldForm.Create(self,PathVar + ShapeFileField.Value + '.dbf');
    If SelectFieldForm.ShowModal = mrOK then
      RenFieldField.Value := SelectFieldForm.FieldBrowse.GetValue('FIELDNAME');
    SelectFieldForm.Free;
    PolygonFieldClick(self);
    ChangeLabel;
  end;
end;

procedure TGISLayerForm.RenFieldFieldChange(Sender: TObject);
begin
  inherited;
  If (RenFieldField.Text = '') then begin
    ShapeColorField         .Enabled := true;
    ShapeColorButton        .Enabled := true;
    ShapeWidthField         .Enabled := true;
    OutlineColorField       .Enabled := true;
    OutlineColorButton      .Enabled := true;
    OutLineWidthField       .Enabled := true;
    ShapeExtentField        .Enabled := true;
    ShapeExtentLwrField     .Enabled := true;
    ShapeTransField         .Enabled := true;
    LabelField              .Enabled := true;
    LabelExtentField        .Enabled := true;
    LabelColorField         .Enabled := true;
    LabelFontField          .Enabled := true;
    LabelSizeField          .Enabled := true;
    LabelDuplicateField     .Enabled := true;
    LabelBoldField          .Enabled := true;
    LabelOnlyField          .Enabled := true;
    GisLabelAlignmentIDField.Enabled := true;
    GisLabelPositionIDField .Enabled := true;
    LabelButton             .Enabled := true;
    BackColorButton         .Enabled := true;
    LabelFontButton         .Enabled := true;
    
  end else begin
    ShapeColorField         .Enabled := alpinelogin;
    ShapeColorButton        .Enabled := alpinelogin;
    ShapeWidthField         .Enabled := alpinelogin;
    OutlineColorField       .Enabled := alpinelogin;
    OutlineColorButton      .Enabled := alpinelogin;
    OutLineWidthField       .Enabled := alpinelogin;
    ShapeExtentField        .Enabled := alpinelogin;
    ShapeExtentLwrField     .Enabled := alpinelogin;
    ShapeTransField         .Enabled := alpinelogin;
    LabelField              .Enabled := alpinelogin;
    LabelExtentField        .Enabled := alpinelogin;
    LabelColorField         .Enabled := alpinelogin;
    LabelFontField          .Enabled := alpinelogin;
    LabelSizeField          .Enabled := alpinelogin;
    LabelDuplicateField     .Enabled := alpinelogin;
    LabelBoldField          .Enabled := alpinelogin;
    LabelOnlyField          .Enabled := alpinelogin;
    GisLabelAlignmentIDField.Enabled := alpinelogin;
    GisLabelPositionIDField .Enabled := alpinelogin;
    LabelButton             .Enabled := alpinelogin;
    BackColorButton         .Enabled := alpinelogin;
    LabelFontButton         .Enabled := alpinelogin;
  end;
end;

procedure TGISLayerForm.OutlineColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then begin
    OutLineColorField.Text := colortostring(ColorDialog1.Color);
    SaveButton.Enabled     := true;
  end else
    OutLineColorField.Text := '';
  ShapeWidthFieldChange(self);
end;

end. 
