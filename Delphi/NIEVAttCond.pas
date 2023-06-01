unit NIEvAttCond;
 
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
  alpinebaseCond,
  HTMLChkList,
  Grids,
  BaseGrid,
  SysRepMan,
  AdvGrid,
  AlpineDateTime,
  AlpineBaseSummaryReport,
  AlpineLookup,
  AlpineTMSStringGrid,
  AdvGroupBox,
  AdvGlowButton,
  AlpineGlowButton,
  BasePictureField,
  AlpineEdit,
  AlpineCheck,
  qrctrls,
  quickrpt,
  AdvObj;

type
  TNIEvAttCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    ParamBox: TMyScrollBox;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    SortPanel: TAdvPanel;
    IdNumber: TRadioButton;
    LastName: TRadioButton;
    PersCodePanel: TAdvPanel;
    PersIDLabel: TLabel;
    TypePanel: TPanel;
    FdidPanel: TAdvPanel;
    FdidCompPanel: TAdvPanel;
    PersTypePanel: TAdvPanel;
    FdidCompBrowse: TAlpineTMSStringGrid;
    PersTypeBrowse: TAlpineTMSStringGrid;
    PersStatPanel: TAdvPanel;
    PersStatBrowse: TAlpineTMSStringGrid;
    SchdPanel: TAdvPanel;
    Label23: TLabel;
    Label25: TLabel;
    Label30: TLabel;
    ShiftLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    SchdLocIDField: TAlpineLookup;
    SchdRankIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    SchdShiftIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    PersIDDescr: TLabel;
    TrainCATPanel: TAdvPanel;
    AdvPanel1: TAdvPanel;
    TrainCATBrowse: TAdvStringGrid;
    YOS: TRadioButton;
    PersRankPanel: TAdvPanel;
    PersRankBrowse: TAlpineTMSStringGrid;
    ConditionLabel: TLabel;
    fdidbrowse: TAlpineTMSStringGrid;
    TypeFilterPanel: TAdvPanel;
    Label1: TLabel;
    NITRAINCATTYPEField: TAlpineLookup;
    SHowAllTrainCatButton: TAlpineGlowButton;
    DateExpiresButton: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure EnableSave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TrainCATBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TrainCATBrowseClick(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure NITRAINCATTYPEFieldSuccessfulValidate(Sender: TObject);
    procedure SHowAllTrainCatButtonClick(Sender: TObject);
  private
    { Private declarations }
    FSysRepManForm: TSysRepmanForm;
    bCompaniesExist: Boolean;
    Procedure LoadFDIDCompBrowse;
    Procedure LoadFdidBrowse;
    Procedure LoadTrainCAT;

  public
    function SelectOrder: String;
    function GetFdidWhere: String;
    function GetFdidCompIDWhere: String;
    function GetPersTypeIDWhere: String;
    function GetPersRankIDWhere: String;
    function GetPersTypeList: String;
    function GetPersRankList: String;
    function GetPersStatList: String;
    function GetFdidCompList: String;
    function GetFdidCompStringList: TStringList;
    function GetPersStatIDWhere: String;
    function SqlWhereClause: String; override;
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function OrderClause: String; override;
    function GetPersOrder: String;
    function CheckTrainCatBrowse(NITrainCAT1ID: String): Boolean;
    function CountTrainCatBrowse: Integer;
    function GetFdidString: String;
    function GetFdidVar: String;
    class procedure PrintTitles(BandName : TQRBand);
  end;
var
  NIEvAttCondForm: TNIEvAttCondForm;

implementation

{$R *.DFM}

uses
     GenFunc,
     SecSet,
     PersCond,
     PersCertRep,
     CommonVar,
     CommonFunc;

procedure TNIEvAttCondForm.FormCreate(Sender: TObject);
begin
  LoadFdidBrowse;
  LoadFdidCompBrowse;
  TPersCondForm.LoadBrowse(PersTypeBrowse,'PERSTYPE');
  TPersCondForm.LoadBrowse(PersStatBrowse,'PERSSTAT');
  TPersCondForm.LoadBrowse(PersRankBrowse,'PERSRANK');
  LoadTrainCAT;
end;

procedure TNIEvAttCondForm.FormShow(Sender: TObject);
begin
  FdidPanel.Visible     := MultiFdid;
  FdidCompPanel.Visible := FDidCompPanel.Visible and bCompaniesExist;

  If TypePanel.Visible then
    TypePanel.Height := 190;
  If TrainCATPanel.Visible then
    TrainCATPanel.Align := alclient;

  If Not FdidPanel.Visible then begin
    FdidCompPanel.Width := FdidCompPanel.Width + 80;
    PersTypePanel.Width := PersTypePanel.Width + 80;
    PersStatPanel.Width := PersStatPanel.Width + 80;
  end;

  If FdidPanel.Visible then
    FdidPanel.Align := alleft;
  If FdidCompPanel.Visible then
    FdidCompPanel.Align := alleft;
  If PersTypePanel.Visible then
    PersTypePanel.Align := alleft;
  If PersStatPanel.Visible then
    PersStatPanel.Align := alleft;
  If PersRankPanel.Visible then
    PersRankPanel.Align := alleft;

  ScaleButtonsOnPanel('H',TypePanel);
  LoadTrainCAT;
  SysRepManForm.ReLoadSettings;
  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));
end;

Procedure TNIEvAttCondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 0;
  FdidBrowse.ColWidths[00] := 000;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;

  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  Open_Query('FDID',false,'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := IIf(tdbfield('FDID','SHORTDESCR') = '',tdbfield('FDID','DEPTNAME'),tdbfield('FDID','SHORTDESCR'));
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

Procedure TNIEvAttCondForm.LoadFDIDCompBrowse;
Var RowNum : Integer;
begin
  FdidCompBrowse.clear;
  FdidCompBrowse.ColCount := 3;
  FdidCompBrowse.RowCount := 0;

  FdidCompBrowse.ColWidths[00] := 000;
  FdidCompBrowse.ColWidths[01] := 020;
  FdidCompBrowse.ColWidths[02] := 200;

  FdidCompBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  bCompaniesExist := False;

  Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) ORDER BY FDID.ABBREVIATE, FDIDCOMP.DESCR');
  While Not A('FDIDCOMP').Eof do begin
    bCompaniesExist := True;
    FdidCompBrowse.Cells[0,RowNum] := Getfield('FDIDCOMP','FDIDCOMPID').AsString;
    FdidCompBrowse.AddCheckBox(1,RowNum,false,false);

    If MultiFdid then
      FdidCompBrowse.Cells[2,RowNum] := tdbfield('FDIDCOMP','ABBREVIATE') + '-' + tdbfield('FDIDCOMP','DESCR')
    else
      FdidCompBrowse.Cells[2,RowNum] := tdbfield('FDIDCOMP','DESCR');

    FdidCompBrowse.RowCount := FdidCompBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDIDCOMP').Skip(1);
  end;
  CloseApollo('FDIDCOMP');
end;


function TNIEvAttCondForm.SelectOrder: String;
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
    If YOS.Checked then
      result := ' ORDER BY PERS.YOS DESC';
    If DateExpiresButton.Checked and (FSysRepManForm.ASysRep.ReportCode = 'PERSCERTREP') then
      result := ' ORDER BY NIEVATT.DATETIMEEXP';
  end;
end;


procedure TNIEvAttCondForm.FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TNIEvAttCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR PERS.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';    
end;

function TNIEvAttCondForm.GetFdidCompIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  if not TypePanel.Visible then
    exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERSCOMP.FDIDCOMPID = ' + pkValue(FdidCompBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetFdidCompIDWhere := WhereString;
end;

function TNIEvAttCondForm.GetPersTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not TypePanel.Visible then
    exit;  
  For RowVar := 0 to PersTypeBrowse.RowCount-1 do begin
    PersTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then
      WhereString := WhereString + ' OR PERS.PERSTYPEID = ' + pkValue(PersTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersTypeIDWhere := WhereString;
end;

function TNIEvAttCondForm.GetPersTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersTypeBrowse.RowCount-1 do begin
    PersTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Personnel Types'
  else
    Result := RetVal;
end;

function TNIEvAttCondForm.GetPersRankList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankBrowse.RowCount-1 do begin
    PersRankBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersRankBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Personnel Ranks'
  else
    Result := RetVal;
end;

function TNIEvAttCondForm.GetPersRankIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  If not TypePanel.Visible then
    exit;
  For RowVar := 0 to PersRankBrowse.RowCount-1 do begin
    PersRankBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue  then
      WhereString := WhereString + ' OR PERS.PERSRANKID = ' + pkValue(PersRankBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersRankIDWhere := WhereString;
end;

function TNIEvAttCondForm.GetFdidCompStringList: TStringList;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
    l          : TStringList;

begin
  l := TStringList.Create;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      l.Add(FdidCompBrowse.Cells[2,RowVar]) ;

  end;
  result := l;
end;

function TNIEvAttCondForm.GetFdidCompList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + FdidCompBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Companies'
  else
    Result := RetVal;
end;

function TNIEvAttCondForm.GetPersStatList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to PersStatBrowse.RowCount-1 do begin
    PersStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + PersStatBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Status Types'
  else
    Result := RetVal;
end;

function TNIEvAttCondForm.GetPersOrder: String;
begin
  If IDNumber.Checked then
    GetPersOrder := 'ID Number'
  else if LastName.Checked then
    GetPersOrder := 'Last Name, First'
  else if Yos.Checked then
    GetPersOrder := 'Years of Service, Descending'
  else
    GetPersOrder := 'None selected';
end;

function TNIEvAttCondForm.GetPersStatIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to PersStatBrowse.RowCount-1 do begin
    PersStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue and (anystrtoint(PersStatBrowse.Cells[0,RowVar])>0) then
      WhereString := WhereString + ' OR PERS.PERSSTATID = ' + PersStatBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersStatIDWhere := WhereString;
end;

procedure TNIEvAttCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TNIEvAttCondForm.SqlWhereClause: String;
Var WhereString        : String;
    PersCompIDString   : String;
    FdidString         : String;
    PersTypeIDString   : String;
    JoinVar            : String;
    PersStatIDString   : String;
    PersRankIDString   : String;
begin
  JoinVar            := '';
  FdidString         := GetFdidWhere;
  PersCompIDString   := GetFdidCompIDWhere;
  PersTypeIDString   := GetPersTypeIDWhere;
  PersStatIDString   := GetPersStatIDWhere;
  PersRankIDString   := GetPersRankIDWhere;

  WhereString        := ' WHERE (NIEVATT.NITRAINCAT1ID > 0) ';
  If BuildSQLAlpineDate('NI.DATETIMESTART',StartDateField.Value,EndDateField.Value) <> '' then
    WhereString := WhereString + ' AND (NIEVATT.DATETIMEATTEND IS NULL OR ' + BuildSQLAlpineDate('NIEVATT.DATETIMEATTEND',StartDateField.Value,EndDateField.Value) + ')';

  If AnyStrToInt(PersIDField.Value) > 0 then
    WhereString := WhereString + ' AND PERS.PERSID = ' + pkValue(PersIDField.Value)
  else begin
    If Not (PersTypeIDString = '') then
      WhereString := WhereString + ' AND ' + PersTypeIDString;

    If Not (PersCompIDString = '') then
      WhereString := WhereString + ' AND ' + PersCompIDString;

    If Not (PersStatIDString = '') then
      WhereString := WhereString + ' AND ' + PersStatIDString;

    If Not (PersRankIDString = '') then
      WhereString := WhereString + ' AND ' + PersRankIDString;

    If Not (FdidString = '') then
      WhereString := WhereString + ' AND ' + FdidString;

    If Not (UnitNumfield.Value = '') then
      WhereString := WhereString + ' AND PERS.UNITNUM = ' + AddExpr(UnitNumField.Value);

    If Not (SchdShiftIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDSHIFTID = ' + pkValue(SchdShiftIDField.Value);

    If Not (SchdLocIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDLOCID = ' + pkValue(SchdLocIDField.Value);

    If Not (SchdRankIDField.Value = '') then
      WhereString := WhereString + ' AND PERS.SCHDRANKID = ' + pkValue(SchdRankIDField.Value);

    If Not (PersCompIDString = '') then
      JoinVar := ' INNER JOIN PERSCOMP ON (PERSCOMP.PERSID = PERS.PERSID) ';
  end;
  result :=  JoinVar + WhereString;
end;

function TNIEvAttCondForm.OrderClause: String;
begin
  result := ' ' + SelectOrder;
end;

function TNIEvAttCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

procedure TNIEvAttCondForm.SHowAllTrainCatButtonClick(Sender: TObject);
begin
  NITRAINCATTYPEField.Value := '';
  LoadTrainCAT;
end;

function TNIEvAttCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

Procedure TNIEvAttCondForm.LoadTrainCAT;
Var RowNum : Integer;
begin
  TrainCatBrowse.clear;
  TrainCatBrowse.ColCount      := 5;

  TrainCatBrowse.ColWidths[00] := 000;
  TrainCatBrowse.ColWidths[01] := 020;
  TrainCatBrowse.ColWidths[02] := 100;
  TrainCatBrowse.ColWidths[03] := 300;
  TrainCatBrowse.ColWidths[04] := 400;
  TrainCatBrowse.RowCount      := 2;
  TrainCatBrowse.Cells[0,0] := '';
  TrainCatBrowse.Cells[1,0] := '';
  TrainCatBrowse.Cells[2,0] := 'Code';
  TrainCatBrowse.Cells[3,0] := 'Description';
  TrainCatBrowse.Cells[4,0] := 'Type';

  TrainCatBrowse.ControlLook.NoDisabledCheckRadioLook := True;

  if NITRAINCATTYPEField.Value = '' then
    Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR, NITRAINCATTYPE.CODE NITRAINCATTYPECODE ' +
                                   'FROM NITRAINCAT1 ' +
                                   'LEFT JOIN NITRAINCATTYPE ON (NITRAINCAT1.NITRAINCATTYPEID = NITRAINCATTYPE.NITRAINCATTYPEID) ' +
                                   'ORDER BY NITRAINCATTYPE.CODE, NITRAINCAT1.CODE')
  else
    Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR, NITRAINCATTYPE.CODE NITRAINCATTYPECODE ' +
                                   'FROM NITRAINCAT1 ' +
                                   'LEFT JOIN NITRAINCATTYPE ON (NITRAINCAT1.NITRAINCATTYPEID = NITRAINCATTYPE.NITRAINCATTYPEID) ' +
                                   'WHERE NITRAINCAT1.NITRAINCATTYPEID = ' + AddExpr(NITRAINCATTYPEField.Value) +
                                   'ORDER BY NITRAINCATTYPE.CODE, NITRAINCAT1.CODE');

  RowNum := 1;
  While Not A('NITRAINCAT1').Eof do begin
    TrainCatBrowse.Cells[0,RowNum] := Getfield('NITRAINCAT1','NITRAINCAT1ID').AsString;
    TrainCatBrowse.AddCheckBox(1,RowNum,false,false);
    TrainCatBrowse.Cells[2,RowNum] := Getfield('NITRAINCAT1','CODE').AsString;
    TrainCatBrowse.Cells[3,RowNum] := Getfield('NITRAINCAT1','DESCR').AsString;
    TrainCatBrowse.Cells[4,RowNum] := Getfield('NITRAINCAT1','NITRAINCATTYPECODE').AsString;
    TrainCatBrowse.RowCount := TrainCatBrowse.RowCount + 1;
    RowNum := RowNum + 1;

    A('NITRAINCAT1').Skip(1);
  end;
  CloseApollo('NITRAINCAT1');
  TrainCatBrowse.FixedRows  := 1;
end;

procedure TNIEvAttCondForm.NITRAINCATTYPEFieldSuccessfulValidate(
  Sender: TObject);
begin
  LoadTrainCAT;
end;

function TNIEvAttCondForm.CheckTrainCatBrowse(NITrainCAT1ID: String): Boolean;
Var RowNum     : Integer;
    Form       : TForm;
    RetVal     : Boolean;
    CheckValue : Boolean;
    NoneChecked: Boolean;

begin
  RetVal      := false;
  NoneChecked := True;
  For RowNum := 1 to TrainCATBrowse.RowCount do begin
    TrainCATBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    if CheckValue then begin
      NoneChecked := False;
      break;
    end;
  end;
  If NoneChecked then
    RetVal := True
  else begin
    For RowNum := 0 to TrainCATBrowse.RowCount-1 do begin
      TrainCATBrowse.GetCheckBoxState(1,RowNum,CheckValue);
      If CheckValue then begin
//      ShowMessage(TrainCATBrowse.Cells[0,RowNum] + ' ' + TrainCATBrowse.Cells[2,RowNum] + ' ' + TrainCATBrowse.Cells[3,RowNum]); 
        If (TrainCATBrowse.Cells[0,RowNum] = NITrainCAT1ID) then begin
          RetVal := true;
          break;
        end;
      end;
    end;
  end;
  CheckTrainCatBrowse := RetVal;
end;

function TNIEvAttCondForm.CountTrainCatBrowse: Integer;
Var RowNum     : Integer;
    CountVar   : Integer;
    CheckValue : Boolean;
begin
  CountVar := 0;
  For RowNum := 1 to TrainCATBrowse.RowCount do begin
    TrainCATBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then
      CountVar := CountVar + 1;
  end;
  CountTrainCatBrowse := CountVar;
end;

procedure TNIEvAttCondForm.TrainCATBrowseClick(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TNIEvAttCondForm.TrainCATBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var CheckValue : Boolean;
begin
  If (key=VK_SPACE) then begin
    TrainCATBrowse.GetCheckBoxState(1,TrainCATBrowse.Row,CheckValue);
    TrainCATBrowse.SetCheckBoxState(1,TrainCATBrowse.Row,Not CheckValue);
  end;
  SysRepManForm.EnableSaveButton(Self);  
end;

function TNIEvAttCondForm.GetFdidString: String;
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

function TNIEvAttCondForm.GetFdidVar: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidString : String;
begin
  If MultiFdid then begin
    FdidString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue and Not (alltrim(FdidBrowse.Cells[0,RowVar]) = '') then
        FdidString := FdidString + FdidBrowse.Cells[0,RowVar] + ', ';
    end;
    If (FdidString = '') then
      FdidString := ''
    else
      FdidString := Substr(FdidString,1,Length(FdidString)-2);
    GetFdidVar := FdidString;
  end else
    GetFdidVar := '';
end;

procedure TNIEvAttCondForm.PersIDFieldEnter(Sender: TObject);
begin
  If at('PERSCODE',GlobalPersSort) > 0 then
    PersIDField.LookUpCode := 'PERSBYPERSCODE';
  If (FireID <> '28030') and (FireID <> '60008') then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY ' + GlobalPersSort;
  If (secFDID <> '') then
    PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE FDID = ' + AddExpr(secFDID) + ' ORDER BY ' + GlobalPersSort;

end;

class procedure TNIEvAttCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    Form               : TForm;
    RowNum             : Integer;
    FdidString         : String;
    FdidCompString     : String;
    DateString         : String;
    PersStatString     : String;
    PersTypeString     : String;
    PersRankString     : String;
    PersOrderString    : String;
    TestDateVar        : TDateTime;
begin
  Form               := GetFormOfType(TNIEvAttCondForm);
  DateString         := GetAlpineDateLabel(TNIEvAttCondForm(Form).StartDateField.Value,TNIEvAttCondForm(Form).EndDateField.Value);
  FdidString         := TNIEvAttCondForm(Form).GetFdidString;
  FdidCompString     := TNIEvAttCondForm(Form).GetFdidCompList;
  PersTypeString     := TNIEvAttCondForm(Form).GetPersTypeList;
  PersRankString     := TNIEvAttCondForm(Form).GetPersRankList;
  PersStatString     := TNIEvAttCondForm(Form).GetPersStatList;
  PersOrderString    := TNIEvAttCondForm(Form).GetPersOrder;

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency:');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (DateString = '') and TNIEvAttCondForm(Form).DatePanel.Visible then begin
    ConditionLabelList.Add('Certification Range:');
    ConditionFieldList.Add(DateString);
  end;

  If Not (FdidCompString = '') then begin
    ConditionLabelList.Add('Company:');
    ConditionFieldList.Add(FdidCompString);
  end;

  If Not (PersStatString = '') then begin
    ConditionLabelList.Add('Status:');
    ConditionFieldList.Add(PersStatString );
  end;

  If Not (PersTypeString = '') then begin
    ConditionLabelList.Add('Type:');
    ConditionFieldList.Add(PersTypeString );
  end;

  If Not (PersRankString = '') then begin
    ConditionLabelList.Add('Rank:');
    ConditionFieldList.Add(PersRankString );
  end;

  If Not (PersOrderString = '') then begin
    ConditionLabelList.Add('Order:');
    ConditionFieldList.Add(PersOrderString);
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := BandName.Width - 500;
    ConditionLabel.Width      := 200;
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
    ConditionField.Left       := BandName.Width - 296;
    ConditionField.Width      := 290;
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
  RegisterReport(TPersCertRepForm,'PERSCERTREP','Personnel Certification Report','NI','NIEVATTCOND','Alpine Software Corporation',['FDIDPANEL','TYPEPANEL','PERSTYPEPANEL','PERSSTATPANEL','PERSCODEPANEL','SORTPANEL','FDIDCOMPPANEL','DATEPANEL','TRAINCATPANEL']);

end.
