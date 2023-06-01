unit InvServTypeItem;

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
  AlpineMemo,
  AlpinePanel,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvGroupBox;

type
  TInvServTypeItemForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    DescrField: TAlpineEdit;
    SortOrdField: TAlpineEdit;
    ShortDescrField: TAlpineEdit;
    Panel0B: TAlpinePanel;
    InvServTypeStatusBrowse: TAlpineTMSStringGrid;
    SQLStatField: TAlpineMemo;
    Label1: TLabel;
    InvServTypeStatusIDField: TAlpineLookup;
    Label5: TLabel;
    Label6: TLabel;
    WOInvServTypeStatusIDLabel: TLabel;
    WOInvServTypeStatusIDDescr: TLabel;
    WOInvServTypeStatusIDField: TAlpineLookup;
    procedure FormShow(Sender: TObject);
    procedure InvServTypeStatusBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure InvServTypeStatusIDFieldEnter(Sender: TObject);
    procedure WOInvServTypeStatusIDFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LoadInvServTypeStatusBrowseBrowse;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  InvServTypeItemForm: TInvServTypeItemForm;

implementation
uses GenFunc,
     CommonFunc,
     Main;

{$R *.DFM}
{$I rednmx.inc}

class procedure TInvServTypeItemForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TInvServTypeItemForm.WOInvServTypeStatusIDFieldEnter(Sender: TObject);
begin
  inherited;
  If Not (SQLStatField.Value = '') then
    WOInvServTypeStatusIDField.SQLExpr := 'SELECT * FROM INVSERVTYPESTATUS WHERE ' + SQLStatField.Value;
end;

procedure TInvServTypeItemForm.FormShow(Sender: TObject);
begin
  inherited;
  LoadInvServTypeStatusBrowseBrowse;
  InvServTypeStatusIDField.LookupFormWidth   := 320;
  WOInvServTypeStatusIDField.LookupFormWidth := 320;
  WOInvServTypeStatusIDLabel.Visible         := AlpineLogIn;
  WOInvServTypeStatusIDField.Visible         := AlpineLogIn;
  WOInvServTypeStatusIDDescr.Visible         := AlpineLogIn;
end;

procedure TInvServTypeItemForm.InvServTypeStatusBrowseCheckBoxClick( Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowNum     : Integer;
    SQLStat    : String;
    CheckValue : Boolean;
begin
  inherited;
  SQLStat := '';
  For RowNum := 0 to InvServTypeStatusBrowse.RowCount do begin
    InvServTypeStatusBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue and (AnyStrToInt(InvServTypeStatusBrowse.GetValue('INVSERVTYPESTATUSID',RowNum)) > 0) then
      SQLStat := SQLStat + ' OR (INVSERVTYPESTATUS.INVSERVTYPESTATUSID = ' + AddExpr(InvServTypeStatusBrowse.GetValue('INVSERVTYPESTATUSID',RowNum)) + ')';
  end;
  SQLStatField.value := alltrim(substr(SQLStat,4,10000));
  SaveButton.Enabled := true;
end;

procedure TInvServTypeItemForm.InvServTypeStatusIDFieldEnter(Sender: TObject);
begin
  inherited;
  If Not (SQLStatField.Value = '') then
    InvServTypeStatusIDField.SQLExpr := 'SELECT * FROM INVSERVTYPESTATUS WHERE ' + SQLStatField.Value;
end;

procedure TInvServTypeItemForm.LoadInvServTypeStatusBrowseBrowse;
Var RowNum     : Integer;
    CheckValue : Boolean;
begin
  InvServTypeStatusBrowse.Clear;
  InvServTypeStatusBrowse.ClearColumns;
  InvServTypeStatusBrowse.ColCount       := 0;
  InvServTypeStatusBrowse.RowCount       := 0;
  InvServTypeStatusBrowse.FixedRowAlways := true;
  InvServTypeStatusBrowse.RowCount       := InvServTypeStatusBrowse.FixedRows;

  InvServTypeStatusBrowse.SetColumn('INVSERVTYPESTATUSID',   'INVSERVTYPESTATUSID',000);
  InvServTypeStatusBrowse.SetColumn('CHECKBOX',           '',                      030);
  InvServTypeStatusBrowse.SetColumn('CODE',               'Code',                  080);
  InvServTypeStatusBrowse.SetColumn('DESCR',              'Description',           200);
  InvServTypeStatusBrowse.SetColumn('SORTORD',            'Sort',                  080);
  InvServTypeStatusBrowse.SetColumn('OPENSTAT',           'Open?',                 080);
  InvServTypeStatusBrowse.SetColumn('COLOR',              'Report Color',          300);

  Open_Query('INVSERVTYPESTATUS',false,'SELECT * FROM INVSERVTYPESTATUS ORDER BY CODE');

  RowNum       := 1;

  while not A('INVSERVTYPESTATUS').Eof do begin
    CheckValue := At(AddExpr(GetField('INVSERVTYPESTATUS','INVSERVTYPESTATUSID').AsString),SQLStatField.Value) > 0;
    InvServTypeStatusBrowse.SetValue('INVSERVTYPESTATUSID',GetField('INVSERVTYPESTATUS','INVSERVTYPESTATUSID' ).AsString);
    InvServTypeStatusBrowse.AddCheckBox(1,RowNum,CheckValue,false);
    InvServTypeStatusBrowse.SetValue('CODE',               tdbfield('INVSERVTYPESTATUS','CODE'));
    InvServTypeStatusBrowse.SetValue('DESCR',              tdbfield('INVSERVTYPESTATUS','DESCR'));
    InvServTypeStatusBrowse.SetValue('SORTORD',            tdbfield('INVSERVTYPESTATUS','SORTORD'));
    InvServTypeStatusBrowse.SetValue('OPENSTAT',           tdbfield('INVSERVTYPESTATUS','OPENSTAT'));
    InvServTypeStatusBrowse.SetValue('COLOR',              tdbfield('INVSERVTYPESTATUS','COLOR'));
    RowNum := RowNum + 1;
    A('INVSERVTYPESTATUS').Skip(1);
  end;
  CloseApollo('INVSERVTYPESTATUS');
end;
 
end. 
