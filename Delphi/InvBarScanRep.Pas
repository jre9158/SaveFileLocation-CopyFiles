unit InvBarScanRep;
                   
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
  TInvBarScanRepForm = class(TAlpineBaseSummaryReportForm)
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    InvBand: TQRBand;
    InvNumField: TQRLabel;
    InvSubTypeDescrField: TQRLabel;
    DescrField: TQRLabel;
    InvLocDescrField: TQRLabel;
    SerNumField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    TotalCountField: TQRLabel;
    QRLabel8: TQRLabel;
    BarCodeDateField: TQRLabel;
    CostLabel: TQRLabel;
    CostField: TQRLabel;
    BarCodeDateLabel: TQRLabel;
    QRLabel10: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    Inv           : TApolloData;
    TotalCountVar : Real;
    BarCodeDate   : TDateTime;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  InvBarScanRepForm: TInvBarScanRepForm;

implementation
uses GenFunc,
     SysRepMan,
     InvCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TInvBarScanRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalCountVar := 0;
end;

procedure TInvBarScanRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  Form                     := GetFormOfType(TInvCondForm);
  BarCodeDate              := TInvCondForm(Form).BarCodeDateField.Value;
  BarCodeDateLabel.Caption := '*Matches Scan Date: ' + AlpineFormatDateTime('MM/DD/YYYY',BarCodeDate);
  Inv                      := Open_Query(Sql);
  BaseReport.DataSet       := Inv.DataSource.DataSet;
  FireDeptField.Caption    := mFireDept;
  TotalCountVar            := 0;
  TInvCondForm.PrintTitles(TitleBand);
end;

function TInvBarScanRepForm.SelectStatement: string;
begin
  result := 'SELECT INV.BARCODEDATE, INV.INVID, INV.INVNUM, INV.SERNUM, INV.DESCR, INVSUBTYPE.DESCR INVSUBTYPEDESCR, ' +
            'INVLOC.FULLDESCR INVLOCFULLDESCR, INV.COST ' + 
            'FROM INV ' +
            'LEFT JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID) ' +
            'LEFT JOIN INVLOC ON (INV.INVLOCID = INVLOC.INVLOCID) ';
end;


procedure TInvBarScanRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalCountField.Caption := FormatFloat('###,##0',TotalCountVar);
end;

procedure TInvBarScanRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Inv.Free;
end;

procedure TInvBarScanRepForm.InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  InvNumfield.Caption          := tdbfield(Inv,'INVNUM');
  SerNumfield.Caption          := tdbfield(Inv,'SERNUM');
  InvSubTypeDescrField.Caption := tdbfield(Inv,'INVSUBTYPEDESCR');
  DescrField.Caption           := tdbfield(Inv,'DESCR');
  InvLocDescrField.Caption     := tdbfield(Inv,'INVLOCFULLDESCR');
  If BarCodeDate < 1 then begin
    BarCodeDateField.Caption     := AlpineFormatDateTime('MM/DD/YYYY',Getfield(Inv,'BARCODEDATE').AsDateTime);
    BarCodeDateField.Font.Color  := clblack;
  end else if AlpineFormatDateTime('MM/DD/YYYY',BarCodeDate) = AlpineFormatDateTime('MM/DD/YYYY',Getfield(Inv,'BARCODEDATE').AsDateTime) then begin
    BarCodeDateField.Caption     := '*' + AlpineFormatDateTime('MM/DD/YYYY',Getfield(Inv,'BARCODEDATE').AsDateTime);
    BarCodeDateField.Font.Color  := clgreen;
  end else begin
    BarCodeDateField.Caption     := '#' + AlpineFormatDateTime('MM/DD/YYYY',Getfield(Inv,'BARCODEDATE').AsDateTime);
    BarCodeDateField.Font.Color  := clred;
  end;

  CostField.Caption            := '$' + FormatFloat('###,##0.00',Getfield(Inv,'COST').AsFloat);
  InvBand.Color                := IIfI(InvBand.color = clwhite,$00EBEBEB,clwhite);
  TotalCountVar                := TotalCountVar + 1;
end;

end.
