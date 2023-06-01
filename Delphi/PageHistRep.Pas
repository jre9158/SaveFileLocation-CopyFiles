unit PageHistRep;

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
  TPageHistRepForm = class(TAlpineBaseSummaryReportForm)
    PageQueueBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel7: TQRLabel;
    DateTimeEntField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand1: TQRBand;
    PageQueueCountField: TQRLabel;
    NarrField: TQRLabel;
    QRLabel1: TQRLabel;
    PageQueueListCountField: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    CompCodeField: TQRLabel;
    PageTypeField: TQRLabel;
    QRLabel4: TQRLabel;
    DateLabels: TQRLabel;
    QRLabel5: TQRLabel;
    PageCountField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure PageQueueBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PageQueueCountVar     : Integer;
    PageQueueListCountVar : Integer;
    PageQueueTable        : TApolloData;
  public
    { Public declarations }
    function  SelectStatement: string; override;
  end;

{$I rednmx.inc}

var
  PageHistRepForm: TPageHistRepForm;

implementation
uses GenFunc,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TPageHistRepForm.FormCreate(Sender: TObject);
Var SQLVar    : String;
begin
  SQLVar                 := Sql + 'AND ' + BuildSQLAlpineDate('PAGEQUEUE.DATETIMEENT',InitialDate,FinalDate) + ' ORDER BY PAGEQUEUE.DATETIMEENT';
  PageQueueTable         := Open_Query(SQLVar);
  BaseReport.DataSet     := PageQueueTable.DataSource.DataSet;
  FireDeptField.Caption  := FireDept;
  PageQueueCountVar      := 0;
  PageQueueListCountVar  := 0;
  DateLabels.caption     := GetAlpineDateLabel(InitialDate,FinalDate);
end;

procedure TPageHistRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PageQueueCountField.Caption     := 'Total Messages: ' + FormatFloat('###,##0',PageQueueCountVar);
  PageQueueListCountField.Caption := 'Total Pages Sent: ' + FormatFloat('###,##0',PageQueueListCountVar);
end;

procedure TPageHistRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  PageQueueCountVar     := 0;
  PageQueueListCountVar := 0;
end;

procedure TPageHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PageQueueTable.Free;
end;

function TPageHistRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PAGEQUEUE ' ;
end;

procedure TPageHistRepForm.PageQueueBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var PageCountVar : Integer;
begin
  inherited;
  DateTimeEntField.Caption     := FormatDateTime('MM/DD/YYYY HH:NN',GetField(PageQueueTable,'DATETIMEENT').AsDateTime);
  NarrField.Caption            := GetField(PageQueueTable,'NARR').AsString;
  CompCodeField.Caption        := tdbfield(PageQueueTable,'COMPCODE');
  PageTypeField.Caption        := tdbfield(PageQueueTable,'PAGETYPE');

  PageCountVar                 := SqlTableRecCount('SELECT COUNT(*) FROM PAGEQUEUELIST WHERE PAGEQUEUEID = ' + GetField(PageQueueTable,'PAGEQUEUEID').AsString);  
  PageQueueCountVar            := PageQueueCountVar + 1;
  PageQueueListCountVar        := PageQueueListCountVar + PageCountVar;
  PageCountField.Caption       := FormatFloat('#,##0',PageCountVar);
end;

end.
