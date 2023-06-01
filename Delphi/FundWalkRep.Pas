unit FundWalkRep;
 
interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  AlpineBaseSummaryReport,
  dialogs,
  quickrpt,
  qrctrls,
  ExtCtrls,
  QRXMLSFilt,
  QRXLSXFilt,
  QRExport,
  QRWebFilt,
  QRPDFFilt;

type
  TFundWalkRepForm = class(TAlpineBaseSummaryReportForm)
    SteetBand: TQRBand;
    StreetName: TQRLabel;
    DetailBand: TQRSubDetail;
    StrNumField: TQRLabel;
    TitleBand1: TQRBand;
    DeptName: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel8: TQRLabel;
    FundCodeLabel: TQRLabel;
    HeaderBand: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    RoomAptField: TQRLabel;
    FooterBand: TQRBand;
    QRLabel14: TQRLabel;
    PropCntField: TQRLabel;
    QRLabel100: TQRLabel;
    QRLabel15: TQRLabel;
    BarCodeField: TQRLabel;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    PageHeaderBand1: TQRBand;
    HeaderField: TQRLabel;
    QRShape1: TQRShape;
    QRLabel7: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRLabel1: TQRLabel;
    AmountField: TQRLabel;
    YearField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure SteetBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure DetailBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FooterBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PropCnt     : Integer;
    FundEventID : String;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  FundWalkRepForm: TFundWalkRepForm;

implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     SortGridView,
     FundMan;

{$R *.DFM}

procedure TFundWalkRepForm.FormCreate(Sender: TObject);
begin
  Open_Query('PROP',false,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('STREET',false,'SELECT * FROM STREET ORDER BY STREET');
  Open_Query('FUNDCHECK',false,'SELECT AMOUNT, DATEREC, PROPID, FUNDEVENTID FROM FUNDCHECK ORDER BY PROPID, DATEREC DESC');

  BaseReport.DataSet := GetTable('STREET');
  DetailBand.DataSet := GetTable('PROP');
  DeptName.Caption   := FireDept;
  FundEventID        := FundManForm.FundEventID;
end;

procedure TFundWalkRepForm.FormDestroy(Sender: TObject);
begin
  CloseApollo('FUNDCHECK');
  CloseApollo('PROP');
  CloseApollo('STREET');
end;

procedure TFundWalkRepForm.SteetBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  PrintBand          := true;
  DetailBand.Enabled := true;
  FooterBand.Enabled := true;
  HeaderBand.Enabled := true;
  StreetName.Caption := dbField('STREET','STREET');
  SQLVar             := 'SELECT PROPID, STRNUM, STREET FROM PROP WHERE PROPTYPEID = ' + PropAddr + ' AND STREET = ' + edbfield('STREET','STREET') + ' ' +
                        'ORDER BY PROP.STREET, ' + AlpinePadLeft('PROP.STRNUM',16) + ',' + AlpinePadLeft('PROP.ROOMAPT',12);
  A('PROP').UpdateSQL(SQLVar);
  PropCnt             := 0;
end;

procedure TFundWalkRepForm.DetailBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  If A('FUNDCHECK').ExactQueryLocate('PROPID',GetField('PROP','PROPID').AsString) and (GetField('FUNDCHECK','FUNDEVENTID').AsString = FundEventID)  then
    PrintBand            := false
  else begin
    If (GetField('FUNDCHECK','PROPID').AsString = GetField('PROP','PROPID').AsString) and (GetField('FUNDCHECK','DATEREC').AsDateTime > 0) then begin
      AmountField.Caption  := FormatFloat('##,##0.00',Getfield('FUNDCHECK','AMOUNT').AsFloat);
      YearField.Caption    := FormatDateTime('MM/DD/YYYY',GetField('FUNDCHECK','DATEREC').AsDateTime);
    end else begin
      AmountField.Caption  := 'n/a';
      YearField.Caption    := 'n/a';
    end;

    StrNumField.Caption  := alltrim(dbfield('PROP','STRNUM'));
    BarCodeField.Caption := '*'+tdbField('PROP','PROPID')+'*';
    RoomAptField.Caption := tdbField('PROP','ROOMAPT');
    PropCnt              := PropCnt + 1;
  end;
end;

procedure TFundWalkRepForm.FooterBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  PropCntField.Caption := FormatFloat('#,##0',PropCnt);
end;

procedure TFundWalkRepForm.PageHeaderBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  HeaderField.Caption := 'Walk around report for: ' + StreetName.Caption;
end;

end.
