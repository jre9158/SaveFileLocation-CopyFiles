unit PersRankHistCond;

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
  AlpineBaseSummaryReport,
  AlpineDateTime,
  AdvGroupBox,
  AlpineLookup,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvObj;

type
  TPersRankHistCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    DateField: TAlpineDateTime;
    PersRankTypePanel: TAdvPanel;
    PersRankTypeBrowse: TAlpineTMSStringGrid;
    SortPanel: TAdvPanel;
    IdNumber: TRadioButton;
    LastName: TRadioButton;
    PersCodePanel: TAdvPanel;
    PersIDLabel: TLabel;
    PersIDDescr: TLabel;
    PersIDField: TAlpineLookup;
    procedure FormCreate(Sender: TObject);
    procedure DateFieldChange(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    DateVar           : TDateTime;
  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function SqlWhereClause: String; override;
    function GetPersRankTypeIDWhere: String;
    function GetPersRankTypeList: String;
    function SelectOrder: String;
    function OrderClause: String;
  end;

var
  PersRankHistCondForm: TPersRankHistCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     CommonFunc,
     PersCond,
     PersRankHistRep,
     //PersRankRep,
     CommonVar;

procedure TPersRankHistCondForm.FormCreate(Sender: TObject);
begin
  TPersCondForm.LoadBrowse(PersRankTypeBrowse,'PERSRANK');
end;

function TPersRankHistCondForm.InitialDate: TDateTime;
begin
end;

procedure TPersRankHistCondForm.DateFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TPersRankHistCondForm.FinalDate: TDateTime;
begin
end;

function TPersRankHistCondForm.SqlWhereClause: String;
Var WhereString          : String;
    PersRankTypeIDString : String;
begin
  If AnyStrToInt(PersIDField.Value) > 0 then
    WhereString := ' WHERE PERS.PERSID = ' + PersIDField.Value
  else begin
    PersRankTypeIDString := GetPersRankTypeIDWhere;
    WhereString := ' WHERE (1=1) ';
  If Not (PersRankTypeIDString = '') then
    WhereString := WhereString + ' AND ' + PersRankTypeIDString;
  end;
  result := WhereString;
end;

function TPersRankHistCondForm.GetPersRankTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not PersRankTypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankTypeBrowse.RowCount-1 do begin
    PersRankTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (PersRankTypeBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR PERSRANKHIST.PERSRANKID = ' + PersRankTypeBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersRankTypeIDWhere := WhereString;
end;

function TPersRankHistCondForm.GetPersRankTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not PersRankTypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankTypeBrowse.RowCount-1 do begin
    PersRankTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (PersRankTypeBrowse.Cells[0,RowVar] = '') then
      RetVal := RetVal + PersRankTypeBrowse.Cells[3,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Ranks'
  else
    Result := RetVal;
end;

function TPersRankHistCondForm.SelectOrder: String;
Begin
  If SortPanel.Visible then begin
    If IdNumber.Checked then begin
      if mfireID = '28029' then
        result := ' ORDER BY ' + SortPadLeft(GlobalAdoConnection,'PERS.PERSCODE',8)
      else
        result := ' ORDER BY PERS.PERSCODE';
    end;
    If LastName.Checked then
      result := ' ORDER BY PERS.LNAME, PERS.FNAME, PERS.MNAME';
  end;    
end;

function TPersRankHistCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder;
end;

procedure TPersRankHistCondForm.PersIDFieldEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    PersIDField.LookUpCode := 'PERSBYPERSCODE';
end;

initialization
  RegisterReport(TPersRankHistRepForm,   'PERSRANKHISTREP',   'Officer List',                      'PERS','PERSRANKHISTCOND','Alpine Software Corporation',['DATEPANEL','PERSRANKTYPEPANEL','SORTPANEL']);
  //RegisterReport(TPersRankRepForm,       'PERSOFFRANKREP',    'Personnel Office and Rank History', 'PERS','PERSRANKHISTCOND','Alpine Software Corporation',['DATEPANEL','SORTPANEL','PERSCODEPANEL']);

end.
