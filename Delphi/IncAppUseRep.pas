unit IncAppUseRep;
 
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
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TIncAppUseRepForm = class(TAlpineBaseSummaryReportForm)
    InvBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    UnitNumField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    PeriodLabel: TQRLabel;
    QRLabel2: TQRLabel;
    CountField: TQRLabel;
    SummaryBand: TQRBand;
    QRLabel19: TQRLabel;
    TotalField: TQRLabel;
    QRLabel3: TQRLabel;
    HourField: TQRLabel;
    TotalHourField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure InvBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NFIRSApp     : TApolloData;
    Inv          : TApolloData;
    TotalVar     : Real;
    TotalHourVar : Real;
    function SqlDateClause: String;
  public
    { Public declarations }
  end;
var
  IncAppUseRepForm: TIncAppUseRepForm;

implementation
uses GenFunc,
     IncCond,
     CommonFunc,
     FormFunc,
     SysRepMan;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TIncAppUseRepForm.FormCreate(Sender: TObject);
Var Form   : TForm;
    SQLVar : String;
begin
  Form                  := GetFormOfType(TINCCondForm);
  If BooleanMessageDlg('Display ONLY active apparatus?') then
    Inv                   := Open_Query('SELECT UNITNUM FROM INV WHERE ' + TIncCondForm(Form).GetInvFdidWhere + ' AND INV.INCLUDE = ' + AddExpr('Y') + ' AND INV.TYPE = ' + AddExpr('TRUCK') + ' ORDER BY INV.UNITNUM')
  else
    Inv                   := Open_Query('SELECT UNITNUM FROM INV WHERE ' + TIncCondForm(Form).GetInvFdidWhere + ' AND INV.TYPE = ' + AddExpr('TRUCK') + ' ORDER BY INV.UNITNUM');
  SQLVar                := 'SELECT NFIRSAPP.UNITNUM, NFIRSAPP.EVLENGTH, NFIRSMAIN.EVLENGTH NFIRSMAINEVLENGTH FROM NFIRSAPP LEFT JOIN NFIRSMAIN ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) WHERE ' + SqlDateClause + ' ORDER BY NFIRSAPP.UNITNUM';
  NFIRSApp              := Open_Query(SQLVar);
  BaseReport.DataSet    := Inv.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  PeriodLabel.Caption   := GetAlpineDateLabel(InitialDate,FinalDate);
  TotalVar              := 0;
  TotalHourVar          := 0;
end;

procedure TIncAppUseRepForm.InvBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var CountVar : Real;
    HourVar  : Real;
begin
  CountVar := 0;
  HourVar  := 0;

  NfirsApp.ExactQueryLocate('UNITNUM',tdbfield(Inv,'UNITNUM'));
  While (tdbfield(NfirsApp,'UNITNUM') = tdbfield(Inv,'UNITNUM')) and Not NfirsApp.Eof do begin
    CountVar := CountVar + 1;
    If GetField(NfirsApp,'EVLENGTH').AsFloat = 0 then
      HourVar  := HourVar + GetField(NfirsApp,'NFIRSMAINEVLENGTH').AsFloat
    else
      HourVar  := HourVar + GetField(NfirsApp,'EVLENGTH').AsFloat;
    NfirsApp.Skip(1);
  end;
  UnitNumField.Caption := tdbfield(Inv,'UNITNUM');

  CountField.Caption   := FormatFloat('#,##0',CountVar);
  HourField.Caption    := FormatFloat('#,##0.0',HourVar);
  TotalVar             := TotalVar + CountVar;
  TotalHourVar         := TotalHourVar + HourVar;
end;

procedure TIncAppUseRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NFIRSApp.Free;
  Inv.Free;
end;

function TIncAppUseRepForm.SqlDateClause: String;
begin
  result := '1=1';
  If BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) <> '' then
    result := BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate);
end;

procedure TIncAppUseRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalVar      := 0;
  TotalHourVar  := 0;
end;

procedure TIncAppUseRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalField.Caption     := FormatFloat('##,##0',TotalVar);
  TotalHourField.Caption := FormatFloat('##,##0',TotalHourVar);
end;

end.
