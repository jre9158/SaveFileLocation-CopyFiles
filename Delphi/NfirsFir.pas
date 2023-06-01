unit nfirsfir;

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
  CommonFunc,
  OvcBase,
  Blink,
  StdCtrls,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineCheck,
  ExtCtrls,
  MySBox,Nfirs,
  AdvPanel,
  AlpinePanel,
  AlpineLookGrid,
  HtmlBtns,
  AdvGroupBox;

type
  TNfirsFireForm = class(TBaseNfirsForm)

    NfirsFirScrollBox: TMyScrollBox;
    FirePanel: TPanel;
    Panel24: TPanel;
    BlinkLabel1: TBlinkLabel;
    OvcController1: TOvcController;
    Panel1: TPanel;
    BPanel: TAlpinePanel;
    BLabel: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    LocationLabel: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    NotResFlagField: TAlpineCheckBox;
    BuildNoInvField: TAlpineCheckBox;
    AcreNoneField: TAlpineCheckBox;
    LESSONEACRField: TAlpineCheckBox;
    NumResUnitField: TAlpineEdit;
    NumBuildField: TAlpineEdit;
    AcreBurnField: TAlpineEdit;
    CPanel: TAlpinePanel;
    Label26: TLabel;
    Label27: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label90: TLabel;
    Label93: TLabel;
    CLabel: TLabel;
    Label17: TLabel;
    onsite1field: TAlpineLookup;
    onsite2field: TAlpineLookup;
    onsite3field: TAlpineLookup;
    storage1field: TAlpineLookup;
    storage2field: TAlpineLookup;
    storage3field: TAlpineLookup;
    OnsiteNoneField: TAlpineCheckBox;
    Panel2: TPanel;
    DPanel: TAlpinePanel;
    Label96: TLabel;
    Label101: TLabel;
    Label105: TLabel;
    Label122: TLabel;
    AreaOriginField: TAlpineLookup;
    HeatSourceField: TAlpineLookup;
    ItemFirstField: TAlpineLookup;
    TypeMatField: TAlpineLookup;
    ConfinedToField: TAlpineCheckBox;
    DLabel: TLabel;
    Label20: TLabel;
    EPanel: TAlpinePanel;
    ELabel: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    CauseIgnField: TAlpineLookup;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    ContIgn1Label: TLabel;
    ContIgn2Label: TLabel;
    ContIgn1Field: TAlpineLookup;
    ContIgn2Field: TAlpineLookup;
    Shape3: TShape;
    Shape15: TShape;
    Label123: TLabel;
    Label124: TLabel;
    Human7Field: TAlpineCheckBox;
    CauseAgeField: TAlpineEdit;
    HumanSexField: TAlpineLookup;
    Panel3: TPanel;
    FPanel: TAlpinePanel;
    FLabel: TLabel;
    Shape17: TShape;
    Label139: TLabel;
    Label148: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label39: TLabel;
    Shape4: TShape;
    F2Label: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Shape5: TShape;
    EquBrandField: TAlpineEdit;
    EquModelField: TAlpineEdit;
    EquSerialField: TAlpineEdit;
    EquYearField: TAlpineEdit;
    EquPowerField: TAlpineLookup;
    EquPortField: TAlpineLookup;
    EquInvField: TAlpineLookup;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    GPanel: TAlpinePanel;
    Shape1: TShape;
    Label22: TLabel;
    Label23: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label145: TLabel;
    Label146: TLabel;
    FireSupp1Field: TAlpineLookup;
    FireSupp2Field: TAlpineLookup;
    FireSupp3Field: TAlpineLookup;
    NoSuppressionFactorsCheckBox: TAlpineCheckBox;
    GLabel: TLabel;
    Label47: TLabel;
    Panel4: TPanel;
    HPanel: TAlpinePanel;
    Label30: TLabel;
    Label164: TLabel;
    Label167: TLabel;
    Label165: TLabel;
    Label166: TLabel;
    Label168: TLabel;
    Label169: TLabel;
    Label170: TLabel;
    MobTypeField: TAlpineLookup;
    MobMakeField: TAlpineLookup;
    MobModelField: TAlpineEdit;
    MobLicField: TAlpineEdit;
    MobYearField: TAlpineEdit;
    MobStateField: TAlpineEdit;
    MobSerField: TAlpineEdit;
    MobInvField: TAlpineLookup;
    HLabel: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Label52: TLabel;
    Label51: TLabel;
    HumanFactorsPanel: TPanel;
    E3Label: TLabel;
    Human1Field: TAlpineCheckBox;
    Human2Field: TAlpineCheckBox;
    Human3Field: TAlpineCheckBox;
    Human4Field: TAlpineCheckBox;
    Human5Field: TAlpineCheckBox;
    Human6Field: TAlpineCheckBox;
    NoHumanFactorsCheckBox: TAlpineCheckBox;
    Label35: TLabel;
    Label118: TLabel;
    ExposureCheck: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure NotResFlagFieldClick(Sender: TObject);
    procedure BuildNoInvFieldClick(Sender: TObject);
    procedure AcresNoneClick(Sender: TObject);
    procedure LESSONEACRFieldClick(Sender: TObject);
    procedure OnsiteNoneFieldClick(Sender: TObject);
    procedure NoHumanFactorsCheckBoxClick(Sender: TObject);
    procedure Human7FieldClick(Sender: TObject);
    procedure NoSuppressionFactorsCheckBoxClick(Sender: TObject);
    procedure MobInvFieldSuccessfulValidate(Sender: TObject);
    procedure CauseIgnFieldSuccessfulValidate(Sender: TObject);
    procedure ExposureCheckClick(Sender: TObject);
  private
    procedure DoCheckboxes;
  public
    { Public declarations }
    class procedure GetNavigation(mRowObject: TRowObject); override;
    Procedure DoAfterSetViewOnly; override;

  end;

implementation
uses NFIRSSet,genfunc,commonsec,commonnfirs,
     CommonVar;

{$R *.DFM}

procedure TNfirsFireForm.FormCreate(Sender: TObject);
begin
  HumanFactorsPanel.ParentColor := True;
  BPanel.Color          := ColorForm;
  CPanel.Color          := ColorForm;
  DPanel.Color          := ColorForm;
  EPanel.Color          := ColorForm;
  FPanel.Color          := ColorForm;
  GPanel.Color          := ColorForm;
  HPanel.Color          := ColorForm;

  BPanel.HighlightColor := ColorHighlight;
  CPanel.HighlightColor := ColorHighlight;
  DPanel.HighlightColor := ColorHighlight;
  EPanel.HighlightColor := ColorHighlight;
  FPanel.HighlightColor := ColorHighlight;
  GPanel.HighlightColor := ColorHighlight;
  HPanel.HighlightColor := ColorHighlight;

  BLabel.Color          := ColorLeft;
  CLabel.Color          := ColorLeft;
  DLabel.Color          := ColorLeft;
  ELabel.Color          := ColorLeft;
  E3Label.Color         := ColorLeft;
  FLabel.Color          := ColorLeft;
  F2Label.Color         := ColorLeft;
  GLabel.Color          := ColorLeft;
  HLabel.Color          := ColorLeft;

  MobInvField.ReferencingTable          := 'N5MOBPROP';
  MobTypeField.ReferencingTable         := 'N5MOBTYPE';
  MobMakeField.ReferencingTable         := 'N5MOBMAKE';


  if (MFireID = '81000') then begin
    ExposureCheck.Visible   := True;
    ExposureCheck.Enabled   := True;
  end else begin
    ExposureCheck.State     := cbUnchecked;
    ExposureCheck.Visible   := False;
  end;


  NfirsFirScrollBox.VertScrollbar.Position := 0;

{  LinksList.Add('BPanel');
  LinksList.Add('CPanel');
  LinksList.Add('DPanel');
  LinksList.Add('EPanel');
  LinksList.Add('FPanel');
  LinksList.Add('GPanel');
  LinksList.Add('HPanel');}

  {NumResUnitField.AlpineColors.NonEditColor   := ColorRequired;
  NumBuildField.AlpineColors.NonEditColor     := ColorRequired;
  AcreBurnField.AlpineColors.NonEditColor     := ColorRequired;}

  DoCheckboxes;
end;

procedure TNfirsFireForm.DoCheckboxes;
begin
  NumResUnitField.Enabled   := Not NotResFlagField.Checked;
  NumBuildField.Enabled     := Not BuildNoInvField.Checked;
  AcreBurnField.Enabled     := Not(AcreNoneField.Checked) and Not(LESSONEACRField.Checked);

  onsite1field.Enabled      := Not OnsiteNoneField.Checked;
  onsite2field.Enabled      := Not OnsiteNoneField.Checked;
  onsite3field.Enabled      := Not OnsiteNoneField.Checked;
  storage1field.Enabled     := Not OnsiteNoneField.Checked;
  storage2field.Enabled     := Not OnsiteNoneField.Checked;
  storage3field.Enabled     := Not OnsiteNoneField.Checked;

  CauseIgnField.Enabled     := NOT ExposureCheck.Checked;
  ContIgn1Field.Enabled     := NOT ExposureCheck.Checked;
  ContIgn2Field.Enabled     := NOT ExposureCheck.Checked;

  Human1Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human2Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human3Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human4Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human5Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human6Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  Human7Field.Enabled       := Not NoHumanFactorsCheckBox.Checked;
  CauseAgeField.Enabled     := Not (NoHumanFactorsCheckBox.Checked) and Human7Field.Checked;
  HumanSexField.Enabled     := Not (NoHumanFactorsCheckBox.Checked) and Human7Field.Checked;

  FireSupp1Field.Enabled    := Not NoSuppressionFactorsCheckBox.Checked;
  FireSupp2Field.Enabled    := Not NoSuppressionFactorsCheckBox.Checked;
  FireSupp3Field.Enabled    := Not NoSuppressionFactorsCheckBox.Checked;

  MobTypeField.Enabled      := Not (MobInvField.Value = 'N');
  MobMakeField.Enabled      := Not (MobInvField.Value = 'N');
  MobModelField.Enabled     := Not (MobInvField.Value = 'N');
  MobYearField.Enabled      := Not (MobInvField.Value = 'N');
  MobLicField.Enabled       := Not (MobInvField.Value = 'N');
  MobStateField.Enabled     := Not (MobInvField.Value = 'N');
  MobSerField.Enabled       := Not (MobInvField.Value = 'N');
end;

procedure TNfirsFireForm.ExposureCheckClick(Sender: TObject);
begin
  if ExposureCheck.Checked  then begin
    CauseIgnField.Enabled  := False;
    ContIgn1Field.Enabled  := False;
    ContIgn2Field.Enabled  := False;
  end else begin
    CauseIgnField.Enabled  := True;
    ContIgn1Field.Enabled  := True;
    ContIgn2Field.Enabled  := True;
  end;
end;

procedure TNfirsFireForm.NotResFlagFieldClick(Sender: TObject);
begin
  if NotResFlagField.Checked then
    NumResUnitField.Value := '0';
  DoCheckboxes;
end;

procedure TNfirsFireForm.BuildNoInvFieldClick(Sender: TObject);
begin
  if BuildNoInvField.Checked then
    NumBuildField.Value := '0';
  DoCheckboxes;
end;

procedure TNfirsFireForm.AcresNoneClick(Sender: TObject);
begin
  if AcreNoneField.Checked then begin
    AcreBurnField.Value := '0';
    if LESSONEACRField.Checked then LESSONEACRField.Checked := False;
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.LESSONEACRFieldClick(Sender: TObject);
begin
  if LESSONEACRField.Checked then begin
    AcreBurnField.Value := '0';
    if AcreNoneField.Checked then AcreNoneField.Checked := False;
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.OnsiteNoneFieldClick(Sender: TObject);
begin
  if OnsiteNoneField.Checked then begin
    onsite1field.Value := '';
    onsite2field.Value := '';
    onsite3field.Value := '';
    storage1field.Value := '';
    storage2field.Value := '';
    storage3field.Value := '';
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.NoHumanFactorsCheckBoxClick(Sender: TObject);
begin
  if NoHumanFactorsCheckBox.Checked then begin
    Human1Field.Checked := False;
    Human2Field.Checked := False;
    Human3Field.Checked := False;
    Human4Field.Checked := False;
    Human5Field.Checked := False;
    Human6Field.Checked := False;
    Human7Field.Checked := False;
    CauseAgeField.Value := '0';
    HumanSexField.Value := '';
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.Human7FieldClick(Sender: TObject);
begin
  if Human7Field.Checked then begin
    CauseAgeField.Value := '0';
    HumanSexField.Value := '';
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.NoSuppressionFactorsCheckBoxClick(Sender: TObject);
begin
  if NoSuppressionFactorsCheckBox.Checked then begin
    FireSupp1Field.Value := '';
    FireSupp2Field.Value := '';
    FireSupp3Field.Value := '';
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.MobInvFieldSuccessfulValidate(Sender: TObject);
begin
  if (MobInvField.Value = 'N') then begin
    MobTypeField.Value  := '';
    MobMakeField.Value  := '';
    MobModelField.Value := '';
    MobYearField.Value  := '';
    MobLicField.Value   := '';
    MobStateField.Value := '';
    MobSerField.Value   := '';
  end;
  DoCheckboxes;
end;

procedure TNfirsFireForm.CauseIgnFieldSuccessfulValidate(Sender: TObject);
var mNfirsForm: TNfirsForm;
begin
  mNfirsForm := TNFirsForm(GetFormOfType(TNfirsForm));
  If mNfirsForm<>nil then
    mNfirsForm.UpdateNodesBasedOnIncType(False);
end;

class procedure TNfirsFireForm.GetNavigation(mRowObject: TRowObject);
begin
  TNfirsForm.AddLink(mRowObject,'B - Property Details');
  TNfirsForm.AddLink(mRowObject,'C - Onsite Materials');
  TNfirsForm.AddLink(mRowObject,'D - Ignition');
  TNfirsForm.AddLink(mRowObject,'E - Cause of Ignition');
  TNfirsForm.AddLink(mRowObject,'F - Equipment Involved');
  TNfirsForm.AddLink(mRowObject,'G - Fire Suppression');
  TNfirsForm.AddLink(mRowObject,'H - Mobile Involved');
end;




Procedure TNfirsFireForm.DoAfterSetViewOnly;
var
  mFireMarshalChanges: String;
  mCauseIgn,mNfirsMainid: String;
  i: Integer;
  bMakeFieldsInvisible: Boolean;

begin
  inherited;
  DoCheckBoxes;
  if mFireid = '10700' then begin
//    if CheckSecVar('INCSETUP') and (not IsMark) then exit;
    mNfirsmainid := sqllookup(pk,'nfirsfirid','nfirsfir','nfirsmainid');
    SetLoudounVars(mFireMarshalChanges,bMakeFieldsInvisible,mNfirsMainid);


    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',CauseIgnField,'CAUSEIGN',True);
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',AreaOriginField,'AREAORIGIN');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',ItemFirstField,'ITEMFIRST');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',TypeMatField,'TYPEMAT');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',HeatSourceField,'HEATSOURCE');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',ContIgn1Field,'CONTIGN1');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',ContIgn2Field,'CONTIGN1');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquInvField,'EQUINV');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquBrandField,'EQUBRAND');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquModelField,'EQUMODEL');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquSerialField,'EQUSERIAL');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquYearField,'EQUYEAR');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquPowerField,'EQUPOWER');
    CheckLoudounFireControl(bMakeFieldsInvisible,mFireMarshalChanges,'nfirsfir',EquPortField,'EQUPORT');


    if (Pos('nfirsfir.human',mFireMarshalChanges)>0) or (Pos('nfirsfir.nocause',mFireMarshalChanges)>0) then begin
//      EnableAllControls( HumanFactorsPanel,False);
      for i := 0 to HumanFactorsPanel.ControlCount-1 do begin
        if HumanFactorsPanel.Controls[i] is TAlpineCheckBox then
          TAlpineCheckBox(HumanFactorsPanel.Controls[i]).Enabled := False;
      end;
      Human7Field.Enabled := False;
      if bMakeFieldsInvisible then begin
        for i := 0 to HumanFactorsPanel.ControlCount-1 do begin
          if HumanFactorsPanel.Controls[i] is TAlpineCheckBox then
            TAlpineCheckBox(HumanFactorsPanel.Controls[i]).visible := False;
        end;
      end;
    end;
  end;
end;

end.
