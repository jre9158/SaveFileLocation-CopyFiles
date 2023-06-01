unit Disp;

interface

uses
  AppLst,
  Bde,
  sysutils,
  wintypes,
  commonvar,
  winprocs,
  messages,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  db,
  grids,
  extctrls,
  stdctrls,
  dbtables,
  resizer,
  mask,
  buttons,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  menus,
  OrpheusWrapper,
  DBCtrls,
  ComCtrls,
  CommonDisp,
  CommonDispVar,
  ShellAPI,
  AlpineBase,
  NormalBase,
  ImgList,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPanel,
  AlpineLookup,
  AdvToolBar,
  AdvGlowButton,
  AlpineGlowButton,
  CustomRP,
  NoBDERP,
  E911Object,
  MySBox,
  TlHelp32,
  AdvObj,
  AdvOfficeImage,
  BasePictureField,
  AlpineEdit, Blink;

type


  TFDIDItem = class
    FDID      : String;
    Abbreviate: String;
    NFIRS     : Boolean;
    EMS       : Boolean;
  end;

  TStatusList = class
    DateTimeStat   : TDateTime;
    DispStatCodeID : String;
    Descr          : String;
    Narrative      : String;
    DispCallID     : String;
    DispHistID     : String;
  end;

  TDispForm = class(TAlpineBaseForm)
    DCSTimer: TTimer;
    apparatuspopupmenu: TPopupMenu;
    ClearTime: TMenuItem;
    edittime: TMenuItem;
    editnotes: TMenuItem;
    ChangeStatusPopup: TPopupMenu;
    OpenAlarmsPopupMenu: TPopupMenu;
    NFIRSMenu: TMenuItem;
    EMSMenu: TMenuItem;
    DispCallChoice: TMenuItem;
    EndAlarmMenu: TMenuItem;
    AvailableApparatusMenu: TPopupMenu;
    ChangeLocationMenu: TMenuItem;
    changestatusmenu: TMenuItem;
    ChangeCallStatusMenu: TMenuItem;
    StartAlarmMenu: TMenuItem;
    E911Menu: TPopupMenu;
    E911TransferChoice: TMenuItem;
    RemoveCall: TMenuItem;
    ViewCall: TMenuItem;
    DeleteTruckChoice: TMenuItem;
    PutonCallChoice: TMenuItem;
    AddNewApparatus1: TMenuItem;
    AssigntoCall: TMenuItem;
    StatusMenu: TPopupMenu;
    AddStatusChoice: TMenuItem;
    EditStatusChoice: TMenuItem;
    DeleteStatusChoice: TMenuItem;
    NoAlarmsMenu: TPopupMenu;
    NewAlarmChoice: TMenuItem;
    EditDispList: TMenuItem;
    E911HistoryChoice: TMenuItem;
    FdidPopupMenu: TPopupMenu;
    AddFdidChoice: TMenuItem;
    DeleteFdidChoice: TMenuItem;
    PrimeFdidChoice: TMenuItem;
    LeftPanel: TPanel;
    BottomSplitter: TSplitter;
    Status911Splitter: TSplitter;
    TopSplitter: TSplitter;
    ApparatusGroupBox: TPanel;
    ApparatusGrid: TStringGrid;
    Status911Panel: TPanel;
    CallSplitter: TSplitter;
    CallHistoryPanel: TPanel;
    E911Grid: TStringGrid;
    StatusPanel: TPanel;
    CallInfoPanel: TPanel;
    ButtonPanel: TPanel;
    FDIDPanel: TPanel;
    Label4: TLabel;
    DispCallPanelBase: TPanel;
    DispCallPanel: TPanel;
    DispCallGrid: TStringGrid;
    RightPanel: TPanel;
    AvailablePanel: TPanel;
    AvailableApparatus: TStringGrid;
    TruckCheckPanel: TPanel;
    Splitter1: TSplitter;
    StatusGrid: TStringGrid;
    DispCallButton: TAlpineGlowButton;
    NewCall: TAlpineGlowButton;
    MapButton: TAlpineGlowButton;
    PropStatButton: TAlpineGlowButton;
    PreplanButton: TAlpineGlowButton;
    MCIButton: TAlpineGlowButton;
    RipRunButton: TAlpineGlowButton;
    DownButton: TAlpineGlowButton;
    UpButton: TAlpineGlowButton;
    NextAlarmButton: TAlpineGlowButton;
    SOPButton: TAlpineGlowButton;
    DispHistButton: TAlpineGlowButton;
    EndAlarm: TAlpineGlowButton;
    PictometryButton: TAlpineGlowButton;
    CallPanel: TResizerPanel;
    c: TShape;
    Shape5: TShape;
    Shape3: TShape;
    SiteNameLabel: TLabel;
    CrossLabel: TLabel;
    LineShape: TShape;
    IncNumLabel: TLabel;
    AlarmTimeL: TLabel;
    AddressLine: TShape;
    pLastNameLine: TShape;
    Shape10: TShape;
    DispBoxIDLabel: TLabel;
    Shape14: TShape;
    EventNumberL: TLabel;
    Shape20: TShape;
    IncNumField: TLabel;
    AlarmL: TLabel;
    DateTimeDispField: TLabel;
    AlarmNumLabel: TLabel;
    DispCallIDField: TLabel;
    FdidLabel: TLabel;
    Shape4: TShape;
    boxnumlabel: TLabel;
    FdidLine: TShape;
    CityLabel: TLabel;
    FdidField: TLabel;
    SiteNameField: TLabel;
    CityField: TLabel;
    Cross1Field: TLabel;
    DispCallTypeIDField: TLabel;
    DispBoxCodeField: TLabel;
    BoxNumField: TLabel;
    CallNameField: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape18: TShape;
    CallShape: TShape;
    WarnLine: TShape;
    WarnButton: TAlpineGlowButton;
    WarnNarrField: TBlinkLabel;
    NarrButton: TAlpineGlowButton;
    CallButton: TAlpineGlowButton;
    AddressField: TLabel;
    LocNarrButton: TAlpineGlowButton;
    LocationButton: TAlpineGlowButton;
    CallTypeButton: TAlpineGlowButton;
    FdidBrowse: TAdvStringGrid;
    Splitter2: TSplitter;
    NarrField: TMemo;
    NoteButton: TAlpineGlowButton;
    DisplayE911Window: TMenuItem;
    locnarrfield: TMemo;
    MobileSendMessage: TMenuItem;
    AvailableSendMessage: TMenuItem;
    ChangeCallType1: TMenuItem;
    ClockTimer: TTimer;
    ViewPreplanInfo1: TMenuItem;
    FdidScrollBar: TMyScrollBox;
    FindUnitonMap1: TMenuItem;
    FindUnitonMap2: TMenuItem;
    AcknowledgeMobileStamp: TMenuItem;
    NextAvailable: TMenuItem;
    ResourceBasedDispatching1: TMenuItem;
    AvailableSendMessageAllUnits: TMenuItem;
    SendMessageToAll: TMenuItem;
    HistoryButton: TAlpineGlowButton;
    ChangePriorityMenu: TMenuItem;
    findmenu: TMenuItem;
    DispTimerButton: TAlpineGlowButton;
    E911AddressMenu: TPopupMenu;
    ClearProQAAlertMenu: TMenuItem;
    ShowProQANarr: TMenuItem;
    AmherPanel: TPanel;
    AmherCheck: TCheckBox;
    TrainingLabel: TLabel;
    E911ImagePanel: TAdvPanel;
    AdvOfficeImage1: TAdvOfficeImage;
    AlarmImagePanel: TAdvPanel;
    AdvOfficeImage2: TAdvOfficeImage;
    StatusImagePanel: TAdvPanel;
    AdvOfficeImage3: TAdvOfficeImage;
    ApparatusImagePanel: TAdvPanel;
    IncidentImagePanel: TAdvPanel;
    AdvOfficeImage4: TAdvOfficeImage;
    AdvOfficeImage5: TAdvOfficeImage;
    OnlyOnCallCheck: TCheckBox;
    AdvPanel1: TAdvPanel;
    TimeField: TLabel;
    AdvOfficeImage6: TAdvOfficeImage;
    Label1: TLabel;
    PropStatLine: TShape;
    PropStatusLabel: TLabel;
    PropStatDescrField: TBlinkLabel;
    SearchPanel: TPanel;
    UnitNumSearchField: TAlpineEdit;
    OvcController1: TOvcController;
    OvcController2: TOvcController;
    Label2: TLabel;
    UnitNumStringExistsCheck: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ApparatusGridDrawCell(Sender: TObject; Col, Row: Longint; TheRect: TRect; State: TGridDrawState);
    procedure FormDestroy(Sender: TObject);
    procedure DCSTimerTimer(Sender: TObject);
    procedure DispCallGridDrawCell(Sender: TObject; Col, Row: Longint; Rect: TRect; State: TGridDrawState);
    procedure AvailableApparatusDrawCell(Sender: TObject; Col, Row: Longint; Rect: TRect; State: TGridDrawState);
    procedure ApparatusGridDblClick(Sender: TObject);
    procedure ApparatusGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AvailableApparatusMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DispCallGridDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DispCallGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AvailableApparatusDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure AvailableApparatusDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure NewCallClick(Sender: TObject);
    procedure EndAlarmClick(Sender: TObject);
    procedure ApparatusGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure WriteZetronSignal;
    procedure InServiceClick(Sender: TObject);
    procedure PreplanButtonClick(Sender: TObject);
    function GetSelectedTruck: TTruck;
    function GetSelectedAvailableTruck: TAvailableTruck;
    procedure AddTruckClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure NextAlarmButtonClick(Sender: TObject);
    procedure DispCallGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure E911GridDrawCell(Sender: TObject; ACol, ARow: Longint; Rect: TRect; State: TGridDrawState);
    procedure E911DispatchClick(Sender: TObject);
    procedure DispCallGridClickxx(Sender: TObject);
    procedure AvailableApparatusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusGridDblClick(Sender: TObject);
    procedure ApparatusGroupBoxResize(Sender: TObject);
    procedure E911GridDblClick(Sender: TObject);
    procedure StatusPanelEnter(Sender: TObject);
    procedure CallHistoryPanelEnter(Sender: TObject);
    procedure ApparatusGroupBoxEnter(Sender: TObject);
    procedure AvailablePanelEnter(Sender: TObject);
    procedure DispCallPanelEnter(Sender: TObject);
    procedure ManualPanelBaseEnter(Sender: TObject);
    procedure E911GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DispCallGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StatusGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
    procedure ClearTimeClick(Sender: TObject);
    procedure edittimeClick(Sender: TObject);
    procedure editnotesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ApparatusGridDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ApparatusGridDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure OpenAlarmsPopupMenuPopup(Sender: TObject);
    procedure DispCallChoiceClick(Sender: TObject);
    procedure EndAlarmMenuClick(Sender: TObject);
    procedure E911GridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure RemoveCallClick(Sender: TObject);
    procedure AssigntoCallClick(Sender: TObject);
    procedure ViewCallClick(Sender: TObject);
    procedure StatusGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure AddStatusChoiceClick(Sender: TObject);
    procedure EditStatusChoiceClick(Sender: TObject);
    procedure DeleteStatusChoiceClick(Sender: TObject);
    procedure AvailableApparatusMenuPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MapButtonClick(Sender: TObject);
    procedure EditDispListClick(Sender: TObject);
    procedure ApparatusGridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FdidPopupMenuPopup(Sender: TObject);
    procedure AddFdidChoiceClick(Sender: TObject);
    procedure PictometryButtonClick(Sender: TObject);
    procedure DownButtonClick(Sender: TObject);
    procedure UpButtonClick(Sender: TObject);
    procedure HistoryButtonClick(Sender: TObject);
    procedure WarnButtonClick(Sender: TObject);
    procedure AddressFieldDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure NarrButtonClick(Sender: TObject);
    procedure LocNarrButtonClick(Sender: TObject);
    procedure CallButtonClick(Sender: TObject);
    procedure LocationButtonClick(Sender: TObject);
    procedure ChangeStatusPopupPopup(Sender: TObject);
    procedure E911HistoryChoiceClick(Sender: TObject);
    procedure CallTypeButtonClick(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
    procedure FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure MCIButtonClick(Sender: TObject);
    procedure NoteButtonClick(Sender: TObject);
    procedure PropStatButtonClick(Sender: TObject);
    procedure E911MenuPopup(Sender: TObject);
    procedure DisplayE911WindowClick(Sender: TObject);
    procedure SOPButtonClick(Sender: TObject);
    procedure MobileSendMessageClick(Sender: TObject);
    procedure AvailableSendMessageClick(Sender: TObject);
    procedure ChangeCallType1Click(Sender: TObject);
    procedure ClockTimerTimer(Sender: TObject);
    procedure ButtonPanelResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FindUnitonMap1Click(Sender: TObject);
    procedure FindUnitonMap2Click(Sender: TObject);
    procedure apparatuspopupmenuPopup(Sender: TObject);
    procedure AvailableSendMessageAllUnitsClick(Sender: TObject);
    procedure SendMessageToAllClick(Sender: TObject);
    procedure DispHistButtonClick(Sender: TObject);
    procedure ChangePriorityMenuClick(Sender: TObject);
    procedure RipRunButtonClick(Sender: TObject);
    procedure DispTimerButtonClick(Sender: TObject);
    procedure E911CreateCallClick(Sender: TObject);
    procedure MCIButtonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ClearProQAAlertMenuClick(Sender: TObject);
    procedure ShowProQANarrClick(Sender: TObject);
    procedure AmherCheckClick(Sender: TObject);
    procedure AcknowledgeMobileStampClick(Sender: TObject);
    procedure E911GridClick(Sender: TObject);
    procedure TrainingLabelDblClick(Sender: TObject);
    procedure UnitNumSearchButtonClick(Sender: TObject);
    procedure UnitNumSearchFieldChange(Sender: TObject);
    procedure UnitNumStringExistsCheckClick(Sender: TObject);
  private
    { Private declarations }
    FDispFormcreated         : TDateTime;
    InSetTruckLists          : Boolean;
    UseSortOrd               : Boolean;
    DispHistIDOnStart        : Integer;
    bCustomDispCallColumn    : Boolean;
    CustomDispCallHeaderLabel: String;
    E911StringList           : TStringList;
    CurrentCallFdidList      : TStringList;    
    TempSortTruckList        : TList;
    StatusList               : TList;
    iCalledFrom911           : Boolean;
    BIS                      : TBitMap;
    Selected                 : TBitMap;
    ApparatusMouseDownColumn : Integer;
    DefaultDragCuror         : HCursor;
    PopupFdidVar             : String;
    DispositionMenu          : TMenuItem;
    LastDispHistID           : Integer;
    bColorMobileRed          : Boolean;
    FE911WavFile             : String;
    FDispNotWavFile          : String;
    FE911Window              : Boolean;
    FTimeMobileMess          : String;
    AddStatusNfirsMainid     : String;
    FDispatchScreen          : TDateTime;
    FAlreadyNotified         : TStringList;
    bUseNumRidersVerbal      : Boolean;
    PlayAllDispAlerts        : Boolean;
    procedure AcknowledgeMobileUpdate(ATruck: TTruck; DispStatCodeid: String);             
    function GetCallColor(iinc: Integer): Integer;
    procedure SetDisposition(Sender: TObject);
    procedure ShowDispCallForm(bShowProQA: Boolean);
    function GetApparatusCellText(ACol, ARow: Integer; var FontColor, BrushColor: TColor; var Alignment: TAlignment): string;
    function GetDispCallCellText(ACol, ARow: Integer; var FontColor, BrushColor: TColor; State: TGridDrawState) : String;
    function Get911CellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; State: TGridDrawState): String;
    function GetStatusCellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; State: TGridDrawState): String;
    function GetTruckStatus(ACol, ARow: Integer; var FontColor: TColor): String;
    procedure SetEditsToBlank;
    procedure EditStatusChange;
    procedure DeleteStatusHistory;
    procedure AddStatusToCall(NewRecordFunc: TDataSetNotifyEvent;bSetNfirsMainid: Boolean);
    procedure DispHistNewRecord(DataSet: TDataSet);
    procedure DispHistNewRecordFromE911Transfer(DataSet: TDataSet);
    procedure DummyFunc(DataSet: TDataSet);
    procedure AddDispHistNote(dispcallid,mE911id: String);
    procedure SortTruckList;
    procedure SetDispCall;
    procedure PlayDispatchNotification;    
    procedure Set911List(mInFormCreate: Boolean=False);
    procedure MoveTruckToIncident(iInc: Integer; DateTimeStat: TDateTime;bOnlyTagged: boolean = False);
    procedure MoveTruckFromIncidentToIncident(iTruck, iInc: Integer; DateTimeStat: TDateTime);
    procedure ChangeCallTypeProc;       
    procedure ResetOrder(SourceUnit, DestUnit: String);
    procedure NextAvailableClick(Sender: TObject);
    procedure NextAvailableResourceClick(Sender: TObject);
    procedure DoNextAvailableTransfer(bUnitSearch: Boolean);
    function CanDeleteApparatus: Boolean;
    function CancelAlarm(ADispCall : TDispCall): Boolean;
    procedure SetTagged(DispStatID: String; Tagged: Boolean);
    procedure SetApparatusGridWidth;
    procedure Delete911(Sender: TObject);
    procedure AddToChangeStatusMenu;
    procedure ChangeStatus(ATruck: TTruck; DispStatCodeID: String);
    procedure ChangeStatusPopupClick(Sender: TObject);
    procedure ChangeStatusMenuClick(Sender: TObject);
    procedure FindUnitOnCall(Sender: TObject);
    procedure ChangeCallStatusMenuClick(Sender: TObject);
    procedure ChangeLocation(Sender: TObject);
    procedure PutOnCallChoiceClick(Sender: TObject);
    procedure ChangeColor;
    procedure EditNFIRSApp(Sender: TObject);
    procedure EditNFIRSAppPersonnel(Sender: TObject);
    procedure ChangeUnitNumberClick(Sender: TObject);
    procedure EditAccountabilityClick(Sender: TObject);
    procedure UpdateButtons(ADispCall: TDispCall);
    procedure DisplayStatusPanel(mDisplay: Boolean);
    procedure SetLabelColors(mColor: String);
    procedure UpdateToIncident(iIncident: Integer;bUpdateGrids: Boolean);
    procedure LoadFdid;
    procedure LoadFdidBrowse;
    function WhereDispStat: String;
    procedure SendMobileMessage(mUnitNum,mDispCallID: string); overload;
    procedure ClearDispStatForApparatusAssignedToClosedCalls;
    procedure SendMobileMessage(UnitNumList: TStringList;mDispCallID: string); overload;
    function  GetAbbreviate(FdidVar: String): String;
    procedure UpdateFdidPanel(PrimeFdidVar: String; DispCallID: String);
    function  LoadMultiNFIRS(ADispCall: TDispCall; NewFdidVar: String): String;
    procedure LoadNewNFIRS(sender: TObject);
    procedure FdidCheckBoxClick(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure NFIRSMenuChoice(Sender: TObject);
    procedure emsMenuChoice(Sender: TObject);
    procedure WarnUpdate(ADispCall : TDispCall);
    procedure ResizeButtons;
    function Get911String(Occupant, Address, Phone, CallPhone, CallName, DispCallTypeDescr: String; QueuedCall: Boolean): String;
    function GetCurrentDispCall: TDispCall;
    function GetCurrentDispCallID: Integer;
    procedure PullUpCallTakerScreen(mMode: String);
    procedure CheckMobileMessages(TempDispHistID: Integer);
    procedure NfirsAppNewRecord(DataSet: TDataSet);
    procedure FindUnitOnMap(mUnitNum: String);
    procedure UpdateInv(DispLocID, DispStatID: String);
    function CheckOnlyOnCall: Boolean;
    procedure PlayDispAlerts;
    procedure HideStatusHistory;
  public
    DispCallList         : TStringList;
    mDisplayDispatchView : Boolean;
    TruckList            : TList;
    LastUpdateGrids      : TDateTime;
    constructor Create(AOwner: TComponent); override;
    class function PutSelectTruckBackInService(ATruck: TTruck; DispStatCodeid: String = ''): Boolean;
    procedure ChangeBevel(PanelName: String);
    function GetDispCallObject(DispCallID : String): TDispCall;
    procedure DispCallGridClickProc(bUpdateGrids: Boolean);
    procedure UpDateGrids(mInFormCreate: Boolean=False; bFromTimer: Boolean=False);
    procedure SetDispCallGridToLastRow;
    class procedure FillE911List(DisplayLength: Real; var The911List: TStringList);
    procedure SetTruckLists(TimerTriggeredRefresh: Boolean);
    class function  CheckPageStat(StatCodeVar: String): Boolean;
    class procedure ChangeAppStatus(DispStatID, DispCallID, DispStatCodeID, NFIRSMainID: String; UnitNum, Address: String; AlarmNum: Integer; DateTimeStat: TDateTime);
    procedure DispNoteFormNewRecord(DataSet: TDataSet);
    procedure UpdateFields(ADispCall: TDispCall;bCallUpdateGrids: Boolean);
    procedure TransferE911ID(mE911ID: String);                                             
    class procedure DisplayGoogleMap(ADispCall : TDispCall; DispCallID, PropID : String);
  end;
var
  DispForm : TDispForm;

const
  AVAILUNITNUM = 1;
  FDIDPANELWIDTH = 162;

implementation
uses SortGridView,
     DateUtils,
     secset,
     DispCallTake,
     DispSel,
     dispCall,
     DispClNo,
     fdfunc,
     GenFunc,
     AlpineSelect,
     DispStat,
     GisSys,
     DispHist,
     DispTimer,
     EditTime,
     DispProp,
     CommonFunc,
     NFIRSApp,
     Nfirs,
     EMS,
     Prop,
     DispEditNarr,
     E911,
     DispCallInfo,
     DispWarnNarr,
     GISFunc,
     SysSet,
     Page,
     MCI,
     FormFunc,
     DispNote,
     WavePlayer,
     E911Browse,
     Pict,
     CommonNfirs,
     ShowMemo,
     MobileMessageRedNMX,
     NfirsAppUseRA,
     NfirsAppRA,
     ChangeCallType,
     DispatchObject,
     DispSOP,
     NextAvailable,
     CommonPage,
     e911set,
     CommonProQA,
     CommonProQaService,
     Search,
     CommonRedNMX,
     ChangeUnitNumber,
     Main;

{$R *.DFM}
{$I rednmx.inc}

function TDispForm.getCallColor(iinc: Integer): Integer;
begin
  result := GlobalGetCallColor(iinc,dispcallList);
end;

function TDispForm.GetTruckStatus(ACol, ARow: Integer; var Fontcolor: TColor): String;
var ATruck: TTruck;
begin
  try
    result := '';
    if ARow<=TruckList.Count-1 then begin
      ATruck := TruckList.Items[ARow];
      if ACol <= ATruck.StatusTimesx.Count-1 then begin
        result:=ATruck.StatusTimesx[ACol];
        if TStatusTime(ATruck.StatusTimesx.Objects[ACol]).ShowRed then
          FontColor := clRed;
      end;
    end;
  except
  end;
end;

function TDispForm.GetDispCallCellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; State: TGridDrawState): String;
var iinc      : Integer;
    iColor    : Integer;
    mDispCall : TDispCall;
begin
  fontcolor  := clBlack;
  BrushColor := clWindow;
  if ARow = 0 then begin
    BrushColor := clblack;
    fontcolor  := clyellow;
    case ACol of
      0: Result := '';
      1: Result := 'Status';
      2: Result := 'Inc#';
      3: Result := 'Address';
      4: Result := 'Occupant';
      5: if mfireid = '52280' then
           Result := 'District'
         else
           Result := 'Station';
      6: Result := 'Time';
      7: Result := 'Call Type';
      8: Result := 'Nature of Call';
      9: Result := IIf(MultiFdid,'Fire Dept','');
      10: begin
        Result := iif(CheckModule('PROQA') or CheckModule('PROQAF'),'ProQA','');
        if mFireid = 'AMHER' then
          result := 'Data Link Xfer #';
        end;
      11: Result := CustomDispCallHeaderLabel;
    end;
  end else begin
    iinc       := ARow-1;
    mDispCall := TDispCall(DispCallList.Objects[iinc]);
    iColor := GetCallColor(iinc);
    FontColor  := TIncColor(IncColorList[iColor]).FontColor;
    BrushColor := TIncColor(IncColorList[iColor]).BrushColor;
    with mDispCall do begin
      Case ACol of
        0: begin
          If (DispCallGrid.Row=ARow) then
            Result := '==>'
          else
            Result := '';
          BrushColor := clMaroon;
          FontColor  := clWhite;
          end;
        1: Result := IncStat;
        2: Result := substr(IncNum,5,6);
        3: Result := Address;
        4: Result := SiteName;
        5: if mfireid = '52280' then
             Result := DispBoxCode
           else
             Result := DispBoxCode;
        6: Result := FormatDateTime('HH:NN',DateTimeDisp);

        7: begin
             If anystrtoint(DispCallTypeID) = 0 then
               Result := 'n/a'
             else begin
               if GetDispCallTypeObject(DispCallTypeID)<>nil then begin
                 Result := GetDispCallTypeObject(DispCallTypeID).Descr;
                 If (GetDispSubTypeObject(DispSubTypeID)<>nil) and (DispSubTypeID <> '') then begin
                   Result := Result + ' - ' + GetDispSubTypeObject(DispSubTypeID).Descr;
                 end;
               end else
                Result := '';
             end;
           end;
        8: Result := CallInfo;
        9: Result := GetAbbreviate(FDID);
        10: begin
            result := iif(CheckModule('PROQA') or CheckModule('PROQAF'),ProQAStateX,'');
            if (ProQAAlertStates.IndexOf(ProQAStateX)>=0) and (ShowDispCallProQAAlerts.IndexOf(mDispCall.DispCallid)>=0) then begin
              FontColor  := TIncColor(IncColorList[iColor]).BrushColor;
              BrushColor := TIncColor(IncColorList[iColor]).FontColor;
            end;
            if mfireid = 'AMHER' then
              result := mDispCall.AddInfo;
          end;
        11: result := DispatchRadioChannelDescr;
      end;
    end;
  end;
end;

function TDispForm.GetApparatusCellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; var Alignment: TAlignment): String;
var iInc  : Integer;
    iStat : Integer;
    iTruck: Integer;
    iColor: Integer;
begin
  Try
    istat      := ACol-3;
    itruck     := ARow-ApparatusGrid.FixedRows;
    fontcolor  := clBlack;
    BrushColor := clbtnface;

    Alignment  := taLeftJustify;
    if ARow = 0 then begin
      BrushColor := clblack;
      fontcolor  := clyellow;

      if ACol = 0 then
        Result:='Tag'
      else if ACol = 1 then
        Result:='Rig#'
      else if ACol = 2 then
        Result := 'Location'
      else begin
        Alignment := taCenter;
        If TDispStatCode(DispStatCodeList[iStat]).ShortDescr = '' then
          Result    := TDispStatCode(DispStatCodeList[iStat]).Code
        else
          Result    := TDispStatCode(DispStatCodeList[iStat]).ShortDescr;

      end
    end else if ACol<=2 then begin
      try
        if iTruck <= TruckList.Count-1 then
          iinc := DispCallList.IndexOf(TTruck(TruckList[itruck]).DispCallID);


        if iinc < 0 then begin
          FontColor  := clWhite;
          BrushColor := clBlack;
        end else begin
          iColor     := GetCallColor(iinc);
          FontColor  := TIncColor(IncColorList[iColor]).FontColor;
          BrushColor := TIncColor(IncColorList[iColor]).BrushColor;
        end;
      except
      end;

      if ACol=0 then begin
        Result:='Tag';
        if ARow>=ApparatusGrid.FixedRows then
         BrushColor:=clMaroon;
        end
      else if ACol=1 then
        if mFireID='01261' then
          Result := SqlLookup(TTruck(TruckList[itruck]).UnitNum,'UNITNUM','DISPSTAT','DESCR') + iif(TTruck(TruckList[itruck]).OnLineMobile,'*','')+' '+TTruck(TruckList[itruck]).OtherInfo
        else
          Result := TTruck(TruckList[itruck]).UnitNum + iif(TTruck(TruckList[itruck]).OnLineMobile,'*','')+' '+TTruck(TruckList[itruck]).OtherInfo
      else if ACol=2 then
        Result := TTruck(TruckList[itruck]).Address;
    end else begin
      Result:=GetTruckStatus(istat, itruck,FontColor);
    end;
  except
  end;
end;

function SetDefaultWidth(FieldNameVar: String; DefaultValue: Integer): Integer;
begin
  If GetField('DISPSCREEN',FieldNameVar).AsString = '' then
    SetDefaultWidth := 0
  else if GetField('DISPSCREEN',FieldNameVar).AsInteger = 0 then
    SetDefaultWidth := DefaultValue
  else
    SetDefaultWidth := GetField('DISPSCREEN',FieldNameVar).AsInteger;
end;

function TDispForm.CanDeleteApparatus: Boolean;
begin
  result := CheckSecVar('DISPSETUP');
  if mFireID = '60061' then
    result := False;  //08/28/2009 - temporary for Yonkers until they go online.  mjs.
end;

constructor TDispForm.Create(AOwner: TComponent);
begin
  FDispFormcreated  := Now;
  
  inherited Create(AOwner);
end;

function IsTraining: Boolean;
begin
  result := at('TRAIN',UpperCase(ParamStr(1))) > 0;
end;

procedure TDispForm.FormCreate(Sender: TObject);
var NextAvailableMenu : TMenuItem;
    E911PropMenu      : TMenuItem;
begin
  CurrentCallFdidList     := TStringList.Create;
  AmherCheck.Checked      := false;
  AmherPanel.Visible      := mFireid = 'AMHER';
  OnlyOnCallCheck.Visible := mFireid = 'AMHER';
  DispCallGrid.ColCount   := 13;
  if mfireid = '01920' then begin
    NarrButton.Caption     := 'Call Comments';
    locnarrfield.Enabled   := False;
    locnarrfield.Visible   := False;
    LocNarrButton.Visible  := False;
    LocNarrButton.Enabled  := False;
  end;
  if UseRadio then begin
    bCustomDispCallColumn     := True;
    DispCallGrid.ColCount     := DispCallGrid.ColCount+1;
    CustomDispCallHeaderLabel := 'Radio Channel';
  end else begin
    bCustomDispCallColumn := False;
    CustomDispCallHeaderLabel := '';
  end;
  bUseNumRidersVerbal       := (mfireid='30050') or (mfireid='52067') or ((mFireid='12345'));
  LastUpdateGrids           := Now;
  LastDispHistID            := 0;
  InSetTruckLists           := False;
  DispHistIDOnStart         := GetMaxPK(GlobalAdoConnection,GlobalAdoConnection.TableType,'DISPHIST');
  FDispatchScreen           := Now;
  FAlreadyNotified          := TStringList.Create;
  PlayAllDispAlerts         := sqlLookup(AlpineGetComputerName,'computername','computer','PLAYALLDISPALERTS')='Y';
  IncShowSeconds            := SQLLookUp(mFireID,'FDID','NFIRSSET','SHOWSECOND') = 'Y';

  GotoNextControlOnReturn   := false;
  RemoveCall.Visible        := True;
  FdidPanel.Visible         := MultiFdid;
  TruckCheckPanel.Visible   := true;
  FdidField.Visible         := MultiFdid;
  FdidLabel.Visible         := MultiFdid;
  FdidLine.Visible          := MultiFdid;
  TrainingLabel.Visible     := IsTraining;
  bColorMobileRed           := (mFireid = '12345') or (mFireid='30050') or (mFireid='30007') or (mFireid='30064') or (mFireid='52067') or  (mFireid='30021 ');
  MapButton.Visible         := CheckModule('GIS');
  MCIButton.Visible         := CheckModule('MCI');
  PictometryButton.Visible  := CheckModule('PICT');
  DispHistButton.Visible    := CheckSecVar('DISPSETUP') or (mFireid = '60061') or (mFireid = '02220') or (mFireid = '01261');

  CallHistoryPanel.Visible  := (CheckModule('E911') or CheckModule('CADINT') or CheckModule('CALLID')) or UseDispQueue;

  PropStatusLabel.Visible       := (mFireid = '12345') or (mFireid = '07140');
  PropStatDescrField.Visible    := (mFireid = '12345') or (mFireid = '07140');
  PropStatLine.Visible          := (mFireid = '12345') or (mFireid = '07140');

  if UseDispQueue then begin
    E911ImagePanel.Caption.Text := '<P align="center"><B>CALL<BR>QUEUE</B></P>';
    DisplayE911Window.Caption   := 'Expand Call Queue';
  end;

  CallSplitter.Visible      := CallHistoryPanel.Visible;
  DeleteTruckCHoice.Visible := CanDeleteApparatus;

  TempSortTruckList         := TList.Create;
  Selected                  := TBitMap.Create;
  Selected.LoadFromResourceName(hInstance,'SELECTED');
  BIS                       := TBitMap.Create;
  BIS.LoadFromResourceName(hInstance,'BIS');

  Open_Query('DISPSET',false,'SELECT RIPRUN, DISPTIMER, E911WINDOW, USESORTORD, TIMEMOBILEMESS, E911WAVFILE, SHOWNTH FROM DISPSET WHERE FDID = ' + AddExpr(mFireID));
  FTimeMobileMess         := GetField('DISPSET','TIMEMOBILEMESS').AsString;
  NextAlarmButton.Visible := tdbfield('DISPSET','SHOWNTH') = 'Y';
  UseSortOrd              := tdbfield('DISPSET','USESORTORD') = 'Y';
  DCSTimer.Interval       := IIfI(GetField('DISPSET','DISPTIMER').AsInteger > 0,GetField('DISPSET','DISPTIMER').AsInteger * 1000,10000);
  FE911WavFile            := tdbfield('DISPSET','E911WAVFILE');
  FE911Window             := tdbField('DISPSET','E911WINDOW')='Y';
  RipRunButton.Visible    := tdbField('DISPSET','RIPRUN') = 'Y';
  CloseApollo('DISPSET');

  ClearDispStatForApparatusAssignedToClosedCalls;

  Open_Query('MOBSET',false,'SELECT DISPNOTWAVFILE FROM MOBSET WHERE FDID = ' + AddExpr(mFireID));
  FDispNotWavFile := tdbField('MOBSET','DISPNOTWAVFILE');
  if FDispNotWavFile<>'' then
    FDispNotWavFile := ExtractFileDir(ParamStr(0))+'\'+FDispNotWavFile;
  if not FileExists(FDispNotWavFile) then
    FDispNotWavFile := '';

  CloseApollo('MOBSET');

  AvailableSendMessage.Enabled         := FTimeMobileMess<>'';
  AvailableSendMessageAllUnits.Enabled := FTimeMobileMess<>'';
  MobileSendMessage.Enabled            := FTimeMobileMess<>'';

  If not GlobalE911SetVar then
    TE911SetForm.E911SetVar;

  Open_Query('DISPSCREEN',true,'SELECT * FROM DISPSCREEN WHERE FDID = ' + AddExpr(mFireID));
  If Not A('DISPSCREEN').RecordsExist then begin
    A('DISPSCREEN').Append;
    GetField('DISPSCREEN','FDID').AsString                 := mFireID;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS0').AsInteger := 25;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS1').AsInteger := 25;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS2').AsInteger := 25;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS3').AsInteger := 25;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS4').AsInteger := 25;
    GetField('DISPSCREEN','AVAILABLEAPPARATUS5').AsInteger := 25;

    GetField('DISPSCREEN','APPARATUS1').AsInteger          := 25;
    GetField('DISPSCREEN','APPARATUS2').AsInteger          := 25;


    GetField('DISPSCREEN','STATUS911PANEL').AsInteger      := 80;
    GetField('DISPSCREEN','RIGHTPANEL').AsInteger          := 266;
    GetField('DISPSCREEN','CALLINFOPANEL').AsInteger       := 238;
    GetField('DISPSCREEN','FDIDPANELWIDTH').AsInteger      := FDIDPANELWIDTH;
    GetField('DISPSCREEN','DISPCALLPANELBASE').AsInteger   := 147;
    GetField('DISPSCREEN','CALLHISTORYPANEL').AsInteger    := 300;
    A('DISPSCREEN').Post;
  end;

  with AvailableApparatus do begin
    ColWidths[0] := SetDefaultWidth('AVAILABLEAPPARATUS0',25);
    ColWidths[1] := SetDefaultWidth('AVAILABLEAPPARATUS1',50);
    ColWidths[2] := SetDefaultWidth('AVAILABLEAPPARATUS2',50);
    ColWidths[3] := SetDefaultWidth('AVAILABLEAPPARATUS3',50);
    ColWidths[4] := SetDefaultWidth('AVAILABLEAPPARATUS4',50);
    ColWidths[5] := SetDefaultWidth('AVAILABLEAPPARATUS5',50);
  end;

  with DispCallGrid do begin
    ColWidths[0] := 025;
    if UseDispQueue then
      ColWidths[1] := 050
    else
      ColWidths[1] := 000;
    ColWidths[2] := 050;

    if (mFireID = '28019') then
      ColWidths[3] := 220
    else
      ColWidths[3] := 180;
    if (FireID='72014') or (FireID='06090') then
      ColWidths[4] := 200
    else if (mFireID = '28019') or (mFireID = '52280') then
      ColWidths[4] := 250
    else
      ColWidths[4] := 140;

    if (FireID = 'KOCKW') or (FireID='52280') then
      ColWidths[5] := 100
    else
      ColWidths[5] := 0;

    ColWidths[6] := 050;

    if (FireID='72000') then
      ColWidths[7] := 300
    else if (FireID='72014') or (FireID='06090') or (FireID='52280') then
      ColWidths[7] := 300
    else if (mFireID = '28019') then
      ColWidths[7] := 2000
    else
      ColWidths[7] := 100;

    ColWidths[8] := 000;

    if (mFireID = '20004') or (mFireID = '28019') then begin
      ColWidths[9] := 0;
      ColWidths[10]:= 0;
    end else begin
      ColWidths[9] := IIfI(MultiFdid,100,0);
      ColWidths[10]:= 100;
    end;
    ColWidths[11]:= 2000;
  end;

  with StatusGrid do begin
    ColWidths[0] := 025;
    ColWidths[1] := 040;
    ColWidths[2] := 125;
    ColWidths[3] := 999;
  end;

  with E911Grid do begin
    ColWidths[0] := 025;
    ColWidths[1] := 060;
    ColWidths[2] := 999;
  end;

  ApparatusGrid.ColWidths[0] := 25;
  ApparatusGrid.ColWidths[1] := SetDefaultWidth('APPARATUS1',55);
  ApparatusGrid.ColWidths[2] := SetDefaultWidth('APPARATUS2',100);

  SetApparatusGridWidth;

  Status911Panel.Height      := SetDefaultWidth('STATUS911PANEL',80);
  RightPanel.Width           := SetDefaultWidth('RIGHTPANEL',266);
  CallInfoPanel.Height       := SetDefaultWidth('CALLINFOPANEL',238);


  DispCallPanelBase.Height   := SetDefaultWidth('DISPCALLPANELBASE',147);
  CallHistoryPanel.Width     := SetDefaultWidth('CALLHISTORYPANEL',300);
  FdidPanel.Width            := SetDefaultWidth('FDIDPANELWIDTH',FDIDPANELWIDTH);
  if FdidPanel.Width = 0 then
    FdidPanel.Width          := FDIDPANELWIDTH;

  CloseApollo('DISPSCREEN');

  TruckList          := TList.Create;
  DispCallList       := TStringList.Create;
  AvailableTruckList := TList.Create;
  E911StringList     := TStringList.Create;
  StatusList         := TList.Create;

  LoadFdid;

  AddToChangeStatusMenu;
  UpDateGrids(True);
  WindowState               := wsMaximized;

  If InserviceList1.Count=0 then
    ShowMessage('Note - There are no Status Codes defined as "InService" - Ensure that this code is defined!');

  if SecIDVar<>'' then begin
    try
      Open_Query('DISPLOGON',True,'SELECT * FROM DISPLOGON WHERE COMPUTERNAME = '+AddExpr(AlpineGetComputerName));
      if A('DISPLOGON').RecordsExist then
        GetTable('DISPLOGON').Edit
      else
        GetTable('DISPLOGON').Insert;
      GetField('DISPLOGON','COMPUTERNAME').AsString := AlpineGetComputerName;
      GetField('DISPLOGON','DATETIMELOGON').AsDateTime := Now;

      GetField('DISPLOGON','SECID').AsString := SecIDVar;
      A('DISPLOGON').Post(False);
    finally
      CloseApollo('DISPLOGON');
    end;
  end;

  Open_query('DISPAPP',False,'SELECT CODE,DISPAPPID,HIDDEN,DESCR FROM DISPAPP ORDER BY CODE');
  while not A('DISPAPP').eof do begin
    if tdbfield('DISPAPP','HIDDEN')<>'Y' then begin
      NextAvailableMenu := TMenuItem.Create(self);
      NextAvailableMenu.Caption := tdbfield('DISPAPP','CODE')+'-'+tdbfield('DISPAPP','DESCR');
      NextAvailableMenu.Tag := GetField('DISPAPP','DISPAPPID').AsInteger;
      NextAvailableMenu.OnClick := NextAvailableClick;
      NextAvailable.Add(NextAvailableMenu);
      A('DISPAPP').Skip(1);
    end;
  end;
  CloseApollo('DISPAPP');
  Open_Query('DISPATTR',False,'SELECT * FROM DISPATTR ORDER BY CODE');
  if A('DISPATTR').RecordsExist then begin
    NextAvailableMenu := TMenuItem.Create(self);
    NextAvailableMenu.Caption := '-';
    NextAvailable.Add(NextAvailableMenu);
    NextAvailableMenu := TMenuItem.Create(self);
    while not A('DISPATTR').eof do begin
      NextAvailableMenu         := TMenuItem.Create(self);
      NextAvailableMenu.Tag     := GetField('DISPATTR','DISPATTRID').AsInteger;
      NextAvailableMenu.Caption := tdbfield('DISPATTR','CODE')+'-'+tdbfield('DISPATTR','DESCR');
      NextAvailableMenu.OnClick := NextAvailableResourceClick;
      NextAvailable.Add(NextAvailableMenu);
      a('DISPATTR').Skip(1);
    end;
  end;
  CloseApollo('DISPATTR');

  If mFireID = 'CVANY' then begin
    SOPButton.Caption   := 'Paging';
    SOPButton.ImageName := 'PAGE';
  end;

  If mFireID = '15037' then begin
    SOPButton.Visible      := false;
    PropStatButton.Visible := false;
  end;

  if (mFireid = 'AMHER') then begin
    PropStatButton.caption := 'Property Status';
    ChangeCallStatusMenu.Caption := 'Call Comments';
  end;

  If mFireID = '12345' then begin
    Open_Query('PROP',false,'SELECT STRNUM, STREET, PROPID, CITY, STATE, PLASTNAME FROM PROP WHERE DISPE911 = ' + AddExpr('Y'));
    while not A('PROP').eof do begin
      E911PropMenu         := TMenuItem.Create(self);
      E911PropMenu.Caption := alltrim(tdbfield('PROP','STRNUM')+' '+tdbfield('PROP','STREET')) + ', ' + tdbfield('PROP','CITY') + ', ' + tdbfield('PROP','STATE') + ' - ' + tdbfield('PROP','PLASTNAME');
      E911PropMenu.Tag     := GetField('PROP','PROPID').AsInteger;
      E911PropMenu.OnClick := E911CreateCallClick;
      E911AddressMenu.Items.Add(E911PropMenu);
      A('PROP').Skip(1);
    end;
    CloseApollo('PROP');
  end;

  If mFireID = '23239' then begin
    NextAlarmButton.Caption := 'Next Alarm';
  end;

  ClearProQAAlertMenu.visible := UseParamount;
  ShowProQANarr.Visible       := ClearProQAAlertMenu.Visible;
end;

procedure TDispForm.SetApparatusGridWidth;
Var AvailableWidth : Integer;
    DispStatCount  : Integer;
    i              : Integer;
    ColWidth       : Integer;
begin
  DispStatCount := 0;
  For i := 0 to DispStatCodeList.Count - 1 do begin
    If TDispStatCode(DispStatCodeList[i]).SortOrd > 0 then
      DispStatCount := DispStatCount + 1;
  end;
  ApparatusGrid.ColCount := DispStatCount + 3;
  AvailableWidth         := ApparatusGrid.Width - 17 - ApparatusGrid.ColWidths[0] - ApparatusGrid.ColWidths[1] - ApparatusGrid.ColWidths[2];
  IF DispStatCount>0 then
    ColWidth               := Trunc(AvailableWidth/DispStatCount) - 2
  else
    ColWidth := 50;
  For i := 3 to ApparatusGrid.ColCount-1 do
    ApparatusGrid.ColWidths[i] := ColWidth;
end;


procedure TDispForm.FormShow(Sender: TObject);
begin
  Application.ProcessMessages;

  ChangeBevel('NFIRSMAIN');
  DispCallGrid.SetFocus;

  If GlobalShowDispatchTimer then begin
    DispTimerButton.Visible := true;
    if (mfireID <> '52109') and (mfireID <> '23239') and (mfireid <> '28028') then
      DispTimerButtonClick(self);
  end else
    DispTimerButton.Visible := false;

  If mDisplayDispatchView then
    PostMessage(self.Handle,wm_user,0,0);
  DispCallGridClickProc(False);
  ResizeButtons;
  DCSTimer.Enabled := true;

  If mFireID = 'KOCEM' then begin
    SOPButton.Visible      := false;
    DispHistButton.Visible := false;
    PropStatButton.Visible := false;
  end else if mFireID = 'AMHER' then begin
    SOPButton.Caption      := 'Mutual Aid Plan';
    SOPButton.ImageName    := 'APPARATUS';
    PreplanButton.Caption  := 'Address Info';
  end;

  If mFireID = 'CVANY' then
    DispCallButton.ImageName := 'EMS';

  ScaleButtonsOnPanelUsingTags('H',ButtonPanel);
  AmherCheck.Checked  := mFireID = 'AMHER';
  SearchPanel.Visible := (mFireID = '30064') or (mFireID = '30007') or (mFireID = '12345') or (mFireID = '52086');
end;

procedure TDispForm.AddToChangeStatusMenu;
var i,j            : Integer;
    m             : TMenuItem;
    mSub          : TMenuItem;
    ADispStatCode : TDispStatCode;
    ADispLoc      : TDispLoc;
    NFIRSAppDisp  : TApolloData;
begin
  ChangeCallStatusMenu.Visible := False;

  for j := 0 to DispStatCodeList.Count - 1 do begin
    if mfireid='AMHER' then
      i := DispStatCodeList.Count - 1 -j
    else
      i := j;
    ADispStatCode := TDispStatCode(DispStatCodeList.Items[i]);
    If (ADispStatCode.SortOrd > 0) then begin
      m             := TMenuItem.Create(self);
      m.Tag         := strtoint(ADispStatCode.DispStatCodeID);
      m.caption     := alltrim(ADispStatCode.Code) + ' - '+ADispStatCode.Descr;
      m.OnClick     := ChangeStatusPopupClick;
      ChangeStatusPopup.Items.Add(m);
    end else if (ADispStatCode.TruckAlarm = 'A') then begin
      m                            := TMenuItem.Create(self);
      m.Tag                        := strtoint(ADispStatCode.DispStatCodeID);
      m.caption                    := alltrim(ADispStatCode.Code) + ' - '+ADispStatCode.Descr;
      ChangeCallStatusMenu.Visible := True;
      ChangeCallStatusMenu.Caption := 'Add Status';
      m.OnClick                    := ChangeCallStatusMenuClick;
      ChangeCallStatusMenu.Insert(0,m);
    end;
    If (ADispStatCode.TruckAlarm = 'T') then begin
      m             := TMenuItem.Create(self);
      m.Tag         := strtoint(ADispStatCode.DispStatCodeID);
      m.caption     := alltrim(ADispStatCode.Code) + ' - '+ADispStatCode.Descr;
      m.OnClick     := ChangeStatusMenuClick;
      ChangeStatusMenu.Insert(0,m);
    end;
  end;

  m         := TMenuItem.Create(self);
  m.caption := 'Edit Unit Report';
  m.OnClick := EditNFIRSApp;
  ChangeStatusPopup.Items.Add(m);

  m         := TMenuItem.Create(self);
  m.caption := 'Edit Personnel on Unit';
  m.OnClick := EditNFIRSAppPersonnel;
  ChangeStatusPopup.Items.Add(m);

  If (mFireID = '28028') then begin
    m         := TMenuItem.Create(self);
    m.caption := 'Change Unit Number';
    ChangeStatusPopup.Items.Add(m);
    m.OnClick := ChangeUnitNumberClick;
  end;

  If (mFireID = '12345') or (mFireID = '30050') then begin
    m         := TMenuItem.Create(self);
    m.caption := 'Edit Accountability';
    ChangeStatusPopup.Items.Add(m);
    m.OnClick := EditAccountabilityClick;
  end;

  DispositionMenu         := TMenuItem.Create(self);
  DispositionMenu.caption := 'Disposition';

  NFIRSAppDisp := Open_Query('SELECT * FROM NFIRSAPPDISP ORDER BY DESCR DESC');
  while not NFIRSAppDisp.eof do begin
    m         := TMenuItem.Create(self);
    m.caption := tdbfield(NFIRSAppDisp,'DESCR');
    m.tag     := GetField(NFIRSAppDisp,'NFIRSAPPDISPID').AsInteger;
    m.OnClick := SetDisposition;
    DispositionMenu.Add(m);
    NFIRSAppDisp.Skip(1);
  end;
  if (mFireid = '30021') and (nfirsappdisp.queryreccount>0) then // mjs 06/10/2015 - I think this should be added to all departments...  Otherwise it is never visible.
    ChangeStatusPopup.Items.Add(DispositionMenu);
  NFIRSAppDisp.Free;

  for i := 0 to DispLocList.Count - 1 do begin
    ADispLoc  := TDispLoc(DispLocList.Items[i]);
    m         := TMenuItem.Create(self);
    m.Tag     := strtoint(ADispLoc.DispLocID);
    m.caption := ADispLoc.Code + ' - ' + ADispLoc.Descr;
    m.OnClick := ChangeLocation;
    ChangeLocationMenu.Insert(0,m);
  end;
  if FTimeMobileMess<>'' then begin
    m := TMenuItem.Create(self);
    m.Name := 'SendMessageToMobile';
    m.caption := MobileSendMessage.Caption;
    m.OnClick := MobileSendMessage.OnClick;
    ChangeStatusPopup.Items.Add(m);
  end;
end;

procedure TDispform.SetDisposition(Sender: TObject);
var mTruck: TTruck;
begin
  mTruck := GetSelectedTruck;
  RunSql('UPDATE NFIRSAPP SET NFIRSAPPDISPID = '+inttostr(TMenuItem(Sender).Tag) + ' WHERE DISPCALLID = '+PkValue(mTruck.DispCallId)+' AND UNITNUM = '+Addexpr(mTruck.UnitNum));
end;

procedure TDispForm.EditNFIRSApp(Sender: TObject);
var ADispCall    : TDispCall;
    ATruck       : TTruck;
    NFIRSAppID   : String;
begin
  ATruck           := GetSelectedTruck;
  Open_query('NFIRSAPP',False,'SELECT NFIRSAPPID FROM NFIRSAPP WHERE DISPCALLID = ' + PkValue(ATruck.DispCallID) + ' AND UNITNUM = ' + AddExpr(ATruck.UnitNum));
  NFIRSAppID := GetField('NFIRSAPP','NFIRSAPPID').AsString;
  CloseApollo('NFIRSAPP');

  if anystrtoint(NfirsAppid)>0 then begin
    NFIRSAppForm := TNFIRSAppForm.Create(application,'NFIRSAPP',NFIRSAppID,NfirsAppNewRecord);
    NFIRSAppForm.ShowModal;
    NFIRSAppForm.Free;
  end else
    appendtolog('NFIRSAPPID not valid in TDispForm.EditNFIRSApp');
  UpdateGrids;
end;

procedure TDispForm.NfirsAppNewRecord(DataSet: TDataSet);
var ATruck: TTruck;
begin
  ATruck           := GetSelectedTruck;
  if ATruck <> nil then
    DataSet.FieldByName('DISPCALLID').AsString := pkValue(ATruck.DispCallID);
end;

procedure TDispForm.EditNFIRSAppPersonnel(Sender: TObject);
var ADispCall    : TDispCall;
    ATruck       : TTruck;
    NFIRSAppID   : String;
begin
  ATruck           := GetSelectedTruck;
  Open_query('NFIRSAPP',False,'SELECT NFIRSAPPID FROM NFIRSAPP WHERE DISPCALLID = ' + PkValue(ATruck.DispCallID) + ' AND UNITNUM = ' + AddExpr(ATruck.UnitNum));
  NFIRSAppID := GetField('NFIRSAPP','NFIRSAPPID').AsString;
  CloseApollo('NFIRSAPP');
  RunAlpineForm(TNfirsAppRAForm,NfirsAppID,'NFIRSAPP',NfirsAppnewRecord)
end;

procedure TDispForm.EditAccountabilityClick(Sender: TObject);
var ATruck           : TTruck;
    mnumridersverbal : String;
begin
  ATruck           := GetSelectedTruck;
  if ATruck <> nil then begin
    mnumridersverbal := sqllookup(ATruck.DispStatID,'dispstatid','dispstat','numridersverbal');
    if InputDlg('Edit Accountability','Accountability',mnumridersverbal,'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!') then
      RunSql('update dispstat set numridersverbal = '+AddExpr(mnumridersverbal)+' where dispstatid = '+ATruck.DispStatID);
  end;
end;

procedure TDispForm.ChangeUnitNumberClick(Sender: TObject);
var ATruck     : TTruck;
    NFIRSAppID : String;
    DispCallID : String;
    DispStatID : String;
    UnitNum    : String;
begin
  ATruck           := GetSelectedTruck;
  DispStatID       := ATruck.DispStatID;
  DispCallID       := ATruck.DispCallID;
  UnitNum          := ATruck.UnitNum;
  Open_query('NFIRSAPP',False,'SELECT NFIRSAPPID FROM NFIRSAPP WHERE DISPCALLID = ' + PkValue(DispCallID) + ' AND UNITNUM = ' + AddExpr(UnitNum));
  NFIRSAppID       := GetField('NFIRSAPP','NFIRSAPPID').AsString;
  CloseApollo('NFIRSAPP');

  ChangeUnitNumberForm                           := TChangeUnitNumberForm.Create(application);
  ChangeUnitNumberForm.CurrentUnitNumField.value := UnitNum;
  ChangeUnitNumberForm.DispCallID                := DispCallID;
  ChangeUnitNumberForm.NfirsAppID                := NfirsAppID;
  ChangeUnitNumberForm.CurrentUnitNumField.value := UnitNum;
  ChangeUnitNumberForm.ShowModal;
  ChangeUnitNumberForm.Free;
  UpdateGrids;
end;

procedure TDispForm.DummyFunc(DataSet: TDataSet);
begin
end;

procedure TDispForm.ChangeLocation(Sender: TObject);
var ATruck   : TAvailableTruck;
    FdidVar  : String;
begin
  ATruck := TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]);
  AddtoHistory(ATruck.UnitNum,'','Changed Unit Location To: ' + TMenuItem(Sender).Caption,ATruck.DispStatID,'0','0','0',0,Now);
  if GetDispLocObject(inttostr(TMenuItem(Sender).Tag))<> nil then
    FdidVar := GetDispLocObject(inttostr(TMenuItem(Sender).Tag)).Fdid
  else
    FdIDVar := '';
  RunSQL('UPDATE DISPSTAT SET DISPLOCID = ' + inttostr(TMenuItem(Sender).Tag) + ', FDID = ' + AddExpr(FdidVar) + ' WHERE DISPSTATID = ' + PkValue(ATruck.DispStatID));
  If mFireID = 'KOCKW' then
    UpdateInv( IntToStr(TMenuItem(Sender).Tag),ATruck.DispStatID);
  UpdateGrids;
end;

procedure TDispForm.UpdateInv(DispLocID, DispStatID: String);
Var UnitNum  : String;
    InvLocID : String;
begin
  UnitNum  := SQLLookUp(DispStatID,'DISPSTATID','DISPSTAT','UNITNUM');
  InvLocID := SQLLookUp(DispLocID,'DISPLOCID','DISPLOC','INVLOCID');
  RunSQL('UPDATE INV SET INVLOCID = ' + pkValue(InvLocID) + ' WHERE UNITNUM = ' + AddExpr(UnitNum));
end;

procedure TDispForm.ChangePriorityMenuClick(Sender: TObject);
var mValue : String;
    E911ID : String;
begin
  If (E911Grid.Row-1 >= 0) then begin
    E911ID := T911Object(E911StringList.Objects[E911Grid.Row-1]).E911ID;
    mValue := SqlLookup(e911id,'E911ID','E911','PRIORITYORD');
    if InputDlg('RedNMX Dispatch','Enter Priority',mValue,'99') then begin
      RunSql('UPDATE E911 SET PRIORITYORD = '+mValue+' WHERE E911ID = '+pkValue(E911ID));
      UpdateGrids;
    end;  
  end;     
end;

procedure TDispForm.SortTruckList;
var IncStrings : TStringList;
    i          : Integer;
begin
  IncStrings := TStringList.Create;
  TempSortTruckList.Clear;
  for i:=0 to TruckList.Count-1 do begin
    if SortByRunningOrder then begin
      IncStrings.Add(padr(TTruck(TruckList[i]).DispCallID,8,' ')+Padl(IntToStr(TTruck(TruckList[i]).RunningOrder),2,'0')+Padl(IntToStr(i),2,'0') );
    end else
      IncStrings.Add(padr(TTruck(TruckList[i]).DispCallID,8,' ')+padl('',2,'0')+Padl(IntToStr(i),2,'0') );
  end;

  IncStrings.Sort;

  for i:=0 to IncStrings.Count-1 do
    IncStrings.Strings[i] := rtrim(substr(IncStrings.Strings[i],11,2));

  for i:=0 to IncStrings.Count-1 do
    TempSortTruckList.Add(TruckList[StrToInt(IncStrings.Strings[i])]);

  TruckList.Clear;
  for i:=0 to TempSortTruckList.Count-1 do
    TruckList.Add(TempSortTruckList[i]);
  IncStrings.Free;
end;

procedure TDispForm.SetDispCall;
var IOrd            : Integer;
    dispCall        : TApolloData;
    mDispCallObject : TDispCall;
    iDispCallid     : Integer;
begin
  mDispcallObject := GetCurrentDispCall;
  if mDispCallobject<>nil then
    iDispCallid := anystrtoint(mDispCallObject.DispCallid)
  else
    iDispCallid := -1;
  mDispCallObject := nil;
  AddOpenCallsToStringList(GlobalAdoConnection,DispCallList);
  DispCallGrid.Invalidate;
  DispCallGrid.RowCount   := 1 + DispCallList.Count;
  DispCallButton.Enabled  := (DispCallList.Count>0);
  SOPbutton.Enabled       := (DispCallList.Count>0);
  NextAlarmButton.Enabled := (DispCallList.Count>0);
  EndAlarm.Enabled        := (DispCallList.Count>0);
  LocationButton.Enabled  := (DispCallList.Count>0);
  CallButton.Enabled      := (DispCallList.Count>0);
  CallTypeButton.Enabled  := (DispCallList.Count>0);
  NarrButton.Enabled      := (DispCallList.Count>0);
  LocNarrButton.Enabled   := (DispCallList.Count>0);
  MapButton.Enabled       := (DispCallList.Count>0);
  RipRunButton.Enabled    := (DispCallList.Count>0);
  PreplanButton.Enabled   := (DispCallList.Count>0);
  NoteButton.Enabled      := (DispCallList.Count>0);
  If DispCallList.Count = 0 then
    UpdateToIncident(-1,False);

  if iDispCallid > 0 then begin
    mdispCallObject := GetDispCallObject(inttostr(iDispCallid));
    if mDispCallObject<>nil then
      UpdateButtons(mDispCallObject);
  end;
end;

class procedure TDispForm.FillE911List(DisplayLength: Real; Var The911List: TStringList);
var A911List    : T911Object;
    E911        : TApolloData;
    DisplayTime : TDateTime;
begin
  freeAllStringListObjects(The911List);
  if UseDispQueue then
    DisplayLength := 2880;

  Try
    DisplayTime := Now - (DisplayLength/(60*24));

    if UseDispQueue then
      E911 := Open_Query(T911Object.GetE911OpenQueueQuery(GlobalAdoConnection,displayTime))
    else
      E911 := Open_Query(T911Object.GetE911OpenQuery(GlobalAdoConnection,displayTime));

    While Not E911.Eof do begin
      A911List                   := T911Object.Create(e911);
      A911List.E911ID            := GetField(E911,'E911ID').AsString;
      A911List.CallPhone         := GetField(E911,'CALLPHONE').Asstring;
      A911List.CallName          := GetField(E911,'CALLNAME').Asstring;
      A911List.Phone             := GetField(E911,'PHONE').Asstring;
      A911List.DateTimeEnt       := GetField(E911,'DATETIMEENT').AsDateTime;
      A911List.E911StatID        := GetField(E911,'E911STATID').Asstring;
      A911List.PriorityOrd       := GetField(E911,'PRIORITYORD').AsInteger;
      if UseDispQueue then
        A911List.Address         := GetField(E911,'CALLADDR').Asstring
      else
        A911List.Address         := alltrim(alltrim(GetField(E911,'STRNUM').AsString) + ' ' + GetField(E911,'STREET').AsString);
      A911List.Occupant          := GetField(E911,'OCCUPANT').AsString;
      A911List.City              := GetField(E911,'CITY').AsString;
      A911List.FDID              := GetField(E911,'FDID').AsString;
      A911List.DispCallID        := GetField(E911,'DISPCALLID').AsString;
      A911List.DispCallTypeID    := GetField(E911,'DISPCALLTYPEID').AsString;
      A911List.DispCallTypeCode  := GetField(E911,'DISPCALLTYPECODE').AsString;
      A911List.DispCallTypeDescr := GetField(E911,'DISPCALLTYPEDESCR').AsString;

      A911List.QueuedCall        := GetField(E911,'QUEUEDCALL').AsString = 'Y';

      The911List.AddObject(A911List.E911ID,A911List);
      E911.Skip(1);
    end;
  Finally
    E911.Free;
  end;
end;

procedure TDispForm.Set911List(mInFormCreate: Boolean);
const InSet911List    : Boolean = False;
var iCount            : Integer;
    E911BrowseForm    : TE911BrowseForm;
    mFullWavFile      : String;
    i                 : Integer;
    Temp911StringList : TStringList;
    mE911Object       : T911Object;
begin
  try
    if InSet911List then
      exit
    else
      InSet911List := True;
    Temp911StringList := TStringList.Create;
    for i:= 0 to E911StringList.count-1 do begin
      mE911Object := T911Object.Create;
      mE911Object.Assign(T911Object(E911StringList.Objects[i]));
      Temp911StringList.AddObject(E911StringList[i],mE911Object);
    end;

    iCount := E911StringList.Count;

    TDispForm.FillE911List(E911DisplayLength, E911StringList);
    ChangePriorityMenu.Enabled := False;
    for i:= 0 to e911Stringlist.count-1 do
      if T911Object(e911StringList.Objects[i]).PriorityOrd >0 then
        ChangePriorityMenu.Enabled := True;

    E911Grid.invalidate;
    E911Grid.RowCount   := 1 + E911StringList.Count;

    T911Object.Check911Differences(Temp911StringList,E911StringList);
    if (E911StringList.Count>iCount) and not(mInFormCreate) and ((GetFormOfType(TDispCallTakeForm)=nil) or UseDispQueue) then begin
      if FE911WavFile<>'' then
        mFullWavFile := ExtractFileDir(ParamStr(0))+'\'+FE911WavFile;
        if FileExists(mFullWavFile) then
          PlayWaveFile(mFullWavFile);
    end;
    E911BrowseForm := TE911BrowseForm(GetFormOfType(TE911BrowseForm));
    if E911BrowseForm <> nil then
      E911BrowseForm.Refresh911List(E911StringList);
  finally

    ClearAndFreeStringList(Temp911StringList);

    InSet911List := False;
  end;
end;

procedure TDispForm.FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowVar : Integer;
begin
  AmherCheck.Checked := False;
  If (ARow = 0) and State then begin
    For RowVar := 1 to (Sender as TAdvStringGrid).RowCount-2 do
      (Sender as TAdvStringGrid).SetCheckBoxState(1,RowVar,false);
  end else if (ARow > 0) and State then
    (Sender as TAdvStringGrid).SetCheckBoxState(1,0,false);
  SetTruckLists(False);
  AvailableApparatus.Invalidate;
end;

Procedure TDispForm.LoadFdidBrowse;
Var RowNum : Integer;
  bChecked: Boolean;
  getdispcall: TApolloData;
  Function CheckDispCall(FdidVar: String): Boolean;
  begin
    If MultiFdid then begin
      if getdispcall.ExactQueryLocate('fdid',FdidVar) then
        CheckDispCall := true
      else
        CheckDispCall := false;
    end else
      CheckDispCall := FireID = FdidVar;
  end;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 4;
  FdidBrowse.RowCount      := 4;
  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 070;
  FdidBrowse.ColWidths[03] := 200;

  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  FdidBrowse.Cells[0,RowNum] := 'ALL';
  If (mFireID = '52109') or (mFireID = '52051') or (mFireID = '52052') then
    bChecked := False
  else
    bChecked := True;
  FdidBrowse.AddCheckBox(1,RowNum,bChecked,false);
  FdidBrowse.Cells[2,RowNum] := 'All';
  FdidBrowse.Cells[3,RowNum] := 'All Apparatus';
  RowNum := 1;

  FdidBrowse.Cells[0,RowNum] := 'OTHER';
  FdidBrowse.AddCheckBox(1,RowNum,false,false);
  FdidBrowse.Cells[2,RowNum] := 'Other';
  FdidBrowse.Cells[3,RowNum] := 'Other apparatus not assigned Fdid';
  RowNum := 2;
  if UseSortOrd then
    Open_Query('FDID',false,'SELECT ABBREVIATE,SORTORD, FDID, SHORTDESCR FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY SORTORD DESC, DEPTNAME')
  else
    Open_Query('FDID',false,'SELECT ABBREVIATE, FDID, SHORTDESCR FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY ABBREVIATE, SHORTDESCR, DEPTNAME');
  getdispcall := Open_query('select fdid from dispcall where incstat = '+AddExpr('OPEN'));
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := tdbfield('FDID','FDID');
    FdidBrowse.AddCheckBox(1,RowNum,CheckDispCall(tdbfield('FDID','FDID')), false);
    FdidBrowse.Cells[2,RowNum] := Getfield('FDID','ABBREVIATE').AsString;
    FdidBrowse.Cells[3,RowNum] := Getfield('FDID','SHORTDESCR').AsString;
    If (RowNum > 1) then
      FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');
  getdispcall.free;

  TruckCheckPanel.Height := IMin(25+(RowNum*15),190);
end;

function TDispForm.WhereDispStat: String;
Var RetVal     : String;
    CheckValue : Boolean;
    RowVar     : Integer;
    FdidVal    : String;
begin
  RetVal  := ' WHERE DISPSTAT.DISPCALLID > 0 ';
  FdidVal := '';
  FdidBrowse.GetCheckBoxState(1,0,CheckValue);
  If CheckValue then
    RetVal := RetVal + ' OR 1=1 '
  else begin
    FdidBrowse.GetCheckBoxState(1,1,CheckValue);
    If CheckValue then
      FdidVal := ' OR DISPSTAT.FDID IS NULL';
    For RowVar := 2 to FdidBrowse.RowCount-2 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        FdidVal := FdidVal + ' OR DISPSTAT.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (FdidVal = '') then
      FdidVal := ' OR (' + alltrim(substr(FdidVal,5,Length(FdidVal))) + ') ';
  end;    
  WhereDispStat := RetVal + FdidVal;
end;

procedure TDispForm.SetTruckLists(TimerTriggeredRefresh: Boolean);
var ATruck        : TTruck;
    AvailTruck    : TAvailableTruck;
    i             : Integer;
    iStatCode     : Integer;
    iDispCallid   : Integer;
    WhereClause   : String;
    mSeparator    : Boolean;
    AStatusList   : TStatusList;
    DispStat      : TApolloData;
    DispHist      : TApolloData;
    dispmoback    : TApolloData;
    SQL           : String;
    bMobileOnLine : Boolean;
    bContinue     : Boolean;
    mMobile       : String;
    mSort         : String;
    iOriginalTruckListCount: Integer;
    AStatusTime  : TStatusTime;
begin
  try
    if InSetTruckLists then
      exit
    else
      InSetTruckLists := True;

    freeAllListObjects(AvailableTruckList);
    iOriginalTruckListCount := TruckList.Count;
    freeAllListObjects(TruckList);

    DispHist := Open_Query('SELECT UNITNUM, DISPCALLID, DATETIMESTAT, DISPSTATCODEID FROM DISPHIST WHERE 1=2');
    if mfireid = 'AMHER' then
      mSort := 'DISPSTAT.UNITNUM'
    else if mfireid = '52280' then
      mSort := 'DISPLOC.SORTORD,DISPSTAT.SORTORD,DISPSTAT.UNITNUM'
    else
      mSort := 'DISPSTAT.SORTORD,DISPSTAT.UNITNUM';

    dispmoback:=Open_Query('SELECT * FROM DISPMOBACK WHERE 1=2');
    SQL      :=            'SELECT DISPSTAT.DATETIMEIP,DISPSTAT.DATETIMESTAT, DISPSTAT.HORZLINE, DISPSTAT.DISPSTATID, DISPSTAT.UNITNUM, DISPSTAT.DISPSTATCODEID, DISPSTAT.DISPCALLID, DISPSTAT.FDID, DISPSTAT.ADDRESS, ' +
                           'DISPSTAT.NUMRIDERS, '+iif(bUseNumRidersVerbal,'DISPSTAT.NUMRIDERSVERBAL,','')+
                           'DISPSTAT.SECIDTAG, DISPSTAT.ALARMNUM, DISPSTAT.DISPAPPID, DISPSTAT.DISPLOCID, DISPSTAT.DESCR DISPSTATDESCR, DISPSTAT.NFIRSMAINID, DISPSTAT.RUNNINGORDER,' +
                           'DISPLOC.SHORTDESCR DISPLOCSHORTDESCR, ' +
                           'DISPAPP.SHORTDESCR DISPAPPSHORTDESCR, ' +
                           'FDID.ABBREVIATE ABBREVIATE, ' +
                           'DISPSTATCODE.COLOR, ' +
                           'DISPSTATCODE.SHORTDESCR DISPSTATCODESHORTDESCR ' +
                           'FROM DISPSTAT ' +
                           'LEFT JOIN DISPSTATCODE ON (DISPSTAT.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                           'LEFT JOIN DISPLOC ON (DISPSTAT.DISPLOCID = DISPLOC.DISPLOCID) ' +
                           'LEFT JOIN DISPAPP ON (DISPSTAT.DISPAPPID = DISPAPP.DISPAPPID) ' +
                           'LEFT JOIN FDID ON (DISPSTAT.FDID = FDID.FDID) ' +
                           WhereDispStat +
                           'ORDER BY '+mSort;
    DispStat := Open_Query(SQL);
    If DispCallList.Count > 0 then begin
      WhereClause := ' WHERE (';
      for i := 0 to DispCallList.count-1 do begin
        whereclause := Whereclause + ' DISPHIST.DISPCALLID = ' + PKValue(DispCallList[i]);
        If  i < DispCallList.count - 1 then
          WhereClause := WhereClause + ' OR ';
      end;
      WhereClause := WhereClause + ')';
      DispHist.UpdateSql('SELECT UNITNUM, DISPHISTID,SOURCE,DISPCALLID, DATETIMESTAT, DISPSTATCODEID FROM DISPHIST ' + WhereClause );
      Sql := 'SELECT DISPMOBACK.DISPHISTID FROM DISPMOBACK '+
        'LEFT OUTER JOIN DISPHIST ON (DISPHIST.DISPHISTID=DISPMOBACK.DISPHISTID) '+
        'LEFT OUTER JOIN DISPCALL ON (DISPCALL.DISPCALLID=DISPHIST.DISPCALLID) '+
        WhereClause;
      if mfireid<>'30064' then
          Sql := Sql + ' AND DISPMOBACK.SECID = '+pkValue(SecIDVar);
      dispmoback.UpdateSql(Sql);
    end;


    DispStat.Gotop;
    iDispCallID := GetCurrentDispCallid;


    while not DispStat.Eof do begin
      bMobileOnLine := Now-GetField(DispStat,'DATETIMEIP').AsDateTime <= 5/24/60;
      mSeparator := mSeparator or (TDBField(dispStat,'HORZLINE')='Y');

      If Not InService(GetField(DispStat,'DISPSTATCODEID').AsString) and (GetField(DispStat,'DISPCALLID').AsInteger > 0) then begin

        if (GetField(dispstat,'DISPCALLID').AsInteger = iDispCallID) or (CheckOnlyOnCall) then begin
          ATruck                := TTruck.Create;
          ATruck.DispStatID     := GetField(DispStat,'DISPSTATID').AsString;
          ATruck.UnitNum        := tdbfield(DispStat,'UNITNUM');
          if (bUseNumRidersVerbal) then
            ATruck.OtherInfo    := tdbfield(dispstat,'NUMRIDERSVERBAL');

          ATruck.DispStatCodeID := GetField(DispStat,'DISPSTATCODEID').AsString;
          ATruck.DispCallID     := GetField(DispStat,'DISPCALLID').AsString;
          ATruck.DateTimeStat   := GetField(DispStat,'DATETIMESTAT').AsDateTime;
          ATruck.NFIRSMainID    := GetField(DispStat,'NFIRSMAINID').AsString;
          ATruck.Fdid           := IIf(MultiFDID,GetField(DispStat,'FDID').AsString,mFireID);
          ATruck.Address        := tdbfield(DispStat,'ADDRESS');
          ATruck.RunningOrder   := GetField(DispStat,'RUNNINGORDER').AsInteger;
          ATruck.Tagged         := (GetField(DispStat,'SECIDTAG').AsString = SecIDVar) and (SecIDVar<>'');
          ATruck.AlarmNum       := GetField(DispStat,'ALARMNUM').AsInteger;
          ATruck.NumRiders      := GetField(DispStat,'NUMRIDERS').AsInteger;
          ATruck.OnLineMobile   := bMobileOnLine;
          For i := 0 to DispStatCodeList.Count - 1 do begin
            AStatusTime := TStatusTime.Create;
            ATruck.StatusTimesx.AddObject('',AStatusTime);
          end;
          DispHist.GoTop;
          while not DispHist.eof do begin
            If (tdbField(DispHist,'UNITNUM') = ATruck.UnitNum) and (GetField(DispHist,'DISPCALLID').AsString = ATruck.DispCallID) then begin
              iStatCode := GetDispStatCodeIndex(GetField(DispHist,'DISPSTATCODEID').AsString);
              If (iStatCode >= 0)  then begin
                ATruck.StatusTimesx[iStatCode] := FormatDateTime('HH:NN',GetField(DispHist,'DATETIMESTAT').AsDateTime);
                if (tdbField(DispHist,'SOURCE')='M') and not dispmoback.ExactQueryLocate('DISPHISTID',GetField(disphist,'disphistid').AsString) then begin
                  ATruck.StatusTimesx[iStatCode]:= ATruck.StatusTimesx[iStatCode]+'*';
                  if bColorMobileRed then
                    TStatusTime(ATruck.StatusTimesx.Objects[iStatCode]).ShowRed        := True;
                  if GetField(disphist,'disphistid').AsInteger>DispHistIDOnStart then begin
                    if FAlreadyNotified.IndexOf(tdbField(disphist,'DISPHISTID'))=-1 then begin
                      try
                        FAlreadyNotified.Add(tdbField(disphist,'DISPHISTID'));
                        PlayDispatchNotification;
                      except
                      end;
                    end;
                  end;
                end;
              end;
            end;
            DispHist.Skip(1);
          end;
          TruckList.Add(ATruck)
        end;
      end else begin
        if AmherCheck.Checked then
          bContinue := CurrentCallFdidList.IndexOf(tdbfield(DispStat,'FDID'))>=0
        else
          bContinue := True;


        if bContinue then begin
          AvailTruck                   := TAvailableTruck.Create;
          AvailTruck.DispStatID        := GetField(DispStat,'DISPSTATID').AsString;
          AvailTruck.UnitNum           := GetField(DispStat,'UNITNUM').AsString;
          AvailTruck.DispLocID         := GetField(DispStat,'DISPLOCID').AsString;
          AvailTruck.DispStatCodeShortDescr := GetField(DispStat,'DISPSTATCODESHORTDESCR').AsString;
          AvailTruck.DispAppShortDescr := GetField(DispStat,'DISPAPPSHORTDESCR').AsString;
          AvailTruck.DispLocShortDescr := GetField(DispStat,'DISPLOCSHORTDESCR').AsString;
          AvailTruck.DispAppID         := GetField(DispStat,'DISPAPPID').AsString;
          AvailTruck.DispStatCodeID    := GetField(DispStat,'DISPSTATCODEID').AsString;
          AvailTruck.Tagged            := (GetField(DispStat,'SECIDTAG').Asstring = SecIDVar) and (SecIDVar<>'');
          if (mfireid = '52280') then
            AVailTruck.Fdid              := tdbfield(DispStat,'FDID')
          else
            AVailTruck.Fdid              := IIf(MultiFDID,tdbfield(DispStat,'FDID'),mFireID);
          AvailTruck.Abbreviate        := tdbfield(DispStat,'ABBREVIATE');
          AvailTruck.OnLineMobile      := bMobileOnLine;
          AvailTruck.Descr             := GetField(DispStat,'DISPSTATDESCR').AsString;
          try
            if tdbfield(DispStat,'COLOR')<>'' then
              Availtruck.Color            := StringToColor(tdbfield(DispStat,'COLOR'))
            else
              AvailTruck.Color            := clBlack;

          except
            Availtruck.Color            := clblack;
          end;
          AvailTruck.Separator        := mSeparator;
          mSeparator                  := False;
          AvailableTruckList.Add(AvailTruck);
        end;
      end;
      DispStat.Skip(1);
    end;
    AvailableApparatus.RowCount := 1 + AvailableTruckList.Count;
    If TruckList.Count > 0 then begin
      ApparatusGrid.RowCount  := 1 + TruckList.Count;
      ApparatusGrid.FixedRows := 1;
    end else begin
      ApparatusGrid.RowCount  := 1;
      ApparatusGrid.FixedRows := 0;
    end;
    SortTruckList;

    FreeAllListObjects(StatusList);
    If (DispCallGrid.Row-1 >= 0) then begin
      DispHist.UpdateSQL('SELECT VWDISPMOBMESSAGE.LOGINCODEDEST,VWDISPMOBMESSAGE.LOGINCODESOURCE,VWDISPMOBMESSAGE.UNITNUMDEST,VWDISPMOBMESSAGE.UNITNUMSOURCE,DISPHIST.DISPHISTID, DISPHIST.DISPCALLID, '+
                         'DISPSTATCODE.SORTORD,DISPHIST.UNITNUM, DISPHIST.NARR, DISPHIST.DATETIMESTAT, DISPHIST.DISPSTATCODEID, ' +
                         'DISPSTATCODE.DESCR DISPSTATCODEDESCR ' +
                         'FROM DISPHIST ' +
                         'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                         'LEFT JOIN VWDISPMOBMESSAGE ON (VWDISPMOBMESSAGE.DISPHISTID = DISPHIST.DISPHISTID) '+
                         'WHERE (DISPHIST.DISPCALLID = ' + inttostr(iDispCallid) + ') ORDER BY DISPHIST.DATETIMESTAT DESC');
      While not DispHist.Eof do begin
        if Getfield(DispHist,'SortOrd').AsInteger = 0 then
          bContinue := True
        else
          bContinue := tdbfield(disphist,'narr')<>'';
        if bContinue then begin
          AStatusList                := TStatusList.Create;
          AStatusList.DateTimeStat   := GetField(DispHist,'DATETIMESTAT').AsDateTime;
          AStatusList.DispStatCodeID := GetField(DispHist,'DISPSTATCODEID').AsString;
          AStatusList.Descr          := tdbfield(DispHist,'DISPSTATCODEDESCR');
          mMobile                    := tdbField(DispHist,'LOGINCODESOURCE')+tdbField(DispHist,'UNITNUMSOURCE');
          if mMobile<>'' then
            mMobile := mMobile + ' to '+tdbField(DispHist,'LOGINCODEDEST')+tdbField(DispHist,'UNITNUMDEST');

          AStatusList.Narrative      := SearchAndReplace(RemoveCharacter(GetField(DispHist,'NARR').AsString,#13),#10,' ');
          if mMobile <> '' then
            AStatusList.Narrative    := mMobile + ': '+ AStatusList.Narrative;
          if tdbfield(disphist,'UNITNUM')<>'' then
            AStatusList.Narrative    := 'Unit: '+tdbfield(disphist,'UNITNUM') + '  '+ AStatusList.Narrative;

          AStatusList.DispHistID     := GetField(DispHist,'DISPHISTID').AsString;
          AStatusList.DispCallID     := GetField(DispHist,'DISPCALLID').Asstring;
          StatusList.Add(AStatusList);
        end;
        DispHist.Skip(1);
      end;
    end;
    StatusGrid.invalidate;
    StatusGrid.RowCount   := 1 + StatusList.Count;
    if (iOriginalTruckListCount>0) and  (iOriginalTruckListCount > TruckList.Count) and TimerTriggeredRefresh AND (CheckModule('MOBCAD')) then
      PlayDispatchNotification;
  finally
    InSetTruckLists := False;
  End;
  dispmoback.Free;
  DispStat.Free;
  DispHist.Free;
end;

function TDispForm.CheckOnlyOnCall: Boolean;
begin
  If OnlyOnCall then
    CheckOnlyOnCall := OnlyOnCallCheck.Checked
  else
    CheckOnlyOnCall := true;
end;

procedure TDispForm.ShowProQANarrClick(Sender: TObject);
begin
  ShowDispCallForm(True);
end;

procedure TDispForm.DispCallGridDrawCell(Sender: TObject; Col, Row: Longint; Rect: TRect; State: TGridDrawState);
var TheText    : String;
    FontColor  : TColor;
    BrushColor : TColor;
begin
  TheText := GetDispCallCellText(Col, Row, FontColor, BrushColor, State);
  with Sender as TStringGrid, Canvas  do begin
    Brush.Color := BrushColor;
    Font.Color  := FontColor;
    font.style  := [fsbold];
    TextRect(Rect,Rect.Left+2,Rect.Top+2,TheText);
  end;
  if Row = 0 then begin
    with (Sender as TStringGrid).Canvas do begin
      Pen.Width := 1;
      pen.Color := clBlack;
      MoveTo(Rect.Left,Rect.Bottom);
      LineTo(Rect.Right,Rect.Bottom);
    end;
  end;
end;

procedure TDispForm.ApparatusGridDrawCell(Sender: TObject; Col, Row: Longint; TheRect: TRect; State: TGridDrawState);
var TheText    : String;
    FontColor  : TColor;
    BrushColor : TColor;
    iTruck,N,M : Integer;
    Alignment  : TAlignment;
    MyRect     : TRect;
    ARow,acol  : Integer;
    idispCallIndex: Integer;
begin
  if InSetTruckLists then
    exit;

  MyRect       := TheRect;
  MyRect.Right := MyRect.Right+1;
  acol         := col;
  arow         := row;
  TheText      := GetApparatusCellText(Col, Row, FontColor, BrushColor, Alignment);
  with Sender as TStringGrid, Canvas  do begin
    Brush.Color := BrushColor;
    Font.Color  := FontColor;
    Font.Style  := [fsbold];

    If (gdSelected in State) and (ARow>0) then begin
      iDispCallIndex := DispCallList.IndexOf(TTruck(TruckList[ARow-ApparatusGrid.FixedRows]).DispCallID);
      If iDispCallIndex >= 0 then begin
        Brush.Color := TIncColor(IncColorList[GetCallColor(iDispCallIndex)]).BrushColor
      end else
        Brush.Color := clblack;

      If (Brush.Color = clYellow) or (Brush.Color = clwhite) then
        Font.Color := clBlack
      else
        Font.Color  := clWhite;

    end;
    N := TextWidth(TheText);
    M := 2;
    case Alignment of
      taLeftJustify: M:=2;
      taCenter: M:=(TheRect.Right-TheRect.Left-N) div 2;
      taRightJustify: M:=TheRect.Right-TheRect.Left-N-2;
    end;
    if ACol>=2 then
      TextRect(TheRect,M+TheRect.Left,TheRect.Top+2,TheText)
    else if (ACol=0) and (ARow>0) then begin
      itruck := ARow-ApparatusGrid.FixedRows;

      if TTruck(TruckList.Items[itruck]).Tagged then
        Draw(TheRect.Left,TheRect.Top,BIS)
      else
        TextRect(MyRect,M+TheRect.Left,TheRect.Top+2,'');
      MoveTo(TheRect.Right,TheRect.Top);
      LineTo(TheRect.Right,TheRect.Bottom);
    end else
      TextRect(MyRect,M+TheRect.Left,TheRect.Top+2,TheText);
  end;
  If Row=0 then begin
    with (Sender as TStringGrid).Canvas do begin
      Pen.Width := 1;
      pen.Color := clBlack;
      MoveTo(TheRect.Left,TheRect.Bottom);
      LineTo(TheRect.Right,TheRect.Bottom);
    end;
  end;
end;

procedure TDispForm.FormDestroy(Sender: TObject);
  procedure SetColumnValue(FieldNameVar: String; ColumnWidth: Integer);
  begin
    If Not (GetField('DISPSCREEN',FieldNameVar).AsString = '') then
      GetField('DISPSCREEN',FieldNameVar).AsInteger := ColumnWidth;
  end;
begin
  try
    Open_Query('DISPSCREEN',true,'SELECT * FROM DISPSCREEN WHERE FDID = ' + AddExpr(mFireID));
    A('DISPSCREEN').Edit;

    SetColumnValue('AVAILABLEAPPARATUS0',25);
    SetColumnValue('AVAILABLEAPPARATUS1',AvailableApparatus.ColWidths[1]);
    SetColumnValue('AVAILABLEAPPARATUS2',AvailableApparatus.ColWidths[2]);
    SetColumnValue('AVAILABLEAPPARATUS3',AvailableApparatus.ColWidths[3]);
    SetColumnValue('AVAILABLEAPPARATUS4',AvailableApparatus.ColWidths[4]);
    SetColumnValue('AVAILABLEAPPARATUS5',AvailableApparatus.ColWidths[5]);

    SetColumnValue('APPARATUS1',ApparatusGrid.ColWidths[1]);
    SetColumnValue('APPARATUS2',ApparatusGrid.ColWidths[2]);

    SetColumnValue('STATUS911PANEL',   Status911Panel.Height);
    SetColumnValue('RIGHTPANEL',       RightPanel.Width);
    SetColumnValue('CALLINFOPANEL',    CallInfoPanel.Height);
    SetColumnValue('FDIDPANELWIDTH',   FdidPanel.Width);
    SetColumnValue('DISPCALLPANELBASE',DispCallPanelBase.Height);
    SetColumnValue('CALLHISTORYPANEL', CallHistoryPanel.Width);

    GetTable('DISPSCREEN').Post;
  finally
    CloseApollo('DISPSCREEN');
  end;
  freeAllListObjects(TruckList);
  ClearAndFreeStringList(CurrentCallFdidList);

  ClearAndFreeStringList(DispCallList);

  freeAllStringListObjects(E911StringList);

  TruckList.Free;
  TempSortTruckList.Free;
  E911StringList.Free;
  FAlreadyNotified.Free;
  RunSql('DELETE FROM DISPLOGON WHERE COMPUTERNAME = '+AddExpr(AlpineGetComputerName));
end;


procedure TDispForm.UpDateGrids(mInFormCreate: Boolean; bFromTimer: Boolean);
const InUpdateGrids: Boolean = False;
begin
  try
    If InUpdateGrids then
      exit
    else
      InUpdateGrids := True;

    SetDispCall;
    SetTruckLists(bFromTimer);

    if PlayAllDispAlerts then
      PlayDispAlerts;

    If CallHistoryPanel.Visible then
      Set911List(mInFormCreate);

    AvailableApparatus.Invalidate;
    ApparatusGrid.Invalidate;
    DispCallGrid.Invalidate;
    LastDispHistID := GetMaxPK(GlobalAdoConnection,GlobalAdoConnection.TableType,'DISPHIST');
  finally
    InUpdateGrids := False;
  end;
end;

procedure TDispForm.PlayDispAlerts;
var disphist: TApolloData;
begin
  if LastDispHistid= 0 then exit;
  disphist := open_query(globaladoconnection,'select disphist.unitnum,dispstat.wavfile dispstat_wavfile,dispstatcode.wavfile dispstatcode_wavfile from disphist '+
    'left outer join dispstat on (dispstat.unitnum = disphist.unitnum) '+
    'left outer join dispstatcode on (disphist.dispstatcodeid=dispstatcode.dispstatcodeid) '+
    'where disphist.disphistid > '+inttostr(LastDispHistid)+' order by disphistid');
  while not disphist.eof do begin
    if tdbfield(disphist,'dispstat_wavfile')<>'' then begin
      if FileExists(ExtractFileDir(ParamStr(0))+'\'+tdbfield(disphist,'dispstat_wavfile')+'.WAV') then
        PlayWaveFile(ExtractFileDir(ParamStr(0))+'\'+tdbfield(disphist,'dispstat_wavfile')+'.WAV');
    end;
    if tdbfield(disphist,'dispstatcode_wavfile')<>'' then begin
      if FileExists(ExtractFileDir(ParamStr(0))+'\'+tdbfield(disphist,'dispstatcode_wavfile')+'.WAV') then
        PlayWaveFile(ExtractFileDir(ParamStr(0))+'\'+tdbfield(disphist,'dispstatcode_wavfile')+'.WAV');
    end;
    disphist.next;
  end;
  disphist.free;    

end;


procedure TDispForm.DCSTimerTimer(Sender: TObject);
Var TempDispHistID : Integer;
  datetimestart: TDateTime;
begin
  if (Now-FDispFormcreated) <= 5/24/60/60 then exit;   // wait at least 5 seonds before firing.
  If WindowState in [wsMinimized] then
    exit;
  If FormExists('DispCallTakeForm') then
    exit;

  
  try
    DateTimeStart := Now;
    DCSTimer.Enabled := False;
    TempDispHistID := GetMaxPK(GlobalAdoConnection,GlobalAdoConnection.TableType,'DISPHIST');
    If (TempDispHistID <> LastDispHistID) or (TimeDifferenceInSeconds(Now,LastUpdateGrids)>10) then begin
      LastUpdateGrids := Now;
      ClearDispStatForApparatusAssignedToClosedCalls;
      CheckMobileMessages(TempDispHistID);
      UpdateGrids(False,True);
      DispCallGridClickProc(False);
    end;
  finally
    DCSTimer.Enabled := True;
  end;
  if TimeDifferenceInRealSeconds(Now,DateTimeStart)>= 3 then
    AppendToLog('Took '+formatfloat('##0.00',TimeDifferenceInRealSeconds(Now,DateTimeStart))+ ' to process DCSTimerTimer');
end;



procedure TDispForm.ClearDispStatForApparatusAssignedToClosedCalls;
begin
  commondisp.ClearDispStatForApparatusAssignedToClosedCalls(GlobalAdoconnection,GetInServCodeFromList(InserviceList1));

end;







procedure TDispForm.ClearProQAAlertMenuClick(Sender: TObject);
begin
  ClearProQAAlert(TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).DispCallID);
  UpdateGrids;
end;

procedure TDispForm.CheckMobileMessages(TempDispHistID: Integer);
var mError,mFrom,mCaption: String;
  mStartQuery: TDateTime;

begin

  If (FTimeMobileMess <> '') and (SecIDVar <> '') and (LastDispHistID > 0) then begin
    try
      mStartQuery := Now;
      Open_Query('CHECKMOBMESS',False,'SELECT DISPMOBMESSAGE.SECIDSOURCE,DISPMOBMESSAGE.DISPMOBMESSAGEID,DISPHIST.DATETIMESTAT,DISPMOBMESSAGE.UNITNUMSOURCE,DISPHIST.NARR,DISPHIST.DISPCALLID,SEC.USERNAME USERNAME FROM DISPHIST '+
      'LEFT OUTER JOIN DISPMOBMESSAGE ON (DISPHIST.DISPHISTID = DISPMOBMESSAGE.DISPHISTID) '+
      'LEFT OUTER JOIN SEC ON (SEC.SECID = DISPMOBMESSAGE.SECIDSOURCE) '+
      ' WHERE DISPHIST.DISPHISTID > '+ inttostr(LastDispHistID)+' AND DISPHIST.DISPSTATCODEID = ' + FTimeMobileMess + ' AND DISPMOBMESSAGE.SECIDDEST = '+pkValue(SecIDVar),mError);
      if TimeDifferenceInSeconds(Now,mStartQuery)>7.5 then
        appendtolog('TDispForm.CheckMobileMessages took '+inttostr(TimeDifferenceInSeconds(Now,mStartQuery))+' seconds.');
      if A('CHECKMOBMESS')<> nil then begin
        While not A('CHECKMOBMESS').eof do begin
          if GetField('CHECKMOBMESS','NARR').AsString <> '' then begin
            if tdbField('CHECKMOBMESS','UNITNUMSOURCE')<>'' then begin
              mcaption := 'From Unit '+tdbField('CHECKMOBMESS','UNITNUMSOURCE');
              mFrom := 'From Unit '+tdbField('CHECKMOBMESS','UNITNUMSOURCE')+crlf+crlf
            end else if tdbField('CHECKMOBMESS','USERNAME')<>'' then begin
              mCaption := 'From Dispatcher '+tdbField('CHECKMOBMESS','USERNAME');
              mFrom := 'From Dispatcher '+tdbField('CHECKMOBMESS','USERNAME')+crlf+crlf
            end else begin
              mcaption := '';
              mFrom := '';
            end;
            PlayDispatchNotification;
            MobileMessageRedNMX.DisplayMobileMessage(tdbField('CHECKMOBMESS','DISPMOBMESSAGEID'),tdbField('CHECKMOBMESS','UNITNUMSOURCE'),
              tdbField('CHECKMOBMESS','USERNAME'),GetField('CHECKMOBMESS','NARR').AsString,
              GetField('CHECKMOBMESS','DATETIMESTAT').AsString,tdbField('CHECKMOBMESS','SECIDSOURCE'),
              FTimeMobileMess,GetField('CHECKMOBMESS','DISPCALLID').AsInteger);

          end;
          A('CHECKMOBMESS').Skip(1);
        end;
      end else
        AppendToLog('Error opening query in TDispForm.CheckMobileMessages.  It took '+inttostr(TimeDifferenceInSeconds(Now,mStartQuery))+' seconds.  Error is:'+mError);
    finally
      CloseApollo('CHECKMOBMESS');
    end;
  end;
end;

procedure TDispForm.PlayDispatchNotification;
begin
  try
    appendtolog(FDispNotWavFile);
    If FDispNotWavFile <> '' then
      PlayWaveFile(FDispNotWavFile)
    else
      MessageBeep(MB_ICONEXCLAMATION);
 except
  end;
end;      




function TDispForm.GetDispCallObject(DispCallID : String): TDispCall;
Var i : Integer;
begin
  result        := nil;
  i := DispCallList.IndexOf(DispCallID);
  if i<>-1 then
    result := TDispCall(DispCallList.Objects[i]);

end;

procedure TDispForm.AvailableApparatusDrawCell(Sender: TObject; Col, Row: Longint; Rect: TRect; State: TGridDrawState);
var TheText        : String;
    ACol           : Integer;
    ARow           : Integer;
    Col2Text       : String;           //added for sandwich
    AvTruck        : TAvailableTruck;
    mDrawSeparator : Boolean;
begin
  if InSetTruckLists then
    exit;



  ARow           := Row;
  ACol           := Col;
  mDrawSeparator := False;
  with Sender as TStringGrid, Canvas  do begin
    Font.Height := -11;
    Font.Name   :='MS Sans Serif';
    Font.Style  := [fsbold];
    If ARow = 0 then begin
      Brush.Color := clblack;
      Font.color  := clyellow;
       //added for Sandwich
      if MFireID = '01261' then
        Col2Text := 'Descr'
      else
        Col2Text := 'Type';

      case ACol of
        0: TheText := 'Tag';
        AVAILUNITNUM: TheText := 'App#';
        2: TheText := Col2Text;
        3: TheText := 'Loc';
        4: TheText := 'Status';
        5: TheText := 'Fire#';
      end;
    end else begin

      AvTruck        := TAvailableTruck(AvailableTruckList[ARow-1]);
      mDrawSeparator := AvTruck.Separator;
      If (gdSelected in State) and (ARow>0) then begin
        Font.Color  := clYellow;
        Brush.Color := clgray;
      end else begin
        Brush.Color := clbtnface;
        Font.Color  := AvTruck.Color;
      end;

      Font.Style := [];

      //added for Sandwich
      if MFireID = '01261' then
        Col2Text       := AvTruck.Descr
      else
        Col2Text       := AvTruck.DispAppShortDescr;

      case ACol of
        1: TheText := AvTruck.UnitNum+iif(AvTruck.OnLineMobile,'*','');
        2: TheText := Col2Text;
        3: TheText := AvTruck.DispLocShortDescr;
        4: TheText := AvTruck.DispStatCodeShortDescr;
        5: TheText := AvTruck.Abbreviate;
      end;
    end;

    if (ACol=0) and (ARow>0) then begin
      Brush.Color := clMaroon;
      if AvTruck.Tagged then
        Draw(Rect.Left,Rect.Top,Selected)
      else
        TextRect(Rect,Rect.Left+2,Rect.Top+2,TheText);

    end else
      TextRect(Rect,Rect.Left+2,Rect.Top+2,TheText);
    If ACol=0 then begin
      Pen.Width := 1;
      pen.Color := clBlack;
      MoveTo(Rect.Right-1,Rect.Top);
      LineTo(Rect.Right-1,Rect.Bottom);
    end;
    If mDrawSeparator then begin
      Brush.Color := clBlack;
      Rect.Bottom := Rect.top + 2 ;
      TextRect(Rect,Rect.Left+2,Rect.Top+2,'');
    end;
  end;
end;

function TDispForm.GetSelectedAvailableTruck: TAvailableTruck;
begin
  if (AvailableApparatus.Row-1<=AvailableTruckList.count-1) and  (AvailableApparatus.Row-1>=0) then
    GetSelectedAvailableTruck := TAvailableTruck(AvailableTruckList.Items[AvailableApparatus.Row-1])
  else
    GetSelectedAvailableTruck := nil;

end;


function TDispForm.GetSelectedTruck: TTruck;
begin
  if (ApparatusGrid.Row-1<=TruckList.count-1) and (ApparatusGrid.Row-1>=0) then
    GetSelectedTruck := TTruck(TruckList.Items[ApparatusGrid.Row-1])
  else
    GetSelectedTruck := nil;
end;

class procedure TDispForm.ChangeAppStatus(DispStatID, DispCallID, DispStatCodeID, NFIRSMainID: String; UnitNum, Address: String; AlarmNum: Integer; DateTimeStat: TDateTime);
begin
  appendtolog('Call CommonChangeAppStatus');
  CommonChangeAppStatus(GlobalAdoConnection,DispStatID, DispCallID, DispStatCodeID, NFIRSMainID,UnitNum, Address,AlarmNum,DateTimeStat);
  appendtolog('Done CommonChangeAppStatus');
end;

class function TDispForm.CheckPageStat(StatCodeVar: String): Boolean;
begin
  Open_Query('CHECKPAGESTAT',false,'SELECT * FROM PAGESTAT WHERE STATCODE = ' + AddExpr(StatCodeVar));
  CheckPageStat := A('CHECKPAGESTAT').RecordsExist;
  CloseApollo('CHECKPAGESTAT');
end;


procedure TDispForm.ChangeStatus(ATruck: TTruck; DispStatCodeID: String);
var RectBox     : TRect;
    UpperPoint  : TPoint;
    LowerPoint  : TPoint;
    NarrVar     : String;
    DispStatID  : Integer;
    RecordExist : Boolean;
    DispHistID  : Integer;
    ModalResult : Integer;
    bContinue   : Boolean;
begin

  try
    DCSTimer.Enabled := false;
    DispHistID := 0;
    try
      Open_Query('DISPHIST',false,'SELECT DISPHISTID, NARR FROM DISPHIST WHERE DISPCALLID = '+ATruck.DispCallID+
      ' AND UNITNUM = ' + AddExpr(ATruck.UnitNum) +' AND DISPSTATCODEID = ' + DispStatCodeID);
      If A('DISPHIST').RecordsExist then begin
        NarrVar    := GetField('DISPHIST','NARR').AsString;
        DispHistId := GetField('DISPHIST','DISPHISTID').AsInteger;
      end;
    finally
      CloseApollo('DISPHIST');
    end;
    If DispHistID > 0 then begin
      if TStatusTime(ATruck.StatusTimesx.Objects[GetDispStatCodeIndex(DispStatCodeID)]).ShowRed then begin
        AcknowledgeMobileUpdate(GetSelectedTruck,TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID);
      end else begin
        FootNoteEntry                := TFootNoteEntry.Create(Application);
        FootNoteEntry.Caption        := 'Footnote, unit: ' + alltrim(ATruck.UnitNum) + ', status: ' + GetDispStatCodeObject(DispStatCodeID).Descr;
        FootNoteEntry.NarrField.Text := NarrVar;
        RectBox                      := ApparatusGrid.CellRect(ApparatusGrid.Col,ApparatusGrid.Row);
        LowerPoint.X                 := rectBox.Right;
        LowerPoint.Y                 := RectBox.Bottom;
        UpperPoint.X                 := rectBox.Left;
        UpperPoint.Y                 := rectBox.Top;
        LowerPoint                   := ApparatusGrid.ClientToScreen( LowerPoint );
        UpperPoint                   := ApparatusGrid.ClientToScreen( UpperPoint );
        FootNoteEntry.Left           := LowerPoint.X;
        FootNoteEntry.Top            := UpperPoint.Y;
        ModalResult                  := FootNoteEntry.ShowModal;
        If ModalResult = mrOK then
          RunSQL('UPDATE DISPHIST SET NARR = ' + AddExpr(FootNoteEntry.NarrField.Text) + ' WHERE DISPHISTID = ' + IntToStr(DispHistID));
        FootNoteEntry.Free;
      end;  
    end else begin
      If GetDispStatCodeObject(DispStatCodeID).PromptEntry then
        bContinue := BooleanMessageDlg('Are you Sure?')
      else
        bContinue := True;
      if bContinue then begin
        ApparatusGrid.Cells[ApparatusGrid.Col,ApparatusGrid.Row]:=substr(GetTimeAsString,1,5);
        If anystrtoint(DispStatCodeID) > 0 then
          ATruck.StatusTimesx[GetDispStatCodeIndex(DispStatCodeID)] := substr(GetTimeAsString,1,5);
        ChangeAppStatus(ATruck.DispStatID, ATruck.DispCallID, DispStatCodeID, ATruck.NFIRSMainID, ATruck.UnitNum, ATruck.Address,ATruck.AlarmNum, Now);
        If InService(DispStatCodeID) then
          PutSelectTruckBackInService(ATruck,DispStatCodeid)
        else
          AddtoHistory(ATruck.UnitNum, ATruck.Address, '', ATruck.DispStatID, ATruck.DispCallId, DispStatCodeID, ATruck.NFIRSMainID, ATruck.AlarmNum, Now); 
        UpdateGrids;
      end;  
    end;
  finally
    ApparatusGrid.Invalidate;
    DCSTimer.Enabled := true;
  end;
end;

procedure TDispForm.ApparatusGridDblClick(Sender: TObject);
var iinc: Integer;
begin
  If ApparatusMouseDownColumn=0 then
    exit;
  If ((ApparatusGrid.Col = 1) or (ApparatusGrid.Col = 2)) and (TruckList.Count > 0) then
    EditNFIRSApp(self)
  else if (ApparatusGrid.Col > 2) and (TruckList.Count > 0)  then begin
    if (mFireid = '52280') then begin
      iinc := DispCallList.IndexOf(TTruck(TruckList.Items[ApparatusGrid.Row-1]).DispCallID);

      if iinc >= 0 then begin
        DispCallGrid.Row := iinc+1;
        UpdateToIncident(iinc,False);
      end;
      UpdateGrids;
    end;
    ChangeStatus(GetSelectedTruck,TDispStatCode(DispStatCodeList.Items[ApparatusGrid.Col-3]).DispStatCodeID);
  end;
end;


procedure ShowMenu(Grid: TStringGrid; menu: TPopupMenu;x,y: Integer);
var PopupPoint: TPoint;
    Row       : Integer;
    Column    : Integer;
begin
  Grid.MouseToCell(X, Y, Column, Row);
  PopupPoint.x := x;
  PopupPoint.y := y;
  PopupPoint   := Grid.ClientToScreen(PopupPoint);
  Grid.Row     := Row;
  menu.popup(PopupPoint.x,PopupPoint.y);
end;

procedure TDispForm.ApparatusGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var Row   : Longint;
    Column: Longint;
    iinc: Integer;
  procedure SelectApparatus;
  begin
    ApparatusGrid.MouseToCell(X,Y,Column,Row);
    If Column > 0 then
      exit;

    TTruck(TruckList.Items[row-1]).Tagged:=not TTruck(TruckList.Items[row-1]).Tagged;
    SetTagged(TTruck(TruckList.Items[row-1]).DispStatID,TTruck(TruckList.Items[row-1]).Tagged);
    ApparatusGrid.Row:=Row;
    ApparatusGrid.Refresh;
  end;
begin
  ApparatusGrid.MouseToCell(X, Y, Column, Row);
  ApparatusMouseDownColumn:=Column;

  If (Button=mbRight) and (TruckList.Count > 0) and (Row>=ApparatusGrid.FixedRows) and (Column < 3) then begin
    showmenu(apparatusgrid,changestatuspopup,x,y);
    if (mFireid = '52280') then begin
      iinc := DispCallList.IndexOf(TTruck(TruckList.Items[ApparatusGrid.Row-1]).DispCallID);

      if iinc >= 0 then begin
        DispCallGrid.Row := iinc+1;
        UpdateToIncident(iinc,False);
      end;
      UpdateGrids;
    end;
    exit;
  end else if (Button=mbLeft) and (Row>=ApparatusGrid.FixedRows) and (Column=0) then begin
    SelectApparatus;
    ApparatusGrid.Row := Row;
  end else if (Button=mbRight)  and (TruckList.Count > 0) and (Row>=ApparatusGrid.FixedRows) and (Column>=3) then begin
    ApparatusGrid.Row := Row;
    ApparatusGrid.col := Column;
    showmenu(apparatusgrid,apparatuspopupmenu,x,y);
    exit;
  end else if (Button=mbLeft) and (ApparatusGrid.RowCount>=2) then begin
    ApparatusGrid.BeginDrag(False);
  end;

  ApparatusGrid.Refresh;
end;

procedure TDispForm.SetTagged(DispStatID: String; Tagged: Boolean);
begin
   If Tagged then
    RunSQL('UPDATE DISPSTAT SET SECIDTAG = ' + SecIDVar + ' WHERE DISPSTATID = ' + PkValue(DispStatID))
  else
    RunSQL('UPDATE DISPSTAT SET SECIDTAG = NULL WHERE DISPSTATID = ' + PkValue(DispStatID));
end;

procedure TDispForm.AvailableApparatusMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var iColumn : LongInt;
    iRow    : LongInt;
  procedure SelectApparatus(Select: Boolean);
  begin
    AvailableApparatus.MouseToCell(X,Y,iColumn,iRow);
    if iColumn > 0 then
    else begin
      TAvailableTruck(AvailableTruckList.Items[irow-1]).Tagged:=Select;
      SetTagged(TAvailableTruck(AvailableTruckList.Items[irow-1]).DispStatID,Select);
      AvailableApparatus.Row:=iRow;
      end;
  end;
begin
  AvailableApparatus.MouseToCell(X, Y, iColumn, iRow);
  If iRow < AvailableApparatus.FixedRows then
    exit;
  If (Button=mbLeft) and (DispCallGrid.RowCount>=2) then begin
    SelectApparatus(True);
    AvailableApparatus.BeginDrag(False);
  end else if (Button = mbRight) and (iColumn > 0) then
    ShowMenu(availableapparatus,AvailableApparatusMenu,x,y)
  else if (Button = mbRight) and (iColumn = 0) and (DispCallGrid.RowCount>=2) then
    SelectApparatus(False);
  AvailableApparatus.Refresh;
end;

function GetDispatchCodeForAssignedToCall: String;
begin
  result := TDispStatCode(DispStatCodeList.Items[0]).DispStatCodeID;
  if mFireID='06090' then begin
    if DispStatCodeList.count > 2 then  // mjs 09/21/2015.  To make medic paging notificaiton work.
      Result := TDispStatCode(DispStatCodeList.Items[1]).DispStatCodeID;


  end;
end;

procedure TDispForm.DispCallGridDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if HiWord(GetKeyState(VK_LBUTTON)) = 0 then begin
    CancelDrag;
    exit;
  end;

  Accept := False;
  if (Source = ApparatusGrid) then
    Accept := TStringGrid(Source).Col <= 2
  else if (Source = AvailableApparatus) then
    Accept := True;
end;

procedure TDispForm.MoveTruckToIncident(iInc: Integer; DateTimeStat: TDateTime; bOnlyTagged: boolean);
var ADispCall         : TDispCall;
    AvTruck           : TAvailableTruck;
    ATruck            : TTruck;
    I                 : Integer;
    IncNumVar         : String;
    DispStatCodeID    : String;
    OldDispStatCodeID : String;
    bCondition        : Boolean;
begin
  appendtolog('start movetrucktoincident');

  DCSTimer.enabled := False;



  try
    If (iInc >= 0) then begin
      ADispCall         := TDispCall(DispCallList.Objects[iinc]);

      if ADispCall.IncStat = 'QUEUED'
       then begin
        if BooleanMessageDlg('Incident in Queue, dispatch incident to assign trucks?') then begin
          If Not FormExists('DispCallTakeForm') then
            DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
          DispCallTakeForm.SetDispatchButton('NEXT');

          DispCallTakeForm.LoadCurrentCall(ADispCall.DispCallID,1);
          DispCallTakeForm.Show;
          DispCallTakeForm.AfterLoadCall();
        end;

        Exit;
      end;

      TFDFunc.BeforeMoveTruckToIncident(GlobalAdoConnection,anystrtoint(ADispCall.DispCallid));
      for I := 0 to AvailableTruckList.Count-1 do begin
        AvTruck := AvailableTruckList.Items[i];
        if bOnlyTagged then
          bCondition := Not AvTruck.Tagged
        else
          bCondition := Not AvTruck.Tagged and not(i=AvailableApparatus.Row-1);

        If bCondition then
          continue;
        ATruck            := TTruck.Create;


        ATruck.UnitNum    := AvTruck.UnitNum;
        ATruck.DispCallID := ADispCall.DispCallID;
        ATruck.Address    := ADispCall.Address;
        ATruck.AlarmNum   := ADispCall.AlarmNum;

        If (MultiFdid)  and (ADispCall.FDID <> AvTruck.Fdid) and Not (alltrim(AvTruck.Fdid) = '') and (SqlLookup(AvTruck.Fdid,'FDID','FDID','DISPATCH') = 'Y') then
          ATruck.NFIRSMainID := LoadMultiNFIRS(ADispCall, AvTruck.Fdid)
        else if (mFireID='52280') and (ADispCall.DispCallTypeID = '2') and (ADispCall.NFIRSMainID = '') and Not (alltrim(AvTruck.Fdid) = '') and (SqlLookup(AvTruck.Fdid,'FDID','FDID','DISPATCH') = 'Y') then
          ATruck.NFIRSMainID := LoadMultiNFIRS(ADispCall, AvTruck.Fdid)
        else
          ATruck.NFIRSMainID := ADispCall.NFIRSMainID;

        if ATruck.NfirsMainid<>SqlLookup(ATruck.NfirsMainid,'NFIRSMAINID','NFIRSMAIN','NFIRSMAINID') then  // mjs see AlpineRedNMX contacts note from 06/18/2009 11:30
          ATruck.NfirsMainID := '';


        TruckList.Add(ATruck);


        DispStatCodeID := GetDispatchCodeForAssignedToCall;


        Open_Query('DISPHIST',false,'SELECT DISPSTATCODE.INSERVICE, DISPHIST.DISPSTATCODEID FROM DISPHIST ' +
                                    'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                                    'WHERE DISPHIST.DISPCALLID = ' + pkValue(ADispCall.DispCallId) + ' AND DISPHIST.UNITNUM = ' + AddExpr(AvTruck.UnitNum) + ' AND DISPSTATCODE.INSERVICE IS NULL ORDER BY DISPHIST.DATETIMESTAT DESC');
        OldDispStatCodeID := GetField('DISPHIST','DISPSTATCODEID').AsString;
        CloseApollo('DISPHIST');

        If AnyStrToInt(OldDispStatCodeID) > 0 then
          ChangeAppStatus(AVTruck.DispStatID, ADispCall.DispCallID, OldDispStatCodeID, ATruck.NFIRSMainID, AvTruck.UnitNum, ADispCall.Address, ADispCall.AlarmNum, Now)
        else begin
          CommonChangeAppStatus(GlobalAdoconnection,AVTruck.DispStatID, ADispCall.DispCallID, DispStatCodeID, ATruck.NFIRSMainID, AvTruck.UnitNum, ADispCall.Address, ADispCall.AlarmNum, Now,'','',GetRunningOrder(globaladoconnection,ADispCall.DispCallID));
          commondisp.AddtoHistory(GlobalAdoConnection,AVTruck.UnitNum,ADispCall.Address,'',AVTruck.DispStatID, ADispCall.DispCallId, DispStatCodeID, ATruck.NFIRSMainID, ADispCall.AlarmNum, Now, ADispCall);
        end;



        If AppLog then
          DoAppLog(ATruck.DispCallID, ATruck.NFIRSMainID, ATruck.UnitNum);
      end;
      TFDFunc.AfterMoveTruckToIncident(GlobalAdoConnection,anystrtoint(ADispCall.DispCallid));

      if SearchPanel.Visible then
        UnitNumSearchField.Value := '';
      UpdateGrids;
    end else
      ShowMessage('You must drop the truck over an open incident');
  finally
    DCSTimer.enabled := True;
  end;
  appendtolog('done movetrucktoincident');
end;

procedure TDispForm.WriteZetronSignal;
var
  i: Integer;
  AvTruck: TAvailableTruck;
  mApp: String;
begin
  // mjs - this only applies to Yonkers
  if not BooleanMessageDlg('Send Zetron Tones?') then exit;
  mApp := '';
  for I := 0 to AvailableTruckList.Count-1 do begin
    AvTruck := AvailableTruckList.Items[i];
    if AVTruck.Tagged or (i=AvailableApparatus.Row-1)then begin
      if mApp <> '' then
        mApp := mApp + ',';
      mApp := mApp + AvTruck.UnitNum;
    end;  
  end;
  if mapp<>'' then               
    TableInsert('ZETRONSIGNALS',['DATETIMEADDED','UNITS'],[Now,mApp])
  else
    AppendToLog('There was an error in WriteZetronSignal');      
end;



procedure TDispForm.MoveTruckFromIncidentToIncident(iTruck, iInc: Integer; DateTimeStat: TDateTime);
var ADispCall : TDispCall;
    ATruck    : TTruck;
    IncNumVar : String;
begin
  ATruck            := TruckList.Items[iTruck];
  ADispCall         := TDispCall(DispCallList.Objects[iInc]);
  ATruck.DispCallID := ADispCall.DispCallID;
  ATruck.AlarmNum   := ADispCall.AlarmNum;
  ATruck.Address    := ADispCall.Address;

  If MultiFdid and (ADispCall.FDID <> ATruck.Fdid) then
    ATruck.NFIRSMainID := LoadMultiNFIRS(ADispCall,ATruck.Fdid)
  else
    ATruck.NFIRSMainID := ADispCall.NFIRSMainID;


  if ATruck.NfirsMainid<>SqlLookup(ATruck.NfirsMainid,'NFIRSMAINID','NFIRSMAIN','NFIRSMAINID') then  // mjs see AlpineRedNMX contacts note from 06/18/2009 11:30
    ATruck.NfirsMainID := '';


  If AppLog then
    DoAppLog(ATruck.DispCallID, ATruck.NFIRSMainID, ATruck.UnitNum);
  ChangeAppStatus(ATruck.DispStatID, ATruck.DispCallID, GetDispatchCodeForAssignedToCall, ATruck.NFIRSMainID, ATruck.UnitNum, ATruck.Address, ATruck.AlarmNum, Now);
  AddtoHistory(ATruck.UnitNum, ADispCall.Address,'',ATruck.DispStatID, ADispCall.DispCallId, GetDispatchCodeForAssignedToCall , ADispCall.NFIRSMainID, ATruck.AlarmNum,Now);
  UpdateGrids;
end;

procedure TDispForm.DispCallGridDragDrop(Sender, Source: TObject; X, Y: Integer);
var Column: Longint;
    Row   : Longint;
    i     : Integer;
begin
  If (Source = AvailableApparatus) then begin
    DispCallGrid.MouseToCell(X, Y, Column, Row);
    If (Row = -1) then
      exit;
    MoveTruckToIncident(Row-1,Now);
  end;

  If (Source = ApparatusGrid) then begin
    if (TStringGrid(Source).Col > 2) then
      exit;

    DispCallGrid.MouseToCell(X, Y, Column, Row);
    If (Row = -1) then
      exit;
    for i := TruckList.Count-1 downto 0 do
      if (TTruck(TruckList[i]).Tagged) or (i=TStringGrid(Source).Row-1) then
        MoveTruckFromIncidentToIncident(i,Row-1,Now);
    AvailableApparatus.Invalidate;
  end;
end;

procedure TDispForm.AvailableApparatusDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if HiWord(GetKeyState(VK_LBUTTON)) = 0 then begin
    CancelDrag;
    exit;
  end;
  
  Accept := False;
  if (Source = ApparatusGrid) then
    Accept := TStringGrid(Source).Col <= 2
  else if (Source = AvailableApparatus) then
    Accept := True;
end;


class function TDispForm.PutSelectTruckBackInService(ATruck: TTruck; DispStatCodeid: String): boolean;
var AvTruck     : TAvailableTruck;

    mInServCode : String;
begin
  result := False;

  if not TDispatchObject.PutSelectTruckBackInService(ATruck) then
    exit;


  if anystrtoint(DispStatCodeID)>0 then
    mInServCode := DispStatCodeid
  else
    mInServCode := GetInServCodeFromList(InserviceList1);
  AddtoHistory(ATruck.UnitNum, ATruck.Address, '', ATruck.DispStatID, ATruck.DispCallId, mInServCode , ATruck.NFIRSMainID, ATruck.AlarmNum, Now);
  CommonPutTruckBackInService(globaladoconnection,mInServCode,ATruck.DispStatID);

  result := true;
end;

procedure TDispForm.AvailableApparatusDragDrop(Sender, Source: TObject; X, Y: Integer);
var i              : Integer;
    mrow           : Integer;
    mColumn        : Integer;
    mSourceUnitNum : String;
    mDestUnitNum   : String;
begin
  If (Source = ApparatusGrid) then begin
    if TStringGrid(Source).Col > 2 then
      exit;

    mRow := ApparatusGrid.Row-1;
    for i := TruckList.Count-1 downto 0 do
      if (TTruck(TruckList[i]).Tagged) or (i=mrow) then begin
        PutSelectTruckBackInService(TTruck(TruckList[i]));
        UpdateGrids;
      end;
  end else if (Source = AvailableApparatus) then begin
    try
      mRow := AvailableApparatus.Row-1;
      if mRow <= AvailableTruckList.Count -1 then
        mSourceUnitNum := TAvailableTruck(AvailableTruckList.Items[mRow]).UnitNum;
      AvailableApparatus.MouseToCell(X, Y, mColumn, mRow);
      if mRow <= AvailableTruckList.Count -1 then
        mDestUnitNum := TAvailableTruck(AvailableTruckList.Items[mRow-1]).UnitNum;
      ResetOrder(mSourceUnitNum,mDestUnitNum);
    except
    end;
  end;
end;

procedure TDispForm.ResetOrder(SourceUnit, DestUnit: String);
var NewOrder   : Real;
    LowerOrder : Integer;
    UpperOrder : Integer;
    DispStatID : String;
begin
  If CheckSecVar('DISPSETUP') then begin
    If not BooleanMessageDlg('Would you like to set the order for ' + SourceUnit + ' so it now displays where you dropped it?') then
      exit;
    DispStatID := '';  
    try
      Open_query('CHGDISPSTAT',false,'SELECT DISPSTATID, SORTORD, UNITNUM FROM DISPSTAT ORDER BY SORTORD');
      while not A('CHGDISPSTAT').eof do begin
        If (tdbfield('CHGDISPSTAT','UNITNUM') = SourceUnit) then
          DispStatID := GetField('CHGDISPSTAT','DISPSTATID').AsString;
        If (tdbfield('CHGDISPSTAT','UNITNUM') = DestUnit) then begin
          LowerOrder := GetField('CHGDISPSTAT','SORTORD').AsInteger;
          A('CHGDISPSTAT').Skip(1);
          UpperOrder := GetField('CHGDISPSTAT','SORTORD').AsInteger;
          If (UpperOrder = 0) then
            NewOrder := LowerOrder + 1
          else
            NewOrder := Round((LowerOrder + UpperOrder)/2);
        end;
        A('CHGDISPSTAT').Skip(1);
      end;
      If Not (DispStatID = '') then
        RunSQL('UPDATE DISPSTAT SET SORTORD = ' + FloatToStr(NewOrder) + ' WHERE DISPSTATID = ' + pkValue(DispStatID));

    finally
      Closeapollo('CHGDISPSTAT');
    end;

  end else
    ShowMessage('You need dispatch setup rights to move a truck in this grid');
end;

procedure TDispForm.EndAlarmClick(Sender: TObject);
var ADispCall: TDispCall;
begin
  If DispCallGrid.Row-1 < 0 then
    ErrMess('You Must Select an Incident First')
  else begin
    ADispCall := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
    CancelAlarm(ADispCall);
  end;
end;

procedure TDispForm.ApparatusGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var ATruck         : TTruck;
    DispStatCodeID : String;
begin
 If (key=VK_RETURN) then
    ApparatusGridDblClick(Sender)
  else if (ApparatusGrid.Row > 0) and (key = VK_DELETE) then begin
    ATruck := GetSelectedTruck;
    If ApparatusGrid.Col-3 < 0 then
      InServiceClick(self)
    else begin
      If BooleanMessageDlg('Clear Time?') then begin
        DispStatCodeID := TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID;
        AppendToLog('ApparatusGridKeyDown: DELETE FROM DISPHIST WHERE DISPCALLID = ' + ATruck.DispCallID +' AND ' +
          ' UNITNUM = ' + AddExpr(ATruck.UnitNum) +' AND DISPSTATCODEID = ' + DispStatCodeID);
        RunSQL('DELETE FROM DISPHIST WHERE DISPCALLID = ' + ATruck.DispCallID +' AND ' +
          ' UNITNUM = ' + AddExpr(ATruck.UnitNum) +' AND DISPSTATCODEID = ' + DispStatCodeID);
        UpdateGrids;
      end;
    end;
  end;
end;

procedure TDispForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_F3) and (TruckList.Count > 0) then
    InServiceClick(Self)

  else if (Key=VK_F5) and PreplanButton.enabled then
    PreplanButtonClick(Self)

  else if (Key=VK_F6) and EndAlarm.Enabled then
    EndAlarmClick(Self)

  else if (Key=VK_F8) then
    NewCallClick(Self)

  else if (key = 78) and (ssCtrl in Shift) then
    NoteButtonClick(Self)

  else if (key = 72) and (ssCtrl in Shift) then
    HideStatusHistory()
    
  else if (Key=VK_F9) and DispCallChoice.Enabled then
    DispCallChoiceClick(Self);
end;

procedure TDispForm.FormResize(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',ButtonPanel);
end;

procedure TDispForm.InServiceClick(Sender: TObject);
begin
  If BooleanMessageDlg('Put Truck ' + GetSelectedTruck.UnitNum + ' Back in Service') then
    PutSelectTruckBackInService(GetSelectedTruck);
end;

procedure TDispForm.AddTruckClick(Sender: TObject);
var mpk     : String;
begin
  try
    DCSTimer.Enabled := false;
    mpk              := '-1';
    DispStatForm     := TDispStatForm.Create(application,'DISPSTAT',mpk,TDispStatForm.NewRecord);
    DispStatForm.ViewOnly := False;
    DispStatForm.ShowModal;
    DispStatForm.Free;
  finally
    DCSTimer.Enabled := true;
  end;  
  UpDateGrids;
end;

procedure TDispForm.AmherCheckClick(Sender: TObject);
begin
  SetTruckLists(False);
end;

procedure TDispForm.DeleteButtonClick(Sender: TObject);
var ATruck : TAvailableTruck;
begin
  ATruck := TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]);
  If BooleanMessageDlg('Delete Apparatus ' + ATruck.UnitNum + '?') then begin
    AppendToLog('Delete Apparatus: ' + ATruck.UnitNum);
    RunSql('DELETE FROM DISPSTAT WHERE DISPSTATID = '+PkValue(ATruck.DispStatID));
  end;
  UpdateGrids;
end;

procedure TDispForm.DispCallGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var PopupPoint : TPoint;
    Row        : Integer;
    Column     : Integer;
begin
  DispCallGrid.MouseToCell(X, Y, Column, Row);
  If (button = mbright) and (DispCallList.Count = 0) then begin
    PopupPoint.X := X;
    PopupPoint.Y := Y;
    PopupPoint   := DispCallGrid.ClientToScreen(PopupPoint);
    NoAlarmsMenu.popup(PopupPoint.x,PopupPoint.y);
  end else if (Row < DispCallGrid.FixedRows) then
    exit
  else if (button = mbright) and (DispCallList.Count > 0) then begin
    DispCallGrid.Row := Row;
    ShowMenu(DispCallgrid,openalarmspopupmenu,x,y);
  end;
end;

procedure TDispForm.E911GridDrawCell(Sender: TObject; ACol, ARow: Longint; Rect: TRect; State: TGridDrawState);
var TheText    : String;
    FontColor  : TColor;
    BrushColor : TColor;
begin
  TheText := Get911CellText(ACol, ARow, FontColor, BrushColor, State);
  with Sender as TStringGrid, Canvas  do begin
    Brush.Color := BrushColor;
    Font.Color  := FontColor;
    Font.Style  := [fsbold];
    TextRect(Rect,Rect.Left+2,Rect.Top+2,TheText);
  end;
  if ARow = 0 then begin
    with (Sender as TStringGrid).Canvas do begin
      Pen.Width:=1;
      pen.Color:=clBlack;
      MoveTo(Rect.Left,Rect.Bottom);
      LineTo(Rect.Right,Rect.Bottom);
    end;
  end;
end;

function TDispForm.Get911String(Occupant, Address, Phone, CallPhone, CallName, DispCallTypeDescr: String; QueuedCall: Boolean): String;
Var RetVal   : String;
    PhoneNum : String;
begin
  if QueuedCall or (MFireid = '07140') then begin
    RetVal       := alltrim(DispCallTypeDescr);
    RetVal       := alltrim(RetVal + ' - ' + Address);
    RetVal       := alltrim(RetVal + '; ' + Occupant);
  end else begin
    If Not (Phone = '') then
      RetVal       := alltrim(Phone);
    If Not (CallPhone = '') and Not (Phone = CallPhone) then
      RetVal       := alltrim(RetVal + IIf(RetVal = '','',',  ') + CallPhone);
    If Not (Address = '') then
      RetVal       := alltrim(RetVal + IIf(RetVal = '','',',  ') + Address);
    If Not (Occupant = '') then
      RetVal       := alltrim(RetVal + IIf(RetVal = '','',',  ') + Occupant);
    If Not (CallName= '') and Not (Occupant= CallName) then
      RetVal       := alltrim(RetVal + IIf(RetVal = '','',',  ') + CallName);
  end;
  Get911String := RetVal;
end;

function TDispForm.Get911CellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; State: TGridDrawState): String;
var iInc   : Integer;
begin
  fontcolor  := clBlack;
  BrushColor := clWindow;
  if ARow = 0 then begin
    BrushColor := clblack;
    fontcolor  := clyellow;
    case ACol of
      0: Result:='';
      1: Result := 'Time';
      2: Result := IIF(UseDispQueue,'Alarm Info','Caller');
    end;
  end else begin
    iInc       := DispCallList.IndexOf(T911Object(E911StringList.Objects[ARow-1]).DispCallID);
    If (iInc >= 0) then begin
      FontColor  := TIncColor(IncColorList[GetCallColor(iinc)]).FontColor;
      BrushColor := TIncColor(IncColorList[GetCallColor(iinc)]).BrushColor;
    end else begin
      Fontcolor  := clyellow;
      BrushColor := clgray;
    end;
    if mFireID = '28028' then begin
      if T911Object(E911StringList.Objects[ARow-1]).Fdid = '28028' then begin
        Fontcolor  := clWhite;
        BrushColor := clRed;
      end;
      if T911Object(E911StringList.Objects[ARow-1]).Fdid = 'GVA  ' then begin
        Fontcolor  := clWhite;
        BrushColor := clBlue;
      end;
    end;
    with T911Object(E911StringList.Objects[ARow-1]) do begin
      Case ACol of
        0: begin
          if (E911Grid.Row=ARow) then
            Result:='==>'
          else
            Result:='';
          BrushColor := clMaroon;
          FontColor  := clWhite;
        end;
        1: Result := FormatDateTime('HH:NN',DateTimeEnt);
        2: Result := Get911String(Occupant, Address, Phone, CallPhone, CallName, DispCallTypeDescr, QueuedCall)
      end;
    end;
  end;
end;

procedure TDispForm.E911CreateCallClick(Sender: TObject);
Var PropID : String;
    E911ID : String;
begin
  inherited;
  If (mFireID = '12345') or AlpineLogin then begin
    PropID := IntToStr((Sender as TMenuItem).Tag);
    Open_Query('PROP',false,'SELECT * FROM PROP WHERE PROPID = ' + PropID);
    Open_Query('E911',true,'SELECT * FROM E911 WHERE 1=2');
    A('E911').Append;
    GetField('E911','DISPLAY').AsString          := 'Y';
    GetField('E911','DATETIMEENT').AsDateTime    := Now;
    GetField('E911','DATETIMEREC').AsDateTime    := Now;
    GetField('E911','FDID').AsString             := GetField('PROP','FDID').AsString;
    GetField('E911','STRNUM').AsString           := GetField('PROP','STRNUM').AsString;
    GetField('E911','STREET').AsString           := GetField('PROP','STREET').AsString;
    GetField('E911','OCCUPANT').AsString         := GetField('PROP','PLASTNAME').AsString;
    GetField('E911','PHONE').AsString            := GetField('PROP','PHONE').AsString;
    GetField('E911','CROSS1').AsString           := GetField('PROP','CROSS1').AsString;
    GetField('E911','CROSS2').AsString           := GetField('PROP','CROSS2').AsString;
    GetField('E911','CALLPHONE').AsString        := GetField('PROP','PHONE').AsString;
    GetField('E911','CALLADDR').AsString         := alltrim(GetField('PROP','STRNUM').AsString + ' ' + tdbfield('PROP','STREET'));
    GetField('E911','CALLNAME').AsString         := GetField('PROP','PLASTNAME').AsString;
    GetField('E911','PROPID').AsString           := PropID;
    GetField('E911','LATITUDE').AsString         := GetField('PROP','LATITUDE').AsString;
    GetField('E911','LONGITUDE').AsString        := GetField('PROP','LONGITUDE').AsString;
    GetField('E911','DISPCALLSOURCEID').AsString := '1';
    A('E911').Post;
    CloseApollo('PROP');

    E911ID := A('E911').NewPk;  
    AddtoHistory('',tdbfield('E911','STRNUM') + ' ' + tdbfield('E911','STREET') , '','','','','',0,Now);
    CloseApollo('E911');
//  RunAlpineForm(TE911Form,E911ID,'E911',TE911Form.NewRecord);
  end;  
end;

procedure TDispForm.E911DispatchClick(Sender: TObject);
begin
  iCalledFrom911 := True;
  NewCallClick(self);
end;

procedure TDispForm.ChangeColor;
Var iCnt : Integer;
    comp : TComponent;
begin
  For iCnt := 0 to CallPanel.ControlCount-1 do begin
    Comp := CallPanel.Controls[iCnt];
    If Comp is TShape then begin
      (Comp as TShape).Pen.Color   := CallShape.Pen.Color;
      If Not ((Comp as TShape).Name = 'CallShape') then
        (Comp as TShape).Brush.Color := CallShape.Pen.Color;
    end;
  end;
end;

procedure TDispForm.UpdateButtons(ADispCall : TDispCall);
begin
  PreplanButton.Enabled := (AnyStrToInt(ADispCall.PropID) > 0);
  MapButton.Enabled     := (ADispCall.Latitude > 0);
end;

procedure TDispForm.SetEditsToBlank;
begin
  SiteNameField.Caption       := '';
  IncNumField.Caption         := '';
  FdidField.Caption           := '';
  DispCallTypeIDField.Caption := '';
  DateTimeDispField.Caption   := '';
  DispCallIDField.Caption     := '';
  CityField.Caption           := '';
  AlarmNumLabel.Caption       := '';
  LocNarrField.Text           := '';
  NarrField.Text              := '';
  CallNameField.Caption       := '';
  AddressField.Caption        := '';
  Cross1Field.Caption         := '';
  DispBoxCodeField.Caption    := '';
  BoxNumField.Caption         := '';
  PropStatDescrField.Caption  := '';
  WarnNarrField.Visible       := false;
  WarnButton.Visible          := false;
  WarnLine.Visible            := false;
  If MultiFdid then
    UpdateFDIDPanel('XXXXX','0');

end;



procedure TDispForm.DispCallGridClickxx(Sender: TObject);
Var   ADispCall          : TDispCall;
     ie911              : Integer;
begin
  DispCallGridClickProc(True);
  if DispCallGrid.Row = 0 then Exit;
  ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  if ADispCall.IncStat = 'QUEUED' then begin
    ie911 := E911StringList.IndexOf(SQLLOokup(ADispCall.DispCallID,'DISPCALLID','E911','E911ID'));
    if ie911 >= 0 then begin
      E911Grid.Row := ie911+1;
    end;
  end;
end;

procedure TDispForm.DispCallGridClickProc(bUpdateGrids: Boolean);
begin
  if (DispCallGrid.Row=0) and (DispCallGrid.RowCount=2) then
    UpdateToIncident(0,bUpdateGrids)
  else
    UpdateToIncident(DispCallGrid.Row-1,bUpdateGrids);
end;

procedure TDispForm.UpdateToIncident(iIncident: Integer;bUpdateGrids: Boolean);
Const InUpdateToIncident : Boolean = False;
Var   ADispCall          : TDispCall;

begin
  try
     if InUpdateToIncident then
      exit
    else
      InUpdateToIncident := True;

    If iIncident >= 0 then begin
      If iIncident<=(DispCallList.Count-1) then begin
        ADispCall                   := TDispCall(DispCallList.Objects[iIncident]);
        UpdateFields(ADispCall,bUpdateGrids);
      end;

    end else begin
      SetEditsToBlank;
      CallShape.Pen.Color   := clgray;
      PreplanButton.Enabled := false;
      MapButton.Enabled     := false;
      UpButton.Enabled      := false;
      DownButton.Enabled    := false;
      RipRunButton.Enabled  := false;
      ChangeColor;
    end;
  finally
    InUpdateToIncident := False;
  end;
end;

procedure TDispForm.UpdateFields(ADispCall: TDispCall; bCallUpdateGrids: Boolean);
begin
  if ADispcall = nil then exit;
  CityField.Caption           := ADispCall.City;
  FdidField.Caption           := ADispCall.FDID;
  AddressField.Caption        := ADispCall.Address;
  SiteNameField.Caption       := ADispCall.SiteName;
  DateTimeDispField.Caption   := FormatDateTime('HH:NN',ADispCall.DateTimeDisp);
  DispCallIDField.Caption     := ADispCall.DispCallID;
  AlarmNumLabel.Caption       := inttostr(ADispCall.AlarmNum);
  NarrField.Text              := ADispCall.Narr;
  NarrField.Font.Size         := IIfI(Length(ADispCall.Narr) > 60,8,10);
  if mFireid = '07030' then
    NarrField.Font.Size       := 12;
  LocNarrField.Text           := ADispCall.LocNarr;
  LocNarrField.Font.Size      := IIfI(Length(ADispCall.LocNarr) > 60,8,10);
  BoxNumField.Caption         := ADispCall.BoxNum;
  If FIREID = '28014' then
    DispBoxCodeField.Caption  := SQLLookup(ADispCall.DispBoxCode,'CODE','DISPBOX','DESCR')
  else
    DispBoxCodeField.Caption  := ADispCall.DispBoxCode;
  If ADispCall.PropTypeID = PropInt then begin
    if ADispCall.Cross1 = '' then
      Cross1Field.Caption       := ADispCall.Cross2
    else
      Cross1Field.Caption       := ADispCall.Cross1 + IIf(ADispCall.Cross2 = '','',' and ' + ADispCall.Cross2);
  end else
    Cross1Field.Caption         := ADispCall.Cross1 + IIf(ADispCall.Cross2 = '','',' and ' + ADispCall.Cross2);

  CallNameField.Caption       := ADispCall.CallName + ' ' + ADispCall.CallPhone + #10 + #13 + ADispCall.CallAddr;
  If GetDispCallTypeObject(ADispCall.DispCallTypeID) = nil then
    DispCallTypeIDField.Caption := ''
  else if MFireID = '52280' then
    DispCallTypeIDField.Caption := alltrim(GetDispCallTypeObject(ADispCall.DispCallTypeID).Descr)
  else
    DispCallTypeIDField.Caption := alltrim(GetDispCallTypeObject(ADispCall.DispCallTypeID).code) + '-' + alltrim(GetDispCallTypeObject(ADispCall.DispCallTypeID).Descr);

  If (AnyStrToInt(ADispCall.DispSubTypeID) > 0) and (GetDispSubTypeObject(ADispCall.DispSubTypeID) <> nil) and (not (MFireID = '52280')) then
    DispCallTypeIDField.Caption  := DispCallTypeIDField.Caption + #10 + #13 + alltrim(GetDispSubTypeObject(ADispCall.DispSubTypeID).code) + '-' + alltrim(GetDispSubTypeObject(ADispCall.DispSubTypeID).Descr)
  else if (AnyStrToInt(ADispCall.DispSubTypeID) > 0) and (GetDispSubTypeObject(ADispCall.DispSubTypeID) <> nil) then
    DispCallTypeIDField.Caption  := DispCallTypeIDField.Caption + #10 + #13 + alltrim(GetDispSubTypeObject(ADispCall.DispSubTypeID).Descr);

  UpdateButtons(ADispCall);
  IncNumField.Caption         := FormatIncNum(ADispCall.INCNUM);
  WarnUpdate(ADispCall);

  if (mFireid = '12345') or (mFireid = '07140') then
    PropStatDescrField.Caption  := GetPropStatus(GlobalAdoConnection,ADispCall);

  If MultiFdid then
    UpdateFdidPanel(ADispCall.FDID,ADispCall.DispCallID);
  DispCallTypeIDField.Visible := true;

  CallShape.Pen.Color         := TIncColor(IncColorList[GetCallColor(DispCallList.IndexOf(ADispCall.DispCallID))]).BrushColor;
  ChangeColor;
  if bCallUpdateGrids then
    UpdateGrids;

end;

procedure TDispForm.AvailableApparatusKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_DELETE) and CanDeleteApparatus then
    DeleteButtonClick(self)
  else if (key=VK_INSERT) {and seSUDISP} then
    AddTruckClick(self);
end;

procedure TDispForm.NewCallClick(Sender: TObject);
var bContinue: Boolean;
begin
  bContinue := true;

  If Not AnyFormExists('DispCallTakeForm') then begin
    DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
  end else begin
    bContinue := false;
    DispCallTakeForm.BringToFront;
    if UseDispQueue then begin
      if MessageDlg('Save Call To Queue and Start New Call?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        DispCallTakeForm.AddToQueueButtonClick(Self);
        DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
        bContinue := true;
      end;
    end else begin
      if BooleanMessageDlg('Cancel Call and Start New Call?') then begin
        DispCallTakeForm.Close;
        DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
        bContinue := true;
      end;
    end;
  end;
  if bContinue then begin
    DispCallTakeForm.AddNewCall;
    DispCallTakeForm.Show;                                                                 
  end;
end;                            

procedure TDispForm.ApparatusGroupBoxResize(Sender: TObject);
begin
  SetApparatusGridWidth;
end;

procedure TDispForm.apparatuspopupmenuPopup(Sender: TObject);
var ATruck         : TTruck;
    DispHist       : TApolloData;
    DispStatCodeID,mSql : String;
begin
  AcknowledgeMobileStamp.Visible := False;
  try
    ATruck         := GetSelectedTruck;
    if ATruck<>nil then begin
      DispStatCodeID           := TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID;
      DispHist                 := Open_Query('SELECT DISPHISTID, SOURCE,DATETIMESTAT FROM DISPHIST WHERE ' +
                                             'DISPCALLID = ' + ATruck.DispCallID +' AND ' +
                                             'UNITNUM = ' + AddExpr(ATruck.UnitNum) +' AND DISPSTATCODEID = ' + DispStatCodeID);
      If tdbField(DispHist,'SOURCE')='M' then begin
        mSql := 'SELECT COUNT(*) FROM DISPMOBACK WHERE DISPHISTID = '+pkValue(tdbField(disphist,'DISPHISTID'));
        if mFireID <> '30064' then
          mSql := mSql + ' AND SECID = '+pkValue(SecIDVar);
        AcknowledgeMobileStamp.Visible := SqlTableRecCount(msql)=0;
      end;
      MobileSendMessage.Visible := ATruck.OnLineMobile;
      If Not DispHist.RecordsExist then begin
        ClearTime.Enabled := false;
        EditTime .Enabled := false;
        EditNotes.Enabled := false;
      end else begin
        ClearTime.Enabled := true;
        EditTime .Enabled := true;
        EditNotes.Enabled := true;
      end;
    end;
  finally
    DispHist.free;
  end;

end;

procedure TDispForm.ChangeBevel(PanelName: String);
begin
  if (Now-FDispFormcreated) <= 5/24/60/60 then exit;   // wait at least 5 seonds before firing.
  StatusPanel.BevelInner      := bvRaised;
  StatusPanel.BevelOuter      := bvRaised;
  CallHistoryPanel.BevelInner := bvRaised;
  CallHistoryPanel.BevelOuter := bvRaised;
  ApparatusGroupBox.BevelInner:= bvRaised;
  ApparatusGroupBox.BevelOuter:= bvRaised;
  AvailablePanel.BevelInner   := bvRaised;
  AvailablePanel.BevelOuter   := bvRaised;
  DispCallPanel.BevelInner    := bvRaised;
  DispCallPanel.BevelOuter    := bvRaised;

  If (PanelName = 'STATUS') then begin
    StatusPanel.BevelInner      := bvLowered;
    StatusPanel.BevelOuter      := bvLowered;

  end else if (PanelName = '911') then begin
    CallHistoryPanel.BevelInner := bvLowered;
    CallHistoryPanel.BevelOuter := bvLowered;

  end else if (PanelName = 'TRUCK') then begin
    ApparatusGroupBox.BevelInner:= bvLowered;
    ApparatusGroupBox.BevelOuter:= bvLowered;

  end else if (PanelName = 'AVAILABLE') then begin
    AvailablePanel.BevelInner   := bvLowered;
    AvailablePanel.BevelOuter   := bvLowered;

  end else if (PanelName = 'INCIDENT') then begin
    DispCallPanel.BevelInner    := bvLowered;
    DispCallPanel.BevelOuter    := bvLowered;

  end
end;

procedure TDispForm.StatusPanelEnter(Sender: TObject);
begin
  ChangeBevel('STATUS');
  DCSTimerTimer(self);  
end;

procedure TDispForm.CallHistoryPanelEnter(Sender: TObject);
begin
  ChangeBevel('911');
  DCSTimerTimer(self);
end;

procedure TDispForm.ApparatusGroupBoxEnter(Sender: TObject);
begin
  ChangeBevel('TRUCK');
  DCSTimerTimer(self);  
end;

procedure TDispForm.AvailablePanelEnter(Sender: TObject);
begin
  ChangeBevel('AVAILABLE');
  DCSTimerTimer(self);
end;

procedure TDispForm.DispCallPanelEnter(Sender: TObject);
begin
  ChangeBevel('INCIDENT');
  DCSTimerTimer(self);
end;

procedure TDispForm.ManualPanelBaseEnter(Sender: TObject);
begin
  ChangeBevel('MANUAL');
  DCSTimerTimer(self);
end;

procedure TDispForm.Delete911(Sender: TObject);
var E911ID: String;
    DispCallID : String;
    bQueuedCall : Boolean;
begin
  If E911Grid.Row-1 < 0 then
    exit
  else if BooleanMessageDlg(IIf(T911Object(E911StringList.Objects[E911Grid.Row-1]).QueuedCall,'Cancel and Remove this Call?','Remove this 911 call ?')) then begin
    E911ID       := T911Object(E911StringList.Objects[E911Grid.Row-1]).E911ID;
    DispCallID   := T911Object(E911StringList.Objects[E911Grid.Row-1]).DispCallID;
    bQueuedCall  := T911Object(E911StringList.Objects[E911Grid.Row-1]).QueuedCall;

    RunSQL('UPDATE E911 SET DISPLAY = ' + AddExpr('')+ ' ,QUEUEDCALL = ' + AddExpr('') + ' WHERE E911ID = ' + PkValue(E911ID));

    if bQueuedCall and (DispCallID <> '') then begin
      RunSQL('UPDATE DISPCALL SET INCSTAT = ' + AddExpr('CANCEL') + ' WHERE DISPCALLID = ' + PkValue(DispCallID));
      DCSTimerTimer(self);
    end;
    Set911List;
  end;
end;

procedure TDispForm.TrainingLabelDblClick(Sender: TObject);
begin
  TrainingLabel.Visible := false;
end;

procedure TDispForm.TransferE911ID(mE911ID: String);
var DispCallID : String;
    bQueuedCall,bContinue : Boolean;
begin
  bContinue    := True;
  bQueuedCall  := False;
  If mE911ID = '' then
    Exit;

  If Not AnyFormExists('DispCallTakeForm') then begin
    DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
  end else begin
    bContinue := false;
    DispCallTakeForm.BringToFront;
    if UseDispQueue then begin
      if MessageDlg('Save Call To Queue and Start New Call?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
        DispCallTakeForm.AddToQueueButtonClick(Self);
        DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
        bContinue := true;
      end;
    end else begin
      if BooleanMessageDlg('Cancel Call and Start New Call?') then begin
        DispCallTakeForm.Close;
        DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
        bContinue := true;
      end;
    end;
  end;

  if Not bContinue then Exit;
  

  Open_Query('E911',true,'SELECT * FROM E911 WHERE E911ID = ' + PkValue(mE911ID));

  if tdbfield('E911','DISPCALLID') <> '' then begin
    DispCallID      := tdbfield('E911','DISPCALLID');
    bQueuedCall     := tdbfield('E911','QUEUEDCALL') = 'Y';
  end;

  if bQueuedCall then begin
    DispCallTakeForm.SetDispatchButton('QUEUE');

    DispCallTakeForm.LoadCurrentCall(DispCallID,1);
    DispCallTakeForm.Show;
    DispCallTakeForm.AfterLoadCall();

    CloseApollo('E911');
  end else begin
    DispCallID                                     := DispCallTakeForm.AddNewCall;

    If (tdbfield('E911','STRNUM') = '') and (tdbfield('E911','STREET') <> '') and (tdbField('E911','CROSS1') <> '') then begin
      DispCallTakeForm.Cross1Field.Text            := CheckStreetAlias(tdbfield('E911','STREET'));
      DispCallTakeForm.Cross2Field.Text            := CheckStreetAlias(tdbField('E911','CROSS1'));
    end else begin
      DispCallTakeForm.StrNumField.Text            := tdbfield('E911','STRNUM');
      DispCallTakeForm.StreetField.Text            := CheckStreetAlias(tdbfield('E911','STREET'));
      DispCallTakeForm.Cross1Field.Text            := CheckStreetAlias(tdbField('E911','CROSS1'));
      DispCallTakeForm.Cross2Field.Text            := CheckStreetAlias(tdbField('E911','CROSS2'));
    end;

    if mfireid='72000' then begin
      DispCallTakeForm.StateField.Text := tdbField('E911','STATE');
      DispCallTakeForm.CityField.Text := tdbField('E911','CITY');
    end;
    if anystrtofloat(tdbfield('E911','LATITUDE'))<>0 then begin
      DispCallTakeForm.NewCall.latitude := getfield('E911','LATITUDE').AsFloat;
      DispCallTakeForm.NewCall.longitude:= getfield('E911','LONGITUDE').AsFloat;
    end;

    if mfireid='SEMRE' then begin
      DispCallTakeForm.StateField.Text := tdbField('E911','STATE');
      DispCallTakeForm.CityField.Text  := tdbField('E911','CITY');
      DispCallTakeForm.zipfield.Text   := tdbField('E911','ZIP');
    end;

    if ((mfireid='28028') or (mfireid='07140')) then
      DispCallTakeForm.NewCall.CountyNum:= getfield('E911','E911NUM').AsString;

    if (mFireID = '20004') or (mFireID = '12345') then
      DispCallTakeForm.RoomAptField.Value := tdbfield('E911','ROOMAPT');

    DispCallTakeForm.LastNameField.Text            := dbfield('E911','OCCUPANT');
    DispCallTakeForm.NarrField.Text                := GetField('E911','NARR').AsString;

    If (alltrim(substr(tdbfield('E911','CALLPHONE'),1,3)) = '') then begin
      If Not (alltrim(substr(tdbfield('E911','PHONE'),1,3)) = '') then begin
        DispCallTakeForm.CallPhoneField.Text := IIf(alltrim(substr(tdbfield('E911','PHONE'),1,3)) = '','',tdbfield('E911','PHONE'));
        DispCallTakeForm.PhoneField.Text     := IIf(alltrim(substr(tdbfield('E911','PHONE'),1,3)) = '','',tdbfield('E911','PHONE'));
      end;
    end else begin
      DispCallTakeForm.CallPhoneField.Text   := IIf(alltrim(substr(tdbfield('E911','CALLPHONE'),1,3)) = '','',tdbfield('E911','CALLPHONE'));
      DispCallTakeForm.PhoneField.Text       := IIf(alltrim(substr(tdbfield('E911','CALLPHONE'),1,3)) = '','',tdbfield('E911','CALLPHONE'));
    end;
    DispCallTakeForm.CallNameField.Text          := dbfield('E911','CALLNAME');
    DispCallTakeForm.CallAddrField.Text          := dbfield('E911','CALLADDR');




    DispCallTakeForm.SetDispCallType(GetField('E911','DISPCALLTYPEID').AsString);
    DispCallTakeForm.DispCallSourceIDField.Value := GetField('E911','DISPCALLSOURCEID').AsString;
    CloseApollo('E911');

    if anystrtoint(dispCallid)>0 then
      RunSQL('UPDATE E911 SET DISPCALLID = ' + DispCallID + ' WHERE E911ID = ' + mE911ID)
    else
      appendtoLog('ERROR - DISPCALLID NOT GREATER THAN 0');  

    //  TDispPropForm.OnE911TransferClick(self,DispCallTakeForm,mE911ID);
    DispCallTakeForm.Show;
    If Not (alltrim(DispCallTakeForm.StrNumField.Text) = '') and Not (alltrim(DispCallTakeForm.StreetField.Text) = '') then begin
      DispCallTakeForm.Search('ADDR');


      If DispCallTakeForm.PropBrowse.RowCount - DispCallTakeForm.PropBrowse.FixedRows  = 1 then
        DispCallTakeForm.SelectButton.Click
      else if (mFireID='60061') and (DispCallTakeForm.iAddrCount=1) then
        DispCallTakeForm.SelectButton.Click;


    end else If (alltrim(DispCallTakeForm.StrNumField.Text) = '') and (alltrim(DispCallTakeForm.StreetField.Text) = '')
      and (alltrim(DispCallTakeForm.Cross1Field.Text) <> '') and (alltrim(DispCallTakeForm.Cross2Field.Text) <> '') then begin
      DispCallTakeForm.Search('INT');
      If DispCallTakeForm.PropBrowse.RowCount - DispCallTakeForm.PropBrowse.FixedRows  = 1 then
        DispCallTakeForm.SelectButton.Click;
    end else if (DispCallTakeForm.PhoneField.Text<>'') then begin
      DispCallTakeForm.Search('PHONE');
      If DispCallTakeForm.PropBrowse.RowCount - DispCallTakeForm.PropBrowse.FixedRows  = 1 then
        DispCallTakeForm.SelectButton.Click;
    end;
    TDispPropForm.OnE911TransferClick(self,DispCallTakeForm,mE911ID);
  end;



end;


procedure TDispForm.E911GridClick(Sender: TObject);
var iinc  : Integer;
begin
  if Not UseDispQueue then Exit;
  if E911Grid.Row = 0 then Exit;

  iinc := DispCallList.IndexOf(T911Object(E911StringList.Objects[E911Grid.Row-1]).DispCallID);

  if iinc >= 0 then begin
    DispCallGrid.Row := iinc+1;
    UpdateToIncident(iinc,False);
  end;
  UpdateGrids;
end;

procedure TDispForm.E911GridDblClick(Sender: TObject);
Var E911ID     : string;
    sMessage   : string;
begin
  sMessage := Get911ClickPrompt;
  If Not (mFireID = '52091') then begin
    If (E911Grid.Row-1 >= 0) and BooleanMessageDlg(sMessage) then begin
      E911ID := T911Object(E911StringList.Objects[E911Grid.Row-1]).E911ID;
      TransferE911ID(E911ID);
    end;
    UpdateGrids;
  end;
end;

procedure TDispForm.E911GridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = VK_RETURN) then
    E911GridDblClick(self)
  else if (key = VK_DELETE) then
    Delete911(self);
end;



procedure TDispForm.DispCallGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = VK_DELETE) and (DispCallList.Count > 0) then
    EndAlarmClick(self)
  else if (key=VK_INSERT) then
    NewCallClick(self);
end;

procedure TDispForm.StatusGridDrawCell(Sender: TObject; ACol, ARow: Integer; Rect: TRect; State: TGridDrawState);
var TheText: String;
    FontColor, BrushColor: TColor;
begin
  TheText := GetStatusCellText(ACol, ARow, FontColor, BrushColor, State);
  with Sender as TStringGrid, Canvas  do begin
    Brush.Color := BrushColor;
    Font.Color  := FontColor;
    Font.Style  := [fsbold];
    TextRect(Rect,Rect.Left+2,Rect.Top+2,TheText);
  end;
  If ARow = 0 then begin
    with (Sender as TStringGrid).Canvas do begin
      Pen.Width:=1;
      pen.Color:=clBlack;
      MoveTo(Rect.Left,Rect.Bottom);
      LineTo(Rect.Right,Rect.Bottom);
    end;
  end;
end;

function TDispForm.GetStatusCellText(ACol, ARow: Integer; var fontcolor, BrushColor: TColor; State: TGridDrawState): String;
var iinc: Integer;
begin
  fontcolor  := clBlack;
  BrushColor := clWindow;
  if ARow = 0 then begin
    BrushColor := clblack;
    fontcolor  := clyellow;
    case ACol of
      0: Result:='';
      1: Result := 'Time';
      2: Result := 'Status';
      3: Result := 'Narrative';
    end;
  end else begin
    If StatusList.Count<>0 then begin
      iinc       := DispCallList.IndexOf(TStatusList(StatusList[ARow-1]).DispCallID);
      FontColor  := TIncColor(IncColorList[GetCallColor(iinc)]).FontColor;
      BrushColor := TIncColor(IncColorList[GetCallColor(iinc)]).BrushColor;
      with TStatusList(StatusList[ARow-1]) do begin
        Case ACol of
          0: begin
            if (StatusGrid.Row=ARow) then
              Result:='==>'
            else
              Result:='';
            BrushColor := clMaroon;
            FontColor  := clWhite;
            end;
          1: Result := FormatDateTime('HH:NN',DateTimeStat);
          2: Result := descr;
          3: Result := Narrative;

        end;
      end;
    end;
  end;
end;

procedure TDispForm.DisplayStatusPanel(mDisplay: Boolean);
begin
  Status911Panel.Visible := mDisplay;
end;

procedure TDispForm.ClearTimeClick(Sender: TObject);
var DispStatCodeID : String;
    ATruck         : TTruck;
begin
  AppendToLog('ClearTimeClick');
  ATruck         := GetSelectedTruck;
  DispStatCodeID := TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID;
  RunSQL('DELETE FROM DISPHIST WHERE DISPCALLID = '+PkValue(ATruck.DispCallID)+
    ' AND UNITNUM = ' + AddExpr(ATruck.UnitNum) + ' AND DISPSTATCODEID = ' + PkValue(DispStatCodeID));
  UpdateGrids;
end;

procedure TDispForm.ClockTimerTimer(Sender: TObject);
begin
  TimeField.Caption := GetTimeAsString;
end;

procedure TDispForm.EditTimeClick(Sender: TObject);
var RectBox        : TRect;
    UpperPoint     : TPoint;
    LowerPoint     : TPoint;
    ChangeTime     : Boolean;
    OldTimeVar     : String;
    NewTimeVar     : String;
    ATruck         : TTruck;
    DispStatCodeID : String;
    DispHistID     : String;
    DateTimeStat   : TDateTime;
    DispHist       : TApolloData;
begin                   ATruck         := GetSelectedTruck;
  DispStatCodeID := TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID;
  DispHist       := Open_Query('SELECT DISPHISTID, DATETIMESTAT FROM DISPHIST '+
    ' WHERE DISPCALLID = ' + ATruck.DispCallID + ' AND UNITNUM = ' + AddExpr(ATruck.UnitNum) + ' AND DISPSTATCODEID = ' + DispStatCodeID);
  DispHistID     := GetField(DispHist,'DISPHISTID').AsString;
  DateTimeStat   := GetField(DispHist,'DATETIMESTAT').AsDateTime;
  OldTimeVar     := FormatDateTime('MM/DD/YYYY HH:NN:SS',GetField(DispHist,'DATETIMESTAT').AsDateTime);
  DispHist.Free;

  TimeEditForm                := TTimeEditForm.Create(Application);
  TimeEditForm.TimeField.Text := substr(OldTimeVar,12,8);
  RectBox                     := ApparatusGrid.CellRect(ApparatusGrid.Col,ApparatusGrid.Row);
  LowerPoint.X                := rectBox.Right;
  LowerPoint.Y                := rectBox.Bottom;
  UpperPoint.X                := rectBox.Left;
  UpperPoint.Y                := rectBox.Top;
  LowerPoint                  := ApparatusGrid.ClientToScreen( LowerPoint );
  UpperPoint                  := ApparatusGrid.ClientToScreen( UpperPoint );
  TimeEditForm.Left           := UpperPoint.X;
  TimeEditForm.Top            := LowerPoint.Y;
  ChangeTime                  := TimeEditForm.ShowModal = mrOk;
  NewTimeVar                  := TimeEditForm.TimeField.Text;
  TimeEditForm.Free;


  If ChangeTime then
    RunSQL('UPDATE DISPHIST SET DATETIMESTAT = ' + FormatDateTimeStringForSQL(DateToStr(DateOf(DateTimeStat))+' '+NewTimeVar)+
      ' WHERE DISPHISTID = ' + PkValue(DispHistID));
  UpdateGrids;
end;

procedure TDispForm.editnotesClick(Sender: TObject);
begin
  ApparatusGridDblClick(self);
end;

procedure TDispForm.ApparatusGridDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  if HiWord(GetKeyState(VK_LBUTTON)) = 0 then begin
    CancelDrag;
    exit;
  end;
  Accept := False;
  if (Source = AvailableApparatus) then
    Accept := True;
end;

procedure TDispForm.ApparatusGridDragDrop(Sender, Source: TObject; X, Y: Integer);
var Column, Row, iInc: Longint;
begin
  If Source = AvailableApparatus then begin
    iInc := -1;
    ApparatusGrid.MouseToCell(X, Y, Column, Row);
    If Row=0 then
      exit;
    try
      If DispCallList.Count = 1 then
        iinc := 0
      else begin

        iinc := DispCallList.IndexOf(TTruck(TruckList[Row-ApparatusGrid.FixedRows]).DispCallID);
      end;
    except
      iInc:=-1
    end;
    If (Row=-1) and (iinc = -1) then
      exit;
    MoveTruckToIncident(iInc,Now);
  end;
end;

procedure TDispForm.FindUnitOnCall(Sender: TObject);
var
  iDispStatID,i: Integer;
  mDispCallid: String;
begin
  iDispStatId := TMenuItem(Sender).Tag;
  if iDispStatId <= 0 then exit;
  mDispCallid := sqllookup(inttostr(iDispStatid),'DISPSTATID','DISPSTAT','DISPCALLID');

  for i:= 0 to DispCallList.Count -1 do begin
    if mDispCallid = DispCallList[i] then begin
      if i+1 <= DispCallGrid.RowCount-1 then begin
        DispCallGrid.Row := i+1;
        break;
      end;  
    end;
  end;  



end;

procedure TDispForm.OpenAlarmsPopupMenuPopup(Sender: TObject);
var ADispCall : TDispCall;
    m         : TMenuItem;
    mAbbr     : String;
    i         : Integer;
begin
  If DispCallGrid.Row-1 < 0 then begin
    ErrMess('You Must Select and Incident First');
    exit;
  end;
  ADispCall         := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  NFIRSMenu.Visible := False;

  NFIRSMenu.Clear;
  findmenu.visible := OnlyOnCall;
  FindMenu.Clear;
  if findmenu.visible then begin
    open_query('GETOPENUNITS',False,'SELECT DISPSTATID,UNITNUM FROM DISPSTAT WHERE NOT (DISPCALLID IS NULL) ORDER BY UNITNUM DESC');
    while not A('GETOPENUNITS').eof do begin
      m := tMenuItem.Create(self);
      m.Tag             := GetField('GETOPENUNITS','DISPSTATID').AsInteger;
      m.Caption         := tdbfield('GETOPENUNITS','UNITNUM');
      m.OnClick         := FindUnitOnCall;
      findmenu.add(m);

      A('GETOPENUNITS').Skip(1);
    end;
    CloseApollo('GETOPENUNITS');
  end;
  Open_Query('NFIRSMAIN',false,'SELECT FDID, INCNUM, NFIRSMAINID, STRNUM, STREET FROM NFIRSMAIN WHERE DISPCALLID = ' + PkValue(ADispCall.DispCallID));
  While Not A('NFIRSMAIN').Eof do begin
    NFIRSMenu.Visible := true;
    m                 := TMenuItem.Create(self);
    m.Tag             := GetField('NFIRSMAIN','NFIRSMAINID').AsInteger;
    mAbbr             := GetAbbreviate(tdbfield('NFIRSMAIN','FDID'));
    m.Caption         := iif(mAbbr='',tdbfield('NFIRSMAIN','FDID'),mAbbr) + ': ' + substr(tdbfield('NFIRSMAIN','INCNUM'),1,4) + '-' + substr(tdbfield('NFIRSMAIN','INCNUM'),5,6);
    m.OnClick         := NFIRSMenuChoice;
    NFIRSMenu.Add(m);
    A('NFIRSMAIN').Skip(1);
  end;
  CloseApollo('NFIRSMAIN');

  EMSMenu.Visible   := False;
  EMSMenu.Clear;
  Open_Query('EMS',false,'SELECT FDID, INCNUM, EMSID,STRNUM, STREET FROM EMS WHERE DISPCALLID = ' + PkValue(ADispCall.DispCallID));
  While Not A('EMS').Eof do begin
    EMSMenu.Visible := true;
    m                 := TMenuItem.Create(self);
    m.Tag             := GetField('EMS','EMSID').AsInteger;
    If GetAbbreviate(tdbfield('EMS','FDID'))<>'' then
      m.Caption         := GetAbbreviate(tdbfield('EMS','FDID')) + ': ';

    m.Caption         := m.Caption + substr(tdbfield('EMS','INCNUM'),1,4) + '-' + substr(tdbfield('EMS','INCNUM'),5,6);
    m.OnClick         := EMSMenuChoice;
    EMSMenu.Add(m);
    A('EMS').Skip(1);
  end;
  CloseApollo('EMS');

  If (anyStrToInt(ADispCall.PropID) > 0) then begin
  end else begin
  end;

  SendMessageToAll.Enabled := False;
  for i := 0 to TruckList.count -1 do
    SendMessageToAll.Enabled := SendMessageToAll.Enabled or ((TTruck(TruckList[i]).DispCallID=ADispCall.DispCallID) and TTruck(TruckList[i]).OnLineMobile);

  if ADispCall.IncStat = 'QUEUED' then begin
    ChangeCallStatusMenu.visible := False;
    ChangeCallType1.visible      := False;
    SendMessageToAll.visible     := False;
    NextAvailable.Visible        := False;
  end else if ADispCall.IncStat = 'OPEN' then begin
    ChangeCallStatusMenu.visible := True;
    ChangeCallType1.visible      := True;
    SendMessageToAll.visible     := True;
    NextAvailable.Visible        := RunCard;
  end;

end;

procedure TDispForm.NFIRSMenuChoice(Sender: TObject);
begin
  RunAlpineForm(TNfirsForm,inttostr((Sender as TMenuItem).Tag),'NFIRSMAIN',TNFIRSForm.NewRecord);
end;

procedure TDispForm.EMSMenuChoice(Sender: TObject);
begin
  RunAlpineForm(TEMSForm,inttostr((Sender as TMenuItem).Tag),'EMS',nil);
end;


procedure TDispForm.EndAlarmMenuClick(Sender: TObject);
begin
  EndAlarmClick(Self);
end;

procedure TDispForm.ChangeStatusPopupClick(Sender: TObject);
Var DispStatCodeID   : String;
    FoundTaggedTruck : Boolean;
    iTruck           : Integer;
begin
  DispStatCodeID   := inttostr(TMenuItem(Sender).Tag);
  FoundTaggedTruck := False;
  for iTruck := 0 to TruckList.Count-1 do
    If TTruck(TruckList.Items[itruck]).Tagged then
      FoundTaggedTruck:=True;

  If FoundTaggedTruck then begin
    for iTruck:= TruckList.Count-1 downto 0 do
      If TTruck(TruckList.Items[itruck]).Tagged then
        ChangeStatus(TTruck(TruckList.Items[itruck]),DispStatCodeID);
     UpdateGrids;
  end else
    ChangeStatus(GetSelectedTruck,DispStatCodeID);
end;


function GetnfirsMainID(mNfirsMainid,mDispCallid: string): String;
var
  mBrowseObject: TBrowseObject;
  iNfirsMainid: Integer;
begin
  result := mNfirsmainid;

  if SqlTableRecCount('select count(*) from nfirsmain where dispcallid = '+pkValue(mDispCallid))>1 then begin
    mBrowseObject:=TBrowseObject.create;
    mBrowseObject.AddField('INCNUM',      'INCNUM',      '','Incident#',       100);
    mBrowseObject.AddField('FDID',      'FDID',      '','FDID',       100);
    mBrowseObject.AddField('DEPTNAME',      'DEPTNAME',      'FDID','Department',       200);

    mBrowseObject.PrimeTable := 'NFIRSMAIN';
    mBrowseObject.AddTable('NFIRSMAIN','','');
    mBrowseObject.AddTable('FDID','FDID','FDID');
    mBrowseObject.ForeignKeyField := 'DISPCALLID';
    mBrowseObject.ForeignKeyValue := mDispCallid;
    iNfirsMainid := DoAlpineSelect(mBrowseObject);
    if iNfirsMainid > 0 then
      result := inttostr(iNfirsMainid);
    mBrowseObject.Free;
  end;
end;
procedure TDispForm.ChangeStatusMenuClick(Sender: TObject);
var AvTruck        : TAvailableTruck;
    DispHistID     : String;
    DispStatCodeID : String;
begin
  DispStatCodeID := inttostr(TMenuItem(Sender).Tag);
  AvTruck        := TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]);
  ChangeAppStatus(AvTruck.DispStatID, '0', DispStatCodeID, '0', '', '', 0, Now);
  DispHistID     := AddtoHistory(AvTruck.UnitNum,'', '',AvTruck.DispStatID, '0', DispStatCodeID, '0', 0,Now);
  If GetDispStatCodeObject(DispStatCodeID).PromptEntry then begin
    RunAlpineFormShowModal(TDispHistForm,DispHistID,'DISPHIST',TDispHistForm.NewRecord);
  end;
  UpdateGrids;
end;

procedure TDispForm.ChangeCallStatusMenuClick(Sender: TObject);
var ADispCall     : TDispCall;
    bContinue     : Boolean;
    mNFirsMainId  : String;
begin
  If GetDispStatCodeObject(inttostr(TMenuItem(Sender).tag)).PromptEntry then
    bContinue := BooleanMessageDlg('Are you Sure?')
  else
    bContinue := True;

  if bContinue then begin
    try
      dcstimer.enabled := False;
      ADispCall     := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
      if GetDispStatCodeObject(inttostr(TMenuItem(Sender).tag)).NfirsMainId then
        mNfirsMainid := GetNfirsMainID(ADispCall.Nfirsmainid,ADispCall.Dispcallid)

      else
        mNfirsMainid  := ADispCall.NfirsMainid;
        
      AddtoHistory('', ADispCall.Address, '','0', ADispCall.DispCallId, inttostr(TMenuItem(Sender).tag), mNfirsMainid, ADispCall.AlarmNum, Now, ADispCall);
    finally
      dcstimer.enabled := True;
    END;  
    UpdateGrids;
  end;
end;



procedure TDispForm.E911GridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var m          : TMenuItem;
    Incident   : TDispCall;
    i          : Integer;
    PopupPoint : TPoint;
begin
  AssigntoCall.Enabled := (DispCallList.Count > 0);
  If (button = mbright) and (E911StringList.Count > 0) then begin
    If (DispCallList.Count>0) then begin
      AssigntoCall.Clear;
      for i := 0 to DispCallList.Count-1 do begin
        Incident  := TDispCall(DispCallList.Objects[i]);
        m         := TMenuItem.Create(self);
        m.caption := 'Assign to ' + FormatIncNum(Incident.INCNUM) + ': ' + alltrim(Incident.Address);
        m.Tag     := i;
        m.OnClick := AssigntoCallClick;
        AssigntoCall.Add(m);
      end;
    end;
    ShowMenu(E911Grid,E911Menu,x,y);
  end else if (button = mbright) and (E911StringList.Count = 0) then begin
    PopupPoint.x := X;
    PopupPoint.y := Y;
    PopupPoint   := E911Grid.ClientToScreen(PopupPoint);
    E911Menu.popup(PopupPoint.x,PopupPoint.y);
  end;
end;

procedure TDispForm.RemoveCallClick(Sender: TObject);
var iinc : Integer;
begin
  if UseDispQueue then begin
    if T911Object(E911StringList.Objects[E911Grid.Row-1]).QueuedCall then begin
      iinc := DispCallList.IndexOf(T911Object(E911StringList.Objects[E911Grid.Row-1]).DispCallID);

      if iinc >= 0 then begin
        DispCallGrid.Row := iinc+1;
        UpdateToIncident(iinc,False);
      end;
      UpdateGrids;
      EndAlarmClick(self);
    end else
      Delete911(self);
  end else
    Delete911(self);
end;

procedure TDispForm.AssigntoCallClick(Sender: TObject);
var
  iinc                        : Integer;
  E911ID,DispCallID,IncNUM    : String;
  ADispCall                   : TDispCall;
begin
  try
    If (DispCallGrid.Row-1 >= 0) and (E911Grid.Row-1 >= 0) then begin
      if not T911Object(E911StringList.objects[E911Grid.Row-1]).QueuedCall then begin
        iinc        := TMenuItem(Sender).Tag;
        ADispCall   := TDispCall(DispCallList.Objects[iinc]);
        DispCallID  := ADispCall.DispCallID;
        IncNUM      := ADispCall.IncNUM;
        If  (E911Grid.Row-1 >= 0) and BooleanMessageDlg(IIF(ADispCall.IncStat='OPEN','Assign this call to ' + IncNUM,'Assign this call to ' + ADispCall.Address)) then begin
          E911ID := PkValue(T911Object(E911StringList.objects[E911Grid.Row-1]).E911ID);
          RunSQL('UPDATE E911 SET DISPCALLID = ' + DispCallID + ', QUEUEDCALL = ' + AddExpr('Y') + ' WHERE E911ID = ' + E911ID);
          AddDispHistNote(DispCallid,E911ID);
        end;
        if BooleanMessageDlg('Remove from 911 History View?') then
          RunSQL('UPDATE E911 SET DISPLAY = ' + AddExpr('N') + ', QUEUEDCALL = ' + AddExpr('C') + ' WHERE E911ID = ' + E911ID);
        UpdateGrids;
      end else begin
        ShowMessage('This is a queue call! Can not assign to an alarm.');
      end;
    end;
  except
  end;
end;


procedure TDispForm.AddDispHistNote(dispcallid,mE911id: String);
var
  dispstatcodeid,Narr,STATEMENT   : String;
begin
  if mFireid='30064' then
    AddStatusToCall(DispHistNewRecordFromE911Transfer,False);
  if mFireid='07140' then begin
    dispstatcodeid := SQLLookup('NFD','CODE','DISPSTATCODE','DISPSTATCODEID');
    Narr           := SQLLookup(mE911ID,'E911ID','E911','NARR');
    STATEMENT      := 'INSERT INTO DISPHIST (NARR,DISPSTATCODEID,DATETIMESTAT,DISPCALLID) VALUES('+AddExpr(NARR)+','+dispstatcodeid+','+AddExpr(DateTimeToStr(now))+ ',' +dispcallid+')';
    RunSql(STATEMENT);
  end;

end;



procedure TDispForm.ViewCallClick(Sender: TObject);
begin
  If (E911Grid.Row-1 >= 0) then 
    RunAlpineForm(TE911Form,T911Object(E911stringList.Objects[E911Grid.Row-1]).E911ID,'E911',nil);
end;

procedure TDispForm.DeleteStatusHistory;
begin
  If TDispHistForm.CanDeleteRecord(self) then begin
    try
      DCSTimer.Enabled := false;
      AppendToLog('DeleteStatusHistory');
      If (StatusGrid.Row-1 >= 0) and BooleanMessageDlg('Are you sure ?') then begin
        RunSql('DELETE FROM DISPHIST WHERE DISPHISTID = ' + PkValue(TStatusList(StatusList[StatusGrid.Row-1]).DispHistID));
        UpdateGrids;
      end;
    finally
      DCSTimer.Enabled := true;
    end;
  end else
    ShowMessage('You do not have security to delete this record');  
end;

procedure TDispForm.StatusGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_DELETE) then
    DeleteStatusHistory
  else if (key=VK_RETURN) then
    EditStatusChange
  else if (key=VK_INSERT) then
    AddStatusToCall(DispHistNewRecord,True);
end;

procedure TDispForm.AddStatusToCall(NewRecordFunc: TDataSetNotifyEvent; bSetNfirsMainid: Boolean);
Var DispHistID : String;
    ADispCall: TDispCall;
begin
  If TDispHistForm.CanAddRecord(self) then begin
    If (DispCallList.Count > 0) then begin
      try
        DCSTimer.Enabled := false;
        if bSetNfirsMainid and (mFireid= '52101') then begin
          ADispCall                                      := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
          if ADispCall<>nil then
            AddStatusNfirsMainid := GetNfirsMainID(ADispCall.Nfirsmainid,ADispCall.Dispcallid)
        end else
          AddStatusNfirsMainid := '';

        DispHistID   := '-1';
        DispHistForm := TDispHistForm.Create(application,'DISPHIST',DispHistID,NewRecordFunc);
        DispHistForm.ShowModal;
        DisphistForm.Free;
      finally
        DCSTimer.Enabled := true;
      end;
      UpdateGrids;
    end;
  end else
    ShowMessage('You do not have security access to add a record');
end;

procedure TDispForm.DispHistButtonClick(Sender: TObject);
begin
  SortGridViewDriver('DISPHIST',TDispHistForm,TDispHistForm.NewRecord,nil);
end;

procedure TDispForm.DispHistNewRecord(DataSet: TDataSet);
Var ADispCall : TDispCall;
begin
  ADispCall                                      := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  DataSet.FieldByname('DISPCALLID').Asstring     := ADispCall.DispCallID;
  DataSet.FieldByname('DATETIMESTAT').AsDateTime := Now;
  DataSet.FieldByname('UNITNUM').AsString        := '';
  DataSet.FieldByName('SECID').AsString          := SecIDVar;
  dataset.fieldByName('SOURCE').AsString         := 'N';
  if anystrtoint(AddStatusNfirsMainid)>0 then
    dataset.fieldByName('nfirsmainid').AsInteger := anystrtoint(AddStatusNfirsMainid);
end;

procedure TDispForm.DispHistNewRecordFromE911Transfer(DataSet: TDataSet);
var
  iapc: Integer;
  m911Object: T911Object;
begin
  DispHistNewRecord(DataSet);
  iapc := anystrtoint(sqllookup('APC','CODE','DISPSTATCODE','DISPSTATCODEID'));
  if iapc > 0 then
    DataSet.FieldByName('DISPSTATCODEID').AsInteger := iapc;

  If  (E911Grid.Row-1 >= 0) then begin
    m911Object := T911Object(E911StringList.Objects[E911Grid.Row-1]);
    DataSet.FieldByName('narr').AsString := 'Transferred phone call '+m911Object.CallPhone+' made at '+formatdatetime('mm/dd hh:nn:ss',m911Object.DateTimeEnt);
  end;  
    
end;

procedure TDispForm.EditStatusChange;
var DispHistID   : String;
    DisphistForm : TDispHistForm;
begin
  If (StatusGrid.Row-1 >= 0) then begin
    DispHistID       := TStatusList(StatusList.Items[StatusGrid.Row-1]).DispHistID;
    DispHistForm     := TDispHistForm.Create(application,'DISPHIST',DispHistID,TDispHistForm.NewRecord);
    DispHistForm.DispStatCodeIDField.SQLExpr := 'SELECT * FROM DISPSTATCODE WHERE SORTORD = 0 ORDER BY CODE';
    DispHistForm.ShowModal;
    DispHistForm.Free;
  end;
  UpdateGrids;
end;

procedure TDispForm.StatusGridDblClick(Sender: TObject);
begin
  EditStatusChange;
end;

procedure TDispForm.StatusGridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If (button = mbright) and (StatusList.Count > 0) then
    ShowMenu(StatusGrid,StatusMenu,x,y);
end;

procedure TDispForm.AddStatusChoiceClick(Sender: TObject);
begin
  AddStatusToCall(DispHistNewRecord,True);
end;

procedure TDispForm.EditStatusChoiceClick(Sender: TObject);
begin
  EditStatusChange;
end;

procedure TDispForm.DeleteStatusChoiceClick(Sender: TObject);
begin
  DeleteStatusHistory;
end;

procedure TDispForm.AvailableApparatusMenuPopup(Sender: TObject);
var m         : TMenuItem;
    ADispCall : TDispCall;
    i         : Integer;
    mAvailableTruck: TAvailableTruck;
begin
  PutOnCallChoice.Clear;
  for i := 0 to DispCallList.Count - 1 do begin
    ADispCall := TDispCall(DispCallList.Objects[i]);
    m         := TMenuItem.Create(self);
    m.caption := FormatIncNum(ADispCall.INCNUM) + '  ' + alltrim(ADispCall.Address);
    m.Tag     := i;
    m.OnClick := PutOnCallChoiceClick;
    m.Enabled := ADispCall.IncStat = 'OPEN';
    PutOnCallChoice.Add(m);
  end;
  mAvailableTruck := GetSelectedAvailableTruck;
  if mAvailableTruck<>nil then
    AvailableSendMessage.Enabled := mAvailableTruck.OnLineMobile;

end;

procedure TDispForm.PutOnCallChoiceClick(Sender: TObject);
begin
  MoveTruckToIncident(TMenuItem(Sender).Tag,Now);
end;

procedure TDispForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DCSTimer.Enabled := False;
  Action           := cafree;
end;

procedure TDispForm.MapButtonClick(Sender: TObject);
Var ADispCall  : TDispCall;
    DispCallID : String;
begin
  If (DispCallGrid.Row > 0) then begin
    ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
    DispCallID := ADispCall.DispCallID;
    DisplayGoogleMap(ADispCall, DispCallID,'');
    Try
    //  ADispCall.Free;
    Except
    end;
  end else
    ShowMessage('Select the open alarm to view.  Then press the map botton.');
end;

class procedure TDispform.DisplayGoogleMap(ADispCall : TDispCall; DispCallID, PropID : String);
Var EXECommand : String;
begin
  If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
    EXECommand := ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
    If Not ProcessExists('REDNMXMAPBOX.EXE') then
      WinExec(pchar(ExeCommand),SW_SHOW);
    Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    If A('GISD10COMPUTER').RecordsExist then
      GetTable('GISD10COMPUTER').Edit
    else
      GetTable('GISD10COMPUTER').Append;
    GetField('GISD10COMPUTER','DISPCALLID').AsString   := DispCallID;;
    GetField('GISD10COMPUTER','PROPID').AsString       := PropID;
    GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
    GetTable('GISD10COMPUTER').Post;
    CloseApollo('GISD10COMPUTER');
  end else begin
    If Not FormExists('GisSysForm') then
      GisSysForm := TGisSysform.Create(Application);
    GisSysForm.Show;
    DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, ADispCall.Latitude,ADispCall.Longitude);
  end;
end;

function TDispForm.CancelAlarm(ADispCall : TDispCall): Boolean;
var ATruck              : TTruck;
    i                   : Integer;
    mBoxCode            : String;
    CancelMessage       : String;
    FieldList           : String;
    mPutTrucksInService : Boolean;
    DispHist            : TApolloData;
    MCIForm             : TMCIForm;
begin
  try
    DCSTimer.Enabled := False;
    result           := False;
    If not TDispatchObject.CheckCancelAlarm(ADispCall) then begin
      DCSTimer.Enabled := true;
      exit;
    end;



    If (rtrim(ADispCall.INCNUM) = '') then
      CancelMessage := 'Clear Call @ ' + ADispCall.Address + '; Event #: ' + ADispCall.DispcallID  + '?'
    else
      CancelMessage := 'Clear Incident '+FormatIncNum(ADispCall.INCNUM)+' and its Apparatus?';

    If not BooleanMessageDlg(CancelMessage) then begin
      DCSTimer.Enabled    := true;
      exit;
    end;

    try
      mPutTrucksInService := True;

      for i := 0 to TruckList.Count-1 do begin
        ATruck := TruckList.Items[i];
        If ATruck.DispCallID = ADispCall.DispCallID then
          mPutTrucksInService := mPutTrucksInService and PutSelectTruckBackInService(ATruck);
      end;
      If mPuttrucksInService then begin
        Eoa1(globaladoconnection,ADispCall);

        If CheckModule('MCI') then begin
          RunSQL('UPDATE MCIHIST SET DISPREV = ' + AddExpr('Y') + ' WHERE DISPCALLID = ' + PkValue(ADispCall.DispCallID));
          MCIForm := TMCIForm(GetFormOfType(TMCIForm));
          If MciForm <> nil then
            MciForm.RefreshButtonClick(Self);
        end;

        if UseDispQueue then begin
          RunSQL('UPDATE E911 SET DISPLAY = ' + AddExpr('N')+ ', QUEUEDCALL = ' + AddExpr('C') + ' WHERE DISPCALLID = ' + PkValue(ADispCall.DispCallID));
        end;

        result := true;
      end;
    finally
      DCSTimer.Enabled := True;
    end;

    If DispCallGrid.RowCount > 1 then begin
      DispCallGrid.Row := 1;
      UpdateToIncident(DispCallGrid.Row ,False);
    end;
  finally
    DCSTimer.Enabled := True;
  end;
  UpDateGrids;
end;

procedure TDispForm.PreplanButtonClick(Sender: TObject);
var ADispCall : TDispCall;
    TxtFile   : System.Text;
begin
  if GetCurrentDispCall=nil then begin
    ShowMessage('You must select a call first.');
    exit;
  end;

  If DispCallList.Count > 0 then begin
    ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);

    If Not FormExists('DispPropForm') then
      DispPropForm := TDispPropForm.Create(Application,ADispCall.PropID,ADispCall.DispCallID);
    DispPropForm.FPropID     := ADispCall.PropID;
    DispPropForm.FDispCallID := ADispCall.DispCallID;
    DispPropForm.Show;
  end;
end;

procedure TDispForm.SetLabelColors(mColor: String);
  procedure SetFont(l: TLabel);
  begin
    l.Font.Color := StringToColor(mColor);
  end;
begin
  If alltrim(mColor)='' then
    exit;
  SetFont(IncNumLabel);
  SetFont(CityLabel);
  SetFont(AlarmTimeL);
  SetFont(AlarmL);
  SetFont(FdidLabel);
  SetFont(EventNumberL);
  SetFont(SiteNameField);
  SetFont(CrossLabel);
  SetFont(DispBoxIDLabel);
  SetFont(boxnumlabel);
end;

procedure TDispForm.SetDispCallGridToLastRow;
begin
  DispCallGrid.Row       := DispCallList.Count;
end;

procedure TDispForm.EditDispListClick(Sender: TObject);
var Instance   : TDispStatForm;
    DispStatID : String;
begin
  try
    DCSTimer.Enabled := false;
    DispStatID       := TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]).DispStatID;
    Instance         := TDispStatForm.Create(application,'DISPSTAT',DispStatID,TDispStatForm.NewRecord);
    Instance.ViewOnly := False;    
    Instance.ShowModal;
    Instance.Free;
  finally
    DCSTimer.Enabled := true;
  end;
  UpDateGrids;
end;


function TDispForm.GetAbbreviate(FdidVar: String): String;
Var FDIDNum: Integer;
begin
  GetAbbreviate := '';
  For FdidNum := 0 to FdidListx.Count-1 do begin
     If TFDIDItem(FdidListx.Objects[FdidNum]).Fdid = FdidVar then
       GetAbbreviate := TFDIDItem(FdidListx.Objects[FdidNum]).Abbreviate;
  end;
end;

procedure TDispForm.LoadFdid;
Var FdidCheck      : TCheckBox;
    MultiFdidLabel : TLabel;
    i              : Integer;
begin

  i := 0;
  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE FROM FDID WHERE DISPATCH = ' + AddExpr('Y') + ' ORDER BY ABBREVIATE');
  While Not A('FDID').Eof do begin

    FdidCheck                := TCheckBox.Create(self);
    FdidCheck.Parent         := FdidScrollBar;
    FdidCheck.Caption        := tdbfield('FDID','ABBREVIATE');
    FdidCheck.Left           := 1;
    FdidCheck.Top            := 03 + i * 31;
    FdidCheck.Width          := 60;
    FdidCheck.Name           := SayFdidName(tdbfield('FDID','FDID'));
    FdidCheck.Enabled        := false;
    FdidCheck.OnMousedown    := FdidCheckBoxClick;
    FdidCheck.PopUpMenu      := FdidPopupMenu;

    MultiFdidLabel           := TLabel.Create(self);
    MultiFdidLabel.Parent    := FdidScrollBar;
    MultiFdidLabel.Left      := 18;
    MultiFdidLabel.Top       := 18 + I * 31;
    MultiFdidLabel.Width     := 60;
    MultiFdidLabel.Name      := 'FDID' + tdbfield('FDID','FDID') + 'LABEL';
    MultiFdidLabel.Caption   := '';
    MultiFdidLabel.Font.Name := 'SMALL FONTS';
    MultiFdidLabel.Font.Size := 7;

    A('FDID').Skip(1);

    FdidScrollBar.VertScrollBar.Range := 28 + (I * 31);
    i                                 := i + 1;
  end;
  CloseApollo('FDID');

  LoadFdidBrowse;
end;



procedure TDispForm.UpdateFdidPanel(PrimeFdidVar: String; DispCallID: String);
Var FdidNum  : Integer;
    FdidVar  : String;
    OpenFdidList : TStringList;
    mcheckBox: TCheckBox;
  function CheckFDIDExist(FdidVar: String): Boolean;
  Var i : Integer;
  begin
    CheckFdidExist := false;
    For i := 0 to OpenFdidList.Count - 1 do begin
      If FdidVar = substr(OpenFdidList[i],1,5) then
        CheckFdidExist := true;
    end;
  end;
begin
  CurrentCallFdidList.Clear;
  For FdidNum := 0 to FdidListx.Count-1 do begin
    FdidVar := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
    TCheckBox(FindComponent(SayFdidName(FdidVar))).Onclick := Nil;
    TCheckBox(FindComponent('FDID' + FdidVar + 'Label')).Caption := '';
  end;
  If PrimeFdidVar = 'XXXXX' then begin
    For FdidNum := 0 to FdidListx.Count-1 do begin
      FdidVar := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Font.Color := clblack;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Checked    := false;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Enabled    := false;
    end;
  end else begin
    OpenFdidList := TStringList.Create;
    OpenFdidList.Add(PrimeFdidVar);

    Open_Query('CHECKINC',false,'SELECT FDID, INCNUM FROM NFIRSMAIN WHERE DISPCALLID = ' + PkValue(DispCallID));
    While Not A('CHECKINC').Eof do begin
      try
        OpenFdidList.Add(dbfield('CHECKINC','FDID'));
        If dbfield('CHECKINC','FDID') <> '' then begin
          mCheckBox := TCheckBox(FindComponent('FDID' + dbfield('CHECKINC','FDID') + 'LABEL'));
          if mcheckbox <> nil then begin
            mCheckBox.enabled := False;
            If dbfield('CHECKINC','FDID') = PrimeFdidVar then
              mcheckBox.Font.Color := clblue
            else
              mCheckBox.Font.Color := clblack;
            mcheckBox.Caption := substr(dbfield('CHECKINC','INCNUM'),5,6);
          end;
        end;
      except
      end;
      A('CHECKINC').Skip(1);
    end;
    CloseApollo('CHECKINC');

    For FdidNum := 0 to FdidListx.Count-1 do begin
      FdidVar := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Checked    := false;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Font.Color := clblack;
      TCheckBox(FindComponent(SayFdidName(FdidVar))).Enabled    := true;


      If CheckFdidExist(FdidVar) then begin
        TCheckBox(FindComponent(SayFdidName(FdidVar))).Checked := true;
        CurrentCallFdidList.Add(FdidVar);
        If (FdidVar = PrimeFdidVar) then
          TCheckBox(FindComponent(SayFdidName(FdidVar))).Font.Color := clblue;
        TCheckBox(FindComponent(SayFdidName(FdidVar))).enabled := False;

      end;
    end;

  end;
  For FdidNum := 0 to FdidListx.Count-1 do begin
    FdidVar                                                         := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
    TCheckBox(FindComponent(SayFdidName(FdidVar))).Onclick    := LoadNewNFIRS;
  end;
end;

procedure TDispForm.ApparatusGridMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If (ApparatusGrid.DefaultRowHeight - y) > 0 then begin
  end;
end;

function TDispForm.GetCurrentDispCall: TDispCall;
begin
  result := nil;
  if (DispCallGrid.Row>0) and  (DispCallGrid.Row<= DispCallGrid.RowCount) then begin
    if DispCallGrid.Row-1<=DispCallList.count-1 then
      result := TDispCall(DispCallList.Objects[DispCallGrid.Row-1])
  end else
    result := nil;
end;

function TDispForm.GetCurrentDispCallID: Integer;
var
  mDispCall: TDispCall;
begin
  mDispCall := GetCurrentDispCall;
  if mDispCall<>nil then
    result := anystrtoint(mDispCall.DispCallID)
  else
    result := -1;
end;



procedure TDispForm.FdidPopupMenuPopup(Sender: TObject);
Var ADispCall : TDispCall;
    NFIRSMain : TApolloData;
begin
  ADispCall := GetCurrentDispCall;
  NFIRSMain := Open_Query('SELECT INCNUM FROM NFIRSMAIN WHERE DISPCALLID = ' + PkValue(ADispCall.DispCallID) + ' AND FDID = ' + AddExpr(PopUpFdidvar));
  If NFIRSMain.RecordsExist then begin
    AddFdidChoice.Enabled    := false;
    AddFdidChoice.Caption    := 'Add Incident for ' + GetAbbreviate(PopUpFdidVar);
    DeleteFdidChoice.Enabled := true;
    DeleteFdidChoice.Caption := 'Delete Incident ' + substr(dbfield(NFIRSMain,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSMain,'INCNUM'),5,6);
    PrimeFdidChoice.Enabled  := false;
    PrimeFdidChoice.Caption  :='Make ' + GetAbbreviate(PopUpFdidVar) + ' Primary';
  end else begin
    AddFdidChoice.Enabled    := true;
    AddFdidChoice.Caption    := 'Add Incident for ' + GetAbbreviate(PopUpFdidVar);
    DeleteFdidChoice.Enabled := false;
    DeleteFdidChoice.Caption := 'Delete Incident';
    PrimeFdidChoice.Enabled  := false;
    PrimeFdidChoice.Caption  :='Make Primary';
  end;
  NFIRSMain.Free;
end;

procedure TDispForm.AcknowledgeMobileStampClick(Sender: TObject);
begin
  AcknowledgeMobileUpdate(GetSelectedTruck,TDispStatCode(DispStatCodeList.Items[ ApparatusGrid.Col-3 ]).DispStatCodeID);
end;


procedure TDispForm.AcknowledgeMobileUpdate(ATruck: TTruck; DispStatCodeid: String);
var
  disphist: TApolloData;
begin
  if anystrtoint(SecIDVar)>0 then begin
    try
      DispHist       := Open_Query('SELECT DISPHISTID, SOURCE,DATETIMESTAT FROM DISPHIST WHERE DISPCALLID = ' + ATruck.DispCallID + ' AND UNITNUM = ' +
        AddExpr(ATruck.UnitNum) + ' AND  DISPSTATCODEID = ' + DispStatCodeID);
      TableInsert('DISPMOBACK',['DISPHISTID','SECID'],[GetField(DISPHIST,'DISPHISTID').AsString,SecIDVar]);
      UpdateGrids;
    finally
      disphist.free;
    end;
  end;
end;

procedure TDispForm.AddFdidChoiceClick(Sender: TObject);
Var ADispCall : TDispCall;
begin
  ADispCall := GetCurrentDispCall;
  LoadMultiNFIRS(ADispCall, PopUpFdidVar);
  UpdateFdidPanel(ADispCall.FDID, ADispCall.DispCallID);
end;

procedure TDispForm.LoadNewNFIRS(sender: TObject);
var ADispCall: TDispCall;
    FdidVar  : String;
    FdidNum  : Integer;
begin

  For FdidNum := 0 to FdidListx.Count-1 do begin
    FdidVar                                                         := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
    TCheckBox(FindComponent(SayFdidName(FdidVar))).Onclick    := Nil;
  end;
  FdidVar   := GetFdid((Sender as TCheckBox).Name);
  If (Sender as TCheckBox).Checked then begin
    ADispCall := GetCurrentDispCall;
    If (anystrtoint(LoadMultiNFIRS(ADispCall, FdidVar)) = 0) then
      (Sender as TCheckBox).Checked := false;
    UpdateFdidPanel(ADispCall.FDID, ADispCall.DispcallID);
  end else
    (Sender as TCheckBox).Checked := true;
  For FdidNum := 0 to FdidListx.Count-1 do begin
    FdidVar                                                         := TFDIDItem(FdidListx.Objects[FdidNum]).Fdid;
    TCheckBox(FindComponent(SayFdidName(FdidVar))).Onclick    := LoadNewNFIRS;
  end;
  UpdateGrids;
end;


function TDispForm.LoadMultiNFIRS(ADispCall: TDispCall; NewFdidVar: String): String;
Var NFIRS             : Boolean;
    EMS               : Boolean;
    NewDispCallTypeID : String;
    NewDispSubTypeID  : String;
    bIncludeNotes     : Boolean;
    bDispatch         : Boolean;
    IncIDVar          : String;
    IncNumvar         : String;
  function SelectCallType: Boolean;
  begin
    DispSelForm    := TDispSelForm.Create(Application,ADispCall.DispCallTypeID,NewFdidVar);
    If DispSelForm.ShowModal = mrOk then begin
      NewDispCallTypeID := DispSelForm.DispCallTypeID;
      NewDispSubTypeID  := DispSelForm.DispSubTypeID;
      SelectCallType    := true;
    end else
      SelectCallType    := false;
    DispSelForm.Free;
  end;
begin
  NewDispCallTypeID := '';
  NewDispSubTypeID  := '';
  try
    DcsTimer.Enabled := false;
    If TFDIDItem(GetFdidObject(NewFdidVar))<>nil then begin
      NFIRS        := TFDIDItem(GetFdidObject(NewFdidVar)).NFIRS;
      EMS          := TFDIDItem(GetFdidObject(NewFdidVar)).EMS;
    end;
    LoadMultiNFIRS := ADispCall.NFIRSMainID;
    Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE DISPCALLID = ' + Pkvalue(ADispCall.DispCallID) + ' AND FDID = ' + AddExpr(NewFdidVar));
    IncIDVar := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    CloseApollo('NFIRSMAIN');
    If (AnyStrToInt(IncIDVar) = 0) and SelectCallType then begin
      if (mFireid = 'AMHER') and (1=2) then   //mjs - check with mark.  12/20/2017...   this may be neededs
        bDispatch := TFDFunc.CheckOkToDispatch(ADispCall)
      else
        bDispatch := True;
      if bDispatch then begin
        AddAdditionalIncidentToCall(globaladoconnection,ADispCall,NewFdidVar,NewDispCallTypeID,IncIDVar,IncNumvar);
        If CheckModule('PAGE') then begin
          if AnyStrToInt(NewDispCallTypeID)>0 then
            DispatchPage(GlobalAdoConnection,NewDispCallTypeid, '',ADispCall,NewFdidVar, GetIncludeNotes(mFireid) )
          else
            DispatchPage(GlobalAdoConnection,ADispCall,NewFdidVar, GetIncludeNotes(mFireid) );
        end;
        AddtoHistory('','','Generated ' + substr(IncNumVar,1,4) + '-' + substr(IncNumVar,5,6) + ' for ' + SqlLookUp(NewFDIDVar,'FDID','FDID','DEPTNAME'),'0',ADispCall.DispCallId, GenNFIRSID,IncIDVar,1,Now, ADispCall);
        LoadMultiNFIRS   := IncIDVar;
      end;
    end;
    If (IncIDVar <> '') then
      LoadMultiNFIRS := IncIDVar;
  finally
    DcsTimer.Enabled := true;
  end;
end;

procedure TDispForm.FdidCheckBoxClick(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    PopupFdidVar := GetFdid((Sender as TCheckBox).Name);
end;

procedure TDispForm.PictometryButtonClick(Sender: TObject);
Var ADispCall : TDispCall;
begin
  If DispCallGrid.Row >= 1 then begin
    ADispCall := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
    DisplayPictometry(ADispCall.Latitude,ADispCall.Longitude);
  end else begin
    {$ifdef REDNMX}
    MainForm.PictButtonClick(self);
    {$ENDIF}
  end;  
end;

procedure TDispForm.DownButtonClick(Sender: TObject);
begin
  try
  DispCallGrid.Row := DispCallGrid.Row + 1;
  except
  end;
end;



procedure TDispForm.UpButtonClick(Sender: TObject);
begin
  If DispCallGrid.Row > 1 then
    DispCallGrid.Row := DispCallGrid.Row -1;
end;
procedure TDispForm.HistoryButtonClick(Sender: TObject);
begin
  SortGridViewDriver('DISPCALL',TDispCallForm,TDispCallForm.NewRecord,nil);
end;

procedure TDispForm.WarnUpdate(ADispCall : TDispCall);
begin
  If (ADispCall.WarnDisp = 'Y') then begin
    WarnNarrField.Visible := true;
    WarnButton.Visible    := true;
    WarnLine.Visible      := true;
    WarnNarrField.Caption := ADispCall.WarnNarr;
  end else begin
    WarnNarrField.Visible := false;
    WarnButton.Visible    := false;
    WarnLine.Visible      := false;
  end;
end;

procedure TDispForm.WarnButtonClick(Sender: TObject);
Var PropID : String;
    Prop   : TApolloData;
begin
 If Not FormExists('DispEditNarrForm') then
    DispWarnNarrForm := TDispWarnNarrForm.Create(application);

  DispWarnNarrForm.Caption               := 'Warnings for ' + IncNumField.Caption;
  PropID                                 := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).PropID;
  Prop                                   := Open_Query('SELECT WARNDATE, WARNNARR FROM PROP WHERE PROPID = ' + PkValue(PropID));
  DispWarnNarrForm.WarnDatePanel.Caption := 'Warning entered on ' + GetField(Prop,'WARNDATE').AsString;
  DispWarnNarrForm.WarnNarrField.Text    := alltrim(GetField(Prop,'WARNNARR').AsString);
  Prop.Free;
  DispWarnNarrForm.Show;

  DispWarnNarrForm.Left := 55 + LocNarrButton.Left;
  DispWarnNarrForm.Top  := 35 + LocNarrButton.Top;
end;

procedure TDispForm.AddressFieldDblClick(Sender: TObject);
begin
  ShowMessage('Found');
end;

procedure TDispForm.FormActivate(Sender: TObject);
begin
  DCSTimerTimer(self);
end;

procedure TDispForm.ShowDispCallForm(bShowProQA: Boolean);
Var PkVar        : String;
    DispCallForm : TDispCallForm;
    EMSId        : String;
begin
  If DispCallList.Count > 0 then begin
    PkVar            := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).DispCallID;
    If mFireID = 'CVANY' then begin
      EMSID := SQLLookUp(PKVar,'DISPCALLID','EMS','EMSID');
      RunAlpineForm(TEMSForm,EMSID,'EMS',TEmsForm.NewRecord);
    end else begin
      RunAlpineForm(TDispCallForm,pkVar,'DISPCALL',TDispCallForm.NewRecord);
      If bShowProQA then begin
        DispCallForm := TDispCallForm(GetFormOfType(TDispCallForm));
        if DispCallForm <> nil then
          DispCallForm.DispCallTabs.ActivePage := DispCallForm.ProQAParamount;
      end;
    end;  
  end;
end;

procedure TDispForm.DispCallChoiceClick(Sender: TObject);
begin
  ShowDispCallForm(False);
end;  

procedure TDispForm.NarrButtonClick(Sender: TObject);
begin
  If Not FormExists('DispEditNarrForm') then
    DispEditNarrForm                := TDispEditNarrForm.Create(application);

  DispEditNarrForm.Caption        := 'Comments for call ' + IncNumField.Caption;
  DispEditNarrForm.NarrField.Text := NarrField.Text;
  DispEditNarrForm.DispCallID     := DispCallIDField.Caption;
  DispEditNarrForm.FieldName      := 'NARR';
  DispEditNarrForm.Show;

  DispEditNarrForm.Left           := 55 + NarrButton.Left;
  DispEditNarrForm.Top            := 35 + NarrButton.Top;  
end;

procedure TDispForm.LocNarrButtonClick(Sender: TObject);
begin
  If Not FormExists('DispEditNarrForm') then
    DispEditNarrForm                := TDispEditNarrForm.Create(application);

  DispEditNarrForm.Caption        := 'Location Comments for call ' + IncNumField.Caption;
  DispEditNarrForm.NarrField.Text := LocNarrField.Text;
  DispEditNarrForm.DispCallID     := DispCallIDField.Caption;
  DispEditNarrForm.FieldName      := 'LOCNARR';
  DispEditNarrForm.Show;

  DispEditNarrForm.Left           := 55 + LocNarrButton.Left;
  DispEditNarrForm.Top            := 35 + LocNarrButton.Top;
end;

procedure TDispForm.CallButtonClick(Sender: TObject);
Var DispCall : TApolloData;
begin
  If Not FormExists('DispCallInfoForm') then
    DispCallInfoForm := TDispCallInfoForm.Create(application);

  DispCall                             := Open_Query('SELECT CALLNAME, CALLADDR, CALLPHONE FROM DISPCALL WHERE DISPCALLID = ' + PkValue(DispCallIDField.Caption));
  DispCallInfoForm.CallNameField.Text  := tdbfield(DispCall,'CALLNAME');
  DispCallInfoForm.CallAddrField.Text  := tdbfield(DispCall,'CALLADDR');
  
  If alltrim(substr(tdbfield(DispCall,'CALLPHONE'),1,3)) = '' then
    DispCallInfoForm.CallPhoneField.Text := ''
  else if alltrim(tdbfield(DispCall,'CALLPHONE')) = '-   -' then
    DispCallInfoForm.CallPhoneField.Text := ''
  else
    DispCallInfoForm.CallPhoneField.Text := tdbfield(DispCall,'CALLPHONE');
    
  DispCall.Free;
  DispCallInfoForm.DispCallID          := DispCallIDField.Caption;
  DispCallInfoForm.Show;

  DispCallInfoForm.Left := 55 + CallButton.Left;
  DispCallInfoForm.Top  := 35 + CallButton.Top;
end;

procedure TDispForm.NextAlarmButtonClick(Sender: TObject);
var ADispCall : TDispCall;
begin
  AppendToLog('Nth Alarm Selected: ' + DispCallIDField.Caption);
  If Not FormExists('DispCallTakeForm') then
    DispCallTakeForm := TDispCallTakeForm.Create(Application,True);

  if UseDispQueue then begin
    ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);

    if ADispCall.IncStat = 'QUEUED' then begin
      DispCallTakeForm.SetDispatchButton('NEXT');
      If BooleanMessageDlg('Call is in Queue, Dispatch Initial Alarm?') then begin
        DispCallTakeForm.NewCall.AlarmNum := 1;
      end else begin
        DispCallTakeForm.Free;
        Exit;
      end;
    end else begin
      DispCallTakeForm.SetDispatchButton('NEXT');
      DispCallTakeForm.NewCall.AlarmNum := GetCurrentDispCall.AlarmNum+1;
    end;
  end else begin
    DispCallTakeForm.SetDispatchButton('NEXT');
    DispCallTakeForm.NewCall.AlarmNum := GetCurrentDispCall.AlarmNum+1;
  end;

  DispCallTakeForm.LoadCurrentCall(DispCallIDField.Caption,DispCallTakeForm.NewCall.AlarmNum);
  DispCallTakeForm.Show;
  DispCallTakeForm.AfterLoadCall();
end;


procedure TDispForm.LocationButtonClick(Sender: TObject);
begin
  if UseDispQueue then begin
    if TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).IncStat = 'QUEUED' then begin
      ShowMessage('Change Location From Queued Call List!');
      Exit;
    end;
  end;

  PullUpCallTakerScreen('CHANGE');
end;

procedure TDispForm.PullUpCallTakerScreen(mMode: String);
Var AlarmNum : Integer;
begin
  if GetCurrentDispCall=nil then begin
    ShowMessage('You must highlight a call first');
    exit;
  end;
  If Not FormExists('DispCallTakeForm') then begin 
    AlarmNum         := GetCurrentDispCall.AlarmNum;
    DispCallTakeForm := TDispCallTakeForm.Create(Application,True);
    DispCallTakeForm.LoadCurrentCall(DispCallIDField.Caption,AlarmNum);

    DispCallTakeForm.Show;
  end else begin
    DispCallTakeForm.Show;
    ShowMessage('You must complete the information for this current call first');
  end;
  DispCallTakeForm.SetDispatchButton(mMode);
end;

procedure TDispForm.ChangeStatusPopupPopup(Sender: TObject);
var mTruck           : TTruck;
    i                : Integer;
    iDispositionCode : Integer;
    mItem            : TMenuItem;
begin
  mTruck := GetSelectedTruck;
  if mTruck = nil then exit;
  Open_Query('GETDISP',False,'SELECT NFIRSAPPDISPID FROM NFIRSAPP WHERE DISPCALLID = '+PkValue(mTruck.DispCallId)+' AND UNITNUM = '+AddExpr(mTruck.UnitNum));
  iDispositionCode := GetField('GETDISP','NFIRSAPPDISPID').AsInteger;
  CloseApollo('GETDISP');

  for i := 0 to DispositionMenu.Count-1 do
    TMenuItem(DispositionMenu.Items[i]).Checked := TMenuItem(DispositionMenu.Items[i]).Tag = idispositionCode;
  mItem := TMenuItem(FindComponent('SendMessageToMobile'));
  if mItem<>nil then
    TMenuItem(mItem).Visible := mTruck.OnLineMobile;
end;

procedure TDispForm.E911HistoryChoiceClick(Sender: TObject);
begin
  SortGridViewDriver('E911',TE911Form,TE911Form.NewRecord,nil);
end;

procedure TDispForm.CallTypeButtonClick(Sender: TObject);
begin
  if UseDispQueue then begin
    if TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).IncStat = 'QUEUED' then begin
      ShowMessage('Change Call Type From Queued Call List');
      Exit;
    end;
  end;

  If TimeChangeCallID <> '' then
    ChangeCallTypeProc
  else
    ShowMessage('Must assign Status Code to Time Call Type Changed');
end;

procedure TDispForm.ResizeButtons;
Var ButtonNumber : Integer;
    ButtonList   : TStringList;
    ButtonWidth  : Integer;
begin
  exit;
  ButtonList := TStringList.Create;
  For ButtonNumber := 0 to ButtonPanel.ControlCount-1 do begin
    If (ButtonPanel.Controls[ButtonNumber] is TAlpineGlowButton) and TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Visible then begin
      ButtonList.Add( IntToStr( TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Tag ) + padl(IntToStr(ButtonNumber),2,' ') + TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Name);
    end;
  end;

  ButtonWidth := Round(ButtonPanel.Width / ButtonList.count);

  For ButtonNumber := 0 to ButtonList.Count-1 do
    TAlpineGlowButton(ButtonPanel.Controls[StrToInt( alltrim(substr(ButtonList[ButtonNumber],2,2)) ) ]).Width := ButtonWidth;
end;

procedure TDispForm.RipRunButtonClick(Sender: TObject);
Var ADispCall : TDispCall;
begin

  ADispCall := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  AddDispPrint(GlobalAdoConnection,anystrtoint(ADispCall.DispCallID));

end;

procedure TDispForm.Splitter1Moved(Sender: TObject);
begin
  ResizeButtons;
end;

procedure TDispForm.MCIButtonClick(Sender: TObject);
begin
  {$ifdef REDNMX}
  MainForm.MCIButtonClick(Self);
  {$endif}
end;

procedure TDispForm.MCIButtonMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  If (mFireID = '12345') and (Button = mbright) then begin
    TableInsert('MCIHIST',['PERSID','DATETIMECALL','DISPREV','RESPONSE'],
                          ['5390',  Now,           'N'      ,'3']);
  end;
end;

procedure TDispForm.NoteButtonClick(Sender: TObject);
Var PKVar    : String;
begin
  If DispCallList.Count > 0 then begin
    PkVar := '-1';
    RunAlpineForm(TDispNoteForm,pkVar,'DISPHIST',DispNoteFormNewRecord);
  end;
end;

procedure TDispForm.DispNoteFormNewRecord(DataSet: TDataSet);
Var ADispCall : TDispCall;
begin
  ADispCall                                      := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  DataSet.FieldByname('DISPCALLID').Asstring     := ADispCall.DispCallID;
  DataSet.FieldByname('DATETIMESTAT').AsDateTime := Now;
  DataSet.FieldByName('SECID').AsString          := SecIDVar;
  DataSet.FieldByname('DISPSTATCODEID').AsString := SQLLookup(mFireID,'FDID','DISPSET','TIMENOTEID');
end;

procedure TDispForm.DispTimerButtonClick(Sender: TObject);
var DispTimerForm: TDispTimerForm;
begin
  DispTimerForm := TDispTimerForm(GetFormOfType(TDispTimerForm));
  if DispTimerForm = nil then
    DispTimerForm:= TDispTimerForm.Create(Application);
  DispTimerForm.Show;

end;

procedure TDispForm.PropStatButtonClick(Sender: TObject);
begin
  {$ifdef REDNMX}
  MainForm.PropStatViewChoiceClick(self);
  {$endif}
end;

procedure TDispForm.E911MenuPopup(Sender: TObject);
begin
  E911TransferChoice.Visible := Not (mFireID = '52091');
  E911TransferChoice.Enabled := E911Grid.Row >= E911Grid.FixedRows;
  RemoveCall.Enabled         := E911TransferChoice.Enabled;
  ViewCall.Enabled           := E911TransferChoice.Enabled;
end;

procedure TDispForm.DisplayE911WindowClick(Sender: TObject);
var E911BrowseForm: TE911BrowseForm;
begin
  E911BrowseForm := TE911BrowseForm(GetFormOfType(TE911BrowseForm));
  If E911BrowseForm = nil then
    E911BrowseForm := TE911BrowseForm.Create(self);
  E911BrowseForm.Refresh911List(E911StringList);
  E911BrowseForm.Show;
end;

procedure TDispForm.SOPButtonClick(Sender: TObject);
var ADispCall      : TDispCall;
    DispCallTypeID : String;
    DispBoxID      : String;
begin
  If DispCallList.Count > 0 then begin
    ADispCall                  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);

    If Not FormExists('DispSOPForm') then
      DispSOPForm := TDispSOPForm.Create(Application);
    DispSOPForm.DispCallID     := ADispCall.DispCallID;
    DispSOPForm.Show;
  end;
end;

procedure TDispForm.MobileSendMessageClick(Sender: TObject);
begin
  SendMobileMessage(GetSelectedTruck.UnitNum,GetSelectedTruck.DispCallID);
end;

procedure TDispForm.SendMobileMessage(mUnitNum,mDispCallID: string);
var UnitNumList: TStringList;
begin
  UnitNumList := TStringList.Create;
  UnitNumList.Add(mUnitNum);
  SendMobileMessage(UnitNumList,mDispCallid);
  UnitNumList.Free;
end;

procedure TDispForm.SendMessageToAllClick(Sender: TObject);
var i         : Integer;
    ADispcall : TDispCall;
    mUnits    : TStringList;
begin
  ADispCall := GetCurrentDispCall;
  if ADispCall = nil then
    exit;
  try
    mUnits := TStringList.Create;
    for i:=0 to TruckList.Count-1 do
      if (TTruck(TruckList[i]).OnlineMobile) and (TTruck(TruckList[i]).DispCallID=ADispCall.DispCallID) then
        mUnits.Add(TTruck(TruckList[i]).UnitNum);
    SendMobileMessage(mUnits,ADispCall.DispCallID);
  finally
    mUnits.Free;
  end;  
end;

procedure TDispForm.SendMobileMessage(UnitNumList: TStringList;mDispCallID: String);
var i: Integer;
begin
  if GetFormOfType(TMobileMessageRedNMXForm)=nil then
    MobileMessageRedNMXForm := TMobileMessageRedNMXForm.Create(self,FTimeMobileMess)
  else
    MobileMessageRedNMXForm := TMobileMessageRedNMXForm(GetFormOfType(TMobileMessageRedNMXForm));
    
  MobileMessageRedNMXForm.UpdateAllUnits(UnitNumList, anystrtoint(mDispCallid));
  MobileMessageRedNMXForm.Show;
end;

procedure TDispForm.AvailableSendMessageAllUnitsClick(Sender: TObject);
var mUnits : TStringList;
    i      : Integer;
begin
  try
    mUnits := TStringList.Create;
    for i:=0 to AvailableTruckList.count-1 do
      if TAvailableTruck(AvailableTruckList[i]).OnLineMobile then
        mUnits.Add(TAvailableTruck(AvailableTruckList[i]).UnitNum);

    if BooleanMessageDlg('Send message to units on call too?') then begin
      for i:=0 to TruckList.Count-1 do
        if TTruck(TruckList[i]).OnlineMobile then
          mUnits.Add(TTruck(TruckList[i]).UnitNum);
    end;
    SendMobileMessage(mUnits,'');
  finally
    mUnits.Free;
  end;
end;

procedure TDispForm.AvailableSendMessageClick(Sender: TObject);
begin
  If AvailableApparatus.Row<= AvailableApparatus.RowCount-1 then
    SendMobileMessage(TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]).UnitNum,'');
end;

procedure TDispForm.ButtonPanelResize(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',ButtonPanel);
end;

procedure TDispForm.ChangeCallType1Click(Sender: TObject);
begin
  If TimeChangeCallID <> '' then
    ChangeCallTypeProc
  else
    ShowMessage('Must assign Status Code to Time Call Type Changed');
end;

procedure TDispForm.ChangeCallTypeProc;
begin
  if GetCurrentDispCall=nil then begin
    ShowMessage('You must highlight a call first');
    exit;
  end;

  ChangeCallTypeForm := TChangeCallTypeForm.Create(Application,anystrtoint(TDispCall(DispCallList.Objects[DispCallGrid.Row-1]).dispcallid));
  ChangeCallTypeForm.ShowModal;
  ChangeCallTypeForm.Free;
  UpdateFields(TDispCall(DispCallList.Objects[DispCallGrid.Row-1]),False);
  UpdateGrids;  
end;

procedure TDispForm.FindUnitOnMap(mUnitNum: String);
begin
  TGisSysForm.DisplayUnitNum(mUnitNum);
end;

procedure TDispForm.FindUnitonMap1Click(Sender: TObject);
begin
  FindUnitOnMap(GetSelectedTruck.UnitNum);
end;

procedure TDispForm.FindUnitonMap2Click(Sender: TObject);
var AvTruck : TAvailableTruck;
begin
  AvTruck := TAvailableTruck(AvailableTruckList[AvailableApparatus.Row-1]);
  if avTruck<>nil then
    FindUnitOnMap(avTruck.UnitNum);
end;


procedure TDispForm.NextAvailableClick(Sender: TObject);
var
  iDispAppId,i: Integer;
  ADispCall: TDispCall;
  mWhere,mSql: String;

begin
  iDispAppID := TMenuItem(Sender).Tag;
  ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  mSql := 'SELECT * FROM DISPSEQ WHERE DISPBOXID = '+pkValue(ADispCall.DispBoxID)+
    ' AND DISPCALLTYPEID = '+pkValue(GetActualResponse(globaladoconnection,ADispCall))+
    ' AND DISPAPPID = '+inttostr(iDispAppID);
  Open_Query('DISPSEQ',False,mSql);

  IF tdbfield('DISPSEQ','SEARCHORD')='A' then
    mWhere := ' 1=1 '
  else
    mWhere := ' DISPAPPID = '+inttostr(iDispAppID);
  Open_Query('VWDISPSTAT',False,'SELECT DISPSTATID,UNITNUM,DISPLOCID FROM VWDISPSTAT WHERE ' +mWhere+' AND INSERVICE = '+AddExpr('Y'));
  DoNextAvailableTransfer(tdbfield('DISPSEQ','SEARCHORD')='A');
  CloseApollo('VWDISPSTAT');
  CloseApollo('DISPSEQ');
end;


procedure TDispForm.DoNextAvailableTransfer(bUnitSearch: Boolean);
var
  i,jtouse,j: Integer;
  mCheckState: Boolean;
  mUnits: TStringList;
  bAddIt: Boolean;
begin
  mUnits := TStringList.Create;
  for i:= 1 to 14 do begin
    A('VWDISPSTAT').GoTop;
    while not A('VWDISPSTAT').eof do begin
      if bUnitSearch then
        bAddIt := tdbfield('VWDISPSTAT','UNITNUM')=tdbField('DISPSEQ','UNITNUM'+inttostr(i))
      else
        bAddIt :=  tdbfield('VWDISPSTAT','DISPLOCID')=tdbField('DISPSEQ','DISPLOCID'+inttostr(i));
      if bAddIt then
        mUnits.Add(tdbField('VWDISPSTAT','DISPSTATID'));
      A('VWDISPSTAT').skip(1);
    end;
  end;

  if mUnits.Count=0 then
    showmessage('There are no available Apparatus!')
  else begin
    NextAvailableForm := TNextAvailableForm.Create(self,mUnits);
    jtouse := -1;
    if NextAvailableForm.ShowModal = mrok then begin
      for i := NextAvailableForm.AppList.FixedRows to NextAvailableForm.AppList.RowCount-1 do begin
        NextAvailableForm.AppList.GetCheckBoxState(NextAvailableForm.Applist.ColumnNames.IndexOf('CHECKED'),i,mCheckState);
        if mCheckState then begin
          for j:= 0 to AvailableTruckList.Count-1 do begin
            if TAvailableTruck(AvailableTruckList[j]).DispStatID = NextAvailableForm.Applist.GetValue('DISPSTATID',i) then begin
              jtouse := j;
              TAvailableTruck(AvailableTruckList[j]).Tagged := True;
            end;

          end;
        end;
      end;
      if jtouse <> -1 then
        MoveTruckToIncident(DispCallGrid.Row-1,Now,True);
    end;

    NextAvailableForm.Free;
  end;
  mUnits.Free;
end;



procedure TDispForm.NextAvailableResourceClick(Sender: TObject);
var iDispAttrid              : Integer;
    i                        : Integer;
    ADispCall                : TDispCall;
    ListofUnitsWithAttribute : TStringList;
begin
  iDispAttrid              := TMenuItem(Sender).Tag;
  ListofUnitsWithAttribute := TStringList.create;
  Open_Query('DISPSTATATTR',False,'SELECT * FROM DISPSTATATTR WHERE DISPATTRID = '+inttostr(iDispAttrid));
  while not A('DISPSTATATTR').eof do begin
    ListofUnitsWithAttribute.Add(tdbField('DISPSTATATTR','DISPSTATID'));
    A('DISPSTATATTR').Skip(1);
  end;
  CloseApollo('DISPSTATATTR');
  ADispCall  := TDispCall(DispCallList.Objects[DispCallGrid.Row-1]);
  Open_Query('DISPSEQ',False,'SELECT * FROM DISPSEQ WHERE DISPBOXID = '+pkValue(ADispCall.DispBoxID)+
    ' AND DISPCALLTYPEID = '+pkValue(GetActualResponse(globaladoconnection,ADispCall))+
    ' AND DISPATTRID = '+inttostr(iDispAttrid));
  Open_Query('VWDISPSTAT',False,'SELECT DISPSTATID,UNITNUM,DISPLOCID FROM VWDISPSTAT WHERE DISPSTATID IN '+BuildInClause(ListOfUnitsWithAttribute)+' AND INSERVICE = '+AddExpr('Y'));
  DoNextAvailableTransfer(False);

  ListofUnitsWithAttribute.free;
  CloseApollo('DISPSEQ');
  CloseApollo('VWDISPSTAT');
end;

procedure TDispForm.HideStatusHistory();
begin
  If (mfireid = '23239') or (mfireid = '12345') then begin
    If Status911Panel.Visible then begin
      Status911Panel.Visible := False;
      ShowMessage('Press "CTRL+SHIFT+H" Keys again to Restore Status History');
    end else
      Status911Panel.Visible  := True;
  end;
end;

procedure TDispForm.UnitNumSearchButtonClick(Sender: TObject);
begin
  AvailableApparatus.Row := 10;
end;


procedure TDispForm.UnitNumSearchFieldChange(Sender: TObject);
Var RowNum    : Integer;
    UnitNum   : String;
    AvUnitNum : String;
begin
  If Not (UnitNumSearchField.Value = '') then begin
    for RowNum := 0 to AvailableApparatus.RowCount-1 do begin
      Try
        if not UnitNumStringExistsCheck.Checked then
          AvUnitNum := TAvailableTruck(AvailableTruckList[RowNum]).UnitNum
        else
          AvUnitNum := substr(TAvailableTruck(AvailableTruckList[RowNum]).UnitNum,1,Length(UnitNumSearchField.Value));
      Except
      end;
      If (UnitNumSearchField.Value = AvUnitNum) then begin
        AvailableApparatus.Row := RowNum+1;
        break;
      end;
    end;
  end;    
end;

procedure TDispForm.UnitNumStringExistsCheckClick(Sender: TObject);
begin
  UnitNumSearchFieldChange(Self);
end;

end. 
