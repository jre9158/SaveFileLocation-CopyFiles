unit NfirsMaidGridRep;

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
  AppLst,
  db,
  QRExport,
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TNfirsMaidGridRepForm = class(TAlpineBaseSummaryReportForm)
    FDIDBand: TQRBand;
    DeptNameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    HeaderBand: TQRBand;
    AddressLabel: TQRLabel;
    Total1Label: TQRLabel;
    Total2Label: TQRLabel;
    TotalField: TQRLabel;
    QRLabel4: TQRLabel;
    FdidField: TQRLabel;
    QRLabel5: TQRLabel;
    DateLabel: TQRLabel;
    SummaryBand: TQRBand;
    AveLabel: TQRLabel;
    GrandTotalField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    N5Maid1Field: TQRLabel;
    N5Maid2Field: TQRLabel;
    N5Maid3Field: TQRLabel;
    N5Maid4Field: TQRLabel;
    N5Maid5Field: TQRLabel;
    N5Maid1TotField: TQRLabel;
    N5Maid2TotField: TQRLabel;
    N5Maid3TotField: TQRLabel;
    N5Maid4TotField: TQRLabel;
    N5Maid5TotField: TQRLabel;
    QRLabel8: TQRLabel;
    PrimaryFdidField: TQRLabel;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FDIDBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    FdidTable      : TApolloData;
    NfirsMaidTable : TApolloData;
    N5Maid1Var     : Real;
    N5Maid2Var     : Real;
    N5Maid3Var     : Real;
    N5Maid4Var     : Real;
    N5Maid5Var     : Real;

    N5Maid1TotVar  : Real;
    N5Maid2TotVar  : Real;
    N5Maid3TotVar  : Real;
    N5Maid4TotVar  : Real;
    N5Maid5TotVar  : Real;

    TotalVar       : Real;
    GrandTotalVar  : Real;

    PrimaryFdid    : String;
    function GetPrimaryFdid: String;
  public
    { Public declarations }
  end;

var
  NfirsMaidGridRepForm: TNfirsMaidGridRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     commonvar,
     Printers,
     IncCond,
     EMSCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TNfirsMaidGridRepForm.FormCreate(Sender: TObject);
var EmsAttTaskLabel   : TQRLabel;
    EMSAttTaskField   : TQRLabel;
    EMSAttTaskSummary : TQRLabel;
    I                 : Integer;
    ColumnWidth       : Integer;
    ColumnCount       : Integer;
    Form              : TForm;
    ColVar            : Integer;
    EMSAttTaskIDMax   : Integer;
begin
  inherited;
  PrimaryFdid              := GetPrimaryFdid;
  PrimaryFdidField.Caption := SqlLookUp(PrimaryFdid,'FDID','FDID','DEPTNAME');

  Open_Query('NFIRSMAIN',false,'SELECT MAID FROM NFIRSMAIN WHERE 1=2');
  NfirsMaidTable           := Open_Query('SELECT * FROM NFIRSMAID WHERE 1=2');
  FdidTable                := Open_Query('SELECT * FROM FDID WHERE FDID <> ' + AddExpr(PrimaryFdid) + '  ORDER BY DEPTNAME');
  if MFireID = '15090' then
    FdidTable                := Open_Query('SELECT * FROM FDID');
  BaseReport.DataSet       := FdidTable.DataSource.DataSet;
  FireDeptField.Caption    := mFireDept;
  DateLabel.caption        := GetAlpineDateLabel(InitialDate,FinalDate);
  N5Maid1TotVar            := 0;
  N5Maid2TotVar            := 0;
  N5Maid3TotVar            := 0;
  N5Maid4TotVar            := 0;
  N5Maid5TotVar            := 0;
end;

function TNfirsMaidGridRepForm.GetPrimaryFdid: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    Form        : TForm;
    RetVal      : String;
begin
  Form   := GetFormOfType(TIncCondForm);
  RetVal := FireID;
  If MultiFdid then begin
    For RowVar := 0 to TIncCondForm(Form).FdidBrowse.RowCount-1 do begin
      TIncCondForm(Form).FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        RetVal:= TIncCondForm(Form).FdidBrowse.Cells[0,RowVar];
    end;
  end;
  GetPrimaryFdid := RetVal;
end;

procedure TNfirsMaidGridRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  N5Maid1TotVar  := 0;
  N5Maid2TotVar  := 0;
  N5Maid3TotVar  := 0;
  N5Maid4TotVar  := 0;
  N5Maid5TotVar  := 0;

  TotalVar       := 0;
  GrandTotalVar  := 0;
end;

procedure TNfirsMaidGridRepForm.FDIDBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  inherited;
  N5Maid1Var     := 0;
  N5Maid2Var     := 0;
  N5Maid3Var     := 0;
  N5Maid4Var     := 0;
  N5Maid5Var     := 0;

  A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID, MAID FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) + ' AND FDID = ' + AddExpr(PrimaryFdid) + ' AND MDEPT = ' + edbfield(FdidTable,'FDID'));
  While Not A('NFIRSMAIN').Eof do begin
    If tdbfield('NFIRSMAIN','MAID') = '1' then
      N5Maid1Var     := N5Maid1Var + 1
    else if tdbfield('NFIRSMAIN','MAID') = '2' then
      N5Maid2Var     := N5Maid2Var + 1
    else if tdbfield('NFIRSMAIN','MAID') = '3' then
      N5Maid3Var     := N5Maid3Var + 1
    else if tdbfield('NFIRSMAIN','MAID') = '4' then
      N5Maid4Var     := N5Maid4Var + 1
    else if tdbfield('NFIRSMAIN','MAID') = '5' then
      N5Maid5Var     := N5Maid5Var + 1;
    A('NFIRSMAIN').Skip(1);
  end;

  SQLVar := 'SELECT NFIRSMAID.MAID FROM NFIRSMAID LEFT JOIN NFIRSMAIN ON (NFIRSMAID.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
            'WHERE ' +
            BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) + ' AND NFIRSMAIN.FDID = ' + AddExpr(PrimaryFdid) + ' AND ' +
            'NFIRSMAID.FDID = ' + edbfield(FdidTable,'FDID');

  NfirsMaidTable.UpdateSQL(SQLVar);

  While Not NfirsMaidTable.Eof do begin
    If tdbfield(NfirsMaidTable,'MAID') = '1' then
      N5Maid1Var     := N5Maid1Var + 1
    else if tdbfield(NfirsMaidTable,'MAID') = '2' then
      N5Maid2Var     := N5Maid2Var + 1
    else if tdbfield(NfirsMaidTable,'MAID') = '3' then
      N5Maid3Var     := N5Maid3Var + 1
    else if tdbfield(NfirsMaidTable,'MAID') = '4' then
      N5Maid4Var     := N5Maid4Var + 1
    else if tdbfield(NfirsMaidTable,'MAID') = '5' then
      N5Maid5Var     := N5Maid5Var + 1;
    NfirsMaidTable.Skip(1);
  end;

  N5Maid1TotVar         := N5Maid1TotVar + N5Maid1Var;
  N5Maid2TotVar         := N5Maid2TotVar + N5Maid2Var;
  N5Maid3TotVar         := N5Maid3TotVar + N5Maid3Var;
  N5Maid4TotVar         := N5Maid4TotVar + N5Maid4Var;
  N5Maid5TotVar         := N5Maid5TotVar + N5Maid5Var;

  TotalVar              := N5Maid1Var + N5Maid2Var + N5Maid3Var + N5Maid4Var + N5Maid5Var;
  GrandTotalVar         := GrandTotalVar + TotalVar;

  FdidField.Caption     := tdbfield(FdidTable,'FDID');
  DeptNameField.Caption := tdbfield(FdidTable,'DEPTNAME');

  N5Maid1Field.Caption  := FormatFloat('##,##0',N5Maid1Var);
  N5Maid2Field.Caption  := FormatFloat('##,##0',N5Maid2Var);
  N5Maid3Field.Caption  := FormatFloat('##,##0',N5Maid3Var);
  N5Maid4Field.Caption  := FormatFloat('##,##0',N5Maid4Var);
  N5Maid5Field.Caption  := FormatFloat('##,##0',N5Maid5Var);
  TotalField.Caption    := FormatFloat('##,##0',TotalVar);

  PrintBand             := (A('NFIRSMAIN').QueryRecCount > 0) or (NfirsMaidTable.QueryRecCount > 0);
end;


procedure TNfirsMaidGridRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FdidTable.Free;
  NfirsMaidTable.Free;
  CloseApollo('NFIRSMAIN');
end;

procedure TNfirsMaidGridRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  N5Maid1TotField.Caption := FormatFloat('##,##0',N5Maid1TotVar);
  N5Maid2TotField.Caption := FormatFloat('##,##0',N5Maid2TotVar);
  N5Maid3TotField.Caption := FormatFloat('##,##0',N5Maid3TotVar);
  N5Maid4TotField.Caption := FormatFloat('##,##0',N5Maid4TotVar);
  N5Maid5TotField.Caption := FormatFloat('##,##0',N5Maid5TotVar);
  GrandTotalField.Caption := FormatFloat('##,##0',GrandTotalVar);
end;

end.
