unit PersCond;

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
  ImgList,
  AdvToolBar,
  StdCtrls,
  GradientLabel,
  ExtCtrls,
  BorderPanel,
  OrpheusWrapper,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  MySBox,
  AdvPanel,
  htmlbtns,
  AlpineBase,
  alpinebaseCond,
  HTMLChkList,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineDateTime,
  AlpineBaseSummaryReport,
  AlpineLookup,
  AlpineTMSStringGrid,
  AdvGroupBox,
  AdvGlowButton,
  AlpineGlowButton,
  BasePictureField,
  AlpineEdit,
  AlpineCheck,
  qrctrls,
  quickrpt,
  SysRepMan,  
  AdvObj;

type
  TPersCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    ParamBox: TMyScrollBox;
    DatePanel: TAdvPanel;
    SortPanel: TAdvPanel;
    IdNumber: TRadioButton;
    LastName: TRadioButton;
    PersCodePanel: TAdvPanel;
    PersIDLabel: TLabel;
    TypePanel: TPanel;
    FdidPanel: TAdvPanel;
    FdidCompPanel: TAdvPanel;
    PersTypePanel: TAdvPanel;
    fdidcompbrowse: TAlpineTMSStringGrid;
    PersTypeBrowse: TAlpineTMSStringGrid;
    PersStatPanel: TAdvPanel;
    PersStatBrowse: TAlpineTMSStringGrid;
    SchdPanel: TAdvPanel;
    Label23: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    ShiftLabel: TLabel;
    SchdLocIDField: TAlpineLookup;
    SchdRankIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    SchdShiftIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    PersIDDescr: TLabel;
    TrainCATPanel: TAdvPanel;
    AdvPanel1: TAdvPanel;
    AdvPanel2: TAdvPanel;
    TrainCATBrowse: TAdvStringGrid;
    YOS: TRadioButton;
    NITrainCatReqBrowse: TAlpineTMSStringGrid;
    ClearButton: TAlpineGlowButton;
    PersPointRepPanel: TAdvPanel;
    Label4: TLabel;
    PersPointRepIDField: TAlpineLookup;
    TotalPts: TRadioButton;
    PersRosterPanel: TAdvPanel;
    Label1: TLabel;
    RosterEventField: TAlpineEdit;
    Label3: TLabel;
    RosterTypeField: TAlpineEdit;
    Label5: TLabel;
    RosterLocationField: TAlpineEdit;
    Label7: TLabel;
    RosterDateField: TAlpineEdit;
    BarCodeField: TAlpineCheckBox;
    Label2: TLabel;
    NISTYPEPanel: TAdvPanel;
    NISTYPEBrowse: TAdvStringGrid;
    InvPanel: TAdvPanel;
    InvBrowse: TAdvStringGrid;
    PersMedPanel: TAdvPanel;
    PersMedBrowse: TAlpineTMSStringGrid;
    legalpaperPanel: TAdvPanel;
    Label9: TLabel;
    uselegalpapercheckbox: TAlpineCheckBox;
    TestDatePanel: TAdvPanel;
    TestDateLabel: TLabel;
    TestDateField: TAlpineDateTime;
    BadgeFirstCheck: TAlpineCheckBox;
    BadgeFirstLabel: TLabel;
    DispCallTypePanel: TAdvPanel;
    DispCallTypeBrowse: TAdvStringGrid;
    ShiftNamePanel: TAdvPanel;
    Label8: TLabel;
    Label11: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    PersRankPanel: TAdvPanel;
    PersRankBrowse: TAlpineTMSStringGrid;
    PersDriverPanel: TAdvPanel;
    PersDriverBrowse: TAlpineTMSStringGrid;
    Label6: TLabel;
    Label12: TLabel;
    RosterTimeField: TAlpineEdit;
    RosterEndTimeField: TAlpineEdit;
    FrequencyPanel: TAdvPanel;
    Label10: TLabel;
    FrequencyField: TAlpineEdit;
    Label13: TLabel;
    fdidbrowse: TAlpineTMSStringGrid;
    TypeFilterPanel: TAdvPanel;
    Label14: TLabel;
    NITRAINCATTYPEField: TAlpineLookup;
    SHowAllTrainCatButton: TAlpineGlowButton;
    PersSelectPanel: TAdvPanel;
    PersSelectBrowse: TAlpineTMSStringGrid;
    PersCodeNum: TRadioButton;
    PersStationPanel: TAdvPanel;
    PersStationBrowse: TAlpineTMSStringGrid;
    IDDatePanel: TAdvPanel;
    Label15: TLabel;
    Label16: TLabel;
    IDIssueDateField: TAlpineDateTime;
    IDExpireDateField: TAlpineDateTime;
    Label17: TLabel;
    IDColorField: TAlpineEdit;
    BackColorButton: TAlpineGlowButton;
    ColorDialog1: TColorDialog;
    HasImagePanel: TAdvPanel;
    Label18: TLabel;
    HasImageCheckBox: TAlpineCheckBox;
    PersPointTypePanel: TAdvPanel;
    PersPointtypeBrowse: TAlpineTMSStringGrid;
    RetentionPanel: TAdvPanel;
    RetentionLabel: TLabel;
    RetentionField: TAlpineEdit;
    ManpowerHoursRadio: TRadioButton;
    Percentage: TRadioButton;
    AssPanel: TAdvPanel;
    AssBrowse: TAlpineTMSStringGrid;
    DOBCheck: TRadioButton;
    EMSQualPanel: TAdvPanel;
    EMSQualBrowse: TAlpineTMSStringGrid;
    PersIDAttendCheck: TAlpineCheckBox;
    Label19: TLabel;
    InitialDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    FinalDateLabel: TLabel;
    EndDateField: TAlpineDateTime;
    YearField: TAlpineEdit;
    QuarterField: TAlpineEdit;
    SchdSubTypePanel: TAdvPanel;
    SchdSubTypeBrowse: TAlpineTMSStringGrid;
    AwardTypePanel: TAdvPanel;
    Label20: TLabel;
    Label21: TLabel;
    AwardTypeField: TAlpineLookup;
    NISTypeActiveButton: TAlpineGlowButton;
    Label22: TLabel;
    AttendField: TAlpineCheckBox;
    Label24: TLabel;
    NIPTYPEPanel: TAdvPanel;
    NIPTYPEBrowse: TAdvStringGrid;
    NIPTypeActiveButton: TAlpineGlowButton;
    SchdTypePanel: TAdvPanel;
    SchdTypeBrowse: TAlpineTMSStringGrid;
    Label26: TLabel;
    SchdShiftTypeIDField: TAlpineLookup;
    OptionsPanel: TAdvPanel;
    CodesKeyCheckBoxLabel: TLabel;
    CodesKeyCheckBox: TAlpineCheckBox;
    SitFoundField6: TAlpineLookup;
    SitFoundLabel: TLabel;
    SitFoundPanel: TPanel;
    SitFoundField5: TAlpineLookup;
    SitFoundField4: TAlpineLookup;
    SitFoundField3: TAlpineLookup;
    SitFoundField2: TAlpineLookup;
    SitFoundField1: TAlpineLookup;
    SchdShiftNameBrowsePanel: TAdvPanel;
    SchdShiftNameBrowse: TAlpineTMSStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure EnableSave(Sender: TObject);
    procedure NITrainCatReqBrowseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrainCATBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ClearButtonClick(Sender: TObject);
    procedure TrainCATBrowseClick(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure NITRAINCATTYPEFieldSuccessfulValidate(Sender: TObject);
    procedure SHowAllTrainCatButtonClick(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
    procedure InvBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure TotalPtsClick(Sender: TObject);
    procedure PersIDFieldSetDescription(Sender: TObject);
    procedure PersPointRepIDFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure SchdShiftIDFieldEnter(Sender: TObject);
    procedure SchdRankIDFieldEnter(Sender: TObject);
    procedure SchdLocIDFieldEnter(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure YOSClick(Sender: TObject);
    procedure NISTypeActiveButtonClick(Sender: TObject);
    procedure NIPTypeActiveButtonClick(Sender: TObject);
    procedure SitFoundField1SuccessfulValidate(Sender: TObject);
  private
    { Private declarations }
    bCompaniesExist: Boolean;
    FSysRepManForm: TSysRepmanForm;
    Procedure LoadFDIDCompBrowse;
    Procedure LoadFdidBrowse;
    Procedure LoadTrainCAT;
    Procedure LoadNITrainCatReqBrowse;
    Procedure LoadNISTypeBrowse;
    Procedure LoadNIPTypeBrowse;
    Procedure LoadInvBrowse;
    procedure LoadSchdSubTypeBrowse;
    Procedure LoadDispCallTypeBrowse;
    procedure LoadPersSelectBrowse;
    procedure LoadSchdTypeBrowse;
    procedure LoadSchdShiftNameBrowse;
  public
    function SelectOrder: String;
    function CheckForAss(Table,PersID : String): Boolean;
    function GetFdidWhere: String;
    function GetFdidCheckCount: Integer;
    function GetPersFdidWhere: String;
    function GetReportFdidVar: String;
    
    function GetFdidWhereTable(TableName: String): String;
    function GetNFIRSFdidWhere: String;
    function GetInvFdidWhere: String;
    function GetFdidCompIDWhere: String;
    function GetFdidCompID02210Where: String;
    function GetPersTypeIDWhere: String;
    function GetPersPointTypeWhere(mAttTable: String): String;
    function GetPersRankIDWhere: String;
    function GetPersDriverIDWhere: String;
    function GetPersTypeList: String;
    function GetPersRankList: String;
    function GetPersStatList: String;
    function GetAssList: String;
    function GetSchdSubTypeWhere   : String;
    function GetSchdSubTypeWhereNI: String;
    function GetPersStationList: String;
    function GetFdidCompList: String;
    function GetFdidCompStringList: TStringList;
    function GetPersStatIDWhere: String;
    function GetPersFdidPersStatIDWhere: String;
    function GetAssIDWhere: String;
    function GetPersStationIDWhere: String;
    function GetHasImageWhere: String;
    function SqlWhereClause: String; override;
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function OrderClause: String; override;
    function GetPersOrder: String;
    function CheckTrainCatBrowse(NITrainCAT1ID: String): Boolean;
    function CheckNISTypeBrowse(NISTypeID: String; checkAll: Boolean): Boolean;
    function CheckNIPTypeBrowse(NIPTypeID: String; checkAll: Boolean): Boolean;
    function CountTrainCatBrowse: Integer;
    function CountNISTypeBrowse(flag:Boolean): Integer;
    function CountNIPTypeBrowse(flag:Boolean): Integer;
    function GetNISTypeWhere: String;
    function GetNISTypeString: String;
    function GetInvWhere: String;
    function GetPersMedIDWhere: String;
    function GetSchdSubTypeString : String;
    function UseLegalPaper: Boolean;
    function HasImage: Boolean;
    function GetInvString: String;
    function GetInvStringList: TStringList;
    function GetFdidString: String;
    function GetFdidVar: String;
    function GetPersMedHistIDWhere: String;
    function GetSchdTypeWhere: String;
    class procedure PrintTitles(BandName : TQRBand);
    class Procedure LoadBrowse(Browse: TAlpineTMSStringGrid; TableName: String);
    function GetDispCallTypeString: String;
    function GetPersSelectWhere: String;
    function GetHeight(PanelName : TAdvPanel): Integer;
    function GetHeight2(PanelName : TPanel): Integer;
    function GetSchdTypeList: String;
  end;
var
  PersCondForm: TPersCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SecSet,
     FormFunc,
     PersHistRep,
     PersHistDetailRep,
     PersLabel,
     PersRep,
     Pers1Rep,
     PersRespDataRep,
     PersDeceasedRep,
     PersHandRep,
     PersDriverRep,
     PersSchdAssRep,
     PersMedRep,
     PersCancerRep,
     PersMedRangeRep,
     MemberProfileRep,
     PersSingleMedRep,
     PersEmail,
     PersNiEvAttRep,
     PersTrainHistRep,
     PersTrainGridRep,
     PersNIEventCountRep,
     PersNIPTypeEventCountRep,
     PersStatHistRep,
     PersInvQualRep,
     PersNIPrimeRep,
     PersPointRep,
     PersPhoneList,
     PersDirectRep,
     PersRoster,
     PersNfirsHandRep,
     PersNIAttRep,
     PersSchdHourRep,
     PersSchdFPPayRollRep,
     PersSchdTypeSummRep,
     PersAppUseRep,
     PersNIAppRep,
     PersAppLengthRep,
     PersDriveHistRep,
     PersTrainExpRep,
     PersNIAttGridRep,
     PersNfirsAttGridRep,
     PersEnvelop,
     PersProfileRep,
     PersSchdProfileRep,
     PersBirthdayRep,
     PersInvRep,
     PersTeamGridRep,
     DayNightPercentReport,
     DayPercentReport,
     NightPercentReport,
     SuffolkPersStatHistRep,
     PersEMSAttRep,
     PersRosterBox,
     PersMaskRep,
     PersNfirsAttTaskRep,
     PersNfirsAttInChargeRep,
     PersNfirsAttMonthRep,
     PersNfirsAttPersPointTypeRep,
     PersSubTypeRep,
     PersSubStatRep,
     PersInvAssigned,
     PersInvInspect,
     PersAppUseNIRep,
     PersAttConflictRep,
     DayNightOverNightRep,
     DriversLicRep,
     NemsisPersRep,
     FingerRep,
     Search,
     NormalBase,
     FingerGBRep,
     CommonVar,
     CommonFunc,
     CommonPers,
     PersTrainTotalRep,
     PersBirthday21Rep,
     ResponderAppRep,
     PersSchdTotalRep,
     PersSchdHistRep,
     PersNfirsAttPercRep,
     PersEmergPhoneList,
     PersKioskSelfInspectionRep,
     PersRankRep,
     PersAwardHistRep;

procedure TPersCondForm.FormCreate(Sender: TObject);
begin
  LoadFdidBrowse;
  LoadFdidCompBrowse;
  TPersCondForm.LoadBrowse(PersTypeBrowse,'PERSTYPE');
  TPersCondForm.LoadBrowse(PersPointTypeBrowse,'PERSPOINTTYPE');
  TPersCondForm.LoadBrowse(PersStatBrowse,'PERSSTAT');
  If MFireID = '15078' then
    TPersCondForm.LoadBrowse(AssBrowse,'SNYASSCODE');
  TPersCondForm.LoadBrowse(PersRankBrowse,'PERSRANK');
  TPersCondForm.LoadBrowse(PersDriverBrowse,'PERSDRIVER');
  TPersCondForm.LoadBrowse(PersStationBrowse,'DISPLOC');
  TPersCondForm.LoadBrowse(EmsQualBrowse,'EMSQUAL');
  LoadNITrainCatReqBrowse;


  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));
  TPersCondForm.LoadBrowse(PersMedBrowse,'PERSMED');

  If (FSysRepManForm.ASysRep.ReportCode = 'WORCCTAXSERVREP') then begin
    RetentionField.PictureMask  := 'XXXXXXXXXXXXX';
  end;
end;

procedure TPersCondForm.FormShow(Sender: TObject);
begin
  FdidPanel.Visible     := MultiFdid;
  FdidCompPanel.Visible := FDidCompPanel.Visible and bCompaniesExist;

  If (MFireID ='15078') and (SysRepManForm.ASysRep.ReportCode = 'PERSPHONELIST') then
    AssPanel.Visible := True
  else
    AssPanel.Visible  := False;

  if (SysRepManForm.ASysRep.ReportCode = 'PERSNFIRSATTTASKREP') then
    SitFoundPanel.Visible := True
  else
    SitFoundPanel.Visible := False;

  If TypePanel.Visible then
    TypePanel.Height     := 190;
  If TrainCATPanel.Visible then begin
    LoadTrainCAT;
    TrainCATPanel.Align  := alTop;
    TrainCATPanel.Height := 500;
  end;

  If SchdSubTypePanel.Visible then
    LoadSchdSubTypeBrowse;
  If SchdTypePanel.Visible then
    LoadSchdTypeBrowse;
  If SchdShiftNameBrowsePanel.Visible then
  begin
    LoadSchdShiftNameBrowse;
    SchdShiftNameBrowsePanel.Align := alLeft;
  end;

  If InvPanel.Visible and Not NISTYPEPanel.Visible then begin
    InvPanel.Align  := altop;
    InvPanel.Height := 300;
  end;
  If DispCallTypePanel.Visible then
    DispCallTypePanel.Align := alclient;

  If Not FdidPanel.Visible then begin
    FdidCompPanel.Width    := FdidCompPanel.Width + 80;
    PersTypePanel.Width    := PersTypePanel.Width + 80;
    PersStatPanel.Width    := PersStatPanel.Width + 80;
    AssPanel.Width         := AssPanel.Width + 80;
    PersStationPanel.Width := PersStationPanel.Width + 80;
  end;

  If FdidPanel.Visible then
    FdidPanel.Align := alleft;
  If FdidCompPanel.Visible then
    FdidCompPanel.Align := alleft;
  If PersTypePanel.Visible then
    PersTypePanel.Align := alleft;
  If PersStatPanel.Visible then
    PersStatPanel.Align := alleft;
  If PersStationPanel.Visible then
    PersStationPanel.Align := alleft;
  If PersMedPanel.Visible then
    PersMedPanel.Align := alleft;
  If PersRankPanel.Visible then
    PersRankPanel.Align := alleft;
  If PersDriverPanel.Visible then
    PersDriverPanel.Align := alleft;
  if PersPointTypePanel.Visible then
    PersPointTypePanel.Align := alLeft;
  If AssPanel.Visible then
     AssPanel.Align := alLeft;
  If EMSQualPanel.Visible then
     EMSQualPanel.Align := alLeft;

  If DispCallTypePanel.Visible then
    LoadDispCallTypeBrowse;

  If NISTYPEPanel.Visible then begin
    LoadNISTypeBrowse;
    NISTYPEPanel.Align  := altop;
    NISTYPEPanel.Height := 500;
    If InvPanel.Visible then
      InvPanel.Height := 200;
  end;

  If NIPTYPEPanel.Visible then begin
    LoadNIPTypeBrowse;
    NIPTYPEPanel.Align  := alclient;
    NIPTYPEPanel.Height := 500;
    If InvPanel.Visible then
      InvPanel.Height := 200;
  end;
  

  If mfireID = '52068' then begin
    BadgeFirstCheck.Visible := False;
    BadgeFirstLabel.Visible := False;
  end;

  if mfireid = '07130' then begin
    if not CheckSecVar('SCHDSETUP') then begin
      SchdShiftIDField.Value   := SqlLookUp(GlobalPersID,'PERSID','PERS','SCHDSHIFTID');
      SchdShiftIDField.Enabled := False;
    end;
  end;


  If mfireID <> '15044' then begin
    ManpowerHoursRadio.Visible := False;
  end;

  If InvPanel.Visible then
    LoadInvBrowse;
  If PersSelectPanel.Visible then
    LoadPersSelectBrowse;

  If mFireID = '30024' then
    FdidPanel.Visible := false;

  ScaleButtonsOnPanel('H',TypePanel);
  If FSysRepManForm<>nil then
    FSysRepManForm.ReLoadSettings;

  If (FSysRepManForm.ASysRep.ReportCode = 'PERSATTCONFLICREP') then begin
    RetentionLabel.caption      := 'Gap Time in Minutes';
    RetentionPanel.Caption.Text := 'Enter Gap Time';
  end;

  If (FSysRepManForm.ASysRep.ReportCode = 'WORCCTAXSERVREP') then begin
//  RetentionField.PictureMask  := 'XXXXXXXXXXXXX';
    RetentionLabel.caption      := 'MD Form 502 Amount';
    RetentionPanel.Caption.Text := 'Enter MD Form 502 Amount';
    RetentionField.Value        := '5,000.00';
  end;

  If (mFireID = '52097') and (SysRepManForm.ASysRep.ReportCode = 'SFDYTDREP') then begin
    InitialDateLabel.Caption := 'Enter Year';
    FinalDateLabel.Caption   := 'Enter Quarter (1,2,3 or 4)';
    StartDateField.Visible   := false;
    EndDateField.Visible     := false;
    YearField.Left           := StartDateField.Left;
    QuarterField.Left        := EndDateField.Left;
  end else if (mFireID = '10700') and (SysRepManForm.ASysRep.ReportCode = 'LCFRCHECKITREP') then begin
    DatePanel.Caption.Text   := 'Reporting Year';
    InitialDateLabel.Caption := 'Enter Reporting Year';
    StartDateField.Visible   := false;
    EndDateField.Visible     := false;
    YearField.Left           := StartDateField.Left;
    QuarterField.Visible     := false;
    FinalDateLabel.Visible   := false;
  end else begin
    YearField.Visible        := false;
    QuarterField.Visible     := false;
  end;

  ParamBox.VertScrollBar.Range := GetHeight2(TypePanel)       + GetHeight(DatePanel)         + GetHeight(PersRosterPanel) +
                                  GetHeight(FrequencyPanel)  + GetHeight(RetentionPanel)    + GetHeight(HasImagePanel)   +
                                  GetHeight(legalpaperPanel) + GetHeight(TestDatePanel)     + GetHeight(PersCodePanel)   +
                                  GetHeight(SortPanel)       + GetHeight(PersPointRepPanel) + GetHeight(ShiftNamePanel)  +
                                  GetHeight(SchdPanel)       + GetHeight(TrainCATPanel)     + GetHeight(NISTYPEPanel)    +
                                  GetHeight(InvPanel)        + GetHeight(DispCallTypePanel) + GetHeight(IDDatePanel)     +
                                  GetHeight(PersSelectPanel) + GetHeight(AwardTypePanel);
end;

function TPersCondForm.GetHeight2(PanelName : TPanel): Integer;
begin
  If PanelName.Visible then
    GetHeight2 := PanelName.Height
  else
    GetHeight2 := 0;
end;

function TPersCondForm.GetHeight(PanelName : TAdvPanel): Integer;
begin
  If PanelName.Visible then
    GetHeight := PanelName.Height
  else
    GetHeight := 0;
end;

procedure TPersCondForm.LoadSchdSubTypeBrowse;
Var RowNum : Integer;
begin
  SchdSubTypeBrowse.clear;
  SchdSubTypeBrowse.ColCount := 5;
  SchdSubTypeBrowse.RowCount := 0;

  SchdSubTypeBrowse.ColWidths[00] := 000;
  SchdSubTypeBrowse.ColWidths[01] := 020;
  SchdSubTypeBrowse.ColWidths[02] := 080;
  SchdSubTypeBrowse.ColWidths[03] := 250;

  SchdSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('SCHDSUBTYPE',false,'SELECT SCHDTYPE.CODE TYPECODE, SCHDSUBTYPE.CODE SUBCODE, SCHDSUBTYPE.DESCR, SCHDSUBTYPE.SCHDSUBTYPEID FROM SCHDSUBTYPE ' +
                                 ' LEFT JOIN SCHDTYPE ON (SCHDSUBTYPE.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                                 ' WHERE SCHDTYPE.ROSTER = ' + AddExpr('Y') + ' OR SCHDTYPE.OVERTIME = ' + AddExpr('Y') +
                                 ' ORDER BY TYPECODE, SUBCODE ');
  While Not A('SCHDSUBTYPE').Eof do begin
    SchdSubTypeBrowse.RowCount := SchdSubTypeBrowse.RowCount + 1;
    SchdSubTypeBrowse.Cells[0,RowNum] := Getfield('SCHDSUBTYPE','SCHDSUBTYPEID').AsString;
    SchdSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
    SchdSubTypeBrowse.Cells[2,RowNum] := Getfield('SCHDSUBTYPE','SUBCODE').AsString;
    SchdSubTypeBrowse.Cells[3,RowNum] := Getfield('SCHDSUBTYPE','DESCR').AsString;
    RowNum := RowNum + 1;
    A('SCHDSUBTYPE').Skip(1);
  end;
  CloseApollo('SCHDSUBTYPE');
end;

procedure TPersCondForm.LoadSchdTypeBrowse;
Var RowNum : Integer;
begin
  SchdTypeBrowse.clear;
  SchdTypeBrowse.ColCount := 5;
  SchdTypeBrowse.RowCount := 0;

  SchdTypeBrowse.ColWidths[00] := 000;
  SchdTypeBrowse.ColWidths[01] := 020;
  SchdTypeBrowse.ColWidths[02] := 080;
  SchdTypeBrowse.ColWidths[03] := 250;

  SchdTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('SCHDTYPE',false,'SELECT SCHDTYPE.CODE, SCHDTYPE.DESCR, SCHDTYPE.SCHDTYPEID FROM SCHDTYPE ' +
                              'ORDER BY CODE');
  While Not A('SCHDTYPE').Eof do begin
    SchdTypeBrowse.RowCount := SchdTypeBrowse.RowCount + 1;
    SchdTypeBrowse.Cells[0,RowNum] := Getfield('SCHDTYPE','SCHDTYPEID').AsString;
    SchdTypeBrowse.AddCheckBox(1,RowNum,false,false);
    SchdTypeBrowse.Cells[2,RowNum] := Getfield('SCHDTYPE','CODE').AsString;
    SchdTypeBrowse.Cells[3,RowNum] := Getfield('SCHDTYPE','DESCR').AsString;
    RowNum := RowNum + 1;
    A('SCHDTYPE').Skip(1);
  end;
  CloseApollo('SCHDTYPE');
end;


function TPersCondForm.CheckForAss(Table,PersID : String): Boolean;
var RowVar      : Integer;
    CheckValue  : Boolean;
    NoneChecked : Boolean;
begin
  if anystrtoint(PersID)<=0 then begin
    result := False;
    exit;
  end;  
  NoneChecked          := True;
  CheckForAss          := False;
  For RowVar := 0 to AssBrowse.RowCount-1 do begin
    AssBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (anystrtoint( AssBrowse.Cells[0,RowVar])>0) then begin
    NoneChecked           := False;
    Open_Query(Table,false,'SELECT * FROM ' + Table + ' WHERE PERSID = ' + addexpr(PersID));
      while not A(Table).Eof do begin
        if tdbfield(Table,'SNYASSCODEID') = SQLLookup(AssBrowse.Cells[0,RowVar],'SNYASSCODEID','SNYASSCODE','SNYASSCODEID') then
          CheckForAss       := True;
        A(Table).Skip(1);
      end;
    CloseApollo(Table);
    end;
  end;
  if NoneChecked then
    CheckForAss      := True ;

end; 

procedure TPersCondForm.LoadPersSelectBrowse;
Var RowNum : Integer;
begin
  PersSelectBrowse.clear;
  PersSelectBrowse.ColCount      := 4;
  PersSelectBrowse.RowCount      := 3;
  PersSelectBrowse.ColWidths[00] := 001;
  PersSelectBrowse.ColWidths[01] := 020;
  PersSelectBrowse.ColWidths[02] := 150;
  PersSelectBrowse.ColWidths[03] := 300;

  PersSelectBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  if mFireID ='01920' then
    Open_Query('PERS',false,'SELECT PERSID,PERSCODE,LNAME,FNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME')
  else if SecFdid = '' then
    Open_Query('PERS',false,'SELECT PERSID,PERSCODE,LNAME,FNAME FROM PERS ORDER BY LNAME, FNAME')
  else
    Open_Query('PERS',false,'SELECT PERSID,PERSCODE,LNAME,FNAME FROM PERS WHERE FDID = ' + AddExpr(SecFdid) + ' ORDER BY LNAME, FNAME');

  While Not A('PERS').Eof do begin
    PersSelectBrowse.Cells[0,RowNum] := Getfield('PERS','PERSID').AsString;
    PersSelectBrowse.AddCheckBox(1,RowNum,false,false);
    PersSelectBrowse.Cells[2,RowNum] := tdbfield('PERS','PERSCODE');
    PersSelectBrowse.Cells[3,RowNum] := tdbfield('PERS','LNAME') + ', ' + tdbfield('PERS','FNAME');
    If (RowNum > 0) then
      PersSelectBrowse.RowCount := PersSelectBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('PERS').Skip(1);
  end;
  CloseApollo('PERS');
end;

Procedure TPersCondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 3;
  FdidBrowse.ColWidths[00] := 060;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;

  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE, SHORTDESCR, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := IIf(tdbfield('FDID','SHORTDESCR') = '',tdbfield('FDID','DEPTNAME'),tdbfield('FDID','SHORTDESCR'));
    If (RowNum > 0) then
      FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');

  If secFdid = '' then begin
    FdidBrowse.Enabled     := true;
    FdidPanel.Caption.Text := 'Agencies (Leave blank for all)';
  end else begin
      FdidBrowse.Enabled     := false;
    FdidPanel.Caption.Text := 'Agencies ' + '(' + secFdid + ' only)';
  end;
end;

Procedure TPersCondForm.LoadFDIDCompBrowse;
Var iCol   : Integer;
    RowNum : Integer;
    mDescr : String;
    mWidth : String;
begin
  FdidCompBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  FdidCompBrowse.FixedRowAlways :=False;
  FdidCompBrowse.Reset;

  FdidCompBrowse.SetColumn('FDIDCOMPID','',0);
  FdidCompBrowse.SetColumn('CHECKBOX','',20);
  FdidCompBrowse.SetColumn('DESCR','',200);
  bCompaniesExist := False;

  If mfireID = '52094' then
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) ORDER BY FDID.ABBREVIATE, FDIDCOMP.SORTORD')
  else if mFireID = '52109' then
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, FDIDCOMP.SHORTDESCR DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) ORDER BY FDID.ABBREVIATE, FDIDCOMP.DESCR')
  else if mFireID = '44007' then
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, FDIDCOMP.SHORTDESCR DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) WHERE FDIDCOMP.FDID = ' + AddExpr('44007') + ' ORDER BY FDID.ABBREVIATE, FDIDCOMP.DESCR')
  else
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) WHERE ' + GetFdidSQL('FDID.FDID') + ' ORDER BY FDID.ABBREVIATE, FDIDCOMP.DESCR');

  While Not A('FDIDCOMP').Eof do begin
    bCompaniesExist := True;
    FdidCompBrowse.Setvalue('FDIDCOMPID',Getfield('FDIDCOMP','FDIDCOMPID').AsString);
    fdidcompbrowse.SetCheckValue('CHECKBOX',False);
    If MultiFdid then
      mDescr := tdbfield('FDIDCOMP','ABBREVIATE') + '-' + tdbfield('FDIDCOMP','DESCR')
    else
      mDescr := tdbfield('FDIDCOMP','DESCR');

    FdidCompBrowse.Setvalue('DESCR',mDescr);

    A('FDIDCOMP').Skip(1);
  end;
  CloseApollo('FDIDCOMP');
end;

Procedure TPersCondForm.LoadSchdShiftNameBrowse;
begin
  SchdShiftNameBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  SchdShiftNameBrowse.FixedRowAlways :=False;
  SchdShiftNameBrowse.Reset;

  SchdShiftNameBrowse.SetColumn('SCHDSHIFTNAMEID','',0);
  SchdShiftNameBrowse.SetColumn('CHECKBOX','',20);
  SchdShiftNameBrowse.SetColumn('DESCR','',200);


  Open_Query('SCHDSHIFTNAME',false,'SELECT SCHDSHIFTNAMEID, DESCR FROM SCHDSHIFTNAME ORDER BY SCHDSHIFTNAME.CODE');

  While Not A('SCHDSHIFTNAME').Eof do begin
    SchdShiftNameBrowse.Setvalue('SCHDSHIFTNAMEID',Getfield('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString);
    SchdShiftNameBrowse.SetCheckValue('CHECKBOX',False);
    SchdShiftNameBrowse.Setvalue('DESCR',tdbfield('SCHDSHIFTNAME','DESCR'));

    A('SCHDSHIFTNAME').Skip(1);
  end;
  CloseApollo('SCHDSHIFTNAME');
end;

class Procedure TPersCondForm.LoadBrowse(Browse: TAlpineTMSStringGrid; TableName: String);
Var RowNum : Integer;

  function CheckFdid: Boolean;
  begin
    If MultiFdid then begin
      If (tdbfield(TableName,'FDID') = '') then
        CheckFdid := true
      else if SecFdid = '' then
        CheckFdid := true
      else if (tdbfield(TableName,'FDID') = SecFdid) then
        CheckFdid := true
      else
        CheckFdid := false
    end else begin
      CheckFdid := true;
    end;
  end;

begin
  Browse.clear;
  Browse.ColCount := 4;
  Browse.RowCount := 0;

  Browse.ColWidths[00] := 001;
  Browse.ColWidths[01] := 020;
  Browse.ColWidths[02] := 080;
  Browse.ColWidths[03] := 250;

  Browse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                                      := 0;

  Open_Query(TableName,false,'SELECT * FROM ' + TableName + ' ORDER BY CODE, DESCR');

  While Not A(TableName).Eof do begin
    If CheckFdid then begin
      Browse.RowCount := Browse.RowCount + 1;
      Browse.Cells[0,RowNum] := Getfield(TableName,TableName + 'ID').AsString;
      Browse.AddCheckBox(1,RowNum,false,false);
      Browse.Cells[2,RowNum] := Getfield(TableName,'CODE').AsString;
      Browse.Cells[3,RowNum] := Getfield(TableName,'DESCR').AsString;

      RowNum := RowNum + 1;
    end;
    A(TableName).Skip(1);
  end;
  CloseApollo(TableName);
end;

procedure TPersCondForm.SchdLocIDFieldEnter(Sender: TObject);
begin
  SchdLocIDField.SQLExpr := 'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY CODE';
end;

procedure TPersCondForm.SchdRankIDFieldEnter(Sender: TObject);
begin
  SchdRankIDField.SQLExpr := 'SELECT * FROM SCHDRANK WHERE ' + GetFdidSQL('SCHDRANK.FDID') + ' ORDER BY RANKORD,CODE';
end;

procedure TPersCondForm.SchdShiftIDFieldEnter(Sender: TObject);
begin
  SchdShiftIDField.SQLExpr := 'SELECT * FROM SCHDSHIFT WHERE ' + GetFdidSQL('SCHDSHIFT.FDID') + ' ORDER BY SORTORD,CODE';
end;

procedure TPersCondForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY SORTORD,CODE';
end;

procedure TPersCondForm.UnitNumFieldEnter(Sender: TObject);
begin

  UnitNumField.SQLExpr := 'SELECT * FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM';
end;

function TPersCondForm.SelectOrder: String;
Begin
  If SortPanel.Visible then begin
    If IdNumber.Checked then begin
      if mfireID = '28029' then
        result := ' ORDER BY ' + SortPadLeft(GlobalAdoConnection,'PERS.PERSCODE',8)
      else
        result := ' ORDER BY PERS.PERSCODE';
    end;
    If LastName.Checked then
      result := ' ORDER BY PERS.LNAME, PERS.FNAME, PERS.MNAME';
    If YOS.Checked then
      result := ' ORDER BY PERS.YOS DESC';
    If TotalPts.Checked then
      result := ' ORDER BY PERS.TOTALPTS DESC';
    If Percentage.Checked then
      result := ' ORDER BY PERS.PERCENTAGE DESC';
    If PersCodeNum.Checked then
      result := ' ORDER BY ' + SortPadLeft(GlobalAdoConnection,'PERS.PERSCODE',8);
    If ManpowerHoursRadio.Checked then
      result := ' ORDER BY PERS.MANPOWER ASC';
    If DobCheck.Checked then
      result := ' ORDER BY MONTH(DOB), DAY(DOB)';

  end;
end;

procedure TPersCondForm.SHowAllTrainCatButtonClick(Sender: TObject);
begin
  NITRAINCATTYPEField.Value := '';
  LoadTrainCAT;
end;

procedure TPersCondForm.SitFoundField1SuccessfulValidate(Sender: TObject);
begin
  if (Sender as TAlpineLookup).Name = 'SitFoundField1' then
    if (Sender as TAlpineLookup).Value <> '' then
      SitFoundField2.Enabled := True
    else
      SitFoundField2.Enabled := False
  else if (Sender as TAlpineLookup).Name = 'SitFoundField2' then
    if (Sender as TAlpineLookup).Value <> '' then
      SitFoundField3.Enabled := True
    else
      SitFoundField3.Enabled := False
  else if (Sender as TAlpineLookup).Name = 'SitFoundField3' then
    if (Sender as TAlpineLookup).Value <> '' then
      SitFoundField4.Enabled := True
    else
      SitFoundField4.Enabled := False
  else if (Sender as TAlpineLookup).Name = 'SitFoundField4' then
    if (Sender as TAlpineLookup).Value <> '' then
      SitFoundField5.Enabled := True
    else
      SitFoundField5.Enabled := False
  else if (Sender as TAlpineLookup).Name = 'SitFoundField5' then
    if (Sender as TAlpineLookup).Value <> '' then
      SitFoundField6.Enabled := True
    else
      SitFoundField6.Enabled := False;
end;

procedure TPersCondForm.FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
begin
  If FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TPersCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue and Not (FdidBrowse.Cells[0,RowVar] = '') then begin
        If (mFireID = '13000') then 
          WhereString := WhereString + ' OR PERS.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]) + ' OR PERS.FDID2 = ' + AddExpr(FdidBrowse.Cells[0,RowVar])
        else
          WhereString := WhereString + ' OR PERS.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;

function TPersCondForm.GetFdidCheckCount: Integer;
Var FdidTotal  : Integer;
    RowVar     : Integer;
    CheckValue : Boolean;
begin
  FdidTotal := 0;
  For RowVar := 0 to FdidBrowse.RowCount-1 do begin
    FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (FdidBrowse.Cells[0,RowVar] = '') then begin
      FdidTotal := FdidTotal + 1;
    end;
  end;
  GetFdidCheckCount := FdidTotal;
end;

function TPersCondForm.GetPersFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue and Not (alltrim(FdidBrowse.Cells[0,RowVar]) = '') then begin
        WhereString := WhereString + ' OR PERSFDID.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetPersFdidWhere := WhereString;
  end else
    GetPersFdidWhere := '';
end;

function TPersCondForm.GetReportFdidVar: String;
Var RowVar        : Integer;
    CheckValue    : Boolean;
    ReportFdidVar : String;
begin
  ReportFdidVar := '';
  For RowVar := 0 to FdidBrowse.RowCount-1 do begin
    FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (alltrim(FdidBrowse.Cells[0,RowVar]) = '') then 
      ReportFdidVar := FdidBrowse.Cells[0,RowVar]
  end;
  GetReportFdidVar := ReportFdidVar;
end;


function TPersCondForm.GetFdidWhereTable(TableName: String): String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then begin
        WhereString := WhereString + ' OR ' + TableName + '.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhereTable := WhereString;
  end else
    GetFdidWhereTable := '';
end;


function TPersCondForm.GetNFIRSFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then begin
        WhereString := WhereString + ' OR NFIRSMAIN.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetNFIRSFdidWhere := WhereString;
  end else
    GetNFIRSFdidWhere := '';    
end;


function TPersCondForm.GetInvFdidWhere: String;          //this was added for Genesee County
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR INV.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetInvFdidWhere := WhereString;
  end else
    GetInvFdidWhere := '';    
end;

function TPersCondForm.GetPersSelectWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If PersSelectPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to PersSelectBrowse.RowCount-1 do begin
      PersSelectBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR PERS.PERSID = ' + AddExpr(PersSelectBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetPersSelectWhere := WhereString;
  end else
    GetPersSelectWhere := '';    
end;

function TPersCondForm.GetFdidCompIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  if not TypePanel.Visible then
    exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERSCOMP.FDIDCOMPID = ' + pkValue(FdidCompBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetFdidCompIDWhere := WhereString;
end;

function TPersCondForm.GetFdidCompID02210Where: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  if not TypePanel.Visible then
    exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.FDIDCOMPID = ' + pkValue(FdidCompBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetFdidCompID02210Where := WhereString;
end;

function TPersCondForm.GetPersTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not TypePanel.Visible then
    exit;  
  For RowVar := 0 to PersTypeBrowse.RowCount-1 do begin
    PersTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then begin
      WhereString := WhereString + ' OR PERS.PERSTYPEID = ' + pkValue(PersTypeBrowse.Cells[0,RowVar]);
    end;
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';

  GetPersTypeIDWhere := WhereString;
end;


function TPersCondForm.GetPersPointTypeWhere(mAttTable: String): String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not TypePanel.Visible then
    exit;
  For RowVar :=  PersPointTypeBrowse.FixedRows to PersPointTypeBrowse.RowCount-1 do begin
    PersPointTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then
      WhereString := WhereString + ' OR '+mAttTable+'.PERSPOINTTYPEID = ' + pkValue(PersPointTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersPointTypeWhere := WhereString;
end;

function TPersCondForm.GetPersMedIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PersMedBrowse.RowCount-1 do begin
    PersMedBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERSMED.PERSMEDID = ' + pkValue(PersMedBrowse.Cells[0,RowVar]);
  end;
  If (WhereString = '') then
    WhereString := '1=1'
  else
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersMedIDWhere := WhereString;
end;

function TPersCondForm.GetPersMedHistIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PersMedBrowse.RowCount-1 do begin
    PersMedBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERSMEDHIST.PERSMEDID = ' + pkValue(PersMedBrowse.Cells[0,RowVar]);
  end;
  If (WhereString = '') then
    WhereString := '1=1'
  else
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersMedHistIDWhere := WhereString;
end;


function TPersCondForm.GetPersTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersTypeBrowse.RowCount-1 do begin
    PersTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

function TPersCondForm.GetPersRankList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankBrowse.RowCount-1 do begin
    PersRankBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersRankBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;


function TPersCondForm.GetPersRankIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankBrowse.RowCount-1 do begin
    PersRankBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then
      WhereString := WhereString + ' OR PERS.PERSRANKID = ' + pkValue(PersRankBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersRankIDWhere := WhereString;
end;

function TPersCondForm.GetPersDriverIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not PersDriverPanel.Visible then
    exit;
  For RowVar := 0 to PersDriverBrowse.RowCount-1 do begin
    PersDriverBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then
      WhereString := WhereString + ' OR PERS.PERSDRIVERID = ' + pkValue(PersDriverBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersDriverIDWhere := WhereString;
end;


function TPersCondForm.GetFdidCompStringList: TStringList;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
    l          : TStringList;

begin
  l := TStringList.Create;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      l.Add(FdidCompBrowse.Cells[2,RowVar]) ;

  end;
  result := l;

end;

function TPersCondForm.GetFdidCompList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
          RetVal := RetVal + FdidCompBrowse.Cells[2,RowVar] + ', '
    end;
  If At(',',RetVal) > 0 then
      Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

function TPersCondForm.GetPersStatList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to PersStatBrowse.RowCount-1 do begin
    PersStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersStatBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

function TPersCondForm.GetAssList : String;                     //for snyder 3-30-16
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to AssBrowse.RowCount-1 do begin
    AssBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + AssBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;

end;

function TPersCondForm.GetPersStationList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to PersStationBrowse.RowCount-1 do begin
    PersStationBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersStationBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

function TPersCondForm.GetPersOrder: String;
begin
  If IDNumber.Checked or PersCodeNum.Checked then
    GetPersOrder := 'ID Number'
  else if LastName.Checked then
    GetPersOrder := 'Last Name, First'
  else if TotalPts.Checked then
    GetPersOrder := 'Total Points, Descending'
  else if Percentage.Checked then
    GetPersOrder := 'Percentage, Descending'
  else if Yos.Checked then
    GetPersOrder := 'Years of Service, Descending'
  else if ManpowerHoursRadio.Checked then
    GetPersOrder := 'Manpower Hours, Descending'
  else if DobCheck.Checked then
    GetPersOrder:= ' Date of Birth'
  else
    GetPersOrder := 'None selected';
end;

function TPersCondForm.GetPersStatIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
  begin
  WhereString := '';
  For RowVar := 0 to PersStatBrowse.RowCount-1 do begin
    PersStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (anystrtoint(PersStatBrowse.Cells[0,RowVar])>0) then begin
      WhereString := WhereString + ' OR PERS.PERSSTATID = ' + PersStatBrowse.Cells[0,RowVar];
    end;
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersStatIDWhere := WhereString;
end;

function TPersCondForm.GetPersFdidPersStatIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
  begin
  WhereString := '';
  For RowVar := 0 to PersStatBrowse.RowCount-1 do begin
    PersStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (anystrtoint(PersStatBrowse.Cells[0,RowVar])>0) then
      WhereString := WhereString + ' OR PERSFDID.PERSSTATID = ' + PersStatBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersFdidPersStatIDWhere := WhereString;
end;


function TPersCondForm.GetAssIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
  begin
  WhereString := '';
end;

function TPersCondForm.GetHasImageWhere: String;
Var WhereString : String;
begin
  WhereString := '';
    If HasImageCheckBox.State = cbchecked then
      WhereString := WhereString + ' PERS.IMAGELISTID IS NOT NULL '
    else
      WhereString := WhereString;

   GetHasImageWhere := WhereString;
end;

function TPersCondForm.GetPersStationIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PersStationBrowse.RowCount-1 do begin
    PersStationBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (anystrtoint(PersStationBrowse.Cells[0,RowVar])>0) then
      WhereString := WhereString + ' OR PERS.DISPLOCID = ' + PersStationBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersStationIDWhere := WhereString;
end;

procedure TPersCondForm.EnableSave(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;


function TPersCondForm.SqlWhereClause: String;
Var WhereString        : String;
    PersCompIDString   : String;
    FdidString         : String;
    SchdSubTypeString  : String;
    PersTypeIDString   : String;
    AssIDString        : String;
    JoinVar            : String;
    PersStatIDString   : String;
    HasImageString     : String;
    PersStationIDString: String;
    PersRankIDString   : String;
    PersDriverIDString : String;
    PersSelectString   : String;
    AwardTypeString    : String;
begin
  JoinVar             := '';
  FdidString          := GetFdidWhere;
  AssIDString         := GetAssIDWhere;
  PersCompIDString    := GetFdidCompIDWhere;
  PersTypeIDString    := GetPersTypeIDWhere;
  PersStatIDString    := GetPersStatIDWhere;
  SchdSubTypeString   := GetSchdSubTypeWhere;
  HasImageString      := GetHasImageWhere;
  PersRankIDString    := GetPersRankIDWhere;
  PersDriverIDString  := GetPersDriverIDWhere;
  PersSelectString    := GetPersSelectWhere;
  PersStationIDString := GetPersStationIDWhere;

  If AnyStrToInt(PersIDField.Value) > 0 then
    WhereString := ' WHERE PERS.PERSID = ' + PersIDField.Value
  else if AttendField.Checked then begin
    WhereString := ' WHERE PERS.ATTEND = ' + AddExpr('Y');
    If Not (FdidString = '') then
      WhereString := WhereString + ' AND ' + FdidString;
  end else begin
    WhereString := ' WHERE (1=1) ';
    If Not (PersTypeIDString = '') then
      WhereString := WhereString + ' AND ' + PersTypeIDString;

    If Not (PersCompIDString = '') then
      WhereString := WhereString + ' AND ' + PersCompIDString;

    If Not (SchdSubTypeString= '') then
      Result := Result + ' AND ' + SchdSubTypeString;

    If Not (PersStatIDString = '') then
      WhereString := WhereString + ' AND ' + PersStatIDString;

    If Not (PersStationIDString = '') then
      WhereString := WhereString + ' AND ' + PersStationIDString;

    If Not (HasImageString = '') then
      WhereString := WhereString + ' AND ' + HasImageString;

    If Not (PersRankIDString = '') then
      WhereString := WhereString + ' AND ' + PersRankIDString;

    If Not (PersDriverIDString = '') then
      WhereString := WhereString + ' AND ' + PersDriverIDString;

    If Not (PersSelectString = '') then
      WhereString := WhereString + ' AND ' + PersSelectString;

    If Not (AssIDString = '') then
      WhereString := WhereString + ' AND ' + AssIDString;

    If Not (FdidString = '') and Not (FSysRepManForm.ASysRep.ReportCode = 'HFDPERSSTATSREP')
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'HFDDRILLREP')
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'HFDPERSNFIRSATTMONTH')
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'HFDRETENTIONREP')
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'HFDPERSRESPREP')       // Harford
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'LCFRINVSERVREPADMIN')  // Loudoun
                             and Not (FSysRepManForm.ASysRep.ReportCode = 'LCFRSERVREPA') then     // Loudoun
       WhereString := WhereString + ' AND ' + FdidString;

    If Not (UnitNumfield.Value = '') then
      WhereString := WhereString + ' AND PERS.UNITNUM = ' + AddExpr(UnitNumField.Value);

    If Not (SchdShiftIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDSHIFTID = ' + pkValue(SchdShiftIDField.Value);

    If Not (SchdLocIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDLOCID = ' + pkValue(SchdLocIDField.Value);

    If Not (SchdRankIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDRANKID = ' + pkValue(SchdRankIDField.Value);
      
    If Not (AwardTypeField.Value = '') then
      WhereString := WhereString + ' AND PERSAWARDTYPE.PERSAWARDTYPEID = ' + pkValue(AwardTypeField.Value);

    If Not (PersCompIDString = '') and Not (FSysRepManForm.ASysRep.ReportCode = 'RHFDPPCREP') then
      JoinVar := ' INNER JOIN PERSCOMP ON (PERSCOMP.PERSID = PERS.PERSID) ';
  end;
  result :=  JoinVar + WhereString;
end;

function TPersCondForm.GetSchdSubTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to SchdSubTypeBrowse.RowCount-1 do begin
    SchdSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (SchdSubTypeBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR SCHDSUBTYPE.CODE = ' + AddExpr(SchdSubTypeBrowse.Cells[2,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetSchdSubTypeWhere := WhereString;
end;

 //Function written specifically for the centerville payroll export reports , dont judge
function TPersCondForm.GetSchdSubTypeWhereNI: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to SchdSubTypeBrowse.RowCount-1 do begin
    SchdSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (SchdSubTypeBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR NISTYPE.CODE = ' + AddExpr(SchdSubTypeBrowse.Cells[2,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetSchdSubTypeWhereNI := WhereString;
end;

function TPersCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder;
end;

function TPersCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

procedure TPersCondForm.InvBrowseCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TPersCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

procedure TPersCondForm.NITRAINCATTYPEFieldSuccessfulValidate(Sender: TObject);
begin
  LoadTrainCAT;
end;

Procedure TPersCondForm.LoadTrainCAT;
Var RowNum : Integer;
begin
  TrainCatBrowse.clear;
  TrainCatBrowse.ColCount      := 5;
  TrainCatBrowse.RowCount      := 2;
  TrainCatBrowse.ColWidths[00] := 001;
  TrainCatBrowse.ColWidths[01] := 020;
  TrainCatBrowse.ColWidths[02] := 100;
  TrainCatBrowse.ColWidths[03] := 300;
  TrainCatBrowse.ColWidths[04] := 400;

  TrainCatBrowse.Cells[0,0] := '';
  TrainCatBrowse.Cells[1,0] := '';
  TrainCatBrowse.Cells[2,0] := 'Code';
  TrainCatBrowse.Cells[3,0] := 'Description';
  TrainCatBrowse.Cells[4,0] := 'Type';
  TrainCatBrowse.FixedRows  := 1;

  TrainCatBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                    := 1;

  if NITRAINCATTYPEField.Value = '' then
    Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR, NITRAINCATTYPE.CODE NITRAINCATTYPECODE ' +
                                 'FROM NITRAINCAT1 ' +
                                 'LEFT JOIN NITRAINCATTYPE ON (NITRAINCAT1.NITRAINCATTYPEID = NITRAINCATTYPE.NITRAINCATTYPEID) ' +
                                 'ORDER BY NITRAINCATTYPE.CODE, NITRAINCAT1.CODE')
  else
    Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR, NITRAINCATTYPE.CODE NITRAINCATTYPECODE ' +
                                 'FROM NITRAINCAT1 ' +
                                 'LEFT JOIN NITRAINCATTYPE ON (NITRAINCAT1.NITRAINCATTYPEID = NITRAINCATTYPE.NITRAINCATTYPEID) ' +
                                 ' WHERE NITRAINCAT1.NITRAINCATTYPEID = ' + AddExpr(NITRAINCATTYPEField.Value) +
                                 'ORDER BY NITRAINCATTYPE.CODE, NITRAINCAT1.CODE');

  While Not A('NITRAINCAT1').Eof do begin
    TrainCatBrowse.Cells[0,RowNum] := Getfield('NITRAINCAT1','NITRAINCAT1ID').AsString;
    TrainCatBrowse.AddCheckBox(1,RowNum,false,false);
    TrainCatBrowse.Cells[2,RowNum] := Getfield('NITRAINCAT1','CODE').AsString;
    TrainCatBrowse.Cells[3,RowNum] := Getfield('NITRAINCAT1','DESCR').AsString;
    TrainCatBrowse.Cells[4,RowNum] := Getfield('NITRAINCAT1','NITRAINCATTYPECODE').AsString;
    If (RowNum > 0) then
      TrainCatBrowse.RowCount := TrainCatBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NITRAINCAT1').Skip(1);
  end;
  CloseApollo('NITRAINCAT1');
  TrainCatBrowse.RowCount := TrainCatBrowse.RowCount-1;  
end;

procedure TPersCondForm.BackColorButtonClick(Sender: TObject);
begin
  If ColorDialog1.Execute then begin
    IDColorField.Text := colortostring(ColorDialog1.Color);
  end;
end;

function TPersCondForm.CheckTrainCatBrowse(NITrainCAT1ID: String): Boolean;
Var RowNum     : Integer;
    Form       : TForm;
    RetVal     : Boolean;
    CheckValue : Boolean;
begin
  RetVal := false;
  For RowNum := 1 to TrainCATBrowse.RowCount do begin
    TrainCATBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue and (TrainCATBrowse.Cells[0,RowNum] = NITrainCAT1ID) then begin
      RetVal := true;
      break;
    end;
  end;
  CheckTrainCatBrowse := RetVal;
end;

function TPersCondForm.CheckNISTypeBrowse(NISTypeID: String; checkAll: Boolean): Boolean;
Var RowNum     : Integer;
    Form       : TForm;
    RetVal     : Boolean;
    CheckValue : Boolean;
begin
  RetVal := false;
  For RowNum := 0 to NISTypeBrowse.RowCount do begin
    NISTypeBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    //checkAll flags that no box was checked so all should display
    If (CheckValue or checkAll) and (NISTypeBrowse.Cells[0,RowNum] = NISTypeID) then begin
      RetVal := true;
      break;
    end;
  end;
  CheckNISTypeBrowse := RetVal;
end;

function TPersCondForm.CheckNIPTypeBrowse(NIPTypeID: String; checkAll: Boolean): Boolean;
Var RowNum     : Integer;
    Form       : TForm;
    RetVal     : Boolean;
    CheckValue : Boolean;
begin
  RetVal := false;
  For RowNum := 0 to NIPTypeBrowse.RowCount do begin
    NIPTypeBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    //checkAll flags that no box was checked so all should display
    If (CheckValue or checkAll) and (NIPTypeBrowse.Cells[0,RowNum] = NIPTypeID) then begin
      RetVal := true;
      break;
    end;
  end;
  CheckNIPTypeBrowse := RetVal;
end;

function TPersCondForm.CountTrainCatBrowse: Integer;
Var RowNum     : Integer;
    CountVar   : Integer;
    CheckValue : Boolean;
begin
  CountVar := 0;
  For RowNum := 1 to TrainCATBrowse.RowCount do begin
    CheckValue := False;
    TrainCATBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then 
      CountVar := CountVar + 1;
  end;
  CountTrainCatBrowse := CountVar;
end;

function TPersCondForm.CountNISTypeBrowse(flag:Boolean): Integer;
Var RowNum     : Integer;
    CountVar   : Integer;
    CheckValue : Boolean;
    TotalValue : Integer; //Gets the total amount regardless of box checked
begin
  CountVar   := 0;
  TotalValue := 0;
  For RowNum := 0 to NISTypeBrowse.RowCount do begin
    NISTypeBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    if (NISTypeBrowse.Cells[0,RowNum] <> '') then begin
        TotalValue := TotalValue + 1;
        If CheckValue then
            CountVar := CountVar + 1;
    end;
  end;
  if flag then
      CountNISTypeBrowse := TotalValue
  else
      CountNISTypeBrowse:= CountVar;
end;

function TPersCondForm.CountNIPTypeBrowse(flag:Boolean): Integer;
Var RowNum     : Integer;
    CountVar   : Integer;
    CheckValue : Boolean;
    TotalValue : Integer; //Gets the total amount regardless of box checked
begin
  CountVar   := 0;
  TotalValue := 0;
  For RowNum := 0 to NIPTypeBrowse.RowCount do begin
    NIPTypeBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    if (NIPTypeBrowse.Cells[0,RowNum] <> '') then begin
        TotalValue := TotalValue + 1;
        If CheckValue then
            CountVar := CountVar + 1;
    end;
  end;

  if flag then
      CountNIPTypeBrowse := TotalValue
  else
      CountNIPTypeBrowse:= CountVar;
end;


Procedure TPersCondForm.LoadNITrainCatReqBrowse;
begin
  NITrainCatReqBrowse.clear;
  NITrainCatReqBrowse.ColCount   := 0;
  NITrainCatReqBrowse.RowCount   := 0;
  NITrainCatReqBrowse.ClearColumns;
  NITrainCatReqBrowse.RowCount   := NITrainCatReqBrowse.FixedRows;

  NITrainCatReqBrowse.SetColumn('NITRAINCATREQID','NITRAINCATREQID', 001);
  NITrainCatReqBrowse.SetColumn('DESCR',          'Requirement',     450);

  NITrainCatReqBrowse.SetValue('NITRAINCATREQID','');
  NITrainCatReqBrowse.SetValue('DESCR',          '<Not Selected>');
  

  Open_Query('NITRAINCATREQ',false,'SELECT * FROM NITRAINCATREQ ORDER BY FDID, CODE');
  While Not A('NITRAINCATREQ').Eof do begin
    NITrainCatReqBrowse.SetValue('NITRAINCATREQID',GetField('NITRAINCATREQ','NITRAINCATREQID').AsString);
    NITrainCatReqBrowse.SetValue('DESCR',          GetField('NITRAINCATREQ','DESCR').AsString);
    A('NITRAINCATREQ').Skip(1);
  end;
  CloseApollo('NITRAINCATREQ');
end;


procedure TPersCondForm.NITrainCatReqBrowseClick(Sender: TObject);
Var RowNum          : Integer;
    NITrainCatReqID : String;
begin
  SHowAllTrainCatButtonClick(Self);

  For RowNum := 1 to TrainCATBrowse.RowCount-1 do begin
    TrainCatBrowse.AddCheckBox(1,RowNum,false,false);
  end;

  NITrainCatReqID := NITrainCatReqBrowse.GetValue('NITRAINCATREQID');
  Open_Query('NITRAINCATREQSET',false,'SELECT * FROM NITRAINCATREQSET WHERE NITRAINCATREQID = ' + PkValue(NITrainCatReqID));
  While Not A('NITRAINCATREQSET').Eof do begin
    For RowNum := 1 to TrainCATBrowse.RowCount do begin
      If TrainCATBrowse.Cells[0,RowNum] = GetField('NITRAINCATREQSET','NITRAINCAT1ID').AsString then
        TrainCatBrowse.AddCheckBox(1,RowNum,true,false);
    end;
    A('NITRAINCATREQSET').Skip(1);
  end;
  CloseApollo('NITRAINCATREQSET');
end;

procedure TPersCondForm.TotalPtsClick(Sender: TObject);
begin
  EnableSave(Sender);
end;

procedure TPersCondForm.TrainCATBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TPersCondForm.TrainCATBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var CheckValue : Boolean;
begin
  If (key=VK_SPACE) then begin
    TrainCATBrowse.GetCheckBoxState(1,TrainCATBrowse.Row,CheckValue);
    TrainCATBrowse.SetCheckBoxState(1,TrainCATBrowse.Row,Not CheckValue);
  end;
  If FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TPersCondForm.ClearButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  For RowNum := 1 to TrainCATBrowse.RowCount-1 do begin
    TrainCatBrowse.AddCheckBox(1,RowNum,false,false);
  end;
end;

procedure TPersCondForm.NIPTypeActiveButtonClick(Sender: TObject);
begin
  If NIPTypeActiveButton.Caption = 'Showing All' then
    NIPTypeActiveButton.Caption := 'Showing Active Only'
  else
    NIPTypeActiveButton.Caption := 'Showing All';
  LoadNIPTypeBrowse;
end;

procedure TPersCondForm.NISTypeActiveButtonClick(Sender: TObject);
begin
  If NISTypeActiveButton.Caption = 'Showing All' then
    NISTypeActiveButton.Caption := 'Showing Active Only'
  else
    NISTypeActiveButton.Caption := 'Showing All';
  LoadNISTypeBrowse;
end;

Procedure TPersCondForm.LoadNISTypeBrowse;
Var RowNum : Integer;
begin
  NISTYPEBrowse.clear;
  NISTYPEBrowse.ColCount      := 9;
  NISTYPEBrowse.RowCount      := 3;

  NISTYPEBrowse.ColWidths[00] := 001;
  NISTYPEBrowse.ColWidths[01] := 020;
  NISTYPEBrowse.ColWidths[02] := IIf(MultiFdid,060,0);
  NISTYPEBrowse.ColWidths[03] := 150;
  NISTYPEBrowse.ColWidths[04] := 100;
  NISTYPEBrowse.ColWidths[05] := 250;
  NISTYPEBrowse.ColWidths[06] := 110;
  NISTYPEBrowse.ColWidths[07] := 110;
  NISTYPEBrowse.ColWidths[08] := 910;

  NISTYPEBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NISTYPE',false,'SELECT NISTYPE.DATETIMELAST, NISTYPE.NICOUNT, NIPTYPE.DESCR NIPTYPEDESCR, NIPTYPE.CODE NIPTYPECODE, NISTYPE.NISTYPEID, NISTYPE.FDID, NISTYPE.CODE, NISTYPE.DESCR FROM NISTYPE ' +
                             'LEFT JOIN NIPTYPE ON (NIPTYPE.NIPTYPEID = NISTYPE.NIPTYPEID) ' +
                             IIf(NISTypeActiveButton.Caption = 'Showing All','','WHERE NISTYPE.ACTIVE = ' + AddExpr('Y') + ' ') +
                             'ORDER BY NIPTYPE.CODE, NISTYPE.CODE');
  While Not A('NISTYPE').Eof do begin
    If (secFdid = '') or (secFdid = tdbfield('NISTYPE','FDID')) or (tdbfield('NISTYPE','FDID') = '') then begin
      NISTYPEBrowse.Cells[0,RowNum] := Getfield('NISTYPE','NISTYPEID').AsString;
      NISTYPEBrowse.AddCheckBox(1,RowNum,false,false);
      NISTYPEBrowse.Cells[2,RowNum] := Getfield('NISTYPE','FDID').AsString;
      NISTYPEBrowse.Cells[3,RowNum] := Getfield('NISTYPE','NIPTYPEDESCR').AsString;
      NISTYPEBrowse.Cells[4,RowNum] := Getfield('NISTYPE','CODE').AsString;
      NISTYPEBrowse.Cells[5,RowNum] := Getfield('NISTYPE','DESCR').AsString;
      NISTYPEBrowse.Cells[6,RowNum] := Getfield('NISTYPE','DATETIMELAST').AsString;
      NISTYPEBrowse.Cells[7,RowNum] := Getfield('NISTYPE','NICOUNT').AsString;
      If (RowNum > 0) then
        NISTYPEBrowse.RowCount := NISTYPEBrowse.RowCount + 1;
      RowNum := RowNum + 1;
    end;
    A('NISTYPE').Skip(1);
  end;
  CloseApollo('NISTYPE');
end;

function TPersCondForm.GetNISTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NISTypeBrowse.RowCount-2 do begin
    NISTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.NISTYPEID = ' + PkValue(NISTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetNISTypeWhere := WhereString;
end;

function TPersCondForm.GetNISTypeString: String;
Var RowVar        : Integer;
    CheckValue    : Boolean;
    NISTypeString : String;
begin
  NISTypeString := '';
  For RowVar := 0 to NISTypeBrowse.RowCount-2 do begin
    NISTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      NISTypeString := NISTypeString + NISTypeBrowse.Cells[5,RowVar] + ', ';
  end;
  If Not (NISTypeString = '') then
    NISTypeString := substr(NISTypeString,1,Length(NISTypeString)-2);
  GetNISTypeString := NISTypeString;
end;

Procedure TPersCondForm.LoadNIPTypeBrowse;
Var RowNum : Integer;
begin
  NIPTYPEBrowse.clear;
  NIPTYPEBrowse.ColCount      := 8;
  NIPTYPEBrowse.RowCount      := 3;

  NIPTYPEBrowse.ColWidths[00] := 001;
  NIPTYPEBrowse.ColWidths[01] := 020;
  NIPTYPEBrowse.ColWidths[02] := IIf(MultiFdid,060,0);
  NIPTYPEBrowse.ColWidths[03] := 150;
  NIPTYPEBrowse.ColWidths[04] := 250;
  NIPTYPEBrowse.ColWidths[05] := 110;
  NIPTYPEBrowse.ColWidths[06] := 110;
  NIPTYPEBrowse.ColWidths[07] := 910;

  NIPTYPEBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NIPTYPE',false,'SELECT NIPTYPE.DATETIMELAST, NIPTYPE.NICOUNT, NIPTYPE.DESCR, NIPTYPE.CODE, NIPTYPE.NIPTYPEID, NIPTYPE.FDID FROM NIPTYPE ' +
                             IIf(NIPTypeActiveButton.Caption = 'Showing All','','WHERE NIPTYPE.ACTIVE = ' + AddExpr('Y') + ' ') +
                             'ORDER BY NIPTYPE.DATETIMELAST, NIPTYPE.CODE');
  While Not A('NIPTYPE').Eof do begin
    If (secFdid = '') or (secFdid = tdbfield('NIPTYPE','FDID')) or (tdbfield('NIPTYPE','FDID') = '') then begin
      NIPTYPEBrowse.Cells[0,RowNum] := Getfield('NIPTYPE','NIPTYPEID').AsString;
      NIPTYPEBrowse.AddCheckBox(1,RowNum,false,false);
      NIPTYPEBrowse.Cells[2,RowNum] := Getfield('NIPTYPE','FDID').AsString;
      NIPTYPEBrowse.Cells[3,RowNum] := Getfield('NIPTYPE','CODE').AsString;
      NIPTYPEBrowse.Cells[4,RowNum] := Getfield('NIPTYPE','DESCR').AsString;
      NIPTYPEBrowse.Cells[5,RowNum] := Getfield('NIPTYPE','DATETIMELAST').AsString;
      NIPTYPEBrowse.Cells[6,RowNum] := Getfield('NIPTYPE','NICOUNT').AsString;
      If (RowNum > 0) then
        NIPTYPEBrowse.RowCount := NIPTYPEBrowse.RowCount + 1;
      RowNum := RowNum + 1;
    end;
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');
end;


Procedure TPersCondForm.LoadInvBrowse;
Var RowNum : Integer;
begin
  InvBrowse.clear;
  InvBrowse.ColCount      := 4;
  InvBrowse.RowCount      := 3;

  InvBrowse.ColWidths[00] := 001;
  InvBrowse.ColWidths[01] := 020;
  InvBrowse.ColWidths[02] := 080;
  InvBrowse.ColWidths[03] := 200;

  InvBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INV',false,'SELECT UNITNUM, INVID, DESCR FROM INV WHERE ' + GetFdidSQL('INV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM');
  While Not A('INV').Eof do begin
    InvBrowse.Cells[0,RowNum] := Getfield('INV','INVID').AsString;
    InvBrowse.AddCheckBox(1,RowNum,false,false);
    InvBrowse.Cells[2,RowNum] := Getfield('INV','UNITNUM').AsString;
    InvBrowse.Cells[3,RowNum] := Getfield('INV','DESCR').AsString;
    If (RowNum > 0) then
      InvBrowse.RowCount := InvBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('INV').Skip(1);
  end;
  CloseApollo('INV');
end;


function TPersCondForm.UseLegalPaper: Boolean;
begin
  result := uselegalpapercheckbox.checked;
end;

procedure TPersCondForm.YOSClick(Sender: TObject);
Var MessVar : String;
begin
  If (Now-DateTimeYOSUpdate > 2) then begin
    MessVar := 'It has been ' + FormatFloat('###,##0',Now-DateTimeYOSUpdate) + ' days since the Years of Service has been calculated' + #10#13 +
               'Recalculate and Update Personnel then Years of Service values for all personnel for sorting?  This can take a few minutes  . . . ';
    If BooleanMessageDlg(MessVar) then begin
      UpdatePersYOSValues(SecFdid,False);
      ShowMessage('Complete');
    end;
  end;
  EnableSave(Sender);
end;

function TPersCondForm.HasImage: Boolean;
begin
  result := HasImagecheckbox.checked;
end;

function TPersCondForm.GetInvWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.UNITNUM = ' + AddExpr(InvBrowse.Cells[2,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetInvWhere := WhereString;
end;


function TPersCondForm.GetInvStringList: TStringList;
var RowVar     : Integer;
    CheckValue : Boolean;
begin
  result := TStringList.Create;
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      result.add(InvBrowse.Cells[2,RowVar])
  end;
end;

function TPersCondForm.GetInvString: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    InvString   : String;
begin
  InvString := '';
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      InvString := InvString + InvBrowse.Cells[2,RowVar] + ', ';
  end;
  If (InvString = '') then
    InvString := 'All Units'
  else
    InvString := Substr(InvString,1,Length(InvString)-2);
  GetInvString := InvString;
end;

function TPersCondForm.GetFdidString: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidString  : String;
    DeptName    : String;
begin
  If MultiFdid then begin
    FdidString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      DeptName := alltrim(SqlLookUp(FdidBrowse.Cells[0,RowVar],'FDID','FDID','DEPTNAME'));
      If CheckValue and Not (DeptName = '') then
        FdidString := FdidString + DeptName + ', '; 
    end;
    If (FdidString = '') then
      FdidString := 'All Agencies'
    else
      FdidString := Substr(FdidString,1,Length(FdidString)-2);
    GetFdidString := FdidString;
  end else
    GetFdidString := '';
end;

function TPersCondForm.GetFdidVar: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidString : String;
begin
  If MultiFdid then begin
    FdidString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue and Not (alltrim(FdidBrowse.Cells[0,RowVar]) = '') then
        FdidString := FdidString + FdidBrowse.Cells[0,RowVar] + ', ';
    end;
    If (FdidString = '') then
      FdidString := ''
    else
      FdidString := Substr(FdidString,1,Length(FdidString)-2);
    GetFdidVar := FdidString;
  end else
    GetFdidVar := '';
end;

procedure TPersCondForm.PersIDFieldEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    PersIDField.LookUpCode := 'PERSBYPERSCODE';
  If mfireid = 'HARFO' then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS ' + IIf(PersIDAttendCheck.Checked,'WHERE 1=1','WHERE ATTEND = ' + AddExpr('Y')) + ' AND LNAME IS NOT NULL ORDER BY ' + GlobalPersSort
  else if mfireid = '10700' then begin
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS ' + IIf(PersIDAttendCheck.Checked,'WHERE 1=1','WHERE ATTEND = ' + AddExpr('Y')) + ' AND LNAME IS NOT NULL ORDER BY ' + GlobalPersSort;
  end else if GlobalPersSort <> '' then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + IIf(PersIDAttendCheck.Checked,'',' AND ATTEND = ' + AddExpr('Y')) + ' AND LNAME IS NOT NULL ORDER BY ' + GlobalPersSort
  else
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + IIf(PersIDAttendCheck.Checked,'',' AND ATTEND = ' + AddExpr('Y')) + ' AND LNAME IS NOT NULL';
end;

procedure TPersCondForm.PersIDFieldSetDescription(Sender: TObject);
begin
  SetLastNameFirstNameForLookup(TAlpineLookup(Sender));
end;

procedure TPersCondForm.PersPointRepIDFieldEnter(Sender: TObject);
begin
  PersPointRepIDField.SQLExpr := 'SELECT * FROM PERSPOINTREP WHERE ' + GetFdidSQL('PERSPOINTREP.FDID') + ' ORDER BY DESCR';
end;

class procedure TPersCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    Form               : TForm;
    RowNum             : Integer;
    FdidString         : String;
    FdidCompString     : String;
    DateString         : String;
    PersStatString     : String;
    SchdSubTypeString  : String;
    AssString          : String;
    PersStationString  : String;
    PersTypeString     : String;
    PersRankString     : String;
    SchdTypeString     : String;
    PersOrderString    : String;
    TestDateVar        : TDateTime;
begin
  Form               := GetFormOfType(TPersCondForm);
  DateString         := GetAlpineDateLabel(TPersCondForm(Form).StartDateField.Value,TPersCondForm(Form).EndDateField.Value);
  if TPersCondForm(Form).fdidbrowse.enabled then
    FdidString         := TPersCondForm(Form).GetFdidString
  else
    FdidString         := '';
  FdidCompString     := TPersCondForm(Form).GetFdidCompList;
  PersTypeString     := TPersCondForm(Form).GetPersTypeList;
  PersRankString     := TPersCondForm(Form).GetPersRankList;
  PersStatString     := TPersCondForm(Form).GetPersStatList;
  if mfireid = '15078' then
    AssString          := TPersCondForm(Form).GetAssList
  else
    AssString          :=  '';
  SchdSubTypeString  := TPersCondForm(Form).GetSchdSubTypeString;
  PersStationString  := TPersCondForm(Form).GetPersStationList;
  PersOrderString    := TPersCondForm(Form).GetPersOrder;
  TestDateVar        := TPersCondForm(Form).TestDateField.Value;
  SchdTypeString     := TPersCondForm(Form).GetSchdTypeList;

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency:');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (DateString = '') and TPersCondForm(Form).DatePanel.Visible then begin
    ConditionLabelList.Add('Date Range:');
    ConditionFieldList.Add(DateString);
  end;

  If Not (FdidCompString = '') then begin
    ConditionLabelList.Add('Company:');
    ConditionFieldList.Add(FdidCompString);
  end;

  If Not (SchdSubTypeString = '') then begin
    ConditionLabelList.Add('Reason:');
    ConditionFieldList.Add(SchdSubTypeString);
  end;

  If Not (PersStatString = '') then begin
    ConditionLabelList.Add('Status:');
    ConditionFieldList.Add(PersStatString );
  end;

  If Not (AssString = '') then begin
    ConditionLabelList.Add('Association:');
    ConditionFieldList.Add(AssString );
  end;

  If Not (PersTypeString = '') then begin
    ConditionLabelList.Add('Type:');
    ConditionFieldList.Add(PersTypeString );
  end;

  If Not (SchdTypeString = '') then begin
    ConditionLabelList.Add('Shift Type:');
    ConditionFieldList.Add(SchdTypeString );
  end;

  If Not (PersRankString = '') then begin
    ConditionLabelList.Add('Rank:');
    ConditionFieldList.Add(PersRankString );
  end;

  If TPersCondForm(Form).TestDatePanel.Visible then begin
    ConditionLabelList.Add('Test Date:');
    If TestDateVar > 0 then 
      ConditionFieldList.Add(FormatDateTime('MM/DD/YYYY',TestDateVar))
    else
      ConditionFieldList.Add(FormatDateTime('MM/DD/YYYY',Now));
  end;    

  If Not (PersOrderString = '') then begin
    ConditionLabelList.Add('Order:');
    ConditionFieldList.Add(PersOrderString);
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := BandName.Width - 400;
    ConditionLabel.Width      := 100;
    ConditionLabel.Parent     := BandName;
    ConditionLabel.Caption    := ConditionLabelList[RowNum];
    ConditionLabel.Alignment  := taRightJustify;
    ConditionLabel.Font.Size  := 8;
    ConditionLabel.Font.Name  := 'MS Sans Serif';
    ConditionLabel.Font.style := [fsbold];
    ConditionLabel.Transparent:= true;

    ConditionField            := TQRLabel.Create(Application);
    ConditionField.AutoSize   := false;
    ConditionField.Top        := 2 + (RowNum * 16);
    ConditionField.Left       := BandName.Width - 296;
    ConditionField.Width      := 290;
    ConditionField.Parent     := BandName;
    ConditionField.Caption    := ConditionFieldList[RowNum];
    ConditionField.Alignment  := taLeftJustify;
    ConditionField.Font.Size  := 8;
    ConditionField.Font.Name  := 'MS Sans Serif';
    ConditionField.Font.Style := [];
    ConditionField.Transparent:= true;
  end;
  BandName.Height := IMax(BandName.Height,17 * ConditionFieldList.Count);
end;

function TPersCondForm.GetSchdSubTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to SchdSubTypeBrowse.RowCount-1 do begin
    SchdSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + alltrim(SchdSubTypeBrowse.Cells[2,RowVar]) + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

Procedure TPersCondForm.LoadDispCallTypeBrowse;
Var RowNum : Integer;
begin
  DispCallTypeBrowse.clear;
  DispCallTypeBrowse.ColCount := 6;
  DispCallTypeBrowse.RowCount := 0;

  DispCallTypeBrowse.ColWidths[00] := 001;
  DispCallTypeBrowse.ColWidths[01] := 020;
  DispCallTypeBrowse.ColWidths[02] := 100;
  DispCallTypeBrowse.ColWidths[03] := 175;

  DispCallTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPCALLTYPE',false,'SELECT DISPCALLTYPE.DISPCALLTYPEID, DISPCALLTYPE.CODE, DISPCALLTYPE.DESCR FROM DISPCALLTYPE ' +
                                  'ORDER BY DISPCALLTYPE.SORTORD');
  While Not A('DISPCALLTYPE').Eof do begin
    DispCallTypeBrowse.RowCount := DispCallTypeBrowse.RowCount + 1;
    DispCallTypeBrowse.Cells[0,RowNum] := Getfield('DISPCALLTYPE','DISPCALLTYPEID').AsString;
    DispCallTypeBrowse.AddCheckBox(1,RowNum,false,false);
    DispCallTypeBrowse.Cells[2,RowNum] := Getfield('DISPCALLTYPE','CODE').AsString;
    DispCallTypeBrowse.Cells[3,RowNum] := Getfield('DISPCALLTYPE','DESCR').AsString;

    RowNum := RowNum + 1;
    A('DISPCALLTYPE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
end;

function TPersCondForm.GetDispCallTypeString: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    CallString  : String;
begin
  CallString := '';
  For RowVar := 0 to DispCallTypeBrowse.RowCount-1 do begin
    DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      CallString := CallString + DispCallTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If (CallString = '') then
    CallString := 'All'
  else
    CallString := Substr(CallString,1,Length(CallString)-2);
  GetDispCallTypeString := CallString;
end;

function TPersCondForm.GetSchdTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to SchdTypeBrowse.RowCount-1 do begin
    SchdTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (SchdTypeBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR SCHDHIST.SCHDTYPEID = ' + pkvalue(SchdTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetSchdTypeWhere := WhereString;
end;

function TPersCondForm.GetSchdTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not SchdTypePanel.Visible then
    exit;
  For RowVar := 0 to SchdTypeBrowse.RowCount-1 do begin
    SchdTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + SchdTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;



initialization
  RegisterReport(TPersRepForm,                  'PERSREP',                 'Personnel Summary Report',                      'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersHistRepForm,              'PERSHISTREP',             'Personnel Event History',                       'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersHistDetailRepForm,        'PERSHISTDETAILREPALL',    'Personnel Detail Event History Report',         'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPers1RepForm,                 'PERS1REP',                'Personnel List',                                'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL','SCHDPANEL']);
  RegisterReport(TPersRespDataRepForm,          'PERSRESPDATAREP',         'Personnel Responder Default Settings',          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersDeceasedRepForm,          'PERSDECEASEDREP',         'Personnel Deceased Report',                     'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TDriversLicRep,                'DRIVERSLICREP',           'Driver License Plate Report',                   'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersHandRepForm,              'PERSHANDREP',             'Personnel Hand Reader',                         'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersLabelForm,                'PERSLABEL',               'Personnel Mailing Labels',                      'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL','SCHDPANEL']);
  RegisterReport(TPersEnvelopForm,              'PERSENVELOP',             'Personnel Envelop #10',                         'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersDriverRepForm,            'PERSDRIVERREP',           'Personnel Driver License Status',               'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersMedRepForm,               'PERSMEDREP',              'Personnel Medical Status',                      'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSMEDPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','TESTDATEPANEL']);
  RegisterReport(TPersMedRangeRepForm,          'PERSMEDRANGEREP',         'Personnel Medical Status Range',                'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSMEDPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','DATEPANEL']);
  RegisterReport(TPersSingleMedRepForm,         'PERSSINGLEMEDREP',        'Personnel Medical Status Millenium',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSMEDPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','TESTDATEPANEL']);
  RegisterReport(TPersNiEvAttRepForm,           'PERSNIEVATT',             'Personnel Training Status Listing',             'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','FDIDCOMPPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','TRAINCATPANEL']);
  RegisterReport(TPersEMSAttRepForm,            'PERSEMSATTREP',           'Personnel EMS Attendance History',              'EMS',   'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);
  RegisterReport(TPersTrainHistRepForm,         'PERSTRAINHISTREP',        'Personnel Training History',                    'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','SCHDPANEL']);
  RegisterReport(TPersTrainGridRepForm,         'PERSTRAINGRIDREP',        'Personnel Training Status Grid by Length',      'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','TRAINCATPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersNIEventCountRepForm,      'PERSNIEVENTCOUNTREP',     'Personnel Non Incident Secondary Counts (Grid)','NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','OPTIONSPANEL','NISTYPEPANEL']);
  RegisterReport(TPersNIPTypeEventCountRepForm, 'PERSNIPTYPEEVENTCOUNTREP','Personnel Non Incident Primary Counts (Grid)',  'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','OPTIONSPANEL','NIPTYPEPANEL']);

  RegisterReport(TPersStatHistRepForm,          'PERSSTATHISTREP',         'Years of Service',                              'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersInvQualRepForm,           'PERSINVQUALREP',          'Qualified Drivers Grid',                        'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSDRIVERPANEL','PERSRANKPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','LEGALPAPERPANEL','PERSSELECTPANEL','INVPANEL']);
  RegisterReport(TPersNIPrimeRepForm,           'PERSNIPRIMEREP',          'Non Incident History by Type',                  'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersPointRepForm,             'PERSPOINTREP',            'Personnel Statistical Column Reports',          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSPOINTREPPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersPhoneListForm,            'PERSPHONELIST',           'Personnel Phone List',                          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','PERSSELECTPANEL','ASSPANEL']);
  RegisterReport(TPersEmergPhoneListForm,       'PERSEMERGPHONELIST',      'Personnel Emergency Contact Phone List',        'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','PERSSELECTPANEL','ASSPANEL']);

  RegisterReport(TPersDirectRepForm,            'PERSDIRECTREP',           'Personnel Address Directory',                   'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersRosterForm,               'PERSROSTER',              'Personnel Roster Sign Sheet',                   'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','FDIDCOMPPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSROSTERPANEL','SORTPANEL','SCHDPANEL']);
  RegisterReport(TPersRosterBoxForm,            'PERSROSTERBOX',           'Personnel Roster Box Sign Sheet',               'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','FDIDCOMPPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSROSTERPANEL','SORTPANEL','SCHDPANEL']);
  RegisterReport(TPersNfirsHandRepForm,         'PERSNFIRSHANDREP',        'NFIRS Attendance - Hand Key Info',              'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersNIAttRepForm,             'PERSNIATTREP',            'Non Incidents by Secondary Type',               'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','NISTYPEPANEL']);
  RegisterReport(TPersNIAppRepForm,             'PERSNIAPPREP',            'Apparatus Usage for Non Incident',              'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','NISTYPEPANEL']);

  RegisterReport(TPersSchdAssRepForm,           'PERSSCHDASSREP',          'Personnel Schedule Assignment',                 'SCHD',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','SCHDPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersSchdHourRepForm,          'PERSSCHDHOURREP',         'Scheduling Hour Summary by Staff',              'SCHD',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','SCHDPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);
  RegisterReport(TPersSchdFPPayRollRepForm,     'PERSSCHDFPPAYROLLREP',    'Scheduling Hour Payroll Report by Staff',       'SCHD',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','SCHDPANEL','SCHDTYPEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);
  RegisterReport(TPersSchdTypeSummRepForm,      'PERSSCHDTYPESUMMREP',     'Scheduling Hour Type Summary by Staff',         'SCHD',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','SCHDPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);
  RegisterReport(TPersSchdProfileRepForm,       'PERSSCHDPROFILEREP',      'Scheduling Profile Chart Report',               'SCHD',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL']);

  RegisterReport(TFingerRepForm,                   'FINGERREP',               'Finger Enrollment (Targus Version)',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TFingerGBRepForm,                 'FINGERGBREP',             'Finger Enrollment (Griaule Version)',           'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersAppUseRepForm,               'PERSAPPUSEREP',           'Apparatus Usage by Personnel',                  'APP',   'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','INVPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersAppLengthRepForm,            'PERSAPPLENGTHREP',        'Apparatus Usage Length by Personnel',           'APP',   'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','INVPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersDriveHistRepForm,            'PERSDRIVEHISTREP',        'Personnel Driving History',                     'APP',   'PERSCOND','Alpine Software Corporation',['FDIDPANEL','PERSCODEPANEL','DATEPANEL','INVPANEL']);
  RegisterReport(TPersTrainExpRepForm,             'PERSTRAINEXPREP',         'Personnel Training Status Report',              'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','TRAINCATPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersNIAttGridRepForm,            'PERSNIATTGRIDREP',        'Personnel Event Attendance Grid',               'NI',    'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','NISTYPEPANEL']);
  RegisterReport(TPersNfirsAttGridRepForm,         'PERSNFIRSATTGRIDREP',     'Personnel Incident Attendance Grid',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);
  RegisterReport(TPersProfileRepForm,              'PERSPROFILEREP',          'Biographical Profile Chart Report',             'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL']);
  RegisterReport(TPersBirthdayRepForm,             'PERSBIRTHDAYREP',         'Birthdays by Month',                            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersBirthday21RepForm,           'PERSBIRTHDAY21REP',       'Birthdays Under 21',                            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TDayNightPercentReportForm,       'DAYNIGHTPERCENT',         'Day/Night Incident Response Percentages',       'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','SchdShiftNameBrowsePanel','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TPersInvRepForm,                  'PERSINVREP',              'Inventory Assigned to Personnel',               'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL', 'FDIDCOMPPANEL','SORTPANEL','PERSCODEPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersMaskRepForm,                 'PERSMASKREP',             'Personnel Mask Size Listing',                   'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersTeamGridRepForm,             'PERSTEAMGRIDREP',         'Personnel Team Report Grid',                    'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL']);

  RegisterReport(TSuffolkPersStatHistRepForm,      'SUFPERSSTATHISTREP',          'Suffolk Years of Service Report',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersNfirsAttTaskRepForm,         'PERSNFIRSATTTASKREP',         'Personnel Incident Attendance Task Summary', 'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TPersNfirsAttInChargeRepForm,     'PERSNFIRSINCHARGEREP',        'Personnel Member In Charge Summary',         'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TPersNfirsAttPercRepForm,         'PERSNFIRSATTPERCREP',         'Personnel Incident Attendance Perc. Summary','PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersNfirsAttPersPointTypeRepForm,'PERSNFIRSATTPERSPOINTTYPEREP','Personnel NFIRS Attendance by Point Type ',  'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);

  RegisterReport(TPersSubTypeRepForm,           'PERSSUBTYPEREP',      'Personnel Type Summary Report',              'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','FDIDCOMPPANEL','PERSSTATPANEL']);
  RegisterReport(TPersSubStatRepForm,           'PERSSUBSTATREP',      'Personnel Status Summary Report',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','FDIDCOMPPANEL','PERSTYPEPANEL']);

  RegisterReport(TPersNfirsAttMonthRepForm,     'PERSNFIRSATTMONTHREP','Personnel Incident Attendance by Month',     'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);

  RegisterReport(TPersInvInspectForm,            'PERSINVINSPECT',   'Personnel Assigned Inventory - Inspection',  'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersInvAssignedForm,           'PERSINVASSIGNED',  'Personnel Assigned Inventory',               'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersAppUseNIRepForm,           'PERSAPPUSENIREP',  'Apparatus Usage by Personnel - Non-Incident','APP',   'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','NISTYPEPANEL','DATEPANEL','INVPANEL']);
  RegisterReport(TDayPercentReportForm,          'DAYPERCENT',       'Day Percentages',                            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TNightPercentReportForm,        'NIGHTPERCENT',     'Night Percentages',                          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TPersEmailForm,                 'PERSEMAIL',        'Personnel Email List',                       'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TMemberProfileRepForm,          'PERSMEMBERPROFILE','Personnel Member Profile Report',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);
  RegisterReport(TPersTrainTotalRepForm,         'PERSTRAINTOTALREP','Personnel Total Training Hours',             'PERS',  'PERSCOND','Alpine Software Corporation',['DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TNemsisPersRepForm,             'NEMSISPERSREP',    'Nemsis Crew Role Personnel Summary',         'NEMSIS','PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL']);

  RegisterReport(TResponderAppRepForm,           'RESPAPPUSAGEREP',  'Responder App Usage Report',                'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','SORTPANEL']);
  RegisterReport(TPersCancerRepForm,             'PERSCANCERREP',    'NYS Disability Act Cancer Report',          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSRANKPANEL','PERSCODEPANEL','FDIDCOMPPANEL','SORTPANEL','PERSSELECTPANEL']);

  RegisterReport(TPersSchdHistRepForm,           'PERSSCHDHIST',     'Personnel Kiosk Sign In History',           'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersSchdTotalRepForm,          'PERSSCHDTOTAL',    'Personnel Kiosk Sign In Totals',            'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersKioskSelfInspectionRepForm,'PERSKIOSKINSPREP', 'Inventory Kiosk Self Inspection Status',    'PERS',  'PERSCOND','Alpine Software Corporation',['TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);

  RegisterReport(TPersAttConflictRepForm,        'PERSATTCONFLICREP','Personnel Attendance Conflict Audit Report','PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','DATEPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','RETENTIONPANEL']);

  RegisterReport(TPersAwardHistRepForm,          'PERSAWARDHISTREP',    'Personnel Award History Report',          'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL', 'DATEPANEL','AWARDTYPEPANEL', 'PERSSTATPANEL', 'PERSTYPEPANEL', 'PERSCODEPANEL', 'SORTPANEL']);
  RegisterReport(TDayNightOverNightRepForm,      'DAYNIGHTOVERNIGHTREP','Day/Night/Overnight Incident Percentages','PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TPersRankRepForm,               'PERSOFFRANKREP',      'Personnel Office and Rank History',       'PERS',  'PERSCOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL']);

end.
