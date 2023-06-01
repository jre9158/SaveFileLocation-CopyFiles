unit CalendarNMX;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  AlpineBase,
  AdvPanel,
  AdvAppStyler,
  StdCtrls,
  AdvOfficeImage,
  HTMLabel,
  ExtCtrls,
  AdvGlassButton,
  PlannerCal,
  Planner,
  AdvOfficePager,
  AdvOfficePagerStylers,
  ImgList,
  AdvGroupBox,
  AdvOfficeButtons,
  AdvReflectionLabel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  PlanDraw,
  PlannerMonthView,
  DateUtils,
  NormalBase,
  htmlbtns,
  DB,
  BaseCalendar,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  Menus,
  AlpineDateTime,
  AdvObj,
  AlpineLookUp,
  AlpineEdit,
  AlpineCheck,
  MySBox, Gauges;

type
  TCalendarNMXForm = class(TBaseNMXCalendarForm)
    AdvPanel4: TAdvPanel;
    HTMLabel2: THTMLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    ShapeDrawTool1: TShapeDrawTool;
    PersNameField: TAdvReflectionLabel;
    ImageList: TImageList;
    TitleField: TLabel;
    Panel1: TPanel;
    LeftPanel: TAdvPanel;
    Status911Splitter: TSplitter;
    Splitter1: TSplitter;
    NIBrowse: TAlpineBlockBrowse;
    NIPTYPEPanel: TAdvPanel;
    NIPTYPEBrowse: TAdvStringGrid;
    LocationPanel: TAdvPanel;
    LocationBrowse: TAdvStringGrid;
    TabControl: TAdvOfficePager;
    MonthTab: TAdvOfficePage;
    LargeCalendar: TPlannerMonthView;
    Splitter2: TSplitter;
    DailyTab: TAdvOfficePage;
    DailyPlanner: TPlanner;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    NIMenu: TPopupMenu;
    SignUpChoice: TMenuItem;
    SignUpDeleteChoice: TMenuItem;
    BaseBottomPanel: TAdvPanel;
    PrintButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    SaveButton: TAlpineGlowButton;
    DailyPrintButton: TAlpineGlowButton;
    AdvPanel1: TAdvPanel;
    SmallCalendar: TPlannerCalendar;
    CalendarMenu: TPopupMenu;
    AddNIChoice: TMenuItem;
    StatusPanel: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    NoShowCheck: TAlpineCheckBoxGlowButton;
    ProgressPanel: TAdvPanel;
    ProgressBar: TGauge;
    procedure SmallCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure FormShow(Sender: TObject);
    procedure LargeCalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
    procedure LargeCalendarItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure LargeCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LocationBrowseClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DailyPlannerPlannerNext(Sender: TObject);
    procedure DailyPlannerPlannerPrev(Sender: TObject);
    procedure DailyPlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
    procedure LargeCalendarItemLeftClick(Sender: TObject; Item: TPlannerItem);
    procedure LargeCalendarItemRightClick(Sender: TObject; Item: TPlannerItem);
    procedure FdidBrowseClick(Sender: TObject);
    procedure AddNIChoiceClick(Sender: TObject);
    procedure SignUpChoiceClick(Sender: TObject);
    procedure StatusPanelResize(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure NIBrowseNewRecord(DataSet: TDataSet);
    procedure NIMenuPopup(Sender: TObject);
    procedure SignUpDeleteChoiceClick(Sender: TObject);
  private
    { Private declarations }
    SelectNIID : String;
    RefreshCalendar : Boolean;
    procedure LoadNIBrowse;
    procedure LoadNIPTypeBrowse;
    procedure LoadLocationBrowse;
    procedure LoadFdidBrowse;
    procedure NIBrowseAfterRefresh(Sender: TObject);
    procedure ProcessPlanner(PlannerDate : TDateTime);
    function  CheckNIPTypeFdid: Boolean;
    function CheckFdidBrowse(FdidVar : String): Boolean;
    procedure SaveSetting(VSecIDVar, CompType, CompName, CompValue: String; CompVisible : Boolean);
    procedure CallIt(mComponent: TWinControl);
    procedure LoadSetting(VSecIDVar: String);
  public
    { Public declarations }
    procedure NINewRecord(DataSet: TDataSet);
    procedure ProcessCalendar(RefreshBrowse: Boolean); override;
    function GetNIPTypeWhere   : String;
    function GetNIPTypeString  : String;
    function GetLocationWhere  : String;
    function GetLocationString : String;
    function GetFdidWhere      : String;
  end;

var
  CalendarNMXForm: TCalendarNMXForm;
{$I rednmx.inc}

implementation

uses FormFunc,
     GenFunc,
     CommonFunc,
     CommonVar,
     NI,
     CalendarRep,
     SecSet,
     AppLst;

{$R *.dfm}

procedure TCalendarNMXForm.FormCreate(Sender: TObject);
begin
  ViewOnly               := Not CheckSecVar('NIEDIT');
  NIBrowse.DeleteEnabled := CheckSecVar('NIDEL');
  NIBrowse.NewEnabled    := CheckSecVar('NIADD');
end;

procedure TCalendarNMXForm.FormShow(Sender: TObject);
begin  
  NoShowCheck.Visible         := (mFireID = '14353');
  TitleField.Caption          := FireDept;
  SmallCalendar.Date          := Now;
  LargeCalendar.Date          := SmallCalendar.Date;
  PersNameField.HTMLText.Text := 'Department Calendar:  ' + SQLLookUp(GlobalPersID,'PERSID','PERS','FNAME') + ' ' + SQLLookUp(GlobalPersID,'PERSID','PERS','LNAME');
  FdidPanel.Visible           := (secFdid = '') and MultiFdid;

  LoadFdidBrowse;
  LoadNIPTypeBrowse;

  if (mFireID = '07130') then begin
    LocationPanel.Visible := False;
  end else
    LoadLocationBrowse;

  LoadSetting(SecIDVar);

  ProcessCalendar(true);
  TabControl.ActivePageIndex  := 0;
end;

procedure TCalendarNMXForm.NIBrowseAfterRefresh(Sender: TObject);
begin
  If TabControl.ActivePageIndex  = 1 then
    ProcessPlanner(SmallCalendar.Date)
  else
    ProcessCalendar(False);
end;

procedure TCalendarNMXForm.NIBrowseNewRecord(DataSet: TDataSet);
begin
  RefreshCalendar := True;
end;

procedure TCalendarNMXForm.NIMenuPopup(Sender: TObject);
Var DateTimeStart : TDateTime;
begin
  Open_Query('GETNI',false,'SELECT DATETIMESTART FROM NI WHERE NIID = ' + pkValue(SelectNIID));
  DateTimeStart := GetField('GETNI','DATETIMESTART').AsDateTime;
  CloseApollo('GETNI');
  SignUpChoice.Enabled       := Now < DateTimeStart;
  SignUpDeleteChoice.Enabled := Now < DateTimeStart;
end;

procedure TCalendarNMXForm.ProcessCalendar(RefreshBrowse: Boolean);
var NextMon         : String;
    PrevMon         : String;
    NIPTypeIDString : String;
    LocationString  : String;
    WhereClause     : String;
    FdidString      : String;
    TextVar         : String;
    SQLVar          : String;    
begin
  if mFireID = '07130' then begin    
    NextMon   := FormatDateTimeForSql(IncMonth(StrToDate(FormatDateTime('mm',LargeCalendar.Date)+'/01/'+FormatDateTime('yyyy',LargeCalendar.Date)),1));
    PrevMon   := FormatDateTimeForSql(IncMonth(StrToDate(FormatDateTime('mm',LargeCalendar.Date)+'/01/'+FormatDateTime('yyyy',LargeCalendar.Date)),0));
  end else begin
    NextMon   := FormatDateTimeForSql(IncMonth(StrToDate(FormatDateTime('mm',LargeCalendar.Date)+'/01/'+FormatDateTime('yyyy',LargeCalendar.Date)),2));
    PrevMon   := FormatDateTimeForSql(IncMonth(StrToDate(FormatDateTime('mm',LargeCalendar.Date)+'/01/'+FormatDateTime('yyyy',LargeCalendar.Date)),-1));
  end;

  ProgressPanel.Visible := True;
  ProgressBar.progress  := 0;
  
  LargeCalendar.Items.Clear;

  WhereClause     := 'WHERE NI.DATETIMESTART >= '+PrevMon+' AND NI.DATETIMESTART < '+NextMon;
  NIPTypeIDString := GetNIPTypeWhere;
  LocationString  := GetLocationWhere;
  FdidString      := GetFdidWhere;

  If NoShowCheck.Visible then begin
    If FdidString + LocationString + NIPTypeIDString = '' then begin
      NoShowCheck.ButtonState := gbChecked;
      WhereClause := WhereClause + ' AND 1=2 '
    end else begin
      NoShowCheck.ButtonState := gbUnchecked;
    end;  
  end;  

  If Not (NIPTypeIDString = '') then
    WhereClause := WhereClause + ' AND ' + NIPTypeIDString;
  If Not (LocationString = '') then
    WhereClause := WhereClause + ' AND ' + LocationString;

  If MultiFdid and Not (secFDID = '') then
    WhereClause := WhereClause + ' AND NI.FDID = ' + AddExpr(SecFDID) + ' '
  else if Not (FdidString = '') then
    WhereClause := WhereClause + ' AND ' + FdidString;

  If mFireID = '10700' then
    WhereClause := 'WHERE NI.DATETIMESTART >= '+PrevMon+' AND NI.DATETIMESTART < '+NextMon + ' AND (NI.FDID = ' + AddExpr('10700') + ' OR NI.FDID = ' + AddExpr(SecFdid) + ')';

  If mFireID = '07130' then
    SQLVar := 'SELECT * FROM ' +
            '(SELECT NI.CALENDARICONID, NI.NIID, NI.DESCR, NI.DATETIMESTART, NI.DATETIMEEND, ' +
            'NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR, ' +
            'NISTYPE.DESCR NISTYPEDESCR, ' +
            'ROW_NUMBER() OVER (PARTITION BY FORMAT(DATETIMESTART, ''dd/MM/YYYY'') ORDER BY DATETIMESTART) AS ROWNUM ' +
            'FROM NI ' +
            'LEFT JOIN NIPTYPE ON NI.NIPTYPEID = NIPTYPE.NIPTYPEID ' +
            'LEFT JOIN NISTYPE ON NI.NISTYPEID = NISTYPE.NISTYPEID ' +
            WhereClause + ') NI1 ' +
            ' WHERE NI1.ROWNUM < 4 ' +
            ' ORDER BY NI1.DATETIMESTART, NI1.NIPTYPEDESCR'
  else
    SQLVar := 'SELECT NI.CALENDARICONID, NI.NIID, NI.DESCR, NI.DATETIMESTART, NI.DATETIMEEND, ' +
            'NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR, ' +
            'NISTYPE.DESCR NISTYPEDESCR ' +
            'FROM NI ' +
            'LEFT JOIN NIPTYPE ON NI.NIPTYPEID = NIPTYPE.NIPTYPEID ' +
            'LEFT JOIN NISTYPE ON NI.NISTYPEID = NISTYPE.NISTYPEID ' +
            WhereClause + ' ' +
            'ORDER BY NI.DATETIMESTART, NI.NIPTYPEID';


            
  Open_Query('NI',false,SQLVar);

  Open_Query('NIATT',false,'SELECT NIATT.NIID FROM NIATT LEFT JOIN NI ON (NIATT.NIID = NI.NIID) WHERE NIATT.PERSID = ' + pkValue(GlobalPersID) + ' AND NI.DATETIMESTART >= '+PrevMon+' AND NI.DATETIMESTART < ' + NextMon);
  Open_Query('NISIGNUP',false,'SELECT NISIGNUP.NIID FROM NISIGNUP LEFT JOIN NI ON (NISIGNUP.NIID = NI.NIID) WHERE NISIGNUP.PERSID = ' + pkValue(GlobalPersID) + ' AND NI.DATETIMESTART >= '+PrevMon+' AND NI.DATETIMESTART < ' + NextMon);
  ProgressBar.MaxValue     := A('NI').QueryRecCount;
  while not A('NI').eof do begin
    with LargeCalendar.CreateItem do begin
      ItemStartTime  := GetField('NI','DATETIMESTART').AsDateTime;
      ItemEndTime    := StrToDateTime(FormatDatetime('MM/DD/YYYY',GetField('NI','DATETIMESTART').AsDateTime) + ' 23:59:59');

      CaptionText    := tdbfield('NI','NIPTYPEDESCR');
      CaptionType    := ctText;

      If GetField('NI','CALENDARICONID').AsInteger > 0 then
        ImageID := GetField('NI','CALENDARICONID').AsInteger
      else
        ImageID := 26;
      Layer := 8;

      If GetField('NI','DATETIMESTART').AsDateTime > now then begin
        If A('NISIGNUP').ExactQueryLocate('NIID',GetField('NI','NIID').AsString) then begin
          CaptionBkg        := clblue;
          CaptionBkgTo      := clblue;
          CaptionFont.Color := clwhite;
        end else begin
          CaptionBkg        := clyellow;
          CaptionBkgTo      := clyellow;
          CaptionFont.Color := clblack
        end;
      end else begin
        If A('NIATT').ExactQueryLocate('NIID',GetField('NI','NIID').AsString) then begin
          CaptionBkg        := clgreen;
          CaptionBkgTo      := clgreen;
          CaptionFont.Color := clwhite;
        end else begin
          CaptionBkg        := clred;
          CaptionBkgTo      := clred;
          CaptionFont.Color := clwhite;
        end;
      end;

      TextVar           := FormatDateTime('HH:NN',ItemStartTime) + '-' + FormatDateTime('HH:NN',GetField('NI','DATETIMEEND').AsDateTime) + ' ' + tdbfield('NI','NISTYPEDESCR') + #13#10 + tdbfield('NI','DESCR');
      Text.Text         := TextVar;
      shape             := psrounded;
      SelectFontColor   := clNavy;
      TrackColor        := clGreen;
      TrackLinkColor    := clBlue;
      TrackSelectColor  := clGray;
      Tag               := GetField('NI','NIID').AsInteger;
      PopUpMenu         := NIMenu;

    end;
    A('NI').Skip(1);
    //Application.ProcessMessages;
    ProgressBar.Progress := ProgressBar.Progress + 1;
  end;
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('NISIGNUP');

  If RefreshBrowse then begin
    try
      NIBrowse.OnAfterRefresh := nil;
      LoadNIBrowse;
      ProcessPlanner(SmallCalendar.Date);
    finally
      NIBrowse.OnAfterRefresh := NIBrowseAfterRefresh;
    end;
  end;

  ProgressBar.progress  := 0;
end;

procedure TCalendarNMXForm.ProcessPlanner(PlannerDate : TDateTime);
var WhereClause     : String;
    NIPTypeIDString : String;
    LocationString  : String;
    FdidString      : String;
begin
  ProgressPanel.Visible := True;
  ProgressBar.progress  := 0;
  
  DailyPlanner.Items.Clear;
  DailyPlanner.Mode.Day   := StrToInt(FormatDateTime('DD',PlannerDate));
  DailyPlanner.Mode.Month := StrToInt(FormatDateTime('MM',PlannerDate));
  DailyPlanner.Mode.Year  := StrToInt(FormatDateTime('YYYY',PlannerDate));

  WhereClause     := 'WHERE NI.DATETIMESTART >= '+FormatDateTimeForSql(PlannerDate)+' AND NI.DATETIMESTART < '+FormatDateTimeForSql(PlannerDate+1);
  NIPTypeIDString := GetNIPTypeWhere;
  LocationString  := GetLocationWhere;
  FdidString      := GetFdidWhere;

  If Not (NIPTypeIDString = '') then
    WhereClause := WhereClause + ' AND ' + NIPTypeIDString;

  If Not (LocationString = '') then
    WhereClause := WhereClause + ' AND ' + LocationString;

  If (SecFdid = '') then begin
    If Not (FdidString = '') then
      WhereClause := WhereClause + ' AND ' + FdidString
  end else begin
    If MultiFdid and Not (secFDID = '') then
      WhereClause := WhereClause + ' AND NI.FDID = ' + AddExpr(SecFDID) + ' ';
  end;

  Open_Query('NI',false,'SELECT NI.NIID, NI.DESCR, NI.LOCATIONID, NI.DATETIMESTART, NI.DATETIMEEND, ' +
                        'NI.CALENDARICONID, NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR, ' +
                        'NISTYPE.DESCR NISTYPEDESCR ' +
                        'FROM NI ' +
                        'LEFT JOIN NIPTYPE ON NI.NIPTYPEID = NIPTYPE.NIPTYPEID ' +
                        'LEFT JOIN NISTYPE ON NI.NISTYPEID = NISTYPE.NISTYPEID ' +
                        WhereClause + ' ' +
                        'ORDER BY NI.DATETIMESTART, NI.NIPTYPEID');

  Open_Query('NIATT',false,'SELECT COUNT(*) AS MYCNT FROM NIATT WHERE 1=2');

  ProgressBar.MaxValue     := A('NI').QueryRecCount;
  while not A('NI').eof do begin
    A('NIATT').UpdateSQL('SELECT COUNT(*) AS MYCNT FROM NIATT WHERE NIID = '+AddExpr(tdbfield('NI','NIID')));
    with DailyPlanner.CreateItem do begin
      ItemStartTime := GetField('NI','DATETIMESTART').AsDateTime;
      If GetField('NI','DATETIMEEND').AsDateTime > 0 then
        ItemEndTime   := GetField('NI','DATETIMEEND').AsDateTime
      else
        ItemEndTime   := IncHour(GetField('NI','DATETIMESTART').AsDateTime,1);

      CaptionText       := tdbfield('NI','NIPTYPEDESCR')+' - '+tdbfield('NI','DESCR');
      CaptionType       := ctText;

      If GetField('NI','CALENDARICONID').AsInteger > 0 then
        ImageID := GetField('NI','CALENDARICONID').AsInteger
      else
        ImageID := 26;
        
      Layer             := 8;
      Text.Text         := FormatDateTime('HH:NN',ItemStartTime) + '-' + FormatDateTime('HH:NN',ItemEndTime) + ', ' +
                           tdbfield('NI','NISTYPEDESCR') + ', #Att: '+ tdbfield('NIATT','MYCNT')+ ', ' +
                           SQLLookup(tdbfield('NI','LOCATIONID'),'LOCATIONID','LOCATION','DESCR');

      CaptionBkg        := clred;
      CaptionBkgTo      := clred;
      CaptionFont.Color := clblack;
                           
      SelectFontColor   := clNavy;
      shape             := psrounded;
      TrackColor        := clGreen;
      TrackLinkColor    := clBlue;
      TrackSelectColor  := clGray;
      Tag               := GetField('NI','NIID').AsInteger;
    end;
    A('NI').Skip(1);
    ProgressBar.Progress := ProgressBar.Progress + 1;
  end;
  CloseApollo('NI');
  CloseApollo('NIATT');
  ProgressBar.progress  := 0;
end;


procedure TCalendarNMXForm.SmallCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
begin
  LargeCalendar.Date := SmallCalendar.Date;
  if TabControl.ActivePageIndex  = 1 then
    ProcessPlanner(SmallCalendar.Date)
  else
    ProcessCalendar(True);
end;

procedure TCalendarNMXForm.StatusPanelResize(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',StatusPanel);
end;

procedure TCalendarNMXForm.LargeCalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
begin
  ProcessCalendar(True);
end;

procedure TCalendarNMXForm.LargeCalendarItemDblClick(Sender: TObject; Item: TPlannerItem);
Var NIID : String;
begin
  NIID               := IntToStr(Item.Tag);
  RunAlpineFormWithOwner(self,TNIForm,NIID,'NI',TNIForm.NewRecord,False);
end;

procedure TCalendarNMXForm.LargeCalendarItemLeftClick(Sender: TObject; Item: TPlannerItem);
begin
  LargeCalendar.Date := Item.ItemStartTime;
end;

procedure TCalendarNMXForm.LargeCalendarItemRightClick(Sender: TObject; Item: TPlannerItem);
begin
  SelectNIID := IntToStr(Item.tag);
end;

procedure TCalendarNMXForm.LargeCalendarDaySelect(Sender: TObject; SelDate: TDateTime);
begin
  SmallCalendar.Date := SelDate;
  LoadNIBrowse;
end;

procedure TCalendarNMXForm.LoadNIBrowse;
Var FdidString  : String;
    WhereString : String;
begin
  WhereString     := 'WHERE NI.DATETIMESTART >= ' + FormatDateTimeForSql(LargeCalendar.Date) + ' AND ' + 'NI.DATETIMESTART <= ' + FormatDateTimeForSql(LargeCalendar.Date+0.99999);
  FdidString      := GetFdidWhere;

  If Not (FdidString = '') then
    WhereString := WhereString + ' AND ' + FdidString;

  NIBrowse.Caption.Text          := 'Schedule for ' + FormatDateTime('MM/DD',LargeCalendar.Date);
  NIBrowse.Grid.WordWrap         := true;
  NIBrowse.Grid.DefaultRowHeight := 35;
  NIBrowse.Grid.FixedRowHeight   := 18;
  NIBrowse.ExplicitWhereClause   := WhereString;
  if MFireID = '09007' then
    NIBrowse.Setup('NICALENDER09007',TNIForm,NINewRecord)
  else
    NIBrowse.Setup('NICALENDAR',TNIForm,NINewRecord);
end;

procedure TCalendarNMXForm.SignUpChoiceClick(Sender: TObject);
Var Descr : String;
begin
  Open_Query('NI',false,'SELECT NI.DESCR, NI.DATETIMESTART, NIPTYPE.DESCR NIPTYPEDESCR FROM NI LEFT JOIN NIPTYPE ON (NI.NIPTYPEID = NIPTYPE.NIPTYPEID) WHERE NI.NIID = ' + pkValue(SelectNIID));
  Descr := 'Sign up for ' + tdbfield('NI','DESCR') + ', ' + tdbfield('NI','NIPTYPEDESCR') + ' on ' + AlpineFormatDateTime('MM/DD/YYYY',Getfield('NI','DATETIMESTART').AsDatetime) + '?';
  CloseApollo('NI');
  If BooleanMessageDlg(Descr) then begin
    Open_Query('NISIGNUP',true,'SELECT * FROM NISIGNUP WHERE NIID = ' + pkValue(SelectNIID) + ' AND PERSID = ' + pkValue(GlobalPersID));
    If A('NISIGNUP').RecordsExist then
      A('NISIGNUP').Edit
    else
      A('NISIGNUP').Append;
    GetField('NISIGNUP','NIID').AsString          := SelectNIID;
    GetField('NISIGNUP','PERSID').AsString        := GlobalPersID;
    GetField('NISIGNUP','ENTRYMETH').AsString     := 'MANUAL';
    GetField('NISIGNUP','DATETIMEENT').AsDateTime := Now;
    GetField('NISIGNUP','ENTRYCOMP').AsString     := AlpineGetComputerName;
    GetField('NISIGNUP','ENTRYSECID').AsString    := SecIDVar;
    A('NISIGNUP').Post;
    CloseApollo('NISIGNUP');
  end;
end;

procedure TCalendarNMXForm.SignUpDeleteChoiceClick(Sender: TObject);
Var Descr : String;
begin
  Open_Query('NI',false,'SELECT NI.DESCR, NI.DATETIMESTART, NIPTYPE.DESCR NIPTYPEDESCR FROM NI LEFT JOIN NIPTYPE ON (NI.NIPTYPEID = NIPTYPE.NIPTYPEID) WHERE NI.NIID = ' + pkValue(SelectNIID));
  Descr := 'Sign up for ' + tdbfield('NI','DESCR') + ', ' + tdbfield('NI','NIPTYPEDESCR') + ' on ' + AlpineFormatDateTime('MM/DD/YYYY',Getfield('NI','DATETIMESTART').AsDatetime) + '?';
  CloseApollo('NI');
  If BooleanMessageDlg(Descr) then begin
    RunSQL('DELETE FROM NISIGNUP WHERE NIID = ' + pkValue(SelectNIID) + ' AND PERSID = ' + pkValue(GlobalPersID));
    LargeCalendar.Refresh;
  end;
end;

procedure TCalendarNMXForm.AddNIChoiceClick(Sender: TObject);
Var NIID : String;
begin
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  GetTable('NI').Append;
  GetField('NI','FDID').AsString            := GetFdidVar;
  GetField('NI','DATETIMESTART').AsDateTime := LargeCalendar.Date;
  GetField('NI','DATETIMEEND').AsDateTime   := LargeCalendar.Date;
  GetTable('NI').Post;
  NIID                                      := GetField('NI','NIID').AsString;
  CloseApollo('NI');
  RunAlpineFormWithOwner(self,TNIForm,NIID,'NI',NINewRecord,False);
end;

procedure TCalendarNMXForm.NINewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('FDID').AsString            := GetFdidVar;
  DataSet.FieldByname('DATETIMESTART').AsDateTime := LargeCalendar.Date;
  DataSet.FieldByname('DATETIMEEND').AsDateTime   := LargeCalendar.Date;
  DataSet.FieldByname('APPSTAT').AsString         := 'N';
  LoadSysFieldDef(mFireID,'NI',DataSet);
end;

function TCalendarNMXForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If secFdid = '' then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR NI.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else begin
    GetFdidWhere := '(NI.FDID = ' + AddExpr(SecFdid) + ')';
  end;
end;

function TCalendarNMXForm.CheckFdidBrowse(FdidVar : String): Boolean;
Var RowVar     : Integer;
    CheckValue : Boolean;
    FdidString : String;
    Fdid       : String;
begin
  FdidString := '';
  If FdidVar = '' then
    CheckFdidBrowse := true
  else begin
    For RowVar := 0 to FdidBrowse.RowCount-2 do begin
      Fdid := FdidBrowse.Cells[0,RowVar];
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        FdidString := FdidString + Fdid;
    end;
    If FdidString = '' then
      CheckFdidBrowse := true
    else
      CheckFdidBrowse := (At(FdidVar,FdidString) > 0);
  end;
end;

function TCalendarNMXForm.CheckNIPTypeFdid: Boolean;
begin
  If MultiFdid and (secFDID = '') then
    CheckNIPTypeFdid := CheckFdidBrowse(tdbfield('NIPTYPE','FDID'))
  else if MultiFdid and Not (SecFdid = '') then
    CheckNIPTypeFdid := (SecFdid = tdbfield('NIPTYPE','FDID')) or (tdbfield('NIPTYPE','FDID') = '')
  else if Not MultiFdid then
    CheckNIPTypeFdid := true
  else
    CheckNIPTypeFdid := true;
end;

procedure TCalendarNMXForm.LoadNIPTypeBrowse;
Var RowNum    : Integer;
begin
  NIPTypeBrowse.clear;
  NIPTypeBrowse.ColCount      := 5;
  NIPTypeBrowse.RowCount      := 3;

  NIPTypeBrowse.ColWidths[00] := 000;
  NIPTypeBrowse.ColWidths[01] := 020;
  NIPTypeBrowse.ColWidths[02] := IIf(MultiFdid,050,0);
  NIPTypeBrowse.ColWidths[03] := 065;
  NIPTypeBrowse.ColWidths[04] := 750;

  NIPTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE ORDER BY CODE');
  While Not A('NIPTYPE').Eof do begin
    If CheckNIPTypeFdid then begin
      NIPTypeBrowse.Cells[0,RowNum] := Getfield('NIPTYPE','NIPTYPEID').AsString;
      NIPTypeBrowse.AddCheckBox(1,RowNum,false,false);
      NIPTypeBrowse.Cells[2,RowNum] := Getfield('NIPTYPE','FDID').AsString;
      NIPTypeBrowse.Cells[3,RowNum] := Getfield('NIPTYPE','CODE').AsString;
      NIPTypeBrowse.Cells[4,RowNum] := Getfield('NIPTYPE','DESCR').AsString;

      If (RowNum > 1) then
        NIPTypeBrowse.RowCount := NIPTypeBrowse.RowCount + 1;
      RowNum := RowNum + 1;
    end;
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');
end;

procedure TCalendarNMXForm.LoadLocationBrowse;
Var RowNum : Integer;
begin
  LocationBrowse.clear;

  LocationBrowse.ColCount      := 4;
  LocationBrowse.RowCount      := 3;

  LocationBrowse.ColWidths[00] := 000;
  LocationBrowse.ColWidths[01] := 020;
  LocationBrowse.ColWidths[02] := 045;
  LocationBrowse.ColWidths[03] := 750;

  LocationBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;


  Open_Query('LOCATION',false,'SELECT * FROM LOCATION ORDER BY CODE');
  While Not A('LOCATION').Eof do begin
    LocationBrowse.Cells[0,RowNum] := Getfield('LOCATION','LOCATIONID').AsString;
    LocationBrowse.AddCheckBox(1,RowNum,false,false);
    LocationBrowse.Cells[2,RowNum] := Getfield('LOCATION','CODE').AsString;
    LocationBrowse.Cells[3,RowNum] := Getfield('LOCATION','DESCR').AsString;
    If (RowNum > 1) then
      LocationBrowse.RowCount := LocationBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('LOCATION').Skip(1);
  end;
  CloseApollo('LOCATION');
end;

procedure TCalendarNMXForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 3;

  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 750;

  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('FDID',false,'SELECT FDID, DEPTNAME FROM FDID WHERE DISPATCH = ' + AddExpr('Y') + ' ORDER BY DEPTNAME ');
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := tdbfield('FDID','FDID');
    FdidBrowse.AddCheckBox(1,RowNum,false,false);
    FdidBrowse.Cells[2,RowNum] := tdbfield('FDID','DEPTNAME');
    If (RowNum > 1) then
      FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');
end;

procedure TCalendarNMXForm.FdidBrowseClick(Sender: TObject);
begin
  SaveButton.Enabled := true;
  LoadNIPTypeBrowse;
  ProcessCalendar(True);
end;

procedure TCalendarNMXForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

function TCalendarNMXForm.GetNIPTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NIPTypeBrowse.RowCount-2 do begin
    NIPTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.NIPTYPEID = ' + NIPTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')'
  else if (WhereString = '') and (mFireID = '13000') then
    WhereString := '(NI.NIPTYPEID <> 3)';
  GetNIPTypeWhere := WhereString;
end;

function TCalendarNMXForm.GetLocationWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to LocationBrowse.RowCount-2 do begin
    LocationBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.LOCATIONID = ' + LocationBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetLocationWhere := WhereString;
end;

function TCalendarNMXForm.GetLocationString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    StringVar  : String;
begin
  StringVar := '';
  For RowVar := 0 to LocationBrowse.RowCount-2 do begin
    LocationBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      StringVar := StringVar + SqlLookUp(LocationBrowse.Cells[0,RowVar],'LOCATIONID','LOCATION','DESCR') + ', ';
  end;
  If Not (StringVar = '') then
    StringVar := alltrim(substr(StringVar,1,Length(StringVar)-2));

  If (StringVar = '') then
    GetLocationString := 'All Locations'
  else  
    GetLocationString := StringVar;
end;

function TCalendarNMXForm.GetNIPTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    StringVar  : String;
begin
  StringVar := '';
  For RowVar := 0 to NIPTypeBrowse.RowCount-2 do begin
    NIPTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      StringVar := StringVar + SqlLookUp(NIPTypeBrowse.Cells[0,RowVar],'NIPTYPEID','NIPTYPE','DESCR') + ', ';
  end;
  If Not (StringVar = '') then
    StringVar := alltrim(substr(StringVar,1,Length(StringVar)-2));

  If (StringVar = '') then
    GetNIPTypeString := 'All Events'
  else
    GetNIPTypeString := StringVar;
end;

procedure TCalendarNMXForm.LocationBrowseClick(Sender: TObject);
begin
  SaveButton.Enabled := true;
  ProcessCalendar(true);
end;

procedure TCalendarNMXForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TCalendarNMXForm.DailyPlannerItemDblClick(Sender: TObject; Item: TPlannerItem);
Var NIID : String;
begin
  NIID               := IntToStr(Item.Tag);
  RunAlpineFormWithOwner(self,TNIForm,NIID,'NI',TNIForm.NewRecord,False);
end;

procedure TCalendarNMXForm.DailyPlannerPlannerNext(Sender: TObject);
begin
  SmallCalendar.Date := SmallCalendar.Date + 1;
  LargeCalendar.Date := SmallCalendar.Date;
  //ProcessCalendar(True);
  ProcessPlanner(SmallCalendar.Date);
end;

procedure TCalendarNMXForm.DailyPlannerPlannerPrev(Sender: TObject);
begin
  SmallCalendar.Date := SmallCalendar.Date - 1;
  LargeCalendar.Date := SmallCalendar.Date;
  ProcessCalendar(True);
  ProcessPlanner(SmallCalendar.Date);
end;

procedure TCalendarNMXForm.PrintButtonClick(Sender: TObject);
begin
  CalendarRepForm := TCalendarRepForm.Create(Application,LargeCalendar.Date);
  CalendarRepForm.QuickRep.Preview;
  CalendarRepForm.Free;
end;

procedure TCalendarNMXForm.SaveButtonClick(Sender: TObject);
begin
  RunSQL('DELETE FROM SYSREPSET WHERE FORMNAME = ' + AddExpr('CALENDARNMXFORM') + ' AND SECID = ' + pkValue(SecIDVar));
  Open_Query('SYSREPSET',true,'SELECT * FROM SYSREPSET WHERE 1=2');
  CallIt(CalendarNMXForm);
  CloseApollo('SYSREPSET');
  SaveButton.Enabled := false;
end;

procedure TCalendarNMXForm.CallIt(mComponent: TWinControl);
var i          : Integer;
    SGrid      : TAdvStringGrid;
    RowVar     : Integer;
    GridString : String;
    CheckValue : Boolean;
begin
  If mComponent = nil then
    exit;
  For i := 0 to mComponent.ControlCount-1 do begin
    If (mComponent.Controls[i] is TAlpineDateTime) then
      SaveSetting(SecIDVar, 'ALPINEDATETIME', TAlpineDateTime(mComponent.Controls[i]).Name, FormatDateTime('MM/DD/YYYY',TAlpineDateTime(mComponent.Controls[i]).Value), true )

    else if (mComponent.Controls[i] is TRadioButton) then
      SaveSetting(SecIDVar, 'RADIOBUTTON', TRadioButton(mComponent.Controls[i]).Name, IIf(TRadioButton(mComponent.Controls[i]).Checked,'Y','N'), true)

    else if (mComponent.Controls[i] is TAlpineCheckBox) then
      SaveSetting(SecIDVar, 'ALPINECHECKBOX', TRadioButton(mComponent.Controls[i]).Name, IIf(TAlpineCheckBox(mComponent.Controls[i]).Checked,'Y','N') , true)

    else if (mComponent.Controls[i] is TAlpineLookUp) then
      SaveSetting(SecIDVar, 'ALPINELOOKUP', TAlpineLookUp(mComponent.Controls[i]).Name, TAlpineLookUp(mComponent.Controls[i]).Value, true)

    else if (mComponent.Controls[i] is TAlpineEdit) then
      SaveSetting(SecIDVar, 'ALPINEEDIT', TAlpineEdit(mComponent.Controls[i]).Name, TAlpineEdit(mComponent.Controls[i]).Value, true)

    else if (mComponent.Controls[i] is TAdvStringGrid) then begin
      SGrid      := TAdvStringGrid(mComponent.Controls[i]);
      GridString := '';

      For RowVar := 0 to SGrid.RowCount-1 do begin
        SGrid.GetCheckBoxState(1,RowVar,CheckValue);
        If Not (SGrid.Cells[2,RowVar] = '') then
          GridString := GridString + IIf(CheckValue,'Y','N');
      end;
      SaveSetting(SecIDVar, 'ADVSTRINGGRID', TAdvStringGrid(mComponent.Controls[i]).Name, GridString, true);

    end else if (mComponent.Controls[i] is TAdvPanel) or (mComponent.Controls[i] is TMyScrollBox) or (mComponent.Controls[i] is TPanel) then
      CallIT(TWinControl(mComponent.Controls[i]));

  end;
end;

procedure TCalendarNMXForm.SaveSetting(VSecIDVar, CompType, CompName, CompValue: String; CompVisible : Boolean);
begin
  GetTable('SYSREPSET').Append;
  GetField('SYSREPSET','FORMNAME').AsString    := 'CALENDARNMXFORM';
  GetField('SYSREPSET','SECID').AsString       := VSecIDVar;
  GetField('SYSREPSET','COMPTYPE').AsString    := CompType;
  GetField('SYSREPSET','COMPNAME').AsString    := CompName;
  GetField('SYSREPSET','COMPVALUE').AsString   := CompValue;
  GetTable('SYSREPSET').Post;
end;

procedure TCalendarNMXForm.LoadSetting(VSecIDVar: String);
var CompName : TComponent;
    RowNum   : Integer;
    i        : Integer;
begin
  Open_Query('SYSREPSET',false,'SELECT * FROM SYSREPSET WHERE FORMNAME = ' +  AddExpr('CALENDARNMXFORM') + ' AND SECID = ' + pkvalue(VSecIDVar));
  while not A('SYSREPSET').Eof do begin
    If CalendarNMXForm.FindComponent(tdbfield('SYSREPSET','COMPNAME'))<> nil then begin
      CompName := CalendarNMXForm.FindComponent(tdbfield('SYSREPSET','COMPNAME'));
      If (CompName is TAlpineDateTime) then
        TAlpineDateTime(CompName).Value := GetField('SYSREPSET','COMPVALUE').AsDateTime
      else if  (CompName is TRadioButton) then
        TRadioButton(CompName).Checked := tdbfield('SYSREPSET','COMPVALUE') = 'Y'
      else if  (CompName is TAlpineCheckBox) then
        TAlpineCheckBox(CompName).Checked := tdbfield('SYSREPSET','COMPVALUE') = 'Y'
      else if  (CompName is TAlpineLookUp) then
        TAlpineLookUp(CompName).Value := GetField('SYSREPSET','COMPVALUE').AsString
      else if  (CompName is TAlpineEdit) then
        TAlpineEdit(CompName).Value := GetField('SYSREPSET','COMPVALUE').AsString
      else if  (CompName is TAdvStringGrid) then begin
        For RowNum := 0 to Length(tdbfield('SYSREPSET','COMPVALUE')) - 1 do
          TAdvStringGrid(CompName).SetCheckBoxState(1,RowNum,substr( tdbfield('SYSREPSET','COMPVALUE'), RowNum+1,1 ) = 'Y'  );
      end;
    end;
    A('SYSREPSET').Skip(1);
  end;
  CloseApollo('SYSREPSET');
end;

end. 
