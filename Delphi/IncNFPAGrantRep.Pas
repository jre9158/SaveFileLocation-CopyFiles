unit IncNFPAGrantRep;
 
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
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AlpineBaseSummaryReport,
  applst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  JPeg;

type
  TIncNFPAGrantRepForm = class(TAlpineBaseSummaryReportForm)
    TitleBand : TQRBand;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel2: TQRLabel;
    YearLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape1: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRImage1: TQRImage;
    LogoImage: TQRImage;
    QRLabel4: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape3: TQRShape;
    QRShape6: TQRShape;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel27: TQRLabel;
    QRShape7: TQRShape;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    Fire100Field: TQRLabel;
    Fire200Field: TQRLabel;
    Fire300Field: TQRLabel;
    Fire400Field: TQRLabel;
    Fire500Field: TQRLabel;
    Fire600Field: TQRLabel;
    Fire700Field: TQRLabel;
    Fire800Field: TQRLabel;
    Fire900Field: TQRLabel;
    VFField: TQRLabel;
    VGFField: TQRLabel;
    VAField: TQRLabel;
    SFField: TQRLabel;
    MVAField: TQRLabel;
    EVField: TQRLabel;
    ResField: TQRLabel;
    EMSBLSField: TQRLabel;
    EMSALSField: TQRLabel;
    EMSBLSSTField: TQRLabel;
    EMSALSSTField: TQRLabel;
    ParField: TQRLabel;
    QRShape2: TQRShape;
    M1Field: TQRLabel;
    M2Field: TQRLabel;
    M3Field: TQRLabel;
    M4Field: TQRLabel;
    MSField: TQRLabel;
    YearLabel2: TQRLabel;
    YearLabel3: TQRLabel;
    YearLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    NFIRSMainTable : TApolloData;

    Fire100Var     : Real;
    Fire200Var     : Real;
    Fire300Var     : Real;
    Fire400Var     : Real;
    Fire500Var     : Real;
    Fire600Var     : Real;
    Fire700Var     : Real;
    Fire800Var     : Real;
    Fire900Var     : Real;

    SFVar          : Real;
    VFVar          : Real;
    VGFVar         : Real;
    VAVar          : Real;

    MVAVar         : Real;
    EVVar          : Real;
    ResVar         : Real;
    EMSBLSVar      : Real;
    EMSALSVar      : Real;
    EMSBLSSTVar    : Real;
    EMSALSSTVar    : Real;
    ParVar         : Real;

    M1Var          : Real;
    M2Var          : Real;
    M3Var          : Real;
    M4Var          : Real;
    MSVar          : Real;
    Procedure CalculateTotal;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  IncNFPAGrantRepForm: TIncNFPAGrantRepForm;

implementation
uses GenFunc,
     Progress,
     IncCond,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TIncNFPAGrantRepForm.FormCreate(Sender: TObject);
begin
  FireDeptField.Caption  := mFireDept;
  NFIRSMainTable         := Open_Query('SELECT * FROM NFIRSMAIN WHERE 1=2');
  TIncCondForm.PrintTitles(TitleBand);
  CalculateTotal;
end;

Procedure TIncNFPAGrantRepForm.CalculateTotal;
Var Form      : TForm;
    YearVar   : String;
begin
  Fire100Var     := 0;
  Fire200Var     := 0;
  Fire300Var     := 0;
  Fire400Var     := 0;
  Fire500Var     := 0;
  Fire600Var     := 0;
  Fire700Var     := 0;
  Fire800Var     := 0;
  Fire900Var     := 0;

  SFVar          := 0;
  VFVar          := 0;
  VGFVar         := 0;
  VAVar          := 0;

  MVAVar         := 0;
  EVVar          := 0;
  ResVar         := 0;
  EMSBLSVar      := 0;
  EMSALSVar      := 0;
  EMSBLSSTVar    := 0;
  EMSALSSTVar    := 0;
  ParVar         := 0;

  M1Var          := 0;
  M2Var          := 0;
  M3Var          := 0;
  M4Var          := 0;
  MSVar          := 0;  

  Form           := GetFormOfType(TINCCondForm);
  YearVar        := GetYear(TIncCondForm(Form).StartDateField.Value);
  NFIRSMainTable := Open_Query('SELECT TYPEACT, ACTION2, ACTION3, SITFOUND, MAID FROM NFIRSMAIN ' + TIncCondForm(Form).SqlWhereClause);
  Open_Query('NFIRSFIR', false, 'SELECT NFIRSFIR.ACREBURN FROM NFIRSFIR LEFT JOIN NFIRSMAIN ON NFIRSMAIN.NFIRSMAINID = NFIRSFIR.NFIRSMAINID WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate));
  While Not A('NFIRSFIR').Eof do begin
     VAVar := VAVar + GetField('NFIRSFIR','ACREBURN').AsFloat;
     A('NFIRSFIR').Skip(1);
  end;
  CloseApollo('NFIRSFIR');
  while not NfirsMainTable.eof do begin
    If (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '1') then
      Fire100Var := Fire100Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '2') then
      Fire200Var := Fire200Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '3') then
      Fire300Var := Fire300Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '4') then
      Fire400Var := Fire400Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '5') then
      Fire500Var := Fire500Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '6') then
      Fire600Var := Fire600Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '7') then
      Fire700Var := Fire700Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '8') then
      Fire800Var := Fire800Var + 1
    else if (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,1) = '9') then
      Fire900Var := Fire900Var + 1;

    If (substr(tdbfield(NfirsMainTable,'SITFOUND'),1,2) = '11') then
      SFVar := SFVar+ 1
    else if (tdbfield(NfirsMainTable,'SITFOUND') >= '130') and (tdbfield(NfirsMainTable,'SITFOUND') <= '138') then
      VFVar := VFVar + 1
    else if (tdbfield(NfirsMainTable,'SITFOUND') >= '140') and (tdbfield(NfirsMainTable,'SITFOUND') <= '143') then
      VGFVar := VGFVar + 1

    else if (tdbfield(NfirsMainTable,'SITFOUND') >= '322') and (tdbfield(NfirsMainTable,'SITFOUND') <= '324') then
      MVAVar := MVAVar + 1
    else if (tdbfield(NfirsMainTable,'SITFOUND') = '352') then
      EVVar := EVVar + 1
    else if (tdbfield(NfirsMainTable,'SITFOUND') = '300') or ((tdbfield(NfirsMainTable,'SITFOUND') >= '353') and (tdbfield(NfirsMainTable,'SITFOUND') <= '381'))  then
      ResVar := ResVar + 1;

    If (tdbfield(NfirsMainTable,'MAID') = '1') then
      M1Var := M1Var + 1
    else if (tdbfield(NfirsMainTable,'MAID') = '2') then
      M2Var := M2Var + 1
    else if (tdbfield(NfirsMainTable,'MAID') = '3') then
      M3Var := M3Var + 1
    else if (tdbfield(NfirsMainTable,'MAID') = '4') then
      M4Var := M4Var + 1;

    If Not (tdbfield(NfirsMainTable,'MAID') = '') and Not (tdbfield(NfirsMainTable,'MAID') = 'N') and (tdbfield(NfirsMainTable,'SITFOUND') = '111') then
      MSVar := MSVar + 1;

    If (tdbfield(NfirsMainTable,'TYPEACT') = '32') or (tdbfield(NfirsMainTable,'ACTION2') = '32') or (tdbfield(NfirsMainTable,'ACTION3') = '32') then begin
      EMSBLSVar := EMSBLSVar + 1;
      If (tdbfield(NfirsMainTable,'TYPEACT') = '34') or (tdbfield(NfirsMainTable,'ACTION2') = '34') or (tdbfield(NfirsMainTable,'ACTION3') = '34') then
        EMSBLSSTVar := EMSBLSSTVar + 1;
    end else if (tdbfield(NfirsMainTable,'TYPEACT') = '33') or (tdbfield(NfirsMainTable,'ACTION2') = '33') or (tdbfield(NfirsMainTable,'ACTION3') = '33') then begin
      EMSALSVar := EMSALSVar + 1;
      If (tdbfield(NfirsMainTable,'TYPEACT') = '34') or (tdbfield(NfirsMainTable,'ACTION2') = '34') or (tdbfield(NfirsMainTable,'ACTION3') = '34') then
        EMSALSSTVar := EMSALSSTVar + 1;
    end;

    NfirsMainTable.Skip(1);
  end;
  NfirsMainTable.Free;

  Fire100Field.Caption  := FormatFloat('##,##0',Fire100Var);
  Fire200Field.Caption  := FormatFloat('##,##0',Fire200Var);
  Fire300Field.Caption  := FormatFloat('##,##0',Fire300Var);
  Fire400Field.Caption  := FormatFloat('##,##0',Fire400Var);
  Fire500Field.Caption  := FormatFloat('##,##0',Fire500Var);
  Fire600Field.Caption  := FormatFloat('##,##0',Fire600Var);
  Fire700Field.Caption  := FormatFloat('##,##0',Fire700Var);
  Fire800Field.Caption  := FormatFloat('##,##0',Fire800Var);
  Fire900Field.Caption  := FormatFloat('##,##0',Fire900Var);

  YearLabel1.Caption    := 'Year ' + YearVar;
  YearLabel2.Caption    := 'Year ' + YearVar;
  YearLabel3.Caption    := 'Year ' + YearVar;
  YearLabel4.Caption    := 'Year ' + YearVar;

  SFField.Caption       := FormatFloat('##,##0',SFVar);
  VFField.Caption       := FormatFloat('##,##0',VFVar);
  VGFField.Caption      := FormatFloat('##,##0',VGFVar);
  VAField.Caption       := FormatFloat('##,##0',VAVar);
  MVAField.Caption      := FormatFloat('##,##0',MVAVar);
  EVField.Caption       := FormatFloat('##,##0',EVVar);
  ResField.Caption      := FormatFloat('##,##0',ResVar);
  EMSBLSField.Caption   := FormatFloat('##,##0',EMSBLSVar);
  EMSALSField.Caption   := FormatFloat('##,##0',EMSALSVar);
  EMSBLSSTField.Caption := FormatFloat('##,##0',EMSBLSSTVar);
  EMSALSSTField.Caption := FormatFloat('##,##0',EMSALSSTVar);
  ParField.Caption      := FormatFloat('##,##0',ParVar);

  M1Field.Caption       := FormatFloat('##,##0',M1Var);
  M2Field.Caption       := FormatFloat('##,##0',M2Var);
  M3Field.Caption       := FormatFloat('##,##0',M3Var);
  M4Field.Caption       := FormatFloat('##,##0',M4Var);
  MSField.Caption       := FormatFloat('##,##0',MSVar);
end;

end.  
