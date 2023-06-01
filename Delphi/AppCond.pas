unit AppCond;

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
  AlpineCheck,
  AdvObj;

type
  TAppCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    InvSubTypePanel: TAdvPanel;
    InvSubTypeBrowse: TAdvStringGrid;
    InvPanel: TAdvPanel;
    InvBrowse: TAdvStringGrid;
    ActiveAppPanel: TAdvPanel;
    Label1: TLabel;
    IncludeCheckBox: TAlpineCheckBox;
    RepDatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    DateField: TAlpineDateTime;
    Label2: TLabel;
    ResponseCheck: TAlpineCheckBox;
    DatePanel: TAdvPanel;
    Label3: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    FdidPanel: TAdvPanel;
    FdidBrowse: TAdvStringGrid;
    procedure SysRepSortIDFieldChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateFieldChange(Sender: TObject);
    procedure ResponseCheckClick(Sender: TObject);
    procedure InvBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadInvSubType;
    Procedure LoadInvBrowse;
    function GetInvSubTypeIDWhere: String;
    procedure LoadFdidBrowse;
    function GetFdidWhere: String;
  public
    function SqlWhereClause: String; override;
    function GetInvWhere: String;
end;

var
  AppCondForm: TAppCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     CommonFunc,
     CommonVar,
     InvRep,
     AppResponseGraph,
     AppFullSummRep,
     AppOOSRep,
     AppListRep,
     AppListRegRep;

procedure TAppCondForm.DateFieldChange(Sender: TObject);
begin
  SysRepSortIDFieldChange(self);
end;

procedure TAppCondForm.FormCreate(Sender: TObject);
begin
  FdidPanel.Visible := MultiFdid;
  LoadInvSubType;
  If InvBrowse.Visible then
    LoadInvBrowse;
end;

procedure TAppCondForm.FormShow(Sender: TObject);
begin
  LoadFdidBrowse;
end;

procedure TAppCondForm.SysRepSortIDFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

Procedure TAppCondForm.LoadFdidBrowse;
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


Procedure TAppCondForm.LoadInvSubType;
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

  Open_Query('INVSUBTYPE',false,'SELECT INVSUBTYPE.INVSUBTYPEID, INVSUBTYPE.TYPE, INVSUBTYPE.DESCR FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('TRUCK') + ' ORDER BY TYPE, DESCR');
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

procedure TAppCondForm.ResponseCheckClick(Sender: TObject);
begin
  SysRepSortIDFieldChange(self);
end;

Procedure TAppCondForm.LoadInvBrowse;
Var RowNum : Integer;
begin
  InvBrowse.clear;
  InvBrowse.ColCount := 4;
  InvBrowse.RowCount := 0;

  InvBrowse.ColWidths[00] := 020;
  InvBrowse.ColWidths[01] := 100;
  InvBrowse.ColWidths[02] := 100;
  InvBrowse.ColWidths[03] := 175;

  InvBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INV',false,'SELECT INV.UNITNUM UNITNUM, INV.FDID FDID, FDID.DEPTNAME DEPTNAME FROM INV ' +
                         'LEFT JOIN FDID ON (INV.FDID = FDID.FDID) ' +
                         'WHERE INV.TYPE = ' + AddExpr('TRUCK') + ' ' +
                         'ORDER BY INV.UNITNUM');
  While Not A('INV').Eof do begin
    If Not (tdbfield('INV','UNITNUM') = '') then begin
      InvBrowse.RowCount := InvBrowse.RowCount + 1;
      InvBrowse.AddCheckBox(0,RowNum,false,false);
      InvBrowse.Cells[1,RowNum] := Getfield('INV','UNITNUM').AsString;
      InvBrowse.Cells[2,RowNum] := Getfield('INV','FDID').AsString;
      InvBrowse.Cells[3,RowNum] := Getfield('INV','DEPTNAME').AsString;
      RowNum := RowNum + 1;
    end;  
    A('INV').Skip(1);
  end;
  CloseApollo('INV');
end;

function TAppCondForm.GetInvSubTypeIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  For RowVar := 0 to InvSubTypeBrowse.RowCount-1 do begin
    InvSubTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.INVSUBTYPEID = ' + InvSubTypeBrowse.Cells[0,RowVar];
  end;
  
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';

  GetInvSubTypeIDWhere := WhereString;
end;

function TAppCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then begin
        WhereString := WhereString + ' OR INV.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then begin
      WhereString := '(INV.FDID IS NULL OR INV.FDID = ' + AddExpr('') + ' OR ' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    end;
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;

function TAppCondForm.SqlWhereClause: String;
Var WhereString        : String;
    InvSubTypeIDString : String;
    FdidString         : String;
begin
  InvSubTypeIDString := GetInvSubTypeIDWhere;
  FdidString         := GetFdidWhere;

  WhereString := ' WHERE INV.TYPE = ' + AddExpr('TRUCK');

  If Not (FdidString = '') then
    WhereString := WhereString + ' AND ' + FdidString;
  
  If Not (InvSubTypeIDString = '') then
    WhereString := WhereString + ' AND ' + InvSubTypeIDString;

  If IncludeCheckBox.Checked then
    WhereString := WhereString + ' AND INCLUDE = ' + AddExpr('Y');

  WhereString := WhereString + GetInvWhere;

  Result := WhereString;
end;

function TAppCondForm.GetInvWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(0,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR INV.UNITNUM = ' + AddExpr(InvBrowse.Cells[1,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := 'AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetInvWhere := WhereString;
end;

procedure TAppCondForm.InvBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
begin
  SysRepSortIDFieldChange(self);
end;

initialization
  RegisterReport(TAppListRepForm,      'APPLISTREP',      'Apparatus Listing',                    'APP','APPCOND','Alpine Software Corporation',['ACTIVEAPPPANEL']);
  RegisterReport(TAppListRegRepForm,   'APPLISTREGREP',   'Apparatus Registration Listing',       'APP','APPCOND','Alpine Software Corporation',['ACTIVEAPPPANEL']);
  RegisterReport(TAppOOSRepForm,       'APPOOSREP',       'Apparatus Out of Service Listing',     'APP','APPCOND','Alpine Software Corporation',['DATEPANEL','INVSUBTYPEPANEL','ACTIVEAPPPANEL']);
  RegisterReport(TInvRepForm,          'INDAPPREP',       'Apparatus Summary Report',             'APP','APPCOND','Alpine Software Corporation',['INVSUBTYPEPANEL']);
  RegisterReport(TAppResponseGraphForm,'APPRESPONSEGRAPH','Apparatus Overlapping Response Report','APP','APPCOND','Alpine Software Corporation',['REPDATEPANEL','INVPANEL']);
  RegisterReport(TAppFullSummRepForm,  'APPFULLSUMMREP',  'Apparatus Aggregate Summary Report',   'APP','APPCOND','Alpine Software Corporation',['REPDATEPANEL','INVPANEL']);

end.
