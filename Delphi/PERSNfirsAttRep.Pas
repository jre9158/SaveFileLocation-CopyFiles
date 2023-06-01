unit PERSNfirsAttRep;
 
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
  AppLst,
  AlpineBaseSummaryReport,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPERSNfirsAttRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    NFIRSAttBand: TQRSubDetail;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    NFIRSAttHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    AddressField: TQRLabel;
    NFIRSAttDescrField: TQRLabel;
    QRLabel14: TQRLabel;
    NfirsAttFooter: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel12: TQRLabel;
    InitialDateField: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel8: TQRLabel;
    LNameField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    FinalDateField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    TimeAlarmField: TQRLabel;
    CntField: TQRLabel;
    PersPointTypeCodeField: TQRLabel;
    PointField: TQRLabel;
    EvLengthField: TQRLabel;
    TotalServiceField: TQRLabel;
    TotalPointField: TQRLabel;
    TotalEvLengthField: TQRLabel;
    QRLabel5: TQRLabel;
    UnitNumField: TQRLabel;
    EntryMethLabel: TQRLabel;
    EntryMethField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure NfirsAttFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable        : TApolloData;
    NFIRSAttTable    : TApolloData;
    CntVar           : Real;
    TotalPointVar    : Real;
    TotalEvLengthVar : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  PERSNfirsAttRepForm: TPERSNfirsAttRepForm;

implementation
uses GenFunc,
     SecSet,
     PersCond,
     Commonfunc,
     SysSet,
     SysRepMan;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TPERSNfirsAttRepForm.FormCreate(Sender: TObject);
begin
  PersTable                := Open_Query(Sql);
  PersBand.PkField         := 'PERSID';
  NFIRSAttTable            := Open_Query('SELECT * FROM NFIRSATT WHERE PERSID = -1');
  NFIRSAttBand.DataSet     := NFIRSAttTable.DataSource.DataSet;
  BaseReport.DataSet       := PersTable.DataSource.DataSet;
  InitialDateField.Caption := FormatDateTime('MM/DD/YYYY',InitialDate);
  FinalDateField.Caption   := FormatDateTime('MM/DD/YYYY',FinalDate);
  FireDeptField.Caption    := mFireDept;
  CntVar                   := 0;
  TotalPointVar            := 0;
  TotalEvLengthVar         := 0;
end;

procedure TPERSNfirsAttRepForm.FormDestroy(Sender: TObject);
begin
  PersTable.Free;
  NFIRSAttTable.Free;
end;

procedure TPERSNfirsAttRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  LNameField.Caption    := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  PersCodeField.Caption := tdbfield(PersTable,'PERSCODE');
  NFIRSAttTable.UpdateSQL('SELECT NFIRSATT.POINT, NFIRSATT.EVLENGTH, NFIRSATT.ENTRYMETH,PERSPOINTTYPE.CODE PERSPOINTTYPECODE, NFIRSMAIN.SITFOUND, NFIRSMAIN.DATETIMEALARM DATETIMEALARM, ' +
                          'NFIRSMAIN.STRNUM STRNUM, NFIRSMAIN.STREET STREET, N5INCTYPE.DESCR N5INCTYPEDESCR, NFIRSMAIN.INCNUM INCNUM,  ' +
                          'NFIRSAPP.UNITNUM NFIRSAPPUNITNUM ' +
                          'FROM NFIRSATT ' + 
                          'LEFT JOIN NFIRSMAIN ON (NFIRSMAIN.NFIRSMAINID = NFIRSATT.NFIRSMAINID) ' +
                          'LEFT JOIN N5INCTYPE ON (N5INCTYPE.CODE = NFIRSMAIN.SITFOUND) ' +
                          'LEFT JOIN NFIRSAPP ON (NFIRSATT.NFIRSAPPID = NFIRSAPP.NFIRSAPPID) ' +
                          'LEFT JOIN PERSPOINTTYPE ON (NFIRSATT.PERSPOINTTYPEID = PERSPOINTTYPE.PERSPOINTTYPEID) ' +
                          'WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) + ' AND ' +
                          'NFIRSATT.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' ' + 
                          'ORDER BY NFIRSMAIN.DATETIMEALARM');
end;

procedure TPERSNfirsAttRepForm.NFIRSAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  If (tdbfield(NFIRSAttTable,'INCNUM') = '') then
    PrintBand := false
  else begin
    PrintBand                      := true;
    IncNumField.Caption            := substr(tdbfield(NFIRSAttTable,'INCNUM'),1,4) + '-' + substr(tdbfield(NFIRSAttTable,'INCNUM'),5,6);
    DateAlarmField.Caption         := AlpineFormatDateTime('MM/DD/YYYY', GetField(NFIRSAttTable,'DATETIMEALARM').AsDateTime);
    TimeAlarmField.Caption         := AlpineFormatDateTime('HH:NN',      GetField(NFIRSAttTable,'DATETIMEALARM').AsDateTime);
    AddressField.Caption           := alltrim(tdbfield(NFIRSAttTable,'STRNUM') + ' ' + tdbfield(NFIRSAttTable,'STREET'));
    NFIRSAttDescrField.Caption     := tdbfield(NFIRSAttTable,'SITFOUND') + '-' + tdbfield(NFIRSAttTable,'N5INCTYPEDESCR');
    UnitNumField.Caption           := tdbfield(NfirsAttTable,'NFIRSAPPUNITNUM');
    PersPointTypeCodeField.Caption := tdbfield(NfirsAttTable,'PERSPOINTTYPECODE');
    PointField.Caption             := FormatFloat('##0.00',Getfield(NfirsAttTable,'POINT').AsFloat);
    EvLengthField.Caption          := FormatFloat('##0.00',Getfield(NfirsAttTable,'EVLENGTH').AsFloat);
    CntVar                         := CntVar + 1;
    TotalPointVar                  := TotalPointVar + GetField(NfirsAttTable,'POINT').AsFloat;
    TotalEvLengthVar               := TotalEvLengthVar + GetField(NfirsAttTable,'EVLENGTH').AsFloat;
    EntryMethField.Caption         := tdbfield(NfirsAttTable,'ENTRYMETH');
  end;
end;

procedure TPERSNfirsAttRepForm.NfirsAttFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  CntField.Caption           := FormatFloat('##,##0',CntVar);
  TotalServiceField.Caption  := FormatFloat('##,##0.00',CntVar);
  TotalPointField.Caption    := FormatFloat('##,##0.00',TotalPointVar);
  TotalEvLengthField.Caption := FormatFloat('##,##0.00',TotalEvLengthVar);
end;

function TPERSNfirsAttRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID,PERSTYPE.DESCR PERSTYPEDESCR,PERS.LNAME,PERS.FNAME,PERS.PERSCODE FROM PERS ';
end;

function TPERSNfirsAttRepForm.ReportJoins: String;
begin
  result := ' LEFT OUTER JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ';
end;

procedure TPERSNfirsAttRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  CntVar                   := 0;
  TotalPointVar            := 0;
  TotalEvLengthVar         := 0;
end;

end.  
