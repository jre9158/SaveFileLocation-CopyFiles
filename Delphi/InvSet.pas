unit InvSet;
 
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
  OvcBase, 
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AlpineLookup,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  FormFunc,applst,
  HtmlTreeList,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  Menus,
  AdvMenus,
  TreeSetup,
  htmltv,
  Gauges,
  AdvGroupBox,
  AdvObj,
  AlpinePanel;

type
  TInvSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    InvSetControl: TAdvPageControl;
    LocationTab: TAdvTabSheet;
    InvServTypeTab: TAdvTabSheet;
    GenTab: TAdvTabSheet;
    StaServTypeBrowse: TAlpineBlockBrowse;
    InvSubTypeTab: TAdvTabSheet;
    InvDisposalTab: TAdvTabSheet;
    InvDisposalBrowse: TAlpineBlockBrowse;
    InvDeprMethTab: TAdvTabSheet;
    InvDeprMethBrowse: TAlpineBlockBrowse;
    InvOwnerTab: TAdvTabSheet;
    InvOwnerBrowse: TAlpineBlockBrowse;
    InvServStatusTab: TAdvTabSheet;
    InvServStatusBrowse: TAlpineBlockBrowse;
    InvInspTab: TAdvTabSheet;
    InvServTypeBrowse: TAlpineBlockBrowse;
    InvInspTypeBrowse: TAlpineBlockBrowse;
    StaInspTypeBrowse: TAlpineBlockBrowse;
    InvServTypeStatusBrowse: TAlpineBlockBrowse;
    InvStatTab: TAdvTabSheet;
    InvStatBrowse: TAlpineBlockBrowse;
    InvLocTab: TAdvTabSheet;
    Gauge: TGauge;
    InvLocBrowse: TAlpineBlockBrowse;
    InvLocRefresh: TAlpineGlowButton;
    InvDescrBrowse: TAlpineBlockBrowse;
    InvManufactBrowse: TAlpineBlockBrowse;
    Panel0B: TAlpinePanel;
    Label39: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PersParentIDField: TAlpineLookup;
    LoadPersButton: TAlpineGlowButton;
    RolodexParentIDField: TAlpineLookup;
    RolodexButton: TAlpineGlowButton;
    AppParentIDField: TAlpineLookup;
    AppButton: TAlpineGlowButton;
    StationParentIDField: TAlpineLookup;
    StationButton: TAlpineGlowButton;
    InvDefaultButton: TAlpineGlowButton;
    InvDescrButton: TAlpineGlowButton;
    InvManufactButton: TAlpineGlowButton;
    Panel2: TPanel;
    InvSubTypeBrowse: TAlpineBlockBrowse;
    InvPartSubTypeBrowse: TAlpineBlockBrowse;
    FdidLocField: TAlpineLookup;
    Label4: TLabel;
    Label5: TLabel;
    InvNumPanel: TPanel;
    InvNumButton: TAlpineGlowButton;
    InvIDPadLField: TEdit;
    Label6: TLabel;
    InvIDAddField: TEdit;
    Label7: TLabel;
    BottomSplitter: TSplitter;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure InvSetControlChange(Sender: TObject);
    procedure InvServTypeTabShow(Sender: TObject);
    procedure InvSubTypeTabShow(Sender: TObject);
    procedure LoadPersButtonClick(Sender: TObject);
    procedure InvDisposalTabShow(Sender: TObject);
    procedure InvOwnerTabShow(Sender: TObject);
    procedure InvDeprMethTabShow(Sender: TObject);
    procedure LocationTabShow(Sender: TObject);
    procedure RolodexButtonClick(Sender: TObject);
    procedure AppButtonClick(Sender: TObject);
    procedure InvServStatusTabShow(Sender: TObject);
    procedure InvInspTabShow(Sender: TObject);
    procedure InvStatTabShow(Sender: TObject);
    procedure InvDefaultButtonClick(Sender: TObject);
    procedure InvLocTabShow(Sender: TObject);
    procedure InvLocRefreshClick(Sender: TObject);
    procedure StationButtonClick(Sender: TObject);
    procedure InvDescrButtonClick(Sender: TObject);
    procedure InvManufactButtonClick(Sender: TObject);
    procedure InvPartSubTypeNewRecord(DataSet: TDataSet);
    procedure FdidLocFieldEnter(Sender: TObject);
    procedure InvNumButtonClick(Sender: TObject);
  private
    FTreeSetupForm : TTreeSetupForm;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    class function GetFullDescr(mAlias, FDescr, FParentID: String) : String;
    procedure InvSubTypeNewRecord(DataSet: TDataSet);
    procedure InvDescrNewRecord(DataSet: TDataSet);
    procedure InvDisposalNewRecord(DataSet: TDataSet);
    procedure InvOwnerNewRecord(DataSet: TDataSet);
    procedure InvDeprMethNewRecord(DataSet: TDataSet);
    class function AppendRecordToInvLoc(TableName, FieldName, Code, Alias, Descr: String; ParentID: Integer; Fdid: String): String;
    procedure LoadPers;
    procedure LoadRolodex;
    procedure LoadApp;
    procedure LoadStation;
    procedure InvLocNewRecord(DataSet: TDataSet);
  end;

var
  InvSetForm: TInvSetForm;


implementation
uses GenFunc,
     InvLoc,
     CommonVar,
     InvServType,
     InvInspType,
     InvSubType,
     InvDescr,
     InvDisposal,
     InvDeprMeth,
     InvOwner,
     InvManufact,
     InvServStatus,
     InvServTypeStatus,
     InvStat,
     SecSet,
     CommonFunc;

{$R *.DFM}

class procedure TInvSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TInvSetForm.FdidLocFieldEnter(Sender: TObject);
begin
  inherited;
  FdidLocField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y');
end;

procedure TInvSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  PersParentIDField.SelfReferencingTree    := True;
  RolodexParentIDField.SelfReferencingTree := True;
  AppParentIDField.SelfReferencingTree     := True;
  StationParentIDField.SelfReferencingTree := True;

  InvDescrButton.Visible                   := AlpineLogin;
  PersParentIDField.Enabled                := AlpineLogin;
  RolodexParentIDField.Enabled             := AlpineLogin;
  AppParentIDField.Enabled                 := AlpineLogin;
  StationParentIDField.Enabled             := AlpineLogin;
  InvDefaultButton.Enabled                 := AlpineLogin;
  InvManufactButton.Enabled                := AlpineLogin;

  LoadPersButton.Enabled                   := AlpineLogin;
  RolodexButton .Enabled                   := AlpineLogin;
  AppButton     .Enabled                   := AlpineLogin;
  StationButton .Enabled                   := AlpineLogin;
  InvNumPanel.Visible                      := AlpineLogIn;

  InvSetControl.ActivePage                 := GenTab;

  InvLocTab.TabVisible                     := AlpineLogIn;
  InvPartSubTypeBrowse.Visible             := CheckModule('INVPM');
end;

procedure TInvSetForm.FormDestroy(Sender: TObject);
begin
  inherited;
  try
  except
  end;
end;

procedure TInvSetForm.CloseButtonClick(Sender: TObject);
begin
  inherited;
  Close;
end;

class function TInvSetForm.GetFullDescr(mAlias, FDescr, FParentID: String) : String;
Var Descr      : String;
    InvLocList : TStringList;
    LocNum     : Integer;
    ParentID   : String;
begin
  InvLocList := TStringList.Create;

  InvLocList.Add(FDescr);
  A(mAlias).UpdateSQL('SELECT PARENTID, DESCR FROM INVLOC WHERE INVLOCID = ' + pkValue(FParentID));
  While A(mAlias).RecordsExist do begin
    InvLocList.Add(tdbfield(mAlias,'DESCR'));
    ParentID := GetField(mAlias,'PARENTID').AsString;
    A(mAlias).UpdateSQL('SELECT PARENTID, DESCR FROM INVLOC WHERE INVLOCID = ' + pkValue(ParentID));
  end;

  Descr := '';
  For LocNum := InvLocList.Count-1 downto 0 do begin
    Descr := Descr + '->' + InvLocList[LocNum];
  end;
  InvLocList.Free;

  GetFullDescr := substr(Descr,3,500);
end;

procedure TInvSetForm.InvSetControlChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := InvSetControl.ActivePage = GenTab;
end;

procedure TInvSetForm.InvServTypeTabShow(Sender: TObject);
begin
  inherited;
  InvServTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('INVSERV');
  InvServTypeBrowse.Setup('INVSERVTYPE',TInvServTypeForm,TInvServTypeForm.NewRecord);

  StaServTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('STASERV');
  StaServTypeBrowse.Setup('INVSERVTYPE',TInvServTypeForm,TInvServTypeForm.StaNewRecord);
end;

procedure TInvSetForm.InvSubTypeTabShow(Sender: TObject);
begin
  inherited;
  InvSubTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND INVSUBTYPE.TYPE = ' + AddExpr('GEN');
  InvSubTypeBrowse.Setup('INVSUBTYPE',TInvSubTypeForm,InvSubTypeNewRecord);

  InvDescrBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVDESCR.FDID') + ' AND INVDESCR.TYPE = ' + AddExpr('GEN');
  InvDescrBrowse.Setup('INVDESCR',TInvDescrForm,InvDescrNewRecord);

  InvPartSubTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND INVSUBTYPE.TYPE = ' + AddExpr('INVPART');
  InvPartSubTypeBrowse.Setup('INVSUBTYPE',TInvSubTypeForm,InvPartSubTypeNewRecord);

  InvDescrButton.Parent    := InvDescrBrowse.FButtonPanel;
  InvDescrButton.Align     := alleft;
end;

procedure TInvSetForm.InvSubTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'GEN';
end;

procedure TInvSetForm.InvPartSubTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'INVPART';
end;

procedure TInvSetForm.InvDescrButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Load all Descriptions into table for all General Inventory?') then begin
    Open_Query('INV',false,'SELECT INVSUBTYPEID, DESCR FROM INV WHERE TYPE = ' + AddExpr('GEN') + ' ORDER BY DESCR');
    Open_Query('INVDESCR',true,'SELECT * FROM INVDESCR WHERE 1=2');
    Gauge.MaxValue := A('INV').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('INV').Eof do begin
      If Not (tdbfield('INV','DESCR') = '') then begin
        A('INVDESCR').UpdateSQL('SELECT * FROM INVDESCR WHERE DESCR = ' + edbfield('INV','DESCR'));
        If A('INVDESCR').RecordsExist then
          A('INVDESCR').Edit
        else
          A('INVDESCR').Append;
        GetField('INVDESCR','TYPE').AsString         := 'GEN';
        GetField('INVDESCR','DESCR').AsString        := tdbfield('INV','DESCR');
        GetField('INVDESCR','INVSUBTYPEID').AsString := GetField('INV','INVSUBTYPEID').AsString;
        A('INVDESCR').Post;
      end;

      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('INV').Skip(1);
    end;
    CloseApollo('INVDESCR');
    CloseApollo('INV');
    InvDescrBrowse.ExplicitWhereClause := ' WHERE INVDESCR.TYPE = ' + AddExpr('GEN');
    InvDescrBrowse.Setup('INVDESCR',TInvDescrForm,InvDescrNewRecord);

    ShowMessage('Done');
  end;
end;

procedure TInvSetForm.InvDescrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'GEN';
end;


procedure TInvSetForm.InvStatTabShow(Sender: TObject);
begin
  inherited;
  InvStatBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSTAT.FDID');
  InvStatBrowse.Setup('INVSTAT',TInvStatForm,InvDisposalNewRecord);
end;

procedure TInvSetForm.InvServStatusTabShow(Sender: TObject);
begin
  inherited;
  InvServStatusBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVSTATUS.FDID');
  InvServStatusBrowse.Setup('INVSERVSTATUS',TInvServStatusForm,InvDeprMethNewRecord);

  InvServTypeStatusBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPESTATUS.FDID');
  InvServTypeStatusBrowse.Setup('INVSERVTYPESTATUS',TInvServTypeStatusForm,InvDeprMethNewRecord);
end;

procedure TInvSetForm.InvDeprMethNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;


procedure TInvSetForm.InvInspTabShow(Sender: TObject);
begin
  inherited;
  InvInspTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('INVINSP');
  InvInspTypeBrowse.Setup('INVINSPTYPE',TInvInspTypeForm,TInvInspTypeForm.InvNewRecord);

  StaInspTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('STAINSP');
  StaInspTypeBrowse.Setup('INVINSPTYPE',TInvInspTypeForm,TInvInspTypeForm.StaNewRecord);
end;

procedure TInvSetForm.InvDisposalTabShow(Sender: TObject);
begin
  inherited;
  InvDisposalBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVDISPOSAL.FDID');
  InvDisposalBrowse.Setup('INVDISPOSAL',TInvDisposalForm,InvDisposalNewRecord);
end;

procedure TInvSetForm.InvDisposalNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TInvSetForm.InvOwnerTabShow(Sender: TObject);
begin
  inherited;
  InvOwnerBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVOWNER.FDID');
  InvOwnerBrowse.Setup('INVOWNER',TInvOwnerForm,InvOwnerNewRecord);

  InvManufactBrowse.Setup('INVMANUFACT',TInvManufactForm,InvOwnerNewRecord);
  InvManufactButton.Parent := InvManufactBrowse.FButtonPanel;
  InvManufactButton.Align  := alleft;
end;

procedure TInvSetForm.InvOwnerNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TInvSetForm.InvDeprMethTabShow(Sender: TObject);
begin
  inherited;
  InvDeprMethBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVDEPRMETH.FDID');
  InvDeprMethBrowse.Setup('INVDEPRMETH',TInvDeprMethForm,InvDeprMethNewRecord);
end;


procedure TInvSetForm.LoadPersButtonClick(Sender: TObject);
begin
  LoadPersButton.Enabled := false;
  LoadPers;
  LoadPersButton.Enabled := true;
end;

procedure TInvSetForm.LoadPers;
var FullDescr : String;
begin
  inherited;
  If (AnyStrToInt(PersParentIDField.Value) = 0) then begin
    ShowMessage('You must specify a parent inventory node!');
    exit;
  end;
  FullDescr := alltrim(SQLLookUp(PersParentIDField.Value,'INVLOCID','INVLOC','FULLDESCR'));
  If BooleanMessageDlg('Load in all active personnel into the location table as children of the ' + FullDescr + '?') then begin

    Open_Query('PERS',false,'SELECT * FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y'));
//  Open_Query('PERS',false,'SELECT * FROM PERS WHERE ' + GetFdidSQL('PERS.FDID'));
    Gauge.MaxValue := A('PERS').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('PERS').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      if mFireID = '10700' then
        AppendRecordToInvLoc('PERS', 'PERSID', tdbfield('PERS','PERSCODE'), 'PERS', tdbfield('PERS','LNAME') + ', ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','MNAME') + ' (' + tdbfield('PERS','FDID') +')', AnyStrToInt(PersParentIDField.Value), tdbfield('PERS','FDID'))
      else
        AppendRecordToInvLoc('PERS', 'PERSID', tdbfield('PERS','PERSCODE'), 'PERS', tdbfield('PERS','LNAME') + ', ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','MNAME'), AnyStrToInt(PersParentIDField.Value), tdbfield('PERS','FDID'));
      A('PERS').Skip(1);
    end;

    CloseApollo('PERS');
    Gauge.Visible  := false;
    ShowMessage('All finished');
  end;
end;

procedure TInvSetForm.AppButtonClick(Sender: TObject);
begin
  inherited;
  AppButton.Enabled := false;
  LoadApp;
  AppButton.Enabled := true;
end;

procedure TInvSetForm.LoadApp;
var FullDescr : String;
begin
  inherited;
  If (AnyStrToInt(AppParentIDField.Value) = 0) then begin
    ShowMessage('You must specify a parent inventory node!');
    exit;
  end;
  FullDescr := alltrim(SQLLookUp(AppParentIDField.Value,'INVLOCID','INVLOC','FULLDESCR'));
  If BooleanMessageDlg('Load in all apparatus found in inventory into the location table as children of the ' + FullDescr + '?') then begin
    Open_Query('INV',false,'SELECT * FROM INV WHERE ' + GetFdidSQL('INV.FDID') + ' AND INCLUDE = ' + AddExpr('Y') + ' AND TYPE = ' + AddExpr('TRUCK'));
    Gauge.MaxValue := A('INV').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('INV').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      AppendRecordToInvLoc('INV', 'INVID', tdbfield('INV','UNITNUM'), 'INV', tdbfield('INV','UNITNUM') + ' ' + tdbfield('INV','DESCR') , AnyStrToInt(AppParentIDField.Value), tdbfield('INV','FDID'));
      A('INV').Skip(1);
    end;
    CloseApollo('INV');
    Gauge.Visible  := false;
    ShowMessage('All finished');
  end;
end;

procedure TInvSetForm.RolodexButtonClick(Sender: TObject);
begin
  inherited;
  RolodexButton.Enabled := false;
  LoadRolodex;
  RolodexButton.Enabled := true;
end;

procedure TInvSetForm.LoadRolodex;
var FullDescr : String;
    InvLocID  : String;
begin
  inherited;
  If (AnyStrToInt(RolodexParentIDField.Value) = 0) then begin
    ShowMessage('You must specify a parent inventory node!');
    exit;
  end;
  FullDescr := alltrim(SQLLookUp(RolodexParentIDField.Value,'INVLOCID','INVLOC','FULLDESCR'));
  If BooleanMessageDlg('Load in all vendors found in Rolodex into the location table as children of the ' + FullDescr + '?') then begin

    Open_Query('ROLODEX',false,'SELECT * FROM ROLODEX WHERE INVENTORY = ' + AddExpr('Y'));
    Gauge.MaxValue := A('ROLODEX').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('ROLODEX').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      InvLocID := AppendRecordToInvLoc('ROLODEX', 'ROLODEXID', '', 'ROLODEX', tdbfield('ROLODEX','COMPANY'), AnyStrToInt(RolodexParentIDField.Value),'');

      Open_Query('INVLOC',false,'SELECT PARENTID, DESCR FROM INVLOC WHERE 1=2');
      FullDescr := TInvSetForm.GetFullDescr('INVLOC',tdbfield('ROLODEX','COMPANY'),RolodexParentIDField.Value);
      CloseApollo('INVLOC');
      RunSQL('UPDATE INVLOC SET FULLDESCR = ' + AddExpr(FullDescr) + ' WHERE INVLOCID = ' + InvLocID);

      A('ROLODEX').Skip(1);
    end;

    CloseApollo('ROLODEX');
    Gauge.Visible  := false;
    ShowMessage('All finished');
  end;
end;

procedure TInvSetForm.LoadStation;
var FullDescr : String;
begin
  inherited;
  If (AnyStrToInt(StationParentIDField.Value) = 0) then begin
    ShowMessage('You must specify a parent inventory node!');
    exit;
  end;
  FullDescr := alltrim(SQLLookUp(StationParentIDField.Value,'INVLOCID','INVLOC','FULLDESCR'));
  If BooleanMessageDlg('Load in all stations found in inventory into the location table as children of the ' + FullDescr + '?') then begin
    Open_Query('INV',false,'SELECT * FROM INV WHERE ' + GetFdidSQL('INV.FDID') + ' AND TYPE = ' + AddExpr('STATION'));
    Gauge.MaxValue := A('INV').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('INV').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      AppendRecordToInvLoc('INV', 'INVID', tdbfield('INV','INVNUM'), 'INV', tdbfield('INV','INVNUM') + ' ' + tdbfield('INV','DESCR') , AnyStrToInt(StationParentIDField.Value), tdbfield('INV','FDID'));
      A('INV').Skip(1);
    end;
    CloseApollo('INV');
    Gauge.Visible  := false;
    ShowMessage('All finished');
  end;
end;
//AppendRecordToInvLoc('INV', 'INVID', tdbfield('INV','UNITNUM'), 'INV', tdbfield('INV','UNITNUM') + ' ' + tdbfield('INV','DESCR') , AnyStrToInt(AppParentIDField.Value), tdbfield('INV','FDID'));

class function TInvSetForm.AppendRecordToInvLoc(TableName, FieldName, Code, Alias, Descr: String; ParentID: Integer; Fdid: String): String;
var InvLocID  : String;
    FullDescr : String;
begin
  InvLocID := '';
  If (TableName='INV') then
    Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE INVLOCID = ' + pkValue(GetField(Alias,'APPINVLOCID').AsString))
  else
    Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE INVLOCID = ' + pkValue(GetField(Alias,'INVLOCID').AsString));
    
  If Not A('INVLOC').RecordsExist then begin
    GetTable('INVLOC').Append;
    If ParentID > 0 then
      GetField('INVLOC','PARENTID').AsInteger := ParentID;

    GetField('INVLOC','DESCR').AsString     := Descr;
    FullDescr                               := alltrim(SQLLookUp(ParentID,'INVLOCID','INVLOC','FULLDESCR'));
    GetField('INVLOC','FULLDESCR').AsString := FullDescr+'->'+Descr;
    GetField('INVLOC','MAINCODE').AsString  := Code;
    GetField('INVLOC','BARCODE').AsString   := Code;
    GetField('INVLOC','FDID').AsString      := Fdid;

    GetTable('INVLOC').Post;
    InvLocID := A('INVLOC').NewPK;
    If (TableName = 'PERS') or (TableName = 'ROLODEX') then
      RunSQL('UPDATE ' + TableName + ' SET INVLOCID = ' + InvLocID + ' WHERE ' + FieldName + ' = ' + GetField(Alias,FieldName).AsString);
    If (TableName='INV') then
      RunSQL('UPDATE ' + TableName + ' SET APPINVLOCID = ' + InvLocID + ' WHERE ' + FieldName + ' = ' + GetField(Alias,FieldName).AsString);
  end;
  CloseApollo('INVLOC');
  AppendRecordToInvLoc := InvLocID;
end;


procedure TInvSetForm.InvDefaultButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE 1=2');

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('PERS'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Personnel';
  GetField('INVLOC','FDID').AsString      := FdidLocField.Value;
  GetField('INVLOC','MAINCODE').AsString  := 'PERS';
  GetField('INVLOC','FULLDESCR').AsString := 'Personnel';
  A('INVLOC').Post;
  PersParentIDField.Value := GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('APP'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Apparatus';
  GetField('INVLOC','FDID').AsString      := FdidLocField.Value;
  GetField('INVLOC','MAINCODE').AsString  := 'APP';
  GetField('INVLOC','FULLDESCR').AsString := 'Apparatus';
  A('INVLOC').Post;
  AppParentIDField.Value := GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('VEND'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Vendors';
  GetField('INVLOC','FDID').AsString      := FdidLocField.Value;
  GetField('INVLOC','MAINCODE').AsString  := 'VEND';
  GetField('INVLOC','FULLDESCR').AsString := 'Vendors';
  A('INVLOC').Post;
  RolodexParentIDField.Value := GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('FS'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Fire Stations';
  GetField('INVLOC','FDID').AsString      := FdidLocField.Value;
  GetField('INVLOC','MAINCODE').AsString  := 'FS';
  GetField('INVLOC','FULLDESCR').AsString := 'Fire Stations';
  A('INVLOC').Post;
  StationParentIDField.Value := GetField('INVLOC','INVLOCID').AsString;

  CloseApollo('INVLOC');
end;


procedure TInvSetForm.LocationTabShow(Sender: TObject);
begin
  inherited;
  If FTreeSetupForm = nil then begin
    FTreeSetupForm             := TTreeSetupForm.Create(self);
    FTreeSetupForm.Parent      := LocationTab;
    FTreeSetupForm.WindowState := wsMaximized;
    FTreeSetupForm.Align       := AlClient;
    FTreeSetupForm.Show;
  end;
end;



procedure TInvSetForm.StationButtonClick(Sender: TObject);
begin
  inherited;
  StationButton.Enabled := false;
  LoadStation;
  StationButton.Enabled := true;
end;

procedure TInvSetForm.InvLocRefreshClick(Sender: TObject);
Var InvCnt : Integer;
    SQLVar : String;
begin
  Open_Query('INVLOC',true,'SELECT * FROM INVLOC ORDER BY MAINCODE');

  Gauge.MaxValue := A('INVLOC').RecordCount;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  while not A('INVLOC').Eof do begin
    SQLVar   := 'SELECT COUNT(*) FROM INV WHERE INVLOCID = ' + GetField('INVLOC','INVLOCID').AsString;
    InvCnt := SqlTableRecCount(SQLVar);

    GetTable('INVLOC').Edit;
    GetField('INVLOC','INVCOUNT').AsInteger := InvCnt;
    GetTable('INVLOC').Post;

    A('INVLOC').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

  end;
  Gauge.Visible  := false;
  CloseApollo('INVLOC');
  InvLocBrowse.Setup('INVLOC',TInvLocForm,InvLocNewRecord);
end;

procedure TInvSetForm.InvLocTabShow(Sender: TObject);
begin
  inherited;
  InvLocBrowse.Setup('INVLOC',TInvLocForm,InvLocNewRecord);
  InvLocRefresh.Parent := InvLocBrowse.FButtonPanel;
  InvLocRefresh.Align  := alleft;
end;

procedure TInvSetForm.InvManufactButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Load all Manufacturers into table for all Inventory?') then begin
    Open_Query('INV',false,'SELECT MANUFACT FROM INV');
    Open_Query('INVMANUFACT',true,'SELECT * FROM INVMANUFACT WHERE 1=2');
    Gauge.MaxValue := A('INV').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('INV').Eof do begin
      If Not (tdbfield('INV','MANUFACT') = '') then begin
        A('INVMANUFACT').UpdateSQL('SELECT * FROM INVMANUFACT WHERE DESCR = ' + edbfield('INV','MANUFACT'));
        If A('INVMANUFACT').RecordsExist then
          A('INVMANUFACT').Edit
        else
          A('INVMANUFACT').Append;
        GetField('INVMANUFACT','DESCR').AsString := tdbfield('INV','MANUFACT');
        A('INVMANUFACT').Post;
      end;

      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('INV').Skip(1);
    end;
    CloseApollo('INVMANUFACT');
    CloseApollo('INV');
    InvManufactBrowse.Setup('INVMANUFACT',TInvOwnerForm,InvOwnerNewRecord);
    ShowMessage('Done');
  end;
end;

procedure TInvSetForm.InvNumButtonClick(Sender: TObject);
Var InvNum : String;
begin
  inherited;
  If BooleanMessageDlg('Procedure with Inventory Clean Up?') then begin
    Open_Query('INV',true,'SELECT * FROM INV ORDER BY INVID');

    Gauge.MaxValue := A('INV').RecordCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;

    While Not A('INV').Eof do begin
      If tdbfield('INV','TYPE') = 'GEN' then begin
        InvNum := padl(IntToStr(GetField('INV','INVID').AsInteger + AnyStrToInt(InvIDAddField.Text)),AnyStrToInt(InvIDPadLField.Text),'0');
//      ShowMessage(GetField('INV','INVID').AsString + ' ' + InvNum);
        GetTable('INV').Edit;
        Getfield('INV','INVNUM').AsString := InvNum;
        GetTable('INV').Post;
      end;

      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('INV').Skip(1);
    end;
    CloseApollo('INV');
    ShowMessage('Done');
  end;
end;

procedure TInvSetForm.InvLocNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

end.  
