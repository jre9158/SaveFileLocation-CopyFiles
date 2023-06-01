unit DispCond;

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
  alpinecheck,
  AdvGroupBox,
  AlpineLookup,
  BasePictureField,
  SysRepMan,
  AlpineEdit,
  AdvObj;

type
  TDispCondForm = class(TAlpineBaseConditionForm)
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
    FilterPanel: TAdvPanel;
    Label7: TLabel;
    DispBoxIDField: TAlpineLookup;
    DispCallTypeIDPanel: TAdvPanel;
    Label1: TLabel;
    DispCallTypeIDField: TAlpineLookup;
    FdidPanel: TAdvPanel;
    PrimeFdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    RespFdidPanel: TAdvPanel;
    RespFdidBrowse: TAdvStringGrid;
    AddressPanel: TAdvPanel;
    Label2: TLabel;
    streetfield: TAlpineLookup;
    Label3: TLabel;
    StrNumField: TAlpineEdit;
    NfirsMainPanel: TAdvPanel;
    TestField: TAlpineCheckBox;

    subtypepanel: TAdvPanel;
    dispsubtypeidField: TAlpineCheckBox;
    TimePanel: TAdvPanel;
    Label4: TLabel;
    Label5: TLabel;
    StartTimeField: TAlpineEdit;
    EndTimeField: TAlpineEdit;
    Label19: TLabel;
    cityField: TAlpineLookup;
    DispSubTypePanel: TAdvPanel;
    DispSubTypeBrowse: TAdvStringGrid;
    IncTypePanel: TAdvPanel;
    Label9: TLabel;
    IncTypeField: TAlpineLookup;
    Label6: TLabel;
    RoomAptField: TAlpineEdit;
    procedure EnableSave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DispCallTypeBrowseClick(Sender: TObject);
    procedure DispSubTypeBrowseClick(Sender: TObject);
    procedure FdidBrowseClick(Sender: TObject);
    procedure RespFdidBrowseClick(Sender: TObject);
  private
    { Private declarations }
    FSysRepManForm: TSysRepmanForm;
    Procedure LoadDispStatBrowse;
    Procedure LoadDispCallTypeBrowse;
    Procedure LoadDispSubTypeBrowse;
    function RespFdidWhere: String;
  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function SqlWhereClause: String; override;
    function GetDispStatWhere: String;
    function GetDispStatString: String;
    function OrderClause: String;
    procedure LoadFdidBrowse;
    function GetFdidWhere: String;
    function GetFdidString: String;
    function GetFdidList1: String;
    function GetDispCallTypeWhere: String;
    function GetDispSubTypeWhere: String;
    function GetDispStatHistWhere: String;
    class function CheckInTime(LowerTime, UpperTime: String; TimeVar: TDateTime): Boolean;
  end;

var
  DispCondForm: TDispCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     DispAppHist,
     DispCallHistRep,
     DispCallTypeRep,
     DispCallSourceRep,
     DispCallSummRep,
     DispCallTypeRepList,
     PageDispRep,
     CommonFunc,
     DispCallGISRep,
     CommonVar;

function TDispCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

procedure TDispCondForm.FdidBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TDispCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

Procedure TDispCondForm.LoadDispStatBrowse;
Var RowNum : Integer;
begin
  DispStatBrowse.clear;
  DispStatBrowse.ColCount := 6;
  DispStatBrowse.RowCount := 0;

  DispStatBrowse.ColWidths[00] := 000;
  DispStatBrowse.ColWidths[01] := 020;
  DispStatBrowse.ColWidths[02] := 100;
  DispStatBrowse.ColWidths[03] := 175;
  DispStatBrowse.ColWidths[04] := 100;
  DispStatBrowse.ColWidths[05] := 100;

  DispStatBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPSTAT',false,'SELECT DISPSTAT.UNITNUM UNITNUM, DISPSTAT.FDID FDID, DISPAPP.DESCR DISPAPPDESCR, FDID.DEPTNAME DEPTNAME, DISPLOC.DESCR DISPLOCDESCR FROM DISPSTAT ' +
                              'LEFT JOIN FDID ON (FDID.FDID = DISPSTAT.FDID) ' +
                              'LEFT JOIN DISPAPP ON (DISPSTAT.DISPAPPID = DISPAPP.DISPAPPID) ' +
                              'LEFT JOIN DISPLOC ON (DISPSTAT.DISPLOCID = DISPLOC.DISPLOCID) ' +
                              'ORDER BY DISPSTAT.SORTORD');
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

Procedure TDispCondForm.LoadDispSubTypeBrowse;
Var RowNum : Integer;
begin
  DispSubTypeBrowse.clear;
  DispSubTypeBrowse.ColCount := 6;
  DispSubTypeBrowse.RowCount := 0;

  DispSubTypeBrowse.ColWidths[00] := 000;
  DispSubTypeBrowse.ColWidths[01] := 020;
  DispSubTypeBrowse.ColWidths[02] := 100;
  DispSubTypeBrowse.ColWidths[03] := 175;
  DispSubTypeBrowse.ColWidths[04] := 225;

  DispSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPSUBTYPE',false,'SELECT DISPCALLTYPE.DESCR DISPCALLTYPEDESCR,DISPCALLTYPE.CODE DISPCALLTYPECODE, DISPCALLTYPE.SORTORD SORTORD, DISPSUBTYPE.CODE DISPSUBTYPECODE,DISPSUBTYPE.DESCR DISPSUBTYPEDESCR, DISPSUBTYPE.DISPSUBTYPEID DISPSUBTYPEID FROM DISPSUBTYPE ' +
                                 'LEFT JOIN DISPCALLTYPE ON (DISPCALLTYPE.DISPCALLTYPEID = DISPSUBTYPE.DISPCALLTYPEID)' +
                                 'ORDER BY DISPCALLTYPE.CODE,DISPCALLTYPE.DESCR,DISPSUBTYPE.DESCR');
  While Not A('DISPSUBTYPE').Eof do begin
      DispSubTypeBrowse.RowCount := DispSubTypeBrowse.RowCount + 1;
      DispSubTypeBrowse.Cells[0,RowNum] := Getfield('DISPSUBTYPE','DISPSUBTYPEID').AsString;
      DispSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
      DispSubTypeBrowse.Cells[2,RowNum] := GetField('DISPSUBTYPE','DISPCALLTYPECODE').AsString +'-'+ Getfield('DISPSUBTYPE','DISPCALLTYPEDESCR').AsString;
      DispSubTypeBrowse.Cells[3,RowNum] := Getfield('DISPSUBTYPE','DISPSUBTYPECODE').AsString;
      DispSubTypeBrowse.Cells[4,RowNum] := Getfield('DISPSUBTYPE','DISPSUBTYPEDESCR').AsString;
      RowNum := RowNum + 1;
    A('DISPSUBTYPE').Skip(1);
  end;
  CloseApollo('DISPSUBTYPE');
end;

Procedure TDispCondForm.LoadDispCallTypeBrowse;
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

  Open_Query('DISPCALLTYPE',false,'SELECT DISPCALLTYPE.HIDDEN, DISPCALLTYPE.DISPCALLTYPEID, DISPCALLTYPE.CODE, DISPCALLTYPE.DESCR FROM DISPCALLTYPE ' +
                                  'ORDER BY DISPCALLTYPE.SORTORD, DISPCALLTYPE.CODE');
  While Not A('DISPCALLTYPE').Eof do begin
    If tdbField('DISPCALLTYPE','HIDDEN') = 'N' then begin
      DispCallTypeBrowse.RowCount := DispCallTypeBrowse.RowCount + 1;
      DispCallTypeBrowse.Cells[0,RowNum] := Getfield('DISPCALLTYPE','DISPCALLTYPEID').AsString;
      DispCallTypeBrowse.AddCheckBox(1,RowNum,false,false);
      DispCallTypeBrowse.Cells[2,RowNum] := Getfield('DISPCALLTYPE','CODE').AsString;
      DispCallTypeBrowse.Cells[3,RowNum] := Getfield('DISPCALLTYPE','DESCR').AsString;
      RowNum := RowNum + 1;
    end;
    A('DISPCALLTYPE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
end;



function TDispCondForm.SqlWhereClause: String;
Var mNfirsResp         : String;
    FdidString         : String;
    DispCallTypeString : String;
    DispSubTypeString : String;
begin
  FdidString         := GetFdidWhere;
  DispCallTypeString := GetDispCallTypeWhere;
  DispSubTypeString  := GetDispSubTypeWhere;
  result             := ' WHERE DISPCALL.INCSTAT = ' + AddExpr('CLOSED');

  If TestField.Checked then
    result := result + ' AND NOT (NFIRSMAIN.NFIRSMAINID IS NULL) ';

  If BuildSQLAlpineDate('DISPCALL.DATETIMEREC',StartDateField.Value,EndDateField.Value)<>'' then
    result := result + ' AND ' + BuildSQLAlpineDate('DISPCALL.DATETIMEREC',StartDateField.Value,EndDateField.Value);

  If Not (alltrim(DispBoxIDField.Value) = '') then
    Result := Result + ' AND DISPCALL.DISPBOXID = ' + DispBoxIDField.Value;

  If Not (DispCallTypeString = '') then
    Result := Result + ' AND ' + DispCallTypeString;

  If Not (DispSubTypeString = '') then
    Result := Result + ' AND ' + DispSubTypeString;

  If Not (alltrim(DispCallTypeIDField.Value) = '') then begin
    If mFireID = '30054' then
      Result := Result + ' AND NFIRSMAIN.DISPCALLTYPEID = ' + DispCallTypeIDField.Value
    else
      Result := Result + ' AND DISPCALL.DISPCALLTYPEID = ' + DispCallTypeIDField.Value;
  end;
  
  If Not (alltrim(StreetField.Text) = '') then
    Result := Result + ' AND DISPCALL.STREET LIKE ' + AddExpr(StreetField.Text + '%');

  If Not (alltrim(CityField.Value) = '') then
    Result := Result + ' AND DISPCALL.CITY = ' + AddExpr(CityField.Value);

  If Not (alltrim(StrNumField.Text) = '') then
    Result := Result + ' AND DISPCALL.STRNUM = ' + AddExpr(StrNumField.Text);

  If Not (alltrim(RoomAptField.Text) = '') then
    Result := Result + ' AND DISPCALL.ROOMAPT = ' + AddExpr(RoomAptField.Text);


  mNfirsResp := RespFdidWhere;
  If mNfirsResp <> '' then
    Result := result + ' AND ' + mNfirsResp;

  If Not (FdidString = '') then
    Result := Result + ' AND ' + FdidString;

  If Not (alltrim(IncTypeField.Text) = '')  then
    Result := Result + ' AND NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField.Text + '%');
    
  Result := Result + GetDispStatWhere;
end;

function TDispCondForm.GetDispStatHistWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispStatBrowse.RowCount-1 do begin
    DispStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR DISPSTAT.UNITNUM = ' + AddExpr(DispStatBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispStatHistWhere := WhereString;
end;

function TDispCondForm.GetDispStatWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispStatBrowse.RowCount-1 do begin
    DispStatBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(DispStatBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispStatWhere := WhereString;
end;

function TDispCondForm.OrderClause: String;
begin
  result := ' ORDER BY DISPSTAT.UNITNUM, NFIRSMAIN.DATETIMEALARM';
end;

procedure TDispCondForm.DispCallTypeBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TDispCondForm.DispSubTypeBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TDispCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TDispCondForm.FormCreate(Sender: TObject);
begin
  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));
  FdidPanel.Visible := MultiFdid;
end;

procedure TDispCondForm.FormShow(Sender: TObject);
begin

  If DispStatPanel.Visible then
    LoadDispStatBrowse;

  If DispCallTypePanel.Visible then
    LoadDispCallTypeBrowse;

  If DispSubTypePanel.Visible then
    LoadDispSubTypeBrowse;

  If FdidPanel.Visible then
    LoadFdidBrowse;

  If Not RespFdidPanel.Visible then
    PrimeFdidPanel.Align := alclient;

  If FSysRepManForm<>nil then
    FSysRepManForm.ReLoadSettings;
end;

Procedure TDispCondForm.LoadFdidBrowse;
begin
  CommonLoadFdidBrowse(FdidBrowse);
  If secFdid = '' then begin
    FdidBrowse.Enabled          := true;
    PrimeFdidPanel.Caption.Text := 'Primary Agency (Leave blank for all)';
  end else begin
    FdidBrowse.Enabled          := false;
    PrimeFdidPanel.Caption.Text := 'Primary Agency ' + '(' + secFdid + ' only)';                      
  end;
  RespFdidBrowse.clear;
  RespFdidBrowse.ColCount      := 3;
  RespFdidBrowse.RowCount      := 0;
  RespFdidBrowse.ColWidths[00] := 000;
  RespFdidBrowse.ColWidths[01] := 020;
  RespFdidBrowse.ColWidths[02] := 200;

  Open_Query('FDID',false,'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    RespFdidBrowse.RowCount := RespFdidBrowse.RowCount + 1;
    RespFdidBrowse.Cells[0,RespFdidBrowse.RowCount-1] := Getfield('FDID','FDID').AsString;
    RespFdidBrowse.AddCheckBox(1,RespFdidBrowse.RowCount-1,secFdid = tdbfield('FDID','FDID'),false);
    RespFdidBrowse.Cells[2,RespFdidBrowse.RowCount-1] := Getfield('FDID','SHORTDESCR').AsString;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');

  If secFdid = '' then begin
    RespFdidBrowse.Enabled     := true;
    RespFdidPanel.Caption.Text := 'Responding Agency (Leave blank for all)';
  end else begin
    RespFdidBrowse.Enabled     := false;
    RespFdidPanel.Caption.Text := 'Responding Agency ' + '(' + secFdid + ' only)';
  end;
end;



function TDispCondForm.GetFdidWhere: String;
begin
  result := CommonGetFdidWhere(FdidBrowse);
end;


procedure TDispCondForm.RespFdidBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TDispCondForm.RespFdidWhere: String;
var FDIDStringList : TStringList;
    RowVar         : Integer;
    CheckValue     : Boolean;
begin
  if (not RespFdidPanel.Visible) then begin
    result := '';
    exit;
  end;
  FDIDStringList := TStringList.Create;
  For RowVar := 0 to RespFdidBrowse.RowCount-1 do begin
    RespFdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    if CheckValue and (RespFdidBrowse.Cells[0,RowVar] <> '') then
      FDIDStringList.Add(AddExpr(RespFdidBrowse.Cells[0,RowVar]));
  end;
  if FDIDStringList.Count>0 then
    result := ' DISPCALL.DISPCALLID IN (SELECT DISPCALLID FROM NFIRSMAIN WHERE FDID IN '+
      ConvertStringListtoInClause(FDIDStringList)+' AND '+BuildSQLAlpineDate('DATETIMEALARM',StartDateField.Value,EndDateField.Value)+')';
  FDIDStringList.Free;
end;


function TDispCondForm.GetFdidString: String;
begin
  result := GetFdidStringForDisplay(FdidBrowse);
end;

function TDispCondForm.GetFdidList1: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidList : String;
begin
  If MultiFdid then begin
    FdidList := '';
    For RowVar := 0 to RespFdidBrowse.RowCount-1 do begin
      RespFdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        FdidList := FdidList + RespFdidBrowse.Cells[0,RowVar] + ',';
    end;
    If (FdidList = '') then
      FdidList := ''
    else
      FdidList := Substr(FdidList,1,Length(FdidList)-1);
    GetFdidList1 := FdidList;
  end else
    GetFdidList1 := '';
end;

function TDispCondForm.GetDispCallTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispCallTypeBrowse.RowCount-1 do begin
    DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then begin
      If mFireID = '30054' then
        WhereString := WhereString + ' OR NFIRSMAIN.DISPCALLTYPEID = ' + AddExpr(DispCallTypeBrowse.Cells[0,RowVar])
      else
        WhereString := WhereString + ' OR DISPCALL.DISPCALLTYPEID = ' + AddExpr(DispCallTypeBrowse.Cells[0,RowVar]);
      end;
  end;
  If Not (WhereString = '') then
    WhereString := ' (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispCallTypeWhere := WhereString;
end;

function TDispCondForm.GetDispSubTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispSubTypeBrowse.RowCount-1 do begin
    DispSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR DISPSUBTYPE.DISPSUBTYPEID = ' + AddExpr(DispSubTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispSubTypeWhere := WhereString;
end;


function TDispCondForm.GetDispStatString: String;
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


class function TDispCondForm.CheckInTime(LowerTime, UpperTime: String; TimeVar: TDateTime): Boolean;
Var TimeString : String;
    RetVal     : Boolean;
begin
  RetVal     := true;
  TimeString := FormatDateTime('HH:NN',TimeVar);
  If (length(alltrim(LowerTime)) = 5) and (length(alltrim(UpperTime)) = 5) then begin
    If UpperTime < LowerTime then
      RetVal := (TimeString >= LowerTime) or (TimeString <= UpperTime)
    else
      RetVal := (TimeString >= LowerTime) and (TimeString <= UpperTime);
  end;
  CheckInTime := RetVal;
end;

initialization
  RegisterReport(TDispAppHistForm,        'DISPAPPHIST',        'Dispatch Apparatus History',        'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL','DISPSTATPANEL','TIMEPANEL']);
  RegisterReport(TDispCallHistRepForm,    'DISPCALLHISTREP',    'Dispatch Call History',             'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL','TIMEPANEL','FILTERPANEL','DISPCALLTYPEPANEL','ADDRESSPANEL']);
  RegisterReport(TDispCallGISRepForm,     'DISPCALLGISREP',     'Dispatch Call Geo Coding Results',  'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TDispCallTypeRepForm,    'DISPCALLTYPEREP',    'Dispatch Call Type Summary',        'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL','FILTERPANEL','SUBTYPEPANEL']);
  RegisterReport(TDispCallTypeRepListForm,'DISPCALLTYPEREPLIST','Dispatch Call Types and Sub Types', 'DISP',  'DISPCOND','Alpine Software Corporation',[]);
  RegisterReport(TDispCallSourceRepForm,  'DISPCALLSOURCEREP',  'Dispatch Call Source Summary',      'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL','FILTERPANEL','SUBTYPEPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TPageDispRepForm,        'PAGEDISPREP',        'Paging List by Call Type',          'DISP',  'DISPCOND','Alpine Software Corporation',[]);
  RegisterReport(TDispCallSummRepForm,    'DISPCALLSUMMREP',    'Dispatch Call Times Summary',       'DISP',  'DISPCOND','Alpine Software Corporation',['DATEPANEL','FILTERPANEL','RESPFDIDPANEL','DISPCALLTYPEPANEL']);

end.
