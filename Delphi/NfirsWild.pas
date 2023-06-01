unit nfirswild;
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
  AlpineCheck,
  AlpineBlockBrowse,
  MySBox,
  AlpineDateTime,
  AlpineMemo,
  AdvGlowButton,
  AlpineGlowButton,
  Nfirs,
  AlpinePanel,
  htmlbtns,
  AdvGroupBox;

type
  TNfirsWildlandForm = class(TBaseNfirsForm)
    OvcController1: TOvcController;
    FS: TMyScrollBox;
    AlpinePanel2: TPanel;
    AdvPanel1: TAdvPanel;
    BPanel: TAlpinePanel;
    BLabel: TLabel;
    Label13: TLabel;
    CPanel: TAlpinePanel;
    CLabel: TLabel;
    Label9: TLabel;
    AdvPanel2: TAdvPanel;
    D1Panel: TAlpinePanel;
    D1Label: TLabel;
    Label10: TLabel;
    D2Panel: TAlpinePanel;
    D2Label: TLabel;
    Label12: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    AdvPanel3: TAdvPanel;
    D3PANEL: TAlpinePanel;
    D3LABEL: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    GPANEL: TAlpinePanel;
    GLABEL: TLabel;
    Label28: TLabel;
    Label399: TLabel;
    Label400: TLabel;
    Label401: TLabel;
    Label402: TLabel;
    Label403: TLabel;
    Label404: TLabel;
    Label405: TLabel;
    Label406: TLabel;
    Label407: TLabel;
    Label408: TLabel;
    Label409: TLabel;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    TownshipField: TAlpineEdit;
    TownNSField: TAlpineLookup;
    RangeField: TAlpineEdit;
    RangeEWField: TAlpineLookup;
    SectionField: TAlpineEdit;
    SUBSECTCField: TAlpineLookup;
    MERIDIANCField: TAlpineLookup;
    AreaTypeField: TAlpineLookup;
    Human5Field: TAlpineCheckBox;
    Human6Field: TAlpineCheckBox;
    Human7Field: TAlpineCheckBox;
    Human3Field: TAlpineCheckBox;
    Human4Field: TAlpineCheckBox;
    Human2Field: TAlpineCheckBox;
    Human1Field: TAlpineCheckBox;
    HumanNoneField: TAlpineCheckBox;
    FireCauseField: TAlpineLookup;
    D4PANEL: TAlpinePanel;
    D4LABEL: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    EPANEL: TAlpinePanel;
    ELABEL: TLabel;
    Label30: TLabel;
    FPANEL: TAlpinePanel;
    FLABEL: TLabel;
    Label35: TLabel;
    FACTCONT1Field: TAlpineLookup;
    FACTCONT2Field: TAlpineLookup;
    Label1: TLabel;
    Label2: TLabel;
    FIRESUPP1FIELD: TAlpineLookup;
    FIRESUPP2FIELD: TAlpineLookup;
    FIRESUPP3FIELD: TAlpineLookup;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    HeatSourceField: TAlpineLookup;
    MobTypeField: TAlpineLookup;
    EquInvField: TAlpineLookup;
    AdvPanel4: TAdvPanel;
    I4Panel: TAlpinePanel;
    I4Label: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    AdvPanel5: TAdvPanel;
    HPanel: TAlpinePanel;
    HLabel: TLabel;
    Label16: TLabel;
    I1Panel: TAlpinePanel;
    I1Label: TLabel;
    Label20: TLabel;
    I2Panel: TAlpinePanel;
    I2Label: TLabel;
    Label22: TLabel;
    I3Panel: TAlpinePanel;
    I3Label: TLabel;
    Label27: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label29: TLabel;
    Label437: TLabel;
    Label440: TLabel;
    Label441: TLabel;
    Label442: TLabel;
    Label443: TLabel;
    Label444: TLabel;
    Label445: TLabel;
    Label446: TLabel;
    Label447: TLabel;
    WeathIDField: TAlpineEdit;
    WeathTypeField: TAlpineLookup;
    WindDirectField: TAlpineLookup;
    MyDBEdit11: TAlpineEdit;
    MyDBEdit12: TAlpineEdit;
    MyDBEdit13: TAlpineEdit;
    MyDBEdit14: TAlpineEdit;
    FireDangerField: TAlpineLookup;
    AlpineEdit1: TAlpineEdit;
    Label8: TLabel;
    AlpineEdit2: TAlpineEdit;
    Label18: TLabel;
    AlpineEdit3: TAlpineEdit;
    Label460: TLabel;
    Label461: TLabel;
    Label462: TLabel;
    Label463: TLabel;
    PrimeCrop1Field: TAlpineEdit;
    PrimeCrop2Field: TAlpineEdit;
    PrimeCrop3Field: TAlpineEdit;
    AdvPanel6: TAdvPanel;
    JPanel: TAlpinePanel;
    JLabel: TLabel;
    Label24: TLabel;
    AdvPanel7: TAdvPanel;
    KPanel: TAlpinePanel;
    KLabel: TLabel;
    Label32: TLabel;
    L1Panel: TAlpinePanel;
    L1Label: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    L4Panel: TAlpinePanel;
    L4Label: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    L2Panel: TAlpinePanel;
    L2Label: TLabel;
    Label39: TLabel;
    Label43: TLabel;
    L3Panel: TAlpinePanel;
    L3Label: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    AdvPanel8: TAdvPanel;
    MPanel: TAlpinePanel;
    MLabel: TLabel;
    Label48: TLabel;
    NPanel: TAlpinePanel;
    NLabel: TLabel;
    Label56: TLabel;
    Label466: TLabel;
    Label467: TLabel;
    Label468: TLabel;
    Label469: TLabel;
    Label470: TLabel;
    Label471: TLabel;
    BurnUField: TAlpineEdit;
    POUCheck: TRadioButton;
    MyDBEdit22: TAlpineEdit;
    PO1Check: TRadioButton;
    PO2Check: TRadioButton;
    MyDBEdit23: TAlpineEdit;
    MyDBEdit24: TAlpineEdit;
    PO3Check: TRadioButton;
    PO4Check: TRadioButton;
    MyDBEdit25: TAlpineEdit;
    PO5Check: TRadioButton;
    MyDBEdit26: TAlpineEdit;
    PO6Check: TRadioButton;
    MyDBEdit27: TAlpineEdit;
    MyDBEdit28: TAlpineEdit;
    MyDBEdit30: TAlpineEdit;
    PO7Check: TRadioButton;
    PO8Check: TRadioButton;
    MyDBEdit31: TAlpineEdit;
    PO0Check: TRadioButton;
    MyDBEdit33: TAlpineEdit;
    NFDRSFuelField: TAlpineLookup;
    PersRespField: TAlpineLookup;
    Label94: TLabel;
    GenderField: TAlpineLookup;
    Label485: TLabel;
    Label486: TLabel;
    Label487: TLabel;
    DOBField: TAlpineDateTime;
    AgeField: TAlpineEdit;
    ActPersField: TAlpineLookup;
    Label493: TLabel;
    Label494: TLabel;
    Label495: TLabel;
    Label496: TLabel;
    HorzDistField: TAlpineEdit;
    RowTypeField: TAlpineLookup;
    Label499: TLabel;
    Label500: TLabel;
    Label501: TLabel;
    Label502: TLabel;
    Label503: TLabel;
    Label504: TLabel;
    Label505: TLabel;
    Label506: TLabel;
    Label507: TLabel;
    MyDBEdit36: TAlpineEdit;
    RELPOSField: TAlpineLookup;
    ASPECTField: TAlpineLookup;
    MyDBEdit37: TAlpineEdit;
    MyDBEdit38: TAlpineEdit;
    PropManOwnField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure HumanNoneFieldClick(Sender: TObject);
    procedure DOBFieldExit(Sender: TObject);
    procedure POUCheckClick(Sender: TObject);
  private
    procedure DoCheckboxes;
  public
    { Public declarations }
    class procedure GetNavigation(mRowObject: TRowObject); override;
    procedure DoAfterSetControls(Sender: TObject); override;
  end;

var
  NfirsWildlandForm: TNfirsWildlandForm;

implementation
uses GenFunc,
     CommonFunc,
     NFIRSSet,
     Commonvar,
     Variants;
     
{$R *.DFM}

procedure TNfirsWildlandForm.FormCreate(Sender: TObject);
var mNfirsForm: TNfirsForm;
begin
  inherited;
  BPanel.Color  := ColorForm;
  CPanel.Color  := ColorForm;
  D1Panel.Color := ColorForm;
  D2Panel.Color := ColorForm;
  D3Panel.Color := ColorForm;
  D4Panel.Color := ColorForm;
  EPanel.Color  := ColorForm;
  FPanel.Color  := ColorForm;
  GPanel.Color  := ColorForm;
  HPanel.Color  := ColorForm;
  I1Panel.Color := ColorForm;
  I2Panel.Color := ColorForm;
  I3Panel.Color := ColorForm;
  I4Panel.Color := ColorForm;
  JPanel.Color  := ColorForm;
  KPanel.Color  := ColorForm;
  L1Panel.Color := ColorForm;
  L2Panel.Color := ColorForm;
  L3Panel.Color := ColorForm;
  L4Panel.Color := ColorForm;
  MPanel.Color  := ColorForm;
  NPanel.Color  := ColorForm;

  BPanel.HighlightColor  := ColorHighlight;
  CPanel.HighlightColor  := ColorHighlight;
  D1Panel.HighlightColor := ColorHighlight;
  D2Panel.HighlightColor := ColorHighlight;
  D3Panel.HighlightColor := ColorHighlight;
  D4Panel.HighlightColor := ColorHighlight;
  EPanel.HighlightColor  := ColorHighlight;
  FPanel.HighlightColor  := ColorHighlight;
  GPanel.HighlightColor  := ColorHighlight;
  HPanel.HighlightColor  := ColorHighlight;
  I1Panel.HighlightColor := ColorHighlight;
  I2Panel.HighlightColor := ColorHighlight;
  I3Panel.HighlightColor := ColorHighlight;
  I4Panel.HighlightColor := ColorHighlight;
  JPanel.HighlightColor  := ColorHighlight;
  KPanel.HighlightColor  := ColorHighlight;
  L1Panel.HighlightColor := ColorHighlight;
  L2Panel.HighlightColor := ColorHighlight;
  L3Panel.HighlightColor := ColorHighlight;
  L4Panel.HighlightColor := ColorHighlight;
  MPanel.HighlightColor  := ColorHighlight;
  NPanel.HighlightColor  := ColorHighlight;

  BLabel.Color  := ColorLeft;
  CLabel.Color  := ColorLeft;
  D1Label.Color := ColorLeft;
  D2Label.Color := ColorLeft;
  D3Label.Color := ColorLeft;
  D4Label.Color := ColorLeft;
  ELabel.Color  := ColorLeft;
  FLabel.Color  := ColorLeft;
  GLabel.Color  := ColorLeft;
  HLabel.Color  := ColorLeft;
  I1Label.Color := ColorLeft;
  I2Label.Color := ColorLeft;
  I3Label.Color := ColorLeft;
  I4Label.Color := ColorLeft;
  JLabel.Color  := ColorLeft;
  KLabel.Color  := ColorLeft;
  L1Label.Color := ColorLeft;
  L2Label.Color := ColorLeft;
  L3Label.Color := ColorLeft;
  L4Label.Color := ColorLeft;
  MLabel.Color  := ColorLeft;
  NLabel.Color  := ColorLeft;

{  LinksList.Add('BPanel');
  LinksList.Add('CPanel');
  LinksList.Add('D1Panel');
  LinksList.Add('D2Panel');
  LinksList.Add('D3Panel');
  LinksList.Add('D4Panel');
  LinksList.Add('EPanel');
  LinksList.Add('FPanel');
  LinksList.Add('GPanel');
  LinksList.Add('HPanel');
  LinksList.Add('I1Panel');
  LinksList.Add('I2Panel');
  LinksList.Add('I3Panel');
  LinksList.Add('I4Panel');
  LinksList.Add('JPanel');
  LinksList.Add('KPanel');
  LinksList.Add('L1Panel');
  LinksList.Add('L2Panel');
  LinksList.Add('L3Panel');
  LinksList.Add('L4Panel');
  LinksList.Add('MPanel');
  LinksList.Add('NPanel');}
  DoCheckboxes;
  FS.VertScrollBar.Position := 0;

end;

procedure TNfirsWildlandForm.DoCheckboxes;
begin
  Human1Field.Enabled   := Not HumanNoneField.Checked;
  Human2Field.Enabled   := Not HumanNoneField.Checked;
  Human3Field.Enabled   := Not HumanNoneField.Checked;
  Human4Field.Enabled   := Not HumanNoneField.Checked;
  Human5Field.Enabled   := Not HumanNoneField.Checked;
  Human6Field.Enabled   := Not HumanNoneField.Checked;
  Human7Field.Enabled   := Not HumanNoneField.Checked;
end;
 

procedure TNfirsWildlandForm.HumanNoneFieldClick(Sender: TObject);
begin
  If HumanNoneField.Checked then begin
    Human1Field.Checked := False;
    Human2Field.Checked := False;
    Human3Field.Checked := False;
    Human4Field.Checked := False;
    Human5Field.Checked := False;
    Human6Field.Checked := False;
    Human7Field.Checked := False;
  end;
  DoCheckboxes;
end;

procedure TNfirsWildlandForm.POUCheckClick(Sender: TObject);
begin
  PropManOwnField.Value := IntToStr( (Sender as TRadioButton).Tag);
end;

procedure TNfirsWildlandForm.DOBFieldExit(Sender: TObject);
Var AgeVar: Real;
begin
  inherited;
  AgeVar := 0;
  If (DobField.Value > 0) then begin
    AgeVar := (Date - DobField.Value) / 365.25;
    If AgeVar > 1 then
      AgeField.Text := FormatFloat('##0',Trunc(AgeVar));
  end;
end;

class procedure TNfirsWildlandForm.GetNavigation(mRowObject: TRowObject);
begin
  TNfirsForm.AddLink(mRowObject,'B - Alternate Location');
  TNfirsForm.AddLink(mRowObject,'C - Area Type');
  TNfirsForm.AddLink(mRowObject,'D1 - Fire Cause');
  TNfirsForm.AddLink(mRowObject,'D2 - Human Factors');
  TNfirsForm.AddLink(mRowObject,'D3 - Contributing Factors');
  TNfirsForm.AddLink(mRowObject,'D4 - Fire Suppression');
  TNfirsForm.AddLink(mRowObject,'E - Heat Source');
  TNfirsForm.AddLink(mRowObject,'F - Mobile Property Type');
  TNfirsForm.AddLink(mRowObject,'G - Equipment');
  TNfirsForm.AddLink(mRowObject,'H - Weather');
  TNfirsForm.AddLink(mRowObject,'I1 - Buildings Ignited');
  TNfirsForm.AddLink(mRowObject,'I2 - Buildings Threatened');
  TNfirsForm.AddLink(mRowObject,'I3 - Total Acres Burned');
  TNfirsForm.AddLink(mRowObject,'I4 - Primary Crops Burned');
  TNfirsForm.AddLink(mRowObject,'J - Property Management');
  TNfirsForm.AddLink(mRowObject,'K - NFDRS Fuel');
  TNfirsForm.AddLink(mRowObject,'L1 - Person Responsible');
  TNfirsForm.AddLink(mRowObject,'L2 - Gender');
  TNfirsForm.AddLink(mRowObject,'L3 - Age');
  TNfirsForm.AddLink(mRowObject,'L4 - Activity');
  TNfirsForm.AddLink(mRowObject,'M - Right of way');
  TNfirsForm.AddLink(mRowObject,'N - Fire Behavior');
end;

procedure TNfirsWildlandForm.DoAfterSetControls(Sender: TObject);
begin
  appendtolog('Value of ManOwn Field:'+PropManOwnField.Value);
  if PropManOwnField.Value = '1' then
    POUCheck.Checked  := True
  else if PropManOwnField.Value = '2' then
    PO1Check.Checked  := True
  else if PropManOwnField.Value = '3' then
    PO2Check.Checked := True
  else if PropManOwnField.Value = '4' then
    PO3Check.Checked := True
  else if PropManOwnField.Value = '5' then
    PO4Check.Checked := True
  else if PropManOwnField.Value = '6' then
    PO5Check.Checked := True
  else if PropManOwnField.Value = '7' then
    PO6Check.Checked := True
  else if PropManOwnField.Value = '8' then
    PO7Check.Checked := True
  else if PropManOwnField.Value = '9' then
    PO8Check.Checked := True
  else if PropManOwnField.Value = '10' then
    PO0Check.Checked := True;
end;


end.
