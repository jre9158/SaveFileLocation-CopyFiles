unit InvInspHist;

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
  NormalBase,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  StdCtrls,
  ExtCtrls,
  AdvGlowButton,
  DB,
  AlpineGlowButton,
  AdvPanel,
  ALPINEDATETIME,
  AlpinePanel,
  AlpineMemo,
  AlpineBlockBrowse,
  Grids,
  BaseGrid,
  AdvGrid,
  AdvGroupBox,
  Menus,
  AdvMenus,
  AlpineBaseSummaryReport,
  AlpineTMSStringGrid,
  AdvObj;

type
  TInvInspHistForm = class(TNormalBaseForm)
    GenInfoPanel: TAlpinePanel;
    InvIDLabel: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DescrField: TAlpineEdit;
    InvIDField: TAlpineLookup;
    InvServTypeIDField: TAlpineLookup;
    Label1: TLabel;
    DateDoneField: TAlpineDateTime;
    InfoPanel1: TPanel;
    AlpinePanel1: TAlpinePanel;
    RolodexIDField: TAlpineLookup;
    Label13: TLabel;
    Label4: TLabel;
    PersIDField: TAlpineLookup;
    Label6: TLabel;
    InvServStatusIDField: TAlpineLookup;
    InfoPanel2: TPanel;
    AlpinePanel2: TAlpinePanel;
    Label8: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    TotalCostField: TAlpineEdit;
    LaborLengthTotalField: TAlpineEdit;
    LaborTotalField: TAlpineEdit;
    TotalCostButton: TAlpineGlowButton;
    AlpinePanel6: TAlpinePanel;
    ItemPopup: TAdvPopupMenu;
    EditChoice: TMenuItem;
    InvServTypeItemBrowse: TAlpineTMSStringGrid;
    AdvPanel1: TAdvPanel;
    OKButton: TAlpineGlowButton;
    ServiceDeleteButton: TAlpineGlowButton;
    ServiceEditButton: TAlpineGlowButton;
    InfoPanel3: TPanel;
    AlpinePanel5: TAlpinePanel;
    NarrField: TAlpineMemo;
    RedNarrPanel: TAlpinePanel;
    RedNarrField: TAlpineMemo;
    TagButton: TAlpineGlowButton;
    StartTimeField: TAlpineDateTime;
    EndTimeField: TAlpineDateTime;
    StartTimeLabel: TLabel;
    EndTimeLabel: TLabel;
    APPRPERSIDLabel: TLabel;
    ApprPersIDField: TAlpineLookup;
    ReadingPanel: TPanel;
    MilePanel: TAlpinePanel;
    Label44: TLabel;
    Label45: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    OdometerField: TAlpineEdit;
    HourEngineField: TAlpineEdit;
    HourPumpField: TAlpineEdit;
    HourAerialField: TAlpineEdit;
    UpdateButton: TAlpineGlowButton;
    COdometerField: TAlpineEdit;
    CHourEngineField: TAlpineEdit;
    CHourPumpField: TAlpineEdit;
    CHourAerialField: TAlpineEdit;
    HourPanel: TAlpinePanel;
    Label3: TLabel;
    Label19: TLabel;
    HourField: TAlpineEdit;
    HourButton: TAlpineGlowButton;
    CHourField: TAlpineEdit;
    Label2: TLabel;
    PassField: TAlpineEdit;
    Label11: TLabel;
    FailField: TAlpineEdit;
    Label12: TLabel;
    NotDoneField: TAlpineEdit;
    procedure InvServTypeIDFieldEnter(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure InvServTypeIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ServiceEditButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
    procedure ServiceDeleteButtonClick(Sender: TObject);
    procedure InvServTypeItemBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InvServTypeItemBrowseDblClick(Sender: TObject);
    procedure TagButtonClick(Sender: TObject);
    procedure InvIDFieldSuccessfulValidate(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure InvServStatusIDFieldEnter(Sender: TObject);
    procedure LaborTotalFieldAfterExit(Sender: TObject);
    procedure LaborLengthTotalFieldAfterExit(Sender: TObject);
    procedure StartTimeFieldExit(Sender: TObject);
    procedure EndTimeFieldExit(Sender: TObject);
    procedure HourButtonClick(Sender: TObject);
    procedure ApprPersIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure ShowReadings;
  public
    { Public declarations }
    InvServForm            : String;
    DefInvServTypeStatusID : String;
    procedure LoadInvServTypeItemBrowse;
    class procedure AppNewRecord(DataSet: TDataSet);
    class procedure SCBANewRecord(DataSet: TDataSet);
    class procedure STANewRecord(DataSet: TDataSet);
    procedure InvServTypeHistNewRecord(DataSet: TDataSet);
    procedure ResetInvServTypeItemBrowse;
    procedure LoadInvServItemStatus;
  end;

var
  InvInspHistForm: TInvInspHistForm;

implementation
uses GenFunc,
     FormFunc,
     Inv,
     Search,
     StrUtils,
     CommonVar,
     InvServTypeHist,
     InvInspHistBatch,
     InvInspHistRep,
     CommonFunc,
     SecSet;

{$R *.dfm}

class procedure TInvInspHistForm.AppNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'APPINSP';

  If mFireID = '23239' then
    DataSet.FieldByName('DATEDONE').AsString := FormatDateTime('MM/DD/YYYY HH:NN:SS',Now);

end;

procedure TInvInspHistForm.SaveButtonClick(Sender: TObject);
var
  test   : TDateTime;
  test2  : sTring;
begin
  inherited;
  
  If mFireID = '20002' then begin
    If StartTimeField.Value = 0 then
      MessageDlg('Please Enter Start Date Time',mtError, mbOKCancel, 0);

    If EndTimeField.Value = 0 then
      MessageDlg('Please Enter End Date Time',mtError, mbOKCancel, 0);
  end;
end;

class procedure TInvInspHistForm.SCBANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'SCBAINSP';
end;

class procedure TInvInspHistForm.STANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'STAINSP';
end;

procedure TInvInspHistForm.StartTimeFieldExit(Sender: TObject);
begin
  inherited;
  if not ANSIContainsStr(DateTimeToStr(EndTimeField.Value),'1899') then
    LaborLengthTotalField.Value  := FormatFloat('###.##',24 * (EndTimeField.Value - StartTimeField.Value));
  LaborLengthTotalFieldAfterExit(Self);
end;

procedure TInvInspHistForm.InvServTypeIDFieldEnter(Sender: TObject);
Var InvSubTypeID : String;
    SQLVar       : String;
begin
  inherited;
  InvSubTypeID               := SQLLookUp(InvIDField.Value,'INVID','INV','INVSUBTYPEID');
  SQLVar                     := 'SELECT * FROM INVSERVTYPE WHERE (ACTIVE = ' + AddExpr('Y') + ' OR ACTIVE IS NULL OR ACTIVE = ' + AddExpr('') + ') AND (INVSERVFORM = ' + AddExpr(InvServForm) + ') AND (INVSUBTYPEID = ' + pkValue(InvSubTypeID) + ' OR INVSUBTYPEID IS NULL) ORDER BY DESCR';
  InvServTypeIDField.SqlExpr := SQLVar;
end;

procedure TInvInspHistForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  if (MultiFdid) and (SecFdid<>'') then
    PersIdField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' AND FDID =' + AddExpr(SecFDID) + ' ORDER BY LNAME, FNAME'
  else
    PersIdField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TInvInspHistForm.ResetInvServTypeItemBrowse;
begin
  InvServTypeItemBrowse.Clear;
  InvServTypeItemBrowse.ColCount       := 0;
  InvServTypeItemBrowse.RowCount       := 0;
  InvServTypeItemBrowse.ClearColumns;
  InvServTypeItemBrowse.FixedRowAlways := true;
  InvServTypeItemBrowse.RowCount       := InvServTypeItemBrowse.FixedRows;

  InvServTypeItemBrowse.SetColumn('INVSERVTYPEITEMID',  'INVSERVTYPEITEMID',  000);
  InvServTypeItemBrowse.SetColumn('INVSERVTYPESTATUSID','INVSERVTYPESTATUSID',000);
  InvServTypeItemBrowse.SetColumn('SORTORD',          'Item#',            040, '','N','');
  if MFireID = '52280' then begin
    InvServTypeItemBrowse.SetColumn('DESCR',            'Description',      230);
    InvServTypeItemBrowse.SetColumn('PROC',             'Procedure ',       080);
  end else begin
    InvServTypeItemBrowse.SetColumn('DESCR',            'Description',      080);
    InvServTypeItemBrowse.SetColumn('PROC',             'Procedure ',       230);
  end;

  InvServTypeItemBrowse.SetColumn('STATUS',           'Status',           150);
end;

procedure TInvInspHistForm.LaborLengthTotalFieldAfterExit(Sender: TObject);
begin
  inherited;
  if MFireID = '12309' then
    TotalCostField.Value := FloatToStr(StrToFloat(LaborTotalField.Value) * StrToFloat(LaborLengthTotalField.Value));
end;

procedure TInvInspHistForm.LaborTotalFieldAfterExit(Sender: TObject);
begin
  inherited;
  if MFireID = '12309' then
    TotalCostField.Value := FloatToStr(StrToFloat(LaborTotalField.Value) * StrToFloat(LaborLengthTotalField.Value));
end;

procedure TInvInspHistForm.LoadInvServTypeItemBrowse;
Var Pass    : Integer;
    Fail    : Integer;
    NotDone : Integer;
begin
  ResetInvServTypeItemBrowse;
  Pass    := 0;
  Fail    := 0;
  NotDone := 0;
  Open_Query('INVSERVTYPEHIST',false,'SELECT NARR, INVSERVTYPEITEMID, INVSERVTYPESTATUS.DESCR INVSERVTYPESTATUSDESCR, INVSERVTYPESTATUS.OPENSTAT FROM INVSERVTYPEHIST ' +
                                     'LEFT JOIN INVSERVTYPESTATUS ON (INVSERVTYPESTATUS.INVSERVTYPESTATUSID = INVSERVTYPEHIST.INVSERVTYPESTATUSID) ' +
                                     'WHERE INVSERVHISTID = ' + PkValue(PK));
  Open_Query('INVSERVTYPEITEM',false,'SELECT * FROM INVSERVTYPEITEM WHERE INVSERVTYPEID = ' + PkValue(InvServTypeIDField.Value) + ' ORDER BY SORTORD ');
  While Not A('INVSERVTYPEITEM').Eof do begin
    InvServTypeItemBrowse.SetValue('INVSERVTYPEITEMID',  Getfield('INVSERVTYPEITEM','INVSERVTYPEITEMID').AsString);
    InvServTypeItemBrowse.SetValue('INVSERVTYPESTATUSID',Getfield('INVSERVTYPEITEM','INVSERVTYPESTATUSID').AsString);
    InvServTypeItemBrowse.SetValue('SORTORD',            Getfield('INVSERVTYPEITEM','SORTORD').AsString);
    InvServTypeItemBrowse.SetValue('DESCR',              Getfield('INVSERVTYPEITEM','DESCR').AsString);
    InvServTypeItemBrowse.SetValue('PROC',               Getfield('INVSERVTYPEITEM','NARR').AsString);

    If A('INVSERVTYPEHIST').ExactQueryLocate('INVSERVTYPEITEMID',GetField('INVSERVTYPEITEM','INVSERVTYPEITEMID').AsString) then begin
      InvServTypeItemBrowse.SetValue('STATUS',tdbfield('INVSERVTYPEHIST','INVSERVTYPESTATUSDESCR') + ' ' + Getfield('INVSERVTYPEHIST','NARR').AsString);
      If tdbfield('INVSERVTYPEHIST','OPENSTAT') = 'Y' then
        Fail := Fail + 1
      else
        Pass := Pass + 1
    end else begin
      InvServTypeItemBrowse.SetValue('STATUS','-');
      NotDone := NotDone + 1
    end;

    A('INVSERVTYPEITEM').Skip(1);
  end;
  CloseApollo('INVSERVTYPEITEM');
  CloseApollo('INVSERVTYPEHIST');
  PassField.Value    := IntToStr(Pass);
  FailField.Value    := IntToStr(Fail);
  NotDoneField.Value := IntToStr(NotDone);
end;

procedure TInvInspHistForm.InvServTypeIDFieldExit(Sender: TObject);
begin
  inherited;
  If AnyStrToInt(InvServTypeIDField.Value) > 0 then
    LoadInvServTypeItemBrowse;
  If mFireID = '12309' then begin
    if DateDoneField.Value < 1 then
      DateDoneField.Value      := Now;
    if StartTimeField.Value < 1 then
      StartTimeField.Value     := Now;
  end;
end;

procedure TInvInspHistForm.FormShow(Sender: TObject);
begin
  inherited;
  InvServTypeIDFieldExit(self);
  InvIDField.Enabled          := (InvIDField.Value = '');
  RedNarrPanel.Visible        := Not (alltrim(RedNarrField.Value) = '');

  If mFireID = '12309' then begin
    If APPRPERSIDField.Value <> '' then
      ViewOnly := Not CheckSecVar('INVAPPR');

    ApprPersIDLabel.Visible  := true;
    ApprPersIDField.Visible  := true;
    ApprPersIDLabel.Enabled  := CheckSecVar('INVAPPR');
    ApprPersIDField.Enabled  := CheckSecVar('INVAPPR');
  end else if (mFireID = '12345') or (mFireID = '20019') then begin
    ApprPersIDLabel.Visible  := true;
    ApprPersIDField.Visible  := true;
  end else begin  
    ApprPersIDLabel.Visible  := false;
    ApprPersIDField.Visible  := false;
  end;

  GenInfoPanel.Enabled        := Not ViewOnly;
  InfoPanel1.Enabled          := Not ViewOnly;
  InfoPanel2.Enabled          := Not ViewOnly;
  InfoPanel3.Enabled          := Not ViewOnly;
  ServiceEditButton.Enabled   := Not ViewOnly;
  OKButton.Enabled            := Not ViewOnly;
  ServiceDeleteButton.Enabled := Not ViewOnly;
  TagButton.Visible           := Not ViewOnly and (InvServForm = 'SCBAINSP');
  ShowReadings;

  If ((mFireID = '20002') or (MFireID = '12309')) then begin
    StartTimeLabel.visible := true;
    EndTimeLabel.visible   := true;
    StartTimeField.Visible := true;
    EndTimeField.Visible   := true;
  end;
  If MFireID = '12309' then
    LaborTotalField.Value := '19.00';
  Height               := Screen.Height - 200;
  PassField.Enabled    := false;
  FailField.Enabled    := false;
  NotDoneField.Enabled := false;
end;

procedure TInvInspHistForm.HourButtonClick(Sender: TObject);
begin
  inherited;
  TInvForm.UpdateReader(InvIDField.Value, OdometerField.Value, HourField.Value, HourEngineField.Value, HourAerialField.Value);
end;

procedure TInvInspHistForm.UpdateButtonClick(Sender: TObject);
begin
  inherited;
  TInvForm.UpdateReader(InvIDField.Value, OdometerField.Value, HourPumpField.Value, HourEngineField.Value, HourAerialField.Value);
end;

procedure TInvInspHistForm.ApprPersIDFieldEnter(Sender: TObject);
begin
  inherited;
  ApprPersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TInvInspHistForm.EndTimeFieldExit(Sender: TObject);
begin
  inherited;
  If not ANSIContainsStr(DateTimeToStr(StartTimeField.Value),'1899') then
    LaborLengthTotalField.Value  := FormatFloat('###.##',24 * (EndTimeField.Value - StartTimeField.Value));
  LaborLengthTotalFieldAfterExit(Self);
end;

procedure TInvInspHistForm.FormCreate(Sender: TObject);
begin
  inherited;
  Open_Query('INVSERVTYPESTATUS',false,'SELECT * FROM INVSERVTYPESTATUS ORDER BY SORTORD');
  DefInvServTypeStatusID := GetField('INVSERVTYPESTATUS','INVSERVTYPESTATUSID').AsString;
  CloseApollo('INVSERVTYPESTATUS');

  InvServForm         := SqlLookUp(pk,'INVSERVHISTID','INVSERVHIST','INVSERVFORM');
  If substr(InvServForm,1,3) = 'APP' then begin
    InvIDField.DisplayField     := 'UNITNUM';
    InvIDField.LookUpCode       := 'UNITNUM';
    InvIDField.ReferencingTable := 'VWTRUCK';
    ReadingPanel.Visible        := true;
    MilePanel.Visible           := true;
    MilePanel.Align             := alclient;
    InvIDLabel.Caption          := 'Unit#';
  end else if substr(InvServForm,1,4) = 'SCBA' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := false;
    HourPanel.Visible           := false;
    InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('SCBA') + ' ORDER BY INVNUM';
    InvIDLabel.Caption          := 'SCBA#';
  end else if substr(InvServForm,1,4) = 'HOSE' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := false;
    HourPanel.Visible           := false;
    InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('HOSE') + ' ORDER BY INVNUM';
    InvIDLabel.Caption          := 'Hose#';
  end else begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := (substr(InvServForm,1,3) = 'INV');
    HourPanel.Visible           := (substr(InvServForm,1,3) = 'INV');
    If substr(InvServForm,1,3) = 'STA' then begin
      InvIDLabel.Caption          := 'Station#';
      InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('STATION') + ' ORDER BY INVNUM';
    end else begin
      InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('GEN') + ' ORDER BY INVNUM';
      InvIDLabel.Caption          := 'Inventory#';
    end;
  end;
  ResetInvServTypeItemBrowse;
  ViewOnly := Not TInvForm.CheckInvSecurity(InvServForm);
  If (mFireID = '23239') and (substr(InvServForm,1,3) = 'APP') then begin
    DateDoneField.enabled  := CheckSecVar('INVSETUP');
  end;

  InvServTypeIDField  .LookupFormWidth := 400;
  RolodexIDField      .LookupFormWidth := 213;
  PersIDField         .LookupFormWidth := 213;
  APPRPERSIDField     .LookupFormWidth := 213;
  InvServStatusIDField.LookupFormWidth := 213;
end;

procedure TInvInspHistForm.ServiceEditButtonClick(Sender: TObject);
Var InvServTypeHistID : String;
begin
  inherited;
  if InvServTypeItemBrowse.Row = 0 then
    ShowMessage('You have no inspection checks set up for the inspection type selected.')
  else begin
    Open_Query('INVSERVTYPEHIST',false,'SELECT * FROM INVSERVTYPEHIST WHERE INVSERVHISTID = ' + pk + ' AND INVSERVTYPEITEMID = ' + InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row));
    If A('INVSERVTYPEHIST').RecordsExist then
      InvServTypeHistID := GetField('INVSERVTYPEHIST','INVSERVTYPEHISTID').AsString
    else
      InvServTypeHistID := '-1';
    CloseApollo('INVSERVTYPEHIST');
    RunAlpineFormShowModal(TInvServTypeHistForm,InvServTypeHistID,'INVSERVTYPEHIST',InvServTypeHistNewRecord);

    Open_Query('INVSERVTYPEHIST',false,'SELECT * FROM INVSERVTYPEHIST WHERE INVSERVHISTID = ' + pk + ' AND INVSERVTYPEITEMID = ' + InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row));
    If A('INVSERVTYPEHIST').RecordsExist then begin
      InvServTypeItemBrowse.SetValue('STATUS',InvServTypeItemBrowse.Row,SqlLookUp(GetField('INVSERVTYPEHIST','INVSERVTYPESTATUSID').AsString,'INVSERVTYPESTATUSID','INVSERVTYPESTATUS','DESCR') + ' ' + Getfield('INVSERVTYPEHIST','NARR').AsString);
    end else begin
      InvServTypeItemBrowse.SetValue('STATUS','-');
    end;

    CloseApollo('INVSERVTYPEHIST');
  end;
  LoadInvServItemStatus;
end;

procedure TInvInspHistForm.TagButtonClick(Sender: TObject);
begin
  inherited;
  InvInspHistBatchForm := TInvInspHistBatchForm.Create(application,pk,'SCBAINSP');
  InvInspHistBatchForm.ShowModal;
  InvInspHistBatchForm.Free;
end;

procedure TInvInspHistForm.InvIDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  ShowReadings;
end;

procedure TInvInspHistForm.InvServStatusIDFieldEnter(Sender: TObject);
VAR SQLStat : String;
begin
  inherited;
  if mfireid = '12309' then begin
    if CheckSecVar('INVAPPR') then begin
      InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE INVSERVFORMLIST = ' + AddExpr('') + ' OR INVSERVFORMLIST IS NULL OR INVSERVFORMLIST LIKE ' + AddExpr('%' + InvServForm + '%')
    end else
      InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE (APPROVEYN IS NULL OR APPROVEYN = ' + AddExpr('N') + ') AND (INVSERVFORMLIST = ' + AddExpr('') + ' OR INVSERVFORMLIST IS NULL OR INVSERVFORMLIST LIKE ' + AddExpr('%' + InvServForm + '%') + ')';
  end else begin
    SQLStat := SQLLookUp(InvServTypeIDField.Value,'INVSERVTYPEID','INVSERVTYPE','SQLSTAT');
    SQLStat := alltrim(SearchAndReplace(SQLStat,'INVSERVTYPESTATUS','INVSERVSTATUS'));

    If SQLStat = '' then
      InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE INVSERVFORMLIST = ' + AddExpr('') + ' OR INVSERVFORMLIST IS NULL OR INVSERVFORMLIST LIKE ' + AddExpr('%' + InvServForm + '%')
    else
      InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE ' + SQLStat;
  end;
end;

procedure TInvInspHistForm.InvServTypeHistNewRecord(DataSet: TDataSet);
Var InvServTypeItemID   : String;
    InvServTypeStatusID : String;
begin
  InvServTypeStatusID                                 := InvServTypeItemBrowse.GetValue('INVSERVTYPESTATUSID',InvServTypeItemBrowse.Row);
  InvServTypeStatusID                                 := IIf(InvServTypeStatusID = '',DefInvServTypeStatusID,InvServTypeStatusID);
  InvServTypeItemID                                   := InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row);
  DataSet.FieldByName('NARR').AsString                := ' ';
  DataSet.FieldByName('INVSERVTYPEITEMID').AsString   := InvServTypeItemID;
  DataSet.FieldByName('INVSERVHISTID').AsString       := pk;
  DataSet.FieldByName('INVSERVTYPESTATUSID').AsString := InvServTypeStatusID;
end;

procedure TInvInspHistForm.OKButtonClick(Sender: TObject);
Var InvServTypeHistID   : String;
    InvServTypeStatusID : String;
begin
  inherited;
  InvServTypeStatusID := InvServTypeItemBrowse.GetValue('INVSERVTYPESTATUSID',InvServTypeItemBrowse.Row);
  InvServTypeStatusID := IIf(InvServTypeStatusID = '',DefInvServTypeStatusID,InvServTypeStatusID);

  if InvServTypeItemBrowse.Row = 0 then
    ShowMessage('You have no inspection checks set up for the inspection type selected.')
  else begin
    Open_Query('INVSERVTYPEHIST',true,'SELECT * FROM INVSERVTYPEHIST WHERE INVSERVHISTID = ' + pk + ' AND INVSERVTYPEITEMID = ' + InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row));
    If A('INVSERVTYPEHIST').RecordsExist then
      GetTable('INVSERVTYPEHIST').Edit
    else
      GetTable('INVSERVTYPEHIST').Append;
    GetField('INVSERVTYPEHIST','INVSERVHISTID').AsString        := pk;
    GetField('INVSERVTYPEHIST','INVSERVTYPEITEMID').AsString   := InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row);
    GetField('INVSERVTYPEHIST','INVSERVTYPESTATUSID').AsString := InvServTypeStatusID;
    GetTable('INVSERVTYPEHIST').Post;

    If GetField('INVSERVTYPEHIST','INVSERVTYPEHISTID').AsInteger > 0 then
      InvServTypeHistID := GetField('INVSERVTYPEHIST','INVSERVTYPEHISTID').AsString
    else
      InvServTypeHistID := A('INVSERVTYPEHIST').NewPK;

    InvServTypeItemBrowse.SetValue('STATUS',InvServTypeItemBrowse.Row,SqlLookUp(InvServTypeStatusID,'INVSERVTYPESTATUSID','INVSERVTYPESTATUS','DESCR') + ' ' + SqlLookUp(InvServTypeHistID,'INVSERVTYPEHISTID','INVSERVTYPEHIST','NARR'));
    CloseApollo('INVSERVTYPEHIST');
  end;
  LoadInvServItemStatus;
end;

procedure TInvInspHistForm.ServiceDeleteButtonClick(Sender: TObject);
Var InvServTypeItemID : String;
begin
  inherited;
  if InvServTypeItemBrowse.Row = 0 then
    ShowMessage('You have no inspection checks set up for the inspection type selected.')
  else begin
    InvServTypeItemID := InvServTypeItemBrowse.GetValue('INVSERVTYPEITEMID',InvServTypeItemBrowse.Row);
    RunSQL('DELETE FROM INVSERVTYPEHIST WHERE INVSERVHISTID = ' + pkValue(PK) + ' AND INVSERVTYPEITEMID = ' + PkValue(InvServTypeItemID));
    InvServTypeItemBrowse.SetValue('STATUS',InvServTypeItemBrowse.Row,'-');
  end;
  LoadInvServItemStatus;
end;

procedure TInvInspHistForm.InvServTypeItemBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_SPACE) and OKButton.Enabled then
    OKButtonClick(self)
  else if (Key = VK_RETURN) and OKButton.Enabled then
    ServiceEditButtonClick(self)
  else if (Key = VK_DELETE) and OKButton.Enabled then
    ServiceDeleteButtonClick(self);
end;

procedure TInvInspHistForm.InvServTypeItemBrowseDblClick(Sender: TObject);
begin
  inherited;
  If OKButton.Enabled then
    ServiceEditButtonClick(self);
end;

procedure TInvInspHistForm.ShowReadings;
begin
  Open_Query('GETINV',false,'SELECT ODOMETER, HOURENGINE, HOURPUMP, HOURAERIAL FROM INV WHERE INVID = ' + pkValue(InvIDField.Value));
  COdometerField  .Value   := GetField('GETINV','ODOMETER').AsString;
  CHourEngineField.Value   := GetField('GETINV','HOURENGINE').AsString;
  CHourField      .Value   := GetField('GETINV','HOURENGINE').AsString;
  CHourPumpField  .Value   := GetField('GETINV','HOURPUMP').AsString;
  CHourAerialField.Value   := GetField('GETINV','HOURAERIAL').AsString;
  CloseApollo('GETINV');

  COdometerField  .Enabled := false;
  CHourEngineField.Enabled := false;
  CHourPumpField  .Enabled := false;
  CHourAerialField.Enabled := false;
  CHourField      .Enabled := false;
end;

procedure TInvInspHistForm.LoadInvServItemStatus;
Var Pass    : Integer;
    Fail    : Integer;
    NotDone : Integer;
begin
  Pass    := 0;
  Fail    := 0;
  NotDone := 0;
  Open_Query('INVSERVTYPEHIST',false,'SELECT INVSERVTYPEHIST.INVSERVTYPEITEMID, INVSERVTYPESTATUS.OPENSTAT FROM INVSERVTYPEHIST ' +
                                     'LEFT JOIN INVSERVTYPESTATUS ON (INVSERVTYPESTATUS.INVSERVTYPESTATUSID = INVSERVTYPEHIST.INVSERVTYPESTATUSID) ' +
                                     'WHERE INVSERVHISTID = ' + PkValue(PK));
  Open_Query('INVSERVTYPEITEM',false,'SELECT * FROM INVSERVTYPEITEM WHERE INVSERVTYPEID = ' + PkValue(InvServTypeIDField.Value) + ' ORDER BY SORTORD ');
  While Not A('INVSERVTYPEITEM').Eof do begin
    If A('INVSERVTYPEHIST').ExactQueryLocate('INVSERVTYPEITEMID',GetField('INVSERVTYPEITEM','INVSERVTYPEITEMID').AsString) then begin
      If tdbfield('INVSERVTYPEHIST','OPENSTAT') = 'Y' then
        Fail := Fail + 1
      else
        Pass := Pass + 1
    end else begin
      NotDone := NotDone + 1
    end;

    A('INVSERVTYPEITEM').Skip(1);
  end;
  CloseApollo('INVSERVTYPEITEM');
  CloseApollo('INVSERVTYPEHIST');
  PassField.Value    := IntToStr(Pass);
  FailField.Value    := IntToStr(Fail);
  NotDoneField.Value := IntToStr(NotDone);
end;


initialization
  RegisterIndividualReport(TInvInspHistRepForm,'INDINVINSPHISTREP','Full Service or Inspection Entry','INVSERVHIST','',False,1 );

end.
