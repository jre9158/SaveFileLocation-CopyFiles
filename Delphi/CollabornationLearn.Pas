unit CollabornationLearn;

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
 IpwCore,
 IpwNetCode,
 ipwhttp,ipwtypes,
  EnJpgGr,
  DateUtils,
  AdvMemo, OleCtrls, SHDocVw;

type
  TCollabornationLearnForm = class(TAlpineBaseForm)
    AlpinePanel1: TAlpinePanel;
    StatusBox: TListBox;
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
    CollabornationWeb: TWebBrowser;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure CollabornationHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
    procedure CollabornationHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string; TextB: TBytes);


    procedure CollabornationHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
    procedure CollabornationHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
    procedure CollabornationHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure CollabornationHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
    procedure CollabornationHTTPStartTransfer(Sender: TObject; Direction: Integer);
    procedure CollabornationHTTPEndTransfer(Sender: TObject; Direction: Integer);
    procedure QueryData;


  public
    { Public declarations }
    TotalText : WideString;
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  CollabornationLearnForm  : TCollabornationLearnForm;

implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     InvServType,
     FormFunc,
     InvSubType,
     InvInspType,
     InvDescr,
     CommonVar,
     CommonSec;

{$R *.DFM}

procedure TCollabornationLearnForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);                                                                                                           
end;

procedure TCollabornationLearnForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TCollabornationLearnForm.FormCreate(Sender: TObject);
begin
  inherited;
//WindowState          := wsMaximized;
end;

class procedure TCollabornationLearnForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TCollabornationLearnForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin

end;

procedure TCollabornationLearnForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin

end;

procedure TCollabornationLearnForm.LoadButtonClick(Sender: TObject);
Var CheckValue : Boolean;
    RowNum     : Integer;
    TargetID   : String;
    PersCode   : String;
    CourseCode : String;
    Length     : Integer;
begin

end;

procedure TCollabornationLearnForm.ImportButtonClick(Sender: TObject);
begin
  inherited;
  QueryData;
end;

procedure TCollabornationLearnForm.QueryData;
var URL          : string;
    CollabornationHTTP: TipwHTTP;
    TestJSON     : TipwHTTP;
    TargetKey    : String;
    TargetSecret : String;
    UserCount    : Integer;
    iUsers       : Integer;
    UserToken    : String;
    Email        : string;
    ServerResponse: String;
    CourseCount  : Integer;
    iCourses     : Integer;
    Course       : String;
    RowNum       : Integer;
begin
  try
    TotalText                      := '';
    CollabornationHTTP                     := TipwHTTP.Create(nil);
    CollabornationHTTP.OnStatus            := CollabornationHTTPStatus;
    CollabornationHTTP.OnError             := CollabornationHTTPError;
    CollabornationHTTP.OnConnectionStatus  := CollabornationHTTPConnectionStatus;
    CollabornationHTTP.OnDisconnected      := CollabornationHTTPDisconnected;
    CollabornationHTTP.OnConnected         := CollabornationHTTPConnected;
    //CollabornationHTTP.ContentType         := 'application/json';
    CollabornationHTTP.User                := 'RedNMX';
    CollabornationHTTP.Password            := '78A72786B4E92D369F4B2B935CA15DADF9F10AF48AA3E16AEFC283D31D0AAB14';
    try
     CollabornationHTTP.Config('SSLEnabledProtocols=3072');
     URL := 'https://collabornation.net/lms/api/0.06';
     URL := URL + '/login/100';

     CollabornationHTTP.Get(URL);


     ServerResponse := alltrim(CollabornationHTTP.TransferredData);
     ServerResponse := StringReplace(ServerResponse,'\/','/',[rfReplaceAll]);
     StringToFile('Collabornation.json',ServerResponse);

     TestJSON := TipwHTTP.Create(nil);
     TestJSON.OnError := CollabornationHTTPError;

     TestJSON.Config('SSLEnabledProtocols=3072');
     TestJSON.User                := 'RedNMX';
     TestJSON.Password            := '78A72786B4E92D369F4B2B935CA15DADF9F10AF48AA3E16AEFC283D31D0AAB14';
     URL := 'https://collabornation.net/lms/api/0.06';
     URL := URL + '/my-courses';

     TestJSON.PostData := ServerResponse;
     TestJSON.Put(URL);
     ServerResponse := alltrim(TestJSON.TransferredData);
     StringToFile('Collabornation.html',ServerResponse);
     CollabornationWeb.Navigate('https://collabornation.net/lms/see_sco_contents/6561556');
   except
     on e: exception do begin
       AppendToLog(CollabornationHTTP.HTTPMethod);
       AppendToLog(e.Message);

       AddStatusListBox(StatusBox,'HTTP ERROR: ' + e.Message);
      end;
    end;
  finally
    CollabornationHTTP.Free;
  end;
  StringToFile('Collabornation.txt',TotalText);
end;

procedure TCollabornationLearnForm.CollabornationHTTPConnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' CONNTD ' + IntToStr(StatusCode) + ' ' + Description);
end;
 
procedure TCollabornationLearnForm.CollabornationHTTPConnectionStatus(Sender: TObject; const ConnectionEvent: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' COSTAT ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationLearnForm.CollabornationHTTPDisconnected(Sender: TObject; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' DSCONN ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationLearnForm.CollabornationHTTPError(Sender: TObject; ErrorCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' ERROR# ' + IntToStr(ErrorCode) + ' ' + Description);
end;

procedure TCollabornationLearnForm.CollabornationHTTPStatus(Sender: TObject; const HTTPVersion: string; StatusCode: Integer; const Description: string);
begin
  AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' STATUS ' + IntToStr(StatusCode) + ' ' + Description);
end;

procedure TCollabornationLearnForm.CollabornationHTTPTransfer(Sender: TObject; Direction: Integer; BytesTransferred: Int64; PercentDone: Integer; Text: string; TextB: TBytes);

begin
  If Direction = 1 then begin
    TotalText := TotalText + Text;
  end;
end;



procedure TCollabornationLearnForm.CollabornationHTTPStartTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response START');
  end;
end;

procedure TCollabornationLearnForm.CollabornationHTTPEndTransfer(Sender: TObject; Direction: Integer);
begin
  If Direction = 1 then begin
    AddStatusListBox(StatusBox,FormatDateTime('hh:nn:ss',Now)+ ' Server Response END');
  end;
end;

end.
