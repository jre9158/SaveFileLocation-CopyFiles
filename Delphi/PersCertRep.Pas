unit PersCertRep;

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
  TPersCertRepForm = class(TAlpineBaseSummaryReportForm)
    NIEvAttBand: TQRBand;
    TitleBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    LocationLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    PersCodeField: TQRLabel;
    CertNumField: TQRLabel;
    NITrainCat1DescrField: TQRLabel;
    NameField: TQRLabel;
    DateTimeExpField: TQRLabel;
    QRLabel1: TQRLabel;
    DescrField: TQRLabel;
    DateTimeAttendField: TQRLabel;
    QRLabel7: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    QRImage2: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NIEvAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);

  private
    { Private declarations }
    NIEvAttTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  PersCertRepForm: TPersCertRepForm;

implementation
uses GenFunc,
     CommonFunc,
     NIEvAttCond,
     SecSet,
     SysRepMan;

{$R *.DFM}

procedure TPersCertRepForm.FormCreate(Sender: TObject);
begin
  NIEvAttTable          := Open_Query(sql);
  BaseReport.DataSet    := NIEvAttTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TNIEvAttCondForm.PrintTitles(TitleBand);
end;

procedure TPersCertRepForm.FormDestroy(Sender: TObject);
begin
  NIEvAttTable.Free;
end;

procedure TPersCertRepForm.NIEvAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var Form : TForm;
begin
  inherited;
  Form := GetFormOfType(TNIEvAttCondForm);
  If (GetField(NIEvAttTable,'NITRAINCAT1ID').AsInteger > 0) then begin
    If TNIEvAttCondForm(Form).CheckTrainCATBrowse(GetField(NIEvAttTable,'NITRAINCAT1ID').AsString) then begin
      PrintBand                     := true;
      PersCodeField.Caption         := tdbfield(NIEvAttTable,'PERSCODE');
      NameField.Caption             := tdbfield(NIEvAttTable,'LNAME') + ', ' + tdbfield(NIEvAttTable,'FNAME');
      DescrField.Caption            := tdbfield(NIEvAttTable,'DESCR');
      NITrainCat1DescrField.Caption := tdbfield(NIEvAttTable,'NITRAINCAT1CODE') + '-' + tdbfield(NIEvAttTable,'NITRAINCAT1DESCR');
      DateTimeAttendField.Caption   := AlpineFormatDateTime('MM/DD/YYYY',GetField(NIEvAttTable,'DATETIMEATTEND').AsDateTime);
      DateTimeExpField.Caption      := AlpineFormatDateTime('MM/DD/YYYY',GetField(NIEvAttTable,'DATETIMEEXP').AsDateTime);

      If (GetField(NIEvAttTable,'DATETIMEEXP').AsDateTime > 0) and (GetField(NIEvAttTable,'DATETIMEEXP').AsDateTime < Now) then begin
        DateTimeExpField.Caption      := '*' + DateTimeExpField.Caption;
        DateTimeExpField.Font.Color   := clRed;
      end else
        DateTimeExpField.Font.Color   := clBlack;
      CertNumField.Caption          := tdbfield(NIEvAttTable,'CERTNUM');
      If NIEvAttBand.color = clwhite then
        NIEvAttBand.Color      := $00EBEBEB
      else
        NIEvAttBand.Color      := clwhite;
    end else
      PrintBand := false;
  end else
    PrintBand := false;
end;

function TPersCertRepForm.SelectStatement: string;
begin
  result := 'SELECT NIEVATT.DESCR, NIEVATT.DATETIMEATTEND, NIEVATT.DATETIMEEXP, NITRAINCAT1.CODE NITRAINCAT1CODE, NITRAINCAT1.DESCR NITRAINCAT1DESCR, ' +
            'NIEVATT.NITRAINCAT1ID, NIEVATT.PERSID, PERS.PERSCODE, PERS.LNAME, PERS.FNAME, NIEVATT.CERTNUM FROM NIEVATT ' +
            'LEFT JOIN PERS ON (NIEVATT.PERSID = PERS.PERSID) ' +
            'LEFT JOIN NITRAINCAT1 ON (NIEVATT.NITRAINCAT1ID = NITRAINCAT1.NITRAINCAT1ID) ';
end;

end.
