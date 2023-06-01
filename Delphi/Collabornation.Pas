unit Collabornation;

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
  ipwjson,
  ipwhttp,
  EnJpgGr,
  DateUtils,
  AdvMemo;

type
  TCollabornationForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    TargetPanel: TAlpinePanel;
    TargetBrowse: TAlpineTMSStringGrid;
    AlpinePanel1: TAlpinePanel;
    StatusBox: TListBox;
    AlpinePanel8: TAlpinePanel;
    Label7: TLabel;
    Label10: TLabel;
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
    FileNameField: TAlpineEdit;
    CrossImage: TImage;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure TargetHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
    procedure TargetHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string);


    procedure TargetHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
    procedure TargetHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
    procedure TargetHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure TargetHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure TargetHTTPStartTransfer(Sender: TObject; Direction: Integer);
    procedure TargetHTTPEndTransfer(Sender: TObject; Direction: Integer);
    procedure QueryData;


  public
    { Public declarations }
    TotalText : WideString;
    class procedure NewRecord(DataSet: TDataSet);
    procedure LoadTargetBrowse;
  end;

var
  CollabornationForm  : TCollabornationForm;

implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     InvServType,
     FormFunc,
     InvSubType,
     InvInspType,
     InvDescr,
     CommonVar;

{$R *.DFM}

procedure TCollabornationForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);                                                                                                           
end;

procedure TCollabornationForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TCollabornationForm.FormCreate(Sender: TObject);
begin
  inherited;
//WindowState          := wsMaximized;
end;

procedure TCollabornationForm.FormShow(Sender: TObject);
begin
  inherited;
  FileNameField.Text   := 'Collabornation.JSON';
  StartDateField.Value := Now - 10;
  EndDateField  .Value := Now;
end;

class procedure TCollabornationForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TCollabornationForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to TargetBrowse.RowCount do begin
    TargetBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure TCollabornationForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to TargetBrowse.RowCount do begin
    TargetBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure TCollabornationForm.LoadButtonClick(Sender: TObject);
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

      TargetID   := TargetBrowse.GetValue('COURSE',RowNum);
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
      GetField('NIEVATT','DATETIMESTART').AsString  := TargetBrowse.GetValue('DATETIMEATTEND',RowNum);

      If A('PERS').ExactQueryLocate('PERSCODE',PersCode) then
        GetField('NIEVATT','PERSID').AsString := GetField('PERS','PERSID').AsString;

      A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + AddExpr(CourseCode));
      If Not A('NITRAINCAT1').RecordsExist then begin
        GetTable('NITRAINCAT1').Append;
        GetField('NITRAINCAT1','CODE').AsString  := TargetBrowse.GetValue('COURSECODE',RowNum);
        GetField('NITRAINCAT1','DESCR').AsString := TargetBrowse.GetValue('COURSEDESCR',RowNum);
        GetTable('NITRAINCAT1').Post;
      end;
      GetField('NIEVATT','DESCR').AsString          := TargetBrowse.GetValue('COURSEDESCR',RowNum);
      GetField('NIEVATT','NITRAINCAT1ID').AsString  := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;

      GetTable('NIEVATT').Post;
    end;
  end;
  Gauge.Progress := 0;

  CloseApollo('NITRAINCAT1');
  CloseApollo('NIEVATT');
  CloseApollo('PERS');
end;

procedure TCollabornationForm.LoadTargetBrowse;
Var FileName     : String;
    TrainingList : TStringList;
    TxtFile      : TextFile;
    LineString   : String;
    RowNum       : Integer;
begin
  TargetBrowse.Clear;
  TargetBrowse.ColCount := 0;
  TargetBrowse.RowCount := 0;
  TargetBrowse.ClearColumns;

  TargetBrowse.FixedRowAlways := true;
  TargetBrowse.RowCount       := TargetBrowse.FixedRows;

  TargetBrowse.SetColumn('SPACE',         '',              001);
  TargetBrowse.SetColumn('CHECKBOX',      '',              020);
  TargetBrowse.SetColumn('PERSCODE',      'ID',            035);
  TargetBrowse.SetColumn('EMAIL',         'Email Address', 180);
  TargetBrowse.SetColumn('COURSECODE',    'Course ID',     080);
  TargetBrowse.SetColumn('COURSEDESCR',   'Course Name',   240);
  TargetBrowse.SetColumn('REQSCORE',      'Required Score',060);
  TargetBrowse.SetColumn('DATETIMEATTEND','Date Attend',   080);
  TargetBrowse.SetColumn('DATEASSIGNED',  'Assigned',      080);
  TargetBrowse.SetColumn('DATEDUE',       'Due',           080);
  TargetBrowse.SetColumn('TIMESPENT',     'Time',          070);
  TargetBrowse.SetColumn('SCORE',         'Score',         060);
  TargetBrowse.SetColumn('STATUS',        'Status',        120);
  TargetBrowse.SetColumn('COURSE',        'Course Code',   600);

  TargetBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  TrainingList := TStringList.Create;
  FileName     := FileNameField.Text;
  RowNum       := 1;
end;

procedure TCollabornationForm.ImportButtonClick(Sender: TObject);
begin
  inherited;
  LoadTargetBrowse;
  QueryData;
end;

procedure TCollabornationForm.QueryData;
var URL          : string;
    TargetHTTP   : TipwHTTP;
    TargetJson   : TipwJSON;
    TargetKey    : String;
    TargetSecret : String;
    UserCount    : Integer;
    iUsers       : Integer;
    UserID       : String;
    Email        : string;
    ServerResponse: String;
    CourseCount  : Integer;
    iCourses     : Integer;
    Course       : String;
    RowNum       : Integer;
    TimeSpent    : String;
begin
  Open_Query('PERSSET',false,'SELECT TARGETKEY, TARGETSECRET FROM PERSSET WHERE FDID = ' + AddExpr(mFireID));
  TargetKey    := tdbfield('PERSSET','TARGETKEY');
  TargetSecret := tdbfield('PERSSET','TARGETSECRET');
  CloseApollo('PERSSET');
  try
    TotalText                      := '';
    TargetHTTP                     := TipwHTTP.Create(nil);
    TargetJSON                     := TipwJSON.Create(nil);
    TargetHTTP.OnStatus            := TargetHTTPStatus;
    //TargetHTTP.OnTransfer          := TargetHTTPTransfer;
    TargetHTTP.OnError             := TargetHTTPError;
    TargetHTTP.OnConnectionStatus  := TargetHTTPConnectionStatus;
    TargetHTTP.OnDisconnected      := TargetHTTPDisconnected;
    TargetHTTP.OnConnected         := TargetHTTPConnected;
    //TargetHTTP.OnStartTransfer     := TargetHTTPStartTransfer;
    //TargetHTTP.OnEndTransfer       := TargetHTTPEndTransfer;
    TargetHTTP.ContentType         := 'application/json';
    TargetHTTP.User                := 'RedNMX';
    TargetHTTP.Password            := '78A72786B4E92D369F4B2B935CA15DADF9F10AF48AA3E16AEFC283D31D0AAB14';
    try
     TargetHTTP.Config('SSLEnabledProtocols=3072');
     URL := 'https://collabornation.net/lms/api/0.06';
     URL := URL + '/report.json';

     TargetHTTP.Get(URL);
     ServerResponse := alltrim(TargetHTTP.TransferredData);
     ServerResponse := StringReplace(ServerResponse,'\/','/',[rfReplaceAll]);
     StringToFile('Collabornation.json',ServerResponse);

     TargetJSON.InputData := ServerResponse;
     TargetJSON.Parse();

     TargetJSON.XPath := '/json/user/';
     UserCount        := TargetJSON.XChildren.Count;
     
     AppendToLog(IntToStr(UserCount));
     RowNum := 1;
     for iUsers := 1 to UserCount do begin
      UserID := TargetJSON.XChildName[iUsers-1];
      TargetJSON.XPath := '/json/user/'+UserID+'/report/';
      CourseCount := TargetJSON.XChildren.Count;
      for iCourses := 1 to CourseCount do begin
        Course := TargetJSON.XChildName[iCourses-1];
        TargetBrowse.SetValue('SPACE',         '');
        TargetBrowse.AddCheckBox(1,RowNum,false,false);
        TargetBrowse.SetValue('PERSCODE', UserID);
        TargetJSON.XPath := '/json/user/'+UserID+'/email';
        TargetBrowse.SetValue('EMAIL', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/Course/id';
        TargetBrowse.SetValue('COURSECODE', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/Course/title';
        TargetBrowse.SetValue('COURSEDESCR', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/Course/score';
        TargetBrowse.SetValue('REQSCORE', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/finish_date';
        if StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]) <> '0' then
          TargetBrowse.SetValue('DATETIMEATTEND', DateToStr(UnixToDateTime(StrToInt64(StringReplace(TargetJSON.XText,'"','',[rfReplaceAll])))));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/created_date';
        if StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]) <> '0' then
          TargetBrowse.SetValue('DATEASSIGNED', DateToStr(UnixToDateTime(StrToInt64(StringReplace(TargetJSON.XText,'"','',[rfReplaceAll])))));

        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/Course/expiration';
        if StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]) <> 'null' then
          TargetBrowse.SetValue('DATEDUE', DateToStr(UnixToDateTime(StrToInt64(StringReplace(TargetJSON.XText,'"','',[rfReplaceAll])))))
        else
          TargetBrowse.SetValue('DATEDUE', '');
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/time';
        TimeSpent        := StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]);
        TimeSpent        := substr(TimeSpent,6,5);
        
        TargetBrowse.SetValue('TIMESPENT',TimeSpent);
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/score';
        if StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]) <> 'null' then
          TargetBrowse.SetValue('SCORE', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]))
        else
          TargetBrowse.SetValue('SCORE', '');
        TargetJSON.XPath := '/json/user/'+UserID+'/report/'+Course+'/status';
        TargetBrowse.SetValue('STATUS', StringReplace(TargetJSON.XText,'"','',[rfReplaceAll]));
        TargetBrowse.SetValue('COURSE', StringReplace(Course,'"','',[rfReplaceAll]));
        TargetJSON.XPath := '/json/user/'+UserID+'/report/';
        RowNum := RowNum + 1;
      end;
      TargetJSON.XPath := '/json/user/';

     end;
       



     AddStatusListBox(StatusBox,'HTTP GET SENT..');
   except
     on e: exception do begin
       AppendToLog(TargetHTTP.HTTPMethod);
       AppendToLog(e.Message);

       AddStatusListBox(StatusBox,'HTTP ERROR: ' + e.Message);
      end;
    end;
  finally
    TargetHTTP.Free;
    TargetJSON.Free;
  end;
  StringToFile('Collabornation.txt',TotalText);
end;

procedure TCollabornationForm.TargetHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' CONNTD ' + IntToStr(StatusCode) + ' ' + Description);
end;
 
procedure TCollabornationForm.TargetHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' COSTAT ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationForm.TargetHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' DSCONN ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationForm.TargetHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' ERROR# ' + IntToStr(ErrorCode) + ' ' + Description);
end;

procedure TCollabornationForm.TargetHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' STATUS ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationForm.TargetHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string);

begin
  If Direction = 1 then begin
    TotalText := TotalText + Text;
  end;
end;



procedure TCollabornationForm.TargetHTTPStartTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response START');
  end;
end;

procedure TCollabornationForm.TargetHTTPEndTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response END');
  end;
end;

end.


'PERSCODE', UserID);
'EMAIL', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
'COURSECODE', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
'COURSEDESCR', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
'REQSCORE', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
        TargetBrowse.SetValue('DATETIMEATTEND', DateToStr(UnixToDateTime(StrToInt64(StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll])))));
        TargetBrowse.SetValue('DATEASSIGNED', DateToStr(UnixToDateTime(StrToInt64(StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll])))));
        TargetBrowse.SetValue('DATEDUE', '');
        TargetBrowse.SetValue('TIMESPENT', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
        TargetBrowse.SetValue('SCORE', '');
        TargetBrowse.SetValue('STATUS', StringReplace(TargetHTTP.XText,'"','',[rfReplaceAll]));
        TargetBrowse.SetValue('COURSE', StringReplace(Course,'"','',[rfReplaceAll]));

