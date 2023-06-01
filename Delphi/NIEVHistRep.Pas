unit NIEVHistRep;

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
  QRXLSXFilt,
  EnJpgGr;

type
  TNIEVHistRepForm = class(TAlpineBaseSummaryReportForm)
    NIEVBand: TQRBand;
    DescrField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    TrainDescrField: TQRLabel;
    CodeField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    NIEVDateStartField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    EvLengthField: TQRLabel;
    QRLabel5: TQRLabel;
    NITrainCatCodeField: TQRLabel;
    QRLabel10: TQRLabel;
    DateLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    NIEVAttCountField: TQRLabel;
    SchdShiftNameCodeField: TQRLabel;
    UnitNumField: TQRLabel;
    LocationField: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel12: TQRLabel;
    NIEVCountField: TQRLabel;
    QRLabel13: TQRLabel;
    EVLengthTotalField: TQRLabel;
    NIEVAttTotalField: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    ManPowerField: TQRLabel;
    ManPowerTotalField: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NIEVBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NIEVCountVar     : Real;
    EVLengthTotalVar : Real;
    NIEVAttTotalVar  : Real;
    ManPowerTotalVar : Real;
    NIEVTable        : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  NIEVHistRepForm: TNIEVHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     AlpineGlowButton,
     CommonFunc,
     NIEVCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TNIEVHistRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  NIEVCountVar                 := 0;
  EVLengthTotalVar             := 0;
  NIEVAttTotalVar              := 0;
  ManPowerTotalVar             := 0;
end;

procedure TNIEVHistRepForm.FormCreate(Sender: TObject);
Var Form : TForm;
begin
  inherited;
  Form                         := GetFormOfType(TNIEVCondForm);
  NIEVTable                    := Open_Query(SQL);
  BaseReport.DataSet           := NIEvTable.DataSource.DataSet;
  DateLabel.caption            := GetAlpineDateLabel(TNIEVCondForm(Form).StartDateField.Value,TNIEVCondForm(Form).EndDateField.Value);
  FireDeptField.Caption        := mFireDept;
  NIEVCountVar                 := 0;
  EVLengthTotalVar             := 0;
  NIEVAttTotalVar              := 0;
  ManPowerTotalVar             := 0;
end;

function TNIEVHistRepForm.SelectStatement: string;
begin
  result := 'SELECT NIEV.DATETIMESTART, NIEV.DATETIMEEND, NIEV.EVLENGTH, NITRAINCAT1.CODE NITRAINCAT1CODE, NITRAINCAT1.DESCR NITRAINCAT1DESCR, ' +
            'NIEV.NIEVID, NI.UNITNUM, SCHDSHIFTNAME.CODE SCHDSHIFTNAMECODE, LOCATION.CODE LOCATIONCODE ' +
            'FROM NIEV ' +
            'LEFT JOIN NITRAINCAT1 ON (NIEV.NITRAINCAT1ID = NITRAINCAT1.NITRAINCAT1ID) ' +
            'LEFT JOIN NI ON (NIEV.NIID = NI.NIID) ' +
            'LEFT JOIN LOCATION ON (NI.LOCATIONID = LOCATION.LOCATIONID) ' +
            'LEFT JOIN SCHDSHIFTNAME ON (NI.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ';
end;

procedure TNIEVHistRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NIEVCountField.Caption     := FormatFloat('##,##0',NIEVCountVar);
  EVLengthTotalField.Caption := FormatFloat('##,##0.00',EVLengthTotalVar);
  NIEVAttTotalField.Caption  := FormatFloat('##,##0',NIEVAttTotalVar);
  ManPowerTotalField.Caption  := FormatFloat('##,##0',ManPowerTotalVar)
end;

procedure TNIEVHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NIEVTable.Free;
end;

procedure TNIEVHistRepForm.NIEVBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var Form            : TForm;
    NIEVAttCountVar : Real;
begin
  Form                           := GetFormOfType(TNIEVCondForm);
  NIEVAttCountVar                := SqlTableRecCount('SELECT COUNT(*) FROM NIEVATT WHERE NIEVID = ' + GetField(NIEVTable,'NIEVID').AsString);
  CodeField.Caption              := tdbfield(NIEVTable,'NITRAINCAT1CODE');
  DescrField.Caption             := tdbfield(NIEVTable,'NITRAINCAT1DESCR');
  LocationField.Caption          := tdbfield(NIEVTable,'LOCATIONCODE');
  UnitNumField.Caption           := tdbfield(NIEVTable,'UNITNUM');
  SchdShiftNameCodeField.Caption := tdbfield(NIEVTable,'SCHDSHIFTNAMECODE');
  NIEVAttCountField.Caption      := FormatFloat('#,##0',NIEVAttCountVar);
  NIEVDateStartField.Caption     := FormatDateTime('MM/DD/YYYY',GetField(NIEVTable,'DATETIMESTART').AsDateTime);
  EvLengthField.Caption          := FormatFloat('#,##0.00',GetField(NIEVTable,'EVLENGTH').AsFloat);
  ManPowerField.Caption          := FormatFloat('#,##0.00',NIEVAttCountVar * GetField(NIEVTable,'EVLENGTH').AsFloat);
  NIEVBand.Color                 := IIfI(NIEVBand.color = clwhite,$00EBEBEB,clwhite);
  NIEVCountVar                   := NIEVCountVar + 1;
  NIEVAttTotalVar                := NIEVAttTotalVar + NIEVAttCountVar;
  EVLengthTotalVar               := EVLengthTotalVar + GetField(NIEVTable,'EVLENGTH').AsFloat;
  ManPowerTotalVar               := ManPowerTotalVar + (NIEVAttCountVar * GetField(NIEVTable,'EVLENGTH').AsFloat);
end;  

end.
