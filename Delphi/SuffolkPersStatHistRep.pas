unit SuffolkPersStatHistRep;

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
  TSuffolkPersStatHistRepForm = class(TAlpineBaseSummaryReportForm)
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
    QRLabel11: TQRLabel;
    AddressField: TQRLabel;
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersStatHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    YOSRange     : String;
    Pers         : TApolloData;
    PersStatHist : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  SuffolkPersStatHistRepForm: TSuffolkPersStatHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     commonvar,
     CommonFunc,
     formfunc,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TSuffolkPersStatHistRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  Pers                     := Open_Query(Sql);
  PersBand.PkField         := 'PERSID';  
  PersStatHist             := Open_Query('SELECT DATETIMESTART, DATETIMEEND FROM PERSSTATHIST WHERE 1=2');
  BaseReport.DataSet       := Pers.DataSource.DataSet;
  PersStatHistBand.DataSet := PersStatHist.DataSource.DataSet;

  YOSRange                 := '';                 //added for sayville
  FireDeptField.Caption    := FireDept;
  Form                     := GetFormOfType(TPersCondForm);
  if MFireID = '52096' then
    If BooleanMessageDlg('Custom Years of Service range? ') then begin
      if BooleanMessageDlg('Include members under 20 years of service?') then
        YOSRange           :='5'
      else
        YOSRange           :='20';
  end;
  PersTypeLabel.Caption    := TPersCondForm(Form).GetPersTypeList;
  PersStatLabel.Caption    := TPersCondForm(Form).GetPersStatList;
  PersOrderLabel.Caption   := TPersCondForm(Form).GetPersOrder;
  YOSLabel.Caption         := 'Years of Service as of ' + FormatDateTime('MM/DD/YYYY',Now);
end;

procedure TSuffolkPersStatHistRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DeductTime    : Real;
    DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    YOS           : Real;
begin
  PersStatHist.UpdateSQL('SELECT DEDUCTTIME, DATETIMESTART, DATETIMEEND, PERSSTAT.DESCR PERSSTATDESCR ' +
                         'FROM PERSSTATHIST ' +
                         'LEFT JOIN PERSSTAT ON (PERSSTATHIST.PERSSTATID = PERSSTAT.PERSSTATID) ' +
                         'WHERE PERSSTATHIST.PERSID = ' + GetField(Pers,'PERSID').AsString);

  DeductTime := 0;
  while Not PersStatHist.Eof do begin
    DateTimeStart := GetField(PersStatHist,'DATETIMESTART').AsDateTime;
    If GetField(PersStatHist,'DATETIMEEND').AsDateTime > 0 then
      DateTimeEnd := GetField(PersStatHist,'DATETIMEEND').AsDateTime
    else
      DateTimeEnd := Now;

    If GetField(PersStatHist,'DEDUCTTIME').AsString = 'Y' then
      DeductTime := DeductTime + (DateTimeEnd - DateTimeStart);
    PersStatHist.Skip(1);
  end;


  If PersBand.color = clwhite then
    PersBand.Color    := $00EBEBEB
  else
    PersBand.Color    := clwhite;

  NameField.Caption          := tdbfield(Pers,'LNAME') + ', ' + tdbfield(Pers,'FNAME');
  PersCodeField.Caption      := tdbfield(Pers,'PERSCODE');
  PersTypeDescrField.Caption := tdbfield(Pers,'PERSTYPEDESCR');
  PersStatDescrField.Caption := tdbfield(Pers,'PERSSTATDESCR');
  JoinDateField.Caption      := AlpineFormatDateTime('MM/DD/YYYY',GetField(Pers,'JOINDATE').AsDateTime);
  ResDateField.Caption       := AlpineFormatDateTime('MM/DD/YYYY',GetField(Pers,'RESDATE').AsDateTime);
  AddressField.Caption       := tdbfield(Pers,'ADD1') + #13#10 + tdbfield(Pers,'CITY') + ', ' + tdbfield(Pers,'STATE') + '  ' + tdbfield(Pers,'ZIP');

  If (GetField(Pers,'JOINDATE').AsDateTime > 0) and (GetField(Pers,'RESDATE').AsDateTime > 0) then begin
    YOSField.Caption           := FormatFloat('##0.00',(GetField(Pers,'RESDATE').AsDateTime - GetField(Pers,'JOINDATE').AsDateTime - DeductTime)/365.25);
    YOS                        := (GetField(Pers,'RESDATE').AsDateTime - GetField(Pers,'JOINDATE').AsDateTime - DeductTime)/365.25;
  end else if GetField(Pers,'JOINDATE').AsDateTime > 0 then begin
    YOSField.Caption           := FormatFloat('##0.00',(Now - GetField(Pers,'JOINDATE').AsDateTime - DeductTime)/365.25);
    YOS                        := (Now - GetField(Pers,'JOINDATE').AsDateTime - DeductTime)/365.25;
  end else begin
    YOSField.Caption           := 'Join date not entered';
    YOS                        := 0;
  end;

  RunSQL('UPDATE PERS SET YOS = ' + FloatToStr(YOS) + ' WHERE PERSID = ' + Getfield(Pers,'PERSID').AsString);
  If YOS > 5 then begin
    PrintBand := True;
    PersStatHistBand.Enabled   := (PersStatHist.QueryRecCount > 0);
  end else begin
    PrintBand := False;
    PersStatHistBand.Enabled   := False;
  end;


  if YOSRange = '5'  then begin                                                      //added for sayville. see action from 12-12-16
    if YOS > 20  then begin
      printband := false;
    end
  end else if YOSRange = '20' then
    if YOS <= 20  then begin
      printband := false;
    end;
end;

function TSuffolkPersStatHistRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERS.JOINDATE, PERS.RESDATE, PERSSTAT.DESCR PERSSTATDESCR, ' +
            'PERSTYPE.DESCR PERSTYPEDESCR, PERS.LNAME,PERS.FNAME, PERS.PERSCODE, PERS.ADD1, PERS.CITY, PERS.STATE, PERS.ZIP FROM PERS ' +
            'LEFT JOIN PERSSTAT ON (PERSSTAT.PERSSTATID = PERS.PERSSTATID) ' +
            'LEFT JOIN PERSTYPE ON (PERSTYPE.PERSTYPEID = PERS.PERSTYPEID) ';
end;


procedure TSuffolkPersStatHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Pers.Free;
  PersStatHist.Free;
end;

procedure TSuffolkPersStatHistRepForm.PersStatHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
begin
  inherited;
  PersStatHistBand.Color     := PersBand.Color;
  DateTimeStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHist,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption   := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersStatHist,'DATETIMEEND').AsDateTime);
  LeaveField.Caption         := GetField(PersStatHist,'PERSSTATDESCR').AsString;
  DateTimeStart := GetField(PersStatHist,'DATETIMESTART').AsDateTime;
  If GetField(PersStatHist,'DATETIMEEND').AsDateTime > 0 then
    DateTimeEnd := GetField(PersStatHist,'DATETIMEEND').AsDateTime
  else
    DateTimeEnd := Now;

  If GetField(PersStatHist,'DEDUCTTIME').AsString = 'Y' then begin
    LeaveLabel.Caption := 'Leave Period:';
    LeaveField.Caption := tdbfield(PersStatHist,'PERSSTATDESCR') + ' leave of ' + FormatFloat('##0.00',(DateTimeEnd - DateTimeStart)/365.25) + ' years deducted'
  end else begin
    LeaveLabel.Caption := 'Status Action:';
    LeaveField.Caption := tdbfield(PersStatHist,'PERSSTATDESCR');
  end;  
end;

end. 
