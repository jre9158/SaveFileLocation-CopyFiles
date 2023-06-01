                                  unit PermitCond;

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
  SysRepMan,
  alpinebaseCond,
  ALPINEDATETIME,
  AlpineBaseSummaryReport,
  AlpineLookup,
  AdvGroupBox, AdvObj, alpinecheck;

type
  TPermitCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    PermitTypeStatPanel: TPanel;
    PermitTypePanel: TAdvPanel;
    PermitTypeBrowse: TAdvStringGrid;
    PermitStatPanel: TAdvPanel;
    PermitStatBrowse: TAdvStringGrid;
    PermitPanel: TAdvPanel;
    Label1: TLabel;
    PersIDField: TAlpineLookup;
    ApprDatePanel: TAdvPanel;
    Label2: TLabel;
    Label3: TLabel;
    ApprStartDateField: TAlpineDateTime;
    ApprEndDateField: TAlpineDateTime;
    SortPanel: TAdvPanel;
    PermitNumber: TRadioButton;
    CompanyName: TRadioButton;
    DateApplied: TRadioButton;
    DateExpPanel: TAdvPanel;
    Label4: TLabel;
    Label5: TLabel;
    ExpStartDateField: TAlpineDateTime;
    ExpEndDateField: TAlpineDateTime;
    DateExpires: TRadioButton;
    ExpiredCheck: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure EnableSave(Sender: TObject);
  private
    { Private declarations }
    FSysRepManForm: TSysRepmanForm;
    Procedure LoadPermitTypeBrowse;
    Procedure LoadPermitStatBrowse;
  public
    function GetPermitTypeWhere   : String;
    function GetPermitStatWhere   : String;
    function SelectOrder          : String;
    function SqlWhereClause       : String; override;
    function InitialDate          : TDateTime; override;
    function FinalDate            : TDateTime; override;
    function OrderClause          : String; override;
  end;
var
  PermitCondForm: TPermitCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     PermitHistRep,
     CommonVar,
     CommonFunc;

procedure TPermitCondForm.FormCreate(Sender: TObject);
begin
  LoadPermitTypeBrowse;
  LoadPermitStatBrowse;
  If mFireID = 'HFDBF' then
    SortPanel.Visible := True;
  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));
end;

procedure TPermitCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TPermitCondForm.SqlWhereClause: String;
Var PermitTypeString : String;
    PermitStatString : String;
begin
  Result := ' WHERE 1=1 ';
  If BuildSQLAlpineDate('PERMIT.DATEAPPL',StartDateField.Value,EndDateField.Value) <> '' then
    Result := Result + ' AND ' + BuildSQLAlpineDate('PERMIT.DATEAPPL',StartDateField.Value,EndDateField.Value);

  If BuildSQLAlpineDate('PERMIT.DATEAPPR',ApprStartDateField.Value,ApprEndDateField.Value) <> '' then
    Result := Result + ' AND ' + BuildSQLAlpineDate('PERMIT.DATEAPPR',ApprStartDateField.Value,ApprEndDateField.Value);

  If BuildSQLAlpineDate('PERMIT.DATEEXP',ExpStartDateField.Value,ExpEndDateField.Value) <> '' then
    Result := Result + ' AND ' + BuildSQLAlpineDate('PERMIT.DATEEXP',ExpStartDateField.Value,ExpEndDateField.Value);

  PermitTypeString := GetPermitTypeWhere;
  If Not (PermitTypeString= '') then
    Result := Result + ' AND ' + PermitTypeString;

  PermitStatString := GetPermitStatWhere;
  If Not (PermitStatString= '') then
    Result := Result + ' AND ' + PermitStatString;

  if ExpiredCheck.Checked then
    Result := Result + ' AND (PERMIT.DATEEXP < ' + FormatDateTimeForSQL(Now) + ')';


  If (AnyStrToInt(PersIDField.Value) > 0) then
    Result := Result + ' AND PERMIT.PERSID = ' + PersIDField.Value;

  SQLWhereClause := Result;
end;

function TPermitCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

function TPermitCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

Procedure TPermitCondForm.LoadPermitTypeBrowse;
Var RowNum : Integer;
begin
  PermitTypeBrowse.clear;
  PermitTypeBrowse.ColCount      := 4;
  PermitTypeBrowse.RowCount      := 3;

  PermitTypeBrowse.ColWidths[00] := 000;
  PermitTypeBrowse.ColWidths[01] := 020;
  PermitTypeBrowse.ColWidths[02] := 050;
  PermitTypeBrowse.ColWidths[03] := 750;

  PermitTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                                                 := 0;

  Open_Query('PERMITTYPE',false,'SELECT * FROM PERMITTYPE ORDER BY CODE');
  While Not A('PERMITTYPE').Eof do begin
    PermitTypeBrowse.Cells[0,RowNum] := Getfield('PERMITTYPE','PERMITTYPEID').AsString;
    PermitTypeBrowse.AddCheckBox(1,RowNum,false,false);
    PermitTypeBrowse.Cells[2,RowNum] := Getfield('PERMITTYPE','CODE').AsString;
    PermitTypeBrowse.Cells[3,RowNum] := Getfield('PERMITTYPE','DESCR').AsString;
    If (RowNum > 1) then
      PermitTypeBrowse.RowCount := PermitTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('PERMITTYPE').Skip(1);
  end;
  CloseApollo('PERMITTYPE');
end;

Procedure TPermitCondForm.LoadPermitStatBrowse;
Var RowNum : Integer;
begin
  PermitStatBrowse.clear;
  PermitStatBrowse.ColCount      := 4;
  PermitStatBrowse.RowCount      := 3;

  PermitStatBrowse.ColWidths[00] := 000;
  PermitStatBrowse.ColWidths[01] := 020;
  PermitStatBrowse.ColWidths[02] := 050;
  PermitStatBrowse.ColWidths[03] := 750;

  PermitStatBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                                                 := 0;

  Open_Query('PERMITSTAT',false,'SELECT * FROM PERMITSTAT ORDER BY CODE');
  While Not A('PERMITSTAT').Eof do begin
    PermitStatBrowse.Cells[0,RowNum] := Getfield('PERMITSTAT','PERMITSTATID').AsString;
    PermitStatBrowse.AddCheckBox(1,RowNum,false,false);
    PermitStatBrowse.Cells[2,RowNum] := Getfield('PERMITSTAT','CODE').AsString;
    PermitStatBrowse.Cells[3,RowNum] := Getfield('PERMITSTAT','DESCR').AsString;
    If (RowNum > 1) then
      PermitStatBrowse.RowCount := PermitStatBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('PERMITSTAT').Skip(1);
  end;
  CloseApollo('PERMITSTAT');
end;

function TPermitCondForm.GetPermitTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PermitTypeBrowse.RowCount-2 do begin
    PermitTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERMIT.PERMITTYPEID = ' + PermitTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPermitTypeWhere := WhereString;
end;

function TPermitCondForm.GetPermitStatWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PermitStatBrowse.RowCount-2 do begin
    PermitStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERMIT.PERMITSTATID = ' + PermitStatBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPermitStatWhere := WhereString;
end;

function TPermitCondForm.SelectOrder: String;
Begin
  If SortPanel.Visible then begin
    If PermitNumber.Checked then
      result := ' ORDER BY PERMIT.PERMITNUM';
    If CompanyName.Checked then
      result := ' ORDER BY PERMIT.OCOMPANY';
    If DateApplied.Checked then
      result := ' ORDER BY PERMIT.DATEAPPL';
    If DateExpires.Checked then
      result := ' ORDER BY PERMIT.DATEEXP';
  end;

  If not SortPanel.Visible then begin
    if (FSysRepManForm.ASysRep.ReportCode = 'FEESCOLLECTREP') then
      result := ' ' + ' ORDER BY PERMIT.PERMITTYPEID,PERMIT.DATEAPPL'
    else
      result := ' ' + ' ORDER BY PERMIT.DATEAPPL';
  end;

end;

function TPermitCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder
end;

initialization
  RegisterReport(TPermitHistRepForm,'PERMITHISTREP','Permit History (Summary)',  'INSP','PERMITCOND','Alpine Software Corporation',['DATEPANEL','DATEEXPPANEL','PERMITPANEL','PERMITTYPESTATPANEL','PERMITTYPEPANEL','PERMITSTATPANEL', 'SORTPANEL']);

end.
