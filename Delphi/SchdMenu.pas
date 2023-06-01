unit SchdMenu;
 
interface

uses
  BDE,
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  ExtCtrls,
  Buttons,
  cusbtn,
  Grids,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  menus,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  ALPINEDATETIME,
  AlpineBase,
  AdvGroupBox,
  AdvObj;

type
  TSchdMenuForm  = class(TAlpineBaseForm)
    ButtonBox: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    PaidBox: TGroupBox;
    Label23: TLabel;
    Label25: TLabel;
    ShiftLabel: TLabel;
    DateBox: TGroupBox;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    OvcController1: TOvcController;
    Label1: TLabel;
    SchdShiftIDField: TAlpineLookup;
    PreviewButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    PrintButton: TAlpineGlowButton;
    ReportGrid: TAlpineTMSStringGrid;
    PersIDField: TAlpineLookup;
    SchdLocIDField: TAlpineLookup;
    SchdRankIDField: TAlpineLookup;
    InitDate: TAlpineDateTime;
    FinalDate: TAlpineDateTime;
    FdidBox: TGroupBox;
    FdidField: TAlpineLookup;
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure ReportGridClick(Sender: TObject);
    procedure PreviewButtonClick(Sender: TObject);
  private
    FDate: TDateTime;
    procedure LoadReportGrid;
  public
    constructor Create( AOwner: TComponent ); overload; override;
    constructor Create( AOwner: TComponent; Date: TDateTime); reintroduce; overload;
  end;

var
  SchdMenuForm: TSchdMenuForm;

implementation

uses GenFunc,
     SchdRoster,
     SchdRosterUnit,
     SchdDailyLeave,
     SchdCustRoster,
     SchdSet,
     CommonCrystal,
     commonvar,
     R1Report,
     C4Report,
     C6Report;

{$R *.DFM}

constructor TSchdMenuForm.Create( AOwner: TComponent; Date: TDateTime);
begin
  FDate := Date;
  inherited Create( AOwner );
end;

constructor TSchdMenuForm.Create( AOwner: TComponent );
begin
  FDate := Now;
  inherited Create( AOwner );
end;

procedure TSchdMenuForm.FormCreate(Sender: TObject);
begin
  If (mFireid = '25127') or (mFireid = '25119') or (mFireid = '25115') or (mFireid = '25135') or (mFireid = '23123') then
    PaidBox.Visible := False
  else
    PaidBox.Visible := True;
  LoadReportGrid;
  FdidField.Value           := secFdid;
  FdidField.SQLExpr         := GetFdidSQLExpr;
  FdidField.LookupFormWidth := 320;
  FdidBox.Visible           := MultiFDID;
end;

procedure TSchdMenuForm.LoadReportGrid;
begin
  ReportGrid.SetColumn('REPCODE','REPCODE',001);
  ReportGrid.SetColumn('REPNUM', 'ID#',    065);
  ReportGrid.SetColumn('TITLE',  'Title',  300);

  ReportGrid.SetValue('REPCODE', 'C1');
  ReportGrid.SetValue('REPNUM',  'C1');
  ReportGrid.SetValue('TITLE',   'Duty Roster: By Station');

  ReportGrid.SetValue('REPCODE', 'C2');
  ReportGrid.SetValue('REPNUM',  'C2');
  ReportGrid.SetValue('TITLE',   'Duty Roster: By Unit');

  ReportGrid.SetValue('REPCODE', 'C3');
  ReportGrid.SetValue('REPNUM',  'C3');
  ReportGrid.SetValue('TITLE',   'Daily Leave');

  ReportGrid.SetValue('REPCODE', 'C4');
  ReportGrid.SetValue('REPNUM',  'C4');
  ReportGrid.SetValue('TITLE',   'Minimum Staffing Status');

  ReportGrid.SetValue('REPCODE', 'C5');
  ReportGrid.SetValue('REPNUM',  'C5');
  ReportGrid.SetValue('TITLE',   'Sample Custom Roster');

  ReportGrid.SetValue('REPCODE', 'C6');
  ReportGrid.SetValue('REPNUM',  'C6');
  ReportGrid.SetValue('TITLE',   'Minimum Staffing by Hour');

  ReportGrid.SetValue('REPCODE', 'R1');
  ReportGrid.SetValue('REPNUM',  'R1');
  ReportGrid.SetValue('TITLE',   'Overtime Report 1');

  TSchdSetForm.SetCustomReports(ReportGrid);
  InitDate.Value := FDate;
  ReportGridClick(self);
end;

procedure TSchdMenuForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TSchdMenuForm.ReportGridClick(Sender: TObject);
begin
  If (substr(ReportGrid.GetValue('REPNUM'),1,1) = 'C') then begin
    If (FireID = 'B3580') or (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then begin
      SchdRankIDField.Enabled  := true;
      SchdLocIDField.Enabled   := true;
      SchdShiftIDField.Enabled := true;
      PersIDField.Enabled      := true;
      InitDate.Enabled         := true;
      InitDate.ShowTime        := true;
      FinalDate.Enabled        := true;
      FinalDate.ShowTime       := true;
      PrintButton.Enabled      := true;
      PreviewButton.Enabled    := true;
    end else begin
      SchdRankIDField.Enabled  := false;
      SchdLocIDField.Enabled   := false;
      SchdShiftIDField.Enabled := false;
      PersIDField.Enabled      := false;
      InitDate.Enabled         := true;
      InitDate.ShowTime        := true;
      FinalDate.Enabled        := false;
      FinalDate.ShowTime       := true;
      PrintButton.Enabled      := true;
      PreviewButton.Enabled    := true;
    end
  end else if (substr(ReportGrid.GetValue('REPNUM'),1,1) = 'R') then begin
   If (FireID = 'B3580')  or (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then begin
      SchdRankIDField.Enabled  := true;
      SchdLocIDField.Enabled   := true;
      SchdShiftIDField.Enabled := true;
      PersIDField.Enabled      := true;
      InitDate.Enabled         := true;
      InitDate.ShowTime        := true;
      FinalDate.Enabled        := true;
      FinalDate.ShowTime       := true;
      PrintButton.Enabled      := true;
      PreviewButton.Enabled    := true;
    end else begin
      SchdRankIDField.Enabled  := false;
      SchdLocIDField.Enabled   := false;
      SchdShiftIDField.Enabled := false;
      PersIDField.Enabled      := false;
      InitDate.Enabled         := true;
      InitDate.ShowTime        := false;
      FinalDate.Enabled        := true;
      FinalDate.ShowTime       := false;
      PrintButton.Enabled      := true;
      PreviewButton.Enabled    := true;
    end;
  end;
end;

procedure TSchdMenuForm.PreviewButtonClick(Sender: TObject);
var mFileName: String;
begin
  PreviewButton.Enabled := false;
  PrintButton  .Enabled := false;
  If substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C1' then begin
    SchdRosterForm := TSchdRosterForm.Create(Application,'',InitDate.Value,FinalDate.Value);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      SchdRosterForm.BaseReport.Print
    else
      SchdRosterForm.BaseReport.PreviewModal;
    SchdRosterForm.Free;
  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C2' then begin
    SchdRosterUnitForm := TSchdRosterUnitForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      SchdRosterUnitForm.BaseReport.Print
    else
      SchdRosterUnitForm.BaseReport.PreviewModal;
    SchdRosterUnitForm.Free;
  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C3' then begin
    SchdDailyLeaveForm := TSchdDailyLeaveForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      SchdDailyLeaveForm.BaseReport.Print
    else
      SchdDailyLeaveForm.BaseReport.previewmodal;
    SchdDailyLeaveForm.Free;
  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C4' then begin
    C4ReportForm := TC4ReportForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      C4ReportForm.BaseReport.Print
    else
      C4ReportForm.BaseReport.previewmodal;
    C4ReportForm.Free;

  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C5' then begin
    SchdCustRosterForm := TSchdCustRosterForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      SchdCustRosterForm.BaseReport.Print
    else
      SchdCustRosterForm.BaseReport.previewmodal;
    SchdCustRosterForm.Free;

  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'C6' then begin
    C6ReportForm := TC6ReportForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      C6ReportForm.BaseReport.Print
    else
      C6ReportForm.BaseReport.previewmodal;
    C6ReportForm.Free;

  end else if substr(ReportGrid.GetValue('REPNUM'),1,2) = 'R1' then begin
    R1ReportForm := TR1ReportForm.Create(Application,'',0,0);
    If UpperCase((sender as TAlpineGlowButton).Name) = 'PRINTBUTTON' then
      R1ReportForm.BaseReport.Print
    else
      R1ReportForm.BaseReport.previewmodal;
    R1ReportForm.Free;
  end else if substr(ReportGrid.GetValue('REPNUM'),1,6) = 'SYSREP' then begin
    mFilename := GetCrystalReportFileName(alltrim(substr(ReportGrid.GetValue('REPNUM'),7,10)));
    RunCrystalReport(mFileName,'DATETIMECALENDAR',DateTimeToStr(InitDate.Value),True,nil,nil,False);
  end;
  PreviewButton.Enabled := true;
  PrintButton  .Enabled := true;
end;

end.
