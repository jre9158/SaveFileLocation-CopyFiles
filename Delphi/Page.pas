unit Page;

interface

uses
  sysutils,
  graphics,
  forms,
  dialogs,
  extctrls,
  stdctrls,
  db,
  dbtables,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  comctrls,
  Buttons,
  Controls,
  Classes,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvGlowButton,
  AlpineGlowButton,
  NormalBase,
  CommonDisp,
  CommonDispVar,
  AlpineBase,
  AdvPanel,
  AlpineMemo,
  AdvSplitter,
  Blink,
  AdvObj,
  AdvOfficeImage,
  AlpinePanel;

type
  TPageForm = class(TAlpineBaseForm)
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    TitleImage: TImage;
    Panel4: TPanel;
    BaseBottomPanel: TAdvPanel;
    Label1: TLabel;
    CloseButton: TAlpineGlowButton;
    PageSetButton: TAlpineGlowButton;
    PageHistBrowse: TAlpineGlowButton;
    SendButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    NarrButton: TAlpineGlowButton;
    AdvPanel1: TAdvPanel;
    PageLabel: TBlinkLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel10: TPanel;
    Label2: TLabel;
    PageListAvailable: TAlpineTMSStringGrid;
    PageListSendPanel: TPanel;
    Label4: TLabel;
    PageListSend: TAlpineTMSStringGrid;
    PageListCenterPanel: TPanel;
    AlpineGlowButton2: TAlpineGlowButton;
    AddOnePerson: TAlpineGlowButton;
    PageListSearchButton: TAlpineGlowButton;
    Splitter2: TSplitter;
    Panel9: TPanel;
    Panel11: TPanel;
    Label3: TLabel;
    PageGroupAvailable: TAlpineTMSStringGrid;
    Panel13: TPanel;
    Label5: TLabel;
    PageGroupSend: TAlpineTMSStringGrid;
    Panel14: TPanel;
    AddOneGroup: TAlpineGlowButton;
    AlpineGlowButton3: TAlpineGlowButton;
    PageGroupSearchButton: TAlpineGlowButton;
    FdidPanel: TAlpinePanel;
    fdidbrowse: TAlpineTMSStringGrid;
    Panel0B: TAlpinePanel;
    NarrField: TAlpineMemo;
    PageQueueListButton: TAlpineGlowButton;
    procedure SendButtonClick(Sender: TObject);
    procedure AddOnePersonClick(Sender: TObject);
    procedure ClearOnePersonClick(Sender: TObject);
    procedure AddOneGroupClick(Sender: TObject);
    procedure ClearOneGroupClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PageSetButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CloseButtonClick(Sender: TObject);
    procedure PageListSendDblClick(Sender: TObject);
    procedure PageListAvailableDblClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure EnterGrid(Sender: TObject);
    procedure ExitGrid(Sender: TObject);
    procedure NarrFieldEnter(Sender: TObject);
    procedure NarrFieldExit(Sender: TObject);
    procedure PageHistBrowseClick(Sender: TObject);
    procedure NarrButtonClick(Sender: TObject);
    procedure PageListSearchButtonClick(Sender: TObject);
    procedure PageGroupSearchButtonClick(Sender: TObject);
    procedure NarrFieldChange(Sender: TObject);
    procedure fdidbrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure PageQueueListButtonClick(Sender: TObject);
  private
    CodeWidth        : Integer;
    SortOrd          : String;
    SortOrdPageGroup : String;
    procedure UpdateIndividualGrid;
    procedure UpdateGroupGrid;
    Procedure LoadFdidBrowse;
    function GetFdidWhere(TableName : String): String;

  public
    procedure SendPage(NarrVar: String);
  end;

var
  PageForm: TPageForm;

implementation

uses GenFunc,
     CommonFunc,
     CommonVar,
     SortGridView,
     PageSet,
     PageComm,
     EncryptStr,
     CommonPage,
     PageQueue,
     SysNarrSelect,
     SecSet;

{$R *.DFM}

procedure TPageForm.FormCreate(Sender: TObject);
begin
  SetPageSet(globalAdoConnection,mFireid);
  CodeWidth               := IIfI(PagingUseCode,100,1);
  SortOrd                 := IIF(PagingUseCode,'PAGELIST.CODE,PAGELIST.DESCR','PAGELIST.DESCR,PAGELIST.CODE');
  SortOrdPageGroup        := IIF(PagingUseCode,'PAGEGROUP.CODE,PAGEGROUP.DESCR','PAGEGROUP.DESCR,PAGEGROUP.CODE');
  TitleImage.Picture.Icon := GetGlowImageIcon('PAGE32');
  PageSetButton.Visible   := CheckSecVar('PAGESETUP');
  PageHistBrowse.Visible  := CheckSecVar('PAGEVIEW');
  NarrButton.Visible      := (SqlTableRecCount('SELECT COUNT(*) FROM SYSNARR LEFT JOIN SYSTABLE ON (SYSNARR.SYSTABLEID = SYSTABLE.SYSTABLEID) WHERE SYSTABLE.TABLENAME = ' + AddExpr('PAGEQUEUE')) > 0);
  FdidPanel.Visible       := MultiFdid;
  LoadFdidBrowse;
  UpdateIndividualGrid;
  UpdateGroupGrid;
end;

procedure TPageForm.AddOnePersonClick(Sender: TObject);
begin
  If (PageListAvailable.RowCount > 1) and (PageListAvailable.Row > 0) and (PageListAvailable.Row < PageListAvailable.RowCount) then begin
    PageListSend.SetValue('PAGELISTID',PageListAvailable.GetValue('PAGELISTID'));
    PageListSend.SetValue('CODE',      PageListAvailable.GetValue('CODE'));
    PageListSend.SetValue('DESCR',     PageListAvailable.GetValue('DESCR'));
    PageListAvailable.DeleteCurrentRow;
    PageListAvailable.SetFocus;
  end;
end;

procedure TPageForm.ClearOnePersonClick(Sender: TObject);
begin
  If (PageListSend.RowCount > 1) and (PageListSend.Row > 0) and (PageListSend.Row < PageListSend.RowCount) then begin
    PageListAvailable.SetValue('PAGELISTID',PageListSend.GetValue('PAGELISTID'));
    PageListAvailable.SetValue('CODE',      PageListSend.GetValue('CODE'));
    PageListAvailable.SetValue('DESCR',     PageListSend.GetValue('DESCR'));
    PageListSend.DeleteCurrentRow;
    PageListSend.SetFocus;
  end;
end;

procedure TPageForm.AddOneGroupClick(Sender: TObject);
begin
  If (PageGroupAvailable.RowCount > 1) and (PageGroupAvailable.Row > 0) and (PageGroupAvailable.Row < PageGroupAvailable.RowCount) then begin
    PageGroupSend.SetValue('PAGEGROUPID',PageGroupAvailable.GetValue('PAGEGROUPID'));
    PageGroupSend.SetValue('CODE',       PageGroupAvailable.GetValue('CODE'));
    PageGroupSend.SetValue('DESCR',      PageGroupAvailable.GetValue('DESCR'));
    PageGroupAvailable.DeleteCurrentRow;
    PageGroupAvailable.SetFocus;
  end;
end;

procedure TPageForm.ClearOneGroupClick(Sender: TObject);
begin
  If (PageGroupSend.RowCount > 1) and (PageGroupSend.Row > 0) and (PageGroupSend.Row < PageGroupSend.RowCount) then begin
    PageGroupAvailable.SetValue('PAGEGROUPID',PageGroupSend.GetValue('PAGEGROUPID'));
    PageGroupAvailable.SetValue('CODE',       PageGroupSend.GetValue('CODE'));
    PageGroupAvailable.SetValue('DESCR',      PageGroupSend.GetValue('DESCR'));
    PageGroupSend.DeleteCurrentRow;
    PageGroupSend.SetFocus;
  end;
end;

function TPageForm.GetFdidWhere(TableName: String): String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid and FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR ' + TableName + '.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then begin
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
      GetFdidWhere := WhereString + ' OR (' + TableName + '.FDID IS NULL) OR (' + TableName + '.FDID = ' + AddExpr('') + ')';
    end else
      GetFdidWhere := '';
  end else
    GetFdidWhere := '';
end;

procedure TPageForm.UpdateIndividualGrid;
Var FdidWhere : String;
    SQLVar    : String;                                          
begin
  PageListAvailable.Clear;
  PageListAvailable.ClearColumns;
  PageListAvailable.ColCount       := 0;
  PageListAvailable.RowCount       := 0;
  PageListAvailable.FixedRowAlways := true;
  PageListAvailable.RowCount       := PageListAvailable.FixedRows;
  FdidWhere                        := GetFdidWhere('PAGELIST');

  PageListAvailable.SetColumn('PAGELISTID',       'PAGELISTID',000);
  PageListAvailable.SetColumn('CODE',             'ID',        CodeWidth);
  PageListAvailable.SetColumn('DESCR',            'Recipient', 250);
  PageListAvailable.SetColumn('PAGELISTTYPEDESCR','Type',      300);

  SQLVar                           := 'SELECT PAGELISTID, PAGELIST.CODE, PAGELIST.DESCR, PAGELISTTYPE.DESCR PAGELISTTYPEDESCR FROM PAGELIST ' +
                                      'LEFT JOIN PAGELISTTYPE ON (PAGELISTTYPE.PAGELISTTYPEID = PAGELIST.PAGELISTTYPEID) WHERE PAGELIST.ACTIVE = ' + AddExpr('Y') + IIf(FdidWhere = '','',' AND ' + GetFdidWhere('PAGELIST')) + ' ORDER BY ' + SortOrd;
  Open_Query('PAGELIST',false,SQLVar);

  While Not A('PAGELIST').Eof do begin
    If (tdbfield('PAGELIST','DESCR') <> '') then begin
      PageListAvailable.SetValue('PAGELISTID',       GetField('PAGELIST','PAGELISTID').AsString);
      PageListAvailable.SetValue('CODE',             tdbfield('PAGELIST','CODE'));
      PageListAvailable.SetValue('DESCR',            tdbfield('PAGELIST','DESCR'));
      PageListAvailable.SetValue('PAGELISTTYPEDESCR',tdbfield('PAGELIST','PAGELISTTYPEDESCR'));
    end;
    A('PAGELIST').Skip(1);
  end;
  CloseApollo('PAGELIST');
  PageListAvailable.FixedCols := 0;
  PageListAvailable.Invalidate;

  PageListSend.Clear;
  PageListSend.ClearColumns;
  PageListSend.ColCount       := 0;
  PageListSend.RowCount       := 0;
  PageListSend.FixedRowAlways := true;
  PageListSend.RowCount       := PageListSend.FixedRows;

  PageListSend.SetColumn('PAGELISTID','PAGELISTID',0000);
  PageListSend.SetColumn('CODE',      'ID',        CodeWidth);
  PageListSend.SetColumn('DESCR',     'Recipient', 1000);
  PageListSend.FixedCols := 0;
end;

procedure TPageForm.UpdateGroupGrid;
Var FdidWhere : String;
    SQLVar    : String;
begin
  PageGroupAvailable.Clear;
  PageGroupAvailable.ClearColumns;
  PageGroupAvailable.ColCount       := 0;
  PageGroupAvailable.RowCount       := 0;
  PageGroupAvailable.FixedRowAlways := true;
  PageGroupAvailable.RowCount       := PageGroupAvailable.FixedRows;

  PageGroupAvailable.SetColumn('PAGEGROUPID','PAGEGROUPID',0000);
  PageGroupAvailable.SetColumn('CODE',       'Group',      CodeWidth);
  PageGroupAvailable.SetColumn('DESCR',      'Group',      1000);

  FdidWhere := GetFdidWhere('PAGEGROUP');
  If Not (FdidWhere = '') then
    FdidWhere := 'WHERE ' + FdidWhere; 

  If ((mFireID = '52009') or (mFireID = '52211')) then
    SQLVar := 'SELECT * FROM PAGEGROUP WHERE HIDEGROUP = ' + AddExpr('N') + ' ORDER BY ' + SortOrdPageGroup
  else
    SQLVar := 'SELECT * FROM PAGEGROUP ' + FdidWhere + ' ORDER BY ' + SortOrdPageGroup;

  Open_Query('PAGEGROUP',false,SQLVar);

  While Not A('PAGEGROUP').Eof do begin
    If (tdbfield('PAGEGROUP','DESCR') <> '') then begin
      PageGroupAvailable.SetValue('PAGEGROUPID',GetField('PAGEGROUP','PAGEGROUPID').AsString);
      PageGroupAvailable.SetValue('CODE',       GetField('PAGEGROUP','CODE').AsString);
      PageGroupAvailable.SetValue('DESCR',      GetField('PAGEGROUP','DESCR').AsString);
    end;  
    A('PAGEGROUP').Skip(1);
  end;
  CloseApollo('PAGEGROUP');
  PageGroupAvailable.FixedCols := 0;
  PageGroupAvailable.Invalidate;

  PageGroupSend.Clear;
  PageGroupSend.ClearColumns;
  PageGroupSend.ColCount       := 0;
  PageGroupSend.RowCount       := 0;
  PageGroupSend.FixedRowAlways := true;
  PageGroupSend.RowCount       := PageGroupSend.FixedRows;

  PageGroupSend.SetColumn('PAGEGROUPID','PAGEGROUPID',0000);
  PageGroupSend.SetColumn('CODE',       'ID',         CodeWidth);
  PageGroupSend.SetColumn('DESCR',      'Group',      1000);
  PageGroupSend.FixedCols      := 0;
end;

procedure TPageForm.SendButtonClick(Sender: TObject);
var m: String;
begin
  If trim(NarrField.Text) = '' then begin
    MessageDlg( 'Cannot send a blank message.  Enter a message and try again.',mtwarning,[mbok],0);
    NarrField.SetFocus;
    exit;
  end;

  If PageListSend.RowCount + PageGroupSend.RowCount < 3 then begin
    MessageDlg( 'You must select at least one person or group to send the message to.',mtwarning,[mbok],0);
    exit;
  end;
  m := IIf(mFireID = 'KOCEM','EMS: ','') + NarrField.Text;
  if IncludeSignature then
    m := m+SayPageSignature(GlobalAdoConnection);
  SendPage(m);
end;

procedure TPageForm.SendPage(NarrVar: String);
Var PageQueueID  : String;
    PageListRow  : Integer;
    PageGroupRow : Integer;
    PageQueueListStringList: TStringList;
    mSubject: String;
begin
  if IsMark then
    mSubject := 'RedNMX Page'
  else
    mSubject := '';
  PageQueueID := LoadPageQueue(GlobalAdoConnection,mSubject,NarrVar,'MANUAL',nil);
  RunSQL(GlobalAdoConnection,'UPDATE PAGEQUEUE SET FDID = ' + AddExpr(secFDID) + ' WHERE PAGEQUEUEID = ' + pkValue(PageQueueID));

  Open_Query('PAGELINK',true,'SELECT * FROM PAGELINK WHERE 1=2');
  For PageListRow := 1 to PageListSend.RowCount - 1 do begin
    LoadPageQueueList(PageListSend.GetValue('PAGELISTID', PageListRow),PageQueueID,GlobalAdoConnection);
  end;

  PageQueueListStringList := TStringList.Create;

  For PageGroupRow := 1 to PageGroupSend.RowCount - 1 do begin
    A('PAGELINK').UpdateSQL('SELECT PAGELISTID FROM PAGELINK WHERE PAGEGROUPID = ' + PageGroupSend.GetValue('PAGEGROUPID', PageGroupRow));
    While Not A('PAGELINK').Eof do begin
      LoadPageQueueList(Getfield('PAGELINK','PAGELISTID').AsString,PageQueueID,PageQueueListStringList,GlobalAdoConnection);
      A('PAGELINK').Skip(1);
    end;
  end;
  PageQueueListStringList.Free;

  CloseApollo('PAGELINK');
  CloseApollo('PAGEQUEUE');
  If PagingClearSetting then
    ClearButtonClick(self);
  ShowMessage('Page has been sent to the paging terminal.');
end;

procedure TPageForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TPageForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TPageForm.PageListSearchButtonClick(Sender: TObject);
begin
  PageListAvailable.SearchFooter.Visible := Not PageListAvailable.SearchFooter.Visible;
end;

procedure TPageForm.PageListSendDblClick(Sender: TObject);
begin
  ClearOnePersonClick(self);
end;

procedure TPageForm.PageQueueListButtonClick(Sender: TObject);
begin
  SortGridViewDriver('PAGEQUEUELISTALL',Nil,Nil,nil);
end;                                   

procedure TPageForm.PageListAvailableDblClick(Sender: TObject);
begin
  AddOnePersonClick(self);
end;

procedure TPageForm.ClearButtonClick(Sender: TObject);
begin
  UpdateIndividualGrid;
  UpdateGroupGrid;
  NarrField.Text := '';
end;

procedure TPageForm.EnterGrid(Sender: TObject);
begin
  (Sender as TAlpineTMSStringGrid).Color := clYellow;
end;

procedure TPageForm.ExitGrid(Sender: TObject);
begin
  (Sender as TAlpineTMSStringGrid).Color := clwhite;
end;

procedure TPageForm.fdidbrowseCheckBoxClick(Sender: TObject; ACol,   ARow: Integer; State: Boolean);
begin
  UpdateIndividualGrid;
  UpdateGroupGrid;
end;

procedure TPageForm.NarrFieldChange(Sender: TObject);
begin
  If Length(NarrField.Value) > 128 then
    PageLabel.Visible := true
  else
    PageLabel.Visible := false;
end;

procedure TPageForm.NarrFieldEnter(Sender: TObject);
begin
  NarrField.Color := clyellow;
end;

procedure TPageForm.NarrFieldExit(Sender: TObject);
begin
  NarrField.Color := clwhite;
end;

procedure TPageForm.PageGroupSearchButtonClick(Sender: TObject);
begin
  PageGroupAvailable.SearchFooter.Visible := Not PageGroupAvailable.SearchFooter.Visible;
end;

procedure TPageForm.PageHistBrowseClick(Sender: TObject);
begin
  SortGridViewDriver('PAGEQUEUE',TPageQueueForm,TPageQueueForm.NewRecord,nil);
end;

procedure TPageForm.PageSetButtonClick(Sender: TObject);
Var PKVar : String;
begin
  Open_Query('PAGESET',false,'SELECT PAGESETID FROM PAGESET WHERE FDID = ' + AddExpr(mFireID));
  If GetField('PAGESET','PAGESETID').AsInteger > 0 then
    PKVar := GetField('PAGESET','PAGESETID').AsString
  else
    PKVar := '-1';
  CloseApollo('PAGESET');

  PageSetForm := TPageSetForm.Create(application,'PAGESET',PKVar,TPageSetForm.NewRecord);
  PageSetForm.ShowModal;
  PageSetForm.Free;
end;

procedure TPageForm.NarrButtonClick(Sender: TObject);
begin
  SysNarrSelectForm := TSysNarrSelectForm.Create(application,'PAGEQUEUE','NARR');
  If SysNarrSelectForm.ShowModal = mrOK then
    NarrField.Value := SysNarrSelectForm.NarrField.Value;
  SysNarrSelectForm.Free;
  NarrField.SetFocus;
end;

Procedure TPageForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 3;
  FdidBrowse.RowCount      := 3;
  FdidBrowse.ColWidths[00] := 001;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 200;
                                                         
  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE, SHORTDESCR, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := tdbfield('FDID','ABBREVIATE');
    If (RowNum > 0) then
      FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');
end;

end.  
