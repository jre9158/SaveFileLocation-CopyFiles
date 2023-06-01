unit DispCallTypeRep;
 
interface
 
uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  formfunc,
  strutils,
  dialogs,
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AlpineBaseSummaryReport,
  applst,
  db,
  QRExport,
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TDispCallTypeRepForm = class(TAlpineBaseSummaryReportForm)
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    PeriodLabel: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    DispCallTypeBand: TQRSubDetail;
    DescrField: TQRLabel;
    CountField: TQRLabel;
    QRLabel5: TQRLabel;
    PercentField: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel9: TQRLabel;
    TotalCountField: TQRLabel;
    QRLabel3: TQRLabel;
    CodeField: TQRLabel;
    QRLabel6: TQRLabel;
    DispBoxCodeField: TQRLabel;
    QRLabel11: TQRLabel;
    FdidLabel: TQRLabel;
    dispsubtypeband: TQRSubDetail;
    dispsubtypeDescr: TQRLabel;
    dispsubtypecode: TQRLabel;
    dispsubtypecountField: TQRLabel;
    dispsubtypeTotalPercentField: TQRLabel;
    DispSubTypePercentField: TQRLabel;
    DispSubTypeFooterBand: TQRBand;
    QRLabel8: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DispCallTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure dispsubtypebandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    dispsubtype       : TApolloData;
    DispCallType      : TApolloData;
    CountVar          : Integer;
    TotalCountVar     : Real;
    bUseSecondaryType : Boolean;
    function SqlDateClause: String;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  DispCallTypeRepForm: TDispCallTypeRepForm;
  EMSOnly   : Boolean;
  FireOnly  : Boolean;

implementation
uses GenFunc,
     DispCond,
     commonvar,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TDispCallTypeRepForm.dispsubtypebandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var DispSubTypeCount: Integer;
begin
  inherited;
  DispsubtypeDescr.Caption             := tdbfield(dispsubtype,'DESCR');
  Dispsubtypecode.Caption              := tdbField(dispsubtype,'CODE');
  DispSubTypeCount                     := SqlTableRecCount('SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPSUBTYPEID = ' + pkValue(GetField(dispsubtype,'DISPSUBTYPEID').AsString) +  ') AND (INCSTAT = ' + AddExpr('CLOSED') + ')');

  DispsubtypecountField.Caption        := FormatFloat('##,##0',DispSubTypeCount);
  DispsubtypeTotalPercentField.Caption := MakePercent(DispSubTypeCount, TotalCountVar);
  DispSubTypePercentField.caption      := '('+MakePercent(DispSubTypeCount,CountVar)+')';
end;

procedure TDispCallTypeRepForm.FormCreate(Sender: TObject);
Var Form      : TForm;
begin
  EMSOnly               := False;
  FireOnly              := False;

  DispCallType             := Open_Query('SELECT DISPCALLTYPEID, CODE, DESCR FROM DISPCALLTYPE WHERE HIDDEN IS NULL OR HIDDEN <> ' + AddExpr('Y') + ' ORDER BY SORTORD, CODE, DESCR');
  DispCallTypeBand.DataSet := DispCallType.DataSource.DataSet;
  FireDeptField.Caption    := mFireDept;
  PeriodLabel.Caption      := GetAlpineDateLabel(InitialDate,FinalDate);

  Form                     := GetFormOfType(TDispCondForm);
  DispBoxCodeField.Caption := SqlLookUp(TDispCondForm(Form).DispBoxIDField.Value,'DISPBOXID','DISPBOX','CODE');
  FdidLabel.Caption        := TDispCondForm(Form).GetFdidString;
  bUseSecondaryType        := TDispCondForm(Form).dispsubtypeidField.Checked;
  dispsubtype              := open_query('SELECT * FROM DISPSUBTYPE WHERE 1=2');

  If MFireID = '52097' then
    EMSOnly    :=  BooleanMessageDlg('EMS only?');

  If (MFireID = '52097') and not (EMSOnly) then
    FireOnly    :=  BooleanMessageDlg('Fire only?');

  If EMSOnly then
    TotalCountVar            := SqlTableRecCount('SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID > 0) AND (INCSTAT = ' + AddExpr('CLOSED') + ')' + ' AND (DISPCALLTYPEID = ' + AddExpr('17') + ' OR DISPCALLTYPEID = ' + AddExpr('24') + ' OR DISPCALLTYPEID = ' + AddExpr('30') + ' OR DISPCALLTYPEID = ' + AddExpr('38') + ' OR DISPCALLTYPEID = ' + AddExpr('35') +' OR DISPCALLTYPEID = ' + AddExpr('36') +' OR DISPCALLTYPEID = ' + AddExpr('39') +' OR DISPCALLTYPEID = ' + AddExpr('40') +' OR DISPCALLTYPEID = ' + AddExpr('41') +')')
  else if FireOnly then
    TotalCountVar            := SqlTableRecCount('SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID > 0) AND (INCSTAT = ' + AddExpr('CLOSED') + ')' + ' AND (DISPCALLTYPEID <> ' + AddExpr('17') + ' AND DISPCALLTYPEID <> ' + AddExpr('24') + ' AND DISPCALLTYPEID <> ' + AddExpr('30') + ' AND DISPCALLTYPEID <> ' + AddExpr('38') +  ' AND DISPCALLTYPEID <> ' + AddExpr('36') + ' AND DISPCALLTYPEID <> ' + AddExpr('35') + ' AND DISPCALLTYPEID <> ' + AddExpr('39') + ' AND DISPCALLTYPEID <> ' + AddExpr('40') + ' AND DISPCALLTYPEID <> ' + AddExpr('41')+')')
  else
    TotalCountVar            := SqlTableRecCount('SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID > 0) AND (INCSTAT = ' + AddExpr('CLOSED') + ')');

  If bUseSecondaryType then begin
    dispsubtypeband.DataSet  := DispSubType.datasource.Dataset;
    CountField.Font.Style    := [fsBold];
    PercentField.Font.Style  := [fsBold];
  end;
  Dispsubtypeband.enabled       := bUseSecondaryType;
  DispsubtypefooterBand.Enabled := bUseSecondaryType;
end;

procedure TDispCallTypeRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DispCallType.Free;
  dispsubtype.Free;  
end;

function TDispCallTypeRepForm.SqlDateClause: String;
Var Form       : TForm;
    DispBoxID  : String;
    FdidString : String;
begin
  result := '1=1 AND ';
  If BuildSQLAlpineDate('DISPCALL.DATETIMEREC',InitialDate,FinalDate) <> '' then
    result := result + BuildSQLAlpineDate('DISPCALL.DATETIMEREC',InitialDate,FinalDate) + ' AND ';

  Form      := GetFormOfType(TDispCondForm);
  DispBoxID := TDispCondForm(Form).DispBoxIDField.Value;
  If AnyStrToInt(DispBoxID) > 0 then
    result := result + ' DISPCALL.DISPBOXID = ' + DispBoxID + ' AND ';

  FdidString := TDispCondForm(Form).GetFdidWhere;
  If Not (FdidString = '') then
    result := result + FdidString + ' AND ';
end;

procedure TDispCallTypeRepForm.DispCallTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  inherited;
  If EMSOnly then begin
    If ((GetField(DispCallType,'CODE').AsString = '2416') or (GetField(DispCallType,'CODE').AsString = '1600') or (GetField(DispCallType,'CODE').AsString = '1602') or (GetField(DispCallType,'CODE').AsString = '1603')or (GetField(DispCallType,'CODE').AsString = '16FC')or(GetField(DispCallType,'CODE').AsString = '1604') or (GetField(DispCallType,'CODE').AsString = '23EMS') or (GetField(DispCallType,'CODE').AsString = 'EMS SILENT') or (GetField(DispCallType,'CODE').AsString = '16SQ') or (GetField(DispCallType,'CODE').AsString = '1609')) then begin
      SQLVar             := 'SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID = ' + PKValue(GetField(DispCallType,'DISPCALLTYPEID').AsString) +  ') AND (INCSTAT = ' + AddExpr('CLOSED') + ')';
      CountVar           := SqlTableRecCount(SQLVar);
      CodeField.Caption  := tdbfield(DispCallType,'CODE');
      DescrField.Caption := tdbfield(DispCallType,'DESCR');
      CountField.Caption := FormatFloat('##,##0',CountVar);
      If TotalCountVar > 0 then
        PercentField.Caption := FormatFloat('##0.00',100 * (CountVar / TotalCountVar))
      else
        PercentField.Caption := '0.00';
      Dispsubtype.UpdateSql('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = '+pkValue(GetField(DispCallType,'DISPCALLTYPEID').AsString));
      If bUseSecondaryType then
        dispsubtypeband.DataSet  := DispSubType.datasource.Dataset;
    end else
      printband   := false;
  end else if FireOnly then begin
    If ((GetField(DispCallType,'CODE').AsString <> '2416') and (GetField(DispCallType,'CODE').AsString <> '1600') and (GetField(DispCallType,'CODE').AsString <> '23EMS') and (GetField(DispCallType,'CODE').AsString <> 'EMS SILENT') and(GetField(DispCallType,'CODE').AsString <> '16FC') and (GetField(DispCallType,'CODE').AsString <> '16SQ') and (GetField(DispCallType,'CODE').AsString <> '1609') and (GetField(DispCallType,'CODE').AsString <> '1602')and (GetField(DispCallType,'CODE').AsString <> '1603') and (GetField(DispCallType,'CODE').AsString <> '1604')) then begin
      SQLVar             := 'SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID = ' + PKValue(GetField(DispCallType,'DISPCALLTYPEID').AsString) +  ') AND (INCSTAT = ' + AddExpr('CLOSED') + ')';
      CountVar           := SqlTableRecCount(SQLVar);
      CodeField.Caption  := tdbfield(DispCallType,'CODE');
      DescrField.Caption := tdbfield(DispCallType,'DESCR');
      CountField.Caption := FormatFloat('##,##0',CountVar);
      If TotalCountVar > 0 then
        PercentField.Caption := FormatFloat('##0.00',100 * (CountVar / TotalCountVar))
      else
        PercentField.Caption := '0.00';
      Dispsubtype.UpdateSql('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = '+pkValue(GetField(DispCallType,'DISPCALLTYPEID').AsString));
      If bUseSecondaryType then
        dispsubtypeband.DataSet  := DispSubType.datasource.Dataset;
    end else
      printband   := false;
  end else begin
    SQLVar             := 'SELECT COUNT(*) FROM DISPCALL WHERE ' + SqlDateClause + ' (DISPCALLTYPEID = ' + PKValue(GetField(DispCallType,'DISPCALLTYPEID').AsString) +  ') AND (INCSTAT = ' + AddExpr('CLOSED') + ')';
    CountVar           := SqlTableRecCount(SQLVar);
    CodeField.Caption  := tdbfield(DispCallType,'CODE');
    DescrField.Caption := tdbfield(DispCallType,'DESCR');
    CountField.Caption := FormatFloat('##,##0',CountVar);
    If TotalCountVar > 0 then
      PercentField.Caption := FormatFloat('##0.00',100 * (CountVar / TotalCountVar))
    else
      PercentField.Caption := '0.00';
    Dispsubtype.UpdateSql('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = '+pkValue(GetField(DispCallType,'DISPCALLTYPEID').AsString));
    If bUseSecondaryType then
      dispsubtypeband.DataSet  := DispSubType.datasource.Dataset;
  end;

end;

procedure TDispCallTypeRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalCountField.Caption := FormatFloat('##,##0',TotalCountVar);
end;

end.
