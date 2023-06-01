unit DispCallTypeRepList;
 
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
  applst,
  db,
  QRExport,
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TDispCallTypeRepListForm = class(TAlpineBaseSummaryReportForm)
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel2: TQRLabel;
    DispCallTypeBand: TQRSubDetail;
    DescrField: TQRLabel;
    RespCallTypeCodeField: TQRLabel;
    QRLabel3: TQRLabel;
    CodeField: TQRLabel;
    dispsubtypeband: TQRSubDetail;
    dispsubtypeDescr: TQRLabel;
    dispsubtypecode: TQRLabel;
    DispSubTypeRespCodeField: TQRLabel;
    SummaryBand1: TQRBand;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DispCallTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure dispsubtypebandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    DispSubType       : TApolloData;
    DispCallType      : TApolloData;
    DispRespTable     : TApolloData;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  DispCallTypeRepListForm: TDispCallTypeRepListForm;

implementation
uses GenFunc,
     DispCond,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TDispCallTypeRepListForm.dispsubtypebandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  DispsubtypeDescr.Caption := tdbfield(DispSubType,'DESCR');
  DispSubTypeCode.Caption  := tdbField(DispSubType,'CODE');
  If DispRespTable.ExactQueryLocate('DISPCALLTYPEID',GetField(DispSubType,'RESPCALLTYPEID').AsString) then
    DispSubTypeRespCodeField.Caption := tdbfield(DispRespTable,'CODE') + ' - ' + tdbfield(DispRespTable,'DESCR') + ' - ' + tdbfield(DispRespTable,'VERBALDESCR')
  else
    DispSubTypeRespCodeField.Caption := '';
end;

procedure TDispCallTypeRepListForm.FormCreate(Sender: TObject);
Var Form      : TForm;
begin
  DispCallType             := Open_Query('SELECT * FROM DISPCALLTYPE WHERE HIDDEN <> ' + AddExpr('Y') + ' ORDER BY SORTORD, CODE, DESCR');
  DispRespTable            := Open_Query('SELECT * FROM DISPCALLTYPE WHERE RESPONSE = ' + AddExpr('Y'));
  DispCallTypeBand.DataSet := DispCallType.DataSource.DataSet;
  FireDeptField.Caption    := mFireDept;
  Form                     := GetFormOfType(TDispCondForm);
  DispSubType              := open_query('SELECT * FROM DISPSUBTYPE WHERE 1=2');
  DispSubTypeBand.DataSet  := DispSubType.datasource.Dataset;
end;

procedure TDispCallTypeRepListForm.FormDestroy(Sender: TObject);
begin
  inherited;
  DispCallType.Free;
  DispSubType.Free;
  DispRespTable.Free;
end;


procedure TDispCallTypeRepListForm.DispCallTypeBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  inherited;
  CodeField.Caption     := tdbfield(DispCallType,'CODE');
  DescrField.Caption    := tdbfield(DispCallType,'DESCR');

  If DispRespTable.ExactQueryLocate('DISPCALLTYPEID',GetField(DispCallType,'RESPCALLTYPEID').AsString) then
    RespCallTypeCodeField.caption := tdbfield(DispRespTable,'CODE') + ' - ' + tdbfield(DispRespTable,'DESCR') + ' - ' + tdbfield(DispRespTable,'VERBALDESCR')
  else
    RespCallTypeCodeField.caption := '';

  Dispsubtype.UpdateSql('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = '+pkValue(GetField(DispCallType,'DISPCALLTYPEID').AsString));
  DispSubTypeBand.Enabled  := (DispSubType.QueryRecCount > 0);
  DispSubTypeBand.DataSet  := DispSubType.datasource.Dataset;
end;

end.
