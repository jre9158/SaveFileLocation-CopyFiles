unit SchdGui;

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
  jpeg,
  Menus,
  AdvMenus, AdvObj,
  AdvMenuStylers,
  AlpinePanel,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit;

type
  TSchdGuiForm = class(TAlpineBaseForm)
    HeadPanel: TAdvPanel;
    HTMLabel2: THTMLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    Title: TAdvReflectionLabel;
    RightHeadPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    RefreshButton: TAlpineGlowButton;
    AdvPanel24: TAdvPanel;
    PanelStyler: TAdvPanelStyler;
    BottomStyler: TAdvPanelStyler;
    TopStyler: TAdvPanelStyler;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    PrintButton: TAlpineGlowButton;
    SchdMenu: TAdvPopupMenu;
    ChangeAssignment: TMenuItem;
    ChangeType: TMenuItem;
    ChangeShift: TMenuItem;
    ChangeApparatus: TMenuItem;
    ChangeIncidentTask: TMenuItem;
    ChangeLocation: TMenuItem;
    DuplicateChoice: TMenuItem;
    SplitShiftChoice: TMenuItem;
    PersMenu: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    ViewPersonnel1: TMenuItem;
    SchdShiftNameDescrField: TLabel;
    DateField: TLabel;
    DayTimeField: TAlpineEdit;
    OvcController1: TOvcController;
    Label1: TLabel;
    Refresh2Button: TAlpineGlowButton;
    DeleteChoice: TMenuItem;
    BottomPanel: TPanel;
    ShowAll: TAlpineCheckBoxGlowButton;
    DateLabel: TLabel;
    BottomSplitter: TSplitter;
    Panel1: TPanel;
    mainpanel: TPanel;
    leftpanel: TPanel;
    AdvPanel2: TAdvPanel;
    Calendar: TPlannerMonthView;
    PersPanel: TAdvPanel;
    Splitter2: TSplitter;
    CalendarSplitter: TSplitter;
    Inv3Panel: TPanel;
    Inv1Panel: TPanel;
    Inv2Panel: TPanel;
    SchdReqSplitter: TSplitter;
    SchdReqPanel: TAdvPanel;
    SchdLocPanel: TPanel;
    AuburnCntField: TLabel;
    EditChoice: TMenuItem;
    PersBrowse: TAlpineTMSStringGrid;
    SchdReqSchdBrowse: TAlpineBlockBrowse;
    NarrPanel: TAdvPanel;
    NarrField: TLabel;
    ShapeRed: TShape;
    ShapeBlue: TShape;
    ShapeGreen: TShape;
    ALabel: TLabel;
    BLabel: TLabel;
    CLabel: TLabel;
    SecButton: TAlpineGlowButton;
    ClockButton: TAlpineGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BlackColorClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
    procedure GridDblClick(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure GridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PersBrowseMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure MenuItem1Click(Sender: TObject);
    procedure ViewPersonnel1Click(Sender: TObject);
    procedure DeleteChoiceClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBrowseClickCell(Sender: TObject; ARow, ACol: Integer);
    procedure PersBrowseDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure PersBrowseDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ShowAllClick(Sender: TObject);
    procedure DateFieldClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SplitShiftChoiceClick(Sender: TObject);
    procedure EditChoiceClick(Sender: TObject);
    procedure NarrFieldClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure ClockButtonClick(Sender: TObject);
    procedure SchdReqPanelDblClick(Sender: TObject);

  private
    { Private declarations }
    CurrentDate          : String;
    FAlpineTMSStringGrid : TAlpineTMSStringGrid;
    MiscStringList       : TStringList;
    InvStringList        : TStringList;
    SchdLocStringList    : TStringList;
    SchdGUISourceTable   : String;
    SchdGuiTablePK       : Integer;
    CatchAll             : Boolean;
    AuburnCnt            : Integer;
    SchdShiftTempID      : String;

    procedure LoadBrowse(UnitPanel: TAdvPanel; Browse: TAlpineTMSStringGrid; UnitNum : String);
    procedure LoadMiscBrowse(Browse: TAlpineTMSStringGrid; SchdTypeCode : String);
    procedure LoadSchdLocBrowse(Browse: TAlpineTMSStringGrid; SchdLocID : String);

    procedure RefreshBrowse;
    procedure FillTruckList;
    procedure FillSchdLoc;
    procedure FillSchdRank;
    procedure FillNfirsAttTask;
    procedure FillSchdShiftName;
    procedure FillSchdType;
    procedure LoadSchdReqBrowse;
    procedure SchdReqNewRecord(DataSet: TDataSet);
    procedure ChangeSchdType(Sender: TObject);
    procedure ChangeSchdLoc(Sender: TObject);
    procedure ChangeSchdRank(Sender: TObject);
    procedure ChangeSchdShiftName(Sender: TObject);
    procedure ChangeNfirsAttTask(Sender: TObject);
    procedure ChangeUnitNum(Sender: TObject);
    procedure SchdHistNewRecord(DataSet: TDataSet);
    procedure CreateOne(iRow,iCol,iWidth,RowHeight: Integer; mTablePk,mTable: String; mStringList: TStringList; mPanel: TPanel;mCaption: String);
    procedure SchdBrowseDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure SchdBrowseDragDrop(Sender, Source: TObject; X,  Y: Integer);
    procedure ClickCell(Sender: TObject; ARow,ACol: Integer);
    Class procedure ShowShiftColor(Calendar : TPlannerMonthView; StartDate: TDateTime);
    procedure LoadCatchAll(Browse: TAlpineTMSStringGrid);
    procedure CreateCatchAll(iRow,iCol,iWidth, RowHeight: Integer; mTablePK, mTable: String; mStringList: TStringList; mPanel: TPanel; mcaption: String);
    function CheckPersIDDuplicate: String;
    procedure SchdShiftTempNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
  end;

var
  SchdGuiForm: TSchdGuiForm;
const
SPACEBETWEEN = 0;

{$I rednmx.inc}

implementation

uses FormFunc,
     Main,
     GenFunc,
     CommonFunc,
     CommonVar,
     SchdHist,
     SchdMenu,
     SchdSplit,
     SchdShiftTempNarr,
     SecSet,
     SchdReq,
     Schd,
     Pers,
     SortGridView,
     AppLst;

{$R *.dfm}

procedure TSchdGuiForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TSchdGuiForm.FormCreate(Sender: TObject);
begin
  SchdGUISourceTable      := '';
  SchdGuiTablePK          := 0;
  InvStringList           := TStringList.Create;
  MiscStringList          := TStringList.Create;
  SchdLocStringList       := TStringList.Create;

  bottompanel.parentcolor := True;
  bottompanel.caption     := '';
  leftpanel.parentcolor   := true;
  leftpanel.Caption       := '';
  mainpanel.parentcolor   := True;
  mainpanel.Caption       := '';

  Calendar.Year           := StrToInt(FormatDateTime('YYYY',Now));
  Calendar.Month          := StrToInt(FormatDateTime('MM',Now));
  Calendar.Day            := StrToInt(FormatDateTime('DD',Now));

  CatchAll                := (SqlTableRecCount('SELECT COUNT(*) FROM SCHDTYPE WHERE ' + GetFdidSQL('SCHDTYPE.FDID') +
                                               ' AND GUIMISCOFF = ' + AddExpr('Y')) > 0);
  if (mFireID = '07130') or (mFireID = '23239')  or (mFireID = '11540')  then begin
    leftpanel.width := 350;
    SchdReqPanel.Height := 160;

  end;
  if MFireID = '01920' then
    ShowAll.ButtonState := gbChecked;

  FillSchdShiftName;
  FillSchdType;
  FillSchdRank;
  FillNfirsAttTask;
  FillTruckList;
  FillSchdLoc;
end;

procedure TSchdGuiForm.FormDestroy(Sender: TObject);
begin
  InvStringList.Free;
  MiscStringList.Free;
  SchdLocStringList.Free;
end;

procedure TSchdGuiForm.FormResize(Sender: TObject);
begin
  DateFieldClick(self);
end;

procedure TSchdGuiForm.CreateOne(iRow,iCol,iWidth, RowHeight: Integer; mTablePK, mTable: String; mStringList: TStringList; mPanel: TPanel; mcaption: String);
var Browsepanel    : TAdvPanel;
    ScheduleBrowse : TAlpineTMSStringGrid;
begin
  mStringList.Add(mTablePK);
  Browsepanel        := TAdvPanel.Create(self);
  Browsepanel.Parent := mPanel;
  mPanel.Visible     := true;

  with Browsepanel do begin
    Name                  := 'PANEL'+mTable+'ID'+mTablePK                     ;
    Width                 := iWidth                                           ;
    Height                := 174                                              ;
    BevelOuter            := bvNone                                           ;
    Tag                   := iCol                                             ;
    Color                 := clGray                                           ;
    Font.Charset          := DEFAULT_CHARSET                                  ;
    Font.Color            := clWindowText                                     ;
    Font.Height           := -11                                              ;
    Font.Name             := 'Tahoma'                                         ;
    Font.Style            := []                                               ;
    ParentFont            := False                                            ;
    TabOrder              := 2                                                ;
    UseDockManager        := True                                             ;
    AutoHideChildren      := False                                            ;
    BorderColor           := clGray                                           ;
    BorderWidth           := 4                                                ;
    CanMove               := false                                            ;
    CanSize               := false                                            ;
    Caption.Color         := 14212042                                         ;
    Caption.ColorTo       := 4606770                                          ;
    Caption.CloseButton   := false                                            ;
    Caption.Font.Charset  := ANSI_CHARSET                                     ;
    Caption.Font.Color    := clWhite                                          ;
    Caption.Font.Height   := -13                                              ;
    Caption.Font.Name     := 'Arial'                                          ;
    Caption.Font.Style    := [fsBold]                                         ;
    Caption.Indent        := 2                                                ;
    Caption.ShadeLight    := 255                                              ;
    Caption.Text          := mCaption                                         ;
    Caption.Visible       := True                                             ;
    CollapsColor          := clHighlight                                      ;
    CollapsDelay          := 0                                                ;
    ColorTo               := clBlack                                          ;
    ShadowColor           := clBlack                                          ;
    ShadowOffset          := 0                                                ;
    StatusBar.BorderColor := clNone                                           ;
    StatusBar.Font.Charset:= DEFAULT_CHARSET                                  ;
    StatusBar.Font.Color  := clWhite                                          ;
    StatusBar.Font.Height := -11                                              ;
    StatusBar.Font.Name   := 'Tahoma'                                         ;
    StatusBar.Font.Style  := []                                               ;
    StatusBar.Color       := 14716773                                         ;
    StatusBar.ColorTo     := 16374724                                         ;
    StatusBar.Height      := 34                                               ;
    Styler                := PanelStyler                                      ;
    FullHeight            := 206                                              ;
    align                 := alleft                                           ;
  end;
  ScheduleBrowse := TAlpineTMSStringGrid.Create(self);
  ScheduleBrowse.parent := Browsepanel;
  with ScheduleBrowse do begin
     Name     := 'BROWSE'+mTable+'ID'+mTablePK                             ;
     Cursor   := crDefault                                                 ;
     Align    := alClient                                                  ;
     Tag      := iCol                                                      ;
     Color    := 3355443                                                   ;
     ColCount := 1                                                         ;
     Ctl3D := False                                                        ;
     DefaultRowHeight := RowHeight                                         ;
     FixedColor := clBlack                                                 ;
     FixedCols := 0                                                        ;
     Font.Charset := ANSI_CHARSET                                          ;
     Font.Color := clWhite                                                 ;
     Font.Height := -11                                                    ;
     Font.Name := 'MS Sans Serif'                                          ;
     Font.Style := []                                                      ;
     GridLineWidth := 0                                                    ;
     Options := [goRowSelect]                                              ;
     ParentCtl3D := False                                                  ;
     ParentFont := False                                                   ;
     PopupMenu := SchdMenu                                                 ;
     ScrollBars := ssVertical                                              ;
     TabOrder := 0                                                         ;
     OnDblClick := GridDblClick                                            ;
     OnMouseDown := GridMouseDown                                          ;
     ActiveRowColor := clBlack                                             ;
     GridLineColor := 15062992                                             ;
     ActiveCellFont.Charset := DEFAULT_CHARSET                             ;
     ActiveCellFont.Color := clWindowText                                  ;
     ActiveCellFont.Height := -11                                          ;
     ActiveCellFont.Name := 'Tahoma'                                       ;
     ActiveCellFont.Style := [fsBold]                                      ;
     ActiveCellColor := 10344697                                           ;
     ActiveCellColorTo := 6210033                                          ;
     BackGround.Top := 100                                                 ;
     BackGround.Left := 200                                                ;
     BackGround.Display := bdFixed                                         ;
     OnClickCell := ClickCell;     
     FixedColWidth := 68                                                   ;
     FixedRowHeight := 0                                                   ;
     FixedRowAlways := True                                                ;
     FixedFont.Charset := ANSI_CHARSET                                     ;
     FixedFont.Color := clWindowText                                       ;
     FixedFont.Height := -11                                               ;
     FixedFont.Name := 'MS Sans Serif'                                     ;
     FixedFont.Style := [fsBold]                                           ;
     Flat := True                                                          ;
     FloatFormat := '%.2f'                                                 ;
     MouseActions.NoScrollOnPartialRow := True                             ;
     MouseActions.SelectOnRightClick := True                               ;
     MouseActions.WheelIncrement := 1                                      ;
     Navigation.HomeEndKey := heFirstLastRow                               ;
     PrintSettings.DateFormat := 'dd/mm/yyyy'                              ;
     PrintSettings.Font.Charset := DEFAULT_CHARSET                         ;
     PrintSettings.Font.Color := clWindowText                              ;
     PrintSettings.Font.Height := -11                                      ;
     PrintSettings.Font.Name := 'MS Sans Serif'                            ;
     PrintSettings.Font.Style := []                                        ;
     PrintSettings.FixedFont.Charset := DEFAULT_CHARSET                    ;
     PrintSettings.FixedFont.Color := clWindowText                         ;
     PrintSettings.FixedFont.Height := -11                                 ;
     PrintSettings.FixedFont.Name := 'MS Sans Serif'                       ;
     PrintSettings.FixedFont.Style := []                                   ;
     PrintSettings.HeaderFont.Charset := DEFAULT_CHARSET                   ;
     PrintSettings.HeaderFont.Color := clWindowText                        ;
     PrintSettings.HeaderFont.Height := -11                                ;
     PrintSettings.HeaderFont.Name := 'MS Sans Serif'                      ;
     PrintSettings.HeaderFont.Style := []                                  ;
     PrintSettings.FooterFont.Charset := DEFAULT_CHARSET                   ;
     PrintSettings.FooterFont.Color := clWindowText                        ;
     PrintSettings.FooterFont.Height := -11                                ;
     PrintSettings.FooterFont.Name := 'MS Sans Serif'                      ;
     PrintSettings.FooterFont.Style := []                                  ;
     PrintSettings.PageNumSep := '/'                                       ;
     ScrollWidth := 16                                                     ;
     SearchFooter.ColorTo := 16767411                                      ;
     SearchFooter.FindNextCaption := 'Find next'                           ;
     SearchFooter.FindPrevCaption := 'Find previous'                       ;
     SearchFooter.Font.Charset := DEFAULT_CHARSET                          ;
     SearchFooter.Font.Color := clWindowText                               ;
     SearchFooter.Font.Height := -11                                       ;
     SearchFooter.Font.Name := 'MS Sans Serif'                             ;
     SearchFooter.Font.Style := []                                         ;
     SearchFooter.HighLightCaption := 'Highlight'                          ;
     SearchFooter.HintClose := 'Close'                                     ;
     SearchFooter.HintFindNext := 'Find next occurence'                    ;
     SearchFooter.HintFindPrev := 'Find previous occurence'                ;
     SearchFooter.HintHighlight := 'Highlight occurences'                  ;
     SearchFooter.MatchCaseCaption := 'Match case'                         ;
     SearchFooter.SearchColumn := 5                                        ;
     SelectionColor := 6210033                                             ;
     SortSettings.Show := True                                             ;
     SortSettings.IndexShow := True                                        ;
     VAlignment := vtaCenter                                               ;
     Version := '3.6.0.2'                                                  ;
     OnDragOver := SchdBrowseDragOver;
     OndragDrop := SchdBrowseDragDrop;
   end;
  Browsepanel.Left := (iCol-1)*Browsepanel.Width+((iCol-1)*SPACEBETWEEN);

  Browsepanel.top  := (iRow-1)*Browsepanel.Height+((iRow-1)*SPACEBETWEEN);
  If mTable = 'SCHDTYPE' then begin
    BrowsePanel.Height := BottomPanel.Height - (2*SPACEBETWEEN);
  end;
end;

procedure TSchdGuiForm.SchdBrowseDragDrop(Sender, Source: TObject; X,  Y: Integer);
var mpk         : String;
    mPersid     : Integer;
    mName       : String;
    mSchdHistid : String;
    iTag        : Integer;
    SchdLocID   : String;
    UnitNum     : String;
    MessVar     : String;
begin
   If (mFireID = '07130') then begin
     if (not CheckSecVar('SCHDEDLOCK')) and  (TAlpineTMSStringGrid(Source).GetValue('LOCKED') = 'Y') then begin
       ShowMessage('Record Locked -- You do not have security to do this operation.');
       Exit;
     end;
   end;

  If CheckSecVar('SCHDED') then begin
    If Source = PersBrowse then begin
      If Sender is TAlpineTMSStringGrid then begin
        If Pos('SCHDTYPE',TAlpineTMSStringGrid(Sender).Name)>0 then begin
          SchdGUISourceTable := 'SCHDTYPE';
          SchdGuiTablePK     := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,17,7)));
        end else if Pos('INV',TAlpineTMSStringGrid(Sender).Name)>0 then begin
          SchdGUISourceTable := 'INV';
          SchdGuiTablePK     := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,12,7)));
        end else if Pos('SCHDLOC',TAlpineTMSStringGrid(Sender).Name)>0 then begin
          SchdGUISourceTable := 'SCHDLOC';
          SchdGuiTablePK     := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,16,7)));
        end;
        mpk := '-1';
        MessVar := CheckPersIDDuplicate;
        If (MessVar = '') or  BooleanMessageDlg(MessVar) then
          RunAlpineFormShowModal(TSchdHistForm,mpk,'SCHDHIST',SchdHistNewRecord);
      end;
    end;
    If (Source is TAlpineTMSStringGrid) and (Sender is TAlpineTMSStringGrid) then begin
      mName       := TAlpineTMSStringGrid(Source).GetValue('NAME');
      mSchdHistid := TAlpineTMSStringGrid(Source).GetValue('SCHDHISTID');      

      If (Pos('SCHDTYPE',TAlpineTMSStringGrid(Sender).Name)>0) and (Pos('INV',TAlpineTMSStringGrid(Source).Name)>0) then begin
        iTag    := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,17,7)));
        MessVar := 'Move ' + mName + ' to ' + SqlLookup(inttostr(iTag),'SCHDTYPEID','SCHDTYPE','DESCR');
        If BooleanMessageDlg(MessVar) then begin
          InsertSecRecAud('SCHDHIST','EDIT',mSchdHistID,MessVar);
          RunSql('UPDATE SCHDHIST SET SCHDTYPEID = ' + inttostr(iTag) + ' WHERE SCHDHISTID = ' + mSchdHistid);
          If MFIREID ='01920' then begin
            RunSql('UPDATE VWSCHDHIST SET LOCKED = ' + AddExpr('Y') + ' WHERE SCHDHISTID = ' + mSchdHistid);
            RunSql('UPDATE SCHDHIST SET SCHDSTATUSID = '+ AddExpr(SqlLookup(mfireid,'FDID','SCHDSET','SCHDSTATUSAPPID')) +', DATETIMEAPPROVED= ' + AddExpr(DateTimeToStr(now))+ ', APPPERSID = ' + AddExpr(GlobalPersID) + ' WHERE SCHDHISTID = '+mSchdHistid);
          end;
        end;
      end;

      If (Pos('SCHDTYPE',TAlpineTMSStringGrid(Sender).Name)>0) and (Pos('SCHDLOC',TAlpineTMSStringGrid(Source).Name)>0) then begin
        iTag    := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,17,7)));
        MessVar := 'Move ' + mName + ' to ' + SqlLookup(inttostr(iTag),'SCHDTYPEID','SCHDTYPE','DESCR');
        If BooleanMessageDlg(MessVar) then
          InsertSecRecAud('SCHDHIST','EDIT',mSchdHistID,MessVar);
          RunSql('UPDATE SCHDHIST SET SCHDTYPEID = '+inttostr(iTag) + ' WHERE SCHDHISTID = ' + mSchdHistid);
          If MFIREID ='01920' then begin
            RunSql('UPDATE SCHDHIST SET SCHDSTATUSID = '+ AddExpr(SqlLookup(mfireid,'FDID','SCHDSET','SCHDSTATUSAPPID')) +', DATETIMEAPPROVED= ' + AddExpr(DateTimeToStr(now)) + ', APPPERSID = ' + AddExpr(GlobalPersID) + ' WHERE SCHDHISTID = ' + mSchdHistid);
            RunSql('UPDATE VWSCHDHIST SET LOCKED = ' + AddExpr('Y') + ' WHERE SCHDHISTID = ' + mSchdHistid);
          end;
      end;

      If (Pos('INV',TAlpineTMSStringGrid(Sender).Name)>0) and (Pos('INV',TAlpineTMSStringGrid(Source).Name)>0) then begin
        iTag      := AnyStrToInt(alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,12,7)));
        If mfireid = '07130' then begin
          SchdLocID := SqlLookup('LINE','CODE','SCHDLOC','SCHDLOCID');
        end else
          SchdLocID := SqlLookup(inttostr(iTag),'INVID','INV','SCHDLOCID');

        UnitNum := SqlLookup(inttostr(iTag),'INVID','INV','UNITNUM');
        MessVar := 'Move ' + mName + ' to ' + SqlLookup(inttostr(iTag),'INVID','INV','DESCR');
        If BooleanMessageDlg(MessVar) then begin
          InsertSecRecAud('SCHDHIST','EDIT',mSchdHistID,MessVar);
          If Not (SchdLocID = '') then 
            RunSql('UPDATE SCHDHIST SET SCHDLOCID = ' + pkValue(SchdLocID) + ' WHERE SCHDHISTID = ' + pkvalue(mSchdHistid));
          If Not (UnitNum = '') then
            RunSql('UPDATE SCHDHIST SET UNITNUM   = ' + AddExpr(UnitNum)   + ' WHERE SCHDHISTID = ' + pkValue(mSchdHistid));
        end;
      end;

      If (Pos('SCHDLOC',TAlpineTMSStringGrid(Sender).Name)>0) then begin
        SchdLocID      := alltrim(Substr(TAlpineTMSStringGrid(Sender).Name,16,7));
        If Not (SchdLocID = '') then
          RunSql('UPDATE SCHDHIST SET SCHDLOCID = ' + pkValue(SchdLocID) + ' WHERE SCHDHISTID = ' + pkvalue(mSchdHistid));
      end;

      If (Pos('INV',TAlpineTMSStringGrid(Sender).Name)>0) and (Pos('SCHDTYPE',TAlpineTMSStringGrid(Source).Name)>0) then
        ShowMessage('Not sure what it is that would take place here!');
    end;
    RefreshBrowse;
  end else
    ShowMessage('You do not have security to do this operation.');
end;

function TSchdGuiForm.CheckPersIDDuplicate: String;
Var RetVal : String;
    SQLVar : String;
    PersID : String;
begin
  RetVal := '';
  PersID := PersBrowse.GetValue('PERSID');
  SQLVar := 'SELECT PERS.LNAME, PERS.FNAME, SCHDHIST.UNITNUM, SCHDHIST.SCHDTYPEID, SCHDHIST.SCHDLOCID ' +
            'FROM SCHDHIST ' +
            'LEFT JOIN PERS ON (SCHDHIST.PERSID = PERS.PERSID) ' +
            'WHERE SCHDHIST.DATETIMESTART <= ' + CurrentDate + ' AND SCHDHIST.DATETIMEEND >= ' + CurrentDate + ' AND ' +
            'SCHDHIST.PERSID = ' + pkValue(PersID);
              
  Open_Query('SCHDHIST',false,SQLVar);
  If A('SCHDHIST').RecordsExist then begin
    RetVal := 'Personnel ' + tdbfield('SCHDHIST','FNAME') + ' ' + tdbfield('SCHDHIST','LNAME') + ' is already on Unit ' + tdbfield('SCHDHIST','UNITNUM') + '.  Add anyway?';
  end;
  CloseApollo('SCHDHIST');
  CheckPersIDDuplicate := RetVal;
end;


procedure TSchdGuiForm.SchdBrowseDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source = PersBrowse) or ((Sender is TAlpineTMSStringGrid) and (Sender<>Source));
end;

procedure TSchdGuiForm.FormShow(Sender: TObject);
var i       : integer;
    SchdCol : integer;

  procedure CreateInvBrowse(PanelName : TPanel);
  var UnitTitle: String;
  begin
    If (mfireID = '23239') or (mFireID = '29001') then
      UnitTitle := tdbfield('INV','UNITNUM')
    else if (mFireID = '23300') or (mFireID = '12345') then
      UnitTitle := tdbField('INV','UNITNUM') + ': ' + tdbField('INV','DESCR')
    else
      UnitTitle := IIf(tdbField('INV','DESCR')= '',tdbfield('INV','UNITNUM'),tdbField('INV','DESCR'));
    CreateOne(1,GetField('INV','SCHDCOL').AsInteger,210,45,tdbField('INV','INVID'),'INV',InvStringList,PanelName, UnitTitle);
  end;

  procedure CreateSchdTypeBrowse;
  begin
    CreateOne(1,GetField('SCHDTYPE','SCHDCOL').AsInteger, 155,33, GetField('SCHDTYPE','SCHDTYPEID').AsString, 'SCHDTYPE', MiscStringList,  BottomPanel, tdbField('SCHDTYPE','DESCR'));
  end;

  procedure CreateSchdLocBrowse;
  begin
    CreateOne(1,GetField('SCHDLOC','SCHDCOL').AsInteger,  210,45, GetField('SCHDLOC','SCHDLOCID').AsString,   'SCHDLOC', SchdLocStringList,SchdLocPanel, tdbfield('SCHDLOC','DESCR'));
  end;

begin
  DayTimeField.Text := GetTimeAsString;
  BlackColorClick(sender);

  Open_Query('INV',false,'SELECT INVID, UNITNUM, DESCR, SCHDROW, SCHDCOL FROM INV ' +
                         ' WHERE ' + GetFdidSQL('INV.FDID') +
                         ' AND INCLUDE = ' + AddExpr('Y') + 
                         ' AND SCHDROW > 0 AND SCHDCOL > 0 ORDER BY SCHDROW, SCHDCOL');
  While Not A('INV').Eof do begin
    If GetField('INV','SCHDROW').AsInteger = 1 then
      CreateInvBrowse(Inv1Panel)
    else if GetField('INV','SCHDROW').AsInteger = 2 then
      CreateInvBrowse(Inv2Panel)
    else if GetField('INV','SCHDROW').AsInteger = 3 then
      CreateInvBrowse(Inv3Panel);
    A('INV').Skip(1);
  end;
  CloseApollo('INV');

  If MultiFdid then begin
    If secFdid = '' then
      Open_Query('SCHDTYPE',false,'SELECT SCHDTYPEID, DESCR, SCHDCOL FROM SCHDTYPE WHERE SCHDCOL > 0 ORDER BY SCHDCOL')
    else
      Open_Query('SCHDTYPE',false,'SELECT SCHDTYPEGUI.SCHDTYPEID, SCHDTYPE.DESCR, SCHDTYPEGUI.SCHDCOL ' +
                                  'FROM SCHDTYPEGUI ' +
                                  'LEFT JOIN SCHDTYPE ON (SCHDTYPEGUI.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                                  'WHERE SCHDTYPEGUI.FDID = ' + AddExpr(secFDID) + ' AND ' +
                                  'SCHDTYPEGUI.SCHDCOL > 0 ORDER BY SCHDTYPEGUI.SCHDCOL');
  end else
    Open_Query('SCHDTYPE',false,'SELECT SCHDTYPEID, DESCR, SCHDCOL FROM SCHDTYPE WHERE SCHDCOL > 0 ORDER BY SCHDCOL');

  SchdCol := 0;
  While Not A('SCHDTYPE').eof do begin
    CreateSchdTypeBrowse;
    SchdCol := GetField('SCHDTYPE','SCHDCOL').AsInteger;
    A('SCHDTYPE').Skip(1);
  end;
  If CatchAll then
    CreateCatchAll(1,SchdCol+1, 155,33, '', 'SCHDTYPE', MiscStringList,  BottomPanel, 'Additional');
  CloseApollo('SCHDTYPE');

  Open_Query('SCHDLOC',false,'SELECT SCHDLOCID, DESCR, SCHDCOL FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' AND SCHDCOL > 0 ORDER BY SCHDCOL');
  While Not A('SCHDLOC').eof do begin
    CreateSchdLocBrowse;
    A('SCHDLOC').Skip(1);
  end;
  CloseApollo('SCHDLOC');

  RefreshBrowse;

  If (mFireID = '23300') or (mFireID = '12345') then begin
    ShapeRed  .Visible := true;
    ShapeBlue .Visible := true;
    ShapeGreen.Visible := true;
    ALabel    .Visible := true;
    BLabel    .Visible := true;
    CLabel    .Visible := true;
    LoadSchdReqBrowse;
  end else if (mFireID = '07130') or (mFireID = '23239') or (mFireID = '11540')  then begin
    LoadSchdReqBrowse;
    NarrPanel.Visible       := false;
  end else begin
    SchdReqPanel.Visible    := false;
    NarrPanel.Visible       := false;
    SchdReqSplitter.Visible := false;
  end;

  If MultiFdid and (secFDID <> '') then
    Title.HtmlText.Text := 'Schedule Manager: ' + SQLLookUp(secFdid,'FDID','FDID','DEPTNAME');
  ShowShiftColor(Calendar, Now);
end;

procedure TSchdGuiForm.LoadBrowse(UnitPanel: TAdvPanel; Browse: TAlpineTMSStringGrid; UnitNum : String);
Var SQLVar  : String;
    MinReq  : Integer;
    PersCnt : Integer;
begin
  Browse.Clear;
  Browse.ClearColumns;
  Browse.ColCount       := 0;
  Browse.RowCount       := 0;
  Browse.FixedRowAlways := true;
  Browse.RowCount       := Browse.FixedRows;
  Browse.SetColumn('SCHDHISTID',     '',001);
  Browse.SetColumn('NAME',           '',090);
  Browse.SetColumn('SCHDTYPECODE',   '',030);
  Browse.SetColumn('TIME',           '',090);
  Browse.SetColumn('LOCKED',         '',000);
  Browse.SetColumn('SPACE',          '',200);

  MinReq  := AnyStrToInt(SQLLookUp(UnitNum,'UNITNUM','INV','MINREQ'));
  PersCnt := 0;

  A('VWSCHDHIST').GoTop;
  While Not A('VWSCHDHIST').Eof do begin
    If (tdbfield('VWSCHDHIST','UNITNUM') = UnitNum) and (tdbfield('VWSCHDHIST','ROSTER') = 'Y') then begin
      If (UnitNum = 'AUBE2') or  (UnitNum = 'AUBE3') or (UnitNum = 'AUBE4') or  (UnitNum = 'AUBT2') or (UnitNum = 'AUBC1') or (UnitNum = 'AUBT1') then
        AuburnCnt := AuburnCnt + 1;
      PersCnt := PersCnt + 1;
      Browse.SetValue('SCHDHISTID',  GetField('VWSCHDHIST','SCHDHISTID').AsString);
      Browse.SetValue('NAME',        tdbfield('VWSCHDHIST','LNAME') + ', ' + tdbfield('VWSCHDHIST','FNAME') + #10#13 + tdbfield('VWSCHDHIST','SCHDRANKDESCR'));
      Browse.SetValue('SCHDTYPECODE',tdbfield('VWSCHDHIST','SCHDTYPECODE'));
      Browse.SetValue('TIME',        FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMESTART').AsDateTime) + '-' + FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMEEND').AsDateTime) + #10#13 + tdbfield('VWSCHDHIST','NFIRSATTTASKDESCR') );
      Browse.SetValue('LOCKED',      tdbfield('VWSCHDHIST','LOCKED'));
      Browse.SetValue('SPACE',       '');
      If Not (tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR') = '') then
        Browse.SetRowFontColor(tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR'))
    end;
    A('VWSCHDHIST').Skip(1);
  end;

  If PersCnt < MinReq then begin
    UnitPanel.Caption.Color      := clRed;
    UnitPanel.Caption.ColorTo    := clMaroon;
  end else begin
    UnitPanel.Caption.Color      := clBlue;
    UnitPanel.Caption.ColorTo    := clNavy;
  end;
end;

procedure TSchdGuiForm.RefreshButtonClick(Sender: TObject);
begin
  RefreshBrowse;
end;

procedure TSchdGuiForm.PrintButtonClick(Sender: TObject);
begin
  If ( Calendar.Date > 0 ) then
    SchdMenuForm := TSchdMenuForm.Create(Application, Calendar.Date + GetRealTime(DayTimeField.Text));
  SchdMenuForm.ShowModal;
  SchdMenuForm.Free;
end;

procedure TSchdGuiForm.CalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
begin
  RefreshBrowse;
end;

procedure TSchdGuiForm.RefreshBrowse;
Var SQLVar        : String;
    i             : Integer;
    DateTimeStart : String;
    DateTimeEnd   : String;
    WhereString   : String;
    OrderByString : String;    //added this on 10-28-20
begin
  DateField.Caption := 'Current Date ' + FormatDateTime('MM/DD/YYYY',Calendar.Date);
  CurrentDate       := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date    ) + ' ' + DayTimeField.Text);

  If mFireID = '01920' then begin
    DateTimeStart     := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date    ) + ' ' + '06:59');
  end else if mFireID = '07120' then begin
    DateTimeStart     := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date    ) + ' ' + '06:59');
  end else begin
    DateTimeStart     := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date    ) + ' ' + '07:59');
  end;

  DateTimeEnd       := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date + 1) + ' ' + '08:01');

  AuburnCnt         := 0;
  WhereString       := '';
  OrderByString     := '';

  if mfireid= '01920' then
    OrderByString := ' ORDER BY SCHDHIST.DATETIMESTART,SCHDRANK.SORTORD,PERS.LNAME'
  else
    OrderByString := ' ORDER BY SCHDRANK.SORTORD,PERS.LNAME';

  if mfireID = '07130' then begin
    WhereString := ' AND SCHDSHIFTNAMEID <> ' + AddExpr('6')
  end;

  If (ShowAll.ButtonState = gbUnChecked) then begin
    DateLabel.Caption := 'Current Personnel Status Only';
    SQLVar            := 'SELECT PERS.LNAME, PERS.FNAME, SCHDHIST.DATETIMESTART, SCHDHIST.DATETIMEEND, SCHDHIST.SCHDLOCID, ' +
                         'NFIRSATTTASK.CODE NFIRSATTTASKCODE, NFIRSATTTASK.DESCR NFIRSATTTASKDESCR, SCHDRANK.FONTCOLOR SCHDRANKFONTCOLOR, ' +
                         'SCHDTYPE.ROSTER, SCHDHIST.PERSID, SCHDHIST.UNITNUM, SCHDRANK.DESCR SCHDRANKDESCR, SCHDTYPE.CODE SCHDTYPECODE, ' +
                         'SCHDTYPE.DESCR SCHDTYPEDESCR, SCHDHIST.SCHDHISTID, SCHDTYPE.GUIMISCOFF, SCHDSTATUS.LOCKED  ' +
                         'FROM SCHDHIST ' +
                         'LEFT JOIN PERS ON (SCHDHIST.PERSID = PERS.PERSID) ' +
                         'LEFT JOIN SCHDTYPE ON (SCHDHIST.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                         'LEFT JOIN SCHDRANK ON (SCHDHIST.SCHDRANKID = SCHDRANK.SCHDRANKID) ' +
                         'LEFT JOIN SCHDSTATUS ON (SCHDHIST.SCHDSTATUSID = SCHDSTATUS.SCHDSTATUSID) ' +
                         'LEFT JOIN NFIRSATTTASK ON (SCHDHIST.NFIRSATTTASKID = NFIRSATTTASK.NFIRSATTTASKID) ' +
                         'WHERE ' +
                         'SCHDHIST.DATETIMESTART <= ' + CurrentDate + ' AND ' +
                         'SCHDHIST.DATETIMEEND >= ' + CurrentDate +
                         WhereString + OrderByString;
  end else begin
    DateLabel.Caption := 'Complete Personnel Status';
    SQLVar            := 'SELECT PERS.LNAME, PERS.FNAME, SCHDHIST.DATETIMESTART, SCHDHIST.DATETIMEEND, SCHDHIST.SCHDLOCID, ' +
                         'NFIRSATTTASK.CODE NFIRSATTTASKCODE, NFIRSATTTASK.DESCR NFIRSATTTASKDESCR, SCHDRANK.FONTCOLOR SCHDRANKFONTCOLOR,  ' +
                         'SCHDTYPE.ROSTER, SCHDHIST.PERSID, SCHDHIST.UNITNUM, SCHDRANK.DESCR SCHDRANKDESCR, SCHDTYPE.CODE SCHDTYPECODE, ' +
                         'SCHDTYPE.DESCR SCHDTYPEDESCR,SCHDSUBTYPE.DESCR SCHDSUBTYPEDESCR, SCHDHIST.SCHDHISTID, SCHDTYPE.GUIMISCOFF, SCHDSTATUS.LOCKED ' +
                         'FROM SCHDHIST ' +
                         'LEFT JOIN PERS ON (SCHDHIST.PERSID = PERS.PERSID) ' +
                         'LEFT JOIN SCHDTYPE ON (SCHDHIST.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                         'LEFT JOIN SCHDSUBTYPE ON (SCHDHIST.SCHDSUBTYPEID = SCHDSUBTYPE.SCHDSUBTYPEID) ' +
                         'LEFT JOIN SCHDRANK ON (SCHDHIST.SCHDRANKID = SCHDRANK.SCHDRANKID) ' +
                         'LEFT JOIN SCHDSTATUS ON (SCHDHIST.SCHDSTATUSID = SCHDSTATUS.SCHDSTATUSID) ' +
                         'LEFT JOIN NFIRSATTTASK ON (SCHDHIST.NFIRSATTTASKID = NFIRSATTTASK.NFIRSATTTASKID) ' +
                         'WHERE ' +
                         'SCHDHIST.DATETIMESTART >= ' + DateTimeStart + ' AND ' +
                         'SCHDHIST.DATETIMEEND <= ' + DateTimeEnd +
                         WhereString + OrderByString;
  end;

  Open_Query('VWSCHDHIST',false,SQLVar);

  For i := 0 to InvStringList.Count-1 do
    LoadBrowse(TAdvPanel(FindComponent('PANELINVID' + InvStringList[i])),TAlpineTMSStringGrid(FindComponent('BROWSEINVID'+InvStringList[i])),SqlLookup(InvStringList[i],'INVID','INV','UNITNUM'));
  For i:= 0 to MiscStringList.Count-1 do
    LoadMiscBrowse(TAlpineTMSStringGrid(FindComponent('BROWSESCHDTYPEID' + MiscStringList[i])),SqlLookup(MiscStringList[i],'SCHDTYPEID','SCHDTYPE','CODE'));
  If CatchAll then
    LoadCatchAll(TAlpineTMSStringGrid(FindComponent('BROWSECATCHALL')));
  For i:= 0 to SchdLocStringList.Count-1 do
    LoadSchdLocBrowse(TAlpineTMSStringGrid(FindComponent('BROWSESCHDLOCID' + SchdLocStringList[i])),SchdLocStringList[i]);

  PersBrowse.Clear;
  PersBrowse.ClearColumns;
  PersBrowse.ColCount       := 0;
  PersBrowse.RowCount       := 0;
  PersBrowse.FixedRowAlways := true;
  PersBrowse.RowCount       := PersBrowse.FixedRows;
  PersBrowse.SetColumn('ONDUTY',      '',010);
  PersBrowse.SetColumn('PERSID',      '',001);
  PersBrowse.SetColumn('NAME',        'Name',070);
  PersBrowse.SetColumn('SCHDRANKCODE','Rank',050);
  PersBrowse.SetColumn('UNITNUM',     'Unit',200);

  Open_Query('VWPERS',false,'SELECT PERSID, LNAME, FNAME, SCHDRANKCODE, SCHDSHIFTNAMECODE, UNITNUM FROM VWPERS WHERE ' + GetFdidSQL('VWPERS.FDID') + ' AND SCHDSHIFTID > 0 AND ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME');
  While Not A('VWPERS').Eof do begin
    If A('VWSCHDHIST').ExactQueryLocate('PERSID',GetField('VWPERS','PERSID').AsString) then
      PersBrowse.SetValue('ONDUTY','*')
    else
      PersBrowse.SetValue('ONDUTY',' ');

    PersBrowse.SetValue('PERSID',      GetField('VWPERS','PERSID').AsString);
    PersBrowse.SetValue('NAME',        tdbfield('VWPERS','LNAME') + ', ' + tdbfield('VWPERS','FNAME'));
    PersBrowse.SetValue('SCHDRANKCODE',tdbfield('VWPERS','SCHDRANKCODE') + ', ' + tdbfield('VWPERS','SCHDSHIFTNAMECODE'));
    PersBrowse.SetValue('UNITNUM',     GetField('VWPERS','UNITNUM').AsString);
    A('VWPERS').Skip(1);
  end;
  Closeapollo('VWPERS');
  CloseApollo('VWSCHDHIST');

  Open_Query('SCHDSHIFTTEMP',false,'SELECT SCHDSHIFTTEMP.NARR, SCHDSHIFTTEMP.SCHDSHIFTTEMPID, SCHDSHIFTNAME.DESCR SCHDSHIFTNAMEDESCR ' +
                                   'FROM SCHDSHIFTTEMP ' +
                                   'LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
                                   'LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFTTEMP.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
                                   'WHERE ' +
                                   GetFdidSQL('SCHDSHIFT.FDID') + ' AND SCHDSHIFTTEMP.DATETIMESTART <= ' + CurrentDate + ' AND ' +
                                   'SCHDSHIFTTEMP.DATETIMEEND >= ' + CurrentDate + ' AND SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y'));

  SchdShiftTempID                 := GetField('SCHDSHIFTTEMP','SCHDSHIFTTEMPID').AsString;
  SchdShiftNameDescrField.Caption := '  Shift: ' + tdbfield('SCHDSHIFTTEMP','SCHDSHIFTNAMEDESCR') + ' ';
  NarrField.Caption               := GetField('SCHDSHIFTTEMP','NARR').AsString;
  If (AuburnCnt > 0) then begin
    If AuburnCnt > 13 then
      AuburnCntField.Font.Color := clgreen
    else
      AuburnCntField.Font.Color := clred;
    AuburnCntField.Caption := 'Manpower: ' + IntToStr(AuburnCnt) + ' ';
  end else
    AuburnCntField.Caption := '';
  CloseApollo('SCHDSHIFTTEMP');
  LoadSchdReqBrowse;
end;

procedure TSchdGuiForm.ClockButtonClick(Sender: TObject);
begin
  DayTimeField.Text := GetTimeAsString;
end;

procedure TSchdGuiForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TSchdGuiForm.DateFieldClick(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',BottomPanel);
  ScaleOnPanel('T',MainPanel);

  ScaleButtonsOnPanelUsingTags('H',Inv1Panel);
  ScaleButtonsOnPanelUsingTags('H',Inv2Panel);
  ScaleButtonsOnPanelUsingTags('H',Inv3Panel);
  ScaleButtonsOnPanelUsingTags('H',SchdLocPanel);
  ScaleOnPanel('H',SchdReqSchdBrowse.FButtonPanel);
end;

procedure TSchdGuiForm.DeleteChoiceClick(Sender: TObject);
Var SchdHistID : String;
begin
  If (mFireID = '07130') then begin
    if (not CheckSecVar('SCHDEDLOCK')) and  (FAlpineTMSStringGrid.GetValue('LOCKED') = 'Y') then begin
      ShowMessage('Record Locked -- You do not have security to do this operation.');
      Exit;
    end;
  end;

  If CheckSecVar('SCHDDEL') then begin
    If FalpineTMSStringGrid = nil then
      exit;
    If BooleanMessageDlg('Delete Shift Record ?') then begin
      SchdHistID := FAlpineTMSStringGrid.GetValue('SCHDHISTID');
      RunSQL('DELETE FROM SCHDHIST WHERE SCHDHISTID = ' + pkValue(SchdHistID));
      RefreshBrowse;
    end;
  end else
    ShowMessage('You do not have security rights to do this');  
end;

procedure TSchdGuiForm.EditChoiceClick(Sender: TObject);
Var SchdHistID : String;
begin
  If FAlpineTMSStringGrid = nil then
    Exit;
  SchdHistID   := FAlpineTMSStringGrid.GetValue('SCHDHISTID');
  SchdHistForm := TSchdHistForm.Create(Application,'SCHDHIST',SchdHistID,TSchdHistForm.NewRecord);
  SchdHistForm.ShowModal;
  SchdHistForm.Free;
  RefreshBrowse;
end;

procedure TSchdGuiForm.GridDblClick(Sender: TObject);
Var SchdHistID : String;
begin
  SchdHistID   := (Sender as TAlpineTMSStringGrid).GetValue('SCHDHISTID');
  SchdHistForm := TSchdHistForm.Create(Application,'SCHDHIST',SchdHistID,TSchdHistForm.NewRecord);
  SchdHistForm.ShowModal;
  SchdHistForm.Free;
  RefreshBrowse;
end;

procedure TSchdGuiForm.GridMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mPoint: TPoint;
  function GetRow: integer;
  var APopUpPoint: TPoint;
      TheRow, TheCol : integer;
  begin
    APopupPoint.x := x;
    APopupPoint.y := y;
    TAlpineTMSStringGrid(Sender).MouseToCell(APopUpPoint.x, APopUpPoint.y, TheCol, TheRow);
    result := TheRow;
  end;
begin
  If Not CheckSecVar('SCHDED') then
    exit;
  If not (Sender is TAlpineTMSStringGrid) then
    exit;
  If Button = mbRight then begin
    if (GetRow > 0) and (GetRow <= TAlpineTMSStringGrid(Sender).RowCount-1) then begin
      TAlpineTMSStringGrid(Sender).Row := GetRow;
      mPoint.x     := x;
      mPoint.y     := y;
      mPoint       := TAlpineTMSStringGrid(Sender).ClientToScreen(mPoint);
      FAlpineTMSStringGrid := TAlpineTMSStringGrid(Sender);
      SchdMenu.popup(mPoint.x,mPoint.y);
    end else begin
      {
      mPoint.x     := 100;
      mPoint.y     := 100;
      mPoint       := TAlpineTMSStringGrid(Sender).ClientToScreen(mPoint);
      FAlpineTMSStringGrid := TAlpineTMSStringGrid(Sender);
      ChangeAssignment.Enabled := false;
      SchdMenu.popup(mPoint.x,mPoint.y);
      }
    end;
  end else begin
  end;
end;

procedure TSchdGuiForm.LoadMiscBrowse(Browse: TAlpineTMSStringGrid; SchdTypeCode : String);
begin
  Browse.Clear;
  Browse.ClearColumns;
  Browse.ColCount       := 0;
  Browse.RowCount       := 0;
  Browse.FixedRowAlways := true;
  Browse.RowCount       := Browse.FixedRows;
  Browse.SetColumn('SCHDHISTID',     '',001);
  Browse.SetColumn('NAME',           '',135);
  Browse.SetColumn('TIME',           '',190);
  Browse.SetColumn('LOCKED',         '',000);
  Browse.SetColumn('SPACE',          '',200);

  A('VWSCHDHIST').GoTop;
  While Not A('VWSCHDHIST').Eof do begin

    If (tdbfield('VWSCHDHIST','SCHDTYPECODE') = SchdTypeCode) then begin
      Browse.SetValue('SCHDHISTID',GetField('VWSCHDHIST','SCHDHISTID').AsString);
      Browse.SetValue('NAME',      tdbfield('VWSCHDHIST','LNAME') + ', ' + tdbfield('VWSCHDHIST','FNAME') + #10#13 + tdbfield('VWSCHDHIST','SCHDRANKDESCR'));
      Browse.SetValue('TIME',      FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMESTART').AsDateTime) + '-' + FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMEEND').AsDateTime) + #10#13 + tdbfield('VWSCHDHIST','UNITNUM'));
      Browse.SetValue('LOCKED',    tdbfield('VWSCHDHIST','LOCKED'));
      Browse.SetValue('SPACE',     '');
      If Not (tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR') = '') then
        Browse.SetRowFontColor(tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR'))
    end;
    A('VWSCHDHIST').Skip(1);
  end;
end;

procedure TSchdGuiForm.LoadSchdLocBrowse(Browse: TAlpineTMSStringGrid; SchdLocID : String);
begin
  Browse.Clear;
  Browse.ClearColumns;
  Browse.ColCount       := 0;
  Browse.RowCount       := 0;
  Browse.FixedRowAlways := true;
  Browse.RowCount       := Browse.FixedRows;
  Browse.SetColumn('SCHDHISTID',   '',001);
  Browse.SetColumn('NAME',         '',134);
  Browse.SetColumn('TIME',         '',090);
  Browse.SetColumn('LOCKED',       '',000);
  Browse.SetColumn('SPACE',        '',200);
  A('VWSCHDHIST').GoTop;
  While Not A('VWSCHDHIST').Eof do begin
    If (tdbfield('VWSCHDHIST','SCHDLOCID') = SchdLocID) and (tdbfield('VWSCHDHIST','ROSTER') = 'Y') then begin
      Browse.SetValue('SCHDHISTID',   GetField('VWSCHDHIST','SCHDHISTID').AsString);
      Browse.SetValue('NAME',         tdbfield('VWSCHDHIST','LNAME') + ', ' + tdbfield('VWSCHDHIST','FNAME') + #10#13 + tdbfield('VWSCHDHIST','SCHDRANKDESCR'));
      Browse.SetValue('TIME',         FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMESTART').AsDateTime) + '-' + FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMEEND').AsDateTime) + #10#13 + tdbfield('VWSCHDHIST','SCHDTYPECODE'));
      Browse.SetValue('LOCKED',       tdbfield('VWSCHDHIST','LOCKED'));
      Browse.SetValue('SPACE',        '');
      If Not (tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR') = '') then
        Browse.SetRowFontColor(tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR'))
    end;
    A('VWSCHDHIST').Skip(1);
  end;
  Browse.AutoSizeRows(False,0);
  Browse.WordWrap := true;
end;

procedure TSchdGuiForm.MenuItem1Click(Sender: TObject);
Var SchdHistID : String;
begin
  SchdHistID := '-1';
  SchdHistForm := TSchdHistForm.Create(Application,'SCHDHIST',SchdHistID,SchdHistNewRecord);
  SchdHistForm.ShowModal;
  SchdHistForm.Free;
  RefreshBrowse;
end;

procedure TSchdGuiForm.NarrFieldClick(Sender: TObject);
begin
  SchdShiftTempNarrForm := TSchdShiftTempNarrForm.Create(Application,'SCHDSHIFTTEMP',SchdShiftTempID,SchdShiftTempNewRecord);
  SchdShiftTempNarrForm.ShowModal;
  SchdShiftTempNarrForm.Free;
  NarrField.Caption := SQLLookUp(SchdShiftTempID,'SCHDSHIFTTEMPID','SCHDSHIFTTEMP','NARR');
end;

procedure TSchdGuiForm.SchdShiftTempNewRecord(DataSet: TDataSet);
begin

end;

procedure TSchdGuiForm.SecButtonClick(Sender: TObject);
begin
  MainForm.SecButtonClick(self);
end;

procedure TSchdGuiForm.SchdHistNewRecord(DataSet: TDataSet);
Var DateVar      : String;
    SchdStatusID : String;
    SchdTypeID   : String;
    TabNum       : Integer;
begin
  Open_Query('SCHDSET',false,'SELECT * FROM SCHDSET WHERE FDID = ' + AddExpr(mFireID));
  SchdStatusID := GetField('SCHDSET','SCHDSTATUSNEWID').AsString;
  SchdTypeID   := GetField('SCHDSET','SCHDTYPENEWID').AsString;
  CloseApollo('SCHDSET');

  DataSet.FieldByName('SCHDSTATUSID').AsString := SchdStatusID;

  If SchdGUISourceTable = 'SCHDTYPE' then
    DataSet.FieldByName('SCHDTYPEID').AsInteger   := SchdGuiTablePK
  else
    DataSet.FieldByName('SCHDTYPEID').AsString   := SchdTypeID;

  If SchdGUISourceTable='SCHDLOC' then begin
    DataSet.FieldByName('SCHDLOCID').AsInteger  := SchdGuiTablePK;
    DataSet.FieldByName('SCHDTYPEID').AsString  := SchdTypeID;
  end;

  If SchdGUISourceTable='INV' then
    DataSet.FieldByName('UNITNUM').AsString   := SqlLookup(SchdGuiTablePK,'INVID','INV','UNITNUM');

  Open_Query('SCHDSHIFTTEMP',false,'SELECT SCHDSHIFTTEMP.SCHDSHIFTNAMEID, SCHDSHIFTTEMP.DATETIMESTART, ' +
                                   'SCHDSHIFTTEMP.SHIFTLENGTH, SCHDSHIFTTEMP.DATETIMEEND ' +
                                   'FROM SCHDSHIFTTEMP ' +
                                   'LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
                                   'LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFTTEMP.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
                                   'WHERE ' + GetFdidSQL('SCHDSHIFT.FDID') + ' AND ' + 
                                   'DATETIMESTART <= ' + CurrentDate + ' AND DATETIMEEND >= ' + CurrentDate + ' AND SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y'));

  DataSet.FieldByName('SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTTEMP','SCHDSHIFTNAMEID').AsString;
  DataSet.FieldByName('DATETIMESTART').AsDateTime := GetField('SCHDSHIFTTEMP','DATETIMESTART').AsDateTime;
  DataSet.FieldByName('DATETIMEEND').AsDateTime   := GetField('SCHDSHIFTTEMP','DATETIMEEND').AsDateTime;
  DataSet.FieldByName('SHIFTLENGTH').AsFloat      := GetField('SCHDSHIFTTEMP','SHIFTLENGTH').AsFloat;
  CloseApollo('SCHDSHIFTTEMP');
  DataSet.FieldByName('PERSID').AsString          := PersBrowse.GetValue('PERSID');
  DataSet.FieldByName('SCHDRANKID').AsString      := SQLLookUp(PersBrowse.GetValue('PERSID'),'PERSID','PERS','SCHDRANKID');

  LoadSysFieldDef(mFireID,'SCHDHIST',DataSet);
  
  SchdGUISourceTable := '';
  SchdGuiTablePK     := 0;
end;

procedure TSchdGuiForm.ShowAllClick(Sender: TObject);
begin
  RefreshBrowse;
end;

procedure TSchdGuiForm.SplitShiftChoiceClick(Sender: TObject);
Var SchdHistID : String;
begin
  If FAlpineTMSStringGrid = nil then
    Exit;
  SchdHistID    := FAlpineTMSStringGrid.GetValue('SCHDHISTID');
  SchdSplitForm := TSchdSplitForm.Create(application,SchdHistID);
  SchdSplitForm.ShowModal;
  SchdSplitForm.Free;
  RefreshBrowse;
end;

procedure TSchdGuiForm.ViewPersonnel1Click(Sender: TObject);
Var PersID : String;
begin
  PersID := PersBrowse.GetValue('PERSID');
  RunAlpineForm(TPersForm,PersID,'PERS',TPersForm.NewRecord);
end;

procedure TSchdGuiForm.PersBrowseClickCell(Sender: TObject; ARow, ACol: Integer);
begin
  PersBrowse.BeginDrag(True);
end;

procedure TSchdGuiForm.PersBrowseDragDrop(Sender, Source: TObject; X, Y: Integer);
var mName       : String;
    mSchdHistid : String;
begin
  if (Source is TAlpineTMSStringGrid) then begin
    If (mFireID = '07130') then begin
      if (not CheckSecVar('SCHDEDLOCK')) and (TAlpineTMSStringGrid(Source).GetValue('LOCKED') = 'Y') then begin
        ShowMessage('Record Locked -- You do not have security to do this operation.');
        Exit;
      end;
    end;

    mName := TAlpineTMSStringGrid(Source).GetValue('NAME');
    mSchdHistid := TAlpineTMSStringGrid(Source).GetValue('SCHDHISTID');
    if BooleanMessageDlg('Delete Record for  '+mName) then begin
      RunSql('DELETE FROM SCHDHIST WHERE SCHDHISTID = ' + mSchdHistid);
      RefreshBrowse;
    end;
  end;
end;

procedure TSchdGuiForm.PersBrowseDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept :=  ((Sender is TAlpineTMSStringGrid) and (Sender<>Source)); 
end;

procedure TSchdGuiForm.ClickCell(Sender: TObject; ARow,ACol: Integer);
begin
  If Sender is TAlpineTMSStringGrid then
    TAlpineTMSStringGrid(Sender).BeginDrag(True);
end;

procedure TSchdGuiForm.PersBrowseMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mPoint: TPoint;
  function GetRow: integer;
  var APopUpPoint : TPoint;
      TheRow      : integer;
      TheCol      : integer;
  begin
    APopupPoint.x := x;
    APopupPoint.y := y;
    TAlpineTMSStringGrid(Sender).MouseToCell(APopUpPoint.x, APopUpPoint.y, TheCol, TheRow);
    result := TheRow;
  end;
begin
  If not (Sender is TAlpineTMSStringGrid) then
    exit;
  If Button = mbRight then begin
    if (GetRow > 0) and (GetRow <= TAlpineTMSStringGrid(Sender).RowCount-1) then begin
      TAlpineTMSStringGrid(Sender).Row := GetRow;
      mPoint.x             := x;
      mPoint.y             := y;
      mPoint               := TAlpineTMSStringGrid(Sender).ClientToScreen(mPoint);
      FAlpineTMSStringGrid := TAlpineTMSStringGrid(Sender);
      PersMenu.popup(mPoint.x,mPoint.y);
    end;
  end else begin
  end;
end;

procedure TSchdGuiForm.FillTruckList;
var m: TMenuItem;
begin
  open_Query('INV',False,'SELECT INVID, SCHEDMENU, SCHEDULE, UNITNUM, DESCR FROM INV WHERE  ' + GetFdidSQL('INV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND SCHEDMENU = ' + AddExpr('Y') + ' ORDER BY UNITNUM');
  while not A('INV').eof do begin
    m         := TMenuItem.Create(self);
    if mfireid = '23239' then
      m.caption := alltrim(tdbField('INV','UNITNUM'))
    else    
      m.caption := alltrim(tdbField('INV','UNITNUM')+'-'+tdbField('INV','DESCR'));
    m.Tag     := GetField('INV','INVID').AsInteger;
    m.OnClick := ChangeUnitNum;
    ChangeApparatus.Insert(0,m);
    A('INV').skip(1);
  end;
  CloseApollo('INV');
end;

procedure TSchdGuiForm.ChangeUnitNum(Sender: TObject);
Var SchdHistID : Integer;
    UnitNum    : String;
    InvID      : String;
begin
  If FalpineTMSStringGrid=nil then
    exit;
  InvID      := IntToStr( (Sender as TMenuItem).Tag);
  UnitNum    := SqlLookUp(InvID,'INVID','INV','UNITNUM');
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET UNITNUM = ' + AddExpr(UnitNum) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.FillSchdLoc;
var m: TMenuItem;
begin
  Open_Query('SCHDLOC',False,'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE DESC');
  while not A('SCHDLOC').eof do begin
    m          := TMenuItem.Create(self);
    m.caption  := alltrim(tdbField('SCHDLOC','CODE')+'-'+tdbField('SCHDLOC','DESCR'));
    m.Tag      := GetField('SCHDLOC','SCHDLOCID').AsInteger;
    m.OnClick  := ChangeSchdLoc;
    ChangeLocation.Insert(0,m);
    A('SCHDLOC').skip(1);
  end;
  CloseApollo('SCHDLOC');
end;

procedure TSchdGuiForm.FillSchdRank;
var m: TMenuItem;
begin
  Open_Query('SCHDRANK',False,'SELECT * FROM SCHDRANK WHERE ' + GetFdidSQL('SCHDRANK.FDID') + ' ORDER BY CODE DESC');
  while not A('SCHDRANK').eof do begin
    m          := TMenuItem.Create(self);
    m.caption  := alltrim(tdbField('SCHDRANK','CODE')+'-'+tdbField('SCHDRANK','DESCR'));
    m.Tag      := GetField('SCHDRANK','SCHDRANKID').AsInteger;
    m.OnClick  := ChangeSchdRank;
    ChangeAssignment.Insert(0,m);
    A('SCHDRANK').skip(1);
  end;
  CloseApollo('SCHDRANK');
end;

procedure TSchdGuiForm.FillSchdShiftName;
var m: TMenuItem;
begin
  Open_Query('SCHDSHIFTNAME',False,'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY CODE DESC');
  while not A('SCHDSHIFTNAME').eof do begin
    m          := TMenuItem.Create(self);
    m.caption  := alltrim(tdbField('SCHDSHIFTNAME','CODE')+'-'+tdbField('SCHDSHIFTNAME','DESCR'));
    m.Tag      := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsInteger;
    m.OnClick  := ChangeSchdShiftName;
    ChangeShift.Insert(0,m);
    A('SCHDSHIFTNAME').skip(1);
  end;
  CloseApollo('SCHDSHIFTNAME');
end;

procedure TSchdGuiForm.FillNfirsAttTask;
var m: TMenuItem;
begin
  Open_Query('NFIRSATTTASK',False,'SELECT * FROM NFIRSATTTASK WHERE ' + GetFdidSQL('NFIRSATTTASK.FDID') + ' ORDER BY CODE DESC');
  while not A('NFIRSATTTASK').eof do begin
    m          := TMenuItem.Create(self);
    m.Caption  := alltrim(tdbField('NFIRSATTTASK','CODE')+'-'+tdbField('NFIRSATTTASK','DESCR'));
    m.Tag      := GetField('NFIRSATTTASK','NFIRSATTTASKID').AsInteger;
    m.OnClick  := ChangeNfirsAttTask;
    ChangeIncidentTask.Insert(0,m);
    A('NFIRSATTTASK').skip(1);
  end;
  CloseApollo('NFIRSATTTASK');
end;

procedure TSchdGuiForm.FillSchdType;
var m: TMenuItem;
begin
  Open_Query('SCHDTYPE',False,'SELECT * FROM SCHDTYPE WHERE ' + GetFdidSQL('SCHDTYPE.FDID') + ' ORDER BY CODE DESC');
  while not A('SCHDTYPE').eof do begin
    m          := TMenuItem.Create(self);
    m.caption  := alltrim(tdbField('SCHDTYPE','CODE')+'-'+tdbField('SCHDTYPE','DESCR'));
    m.Tag      := GetField('SCHDTYPE','SCHDTYPEID').AsInteger;
    m.OnClick  := ChangeSchdType;
    ChangeType.Insert(0,m);
    A('SCHDTYPE').skip(1);
  end;
  CloseApollo('SCHDTYPE');
end;

procedure TSchdGuiForm.ChangeNfirsAttTask(Sender: TObject);
Var SchdHistID : Integer;
begin
  If FalpineTMSStringGrid=nil then
    exit;
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET NFIRSATTTASKID = ' + IntToStr( (Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.ChangeSchdShiftName(Sender: TObject);
Var SchdHistID : Integer;
begin
  If FalpineTMSStringGrid=nil then
    exit;
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET SCHDSHIFTNAMEID = ' + IntToStr( (Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.ChangeSchdType(Sender: TObject);
Var SchdHistID : Integer;
begin
  If FalpineTMSStringGrid=nil then
    exit;
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET SCHDTYPEID = ' + IntToStr( (Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.ChangeSchdLoc(Sender: TObject);
Var SchdHistID : Integer;
begin
  if FalpineTMSStringGrid=nil then exit;
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET SCHDLOCID = ' + IntToStr( (Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.ChangeSchdRank(Sender: TObject);
Var SchdHistID : Integer;
begin
  If FalpineTMSStringGrid=nil then
    exit;
  SchdHistID := StrToInt(FAlpineTMSStringGrid.GetValue('SCHDHISTID'));
  RunSQL('UPDATE SCHDHIST SET SCHDRANKID = ' + IntToStr( (Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  RefreshBrowse;
end;

procedure TSchdGuiForm.BlackColorClick(Sender: TObject);
var i : integer;
begin
  TopStyler.Settings.Color                := $00535353;
  TopStyler.Settings.ColorTo              := $001F1F1F;
  TopStyler.Settings.ColorMirror          := clBlack;
  TopStyler.Settings.ColorMirrorTo        := $001F1F1F;
  Title.Font.Color                        := clWhite;
  SchdGuiForm.Color                       := $001B1B1B;
  PanelStyler.Settings.Caption.Color      := clBlue;
  PanelStyler.Settings.Caption.ColorTo    := clNavy;
  PanelStyler.Settings.Color              := clGray;
  PanelStyler.Settings.ColorTo            := clBlack;
  PanelStyler.Settings.ColorMirror        := clNone;
  PanelStyler.Settings.ColorMirrorTo      := clNone;
  BottomStyler.Settings.Color             := $00555555;
  BottomStyler.Settings.ColorTo           := $00333333;
  BottomStyler.Settings.ColorMirror       := $00333333;
  BottomStyler.Settings.ColorMirrorTo     := $00333333;
end;

procedure TSchdGuiForm.LoadSchdReqBrowse;
Var DateLower : String;
    DateUpper : String;
begin                       
  DateLower                             := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date) + ' 00:00');
  DateUpper                             := AddExpr(FormatDateTime('YYYY-MM-DD',Calendar.Date) + ' 23:59');
  SchdReqSchdBrowse.ExplicitWhereClause := ' WHERE SCHDHIST.DATETIMESTART >= ' + DateLower + ' AND SCHDHIST.DATETIMESTART <= ' + DateUpper;
  SchdReqSchdBrowse.Setup('SCHDREQSCHD',TSchdReqForm,SchdReqNewRecord);
  if (mfireID = '07130') or (mFireID = '23239') or (mfireID = '11540') then begin
    SchdReqSchdBrowse.NewEnabled  := False;
  end;
end;

procedure TSchdGuiForm.SchdReqNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TSchdGuiForm.SchdReqPanelDblClick(Sender: TObject);
begin
  if CheckSecVar('SCHDREQED') then begin
    SortGridViewDriver('SCHDREQALL',TSchdReqForm,TSchdReqForm.NewRecord,nil);
  end;
end;

Class procedure TSchdGuiForm.ShowShiftColor(Calendar : TPlannerMonthView; StartDate: TDateTime);
Var SQLVar   : String;
begin
  SQlVar := 'SELECT SCHDSHIFTTEMP.DATETIMESTART, SCHDSHIFT.COLOR FROM SCHDSHIFTTEMP ' +
            'LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
            'WHERE ' + GetFdidSQL('SCHDSHIFT.FDID') + ' AND ' + 
            'SCHDSHIFTTEMP.DATETIMESTART >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',StartDate - 61)) +  ' AND ' +
            'SCHDSHIFTTEMP.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',StartDate + 365)) + ' AND ' +
            'SCHDSHIFT.FDID = ' + AddExpr(mFireID) + ' AND ' +
            'SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y') + ' AND ' +
            'SCHDSHIFT.COLOR IS NOT NULL ' +
            'ORDER BY SCHDSHIFTTEMP.DATETIMESTART';

  Open_Query('SCHDSHIFTTEMP',false,SQLVar);
  While Not A('SCHDSHIFTTEMP').Eof do begin
    If Not (tdbfield('SCHDSHIFTTEMP','COLOR') = '') then begin
      with Calendar.CreateItem do begin
        Background    := true;
        ItemStartTime := StrToDate(FormatDateTime('MM/DD/YYYY',GetField('SCHDSHIFTTEMP','DATETIMESTART').AsDateTime));
        ItemEndTime   := StrToDate(FormatDateTime('MM/DD/YYYY',GetField('SCHDSHIFTTEMP','DATETIMESTART').AsDateTime));
//      CaptionType   := ctNone;
        CanSelect     := False;
        Color         := StringToColor(tdbfield('SCHDSHIFTTEMP','COLOR'));
        TrackVisible  := False;
        Update;
      end;
    end;
    A('SCHDSHIFTTEMP').Skip(1);
  end;
  CloseApollo('SCHDSHIFTTEMP');
end;

procedure TSchdGuiForm.CreateCatchAll(iRow,iCol,iWidth, RowHeight: Integer; mTablePK, mTable: String; mStringList: TStringList; mPanel: TPanel; mcaption: String);
var Browsepanel    : TAdvPanel;
    ScheduleBrowse : TAlpineTMSStringGrid;
begin
  Browsepanel        := TAdvPanel.Create(self);
  Browsepanel.Parent := mPanel;
  mPanel.Visible     := true;

  with Browsepanel do begin
    Name                  := 'PANEL'+mTable+'IDCATCHALL'                      ;
    Width                 := iWidth                                           ;
    Height                := 174                                              ;
    BevelOuter            := bvNone                                           ;
    Tag                   := iCol                                             ;
    Color                 := clGray                                           ;
    Font.Charset          := DEFAULT_CHARSET                                  ;
    Font.Color            := clWindowText                                     ;
    Font.Height           := -11                                              ;
    Font.Name             := 'Tahoma'                                         ;
    Font.Style            := []                                               ;
    ParentFont            := False                                            ;
    TabOrder              := 2                                                ;
    UseDockManager        := True                                             ;
    AutoHideChildren      := False                                            ;
    BorderColor           := clGray                                           ;
    BorderWidth           := 4                                                ;
    CanMove               := false                                            ;
    CanSize               := false                                            ;
    Caption.Color         := 14212042                                         ;
    Caption.ColorTo       := 4606770                                          ;
    Caption.CloseButton   := false                                            ;
    Caption.Font.Charset  := ANSI_CHARSET                                     ;
    Caption.Font.Color    := clWhite                                          ;
    Caption.Font.Height   := -13                                              ;
    Caption.Font.Name     := 'Arial'                                          ;
    Caption.Font.Style    := [fsBold]                                         ;
    Caption.Indent        := 2                                                ;
    Caption.ShadeLight    := 255                                              ;
    Caption.Text          := mCaption                                         ;
    Caption.Visible       := True                                             ;
    CollapsColor          := clHighlight                                      ;
    CollapsDelay          := 0                                                ;
    ColorTo               := clBlack                                          ;
    ShadowColor           := clBlack                                          ;
    ShadowOffset          := 0                                                ;
    StatusBar.BorderColor := clNone                                           ;
    StatusBar.Font.Charset:= DEFAULT_CHARSET                                  ;
    StatusBar.Font.Color  := clWhite                                          ;
    StatusBar.Font.Height := -11                                              ;
    StatusBar.Font.Name   := 'Tahoma'                                         ;
    StatusBar.Font.Style  := []                                               ;
    StatusBar.Color       := 14716773                                         ;
    StatusBar.ColorTo     := 16374724                                         ;
    StatusBar.Height      := 34                                               ;
    Styler                := PanelStyler                                      ;
    FullHeight            := 206                                              ;
    align                 := alleft                                           ;
  end;
  ScheduleBrowse        := TAlpineTMSStringGrid.Create(self);
  ScheduleBrowse.parent := Browsepanel;
  with ScheduleBrowse do begin
     Name     := 'BROWSECATCHALL'                                          ;
     Cursor   := crDefault                                                 ;
     Align    := alClient                                                  ;
     Tag      := iCol                                                      ;
     Color    := 3355443                                                   ;
     ColCount := 1                                                         ;
     Ctl3D := False                                                        ;
     DefaultRowHeight := RowHeight                                         ;
     FixedColor := clBlack                                                 ;
     FixedCols := 0                                                        ;
     Font.Charset := ANSI_CHARSET                                          ;
     Font.Color := clWhite                                                 ;
     Font.Height := -11                                                    ;
     Font.Name := 'MS Sans Serif'                                          ;
     Font.Style := []                                                      ;
     GridLineWidth := 0                                                    ;
     Options := [goRowSelect]                                              ;
     ParentCtl3D := False                                                  ;
     ParentFont := False                                                   ;
     PopupMenu := SchdMenu                                                 ;
     ScrollBars := ssVertical                                              ;
     TabOrder := 0                                                         ;
     OnDblClick := GridDblClick                                            ;
     OnMouseDown := GridMouseDown                                          ;
     ActiveRowColor := clBlack                                             ;
     GridLineColor := 15062992                                             ;
     ActiveCellFont.Charset := DEFAULT_CHARSET                             ;
     ActiveCellFont.Color := clWindowText                                  ;
     ActiveCellFont.Height := -11                                          ;
     ActiveCellFont.Name := 'Tahoma'                                       ;
     ActiveCellFont.Style := [fsBold]                                      ;
     ActiveCellColor := 10344697                                           ;
     ActiveCellColorTo := 6210033                                          ;
     BackGround.Top := 100                                                 ;
     BackGround.Left := 200                                                ;
     BackGround.Display := bdFixed                                         ;
     OnClickCell := ClickCell;     
     FixedColWidth := 68                                                   ;
     FixedRowHeight := 0                                                   ;
     FixedRowAlways := True                                                ;
     FixedFont.Charset := ANSI_CHARSET                                     ;
     FixedFont.Color := clWindowText                                       ;
     FixedFont.Height := -11                                               ;
     FixedFont.Name := 'MS Sans Serif'                                     ;
     FixedFont.Style := [fsBold]                                           ;
     Flat := True                                                          ;
     FloatFormat := '%.2f'                                                 ;
     MouseActions.NoScrollOnPartialRow := True                             ;
     MouseActions.SelectOnRightClick := True                               ;
     MouseActions.WheelIncrement := 1                                      ;
     Navigation.HomeEndKey := heFirstLastRow                               ;
     PrintSettings.DateFormat := 'dd/mm/yyyy'                              ;
     PrintSettings.Font.Charset := DEFAULT_CHARSET                         ;
     PrintSettings.Font.Color := clWindowText                              ;
     PrintSettings.Font.Height := -11                                      ;
     PrintSettings.Font.Name := 'MS Sans Serif'                            ;
     PrintSettings.Font.Style := []                                        ;
     PrintSettings.FixedFont.Charset := DEFAULT_CHARSET                    ;
     PrintSettings.FixedFont.Color := clWindowText                         ;
     PrintSettings.FixedFont.Height := -11                                 ;
     PrintSettings.FixedFont.Name := 'MS Sans Serif'                       ;
     PrintSettings.FixedFont.Style := []                                   ;
     PrintSettings.HeaderFont.Charset := DEFAULT_CHARSET                   ;
     PrintSettings.HeaderFont.Color := clWindowText                        ;
     PrintSettings.HeaderFont.Height := -11                                ;
     PrintSettings.HeaderFont.Name := 'MS Sans Serif'                      ;
     PrintSettings.HeaderFont.Style := []                                  ;
     PrintSettings.FooterFont.Charset := DEFAULT_CHARSET                   ;
     PrintSettings.FooterFont.Color := clWindowText                        ;
     PrintSettings.FooterFont.Height := -11                                ;
     PrintSettings.FooterFont.Name := 'MS Sans Serif'                      ;
     PrintSettings.FooterFont.Style := []                                  ;
     PrintSettings.PageNumSep := '/'                                       ;
     ScrollWidth := 16                                                     ;
     SearchFooter.ColorTo := 16767411                                      ;
     SearchFooter.FindNextCaption := 'Find next'                           ;
     SearchFooter.FindPrevCaption := 'Find previous'                       ;
     SearchFooter.Font.Charset := DEFAULT_CHARSET                          ;
     SearchFooter.Font.Color := clWindowText                               ;
     SearchFooter.Font.Height := -11                                       ;
     SearchFooter.Font.Name := 'MS Sans Serif'                             ;
     SearchFooter.Font.Style := []                                         ;
     SearchFooter.HighLightCaption := 'Highlight'                          ;
     SearchFooter.HintClose := 'Close'                                     ;
     SearchFooter.HintFindNext := 'Find next occurence'                    ;
     SearchFooter.HintFindPrev := 'Find previous occurence'                ;
     SearchFooter.HintHighlight := 'Highlight occurences'                  ;
     SearchFooter.MatchCaseCaption := 'Match case'                         ;
     SearchFooter.SearchColumn := 5                                        ;
     SelectionColor := 6210033                                             ;
     SortSettings.Show := True                                             ;
     SortSettings.IndexShow := True                                        ;
     VAlignment := vtaCenter                                               ;
     Version := '3.6.0.2'                                                  ;
//   OnDragOver := SchdBrowseDragOver;
//   OndragDrop := SchdBrowseDragDrop;
   end;

  Browsepanel.Left   := (iCol-1)*Browsepanel.Width+((iCol-1)*SPACEBETWEEN);
  Browsepanel.top    := (iRow-1)*Browsepanel.Height+((iRow-1)*SPACEBETWEEN);
  BrowsePanel.Height := BottomPanel.Height - (2*SPACEBETWEEN);
end;

procedure TSchdGuiForm.LoadCatchAll(Browse: TAlpineTMSStringGrid);
begin
  Browse.Clear;
  Browse.ClearColumns;
  Browse.ColCount       := 0;
  Browse.RowCount       := 0;
  Browse.FixedRowAlways := true;
  Browse.RowCount       := Browse.FixedRows;
  Browse.SetColumn('SCHDHISTID',  '',001);
  Browse.SetColumn('NAME',        '',120);
  Browse.SetColumn('TIME',        '',190);
  Browse.SetColumn('LOCKED',      '',000);
  Browse.SetColumn('SPACE',       '',200);

  A('VWSCHDHIST').GoTop;
  While Not A('VWSCHDHIST').Eof do begin
    If (tdbfield('VWSCHDHIST','GUIMISCOFF') = 'Y') then begin
      Browse.SetValue('SCHDHISTID',GetField('VWSCHDHIST','SCHDHISTID').AsString);
      Browse.SetValue('NAME',      tdbfield('VWSCHDHIST','LNAME') + ', ' + tdbfield('VWSCHDHIST','FNAME') + #10#13 + tdbfield('VWSCHDHIST','SCHDRANKDESCR'));
      if tdbfield('VWSCHDHIST','SCHDTYPEDESCR') <> '' then
        Browse.SetValue('TIME',      FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMESTART').AsDateTime) + '-' + FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMEEND').AsDateTime) + #10#13 + tdbfield('VWSCHDHIST','SCHDTYPEDESCR')+ ',' + tdbfield('VWSCHDHIST','SCHDSUBTYPEDESCR'))
      else
        Browse.SetValue('TIME',      FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMESTART').AsDateTime) + '-' + FormatDateTime('HH:NN',GetField('VWSCHDHIST','DATETIMEEND').AsDateTime) + #10#13 + tdbfield('VWSCHDHIST','SCHDTYPEDESCR'));
      Browse.SetValue('LOCKED',    tdbfield('VWSCHDHIST','LOCKED'));
      Browse.SetValue('SPACE',     '');
      If Not (tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR') = '') then
        Browse.SetRowFontColor(tdbfield('VWSCHDHIST','SCHDRANKFONTCOLOR'))
    end;
    A('VWSCHDHIST').Skip(1);
  end;
end;


end.
