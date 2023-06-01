unit IncPropUseChartRep;

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
  TeEngine,
  Series,
  TeeProcs,
  Chart,
  DBChart,
  QrTee,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TN5PropUseObject = class
    Code     : String;
    Descr    : String;
    Count    : Integer;
    ManPower : Real;
  end;

type
  TIncPropUseChartRepForm = class(TAlpineBaseSummaryReportForm)
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    ChildBand1: TQRChildBand;
    PropUseObject: TQRChart;
    N5PropUseChart: TQRDBChart;
    N5PropUseTable: TPieSeries;
    TitleBand: TQRBand;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    N5PropUseList : TList;
    IncCountVar   : Integer;
    Procedure CalculateTotal;
    procedure LoadIncType;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  IncPropUseChartRepForm: TIncPropUseChartRepForm;

implementation
uses GenFunc,
     CommonFunc,
     Progress,
     IncCond,
     SysRepMan;
{$R *.DFM}

procedure TIncPropUseChartRepForm.FormCreate(Sender: TObject);
Var Form : TForm;
begin
  Form                   := GetFormOfType(TIncCondForm);
  PreviewModal           := False;
  FireDeptField.Caption  := mFireDept;
  N5PropUseList          := TList.Create;
  IncCountVar            := 0;
  TIncCondForm.PrintTitles(TitleBand);
  LoadIncType;
  CalculateTotal;
end;

procedure TIncPropUseChartRepForm.LoadIncType;
Var N5PropUseObject : TN5PropUseObject;
begin
  Open_Query('N5PROPUSE',false,'SELECT * FROM N5PROPUSE WHERE LEVELSQL = ' + AddExpr('1'));
  While Not A('N5PROPUSE').Eof do begin
    N5PropUseObject          := TN5PropUseObject.Create;
    N5PropUseObject.Code     := alltrim(GetField('N5PROPUSE','CODE').AsString);

    if N5PropUseObject.Code = '1' then
      N5PropUseObject.Descr    :=  '1-Assembly';
    if N5PropUseObject.Code = '2' then
      N5PropUseObject.Descr    :=  '2-Educational';
    if N5PropUseObject.Code = '3' then
      N5PropUseObject.Descr    :=  '3-Health Care';
    if N5PropUseObject.Code = '4' then
      N5PropUseObject.Descr    :=  '4-Residential';
    if N5PropUseObject.Code = '5' then
      N5PropUseObject.Descr    :=  '5-Mercantile';
    if N5PropUseObject.Code = '6' then
      N5PropUseObject.Descr    :=  '6-Industrial';
    if N5PropUseObject.Code = '7' then
      N5PropUseObject.Descr    :=  '7-Manufacturing';
    if N5PropUseObject.Code = '8' then
      N5PropUseObject.Descr    :=  '8-Storage';
    if N5PropUseObject.Code = '9' then
      N5PropUseObject.Descr    :=  '9-Outside';

    N5PropUseObject.Count    := 0;
    N5PropUseObject.ManPower := 0;
    N5PropUseList.Add(N5PropUseObject);
    A('N5PROPUSE').skip(1);
  end;
  CloseApollo('N5PROPUSE');

  N5PropUseObject          := TN5PropUseObject.Create;
  N5PropUseObject.Code     := '';
  N5PropUseObject.Descr    := 'Blank';
  N5PropUseObject.Count    := 0;
  N5PropUseObject.ManPower := 0;
  N5PropUseList.Add(N5PropUseObject);
end;

procedure TIncPropUseChartRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAllListObjects(N5PropUseList);
  N5PropUseList.Free;
end;

Procedure TIncPropUseChartRepForm.CalculateTotal;
Var X               : Integer;
    Form            : TForm;
    NfirsMainTable  : TApolloData;
begin
  Form            := GetFormOfType(TIncCondForm);
  NFIRSMainTable  := Open_Query('SELECT NFIRSMAINID, FIXPROP FROM NFIRSMAIN ' + TIncCondForm(Form).SqlWhereClause);
  While not NFIRSMainTable.eof do begin
    IncCountVar := IncCountVar + 1;

    If tdbfield(NfirsMainTable,'FIXPROP') = '' then
      TN5PropUseObject(N5PropUseList.Items[N5PropUseList.Count-1]).Count := TN5PropUseObject(N5PropUseList.Items[N5PropUseList.Count-1]).Count + 1
    else begin
      For X := 0 to N5PropUseList.Count - 1 do begin
        If TN5PropUseObject(N5PropUseList.Items[X]).Code = substr(tdbfield(NfirsMainTable,'FIXPROP'),1,1) then
          TN5PropUseObject(N5PropUseList.Items[X]).Count := TN5PropUseObject(N5PropUseList.Items[X]).Count + 1;
      end;
    end;

    NfirsMainTable.Skip(1);
  end;

  NfirsMainTable.Free;
  N5PropUseTable.clear;
  for X := 0 to N5PropUseList.Count-1 do begin
    If TN5PropUseObject(N5PropUseList.Items[X]).Count > 0 then
      N5PropUseTable.AddXY(X,TN5PropUseObject(N5PropUseList.Items[X]).Count,TN5PropUseObject(N5PropUseList.Items[X]).Descr +
                                                                            ' (' + IntToStr(TN5PropUseObject(N5PropUseList.Items[X]).Count) + ') ' +
                                                                            FormatFloat('#0.00',((TN5PropUseObject(N5PropUseList.Items[X]).Count/IncCountVar)*100)) + '%' );
  end;
  N5PropUseChart.legend.visible := true;
end;

end.
