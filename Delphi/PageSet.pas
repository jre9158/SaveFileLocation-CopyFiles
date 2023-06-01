unit PageSet;

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
  cusbtn,
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
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  AdvObj,
  AdvGroupBox,
  Gauges,
  SocketLabs, AdvUtil;

type
  TPageSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    PageTabs: TAdvPageControl;
    GenTab: TAdvTabSheet;
    PageCompTab: TAdvTabSheet;
    PageCompBrowse: TAlpineBlockBrowse;
    PageListTab: TAdvTabSheet;
    PageListBrowse: TAlpineBlockBrowse;
    PageGroupTab: TAdvTabSheet;
    PageGroupBrowse: TAlpineBlockBrowse;
    PageLinkTab: TAdvTabSheet;
    PageLinkPanel: TAlpinePanel;
    PageLinkBrowse: TAlpineTMSStringGrid;
    AlpinePanel1: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    PageCompIDLabel: TLabel;
    emailaddresslabel: TLabel;
    AlpineEdit1: TAlpineEdit;
    ClearSettingButton: TAlpineCheckBox;
    AlpineEdit2: TAlpineEdit;
    UseCodeField: TAlpineCheckBox;
    PageCompIDField: TAlpineLookup;
    SendMobUrlToSmartField: TAlpineCheckBox;
    testemailaddress: TAlpineEdit;
    SendtestPage: TButton;
    IncludeSignatureField: TAlpineCheckBox;
    IncludeSignatureLabel: TLabel;
    SendMobUrlToSmartLabel: TLabel;
    ClearSettingLabel: TLabel;
    UseCodeLabel: TLabel;
    FdidField: TAlpineLookup;
    PersButton: TAlpineGlowButton;
    ScrollPanel: TAdvPanel;
    Label8: TLabel;
    Label3: TLabel;
    PageGroupGauge: TGauge;
    PageListGauge: TGauge;
    PageRestricTab: TAdvTabSheet;
    PageRestrictBrowse: TAlpineBlockBrowse;
    FdidLabel: TLabel;
    PushPanel: TPanel;
    PageListTypeIDField: TAlpineLookup;
    Label4: TLabel;
    ResponderButton: TAlpineGlowButton;
    GroupCheck: TAlpineCheckBox;
    Label5: TLabel;
    PageListButton: TAlpineGlowButton;
    SocketLabsButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure PageCompTabShow(Sender: TObject);
    procedure PageListTabShow(Sender: TObject);
    procedure PageGroupTabShow(Sender: TObject);
    procedure PageLinkTabShow(Sender: TObject);
    procedure PageLinkBrowseDblClick(Sender: TObject);
    procedure PageLinkBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PersButtonClick(Sender: TObject);
    procedure testemailaddressChange(Sender: TObject);
    procedure SendtestPageClick(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FdidFieldExit(Sender: TObject);
    procedure ResponderButtonClick(Sender: TObject);
    procedure PageListButtonClick(Sender: TObject);
    procedure SocketLabsButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  PageSetForm  : TPageSetForm;

implementation
uses GenFunc,
     SortGridView,
     PageComp,
     applst,
     FormFunc,
     SecSet,
     CommonPage,
     CommonFunc,
     PageList,
     PageGroup,
     CommonVar;

{$R *.DFM}

class procedure TPageSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TPageSetForm.FdidFieldEnter(Sender: TObject);
begin
  inherited;
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y');
end;

procedure TPageSetForm.FdidFieldExit(Sender: TObject);
begin
  inherited;
  If PageTabs.ActivePage = PageGroupTab then
    PageGroupTabShow(self)
  else if PageTabs.ActivePage = PageListTab then
    PageListTabShow(self)
  else if PageTabs.ActivePage = PageLinkTab then
    PageLinkTabShow(self);
end;

procedure TPageSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  FdidField.Value                := IIf(MultiFdid,SecFdid,'');
  FdidLabel.Visible              := MultiFdid or AlpineLogIn;
  FdidField.Visible              := MultiFdid or AlpineLogIn;

  PersButton.Visible             := AlpineLogon;
  PageTabs.ActivePage            := GenTab;
  PageCompIDLabel.Visible        := AlpineLogon;
  PageCompIDField.Visible        := PageCompIDLabel.Visible;
  SendMobURLToSmartField.Visible := CheckModule('MOBURL') and AlpineLogon;
  SendMobURLToSmartLabel.Visible := SendMobURLToSmartField.Visible;
  emailaddresslabel.Visible      := AlpineLogon;
  testemailaddress.Visible       := AlpineLogon;
  SendtestPage.Visible           := AlpineLogon;
  testemailaddress.Text          := '';
  PageRestricTab.TabVisible      := AlpineLogon;
  PushPanel.Visible              := AlpineLogon;
end;

procedure TPageSetForm.FormShow(Sender: TObject);
begin
  inherited;
  FdidField.Enabled := (SecFdid = '');
end;

procedure TPageSetForm.ResponderButtonClick(Sender: TObject);
var PersDevice: TApolloData;
    PageListTable: TApolloData;
    PageCompTable: TApolloData;
    PageLinkTable: TApolloData;
    PageLinkPers: TApolloData;
    PageCompID: String;
    PageListID: String;
begin
  inherited;
  //ADD ENTRIES
  If not BooleanMessageDlg('This procedure will enter all on roster personnel with a registered responder device into paging.'+crlf+crlf+'Proceed?') then
    exit;

  If PageListTypeIDField.Value = '' then
    If not BooleanMessageDlg('No type set, proceed with adding responder app users?') then exit;
  try
    try
      PersDevice     := Open_Query('SELECT PERSID, FDID, LNAME, FNAME, MNAME, PERSCODE FROM PERS ' +
                                   ' WHERE PERSID IN (SELECT DISTINCT PERSID FROM PERSDEVICE WHERE DATETIMEUPDATE > ' + FormatDateTimeForSQL(Now-182,GlobalAdoConnection.TableType) + ') ' +
                                   ' AND PERS.ATTEND = ' + AddExpr('Y'));
      PageListTable  := Open_Query(true,'SELECT * FROM PAGELIST WHERE 1=2');
      PageCompTable  := Open_Query('SELECT PAGECOMPID FROM PAGECOMP WHERE PAGECOMPTYPEID = ' + AddExpr('8'));
      PageLinkTable  := Open_Query('SELECT * FROM PAGELINK WHERE 1=2');
      PageLinkPers   := Open_Query(true,'SELECT * FROM PAGELINK WHERE 1=2');

      PageListGauge.Progress  := 0;
      PageGroupGauge.Progress := 0;
      ScrollPanel.Visible     := True;
      PageListGauge.MaxValue  := PersDevice.RecordCount;

      if PageCompTable.RecordsExist then
        PageCompID  := tdbfield(PageCompTable,'PAGECOMPID')
      else
        TableInsertReturnPK('PAGECOMP',['CODE', 'COMPANY', 'PAGECOMPTYPEID'],['RESPPUSH','Responder Push Notification','8'],PageCompID);

      while not PersDevice.eof do
        begin
          try
            try
              PageListTable.UpdateSQL('SELECT * FROM PAGELIST WHERE PERSID = ' + pkvalue(GetField(PersDevice,'PERSID').AsString) + ' AND PAGECOMPID = ' + pkvalue(PageCompId));

              If not PageListTable.RecordsExist then
                PageListTable.Append
              else
                PageListTable.Edit;

              GetField(PageListTable,'FDID').AsString        := tdbfield(PersDevice,'FDID');
              GetField(PageListTable,'DESCR').AsString       := tdbfield(PersDevice,'LNAME') + ', ' + tdbfield(PersDevice,'FNAME') + ' ' + tdbfield(PersDevice,'MNAME');
              GetField(PageListTable,'PERSID').AsString      := tdbfield(PersDevice,'PERSID');
              GetField(PageListTable,'CODE').AsString        := tdbfield(PersDevice,'PERSCODE');
              GetField(PageListTable,'PAGECOMPID').AsString  := PageCompID;
              GetField(PageListTable,'ACTIVE').AsString      := 'Y';

              If PageListTypeIDField.Value <> '' then
                GetField(PageListTable,'PAGELISTTYPEID').AsString  := PageListTypeIDField.Value;

              PageListTable.Post;

              if GroupCheck.Checked then
              begin
                PageListID := GetField(PageListTable,'PAGELISTID').AsString;

                if PageListID <> '' then
                begin
                  PageLinkTable.UpdateSQL('SELECT PAGELINK.PAGEGROUPID, PAGELINK.FDID FROM PAGELINK ' +
                                          ' LEFT JOIN PAGELIST ON (PAGELIST.PAGELISTID = PAGELINK.PAGELISTID) ' +
                                          ' WHERE PAGELIST.PERSID = ' + GetField(PersDevice,'PERSID').AsString);
                  PageGroupGauge.MaxValue := PageLinkTable.RecordCount;

                  while Not PageLinkTable.eof do
                    begin
                      try
                        try
                          PageLinkPers.UpdateSQL('SELECT * FROM PAGELINK WHERE PAGEGROUPID = ' + AddExpr(tdbfield(PageLinkTable,'PAGEGROUPID')) +
                                                 ' AND PAGELISTID = ' + AddExpr(PageListID));

                          if Not PageLinkPers.RecordsExist then begin
                            PageLinkPers.Append;

                            GetField(PageLinkPers,'FDID').AsString        := tdbfield(PageLinkTable,'FDID');
                            GetField(PageLinkPers,'PAGEGROUPID').AsString := tdbfield(PageLinkTable,'PAGEGROUPID');
                            GetField(PageLinkPers,'PAGELISTID').AsString  := PageListID;

                            PageLinkPers.Post;
                          end;

                        finally
                          PageGroupGauge.Progress := PageGroupGauge.Progress + 1;
                          PageLinkTable.Skip(1);
                        end;
                      Except
                        on E: Exception do
                          AppendToLog ('Error in PageSet:ResponderButtonClick() in PageLinkTable On PersID :' + GetField(PersDevice,'PERSID').AsString + ' Error: ' + E.Message);
                      end;
                    end;
                  end;
                end;
            Except
            on E: Exception do
              AppendToLog ('Error in PageSet:ResponderButtonClick() in PersDeviceTable On PersID :' + GetField(PersDevice,'PERSID').AsString + ' Error: ' + E.Message);
            end;
        finally
          PageListGauge.Progress  := PageListGauge.Progress + 1;
          PageGroupGauge.Progress := 0;
          PersDevice.Skip(1);
        end;
      end;
    ShowMessage('Complete!');
    finally
      PersDevice.Free;
      PageListTable.Free;
      PageCompTable.Free;
      PageLinkTable.Free;
      PageLinkPers.Free;
      PageListGauge.Progress  := 0;
      PageGroupGauge.Progress := 0;
      ScrollPanel.Visible     := false;
    end;
  Except
    on E: Exception do
      ShowMessage('Failed to import. -> ' + E.Message);
    end;


end;


procedure TPageSetForm.PersButtonClick(Sender: TObject);
var PageListTable : TApolloData;
    PersTable     : TApolloData;
    i             : Integer;
  procedure transfer(mField: String);
  Var PhonePin : String;
  begin
    PhonePin := substr(tdbfield(PersTable,mfield),1,3)+substr(tdbfield(PersTable,mfield),5,3)+substr(tdbfield(PersTable,mfield),9,4);
    If Length(alltrim(PhonePin)) = 10 then begin
      PageListTable.UpdateSQL('SELECT * FROM PAGELIST WHERE PERSID = ' + GetField(PersTable,'PERSID').AsString + ' AND FDID = ' + edbfield(PersTable,'FDID') + ' AND PHONEPIN = ' + AddExpr(PhonePin));
      If Not PageListTable.RecordsExist then begin
        i := i + 1;
        PageListTable.Append;
        GetField(PageListTable,'FDID').AsString     := tdbfield(PersTable,'FDID');
        GetField(PageListTable,'DESCR').AsString    := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME') + ' ' + tdbfield(PersTable,'MNAME');
        GetField(PageListTable,'PERSID').AsString   := tdbfield(PersTable,'PERSID');
        GetField(PageListTable,'CODE').AsString     := tdbfield(PersTable,'PERSCODE');
        GetField(PageListTable,'PHONEPIN').AsString := PhonePin;
        PageListTable.Post;
      end;  
    end;
  end;

begin
  inherited;
  If not BooleanMessageDlg('This utility will query the main personnel table and add a record for each record having a valid phone'+
    'number in either the PERS.PAGER or PERS.CELL phone numbers.  '+
    'Fire department personnel will then have to go through these records and update the applicable carrier.'+crlf+crlf+'Proceed?') then exit;
  try
    PersTable     := Open_Query('SELECT PERSID, CELL, PAGER, FDID, LNAME, FNAME, MNAME, PERSCODE FROM PERS WHERE ATTEND = ' + AddExpr('Y'));
    PageListTable := open_query(true,'SELECT * FROM PAGELIST WHERE 1=2');
    i := 0;
    while not PersTable.eof do begin
      Transfer('CELL');
      Transfer('PAGER');
      PersTable.Skip(1);
    end;
  finally
    PersTable.free;
    PageListTable.free;
  end;
  ShowMessage('Created '+inttostr(i)+' entries in the paging list.  Please go through and assign the carriers.');
end;

procedure TPageSetForm.PageCompTabShow(Sender: TObject);
begin
  inherited;
  PageCompBrowse.Setup('PAGECOMP',TPageCompForm,TPageCompForm.NewRecord);
end;

procedure TPageSetForm.PageListButtonClick(Sender: TObject);
begin
  inherited;
  If PageListButton.ImageName = 'GLOWBUTTONNONE' then begin
    PageListButton.ImageName := 'GLOWBUTTONCHECKED';
  end else begin
    PageListButton.ImageName := 'GLOWBUTTONNONE';
  end;
  PageListTabShow(self)
end;

procedure TPageSetForm.PageListTabShow(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  If (mFireID = 'KOCKW') then
    PageListBrowse.Setup('PAGELISTKOCKW',TPageListForm,TPageListForm.NewRecord)
  else begin
    If PageListButton.ImageName = 'GLOWBUTTONNONE' then
      SQLVar := ' WHERE (1=1)'
    else
      SQLVar := ' WHERE PAGELIST.ACTIVE= ' + AddExpr('Y');
    If Not (FdidField.Value = '') then
      SQLVar := SQLVar + ' AND (PAGELIST.FDID = ' + AddExpr(FdidField.Value) + ' OR PAGELIST.FDID IS NULL OR PAGELIST.FDID = ' + AddExpr('')+ ')';
    PageListBrowse.ExplicitwhereClause := SQLVar;
    PageListBrowse.Setup('PAGELIST',TPageListForm,TPageListForm.NewRecord);
  end;

  PageListButton.Parent                 := PageListBrowse.FButtonPanel;
  PageListButton.Align                  := alleft;
  PageListBrowse.FDeleteButton.Position := bpmiddle;
end;

procedure TPageSetForm.PageGroupTabShow(Sender: TObject);
begin
  inherited;
  If Not (FdidField.Value = '') then
    PageGroupBrowse.ExplicitwhereClause := ' WHERE (PAGEGROUP.FDID = ' + AddExpr(FdidField.Value) + ' OR PAGEGROUP.FDID IS NULL OR PAGEGROUP.FDID = ' + AddExpr('')+ ') ';
  PageGroupBrowse.Setup('PAGEGROUP',TPageGroupForm,TPageGroupForm.NewRecord);
end;

procedure TPageSetForm.PageLinkTabShow(Sender: TObject);
Var iCol : Integer;
begin
  inherited;
  ScrollPanel.Visible           := true;
  PageLinkBrowse.Clear;
  PageLinkBrowse.ColCount       := 0;
  PageLinkBrowse.RowCount       := 0;
  PageLinkBrowse.ClearColumns;
  PageLinkBrowse.FixedRowAlways := true;
  PageLinkBrowse.RowCount       := PageLinkBrowse.FixedRows;

  PageLinkBrowse.FixedRowHeight := IIfI(MultiFdid,50,38);

  PageLinkBrowse.SetColumn('PAGELISTID',       'PAGELISTID',001);
  PageLinkBrowse.SetColumn('FDID',             'Agency',    IIf(MultiFDID,60,1));
  PageLinkBrowse.SetColumn('CODE',             'ID',        IIfI(UseCodeField.Checked,100,1));
  PageLinkBrowse.SetColumn('DESCR',            'Pager',     150);
  PageLinkBrowse.SetColumn('PAGELISTTYPEDESCR','Type',      110);

  If FdidField.Value = '' then begin
    Open_Query('PAGELIST',false,'SELECT PAGELIST.FDID, PAGELIST.PAGELISTID, PAGELIST.CODE, PAGELIST.DESCR, PAGELISTTYPE.DESCR PAGELISTTYPEDESCR FROM PAGELIST LEFT JOIN PAGELISTTYPE ON (PAGELIST.PAGELISTTYPEID = PAGELISTTYPE.PAGELISTTYPEID) WHERE PAGELIST.ACTIVE = ' + AddExpr('Y') + ' ORDER BY PAGELIST.DESCR');
    Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP ORDER BY DESCR');
  end else begin
    Open_Query('PAGELIST',false,'SELECT PAGELIST.FDID, PAGELIST.PAGELISTID, PAGELIST.CODE, PAGELIST.DESCR, PAGELISTTYPE.DESCR PAGELISTTYPEDESCR FROM PAGELIST LEFT JOIN PAGELISTTYPE ON (PAGELIST.PAGELISTTYPEID = PAGELISTTYPE.PAGELISTTYPEID) WHERE (PAGELIST.FDID = ' + AddExpr(FdidField.Value) + ' OR PAGELIST.FDID IS NULL OR PAGELIST.FDID = ' + AddExpr('')+ ') AND (PAGELIST.ACTIVE = ' + AddExpr('Y') + ') ORDER BY DESCR');
    Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP WHERE (PAGEGROUP.FDID = ' + AddExpr(FdidField.Value) + ' OR PAGEGROUP.FDID IS NULL OR PAGEGROUP.FDID = ' + AddExpr('')+ ') ORDER BY DESCR');
  end;

  Open_Query('PAGELINK',false,'SELECT * FROM PAGELINK');

  A('PAGEGROUP').GoTop;
  While Not A('PAGEGROUP').Eof do begin
    PageLinkBrowse.SetColumn(GetField('PAGEGROUP','PAGEGROUPID').AsString,IIf(MultiFdid,tdbfield('PAGEGROUP','FDID') + #10#13,'') + GetField('PAGEGROUP','DESCR').AsString,070);
    A('PAGEGROUP').Skip(1);
  end;

  PageListGauge.MaxValue  := A('PAGELIST').QueryRecCount;
  PageListGauge.Progress  := 0;

  PageGroupGauge.MaxValue := PageLinkBrowse.ColCount-1;
  PageGroupGauge.Progress := 0;

  While Not A('PAGELIST').Eof do begin
    PageListGauge.Progress := PageListGauge.Progress + 1;
    Application.ProcessMessages;

    PageLinkBrowse.SetValue('PAGELISTID',       GetField('PAGELIST','PAGELISTID').AsString);
    PageLinkBrowse.SetValue('FDID',             tdbfield('PAGELIST','FDID'));
    PageLinkBrowse.SetValue('CODE',             tdbfield('PAGELIST','CODE'));
    PageLinkBrowse.SetValue('DESCR',            tdbfield('PAGELIST','DESCR'));
    PageLinkBrowse.SetValue('PAGELISTTYPEDESCR',tdbfield('PAGELIST','PAGELISTTYPEDESCR'));

    PageGroupGauge.Progress := 0;
    for iCol := 5  to PageLinkBrowse.ColCount-1 do begin
      If A('PAGELINK').ExactQueryLocate(['PAGELISTID','PAGEGROUPID'],[GetField('PAGELIST','PAGELISTID').AsString,PageLinkBrowse.ColumnNames[icol] ]) then
        PageLinkBrowse.SetValue(PageLinkBrowse.ColumnNames[icol],'Yes')
      else
        PageLinkBrowse.SetValue(PageLinkBrowse.ColumnNames[icol],'');
      PageGroupGauge.Progress := PageGroupGauge.Progress + 1;
      Application.ProcessMessages;
    end;

    A('PAGELIST').Skip(1);
  end;

  PageLinkBrowse.FixedCols := 5;

  CloseApollo('PAGELINK');
  CloseApollo('PAGELIST');
  CloseApollo('PAGEGROUP');
  PageLinkBrowse.Invalidate;
  ScrollPanel.Visible := false;
end;

procedure TPageSetForm.PageLinkBrowseDblClick(Sender: TObject);
var mDescr: String;
begin
  inherited;
  try
    Open_Query('PAGELINK',true,'SELECT * FROM PAGELINK WHERE PAGEGROUPID = ' + PageLinkBrowse.ColumnNames[PageLinkBrowse.Col] + ' AND PAGELISTID = ' + PageLinkBrowse.GetValue('PAGELISTID'));
    Open_query('PAGELIST',false,'SELECT * FROM PAGELIST WHERE PAGELISTID = ' + PageLinkBrowse.GetValue('PAGELISTID'));
    mDescr := sqllookup(PageLinkBrowse.ColumnNames[PageLinkBrowse.Col],'PAGEGROUPID','PAGEGROUP','CODE')+' for '+tdbfield('PAGELIST','DESCR')+'-'+tdbfield('PAGELIST','PHONEPIN');

    If A('PAGELINK').RecordsExist then begin
      CommonInsertSecRecAud('PAGELINK', 'DELETE', GetField('PAGELINK','PAGELINKID').AsString,'Deleted '+mDescr);    
      A('PAGELINK').Delete;
      PageLinkBrowse.Cells[PageLinkBrowse.Col,PageLinkBrowse.Row] := '';
    end else begin
      A('PAGELINK').Append;
      GetField('PAGELINK','PAGEGROUPID').AsString := PageLinkBrowse.ColumnNames[PageLinkBrowse.Col];
      GetField('PAGELINK','PAGELISTID').AsString  := PageLinkBrowse.GetValue('PAGELISTID');
      A('PAGELINK').Post;
      CommonInsertSecRecAud('PAGELINK', 'NEW', GetField('PAGELINK','PAGELINKID').AsString,'Added '+mDescr);      
      PageLinkBrowse.Cells[PageLinkBrowse.Col,PageLinkBrowse.Row] := 'Yes';
    end;
  finally
    CloseApollo('PAGELINK');
    CloseApollo('PAGELIST');    
  end;  
  PageLinkBrowse.SetFocus;
end;

procedure TPageSetForm.PageLinkBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key = VK_RETURN) or (key = VK_SPACE) then
    PageLinkBrowseDblClick(self);
end;

procedure TPageSetForm.SendtestPageClick(Sender: TObject);
begin
  inherited;
  SendEmailToEmailAddress(GlobalAdoConnection,testemailaddress.text,'Test Email','This is a test email from the Alpine Software paging service.');
  ShowMessage('Page Queued');  
end;

procedure TPageSetForm.SocketLabsButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SocketLabsForm') then
    SocketLabsForm :=TSocketLabsForm.Create(self);
  SocketLabsForm.Show;
end;

procedure TPageSetForm.testemailaddressChange(Sender: TObject);
begin
  inherited;
  SendtestPage.Enabled := Pos('@',testemailaddress.Text)>0;
end;

end.
