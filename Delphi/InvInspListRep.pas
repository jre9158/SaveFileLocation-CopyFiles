unit InvInspListRep;

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
  QRXLSXFilt;

type
  TInvInspListRepForm = class(TAlpineBaseSummaryReportForm)
    HeaderBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    InvBand: TQRBand;
    InvNumField: TQRLabel;
    InvServTypeDescrField: TQRLabel;
    DateDoneField: TQRLabel;
    QRLabel5: TQRLabel;
    SummaryBand: TQRBand;
    QRLabel10: TQRLabel;
    DateLabel: TQRLabel;
    QRLabel11: TQRLabel;
    InvLocLabel: TQRLabel;
    QRLabel12: TQRLabel;
    InvServStatusDescrField: TQRLabel;
    QRLabel1: TQRLabel;
    PersField: TQRLabel;
    QRLabel7: TQRLabel;
    NarrField: TQRLabel;
    QRLabel2: TQRLabel;
    InvDescrField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    VWInvServHist    : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  InvInspListRepForm: TInvInspListRepForm;

implementation
uses GenFunc,
     SysRepMan,
     InvServHistCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TInvInspListRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  VWInvServHist          := Open_Query(Sql);
  BaseReport.DataSet     := VWInvServHist.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  DateLabel.caption      := GetAlpineDateLabel(InitialDate,FinalDate);
  Form                   := GetFormOfType(TInvServHistCondForm);
  InvLocLabel.Caption    := SQLLookup(TInvServHistCondForm(Form).InvLocIDField.Value,'INVLOCID','INVLOC','FULLDESCR');
end;

function TInvInspListRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM VWINVSERVHIST ';
end;

procedure TInvInspListRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  VWInvServHist.Free;
end;

procedure TInvInspListRepForm.InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  InvNumfield.Caption             := tdbfield(VWInvServHist,'INVNUM');
  InvDescrField.Caption           := tdbfield(VWInvServHist,'INVDESCR');
  InvServTypeDescrField.Caption   := tdbfield(VWInvServHist,'INVSERVTYPEDESCR');
  DateDoneField.Caption           := GetField(VWInvServHist,'DATEDONE').AsString;
  NarrField.Caption               := GetField(VWInvServHist,'NARR').AsString;
  PersField.Caption               := GetField(VWInvServHist,'PERSCODE').AsString;
  InvServStatusDescrField.Caption := tdbfield(VWInvServHist,'INVSERVSTATUSDESCR');
  InvBand.Color                   := IIfI(InvBand.color = clwhite,$00EBEBEB,clwhite);  
end;

end.
