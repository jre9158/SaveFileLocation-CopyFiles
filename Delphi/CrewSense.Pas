unit CrewSense;

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
  //ipscore,ipshttps,ipsjsons,
  EnJpgGr,
  AdvMemo,
  AdvOfficeImage,
  commonCrewSense;

type
  TCrewSenseForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    TargetPanel: TAlpinePanel;
    OnBrowse: TAlpineTMSStringGrid;
    Label2: TLabel;
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
    AdvOfficeImage1: TAdvOfficeImage;
    AlpinePanel2: TAlpinePanel;
    OffBrowse: TAlpineTMSStringGrid;
    Status911Splitter: TSplitter;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
    Crew : TArray;
    procedure LoadData;
  public
    { Public declarations }
    TotalText : WideString;
    procedure ResetOnBrowse;
    procedure ResetOffBrowse;
  end;

var
  CrewSenseForm  : TCrewSenseForm;

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
     CommonCloud;

{$R *.DFM}

procedure TCrewSenseForm.ImportButtonClick(Sender: TObject);
begin
  inherited;
  ResetOnBrowse;
  ResetOffBrowse;
  LoadData;
end;

procedure TCrewSenseForm.ResetOnBrowse;
begin
  OnBrowse.Clear;
  OnBrowse.ColCount       := 0;
  OnBrowse.RowCount       := 0;
  OnBrowse.ClearColumns;

  OnBrowse.FixedRowAlways := true;
  OnBrowse.RowCount       := OnBrowse.FixedRows;

  OnBrowse.SetColumn('SPACE',          '',           0001);
  OnBrowse.SetColumn('CHECKBOX',       '',           0020);
  OnBrowse.SetColumn('CREWSHIFTID',    'Shift ID',   0100);
  OnBrowse.SetColumn('PERSID',         '',           0000);
  OnBrowse.SetColumn('CREWSENSEID',    'ID',         0100);
  OnBrowse.SetColumn('PERSCODE',       'Staff ID',   0100);
  OnBrowse.SetColumn('NAME',           'Name',       0140);
  OnBrowse.SetColumn('DATETIMESTART',  'Start',      0120);
  OnBrowse.SetColumn('DATETIMEEND',    'End',        0120);
  OnBrowse.SetColumn('SCHDTYPECODE',   'Code',       0080);
  OnBrowse.SetColumn('CREWSENSEASSGN', 'CS Assignment',   0140);
  OnBrowse.SetColumn('SCHDLOCID',      'Location',   0070);
  OnBrowse.SetColumn('SCHDSHIFTNAMEID','Shift',      0070);
  OnBrowse.SetColumn('UNITNUM',        'Unit',       0070);

  if (mFireID = '28001') then begin
    OnBrowse.SetColumn('UNITTASK',     'Task',       0050);
    OnBrowse.SetColumn('DESCR',        'Descr',      0100);
    OnBrowse.SetColumn('LABELS',       'Labels',     070);
  end else begin
    OnBrowse.SetColumn('UNITTASK',     'Task',       0000);
    OnBrowse.SetColumn('DESCR',        'Descr',      0000);
    OnBrowse.SetColumn('LABELS',       'Labels',     0000);
  end;

  OnBrowse.SetColumn('QUALIFIERS',     'Qual',       0140);
  OnBrowse.SetColumn('SCHDTYPEDESCR',  'Description',1500);

  OnBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;

procedure TCrewSenseForm.ResetOffBrowse;
begin
  OffBrowse.Clear;
  OffBrowse.ColCount := 0;
  OffBrowse.RowCount := 0;
  OffBrowse.ClearColumns;

  OffBrowse.FixedRowAlways := true;
  OffBrowse.RowCount       := OffBrowse.FixedRows;

  OffBrowse.SetColumn('SPACE',         '',          0001);
  OffBrowse.SetColumn('CHECKBOX',      '',          0020);
  OffBrowse.SetColumn('CREWSHIFTID',   'Shift ID',  0100);
  OffBrowse.SetColumn('PERSID',        '',          0000);
  OffBrowse.SetColumn('CREWSENSEID',   'ID',        0100);
  OffBrowse.SetColumn('PERSCODE',      'Staff ID',  0100);
  OffBrowse.SetColumn('NAME',          'Name',      0180);
  OffBrowse.SetColumn('DATETIMESTART', 'Start',     0115);
  OffBrowse.SetColumn('DATETIMEEND',   'End',       0115);
  OffBrowse.SetColumn('SCHDTYPEDESCR', 'Type',      1500);

  OffBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;



procedure TCrewSenseForm.LoadData;
Var CrewOn  : TCrewArray;
    CrewOff : TCrewArray;
    I       : Integer;
    SchdLoc : String;
begin

  Open_Query('SCHDLOC',false,'SELECT CODE FROM SCHDLOC');
  SchdLoc := tdbfield('SCHDLOC','CODE');
  CloseApollo('SCHDLOC');
  Crew     := QueryData(StartDateField.DateTimeVar,EndDateField.DateTimeVar,SchdLoc,'','','');
  CrewOn   := Crew[0];
  CrewOff  := Crew[1];

  for I := 0 to Length(CrewOn) - 1 do begin

    OnBrowse.SetValue('SPACE',          '');
    OnBrowse.AddCheckBox(1,I+1,false,false);
    OnBrowse.SetValue('PERSCODE',       CrewOn[I,0]);
    OnBrowse.SetValue('PERSID',         CrewOn[I,1]);
    OnBrowse.SetValue('CREWSHIFTID',    CrewOn[I,2]);
    OnBrowse.SetValue('CREWSENSEID',    CrewOn[I,3]);
    OnBrowse.SetValue('NAME',           CrewOn[I,4]);
    OnBrowse.SetValue('DATETIMESTART',  CrewOn[I,5]);
    OnBrowse.SetValue('DATETIMEEND',    CrewOn[I,6]);
    OnBrowse.SetValue('SCHDTYPECODE',   CrewOn[I,7]);
    OnBrowse.SetValue('SCHDLOCID',      CrewOn[I,8] );
    OnBrowse.SetValue('SCHDSHIFTNAMEID',CrewOn[I,9] );
    OnBrowse.SetValue('SCHDTYPEDESCR',  CrewOn[I,10]);
    OnBrowse.SetValue('UNITNUM',        CrewOn[I,11]);
    OnBrowse.SetValue('QUALIFIERS',     CrewOn[I,12]);
    OnBrowse.SetValue('CREWSENSEASSGN', CrewOn[I,13]);
    OnBrowse.SetValue('LABELS',         CrewOn[I,14]);
    OnBrowse.SetValue('UNITTASK',       CrewOn[I,15]);
    OnBrowse.SetValue('DESCR',          CrewOn[I,16]);
    AddStatusListBox(StatusBox,'Loading ' + CrewOn[I,5]+' - '+CrewOn[I,6]+' '+CrewOn[I,3]+' '+CrewOn[I,4]+' '+CrewOn[I,10]);
  end;

  for I := 0 to Length(CrewOff) - 1 do begin
    OffBrowse.SetValue('SPACE',         '');
    OffBrowse.AddCheckBox(1,I+1,false,false);
    OffBrowse.SetValue('PERSCODE',      CrewOff[I,0]);
    OffBrowse.SetValue('PERSID',        CrewOff[I,1]);
    OffBrowse.SetValue('CREWSHIFTID',   CrewOff[I,2]);
    OffBrowse.SetValue('CREWSENSEID',   CrewOff[I,3]);
    OffBrowse.SetValue('NAME',          CrewOff[I,4]);
    OffBrowse.SetValue('DATETIMESTART', CrewOff[I,5]);
    OffBrowse.SetValue('DATETIMEEND',   CrewOff[I,6]);
    OffBrowse.SetValue('SCHDTYPEDESCR', CrewOff[I,7]);

    AddStatusListBox(StatusBox,'Loading ' + CrewOff[I,5]+' - '+CrewOff[I,6]+' '+CrewOff[I,3]+' '+CrewOff[I,4]+' '+CrewOff[I,7]);
  end;
end;

procedure TCrewSenseForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);
end;

procedure TCrewSenseForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TCrewSenseForm.FormShow(Sender: TObject);
begin
  inherited;
  StartDateField.Value := Now;
  EndDateField  .Value := Now+1;
  ResetOnBrowse;
  ResetOffBrowse;
end;

procedure TCrewSenseForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to OnBrowse.RowCount do begin
    OnBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure TCrewSenseForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to OnBrowse.RowCount do begin
    OnBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure TCrewSenseForm.LoadButtonClick(Sender: TObject);
Var CrewOn     : TCrewArray;
    CrewOff    : TCrewArray;
    CheckValue : Boolean;
    RowNum     : integer;
    CrewCnt    : Integer;
    OffCnt     : Integer;
begin
  CrewCnt := 0;
  for RowNum := 1 to OnBrowse.RowCount do begin
    OnBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then begin
      SetLength(CrewOn,Length(CrewOn)+1);
      SetLength(CrewOn[CrewCnt],17);
      CrewOn[CrewCnt,0]  := '';
      CrewOn[CrewCnt,1]  := OnBrowse.GetValue('PERSID',RowNum);
      CrewOn[CrewCnt,2]  := OnBrowse.GetValue('CREWSHIFTID',RowNum);
      CrewOn[CrewCnt,3]  := OnBrowse.GetValue('CREWSENSEID',RowNum);
      CrewOn[CrewCnt,4]  := OnBrowse.GetValue('NAME',RowNum);
      CrewOn[CrewCnt,5]  := OnBrowse.GetValue('DATETIMESTART',RowNum);
      CrewOn[CrewCnt,6]  := OnBrowse.GetValue('DATETIMEEND',RowNum);
      CrewOn[CrewCnt,7]  := OnBrowse.GetValue('',RowNum);
      CrewOn[CrewCnt,8]  := OnBrowse.GetValue('SCHDLOCID',RowNum);
      CrewOn[CrewCnt,9]  := OnBrowse.GetValue('SCHDSHIFTNAMEID',RowNum);
      CrewOn[CrewCnt,10] := alltrim(OnBrowse.GetValue('SCHDTYPEDESCR',RowNum));
      CrewOn[CrewCnt,11] := OnBrowse.GetValue('UNITNUM',RowNum);
      CrewOn[CrewCnt,12] := OnBrowse.GetValue('QUALIFIERS',RowNum);
      CrewOn[CrewCnt,13] := OnBrowse.GetValue('CREWSENSEASSGN',RowNum);
      CrewOn[CrewCnt,14] := OnBrowse.GetValue('LABELS',RowNum);
      CrewOn[CrewCnt,15] := OnBrowse.GetValue('UNITTASK',RowNum);
      CrewOn[CrewCnt,16] := OnBrowse.GetValue('DESCR',RowNum);
      CrewCnt            := CrewCnt + 1;
    end;
  end;
  LoadSchdHist(CrewOn);

  OffCnt := 0;
  for RowNum := 1 to OffBrowse.RowCount do begin
    OffBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then begin
      SetLength(CrewOff,Length(CrewOff)+1);
      SetLength(CrewOff[OffCnt],8);
      CrewOff[OffCnt,0] := '';
      CrewOff[OffCnt,1] := OffBrowse.GetValue('PERSID',RowNum);
      CrewOff[OffCnt,2] := OffBrowse.GetValue('CREWSHIFTID',RowNum);
      CrewOff[OffCnt,3] := OffBrowse.GetValue('CREWSENSEID',RowNum);
      CrewOff[OffCnt,4] := OffBrowse.GetValue('NAME',RowNum);
      CrewOff[OffCnt,5] := OffBrowse.GetValue('DATETIMESTART',RowNum);
      CrewOff[OffCnt,6] := OffBrowse.GetValue('DATETIMEEND',RowNum);
      CrewOff[OffCnt,7] := OffBrowse.GetValue('SCHDTYPEDESCR',RowNum);
      OffCnt            := OffCnt + 1;
    end;
  end;
  LoadSchdHist(CrewOff);
  ShowMessage('Loaded ' + IntToStr(Length(CrewOn)) + ' staff members');
end;

end.
