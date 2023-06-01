unit IncISOResponseRep;
 
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
  TIncISOResponseRepForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    DateTime1Label: TQRLabel;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    StreetField: TQRLabel;
    DispCallTypeCodeField: TQRLabel;
    StrNumField: TQRLabel;
    DateTime2Field: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    TotIncLabel: TQRLabel;
    QRLabel1: TQRLabel;
    ResponseTimeField: TQRLabel;
    TimeLabel: TQRLabel;
    DateTime2Label: TQRLabel;
    DateTime1Field: TQRLabel;
    QRLabel14: TQRLabel;
    TotIncField: TQRLabel;
    QRLabel12: TQRLabel;
    ResponseNAField: TQRLabel;
    QRLabel15: TQRLabel;
    ResponseUnderField: TQRLabel;
    QRLabel17: TQRLabel;
    ResponseOverField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NfirsMainTable : TApolloData;
    NumSeconds     : Real;
    TotIncVar      : Integer;
    ResponseUnder  : Real;
    ResponseOver   : Real;
    ResponseNA     : Real;
    Field1         : String;
    Field2         : String;
    function GetLabel(FieldName: String): String;
    function GetField1Name: String;
    function GetField2Name: String;
  public
    { Public declarations }
    function  SelectStatement: string; override;
  end;
{$I rednmx.inc}

var
  IncISOResponseRepForm: TIncISOResponseRepForm;

implementation
uses GenFunc,
     IncCond,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TIncISOResponseRepForm.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
begin
  Form                   := GetFormOfType(TIncCondForm);
  Field1                 := GetField1Name;
  Field2                 := GetField2Name;
  SortOrder              := TIncCondForm(Form).SelectOrder;
  NfirsMainTable         := Open_Query(Sql + SortOrder);
  BaseReport.DataSet     := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  TotIncVar              := 0;
  ResponseUnder          := 0;
  ResponseOver           := 0;
  ResponseNA             := 0;
  NumSeconds             := (StrToFloat(TIncCondForm(Form).NumMinutesField.Value) * 60) + StrToFloat(TIncCondForm(Form).NumSecondsField.Value);
  TimeLabel.Caption      := 'Response Time Less than ' + FormatFloat('##0',NumSeconds) + ' Seconds';
  DateTime1Label.Caption := GetLabel(Field1);
  DateTime2Label.Caption := GetLabel(Field2);
  TIncCondForm.PrintTitles(TitleBand);
end;

function TIncISOResponseRepForm.GetField1Name: String;
Var Form : TForm;
begin
  Form := GetFormOfType(TIncCondForm);
  If TIncCondForm(Form).DateTimeRec1.Checked then
    GetField1Name := 'DATETIMEREC'
  else if TIncCondForm(Form).DateTimeAlarm1.Checked then
    GetField1Name := 'DATETIMEALARM'
  else if TIncCondForm(Form).DateTimeOut1.Checked then
    GetField1Name := 'DATETIMEOUT'
  else if TIncCondForm(Form).DateTimeArr1.Checked then
    GetField1Name := 'DATETIMEARR'
end;

function TIncISOResponseRepForm.GetField2Name: String;
Var Form : TForm;
begin
  Form := GetFormOfType(TIncCondForm);
  If TIncCondForm(Form).DateTimeAlarm2.Checked then
    GetField2Name := 'DATETIMEALARM'
  else if TIncCondForm(Form).DateTimeOut2.Checked then
    GetField2Name := 'DATETIMEOUT'
  else if TIncCondForm(Form).DateTimeArr2.Checked then
    GetField2Name := 'DATETIMEARR'
end;

function TIncISOResponseRepForm.GetLabel(FieldName: String): String;
begin
  If FieldName = 'DATETIMEREC' then
    GetLabel := 'Time Received'
  else if FieldName = 'DATETIMEALARM' then
    GetLabel := 'Time Dispatched'
  else if FieldName = 'DATETIMEOUT' then
    GetLabel := 'Time Enroute'
  else if FieldName = 'DATETIMEARR' then
    GetLabel := 'Time Arrived';
end;


procedure TIncISOResponseRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotIncField       .Caption := FormatFloat('###,##0',TotIncVar);
  ResponseUnderField.Caption := FormatFloat('###,##0',ResponseUnder);
  ResponseOverField .Caption := FormatFloat('###,##0',ResponseOver);
  ResponseNAField   .Caption := FormatFloat('###,##0',ResponseNA);
end;

procedure TIncISOResponseRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotIncVar              := 0;
  ResponseUnder          := 0;
  ResponseOver           := 0;
  ResponseNA             := 0;
end;

procedure TIncISOResponseRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NfirsMainTable.Free;
end;

procedure TIncISOResponseRepForm.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var ResponseTimeVar : Real;
begin
  inherited;
  ResponseTimeVar               := 0;
  DateAlarmField.Caption        := FormatDateTime('MM/DD/YYYY',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
  DateTime1Field.Caption        := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,Field1).AsDateTime);
  DateTime2Field.Caption        := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,Field2).AsDateTime);
  IncNumField.Caption           := substr(dbfield(NfirsMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NfirsMainTable,'INCNUM'),5,6);
  StrNumField.Caption           := alltrim(dbField(NfirsMainTable,'STRNUM'));
  StreetField.Caption           := tdbField(NfirsMainTable,'STREET');
  DispCallTypeCodeField.Caption := tdbField(NfirsMainTable,'DISPCALLTYPECODE');

  If (GetField(NfirsMainTable,Field1).AsDateTime > 0) and (GetField(NfirsMainTable,Field2).AsDateTime > 0) then begin
    ResponseTimeVar           := 24*60*60*(GetField(NfirsMainTable,Field2).AsDateTime - GetField(NfirsMainTable,Field1).AsDateTime);
    ResponseTimeField.Caption := FormatFloat('#,##0',ResponseTimeVar);
  end else begin
    ResponseTimeField.Caption := 'N/A';
  end;

  If (ResponseTimeVar > 0) then begin
    If (ResponseTimeVar <= NumSeconds) then begin
      ResponseTimeField.Font.Color := clgreen;
      ResponseUnder                := ResponseUnder + 1;
    end else begin
      ResponseTimeField.Font.Color := clred;
      ResponseOver                 := ResponseOver + 1;
    end;  
  end else begin
    ResponseTimeField.Font.Color := clblack;
    ResponseNA                   := ResponseNA + 1;  
  end;

  TotIncVar                     := TotIncVar + 1;
end;

function TIncISOResponseRepForm.SelectStatement: string;
begin
  result := 'SELECT DISPCALL.DATETIMEREC, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEOUT, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMECONT, NFIRSMAIN.DATETIMEIN, ' +
            'NFIRSMAIN.FDID, NFIRSMAIN.INCNUM, NFIRSMAIN.EXPNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET, NFIRSMAIN.ROOMAPT, DISPCALLTYPE.CODE DISPCALLTYPECODE FROM NFIRSMAIN ' +
            'LEFT JOIN DISPCALL     ON (NFIRSMAIN.DISPCALLID    = DISPCALL.DISPCALLID) ' +
            'LEFT JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ';
end;


end.
