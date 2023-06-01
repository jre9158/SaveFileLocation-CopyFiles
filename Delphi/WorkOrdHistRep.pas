unit WorkOrdHistRep;

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
  TWorkOrdHistRepForm = class(TAlpineBaseSummaryReportForm)
    WorkOrdBand: TQRBand;
    ItemField: TQRLabel;
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
    WORKORDIDField: TQRLabel;
    WORKORDNUMField: TQRLabel;
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
    QRLabel10: TQRLabel;
    CompanyField: TQRLabel;
    QRShape7: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape8: TQRShape;
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
  WorkOrdHistRepForm: TWorkOrdHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonVar,
     WorkOrdCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TWorkOrdHistRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  WorkOrd                := Open_Query(Sql + WorkOrdCondForm.SelectOrder);
  BaseReport.DataSet     := WorkOrd.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  TWorkOrdCondForm.PrintTitles(TitleBand);  
end;

procedure TWorkOrdHistRepForm.WorkOrdBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  ItemField.Caption       := tdbfield(WorkOrd,'INVNUM') + #13#10 + tdbfield(WorkOrd,'INVDESCR');
  ReqDateField.Caption    := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'REQDATE').AsDateTime);
  ReqTypeField.Caption    := tdbfield(WorkOrd,'WOREQTYPECODE') + ' - '+ tdbfield(WorkOrd,'WOREQTYPEDESCR');

  ReqPersField.Caption    := tdbfield(WorkOrd,'PERSREQFNAME') + ' ' + tdbfield(WorkOrd,'PERSREQLNAME');
  DescrField.Caption      := tdbfield(WorkOrd,'WORKORDDESCR');
  ReqNarr.Caption         := tdbfield(WorkOrd,'REQNARR');
  AssPersIDField.Caption  := tdbfield(WorkOrd,'PERSASSFNAME') + ' ' + tdbfield(WorkOrd,'PERSASSLNAME');
  CompanyField.Caption    := tdbfield(WorkOrd,'COMPANY'); 
  AssDateField.Caption    := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'ASSDATE').AsDateTime);

  WoStatusIdField.Caption := tdbfield(WorkOrd,'WOSTATUSCODE') + ' - '+ tdbfield(WorkOrd,'WOSTATUSDESCR');
  CloseDateField.Caption  := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'CLOSEDATE').AsDateTime);
  WorkOrdIDField.Caption  := GetField(WorkOrd,'WORKORDID').AsString;
  WorkOrdNumField.Caption := tdbfield(WorkOrd,'WORKORDNUM');

  If WorkOrdBand.color = clwhite then
    WorkOrdBand.Color := $00EBEBEB
  else
    WorkOrdBand.Color := clwhite;
end;

function TWorkOrdHistRepForm.SelectStatement: string;
begin
  result := 'SELECT INV.INVNUM,INV.INVID,INV.DESCR INVDESCR,REQDATE,WOREQTYPE.CODE WOREQTYPECODE,ASSDATE, WORKORD.DESCR WORKORDDESCR, '+
            'WOREQTYPE.DESCR WOREQTYPEDESCR,REQPERS.FNAME PERSREQFNAME, REQPERS.LNAME PERSREQLNAME, ASSPERS.FNAME PERSASSFNAME, ASSPERS.LNAME PERSASSLNAME ,'+
            'WOSTATUS.CODE WOSTATUSCODE, WOSTATUS.DESCR WOSTATUSDESCR, REQNARR, CLOSEDATE, WORKORDID, WORKORDNUM, ROLODEX.COMPANY '+
            'FROM WORKORD ';
end;

procedure TWorkOrdHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  WorkOrd.Free;
end;

function TWorkOrdHistRepForm.ReportJoins: String;
begin
  result := 'LEFT OUTER JOIN INV          ON (WORKORD.INVID       = INV.INVID) '             +
            'LEFT OUTER JOIN PERS REQPERS ON (WORKORD.REQPERSID   = REQPERS.PERSID) '        +
            'LEFT OUTER JOIN PERS ASSPERS ON (WORKORD.ASSPERSID   = ASSPERS.PERSID) '        +
            'LEFT OUTER JOIN WOREQTYPE    ON (WORKORD.WOREQTYPEID = WOREQTYPE.WOREQTYPEID) ' +
            'LEFT OUTER JOIN ROLODEX      ON (WORKORD.ROLODEXID   = ROLODEX.ROLODEXID) '     +
            'LEFT OUTER JOIN WOSTATUS     ON (WORKORD.WOSTATUSID  = WOSTATUS.WOSTATUSID) ';
end; 

end.
