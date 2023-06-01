unit NIEvAttHistRep;

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
  TNIEvAttHistRepForm = class(TAlpineBaseSummaryReportForm)
    NIEVAttBand: TQRBand;
    NameField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    TrainDescrField: TQRLabel;
    PersCodeField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    NIDateTimeStartField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    EvLengthField: TQRLabel;
    QRLabel5: TQRLabel;
    NITrainCatCodeField: TQRLabel;
    QRLabel7: TQRLabel;
    NITrainCatDescrField: TQRLabel;
    QRLabel10: TQRLabel;
    DateLabel: TQRLabel;
    QRLabel9: TQRLabel;
    NITrainCat1DescrField: TQRLabel;
    NITrainCat1CodeField: TQRLabel;
    QRLabel11: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NIEVAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    VWNIEVAttTable : TApolloData;
    NITrainCat1ID  : String;
  public
    { Public declarations }
  end;

var
  NIEvAttHistRepForm: TNIEvAttHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     AlpineGlowButton,
     CommonFunc,
     PersTrainCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TNIEvAttHistRepForm.FormCreate(Sender: TObject);
Var Form   : TForm;
    SQLVar : String;
begin
  inherited;
  Form                         := GetFormOfType(TPersTrainCondForm);
  NITrainCat1ID                := TPersTrainCondForm(Form).NITrainCat1IDField.Value;
  SQLVar                       := 'SELECT VWNIEVATT.PERSCODE, VWNIEVATT.FNAME, VWNIEVATT.LNAME, VWNIEVATT.NIDATETIMESTART, VWNIEVATT.NIEVATTDATETIMEATTEND, VWNIEVATT.NIDESCR, ' +
                                  'VWNIEVATT.NIID, VWNIEVATT.NIPTYPEDESCR, VWNIEVATT.NISTYPEDESCR, VWNIEVATT.NIEVEVLENGTH, VWNIEVATT.NIEVATTEVLENGTH, VWNIEVATT.NITRAINCAT1CODE, VWNIEVATT.NITRAINCAT1ID, VWNIEVATT.NITRAINCAT1DESCR ' +
                                  'FROM VWNIEVATT WHERE ' +
                                  '(VWNIEVATT.NIEVNITRAINCAT1ID = ' + pkvalue(NITrainCat1ID) + ' OR VWNIEVATT.NITRAINCAT1ID = ' + pkvalue(NITrainCat1ID)
                                   + ') AND ((' +
                                  BuildSQLAlpineDate('VWNIEVATT.NIDATETIMESTART',TPersTrainCondForm(Form).StartDateField.Value,TPersTrainCondForm(Form).EndDateField.Value) + ') OR (' +
                                  BuildSQLAlpineDate('VWNIEVATT.NIEVATTDATETIMEATTEND',TPersTrainCondForm(Form).StartDateField.Value,TPersTrainCondForm(Form).EndDateField.Value) +
                                  ')) ORDER BY VWNIEVATT.LNAME, VWNIEVATT.FNAME, VWNIEVATT.NIDATETIMESTART';
  VWNIEVAttTable               := Open_Query(SQLVar);
  BaseReport.DataSet           := VWNIEVAttTable.DataSource.DataSet;
  FireDeptField.Caption        := mFireDept;
  NITrainCatCodeField.Caption  := SQLLookUp(NITrainCAT1ID,'NITRAINCAT1ID','NITRAINCAT1','CODE');
  NITrainCatDescrField.Caption := SQLLookUp(NITrainCAT1ID,'NITRAINCAT1ID','NITRAINCAT1','DESCR');
  DateLabel.caption            := GetAlpineDateLabel(TPersTrainCondForm(Form).StartDateField.Value,TPersTrainCondForm(Form).EndDateField.Value);

end;

procedure TNIEvAttHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VWNIEVAttTable.Free;
end;

procedure TNIEvAttHistRepForm.NIEVAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var Form : TForm;
begin
  if tdbfield(VWNIEVAttTable, 'LNAME') <> '' then begin
    Form                          := GetFormOfType(TPersTrainCondForm);
    PersCodeField.Caption         := tdbfield(VWNIEVAttTable,'PERSCODE');
    NameField.Caption             := tdbfield(VWNIEVAttTable,'LNAME') + ', ' + tdbfield(VWNIEVAttTable,'FNAME');
    If GetField(VWNIEVAttTable, 'NIDATETIMESTART').AsDateTime > 0 then
      NIDateTimeStartField.Caption  := AlpineFormatDateTime('MM/DD/YYYY',GetField(VWNIEVAttTable,'NIDATETIMESTART').AsDateTime)
    Else begin
      NIDateTimeStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY',GetField(VWNIEVAttTable,'NIEVATTDATETIMEATTEND').AsDateTime)
    end;

    NITrainCat1CodeField.Caption  := SQLLookUp(NITrainCAT1ID,'NITRAINCAT1ID','NITRAINCAT1','CODE');
    NITrainCat1DescrField.Caption := SQLLookUp(NITrainCAT1ID,'NITRAINCAT1ID','NITRAINCAT1','DESCR');

    if GetField(VWNIEVAttTable, 'NIEVEVLENGTH').AsFloat > 0 then
      EvLengthField.Caption         := FormatFloat('##0.00',GetField(VWNIEVAttTable,'NIEVEVLENGTH').AsFloat)
    else begin
      EvLengthField.Caption         := FormatFloat('##0.00',GetField(VWNIEVAttTable,'NIEVATTEVLENGTH').AsFloat);
    end;
    NIEVAttBand.Color             := IIfI(NIEVAttBand.color = clwhite,$00EBEBEB,clwhite);
  end;
end;

end.
