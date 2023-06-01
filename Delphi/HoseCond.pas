unit HoseCond;

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
  qrctrls,
  quickrpt,
  AdvGrid,
  AdvGroupBox,
  BasePictureField,
  AlpineEdit,
  AdvObj;

type
  THoseCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    TestDatePanel: TAdvPanel;
    HoseTestDate: TLabel;
    TestDateField: TAlpineDateTime;
    InvSubTypePanel: TAdvPanel;
    InvSubTypeBrowse: TAdvStringGrid;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    InvLocPanel: TAdvPanel;
    Label1: TLabel;
    InvLocIDField: TAlpineLookup;
    InvPanel: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    HSizeLowerField: TAlpineEdit;
    HSizeUpperField: TAlpineEdit;
    Label5: TLabel;
    HLengthLowerField: TAlpineEdit;
    HLengthUpperField: TAlpineEdit;
    Label6: TLabel;
    Label7: TLabel;
    InvNumLowerField: TAlpineLookup;
    InvNumUpperField: TAlpineLookup;
    SortOrderPanel: TAdvPanel;
    SysRepSortIDLabel: TLabel;
    SysRepSortIDField: TAlpineLookup;
    InvStatPanel: TAdvPanel;
    InvStatBrowse: TAdvStringGrid;
    procedure SysRepSortIDFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SysRepSortIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFdidBrowse;
    Procedure LoadInvSubType;
    Procedure LoadInvStat;
    function GetInvSubTypeIDWhere: String;
    function GetInvStatWhere: String;
    function GetFdidWhere: String;
  public
    function SqlWhereClause: String; override;
    function GetFdidString: String;
    function GetSubTypeString: String;
    function SelectOrder: String;
    function OrderClause: String; override;
    class procedure PrintTitles(BandName : TQRBand);
end;

var
  HoseCondForm: THoseCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     CommonFunc,
     CommonVar,
     HoseTestDefRep,
     HoseListRep;

procedure THoseCondForm.FormCreate(Sender: TObject);
begin
  FdidPanel.Visible := MultiFdid;
  LoadInvSubType;
  LoadInvStat;
end;

procedure THoseCondForm.SysRepSortIDFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure THoseCondForm.SysRepSortIDFieldEnter(Sender: TObject);
begin
  SysRepSortIDField.SqlExpr := 'SELECT SYSREPSORT.SYSREPSORTID, SYSREPSORT.DESCR FROM SYSREPSORT ' +
                               'LEFT JOIN SYSREPCOND ON (SYSREPSORT.SYSREPCONDID = SYSREPCOND.SYSREPCONDID) ' +
                               'WHERE SYSREPCOND.CODE = ' + AddExpr('HOSECOND') + ' ' +
                               'ORDER BY SYSREPSORT.DESCR';
end;

function THoseCondForm.SelectOrder: String;
begin
  result := TAlpineBaseConditionForm.ClassSelectOrder(SortOrderPanel,SysRepSortIDField);
end;

function THoseCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder;
end;

Procedure THoseCondForm.LoadInvSubType;
Var RowNum : Integer;
begin
  InvSubTypeBrowse.clear;
  InvSubTypeBrowse.ColCount := 3;
  InvSubTypeBrowse.RowCount := 0;

  InvSubTypeBrowse.ColWidths[00] := 000;
  InvSubTypeBrowse.ColWidths[01] := 020;
  InvSubTypeBrowse.ColWidths[02] := 300;

  InvSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INVSUBTYPE',false,'SELECT INVSUBTYPE.INVSUBTYPEID, INVSUBTYPE.TYPE, INVSUBTYPE.DESCR FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('HOSE') + ' ORDER BY TYPE, DESCR');
  While Not A('INVSUBTYPE').Eof do begin
    InvSubTypeBrowse.RowCount := InvSubTypeBrowse.RowCount + 1;  
    InvSubTypeBrowse.Cells[0,RowNum] := Getfield('INVSUBTYPE','INVSUBTYPEID').AsString;
    InvSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
    InvSubTypeBrowse.Cells[2,RowNum] := Getfield('INVSUBTYPE','DESCR').AsString;

    RowNum := RowNum + 1;
    A('INVSUBTYPE').Skip(1);
  end;
  CloseApollo('INVSUBTYPE');
end;

Procedure THoseCondForm.LoadInvStat;
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

Procedure THoseCondForm.LoadFdidBrowse;
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

function THoseCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR INV.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;

function THoseCondForm.GetInvSubTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  For RowVar := 0 to InvSubTypeBrowse.RowCount-1 do begin
    InvSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.INVSUBTYPEID = ' + PKValue(InvSubTypeBrowse.Cells[0,RowVar]);
  end;

  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';

  GetInvSubTypeIDWhere := WhereString;
end;

function THoseCondForm.GetInvStatWhere: String;
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


function THoseCondForm.SqlWhereClause: String;
Var WhereString        : String;
    FdidString         : String;
    InvSubTypeIDString : String;
    InvStatString      : String;
    InvLocFullDescr    : String;
begin
  InvSubTypeIDString := GetInvSubTypeIDWhere;
  InvStatString      := GetInvStatWhere;
  FdidString         := GetFdidWhere;

  WhereString := ' WHERE INV.TYPE = ' + AddExpr('HOSE');

  If Not (FdidString = '') then
      WhereString := WhereString + ' AND ' + FdidString;

  If Not (InvSubTypeIDString = '') then
    WhereString := WhereString + ' AND ' + InvSubTypeIDString;

  If Not (InvStatString = '') then
    WhereString := WhereString + ' AND ' + InvStatString;

  If Not (InvLocIDField.Value = '') then begin
    InvLocFullDescr := SQLLookUp(InvLocIDField.Value,'INVLOCID','INVLOC','FULLDESCR');
    WhereString     := WhereString + ' AND INVLOC.FULLDESCR LIKE ' + AddExpr(InvLocFullDescr + '%');
  end;

  If (InvnumLowerField.Value <> '') or (InvnumUpperField.Value <> '') then
    WhereString := WhereString + ' AND INV.INVNUM BETWEEN ' + AddExpr(InvnumLowerField.Value) + ' AND ' + AddExpr(InvnumUpperField.Value) + ' ';

  If (AnyStrToFloat(HSizeLowerField.Value) > 0) or (AnyStrToFloat(HSizeUpperField.Value) > 0) then
    WhereString := WhereString + ' AND INV.HSIZE >= ' + RemoveCharacter(HSizeLowerField.Value,',') + ' AND INV.HSIZE <= ' + RemoveCharacter(HSizeUpperField.Value,',');

  If (AnyStrToFloat(HLengthLowerField.Value) > 0) or (AnyStrToFloat(HLengthUpperField.Value) > 0) then
    WhereString := WhereString + ' AND INV.HLENGTH >= ' + RemoveCharacter(HLengthLowerField.Value,',') + ' AND INV.HLENGTH <= ' + RemoveCharacter(HLengthUpperField.Value,',');

  Result := WhereString;
end;

procedure THoseCondForm.FormShow(Sender: TObject);
begin
  LoadFdidBrowse;
end;

function THoseCondForm.GetFdidString: String;
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


function THoseCondForm.GetSubTypeString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to InvSubTypeBrowse.RowCount-1 do begin
    InvSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + InvSubTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Sub Types'
  else
    Result := RetVal;
end;


class procedure THoseCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    InvLocString       : String;
    Form               : TForm;
    RowNum             : Integer;
    FdidString         : String;
    SubTypeString      : String;
    SortString         : String;
begin
  Form               := GetFormOfType(THoseCondForm);
  FdidString         := THoseCondForm(Form).GetFdidString;
  SubTypeString      := THoseCondForm(Form).GetSubTypeString;
  SortString         := SqlLookUp(THoseCondForm(Form).SysRepSortIDField.Value,'SYSREPSORTID','SYSREPSORT','DESCR');

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency:');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (SubTypeString = '') then begin
    ConditionLabelList.Add('Sub Type:');
    ConditionFieldList.Add(SubTypeString);
  end;

  InvLocString       := SqlLookUp(THoseCondForm(Form).InvLocIDField.Value,'INVLOCID','INVLOC','FULLDESCR');

  If Not (InvLocString = '') then begin
    ConditionLabelList.Add('Location:');
    ConditionFieldList.Add(InvLocString);
  end;

  If Not (SortString = '') then begin
    ConditionLabelList.Add('Sorted by:');
    ConditionFieldList.Add(SortString);
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
    ConditionField.Width      := 450;
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
  RegisterReport(THoseListRepForm,   'HOSELISTREP',   'Hose List',                  'INV','HOSECOND','Alpine Software Corporation',['INVSTATPANEL','INVSUBTYPEPANEL','INVPANEL','SORTORDERPANEL']);
  RegisterReport(THoseTestDefRepForm,'HOSETESTDEFREP','Hose Test Deficiency Report','INV','HOSECOND','Alpine Software Corporation',['INVSTATPANEL','TESTDATEPANEL','INVSUBTYPEPANEL','INVLOCPANEL']);

end.
