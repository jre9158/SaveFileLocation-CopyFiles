unit PropAddrRep;
 
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
  TPropAddrRepForm = class(TAlpineBaseSummaryReportForm)
    PropBand: TQRBand;
    StrNumField: TQRLabel;
    PageHeaderBand1: TQRBand;
    CSZField: TQRLabel;
    PropSubTypeDescrField: TQRLabel;
    pLastNameField: TQRLabel;
    StreetField: TQRLabel;
    RoomAptField: TQRLabel;
    FdidField: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    TitleBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    PropSubTypeLabel: TQRLabel;
    OrderLabel: TQRLabel;
    QRLabel8: TQRLabel;
    TotalField: TQRLabel;
    QRLabel12: TQRLabel;
    FdidLabel: TQRLabel;
    QRLabel13: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel14: TQRLabel;
    StreetFilterField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    PropTable : TApolloData;
    TotalVar  : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  PropAddrRepForm: TPropAddrRepForm;

implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     StrUtils,
     SortGridView,
     PropCond,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TPropAddrRepForm.FormCreate(Sender: TObject);
Var Form : TForm;
begin
  If (At('ORDER BY',UpperCase(SQL)) > 0) then
    PropTable                 := Open_Query(SQL)
  else
    PropTable                 := Open_Query(SQL + ' ORDER BY PROP.PROPSUBTYPEID, PROP.STREET, PROP.STRNUM');

  FireDeptField.Caption     := FireDept;
  BaseReport.DataSet        := PropTable.DataSource.DataSet;
  TotalField.caption        := FormatFloat('##,##0',PropTable.QueryRecCount);
  Form                      := GetFormOfType(TPropCondForm);
  PropSubTypeLabel.Caption  := TPropCondForm(Form).GetPropSubTypeLabel;
  OrderLabel.Caption        := TPropCondForm(Form).GetSortLabel;
  StreetFilterField.Caption := TPropCondForm(Form).StreetField.Value;
  FdidLabel.Caption         := TSysRepManForm.GetListString('All Agencies',TPropCondForm(Form).FdidBrowse);
end;

procedure TPropAddrRepForm.FormDestroy(Sender: TObject);
begin
  PropTable.Free;
end;

procedure TPropAddrRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  TotalVar                      := TotalVar + 1;
  FdidField.Caption             := tdbfield(PropTable,'FDID');
  PropSubTypeDescrField.Caption := SQLLookup(tdbfield(PropTable,'PROPSUBTYPEID'),'PROPSUBTYPEID','PROPSUBTYPE','DESCR');
  StrNumField.Caption           := alltrim(tdbfield(PropTable,'STRNUM'));
  StreetField.Caption           := tdbfield(PropTable,'STREET');
  RoomAptField.Caption          := tdbfield(PropTable,'ROOMAPT');
  pLastNameField.Caption        := tdbfield(PropTable,'PLASTNAME');
  CSZField.Caption              := tdbfield(PropTable,'CITY') + ', ' + tdbfield(PropTable,'STATE') + '  ' + substr(dbfield(PropTable,'ZIP'),1,5);

  If PropBand.color = clwhite then
    PropBand.Color := $00EBEBEB
  else
    PropBand.Color := clwhite;
end;

function TPropAddrRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PROP ' +
            'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ';
end;

procedure TPropAddrRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalVar := 0;
end;

end.
