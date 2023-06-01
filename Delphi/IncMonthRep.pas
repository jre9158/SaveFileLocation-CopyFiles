unit IncMonthRep;
 
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
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt;

type
  TIncMonthRepForm = class(TAlpineBaseSummaryReportForm)
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TitleBand: TQRBand;
    ChildBand1: TQRChildBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    JanuaryBox: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    FebuaryBox: TQRShape;
    MarchBox: TQRShape;
    AprilBox: TQRShape;
    JuneBox: TQRShape;
    AugustBox: TQRShape;
    NovemberBox: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel9: TQRLabel;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    SeptemberBox: TQRShape;
    JulyBox: TQRShape;
    OctoberBox: TQRShape;
    DecemberBox: TQRShape;
    MayBox: TQRShape;
    QRShape9: TQRShape;
    DecemberCount: TQRLabel;
    NovemberCount: TQRLabel;
    OctoberCount: TQRLabel;
    SeptemberCount: TQRLabel;
    AugustCount: TQRLabel;
    JulyCount: TQRLabel;
    JuneCount: TQRLabel;
    MayCount: TQRLabel;
    AprilCount: TQRLabel;
    MarchCount: TQRLabel;
    FebuaryCount: TQRLabel;
    JanuaryCount: TQRLabel;
    QRShape8: TQRShape;
    TotalField: TQRLabel;
    BlankField: TQRLabel;
    TotalLabel: TQRLabel;
    BlankLabel: TQRLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    NFIRSMain : TApolloData;
    Procedure CalculateTotal;
  public
    { Public declarations }
  end;

{$I rednmx.inc}

var
  IncMonthRepForm: TIncMonthRepForm;

implementation
uses GenFunc,
     CommonFunc,
     Progress,
     IncCond,
     SysRepMan;
{$R *.DFM}

procedure TIncMonthRepForm.FormCreate(Sender: TObject);
begin
  FireDeptField.Caption := mFireDept;
  CalculateTotal;
  TIncCondForm.PrintTitles(TitleBand);
end;

Procedure TIncMonthRepForm.CalculateTotal;
Var i          : Integer;
    MaxValue   : Integer;
    MonthArray : Array [0..13] of Integer;
    BlankVar   : Integer;
    TotalVar   : Integer;
    Form       : TForm;
begin
  Form                               := GetFormOfType(TINCCondForm);
  NFIRSMain                          := Open_Query('SELECT DATETIMEALARM FROM NFIRSMAIN ' + TIncCondForm(Form).SqlWhereClause); 
  ProgressForm                       := TProgressForm.Create(Application);
  ProgressForm.ProgressBar1.MaxValue := NfirsMain.QueryRecCount;
  ProgressForm.StatusLabel.Caption   := 'Calculating Totals - Be Patient';

  MonthArray[00] := 0;
  MonthArray[01] := 0;
  MonthArray[02] := 0;
  MonthArray[03] := 0;
  MonthArray[04] := 0;
  MonthArray[05] := 0;
  MonthArray[06] := 0;
  MonthArray[07] := 0;
  MonthArray[08] := 0;
  MonthArray[09] := 0;
  MonthArray[10] := 0;
  MonthArray[11] := 0;
  MonthArray[12] := 0;
  BlankVar       := 0;
  TotalVar       := 0;

  While not NfirsMain.eof do begin
    ProgressForm.ProgressBar1.progress := ProgressForm.ProgressBar1.progress + 1;
    i             := AnyStrToInt(FormatDateTime('MM',GetField(NFIRSMain,'DATETIMEALARM').AsDateTime));
    If i > 0 then
      MonthArray[i] := MonthArray[i] + 1
    else
      BlankVar := BlankVar + 1;

    TotalVar := TotalVar + 1;
    NfirsMain.Skip(1);
  end;
  ProgressForm.Free;
  NFIRSMain.Free;

  MaxValue := 0;
  for i := 1 to 12 do
    MaxValue := imax(MaxValue,MonthArray[i]);

  If MaxValue = 0 then begin
    JanuaryBox.Width   := 0;
    FebuaryBox.Width   := 0;
    MarchBox.Width     := 0;
    AprilBox.Width     := 0;
    MayBox.Width       := 0;
    JuneBox.Width      := 0;
    JulyBox.Width      := 0;
    AugustBox.Width    := 0;
    SeptemberBox.Width := 0;
    OctoberBox.Width   := 0;
    Novemberbox.Width  := 0;
    DecemberBox.Width  := 0;
  end else begin
    JanuaryBox.Width   := round((MonthArray[01] / MaxValue) * 510);
    FebuaryBox.Width   := round((MonthArray[02] / MaxValue) * 510);
    MarchBox.Width     := round((MonthArray[03] / MaxValue) * 510);
    AprilBox.Width     := round((MonthArray[04] / MaxValue) * 510);
    MayBox.Width       := round((MonthArray[05] / MaxValue) * 510);
    JuneBox.Width      := round((MonthArray[06] / MaxValue) * 510);
    JulyBox.Width      := round((MonthArray[07] / MaxValue) * 510);
    AugustBox.Width    := round((MonthArray[08] / MaxValue) * 510);
    SeptemberBox.Width := round((MonthArray[09] / MaxValue) * 510);
    OctoberBox.Width   := round((MonthArray[10] / MaxValue) * 510);
    NovemberBox.Width  := round((MonthArray[11] / MaxValue) * 510);
    DecemberBox.Width  := round((MonthArray[12] / MaxValue) * 510);
  end;

  JanuaryCount.caption   := FormatFloat('#,##0',MonthArray[01]);
  FebuaryCount.caption   := FormatFloat('#,##0',MonthArray[02]);
  MarchCount.caption     := FormatFloat('#,##0',MonthArray[03]);
  AprilCount.caption     := FormatFloat('#,##0',MonthArray[04]);
  MayCount.caption       := FormatFloat('#,##0',MonthArray[05]);
  JuneCount.caption      := FormatFloat('#,##0',MonthArray[06]);
  JulyCount.caption      := FormatFloat('#,##0',MonthArray[07]);
  AugustCount.caption    := FormatFloat('#,##0',MonthArray[08]);
  SeptemberCount.caption := FormatFloat('#,##0',MonthArray[09]);
  OctoberCount.caption   := FormatFloat('#,##0',MonthArray[10]);
  NovemberCount.caption  := FormatFloat('#,##0',MonthArray[11]);
  DecemberCount.caption  := FormatFloat('#,##0',MonthArray[12]);

  BlankField.Caption     := FormatFloat('#,##0',BlankVar);
  TotalField.Caption     := FormatFloat('#,##0',TotalVar);
end;

end.
