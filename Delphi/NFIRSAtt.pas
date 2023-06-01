unit NFIRSATT;

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
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  Grids,
  BaseGrid,
  AdvGrid,
  AdvGroupBox,
  AdvObj,
  AlpineMemo,
  AlpinePanel;

type
  TNFIRSAttForm = class(TNormalBaseForm)
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    AlpinePanel2: TAlpinePanel;
    AlpinePanel3: TAlpinePanel;
    PersIDLabel: TLabel;
    PersPointTypeIDLabel: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    PersPayScaleIDLabel: TLabel;
    PersIDField: TAlpineLookup;
    PersPointTypeIDField: TAlpineLookup;
    NFIRSAppIDField: TAlpineLookup;
    NfirsAttTaskIDField: TAlpineLookup;
    NfirsMainIDField: TAlpineEdit;
    PersPayScaleIDField: TAlpineLookup;
    NfirsAttActListPanel: TAlpinePanel;
    RecordedByPanel: TAlpinePanel;
    Label8: TLabel;
    Label7: TLabel;
    RECORDPERSIDField: TAlpineLookup;
    RECORDDATEField: TAlpineDateTime;
    NfirsAttActListBrowse: TAdvStringGrid;
    Label5: TLabel;
    Label6: TLabel;
    EvLengthField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    EvLengthButton: TAlpineGlowButton;
    Label4: TLabel;
    Label10: TLabel;
    EntryMethField: TAlpineEdit;
    EntryCompField: TAlpineEdit;
    procedure PersIDFieldEnter(Sender: TObject);
    procedure NFIRSAppIDFieldEnter(Sender: TObject);
    procedure NfirsAttActListBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure NewButtonClick(Sender: TObject);
    procedure PersIDFieldExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NfirsAttTaskIDFieldEnter(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure PersPointTypeIDFieldEnter(Sender: TObject);
    procedure PersPayScaleIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    function LoadNfirsAttActListBrowse: Boolean;
    function GetCentervilleTime(UnitID,NFIRSID: String): String;
  public
    { Public declarations }
    FdidVar : String;
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  NFIRSAttForm: TNFIRSAttForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     DateUtils,
     SecSet,
     Main;

{$R *.DFM}
{$I rednmx.inc}

class procedure TNFIRSAttForm.NewRecord(DataSet: TDataSet);
begin
  LoadSysFieldDef(FireID, 'NFIRSATT',DataSet);
end;

procedure TNFIRSAttForm.FormCreate(Sender: TObject);
begin
  inherited;
  NfirsAttActListPanel.Visible := LoadNfirsAttActListBrowse;
  NewButton.Visible            := Not FormExists('CheckBoxForm');
  NewButton.Visible            := Not FormExists('CheckBoxForm');
  Height                       := Height - IIfI(NfirsAttActListPanel.Visible,0,NfirsAttActListPanel.Height);
  If (fireID = 'HARFO') then
    PersPointTypeIDField.Enabled := False;
end;

procedure TNFIRSAttForm.FormShow(Sender: TObject);
begin
  inherited;
  FdidVar                      := SQLLookUp(NfirsMainIDField.Value,'NFIRSMAINID','NFIRSMAIN','FDID');
  PersIDField.Enabled          := Not FormExists('CheckBoxForm');
  PersPayScaleIDField.Visible  := (SqlTableRecCount('SELECT COUNT(*) FROM PERSPAYSCALE WHERE FDID = ' + AddExpr(FdidVar)) > 0);
  PersPayScaleIDLabel.Visible  := PersPayScaleIDField.Visible;
  PersPointTypeIDField.Visible := (SqlTableRecCount('SELECT COUNT(*) FROM PERSPOINTTYPE') > 0);
  PersPointTypeIDlabel.Visible := PersPointTypeIDField.Visible;
  RecordedByPanel.Visible      := CheckModule('FINGER');

  NarrField.BottomButtonClear           := true;
  NarrField.BottomButtonSelectNarrative := true;
  NarrField.BottomButtonkeyboard        := false;
  NarrField.BottomButtonTimeStamp       := true;
  NarrField.BottomButtonSpellCheck      := true;
  NarrField.SysNarrLookupTable          := 'NFIRSATT';
  NarrField.SysNarrLookupField          := 'NARR';
end;

procedure TNFIRSAttForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;

  if (FdidVar = '30054') then begin
    PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE FDID = ' + AddExpr(FdidVar) +
                           ' AND ATTEND = ' + AddExpr('Y') +
                           ' AND PERSTYPEID <> ' + AddExpr('13') +
                           ' ORDER BY LNAME, FNAME'
  end else
    PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE FDID = ' + AddExpr(FdidVar) +
                           ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TNFIRSAttForm.NFIRSAppIDFieldEnter(Sender: TObject);
begin
  inherited;
  NFIRSAppIDField.LookupFormWidth := 300;
  NFIRSAppIDField.SqlExpr         := 'SELECT NFIRSAPPID, UNITNUM FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkValue(NFIRSMainIDField.Value);
end;

function TNFIRSAttForm.LoadNfirsAttActListBrowse: Boolean;
Var RowNum : Integer;
  function CheckTask: Boolean;
  begin
    CheckTask := false;
    If A('NFIRSATTACT').ExactQueryLocate(['NFIRSATTACTLISTID'],[GetField('NFIRSATTACTLIST','NFIRSATTACTLISTID').AsString]) then
      CheckTask := true
    else
      CheckTask := false;
  end;
begin
  NfirsAttActListBrowse.clear;
  NfirsAttActListBrowse.ColCount := 3;
  NfirsAttActListBrowse.RowCount := 3;

  NfirsAttActListBrowse.ColWidths[00] := 000;
  NfirsAttActListBrowse.ColWidths[01] := 020;
  NfirsAttActListBrowse.ColWidths[02] := 200;

  NfirsAttActListBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NFIRSATTACT',false,'SELECT * FROM NFIRSATTACT WHERE NFIRSATTID = ' + PK);
  Open_Query('NFIRSATTACTLIST',false,'SELECT * FROM NFIRSATTACTLIST ORDER BY SORTORD, DESCR');
  While Not A('NFIRSATTACTLIST').Eof do begin
    NfirsAttActListBrowse.Cells[0,RowNum] := Getfield('NFIRSATTACTLIST','NFIRSATTACTLISTID').AsString;
    NfirsAttActListBrowse.AddCheckBox(1,RowNum,CheckTask,false);
    NfirsAttActListBrowse.Cells[2,RowNum] := Getfield('NFIRSATTACTLIST','DESCR').AsString;
    If (RowNum > 1) then
      NfirsAttActListBrowse.RowCount := NfirsAttActListBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NFIRSATTACTLIST').Skip(1);
  end;
  CloseApollo('NFIRSATTACTLIST');
  CloseApollo('NFIRSATTACT');
  LoadNfirsAttActListBrowse := (RowNum > 0);
end;

procedure TNFIRSAttForm.NfirsAttActListBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var CheckValue: Boolean;
begin
  inherited;
  NfirsAttActListBrowse.GetCheckBoxState(1,NfirsAttActListBrowse.Row,CheckValue);
  If CheckValue then
    TableInsert('NFIRSATTACT',['NFIRSATTID', 'NFIRSATTACTLISTID'],
                              [StrToInt(PK), StrToInt(NfirsAttActListBrowse.Cells[0,NfirsAttActListBrowse.Row]) ])
  else
    RunSQL('DELETE FROM NFIRSATTACT WHERE NFIRSATTID = ' + PK + ' AND NFIRSATTACTLISTID = ' + NfirsAttActListBrowse.Cells[0,NfirsAttActListBrowse.Row]);
end;

procedure TNFIRSAttForm.NfirsAttTaskIDFieldEnter(Sender: TObject);
Var FdidVar : String;
begin
  inherited;
  NfirsAttTaskIDField.LookupFormWidth := 300;
  FdidVar                             := SQLLookUp(NfirsMainIDField.Value,'NFIRSMAINID','NFIRSMAIN','FDID');
  NfirsAttTaskIDField.SqlExpr         := 'SELECT * FROM NFIRSATTTASK WHERE (FDID = ' + AddExpr(FdidVar) + '  OR FDID IS NULL) ORDER BY SORTORD';
end;

procedure TNFIRSAttForm.NewButtonClick(Sender: TObject);
Var i : Integer;
begin
  inherited;
  For i := 0 to NfirsAttActListBrowse.RowCount-1 do 
    NfirsAttActListBrowse.setCheckBoxState(1,i,false);
end;

procedure TNFIRSAttForm.PersIDFieldExit(Sender: TObject);
begin
  inherited;
  If AnyStrToInt(PersIDField.Value) > 0 then begin
    Open_Query('NFIRSATT',false,'SELECT NFIRSATTID, PERSID FROM NFIRSATT WHERE NFIRSMAINID = ' + pkValue(NfirsMainIDField.Value) + ' AND PERSID = ' + PersIDField.Value);
    While Not A('NFIRSATT').Eof do begin
      If GetField('NFIRSATT','NFIRSATTID').AsString <> pk then begin
        PersIDField.Value := '';
        ShowMessage('Staff already entered');
        PersIDField.SetFocus;
      end;
      A('NFIRSATT').Skip(1);
    end;
    CloseApollo('NFIRSATT');
  end;
end;

procedure TNFIRSAttForm.PersPayScaleIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersPayScaleIDField.SqlExpr := 'SELECT * FROM PERSPAYSCALE WHERE (FDID = ' + AddExpr(FdidVar) + '  OR FDID IS NULL) ORDER BY SORTORD,CODE';
end;

procedure TNFIRSAttForm.PersPointTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersPointTypeIDField.LookupFormWidth := 300;
  If GlobalManualEntryOnly then begin
    PersPointTypeIDField.SqlExpr := 'SELECT * FROM PERSPOINTTYPE WHERE MANUALENTRY = ' + AddExpr('Y');
  end;
end;

function TNFIRSAttForm.GetCentervilleTime(UnitID,NFIRSID: String): String;
Var TimeDisp,TimeIn : TDateTime;
    Example         : String;
begin
    TimeDisp            := 0;
    TimeIn              := 0;
    Example             := 'SELECT DISPSTATCODEID,DATETIMESTAT FROM DISPHIST WHERE UNITNUM = ' + AddExpr(UnitID) + ' AND NFIRSMAINID=' +
                                AddExpr(NFIRSID);
    Open_Query('DISPHIST',false, Example);
    While Not A('DISPHIST').Eof do begin
      If GetField('DISPHIST','DISPSTATCODEID').AsString = '2' then
        TimeDisp   :=  GetField('DISPHIST','DATETIMESTAT').AsDateTime
      else if GetField('DISPHIST','DISPSTATCODEID').AsString = '11' then
        TimeIn     :=  GetField('DISPHIST','DATETIMESTAT').AsDateTime;
      A('DISPHIST').Skip(1);
    end;
    CloseApollo('DISPHIST');
    if ((TimeIn <> 0) and (TimeDisp<> 0)) then
      GetCentervilleTime   :=  FormatFloat('##,##0.00',(MinutesBetween(TimeIn,TimeDisp)/60))
    else
      GetCentervilleTime   := SqlLookup(NFIRSID,'NFIRSMAINID','NFIRSMAIN','EVLENGTH')
end;

procedure TNFIRSAttForm.EvLengthButtonClick(Sender: TObject);
begin
  inherited;
  if mFireID ='01920' then
    EvLengthField.Value := GetCentervilleTime(SqlLookup(NfirsAPPIDField.Value,'NFIRSAPPID','NFIRSAPP','UNITNUM'),NfirsMainIDField.Value)
  else
    EvLengthField.Value := SqlLookup(NfirsMainIDField.Value,'NFIRSMAINID','NFIRSMAIN','EVLENGTH');
end;

end.
