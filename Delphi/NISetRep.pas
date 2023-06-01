unit NISetRep;
 
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
  TNISetRepForm = class(TAlpineBaseSummaryReportForm)
    NIPTypeBand: TQRBand;
    QRSysData1: TQRSysData;
    NIPTypeCodeField: TQRLabel;
    NISTypeBand: TQRSubDetail;
    NISTypeCodeField: TQRLabel;
    NISTypeDescrField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    LosapDescLabel: TQRLabel;
    LosapDescField: TQRLabel;
    QRLabel1: TQRLabel;
    PointField: TQRLabel;
    NIFdidField: TQRLabel;
    NIPTypeCntField: TQRLabel;
    NISTypeCntfield: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel4: TQRLabel;
    NIPTypeDescrField: TQRLabel;
    QRLabel2: TQRLabel;
    NIDateTimeStartField: TQRLabel;
    QRLabel6: TQRLabel;
    NISDateTimeStartField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NISTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NITypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NIPType: TApolloData;
    NISType: TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    function AdditionalWhere: String; override;
  end;
{$I rednmx.inc}

var
  NISetRepForm: TNISetRepForm;

implementation
uses GenFunc,
     GenCond,
     CommonSec,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TNISetRepForm.FormCreate(Sender: TObject);
begin
  If SecFdid = '' then
    NIPType               := Open_Query('SELECT * FROM NIPTYPE ORDER BY CODE')
  else
    NIPType               := Open_Query('SELECT * FROM NIPTYPE WHERE FDID = ' + AddExpr(secFdid) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE');
  BaseReport.DataSet     := NIPType.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  NISType                := Open_Query('SELECT * FROM NISTYPE WHERE 1=2');
  NISTypeBand.DataSet    := NISType.DataSource.DataSet;
  LosapDescLabel.Enabled := CheckModule('LOSAP');
  LosapDescField.Enabled := CheckModule('LOSAP');
end;

procedure TNISetRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NIPType.Free;
  NISType.Free;
end;

function TNISetRepForm.SelectStatement: string;
begin
  result := '' ;
end;

function TNISetRepForm.ReportJoins: String;
begin
  result := '';
end;

function TNISetRepForm.AdditionalWhere: String;
begin
  Result := ' 1=1 ';
end;

procedure TNISetRepForm.NITypeBandBeforePrint(Sender: TQRCustomBand;  var PrintBand: Boolean);
Var NIPTypeCntVar : Integer;
    FdidWhere     : String;
begin
  inherited;
  FdidWhere                 := IIf(SecFdid = '','',' AND (NISTYPE.FDID = ' + AddExpr(secFdid) + ' OR NISTYPE.FDID = ' + AddExpr('') + ' OR NISTYPE.FDID IS NULL)');
  NIFdidField.Caption       := tdbfield(NIPType,'FDID');
  NIPTypeCodeField.Caption  := alltrim(GetField(NIPType,'CODE').AsString);
  NIPTypeDescrField.Caption := alltrim(GetField(NIPType,'DESCR').AsString);
  NIPTypeCntVar             := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NIPTYPEID = ' + pkValue(GetField(NIPtype,'NIPTYPEID').AsString));
  NIPTypeCntField.Caption   := 'Count: ' + FormatFloat('##,##0',NIPTypeCntVar);

  Open_Query('NISTART',false,'SELECT MAX(DATETIMESTART) DATETIMESTART FROM NI WHERE NIPTYPEID = ' + pkValue(GetField(NIPType,'NIPTYPEID').AsString));
  NIDateTimeStartField.Caption := 'Last Used ' + AlpineFormatDateTime('MM/DD/YYYY',GetField('NISTART','DATETIMESTART').AsDateTime);
  If (Now - GetField('NISTART','DATETIMESTART').AsDateTime > 182) then
    NIDateTimeStartField.Color := clwhite
  else
    NIDateTimeStartField.Color := $0000FF80;
  RunSQL('UPDATE NIPTYPE SET DATETIMELAST = ' + AddExpr(AlpineFormatDateTime('YYYY-MM-DD',GetField('NISTART','DATETIMESTART').AsDateTime)) + ' WHERE NIPTYPEID = ' + pkValue(GetField(NIPType,'NIPTYPEID').AsString));
  CloseApollo('NISTART');

  NISType.UpdateSQL('SELECT NISTYPE.NISTYPEID, NISTYPE.CODE CODE, NISTYPE.DESCR DESCR, NILOSAPCAT.DESCR LOSAPDESCR, NISTYPE.POINT POINT FROM NISTYPE ' +
                    'LEFT JOIN NILOSAPCAT ON (NISTYPE.NILOSAPCATID = NILOSAPCAT.NILOSAPCATID) ' +
                    'WHERE NIPTYPEID = ' + pkValue(GetField(NIPType,'NIPTYPEID').AsString) + FdidWhere + ' ORDER BY NISTYPE.CODE');
end;

procedure TNISetRepForm.NISTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var NISTypeCntVar : Integer;
    SQLVar        : String;
begin
  inherited;
  NISTypeCodeField.Caption  := GetField(NISType,'CODE').AsString;
  NISTypeDescrField.Caption := GetField(NISType,'DESCR').AsString;
  LosapDescField.Caption    := GetField(NISType,'LOSAPDESCR').AsString;
  PointField.Caption        := FormatFloat('##0.00',GetField(NISType,'POINT').AsFloat);
  SQLVar                    := 'SELECT COUNT(*) FROM NI WHERE NISTYPEID = ' + pkvalue(GetField(NIStype,'NISTYPEID').AsString);
  NISTypeCntVar             := SqlTableRecCount(SQLVar);
  NISTypeCntfield.Caption   := FormatFloat('##,##0',NISTypeCntVar);

  Open_Query('NISTART',false,'SELECT MAX(DATETIMESTART) DATETIMESTART FROM NI WHERE NISTYPEID = ' + pkValue(GetField(NISType,'NISTYPEID').AsString));
  If (Now - GetField('NISTART','DATETIMESTART').AsDateTime > 182) then
    NISDateTimeStartField.Color := clwhite
  else
    NISDateTimeStartField.Color := $0000FF80;
  If GetField('NISTART','DATETIMESTART').AsDateTime > 0 then
    NISDateTimeStartField.Caption := 'Last Used ' + AlpineFormatDateTime('MM/DD/YYYY',GetField('NISTART','DATETIMESTART').AsDateTime)
  else
    NISDateTimeStartField.Caption := 'Never Used';
  RunSQL('UPDATE NISTYPE SET DATETIMELAST = ' + AddExpr(AlpineFormatDateTime('YYYY-MM-DD',GetField('NISTART','DATETIMESTART').AsDateTime)) + ' WHERE NISTYPEID = ' + pkValue(GetField(NISType,'NISTYPEID').AsString));
  CloseApollo('NISTART');

  PrintBand                 := (GetField(NISType,'NISTYPEID').AsInteger > 0);
end;

end.

SELECT (SELECT COUNT(*) FROM NI WHERE NI.NISTYPEID = NISTYPE.NISTYPEID) NISTYPECNT,
(SELECT MAX(DATETIMESTART) FROM NI WHERE NI.NISTYPEID = NISTYPE.NISTYPEID) LASTDATE,
NISTYPE.NIPTYPEID, NISTYPE.CODE, NISTYPE.NISTYPEID, NISTYPE.DESCR, NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR
FROM NISTYPE LEFT JOIN NIPTYPE ON (NIPTYPE.NIPTYPEID = NISTYPE.NIPTYPEID) ORDER BY NISTYPE.CODE

