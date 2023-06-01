unit PersNiEvAttRep;
 
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
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt,
  QRPDFFilt;

type
  TPersNiEvAttRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    TrainCatBand: TQRSubDetail;
    NITrainCatCodeField: TQRLabel;
    TrainCatHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    NITrainCatDescrField: TQRLabel;
    ChildBand1: TQRChildBand;
    LNameField: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel15: TQRLabel;
    PersTypeDescrField: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    EvLengthField: TQRLabel;
    DateTimeLastField: TQRLabel;
    CertExpField: TQRLabel;
    TrainCATFooter: TQRBand;
    TotalEvLengthField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    ReqHourField: TQRLabel;
    RemHourField: TQRLabel;
    TotalReqHourField: TQRLabel;
    TotalRemHourField: TQRLabel;
    QRLabel16: TQRLabel;
    datelabel: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    PersStatDescrField: TQRLabel;
    TrainingCatName: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure TrainCatBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure TrainCATFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable        : TApolloData;
    NITrainCat1      : TApolloData;
    NIEvAtt          : TApolloData;
    NIEvAttInd       : TApolloData;
    TotalEvLengthVar : Real;
    TotalReqHourVar  : Real;
    TotalRemHourVar  : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  PersNiEvAttRepForm: TPersNiEvAttRepForm;
  Form        : TForm;

implementation
uses GenFunc,
     SecSet,
     PersCond,
     Commonfunc,
     CommonVar,
     SysSet,
     SysRepMan;
{$R *.DFM}

procedure TPersNiEvAttRepForm.FormCreate(Sender: TObject);
begin
  PersTable             := Open_Query(Sql);
  PersBand.PkField      := 'PERSID';
  NITrainCat1           := Open_Query('SELECT * FROM NITRAINCAT1 ORDER BY CODE');
  NIEvAtt               := Open_Query('SELECT * FROM NIEVATT WHERE 1=2');
  NIEvAttInd            := Open_Query('SELECT * FROM NIEVATT WHERE 1=2');
  BaseReport.DataSet    := PersTable.DataSource.DataSet;
  TrainCatBand.DataSet  := NITrainCat1.DataSource.DataSet;
  FireDeptField.Caption := mFireDept + ': Personnel Training Status';
  DateLabel.Caption     := GetAlpineDateLabel(initialdate,finaldate);
  Form                  := GetFormOfType(TPersCondForm);
end;

procedure TPersNiEvAttRepForm.FormDestroy(Sender: TObject);
begin
  PersTable.Free;
  NITrainCat1.Free;
  NIEvAtt.Free;
  NIEvAttInd.Free;
end;

procedure TPersNiEvAttRepForm.PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  LNameField.Caption         := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  PersCodeField.Caption      := tdbfield(PersTable,'PERSCODE');
  PersTypeDescrField.Caption := tdbfield(PersTable,'PERSTYPEDESCR');
  PersStatDescrField.Caption := tdbfield(PersTable,'PERSSTATDESCR');
  TotalEvLengthVar           := 0;
  TotalReqHourVar            := 0;
  TotalRemHourVar            := 0;

  If AnyStrToInt(TPersCondForm(Form).NITrainCatReqBrowse.GetValue('NITRAINCATREQID')) > 0 then
    TrainingCatName.Caption    := TPersCondForm(Form).NITrainCatReqBrowse.GetValue('DESCR')
  else
    TrainingCatName.Caption    := '';

  NIEvAtt.UpdateSQL('SELECT NIEV.DATETIMESTART, NIEV.EVLENGTH, NIEV.NITRAINCAT1ID FROM NIEVATT ' +
                    'LEFT JOIN NIEV ON (NIEVATT.NIEVID = NIEV.NIEVID) ' +
                    'WHERE NIEVATT.PERSID = ' + PkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                    BuildSQLAlpineDate('NIEV.DATETIMESTART',InitialDate,FinalDate) );
                    
  NIEvAttInd.UpdateSQL('SELECT NIEVATT.NITRAINCAT1ID, NIEVATT.DATETIMEEXP, NIEVATT.CERTNUM, NIEVATT.DATETIMEATTEND, NIEVATT.EVLENGTH FROM NIEVATT ' +
                       'WHERE NIEVATT.PERSID = ' + PkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                        BuildSQLAlpineDate('NIEVATT.DATETIMEATTEND',InitialDate,FinalDate) );
end;

procedure TPersNiEvAttRepForm.TrainCatBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var EvLength     : Real;
    DateTimeLast : TDateTime;
    DateExpired  : TDateTime;
    CertExp      : String;
    Form         : TForm;
    ReqHour      : Real;
    QualPeriod   : Real;
    RemHour      : Real;
begin
  inherited;
  Form := GetFormOfType(TPersCondForm);
  If TPersCondForm(Form).CheckTrainCATBrowse(GetField(NITrainCat1,'NITRAINCAT1ID').AsString) then begin
    ReqHour      := GetField(NITrainCat1,'REQHOUR').AsFloat;
    EvLength     := 0;
    RemHour      := 0;
    DateTimeLast := 0;
    CertExp      := '';

    QualPeriod                := AnyStrToFloat(SqlLookUp(GetField(NITrainCat1,'NITRAINCAT1ID').AsString,'NITRAINCAT1ID','NITRAINCAT1','QUALPERIOD'));
    NIEvAttInd.GoTop;
    While Not NIEvAttInd.Eof do begin
      If (GetField(NIEvAttInd,'NITRAINCAT1ID').AsString = GetField(NITrainCat1,'NITRAINCAT1ID').AsString) then begin
        EvLength         := EvLength + GetField(NIEvAttInd,'EVLENGTH').AsFloat;
        TotalEvLengthVar := TotalEvLengthVar  + GetField(NIEvAttInd,'EVLENGTH').AsFloat;
        If GetField(NIEvAttInd,'DATETIMEATTEND').AsDateTime > DateTimeLast then
          DateTimeLast := GetField(NIEvAttInd,'DATETIMEATTEND').AsDateTime;

        If GetField(NIEvAttInd,'DATETIMEEXP').AsDateTime > 0 then
          CertExp  := CertExp + 'Expires ' + GetField(NIEvAttInd,'DATETIMEEXP').AsString + IIf(tdbfield(NIEvAttInd,'CERTNUM') = '','',', Certfication# ' + tdbfield(NIEvAttInd,'CERTNUM')) + #10#13;
      end;
      NIEvAttInd.Skip(1);
    end;

    NIEvAtt.GoTop;
    While Not NIEvAtt.Eof do begin
      If (GetField(NIEvAtt,'NITRAINCAT1ID').AsString = GetField(NITrainCat1,'NITRAINCAT1ID').AsString) then begin
        EvLength         := EvLength + GetField(NIEvAtt,'EVLENGTH').AsFloat;
        TotalEvLengthVar := TotalEvLengthVar  + GetField(NIEvAtt,'EVLENGTH').AsFloat;
        If GetField(NIEvAtt,'DATETIMESTART').AsDateTime > DateTimeLast then
          DateTimeLast := GetField(NIEvAtt,'DATETIMESTART').AsDateTime;
      end;
      NIEvAtt.Skip(1);
    end;
    If ((QualPeriod > 0) and (CertExp = '') and (DateTimeLast <> 0)) then begin
      DateExpired                := DateTimeLast + QualPeriod;
      CertExp                    := 'Expires:' + AlpineFormatDateTime('MM/DD/YYYY',DateExpired);
    end else begin
      CertExp                    := 'N/A';
    end;

    RemHour                   := RMax(0,ReqHour - EvLength);
    TotalReqHourVar           := TotalReqHourVar + ReqHour;
    TotalRemHourVar           := TotalRemHourVar + RemHour;

    NITrainCatCodeField.Caption  := tdbfield(NITrainCAT1,'CODE');
    NITrainCatDescrField.Caption := tdbfield(NITrainCAT1,'DESCR');
    EvLengthField.Caption     := IIf(EvLength = 0,'-',FormatFloat('##0.00',EvLength));
    ReqHourField.Caption      := FormatFloat('##0.00',ReqHour);
    RemHourField.Caption      := FormatFloat('##0.00',RemHour);
    DateTimeLastField.Caption := IIf(DateTimeLast = 0,'N/A',FormatDateTime('MM/DD/YYYY',DateTimeLast));
    CertExpField.Caption      := CertExp;
  end else
    PrintBand := false;  
end;

function TPersNiEvAttRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID,PERSTYPE.DESCR PERSTYPEDESCR,PERSTYPE.DESCR PERSSTATDESCR,PERS.LNAME,PERS.FNAME,PERS.PERSCODE FROM PERS ';
end;

function TPersNiEvAttRepForm.ReportJoins: String;
begin
  result := ' LEFT OUTER JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ' + 
            ' LEFT OUTER JOIN PERSSTAT ON (PERS.PERSSTATID = PERSSTAT.PERSSTATID) ';
end;

procedure TPersNiEvAttRepForm.TrainCATFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalEvLengthField.Caption := FormatFloat('#,##0.00',TotalEvLengthVar);
  TotalReqHourField .Caption := FormatFloat('#,##0.00',TotalReqHourVar);
  TotalRemHourField .Caption := FormatFloat('#,##0.00',TotalRemHourVar);
end;

end.
