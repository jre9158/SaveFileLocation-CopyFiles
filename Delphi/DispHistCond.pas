unit DispHistCond;

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
  Grids,
  BaseGrid,
  AlpineBaseSummaryReport,
  AdvGrid,
  AlpineCheck,
  AdvGroupBox,
  AlpineLookup,
  AdvObj;

type
  TDispHistCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    DispStatPanel: TAdvPanel;
    DispStatBrowse: TAdvStringGrid;
    DispCallTypePanel: TAdvPanel;
    DispCallTypeBrowse: TAdvStringGrid;
    DispStatCodeIDField: TAlpineLookup;
    Label1: TLabel;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    DispCallTypeIDField: TAlpineLookup;
    Label6: TLabel;
    DispSubTypePanel: TAdvPanel;
    DispSubTypeBrowse: TAdvStringGrid;
    procedure EnableSave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadDispStatBrowse;
    Procedure LoadDispCallTypeBrowse;
    Procedure LoadDispSubTypeBrowse;
    procedure LoadFdidBrowse;

  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function SqlWhereClause: String; override;
    function GetDispStatWhere: String;
    function GetDispCallTypeWhere: String;
    function GetDispSubTypeWhere: String;
    function OrderClause: String;
    function GetDispStatString: String;
    function GetFdidWhere: String;
  end;

var
  DispHistCondForm: TDispHistCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     DispHistRep,
     CommonFunc,
     CommonVar;

procedure TDispHistCondForm.FormShow(Sender: TObject);
begin
  LoadFdidBrowse;
  FdidPanel.Visible := MultiFdid;
  If DispStatPanel.Visible then
    LoadDispStatBrowse;

  If DispCallTypePanel.Visible then
    LoadDispCallTypeBrowse;

  If DispSubTypePanel.Visible then
    LoadDispSubTypeBrowse;
end;


function TDispHistCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

function TDispHistCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

Procedure TDispHistCondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 3;
  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;
  RowNum                   := 0;

  Open_Query('FDID',false,'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := Getfield('FDID','SHORTDESCR').AsString;
    If (RowNum > 1) then
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

Procedure TDispHistCondForm.LoadDispStatBrowse;
Var RowNum : Integer;
begin
  DispStatBrowse.clear;
  DispStatBrowse.ColCount := 6;
  DispStatBrowse.RowCount := 3;

  DispStatBrowse.ColWidths[00] := 000;
  DispStatBrowse.ColWidths[01] := 020;
  DispStatBrowse.ColWidths[02] := 100;
  DispStatBrowse.ColWidths[03] := 250;
  DispStatBrowse.ColWidths[04] := 100;
  DispStatBrowse.ColWidths[05] := 100;

  DispStatBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPSTAT',false,'SELECT DISPSTAT.UNITNUM UNITNUM, DISPSTAT.FDID FDID, DISPAPP.DESCR DISPAPPDESCR, FDID.DEPTNAME DEPTNAME, DISPLOC.DESCR DISPLOCDESCR FROM DISPSTAT ' +
                              'LEFT JOIN FDID ON (FDID.FDID = DISPSTAT.FDID) ' +
                              'LEFT JOIN DISPAPP ON (DISPSTAT.DISPAPPID = DISPAPP.DISPAPPID) ' +
                              'LEFT JOIN DISPLOC ON (DISPSTAT.DISPLOCID = DISPLOC.DISPLOCID) ' +
                              'ORDER BY DISPSTAT.UNITNUM');
  While Not A('DISPSTAT').Eof do begin
    DispStatBrowse.Cells[0,RowNum] := Getfield('DISPSTAT','UNITNUM').AsString;
    DispStatBrowse.AddCheckBox(1,RowNum,false,false);
    DispStatBrowse.Cells[2,RowNum] := Getfield('DISPSTAT','UNITNUM').AsString;
    DispStatBrowse.Cells[3,RowNum] := Getfield('DISPSTAT','DEPTNAME').AsString;
    DispStatBrowse.Cells[4,RowNum] := Getfield('DISPSTAT','DISPAPPDESCR').AsString;
    DispStatBrowse.Cells[5,RowNum] := Getfield('DISPSTAT','DISPLOCDESCR').AsString;
    If (RowNum > 1) then
      DispStatBrowse.RowCount := DispStatBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('DISPSTAT').Skip(1);
  end;
  CloseApollo('DISPSTAT');
end;

Procedure TDispHistCondForm.LoadDispCallTypeBrowse;
Var RowNum : Integer;
begin
  DispCallTypeBrowse.clear;
  DispCallTypeBrowse.ColCount := 6;
  DispCallTypeBrowse.RowCount := 3;

  DispCallTypeBrowse.ColWidths[00] := 000;
  DispCallTypeBrowse.ColWidths[01] := 020;
  DispCallTypeBrowse.ColWidths[02] := 100;
  DispCallTypeBrowse.ColWidths[03] := 175;

  DispCallTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPCALLTYPE',false,'SELECT DISPCALLTYPE.DISPCALLTYPEID, DISPCALLTYPE.CODE, DISPCALLTYPE.DESCR FROM DISPCALLTYPE ' +
                                  'WHERE HIDDEN = ' + AddExpr('N') + ' ' +
                                  'ORDER BY DISPCALLTYPE.SORTORD');
  While Not A('DISPCALLTYPE').Eof do begin
    DispCallTypeBrowse.Cells[0,RowNum] := Getfield('DISPCALLTYPE','DISPCALLTYPEID').AsString;
    DispCallTypeBrowse.AddCheckBox(1,RowNum,false,false);
    DispCallTypeBrowse.Cells[2,RowNum] := Getfield('DISPCALLTYPE','CODE').AsString;
    DispCallTypeBrowse.Cells[3,RowNum] := Getfield('DISPCALLTYPE','DESCR').AsString;
    If (RowNum > 1) then
      DispCallTypeBrowse.RowCount := DispCallTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('DISPCALLTYPE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
end;

Procedure TDispHistCondForm.LoadDispSubTypeBrowse;
Var RowNum : Integer;
begin
  DispSubTypeBrowse.clear;
  DispSubTypeBrowse.ColCount := 6;
  DispSubTypeBrowse.RowCount := 3;

  DispSubTypeBrowse.ColWidths[00] := 000;
  DispSubTypeBrowse.ColWidths[01] := 020;
  DispSubTypeBrowse.ColWidths[02] := 100;
  DispSubTypeBrowse.ColWidths[03] := 175;

  DispSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPSUBTYPE',false,'SELECT DISPSUBTYPE.DISPSUBTYPEID, DISPSUBTYPE.CODE, DISPSUBTYPE.DESCR FROM DISPSUBTYPE ' +
                                  'WHERE HIDDEN = ' + AddExpr('N') + '  OR HIDDEN IS NULL ' +
                                  'ORDER BY DISPSUBTYPE.SORTORD');
  While Not A('DISPSUBTYPE').Eof do begin
    DispSubTypeBrowse.Cells[0,RowNum] := Getfield('DISPSUBTYPE','DISPSUBTYPEID').AsString;
    DispSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
    DispSubTypeBrowse.Cells[2,RowNum] := Getfield('DISPSUBTYPE','CODE').AsString;
    DispSubTypeBrowse.Cells[3,RowNum] := Getfield('DISPSUBTYPE','DESCR').AsString;
    If (RowNum > 1) then
      DispSubTypeBrowse.RowCount := DispSubTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('DISPSUBTYPE').Skip(1);
  end;
  CloseApollo('DISPSUBTYPE');
end;


function TDispHistCondForm.SqlWhereClause: String;
Var FdidString     : String;
    DispStatString : String;
    DispSubTypeString :String;
begin
  result         := ' WHERE 1=1';
  FdidString     := GetFdidWhere;
  DispStatString := GetDispStatWhere;
  DispSubTypeString := GetDispSubTypeWhere;

  If BuildSQLAlpineDate('DISPHIST.DATETIMESTAT',StartDateField.Value,EndDateField.Value)<>'' then
    result := result + ' AND ' + BuildSQLAlpineDate('DISPHIST.DATETIMESTAT',StartDateField.Value,EndDateField.Value);

  If (AnyStrToInt(DispStatCodeIDField.Value) > 0) then
    Result := Result + ' AND DISPHIST.DISPSTATCODEID = ' + DispStatCodeIDField.Value;

  If (AnyStrToInt(DispCallTypeIDField.Value) > 0) then
    Result := Result + ' AND DISPCALL.DISPCALLTYPEID = ' + DispCallTypeIDField.Value;

  If Not (FdidString = '') then
    Result := Result + ' AND ' + FdidString;
    
  If Not (DispStatString = '') then
    Result := Result + ' AND ' + DispStatString;

  If Not (DispSubTypeString = '') then
    Result := Result + ' AND ' + DispSubTypeString;

  Result := Result;
end;

function TDispHistCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR DISPCALL.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;


function TDispHistCondForm.GetDispStatWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 1 to DispStatBrowse.RowCount-2 do begin
    DispStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR DISPHIST.UNITNUM = ' + AddExpr(DispStatBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispStatWhere := WhereString;
end;

function TDispHistCondForm.GetDispCallTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispCallTypeBrowse.RowCount-1 do begin
    DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR DISPCALL.DISPCALLTYPEID = ' + AddExpr(DispCallTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispCallTypeWhere := WhereString;
end;

function TDispHistCondForm.GetDispSubTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispSubTypeBrowse.RowCount-1 do begin
    DispSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR DISPCALL.DISPSUBTYPEID = ' + AddExpr(DispSubTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispSubTypeWhere := WhereString;
end;

function TDispHistCondForm.OrderClause: String;
begin
  result := ' ORDER BY DISPHIST.DATETIMESTAT';
end;

procedure TDispHistCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TDispHistCondForm.GetDispStatString: String;
Var RowVar         : Integer;
    CheckValue     : Boolean;
    DispStatString : String;
begin
  DispStatString := '';
  For RowVar := 0 to DispStatBrowse.RowCount-1 do begin
    DispStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      DispStatString := DispStatString + DispStatBrowse.Cells[0,RowVar] + ', ';
  end;
  If (DispStatString = '') then
    DispStatString := 'All Apparatus'
  else
    DispStatString := Substr(DispStatString,1,Length(DispStatString)-2);
  GetDispStatString := DispStatString;
end;

initialization
  RegisterReport(TDispHistRepForm,'DISPHISTREP','Dispatch Status History Report','DISP','DISPHISTCOND','Alpine Software Corporation',['DISPSTATPANEL','FDIDPANEL','DISPSUBTYPEPANEL','DATEPANEL']);

end.
