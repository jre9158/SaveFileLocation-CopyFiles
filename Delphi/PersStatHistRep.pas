unit PersStatHistRep;

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
  TPersStatHistRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    NameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    PersTypeDescrField: TQRLabel;
    QRLabel2: TQRLabel;
    PersStatDescrField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PersTypeLabel: TQRLabel;
    PersOrderLabel: TQRLabel;
    PersStatLabel: TQRLabel;
    QRLabel4: TQRLabel;
    JoinDateField: TQRLabel;
    YOSLabel: TQRLabel;
    YOSField: TQRLabel;
    PersStatHistBand: TQRSubDetail;
    LeaveLabel: TQRLabel;
    DateTimeStartField: TQRLabel;
    DateTimeEndField: TQRLabel;
    LeaveField: TQRLabel;
    QRLabel5: TQRLabel;
    ResDateField: TQRLabel;
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersStatHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    Pers         : TApolloData;
    PersStatHist : TApolloData;
    AsOfDateTime : TDateTime;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;
 
var
  PersStatHistRepForm: TPersStatHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonVar,
     CommonFunc,
     Search,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersStatHistRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  AsOfDateTime             := Now;
  DateInputDlg('As of Date','Enter Date',AsOfDateTime);

  Pers                     := Open_Query(Sql);
  PersBand.PkField         := 'PERSID';  
  PersStatHist             := Open_Query('SELECT DATETIMESTART, DATETIMEEND FROM PERSSTATHIST WHERE 1=2');
  BaseReport.DataSet       := Pers.DataSource.DataSet;
  PersStatHistBand.DataSet := PersStatHist.DataSource.DataSet;

  FireDeptField.Caption    := mFireDept;
  Form                     := GetFormOfType(TPersCondForm);
  PersTypeLabel.Caption    := TPersCondForm(Form).GetPersTypeList;
  PersStatLabel.Caption    := TPersCondForm(Form).GetPersStatList;
  PersOrderLabel.Caption   := TPersCondForm(Form).GetPersOrder;
  YOSLabel.Caption         := 'YOS as of ' + FormatDateTime('MM/DD/YYYY',AsOfDateTime);
end;

procedure TPersStatHistRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DeductTime    : Real;
    AddTime       : Real;
    DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    YOS           : Real;
    ResginDate    : TDateTime;
begin
  PersStatHist.UpdateSQL('SELECT PERSSTATHIST.ADDTIME, PERSSTATHIST.DEDUCTTIME, PERSSTATHIST.DATETIMESTART, PERSSTATHIST.DATETIMEEND, PERSSTAT.DESCR PERSSTATDESCR ' +
                         'FROM PERSSTATHIST ' +
                         'LEFT JOIN PERSSTAT ON (PERSSTATHIST.PERSSTATID = PERSSTAT.PERSSTATID) ' +
                         'WHERE PERSSTATHIST.PERSID = ' + PKValue(GetField(Pers,'PERSID').AsString));

  DeductTime := 0;
  AddTime    := 0;
  while Not PersStatHist.Eof do begin
    If tdbfield(PersStatHist,'DEDUCTTIME') = 'Y' then begin
      DateTimeStart := GetField(PersStatHist,'DATETIMESTART').AsDateTime;
      If GetField(PersStatHist,'DATETIMEEND').AsDateTime > 0 then
        DateTimeEnd := GetField(PersStatHist,'DATETIMEEND').AsDateTime
      else
        DateTimeEnd := AsOfDateTime;
      DeductTime := DeductTime + (DateTimeEnd - DateTimeStart);
    end else if tdbfield(PersStatHist,'ADDTIME') = 'Y' then begin
      If (GetField(PersStatHist,'DATETIMESTART').AsDateTime > 0) and (GetField(PersStatHist,'DATETIMEEND').AsDateTime > 0) then
        AddTime := AddTime + (GetField(PersStatHist,'DATETIMEEND').AsDateTime - GetField(PersStatHist,'DATETIMESTART').AsDateTime);
    end;
    PersStatHist.Skip(1);
  end;

  PersBand.Color              := IIfI(PersBand.color = clwhite,$00EBEBEB,clwhite);
  NameField.Caption          := tdbfield(Pers,'LNAME') + ', ' + tdbfield(Pers,'FNAME');
  PersCodeField.Caption      := tdbfield(Pers,'PERSCODE');
  PersTypeDescrField.Caption := tdbfield(Pers,'PERSTYPEDESCR');
  PersStatDescrField.Caption := tdbfield(Pers,'PERSSTATDESCR');
  JoinDateField.Caption      := AlpineFormatDateTime('MM/DD/YYYY',GetField(Pers,'JOINDATE').AsDateTime);

  If (mFireID = '07130') or (mFireID = '15047') then
    ResginDate  := GetField(Pers,'LIFEDATE').AsDateTime
  else
    ResginDate  := GetField(Pers,'RESDATE').AsDateTime;

  ResDateField.Caption       := AlpineFormatDateTime('MM/DD/YYYY',ResginDate);

  If (GetField(Pers,'JOINDATE').AsDateTime > 0) and (ResginDate > 0) then begin
    YOSField.Caption           := FormatFloat('##0.00',(ResginDate - GetField(Pers,'JOINDATE').AsDateTime - DeductTime + AddTime)/365.25);
    YOS                        := (ResginDate- GetField(Pers,'JOINDATE').AsDateTime - DeductTime)/365.25;
  end else if GetField(Pers,'JOINDATE').AsDateTime > 0 then begin
    YOSField.Caption           := FormatFloat('##0.00',(AsOfDateTime - GetField(Pers,'JOINDATE').AsDateTime - DeductTime + AddTime)/365.25);
    YOS                        := (AsOfDateTime - GetField(Pers,'JOINDATE').AsDateTime - DeductTime + AddTime)/365.25;
  end else begin
    YOSField.Caption           := 'Join date not entered';
    YOS                        := 0;
  end;

  RunSQL('UPDATE PERS SET YOS = ' + FloatToStr(YOS) + ' WHERE PERSID = ' + Getfield(Pers,'PERSID').AsString);
  PersStatHistBand.Enabled   := (PersStatHist.QueryRecCount > 0);
end;

function TPersStatHistRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERS.JOINDATE, PERS.RESDATE, PERS.LIFEDATE, PERSSTAT.DESCR PERSSTATDESCR, PERSTYPE.DESCR PERSTYPEDESCR, PERS.LNAME,PERS.FNAME, PERS.PERSCODE FROM PERS ' +
            'LEFT JOIN PERSSTAT ON (PERSSTAT.PERSSTATID = PERS.PERSSTATID) ' +
            'LEFT JOIN PERSTYPE ON (PERSTYPE.PERSTYPEID = PERS.PERSTYPEID) ';
end;


procedure TPersStatHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Pers.Free;
  PersStatHist.Free;
end;

procedure TPersStatHistRepForm.PersStatHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
begin
  inherited;
  PersStatHistBand.Color     := PersBand.Color;
  DateTimeStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHist,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption   := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHist,'DATETIMEEND').AsDateTime);
  LeaveField.Caption         := GetField(PersStatHist,'PERSSTATDESCR').AsString;
  DateTimeStart              := GetField(PersStatHist,'DATETIMESTART').AsDateTime;

  If GetField(PersStatHist,'DATETIMEEND').AsDateTime > 0 then
    DateTimeEnd := GetField(PersStatHist,'DATETIMEEND').AsDateTime
  else
    DateTimeEnd := AsOfDateTime;

  If GetField(PersStatHist,'DEDUCTTIME').AsString = 'Y' then begin
    LeaveLabel.Caption := 'Leave Period:';
    LeaveField.Caption := tdbfield(PersStatHist,'PERSSTATDESCR') + ' leave of ' + FormatFloat('##0.00',(DateTimeEnd - DateTimeStart)/365.25) + ' years deducted'
  end else begin
    LeaveLabel.Caption := 'Status Action:';
    LeaveField.Caption := tdbfield(PersStatHist,'PERSSTATDESCR');
  end;  
end;

end. 
