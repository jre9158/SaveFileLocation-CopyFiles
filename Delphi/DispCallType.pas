unit DispCallType;

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
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  ComCtrls,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpineCheck,
  htmlbtns,
  AdvGroupBox,
  AlpineMemo,
  AdvObj,
  AlpinePanel;

type
  TDispCallTypeForm = class(TNormalBaseForm)
    PageControl: TPageControl;
    DispSubTypeTab: TTabSheet;
    DispSubTypeBrowse: TAlpineBlockBrowse;
    PageDispTab: TTabSheet;
    SOPTab: TTabSheet;
    Panel0B: TAlpinePanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    SortOrdField: TAlpineEdit;
    IconField: TAlpineEdit;
    RespCallTypeIDField: TAlpineLookup;
    TypeField: TAlpineEdit;
    HiddenField: TAlpineEdit;
    IconButton: TAlpineGlowButton;
    ResponseField: TAlpineCheckBox;
    PriorityOrdField: TAlpineEdit;
    DispTimerDefField: TAlpineEdit;
    VerbalDescrField: TAlpineEdit;
    AlpinePanel1: TAlpinePanel;
    PageDispBrowse: TAlpineTMSStringGrid;
    AlpinePanel2: TAlpinePanel;
    NarrField: TAlpineMemo;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    DispSeqTab: TTabSheet;
    DispSeqBrowse: TAlpineBlockBrowse;
    CustDispCallTypeTab: TTabSheet;
    Label12: TLabel;
    CountButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure PageDispTabShow(Sender: TObject);
    procedure PageDispBrowseDblClick(Sender: TObject);
    procedure PageDispBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RespCallTypeIDFieldEnter(Sender: TObject);
    procedure IconButtonClick(Sender: TObject);
    procedure DispSeqTabShow(Sender: TObject);
    procedure TypeFieldExit(Sender: TObject);
    procedure CountButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DispSeqNewRecord(DataSet: TDataSet);
    procedure DispSubTypeNewRecord(DataSet: TDataSet);
  end;
var
  DispCallTypeForm: TDispCallTypeForm;

implementation
uses GenFunc,
     SecSet,
     DispSet,
     SysSet,
     CommonFunc,
     CommonVar,
     CustDispCallType,
     GisFunc,
     DispSeq,
     DispSubType;
     
{$R *.DFM}

class procedure TDispCallTypeForm.NewRecord(DataSet: TDataSet);
var mDispSetForm: TDispSetForm;
begin
  DataSet.FieldByname('HIDDEN').AsString   := 'N';
  DataSet.FieldByname('TYPE').AsString     := 'NFIRS';
  DataSet.FieldByname('RESPONSE').AsString := 'N';
  If GetFormOfType(TDispSetForm)<>nil then begin
    mDispSetForm := TDispSetForm(GetFormOfType(TDispSetForm));
    if mDispSetForm.ResponseCheck.Checked then
      DataSet.FieldByname('RESPONSE').AsString := 'Y';
  end;
end;

procedure TDispCallTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  DispSubTypeBrowse.Setup('DISPSUBTYPE','DISPCALLTYPEID',pk,TDispSubTypeForm,DispSubTypeNewRecord);
  PageDispTab.TabVisible := CheckModule('PAGE');
  PageControl.ActivePage := DispSubTypeTab;
  FdidField.Visible      := (mFireID = '28028');
  FdidLabel.Visible      := (mFireID = '28028');
  CustDispCallTypeTab.TabVisible := TCustDispCallTypeForm.IsVisible;
  if CustDispCallTypeTab.TabVisible then begin
    CreateSubForm(TCustDispCallTypeForm,CustDispCallTypeTab);
  end;
  CountButton.Visible := AlpineLogIn;
end;

procedure TDispCallTypeForm.DispSeqTabShow(Sender: TObject);
Var DispCallTypeID : String;
begin
  inherited;
  DispCallTypeID                    := pk;
  DispSeqBrowse.ExplicitWhereClause := ' WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeID);
  DispSeqBrowse.SetUp('DISPSEQCALLTYPE',TDispSeqForm,DispSeqNewRecord);
end;

procedure TDispCallTypeForm.CountButtonClick(Sender: TObject);
begin
  inherited;
  Showmessage(IntToStr(SqlTableRecCount('SELECT COUNT(*) FROM DISPCALL WHERE DISPCALLTYPEID = ' + pk)));
end;

procedure TDispCallTypeForm.DispSeqNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DISPCALLTYPEID').AsString := pk;
end;

procedure TDispCallTypeForm.DispSubTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DISPCALLTYPEID').AsString := PK;
end;

procedure TDispCallTypeForm.PageDispTabShow(Sender: TObject);
Var iCol : Integer;
begin
  inherited;
  PageDispBrowse.ColCount := 0;
  PageDispBrowse.ClearColumns;
  PageDispBrowse.RowCount := PageDispBrowse.FixedRows;

  PageDispBrowse.SetColumn('PAGEGROUPID','PAGEGROUPID',000);
  PageDispBrowse.SetColumn('FDID',       'Agency',     070);
  PageDispBrowse.SetColumn('DESCR',      'Group',      200);
  PageDispBrowse.FixedCols:= 3;  

  Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP ORDER BY DESCR');
  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE FROM FDID WHERE DISPATCH = ' + AddExpr('Y') + ' ORDER BY DEPTNAME');
  Open_Query('PAGEDISP',false,'SELECT * FROM PAGEDISP WHERE DISPCALLTYPEID = ' + PK);

  While Not A('FDID').Eof do begin
    PageDispBrowse.SetColumn(GetField('FDID','FDID').AsString,GetField('FDID','ABBREVIATE').AsString,45);
    A('FDID').Skip(1);
  end;

  While Not A('PAGEGROUP').Eof do begin
    PageDispBrowse.SetValue('PAGEGROUPID',GetField('PAGEGROUP','PAGEGROUPID').AsString);
    PageDispBrowse.SetValue('FDID',       tdbfield('PAGEGROUP','FDID'));
    PageDispBrowse.SetValue('DESCR',      tdbfield('PAGEGROUP','DESCR'));

    for iCol := 3  to PageDispBrowse.ColCount-1 do begin
      If A('PAGEDISP').ExactQueryLocate(['PAGEGROUPID','FDID'],[GetField('PAGEGROUP','PAGEGROUPID').AsString,PageDispBrowse.ColumnNames[icol] ]) then
        PageDispBrowse.SetValue(PageDispBrowse.ColumnNames[icol],'Yes')
      else
        PageDispBrowse.SetValue(PageDispBrowse.ColumnNames[icol],'-')
    end;

    A('PAGEGROUP').Skip(1);
  end;

  CloseApollo('PAGEDISP');
  CloseApollo('FDID');
  CloseApollo('PAGEGROUP');
  PageDispBrowse.Invalidate;
end;

procedure TDispCallTypeForm.PageDispBrowseDblClick(Sender: TObject);
Var FdidString     : String;
    DispCallTypeID : String;
    PageGroupID    : String;
begin
  inherited;
  FdidString     := PageDispBrowse.ColumnNames[PageDispBrowse.Col];
  DispCallTypeID := PK;
  PageGroupID    := PageDispBrowse.GetValue('PAGEGROUPID');

  Open_Query('PAGEDISP',true,'SELECT * FROM PAGEDISP WHERE FDID = ' + AddExpr(FdidString) + ' AND DISPCALLTYPEID = ' + DispCallTypeID + ' AND PAGEGROUPID = ' + PageGroupID);
  If A('PAGEDISP').RecordsExist then begin
    A('PAGEDISP').Delete;
    PageDispBrowse.Cells[PageDispBrowse.Col,PageDispBrowse.Row] := '-';
  end else begin
    A('PAGEDISP').Append;
    GetField('PAGEDISP','FDID').AsString           := FdidString;
    GetField('PAGEDISP','DISPCALLTYPEID').AsString := DispCallTypeID;
    GetField('PAGEDISP','PAGEGROUPID').AsString    := PageGroupID;
    A('PAGEDISP').Post;
    PageDispBrowse.Cells[PageDispBrowse.Col,PageDispBrowse.Row] := 'Yes';
  end;
  CloseApollo('PAGEDISP');
  PageDispBrowse.SetFocus;
end;

procedure TDispCallTypeForm.PageDispBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key = VK_RETURN) or (key = VK_SPACE) then
    PageDispBrowseDblClick(self);
end;

procedure TDispCallTypeForm.RespCallTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  RespCallTypeIDField.SqlExpr := 'SELECT * FROM DISPCALLTYPE WHERE RESPONSE = ' + AddExpr('Y');
end;

procedure TDispCallTypeForm.TypeFieldExit(Sender: TObject);
begin
  inherited;
  If (TypeField.Value = '') or (TypeField.Value = 'NFIRS') or (TypeField.Value = 'EMS')then begin
  end else begin
    TypeField.Value := '';
    ShowMessage('Enter NFIRS, EMS or Blank');
    TypeField.SetFocus;
  end;  
end;

procedure TDispCallTypeForm.IconButtonClick(Sender: TObject);
begin
  inherited;
  SetIconField(self,IconField);
end;

end.  
