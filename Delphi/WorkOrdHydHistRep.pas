unit WorkOrdHydHistRep;

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
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TWorkOrdHydHistRepForm = class(TAlpineBaseSummaryReportForm)
    WorkOrdBand: TQRBand;
    LocationField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    ReqDateField: TQRLabel;
    ReqTypeField: TQRLabel;
    ReqPersField: TQRLabel;
    AssPersIDField: TQRLabel;
    AssDateField: TQRLabel;
    WoStatusIdField: TQRLabel;
    CloseDateField: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    DescrField: TQRLabel;
    QRLabel7: TQRLabel;
    ReqNarr: TQRLabel;
    QRLabel9: TQRLabel;
    WorkOrdIDField: TQRLabel;
    HydCodeField: TQRLabel;
    procedure WorkOrdBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    WorkOrd : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;    
  end;

var
  WorkOrdHydHistRepForm: TWorkOrdHydHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonVar,
     WorkOrdCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TWorkOrdHydHistRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  WorkOrd                := Open_Query(Sql + WorkOrdCondForm.SelectOrder);
  BaseReport.DataSet     := WorkOrd.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  TWorkOrdCondForm.PrintTitles(TitleBand);  
end;

procedure TWorkOrdHydHistRepForm.WorkOrdBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  WorkOrdIDField.Caption  := GetField(WorkOrd,'WORKORDID').AsString;
  HydCodeField.Caption    := GetField(WorkOrd,'HYDCODE').AsString;
  LocationField.Caption   := IIf(tdbfield(WorkOrd,'LOCATION') = '','',tdbfield(WorkOrd,'LOCATION')+#13#10) +
                             alltrim(tdbfield(WorkOrd,'STRNUM') + ' ' + tdbfield(WorkOrd,'STREET'));

  ReqDateField.Caption    := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'REQDATE').AsDateTime);
  ReqTypeField.Caption    := GetField(WorkOrd,'WOREQTYPECODE').AsString + '-' + GetField(WorkOrd,'WOREQTYPEDESCR').AsString;

  ReqPersField.Caption    := tdbfield(WorkOrd,'PERSREQFNAME') + ' ' + tdbfield(WorkOrd,'PERSREQLNAME');
  DescrField.Caption      := GetField(WorkOrd,'WORKORDDESCR').AsString;
  ReqNarr.Caption         := Getfield(WorkOrd,'REQNARR').AsString;
  AssPersIDField.Caption  := tdbfield(WorkOrd,'PERSASSFNAME') + ' ' + tdbfield(WorkOrd,'PERSASSLNAME');
  AssDateField.Caption    := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'ASSDATE').AsDateTime);

  WoStatusIdField.Caption := GetField(WorkOrd,'WOSTATUSCODE').AsString + ' - '+ GetField(WorkOrd,'WOSTATUSDESCR').AsString;
  CloseDateField.Caption  := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'CLOSEDATE').AsDateTime);

  If WorkOrdBand.color = clwhite then
    WorkOrdBand.Color := $00EBEBEB
  else
    WorkOrdBand.Color := clwhite;
end;

function TWorkOrdHydHistRepForm.SelectStatement: string;
begin
  result := 'SELECT HYD.HYDCODE, WORKORD.HYDID ,HYD.LOCATION, HYD.STREET, HYD.STRNUM, ' +
            'WORKORD.REQDATE,WOREQTYPE.CODE WOREQTYPECODE,WORKORD.ASSDATE, WORKORD.DESCR WORKORDDESCR, '+
            'WOREQTYPE.DESCR WOREQTYPEDESCR,REQPERS.FNAME PERSREQFNAME,REQPERS.LNAME PERSREQLNAME,ASSPERS.FNAME PERSASSFNAME,ASSPERS.LNAME PERSASSLNAME ,'+
            'WOSTATUS.CODE WOSTATUSCODE, WOSTATUS.DESCR WOSTATUSDESCR, ' + 
            'WORKORD.REQNARR,WORKORD.CLOSEDATE,WORKORD.WORKORDID,WORKORD.WORKORDNUM '+
            'FROM WORKORD ';
end;

procedure TWorkOrdHydHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  WorkOrd.Free;
end;

function TWorkOrdHydHistRepForm.ReportJoins: String;
begin
  result := 'LEFT OUTER JOIN HYD ON (WORKORD.HYDID = HYD.HYDID) '+
            'LEFT OUTER JOIN PERS REQPERS ON (WORKORD.REQPERSID = REQPERS.PERSID) '+
            'LEFT OUTER JOIN PERS ASSPERS ON (WORKORD.ASSPERSID = ASSPERS.PERSID) '+
            'LEFT OUTER JOIN WOREQTYPE ON (WORKORD.WOREQTYPEID=WOREQTYPE.WOREQTYPEID) '+
            'LEFT OUTER JOIN WOSTATUS ON (WORKORD.WOSTATUSID=WOSTATUS.WOSTATUSID) ';
end; 

end.  
