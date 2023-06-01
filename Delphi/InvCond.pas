unit InvCond;

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
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  MySBox,
  AlpineBase,
  htmlbtns,
  AlpineBaseCond,
  AdvPanel,
  AlpineDateTime,
  AlpineBaseSummaryReport,
  AlpineLookup,
  Grids,
  BaseGrid,
  AdvGrid,
  alpinecheck,
  AdvGroupBox,
  qrctrls,
  quickrpt,
  BasePictureField,
  AlpineEdit,
  AdvObj;

type
  TInvCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    TypePanel: TAdvPanel;
    InvTypePanel: TAdvPanel;
    InvTypeBrowse: TAdvStringGrid;
    InvSubTypePanel: TAdvPanel;
    InvSubTypeBrowse: TAdvStringGrid;
    SortOrderPanel: TAdvPanel;
    SysRepSortIDLabel: TLabel;
    SysRepSortIDField: TAlpineLookup;
    InvNumPanel: TAdvPanel;
    InvNumLabel: TLabel;
    InvNumField: TAlpineLookup;
    InvLocPanel: TAdvPanel;
    Label1: TLabel;
    InvLocIDField: TAlpineLookup;
    InvLocIDPanel: TAdvPanel;
    Label2: TLabel;
    INVLOCIDFIELDForLocationReports: TAlpineLookup;
    DISPLAYSUBLOCATIONS: TAdvPanel;
    Label3: TLabel;
    DISPLAYSUBLOCATIONSCHECKBOX: TAlpineCheckBox;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    TestDatePanel: TAdvPanel;
    HoseTestDate: TLabel;
    TestDateField: TAlpineDateTime;
    PurchaseDatePanel: TAdvPanel;
    PurchaseLowerField: TAlpineDateTime;
    PurchaseLowerLabel: TLabel;
    PurchaseUpperField: TAlpineDateTime;
    ActiveAppPanel: TAdvPanel;
    Label4: TLabel;
    IncludeCheckBox: TAlpineCheckBox;
    InvPanel: TAdvPanel;
    Label5: TLabel;
    ValueSQLLowerField: TAlpineEdit;
    ValueSQLUpperField: TAlpineEdit;
    Label6: TLabel;
    BarPanel: TAdvPanel;
    Label7: TLabel;
    BarLowerField: TAlpineDateTime;
    BarUpperField: TAlpineDateTime;
    servicestatuspanel: TAdvPanel;
    na: TAlpineCheckBox;
    aok: TAlpineCheckBox;
    Schedule: TAlpineCheckBox;
    overdue: TAlpineCheckBox;
    HistoryDatePanel: TAdvPanel;
    Label8: TLabel;
    HistoryLowDateField: TAlpineDateTime;
    HistoryUpperDateField: TAlpineDateTime;
    InvStatPanel: TAdvPanel;
    InvStatBrowse: TAdvStringGrid;
    DisposalLabel: TLabel;
    Label38: TLabel;
    OutOfServiceDateLowerField: TAlpineDateTime;
    OutOfServiceDateUpperField: TAlpineDateTime;
    SoldDateLowerField: TAlpineDateTime;
    SoldDateUpperField: TAlpineDateTime;
    InvOwnerIdPanel: TAdvPanel;
    Label9: TLabel;
    InvOwnerIdField: TAlpineLookup;
    BarCodeDateField: TAlpineDateTime;
    Label10: TLabel;
    Label11: TLabel;
    InvSchdDueCheck: TRadioButton;
    InvAllCheck: TRadioButton;
    InvSchdCheck: TRadioButton;
    ExpDatePanel: TAdvPanel;
    Label12: TLabel;
    ExpDateField: TAlpineDateTime;
    Label13: TLabel;
    ManDateLowerField: TAlpineDateTime;
    ManDateUpperField: TAlpineDateTime;
    procedure SysRepSortIDFieldEnter(Sender: TObject);
    procedure SysRepSortIDFieldChange(Sender: TObject);
    procedure SysRepOwnerIDFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BrowseClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure FormShow(Sender: TObject);
    procedure INVOWNERIDFIELDEnter(Sender: TObject);
    procedure naClick(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadInvType;
    Procedure LoadInvSubType;
    procedure LoadFdidBrowse;
    Procedure LoadInvStat;


    function GetTypeWhere: String;
    function GetInvSubTypeIDWhere: String;
    function GetInvStatWhere: String;

    function GetFdidWhere: String;
  public
    LocReportsWhere: String;
    DateDoneWhere: String;
    function SelectOrder: String;
    function SqlWhereClause: String; override;
    function OrderClause: String; override;
    function GetFdidString: String;
    function GetTypeString: String;
    function GetSubTypeString: String;
    function GetInvStatString: String;
    Function GetActiveAppString: String;
    class procedure PrintTitles(BandName : TQRBand);
end;

var
  InvCondForm: TInvCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     SecSet,
     CommonFunc,
     CommonVar,
     InvLocRep,
     InvLocTechRep,
     InvRepList,
     InvRepExp,
     InvRepListAge,
     InvServStatRep,
     InvRep,
     InvLocBarCodeRep,
     InvBarCodeRep,
     InvCostByLocRep,
     InvValueRep,
     InvBarScanRep,
     InvFullListRep,
     InvImageListRep,
     InvFullGearListRep,
     InvSoldDispRep,
     InvLastServRep,
     HydroComplianceRep,
     HydroComplianceColorRep,
     RegulatorComplianceRep,
     SCBAListRep,
     InvInspListRep,
     NormalBase,
     InvByLocRep;

procedure TInvCondForm.FormCreate(Sender: TObject);
begin
  FdidPanel.Visible := MultiFdid;
  LoadInvType;
  LoadInvSubType;
  LoadInvStat;
end;

procedure TInvCondForm.FormShow(Sender: TObject);
begin
  LoadFdidBrowse;
  VertScrollBar.Position := 0;
end;

function TInvCondForm.SelectOrder: String;
begin
  result := TAlpineBaseConditionForm.ClassSelectOrder(SortOrderPanel,SysRepSortIDField);
end;

function TInvCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder;
end;

procedure TInvCondForm.SysRepSortIDFieldEnter(Sender: TObject);
begin
  SysRepSortIDField.SqlExpr := 'SELECT SYSREPSORT.SYSREPSORTID, SYSREPSORT.DESCR FROM SYSREPSORT ' +
                               'LEFT JOIN SYSREPCOND ON (SYSREPSORT.SYSREPCONDID = SYSREPCOND.SYSREPCONDID) ' +
                               'WHERE SYSREPCOND.CODE = ' + AddExpr('INVCOND') + ' ' +
                               'ORDER BY SYSREPSORT.DESCR';
end;

procedure TInvCondForm.SysRepSortIDFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TInvCondForm.SysRepOwnerIDFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

Procedure TInvCondForm.LoadInvType;
Var RowNum : Integer;
begin
  InvTypeBrowse.clear;
  InvTypeBrowse.ColCount := 3;
  InvTypeBrowse.RowCount := 3;

  InvTypeBrowse.ColWidths[00] := 000;
  InvTypeBrowse.ColWidths[01] := 020;
  InvTypeBrowse.ColWidths[02] := 200;

  InvTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INVTYPE',false,'SELECT * FROM INVTYPE ORDER BY DESCR');
  While Not A('INVTYPE').Eof do begin
    InvTypeBrowse.Cells[0,RowNum] := Getfield('INVTYPE','CODE').AsString;
    InvTypeBrowse.AddCheckBox(1,RowNum,false,false);
    InvTypeBrowse.Cells[2,RowNum] := Getfield('INVTYPE','DESCR').AsString;
    If (RowNum > 1) then
      InvTypeBrowse.RowCount := InvTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('INVTYPE').Skip(1);
  end;
  CloseApollo('INVTYPE');
end;

procedure TInvCondForm.naClick(Sender: TObject);
begin
  InvSchdDueCheck.Caption := 'Show only Inventory that has Service or Inspections ' + IIf(na.checked,' Never Done,','') + IIf(Schedule.checked,' Schedule It,','') + IIf(aok.checked,' AOK,','') + IIf(OverDue.checked,' OverDue,','');
  InvSchdDueCheck.Caption := substr(InvSchdDueCheck.Caption,1,Length(InvSchdDueCheck.Caption)-1);
end;

Procedure TInvCondForm.LoadInvSubType;
Var RowNum : Integer;
begin
  InvSubTypeBrowse.clear;
  InvSubTypeBrowse.ColCount := 4;
  InvSubTypeBrowse.RowCount := 0;

  InvSubTypeBrowse.ColWidths[00] := 000;
  InvSubTypeBrowse.ColWidths[01] := 020;
  InvSubTypeBrowse.ColWidths[02] := 100;
  InvSubTypeBrowse.ColWidths[03] := 300;

  InvSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INVSUBTYPE',false,'SELECT INVSUBTYPE.INVSUBTYPEID, INVSUBTYPE.TYPE, INVSUBTYPE.DESCR FROM INVSUBTYPE WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' ORDER BY TYPE, DESCR');
  While Not A('INVSUBTYPE').Eof do begin
    InvSubTypeBrowse.RowCount := InvSubTypeBrowse.RowCount + 1;
    InvSubTypeBrowse.Cells[0,RowNum] := Getfield('INVSUBTYPE','INVSUBTYPEID').AsString;
    InvSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
    InvSubTypeBrowse.Cells[2,RowNum] := Getfield('INVSUBTYPE','TYPE').AsString;
    InvSubTypeBrowse.Cells[3,RowNum] := Getfield('INVSUBTYPE','DESCR').AsString;
    RowNum := RowNum + 1;
    A('INVSUBTYPE').Skip(1);
  end;
  CloseApollo('INVSUBTYPE');
end;

Procedure TInvCondForm.LoadInvStat;
Var RowNum : Integer;
begin
  InvStatBrowse.clear;
  InvStatBrowse.ColCount := 3;
  InvStatBrowse.RowCount := 3;

  InvStatBrowse.ColWidths[00] := 000;
  InvStatBrowse.ColWidths[01] := 020;
  InvStatBrowse.ColWidths[02] := 200;

  InvStatBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INVSTAT',false,'SELECT * FROM INVSTAT WHERE ' + GetFdidSQL('INVSTAT.FDID') + ' ORDER BY DESCR');
  While Not A('INVSTAT').Eof do begin
    InvStatBrowse.Cells[0,RowNum] := Getfield('INVSTAT','INVSTATID').AsString;
    InvStatBrowse.AddCheckBox(1,RowNum,false,false);
    InvStatBrowse.Cells[2,RowNum] := Getfield('INVSTAT','DESCR').AsString;
    If (RowNum > 1) then
      InvStatBrowse.RowCount := InvStatBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('INVSTAT').Skip(1);
  end;
  CloseApollo('INVSTAT');
end;

Procedure TInvCondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 0;
  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;
  RowNum                   := 0;

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


procedure TInvCondForm.BrowseClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TInvCondForm.GetTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvTypeBrowse.RowCount-1 do begin
    InvTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.TYPE = ' + AddExpr(InvTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetTypeWhere := WhereString;
end;

procedure TInvCondForm.INVOWNERIDFIELDEnter(Sender: TObject);
begin
  InvOwnerIDField.SqlExpr := 'SELECT * FROM INVOWNER WHERE ' + GetFdidSQL('INVOWNER.FDID') + ' ORDER BY CODE';
end;

function TInvCondForm.GetInvStatWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvStatBrowse.RowCount-1 do begin
    InvStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.INVSTATID = ' + AddExpr(InvStatBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetInvStatWhere := WhereString;
end;


function TInvCondForm.GetInvSubTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvSubTypeBrowse.RowCount-1 do begin
    InvSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (InvSubTypeBrowse.Cells[0,RowVar]<>'') then
      WhereString := WhereString + ' OR INV.INVSUBTYPEID = ' + InvSubTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetInvSubTypeIDWhere := WhereString;
end;

function TInvCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then begin
        If SysRepManForm.ASysRep.ReportCode = 'INVLOCTECHREP' then
          WhereString := WhereString + ' OR INVLOC.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar])
        else
          WhereString := WhereString + ' OR INV.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then begin
      If SysRepManForm.ASysRep.ReportCode = 'INVLOCTECHREP' then
        WhereString := '(INVLOC.FDID IS NULL OR INVLOC.FDID = ' + AddExpr('') + ' OR ' + alltrim(substr(WhereString,5,Length(WhereString))) + ')'
      else
        WhereString := '(INV.FDID IS NULL OR INV.FDID = ' + AddExpr('') + ' OR ' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    end;
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;

function TInvCondForm.SqlWhereClause: String;
Var WhereString        : String;
    TypeString         : String;
    InvSubTypeIDString : String;
    InvOwnerDescr      : String;
    InvLocFullDescr    : String;
    FdidString         : String;
    InvStatString      : String;
begin
  TypeString         := GetTypeWhere;
  InvSubTypeIDString := GetInvSubTypeIDWhere;
  FdidString         := GetFdidWhere;
  InvStatString      := GetInvStatWhere;
  WhereString        := ' WHERE (1=1) ';

  If Not (InvNumField.Value = '') then
    WhereString := WhereString + ' AND INV.INVID = ' + InvNumField.Value;

  If Not (TypeString = '') then
    WhereString := WhereString + ' AND ' + TypeString;

  If Not (InvStatString = '') then
    WhereString := WhereString + ' AND ' + InvStatString;

  If Not (InvSubTypeIDString = '') then
    WhereString := WhereString + ' AND ' + InvSubTypeIDString;

  If Not (InvLocIDField.Value = '') then begin
    InvLocFullDescr := SQLLookUp(InvLocIDField.Value,'INVLOCID','INVLOC','FULLDESCR');
    WhereString     := WhereString + ' AND (INVLOC.FULLDESCR = ' +  AddExpr(InvLocFullDescr) + ' OR INVLOC.FULLDESCR LIKE ' + AddExpr(InvLocFullDescr + '->%') + ')';
  end;

  If Not (InvOwnerIDField.Value = '') then begin
    InvOwnerDescr   := SQLLookUp(InvOwnerIDField.Value,'INVOWNERID','INVOWNER','DESCR');
    WhereString     := WhereString + ' AND (INVOWNER.DESCR = ' +  AddExpr(InvOwnerDescr) + ' OR INVOWNER.DESCR LIKE ' + AddExpr(InvOwnerDescr + '->%') + ')';
  end;

  If Not (InvLocIDFieldForLocationReports.Value = '') then begin
    LocReportsWhere := ' WHERE INVLOC.INVLOCID = '+pkValue(INVLOCIDFIELDForLocationReports.Value)
  end else
    LocReportsWhere := '';

  If Not (BuildSQLAlpineDate('INVSERVHIST.DATEDONE',HistoryLowDateField.Value,HistoryUpperDateField.Value) = '') then
    DateDoneWhere := 'SELECT * FROM INVSERVHIST WHERE INVSERVHIST.DATEDONE = ' + BuildSQLAlpineDate('INVSERHIST.DATEDONE',HistoryLowDateField.Value,HistoryUpperDateField.Value);

  If Not (BuildSQLAlpineDate('INV.PURCHASEDATE',PurchaseLowerField.Value,PurchaseUpperField.Value) = '') then
    WhereString := WhereString + ' AND ' + BuildSQLAlpineDate('INV.PURCHASEDATE',PurchaseLowerField.Value,PurchaseUpperField.Value);

  If Not (BuildSQLAlpineDate('INV.MANDATE',ManDateLowerField.Value,ManDateUpperField.Value) = '') then
    WhereString := WhereString + ' AND ' + BuildSQLAlpineDate('INV.MANDATE',ManDateLowerField.Value,ManDateUpperField.Value);

  If Not (BuildSQLAlpineDate('INV.OUTOFSERVICEDATE',OutOfServiceDateLowerField.Value,OutOfServiceDateUpperField.Value) = '') then
    WhereString := WhereString + ' AND ' + BuildSQLAlpineDate('INV.OUTOFSERVICEDATE',OutOfServiceDateLowerField.Value,OutOfServiceDateUpperField.Value);

  If Not (BuildSQLAlpineDate('INV.SOLDDATE',SoldDateLowerField.Value,SoldDateUpperField.Value) = '') then
    WhereString := WhereString + ' AND ' + BuildSQLAlpineDate('INV.SOLDDATE',SoldDateLowerField.Value,SoldDateUpperField.Value);

  If Not (BuildSQLAlpineDate('INV.BARCODEDATE',BarLowerField.Value,BarUpperField.Value) = '') then
    WhereString := WhereString + ' AND ' + BuildSQLAlpineDate('INV.BARCODEDATE',BarLowerField.Value,BarUpperField.Value);

  If (AnyStrToFloat(ValueSQLLowerField.Value) > 0) or (AnyStrToFloat(ValueSQLUpperField.Value) > 0) then
    WhereString := WhereString + ' AND INV.VALUESQL >= ' + RemoveCharacter(ValueSQLLowerField.Value,',') + ' AND INV.VALUESQL <= ' + RemoveCharacter(ValueSQLUpperField.Value,',');

  If Not (FdidString = '') then
    WhereString := WhereString + ' AND ' + FdidString;

  If IncludeCheckBox.Checked then
    WhereString := WhereString + ' AND INCLUDE = ' + AddExpr('Y');

  Result := WhereString;
end;

function TInvCondForm.GetFdidString: String;
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

function TInvCondForm.GetTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to InvTypeBrowse.RowCount-1 do begin
    InvTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + InvTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Primary Types'
  else
    Result := RetVal;
end;

function TInvCondForm.GetInvStatString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to InvStatBrowse.RowCount-1 do begin
    InvStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + InvStatBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Status Types'
  else
    Result := RetVal;
end;


function TInvCondForm.GetSubTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to InvSubTypeBrowse.RowCount-1 do begin
    InvSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + InvSubTypeBrowse.Cells[3,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Sub Types'
  else
    Result := RetVal;
end;

Function TInvCondForm.GetActiveAppString: String;
begin
  If IncludeCheckBox.Checked then
    GetActiveAppString := 'Active Apparatus Only'
  else if ActiveAppPanel.Visible then
    GetActiveAppString := 'All Apparatus Included'
  else
    GetActiveAppString := '';
end;

class procedure TInvCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    Form               : TForm;
    RowNum             : Integer;
    FdidString         : String;
    TypeString         : String;
    SubTypeString      : String;
    InvLocString       : String;
    InvOwnString       : String;
    SortString         : String;
    PurchaseDateString : String;
    ManDateString      : String;
    HistoryDateString  : String;
    BarDateString      : String;
    ActiveAppString    : String;
    InvStatString      : String;
begin
  PurchaseDateString := '';
  ManDateString      := '';
  HistoryDateString  := '';

  Form               := GetFormOfType(TInvCondForm);
  FdidString         := TInvCondForm(Form).GetFdidString;
  TypeString         := TInvCondForm(Form).GetTypeString;
  SubTypeString      := TInvCondForm(Form).GetSubTypeString;
  InvStatString      := TInvCondForm(Form).GetInvStatString;
  InvLocString       := SqlLookUp(TInvCondForm(Form).InvLocIDField.Value,'INVLOCID','INVLOC','FULLDESCR');
  InvOwnString       := SqlLookUp(TInvCondForm(Form).InvOwnerIDField.Value,'INVOWNERID','INVOWNER','DESCR');
  SortString         := SqlLookUp(TInvCondForm(Form).SysRepSortIDField.Value,'SYSREPSORTID','SYSREPSORT','DESCR');

  If TInvCondForm(Form).HistoryDatePanel.Visible then
    HistoryDateString := GetAlpineDateLabel(TInvCondForm(Form).HistoryLowDateField.Value,TInvCondForm(Form).HistoryUpperDateField.Value);

  If (TInvCondForm(Form).PurchaseLowerField.Value > 0) or (TInvCondForm(Form).PurchaseLowerField.Value > 0)  then
    PurchaseDateString := GetAlpineDateLabel(TInvCondForm(Form).PurchaseLowerField.Value,TInvCondForm(Form).PurchaseUpperField.Value);

  If (TInvCondForm(Form).ManDateLowerField.Value > 0) or (TInvCondForm(Form).ManDateLowerField.Value > 0)  then
    ManDateString := GetAlpineDateLabel(TInvCondForm(Form).ManDateLowerField.Value,TInvCondForm(Form).ManDateUpperField.Value);
    
  If TInvCondForm(Form).BarPanel.Visible then
    BarDateString := GetAlpineDateLabel(TInvCondForm(Form).BarLowerField.Value,TInvCondForm(Form).BarUpperField.Value);

  ActiveAppString    := TInvCondForm(Form).GetActiveAppString;

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency:');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (TypeString = '') then begin
    ConditionLabelList.Add('Primary Type:');
    ConditionFieldList.Add(TypeString);
  end;

  If Not (SubTypeString = '') then begin
    ConditionLabelList.Add('Sub Type:');
    ConditionFieldList.Add(SubTypeString);
  end;

  If Not (InvLocString = '') then begin
    ConditionLabelList.Add('Location:');
    ConditionFieldList.Add(InvLocString);
  end;

  If Not (InvOwnString = '') then begin
    ConditionLabelList.Add('Owner:');
    ConditionFieldList.Add(InvOwnString);
  end;

  If Not (SortString = '') then begin
    ConditionLabelList.Add('Sorted by:');
    ConditionFieldList.Add(SortString);
  end;

  If Not (InvStatString = '') then begin
    ConditionLabelList.Add('Item Status:');
    ConditionFieldList.Add(InvStatString);
  end;

  If Not (HistoryDateString = '') then begin
    ConditionLabelList.Add('History Date Range:');
    ConditionFieldList.Add(HistoryDateString);
  end;

  If Not (PurchaseDateString = '') then begin
    ConditionLabelList.Add('Purchase Date Range:');
    ConditionFieldList.Add(PurchaseDateString);
  end;

  If Not (ManDateString = '') then begin
    ConditionLabelList.Add('Manufacturer Date Range:');
    ConditionFieldList.Add(ManDateString);
  end;

  If Not (BarDateString = '') then begin
    ConditionLabelList.Add('Bar Code Scan Range:');
    ConditionFieldList.Add(BarDateString);
  end;

  If Not (ActiveAppString = '') then begin
    ConditionLabelList.Add('Apparatus:');
    ConditionFieldList.Add(ActiveAppString);
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := BandName.Width - 150 - 260;
    ConditionLabel.Width      := 150;
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
    ConditionField.Left       := BandName.Width - 255;
    ConditionField.Width      := 250;
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

initialization
  RegisterReport(TInvServStatRepForm,         'INVSERVSTATREP',         'Inventory Service Status',                        'INV','INVCOND','Alpine Software Corporation',['INVNUMPANEL','TYPEPANEL','INVTYPEPANEL','INVLOCPANEL','INVSUBTYPEPANEL','SERVICESTATUSPANEL','SORTORDERPANEL','INVSTATPANEL']);
  RegisterReport(TInvLocRepForm,              'INVLOCREP',              'Inventory Location Report',                       'INV','INVCOND','Alpine Software Corporation',['DISPLAYSUBLOCATIONS','INVLOCPANEL']);
  RegisterReport(TInvLocTechRepForm,          'INVLOCTECHREP',          'Inventory Location Report (Tech Version)',        'INV','INVCOND','Alpine Software Corporation',['INVLOCPANEL']);
  RegisterReport(TInvRepListForm,             'INVREPLIST',             'Inventory Listing',                               'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','INVSTATPANEL','INVOWNERIDPANEL']);
  RegisterReport(TInvRepExpForm,              'INVREPEXP',              'Expired Inventory Listing ',                      'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','INVSTATPANEL']);
  RegisterReport(TInvRepListAgeForm,          'INVREPLISTAGE',          'Inventory Age Listing',                           'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','INVSTATPANEL']);
  RegisterReport(TInvRepForm,                 'INVREP',                 'Full Page Inventory Service Listing',             'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL']);
  RegisterReport(TInvByLocRepForm,            'INVBYLOCREP',            'Inventory Listing by Location'      ,             'INV','INVCOND','Alpine Software Corporation',['DISPLAYSUBLOCATIONS','INVLOCIDPANEL','SORTORDERPANEL']);
  RegisterReport(TInvValueRepForm,            'INVVALUEREP',            'Inventory Listing by Value',                      'INV','INVCOND','Alpine Software Corporation',['DISPLAYSUBLOCATIONS','INVLOCPANEL','INVPANEL','SORTORDERPANEL','INVSTATPANEL']);
  RegisterReport(TInvCostByLocRepForm,        'INVCOSTBYLOCREP',        'Inventory Cost Report by Location'  ,             'INV','INVCOND','Alpine Software Corporation',['DISPLAYSUBLOCATIONS','INVLOCIDPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','PURCHASEDATEPANEL','INVSTATPANEL']);
  RegisterReport(TInvLocBarCodeRepForm,       'INVLOCBARCODEREP',       'Bar Coding:  Location Report',                    'INV','INVCOND','Alpine Software Corporation',['INVLOCPANEL']);
  RegisterReport(TInvBarCodeRepForm,          'INVBARCODEREP',          'Bar Coding:  Inventory Labels',                   'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL']);
  RegisterReport(TInvBarScanRepForm,          'INVBARSCANREP',          'Bar Coding:  Scanned Inventory by Date',          'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','PURCHASEDATEPANEL','BARPANEL']);
  RegisterReport(TInvImageListRepForm,        'INVIMAGELISTREP',        'Inventory Image Report',                          'INV','INVCOND','Alpine Software Corporation',['INVNUMPANEL']);
  RegisterReport(TInvFullListRepForm,         'INVFULLLISTREP',         'Full Inventory Listing Report',                   'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL']);
  RegisterReport(TInvLastServRepForm,         'INVLASTSERVREP',         'Inventory Report with Last Service or Inspection','INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL']);
  RegisterReport(TInvFullGearListRepForm,     'INVFULLGEARLISTREP',     'Full Inventory Turn Out Gear Report',             'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL']);
  RegisterReport(TInvSoldDispRepForm,         'INVSOLDDISPREP',         'Inventory Sold or Disposed Report',               'INV','INVCOND','Alpine Software Corporation',['TYPEPANEL','INVTYPEPANEL','INVSUBTYPEPANEL','PURCHASEDATEPANEL','INVSTATPANEL']);
  RegisterReport(THydroComplianceRep,         'HYDROCOMPLIANCEREP',     'SCBA Hydro Compliance Report',                    'INV','INVCOND','Alpine Software Corporation',['TESTDATEPANEL','SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','DISPLAYSUBLOCATIONS','INVSUBTYPEPANEL','INVSTATPANEL']);
  RegisterReport(THydroComplianceColorRepForm,'HYDROCOMPLIANCECOLORREP','SCBA Hydro Compliance Report (Color)',            'INV','INVCOND','Alpine Software Corporation',['INVNUMPANEL','SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','DISPLAYSUBLOCATIONS','INVSUBTYPEPANEL','INVSTATPANEL']);
  RegisterReport(TRegulatorComplianceRep,     'REGULATORCOMPLIANCEREP', 'SCBA Regulator Compliance Report',                'INV','INVCOND','Alpine Software Corporation',['TESTDATEPANEL','SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVTYPEPANEL','DISPLAYSUBLOCATIONS','INVSUBTYPEPANEL','INVSTATPANEL']);
  RegisterReport(TSCBAListRepForm,            'SCBALISTREP',            'SCBA List Report',                                'INV','INVCOND','Alpine Software Corporation',['SORTORDERPANEL','INVLOCPANEL','TYPEPANEL','INVSUBTYPEPANEL','PURCHASEDATEPANEL']);

end.  
