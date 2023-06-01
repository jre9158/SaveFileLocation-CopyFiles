unit Appset;

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
  HtmlBtns,
  OvcDbPF,
  OrpheusWrapper,
  AlpineCheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel;

type
  TAppSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    AppSetControl: TAdvPageControl;
    AppInspTab: TAdvTabSheet;
    AppInspBrowse: TAlpineBlockBrowse;
    AppServTab: TAdvTabSheet;
    AppServBrowse: TAlpineBlockBrowse;
    InvSubTypeTab: TAdvTabSheet;
    InvSubTypeBrowse: TAlpineBlockBrowse;
    InvDescrTab: TAdvTabSheet;
    InvDescrBrowse: TAlpineBlockBrowse;
    InvFuelTypeTab: TAdvTabSheet;
    InvFuelTypeBrowse: TAlpineBlockBrowse;
    DispUnitNumTab: TAdvTabSheet;
    DispUnitNumBrowse: TAlpineBlockBrowse;
    DispStatTab: TAdvTabSheet;
    InvFuelSourceBrowse: TAlpineBlockBrowse;
    InvServTypeStatTab: TAdvTabSheet;
    InvServStatusBrowse: TAlpineBlockBrowse;
    InvServTypeStatusBrowse: TAlpineBlockBrowse;
    AlpineGlowButton1: TAlpineGlowButton;
    UnitNumButton: TAlpineGlowButton;
    procedure AppInspTabShow(Sender: TObject);
    procedure AppServTabShow(Sender: TObject);
    procedure InvSubTypeTabShow(Sender: TObject);
    procedure InvDescrTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure InvFuelTypeTabShow(Sender: TObject);
    procedure DispUnitNumTabShow(Sender: TObject);
    procedure AppTransferButtonClick(Sender: TObject);
    procedure InvServTypeStatTabShow(Sender: TObject);
    procedure UnitNumButtonClick(Sender: TObject);
    procedure AppInspBrowseReplicate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure AppServTypeNewRecord(DataSet: TDataSet);
    procedure AppInspTypeNewRecord(DataSet: TDataSet);
    procedure InvSubTypeNewRecord(DataSet: TDataSet);
    procedure InvDescrNewRecord(DataSet: TDataSet);
    procedure InvFuelTypeFormNewRecord(DataSet: TDataSet);
    procedure InvFuelSourceFormNewRecord(DataSet: TDataSet);
  end;
  
var
  AppSetForm  : TAppSetForm;

implementation
uses GenFunc,
     SortGridView,
     InvServType,
     InvInspType,
     InvSubType,
     InvDescr,
     ApparatusTransfer,
     InvServStatus,
     InvServTypeStatus,
     InvFuelType,
     InvFuelSource,
     FormFunc,
     DispUnitNum,
     Search,
     CommonVar;

{$R *.DFM}

class procedure TAppSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TAppSetForm.UnitNumButtonClick(Sender: TObject);
begin
  inherited;
  If AlpineLogin and BooleanMessageDlg('Set Include = N for blank UNITNUM fields') then begin
    RunSQL('UPDATE INV SET INCLUDE = ' + AddExpr('N') + ' WHERE TYPE = ' + AddExpr('TRUCK') + ' AND (UNITNUM IS NULL OR UNITNUM = ' + AddExpr('') + ')');
    ShowMessage('Done');
  end;

end;

procedure TAppSetForm.InvServTypeStatTabShow(Sender: TObject);
begin
  inherited;
  InvServStatusBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVSTATUS.FDID');
  InvServStatusBrowse.Setup('INVSERVSTATUS',TInvServStatusForm,InvFuelTypeFormNewRecord);
  InvServTypeStatusBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPESTATUS.FDID');
  InvServTypeStatusBrowse.Setup('INVSERVTYPESTATUS',TInvServTypeStatusForm,InvFuelTypeFormNewRecord);
end;

procedure TAppSetForm.AppTransferButtonClick(Sender: TObject);
begin
  inherited;
  ApparatusTransferForm := TApparatusTransferForm.Create(self);
  ApparatusTransferForm.showmodal;
  ApparatusTransferForm.Free;
end;

procedure TAppSetForm.AppInspBrowseReplicate(Sender: TObject);
var NewCode              : String;
    OldInvServTypeID     : Integer;
    NewInvServTypeID     : Integer;
    NewInvServTypeItemID : Integer;
begin
  inherited;
  If not InputDlg('New Code', 'Enter New Inspection Code:',NewCode,'!!!!!!!!') then
    exit;
  OldInvServTypeID := StrToInt(AppInspBrowse.FGrid.GetValue('INVSERVTYPEID'));
  NewInvServTypeID := AlpineReplicateRecord('INVSERVTYPE',OldInvServTypeID);
  RunSql('UPDATE INVSERVTYPE SET CODE = ' + AddExpr(NewCode) + ' WHERE INVSERVTYPEID = ' + IntToStr(NewInvServTypeID));

  Open_Query('INVSERVTYPEITEM',False,'SELECT INVSERVTYPEITEMID FROM INVSERVTYPEITEM WHERE INVSERVTYPEID = ' + IntToStr(OldInvServTypeID));
  while not A('INVSERVTYPEITEM').eof do begin
    NewInvServTypeItemID := AlpineReplicateRecord('INVSERVTYPEITEM',GetField('INVSERVTYPEITEM','INVSERVTYPEITEMID').AsInteger);
    RunSql('UPDATE INVSERVTYPEITEM SET INVSERVTYPEID = ' + IntToStr(NewInvServTypeID) + ' WHERE INVSERVTYPEITEMID = ' + inttostr(NewInvServTypeItemID));
    A('INVSERVTYPEITEM').Skip(1);
  end;
  CloseApollo('INVSERVTYPEITEM');
  ShowMessage('Replicated the Apparatus Inspection Type.');
end;

procedure TAppSetForm.AppInspTabShow(Sender: TObject);
begin
  inherited;
  AppInspBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('APPINSP');
  AppInspBrowse.Setup('INVSERVTYPE',TInvInspTypeForm,TInvInspTypeForm.AppNewRecord);
end;

procedure TAppSetForm.AppServTabShow(Sender: TObject);
begin
  inherited;
  AppServBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVTYPE.INVSERVFORM = ' + AddExpr('APPSERV');
  AppServBrowse.Setup('INVSERVTYPE',TInvServTypeForm,AppServTypeNewRecord);
end;

procedure TAppSetForm.AppInspTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('INVSERVFORM').AsString := 'APPINSP';
end;

procedure TAppSetForm.AppServTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('INVSERVFORM').AsString := 'APPSERV';
end;

procedure TAppSetForm.InvSubTypeTabShow(Sender: TObject);
begin
  inherited;
  InvSubTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND INVSUBTYPE.TYPE = ' + AddExpr('TRUCK');
  InvSubTypeBrowse.Setup('INVSUBTYPE',TInvSubTypeForm,InvSubTypeNewRecord);
end;

procedure TAppSetForm.InvSubTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'TRUCK';
end;

procedure TAppSetForm.InvDescrTabShow(Sender: TObject);
begin
  inherited;
  InvDescrBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVDESCR.FDID') + ' AND INVDESCR.TYPE = ' + AddExpr('TRUCK');
  InvDescrBrowse.Setup('INVDESCR',TInvDescrForm,InvDescrNewRecord);
end;

procedure TAppSetForm.InvDescrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString := 'TRUCK';
end;

procedure TAppSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  AppSetControl.ActivePage := InvSubTypeTab;
  DispStatTab.TabVisible   := AlpineLogin;
end;

procedure TAppSetForm.InvFuelTypeTabShow(Sender: TObject);
begin
  inherited;
  InvFuelTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVFUELTYPE.FDID');
  InvFuelTypeBrowse.Setup('INVFUELTYPE',TInvFuelTypeForm,InvFuelTypeFormNewRecord);

  InvFuelSourceBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INVFUELSOURCE.FDID');
  InvFuelSourceBrowse.Setup('INVFUELSOURCE',TInvFuelSourceForm,InvFuelSourceFormNewRecord);
end;

procedure TAppSetForm.InvFuelTypeFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TAppSetForm.InvFuelSourceFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TAppSetForm.DispUnitNumTabShow(Sender: TObject);
begin
  inherited;
  DispUnitNumBrowse.Setup('DISPUNITNUM',TDispUnitNumForm,TDispUnitNumForm.NewRecord);
end;

end. 
