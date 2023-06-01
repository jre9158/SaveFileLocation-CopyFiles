unit IncLog;

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
  grimgctrl,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TIncLogForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    StreetField: TQRLabel;
    SitFoundDescrField: TQRLabel;
    StrNumField: TQRLabel;
    TimeAlarmField: TQRLabel;
    RoomAptField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel1: TQRLabel;
    FdidField: TQRLabel;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    NarrBand: TQRSubDetail;
    TotIncField: TQRLabel;
    NarrField: TQRLabel;
    QRLabel4: TQRLabel;
    EvLengthField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel10: TQRLabel;
    TotalEvLengthField: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    ZipField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NarrBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    TotIncVar: Integer;
    TotalEvLengthVar: Real;
    incnumber: string;
    UnitNum: string;
    NfirsMainTable: TApolloData;
    NfirsAppTable: TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: string; override;
  end;
{$I rednmx.inc}

var
  IncLogForm: TIncLogForm;

implementation
uses GenFunc,
  IncCond,
  CommonFunc,
  SysRepMan;

{$R *.DFM}

procedure TIncLogForm.FormCreate(Sender: TObject);
var SortOrder : string;
    Form      : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  SortOrder             := TIncCondForm(Form).SelectOrder;
  NfirsMainTable        := Open_Query(Sql + SortOrder);
  BaseReport.DataSet    := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TotIncVar             := 0;
  TotalEvLengthVar      := 0;
  UnitNum               := '';
  Incnumber             := '';
  NFIRSMainBand.PKField := 'NFIRSMAINID';
  if not TIncCondForm(Form).CommentsCheck.Checked then
    NarrBand.Enabled := False;
  TIncCondForm.PrintTitles(TitleBand);
end;

procedure TIncLogForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var  PrintBand: Boolean);
begin
  inherited;
  TotalEvLengthField.Caption := FormatFloat('###,##0.0', TotalEvLengthVar);
  TotIncField.Caption := FormatFloat('###,##0', TotIncVar);
end;

procedure TIncLogForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NfirsMainTable.Free;
  if not (UnitNum = '') then
    NfirsAppTable.Free;
end;

function TIncLogForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAIN.NFIRSMAINID,NFIRSMAIN.ZIP, NFIRSMAIN.EVLENGTH, SITFOUND, N5INCTYPE.DESCR SITFOUNDDESCR, NFIRSMAIN.FDID, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.INCNUM, NFIRSMAIN.EXPNUM, STRNUM, STREET, ROOMAPT, STATE, CITY, ZIP, NFIRSMAIN.NARR FROM NFIRSMAIN';
end;

function TIncLogForm.ReportJoins: string;
var
  Form: TForm;
begin
  Form := GetFormOfType(TIncCondForm);
  result :=
    'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE)';// LEFT JOIN NFIRSAPP ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID)' removed on 1-10 due to duplicate entry issues occuring from the nfirsapp join statement;

  if not (TIncCondForm(Form).GetFdidCompIDWhere = '') then
    result := result +
      ' INNER JOIN NFIRSFDIDCOMP ON (NFIRSFDIDCOMP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ';
  if not (TIncCondForm(Form).RespUnitNumField.Value = '') then
    result := result +
      'LEFT JOIN NFIRSAPP ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID)';
end;

procedure TIncLogForm.NarrBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if incnumber = GetField(NfirsMainTable, 'NFIRSMAINID').AsString then
    PrintBand := False
  else
    NarrField.Caption := GetField(NfirsMainTable, 'NARR').AsString;
  incnumber := GetField(NfirsMainTable, 'NFIRSMAINID').AsString;
end;

procedure TIncLogForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var
  PrintReport: Boolean);
begin
  inherited;
  TotIncVar := 0;
  TotalEvLengthVar := 0;
end;

procedure TIncLogForm.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var
  PrintBand: Boolean);
begin
  inherited;
  FdidField.Caption      := dbField(NfirsMainTable, 'FDID');
  DateAlarmField.Caption := FormatDateTime('MM/DD/YYYY', GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
  TimeAlarmField.Caption := FormatDateTime('HH:NN', GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
  IncNumField.Caption    := substr(dbfield(NfirsMainTable, 'INCNUM'), 1, 4) + '-' +   substr(dbfield(NfirsMainTable, 'INCNUM'), 5, 6);
  StrNumField.Caption        := alltrim(dbField(NfirsMainTable, 'STRNUM'));
  StreetField.Caption        := dbField(NfirsMainTable, 'STREET');
  ZipField.Caption           := dbField(NfirsMainTable, 'ZIP');
  RoomAptField.Caption       := dbField(NfirsMainTable, 'ROOMAPT');
  SitFoundDescrField.Caption := dbField(NfirsMainTable, 'SITFOUNDDESCR');
  EvLengthField.Caption := FormatFloat('##0.0', GetField(NfirsMainTable,
    'EVLENGTH').AsFloat);
  PrintBand        :=   (GetField(NfirsMainTable,
    'DATETIMEALARM').AsString  <> '');
  if PrintBand and NarrBand.Enabled then begin
    NFIRSMainBand.Color := IIfI(NarrBand.Color = clwhite, $00EBEBEB, clwhite);
    NarrBand.Color := IIfI(NFIRSMainBand.Color = clwhite, $00EBEBEB, clwhite);
  end else if PrintBand then
    NFIRSMainBand.Color := IIfI(NFIRSMainBand.Color = clwhite, $00EBEBEB,clwhite);

  if PrintBand then begin
    TotIncVar := TotIncVar + 1;
    TotalEvLengthVar := TotalEvLengthVar + Getfield(NfirsMainTable,'EVLENGTH').AsFloat;
  end;
end;

end.
