unit HydroComplianceColorRep;

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
  CommonVar,
  Db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  THydroComplianceColorRepForm = class(TAlpineBaseSummaryReportForm)
    InvBand: TQRBand;
    TitleBand1: TQRBand;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    InvNumField: TQRLabel;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    HydroIntField: TQRLabel;
    TestDateField: TQRLabel;
    QRLabel5: TQRLabel;
    NextHydroDateField: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    DescrField: TQRLabel;
    QRLabel11: TQRLabel;
    SerNumField: TQRLabel;
    DatePurField: TQRLabel;
    mandatefield: TQRLabel;
    QRLabel10: TQRLabel;
    TimeField: TQRSysData;
    SummaryBand1: TQRBand;
    TotalCntField: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    TestDescrField: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel1: TQRLabel;
    LocationField: TQRLabel;
    ExpDateField: TQRLabel;
    HydroDateField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    Inv            : TApolloData;
    TotalCntVar    : Integer;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

implementation
uses GenFunc,
     CommonFunc,
     InvCond,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure THydroComplianceColorRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotalCntVar           := 0;
end;

procedure THydroComplianceColorRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  Inv                   := Open_Query(sql);
  BaseReport.DataSet    := Inv.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  Form                  := GetFormOfType(TInvCondForm);
  TotalCntVar           := 0;
  TInvCondForm.PrintTitles(TitleBand1);
end;

procedure THydroComplianceColorRepForm.FormDestroy(Sender: TObject);
begin
  Inv.Free;
end;

procedure THydroComplianceColorRepForm.InvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var ScbaNum1 : Real;
begin
  inherited;
  ScbaNum1                   := IIfR(GetField(Inv,'SCBANUM1').AsFloat = 0,1825.25,GetField(Inv,'SCBANUM1').AsFloat);

  HydroDateField.Caption     := '';
  NextHydroDateField.Caption := '';
  InvNumField.Caption        := tdbfield(Inv,'INVNUM');
  DescrField.Caption         := tdbField(Inv,'DESCR');
  SerNumField.Caption        := tdbField(Inv,'SERNUM');
  LocationField.Caption      := GetField(Inv,'INVLOCFULLDESCR').AsString;
  DatePurField.Caption       := IIf(GetField(Inv,'PURCHASEDATE').AsDateTime = 0,'Not Entered',AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'PURCHASEDATE').AsDateTime));
  ManDateField.Caption       := IIf(GetField(Inv,'MANDATE').AsDateTime = 0,'Not Entered',AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'MANDATE').AsDateTime));
  ManDateField.Font.Color    := IIfI(GetField(Inv,'MANDATE').AsDateTime = 0,clred,clblack);
  ExpDateField.Caption       := IIf(GetField(Inv,'EXPDATE').AsDateTime = 0,'Not Entered',AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'EXPDATE').AsDateTime));
  ExpDateField.Font.Color    := IIfI(GetField(Inv,'EXPDATE').AsDateTime > Now,clgreen,clred);
  HydroIntField.Caption      := FormatFloat('#0',Round(ScbaNum1/365.25));

  If (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime + SCBANum1 > Now) then begin
    HydroDateField.Caption        := AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'SCBADATE1').AsDateTime);
    HydroDateField.Font.Color     := clgreen;
    NextHydroDateField.Caption    := AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'SCBADATE1').AsDateTime + SCBANum1);
    NextHydroDateField.Font.Color := clgreen;
  end else if (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime + SCBANum1 < Now) then begin
    HydroDateField.Caption        := AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'SCBADATE1').AsDateTime);
    HydroDateField.Font.Color     := clred;
    NextHydroDateField.Caption    := AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'SCBADATE1').AsDateTime + SCBANum1);
    NextHydroDateField.Font.Color := clred;
  end else if (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime = 0) and (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'MANDATE').AsDateTime + SCBANum1 < Now) then begin
    HydroDateField.Caption        := 'Hydro Due';
    HydroDateField.Font.Color     := clred;
    NextHydroDateField.Caption    := 'Never Done';
    NextHydroDateField.Font.Color := clred;
  end else if (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'SCBADATE1').AsDateTime = 0) and (GetField(Inv,'MANDATE').AsDateTime > 0) and (GetField(Inv,'MANDATE').AsDateTime + SCBANum1 > Now) then begin
    HydroDateField.Caption        := 'Never Done';
    HydroDateField.Font.Color     := clgreen;
    NextHydroDateField.Caption    := AlpineFormatDateTime('MM/DD/YYYY',GetField(Inv,'MANDATE').AsDateTime + SCBANum1);
    NextHydroDateField.Font.Color := clgreen;
  end else if (GetField(Inv,'MANDATE').AsDateTime = 0) then begin
    HydroDateField.Caption        := 'No Manufacture Date';
    HydroDateField.Font.Color     := clred;
    NextHydroDateField.Caption    := 'Never Done';
    NextHydroDateField.Font.Color := clred;
  end;

  InvBand.Color              := IIfI(InvBand.color = clwhite,$00EBEBEB,clwhite);
  TotalCntVar                := TotalCntVar + 1;
end;

function THydroComplianceColorRepForm.SelectStatement: string;
begin
  result := 'SELECT INV.MANDATE,INV.INVID, INV.INVNUM, INV.SERNUM, INV.DESCR, INVSUBTYPE.DESCR INVSUBTYPEDESCR, ' +
            'INV.INSERVICEDATE, INV.OUTOFSERVICEDATE, INV.PURCHASEDATE, INV.SCBANUM1, INV.SCBADATE1, INV.EXPDATE, ' +
            'INVLOC.FULLDESCR INVLOCFULLDESCR FROM INV ' +
            'LEFT JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID) ' +
            'LEFT JOIN INVSTAT ON (INV.INVSTATID = INVSTAT.INVSTATID) ' +
            'LEFT JOIN INVLOC ON (INV.INVLOCID = INVLOC.INVLOCID) ';
end;

procedure THydroComplianceColorRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalCntField.Caption := 'Total Count: ' + FormatFloat('##,##0',TotalCntVar);
end;

end.
