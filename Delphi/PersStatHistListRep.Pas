unit PersStatHistListRep;

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
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPersStatHistListRepForm = class(TAlpineBaseSummaryReportForm)
    PersStatHistBand: TQRBand;
    NameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    PersStatCodeField: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PersOrderLabel: TQRLabel;
    PersStatLabel: TQRLabel;
    QRLabel4: TQRLabel;
    DateTimeStartField: TQRLabel;
    YOSLabel: TQRLabel;
    DayField: TQRLabel;
    QRLabel5: TQRLabel;
    DateTimeEndField: TQRLabel;
    QRLabel2: TQRLabel;
    PersStatDescrField: TQRLabel;
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    PersStatHistTable : TApolloData;
    function GetDay(DateStart, DateEnd: TDateTime): Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;
 
var
  PersStatHistListRepForm: TPersStatHistListRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     PersStatHistCond,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersStatHistListRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  PersStatHistTable        := Open_Query(Sql);
  BaseReport.DataSet       := PersStatHistTable.DataSource.DataSet;
  FireDeptField.Caption    := mFireDept;
  Form                     := GetFormOfType(TPersStatHistCondForm);
end;

procedure TPersStatHistListRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PersStatHistBand.Color     := IIfI(PersStatHistBand.color = clwhite,$00EBEBEB,clwhite);
  NameField.Caption          := tdbfield(PersStatHistTable,'LNAME') + ', ' + tdbfield(PersStatHistTable,'FNAME');
  PersCodeField.Caption      := tdbfield(PersStatHistTable,'PERSCODE');
  PersStatCodeField.Caption  := tdbfield(PersStatHistTable,'PERSSTATCODE');
  PersStatDescrField.Caption := tdbfield(PersStatHistTable,'PERSSTATDESCR');
  DateTimeStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHistTable,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption   := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHistTable,'DATETIMEEND').AsDateTime);
  DayField.Caption           := FormatFloat('##,##0',GetDay(GetField(PersStatHistTable,'DATETIMESTART').AsDateTime,GetField(PersStatHistTable,'DATETIMEEND').AsDateTime));
  if DayField.Caption = '-1' then
   PrintBand:= False;
end;

function TPersStatHistListRepForm.GetDay(DateStart, DateEnd: TDateTime): Real;
begin
  if (DateEnd = 0) and (FinalDate = 0) then
    FinalDate       := now;
  if ((InitialDate = 0) and (FinalDate = 0) and (DateStart <> 0) and (DateEnd<> 0) and (DateEnd<= Now)) then
    GetDay    := DateEnd - DateStart
  else if ((InitialDate = 0) and (FinalDate = 0) and (DateStart <> 0) and (DateEnd<> 0) and (DateEnd >= Now)) then
    GetDay    := Now - DateStart
  else if ((DateEnd = 0) and (InitialDate = 0) and (FinalDate <> 0) and (DateStart<> 0)) then
    GetDay    := FinalDate - DateStart
  else if ((DateStart >= InitialDate) and (DateEnd <= FinalDate) and (DateEnd <> 0)) then
    GetDay    := DateEnd - DateStart
  else if ((DateStart >= InitialDate) and (DateEnd <= Now) and (FinalDate = 0) and (DateEnd<>0)) then
    GetDay    := DateEnd - DateStart
  else if ((DateStart >= InitialDate) and (DateEnd <= Now) and (FinalDate = 0) and (DateEnd=0)) then
    GetDay    := Now - DateStart
  else if ((DateStart >= InitialDate) and (FinalDate = 0) and (DateEnd >= now)) then
    GetDay    := Now - DateStart
  else if ((DateStart >= InitialDate) and (DateEnd >= FinalDate)) then
    GetDay    := FinalDate - DateStart
  else if ((DateStart <= InitialDate) and (FinalDate = 0) and (DateEnd >= now)) then
    GetDay    := now - InitialDate
  else if ((DateStart <= InitialDate) and (FinalDate <> 0) and (DateEnd >= FinalDate)) then
    GetDay    := FinalDate - InitialDate
  else if ((DateStart <= InitialDate) and (FinalDate = 0) and (DateEnd <= now)) then
    GetDay    := DateEnd - InitialDate
  else if ((DateStart <= InitialDate) and (FinalDate <> 0) and (DateEnd <= FinalDate) and (DateEnd <> 0) and (DateEnd>=InitialDate)) then
    GetDay    := DateEnd - InitialDate
  else if ((DateStart <=InitialDate) and (FinalDate <> 0) and (DateEnd <= FinalDate) and (DateEnd = 0)) then
    GetDay    := FinalDate - InitialDate
  else if ((DateStart >= InitialDate) and (FinalDate <> 0) and (DateEnd <= FinalDate) and (DateEnd = 0)) then
    GetDay    := FinalDate - DateStart
  else
    GetDay    := -1;
end;

function TPersStatHistListRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE, PERSSTAT.CODE PERSSTATCODE, PERSSTAT.DESCR PERSSTATDESCR, ' + 
            'PERSSTATHIST.DATETIMESTART, PERSSTATHIST.DATETIMEEND FROM PERSSTATHIST ' +
            'LEFT JOIN PERS ON (PERSSTATHIST.PERSID = PERS.PERSID) ' + 
            'LEFT JOIN PERSSTAT ON (PERSSTATHIST.PERSSTATID = PERSSTAT.PERSSTATID) ';
end;


procedure TPersStatHistListRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersStatHistTable.Free;
end;

end.
