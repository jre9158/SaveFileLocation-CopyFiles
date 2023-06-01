unit Target;

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
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AppLst,
  ADODB,
  AlpineLookup,
  Blink,
  Buttons,
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  AdvGroupBox,
  AlpineBase,
  jpeg,
  Gauges,
  AdvObj,
  ipwcore,
  ipwhttp,
  ipwtypes,
  EnJpgGr,
  AdvMemo;

type
  TTargetForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    TargetPanel: TAlpinePanel;
    TargetBrowse: TAlpineTMSStringGrid;
    Label2: TLabel;
    AlpinePanel1: TAlpinePanel;
    StatusBox: TListBox;
    AlpinePanel8: TAlpinePanel;
    Label1: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    FileNameField: TAlpineEdit;
    EndDateField: TAlpineDateTime;
    StartDateField: TAlpineDateTime;
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    NewButton: TAlpineGlowButton;
    PrintButton: TAlpineGlowButton;
    DeleteButton: TAlpineGlowButton;
    FindButton: TAlpineGlowButton;
    AuditButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    LockButton: TAlpineGlowButton;
    ImportButton: TAlpineGlowButton;
    TagButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    LoadButton: TAlpineGlowButton;
    BaseStatusPanel: TPanel;
    SecRecLockLabel: TLabel;
    Gauge: TGauge;
    Label3: TLabel;
    NILosapCATIDField: TAlpineLookup;
    CrossImage: TImage;
    NITrainCATButton: TAlpineGlowButton;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure NILosapCATIDFieldEnter(Sender: TObject);
    procedure NITrainCATButtonClick(Sender: TObject);
    procedure TargetBrowseClick(Sender: TObject);
  private
    { Private declarations }
    procedure TargetHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
    procedure TargetHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string; TextB: TBytes);
    procedure TargetHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
    procedure TargetHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
    procedure TargetHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure TargetHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure TargetHTTPStartTransfer(Sender: TObject; Direction: Integer);
    procedure TargetHTTPEndTransfer(Sender: TObject; Direction: Integer);
    procedure QueryData;
    procedure NITrainCAT1NewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    TotalText : WideString;
    class procedure NewRecord(DataSet: TDataSet);
    procedure LoadTargetBrowse;
  end;

var
  TargetForm  : TTargetForm;

implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     InvServType,
     FormFunc,
     InvSubType,
     InvInspType,
     InvDescr,
     NITrainCAT,
     CommonVar;

{$R *.DFM}

procedure TTargetForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);                                                                                                           
end;

procedure TTargetForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TTargetForm.FormShow(Sender: TObject);
begin                                                       
  inherited;
  FileNameField.Text      := 'Target.Csv';
  StartDateField.Value    := Now - 10;
  EndDateField  .Value    := Now;
  NILosapCATIDField.Value := SQLLookUp(mFireID,'FDID','PERSSET','TARGETNILOSAPCATID'); 
end;

class procedure TTargetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TTargetForm.NILosapCATIDFieldEnter(Sender: TObject);
begin
  NILosapCATIDField.SQLExpr := 'SELECT * FROM NILOSAPCAT WHERE ' + GetFdidSQL('NILOSAPCAT.FDID') + ' ORDER BY CODE';
end;

procedure TTargetForm.NITrainCATButtonClick(Sender: TObject);
Var NITrainCAT1ID : String;
begin
  If BooleanMessageDlg('Add Training Course ' + TargetBrowse.GetValue('COURSECODE') + '?') then begin
    Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE DESCR = ' + AddExpr(TargetBrowse.GetValue('COURSEDESCR')));
    If Not A('NITRAINCAT1').RecordsExist then begin
      GetTable('NITRAINCAT1').Append;
      GetField('NITRAINCAT1','CODE').AsString  := TargetBrowse.GetValue('COURSECODE');
      GetField('NITRAINCAT1','DESCR').AsString := TargetBrowse.GetValue('COURSEDESCR');
      GetTable('NITRAINCAT1').Post;
    end;
    NITrainCAT1ID := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
    CloseApollo('NITRAINCAT1');
    NITrainCATForm := TNITrainCATForm.Create(application,'NITRAINCAT1',NITrainCAT1ID,NITrainCAT1NewRecord);
    NITrainCATForm.ShowModal;
    NITrainCATForm.Free;
  end;
end;

procedure TTargetForm.NITrainCAT1NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TTargetForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to TargetBrowse.RowCount do begin
    TargetBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure TTargetForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to TargetBrowse.RowCount do begin
    TargetBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure TTargetForm.LoadButtonClick(Sender: TObject);
Var CheckValue : Boolean;
    RowNum     : Integer;
    TargetID   : String;
    PersCode   : String;
    CourseCode : String;
    Length     : Integer;
begin
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');

  Gauge.MaxValue := TargetBrowse.RowCount;
  Gauge.Progress := 0;
  for RowNum := 1 to TargetBrowse.RowCount do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    TargetBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then begin

      TargetID   := TargetBrowse.GetValue('TARGETID',RowNum);
      PersCode   := TargetBrowse.GetValue('PERSCODE',RowNum);
      CourseCode := TargetBrowse.GetValue('COURSECODE',RowNum);

      A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE TARGETID = ' + pkValue(TargetID));
      If A('NIEVATT').RecordsExist then
        GetTable('NIEVATT').Edit
      else
        GetTable('NIEVATT').Append;
      GetField('NIEVATT','TARGETID').AsString       := TargetID;
      GetField('NIEVATT','DATETIMEATTEND').AsString := TargetBrowse.GetValue('DATETIMEATTEND',RowNum);
      GetField('NIEVATT','DATETIMEEXP').AsString    := TargetBrowse.GetValue('DATEDUE',RowNum);
      GetField('NIEVATT','DATETIMESTART').AsString  := TargetBrowse.GetValue('DATETIMEATTEND',RowNum) + TargetBrowse.GetValue('TIMEATEND',RowNum);

      If A('PERS').ExactQueryLocate('PERSCODE',PersCode) then
        GetField('NIEVATT','PERSID').AsString := GetField('PERS','PERSID').AsString;

      A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + AddExpr(CourseCode));
      If Not A('NITRAINCAT1').RecordsExist then begin
        GetTable('NITRAINCAT1').Append;
        GetField('NITRAINCAT1','CODE').AsString   := TargetBrowse.GetValue('COURSECODE',RowNum);
        GetField('NITRAINCAT1','DESCR').AsString  := TargetBrowse.GetValue('COURSEDESCR',RowNum);
        GetField('NITRAINCAT1','ACTIVE').AsString := 'Y';
        GetTable('NITRAINCAT1').Post;
      end;
      GetField('NIEVATT','DESCR').AsString          := TargetBrowse.GetValue('COURSEDESCR',RowNum);
      GetField('NIEVATT','NITRAINCAT1ID').AsString  := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
      GetField('NIEVATT','EVLENGTH').AsString       := TargetBrowse.GetValue('EVLENGTH',RowNum);
      GetField('NIEVATT','INSTRUCTOR').AsString     := TargetBrowse.GetValue('INSTRUCTOR',RowNum);
      GetField('NIEVATT','LOCATION').AsString       := TargetBrowse.GetValue('LOCATION',RowNum);
      GetField('NIEVATT','LOCATION').AsString       := TargetBrowse.GetValue('LOCATION',RowNum);
      GetField('NIEVATT','TESTSCORE').AsString      := TargetBrowse.GetValue('SCORE',RowNum);
      If Not (NILosapCATIDField.Value = '') then
        GetField('NIEVATT','NILOSAPCATID').AsString    := NILosapCATIDField.Value;

      If mFireID = '10700' then begin
        GetField('NIEVATT','POINT').AsFloat            := AnyStrToFloat(TargetBrowse.GetValue('EVLENGTH',RowNum)) * 2/3;
        GetField('NIEVATT','NILOSAPCATID').AsString    := '8';
        GetField('NIEVATT','PERSPOINTTYPEID').AsString := '15';
      end;
      If mFireID = '60059' then begin
        GetField('NIEVATT','NILOSAPCATID').AsString    := '5';
      end;
      If mFireID = '60005' then begin
        GetField('NIEVATT','NILOSAPCATID').AsString    := '2';
      end;
      GetTable('NIEVATT').Post;
    end;
  end;
  Gauge.Progress := 0;

  CloseApollo('NITRAINCAT1');
  CloseApollo('NIEVATT');
  CloseApollo('PERS');
end;

procedure TTargetForm.LoadTargetBrowse;
Var FileName     : String;
    TrainingList : TStringList;
    TxtFile      : TextFile;
    LineString   : String;
    RowNum       : Integer;
    CourseDescr  : String;
begin
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');

  TargetBrowse.Clear;
  TargetBrowse.ColCount := 0;
  TargetBrowse.RowCount := 0;
  TargetBrowse.ClearColumns;

  TargetBrowse.FixedRowAlways := true;
  TargetBrowse.RowCount       := TargetBrowse.FixedRows;

  TargetBrowse.SetColumn('SPACE',         '',                  001);
  TargetBrowse.SetColumn('CHECKBOX',      '',                  020);
  TargetBrowse.SetColumn('PERSCODE',      'ID',                035);
  TargetBrowse.SetColumn('EMAIL',         'Email Address',     080);
  TargetBrowse.SetColumn('COURSECODE',    'Course ID',         055);
  TargetBrowse.SetColumn('COURSEDESCR',   'Course Name',       240);
  TargetBrowse.SetColumn('REDNMXDESCR',   'RedNMX Course Name',240);
  TargetBrowse.SetColumn('DATETIMEATTEND','Date Attend',       080);
  TargetBrowse.SetColumn('TIMEATEND',     'Time Attend',       001);
  TargetBrowse.SetColumn('DATEASSIGNED',  'Assigned',          080);
  TargetBrowse.SetColumn('DATEDUE',       'Due',               080);
  TargetBrowse.SetColumn('TARGETID',      'ID',                060);
  TargetBrowse.SetColumn('SCORE',         'Score',             060);
  TargetBrowse.SetColumn('TIMESPENT',     'Time',              040);
  TargetBrowse.SetColumn('ATTEMPTS',      'Att',               030);
  TargetBrowse.SetColumn('ASSIGNED',      'Assigned By',       060);
  TargetBrowse.SetColumn('TAGS',          'Tags',              130);
  TargetBrowse.SetColumn('TYPE',          'Type',              175);
  TargetBrowse.SetColumn('EVLENGTH',      'Lgth',              040);
  TargetBrowse.SetColumn('INSTRUCTOR',    'Instructor',        080);
  TargetBrowse.SetColumn('LOCATION',      'Location',          080);

  TargetBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  TrainingList := TStringList.Create;
  FileName     := FileNameField.Text;
  RowNum       := 1;

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    ParseBasedOnDelimiter(LineString,'","',TrainingList);
    If Not (alltrim(TrainingList[0]) = '') then begin
      Try
    
      CourseDescr := substr(TrainingList[02],1,Length(TrainingList[02]));
      TargetBrowse.SetValue('SPACE',         '');
      TargetBrowse.AddCheckBox(1,RowNum,false,false);
      TargetBrowse.SetValue('PERSCODE',      substr(TrainingList[00],2,Length(TrainingList[00])));
      TargetBrowse.SetValue('EMAIL',         substr(TrainingList[01],1,Length(TrainingList[01])));
      TargetBrowse.SetValue('COURSECODE',    substr(TrainingList[13],1,Length(TrainingList[13])));
      TargetBrowse.SetValue('COURSEDESCR',   CourseDescr);

      If A('NITRAINCAT1').ExactQueryLocate('DESCR',CourseDescr) or A('NITRAINCAT1').ExactQueryLocate('ONLINEALIAS',CourseDescr) then
        TargetBrowse.SetValue('REDNMXDESCR',   tdbfield('NITRAINCAT1','DESCR'))
      else
        TargetBrowse.SetValue('REDNMXDESCR',   '   --- Course not found in course list.  Add it. ---');

      TargetBrowse.SetValue('DATETIMEATTEND',substr(TrainingList[07],1,Length(TrainingList[07])));
      TargetBrowse.SetValue('TIMEATTEND',    substr(TrainingList[04],1,Length(TrainingList[04])));
      TargetBrowse.SetValue('DATEASSIGNED',  substr(TrainingList[05],1,Length(TrainingList[05])));
      TargetBrowse.SetValue('DATEDUE',       substr(TrainingList[06],1,Length(TrainingList[06])));
      TargetBrowse.SetValue('TARGETID',      substr(TrainingList[14],1,Length(TrainingList[14])));
      TargetBrowse.SetValue('SCORE',         substr(TrainingList[10],1,Length(TrainingList[10])));
      TargetBrowse.SetValue('TIMESPENT',     substr(TrainingList[09],1,Length(TrainingList[09])));
      TargetBrowse.SetValue('ATTEMPTS',      substr(TrainingList[11],1,Length(TrainingList[11])));
      TargetBrowse.SetValue('ASSIGNED',      substr(TrainingList[05],1,Length(TrainingList[05])));
      TargetBrowse.SetValue('TAGS',          substr(TrainingList[12],1,Length(TrainingList[12])));
      TargetBrowse.SetValue('TYPE',          substr(TrainingList[03],1,Length(TrainingList[03])));
      TargetBrowse.SetValue('EVLENGTH',      substr(TrainingList[16],1,Length(TrainingList[16])));
      TargetBrowse.SetValue('INSTRUCTOR',    substr(TrainingList[17],1,Length(TrainingList[17])));
      TargetBrowse.SetValue('LOCATION',      substr(TrainingList[18],1,Length(TrainingList[18])-1));
      except
      end;  
      RowNum := RowNum + 1;
    end;
  end;
  CloseFile(TxtFile);
  CloseApollo('NITRAINCAT1');
end;

procedure TTargetForm.ImportButtonClick(Sender: TObject);
begin
  inherited;
  QueryData;
  If FileExists(FileNameField.Text) then
    LoadTargetBrowse
  else
    ShowMessage('Training test file cannot be found');
end;

procedure TTargetForm.QueryData;
var URL          : string;
    TargetHTTP   : TipwHTTP; //TipsHTTPS;
    TargetKey    : String;
    TargetSecret : String;
begin
  Open_Query('PERSSET',false,'SELECT TARGETKEY, TARGETSECRET FROM PERSSET WHERE FDID = ' + AddExpr(mFireID));
  TargetKey    := tdbfield('PERSSET','TARGETKEY');
  TargetSecret := tdbfield('PERSSET','TARGETSECRET');
  CloseApollo('PERSSET');
  try
    TotalText                      := '';
    TargetHTTP                     := TipwHTTP.Create(nil);
    TargetHTTP.OnStatus            := TargetHTTPStatus;
    TargetHTTP.OnTransfer          := TargetHTTPTransfer;
    TargetHTTP.OnError             := TargetHTTPError;
    TargetHTTP.OnConnectionStatus  := TargetHTTPConnectionStatus;
    TargetHTTP.OnDisconnected      := TargetHTTPDisconnected;
    TargetHTTP.OnConnected         := TargetHTTPConnected;
    TargetHTTP.OnStartTransfer     := TargetHTTPStartTransfer;
    TargetHTTP.OnEndTransfer       := TargetHTTPEndTransfer;
    try
     TargetHTTP.Config('SSLEnabledProtocols=12288');   // TLS 1.3 enabled
     URL := 'https://app.targetsolutions.com/tsapp/api/?action=reports.buildReport&reportType=completionsall&key=' + TargetKey + '&secret=' + TargetSecret;
//   URL := 'https://app.targetsolutions.com/tsapp/api/?action=reports.buildReport&reportType=completionsall&key=8E8FDF049F50BD44D8D026FAD2AD65&secret=5208FC0541877D8';  // Loudon
//   URL := 'https://app.targetsolutions.com/tsapp/api/?action=reports.buildReport&reportType=completionsall&key=A3522FF42505769C2BFED04C077AEB&secret=A3C14BD4A84C17F';  // Kannapolis
     URL := URL + '&startDate=' + FormatDateTime('mm-dd-yyyy',StartDateField.DateTimeVar) + '&endDate=' + FormatDateTime('mm-dd-yyyy',EndDateField.DateTimeVar);

     TargetHTTP.Get(URL);

     AddStatusListBox(StatusBox,'HTTP GET SENT..');
   except
     on e: exception do begin
       AppendToLog(TargetHTTP.HTTPMethod);
       AddStatusListBox(StatusBox,'HTTP ERROR: ' + e.Message);
      end;
    end;
  finally
    TargetHTTP.Free;
  end;
  StringToFile('TARGET.CSV',TotalText);
end;

procedure TTargetForm.TargetBrowseClick(Sender: TObject);
begin
  NITrainCATButton.caption := 'Add Course ' + TargetBrowse.GetValue('COURSECODE');
end;

procedure TTargetForm.TargetHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' CONNTD ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TTargetForm.TargetHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' COSTAT ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TTargetForm.TargetHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' DSCONN ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TTargetForm.TargetHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' ERROR# ' + IntToStr(ErrorCode) + ' ' + Description);
end;

procedure TTargetForm.TargetHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' STATUS ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TTargetForm.TargetHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string; TextB: TBytes);
begin
  If Direction = 1 then begin
    TotalText := TotalText + Text;
  end;
end;

procedure TTargetForm.TargetHTTPStartTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response START');
  end;
end;

procedure TTargetForm.TargetHTTPEndTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response END');
  end;
end;

end.
