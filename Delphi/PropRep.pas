unit PropRep;

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
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPropRepForm = class(TAlpineBaseSummaryReportForm)
    PropBand: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    PropTypeIDField: TQRLabel;
    FdidField: TQRLabel;
    BoxNumField: TQRLabel;
    CityStateZipField: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    LatitudeField: TQRLabel;
    LongitudeField: TQRLabel;
    AddressBand: TQRChildBand;
    PropSubTypeIDField: TQRLabel;
    QRLabel14: TQRLabel;
    AddressField: TQRLabel;
    QRLabel16: TQRLabel;
    PLastnameField: TQRLabel;
    QRLabel18: TQRLabel;
    InvalidBand: TQRChildBand;
    NarrBand: TQRChildBand;
    QRLabel5: TQRLabel;
    RoomAptField: TQRLabel;
    RangeBand: TQRChildBand;
    IntBand: TQRChildBand;
    HandicapField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel15: TQRLabel;
    NarrField: TQRLabel;
    QRLabel17: TQRLabel;
    Cross1Field: TQRLabel;
    QRLabel21: TQRLabel;
    Cross2Field: TQRLabel;
    FirstPersField: TQRLabel;
    QRLabel22: TQRLabel;
    PhoneField: TQRLabel;
    OLastnameField: TQRLabel;
    QRLabel23: TQRLabel;
    OAddressField: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    OCSZField: TQRLabel;
    QRLabel6: TQRLabel;
    FixPropField: TQRLabel;
    QRLabel7: TQRLabel;
    DispBoxIDField: TQRLabel;
    QRImage1: TQRImage;
    QRImage3: TQRImage;
    QRImage4: TQRImage;
    FireDeptField: TQRLabel;
    QRShape1: TQRShape;
    QRImage2: TQRImage;
    PrePlanBand: TQRChildBand;
    ExposureField: TQRLabel;
    AlarmSysField: TQRLabel;
    KnoxBoxField: TQRLabel;
    ConstructionField: TQRLabel;
    Hyd1DescField: TQRLabel;
    Hyd2DescField: TQRLabel;
    Hyd3DescField: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PropBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);

  private
    { Private declarations }
    PropTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  PropRepForm: TPropRepForm;

implementation
uses GenFunc,
     CommonFunc,
     PropCond,
     SecSet,commonvar,
     SortGridView,
     SysRepMan;
{$R *.DFM}

procedure TPropRepForm.FormCreate(Sender: TObject);
begin
  PropTable          := Open_Query(sql);
  BaseReport.DataSet := PropTable.DataSource.DataSet;
end;

procedure TPropRepForm.FormDestroy(Sender: TObject);
begin
  PropTable.Free;
end;

procedure TPropRepForm.PropBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FireDeptField.Caption     := SQLLookup(tdbfield(PropTable,'FDID'),'FDID','FDID','DEPTNAME');

  PropTypeIDField.Caption   := SQLLookup(tdbfield(PropTable,'PROPTYPEID'),'PROPTYPEID','PROPTYPE','DESCR');
  FdidField.Caption         := SQLLookup(tdbfield(PropTable,'FDID'),'FDID','FDID','SHORTDESCR');
  CityStateZipField.Caption := tdbfield(PropTable,'CITY') + ', ' + tdbfield(PropTable,'STATE') + ' ' + tdbfield(PropTable,'ZIP');
  BoxNumField.Caption       := tdbfield(PropTable,'BOXNUM');
  FixPropField.Caption      := SQLLookup(tdbfield(PropTable,'FIXPROP'),'CODE','N5PROPUSE','DESCR');
  DispBoxIDField.Caption    := SQLLookup(tdbfield(PropTable,'DISPBOXID'),'DISPBOXID','DISPBOX','DESCR');

  LatitudeField.Caption     := FormatFloat('##0.00000',GetField(PropTable,'LATITUDE').AsFloat);
  LongitudeField.Caption    := FormatFloat('##0.00000',GetField(PropTable,'LONGITUDE').AsFloat);

  PropSubTypeIDField.Caption := SQLLookup(tdbfield(PropTable,'PROPSUBTYPEID'),'PROPSUBTYPEID','PROPSUBTYPE','DESCR');
  AddressField.Caption      := tdbfield(PropTable,'STRNUM') + ' ' + tdbfield(PropTable,'STREET');
  RoomAptField.Caption      := tdbfield(PropTable,'ROOMAPT');
  PLastnameField.Caption    := tdbfield(PropTable,'PLASTNAME');

  Cross1Field.Caption       := tdbfield(PropTable,'CROSS1');
  Cross2Field.Caption       := tdbfield(PropTable,'CROSS2');

  FirstPersField.Caption    := tdbfield(PropTable,'FIRSTPERS');
  PhoneField.Caption        := tdbfield(PropTable,'FIRSTPHONE');

  OLastnameField.Caption    := tdbfield(PropTable,'OLASTNAME');
  OAddressField.Caption     := tdbfield(PropTable,'OADDRESS');
  OCSZField.Caption         := tdbfield(PropTable,'OCITY') + ', ' + tdbfield(PropTable,'OSTATE') + ' ' + tdbfield(PropTable,'OZIP');

  HandicapField.Caption     := GetField(PropTable,'HANDICAP').AsString;
  NarrField.Caption         := GetField(PropTable,'NARR').AsString;

  AddressBand.Enabled       := Getfield(PropTable,'PROPTYPEID').AsString = PropAddr;
  RangeBand.Enabled         := Getfield(PropTable,'PROPTYPEID').AsString = PropRange;
  IntBand.Enabled           := Getfield(PropTable,'PROPTYPEID').AsString = PropInt;

  If (MFireId= '52115') then begin
    PrePlanBand.Enabled       := True;
    AddressBand.Enabled       := True;
    KnoxBoxField.Caption      := tdbfield(PropTable,'KNOXBOX');
    Hyd1DescField.Caption     := tdbfield(PropTable,'HYD1DESC');
    Hyd2DescField.Caption     := tdbfield(PropTable,'HYD2DESC');
    Hyd3DescField.Caption     := tdbfield(PropTable,'HYD3DESC');
    ConstructionField.Caption := tdbfield(PropTable,'CONSTRUCTION');
    ExposureField.Caption     := tdbfield(PropTable,'EXPOSURE');
    AlarmSysField.Caption     := tdbfield(PropTable,'ALARMSYS1') + tdbfield(PropTable,'ALARMSYS2');
  end;

  If (mFireID = '02113') or (mFireID = '28030') then begin
    Hyd1DescField.Caption     := tdbfield(PropTable,'HYD1DESC');
    Hyd2DescField.Caption     := tdbfield(PropTable,'HYD2DESC');
    Hyd3DescField.Caption     := tdbfield(PropTable,'HYD3DESC');
    KnoxBoxField.Caption      := tdbfield(PropTable,'LOCKBOXLOC');
  end;

end;

function TPropRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PROP ';
end;

end.
