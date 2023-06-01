unit NfirsByFdidCompRep;

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
  TNfirsByFdidCompRepForm = class(TAlpineBaseSummaryReportForm)
    NfirsMainBand: TQRBand;
    DateTimeAlarmField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    HeaderBand: TQRBand;
    DateTimeAlarmLabel: TQRLabel;
    Total1Label: TQRLabel;
    Total2Label: TQRLabel;
    TotalCountField: TQRLabel;
    QRLabel4: TQRLabel;
    IncNumField: TQRLabel;
    SummaryBand: TQRBand;
    QRShape1: TQRShape;
    RightHeaderLine: TQRShape;
    RightDetailLine: TQRShape;
    LeftLine: TQRShape;
    QRLabel1: TQRLabel;
    FdidCompRepCodeField: TQRLabel;
    QRLabel2: TQRLabel;
    FdidCompRepDescrField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    FdidCompCountField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NfirsMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    NfirsMainTable     : TApolloData;
    NfirsFdidCompTable : TApolloData;
    FdidCompTable      : TApolloData;
    FdidCompCntArray   : Array of Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  NfirsByFdidCompRepForm: TNfirsByFdidCompRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     IncCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TNfirsByFdidCompRepForm.FormCreate(Sender: TObject);
var FdidCompTypeLabel : TQRLabel;
    FdidcompTypeField : TQRLabel;
    I                 : Integer;
    Form              : TForm;
    ColVar            : Integer;
    IncCondForm       : TIncCondForm;
begin
  inherited;
  Form                  := GetFormOfType(TIncCondForm);
  IncCondForm           := TIncCondForm(GetFormOfType(TIncCondForm));

  NfirsMainTable        := Open_Query(Sql + ' ' + TIncCondForm(Form).SelectOrder);
  NfirsFdidCompTable    := Open_Query('SELECT * FROM NFIRSFDIDCOMP WHERE 1=2');
  FdidCompTable         := Open_Query('SELECT * FROM FDIDCOMP ORDER BY CODE');
  BaseReport.DataSet    := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TIncCondForm.PrintTitles(TitleBand);

  SetLength(FdidCompCntArray,AnyStrToInt(GetMaxValue('FDIDCOMP','FDIDCOMPID')) + 1);
  I                     := 0;
  While Not FdidCompTable.Eof do begin
    FdidCompCntArray[GetField(FdidCompTable,'FDIDCOMPID').AsInteger] := 0;
    FdidCompTypeLabel := TQRLabel.Create(self);
    with FdidCompTypeLabel do begin
      Name        := 'FdidCompLabel' + GetField(FdidCompTable,'FDIDCOMPID').AsString;
      Parent      := HeaderBand;
      Width       := 80;
      AutoSize    := false;
      Alignment   := tacenter;
      Caption     := tdbfield(FdidCompTable,'CODE');
      Left        := 3 + LeftLine.Left + 90 * I;
      Top         := DateTimeAlarmLabel.Top;
      font.size   := 7;
      transparent := true;
    end;

    FdidCompTypeField := TQRLabel.Create(self);
    with FdidCompTypeField do begin
      Name        := 'FdidCompField' + GetField(FdidCompTable,'FDIDCOMPID').AsString;
      parent      := NfirsMainBand;
      Width       := 80;
      AutoSize    := false;
      Alignment   := tacenter;
      Caption     := '0.00';
      AutoSize    := false;
      Left        := 3 + LeftLine.Left + 90 * I;
      Top         := DateTimeAlarmField.Top;
      Tag         := GetField(FdidCompTable,'FDIDCOMPID').AsInteger;
      transparent := true;
    end;

    I := I + 1;
    FdidCompTable.Skip(1);
  end;
end;

procedure TNfirsByFdidCompRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  FdidCompTable.Gotop;
  While Not FdidCompTable.Eof do begin
    FdidCompCntArray[GetField(FdidCompTable,'FDIDCOMPID').AsInteger] := 0;
    FdidCompTable.Skip(1);
  end;
end;

procedure TNfirsByFdidCompRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var Code              : String;
    Descr             : String;
    CountVar          : String;
begin
  inherited;
  Code     := '';
  Descr    := '';
  CountVar := '';
  FdidCompTable.GoTop;
  While Not FdidCompTable.Eof do begin
    Code     := Code + tdbfield(FdidCompTable,'CODE') + #10#13;
    Descr    := Descr + tdbfield(FdidCompTable,'DESCR') + #10#13;
    CountVar := CountVar + FormatFloat('##,##0',FdidCompCntArray[GetField(FdidCompTable,'FDIDCOMPID').AsInteger]) + #10#13;  
    FdidCompTable.Skip(1);
  end;
  FdidCompRepCodeField.Caption  := Code;
  FdidCompRepDescrField.Caption := Descr;
  FdidCompCountField.Caption    := CountVar;
end;

procedure TNfirsByFdidCompRepForm.NfirsMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var FieldName  : String;
    TotalCount : Integer;
begin
  inherited;
  TotalCount := 0;
  NfirsFdidCompTable.UpdateSQL('SELECT FDIDCOMPID FROM NFIRSFDIDCOMP WHERE NFIRSFDIDCOMP.NFIRSMAINID = ' + pkValue(Getfield(NfirsMainTable,'NFIRSMAINID').AsString));
  NfirsFdidCompTable.GoTop;

  FdidCompTable.GoTop;
  While Not FdidCompTable.Eof do begin
    FieldName                                  := 'FdidCompField' + GetField(FdidCompTable,'FDIDCOMPID').AsString;
    TQRLabel(FindComponent(FieldName)).Caption := '-';
    FdidCompTable.Skip(1);
  end;

  While Not NfirsFdidCompTable.Eof do begin
    If (GetField(NfirsFdidCompTable,'FDIDCOMPID').AsInteger > 0) then begin
      FieldName                                                             := 'FdidCompField' + GetField(NfirsFdidCompTable,'FDIDCOMPID').AsString;
      FdidCompCntArray[GetField(NfirsFdidCompTable,'FDIDCOMPID').AsInteger] := FdidCompCntArray[GetField(NfirsFdidCompTable,'FDIDCOMPID').AsInteger] + 1;
      TotalCount                                                            := TotalCount + 1;
    end;
    TQRLabel(FindComponent(FieldName)).Caption := 'Yes';
    NfirsFdidCompTable.Skip(1);
  end;

  NfirsMainBand.Color        := IIfI(NfirsMainBand.color = clwhite,$00EBEBEB,clwhite);
  IncNumField.Caption        := tdbfield(NfirsMainTable,'INCNUM');
  DateTimeAlarmField.Caption := AlpineFormatDateTime('MM/DD/YYYY',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
  TotalCountField.Caption    := FormatFloat('#0',TotalCount);
end;

function TNfirsByFdidCompRepForm.SelectStatement: string;
begin
  result := 'SELECT INCNUM, NFIRSMAINID, DATETIMEALARM FROM NFIRSMAIN ';
end;

procedure TNfirsByFdidCompRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NfirsMainTable.Free;
  NfirsFdidCompTable.Free;
  FdidCompTable.Free;
end;

end.
