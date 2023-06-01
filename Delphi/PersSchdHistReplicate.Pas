unit PersSchdHistReplicate;

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
  StdCtrls,
  Buttons,
  cusbtn,
  FileCtrl,
  ExtCtrls,
  AdvGlowButton,
  AlpineBase,
  AlpineGlowButton,
  AdvPanel,
  OvcBase,
  AdvGroupBox,
  AlpineLookup,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpinePanel,
  Grids,
  BaseGrid,
  db,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpineBlockBrowse,
  NormalBase,
  AdvObj,
  Gauges;

type
  TPersSchdHistReplicateForm = class(TAlpineBaseForm)
    TopPanel: TAdvPanel;
    PersTitleLabel: TLabel;
    TitleField: TLabel;
    TitleImage: TImage;
    OvcController1: TOvcController;
    Panel2: TPanel;
    PersPanel: TAlpinePanel;
    BottomSplitter: TSplitter;
    PersBrowse: TAlpineTMSStringGrid;
    Panel1: TPanel;
    AlpinePanel1: TAlpinePanel;
    AlpinePanel3: TAlpinePanel;
    AlpinePanel4: TAlpinePanel;
    QueryPanel: TAlpinePanel;
    FieldPanel: TAlpinePanel;
    Label4: TLabel;
    PersStatIDField: TAlpineLookup;
    PersQueryButton: TAlpineGlowButton;
    SchdHistButton: TAlpineGlowButton;
    TagButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    AlpinePanel7: TAlpinePanel;
    ProcessButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    Gauge: TGauge;
    PersTypeIDField: TAlpineLookup;
    Label5: TLabel;
    Label1: TLabel;
    SchdShiftIDField: TAlpineLookup;
    AlpinePanel2: TAlpinePanel;
    ListBox: TListBox;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SchdHistButtonClick(Sender: TObject);
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ProcessButtonClick(Sender: TObject);
    procedure PersQueryButtonClick(Sender: TObject);
    procedure PersStatIDFieldEnter(Sender: TObject);
    procedure PersTypeIDFieldEnter(Sender: TObject);
    procedure PersBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SchdShiftIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LoadPersBrowse(LoadGrid: Boolean);
    procedure SchdHistNewRecord(Dataset: TDataset);
    function  GetPersTypeWhere: String;
    function  GetPersStatWhere: String;
    function  GetSchdShiftWhere: String;
    function  GetPersCount: Integer;
    procedure ProcessPers;
  public
    { Public declarations }
    SchdHistID : String;
  end;

var
  PersSchdHistReplicateForm: TPersSchdHistReplicateForm;

implementation
uses GenFunc,
     SchdHist,
     CommonFunc,
     FormFunc,
     CommonVar;

{$R *.DFM}

procedure TPersSchdHistReplicateForm.FormShow(Sender: TObject);
begin
  TitleImage.Picture.Icon := GetGlowImageIcon('PERSONNEL32');
  LoadPersBrowse(false);
end;

procedure TPersSchdHistReplicateForm.PersStatIDFieldEnter(Sender: TObject);
begin
  PersStatIDField.SqlExpr         := 'SELECT * FROM PERSSTAT WHERE ' + GetFdidSQL('PERSSTAT.FDID') + ' ORDER BY CODE';
  PersStatIDField.LookupFormWidth := 320;
end;

procedure TPersSchdHistReplicateForm.PersQueryButtonClick(Sender: TObject);
begin
  PersBrowse.OnRowUpdate   := Nil;
  LoadPersBrowse(true);
end;

procedure TPersSchdHistReplicateForm.SchdHistButtonClick(Sender: TObject);
begin
  RunAlpineFormShowModal(TSchdHistform,SchdHistID,'SCHDHIST',SchdHistNewRecord);
end;

procedure TPersSchdHistReplicateForm.SchdHistNewRecord(Dataset: TDataset);
begin
end;

procedure TPersSchdHistReplicateForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to PersBrowse.RowCount do begin
    PersBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure TPersSchdHistReplicateForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to PersBrowse.RowCount do begin
    PersBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure TPersSchdHistReplicateForm.PersTypeIDFieldEnter(Sender: TObject);
begin
  PersTypeIDField.SqlExpr         := 'SELECT * FROM PERSTYPE WHERE ' + GetFdidSQL('PERSTYPE.FDID') + ' ORDER BY CODE';
  PersTypeIDField.LookupFormWidth := 320;
end;

procedure TPersSchdHistReplicateForm.SchdShiftIDFieldEnter(Sender: TObject);
begin
  SchdShiftIDField.SQLExpr :=  'SELECT * FROM SCHDSHIFT WHERE ' + GetFdidSQL('SCHDSHIFT.FDID') + ' ORDER BY SORTORD';
  SchdShiftIDField.LookupFormWidth := 320;
end;

function TPersSchdHistReplicateForm.GetPersStatWhere: String;
begin
  If (PersStatIDField.Value <> '') then
    GetPersStatWhere := ' AND PERS.PERSSTATID = ' + pkValue(PersStatIDField.Value)
  else
    GetPersStatWhere := '';
end;

function TPersSchdHistReplicateForm.GetPersTypeWhere: String;
begin
  If (PersTypeIDField.Value <> '') then
    GetPersTypeWhere := ' AND PERS.PERSTYPEID = ' + pkValue(PersTypeIDField.Value)
  else
    GetPersTypeWhere := '';
end;

function TPersSchdHistReplicateForm.GetSchdShiftWhere: String;
begin
  If (SchdShiftIDField.Value <> '') then
    GetSchdShiftWhere := ' AND PERS.SCHDSHIFTID = ' + pkValue(SchdShiftIDField.Value)
  else
    GetSchdShiftWhere := '';
end;

procedure TPersSchdHistReplicateForm.LoadPersBrowse(LoadGrid : Boolean);
Var RowNum : Integer;
    SQLVar : String;
    Age    : Integer;
begin
  PersBrowse.Clear;
  PersBrowse.ClearColumns;
  PersBrowse.ColCount       := 0;
  PersBrowse.RowCount       := 0;
  PersBrowse.FixedRowAlways := true;
  PersBrowse.RowCount       := PersBrowse.FixedRows;

  PersBrowse.SetColumn('PERSID',              'PERSID',      000);
  PersBrowse.SetColumn('CHECKBOX',            '',            020);
  PersBrowse.SetColumn('PERSCODE',            'Staff#',      080);
  PersBrowse.SetColumn('LNAME',               'Last Name',   180);
  PersBrowse.SetColumn('FNAME',               'First',       120);
  PersBrowse.SetColumn('PERSSTATDESCR',       'Status',      150);
  PersBrowse.SetColumn('PERSTYPEDESCR',       'Type',        150);
  PersBrowse.SetColumn('SCHDSHIFTDESCR',      'Shift',       600);

  If LoadGrid then begin
    SQLVar := 'SELECT PERS.DOB, PERS.PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE, PERSSTAT.DESCR PERSSTATDESCR, PERSTYPE.DESCR PERSTYPEDESCR, SCHDSHIFT.DESCR SCHDSHIFTDESCR FROM PERS ' +
              'LEFT JOIN PERSSTAT  ON (PERS.PERSSTATID  = PERSSTAT.PERSSTATID) ' +
              'LEFT JOIN PERSTYPE  ON (PERS.PERSTYPEID  = PERSTYPE.PERSTYPEID) ' +
              'LEFT JOIN SCHDSHIFT ON (PERS.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
              'WHERE ' + GetFdidSQL('PERS.FDID') + ' AND PERS.ATTEND = ' + AddExpr('Y') + GetPersTypeWhere + GetPersStatWhere + GetSchdShiftWhere + ' ORDER BY PERS.LNAME, PERS.FNAME';

    Open_Query('PERS',false,SQLVar);

    RowNum         := 1;

    Gauge.Visible  := true;
    Gauge.MaxValue := A('PERS').QueryRecCount;
    Gauge.Progress := 0;

    while not A('PERS').Eof do begin
      PersBrowse.SetValue('PERSID',         GetField('PERS','PERSID' ).AsString);
      PersBrowse.AddCheckBox(1,RowNum,false,false);
      PersBrowse.SetValue('PERSCODE'      , tdbfield('PERS','PERSCODE'));
      PersBrowse.SetValue('LNAME'         , tdbfield('PERS','LNAME'));
      PersBrowse.SetValue('FNAME'         , tdbfield('PERS','FNAME'));
      PersBrowse.SetValue('PERSSTATDESCR' , tdbfield('PERS','PERSSTATDESCR'));
      PersBrowse.SetValue('PERSTYPEDESCR' , tdbfield('PERS','PERSTYPEDESCR'));
      PersBrowse.SetValue('SCHDSHIFTDESCR' ,tdbfield('PERS','SCHDSHIFTDESCR'));
      RowNum := RowNum + 1;
      A('PERS').Skip(1);
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
    end;
    CloseApollo('PERS');
    Gauge.Visible := false;
  end;
end;

procedure TPersSchdHistReplicateForm.PersBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = VK_SPACE then begin
    PersBrowse.SetCheckBoxState(1,PersBrowse.Row,true);
  end;
end;

procedure TPersSchdHistReplicateForm.ProcessButtonClick(Sender: TObject);
Var PersCount     : Integer;
begin
  PersCount := GetPersCount;
  If (PersCount > 0) then begin
    If BooleanMessageDlg('Replicate the schedule history record for ' + IntToStr(PersCount) + ' staff?') then
      ProcessPers;
  end else
    ShowMessage('You must check off personnel to be processed');
end;

procedure TPersSchdHistReplicateForm.ProcessPers;
Var RowNum        : Integer;
    CheckValue    : Boolean;
    PersID        : String;
    DateDone      : TDateTime;
    SQLVar        : String;
begin
  PersBrowse.OnRowUpdate   := Nil;
  Open_Query('NEWSCHDHIST',true,'SELECT * FROM SCHDHIST WHERE 1=2');
  Open_Query('SCHDHIST',false,'SELECT * FROM SCHDHIST WHERE SCHDHISTID = ' + pkValue(SchdHistID));
  Gauge.Visible  := true;
  Gauge.MaxValue := PersBrowse.RowCount;
  Gauge.Progress := 0;

  for RowNum := 1 to PersBrowse.RowCount do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    PersBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then begin
      PersID        := PersBrowse.GetValue('PERSID',RowNum);
      SQLVar        := 'SELECT * FROM SCHDHIST WHERE PERSID = ' + pkValue(PersID) + ' AND SOURCESCHDHISTID = ' + pkValue(SchdHistID);

      A('NEWSCHDHIST').UpdateSQL(SQLVar);
      If Not A('NEWSCHDHIST').RecordsExist then begin
        A('NEWSCHDHIST').Append;
        GetField('NEWSCHDHIST','PERSID').AsString           := PersID;
        GetField('NEWSCHDHIST','SOURCESCHDHISTID').AsString := SchdHistID;
        GetField('NEWSCHDHIST','SCHDLOCID').AsString        := GetField('SCHDHIST','SCHDLOCID').AsString;
        GetField('NEWSCHDHIST','SCHDSHIFTNAMEID').AsString  := GetField('SCHDHIST','SCHDSHIFTNAMEID').AsString;
        GetField('NEWSCHDHIST','SCHDRANKID').AsString       := GetField('SCHDHIST','SCHDRANKID').AsString;
        GetField('NEWSCHDHIST','DATETIMESTART').AsString    := GetField('SCHDHIST','DATETIMESTART').AsString;
        GetField('NEWSCHDHIST','DATETIMEEND').AsString      := GetField('SCHDHIST','DATETIMEEND').AsString;
        GetField('NEWSCHDHIST','SHIFTLENGTH').AsString      := GetField('SCHDHIST','SHIFTLENGTH').AsString;
        GetField('NEWSCHDHIST','SCHDTYPEID').AsString       := GetField('SCHDHIST','SCHDTYPEID').AsString;
        GetField('NEWSCHDHIST','SCHDSUBTYPEID').AsString    := GetField('SCHDHIST','SCHDSUBTYPEID').AsString;
        GetField('NEWSCHDHIST','DESCR').AsString            := GetField('SCHDHIST','DESCR').AsString;
        GetField('NEWSCHDHIST','UNITNUM').AsString          := GetField('SCHDHIST','UNITNUM').AsString;
        A('NEWSCHDHIST').Post;
        AddStatusListBox(ListBox,'Load new records for ' + PersBrowse.GetValue('PERSCODE',RowNum) + ' - ' + PersBrowse.GetValue('LNAME',RowNum));
      end;
      PersBrowse.SetCheckBoxState(1,RowNum,false);
    end;
  end;
  CloseApollo('NEWSCHDHIST');
  CloseApollo('SCHDHIST');
  Gauge.Visible := false;
  ShowMessage('Done processing tagged Personnel.');
end;

function TPersSchdHistReplicateForm.GetPersCount: Integer;
Var RowNum     : Integer;
    CheckValue : Boolean;
    PersCount  : Integer;
begin
  PersCount := 0;
  for RowNum := 1 to PersBrowse.RowCount do begin
    PersBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then
      PersCount := PersCount + 1;
  end;
  GetPersCount := PersCount;
end;

procedure TPersSchdHistReplicateForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

end.
