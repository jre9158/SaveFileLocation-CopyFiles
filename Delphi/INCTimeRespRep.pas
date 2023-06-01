unit INCTimeRespRep;

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
  Db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TINCTimeRespRepForm = class(TAlpineBaseSummaryReportForm)
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel1: TQRLabel;
    SummaryBand: TQRBand;
    QRShape12: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel29: TQRLabel;
    TotalField: TQRLabel;
    TotalPercentField: TQRLabel;
    CumTotalPercentField: TQRLabel;
    TimeBand: TQRSubDetail;
    TimeLabel: TQRLabel;
    GraphField: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    SubTotalField: TQRLabel;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    PercentField: TQRLabel;
    CumPercentField: TQRLabel;
    QRShape2: TQRShape;
    QRShape6: TQRShape;
    ChildBand1: TQRChildBand;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape5: TQRShape;
    QRLabel9: TQRLabel;
    QRShape7: TQRShape;
    QRLabel10: TQRLabel;
    GraphLabel: TQRLabel;
    QRShape14: TQRShape;
    QRLabel21: TQRLabel;
    QRShape18: TQRShape;
    QRShape41: TQRShape;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    QRLabel2: TQRLabel;
    TitleField: TQRLabel;
    QRShape8: TQRShape;
    QRShape13: TQRShape;
    QRLabel3: TQRLabel;
    AverageField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure TimeBandNeedData(Sender: TObject; var MoreData: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    function CheckInTime(TimeVar: TDateTime): Boolean;
  public
    { Public declarations }
    ArrayRow     : Integer;
    TimeArray    : array[1..50] of Real;
    TotalVar     : Real;
    TotalPercent : Real;
    TotalTimeSecondsVar,TotalTimeVar : Real;

    StartField   : String;
    StartLabel   : String;
    EndField     : String;
    EndLabel     : String;
    MaxCount     : Real;
    Multiplier   : Real;
    StartTime    : String;
    EndTime      : String;
    procedure GetStartField;
    procedure GetEndField;
  end;

{$I rednmx.inc}

var
  INCTimeRespRepForm: TINCTimeRespRepForm;

implementation
uses GenFunc,
     INCCond,
     CommonFunc,
     FormFunc,
     CommonVar,
     SysRepMan;

{$R *.DFM}

procedure TINCTimeRespRepForm.FormCreate(Sender: TObject);
var Form     : TForm;
    TimeDiff,TimeDiffSeconds : Real;
    TimeRow  : Integer;
    TimeVar  : Integer;
    Script   : String;
    ResponseClause : String;
    JoinClause     : String;
begin
  FireDeptField.Caption := mFireDept;

  TIncCondForm.PrintTitles(TitleBand);

  Form                  := GetFormOfType(TINCCondForm);
  StartTime             := TIncCondForm(Form).StartTimeField.Text;
  EndTime               := TIncCondForm(Form).EndTimeField.Text;

  GetStartField;
  GetEndField;
  TitleField.Caption    := 'Based on ' + StartLabel + ' to ' + EndLabel;

  ArrayRow              := 1;
  TotalVar              := 0;
  TotalPercent          := 0;

  For TimeRow := 1 to 50 do begin
    TimeArray[TimeRow] := 0;
  end;

  ResponseClause := ' ';
  JoinClause     := ' ';

  If Not (TINCCondForm(Form).RespUnitNumField.Text = '') then
    ResponseClause := ' AND NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNumField.Text);

  If Not (TINCCondForm(Form).RespUnitNum2Field.Text = '') then
    ResponseClause := ' AND (NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNumField.Text) +
                              ' OR NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNum2Field.Text) + ')';

  If Not (TINCCondForm(Form).RespUnitNum3Field.Text = '') then
    ResponseClause := ' AND (NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNumField.Text) +
                            ' OR NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNum2Field.Text) +
                            ' OR NFIRSAPP.UNITNUM = ' + AddExpr(TINCCondForm(Form).RespUnitNum3Field.Text) + ')';

  If Not (ResponseClause = ' ') then
    JoinClause     := 'LEFT JOIN NFIRSAPP ON (NFIRSAPP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID)';

  If TIncCondForm(Form).DateTimeRec1.Checked then
    Script :=  'SELECT NFIRSMAIN.INCNUM, NFIRSMAIN.NFIRSMAINID, DISPCALL.DATETIMEREC, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEOUT, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMECONT, NFIRSMAIN.DATETIMEIN FROM NFIRSMAIN ' +
               'LEFT JOIN DISPCALL ON (NFIRSMAIN.DISPCALLID = DISPCALL.DISPCALLID) ' +
               JoinClause +
               TINCCondForm(Form).SqlWhereClause + ResponseClause
  else
    Script :=  'SELECT NFIRSMAIN.INCNUM, NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEOUT, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMECONT, NFIRSMAIN.DATETIMEIN FROM NFIRSMAIN ' +
               JoinClause +
               TINCCondForm(Form).SqlWhereClause + ResponseClause;


  TotalTimeSecondsVar := 0;
  TotalTimevar := 0;
  Open_Query('NFIRSMAIN',false,Script);
  While Not A('NFIRSMAIN').Eof do begin
    Try
      If (GetField('NFIRSMAIN',EndField).AsDateTime > 0) and (GetField('NFIRSMAIN',StartField).AsDateTime > 0) and CheckInTime(GetField('NFIRSMAIN',StartField).AsDateTime) then begin
        TimeDiff := (GetField('NFIRSMAIN',EndField).AsDateTime - GetField('NFIRSMAIN',StartField).AsDateTime) * 60 * 24;
        TimeDiffSeconds := (GetField('NFIRSMAIN',EndField).AsDateTime - GetField('NFIRSMAIN',StartField).AsDateTime) * 60 * 24*60;
        TimeVar  := Trunc(TimeDiff) + 1;

        If (TimeVar > 0) and (TimeVar < 51) then begin
          TimeArray[TimeVar] := TimeArray[TimeVar] + 1;
          TotalVar           := TotalVar + 1;
          TotalTimeVar       := TotalTimeVar + TimeDiff;
          TotalTimeSecondsVar:=TotalTimeSecondsVar+TimeDiffSeconds;
        end else begin
          TotalVar           := TotalVar + 1;

        end;
      end;
    except
    end;
    A('NFIRSMAIN').Skip(1);
  end;
  CloseApollo('NFIRSMAIN');

  MaxCount := 0;
  For TimeRow := 1 to 50 do begin
    MaxCount := RMax(TimeArray[TimeRow],MaxCount);
  end;

  If TotalVar > 0 then
    Multiplier := MaxCount / TotalVar;
end;

function TINCTimeRespRepForm.CheckInTime(TimeVar: TDateTime): Boolean;
Var TimeString : String;
    RetVal     : Boolean;
begin
  RetVal     := true;
  TimeString := FormatDateTime('HH:NN',TimeVar);
  If (length(alltrim(StartTime)) = 5) and (length(alltrim(EndTime)) = 5) then begin
    If EndTime < StartTime then
      RetVal := (TimeString >= StartTime) or (TimeString <= EndTime)
    else
      RetVal := (TimeString >= StartTime) and (TimeString <= EndTime);
  end;
  CheckInTime := RetVal;
end;

procedure TINCTimeRespRepForm.TimeBandNeedData(Sender: TObject; var MoreData: Boolean);
begin
  inherited;
  TimeLabel.Caption       := IntToStr(ArrayRow-1) + ':00 - ' + IntToStr(ArrayRow-1) + ':59';
  SubTotalField.Caption   := FormatFloat('#0',TimeArray[ArrayRow]);
  If TotalVar > 0 then begin
    PercentField.Caption    := FormatFloat('##0.00',SayFrac(100 * TimeArray[ArrayRow],TotalVar));
    TotalPercent            := TotalPercent + (SayFrac(100 * TimeArray[ArrayRow],TotalVar));
    GraphField.Width        := Round(  (0.97/Multiplier) * GraphLabel.Width * (SayFrac(TimeArray[ArrayRow],TotalVar))  );
  end;
  CumPercentField.Caption := FormatFloat('##0.00',TotalPercent);

  If ArrayRow < 5 then begin
    TimeLabel      .Font.Color := clgreen;
    SubTotalField  .Font.Color := clgreen;
    PercentField   .Font.Color := clgreen;
    CumPercentField.Font.Color := clgreen;
    GraphField.Brush.Color     := clgreen;

  end else if ArrayRow < 10 then begin
    TimeLabel      .Font.Color := cllime;
    SubTotalField  .Font.Color := cllime;
    PercentField   .Font.Color := cllime;
    CumPercentField.Font.Color := cllime;
    GraphField.Brush.Color     := cllime;

  end else begin
    TimeLabel      .Font.Color := clred;
    SubTotalField  .Font.Color := clred;
    PercentField   .Font.Color := clred;
    CumPercentField.Font.Color := clred;
    GraphField.Brush.Color     := clred;
    
  end;
  
  MoreData                := ArrayRow < 51;
  ArrayRow                := ArrayRow + 1;
end;

procedure TINCTimeRespRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotalField.Caption           := FormatFloat('##,##0',TotalVar);
  AverageField.Caption         := formatdatetime('HH:NN:SS', SayFrac( TotalTimeSecondsVar,TotalVar)/60/60/24);

end;

procedure TINCTimeRespRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  ArrayRow     := 1;
  TotalPercent := 0;
end;

procedure TINCTimeRespRepForm.GetStartField;
var Form     : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  If TIncCondForm(Form).DateTimeRec1.Checked then begin
    StartField := 'DATETIMEREC';
    StartLabel := 'Call Received';
  end else if TIncCondForm(Form).DateTimeAlarm1.Checked then begin
    StartField := 'DATETIMEALARM';
    StartLabel := 'Time of Alarm';
  end else if TIncCondForm(Form).DateTimeOut1.Checked then begin
    StartField := 'DATETIMEOUT';
    StartLabel := 'Time Responding, Enroute';
  end else if TIncCondForm(Form).DateTimeArr1.Checked then begin
    StartField := 'DATETIMEARR';
    StartLabel := 'Time Arrived on Scene';
  end;
end;

procedure TINCTimeRespRepForm.GetEndField;
var Form     : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  If TIncCondForm(Form).DateTimeAlarm2.Checked then begin
    EndField := 'DATETIMEALARM';
    EndLabel := 'Time of Alarm';
  end else if TIncCondForm(Form).DateTimeOut2.Checked then begin
    EndField := 'DATETIMEOUT';
    EndLabel := 'Time Responding, Enroute';
  end else if TIncCondForm(Form).DateTimeArr2.Checked then begin
    EndField := 'DATETIMEARR';
    EndLabel := 'Time Arrived on Scene';
  end else if TIncCondForm(Form).DateTimeIn2.Checked then begin
    EndField := 'DATETIMEIN';
    EndLabel := 'Time Back in Service';
  end;
end;

end. 
