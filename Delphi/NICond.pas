unit NICond;

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
  HTMLChkList,
  Grids,
  BaseGrid,
  AdvGrid,
  alpinebaseCond,
  ALPINEDATETIME,
  AlpineBaseSummaryReport,
  AlpineLookup,
  QrCtrls,
  QuickRpt,
  AdvGroupBox,
  AdvObj,
  SysRepMan,
  AlpineCheck;

type
  TNICondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    NIPTYPEPanel: TAdvPanel;
    NIPTYPEBrowse: TAdvStringGrid;
    NISTYPEPanel: TAdvPanel;
    NISTYPEBrowse: TAdvStringGrid;
    NILOSAPCATPanel: TAdvPanel;
    NILOSAPCATBrowse: TAdvStringGrid;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    PersCodePanel: TAdvPanel;
    ShiftNamePanel: TAdvPanel;
    Label8: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    LocationPanel: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    LocationIDField: TAlpineLookup;
    FdidCompPanel: TAdvPanel;
    Label3: TLabel;
    Label4: TLabel;
    FdidCompIDField: TAlpineLookup;
    customfieldspanel: TAdvPanel;
    Label6: TLabel;
    Label30: TLabel;
    UnitNumField: TAlpineLookup;
    PersIDLabel: TLabel;
    PersIDDescr: TLabel;
    PersIDField: TAlpineLookup;
    PersIDAttendCheck: TAlpineCheckBox;
    Label19: TLabel;
    SchdLocPanel: TAdvPanel;
    Label5: TLabel;
    Label7: TLabel;
    SchdLocIDField: TAlpineLookup;
    procedure FormCreate(Sender: TObject);
    procedure FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure EnableSave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FdidCompIDFieldEnter(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure SchdShiftNameIDFieldEnter(Sender: TObject);
    procedure UnitNumFieldEnter(Sender: TObject);
    procedure PersIDFieldSetDescription(Sender: TObject);
    procedure NIPTYPEBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure NISTYPEBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer;
      State: Boolean);
    procedure NILOSAPCATBrowseClick(Sender: TObject);
    procedure LocationIDFieldEnter(Sender: TObject);
    procedure SchdLocIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    FSysRepManForm: TSysRepmanForm;
    NoCustomFields: Boolean;
    Procedure LoadFdidBrowse;
    Procedure LoadNIPTypeBrowse;
    Procedure LoadNISTypeBrowse;
    Procedure LoadNILosapCATBrowse;
    procedure SetCustomFields;
    function GetNiCustomWhere: String;    
  public
    function GetNIPTypeWhere    : String;
    function GetNISTypeWhere    : String;
    function GetNILosapCATWhere : String;
    function GetFdidWhere1      : String;
    function SqlWhereClause     : String; override;
    function InitialDate        : TDateTime; override;
    function FinalDate          : TDateTime; override;
    function OrderClause        : String; override;
    function GetFdidString      : String;
    function GetNIPTypeString   : String;
    function GetNISTypeString   : String;
    class procedure PrintTitles(BandName : TQRBand);
  end;
var
  NICondForm: TNICondForm;

implementation

{$R *.DFM}

uses GenFunc,
     NIHistRep,
     NIRep,
     NILosapRep,
     NISetRep,
     NITrainCATRep,
     NITrainCATCountRep,
     NITrainCatDateRep,
     NIMonthByType,
     SecSet,
     SortGridView,
     CommonVar,
     CommonFunc;

procedure TNICondForm.FormCreate(Sender: TObject);
begin
  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));

  LoadFdidBrowse;
  LoadNIPTypeBrowse;
  LoadNISTypeBrowse;
  LoadNILosapCATBrowse;
  SetCustomFields;
end;

procedure TNICondForm.SchdLocIDFieldEnter(Sender: TObject);
begin
  SchdLocIDField.LookupFormWidth := 320;
  SchdLocIDField.SQLExpr := 'SELECT * FROM SCHDLOC WHERE ' + GetFdidSQL('SCHDLOC.FDID') + ' ORDER BY SORTORD,CODE';
end;

procedure TNICondForm.SchdShiftNameIDFieldEnter(Sender: TObject);
begin
  SchdShiftNameIDField.LookupFormWidth := 320;
  SchdShiftNameIDField.SQLExpr := 'SELECT * FROM SCHDSHIFTNAME WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID') + ' ORDER BY SORTORD,CODE';
end;

procedure TNICondForm.SetCustomFields;
var i        : Integer;
    bVisible : Boolean;
begin
  NoCustomFields := true;
  for i := 1 to 6 do begin
    bVisible := SqlTableRecCount('select count(*) from niuser'+inttostr(i))>0;
    with TAlpineLookup.Create(self) do begin
      parent             := customfieldspanel;
      top                := 22;
      left               := 41 + ((i-1)*135);
      Width              := 82;
      EditWidth          := 60;
      DisplayField       := 'CODE';
      ReferencingTable   := 'niuser' + inttostr(i);
      ReferencingField   := 'niuser' + inttostr(i)+'id';
      name               := 'niuser' + inttostr(i)+'field';
      LookupCode         := 'CODEDESCR';
      OnChange           := EnableSave;
      DisplayDescription := False;
      visible            := bVisible;
    end;
    with TLabel.create(self) do begin
      parent             := customfieldspanel;
      top                := 25;
      font.color         := clBlack;
      left               := 4 + ((i-1)*135);
      Caption            := 'Field '+inttostr(i);
      visible            := bVisible;
    end;
    if bVisible then
      NoCustomFields     := False;
  end;
end;

procedure TNICondForm.FormShow(Sender: TObject);
begin
  FdidPanel.Visible := MultiFdid;
  if NoCustomFields then
    customfieldspanel.visible := False;
  If FSysRepManForm<>nil then
    FSysRepManForm.ReLoadSettings;
end;

Procedure TNICondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 0;
  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;

  RowNum := 0;

  Open_Query('FDID',false,'SELECT FDID, SHORTDESCR, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := Getfield('FDID','SHORTDESCR').AsString;

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

procedure TNICondForm.FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowVar : Integer;
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
  If (ARow = 0) and State then begin
    For RowVar := 1 to (Sender as TAdvStringGrid).RowCount-2 do
      (Sender as TAdvStringGrid).SetCheckBoxState(1,RowVar,false);
  end else if (ARow > 0) and State then
    (Sender as TAdvStringGrid).SetCheckBoxState(1,0,false);
end;

procedure TNICondForm.FdidCompIDFieldEnter(Sender: TObject);
begin
  FdidCompIDField.LookupFormWidth := 320;
  FdidCompIDField.SQLExpr         := 'SELECT * FROM FDIDCOMP WHERE ' + GetFdidSQL('FDIDCOMP.FDID') + ' ORDER BY DESCR';
end;

function TNICondForm.GetFdidWhere1: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to FdidBrowse.RowCount-1 do begin
    FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetFdidWhere1 := WhereString;
end;

procedure TNICondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TNICondForm.SqlWhereClause: String;
Var NIPTypeIDString  : String;
    NISTypeIDString  : String;
    NILosapCATString : String;
    NiCustomString   : String;
    FdidString       : String;

begin
  Result := ' WHERE 1=1 ';
  If BuildSQLAlpineDate('NI.DATETIMESTART',StartDateField.Value,EndDateField.Value) <> '' then
    Result := Result + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',StartDateField.Value,EndDateField.Value);

  NIPTypeIDString := GetNIPTypeWhere;
  If Not (NIPTypeIDString = '') then
    Result := Result + ' AND ' + NIPTypeIDString;

  NISTypeIDString := GetNISTypeWhere;
  If Not (NISTypeIDString = '') then
    Result := Result + ' AND ' + NISTypeIDString;

  NILosapCATString := GetNILosapCatWhere;
  If Not (NILosapCATString = '') then
    Result := Result + ' AND ' + NILosapCATString;

  NiCustomString := GetNicustomWhere;
  If Not (NiCustomString = '') then
    Result := Result + ' AND ' + NiCustomString;

  If Not (SchdShiftNameIDField.Value = '') then
    Result := Result + ' AND NI.SCHDSHIFTNAMEID = ' + AddExpr(SchdShiftNameIDField.Value);

  If Not (LocationIDField.Value = '') then
    Result := Result + ' AND NI.LOCATIONID = ' + AddExpr(LocationIDField.Value);

  If Not (SchdLocIDField.Value = '') then
    Result := Result + ' AND NI.SCHDLOCID = ' + AddExpr(SchdLocIDField.Value);

  If Not (FdidCompIDField.Value = '') then
    Result := Result + ' AND NI.FDIDCOMPID = ' + AddExpr(FdidCompIDField.Value);

  If Not (UnitNumField.Value = '') then
    Result := Result + ' AND NI.UNITNUM = ' + AddExpr(UnitNumField.Value);

  FdidString       := GetFdidWhere1;
  If Not (FdidString = '') then
    Result := Result + ' AND ' + FdidString;

  SQLWhereClause := Result;
end;

procedure TNICondForm.UnitNumFieldEnter(Sender: TObject);
begin
  UnitNumField.LookupFormWidth := 320;
  UnitNumField.SQLExpr := 'SELECT * FROM VWINV WHERE ' + GetFdidSQL('VWINV.FDID') + ' AND TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y') + ' ORDER BY UNITNUM';
end;

function TNICondForm.GetNiCustomWhere: String;
var i : Integer;
    l : TAlpineLookup;
begin
  result := '';
  if customfieldspanel.visible then begin
    for i := 1 to 6 do begin
      if FindComponent('niuser'+inttostr(i)+'field')<>nil then begin
        l := TAlpineLookup(FindComponent('niuser'+inttostr(i)+'field'));
        if l.Value <> '' then begin
          if result <> '' then
            result := result + ' AND ';
          result := result + '(ni.niuser'+inttostr(i)+'id='+l.Value+')';
        end;  
      end;
    end;
  end;
end;

function TNICondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

function TNICondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

function TNICondForm.OrderClause: String;
begin
  result := ' ' + ' ORDER BY NI.DATETIMESTART';
end;

function TNICondForm.GetNIPTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NIPTypeBrowse.RowCount-2 do begin
    CheckValue := false;
    NIPTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.NIPTYPEID = ' + NIPTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetNIPTypeWhere := WhereString;
end;


Procedure TNICondForm.LoadNIPTypeBrowse;
Var RowNum : Integer;
begin
  NIPTYPEBrowse.clear;
  NIPTYPEBrowse.ColCount      := 5;
  NIPTYPEBrowse.RowCount      := 3;

  NIPTYPEBrowse.ColWidths[00] := 000;
  NIPTYPEBrowse.ColWidths[01] := 020;
  NIPTYPEBrowse.ColWidths[02] := IIf(MultiFdid,100,0);
  NIPTYPEBrowse.ColWidths[03] := 150;
  NIPTYPEBrowse.ColWidths[04] := 750;

  NIPTYPEBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE WHERE ' + GetFdidSQL('NIPTYPE.FDID') + '  ORDER BY CODE');
  While Not A('NIPTYPE').Eof do begin
    NIPTYPEBrowse.Cells[0,RowNum] := Getfield('NIPTYPE','NIPTYPEID').AsString;
    NIPTYPEBrowse.AddCheckBox(1,RowNum,false,false);
    NIPTYPEBrowse.Cells[2,RowNum] := Getfield('NIPTYPE','FDID').AsString;
    NIPTYPEBrowse.Cells[3,RowNum] := Getfield('NIPTYPE','CODE').AsString;
    NIPTYPEBrowse.Cells[4,RowNum] := Getfield('NIPTYPE','DESCR').AsString;
    If (RowNum > 1) then
      NIPTYPEBrowse.RowCount := NIPTYPEBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');
end;

function TNICondForm.GetNISTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NISTypeBrowse.RowCount-2 do begin
    CheckValue := false;
    NISTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.NISTYPEID = ' + NISTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetNISTypeWhere := WhereString;
end;

Procedure TNICondForm.LoadNISTypeBrowse;
Var RowNum : Integer;
begin
  NISTYPEBrowse.clear;
  NISTYPEBrowse.ColCount      := 5;
  NISTYPEBrowse.RowCount      := 3;

  NISTYPEBrowse.ColWidths[00] := 000;
  NISTYPEBrowse.ColWidths[01] := 020;
  NISTYPEBrowse.ColWidths[02] := IIf(MultiFdid,100,0);
  NISTYPEBrowse.ColWidths[03] := 150;
  NISTYPEBrowse.ColWidths[04] := 750;

  NISTYPEBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE WHERE ' + GetFdidSQL('NISTYPE.FDID') + ' ORDER BY CODE');
  While Not A('NISTYPE').Eof do begin
    NISTYPEBrowse.Cells[0,RowNum] := Getfield('NISTYPE','NISTYPEID').AsString;
    NISTYPEBrowse.AddCheckBox(1,RowNum,false,false);
    NISTYPEBrowse.Cells[2,RowNum] := Getfield('NISTYPE','FDID').AsString;
    NISTYPEBrowse.Cells[3,RowNum] := Getfield('NISTYPE','CODE').AsString;
    NISTYPEBrowse.Cells[4,RowNum] := Getfield('NISTYPE','DESCR').AsString;
    If (RowNum > 1) then
      NISTYPEBrowse.RowCount := NISTYPEBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NISTYPE').Skip(1);
  end;
  CloseApollo('NISTYPE');
end;

procedure TNICondForm.LocationIDFieldEnter(Sender: TObject);
begin
  LocationIDField.LookupFormWidth := 320;
  LocationIDField.SQLExpr := 'SELECT * FROM LOCATION WHERE ' + GetFdidSQL('LOCATION.FDID') + ' ORDER BY CODE';
end;

procedure TNICondForm.NILOSAPCATBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TNICondForm.NIPTYPEBrowseCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TNICondForm.NISTYPEBrowseCheckBoxClick(Sender: TObject; ACol,
  ARow: Integer; State: Boolean);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TNICondForm.GetNILosapCATWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NILosapCATBrowse.RowCount-2 do begin
    NILosapCATBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NI.NILOSAPCATID = ' + NILosapCATBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetNILosapCATWhere := WhereString;
end;

Procedure TNICondForm.LoadNILosapCATBrowse;
Var RowNum : Integer;
begin
  NILosapCATBrowse.clear;
  NILosapCATBrowse.ColCount      := 5;
  NILosapCATBrowse.RowCount      := 3;

  NILosapCATBrowse.ColWidths[00] := 000;
  NILosapCATBrowse.ColWidths[01] := 020;
  NILosapCATBrowse.ColWidths[02] := IIf(MultiFdid,100,0);
  NILosapCATBrowse.ColWidths[03] := 150;
  NILosapCATBrowse.ColWidths[04] := 750;

  NILosapCATBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NILOSAPCAT',false,'SELECT * FROM NILOSAPCAT WHERE ' + GetFdidSQL('NILOSAPCAT.FDID') + ' ORDER BY CODE');
  While Not A('NILOSAPCAT').Eof do begin
    NILosapCATBrowse.Cells[0,RowNum] := Getfield('NILOSAPCAT','NILOSAPCATID').AsString;
    NILosapCATBrowse.AddCheckBox(1,RowNum,false,false);
    NILosapCATBrowse.Cells[2,RowNum] := Getfield('NILOSAPCAT','FDID').AsString;
    NILosapCATBrowse.Cells[3,RowNum] := Getfield('NILOSAPCAT','CODE').AsString;
    NILosapCATBrowse.Cells[4,RowNum] := Getfield('NILOSAPCAT','DESCR').AsString;
    If (RowNum > 1) then
      NILosapCATBrowse.RowCount := NILosapCATBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('NILOSAPCAT').Skip(1);
  end;
  CloseApollo('NILOSAPCAT');
end;

procedure TNICondForm.PersIDFieldEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    PersIDField.LookUpCode := 'PERSBYPERSCODE';
  PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + IIf(PersIDAttendCheck.Checked,'',' AND ATTEND = ' + AddExpr('Y')) + ' AND LNAME IS NOT NULL ORDER BY ' + GlobalPersSort;
end;

procedure TNICondForm.PersIDFieldSetDescription(Sender: TObject);
begin
  SetLastNameFirstNameForLookup(TAlpineLookup(Sender));
end;

class procedure TNICondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    Form               : TForm;
    RowNum             : Integer;
    FdidString         : String;
    DateString         : String;
    NIPTypeString      : String;
    NISTypeString      : String;
begin
  Form               := GetFormOfType(TNICondForm);
  FdidString         := TNICondForm(Form).GetFdidString;
  DateString         := GetAlpineDateLabel(TNICondForm(Form).StartDateField.Value,TNICondForm(Form).EndDateField.Value);
  NIPTypeString      := TNICondForm(Form).GetNIPTypeString;
  NISTypeString      := TNICondForm(Form).GetNISTypeString;

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (DateString = '') then begin
    ConditionLabelList.Add('Date Range');
    ConditionFieldList.Add(DateString);
  end;

  If Not (NIPTypeString = '') then begin
    ConditionLabelList.Add('Primary Type');
    ConditionFieldList.Add(NIPTypeString);
  end;

  If Not (NISTypeString = '') then begin
    ConditionLabelList.Add('Secondary Type');
    ConditionFieldList.Add(NISTypeString);
  end;

  If Not (TNICondForm(Form).SchdShiftNameIDField.Value = '') then begin
    ConditionLabelList.Add('Shift');
    ConditionFieldList.Add(SqlLookup(TNICondForm(Form).SchdShiftNameIDField.Value,'SCHDSHIFTNAMEID','SCHDSHIFTNAME','DESCR'));
  end;

  If Not (TNICondForm(Form).FdidCompIDField.Value = '') then begin
    ConditionLabelList.Add('Company');
    ConditionFieldList.Add(SqlLookup(TNICondForm(Form).FdidCompIDField.Value,'FDIDCOMPID','FDIDCOMP','DESCR'));
  end;

  If Not (TNICondForm(Form).LocationIDField.Value = '') then begin
    ConditionLabelList.Add('Location');
    ConditionFieldList.Add(SqlLookup(TNICondForm(Form).LocationIdFIeld.Value,'LOCATIONID','LOCATION','DESCR'));
  end;

  If Not (TNICondForm(Form).SchdLocIDField.Value = '') then begin
    ConditionLabelList.Add('Schedule Location');
    ConditionFieldList.Add(SqlLookup(TNICondForm(Form).SchdLocIDField.Value,'SCHDLOCID','SCHDLOC','DESCR'));
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := 300;
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
    ConditionField.Left       := 404;
    ConditionField.Width      := BandName.Width - ConditionField.Left;
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

function TNICondForm.GetFdidString: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidString : String;
begin
  If MultiFdid then begin
    FdidString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        FdidString := FdidString + SqlLookUp(FdidBrowse.Cells[0,RowVar],'FDID','FDID','DEPTNAME') + ', ';
    end;
    If (FdidString = '') then
      FdidString := 'All Agencies'
    else
      FdidString := Substr(FdidString,1,Length(FdidString)-2);
    GetFdidString := FdidString;
  end else
    GetFdidString := '';
end;

function TNICondForm.GetNIPTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to NIPTYPEBrowse.RowCount-1 do begin
    NIPTYPEBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + NIPTYPEBrowse.Cells[4,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Sub Types'
  else
    Result := RetVal;
end;

function TNICondForm.GetNISTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to NISTYPEBrowse.RowCount-1 do begin
    NISTYPEBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + NISTYPEBrowse.Cells[4,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Sub Types'
  else
    Result := RetVal;
end;

initialization
  RegisterReport(TNIHistRepForm,         'NIHISTREP',         'Non Incident Summary History',       'NI','NICOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','NIPTYPEPANEL','NISTYPEPANEL','FDIDCOMPPANEL','CUSTOMFIELDSPANEL','SHIFTNAMEPANEL']);
  RegisterReport(TNIRepForm,             'NIREP',             'Non Incident Events with Attendance','NI','NICOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','NIPTYPEPANEL','NISTYPEPANEL','FDIDCOMPPANEL','SHIFTNAMEPANEL','SCHDLOCPANEL','CUSTOMFIELDSPANEL']);
  RegisterReport(TNILosapRepForm,        'NILOSAPREP',        'Non Incident Events:  Losap history','NI','NICOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','NIPTYPEPANEL','NISTYPEPANEL','NILOSAPCATPANEL','CUSTOMFIELDSPANEL']);
  RegisterReport(TNISetRepForm,          'NISETREP',          'Non Incident Event Types',           'NI','NICOND','Alpine Software Corporation',[]);
  RegisterReport(TNITrainCatRepForm,     'NITRAINCATREP',     'Training Categories',                'NI','NICOND','Alpine Software Corporation',[]);
  RegisterReport(TNITrainCatCountRepForm,'NITRAINCATCOUNTREP','Training Category Appearance Count', 'NI','NICOND','Alpine Software Corporation',[]);
  RegisterReport(TNITrainCatDateRepForm, 'NITRAINCATDATEREP', 'Training Category Appearance Dates', 'NI','NICOND','Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TNIMonthByTypeForm,     'NITYPEMONTHREP',    'Non Incident Event Type County By Month', 'NI','NICOND','Alpine Software Corporation',['FDIDPANEL','DATEPANEL','NIPTYPEPANEL','NISTYPEPANEL']);

end.
