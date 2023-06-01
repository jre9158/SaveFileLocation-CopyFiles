unit DispCallCond;

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
  AdvObj;

type
  TDispCallCondForm = class(TAlpineBaseConditionForm)
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
    fdidpanel: TAdvPanel;
    fdidbrowse: TAdvStringGrid;
    procedure EnableSave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadDispStatBrowse;
    Procedure LoadDispCallTypeBrowse;

  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function SqlWhereClause: String; override;
    function OrderClause: String; override;
    function GetDispStatWhere: String;
    function GetDispCallTypeWhere: String;
    function GetDispStatString: String;
    function GetFdidString: String;
    function GetFdidWhere: String;
    Procedure LoadFdidBrowse;
  end;

var
  DispCallCondForm: TDispCallCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     DispRespRep,
     CommonFunc,
     CommonVar;

function TDispCallCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

function TDispCallCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

Procedure TDispCallCondForm.LoadDispStatBrowse;
Var RowNum : Integer;
begin
  DispStatBrowse.clear;
  DispStatBrowse.ColCount := 6;
  DispStatBrowse.RowCount := 0;

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
    DispStatBrowse.RowCount := DispStatBrowse.RowCount + 1;  
    DispStatBrowse.Cells[0,RowNum] := Getfield('DISPSTAT','UNITNUM').AsString;
    DispStatBrowse.AddCheckBox(1,RowNum,false,false);
    DispStatBrowse.Cells[2,RowNum] := Getfield('DISPSTAT','UNITNUM').AsString;
    DispStatBrowse.Cells[3,RowNum] := Getfield('DISPSTAT','DEPTNAME').AsString;
    DispStatBrowse.Cells[4,RowNum] := Getfield('DISPSTAT','DISPAPPDESCR').AsString;
    DispStatBrowse.Cells[5,RowNum] := Getfield('DISPSTAT','DISPLOCDESCR').AsString;

    RowNum := RowNum + 1;
    A('DISPSTAT').Skip(1);
  end;
  CloseApollo('DISPSTAT');
end;

Procedure TDispCallCondForm.LoadDispCallTypeBrowse;
Var RowNum : Integer;
begin
  DispCallTypeBrowse.clear;
  DispCallTypeBrowse.ColCount := 6;
  DispCallTypeBrowse.RowCount := 0;

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


function TDispCallCondForm.SqlWhereClause: String;
var FdidString: String;
begin
  result := ' WHERE DISPCALL.INCSTAT = ' + AddExpr('CLOSED');
  If BuildSQLAlpineDate('DISPCALL.DATETIMEREC',StartDateField.Value,EndDateField.Value)<>'' then
    result := result + ' AND ' + BuildSQLAlpineDate('DISPCALL.DATETIMEREC',StartDateField.Value,EndDateField.Value);

  FdidString         := CommonGetFdidWhere(FdidBrowse);
  If Not (FdidString = '') then
    Result := Result + ' AND ' + FdidString;

  Result := Result + GetDispCallTypeWhere;
end;

function TDispCallCondForm.GetDispStatWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 1 to DispStatBrowse.RowCount-2 do begin
    DispStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(DispStatBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispStatWhere := WhereString;
end;

function TDispCallCondForm.GetDispCallTypeWhere: String;
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


function TDispCallCondForm.OrderClause: String;
begin
  result := ' ORDER BY DISPCALL.DATETIMEREC';
end;

procedure TDispCallCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TDispCallCondForm.GetDispStatString: String;
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


procedure TDispCallCondForm.FormShow(Sender: TObject);
begin
  If DispStatPanel.Visible then
    LoadDispStatBrowse;

  If DispCallTypePanel.Visible then
    LoadDispCallTypeBrowse;
  If FdidPanel.Visible then
    LoadFdidBrowse;
end;
function TDispCallCondForm.GetFdidString: String;
begin
  result := GetFdidStringForDisplay(FdidBrowse);
end;

function TDispCallCondForm.GetFdidWhere: String;
begin
  result := CommonGetFdidWhere(FdidBrowse);
end;


Procedure TDispCallCondForm.LoadFdidBrowse;
begin
  CommonLoadFdidBrowse(FdidBrowse);
end;


initialization
  RegisterReport(TDispRespRepForm, 'DISPRESPREP','Dispatch Response Report','DISP','DISPCALLCOND','Alpine Software Corporation',['DATEPANEL','DISPCALLTYPEPANEL','FDIDPANEL','DISPSTATPANEL']);

end.
