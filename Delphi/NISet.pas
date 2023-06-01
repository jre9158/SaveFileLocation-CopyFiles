unit NISet;

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
  StdCtrls,
  ComCtrls,
  DbTables,
  db,
  Buttons,
  ExtCtrls,
  BaseGrid,
  AlpineBase,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvToolBar,
  AdvPanel,
  ImgList,
  AlpineBlockBrowse,
  Grids,
  cusbtn,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPageControl,
  AdvObj,
  OvcBase,
  AdvGroupBox,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  htmlbtns,
  alpinecheck,
  Gauges,
  AlpineDateTime;

type
  TNISetForm = class(TAlpineBaseForm)
    NIPage: TPageControl;
    TypeTab: TTabSheet;
    TableTab: TTabSheet;
    LargeIcons: TImageList;
    FieldTab: TTabSheet;
    NISTypeBrowse: TAlpineBlockBrowse;
    NIPTypeBrowse: TAlpineBlockBrowse;
    FdidPanel: TAdvPanel;
    FDIDBrowse: TAlpineTMSStringGrid;
    SubTableBrowse: TAlpineBlockBrowse;
    AdvPanel2: TAdvPanel;
    TableBrowse: TAlpineTMSStringGrid;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    AdvPanel1: TAdvPanel;
    NIFieldListBrowse: TAlpineTMSStringGrid;
    AdvPanel3: TAdvPanel;
    FieldPTypeGrid: TAlpineTMSStringGrid;
    AdvPanel4: TAdvPanel;
    FieldToggleButton: TAlpineGlowButton;
    FieldEditButton: TAlpineGlowButton;
    PrintButton: TAlpineGlowButton;
    TrainCat1Tab: TTabSheet;
    NITrainCATControl: TAdvPageControl;
    NITrainCAT1Tab: TAdvTabSheet;
    NITrainCatReqTab: TAdvTabSheet;
    NITrainCATReqSetTab: TAdvTabSheet;
    NITrainCat1Browse: TAlpineBlockBrowse;
    NITrainCatReqBrowse: TAlpineBlockBrowse;
    Label1: TLabel;
    NITrainCATTypeTab: TAdvTabSheet;
    NITrainRepBrowse: TAlpineBlockBrowse;
    ASCTab: TTabSheet;
    ASCNISTypeBrowse: TAlpineTMSStringGrid;
    Panel1: TPanel;
    DeleteNISTYPEButton: TAlpineGlowButton;
    RefreshButton: TAlpineGlowButton;
    EditNISTypeButton: TAlpineGlowButton;
    UpdateButton: TAlpineGlowButton;
    OvcController1: TOvcController;
    Label11: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    OldButton: TAlpineGlowButton;
    StandardButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    NITrainCATReqSetBrowse: TAlpineTMSStringGrid;
    DeleteNIPTypeButton: TAlpineGlowButton;
    OldNIPTypeIDField: TAlpineLookup;
    NewNIPTypeIDField: TAlpineLookup;
    OldNISTypeIDField: TAlpineLookup;
    NewNISTypeIDField: TAlpineLookup;
    EditNIPTypeButton: TAlpineGlowButton;
    LoadNITrainCat1Field: TAlpineCheckBox;
    LoadNITrainCat1Label: TLabel;
    Gauge: TGauge;
    InitialDateField: TAlpineDateTime;
    FinalDateField: TAlpineDateTime;
    Label3: TLabel;
    Splitter2: TSplitter;
    SearchButton: TAlpineGlowButton;
    NITrainCatTypeBrowse: TAlpineBlockBrowse;
    procedure FormCreate(Sender: TObject);
    procedure NIPTypeBrowseClick(Sender: TObject);
    procedure NIPTypeBrowseGridClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FieldTabShow(Sender: TObject);
    procedure FieldToggleButtonClick(Sender: TObject);
    procedure FDIDBrowseClick(Sender: TObject);
    procedure SubTableNewRecord(DataSet: TDataset);
    procedure TableBrowseClick(Sender: TObject);
    procedure TableTabShow(Sender: TObject);
    procedure FieldPTypeGridClick(Sender: TObject);
    procedure NIFieldListBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FieldEditButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
    procedure NIFieldListBrowseClick(Sender: TObject);
    procedure TrainCat1TabShow(Sender: TObject);
    procedure NITrainCatReqTabShow(Sender: TObject);
    procedure NITrainCATReqSetTabShow(Sender: TObject);
    procedure NITrainCATReqSetBrowseDblClick(Sender: TObject);
    procedure NITrainCATReqSetBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NITrainCATTypeTabShow(Sender: TObject);
    procedure NITrainCAT1TabShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ASCTabShow(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure EditNISTypeButtonClick(Sender: TObject);
    procedure DeleteNISTYPEButtonClick(Sender: TObject);
    procedure StandardButtonClick(Sender: TObject);
    procedure NISTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure NIPTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure FormShow(Sender: TObject);
    procedure DeleteNIPTypeButtonClick(Sender: TObject);
    procedure EditNIPTypeButtonClick(Sender: TObject);
    procedure ASCNISTypeBrowseDblClick(Sender: TObject);
    procedure OldButtonClick(Sender: TObject);
    procedure TypeTabShow(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
  private
    { Private declarations }
    browseObject : TBrowseObject;
    procedure LoadFdidBrowse;
    procedure LoadNIPType;
    procedure LoadNISType;
    procedure NIPTypeNewRecord(DataSet: TDataSet);
    procedure NISTypeNewRecord(DataSet: TDataSet);
    procedure LoadSubTable;
    procedure LoadNIFieldListBrowse;
    procedure NITrainCatReqNewRecord(DataSet: TDataset);
    procedure NITrainCATFormNewRecord(DataSet: TDataset);
    procedure NITrainCatTypeNewRecord(DataSet: TDataSet);
    procedure NITrainRepNewRecord(DataSet: TDataSet);
    
    procedure RefreshNISTypeBrowse;
    procedure NISTypeFormNewRecord(DataSet: TDataSet);
    function GetFdid: String;
  public
    { Public declarations }
    class procedure LoadNIFieldList(NIPTypeID: String);
  end;

var
  NISetForm: TNISetForm;

implementation
uses GenFunc,
     NIPType,
     NITrainRep,
     CodeDescr,
     NITrainCAT,
     NITrainCATReq,
     NIField,
     NISType,
     NISetRep,
     NITrainCATType,
     CommonVar,
     SecSet,
     SortGridView,
     NormalBase,
     FormFunc,
     CommonFunc;

{$R *.DFM}


procedure TNISetForm.FormCreate(Sender: TObject);
begin
  BrowseObject                   := TBrowseObject.Create;
  BrowseObject.Instance          := TCodeDescrForm;
  BrowseObject.NewRecordFunction := SubTableNewRecord;

  BrowseObject.AddField('FDID',   'FDID',   '','Agency',     IIf(MultiFdid,75,0));
  BrowseObject.AddField('CODE',   'CODE',   '','Code',       100);
  BrowseObject.AddField('DESCR',  'DESCR',  '','Description',200);

  FdidPanel.Visible      := MultiFdid and (secFdid = '');

  FdidBrowse.SetColumn('FDID','ID',45);
  FdidBrowse.SetColumn('DEPTNAME','Agency',350);

  TableBrowse.SetColumn('TABLECODE','Table Code',1);
  TableBrowse.SetColumn('TABLENAME','Table Name',300);
  
  TableBrowse.SetValue('TABLECODE','LOCATION');
  TableBrowse.SetValue('TABLENAME','Locations');
  TableBrowse.SetValue('TABLECODE','NILOSAPCAT');
  TableBrowse.SetValue('TABLENAME','Service Awards Types');

  TableBrowse.SetValue('TABLECODE','NITRAINCAT2');
  TableBrowse.SetValue('TABLENAME','Training Category 2');
  TableBrowse.SetValue('TABLECODE','NITRAINCAT3');
  TableBrowse.SetValue('TABLENAME','Training Category 3');

  TableBrowse.SetValue('TABLECODE','NIUSER1');
  TableBrowse.SetValue('TABLENAME','User Defined Field 1');
  TableBrowse.SetValue('TABLECODE','NIUSER2');
  TableBrowse.SetValue('TABLENAME','User Defined Field 2');
  TableBrowse.SetValue('TABLECODE','NIUSER3');
  TableBrowse.SetValue('TABLENAME','User Defined Field 3');
  TableBrowse.SetValue('TABLECODE','NIUSER4');
  TableBrowse.SetValue('TABLENAME','User Defined Field 4');
  TableBrowse.SetValue('TABLECODE','NIUSER5');
  TableBrowse.SetValue('TABLENAME','User Defined Field 5');
  TableBrowse.SetValue('TABLECODE','NIUSER6');
  TableBrowse.SetValue('TABLENAME','User Defined Field 6');
  TableBrowse.SetValue('TABLECODE','NIAGENCY');
  TableBrowse.SetValue('TABLENAME','Agencies');
  TableBrowse.SetValue('TABLECODE','NIPERSINVTYPE');
  TableBrowse.SetValue('TABLENAME','Persons Involved Type');
  TableBrowse.SetValue('TABLECODE','NIAPPTASK');
  TableBrowse.SetValue('TABLENAME','Apparatus Usage Codes');

  NIPage.ActivePage := TypeTab;
  If MultiFdid then
    LoadFdidBrowse;

  ASCTab.TabVisible      := AlpineLogIn;
  StandardButton.Visible := AlpineLogIn;
end;

procedure TNISetForm.FormDestroy(Sender: TObject);
begin
  BrowseObject.Free;
end;

procedure TNISetForm.FormShow(Sender: TObject);
begin
  NIPTypeBrowse.FixedRowHeight             := 20;
  NISTypeBrowse.FixedRowHeight             := 20;
  SubTableBrowse.FixedRowHeight            := 20;
end;

procedure TNISetForm.LoadFdidBrowse;
begin
  FDIDBrowse.RowCount := FDIDBRowse.FixedRows;
  Open_Query('FDID',false,'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y'));
  While Not A('FDID').Eof do begin
    FDIDBrowse.SetValue('FDID',    tdbfield('FDID','FDID'));
    FDIDBrowse.SetValue('DEPTNAME',tdbfield('FDID','DEPTNAME'));
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');
end;

function TNISetForm.GetFdid: String;
begin
  If MultiFdid then begin
    If secFdid = '' then
      GetFdid := FdidBrowse.GetValue('FDID')
    else
      GetFdid := secFdid;
  end else
    GetFdid := mFireID;
end;

procedure TNISetForm.LoadNIPType;
begin
  NIPTypeBrowse.ExplicitWhereClause := ' WHERE (NIPTYPE.FDID = ' + AddExpr(GetFdid) + ' OR NIPTYPE.FDID = ' + AddExpr('') + ' OR NIPTYPE.FDID IS NULL)';
  NIPTypeBrowse.Setup('NIPTYPE',TNIPTypeForm,NIPTypeNewRecord);
  LoadNISType;
end;

procedure TNISetForm.NIPTypeNewRecord(DataSet: TDataset);
begin
  DataSet.FieldbyName('FDID').AsString   := GetFdid;
  DataSet.FieldbyName('ACTIVE').AsString := 'Y';
end;

procedure TNISetForm.NIPTypeBrowseGridClick(Sender: TObject);
begin
  LoadNISType;
end;

procedure TNISetForm.LoadNISType;
Var FdidVar   : String;
    NIPTypeID : Integer;
begin
  FdidVar                           := GetFdid;
  NIPTypeID                         := AnyStrToInt(NIPTypeBrowse.Grid.Cells[0,NIPTypeBrowse.Grid.Row]);
  NISTypeBrowse.ExplicitWhereClause := ' WHERE ((NISTYPE.FDID = ' + AddExpr('') + ' OR NISTYPE.FDID IS NULL OR NISTYPE.FDID = ' + AddExpr(FdidVar) + ') AND NIPTYPEID = ' + IntToStr(NIPTypeID) + ')';
  NISTypeBrowse.RefreshGrid('-1');
end;

procedure TNISetForm.NISTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('NIPTYPEID').AsString := NIPTypeBrowse.GetValue('NIPTYPEID');
  DataSet.FieldByName('FDID').AsString      := GetFdid;
  DataSet.FieldbyName('ACTIVE').AsString    := 'Y';
end;

procedure TNISetForm.NIPTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar  : Integer;
    NIPTypeID : String;
    Descr     : String;
begin
  inherited;
  NIPTypeID := NIPTypeBrowse.Grid.GetValue('NIPTYPEID');
  Descr     := NIPTypeBrowse.Grid.GetValue('DESCR');
  CountVar  := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NIPTYPEID = ' + pkValue(NIPTypeID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' event(s) entered with the ' + Descr + ' primary type.' + #10#13 + 'Deleting this record will blank out the primary type.  Delete anyway?') then
      CanDelete := true
    else
      CanDelete := false
  end else begin
    If BooleanMessageDlg('Delete ' + Descr + '?') then
      CanDelete := true
    else
      CanDelete := false
  end;
end;

procedure TNISetForm.NIPTypeBrowseClick(Sender: TObject);
begin
  LoadNISType;
end;

procedure TNISetForm.FieldTabShow(Sender: TObject);
Var FdidVar   : String;
begin
  FdidVar   := GetFdid;
  FieldPTypeGrid.Clear;
  FieldPTypeGrid.ColCount := 1;
  FieldPTypeGrid.RowCount := 1;
  FieldPTypeGrid.ClearColumns;

  FieldPTypeGrid.SetColumn('NIPTYPEID','Primary Key',0);
  FieldPTypeGrid.SetColumn('CODE','Code',065);
  FieldPTypeGrid.SetColumn('DESCR','Description',300);

  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE WHERE FDID = ' + AddExpr(FdidVar) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL');
  While Not A('NIPTYPE').Eof do begin
    FieldPTypeGrid.SetValue('NIPTYPEID',GetField('NIPTYPE','NIPTYPEID').AsString);
    FieldPTypeGrid.SetValue('CODE',     GetField('NIPTYPE','CODE').AsString);
    FieldPTypeGrid.SetValue('DESCR',    GetField('NIPTYPE','DESCR').AsString);
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');

  LoadNIFieldListBrowse;
end;


procedure TNISetForm.LoadNIFieldListBrowse;
Var FdidVar   : String;
    NIPTypeID : String;
begin
  NIFieldListBrowse.Clear;
  NIFieldListBrowse.ColCount := 1;
  NIFieldListBrowse.RowCount := 1;
  NIFieldListBrowse.ClearColumns;

  NIFieldListBrowse.SetColumn('NIFIELDID',    'Primary Key',     000);
  NIFieldListBrowse.SetColumn('NIFIELDLISTID','Second Key',      000);
  NIFieldListBrowse.SetColumn('COMPNAME',     'Component Name',  080);
  NIFieldListBrowse.SetColumn('DESCR',        'Screen Component',140);
  NIFieldListBrowse.SetColumn('ACTIVE',       'Active?',         045);
  NIFieldListBrowse.SetColumn('NEWLABEL',     'Override Label',  100);
  NIFieldListBrowse.SetColumn('REQUIRED',     'Required',        500);

  FdidVar   := GetFdid;
  NIPTypeID := FieldPTypeGrid.GetValue('NIPTYPEID');

  Open_Query('NIFIELD',false,'SELECT * FROM NIFIELD WHERE NIPTYPEID = ' + pkvalue(NIPTypeID));
  Open_Query('NIFIELDLIST',false,'SELECT * FROM NIFIELDLIST ORDER BY SORTORD');
  While Not A('NIFIELDLIST').Eof do begin

    If A('NIFIELD').ExactQueryLocate('NIFIELDLISTID',GetField('NIFIELDLIST','NIFIELDLISTID').AsString) then begin
      NIFieldListBrowse.SetValue('NIFIELDID',GetField('NIFIELD','NIFIELDID').AsString);
      NIFieldListBrowse.SetValue('ACTIVE',   'Yes');
      NIFieldListBrowse.SetValue('REQUIRED',  IIf(tdbfield('NIFIELD','REQUIRED') = 'Y','Yes',''));
      NIFieldListBrowse.SetValue('NEWLABEL',  GetField('NIFIELD','NEWLABEL').AsString);
    end else begin
      NIFieldListBrowse.SetValue('NIFIELDID','');
      NIFieldListBrowse.SetValue('ACTIVE','-');
      NIFieldListBrowse.SetValue('REQUIRED','');
      NIFieldListBrowse.SetValue('NEWLABEL','');
    end;

    NIFieldListBrowse.SetValue('NIFIELDLISTID',GetField('NIFIELDLIST','NIFIELDLISTID').AsString);
    NIFieldListBrowse.SetValue('COMPNAME',     GetField('NIFIELDLIST','COMPNAME').AsString);
    NIFieldListBrowse.SetValue('DESCR',        GetField('NIFIELDLIST','DESCR').AsString);

    A('NIFIELDLIST').Skip(1);
  end;
  CloseApollo('NIFIELDLIST');
  CloseApollo('NIFIELD');                                 
  NIFieldListBrowse.FixedCols := 4;
  NIFieldListBrowseClick(self);
end;

procedure TNISetForm.FieldToggleButtonClick(Sender: TObject);
Var FdidVar       : String;
    NIPTypeID     : Integer;
    NIFieldListID : String;
begin
  FdidVar       := GetFdid;
  NIPTypeID     := AnyStrToInt(FieldPTypeGrid.GetValue('NIPTYPEID'));
  NIFieldListID := NIFieldListBrowse.GetValue('NIFIELDLISTID');
  Open_Query('NIFIELD',true,'SELECT * FROM NIFIELD WHERE NIPTYPEID = ' + IntToStr(NIPTypeID) + ' AND NIFIELDLISTID = ' + NIFieldListID);
  If A('NIFIELD').RecordsExist then begin
    A('NIFIELD').Delete;
    NIFieldListBrowse.Cells[0,NIFieldListBrowse.Row] := '';
    NIFieldListBrowse.Cells[4,NIFieldListBrowse.Row] := '-';
    FieldEditButton.Enabled                          := false;
  end else begin
    A('NIFIELD').Append;
    GetField('NIFIELD','NIFIELDLISTID').AsString := NIFieldListID;
    GetField('NIFIELD','FDID').AsString          := FdidVar;
    GetField('NIFIELD','NIPTYPEID').AsInteger    := NIPTypeID;
    A('NIFIELD').Post;
    NIFieldListBrowse.Cells[0,NIFieldListBrowse.Row] := A('NIFIELD').NewPK;
    NIFieldListBrowse.Cells[1,NIFieldListBrowse.Row] := GetField('NIFIELD','NIFIELDLISTID').AsString;
    NIFieldListBrowse.Cells[4,NIFieldListBrowse.Row] := 'Yes';
    FieldEditButton.Enabled                          := true;
  end;
  CloseApollo('NIFIELD');
end;

procedure TNISetForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TNISetForm.FDIDBrowseClick(Sender: TObject);
begin
  If NIPage.ActivePage = TypeTab then
    LoadNIPType
  else if NIPage.ActivePage = TableTab then
    LoadSubTable
  else if NIPage.ActivePage = FieldTab then
    FieldTabShow(self)
  else if NIPage.ActivePage = TrainCat1Tab then
    TrainCat1TabShow(self);
end;

procedure TNISetForm.LoadSubTable;
Var FdidVar   : String;
    TableCode : String;
begin
  FdidVar                       := GetFdid;
  TableCode                     := TableBrowse.GetValue('TABLECODE');

  BrowseObject.PrimeTable       := TableCode;
  BrowseObject.FormPrimeTable   := TableCode;

  BrowseObject.ForeignKeyField  := 'FDID';
  BrowseObject.ForeignKeyValue  := FdidVar;
  BrowseObject.ForeignKeyIsChar := True;

  BrowseObject.ForeignKeyField  := '';
  BrowseObject.ForeignKeyValue  := '';
  BrowseObject.ForeignKeyIsChar := True;

  BrowseObject.ExplicitWhereClause := ' WHERE (' + TABLECODE + '.FDID = ' + AddExpr('') + ' OR ' + TABLECODE + '.FDID IS NULL OR ' + TABLECODE + '.FDID = ' + AddExpr(FdidVar) + ')';

  BrowseObject.PrimeKeyField       := TableCode + 'ID';
  BrowseObject.PrimeTable          := TableCode;
  SubTableBrowse.Setup(BrowseObject);
  SubTableBrowse.RefreshGrid('-1');
end;

procedure TNISetForm.SubTableNewRecord(DataSet: TDataset);
begin
  DataSet.FieldByName('FDID').AsString := GetFdid;
end;

procedure TNISetForm.TableBrowseClick(Sender: TObject);
begin
  LoadSubTable;
end;

procedure TNISetForm.TableTabShow(Sender: TObject);
begin
  LoadSubTable;
end;

procedure TNISetForm.FieldPTypeGridClick(Sender: TObject);
begin
  LoadNIFieldListBrowse;
end;

procedure TNISetForm.NIFieldListBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = VK_SPACE then
    FieldToggleButtonClick(self);
end;

procedure TNISetForm.FieldEditButtonClick(Sender: TObject);
Var NIFieldID : String;
begin
  NIFieldID   := NIFieldListBrowse.GetValue('NIFIELDID');
  NIFieldForm := TNIFieldForm.Create(application,'NIFIELD',NIFieldID,SubTableNewRecord);
  NIFieldForm.ShowModal;
  NIFieldListBrowse.Cells[5,NIFieldListBrowse.Row] := NIFieldForm.NewLabelField.Text;
  NIFieldForm.Free;
end;

procedure TNISetForm.PrintButtonClick(Sender: TObject);
begin
  NISetRepForm := TNISetRepForm.Create(Application,'',0,0);
  NISetRepForm.BaseReport.PreviewModal;
  NISetRepForm.Free;
end;

procedure TNISetForm.NIFieldListBrowseClick(Sender: TObject);
begin
  FieldEditButton.Enabled := NIFieldListBrowse.GetValue('ACTIVE',NIFieldListBrowse.Row) = 'Yes';
end;

procedure TNISetForm.TrainCat1TabShow(Sender: TObject);
begin
  NITrainCATControl.ActivePage          := NITrainCATTypeTab;
end;

procedure TNISetForm.TypeTabShow(Sender: TObject);
begin
  LoadNIPType;
  NISTypeBrowse.Setup('NISTYPE',TNISTypeForm,NISTypeNewRecord);
end;

procedure TNISetForm.NITrainCATFormNewRecord(DataSet: TDataset);
begin
  DataSet.FieldbyName('LOADNIEV').AsString := 'Y';
  DataSet.FieldbyName('ACTIVE').AsString   := 'Y';
end;

procedure TNISetForm.NITrainCatReqTabShow(Sender: TObject);
begin
  If Not AlpineLogIn then
    NITrainCatReqBrowse.ExplicitWhereClause :=  ' WHERE (NITRAINCATREQ.FDID = ' + AddExpr(GetFdid) + ' OR NITRAINCATREQ.FDID = ' + AddExpr('') + ' OR NITRAINCATREQ.FDID IS NULL)';
  NITrainCatReqBrowse.Setup('NITRAINCATREQ',TNITrainCATReqForm,NITrainCatReqNewRecord);
end;

procedure TNISetForm.NITrainCatReqNewRecord(DataSet: TDataset);
begin
  DataSet.FieldbyName('FDID').AsString := GetFdid;
end;

procedure TNISetForm.NITrainCATReqSetTabShow(Sender: TObject);
Var iCol    : Integer;
begin
  inherited;
  NITrainCATReqSetBrowse.Clear;
  NITrainCATReqSetBrowse.ColCount := 0;
  NITrainCATReqSetBrowse.RowCount := 0;
  NITrainCATReqSetBrowse.ClearColumns;
  NITrainCATReqSetBrowse.FixedRowAlways := true;
  NITrainCATReqSetBrowse.RowCount       := NITrainCATReqSetBrowse.FixedRows;

  NITrainCATReqSetBrowse.SetColumn('NITRAINCAT1ID',     'NITRAINCAT1ID',  001);
  NITrainCATReqSetBrowse.SetColumn('CODE',              'Code',           075);
  NITrainCATReqSetBrowse.SetColumn('NITRAINCATTYPECODE','Group',          075);
  NITrainCATReqSetBrowse.SetColumn('DESCR',             'Training Course',200);

  Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1.NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR, ' +
                                 'NITRAINCATTYPE.CODE NITRAINCATTYPECODE ' + 
                                 'FROM NITRAINCAT1 ' +
                                 'LEFT JOIN NITRAINCATTYPE ON (NITRAINCAT1.NITRAINCATTYPEID = NITRAINCATTYPE.NITRAINCATTYPEID) ' + 
                                 'ORDER BY NITRAINCAT1.CODE');
  Open_Query('NITRAINCATREQ',false,'SELECT * FROM NITRAINCATREQ WHERE NITRAINCATREQ.FDID = ' + AddExpr(GetFdid) + ' OR NITRAINCATREQ.FDID = ' + AddExpr('') + ' OR NITRAINCATREQ.FDID IS NULL ORDER BY CODE');
  Open_Query('NITRAINCATREQSET',false,'SELECT * FROM NITRAINCATREQSET');

  A('NITRAINCATREQ').GoTop;
  While Not A('NITRAINCATREQ').Eof do begin
    NITrainCATReqSetBrowse.SetColumn(GetField('NITRAINCATREQ','NITRAINCATREQID').AsString,GetField('NITRAINCATREQ','CODE').AsString,070);
    A('NITRAINCATREQ').Skip(1);
  end;

  While Not A('NITRAINCAT1').Eof do begin
    NITrainCATReqSetBrowse.SetValue('NITRAINCAT1ID',     GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
    NITrainCATReqSetBrowse.SetValue('CODE',              GetField('NITRAINCAT1','CODE').AsString);
    NITrainCATReqSetBrowse.SetValue('NITRAINCATTYPECODE',GetField('NITRAINCAT1','NITRAINCATTYPECODE').AsString);
    NITrainCATReqSetBrowse.SetValue('DESCR',             GetField('NITRAINCAT1','DESCR').AsString);

    for iCol := 4  to NITrainCATReqSetBrowse.ColCount-1 do begin
      If A('NITRAINCATREQSET').ExactQueryLocate(['NITRAINCAT1ID','NITRAINCATREQID'],[GetField('NITRAINCAT1','NITRAINCAT1ID').AsString,NITrainCATReqSetBrowse.ColumnNames[icol] ]) then
        NITrainCATReqSetBrowse.SetValue(NITrainCATReqSetBrowse.ColumnNames[icol],'Yes')
      else
        NITrainCATReqSetBrowse.SetValue(NITrainCATReqSetBrowse.ColumnNames[icol],'')
    end;

    A('NITRAINCAT1').Skip(1);
  end;

  If NITrainCATReqSetBrowse.ColCount > 4 then
    NITrainCATReqSetBrowse.FixedCols := 4;

  CloseApollo('NITRAINCAT1');
  CloseApollo('NITRAINCATREQ');
  CloseApollo('NITRAINCATREQSET');
  NITrainCATReqSetBrowse.Invalidate;
end;

procedure TNISetForm.NITrainCATReqSetBrowseDblClick(Sender: TObject);
begin
  Open_Query('NITRAINCATREQSET',true,'SELECT * FROM NITRAINCATREQSET WHERE NITRAINCATREQID = ' + pkValue(NITrainCATReqSetBrowse.ColumnNames[NITrainCATReqSetBrowse.Col]) + ' AND NITRAINCAT1ID = ' + pkValue(NITrainCATReqSetBrowse.GetValue('NITRAINCAT1ID')));
  If A('NITRAINCATREQSET').RecordsExist then begin
    A('NITRAINCATREQSET').Delete;
    NITrainCATReqSetBrowse.Cells[NITrainCATReqSetBrowse.Col,NITrainCATReqSetBrowse.Row] := '';
  end else begin
    If (NITrainCATReqSetBrowse.Col > 2) then begin
      A('NITRAINCATREQSET').Append;
      GetField('NITRAINCATREQSET','NITRAINCATREQID').AsString := NITrainCATReqSetBrowse.ColumnNames[NITrainCATReqSetBrowse.Col];
      GetField('NITRAINCATREQSET','NITRAINCAT1ID').AsString   := NITrainCATReqSetBrowse.GetValue('NITRAINCAT1ID');
      A('NITRAINCATREQSET').Post;
      NITrainCATReqSetBrowse.Cells[NITrainCATReqSetBrowse.Col,NITrainCATReqSetBrowse.Row] := 'Yes';
    end else
      ShowMessage('You must enter the training requirements.');
  end;
  CloseApollo('NITRAINCATREQSET');
  NITrainCATReqSetBrowse.SetFocus;
end;

procedure TNISetForm.NITrainCATReqSetBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
Var NITrainCAT1ID : String;
begin
  If (key = VK_RETURN) then begin
    NITrainCAT1ID := NITrainCATReqSetBrowse.GetValue('NITRAINCAT1ID');
    RunAlpineForm(TNITrainCATForm,NITrainCAT1ID,'NITRAINCAT1',NIPTypeNewRecord);
  end else if (key = VK_SPACE) then
    NITrainCATReqSetBrowseDblClick(self)
  else if (key = VK_DELETE) then begin
    If (NITrainCATReqSetBrowse.Col > 2) then begin
      Open_Query('NITRAINCATREQSET',true,'SELECT * FROM NITRAINCATREQSET WHERE NITRAINCATREQID = ' + pkValue(NITrainCATReqSetBrowse.ColumnNames[NITrainCATReqSetBrowse.Col]) + ' AND NITRAINCAT1ID = ' + pkValue(NITrainCATReqSetBrowse.GetValue('NITRAINCAT1ID')));
      If A('NITRAINCATREQSET').RecordsExist then begin
        A('NITRAINCATREQSET').Delete;
        NITrainCATReqSetBrowse.Cells[NITrainCATReqSetBrowse.Col,NITrainCATReqSetBrowse.Row] := '';
      end;
      CloseApollo('NITRAINCATREQSET');
    end;
  end;
end;

procedure TNISetForm.NITrainCATTypeTabShow(Sender: TObject);
Var FdidVar : String;
begin
  FdidVar                                  := GetFdid;
  If Not AlpineLogIn then
    NITrainCatTypeBrowse.ExplicitWhereClause := ' WHERE (NITRAINCATTYPE.FDID = ' + AddExpr('') + ' OR NITRAINCATTYPE.FDID IS NULL OR NITRAINCATTYPE.FDID = ' + AddExpr(FdidVar) + ')';
  NITrainCatTypeBrowse.Setup('NITRAINCATTYPE',TNITrainCATTypeForm,NITrainCATTypeNewRecord);
  NITrainRepBrowse.Setup('NITRAINREP',TNITrainRepForm,NITrainRepNewRecord);
end;

procedure TNISetForm.NITrainCatTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('CODE').AsString := ' ';
end;

procedure TNISetForm.NITrainRepNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TNISetForm.NITrainCAT1TabShow(Sender: TObject);
Var FdidVar : String;
begin
  FdidVar                                         := GetFdid;
  If Not AlpineLogIn then
    NITrainCat1Browse.ExplicitWhereClause         := ' WHERE (NITRAINCAT1.FDID = ' + AddExpr('') + ' OR NITRAINCAT1.FDID IS NULL OR NITRAINCAT1.FDID = ' + AddExpr(FdidVar) + ')';
  NITrainCat1Browse.Setup('NITRAINCAT1',TNITrainCATForm,NITrainCATFormNewRecord);
  NITrainCat1Browse.FGrid.SortSettings.IgnoreCase := true;
  SearchButton.Parent                             := NITrainCat1Browse.FButtonPanel;
  SearchButton.Align                              := alleft;
  NITrainCat1Browse.FDeleteButton.Position        := bpmiddle;
end;

procedure TNISetForm.ASCTabShow(Sender: TObject);
begin
  RefreshNISTypeBrowse;
end;

procedure TNISetForm.RefreshButtonClick(Sender: TObject);
begin
  RefreshNISTypeBrowse;
end;

procedure TNISetForm.RefreshNISTypeBrowse;
Var EventCnt   : Integer;
    SQLVar     : String;
    NISTypeCnt : Integer;
    NIPTypeCnt : Integer;
begin
  ASCNISTypeBrowse.Clear;
  ASCNISTypeBrowse.ClearColumns;
  ASCNISTypeBrowse.ColCount       := 0;
  ASCNISTypeBrowse.RowCount       := 0;
  ASCNISTypeBrowse.FixedRowAlways := true;
  ASCNISTypeBrowse.RowCount       := ASCNISTypeBrowse.FixedRows;

  ASCNISTypeBrowse.SetColumn('FDID',           'FDID',           050);
  ASCNISTypeBrowse.SetColumn('NIPTYPEID',      'NIPTYPEID',      070);
  ASCNISTypeBrowse.SetColumn('NIPTYPECODE',    'NIPTYPECODE',    100);
  ASCNISTypeBrowse.SetColumn('NIPTYPEDESCR',   'NIPTYPEDESCR',   160);
  ASCNISTypeBrowse.SetColumn('NISTYPEID',      'NISTYPEID',      070);
  ASCNISTypeBrowse.SetColumn('NISTYPECODE',    'NISTYPECODE',    080);
  ASCNISTypeBrowse.SetColumn('NISTYPEDESCR',   'NISTYPEDESCR',   140);
  ASCNISTypeBrowse.SetColumn('NEWNIPTYPEID',   'NEWNIPTYPEID',   090);
  ASCNISTypeBrowse.SetColumn('NEWNISTYPEID',   'NEWNISTYPEID',   090);
  ASCNISTypeBrowse.SetColumn('LOADNITRAINCAT1','LOADNITRAINCAT1',115);
  ASCNISTypeBrowse.SetColumn('EVENTCNT',       'COUNT',          265);

  Open_Query('NIPTYPE',false,'SELECT NIPTYPE.FDID, NIPTYPE.NIPTYPEID, NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR, ' +
                             'NIPTYPE.NEWNIPTYPEID, NIPTYPE.NEWNISTYPEID ' +
                             'FROM NIPTYPE ' +
                             'ORDER BY NIPTYPE.FDID, NIPTYPE.CODE');
                             
  while not A('NIPTYPE').Eof do begin

    NISTypeCnt := SqlTableRecCount('SELECT COUNT(*) FROM NISTYPE WHERE ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDateField.Value,FinalDateField.Value) + ' AND NIPTYPEID = ' + GetField('NIPTYPE','NIPTYPEID').AsString);
    SQLVar     := 'SELECT COUNT(*) FROM NI WHERE ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDateField.Value,FinalDateField.Value) + ' AND NIPTYPEID = ' + GetField('NIPTYPE','NIPTYPEID').AsString + ' AND NISTYPEID IS NULL';
    EventCnt   := SqlTableRecCount(SQLVar);
    SQLVar     := 'SELECT COUNT(*) FROM NI WHERE ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDateField.Value,FinalDateField.Value) + ' AND NIPTYPEID = ' + GetField('NIPTYPE','NIPTYPEID').AsString;
    NIPTypeCnt := SqlTableRecCount(SQLVar);
    RunSQL('UPDATE NIPTYPE SET NICOUNT = ' + IntToStr(NIPTypeCnt) + ' WHERE NIPTYPEID = ' + GetField('NIPTYPE','NIPTYPEID').AsString);

    ASCNISTypeBrowse.SetValue('FDID',        tdbfield('NIPTYPE','FDID'));
    ASCNISTypeBrowse.SetValue('NIPTYPEID',   GetField('NIPTYPE','NIPTYPEID').AsString);
    ASCNISTypeBrowse.SetValue('NIPTYPECODE', tdbfield('NIPTYPE','NIPTYPECODE'));
    ASCNISTypeBrowse.SetValue('NIPTYPEDESCR',tdbfield('NIPTYPE','NIPTYPEDESCR'));
    ASCNISTypeBrowse.SetValue('NISTYPEID',   '');
    ASCNISTypeBrowse.SetValue('NISTYPECODE', '');
    ASCNISTypeBrowse.SetValue('NISTYPEDESCR','');
    ASCNISTypeBrowse.SetValue('NEWNIPTYPEID',tdbfield('NIPTYPE','NEWNIPTYPEID'));
    ASCNISTypeBrowse.SetValue('NEWNISTYPEID',tdbfield('NIPTYPE','NEWNISTYPEID'));
    ASCNISTypeBrowse.SetValue('EVENTCNT',    IntToStr(EventCnt));
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');

  Open_Query('NISTYPE',false,'SELECT NISTYPE.FDID, NISTYPE.NIPTYPEID, NIPTYPE.CODE NIPTYPECODE, NIPTYPE.DESCR NIPTYPEDESCR, ' + 
                             'NISTYPE.NISTYPEID, NISTYPE.CODE NISTYPECODE, NISTYPE.DESCR NISTYPEDESCR, ' +
                             'NISTYPE.NEWNIPTYPEID, NISTYPE.NEWNISTYPEID, NISTYPE.LOADNITRAINCAT1 ' +
                             'FROM NISTYPE LEFT JOIN NIPTYPE ON (NISTYPE.NIPTYPEID = NIPTYPE.NIPTYPEID) ' +
                             'ORDER BY NISTYPE.FDID, NIPTYPE.CODE, NISTYPE.CODE');
  while not A('NISTYPE').Eof do begin
    SQLVar     := 'SELECT COUNT(*) FROM NI WHERE  ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDateField.Value,FinalDateField.Value) + ' AND NIPTYPEID = ' + pkValue(GetField('NISTYPE','NIPTYPEID').AsString) + ' AND NISTYPEID = ' + pkValue(GetField('NISTYPE','NISTYPEID').AsString);
    EventCnt   := SqlTableRecCount(SQLVar);

    SQLVar     := 'SELECT COUNT(*) FROM NI WHERE  ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDateField.Value,FinalDateField.Value) + ' AND NISTYPEID = ' + pkValue(GetField('NISTYPE','NISTYPEID').AsString);
    NISTypeCnt := SqlTableRecCount(SQLVar);
    RunSQL('UPDATE NISTYPE SET NICOUNT = ' + IntToStr(NISTypeCnt) + ' WHERE NISTYPEID = ' + GetField('NISTYPE','NISTYPEID').AsString);

    ASCNISTypeBrowse.SetValue('FDID',           tdbfield('NISTYPE','FDID'));
    ASCNISTypeBrowse.SetValue('NIPTYPEID',      GetField('NISTYPE','NIPTYPEID').AsString);
    ASCNISTypeBrowse.SetValue('NIPTYPECODE',    tdbfield('NISTYPE','NIPTYPECODE'));
    ASCNISTypeBrowse.SetValue('NIPTYPEDESCR',   tdbfield('NISTYPE','NIPTYPEDESCR'));
    ASCNISTypeBrowse.SetValue('NISTYPEID',      GetField('NISTYPE','NISTYPEID' ).AsString);
    ASCNISTypeBrowse.SetValue('NISTYPECODE',    tdbfield('NISTYPE','NISTYPECODE'));
    ASCNISTypeBrowse.SetValue('NISTYPEDESCR',   tdbfield('NISTYPE','NISTYPEDESCR'));
    ASCNISTypeBrowse.SetValue('NEWNIPTYPEID',   tdbfield('NISTYPE','NEWNIPTYPEID'));
    ASCNISTypeBrowse.SetValue('NEWNISTYPEID',   tdbfield('NISTYPE','NEWNISTYPEID'));
    ASCNISTypeBrowse.SetValue('LOADNITRAINCAT1',tdbfield('NISTYPE','LOADNITRAINCAT1'));
    ASCNISTypeBrowse.SetValue('EVENTCNT',       IntToStr(EventCnt));

    A('NISTYPE').Skip(1);
  end;
  CloseApollo('NISTYPE');
end;

procedure TNISetForm.EditNIPTypeButtonClick(Sender: TObject);
Var NIPTypeID : String;
begin
  NIPTypeID := ASCNISTypeBrowse.GetValue('NIPTYPEID');
  RunAlpineForm(TNIPTypeForm,NIPTypeID,'NIPTYPE',NIPTypeNewRecord);
end;

procedure TNISetForm.EditNISTypeButtonClick(Sender: TObject);
Var NISTypeID : String;
begin
  NISTypeID := ASCNISTypeBrowse.GetValue('NISTYPEID');
  RunAlpineForm(TNISTypeForm,NISTypeID,'NISTYPE',NISTypeFormNewRecord);
end;

procedure TNISetForm.NISTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar  : Integer;
    NISTypeID : String;
    Descr     : String;
begin
  inherited;
  NISTypeID := NISTypeBrowse.Grid.GetValue('NISTYPEID');
  Descr     := NISTypeBrowse.Grid.GetValue('DESCR');
  CountVar := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NISTYPEID = ' + pkValue(NISTypeID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' event(s) entered with the ' + Descr + ' secondary type.' + #10#13 + 'Deleting this record will blank out the secondary type.  Delete anyway?') then
      CanDelete := true
    else
      CanDelete := false
  end else begin
    If BooleanMessageDlg('Delete ' + Descr + '?') then
      CanDelete := true
    else
      CanDelete := false
  end;
end;

procedure TNISetForm.NISTypeFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('CODE').AsString := ' ';
end;

procedure TNISetForm.UpdateButtonClick(Sender: TObject);
Var SQLVar   : String;
    NICntVar : Integer;
    ContVar  : Boolean;
begin
  ASCNISTypeBrowseDblClick(self);
  If (OldNISTypeIDField.value = '') then begin
    SQLVar  := 'SELECT * FROM NI WHERE NIPTYPEID = ' + pkValue(OldNIPTypeIDField.Value) + ' AND (NISTYPEID IS NULL OR NISTYPEID = ' + AddExpr('') + ')';
    ContVar := BooleanMessageDlg('Change PTYPEID from ' + OldNIPTypeIDField.Value + ' to ' + NewNIPTypeIDField.Value);
  end else begin
    SQLVar := 'SELECT * FROM NI WHERE NIPTYPEID = ' + pkValue(OldNIPTypeIDField.Value) + ' AND NISTYPEID = ' + pkValue(OldNISTypeIDField.Value);
    ContVar := BooleanMessageDlg('Change NIPTYPEID from ' + OldNIPTypeIDField.Value + ' to ' + NewNIPTypeIDField.Value + #10#13 +
                                 'Change NISTYPEID from ' + OldNISTypeIDField.Value + ' to ' + NewNISTypeIDField.Value + '?');
  end;

  If ContVar then begin
    Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
    Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
    Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');
    Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE WHERE NISTYPEID = ' + pkValue(OldNISTypeIDField.Value));

    Open_Query('NI',true,SQLVar);
    Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
    NICntVar       := 0;
    Gauge.Visible  := true;
    Gauge.MaxValue := A('NI').QueryRecCount;
    Gauge.Progress := 0;

    While Not A('NI').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.processmessages;
    
      NICntVar := NICntVar + 1;
      GetTable('NI').Edit;
      GetField('NI','NIPTYPEID').AsString := NewNIPTypeIDField.Value;
      GetField('NI','NISTYPEID').AsString := NewNISTypeIDField.Value;
      GetTable('NI').Post;

      A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + GetField('NI','NIID').AsString);
      While Not A('NIATT').Eof do begin
        GetTable('NIATT').Edit;
        GetField('NIATT','NIPTYPEID').AsString    := NewNIPTypeIDField.Value;
        GetField('NIATT','NISTYPEID').AsString    := NewNISTypeIDField.Value;
        GetField('NIATT','NILOSAPCATID').AsString := GetField('NI','NILOSAPCATID').AsString;
        GetTable('NIATT').Post;
        A('NIATT').Skip(1);
      end;

      If LoadNITrainCat1Field.Checked then begin

        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('NISTYPE','CODE'));
        If Not A('NITRAINCAT1').RecordsExist then begin
          GetTable('NITRAINCAT1').Append;
          GetField('NITRAINCAT1','FDID').AsString  := tdbfield('NISTYPE','FDID');
          GetField('NITRAINCAT1','CODE').AsString  := tdbfield('NISTYPE','CODE');
          GetField('NITRAINCAT1','DESCR').AsString := tdbfield('NISTYPE','DESCR');
          GetTable('NITRAINCAT1').Post;
        end;

        A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
        If Not A('NIEV').RecordsExist then begin
          GetTable('NIEV').Append;
          GetField('NIEV','NIID').AsString            := GetField('NI','NIID').AsString;
          GetField('NIEV','NITRAINCAT1ID').AsString   := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
          GetField('NIEV','DATETIMESTART').AsDateTime := GetField('NI','DATETIMESTART').AsDateTime;
          GetField('NIEV','DATETIMEEND').AsDateTime   := GetField('NI','DATETIMEEND').AsDateTime;
          GetField('NIEV','EVLENGTH').AsFloat         := GetField('NI','EVLENGTH').AsFloat;
          GetField('NIEV','LOCATIONID').AsString      := GetField('NI','LOCATIONID').AsString;
          GetTable('NIEV').Post;
        end;

        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + GetField('NI','NIID').AsString);
        While Not A('NIATT').Eof do begin
          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + GetField('NIEV','NIEVID').AsString + ' AND PERSID = ' + GetField('NIATT','PERSID').AsString);
          If Not A('NIEVATT').RecordsExist then begin
            GetTable('NIEVATT').Append;
            GetField('NIEVATT','NIID').AsString   := GetField('NI','NIID').AsString;
            GetField('NIEVATT','NIEVID').AsString := GetField('NIEV','NIEVID').AsString;
            GetField('NIEVATT','PERSID').AsString := GetField('NIATT','PERSID').AsString;
            GetTable('NIEVATT').Post;
          end;
          A('NIATT').Skip(1);
        end;
      end;

      A('NI').Skip(1);
    end;
    CloseApollo('NI');
    CloseApollo('NIATT');
    CloseApollo('NIEV');
    CloseApollo('NIEVATT');
    CloseApollo('NITRAINCAT1');
    CloseApollo('NISTYPE');
    
    OldNIPTypeIDField.value := '';
    OldNISTypeIDField.value := '';
    NewNIPTypeIDField.value := '';
    NewNISTypeIDField.value := '';
    Gauge.Visible           := false;
    ShowMessage('Done.  ' + IntToStr(NICntVar) + ' were update');
  end;  
end;

procedure TNISetForm.DeleteNIPTypeButtonClick(Sender: TObject);
Var NIPTypeID : String;
begin
  NIPTypeID := ASCNISTypeBrowse.GetValue('NIPTYPEID');
  If BooleanMessageDlg('Are you sure you want to delete the record where NIPTYPEID = ' + NIPTypeID + ' ?') then begin
    RunSQL('DELETE FROM NIPTYPE WHERE NIPTYPEID = ' + pkValue(NIPTypeID));
    RefreshNISTypeBrowse;
  end;
end;

procedure TNISetForm.DeleteNISTYPEButtonClick(Sender: TObject);
Var NISTypeID : String;
begin
  NISTypeID := ASCNISTypeBrowse.GetValue('NISTYPEID');
  If BooleanMessageDlg('Are you sure you want to delete the record where NISTYPEID = ' + NISTypeID + ' ?') then begin
    RunSQL('DELETE FROM NISTYPE WHERE NISTYPEID = ' + pkValue(NISTypeID));
    RefreshNISTypeBrowse;
  end;
end;


procedure TNISetForm.SearchButtonClick(Sender: TObject);
begin
  NITrainCat1Browse.SearchFooter := Not NITrainCat1Browse.SearchFooter; 
end;

procedure TNISetForm.StandardButtonClick(Sender: TObject);
Var NIPTypeID : String;
begin
  NIPTypeID := FieldPTypeGrid.GetValue('NIPTYPEID');
  LoadNIFieldList(NIPTypeID);
  LoadNIFieldListBrowse;
  ShowMessage('Done');
end;

class procedure TNISetForm.LoadNIFieldList(NIPTypeID: String);
begin
  Open_Query('NIFIELDLIST',false,'SELECT * FROM NIFIELDLIST');
  Open_Query('NIFIELD',true,'SELECT * FROM NIFIELD WHERE 1=2');
  While Not A('NIFIELDLIST').Eof do begin
    If (tdbfield('NIFIELDLIST','COMPNAME') = 'DESCR')     or (tdbfield('NIFIELDLIST','COMPNAME') = 'LOCCODE') or (tdbfield('NIFIELDLIST','COMPNAME') = 'LOCMISC')  or
       (tdbfield('NIFIELDLIST','COMPNAME') = 'DATESTART') or (tdbfield('NIFIELDLIST','COMPNAME') = 'DATEEND') or (tdbfield('NIFIELDLIST','COMPNAME') = 'EVLENGTH') or
       (tdbfield('NIFIELDLIST','COMPNAME') = 'POINT') then begin
      A('NIFIELD').UpdateSQL('SELECT * FROM NIFIELD WHERE NIPTYPEID = ' + NIPTypeID + ' AND NIFIELDLISTID = ' + GetField('NIFIELDLIST','NIFIELDLISTID').AsString);
      If Not A('NIFIELD').RecordsExist then begin
        A('NIFIELD').Append;
        Getfield('NIFIELD','FDID').AsString          := mFireID;
        Getfield('NIFIELD','NIPTYPEID').AsString     := NIPTypeID;
        GetField('NIFIELD','NIFIELDLISTID').AsString := GetField('NIFIELDLIST','NIFIELDLISTID').AsString;
        A('NIFIELD').Post;
      end;
    end;
    A('NIFIELDLIST').Skip(1);
  end;
  CloseApollo('NIFIELDLIST');
  CloseApollo('NIFIELD');
end;

procedure TNISetForm.ASCNISTypeBrowseDblClick(Sender: TObject);
begin
  OldNISTypeIDField.Value      := ASCNISTypeBrowse.GetValue('NISTYPEID');
  OldNIPTypeIDField.Value      := ASCNISTypeBrowse.GetValue('NIPTYPEID');

  NewNISTypeIDField.Value      := ASCNISTypeBrowse.GetValue('NEWNISTYPEID');
  NewNIPTypeIDField.Value      := ASCNISTypeBrowse.GetValue('NEWNIPTYPEID');
  LoadNITrainCat1Field.Checked := (ASCNISTypeBrowse.GetValue('LOADNITRAINCAT1') = 'Y');
end;

procedure TNISetForm.OldButtonClick(Sender: TObject);
begin
  ASCNISTypeBrowseDblClick(self);
end;

end. 
