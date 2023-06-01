unit HydRepList2;

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
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt,
  QRPDFFilt;

type
  THydRepList2Form = class(TAlpineBaseSummaryReportForm)
    HeaderBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    InvBand: TQRBand;
    hydcodefield: TQRLabel;
    streetfield: TQRLabel;
    DateTimeInspectField: TQRLabel;
    FlowRate20Field: TQRLabel;
    StatusField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel8: TQRLabel;
    SummaryBand1: TQRBand;
    HydCntField: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    DateTimeStartField: TQRLabel;
    DateTimeEndField: TQRLabel;
    FlowLengthField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    HydTable         : TApolloData;
    HydInspectTable  : TApolloData;
    HydInspectTypeID : String;
    HydCntVar        : Integer;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  HydRepList2Form: THydRepList2Form;

implementation
uses GenFunc,
     SysRepMan,
     HydCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure THydRepList2Form.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  HydCntVar              := 0;
end;

procedure THydRepList2Form.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  HydTable               := Open_Query(Sql);
  HydInspectTable        := Open_Query('SELECT * FROM HYDINSPECT WHERE 1=2');
  BaseReport.DataSet     := HydTable.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;

  Form                   := GetFormOfType(THydCondForm);
  HydInspectTypeID       := THydCondForm(Form).HydInspectTypeIDField.Value;
  HydCntVar              := 0;

  THydCondForm.PrintTitles(HeaderBand);
end;

function THydRepList2Form.SelectStatement: string;
begin
  result := 'SELECT HYD.HYDID, HYD.FLOWRATE20, HYD.HYDCODE,DISPBOX.CODE DISPBOXCODE,HYD.STREET,HYD.STRNUM,HYD.LOCATION,HYDSTATUS.DESCR HYDSTATUSDESCR, ' +
            'HYDTYPE.DESCR HYDTYPEDESCR,HYD.MAINSIZE,HYD.STATICPRESSURE,HYD.RESIDUALPRESSURE,HYD.PITOTPRESSURE,HYD.FLOWRATE FROM HYD '+
            'LEFT JOIN DISPBOX ON (DISPBOX.DISPBOXID = HYD.DISPBOXID) ' +
            'LEFT JOIN HYDSTATUS ON (HYDSTATUS.HYDSTATUSID=HYD.HYDSTATUSID) '+
            'LEFT JOIN HYDTYPE ON (HYDTYPE.HYDTYPEID = HYD.HYDTYPEID) ';
end;

procedure THydRepList2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  HydTable.Free;
  HydInspectTable.Free;
end;

procedure THydRepList2Form.InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  inherited;
  HydCntVar                := HydCntVar + 1;
  hydcodefield.Caption     := tdbField(HydTable,'HYDCODE');
  streetfield.Caption      := alltrim(alltrim(tdbField(HydTable,'STRNUM'))+' '+tdbField(HydTable,'STREET'));
  StatusField.Caption      := tdbField(hydTable,'HYDSTATUSDESCR');
  FlowRate20Field.Caption  := GetField(HydTable,'FLOWRATE20').AsString + ' gpm';
  If (HydInspectTypeID = '') then
    SQLVar                   := 'SELECT * FROM HYDINSPECT WHERE HYDID = ' + pkValue(GetField(HydTable,'HYDID').AsString) + ' ORDER BY DATETIMEINSPECT DESC'
  else
    SQLVar                   := 'SELECT * FROM HYDINSPECT WHERE HYDID = ' + pkValue(GetField(HydTable,'HYDID').AsString) + ' AND HYDINSPECTTYPEID = ' + pkValue(HydInspectTypeID) + ' ORDER BY DATETIMEINSPECT DESC';

  HydInspectTable.UpdateSQL(SQLVar);
  If HydInspectTable.RecordsExist then
    DateTimeInspectField.Caption := FormatDateTime('MM/DD/YYYY',GetField(HydInspectTable,'DATETIMEINSPECT').AsDateTime)
  else
    DateTimeInspectField.Caption := 'N/A';

  DateTimeStartField.Caption     := AlpineFormatDateTime('HH:MM',GetField(HydInspectTable,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption       := AlpineFormatDateTime('HH:MM',GetField(HydInspectTable,'DATETIMEEND').AsDateTime);
  FlowLengthField.Caption        := FormatFloat('#0.00',GetField(HydInspectTable,'FLOWLENGTH').AsFloat) + ' hrs';
end;

end.
