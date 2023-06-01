unit SchdHistIndRep;

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
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TSchdHistIndRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    SchdHistBand: TQRSubDetail;
    ChildBand1: TQRChildBand;
    QRLabel4: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    UnitNumLabel: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    DateField: TQRLabel;
    TimeField: TQRLabel;
    ShiftLengthField: TQRLabel;
    SchdTypeDescrField: TQRLabel;
    SchdShiftNameCodeField: TQRLabel;
    UnitNumField: TQRLabel;
    SchdRankDescrField: TQRLabel;
    SchdLocDescrField: TQRLabel;
    NfirsAttTaskDescrField: TQRLabel;
    QRLabel6: TQRLabel;
    InitialDateField: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel8: TQRLabel;
    NameField: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    FinalDateField: TQRLabel;
    SummaryBand: TQRBand;
    QRLabel14: TQRLabel;
    ShiftLengthTotalField: TQRLabel;
    QRLabel15: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable        : TApolloData;
    SchdHistTable    : TApolloData;
    ShiftLengthTotal : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;
  
{$I rednmx.inc}

var
  SchdHistIndRepForm: TSchdHistIndRepForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     SysRepMan;

{$R *.DFM}


procedure TSchdHistIndRepForm.FormCreate(Sender: TObject);
Var PrintIt : Boolean;
begin
  PersTable             := Open_Query(Sql);
  BaseReport.DataSet    := PersTable.DataSource.DataSet;
  SchdHistTable         := Open_Query('SELECT * FROM VWSCHDHIST WHERE 1=2');
  SchdHistBand.DataSet  := SchdHistTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  BaseReportBeforePrint(Nil,PrintIt);
end;

procedure TSchdHistIndRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  ShiftLengthTotal      := 0;
end;

procedure TSchdHistIndRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
  SchdHistTable.Free;
end;

function TSchdHistIndRepForm.SelectStatement: string;
begin
  result := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS ' ;
end;

procedure TSchdHistIndRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  ShiftLengthTotalField.Caption := FormatFloat('#,##0.00',ShiftLengthTotal);
end;

procedure TSchdHistIndRepForm.SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DateField.Caption              := AlpineFormatDateTime(DisplayDateFormat,GetField(SchdHistTable,'DATETIMESTART').AsDateTime);
  TimeField.Caption              := AlpineFormatDateTime('HH:NN',GetField(SchdHistTable,'DATETIMESTART').AsDateTime) + '-' + AlpineFormatDateTime('HH:NN',GetField(SchdHistTable,'DATETIMEEND').AsDateTime);
  ShiftLengthField.Caption       := FormatFloat('##0.00',GetField(SchdHistTable,'SHIFTLENGTH').AsFloat);
  UnitNumField.Caption           := tdbfield(SchdHistTable,'UNITNUM');
  SchdShiftNameCodeField.Caption := tdbfield(SchdHistTable,'SCHDSHIFTNAMECODE');
  SchdRankDescrField.Caption     := tdbfield(SchdHistTable,'SCHDRANKDESCR');
  SchdLocDescrField.Caption      := tdbfield(SchdHistTable,'SCHDLOCDESCR');
  SchdTypeDescrField.Caption     := tdbfield(SchdHistTable,'SCHDTYPEDESCR');
  NfirsAttTaskDescrField.Caption := tdbfield(SchdHistTable,'NFIRSATTTASKDESCR');
  SchdHistBand.Color             := IIfI(SchdHistBand.color = clwhite,$00EBEBEB,clwhite);
  ShiftLengthTotal               := ShiftLengthTotal + GetField(SchdHistTable,'SHIFTLENGTH').AsFloat;
end;

procedure TSchdHistIndRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NameField.Caption        := tdbfield(PersTable,'FNAME') + ' ' + tdbfield(PersTable,'LNAME');
  PersCodeField.Caption    := tdbfield(PersTable,'PERSCODE');
  InitialDateField.Caption := FormatDateTime('MM/DD/YYYY',InitialDate);
  FinalDateField.Caption   := FormatDateTime('MM/DD/YYYY',FinalDate);
  SchdHistTable.UpdateSQL('SELECT * FROM VWSCHDHIST ' +
                          'WHERE ' + BuildSQLAlpineDate('VWSCHDHIST.DATETIMESTART',InitialDate,FinalDate) + ' AND ' +
                          'VWSCHDHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' ' +
                          'ORDER BY VWSCHDHIST.DATETIMESTART');
end;


end. 
