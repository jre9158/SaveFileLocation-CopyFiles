unit HydInspect;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  db,
  stdctrls,
  buttons,
  extctrls,
  genfunc,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  OrpheusWrapper,
  DBCtrls,
  DBTables,
  OleCtrls,
  vcfi,
  TeEngine,
  Series,
  TeeProcs,
  Chart,
  NormalBase,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPanel,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  AlpineDateTime,
  CusBtn,
  AlpinePanel,
  AlpineBlockBrowse,
  AdvPageControl,
  ComCtrls,
  AlpineMemo,
  AdvGroupBox,
  HtmlBtns,
  AlpineCheck;

type
  THydInspectForm = class(TNormalBaseForm)
    Panel1: TPanel;
    AlpinePanel3: TAlpinePanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    StaticPressureField: TAlpineEdit;
    AlpineEdit17: TAlpineEdit;
    ResidualPressureField: TAlpineEdit;
    Pitot1Field: TAlpineEdit;
    PITOT2Field: TAlpineEdit;
    Pitot3Field: TAlpineEdit;
    DIAM1Field: TAlpineEdit;
    Diam2Field: TAlpineEdit;
    Diam3Field: TAlpineEdit;
    COEF1Field: TAlpineEdit;
    COEF2Field: TAlpineEdit;
    COEF3Field: TAlpineEdit;
    oflow1field: TAlpineEdit;
    oflow2field: TAlpineEdit;
    oflow3field: TAlpineEdit;
    CopyOutlet2Button: TAlpineGlowButton;
    CopyOutlet3Button: TAlpineGlowButton;
    AlpinePanel2: TAlpinePanel;
    AlpineMemo1: TAlpineMemo;
    AlpinePanel4: TAlpinePanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    FlowField: TAlpineEdit;
    TTFOField: TAlpineEdit;
    TTF20Field: TAlpineEdit;
    CalcFlow: TAlpineGlowButton;
    UpdateButton: TAlpineGlowButton;
    Panel2: TPanel;
    generalinfotab: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DescrField: TAlpineEdit;
    DateTimeInspectField: TAlpineDateTime;
    HydInspectTypeIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    SchdPanel: TAlpinePanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    SchdLocIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    Label18: TLabel;
    Label30: TLabel;
    TTF10Field: TAlpineEdit;
    Label31: TLabel;
    HydIDField: TAlpineLookup;
    Panel3: TPanel;
    AlpinePanel1: TAlpinePanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    AlpineEdit2: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    RolodexIDField: TAlpineLookup;
    AlpinePanel5: TAlpinePanel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    FlowTestField: TAlpineCheckBox;
    FlushedField: TAlpineCheckBox;
    AlpineCheckBox1: TAlpineCheckBox;
    ServicedField: TAlpineCheckBox;
    PaintedField: TAlpineCheckBox;
    Label37: TLabel;
    DateTimeStartField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    Label38: TLabel;
    FlowLengthField: TAlpineEdit;
    Label39: TLabel;
    EvLengthButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure EnableCalculateButton(Sender: TObject);
    procedure CalcFlowClick(Sender: TObject);
    procedure CopyOutlet2ButtonClick(Sender: TObject);
    procedure CopyOutlet3ButtonClick(Sender: TObject);
    procedure HydIDFieldEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SchdLocIDFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure HydInspectTypeIDFieldEnter(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure DateTimeEndFieldExit(Sender: TObject);
  private
    F     : TBaseSubTabForm;
    function CalcOutletFlow(pitot, diam, coef : String) : Real;
    function CalcAvailFlow(stat, res: String; ofl, psi : Real) : Real;
  public
    procedure DoAfterSetViewOnly; override;
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
  end;

var
  HydInspectForm: THydInspectForm;

implementation

uses CommonFunc,
     Search,
     CommonVar,
     FormFunc,
     HydFlow,
     HydInsp,
     SecSet,
     Hyd,
     Math;

{$R *.DFM}

class procedure THydInspectForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('DATETIMEINSPECT').AsDateTime := Date;
  LoadSysFieldDef(mFireID, 'HYDINSPECT',DataSet);
end;

procedure THydInspectForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.LookupFormWidth := 400;
  PersIDField.LookUpCode      := IIf(at('PERSCODE',GlobalPersSort) > 0,'PERSBYPERSCODE','PERS');
  PersIDField.SqlExpr         := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + 'ORDER BY ' + GlobalPersSort;
end;

procedure THydInspectForm.SchdLocIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdLocIDField.LookupFormWidth := 320;
  SchdLocIDField.SQLExpr         :=  'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE';
end;

procedure THydInspectForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  inherited;
  SchdShiftNameIDField.LookupFormWidth := 320;
  SchdShiftNameIDField.SQLExpr         :=  'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY CODE';
end;

procedure THydInspectForm.DateTimeEndFieldExit(Sender: TObject);
begin
  inherited;
  EvLengthButtonClick(self);
end;

procedure THydInspectForm.DoAfterSetViewOnly;
begin
  oflow1field.Enabled := False;
  oflow2field.Enabled := False;
  oflow3field.Enabled := False;
  FlowField.Enabled   := False;
  TTFOField.Enabled   := False;
  TTF20Field.Enabled  := False;
end;

procedure THydInspectForm.FormCreate(Sender: TObject);
begin
  inherited;
  HydInspectTypeIdField.CanAddToLookup := CheckSecVar('HYDSETUP');
end;

procedure THydInspectForm.FormShow(Sender: TObject);
begin
  inherited;
  HydIDField.Enabled := (HydIDField.Value = '');
end;

procedure THydInspectForm.HydIDFieldEnter(Sender: TObject);
begin
  inherited;
  HydIDField.LookupFormWidth := 400;
  HydIDField.SQLExpr         := 'SELECT HYDID, LOCATION, HYDCODE, STRNUM, STREET FROM HYD WHERE ' + GetFdidSQL('HYD.FDID') + ' ORDER BY HYDCODE';
end;

procedure THydInspectForm.HydInspectTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  HydInspectTypeIDField.LookupFormWidth := 320;
end;

procedure THydInspectForm.UnitNumFieldEnter(Sender: TObject);
begin
  inherited;
  UnitNumField.LookupFormWidth := 320;
  UnitNumField.SQLExpr         := 'SELECT * FROM VWTRUCK WHERE ' + GetFdidSQL('VWTRUCK.FDID') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM';
end;

procedure THydInspectForm.UpdateButtonClick(Sender: TObject);
var NFPA: Integer;
begin
  inherited;
  If anystrtofloat(FlowField.Value)<>0 then begin
    If BooleanMessageDlg('Update the hydrant record with these settings?') then begin
      Open_Query('FLOWHYD',true,'SELECT * FROM HYD WHERE HYDID = ' + pkvalue(HydIDField.Value));
      If A('FLOWHYD').RecordsExist then begin
        GetTable('FLOWHYD').Edit;
        GetField('FLOWHYD','PITOTPRESSURE').AsFloat    := Pitot1Field.AsFloat;
        GetField('FLOWHYD','STATICPRESSURE').AsFloat   := StaticPressureField.AsFloat;
        GetField('FLOWHYD','RESIDUALPRESSURE').AsFloat := RESIDUALPRESSUREField.AsFloat;
        GetField('FLOWHYD','COEFFICIENT').AsFloat      := COEF1Field.AsFloat;
        GetField('FLOWHYD','FLOWRATE').AsFloat         := FlowField.AsFloat;
        GetField('FLOWHYD','FLOWRATE0').AsFloat        := TTFOField.AsFloat;
        GetField('FLOWHYD','FLOWRATE20').AsFloat       := TTF20Field.AsFloat;
        GetField('FLOWHYD','LASTFLOWDATE').AsDateTime  := Now;
        NFPA := THydForm.GetNFPACode(anystrtofloat(TTF20Field.Value));
        If NFPA > 0 then
          GetField('FLOWHYD','HYDNFPACLASSID').AsInteger := NFPA;
        GetTable('FLOWHYD').Post;
      end;  
      CloseApollo('FLOWHYD');
    end;
  end;
end;

procedure THydInspectForm.EnableCalculateButton(Sender: TObject);
begin
  inherited;
  If (strtofloat(StaticPressureField.Value)=0) or (StrToFloat(ResidualPressureField.Value)=0) or
     (strtofloat(Pitot1Field.Value) = 0) or (StrToFloat(DIAM1Field.Value)  = 0) or
     (StrToFloat(COEF1Field.Value)  = 0) then begin
    CalcFlow.Enabled     := false;
    UpdateButton.Enabled := false;
  end else begin
    CalcFlow.Enabled     := CheckSecVar('HYDEDIT');
    UpdateButton.Enabled := CalcFlow.Enabled;
  end;
end;

procedure THydInspectForm.EvLengthButtonClick(Sender: TObject);
begin
  inherited;
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then
    FlowLengthField.Value := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );

end;

function THydInspectForm.CalcOutletFlow(pitot, diam, coef : String) : Real;
begin
  Result := 0;
  If (anystrtoFloat(pitot) = 0) OR (anystrtofloat(Diam) = 0) OR (anystrtofloat(coef) = 0) then
    exit;
  try
    Result := 29.83 * anystrtofloat(Diam) * anystrtofloat(Diam) * (Sqrt(anystrtofloat(Pitot))) * (anystrtofloat(Coef));
  except
    Result := 0;
  end;
end;

function THydInspectForm.CalcAvailFlow(stat, res: String; ofl, psi : Real) : Real;
var rden : double;
begin
  Result := 0;
  try
    rDen    := ((Power((StrToFloat(Stat) - strtofloat(Res)),0.54)));
    if not((strtofloat(Stat) - psi) < 0) AND (rden <> 0) then begin
      Result  := ofl * ((Power((strtofloat(Stat) - psi),0.54))/rDen);
    end else begin
      Result := 0;
    end;
  except
    Result := 0;
  end;
end;

procedure THydInspectForm.CalcFlowClick(Sender: TObject);
var oflow1  : Real;
    oflow2  : Real;
    oflow3  : Real;
    oflow   : Real;
    aflow00 : double;
    aflow10 : double;
    aflow20 : double;
begin
  oflow1  := CalcOutletFlow(Pitot1Field.Value,DIAM1Field.Value,COEF1Field.Value);
  oflow2  := CalcOutletFlow(Pitot2Field.Value,DIAM2Field.Value,COEF2Field.Value);
  oflow3  := CalcOutletFlow(Pitot3Field.Value,DIAM3Field.Value,COEF3Field.Value);

  oflow   := oflow1 + oflow2 + oflow3;

  aflow00 := CalcAvailFlow(StaticPressureField.Value, ResidualPressureField.Value, oflow, 0);
  aflow10 := CalcAvailFlow(StaticPressureField.Value, ResidualPressureField.Value, oflow, 10);
  aflow20 := CalcAvailFlow(StaticPressureField.Value, ResidualPressureField.Value, oflow, 20);

  If not(oflow > 0) then
    exit;

  try
    FlowField.Value     := FloatToStrF(oflow,ffGeneral, 8,4);
    oflow1field.Value   := FloatToStrF(oflow1,ffGeneral, 8,4);
    oflow2field.Value   := FloatToStrF(oflow2,ffGeneral, 8,4);
    oflow3field.Value   := FloatToStrF(oflow3,ffGeneral, 8,4);
    TTFOField.Value     := FloatToStrF(aflow00,ffGeneral, 8,4);
    TTF10Field.Value    := FloatToStrF(aflow20,ffGeneral, 8,4);
    TTF20Field.Value    := FloatToStrF(aflow20,ffGeneral, 8,4);
  except
    FlowField.Value     := '0';
    oflow1field.Value   := '0';
    oflow2field.Value   := '0';
    oflow3field.Value   := '0';
    TTFOField.Value     := '0';
    TTF10Field.Value    := '0';
    TTF20Field.Value    := '0';
  end;
end;

procedure THydInspectForm.CopyOutlet2ButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Copy Outlet 1 Values?') then begin
    Pitot2Field.Value := Pitot1Field.Value;
    DIAM2Field.Value  := DIAM1Field.Value;
    COEF2Field.Value  := COEF1Field.Value;
  end;
end;

procedure THydInspectForm.CopyOutlet3ButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Copy Outlet 1 Values?') then begin
    Pitot3Field.Value := Pitot1Field.Value;
    DIAM3Field.Value := DIAM1Field.Value;
    COEF3Field.Value := COEF1Field.Value;
  end;
end;

procedure THydInspectForm.DoBeforePost(Sender: TObject);
begin
  inherited;
  If AnyStrToInt(HydIDField.Value)=0 then
    Raise Exception.Create('Must specify the hydrant code!');
end;


end.
