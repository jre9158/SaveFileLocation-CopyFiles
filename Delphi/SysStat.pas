unit SysStat;

interface

uses
  commonfunc,
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  grids,
  db,
  extctrls,
  buttons,
  menus,
  ComCtrls,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  AdvGlowButton,
  AlpineBase,
  AlpineGlowButton,
  AdvPanel,
  AlpineBlockBrowse;

type
  TSysStatForm = class(TAlpineBaseForm)
    BottomPanel: TPanel;
    PageControl: TPageControl;
    SystemTab: TTabSheet;
    TabSheet2: TTabSheet;
    PrinterBox: TListBox;
    Panel5: TPanel;
    TabSheet3: TTabSheet;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CurrentUser: TLabel;
    TimeLoggedOn: TLabel;
    TimeOutLength: TLabel;
    OvcController1: TOvcController;
    Label21: TLabel;
    NTName: TLabel;
    cancelbutton: TAlpineGlowButton;
    PrintListButton: TAlpineGlowButton;
    TestPrintButton: TAlpineGlowButton;
    SysServiceBrowse: TAlpineBlockBrowse;
    ToolBarButton: TAlpineGlowButton;
    CallTakeButton: TAlpineGlowButton;
    Panel1: TPanel;
    Panel3: TPanel;
    Label17: TLabel;
    VersionField: TLabel;
    Label18: TLabel;
    DatabaseField: TLabel;
    Label19: TLabel;
    FireDeptField: TLabel;
    Label20: TLabel;
    UpdateField: TLabel;
    Label25: TLabel;
    FdidLabel: TLabel;
    Panel4: TPanel;
    Label2: TLabel;
    CompCode: TLabel;
    Label34: TLabel;
    IPField: TLabel;
    Label35: TLabel;
    AllIPField: TLabel;
    ScreenLabel: TLabel;
    ScreenField: TLabel;
    Label1: TLabel;
    SecFDIDLabel: TLabel;
    DispStatButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    Label6: TLabel;
    ProfileDescrField: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SecBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintSomethingClick(Sender: TObject);
    procedure cancelbuttonClick(Sender: TObject);
    procedure PrinterBoxClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure ToolBarButtonClick(Sender: TObject);
    procedure CallTakeButtonClick(Sender: TObject);
    procedure DispStatButtonClick(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function LocalAllIP: TStringList;
    function GetProfileDescr: String;
  public
    { Public declarations }
  end;
{$I rednmx.inc}

var
  SysStatForm: TSysStatForm;

implementation
uses GenFunc,
     Main,
     WinSock,
     CommonVar,
     CommonDisp,
     SortGridView,
     NormalBase,
     RedNMXReview,
     FormFunc,
     SysService,
     Printers;

{$R *.DFM}



function TSysStatForm.GetProfileDescr: String;
Var ProfileID : String;
    Descr     : String;
begin
  Open_Query('GETSEC',false,'SELECT PROFILEID FROM SEC WHERE SECID = ' + pkValue(SecIDVar));
  ProfileID := GetField('GETSEC','PROFILEID').AsString;
  CloseApollo('GETSEC');

  Open_Query('GETPROFILE',false,'SELECT DESCR FROM SEC WHERE SECID = ' + pkValue(ProfileID));
  Descr := tdbfield('GETPROFILE','DESCR');
  CloseApollo('GETPROFILE');
  GetProfileDescr := IIf(Descr = '','Not Applicable',Descr);
end;

procedure TSysStatForm.FormCreate(Sender: TObject);
Var IPStringList : TStringList;
    x            : Integer;
begin
  CompCode.Caption            := AlpineGetComputerName;
  CurrentUser.Caption         := MainForm.SecIDLabel.Caption;
  ProfileDescrField.caption   := GetProfileDescr;
  NTName.Caption              := GetNtUserName;
  PrinterBox.Items            := Printer.Printers;
  DatabaseField.Caption       := GetDatabaseType(GlobalAdoConnection.TableType);
  If UseSSL then
    DatabaseField.Caption := DatabaseField.Caption + ', Encrypted Data Channel';
  FireDeptField.Caption       := FireDept;
  FdidLabel.Caption           := FireId;
  SecFDIDLabel.Caption        := IIf(secFdid = '','Not Applicable',secFdid + '-' + SQLLookUp(secFdid,'FDID','FDID','DEPTNAME'));
  UpdateField.Caption         := SayLastUpdated;
  PageControl.ActivePage      := SystemTab;
  ScreenField.Caption         := 'Height: ' + IntToStr(Screen.Height) + ', Width: ' + IntToStr(Screen.Width) + ', Monitor Count: ' + IntToStr(Screen.MonitorCount) + ' and PPI: ' + IntToStr(Screen.PixelsPerInch);
  IPField.Caption             := GetLocalIP;
  IPStringList                := TStringList.Create;
  IPStringList                := LocalAllIP;
  AllIPField.Caption          := '';
  For x := 0 to IPStringList.Count-1 do
    AllIPField.Caption     := AllIPField.Caption + ' ' + IPStringList[x];

  SysServiceBrowse.DeleteEnabled      := AlpineLogon;
  SysServiceBrowse.ButtonPanelVisible := AlpineLogon;
  SysServiceBrowse.DeleteEnabled      := AlpineLogon;
  DispStatButton.Visible              := AlpineLogon;
  RedNMXButton.Visible                := AlpineLogon;
end;

function TSysStatForm.LocalAllIP: TStringList;
type TaPInAddr = array [0..10] of PInAddr;
     PaPInAddr = ^TaPInAddr;
var  phe      : PHostEnt;
     pptr     : PaPInAddr;
     Buffer   : array [0..63] of char;
     i        : Integer;
     GInitData: TWSADATA;
     mIPList  : TStringList;
begin
  mIPList := TStringList.Create;
  mIPList.add('');
  WSAStartup($101, GInitData);
  GetHostName(Buffer, SizeOf(Buffer));
  phe :=GetHostByName(buffer);
  If phe = nil then
    Exit;
  pptr := PaPInAddr(Phe^.h_addr_list);
  i := 0;
  while pptr^[i] <> nil do begin
    mIPList.add(StrPas(inet_ntoa(pptr^[i]^)) );
    Inc(i);
  end;
  Result := mIPList;
  WSACleanup;
end;

procedure TSysStatForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = VK_ESCAPE) then
    ModalResult:=mrCancel;
end;

procedure TSysStatForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',BottomPanel);
end;

procedure TSysStatForm.SecBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = VK_ESCAPE) then
    ModalResult:=mrCancel;
end;

procedure TSysStatForm.PrintSomethingClick(Sender: TObject);
var pageWidth   : Integer;
    pageHeight  : Integer;
    x           : Integer;
    y           : Integer;
    recX        : Integer;
    recY        : Integer;
    printerName : String;
    mIndex      : Integer;

  procedure printText( const txt : String ; centered : Boolean );
  var centered_x : Integer;
  begin
    If centered then begin
      centered_x := (Printer.pageWidth - printer.canvas.textWidth(txt)) div 2;
      Printer.Canvas.textOut( centered_x , y , txt );
    end else begin
      Printer.Canvas.textOut( x , y , txt );
    end;
    y := y + Printer.Canvas.Textheight( txt ) + 10;
  end;

  procedure printPrinterList;
  var i : Integer;
  begin
    Printer.Canvas.Font.size := 24;
    printText('RedAlert - Printer List', true);
    y                        := y + 150;
    Printer.Canvas.Font.size := 14;
    If printer.printers.count <= 1 then
      printText( 'There are no printers installed for this computer' , false )
    else begin
      for i := 0 to printer.printers.count -1 do begin
        printText( printer.printers[i] , false );
      end;
    end;
  end;

  procedure printSystemStatus;
  begin
    Printer.Canvas.Font.size := 24;
    printText('RedAlert - System Status', true);
    y := y + 150;
    Printer.Canvas.Font.size := 14;
    printText( 'Printer name: ' + printerName , false );
    printText( 'Computer name: ' + CompCode.Caption , false );
    printText( 'Current date: ' + getDateAsString , false );
    printText( 'Current time: ' + getTimeAsString , false );
    printText( 'Current user: ' + CurrentUser.Caption , false );
  end;
  
begin
  try
    x := 150;
    y := 300;
    If sender = PrintListButton then begin
      printerName := uppercase(trim(printerBox.items[printer.printerIndex]));
      printer.Title := 'RedAlert Printer List';
      Printer.BeginDoc;
      Printer.Canvas.Rectangle(100, 100, Printer.pageWidth-100, Printer.pageHeight-100 ); { draw rectangle on printer's canvas }
      printPrinterList;
      y := y + 150;
      printSystemStatus;
      Printer.EndDoc;
      showMessage( 'The list of printers was printed to printer:  ' + printerName );
    end else if sender = testprintbutton then begin
      mindex := printerBox.itemIndex;
      If mindex > -1 then begin
        printerName := uppercase(trim(printerBox.items[mIndex]));
        printer.printerIndex := mIndex;
        printer.Title := 'RedAlert Test Print';
        Printer.BeginDoc;
        Printer.Canvas.Rectangle(100, 100, Printer.pageWidth-100, Printer.pageHeight-100 ); { draw rectangle on printer's canvas }
        printSystemStatus;
        Printer.EndDoc;
        showMessage( 'A test page was sent to printer:  ' + printerName );
      end else begin
        MessageDlg('You must have a printer selected to print a test page.', mtWarning, [mbOK], 0);
      end;
    end;
  except
    on E :Exception do begin
      MessageDlg('An error occured while attemting to print to ' + printerName + #13#13 + E.message , mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TSysStatForm.RedNMXButtonClick(Sender: TObject);
begin
  RedNMXReviewForm := TRedNMXReviewForm.Create(Self,GlobalADOConnection);
  RedNMXReviewForm.ShowModal;
  RedNMXReviewForm.Free;
end;

procedure TSysStatForm.DispStatButtonClick(Sender: TObject);
begin
  If BooleanMessageDlg('Clear apparatus assigned to closed calls?') then
    ClearApparatusAssignedToClosedCalls(GlobalAdoConnection);
end;

procedure TSysStatForm.CallTakeButtonClick(Sender: TObject);
begin
  If BooleanMessageDlg('Reset the Dispatch Screens on ' + AlpineGetComputerName + ' to left=10, top=10 ?') then begin
    Open_Query('SYSFORMSET',true,'SELECT * FROM SYSFORMSET WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    while not A('SYSFORMSET').eof do begin

      A('SYSFORMSET').Edit;
      GetField('SYSFORMSET','FORMTOP').AsInteger    := 10;
      GetField('SYSFORMSET','FORMLEFT').AsInteger   := 10;
      GetTable('SYSFORMSET').Post;

      A('SYSFORMSET').Skip(1);
    end;
    CloseApollo('SYSFORMSET');
    GlobalSysFormReset := True;
    ShowMessage('Exit and Restart the Application');
  end;  
end;

procedure TSysStatForm.cancelbuttonClick(Sender: TObject);
begin
  close;
end;

procedure TSysStatForm.PrinterBoxClick(Sender: TObject);
begin
  If printerBox.itemIndex >= 0 then begin
    TestPrintButton.Caption := 'Send test print to ' + PrinterBox.Items[printerBox.itemIndex];
    TestPrintButton.Enabled := true;
  end;
end;

procedure TSysStatForm.TabSheet3Show(Sender: TObject);
begin
  SysServiceBrowse.Setup('SYSSERVICE',TSysServiceForm,TSysServiceForm.NewRecord);
end;

procedure TSysStatForm.ToolBarButtonClick(Sender: TObject);
begin
  If BooleanMessageDlg('Reset the tool bar for your settings to left=10, top=10 ?') then begin
    Open_Query('SYSTOOLPOS',true,'SELECT TOOLTOP, TOOLLEFT, TOOLHEIGHT, TOOLWIDTH FROM SYSTOOLPOS WHERE SECID = ' + pkValue(SecIDVar) + ' AND COMPCODE = ' + AddExpr(AlpineGetComputerName));
    If A('SYSTOOLPOS').RecordsExist then begin
      GetTable('SYSTOOLPOS').Edit;
      GetField('SYSTOOLPOS','TOOLTOP').AsInteger    := 010;
      GetField('SYSTOOLPOS','TOOLLEFT').AsInteger   := 010;
      GetTable('SYSTOOLPOS').Post;
    end;
    CloseApollo('SYSTOOLPOS');
    MainForm.ShowToolBar;
  end;    
end;

end.
