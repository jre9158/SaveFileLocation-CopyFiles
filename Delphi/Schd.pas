unit Schd;

interface

uses
  BDE,
  genfunc,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Grids,
  ComCtrls,
  Calendar,
  StdCtrls,
  ExtCtrls,
  Blink,
  Buttons,
  db,
  Menus,
  applst,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  BaseGrid,
  AdvGrid,
  AdvPageControl,
  FormFunc,
  PlannerCal,
  AdvPanel,
  AdvToolBar,
  htmlbtns,
  AdvToolBtn,
  AlpineTMSStringGrid,
  ImgList,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBase,
  AlpinePanel,
  PlannerMonthView,
  Planner,
  AdvMenus,
  AdvMenuStylers,
  BasePictureField,
  AlpineEdit,
  AlpineBlockBrowse,
  AdvOfficeButtons,
  alpinecheck,
  AdvObj;

type
  TTabType = class
    TabType: string;
    Value: string;
  end;

  TSchdForm = class(TAlpineBaseForm)
    SchdMenu: TAdvPopupMenu;
    ChangeAssignment: TMenuItem;
    ChangeLocation: TMenuItem;
    ChangeApparatus: TMenuItem;
    ChangeType: TMenuItem;
    ChangeShift: TMenuItem;
    ChangeIncidentTask: TMenuItem;
    DuplicateChoice: TMenuItem;
    OvcController1: TOvcController;
    BrowsePanel: TAlpinePanel;
    ButtonPanel: TAlpinePanel;
    StationTabControl: TTabControl;
    DeleteButton: TAlpineGlowButton;
    EditButton: TAlpineGlowButton;
    NewButton: TAlpineGlowButton;
    PrintButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    SplitButton: TAlpineGlowButton;
    LockButton: TAlpineGlowButton;
    SearchButton: TAlpineGlowButton;
    AlpinePanel6: TAlpinePanel;
    schdshifttimepanel: TAlpinePanel;
    MiscButton: THTMLCheckBox;
    Calendar: TPlannerMonthView;
    AlpinePanel3: TAlpinePanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    DeptLabel: TLabel;
    Label5: TLabel;
    SchdHistBrowse: TAlpineTMSStringGrid;
    Splitter2: TSplitter;
    ImageList1: TImageList;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    LockAllButton: TAlpineGlowButton;
    SchdReqPanel: TAlpinePanel;
    SchdReqSchdBrowse: TAlpineBlockBrowse;
    SplitShiftChoice: TMenuItem;
    ListPanel: TPanel;
    SchdShiftNamePanel: TAlpinePanel;
    SchdShiftNameBrowse: TAdvStringGrid;
    SchdTypePanel: TAlpinePanel;
    SchdTypeBrowse: TAdvStringGrid;
    SchdRankPanel: TAlpinePanel;
    SchdRankBrowse: TAdvStringGrid;
    SchdShiftNameDescrField: TLabel;
    PersButton: TAlpineGlowButton;
    DefaultShiftTypePanel: TPanel;
    SHIFT24STARTPanel: TPanel;
    Label2: TLabel;
    SHIFT24START: TAlpineEdit;
    AMPMPanel: TPanel;
    Label3: TLabel;
    amstartfield: TAlpineEdit;
    Label4: TLabel;
    pmstartfield: TAlpineEdit;
    dayshiftcheckbox: TAdvOfficeRadioButton;
    nightshiftcheckbox: TAdvOfficeRadioButton;
    bothcheckbox: TAdvOfficeRadioButton;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DayTimeField: TAlpineEdit;
    NightTimeField: TAlpineEdit;
    RefreshCalendar: TAlpineGlowButton;
    DayMidpointPanel: TPanel;
    Label10: TLabel;
    midpoint: TAlpineEdit;
    Refre: TAlpineGlowButton;
    showallday: TAlpineCheckBox;
    DescriptionLabel: TLabel;
    UnLockAllButton: TAlpineGlowButton;
    UnLockButton: TAlpineGlowButton;
    SchdReqCheckPanel: TPanel;
    SchdReqTodayButton: TAlpineGlowButton;
    SchdReqMonthButton: TAlpineGlowButton;
    SchdReqWeekButton: TAlpineGlowButton;
    ShowEmptyCheck: THTMLCheckBox;
    ViewPersonnel1: TMenuItem;
    CrewSenseButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure CalendaraChange(Sender: TObject);
    procedure LockButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure StationGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DeleteButtonClick(Sender: TObject);
    procedure DuplicateChoiceClick(Sender: TObject);
    procedure SchdHistBrowseDblClick(Sender: TObject);
    procedure SchdHistBrowseClick(Sender: TObject);
    procedure SchdHistBrowseMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SchdHistBrowseKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SchdHistBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StationTabControlChange(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure CalendarDateChange(Sender: TObject; origDate, newDate: TDateTime);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NewButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure SchdShiftNameBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure timefieldExit(Sender: TObject);
    procedure LockAllButtonClick(Sender: TObject);
    procedure SplitButtonClick(Sender: TObject);
    procedure SplitShiftChoiceClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure RequeryButtonClick(Sender: TObject);
    procedure dayshiftcheckboxClick(Sender: TObject);
    procedure DayTimeFieldClick(Sender: TObject);
    procedure RefreshCalendarClick(Sender: TObject);
    procedure DayTimeFieldChange(Sender: TObject);
    procedure UnLockAllButtonClick(Sender: TObject);
    procedure UnLockButtonClick(Sender: TObject);
    procedure ButtonPanelResize(Sender: TObject);
    procedure SchdHistBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure MiscButtonClick(Sender: TObject);
    procedure SchdHistBrowseGetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure FormShow(Sender: TObject);
    procedure SchdReqTodayButtonClick(Sender: TObject);
    procedure SchdReqWeekButtonClick(Sender: TObject);
    procedure SchdReqMonthButtonClick(Sender: TObject);
    procedure ViewPersonnel1Click(Sender: TObject);
    procedure CrewSenseButtonClick(Sender: TObject);
  private
    { Private declarations }
    mSchdShiftType: string;
    SchdStatusAppID: string;
    SchdstatusNewID: string;
    noequalwithend: Boolean;
    SysViewCustID: string;
    bCascadeApparatusBehindLocations: Boolean;
    procedure UnApproveSchdHist(RowVar: Integer);
    procedure RefreshList(bInitialize: Boolean = False);
    procedure SetGridFields(mAlias: string; iRow: Integer);
    procedure SetPaidSecurity(RowNum: Integer);
    procedure FillTruckList;
    procedure FillSchdLoc;
    procedure FillSchdRank;
    procedure FillNfirsAttTask;
    procedure FillSchdShiftName;
    procedure FillSchdType;
    procedure ChangeSchdType(Sender: TObject);
    procedure ChangeSchdLoc(Sender: TObject);
    procedure ChangeSchdRank(Sender: TObject);
    procedure ApproveSchdHist(RowVar: Integer);
    procedure ChangeSchdShiftName(Sender: TObject);
    procedure ChangeNfirsAttTask(Sender: TObject);
    procedure ChangeUnitNum(Sender: TObject);
    procedure LoadSchdReqBrowse;
    procedure LoadBrowse(Browse: TAdvStringGrid; TableName: string);
    function CheckShowEmpty: Boolean;
  public
    { Public declarations }
    AppOpen: string;
    Approved: string;
    LocOrApp: string;
    RegCode: string;
    CalRangeVar: Real;
    TabList: TList;
    procedure SchdReqNewRecord(DataSet: TDataSet);
    procedure SchdHistNewRecord(DataSet: TDataSet);
    class procedure CommonApproveAndLockSchdHist(SchdHistID: string);
    class procedure CommonUnLockSchdHist(SchdHistID: string);
    procedure ConfigureSchdHistBrowse;
    procedure Unapprove(iSchdHistId: Integer);
    class procedure ShowShiftColor(Calendar: TPlannerMonthView; StartDate: TDateTime);
    procedure RefreshRecord(iSchdhistid: Integer);

  end;
{$I rednmx.inc}

var
  SchdForm: TSchdForm;

implementation
uses SchdHist,
     SecSet,
     schdroster,
     CommonVar,
     CommonSchd,
     customupdate,
     SchdMenu,
     SchdSplit,
     Pers,
     SortGridView,
     SchdReq,
     NormalBase,
     CommonFunc,
     CrewSense,
     Main;

{$R *.DFM}

function CheckFdid(FdidVar: string): Boolean;
begin
  if secFDID = '' then
    CheckFdid := true
  else if secFDID = FdidVar then
    CheckFdid := true
  else
    CheckFdid := false;
end;

function MultipFdidCondition: Boolean;
begin
  if MultiFdid and (secFDID <> '') then
    Result := true
  else
    Result := false;
end;

procedure TSchdForm.FormCreate(Sender: TObject);
var ATabType : TTabType;
    bAddAll  : Boolean;
    bShowtab : Boolean;

  procedure SetControls(mComponent: TWinControl);
  var i: Integer;
  begin
    for i := mComponent.ControlCount - 1 downto 0 do
      TControl(mComponent.Controls[i]).Parent := schdshifttimepanel;
  end;

  procedure ShowInvTabs(iSchdLocID: Integer);
  var mSchdLocCondition, mSql: string;
  begin
    if iSchdLocid = 0 then
      mSchdLocCondition := ''
    else
      mSchdLocCondition := ' AND SCHDLOCID = ' + inttostr(iSchdLocId) + ' ';

    if MultipFdidCondition then
      msql := 'SELECT SCHEDULE, UNITNUM, DESCR FROM INV WHERE ' + GetFdidSQL('INV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND SCHEDULE = ' + AddExpr('Y') + mSchdLocCondition
    else
      mSql := 'SELECT SCHEDULE, UNITNUM, DESCR FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND SCHEDULE = ' + AddExpr('Y') + mSchdLocCondition;

    mSql := msql + ' ORDER BY UNITNUM';
    Open_Query('INV', False, mSql);
    while not A('INV').Eof do begin
      StationTabControl.Tabs.Add(tdbfield('INV', 'UNITNUM'));
      ATabType := TTabType.Create;
      ATabType.TabType := 'UNIT';
      ATabType.Value := GetField('INV', 'UNITNUM').AsString;
      TabList.Add(ATabType);
      A('INV').Skip(1);
    end;
    CloseApollo('INV');
  end;

begin
  try
    if FIREID = '81000' then begin
      SplitButton.Enabled := False;
      LockButton.Enabled := False;
      LockAllButton.Enabled := False;
      UnLockButton.Enabled := False;
      UnLockAllButton.Enabled := False;
      PrintButton.Enabled := False;
    end;
    if FIREID = '03800' then
      SplitButton.Caption := 'Mutual';

    Open_Query('SCHDTYPELU', false, 'SELECT * FROM SCHDTYPE');

    SchdReqSchdBrowse.FNewButton.Visible := False;
    Calendar.Year := StrToInt(FormatDateTime('YYYY', Now));
    Calendar.Month := StrToInt(FormatDateTime('MM', Now));
    Calendar.Day := StrToInt(FormatDateTime('DD', Now));
    If (mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123') then
      ShowEmptyCheck.Visible := False;

    If (mFireID = '08007') or (mFireID = '07110') or (mFireid = '28014') or (mFireid = '34032') or (mFireid = '28025') then
      ShowEmptyCheck.Checked := True;
    If ((mFireid = '06001') or (mFireid = '52280')) then
      MiscButton.Checked := False;

    DeptLabel.Caption := FireDept;
    StationTabControl.Tabs.Clear;

    TabList := TList.Create;
    If MultiFdid then
      bAddAll := secFDID = ''
    else
      bAddAll := true;

    if ((mFireid = '28017') or (mFireid = '71630') or (mFireid = '01920')) then
      bAddAll := true;

    if mFireid = '07130' then
      bAddAll := false;

    if (bAddAll) then begin
      StationTabControl.Tabs.Add('ALL');
      ATabType := TTabType.Create;
      ATabType.TabType := 'ALL';
      TabList.Add(ATabType);
    end;
    if (mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123') then
      bCascadeApparatusBehindLocations := True
    else
      bCascadeApparatusBehindLocations := False;

    if MultipFdidCondition then
      Open_query('SCHDLOC', False, 'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE')
    else if mFireid = '09206' then begin
      if CheckSecVar('SCHDPRIVATEVIEW') then
        Open_query('SCHDLOC', False, 'SELECT * FROM SCHDLOC ORDER BY CODE')
      else
        Open_query('SCHDLOC', False,'SELECT * FROM SCHDLOC WHERE (PRIVATE = ''N'' OR PRIVATE = '''' OR PRIVATE IS NULL) ORDER BY CODE');
    end else
      Open_query('SCHDLOC', False, 'SELECT * FROM SCHDLOC ORDER BY CODE');

    while not A('SCHDLOC').eof do begin
      if (tdbfield('SCHDLOC', 'SCHEDULE') = 'Y') then begin
        if mFireid = '30019' then begin
          if tdbfield('schdloc', 'code') = 'HQ-VOL' then
            bShowTab := CheckSecVar('SCHDHQVOL')
          else
            bShowTab := True;
        end else
          bShowTab := True;

        if bShowTab then begin
          if (mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123') then
            StationTabControl.Tabs.Add('Station ' + tdbfield('SCHDLOC', 'CODE'))
          else
            StationTabControl.Tabs.Add(tdbfield('SCHDLOC', 'CODE'));

          ATabType         := TTabType.Create;
          ATabType.TabType := 'LOC';
          ATabType.Value   := GetField('SCHDLOC', 'SCHDLOCID').AsString;
          TabList.Add(ATabType);
          if bCascadeApparatusBehindLocations then
            ShowInvTabs(GetField('SCHDLOC', 'SCHDLOCID').AsInteger);
        end;
      end;
      A('SCHDLOC').Skip(1);
    end;
    CloseApollo('SCHDLOC');

    if not bCascadeApparatusBehindLocations then
      ShowInvTabs(0);

    SchdReqPanel.Visible := SqlTableRecCount('SELECT COUNT(*) FROM SCHDREQTYPE') > 0;
    DayTimeField.Text    := substr(GetTimeAsString, 1, 5);
    NightTimeField.Text  := substr(GetTimeAsString, 1, 5);

    Open_Query('SCHDSET', false,'SELECT SCHDSET.NOEQUALWITHEND,SCHDSET.DAYMIDPOINT,SCHDSET.SCHDSTATUSNEWID,SCHDSET.SYSVIEWCUSTID, SCHDSET.AMSTART,SCHDSET.PMSTART,SCHDSET.SHIFT24START,SCHDSHIFTTYPE.CODE SCHDSHIFTTYPECODE,SCHDSTATUSAPPID FROM SCHDSET ' +
                                'LEFT OUTER JOIN SCHDSHIFTTYPE ON (SCHDSHIFTTYPE.SCHDSHIFTTYPEID = SCHDSET.SCHDSHIFTTYPEID) ' +
                                'WHERE FDID = ' + AddExpr(mFireID));

    SysViewCustID      := Getfield('SCHDSET', 'SYSVIEWCUSTID').AsString;
    mSchdShiftType     := tdbField('SCHDSET', 'SCHDSHIFTTYPECODE');
    SchdStatusAppID    := GetField('SCHDSET', 'SCHDSTATUSAPPID').AsString;
    SchdstatusNewID    := GetField('SCHDSET', 'SCHDSTATUSNEWID').AsString;
    SHIFT24START.Value := TDBField('SCHDSET', 'SHIFT24START');
    amstartfield.VALUE := TDBField('SCHDSET', 'AMSTART');
    pmstartfield.VALUE := TDBField('SCHDSET', 'PMSTART');
    noequalwithend     := tdbField('SCHDSET', 'NOEQUALWITHEND') = 'Y';
    midpoint.Value     := tdbField('SCHDSET', 'DAYMIDPOINT');

    if (FIREID = 'HARFO') then begin
      DayTimeField.Text := '00:01';
      NightTimeField.Text := '23:59';
    end;

    if (FIREID = '71630') then begin
      DayTimeField.Text := '08:00';
      NightTimeField.Text := '23:59';
    end;

    if (mFireID = '67060') or (mFireID = '28032') then
      MidPoint.value := GetTimeAsString;

    if (mSchdShiftType = 'AMPM') and (TDBField('SCHDSET', 'AMSTART') = '') and (TDBField('SCHDSET', 'PMSTART') = '') then
      mSchdShiftType := '';

    if (mSchdShiftType = '24HR') and (TDBField('SCHDSET', 'SHIFT24START') = '') then
      mSchdShiftType := '';

    CloseApollo('SCHDSET');

    if (mSchdShiftType = '') then begin
      SetControls(DefaultShiftTypePanel);
      DayTimeField.TabOrder    := 0;
      NightTimeField.Taborder  := 1;
      RefreshCalendar.Taborder := 2;
    end else if mSchdShiftType = '24HR' then
      SetControls(SHIFT24STARTPanel)
    else if mSchdShiftType = 'AMPM' then
      SetControls(AMPMPanel)
    else if mSchdShiftType = 'MID' then
      SetControls(DayMidpointPanel);

    RefreshList(True);

    FillSchdShiftName;
    FillSchdType;
    FillSchdRank;
    FillNfirsAttTask;
    FillTruckList;
    FillSchdLoc;

    LoadBrowse(SchdShiftNameBrowse, 'SCHDSHIFTNAME');
    LoadBrowse(SchdRankBrowse, 'SCHDRANK');
    LoadBrowse(SchdTypeBrowse, 'SCHDTYPE');

    PersButton.Enabled := CheckSecVar('PERSVIEW') or CheckSecVar('PERSVWREC');

    SchdReqSchdBrowse.ViewOnly := (not CheckSecVar('SCHDED')) and (not CheckSecVar('SCHDREQED'));

    If (mFireID = '12345') or (mFireID = '35011') or (mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123') or (mFireID = '07140') or (mFireID = '09007') then
      TSchdForm.ShowShiftColor(Calendar, Now);
  except
    on e: exception do
    begin
      showmessage('Error in Form Create: ' + e.message);
    end;
  end;

  CrewSenseButton.Visible := (mFireID = '28001') and CheckSecVar('SCHDED');
end;

procedure TSchdForm.FormShow(Sender: TObject);
begin
  SchdReqCheckPanel.Parent := SchdReqSchdBrowse.FButtonPanel;
  SchdReqCheckPanel.Align := alleft;
  If (MFIREID = '07030') then
    showEmptyCheck.Checked := True;
  If ((mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123')) and (SecFdid <> '') then
    schdshifttimepanel.Visible := False;
end;

procedure TSchdForm.FormResize(Sender: TObject);
begin
  ScaleButtonsOnPanel('H', ListPanel);
end;

procedure TSchdForm.LoadSchdReqBrowse;
var DateLower          : string;
    DateUpper          : string;
    mTakenID           : string;
    SchdReqWhereClause : string;
begin
  SchdReqWhereClause := '';
  If SchdReqPanel.Visible then begin
    DateLower := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' 00:00');
    if SchdReqTodayButton.ImageName = 'GLOWBUTTONCHECKED' then begin
      SchdReqPanel.caption.Text := 'Change requests affecting today only';
      DateUpper := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' 23:59')
    end else if SchdReqWeekButton.ImageName = 'GLOWBUTTONCHECKED' then begin
      SchdReqPanel.caption.Text := 'Change requests affecting ' + FormatDateTime('MM/DD/YYYY', Calendar.Date) + ' to ' + FormatDateTime('MM/DD/YYYY', Calendar.Date + 7);
      DateUpper := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date + 7) + ' 23:59')
    end else if SchdReqMonthButton.ImageName = 'GLOWBUTTONCHECKED' then begin
      SchdReqPanel.caption.Text := 'Change requests affecting ' + FormatDateTime('MM/DD/YYYY', Calendar.Date) + ' to ' + FormatDateTime('MM/DD/YYYY', Calendar.Date + 31);
      DateUpper := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date + 31) + ' 23:59')
    end else begin
      SchdReqPanel.caption.Text := 'Change requests affecting today only';
      DateUpper := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' 23:59');
    end;

    SchdReqSchdBrowse.FDeleteButton.Position := bpmiddle;
    SchdReqWhereClause := ' WHERE SCHDHIST.DATETIMESTART >= ' + DateLower + ' AND SCHDHIST.DATETIMESTART <= ' + DateUpper;
    If (secFDID <> '') then begin
      SchdReqWhereClause := SchdReqWhereClause + ' AND PERS.FDID = ' + AddExpr(secFDID);
    end;
    SchdReqSchdBrowse.ExplicitWhereClause := SchdReqWhereClause;
    SchdReqSchdBrowse.Setup('SCHDREQSCHD', TSchdReqForm, SchdReqNewRecord);
    SchdReqSchdBrowse.ViewOnly := not CheckSecVar('SCHDREQED');
    SchdReqSchdBrowse.DeleteEnabled := CheckSecVar('SCHDLOCK');
  end;
end;

procedure TSchdForm.SchdReqTodayButtonClick(Sender: TObject);
begin
  SchdReqTodayButton.ImageName := 'GLOWBUTTONCHECKED';
  SchdReqWeekButton.ImageName := 'GLOWBUTTONNONE';
  SchdReqMonthButton.ImageName := 'GLOWBUTTONNONE';
  LoadSchdReqBrowse;
end;

procedure TSchdForm.SchdReqWeekButtonClick(Sender: TObject);
begin
  SchdReqTodayButton.ImageName := 'GLOWBUTTONNONE';
  SchdReqWeekButton.ImageName := 'GLOWBUTTONCHECKED';
  SchdReqMonthButton.ImageName := 'GLOWBUTTONNONE';
  LoadSchdReqBrowse;
end;

procedure TSchdForm.SchdReqMonthButtonClick(Sender: TObject);
begin
  SchdReqTodayButton.ImageName := 'GLOWBUTTONNONE';
  SchdReqWeekButton.ImageName := 'GLOWBUTTONNONE';
  SchdReqMonthButton.ImageName := 'GLOWBUTTONCHECKED';
  LoadSchdReqBrowse;
end;

procedure TSchdForm.SchdReqNewRecord(DataSet: TDataSet);
begin
  TSchdReqForm.NewRecord(DataSet);
end;

procedure TSchdForm.FillTruckList;
var m: TMenuItem;
begin
  if MultipFdidCondition then
    Open_Query('INV', False, 'SELECT INVID, SCHEDMENU, SCHEDULE, UNITNUM, DESCR FROM INV WHERE ' + GetFdidSQL('INV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND SCHEDMENU = ' + AddExpr('Y') + ' ORDER BY UNITNUM')
  else
    open_Query('INV', False, 'SELECT INVID, SCHEDMENU, SCHEDULE, UNITNUM, DESCR FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND SCHEDMENU = ' + AddExpr('Y') + ' ORDER BY UNITNUM');
  while not A('INV').eof do begin
    m         := TMenuItem.Create(self);
    m.caption := alltrim(tdbField('INV', 'UNITNUM') + '-' + tdbField('INV', 'DESCR'));
    m.Tag     := GetField('INV', 'INVID').AsInteger;
    m.OnClick := ChangeUnitNum;
    ChangeApparatus.Insert(0, m);
    A('INV').skip(1);
  end;
  CloseApollo('INV');

  m         := TMenuItem.Create(self);
  m.caption := '-';
  ChangeApparatus.Insert(0, m);

  m         := TMenuItem.Create(self);
  m.caption := 'Clear Unit Number';
  m.Tag     := 0;
  m.OnClick := ChangeUnitNum;
  ChangeApparatus.Insert(0, m);
end;

procedure TSchdForm.ChangeUnitNum(Sender: TObject);
var SchdHistID : Integer;
    SchdLocId  : string;
    UnitNum    : string;
    InvID      : string;
    Narr       : string;
begin
  InvID := IntToStr((Sender as TMenuItem).Tag);

  if InvID = '0' then
    UnitNum := ''
  else
    UnitNum := SqlLookUp(InvID, 'INVID', 'INV', 'UNITNUM');

  SchdHistID := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));

  if mFireID = '28017' then begin
    SchdLocId := SqlLookUp(InvID, 'INVID', 'INV', 'SCHDLOCID');
    if SchdLocId = '' then
      RunSQL('UPDATE SCHDHIST SET UNITNUM = ' + AddExpr(UnitNum) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID))
    else
      RunSQL('UPDATE SCHDHIST SET UNITNUM = ' + AddExpr(UnitNum) + ', SCHDLOCID = ' + AddExpr(SchdLocId) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  end else
    RunSQL('UPDATE SCHDHIST SET UNITNUM = ' + AddExpr(UnitNum) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  Narr := 'Changed Schedule Unit Number to ' + UnitNum;
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  RefreshRecord(SchdHistid);
end;

procedure TSchdForm.FillSchdLoc;
var m: TMenuItem;
begin
  if MultipFdidCondition then
    Open_query('SCHDLOC', False, 'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE DESC')
  else if mFireid = '09206' then begin
    if CheckSecVar('SCHDPRIVATEVIEW') then
      Open_query('SCHDLOC', False, 'SELECT * FROM SCHDLOC ORDER BY CODE')
    else
      Open_query('SCHDLOC', False,'SELECT * FROM SCHDLOC WHERE (PRIVATE = ''N'' OR PRIVATE = '''' OR PRIVATE IS NULL) ORDER BY CODE');
  end else
    Open_Query('SCHDLOC', False, 'SELECT * FROM SCHDLOC ORDER BY CODE DESC');
  while not A('SCHDLOC').eof do begin
    m         := TMenuItem.Create(self);
    m.caption := alltrim(tdbField('SCHDLOC', 'CODE') + '-' + tdbField('SCHDLOC', 'DESCR'));
    m.Tag     := GetField('SCHDLOC', 'SCHDLOCID').AsInteger;
    m.OnClick := ChangeSchdLoc;
    ChangeLocation.Insert(0, m);
    A('SCHDLOC').skip(1);
  end;
  CloseApollo('SCHDLOC');

  m := TMenuItem.Create(self);
  m.caption := '-';
  ChangeLocation.Insert(0, m);

  m         := TMenuItem.Create(self);
  m.caption := 'Clear Location';
  m.Tag     := 0;
  m.OnClick := ChangeSchdLoc;
  ChangeLocation.Insert(0, m);
end;

procedure TSchdForm.FillSchdRank;
var m: TMenuItem;
begin
  Open_Query('SCHDRANK', False, 'SELECT * FROM SCHDRANK ORDER BY CODE DESC');
  while not A('SCHDRANK').eof do begin
    m         := TMenuItem.Create(self);
    m.caption := alltrim(tdbField('SCHDRANK', 'CODE') + '-' + tdbField('SCHDRANK', 'DESCR'));
    m.Tag     := GetField('SCHDRANK', 'SCHDRANKID').AsInteger;
    m.OnClick := ChangeSchdRank;
    ChangeAssignment.Insert(0, m);
    A('SCHDRANK').skip(1);
  end;
  CloseApollo('SCHDRANK');

  m         := TMenuItem.Create(self);
  m.caption := '-';
  ChangeAssignment.Insert(0, m);

  m         := TMenuItem.Create(self);
  m.caption := 'Clear Assignment';
  m.Tag     := 0;
  m.OnClick := ChangeSchdRank;
  ChangeAssignment.Insert(0, m);
end;

procedure TSchdForm.FillSchdShiftName;
var m: TMenuItem;
begin
  Open_Query('SCHDSHIFTNAME', False,'SELECT * FROM SCHDSHIFTNAME ORDER BY CODE DESC');
  while not A('SCHDSHIFTNAME').eof do
  begin
    m         := TMenuItem.Create(self);
    m.caption := alltrim(tdbField('SCHDSHIFTNAME', 'CODE') + '-' + tdbField('SCHDSHIFTNAME', 'DESCR'));
    m.Tag     := GetField('SCHDSHIFTNAME', 'SCHDSHIFTNAMEID').AsInteger;
    m.OnClick := ChangeSchdShiftName;
    ChangeShift.Insert(0, m);
    A('SCHDSHIFTNAME').skip(1);
  end;
  CloseApollo('SCHDSHIFTNAME');
end;

procedure TSchdForm.FillNfirsAttTask;
var m: TMenuItem;
begin
  Open_Query('NFIRSATTTASK', False, 'SELECT * FROM NFIRSATTTASK ORDER BY CODE DESC');
  while not A('NFIRSATTTASK').eof do begin
    m         := TMenuItem.Create(self);
    m.Caption := alltrim(tdbField('NFIRSATTTASK', 'CODE') + '-' + tdbField('NFIRSATTTASK', 'DESCR'));
    m.Tag     := GetField('NFIRSATTTASK', 'NFIRSATTTASKID').AsInteger;
    m.OnClick := ChangeNfirsAttTask;
    ChangeIncidentTask.Insert(0, m);
    A('NFIRSATTTASK').skip(1);
  end;
  CloseApollo('NFIRSATTTASK');

  m         := TMenuItem.Create(self);
  m.caption := '-';
  ChangeIncidentTask.Insert(0, m);

  m         := TMenuItem.Create(self);
  m.caption := 'Clear Incident Task';
  m.Tag     := 0;
  m.OnClick := ChangeNfirsAttTask;
  ChangeIncidentTask.Insert(0, m);
end;

procedure TSchdForm.FillSchdType;
var m    : TMenuItem;
    mSql : string;
begin
  if (SecFdid <> '') and MultiFdid then
    mSql := GetSchdTypeSqlForMultiFdid
  else
    mSql := 'SELECT * FROM SCHDTYPE ORDER BY CODE DESC';

  Open_Query('SCHDTYPE', False, mSql);
  while not A('SCHDTYPE').eof do begin
    m         := TMenuItem.Create(self);
    m.caption := alltrim(tdbField('SCHDTYPE', 'CODE') + '-' + tdbField('SCHDTYPE', 'DESCR'));
    m.Tag     := GetField('SCHDTYPE', 'SCHDTYPEID').AsInteger;
    If mfireid = '12002' then begin
      If m.Tag <> 1 then
        font.color := clred
      else
        font.color := clblack;
    end;

    m.OnClick := ChangeSchdType;
    ChangeType.Insert(0, m);
    A('SCHDTYPE').skip(1);
  end;
  CloseApollo('SCHDTYPE');
end;

procedure TSchdForm.ChangeNfirsAttTask(Sender: TObject);
var SchdHistID     : Integer;
    NfirsAttTaskID : string;
    SQLVar         : string;
    Narr           : string;
begin
  SchdHistID     := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));
  NfirsAttTaskID := IntToStr((Sender as TMenuItem).Tag);
  NfirsAttTaskID := IIf(NfirsAttTaskID = '0', 'NULL', NfirsAttTaskID);
  SQLVar         := 'UPDATE SCHDHIST SET NFIRSATTTASKID = ' + NfirsAttTaskID + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID);
  RunSQL(SQLVar);
  Unapprove(SchdHistId);
  Narr           := 'Changed Incident Task to ' + SQLLookUp(NfirsAttTaskID,'NFIRSATTTASKID', 'NFIRSATTTASK', 'DESCR');
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  RefreshRecord(SchdHistid);
end;

procedure TSchdForm.ChangeSchdShiftName(Sender: TObject);
var
  SchdHistID: Integer;
  Narr: string;
  SchdShiftNameID: string;
begin
  SchdHistID      := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));
  SchdShiftNameID := IntToStr((Sender as TMenuItem).Tag);
  RunSQL('UPDATE SCHDHIST SET SCHDSHIFTNAMEID = ' + pkValue(SchdShiftNameID) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  Unapprove(SchdHistId);
  Narr            := 'Changed Schedule Shift to ' + SQLLookUp(SchdShiftNameID,'SCHDSHIFTNAMEID', 'SCHDSHIFTNAME', 'DESCR');
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  RefreshRecord(SchdHistId);
end;

procedure TSchdForm.ChangeSchdType(Sender: TObject);
var
  SchdHistID: Integer;
  SchdTypeID: string;
  Narr: string;
begin
  SchdHistID := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));
  SchdTypeID := IntToStr((Sender as TMenuItem).Tag);
  RunSQL('UPDATE SCHDHIST SET SCHDTYPEID = ' + IntToStr((Sender as TMenuItem).Tag) + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  Unapprove(SchdHistId);
  Narr := 'Changed Schedule Type to ' + SQLLookUp(SchdTypeID, 'SCHDTYPEID', 'SCHDTYPE', 'DESCR');
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  RefreshRecord(SchdHistid);
end;

procedure TSchdForm.ChangeSchdLoc(Sender: TObject);
var SchdHistID: Integer;
    SchdLocID: string;
    SQLVar: string;
    Narr: string;
begin
  SchdHistID := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));
  SchdLocID := IntToStr((Sender as TMenuItem).Tag);
  SchdLocID := IIf(SchdLocID = '0', 'NULL', SchdLocID);
  SQLVar := 'UPDATE SCHDHIST SET SCHDLOCID = ' + SchdLocID + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID);
  RunSQL(SQLVar);
  Narr := 'Changed Schedule Location to ' + SQLLookUp(SchdLocID, 'SCHDLOCID', 'SCHDLOC', 'DESCR');
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  UnApprove(SchdHistid);
  RefreshRecord(SchdHistid);
end;

procedure TSchdForm.Unapprove(iSchdHistId: Integer);
begin
  RunSql('UPDATE SCHDHIST SET SCHDSTATUSID=NULL,DATETIMEAPPROVED=NULL,APPPERSID=NULL WHERE SCHDHISTID = ' + inttostr(iSchdHistid));
end;

procedure TSchdForm.ChangeSchdRank(Sender: TObject);
var SchdHistID : Integer;
    SchdRankID : string;
    Narr       : string;
begin
  SchdHistID := StrToInt(SchdHistBrowse.GetValue('SCHDHISTID'));
  SchdRankID := IntToStr((Sender as TMenuItem).Tag);
  SchdRankID := IIf(SchdRankID = '0', 'NULL', SchdRankID);
  RunSQL('UPDATE SCHDHIST SET SCHDRANKID = ' + SchdRankID + ' WHERE SCHDHISTID = ' + IntToStr(SchdHistID));
  Narr := 'Changed Rank to ' + SQLLookUp(SchdRankID, 'SCHDRANKID', 'SCHDRANK','DESCR');
  InsertSecRecAud('SCHDHIST', 'EDIT', IntToStr(SchdHistID), Narr);
  Unapprove(SchdHistId);
  RefreshRecord(SchdHistid);
end;

procedure TSchdForm.SetPaidSecurity(RowNum: Integer);
var bEditShift: Boolean;
begin
  bEditShift                 := CommonCanEditShift(SchdHistBrowse.GetValue('LOCKED', RowNum));
  EditButton.Enabled         := (RowNum > 0);
  EditButton.Caption         := IIf(bEditShift, '&Edit', 'V&iew');
  LockButton.Enabled         := CheckSecVar('SCHDLOCK') and (RowNum > 0);
  LockAllButton.Enabled      := LockButton.Enabled;
  UnLockAllButton.Enabled    := LockButton.Enabled;
  UnLockButton.Enabled       := LockButton.Enabled;
  DeleteButton.Enabled       := CheckSecVar('SCHDDEL') and bEditShift and (RowNum > 0);
  ChangeAssignment.Enabled   := bEditShift and (RowNum > 0);
  ChangeLocation.Enabled     := bEditShift and (RowNum > 0);
  ChangeApparatus.Enabled    := bEditShift and (RowNum > 0);
  ViewPersonnel1.Enabled     := CheckSecVar('PERSVIEW');
  ChangeType.Enabled         := bEditShift and (RowNum > 0);
  ChangeShift.Enabled        := bEditShift and (RowNum > 0);
  ChangeIncidentTask.Enabled := bEditShift and (RowNum > 0);
  SplitButton.Enabled        := bEditShift and (RowNum > 0);
  DuplicateChoice.Enabled    := bEditShift and (RowNum > 0);
  SplitShiftChoice.Enabled   := bEditShift and (RowNum > 0);
  NewButton.Enabled          := CheckSecVar('SCHDADD');

  if FIREID = '81000' then begin
    SplitButton.Enabled := False;
    LockButton.Enabled := False;
    LockAllButton.Enabled := False;
    UnLockButton.Enabled := False;
    UnLockAllButton.Enabled := False;
    PrintButton.Enabled := False;
  end;
end;

procedure TSchdForm.RefreshCalendarClick(Sender: TObject);
begin
  RefreshList(False);
end;

procedure TSchdForm.ConfigureSchdHistBrowse;
var NW: Integer;
    UW: Integer;
    GridWidth: Integer;
    GridAdder: Integer;
begin
  SchdHistBrowse.Clear;
  SchdHistBrowse.ColCount := 0;
  SchdHistBrowse.ClearColumns;

  if AnyStrToInt(SysViewCustID) > 0 then
  begin
    Open_Query('SYSVIEWFIELDCUST', false,
      'SELECT FIELDALIAS, FIELDLABEL, FIELDWIDTH FROM SYSVIEWFIELDCUST WHERE SYSVIEWCUSTID = ' +
      pkValue(SysViewCustID) + ' ORDER BY SORTORD');
    while not A('SYSVIEWFIELDCUST').Eof do
    begin
      SchdHistBrowse.SetColumn(tdbfield('SYSVIEWFIELDCUST', 'FIELDALIAS'),
        tdbfield('SYSVIEWFIELDCUST', 'FIELDLABEL'), GetField('SYSVIEWFIELDCUST',
        'FIELDWIDTH').AsInteger);
      A('SYSVIEWFIELDCUST').Skip(1);
    end;
    CloseApollo('SYSVIEWFIELDCUST');
    if AlpineLogon then begin
      if SchdHistBrowse.ColumnNames.IndexOf('LOCKED') < 0 then
        ShowMessage('Note: the custom scheduling browse does not contain a "LOCKED" colunn.  Some security access will not work!');
    end;

  end else begin
    UW := 80;
    if mFireid = '29001' then
      NW := 135
    else
      NW := 110;

    GridWidth := 045 + NW + 1 + 115 + 115 + 50 + 105 + 60 + 60 + UW + 100 + 75 + 200;
    GridAdder := Round((Screen.Width - GridWidth) / 8);

    SchdHistBrowse.SetColumn('SCHDHISTID', ' ', 000);
    SchdHistBrowse.SetColumn('PERSCODE', 'ID#', 045);
    SchdHistBrowse.SetColumn('NAME', 'Last Name, First', NW + GridAdder);
    SchdHistBrowse.SetColumn('SPACE0', '.', 001);
    SchdHistBrowse.SetColumn('START', 'Shift Start', 115);
    SchdHistBrowse.SetColumn('END', 'Shift End', 115);
    SchdHistBrowse.SetColumn('LENGTH', 'Length', 050);
    SchdHistBrowse.SetColumn('SCHDRANKCODE', 'Rank', 000);
    SchdHistBrowse.SetColumn('SCHDRANKDESCR', 'Rank', 105 + GridAdder);
    SchdHistBrowse.SetColumn('SCHDTYPECODE', 'Type', 000);
    SchdHistBrowse.SetColumn('SCHDTYPEDESCR', 'Type', 060 + GridAdder + IIfI(mFireID = '26600', 70, 0));
    SchdHistBrowse.SetColumn('SCHDSHIFTNAMECODE', 'Shift', 000);
    SchdHistBrowse.SetColumn('SCHDSHIFTNAMEDESCR', 'Shift', 060 + GridAdder);
    SchdHistBrowse.SetColumn('UNITNUM', 'Unit', 000);
    SchdHistBrowse.SetColumn('NFIRSATTTASKCODE', 'Asgn', 000);
    SchdHistBrowse.SetColumn('UNITNUMNFIRSATTTASKDESCR', 'Unit-Asgn', UW + GridAdder);
    SchdHistBrowse.SetColumn('SCHDLOCCODE', 'Location', 000);
    SchdHistBrowse.SetColumn('SCHDLOCDESCR', 'Location', 100 + GridAdder);
    SchdHistBrowse.SetColumn('LOCKED', 'Locked', 000);
    SchdHistBrowse.SetColumn('SCHDSTATUSDESCR', 'Status', 075 + GridAdder);
    SchdHistBrowse.SetColumn('DESCR', 'Notes', 600 + GridAdder);
    SchdHistBrowse.SetColumn('SPACE1', ' ', 999);
  end;
end;

procedure TSchdForm.CrewSenseButtonClick(Sender: TObject);
begin
  CrewSenseForm := TCrewSenseForm.Create(application);
  CrewSenseForm.ShowModal;
  CrewSenseForm.Free;  
  RefreshList(False);
end;

procedure TSchdForm.RefreshRecord(iSchdhistid: Integer);
var iRow: Integer;
begin
  iRow := SchdHistBrowse.GetRowIndex(inttostr(ischdhistid));
  if iRow = -1 then
    exit;
  try
    SchdHistBrowse.Row := iRow;
    Open_Query('REFRESHSCHDHIST', False,
      'SELECT * FROM VWSCHDHIST WHERE SCHDHISTID = ' + inttostr(iSchdHistid));
    SetGridFields('REFRESHSCHDHIST', iRow);
  finally
    CloseApollo('REFRESHSCHDHIST');
  end;
end;

procedure TSchdForm.SetGridFields(mAlias: string; iRow: Integer);
  procedure LocalSetValue(mColumnName, mcaption: string);
  begin
    if iRow >= 0 then
      SchdHistBrowse.SetValue(mColumnName, iRow, mcaption)
    else
      SchdHistBrowse.SetValue(mColumnName, mcaption);
  end;

begin
  LocalSetValue('PERSCODE', tdbfield(mAlias, 'PERSCODE'));
  LocalSetValue('NAME', IIf(tdbfield(mAlias, 'LNAME') = '', '- Available - ',tdbfield(mAlias, 'LNAME') + ', ' + tdbfield(mAlias, 'FNAME')));
  LocalSetValue('SPACE0', '.');
  LocalSetValue('START', AlpineFormatDateTime('MM/DD/YYYY HH:MM', GetField(mAlias,'DATETIMESTART').AsDateTime));
  LocalSetValue('END', AlpineFormatDateTime('MM/DD/YYYY HH:MM', GetField(mAlias, 'DATETIMEEND').AsDateTime));
  LocalSetValue('LENGTH', FormatFloat('##0.00', GetField(mAlias,'SHIFTLENGTH').AsFloat));
  LocalSetValue('SCHDRANKCODE', tdbfield(mAlias, 'SCHDRANKCODE'));
  LocalSetValue('SCHDRANKDESCR', tdbfield(mAlias, 'SCHDRANKDESCR'));
  LocalSetValue('SCHDTYPECODE', tdbfield(mAlias, 'SCHDTYPECODE'));
  LocalSetValue('SCHDTYPEDESCR', tdbfield(mAlias, 'SCHDTYPEDESCR') + ' ' + tdbfield(mAlias, 'SCHDSUBTYPEDESCR'));
  LocalSetValue('SCHDSHIFTNAMECODE', tdbfield(mAlias, 'SCHDSHIFTNAMECODE'));
  LocalSetValue('SCHDSHIFTNAMEDESCR', tdbfield(mAlias, 'SCHDSHIFTNAMEDESCR'));
  LocalSetValue('UNITNUM', tdbfield(mAlias, 'UNITNUM'));
  LocalSetValue('NFIRSATTTASKCODE', tdbfield(mAlias, 'NFIRSATTTASKCODE'));
  LocalSetValue('UNITNUMNFIRSATTTASKDESCR', tdbfield(mAlias, 'UNITNUM') + ' ' + tdbfield(mAlias, 'NFIRSATTTASKDESCR'));
  LocalSetValue('SCHDLOCCODE', tdbfield(mAlias, 'SCHDLOCCODE'));
  LocalSetValue('SCHDLOCDESCR', tdbfield(mAlias, 'SCHDLOCDESCR'));
  LocalSetValue('LOCKED', GetField(mAlias, 'LOCKED').AsString);
  LocalSetValue('SCHDSTATUSDESCR', tdbfield(mAlias, 'SCHDSTATUSDESCR'));
  LocalSetValue('DESCR', tdbfield(mAlias, 'DESCR'));
end;

procedure TSchdForm.RefreshList(bInitialize: Boolean);
var SQLVar          : string;
    mDateTimeString : string;
    mDateTime       : TDateTime;
    mDayStart       : TDateTime;
    mNightStart     : TDateTime;
    DateTime1       : TDateTime;
    DateTime2       : TDateTime;
    DayDateTime     : string;
    rOneMinute      : Real;
    mStartHour      : string;
    bAddRecord      : Boolean;

  function CheckTab: string;
  var iTab: Integer;
  begin
    CheckTab := '';
    iTab := StationTabControl.TabIndex;
    //If (iTab > 0) then begin
    if TTabType(TabList[iTab]).TabType = 'LOC' then
      CheckTab := ' AND VWSCHDHIST.SCHDLOCID = ' + TTabType(TabList[iTab]).Value
    else if TTabType(TabList[iTab]).TabType = 'UNIT' then
      CheckTab := ' AND VWSCHDHIST.UNITNUM = ' +
        AddExpr(TTabType(TabList[iTab]).Value)
    else // ALL
      CheckTab := '';
    //end;
  end;

  function CheckExclude: string;
  begin
    if MiscButton.Checked then
      CheckExclude := ''
    else
      CheckExclude := ' AND VWSCHDHIST.ROSTER = ' + AddExpr('Y');
  end;

  function BuildIt(mStart, mEnd: TDateTime): string;
  begin
    If (mFireID = '20004') then
      result := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMESTART < ' + FormatDateTimeForSql(mEnd) + ') OR (VWSCHDHIST.DATETIMEEND >  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMEEND  <' + FormatDateTimeForSql(mEnd) + ') OR ( ' + '(VWSCHDHIST.DATETIMESTART <= ' + FormatDateTimeForSql(mStart) + ') AND (VWSCHDHIST.DATETIMEEND > ' + FormatDateTimeForSql(mEnd) + '))'

    else if (mFireID = '29001') or (mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123') or (mFireID = '30019') or (mFireID = '21101') then begin
      DescriptionLabel.caption := DescriptionLabel.caption + 'Personnel working between ' + FormatDateTime('mm/dd/yyyy hh:nn', mStart) + ' and ' + FormatDateTime('mm/dd/yyyy hh:nn', mEnd);
      result := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMESTART < ' + FormatDateTimeForSql(mEnd) + ') OR (VWSCHDHIST.DATETIMEEND >  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMEEND  =' + FormatDateTimeForSql(mEnd) + ') OR ((VWSCHDHIST.DATETIMESTART <= ' + FormatDateTimeForSql(mStart) + ') AND (VWSCHDHIST.DATETIMEEND = ' + FormatDateTimeForSql(mEnd) + '))';

    end else begin
      if (mFireID = '12002') then begin
        noequalwithend := True;
        mEnd := mEnd - 1 / 24;
      end;
      DescriptionLabel.caption := DescriptionLabel.caption + 'Personnel working between ' + FormatDateTime('mm/dd/yyyy hh:nn', mStart) + ' and ' + FormatDateTime('mm/dd/yyyy hh:nn', mEnd);

      If noequalwithend then begin
        If (mFireid = '70814') then
          mEnd := mEnd - 1 / 24;
        result := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMESTART < ' + FormatDateTimeForSql(mEnd) + ') OR (' + 'VWSCHDHIST.DATETIMEEND >  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMEEND  <' + FormatDateTimeForSql(mEnd) + ') OR ( ' + '(VWSCHDHIST.DATETIMESTART <= ' + FormatDateTimeForSql(mStart) + ') AND (VWSCHDHIST.DATETIMEEND > ' + FormatDateTimeForSql(mEnd) + '))'
      end else
        result := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMESTART <= ' + FormatDateTimeForSql(mEnd) + ') OR (' + 'VWSCHDHIST.DATETIMEEND >=  ' + FormatDateTimeForSql(mStart) + ' AND VWSCHDHIST.DATETIMEEND  <=' + FormatDateTimeForSql(mEnd) + ') OR ( ' + '(VWSCHDHIST.DATETIMESTART <= ' + FormatDateTimeForSql(mStart) + ') AND (VWSCHDHIST.DATETIMEEND >= ' + FormatDateTimeForSql(mEnd) + '))';
    end;
  end;

  function CheckBrowse(Browse: TAdvStringGrid; FieldName: string): string;
  var RowVar: Integer;
      CheckValue: Boolean;
      WhereString: string;
  begin
    WhereString := '';
    for RowVar := 0 to Browse.RowCount - 1 do
    begin
      Browse.GetCheckBoxState(1, RowVar, CheckValue);
      if CheckValue then
        WhereString := WhereString + ' OR VWSCHDHIST.' + FieldName + 'ID = ' + AddExpr(Browse.Cells[0, RowVar]);
    end;
    if not (WhereString = '') then
      WhereString := ' AND (' + alltrim(substr(WhereString, 5, Length(WhereString))) + ')';
    CheckBrowse := WhereString;
  end;

begin
  DescriptionLabel.caption := '';
  RefreshCalendar.Enabled := False;
  SchdHistBrowse.RowCount := 0;
  if bInitialize then
    ConfigureSchdHistBrowse;

  rOneMinute := 1 / 24 / 60;

  If ((mfireid = '25127') or (mfireid = '25119') or (mfireid = '25115') or (mfireid = '25135') or (mfireid = '23123')) and (SecFdid <> '') then begin
    if SecFdid = '23123' then
      mStartHour := '7.5'
    else if SecFdid = '25135' then
      mStartHour := '7'
    else
      mStartHour := '8';
    mDateTime := Calendar.Date + anystrtofloat(mStartHour) / 24;
    mDateTimeString := BuildIt(mDateTime, mDateTime + 0.9999);

  end else if (mfireid = '08007') then begin
    mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('00:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('23:59')) + ')';

  end else if mSchdShiftType = '24HR' then begin
    mDateTime       := Calendar.Date + StrToTime(SHIFT24START.Value);
    mDateTimeString := BuildIt(mDateTime, mDateTime + 1);
  end else if mSchdShiftType = 'MID' then begin
    if ShowAllDay.Checked then
      mDateTime := Calendar.Date + 0.5
    else
      mDateTime := Trunc(Calendar.Date) + StrToTime(midpoint.Value);

    if ((mFireID = '67060') or (mFireID = '28032')) and ShowAllDay.Checked then
      mDateTimeString := BuildIt(Trunc(Calendar.Date), Trunc(Calendar.Date + 1))
    else if (mFireID = '20004') then
      mDateTimeString := BuildIt(mDateTime - 0.49999, mDateTime + 0.49999)
    else
      mDateTimeString := BuildIt(mDateTime, MDateTime);

  end else if mSchdShiftType = 'AMPM' then begin
    if (mFireid = '28017') or (mFireid = '09259') or (mFireid = '28001') then begin
      If DayShiftCheckBox.Checked then begin
        DescriptionLabel.Caption := 'Personnel Working during Day';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('07:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('17:00')) + ')';
      end else if NightShiftCheckBox.Checked then begin
        DescriptionLabel.Caption := 'Personnel Working Night Shift';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('17:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('17:00') + 14 / 24) + ')';
      end else begin
        DescriptionLabel.Caption := 'Personnel Starting some time today';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('07:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('7:00') + 1) + ')';
      end;
    end else if (mFireid = '23239') then begin
      if DayShiftCheckBox.Checked then begin
        DescriptionLabel.Caption := 'Personnel Working during Day';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('07:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('18:00')) + ')';
      end else if NightShiftCheckBox.Checked then begin
        DescriptionLabel.Caption := 'Personnel Working Night Shift';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('18:00')) + ' AND VWSCHDHIST.DATETIMEEND <=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('18:00') + 14 / 24) + ')';
      end else begin
        DescriptionLabel.Caption := 'Personnel Starting some time today';
        mDateTimeString := '(VWSCHDHIST.DATETIMESTART >=  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('07:00')) + ' AND VWSCHDHIST.DATETIMESTART <  ' + FormatDateTimeForSql(Calendar.Date + StrToTime('8:00') + 1) + ')';
      end;
    end else begin
      mDayStart   := Calendar.Date + StrToTime(amstartfield.Value);
      mNightStart := Calendar.Date + StrToTime(pmstartfield.Value);
      if dayshiftcheckbox.Checked then
        mDateTimeString := BuildIt(mDayStart, mNightStart)
      else if NightShiftCheckBox.Checked then
        mDateTimeString := BuildIt(mNightStart, mNightStart + 1 - (mNightStart - mDayStart))
      else
        mDateTimeString := BuildIt(mDayStart, mDayStart + 1);
    end;
  end else begin
    mDateTimeString := BuildIt(Calendar.Date + StrToTime(DayTimeField.Value),Calendar.Date + StrToTime(NightTimeField.Value));
  end;

  SQLVar := 'SELECT * FROM VWSCHDHIST WHERE (' + mDateTimeString + ') ' + CheckExclude + CheckTab + CheckBrowse(SchdShiftNameBrowse, 'SCHDSHIFTNAME') + CheckBrowse(SchdTypeBrowse, 'SCHDTYPE') + CheckBrowse(SchdRankBrowse, 'SCHDRANK');

  if (mFireID = '60032') then begin
    SQLVar := SQLVar + ' AND (SCHDTYPECODE <> ' + AddExpr('VACB') + ' AND SCHDTYPECODE <> ' + AddExpr('SICKB') + ' AND SCHDTYPECODE <> ' + AddExpr('PERSDAYB') + ')';
  end;

  if (mFireID = '30019') then
    SQLVar := SQLVar + ' ORDER BY SCHDLOCID, LNAME';

  if IsMark then
    appendtolog(SQLVar);

  Open_Query('SCHDHIST', false, SQLVar);
  while not A('SCHDHIST').Eof do begin
    bAddRecord := CheckShowEmpty;
    if mFireid = '30019' then
      bAddRecord := bAddRecord and ((tdbfield('SCHDHIST', 'SCHDLOCCODE') <> 'HQ-VOL') or CheckSecVar('SCHDHQVOL'));

    if bAddRecord then begin
      SchdHistBrowse.SetValue('SCHDHISTID', GetField('SCHDHIST', 'SCHDHISTID').AsString);
      SetGridFields('SCHDHIST', -1);
    end;
    A('SCHDHIST').Skip(1);
  end;
  CloseApollo('SCHDHIST');

  SetPaidSecurity(SchdHistBrowse.Row);

  if bInitialize then begin
    if (at('NAME', GlobalPersSort) > 0) then
      SchdHistBrowse.SortSettings.Column := 2
    else
      SchdHistBrowse.SortSettings.Column := 1;
    if not (mFireID = '30019') then
      SchdHistBrowse.QSort;
  end else
    SchdHistBrowse.QSort;

  LoadSchdReqBrowse;
  DayDateTime := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' ' +
    DayTimeField.Text);
  SQLVar := 'SELECT SCHDSHIFTNAME.DESCR SCHDSHIFTNAMEDESCR FROM SCHDSHIFTTEMP LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
            'LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFTTEMP.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' + 'WHERE DATETIMESTART <= ' + DayDateTime + ' AND DATETIMEEND > ' + DayDateTime + ' AND SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y') +
            ' ORDER BY SCHDSHIFT.SORTORD';

  Open_Query('SCHDSHIFTTEMP', false, SQLVar);
  SchdShiftNameDescrField.Caption := 'Current Rotation: ' + tdbfield('SCHDSHIFTTEMP', 'SCHDSHIFTNAMEDESCR');
  CloseApollo('SCHDSHIFTTEMP');
end;

function TSchdForm.CheckShowEmpty: Boolean;
begin
  if ShowEmptyCheck.Checked then
    CheckShowEmpty := true
  else
    CheckShowEmpty := not (GetField('SCHDHIST', 'PERSID').AsString = '');
end;

procedure TSchdForm.RequeryButtonClick(Sender: TObject);
begin
  RefreshList(False);
end;

procedure TSchdForm.ButtonPanelResize(Sender: TObject);
begin
  ScaleButtonsOnPanel('H', ButtonPanel);
end;

procedure TSchdForm.CalendaraChange(Sender: TObject);
begin
  RefreshList(False);
end;

procedure TSchdForm.LockButtonClick(Sender: TObject);
begin
  ApproveSchdHist(SchdHistBrowse.Row);
end;

procedure TSchdForm.MiscButtonClick(Sender: TObject);
begin
  RefreshList;
end;

procedure TSchdForm.LockAllButtonClick(Sender: TObject);
var RowNum: Integer;
begin
  for RowNum := 1 to SchdhistBrowse.RowCount do begin
    ApproveSchdHist(RowNum);
  end;
end;

class procedure TSchdForm.CommonUnLockSchdHist(SchdHistID: string);
begin
  try
    Open_Query('SCHDHIST', true, 'SELECT * FROM SCHDHIST WHERE SCHDHISTID = ' + pkValue(SchdHistID));
    if A('SCHDHIST').RecordsExist then begin
      GetTable('SCHDHIST').Edit;
      GetField('SCHDHIST', 'SCHDSTATUSID').AsString := SqlLookup(mfireid, 'FDID','SCHDSET', 'SCHDSTATUSNEWID');
      Getfield('SCHDHIST', 'DATETIMEAPPROVED').AsDateTime := Now;
      GetField('SCHDHIST', 'APPPERSID').AsString := GlobalPersID;
      GetTable('SCHDHIST').Post;
    end;
  finally
    CloseApollo('SCHDHIST');
  end;
end;

class procedure TSchdForm.CommonApproveAndLockSchdHist(SchdHistID: string);
begin
  try
    Open_Query('SCHDHIST', true, 'SELECT * FROM SCHDHIST WHERE SCHDHISTID = ' + pkValue(SchdHistID));

    if A('SCHDHIST').RecordsExist then begin
      GetTable('SCHDHIST').Edit;
      GetField('SCHDHIST', 'SCHDSTATUSID').AsString := SqlLookup(mfireid, 'FDID', 'SCHDSET', 'SCHDSTATUSAPPID');
      Getfield('SCHDHIST', 'DATETIMEAPPROVED').AsDateTime := Now;
      GetField('SCHDHIST', 'APPPERSID').AsString := GlobalPersID;
      GetTable('SCHDHIST').Post;
    end;
  finally
    CloseApollo('SCHDHIST');
  end;
  RunSQL('UPDATE VWSCHDHIST SET LOCKED =' + AddExpr('Y') + ' WHERE SCHDHISTID = ' + PKValue(SchdHistID));
  InsertSecRecAud('SCHDHIST', 'APPROVE', schdhistid, '');
end;

procedure TSchdForm.ApproveSchdHist(RowVar: Integer);
var SchdHistID: string;
begin
  SchdHistID := SchdHistBrowse.GetValue('SCHDHISTID', RowVar);
  CommonApproveAndLockSchdHist(SchdHistID);
  SchdHistBrowse.SetValue('SCHDSTATUSDESCR', RowVar, SqlLookUp(SchdStatusAppID, 'SCHDSTATUSID', 'SCHDSTATUS', 'DESCR'));
end;

procedure TSchdForm.UnApproveSchdHist(RowVar: Integer);
var SchdHistID: string;
begin
  SchdHistID := SchdHistBrowse.GetValue('SCHDHISTID', RowVar);
  CommonUnLockSchdHist(SchdHistID);
  SchdHistBrowse.SetValue('SCHDSTATUSDESCR', RowVar, SqlLookUp(SchdStatusNewID, 'SCHDSTATUSID', 'SCHDSTATUS', 'DESCR'));
end;

procedure TSchdForm.EditButtonClick(Sender: TObject);
var PKVar         : string;
    RowNum        : Integer;
    mOldUnitNum   : string;
    mOldSchdLocid : string;
    mNewUnitNum   : string;
    mNewSchdLocid : string;

  procedure GetLocationAndUnitNum(var mUnitNum, mSchdLocid: string);
  var schdhist: TApolloData;
  begin
    try
      schdhist := open_query('SELECT UNITNUM,SCHDLOCID FROM SCHDHIST WHERE SCHDHISTID = ' + pkvalue(pkVar));
      mUnitNum := GetField(schdhist, 'UNITNUM').AsString;
      mSchdLocid := GetField(schdhist, 'SCHDLOCID').AsString;
    finally
      schdhist.free;
    end;
  end;

begin
  PKVar := SchdHistBrowse.GetValue('SCHDHISTID');
  if StationTabControl.TabIndex <> 0 then
    GetLocationAndUnitNum(mOldUnitNum, mOldSchdLocid);

  RowNum       := SchdHistBrowse.Row;
  SchdHistForm := TSchdHistForm.Create(Application, 'SCHDHIST', PKVar, TSchdHistForm.NewRecord);
  SchdHistForm.ShowModal;
  SchdHistForm.Free;
  RefreshRecord(strtoint(pkVar));
  if StationTabControl.TabIndex <> 0 then begin
    GetLocationAndUnitNum(mNewUnitNum, mNewSchdLocid);
    if (mOldUnitNum <> mNewUnitNum) or (mOldSchdLocid <> mNewSchdLocid) then
      RefreshList(False);
  end;

end;

procedure TSchdForm.StationGridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    EditButtonClick(Self);
end;

procedure TSchdForm.DayTimeFieldChange(Sender: TObject);
var FieldValue: string;
begin
  FieldValue := (sender as TAlpineEdit).Text;
  RefreshCalendar.Enabled := CheckValidTime(FieldValue, False) and
    (length(FieldValue) = 5);
end;

procedure TSchdForm.DayTimeFieldClick(Sender: TObject);
var FieldValue: string;
begin
  FieldValue := (sender as TAlpineEdit).Text;
  if CheckValidTime(FieldValue, False) and (length(FieldValue) = 5) then
    RefreshList;
end;

procedure TSchdForm.DeleteButtonClick(Sender: TObject);
var SchdHistID    : string;
    schdhistcheck : TApolloData;
begin
  if BooleanMessageDlg('Delete Record?') then begin
    SchdHistID := SchdHistBrowse.GetValue('SCHDHISTID');

    if RecordDelete then
      RecordDeleteSecRecAud('SCHDHIST', 'SCHDHISTID', SchdHistID);

    RunSql('DELETE FROM SCHDHIST WHERE SCHDHISTID = ' + pkValue(SchdHistID));
    RefreshList;
  end;
end;

procedure TSchdForm.DuplicateChoiceClick(Sender: TObject);
var SchdHistID: string;
begin
  Open_Query('SCHDHIST', False, 'SELECT * FROM SCHDHIST WHERE SCHDHISTID = ' + SchdHistBrowse.Cells[0, SchdHistBrowse.Row]);
  TableInsertReturnPK('SCHDHIST', ['DATETIMESTART', 'DATETIMEEND', 'UNITNUM','SHIFTLENGTH', 'SCHDTYPEID', 'SCHDSHIFTNAMEID', 'SCHDSHIFTTEMPID'],
                                  [GetField('SCHDHIST', 'DATETIMESTART').AsDateTime, GetField('SCHDHIST','DATETIMEEND').AsDateTime, dbfield('SCHDHIST', 'UNITNUM'),GetField('SCHDHIST', 'SHIFTLENGTH').AsString, GetField('SCHDHIST','SCHDTYPEID').AsInteger, GetField('SCHDHIST', 'SCHDSHIFTNAMEID').AsInteger,GetField('SCHDHIST', 'SCHDSHIFTTEMPID').AsInteger],SchdHistID);
  CloseApollo('SCHDHIST');
  SchdHistForm := TSchdHistForm.Create(Application, 'SCHDHIST', SchdHistID, TSchdHistForm.NewRecord);
  SchdHistForm.ShowModal;
  SchdHistForm.Free;
  RefreshList;
end;

procedure TSchdForm.SchdHistBrowseDblClick(Sender: TObject);
begin
  if EditButton.Enabled then
    EditButtonClick(self);
end;

procedure TSchdForm.SchdHistBrowseGetCellColor(Sender: TObject; ARow, ACol: Integer; AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  try
    if (ARow > 0) and (SchdHistBrowse.Cells[ACol, 0] = 'Type') then
    begin
      if A('SCHDTYPELU').ExactQueryLocate(['DESCR'], [SchdHistBrowse.Cells[ACol,
        ARow]]) then
      begin
        if not (tdbfield('SCHDTYPELU', 'FONTCOLOR') = '') then
          AFont.Color := StringToColor(tdbfield('SCHDTYPELU', 'FONTCOLOR'));
      end;
    end;
  except
  end;
end;

procedure TSchdForm.SchdHistBrowseClick(Sender: TObject);
begin
  SetPaidSecurity(SchdHistBrowse.Row);
end;

procedure TSchdForm.SchdHistBrowseMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var mPoint: TPoint;
  function GetRow: integer;
  var APopUpPoint: TPoint;
      TheRow, TheCol: integer;
  begin
    APopupPoint.x := x;
    APopupPoint.y := y;
    SchdHistBrowse.MouseToCell(APopUpPoint.x, APopUpPoint.y, TheCol, TheRow);
    result := TheRow;
  end;
begin
  if Button = mbRight then begin
    if (GetRow > 0) and (GetRow <= SchdHistBrowse.RowCount - 1) then begin
      SetPaidSecurity(SchdHistBrowse.Row);
      SchdHistBrowse.Row := GetRow;
      mPoint.x := x;
      mPoint.y := y;
      mPoint := SchdHistBrowse.ClientToScreen(mPoint);
      SchdMenu.popup(mPoint.x, mPoint.y);
    end;
  end else
    SetPaidSecurity(SchdHistBrowse.Row);
end;

procedure TSchdForm.SchdHistBrowseRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
begin
  SetPaidSecurity(NewRow);
end;

procedure TSchdForm.SchdHistBrowseKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  SetPaidSecurity(SchdHistBrowse.Row);
end;

procedure TSchdForm.SchdHistBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = VK_RETURN) and EditButton.Enabled then
    EditButtonClick(self)
  else if (key = VK_DELETE) and DeleteButton.Enabled then
    DeleteButtonClick(self)
  else if (key = VK_INSERT) and NewButton.Enabled then
    NewButtonClick(self);
end;

procedure TSchdForm.StationTabControlChange(Sender: TObject);
begin
  RefreshList;
end;

procedure TSchdForm.SearchButtonClick(Sender: TObject);
begin
  SchdHistBrowse.SearchFooter.Visible := not
    SchdHistBrowse.SearchFooter.Visible;
end;

procedure TSchdForm.LoadBrowse(Browse: TAdvStringGrid; TableName: string);
var RowNum: Integer;
begin
  Browse.clear;
  Browse.ColCount := 4;
  Browse.RowCount := 3;
  Browse.ColWidths[00] := 000;
  Browse.ColWidths[01] := 020;
  Browse.ColWidths[02] := 040;
  Browse.ColWidths[03] := 200;

  Browse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  If (MultipFdidCondition) then
    Open_Query(TableName, False, 'SELECT * FROM ' + TableName + ' WHERE ' + GetFdidSQL(TableName + '.FDID') + ' ORDER BY SORTORD, CODE')
  else
    Open_Query(TableName, False, 'SELECT * FROM ' + TableName + ' ORDER BY SORTORD, CODE');

  while not A(TableName).eof do begin
    Browse.Cells[0, RowNum] := GetField(TableName, TableName + 'ID').AsString;
    Browse.AddCheckBox(1, RowNum, false, false);
    Browse.Cells[2, RowNum] := tdbField(TableName, 'CODE');
    Browse.Cells[3, RowNum] := tdbField(TableName, 'DESCR');
    if (RowNum > 1) then
      Browse.RowCount := Browse.RowCount + 1;
    RowNum := RowNum + 1;
    A(TableName).Skip(1);
  end;
  CloseApollo(TableName);
end;

procedure TSchdForm.CalendarDateChange(Sender: TObject; origDate, newDate:
  TDateTime);
begin
  RefreshList;
end;

procedure TSchdForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CloseApollo('SCHDTYPELU');
  Action := cafree;
end;

procedure TSchdForm.NewButtonClick(Sender: TObject);
var PKVar: string;
begin
  PKVar := '-1';
  SchdHistForm := TSchdHistForm.Create(Application, 'SCHDHIST', PKVar,SchdHistNewRecord);
  SchdHistForm.ShowModal;
  if anystrtoint(SchdHistForm.pk) > 0 then begin
    RefreshList;
    RefreshRecord(anystrtoint(SchdHistForm.pk));
  end;
  SchdHistForm.Free;
end;

procedure TSchdForm.SchdHistNewRecord(DataSet: TDataSet);
var DateVar      : string;
    SchdStatusID : string;
    SchdTypeID   : string;
    TabNum       : Integer;
    SQLVar       : string;
begin
  try
    Open_Query('NEWSCHDSET', false, 'SELECT * FROM SCHDSET WHERE FDID = ' + AddExpr(mFireID));
    SchdStatusID := GetField('NEWSCHDSET', 'SCHDSTATUSNEWID').AsString;
    SchdTypeID   := GetField('NEWSCHDSET', 'SCHDTYPENEWID').AsString;
  finally
    CloseApollo('NEWSCHDSET');
  end;

  DataSet.FieldByName('SCHDSTATUSID').AsString := SchdStatusID;
  DataSet.FieldByName('SCHDTYPEID').AsString := SchdTypeID;
  DataSet.FieldByName('DESCR').AsString := ' ';

  TabNum := StationTabControl.TabIndex;
  if (TabNum > 0) then begin
    if TTabType(TabList[TabNum]).TabType = 'LOC' then
      DataSet.FieldByName('SCHDLOCID').AsString := TTabType(TabList[TabNum]).Value
    else if TTabType(TabList[TabNum]).TabType = 'UNIT' then
      DataSet.FieldByName('UNITNUM').AsString := TTabType(TabList[TabNum]).Value
  end;

  If mFireID = '71630' then
    DateVar := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' ' + '08:01')
  else  
    DateVar := AddExpr(FormatDateTime('YYYY-MM-DD', Calendar.Date) + ' ' + DayTimeField.Text);

  SQLVar := 'SELECT SCHDSHIFTTEMP.SCHDSHIFTNAMEID, SCHDSHIFTTEMP.DATETIMESTART, '+ 'SCHDSHIFTTEMP.SHIFTLENGTH, SCHDSHIFTTEMP.DATETIMEEND FROM SCHDSHIFTTEMP ' + 'LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
            'LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFTTEMP.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' + 'WHERE DATETIMESTART <= ' + DateVar + ' AND DATETIMEEND >= ' + DateVar + ' AND SCHDSHIFTTEMP.SHIFTLENGTH > 0 AND SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y');

  Open_Query('SCHDSHIFTTEMP', false, SQLVar);
  if A('SCHDSHIFTTEMP').RecordsExist then begin
    DataSet.FieldByName('SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTTEMP','SCHDSHIFTNAMEID').AsString;
    DataSet.FieldByName('DATETIMESTART').AsDateTime := GetField('SCHDSHIFTTEMP', 'DATETIMESTART').AsDateTime;
    DataSet.FieldByName('DATETIMEEND').AsDateTime := GetField('SCHDSHIFTTEMP', 'DATETIMEEND').AsDateTime;
    DataSet.FieldByName('SHIFTLENGTH').AsFloat := GetField('SCHDSHIFTTEMP','SHIFTLENGTH').AsFloat;
  end;
  CloseApollo('SCHDSHIFTTEMP');
end;

procedure TSchdForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TSchdForm.dayshiftcheckboxClick(Sender: TObject);
begin
  RefreshList;
end;

procedure TSchdForm.PersButtonClick(Sender: TObject);
begin
{$IFDEF REDNMX}
  MainForm.PersButtonClick(self);
{$ELSE}
  ShowMessage('Not Supported on this Application');
{$ENDIF}
end;

procedure TSchdForm.PrintButtonClick(Sender: TObject);
var SchdRosterForm: TSchdRosterForm;
begin
  if mFireID = '08006' then begin
    SchdRosterForm := TSchdRosterForm.Create(application, '', Calendar.Date,
      Calendar.Date);
    SchdRosterForm.BaseReport.PreviewModal;
    SchdRosterForm.Free;
  end else begin
    try
      if (Calendar.Date > 0) then
        SchdMenuForm := TSchdMenuForm.Create(Application, Calendar.Date +
          GetRealTime(GetTimeAsString))
      else
        SchdMenuForm := TSchdMenuForm.Create(Application);
      SchdMenuForm.ShowModal;
    finally
      SchdMenuForm.Free;
    end;
  end;
end;

procedure TSchdForm.SchdShiftNameBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
begin
  RefreshList;
end;

procedure TSchdForm.timefieldExit(Sender: TObject);
var FieldValue: string;
begin
  FieldValue := (sender as TAlpineEdit).Text;
  if CheckValidTime(FieldValue, False) and (length(FieldValue) = 5) then
    RefreshList;
end;

procedure TSchdForm.UnLockAllButtonClick(Sender: TObject);
var RowNum: Integer;
begin
  for RowNum := 1 to SchdhistBrowse.RowCount do
  begin
    UnApproveSchdHist(RowNum);
  end;
end;

procedure TSchdForm.UnLockButtonClick(Sender: TObject);
begin
  UnApproveSchdHist(SchdHistBrowse.Row);
end;

procedure TSchdForm.ViewPersonnel1Click(Sender: TObject);
Var PersID : String;
begin
{$IFDEF REDNMX}
  //MainForm.PersButtonClick(self);   Opens Pers List (but why?)
  PersID := SQLLookup(SchdHistBrowse.GetValue('SCHDHISTID'),'SCHDHISTID','SCHDHIST','PERSID');
  RunAlpineForm(TPersForm,PersID,'PERS',TPersForm.NewRecord);
{$ELSE}
  ShowMessage('Not Supported on this Application');
{$ENDIF}

end;

procedure TSchdForm.SplitButtonClick(Sender: TObject);
var SchdHistID: string;
begin
  SchdHistID    := SchdHistBrowse.GetValue('SCHDHISTID');
  SchdSplitForm := TSchdSplitForm.Create(application, SchdHistID);
  SchdSplitForm.ShowModal;
  SchdSplitForm.Free;
  RefreshList;
  SchdHistBrowse.GoToID(schdhistid);
end;

procedure TSchdForm.SplitShiftChoiceClick(Sender: TObject);
begin
  SplitButtonClick(self);
end;

class procedure TSchdForm.ShowShiftColor(Calendar: TPlannerMonthView; StartDate: TDateTime);
var fdidToUse : string;
    SQLVar    : string;
begin
  SQlVar := 'SELECT SCHDSHIFTTEMP.DATETIMESTART, SCHDSHIFT.COLOR FROM SCHDSHIFTTEMP LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) WHERE SCHDSHIFTTEMP.DATETIMESTART >= ' +
            AddExpr(FormatDateTime('YYYY-MM-DD', StartDate - 182)) + ' AND ' + 'SCHDSHIFTTEMP.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',StartDate + 365)) + ' AND SCHDSHIFT.FDID = ' + AddExpr(mFireID) + ' AND ' + 'SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y') + ' AND ' + 'SCHDSHIFT.COLOR IS NOT NULL ' + 'ORDER BY SCHDSHIFTTEMP.DATETIMESTART';

  If mFireID = '23300' then
    SQlVar := 'SELECT SCHDSHIFTTEMP.DATETIMESTART, SCHDSHIFT.COLOR FROM SCHDSHIFTTEMP LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
              'WHERE SCHDSHIFTTEMP.DATETIMESTART >= ' + AddExpr(FormatDateTime('YYYY-MM-DD', StartDate - 182)) + ' AND SCHDSHIFTTEMP.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',
              StartDate + 730)) + ' AND SCHDSHIFT.COLOR IS NOT NULL ORDER BY SCHDSHIFTTEMP.DATETIMESTART';

  Open_Query('SCHDSHIFTTEMP', false, SQLVar);
  while not A('SCHDSHIFTTEMP').Eof do begin
    if not (tdbfield('SCHDSHIFTTEMP', 'COLOR') = '') then begin
      with Calendar.CreateItem do begin
        Background    := true;
        ItemStartTime := StrToDate(FormatDateTime('MM/DD/YYYY', GetField('SCHDSHIFTTEMP', 'DATETIMESTART').AsDateTime));
        ItemEndTime   := StrToDate(FormatDateTime('MM/DD/YYYY', GetField('SCHDSHIFTTEMP', 'DATETIMESTART').AsDateTime));
        CaptionType   := ctNone;
        CanSelect     := False;
        Color         := StringToColor(tdbfield('SCHDSHIFTTEMP', 'COLOR'));
        TrackVisible  := False;
        Update;
      end;
    end;
    A('SCHDSHIFTTEMP').Skip(1);
  end;
  CloseApollo('SCHDSHIFTTEMP');
end;

end.
