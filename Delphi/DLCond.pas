unit DLCond;

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
  AdvObj,
  BaseGrid,
  AdvGrid,
  QrCtrls,
  QuickRpt,
  AlpineTMSStringGrid;

type
  TDLCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    DescrPanel: TAdvPanel;
    PersIDDescr: TLabel;
    DescrField: TAlpineLookup;
    Label1: TLabel;
    SchdPanel: TAdvPanel;
    Label3: TLabel;
    SchdShiftNamePanel: TAdvPanel;
    SchdShiftNameBrowse: TAlpineTMSStringGrid;
    SchdLocPanel: TAdvPanel;
    SchdLocBrowse: TAlpineTMSStringGrid;
    PersIDLabel: TLabel;
    PersIDField: TAlpineLookup;
    procedure FormShow(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    function GetSchdShiftNameWhere  : String;
    function GetSchdLocWhere        : String;
    function GetSchdShiftNameString : String;
    function GetSchdLocString       : String;
  public
    function InitialDate    : TDateTime; override;
    function FinalDate      : TDateTime; override;
    function SqlWhereClause : String; override;
    class procedure PrintTitles(BandName : TQRBand);
  end;
  function GetDLDateClause(mStartDate,mEndDate: TDateTime): String;
var
  DLCondForm: TDLCondForm;

implementation
{$R *.DFM}

uses GenFunc,
     SysRep,
     CommonFunc,
     PersCond,
     DLHistRep,
     SecFieldRep,
     SysRepList,
     SysTableListRep,
     CommonVar;

procedure TDLCondForm.FormShow(Sender: TObject);
begin
  TPersCondForm.LoadBrowse(SchdShiftNameBrowse,'SCHDSHIFTNAME');
  TPersCondForm.LoadBrowse(SchdLocBrowse,'SCHDLOC');
end;

function TDLCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

function TDLCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

function TDLCondForm.SqlWhereClause: String;
Var SchdShiftNameString : String;
    SchdLocString       : String;
    mDateCond           : String;
begin
  result := ' WHERE (1=1) ';
  SchdShiftNameString := GetSchdShiftNameWhere;
  SchdLocString       := GetSchdLocWhere;
  mDateCond := GetDLDateClause(StartDateField.Value,EndDateField.Value);
  If mDateCond<>'' then
    result := result + ' AND ' + mDateCond;
  If Not (DescrField.Value = '') then
    result := result + ' AND DL.DESCR LIKE ' + AddExpr('%' + DescrField.Value + '%')+ ' ';
  If AnyStrToInt(PersIDField.Value) > 0 then
    result := result + ' AND DL.PERSID = ' + PersIDField.Value;
  If Not (SchdShiftNameString = '') then
    Result := Result + ' AND ' + SchdShiftNameString;
  If Not (SchdLocString = '') then
    Result := Result + ' AND ' + SchdLocString;
end;

function TDLCondForm.GetSchdShiftNameWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to SchdShiftNameBrowse.RowCount-1 do begin
    SchdShiftNameBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (SchdShiftNameBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR DL.SCHDSHIFTNAMEID = ' + SchdShiftNameBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetSchdShiftNameWhere := WhereString;
end;

function TDLCondForm.GetSchdLocWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to SchdLocBrowse.RowCount-1 do begin
    SchdLocBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and Not (SchdLocBrowse.Cells[0,RowVar] = '') then
      WhereString := WhereString + ' OR DL.SCHDLOCID = ' + SchdLocBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetSchdLocWhere := WhereString;
end;

procedure TDLCondForm.PersIDFieldEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    PersIDField.LookUpCode := 'PERSBYPERSCODE';
  If (FireID <> '28030') and (FireID <> '60008') then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
  If (secFDID <> '') then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE FDID = ' + AddExpr(secFDID) + ' ORDER BY ' + GlobalPersSort;
end;

class procedure TDLCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList  : TStringList;
    ConditionFieldList  : TStringList;
    ConditionLabel      : TQRLabel;
    ConditionField      : TQRLabel;
    Form                : TForm;
    RowNum              : Integer;
    DateString          : String;
    SchdShiftNameString : String;
    SchdLocString       : String;
begin
  Form                := GetFormOfType(TDLCondForm);
  DateString          := GetAlpineDateLabel(TDLCondForm(Form).StartDateField.Value,TDLCondForm(Form).EndDateField.Value);
  SchdShiftNameString := TDLCondForm(Form).GetSchdShiftNameString;
  SchdLocString       := TDLCondForm(Form).GetSchdLocString;

  ConditionLabelList  := TStringList.Create;
  ConditionFieldList  := TStringList.Create;

  If Not (DateString = '') then begin
    ConditionLabelList.Add('Date Range:');
    ConditionFieldList.Add(DateString);
  end;

  If Not (SchdShiftNameString = '') then begin
    ConditionLabelList.Add('Group Name:');
    ConditionFieldList.Add(SchdShiftNameString);
  end;

  If Not (SchdLocString = '') then begin
    ConditionLabelList.Add('Location:');
    ConditionFieldList.Add(SchdLocString);
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := 300;
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
    ConditionField.Left       := 454;
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

function TDLCondForm.GetSchdShiftNameString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to SchdShiftNameBrowse.RowCount-1 do begin
    SchdShiftNameBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + SchdShiftNameBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Groups'
  else
    Result := RetVal;
end;

function TDLCondForm.GetSchdLocString: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to SchdLocBrowse.RowCount-1 do begin
    SchdLocBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + SchdLocBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Shift Locs'
  else
    Result := RetVal;
end;


function GetDLDateClause(mStartDate,mEndDate: TDateTime): String;
begin
  if (mStartDate = 0) and (mEndDate = 0) then
    result := ''
  else begin
    result := '((DL.DATETIMEEV >= ' + FormatDateTimeForSql(mStartDate) + ' AND DL.DATETIMEEV <= ' + FormatDateTimeForSql(mEndDate) + ') or '+
            '(DL.DATETIMEEND >= ' + FormatDateTimeForSql(mStartDate) + ' AND DL.DATETIMEEND <= ' + FormatDateTimeForSql(mEndDate) + ') or '+
            '(DL.DATETIMEEV <= ' + FormatDateTimeForSql(mStartDate) + ' AND DL.DATETIMEEND >= ' + FormatDateTimeForSql(mEndDate) + ')) ';
  end;
end;

initialization
  RegisterReport(TDLHistRepForm,      'DLHISTREP',      'Daily Log History Report','REDNMX','DLCOND','Alpine Software Corporation',['DATEPANEL','DESCRPANEL','SCHDPANEL']);
  RegisterReport(TSecFieldRepForm,    'SECFIELDREP',    'Security Fields',         'SEC',   'DLCOND','Alpine Software Corporation',[]);
  RegisterReport(TSysRepListForm,     'SYSREPLIST',     'RedNMX System Reports',   'REDNMX','DLCOND','Alpine Software Corporation',[]);

end.
