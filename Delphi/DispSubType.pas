unit DispSubType;

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
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AlpineMemo,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpinePanel,
  HtmlBtns,
  AlpineCheck,
  ComCtrls;

type
  TDispSubTypeForm = class(TNormalBaseForm)
    PageControl: TPageControl;
    General: TTabSheet;
    CustDispSubTypeTab: TTabSheet;
    Panel1: TPanel;
    PageTab: TTabSheet;
    PagingPanel: TAlpinePanel;
    PageDispBrowse: TAlpineTMSStringGrid;
    AlpinePanel2: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    MyDBEdit2: TAlpineEdit;
    CodeField: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    RespCallTypeIDField: TAlpineLookup;
    Label6: TLabel;
    HiddenField: TAlpineEdit;
    AlpinePanel3: TAlpinePanel;
    NarrField: TAlpineMemo;
    procedure RespCallTypeIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageDispBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PageDispBrowseDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure PopulatePaging;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  DispSubTypeForm: TDispSubTypeForm;

implementation
uses CommonFunc,
     GenFunc,
     SecSet,
     AppLst,
     CustDispSubType,
     Main;
     
{$R *.DFM}

procedure TDispSubTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  PageTab.TabVisible            := CheckModule('PAGE') and CheckSecVar('PAGE');
  PopulatePaging;
  PageControl.ActivePage        := General;
  CustDispSubTypetab.TabVisible := TCustDispSubTypeForm.TabVisible;
end;

procedure TDispSubTypeForm.FormShow(Sender: TObject);
begin
  inherited;
  If CustDispSubTypeTab.TabVisible then
    CreateSubForm(TCustDispSubTypeForm,CustDispSubTypeTab);
end;

class procedure TDispSubTypeForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('CODE').AsString := ' ';
end;

procedure TDispSubTypeForm.PageDispBrowseDblClick(Sender: TObject);
Var FdidString      : String;
    PageGroupID     : String;
    PageDispSubType : TApolloData;
begin
  inherited;
  FdidString      := PageDispBrowse.ColumnNames[PageDispBrowse.Col];
  PageGroupID     := PageDispBrowse.GetValue('PAGEGROUPID');
  PageDispSubType := Open_Query(true,'SELECT * FROM PAGEDISPSUBTYPE WHERE FDID = ' + AddExpr(FdidString) + ' AND DISPSUBTYPEID = ' + pkValue(pk) + ' AND PAGEGROUPID = ' + PageGroupID);
  If PageDispSubType.RecordsExist then begin
    PageDispSubType.Delete;
    PageDispBrowse.Cells[PageDispBrowse.Col,PageDispBrowse.Row] := '-';
  end else begin
    PageDispSubType.Append;
    GetField(PageDispSubType,'FDID').AsString          := FdidString;
    GetField(PageDispSubType,'DISPSUBTYPEID').AsString := pk;
    GetField(PageDispSubType,'PAGEGROUPID').AsString   := PageGroupID;
    PageDispSubType.Post;
    PageDispBrowse.Cells[PageDispBrowse.Col,PageDispBrowse.Row] := 'Yes';
  end;
  PageDispSubType.Free;
  PageDispBrowse.SetFocus;
end;

procedure TDispSubTypeForm.PageDispBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key = VK_RETURN) or (key = VK_SPACE) then
    PageDispBrowseDblClick(self);
end;

procedure TDispSubTypeForm.PopulatePaging;
Var iCol            : Integer;
    PageGroup       : TApolloData;
    Fdid            : TApolloData;
    PageDispSubType : TApolloData;
begin
  inherited;
  PageDispBrowse.ColCount := 0;
  PageDispBrowse.ClearColumns;

  PageDispBrowse.SetColumn('PAGEGROUPID','PAGEGROUPID',000);
  PageDispBrowse.SetColumn('DESCR',      'Group',      200);

  PageGroup       := Open_Query(false,'SELECT * FROM PAGEGROUP ORDER BY DESCR');
  Fdid            := Open_Query(false,'SELECT FDID, ABBREVIATE FROM FDID WHERE DISPATCH = ' + AddExpr('Y') + ' ORDER BY DEPTNAME');
  PageDispSubType := Open_Query(false,'SELECT * FROM PAGEDISPSUBTYPE WHERE DISPSUBTYPEID = ' + pkValue(PK));

  While Not Fdid.Eof do begin
    PageDispBrowse.SetColumn(tdbfield(Fdid,'FDID'),IIf(tdbfield(Fdid,'ABBREVIATE') = '',tdbfield(Fdid,'ABBREVIATE'),tdbfield(Fdid,'ABBREVIATE')),55);
    Fdid.Skip(1);
  end;
  PageDispBrowse.SetColumn('SPACE1',' ',800);
  PageDispBrowse.FixedCols      := 2;
  PageDispBrowse.FixedRightCols := 1;

  While Not PageGroup.Eof do begin
    PageDispBrowse.SetValue('PAGEGROUPID',GetField(PageGroup,'PAGEGROUPID').AsString);
    PageDispBrowse.SetValue('DESCR',      GetField(PageGroup,'DESCR').AsString);

    For iCol := 2  to PageDispBrowse.ColCount-2 do begin
      If PageDispSubType.ExactQueryLocate(['PAGEGROUPID','FDID'],[GetField(PageGroup,'PAGEGROUPID').AsString,PageDispBrowse.ColumnNames[icol]]) then
        PageDispBrowse.SetValue(PageDispBrowse.ColumnNames[icol],'Yes')
      else
        PageDispBrowse.SetValue(PageDispBrowse.ColumnNames[icol],'-')
    end;
    PageGroup.Skip(1);
  end;

  PageDispSubType.free;
  Fdid.free;
  PageGroup.free;
end;

procedure TDispSubTypeForm.RespCallTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  RespCallTypeIDField.SqlExpr := 'SELECT * FROM DISPCALLTYPE WHERE RESPONSE = ' + AddExpr('Y');
end;

end.
