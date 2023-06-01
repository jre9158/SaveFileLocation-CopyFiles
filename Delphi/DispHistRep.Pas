unit DispHistRep;

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
  TDispHistRepForm = class(TAlpineBaseSummaryReportForm)
    DispHistBand: TQRBand;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    DateStatField: TQRLabel;
    QRLabel7: TQRLabel;
    PeriodField: TQRLabel;
    QRLabel1: TQRLabel;
    FdidField: TQRLabel;
    QRLabel2: TQRLabel;
    IncNumField: TQRLabel;
    QRLabel8: TQRLabel;
    AddressField: TQRLabel;
    QRLabel11: TQRLabel;
    DispCallTypeDescrField: TQRLabel;
    SummaryBand1: TQRBand;
    TotalField: TQRLabel;
    QRLabel13: TQRLabel;
    TimeStatField: TQRLabel;
    QRLabel6: TQRLabel;
    DispStatCodeDescrField: TQRLabel;
    QRLabel5: TQRLabel;
    UnitNumField: TQRLabel;
    QRLabel9: TQRLabel;
    DispStatCodeLabel: TQRLabel;
    QRLabel10: TQRLabel;
    DispCallTypeLabel: TQRLabel;
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    DispHistTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  DispHistRepForm: TDispHistRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     DispHistCond;

{$R *.DFM}

procedure TDispHistRepForm.FormCreate(Sender: TObject);
var Form : TForm;
begin
  inherited;
  DispHistTable             := Open_Query(Sql + ' ORDER BY DISPHIST.DATETIMESTAT');
  BaseReport.DataSet        := DispHistTable.DataSource.DataSet;
  FireDeptField.Caption     := mFireDept;
  Form                      := GetFormOfType(TDispHistCondForm);
  PeriodField.Caption       := GetAlpineDateLabel(InitialDate,FinalDate);
  DispStatCodeLabel.Caption := SQLLookUp(TDispHistCondForm(Form).DispStatCodeIDField.Value,'DISPSTATCODEID','DISPSTATCODE','DESCR');
  DispCallTypeLabel.Caption := SQLLookUp(TDispHistCondForm(Form).DispCallTypeIDField.Value,'DISPCALLTYPEID','DISPCALLTYPE','DESCR');
end;

procedure TDispHistRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  DateStatField.Caption          := AlpineFormatDateTime('MM/DD/YYYY',GetField(DispHistTable,'DATETIMESTAT').AsDateTime);
  TimeStatField.Caption          := AlpineFormatDateTime('HH:NN',GetField(DispHistTable,'DATETIMESTAT').AsDateTime);
  DispStatCodeDescrField.Caption := tdbfield(DispHistTable,'DISPSTATCODEDESCR');
  UnitNumField.Caption           := tdbfield(DispHistTable,'UNITNUM');
  FdidField.Caption              := tdbfield(DispHistTable,'FDID');
  IncNumField.Caption            := substr(dbfield(DispHistTable,'INCNUM'),1,4) + '-' + substr(dbfield(DispHistTable,'INCNUM'),5,6);
  AddressField.Caption           := tdbfield(DispHistTable,'ADDRESS');
  DispCallTypeDescrField.Caption := tdbfield(DispHistTable,'DISPCALLTYPEDESCR');
  DispHistBand.Color             := IIfI(DispHistBand.Color = clwhite,$00EBEBEB,clwhite);
end;

function TDispHistRepForm.SelectStatement: string;
begin
  result := 'SELECT DISPHIST.DATETIMESTAT, NFIRSMAIN.FDID FDID, NFIRSMAIN.INCNUM INCNUM, DISPCALL.ADDRESS, ' +
            'DISPCALLTYPE.DESCR DISPCALLTYPEDESCR, DISPSTATCODE.DESCR DISPSTATCODEDESCR, DISPHIST.UNITNUM ' +
            'FROM DISPHIST ' +
            'LEFT JOIN DISPCALL     ON (DISPHIST.DISPCALLID     = DISPCALL.DISPCALLID) ' +
            'LEFT JOIN NFIRSMAIN    ON (DISPCALL.NFIRSMAINID    = NFIRSMAIN.NFIRSMAINID) ' +
            'LEFT JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' + 
            'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ';
end;


procedure TDispHistRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalField.Caption := 'Total Number of Records ' + FormatFloat('##,##0',DispHistTable.RecCount);
end;

procedure TDispHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DispHistTable.Free;
end;

end.
