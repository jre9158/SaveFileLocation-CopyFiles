unit SchdHistRecurrence;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  NormalBase,
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineBase,
  Gauges,
  AlpineDateTime,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  HtmlBtns,
  AlpineCheck, PlannerCal;

type
  TSchdHistRecurrenceForm = class(TAlpineBaseForm)
    BottomPanel: TAdvPanel;
    Gauge: TGauge;
    CloseButton: TAlpineGlowButton;
    CreateShiftHistButton: TAlpineGlowButton;
    OvcController1: TOvcController;
    AdvPanel3: TAdvPanel;
    SchdHistBrowse: TAlpineTMSStringGrid;
    CreateEvents: TAlpineGlowButton;
    Panel1: TPanel;
    Panel2: TPanel;
    AdvPanel1: TAdvPanel;
    DailyCheck: TRadioButton;
    WeekCheck: TRadioButton;
    MonthCheck: TRadioButton;
    YearCheck: TRadioButton;
    AdvPanel2: TAdvPanel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    DateStartField: TAlpineDateTime;
    DateEndField: TAlpineDateTime;
    ShiftLengthField: TAlpineEdit;
    TimeStartField: TAlpineEdit;
    Panel3: TPanel;
    DailyPanel: TAdvPanel;
    WeekPanel: TAdvPanel;
    Label8: TLabel;
    Panel4: TPanel;
    Label16: TLabel;
    TimeEndField: TAlpineEdit;
    Label1: TLabel;
    Label6: TLabel;
    DayField: TAlpineEdit;
    SunCheck: TCheckBox;
    MonCheck: TCheckBox;
    TueCheck: TCheckBox;
    WedCheck: TCheckBox;
    ThuCheck: TCheckBox;
    FriCheck: TCheckBox;
    SatCheck: TCheckBox;
    Panel6: TPanel;
    Panel7: TPanel;
    MonthPanel: TAdvPanel;
    Label4: TLabel;
    Label2: TLabel;
    Month1Check: TRadioButton;
    Month2Check: TRadioButton;
    MonthDayField: TAlpineEdit;
    MonthWeekField: TComboBox;
    MonthDOWField: TComboBox;
    YearPanel: TAdvPanel;
    EndByCountLabel: TLabel;
    EndByCountCheck: TRadioButton;
    EndByDateCheck: TRadioButton;
    YearOccuranceField: TAlpineEdit;
    AdvPanel4: TAdvPanel;
    Panel5: TPanel;
    SchdHistCalendar: TPlannerCalendar;
    procedure CloseButtonClick(Sender: TObject);
    procedure CreateShiftHistButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CreateEventsClick(Sender: TObject);
    procedure DailyCheckClick(Sender: TObject);
    procedure SchdHistBrowseClick(Sender: TObject);
    procedure DateEndFieldChange(Sender: TObject);
  private
    { Private declarations }
    function GetRecurrenceDate(Month,Year,WeekNum,DowNum: Integer): TDateTime;
  public
    { Public declarations }
    SchdHistID : String;
    PersName   : String;
    constructor Create(AOwner: TComponent; VSchdHistID : String);
    procedure ResetSchdHistBrowse;
  end;

var
  SchdHistRecurrenceForm: TSchdHistRecurrenceForm;

implementation
uses GenFunc,
     FormFunc,
     CommonFunc,
     CommonVar,
     AlpineBaseSummaryReport;

{$R *.DFM}

constructor TSchdHistRecurrenceForm.Create(AOwner: TComponent; VSchdHistID : String);
begin
  SchdHistID := VSchdHistID;
  inherited Create (AOwner);
end;

procedure TSchdHistRecurrenceForm.FormCreate(Sender: TObject);
begin
  Open_Query('SCHDHIST',false,'SELECT * FROM VWSCHDHIST WHERE SCHDHISTID = ' + SchdHistID);
  DateStartField.Value      := Now + 1;
  TimeStartField.Value      := FormatDateTime('HH:NN',GetField('SCHDHIST','DATETIMESTART').AsDateTime);
  TimeEndField.Value        := FormatDateTime('HH:NN',GetField('SCHDHIST','DATETIMEEND').AsDateTime);
  ShiftLengthField.Value    := FormatFloat('##.00',GetField('SCHDHIST','SHIFTLENGTH').AsFloat);
  PersName                  := tdbfield('SCHDHIST','LNAME') + ', ' + tdbfield('SCHDHIST','FNAME');
  CloseApollo('SCHDHIST');

  DateEndField.Value        := StrToDate('12/31/'+GetYear(Date));
  EndByDateCheck.Caption    := 'End by ' + FormatDateTime('MM/DD/YYYY',DateEndField.Value);
  DayField.Text             := '1';
  MonthDayField.Text        := '1';
  ResetSchdHistBrowse;
  CreateEvents.Enabled      := False;
  SchdHistCalendar.Date     := Now;
  DailyCheckClick(self);
end;

procedure TSchdHistRecurrenceForm.ResetSchdHistBrowse;
begin
  SchdHistBrowse.Clear;
  SchdHistBrowse.ClearColumns;
  SchdHistBrowse.ColCount                             := 0;
  SchdHistBrowse.RowCount                             := 0;
  SchdHistBrowse.FixedRowAlways                       := true;
  SchdHistBrowse.RowCount                             := SchdHistBrowse.FixedRows;
  SchdHistBrowse.ControlLook.NoDisabledCheckRadioLook := True;

  SchdHistBrowse.SetColumn('ID',           'Event',          060);
  SchdHistBrowse.SetColumn('CHECKBOX',     'Process',        060);
  SchdHistBrowse.SetColumn('PERSNAME',     'Staff Name',     170);
  SchdHistBrowse.SetColumn('DATETIMESTART','Start Date Time',110);
  SchdHistBrowse.SetColumn('DATETIMEEND',  'End Date Time',  110);
  SchdHistBrowse.SetColumn('SHIFTLENGTH',  'Length',         060);
  SchdHistBrowse.SetColumn('DAYOFWEEK',    'Day of Week',    460);
end;


procedure TSchdHistRecurrenceForm.SchdHistBrowseClick(Sender: TObject);
begin
  try
    SchdHistCalendar.Date := StrToDate(substr(SchdHistBrowse.GetValue('DATETIMESTART'),1,10));
  except
  end;  
end;

procedure TSchdHistRecurrenceForm.CreateShiftHistButtonClick(Sender: TObject);
Var CurrentDate       : TDateTime;
    CurrentMonth      : Integer;
    CurrentYear       : Integer;
    YearCount         : Integer;
    RowNum            : Integer;
    DateTimeStart     : TDateTime;
    DateTimeEnd       : TDateTime;

  procedure LoadSchdHistBrowse;
  Var ShiftLength : Real;
  begin
    If (DateTimeStart <= DateEndField.Value) then begin
      SchdHistBrowse.SetValue('ID',           IntToStr(RowNum));
      SchdHistBrowse.AddCheckBox(1,SchdHistBrowse.RowCount-1,true,false);
      SchdHistBrowse.SetValue('PERSNAME',     PersName);
      SchdHistBrowse.SetValue('DATETIMESTART',FormatDateTime('MM/DD/YYYY HH:NN',DateTimeStart));
      SchdHistBrowse.SetValue('DATETIMEEND',  FormatDateTime('MM/DD/YYYY HH:NN',DateTimeEnd));
      SchdHistBrowse.SetValue('SHIFTLENGTH',  ShiftLengthField.Value );
      SchdHistBrowse.SetValue('DAYOFWEEK',    CharacterDayOfWeek(DateTimeStart) );
      RowNum := RowNum + 1;
    end;
  end;
begin
  ResetSchdHistBrowse;
  RowNum := 1;
  If DailyCheck.Checked then begin
    CurrentDate := DateStartField.Value;
    While CurrentDate <= DateEndField.Value do begin
      DateTimeStart := CurrentDate + GetRealTime(TimeStartField.Value);
      DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;
      LoadSchdHistBrowse;
      CurrentDate   := CurrentDate + AnyStrToInt(DayField.Text);
    end;
  end;

  If WeekCheck.Checked then begin
    CurrentDate := DateStartField.Value;
    While true do begin
      If CurrentDate > DateEndField.Value then
        break;

      If ((DayOfWeek(CurrentDate) = 1) and SunCheck.Checked) or ((DayOfWeek(CurrentDate) = 2) and MonCheck.Checked) or ((DayOfWeek(CurrentDate) = 3) and TueCheck.Checked) or
         ((DayOfWeek(CurrentDate) = 4) and WedCheck.Checked) or ((DayOfWeek(CurrentDate) = 5) and ThuCheck.Checked) or ((DayOfWeek(CurrentDate) = 6) and FriCheck.Checked) or
         ((DayOfWeek(CurrentDate) = 7) and SatCheck.Checked) then begin

        DateTimeStart := CurrentDate + GetRealTime(TimeStartField.Value);
        DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;
        LoadSchdHistBrowse;
      end;

      CurrentDate := CurrentDate + 1;
    end;

  end else if MonthCheck.Checked and Month1Check.Checked then begin
    CurrentMonth := StrToInt(FormatDateTime('MM',DateStartField.Value));
    CurrentYear  := StrToInt(FormatDateTime('YYYY',DateStartField.Value));
    CurrentDate  := 0;

    While (CurrentDate <= DateEndField.Value) do begin
      CurrentDate   := StrToDate(IntToStr(CurrentMonth) + '/' + MonthDayField.value + '/' + IntToStr(CurrentYear));
      DateTimeStart := CurrentDate + GetRealTime(TimeStartField.Value);
      DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;
      LoadSchdHistBrowse;

      If (CurrentMonth = 12) then begin
        CurrentYear  := CurrentYear + 1;
        CurrentMonth := 1;
      end else
        CurrentMonth := CurrentMonth + 1;
    end;

  end else if MonthCheck.Checked and Month2Check.Checked then begin
    CurrentMonth := StrToInt(FormatDateTime('MM',DateStartField.Value));
    CurrentYear  := StrToInt(FormatDateTime('YYYY',DateStartField.Value));
    CurrentDate  := 0;

    While (CurrentDate <= DateEndField.Value) do begin
      CurrentDate   := StrToDate(IntToStr(CurrentMonth) + '/01/' + IntToStr(CurrentYear));
      DateTimeStart := GetRecurrenceDate(CurrentMonth,CurrentYear,MonthWeekField.ItemIndex + 1,MonthDOWField.ItemIndex + 1);

      DateTimeStart := DateTimeStart + GetRealTime(TimeStartField.Value);
      DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;
      LoadSchdHistBrowse;

      If CurrentMonth = 12 then begin
        CurrentYear  := CurrentYear + 1;
        CurrentMonth := 1;
      end else
        CurrentMonth := CurrentMonth + 1;
    end;
  end else if YearCheck.Checked  and EndByDateCheck.Checked then begin
    CurrentYear  := StrToInt(FormatDateTime('YYYY',DateStartField.Value)) + 1;

    While (CurrentYear <= StrToInt(FormatDateTime('YYYY',DateEndField.Value))) do begin
      CurrentDate   := StrToDate(FormatDateTime('MM/DD',DateStartField.Value) + '/' + IntToStr(CurrentYear));
      DateTimeStart := CurrentDate + GetRealTime(TimeStartField.Value);
      DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;

      LoadSchdHistBrowse;
      CurrentYear   := CurrentYear + 1;
    end;

  end else if YearCheck.Checked  and EndByCountCheck.Checked then begin
    CurrentYear  := StrToInt(FormatDateTime('YYYY',DateStartField.Value)) + 1;
    YearCount    := 1;

    While (YearCount <= StrToInt(YearOccuranceField.value)) do begin
      CurrentDate   := StrToDate(FormatDateTime('MM/DD',DateStartField.Value) + '/' + IntToStr(YearCount + StrToInt(FormatDateTime('YYYY',DateStartField.Value))));
      DateTimeStart := CurrentDate + GetRealTime(TimeStartField.Value);
      DateTimeEnd   := DateTimeStart + AnyStrToFloat(ShiftLengthField.Value)/24;

      LoadSchdHistBrowse;
      YearCount := YearCount + 1;
    end;
  end;

  CreateEvents.Enabled := SchdHistBrowse.RowCount > SchdHistBrowse.FixedRows;
  SchdHistBrowseClick(self);
end;

procedure TSchdHistRecurrenceForm.DailyCheckClick(Sender: TObject);
begin
  DayField          .Enabled := DailyCheck.Checked;
  Month1Check       .Enabled := MonthCheck.Checked;
  Month2Check       .Enabled := MonthCheck.Checked;
  MonthDayField     .Enabled := MonthCheck.Checked;
  MonthWeekField    .Enabled := MonthCheck.Checked;
  MonthWeekField    .color   := IIfI(MonthCheck.Checked,clwhite,clsilver);
  MonthDOWField     .Enabled := MonthCheck.Checked;
  MonthDOWField     .color   := IIfI(MonthCheck.Checked,clwhite,clsilver);
  SunCheck          .Enabled := WeekCheck.Checked;
  MonCheck          .Enabled := WeekCheck.Checked;
  TueCheck          .Enabled := WeekCheck.Checked;
  WedCheck          .Enabled := WeekCheck.Checked;
  ThuCheck          .Enabled := WeekCheck.Checked;
  FriCheck          .Enabled := WeekCheck.Checked;
  SatCheck          .Enabled := WeekCheck.Checked;
  EndByCountCheck   .Enabled := YearCheck.Checked;
  EndByDateCheck    .Enabled := YearCheck.Checked;
  YearOccuranceField.Enabled := YearCheck.Checked;
end;

procedure TSchdHistRecurrenceForm.DateEndFieldChange(Sender: TObject);
begin
  EndByDateCheck.Caption    := 'End by ' + FormatDateTime('MM/DD/YYYY',DateEndField.Value);
end;

procedure TSchdHistRecurrenceForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

function TSchdHistRecurrenceForm.GetRecurrenceDate(Month,Year,WeekNum,DowNum: Integer): TDateTime;
var idow   : Integer;
    iweek  : Integer;
    iCount : Integer;
begin
  Result := Date;
  if (WeekNum <=0) or (WeekNum>5) or (DowNum<=0) or (DowNum>=8) then begin
    appendtolog('Error in GetRecurrenceDate - Bad Parameters');
    exit;
  end;

  Result := strtodate(inttostr(month)+'/01/'+inttostr(Year));
  iCount := 0;
  iWeek  := 0;
  while true do begin
    If (Month <> StrToInt(FormatDateTime('MM',Result))) then begin
      Result := 0;
      exit;
    end;

    If DayOfWeek(Result)=DowNum then begin
      iWeek := iWeek + 1;
      If iWeek = WeekNum then
        exit;
    end;
    result := result + 1;

    If iCount = 33 then begin
      appendtolog('Error - should not go more than 31 days in GetRecurrentDate');
      exit;
    end;
  end;
end;

procedure TSchdHistRecurrenceForm.CreateEventsClick(Sender: TObject);
Var RowCnt     : Integer;
    RowNum     : Integer;
    CheckValue : Boolean;
    i          : Integer;
    FieldName  : String;
begin
  Gauge.Progress := Gauge.Progress + 1;
  RowCnt         := SchdHistBrowse.RowCount-1;
  Gauge.MaxValue := SchdHistBrowse.RowCount-1;
  Gauge.Progress := 0;
  If BooleanMessageDlg('Generate all checked off shifts listed?') then begin
    Open_Query('GETSCHDHIST',false,'SELECT * FROM SCHDHIST WHERE SCHDHISTID = ' + SchdHistID);
    Open_Query('SCHDHIST',true,'SELECT * FROM SCHDHIST WHERE 1=2');
    For RowNum := 1 to RowCnt do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      SchdHistBrowse.GetCheckBoxState(1,RowNum,CheckValue);
      If CheckValue then begin
        A('SCHDHIST').Append;
        for i:= 0 to GetTable('GETSCHDHIST').Fields.Count-1 do begin
          FieldName := GetTable('GETSCHDHIST').Fields[i].FieldName;
          If uppercase(FieldName) <> 'SCHDHISTID' then begin
            try
              GetField('SCHDHIST',FieldName).AsString := GetField('GETSCHDHIST',FieldName).AsString;
            except
            end;
          end;
        end;
        GetField('SCHDHIST','DATETIMESTART').AsString   := SchdHistBrowse.GetValue('DATETIMESTART',RowNum);
        GetField('SCHDHIST','DATETIMEEND').AsString     := SchdHistBrowse.GetValue('DATETIMEEND',RowNum);
        If GetField('SCHDHIST','DATETIMEEND').AsDateTime < GetField('SCHDHIST','DATETIMESTART').AsDateTime then
          GetField('SCHDHIST','DATETIMEEND').AsDateTime := GetField('SCHDHIST','DATETIMEEND').AsDateTime + 1;
        GetTable('SCHDHIST').Post;
      end;
    end;
    CloseApollo('GETSCHDHIST');
    CloseApollo('SCHDHIST');
    close;
  end;
end;
    
end.
