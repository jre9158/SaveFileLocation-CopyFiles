unit InvInspType;

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
  NormalBase,
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AdvGroupBox,
  AlpinePanel,
  AdvPageControl,
  ComCtrls,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpineMemo,
  HtmlBtns,
  AlpineCheck;

type
  TInvInspTypeForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    FdidLabel: TLabel;
    MyDBEdit2: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    InvServFormField: TAlpineLookup;
    FdidField: TAlpineLookup;
    InvSubTypeField: TAlpineLookup;
    InvSubTypeLabel: TLabel;
    InvInspTypeControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    InvDescrTab: TAdvTabSheet;
    InvServTypeItemBrowse: TAlpineBlockBrowse;
    InvServStatusPanel: TAlpinePanel;
    InvServStatusBrowse: TAlpineTMSStringGrid;
    SQLStatTab: TAdvTabSheet;
    SQLStatField: TAlpineMemo;
    Label3: TLabel;
    Label4: TLabel;
    ActiveField: TAlpineCheckBox;
    Label6: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure InvDescrTabShow(Sender: TObject);
    procedure InvServStatusBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure InvSubTypeFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LoadInvServTypeStatusBrowseBrowse;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    class procedure InvNewRecord(DataSet: TDataSet);
    class procedure StaNewRecord(DataSet: TDataSet);
    class procedure AppNewRecord(DataSet: TDataSet);
    class procedure HoseNewRecord(DataSet: TDataSet);
    class procedure SCBANewRecord(DataSet: TDataSet);
    procedure InvServTypeItemNewRecord(DataSet: TDataSet);
  end;

var
  InvInspTypeForm: TInvInspTypeForm;

implementation
uses GenFunc,
     InvServTypeItem,
     Fdid,
     CommonFunc,
     Main;

{$R *.DFM}

class procedure TInvInspTypeForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TInvInspTypeForm.InvDescrTabShow(Sender: TObject);
begin
  inherited;
  LoadInvServTypeStatusBrowseBrowse;
end;

class procedure TInvInspTypeForm.InvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INVSERVFORM').AsString := 'INVINSP';
end;

class procedure TInvInspTypeForm.StaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INVSERVFORM').AsString := 'STAINSP';
end;

class procedure TInvInspTypeForm.AppNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INVSERVFORM').AsString := 'APPINSP';
end;

class procedure TInvInspTypeForm.SCBANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('INVSERVFORM').AsString := 'SCBAINSP';
end;

class procedure TInvInspTypeForm.HoseNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('INVSERVFORM').AsString := 'HOSEINSP';
end;

procedure TInvInspTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TInvInspTypeForm(GetFormOfType(TInvInspTypeForm)),GenPanel);
  InvServTypeItemBrowse.Setup('INVSERVTYPEITEM','INVSERVTYPEID',pk,TInvServTypeItemForm,InvServTypeItemNewRecord);
  InvInspTypeControl.ActivePage := GenTab;
  SQLStatTab.TabVisible         := AlpineLogIn;
end;

procedure TInvInspTypeForm.InvServTypeItemNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVTYPEID').AsString      := pk;
end;


procedure TInvInspTypeForm.InvSubTypeFieldEnter(Sender: TObject);
Var FTypeVar : String;
begin
  inherited;
  If substr(InvServFormField.Value,1,3) = 'APP' then
    FTypeVar := 'TRUCK'
  else if substr(InvServFormField.Value,1,4) = 'HOSE' then
    FTypeVar := 'HOSE'
  else if substr(InvServFormField.Value,1,3) = 'INV' then
    FTypeVar := 'GEN'
  else if substr(InvServFormField.Value,1,3) = 'STA' then
    FTypeVar := 'STATION'
  else if substr(InvServFormField.Value,1,4) = 'SCBA' then
    FTypeVar := 'SCBA'
  else
    FTypeVar := '';
  InvSubTypeField.SqlExpr := 'SELECT * FROM INVSUBTYPE WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND TYPE = ' + AddExpr(FTypeVar) + ' ORDER BY CODE';
end;

procedure TInvInspTypeForm.LoadInvServTypeStatusBrowseBrowse;
Var RowNum     : Integer;
    CheckValue : Boolean;
begin
  InvServStatusBrowse.Clear;
  InvServStatusBrowse.ClearColumns;
  InvServStatusBrowse.ColCount       := 0;
  InvServStatusBrowse.RowCount       := 0;
  InvServStatusBrowse.FixedRowAlways := true;
  InvServStatusBrowse.RowCount       := InvServStatusBrowse.FixedRows;

  InvServStatusBrowse.SetColumn('INVSERVSTATUSID',    'INVSERVTYPESTATUSID',000);
  InvServStatusBrowse.SetColumn('CHECKBOX',           '',                   030);
  InvServStatusBrowse.SetColumn('CODE',               'Code',               080);
  InvServStatusBrowse.SetColumn('DESCR',              'Description',        6200);

  Open_Query('INVSERVSTATUS',false,'SELECT * FROM INVSERVSTATUS ORDER BY DESCR');

  RowNum       := 1;


  while not A('INVSERVSTATUS').Eof do begin
    CheckValue := At(AddExpr(GetField('INVSERVSTATUS','INVSERVSTATUSID').AsString),SQLStatField.Value) > 0;
    
    InvServStatusBrowse.SetValue('INVSERVSTATUSID',    GetField('INVSERVSTATUS','INVSERVSTATUSID' ).AsString);
    InvServStatusBrowse.AddCheckBox(1,RowNum,CheckValue,false);
    InvServStatusBrowse.SetValue('CODE',               tdbfield('INVSERVSTATUS','CODE'));
    InvServStatusBrowse.SetValue('DESCR',              tdbfield('INVSERVSTATUS','DESCR'));
    RowNum := RowNum + 1;
    A('INVSERVSTATUS').Skip(1);
  end;
  CloseApollo('INVSERVSTATUS');
end;

procedure TInvInspTypeForm.InvServStatusBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowNum     : Integer;
    SQLStat    : String;
    CheckValue : Boolean;
begin
  inherited;
  SQLStat := '';
  For RowNum := 0 to InvServStatusBrowse.RowCount do begin
    InvServStatusBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue and (AnyStrToInt(InvServStatusBrowse.GetValue('INVSERVSTATUSID',RowNum)) > 0) then
      SQLStat := SQLStat + ' OR (INVSERVSTATUS.INVSERVSTATUSID = ' + AddExpr(InvServStatusBrowse.GetValue('INVSERVSTATUSID',RowNum)) + ')';
  end;
  SQLStatField.value := alltrim(substr(SQLStat,4,10000));
  SaveButton.Enabled := true;
end;

end. 
