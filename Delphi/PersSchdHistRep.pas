unit PersSchdHistRep;
 
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
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPersSchdHistRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    SchdHistBand: TQRSubDetail;
    DateTimeStartField: TQRLabel;
    NIATTHeader: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel11: TQRLabel;
    ChildBand1: TQRChildBand;
    LNameField: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    PersTypeDescrField: TQRLabel;
    QRLabel23: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel12: TQRLabel;
    datelabel: TQRLabel;
    SchdHistFooter: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel2: TQRLabel;
    ShiftLengthField: TQRLabel;
    QRLabel14: TQRLabel;
    CountField: TQRLabel;
    EvLengthField: TQRLabel;
    QRLabel1: TQRLabel;
    DateTimeEndField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    CompCodeEndField: TQRLabel;
    CompCodeStartField: TQRLabel;
    DateTimeKeyStartField: TQRLabel;
    QRLabel13: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SchdHistFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable        : TApolloData;
    SchdHistTable    : TApolloData;
    PersAccHistTable : TApolloData;
    EVLengthVar      : Real;
    CountVar         : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  PersSchdHistRepForm: TPersSchdHistRepForm;

implementation
uses GenFunc,
     SecSet,
     PersCond,
     Commonfunc,
     SysSet,
     SysRepMan;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TPersSchdHistRepForm.FormCreate(Sender: TObject);
var Form : TForm;
begin
  PersTable                := Open_Query(Sql);
  PersBand.PkField         := 'PERSID';
  SchdHistTable            := Open_Query('SELECT * FROM SCHDHIST WHERE PERSID = -1');
  PersAccHistTable         := Open_Query('SELECT * FROM PERSACCHIST WHERE PERSID = -1');
  BaseReport.DataSet       := PersTable.DataSource.DataSet;
  SchdHistBand.DataSet     := SchdHistTable.DataSource.DataSet;
  DateLabel.Caption        := GetAlpineDateLabel(initialdate,finaldate);
  FireDeptField.Caption    := FireDept;
  Form                     := GetFormOfType(TPersCondForm);
end;

procedure TPersSchdHistRepForm.FormDestroy(Sender: TObject);
begin
  PersTable.Free;
  SchdHistTable.Free;
  PersAccHistTable.Free;
end;

procedure TPersSchdHistRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
var Form         : TForm;
begin
  Form                       := GetFormOfType(TPersCondForm);
  LNameField.Caption         := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  PersCodeField.Caption      := tdbfield(PersTable,'PERSCODE');
  PersTypeDescrField.Caption := tdbfield(PersTable,'PERSTYPEDESCR');
  EVLengthVar                := 0;
  CountVar                   := 0;

  SchdHistTable.UpdateSQL('SELECT * FROM SCHDHIST ' +
                          'WHERE SCHDHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                          BuildSQLAlpineDate('SCHDHIST.DATETIMESTART',InitialDate,FinalDate) + ' ' +
                          'ORDER BY SCHDHIST.DATETIMESTART DESC');

  PersAccHistTable.UpdateSQL('SELECT * FROM PERSACCHIST ' +
                             'WHERE PERSACCHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                             BuildSQLAlpineDate('PERSACCHIST.DATETIMEKEY',InitialDate,FinalDate) + ' ' +
                             'ORDER BY PERSACCHIST.DATETIMEKEY');
end;

procedure TPersSchdHistRepForm.SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    DateTimeKey   : TDateTime;
begin
  inherited;
  If GetField(SchdHistTable,'DATETIMESTART').AsDateTime > 0 then begin
    PrintBand                     := true;
    SchdHistBand.Color            := IIfI(SchdHistBand.color = clwhite,$00EBEBEB,clwhite);
    DateTimeStart                 := GetField(SchdHistTable,'DATETIMESTART').AsDateTime;
    DateTimeEnd                   := GetField(SchdHistTable,'DATETIMEEND').AsDateTime;
    DateTimeStartField.Caption    := AlpineFormatDateTime('MM/DD/YYYY HH:NN:SS',GetField(SchdHistTable,'DATETIMESTART').AsDateTime);
    DateTimeEndField.Caption      := AlpineFormatDateTime('MM/DD/YYYY HH:NN:SS',GetField(SchdHistTable,'DATETIMEEND').AsDateTime);
    ShiftLengthField.Caption      := FormatFloat('##0.00',GetField(SchdHistTable,'SHIFTLENGTH').AsFloat);
    CompCodeStartField.Caption    := '';
    CompCodeEndField.Caption      := '';
    DateTimeKeyStartField.Caption := '';
    EvLengthVar                   := EvLengthVar + GetField(SchdHistTable,'SHIFTLENGTH').AsFloat;
    CountVar                      := CountVar + 1;

    PersAccHistTable.GoTop;
    While Not PersAccHistTable.Eof do begin
      DateTimeKey := GetField(PersAccHistTable,'DATETIMEKEY').AsDateTime;
      If (DateTimeStart - (5/1440) < DateTimeKey) and (DateTimeStart + (5/1440) > DateTimeKey) then begin
        CompCodeStartField.Caption    := tdbfield(PersAccHistTable,'COMPCODE');
        DateTimeKeyStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY HH:NN:SS',GetField(PersAccHistTable,'DATETIMEKEY').AsDateTime);
      end;
      If (DateTimeEnd - (5/1440) < DateTimeKey) and (DateTimeEnd + (5/1440) > DateTimeKey) then
        CompCodeEndField.Caption      := tdbfield(PersAccHistTable,'COMPCODE');
      PersAccHistTable.Skip(1);
    end;
  end else
    PrintBand                    := false;
end;

function TPersSchdHistRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID,PERSTYPE.DESCR PERSTYPEDESCR,PERS.LNAME,PERS.FNAME,PERS.PERSCODE FROM PERS ';
end;

function TPersSchdHistRepForm.ReportJoins: String;
begin
  result := ' LEFT OUTER JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ';
end;

procedure TPersSchdHistRepForm.SchdHistFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  CountField   .Caption := FormatFloat('#,##0',CountVar);
  EvLengthField.Caption := FormatFloat('#,##0.00',EvLengthVar);
end;

end.
