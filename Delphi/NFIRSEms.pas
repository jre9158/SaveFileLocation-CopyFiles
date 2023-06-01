unit NfirsEMS;

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
  alpinecheck,
  AlpineBlockBrowse,
  MySBox,
  alpinedatetime,
  AlpineMemo,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  NFIRS,
  htmlbtns,
  AdvGroupBox;

type
  TNfirsEMSForm = class(TNormalBaseForm)
    MyScrollBox1: TMyScrollBox;
    EFGPanel: TAdvPanel;
    GPanel: TAlpinePanel;
    EFPanel: TAlpinePanel;
    BCPanel: TAdvPanel;
    CPanel: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    DateTimeArrField: TAlpineDateTime;
    TimeArrivedButton: TAlpineGlowButton;
    DateTimeTransField: TAlpineDateTime;
    BPanel: TAlpinePanel;
    Label8: TLabel;
    Label9: TLabel;
    PatNumField: TAlpineEdit;
    DPanelMain: TAdvPanel;
    DPanel: TAlpinePanel;
    Label11: TLabel;
    Label12: TLabel;
    FPanel: TAlpinePanel;
    EPanel: TAlpinePanel;
    E2Panel: TAlpinePanel;
    Label4: TLabel;
    E1Panel: TAlpinePanel;
    Label6: TLabel;
    G1PanelMain: TAlpinePanel;
    G2PanelMain: TAlpinePanel;
    F1Panel: TAlpinePanel;
    Label14: TLabel;
    F2Panel: TAlpinePanel;
    Label10: TLabel;
    G2Panel: TAlpinePanel;
    Label18: TLabel;
    E1Label: TLabel;
    Label26: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label20: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    LMNPanel: TAdvPanel;
    HPanel: TAdvPanel;
    H1Panel: TAlpinePanel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    H3Panel: TAlpinePanel;
    Label34: TLabel;
    Label35: TLabel;
    IJKPanel: TAdvPanel;
    JPanel: TAlpinePanel;
    Label39: TLabel;
    Label40: TLabel;
    KPanel: TAlpinePanel;
    Label42: TLabel;
    Label43: TLabel;
    IPanel: TAlpinePanel;
    Label45: TLabel;
    NPanel: TAlpinePanel;
    Label23: TLabel;
    Label24: TLabel;
    L1Panel: TAlpinePanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    L2Panel: TAlpinePanel;
    Label37: TLabel;
    Label38: TLabel;
    MPanel: TAlpinePanel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    NumofPatientsField: TAlpineEdit;
    Label51: TLabel;
    TimeTransferButton: TAlpineGlowButton;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label36: TLabel;
    ProviderField: TAlpineLookup;
    RaceField: TAlpineLookup;
    AlpineCheckBox9: TAlpineCheckBox;
    AlpineCheckBox10: TAlpineCheckBox;
    AlpineCheckBox11: TAlpineCheckBox;
    AlpineCheckBox12: TAlpineCheckBox;
    AlpineCheckBox13: TAlpineCheckBox;
    AlpineCheckBox14: TAlpineCheckBox;
    AlpineCheckBox15: TAlpineCheckBox;
    AlpineCheckBox16: TAlpineCheckBox;
    AlpineCheckBox17: TAlpineCheckBox;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    AlpineCheckBox18: TAlpineCheckBox;
    AlpineCheckBox19: TAlpineCheckBox;
    AlpineCheckBox20: TAlpineCheckBox;
    AlpineCheckBox21: TAlpineCheckBox;
    AlpineCheckBox22: TAlpineCheckBox;
    AlpineCheckBox23: TAlpineCheckBox;
    AlpineCheckBox24: TAlpineCheckBox;
    AlpineCheckBox25: TAlpineCheckBox;
    AlpineCheckBox26: TAlpineCheckBox;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    AlpineCheckBox27: TAlpineCheckBox;
    AlpineCheckBox28: TAlpineCheckBox;
    AlpineCheckBox29: TAlpineCheckBox;
    AlpineCheckBox30: TAlpineCheckBox;
    AlpineCheckBox31: TAlpineCheckBox;
    AlpineCheckBox32: TAlpineCheckBox;
    AlpineCheckBox33: TAlpineCheckBox;
    AlpineCheckBox34: TAlpineCheckBox;
    AlpineCheckBox35: TAlpineCheckBox;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label89: TLabel;
    AlpineCheckBox36: TAlpineCheckBox;
    Label90: TLabel;
    AlpineCheckBox37: TAlpineCheckBox;
    Label91: TLabel;
    AlpineCheckBox38: TAlpineCheckBox;
    AlpineCheckBox39: TAlpineCheckBox;
    Label92: TLabel;
    Label93: TLabel;
    AlpineCheckBox40: TAlpineCheckBox;
    Label94: TLabel;
    AlpineCheckBox41: TAlpineCheckBox;
    Label95: TLabel;
    AlpineCheckBox42: TAlpineCheckBox;
    AlpineCheckBox43: TAlpineCheckBox;
    Label96: TLabel;
    Label46: TLabel;
    Label33: TLabel;
    AlpineLookup1: TAlpineLookup;
    AlpineLookup2: TAlpineLookup;
    AlpineLookup3: TAlpineLookup;
    AlpineLookup4: TAlpineLookup;
    AlpineLookup5: TAlpineLookup;
    AlpineLookup6: TAlpineLookup;
    AlpineLookup7: TAlpineLookup;
    AlpineLookup8: TAlpineLookup;
    AlpineLookup9: TAlpineLookup;
    AlpineLookup10: TAlpineLookup;
    AlpineLookup11: TAlpineLookup;
    AlpineLookup12: TAlpineLookup;
    Right: TImage;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    AgeField: TAlpineEdit;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    AlpineDateTime1: TAlpineDateTime;
    Label101: TLabel;
    Label102: TLabel;
    AlpineCheckBox44: TAlpineCheckBox;
    Label103: TLabel;
    AlpineCheckBox45: TAlpineCheckBox;
    Label104: TLabel;
    Label105: TLabel;
    AlpineCheckBox46: TAlpineCheckBox;
    Label106: TLabel;
    AlpineCheckBox47: TAlpineCheckBox;
    AlpineLookup13: TAlpineLookup;
    Label107: TLabel;
    CauseInjField: TAlpineLookup;
    AlpineLookup15: TAlpineLookup;
    AdvPanel7: TAdvPanel;
    Label108: TLabel;
    RPanelMain: TAdvPanel;
    RPanel: TAlpinePanel;
    Label109: TLabel;
    Label110: TLabel;
    AdvPanel9: TAdvPanel;
    NarrButton: TAlpineGlowButton;
    SpellButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    NarrField: TAlpineMemo;
    AlpineLookup16: TAlpineLookup;
    AlpineLookup17: TAlpineLookup;
    AlpineLookup18: TAlpineLookup;
    AlpineLookup19: TAlpineLookup;
    AlpineLookup20: TAlpineLookup;
    Label111: TLabel;
    Label112: TLabel;
    G1Panel: TAlpinePanel;
    Label16: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    FirOrWildField: TAlpineCheckBox;
    AlpineCheckBox1: TAlpineCheckBox;
    AlpineCheckBox2: TAlpineCheckBox;
    AlpineCheckBox3: TAlpineCheckBox;
    AlpineCheckBox4: TAlpineCheckBox;
    AlpineCheckBox5: TAlpineCheckBox;
    AlpineCheckBox6: TAlpineCheckBox;
    AlpineCheckBox7: TAlpineCheckBox;
    AlpineCheckBox8: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TimeArrivedButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure NarrButtonClick(Sender: TObject);
    procedure SpellButtonClick(Sender: TObject);
    procedure TimeTransferButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NfirsEMSForm: TNfirsEMSForm;

implementation
uses GenFunc,
     CommonFunc,
     SysNarrSelect,
     CommonVar,
     Clipbrd,
     NFIRSBas,
     NFIRSSet;
{$R *.DFM}


procedure TNfirsEMSForm.TimeArrivedButtonClick(Sender: TObject);
var Form : TForm;
begin
  inherited;
  Form := GetFormofType(TNfirsForm);

  Open_Query('GETNFIRSTIME',false,'SELECT DATETIMEALARM, DATETIMEARR FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(TNfirsForm(Form).pk));

  If GetField('GETNFIRSTIME','DATETIMEARR').AsDateTime > 0 then begin
    DateTimeArrField.Value := GetField('GETNFIRSTIME','DATETIMEARR').AsDateTime;
    DateTimeArrField.TimeField.SetFocus;
  end else
    ShowMessage('Arrivial Time Must Be Entered in Incident Report!');

  CloseApollo('GETNFIRSTIME');
end;

procedure TNfirsEMSForm.TimeTransferButtonClick(Sender: TObject);
var Form : TForm;
begin
  inherited;
  Form := GetFormofType(TNfirsForm);

  If mfireid = '23239' then begin
    Open_Query('DISPHIST',false,'SELECT MAX(DATETIMESTAT) DATETIMESTAT FROM DISPHIST ' +
                                ' LEFT JOIN DISPCALL ON (DISPHIST.DISPCALLID = DISPCALL.DISPCALLID) ' +
                                ' LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                                ' WHERE DISPCALL.NFIRSMAINID = ' + PkValue(TNfirsForm(Form).pk) +
                                ' AND DISPSTATCODE.CODE = ' + AddExpr('ENHOS'));

    If GetField('DISPHIST','DATETIMESTAT').AsDateTime > 0 then begin
      DateTimeTransField.Value := GetField('DISPHIST','DATETIMESTAT').AsDateTime;
      DateTimeTransField.TimeField.SetFocus;
    end else
      ShowMessage('To Hospital Time Not Entered!');

    CloseApollo('DISPHIST');
  end else begin
    Open_Query('GETNFIRSTIME',false,'SELECT DATETIMEIN FROM NFIRSMAIN WHERE NFIRSMAINID = ' + PkValue(TNfirsForm(Form).pk));

    If GetField('GETNFIRSTIME','DATETIMEIN').AsDateTime > 0 then begin
      DateTimeTransField.Value := GetField('GETNFIRSTIME','DATETIMEIN').AsDateTime;
      DateTimeTransField.TimeField.SetFocus;
    end else
      ShowMessage('Clear Time Must Be Entered in Incident Report!');

    CloseApollo('GETNFIRSTIME');
  end;
end;

procedure TNfirsEMSForm.ClearButtonClick(Sender: TObject);
begin
  inherited;
  NarrField.Value := '';
end;

procedure TNfirsEMSForm.FormCreate(Sender: TObject);
begin
  inherited;
  BPanel.Color          := ColorForm;
  CPanel.Color          := ColorForm;
  DPanel.Color          := ColorForm;
  E1Panel.Color         := ColorForm;
  E2Panel.Color         := ColorForm;
  F1Panel.Color         := ColorForm;
  F2Panel.Color         := ColorForm;
  G1Panel.Color         := ColorForm;
  G2Panel.Color         := ColorForm;
  H1Panel.Color         := ColorForm;
  H3Panel.Color         := ColorForm;
  IPanel.Color          := ColorForm;
  JPanel.Color          := ColorForm;
  KPanel.Color          := ColorForm;
  L1Panel.Color         := ColorForm;
  L2Panel.Color         := ColorForm;
  MPanel.Color          := ColorForm;
  NPanel.Color          := ColorForm;
  RPanel.Color          := ColorForm;

  BPanel.HighlightColor  := ColorHighlight;
  CPanel.HighlightColor  := ColorHighlight;
  DPanel.HighlightColor  := ColorHighlight;
  E1Panel.HighlightColor := ColorHighlight;
  E2Panel.HighlightColor := ColorHighlight;
  F1Panel.HighlightColor := ColorHighlight;
  F2Panel.HighlightColor := ColorHighlight;
  G1Panel.HighlightColor := ColorHighlight;
  G2Panel.HighlightColor := ColorHighlight;
  H1Panel.HighlightColor := ColorHighlight;
  H3Panel.HighlightColor := ColorHighlight;
  IPanel.HighlightColor  := ColorHighlight;
  JPanel.HighlightColor  := ColorHighlight;
  KPanel.HighlightColor  := ColorHighlight;
  L1Panel.HighlightColor := ColorHighlight;
  L2Panel.HighlightColor := ColorHighlight;
  MPanel.HighlightColor  := ColorHighlight;
  NPanel.HighlightColor  := ColorHighlight;
  RPanel.HighlightColor  := ColorHighlight;

  BPanel.Color          := ColorLeft;
  CPanel.Color          := ColorLeft;
  DPanel.Color          := ColorLeft;
  E1Panel.Color         := ColorLeft;
  E2Panel.Color         := ColorLeft;
  F1Panel.Color         := ColorLeft;
  F2Panel.Color         := ColorLeft;
  G1Panel.Color         := ColorLeft;
  G2Panel.Color         := ColorLeft;
  H1Panel.Color         := ColorLeft;
  H3Panel.Color         := ColorLeft;
  IPanel.Color          := ColorLeft;
  JPanel.Color          := ColorLeft;
  KPanel.Color          := ColorLeft;
  L1Panel.Color         := ColorLeft;
  L2Panel.Color         := ColorLeft;
  MPanel.Color          := ColorLeft;
  NPanel.Color          := ColorLeft;
  RPanel.Color          := ColorLeft;

  if mfireid = '23239' then begin
    TimeTransferButton.Caption  := 'Same as To Hospital';
  end;

  Open_Query('NFIRSSET',false,'SELECT * FROM NFIRSSET WHERE FDID = ' + AddExpr(mFireID));
  If tdbfield('NFIRSSET','SHOWSECOND') = 'Y' then begin
    DateTimeArrField.ShowSeconds   := true;
    DateTimeTransField.ShowSeconds := true;
  end;
  CloseApollo('NFIRSSET');
end;

procedure TNfirsEMSForm.FormShow(Sender: TObject);
var Form : TForm;
    Count : Integer;
begin
  inherited;
  Form := GetFormofType(TNfirsForm);

  Count := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSEMS WHERE NFIRSMAINID = ' +  PkValue(TNfirsForm(Form).pk));

  NumofPatientsField.Value   := IntToStr(Count);
  
end;

procedure TNfirsEMSForm.NarrButtonClick(Sender: TObject);
begin
  inherited;
  SysNarrSelectForm := TSysNarrSelectForm.Create(application,'NFIRSEMS','NARR');
  If SysNarrSelectForm.ShowModal = mrOK then begin
    ClipBoard.AsText:=SysNarrSelectForm.NarrField.Value;
    NarrField.Memo.PasteFromClipboard;

  end;
  SysNarrSelectForm.Free;
  NarrField.SetFocus;
end;

procedure TNfirsEMSForm.SpellButtonClick(Sender: TObject);
begin
  inherited;
  SpellCheck(NarrField);
end;

end.  
