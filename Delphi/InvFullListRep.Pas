unit InvFullListRep;

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
  TInvFullListRepForm = class(TAlpineBaseSummaryReportForm)
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    InvBand: TQRBand;
    InvNumField: TQRLabel;
    InvSubTypeDescrField: TQRLabel;
    InvLocDescrField: TQRLabel;
    SerNumField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel7: TQRLabel;
    TotalCountField: TQRLabel;
    QRLabel13: TQRLabel;
    DescrField: TQRLabel;
    QRLabel5: TQRLabel;
    InvDescrField: TQRLabel;
    QRLabel9: TQRLabel;
    QuantityField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    Inv           : TApolloData;
    TotalCountVar : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  InvFullListRepForm: TInvFullListRepForm;

implementation
uses GenFunc,
     SysRepMan,
     InvCond,
     CommonFunc;

{$R *.DFM}
{$I rednmx.inc}

procedure TInvFullListRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalCountVar := 0;
end;

procedure TInvFullListRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  inherited;
  Inv                    := Open_Query(Sql);
  BaseReport.DataSet     := Inv.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  TotalCountVar          := 0;
  TInvCondForm.PrintTitles(TitleBand);
end;

function TInvFullListRepForm.SelectStatement: string;
begin
  result := 'SELECT INVLOC.MAINCODE, INV.TYPE, INVTYPE.DESCR INVTYPEDESCR, INV.QUANTITY, INVLOC.DESCR INVLOCDESCR, ' +
            'INV.COST, INV.INVID, INV.INVNUM, INV.SERNUM, INV.DESCR, INVSUBTYPE.DESCR INVSUBTYPEDESCR, ' +
            'INVLOC.FULLDESCR INVLOCFULLDESCR FROM INV ' +
            'LEFT JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID) ' +
            'LEFT JOIN INVTYPE ON (INV.TYPE = INVTYPE.CODE) ' +
            'LEFT JOIN INVLOC ON (INV.INVLOCID = INVLOC.INVLOCID) ';
end;

procedure TInvFullListRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalCountField.Caption := FormatFloat('###,##0',TotalCountVar);
end;

procedure TInvFullListRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Inv.Free;
end;

procedure TInvFullListRepForm.InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  INVBand.Color                := IIfI(InvBand.Color = clwhite, $00EBEBEB, clwhite);
  InvNumfield.Caption          := tdbfield(Inv,'INVNUM');
  InvDescrField.Caption        := tdbfield(Inv,'INVTYPEDESCR');
  InvSubTypeDescrField.Caption := tdbfield(Inv,'INVSUBTYPEDESCR');
  SerNumfield.Caption          := tdbfield(Inv,'SERNUM');
  DescrField.Caption           := tdbfield(Inv,'DESCR');
  InvLocDescrField.Caption     := tdbfield(Inv,'MAINCODE') + IIf(tdbfield(Inv,'INVLOCDESCR') = tdbfield(Inv,'MAINCODE'),'','-' + tdbfield(Inv,'INVLOCDESCR'));
  QuantityField.Caption        := FormatFloat('#,##0',GetField(Inv,'QUANTITY').AsInteger);
  TotalCountVar                := TotalCountVar + 1;
end;

end.
