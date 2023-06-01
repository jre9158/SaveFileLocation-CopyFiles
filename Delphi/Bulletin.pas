unit Bulletin;

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
  AppLst,
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
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  Menus,
  AdvMenus,
  htmltv,
  Jpeg,
  AlpineMemo,
  AlpinePanel,
  AdvOfficeImage,
  AdvGroupBox,
  AdvSplitter, Gauges;

type
  TBulletinForm = class(TNormalBaseForm)
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    RedNMXButton: TAlpineGlowButton;
    RedXRespButton: TAlpineGlowButton;
    AdvOfficeImage1: TAdvOfficeImage;
    BulletinPage: TPageControl;
    NarrTab: TTabSheet;
    ProfileTab: TTabSheet;
    NarrPanel: TAlpinePanel;
    NarrField: TAlpineMemo;
    TopPanel: TPanel;
    AlpinePanel2: TAlpinePanel;
    Label17: TLabel;
    Label18: TLabel;
    BulletinButton: TAlpineGlowButton;
    NewBulletinField: TAlpineEdit;
    ButtonPanelRefresh: TAlpineGlowButton;
    AdvPanelField: TAlpineCheckBox;
    SplitterField: TAlpineCheckBox;
    BulletinProfileBrowse: TAlpineBlockBrowse;
    ProfileField: TAlpineLookup;
    WeatherStatZipCodeLabel: TLabel;
    WeatherStatZipCodeField: TAlpineEdit;
    SplitterOnButton: TAlpineGlowButton;
    SplitterOffButton: TAlpineGlowButton;
    Label1: TLabel;
    WeatherURL: TAlpineLookup;
    ASCRedNMXCheck: TAlpineCheckBox;
    ExtDatabasePanel: TAlpinePanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Label67: TLabel;
    ExtDatabaseField: TEdit;
    ExtUsernameField: TEdit;
    ExtPasswordField: TEdit;
    ExtServerField: TEdit;
    ExtTableTypeField: TEdit;
    ExtDatabaseCheck: TAlpineCheckBox;
    Panel1: TPanel;
    BulletinPanelMainBrowse: TAlpineBlockBrowse;
    BulletinPanel3Browse: TAlpineBlockBrowse;
    BulletinPanel2Browse: TAlpineBlockBrowse;
    BulletinPanel4Browse: TAlpineBlockBrowse;
    PersSplitter: TAdvSplitter;
    AdvSplitter1: TAdvSplitter;
    AdvSplitter2: TAdvSplitter;
    ActiveButton: TAlpineCheckBoxGlowButton;
    FileDialog: TOpenDialog;
    Panel2: TPanel;
    BulletinNarrBrowse: TAlpineBlockBrowse;
    AlpinePanel1: TAlpinePanel;
    LogoButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    Panel3: TPanel;
    LogoImage: TImage;
    LogoPngImage: TAdvOfficeImage;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    Gauge: TGauge;
    procedure FormShow(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure BulletinNarrBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure RedXRespButtonClick(Sender: TObject);
    procedure ButtonPanelRefreshClick(Sender: TObject);
    procedure ProfileTabShow(Sender: TObject);
    procedure BulletinButtonClick(Sender: TObject);
    procedure ProfileFieldExit(Sender: TObject);
    procedure AdvPanelFieldClick(Sender: TObject);
    procedure SplitterOnButtonClick(Sender: TObject);
    procedure SplitterOffButtonClick(Sender: TObject);
    procedure ExtDatabaseCheckClick(Sender: TObject);
    procedure BulletinPanelMainBrowseGridClick(Sender: TObject);
    procedure BulletinPanel2BrowseGridClick(Sender: TObject);
    procedure BulletinPanel3BrowseGridClick(Sender: TObject);
    procedure BulletinPanel3BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BulletinPanelMainBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BulletinPanel2BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BulletinPanel4BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActiveButtonClick(Sender: TObject);
    procedure LogoButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
  private
    procedure ShowImage;
    procedure LoadBulletinPanel;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure BulletinNarrNewRecord(DataSet: TDataSet);
    procedure BulletinPanelNewRecord(DataSet: TDataSet);
    procedure BulletinProfileNewRecord(DataSet: TDataSet);
    procedure ToggleActive(BulletinPanelBrowse: TAlpineBlockBrowse);
    procedure ToggleAlignClient(BulletinPanelBrowse: TAlpineBlockBrowse);
  end;

var
  BulletinForm: TBulletinForm;

implementation
uses GenFunc,
     CommonVar,
     CommonDisp,
     FormFunc,
     BulletinNarr,
     SysDemoPictView,
     BulletinPanel,
     BulletinProfile,
     CommonFunc;

{$R *.DFM}

class procedure TBulletinForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TBulletinForm.FormShow(Sender: TObject);
begin
  inherited;
  BulletinNarrBrowse.Setup('BULLETINNARR','BULLETINID',pk,TBulletinNarrForm,BulletinNarrNewRecord);
  BulletinNarrBrowse.DeleteEnabled := AlpineLogin or (mFireid = '60061') or (mFireid='60032') or (mFireid='23122');
  BulletinNarrBrowse.NewEnabled    := BulletinNarrBrowse.DeleteEnabled;
  RedNMXButton.Visible             := mFireID = ('12345');
  RedXRespButton.Visible           := mFireID = ('12345');
  ProfileTab.TabVisible            := AlpineLogin;
  FdidField.Enabled                := AlpineLogin;
  TitleImage.Picture.Icon          := GetGlowImageIcon('MONITOR32');
  LogoButton.enabled               := AlpineLogin;
  ClearButton.enabled              := AlpineLogin;

  If mFireID = 'HARFO' then begin
    If secFDID = '' then begin
      BulletinNarrBrowse.DeleteEnabled := True;
      BulletinNarrBrowse.NewEnabled    := True;
    end else
      NarrField.Enabled := False;
  end;

  If mFireId = 'TARRA' then begin
    If secFDID = '' then
      NarrField.Enabled   := True
    else
      NarrField.Enabled   := False;
  end;
  BulletinPage.ActivePage := NarrTab;
  ShowImage;  
end;

procedure TBulletinForm.LogoButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  If not FileDialog.execute then
    exit;
  FileName     := UpperCase(FileDialog.FileName);
  try
    Open_Query('SYSSET',True,'SELECT * FROM SYSSET WHERE FDID = ' + AddExpr(FdidField.Value));
    GetTable('SYSSET').Edit;
    If At('.PNG',FileName) > 0 then
      GetField('SYSSET','LOGOEXT').AsString := 'PNG';
    (A('SYSSET').FieldByName('LOGO') as TBlobField).BlobType := ftBlob;
    TBlobField(A('SYSSET').FieldByName('LOGO')).LoadFromFile(FileName);
    GetTable('SYSSET').Post;
  finally
    CloseApollo('SYSSET');
  end;
  ShowImage;
end;

procedure TBulletinForm.ActiveButtonClick(Sender: TObject);
begin
  inherited;
  ButtonPanelRefreshClick(self);
end;

procedure TBulletinForm.AdvPanelFieldClick(Sender: TObject);
begin
  inherited;
  ButtonPanelRefreshClick(self);
end;

procedure TBulletinForm.BulletinButtonClick(Sender: TObject);
Var ASCRedNMX   : TAlpineAdoConnection;
    ErrorString : String;
begin
  inherited;
  If (ProfileField.Value = '') then
    ShowMessage('The Current Bulletin Profile is not entered.')
  else if (NewBulletinField.Value = '') then 
    ShowMessage('The New Bulletin Profile is not entered.')
  else if ASCRedNMXCheck.Checked then begin
    If BooleanMessageDlg('Create profile ' + NewBulletinField.Value + ' from the RedNMX Demonstration System?') then begin
      ASCRedNMX := TAlpineAdoConnection.create(self,'REDNMX.COM,3307:REDNMX','ALPINE','Alp1n3SQL@22!',4);
      ASCRedNMX.Connect(ErrorString);
      Open_Query(ASCRedNMX,'OLDBULLETINPANEL',false,'SELECT * FROM BULLETINPANEL WHERE PROFILE = ' + AddExpr(ProfileField.Value));
      LoadBulletinPanel;
    end;
  end else if ExtDatabaseCheck.Checked then begin
    If BooleanMessageDlg('Create profile ' + NewBulletinField.Value + ' from the ' + ExtServerField.Text + ':' + ExtDatabaseField.Text + ' System?') then begin
      ASCRedNMX := TAlpineAdoConnection.create(self,ExtServerField.Text + ':' + ExtDatabaseField.Text,ExtUsernameField.Text,ExtPasswordField.Text,AnyStrToInt(ExtTableTypeField.Text));
      ASCRedNMX.Connect(ErrorString);
      Open_Query(ASCRedNMX,'OLDBULLETINPANEL',false,'SELECT * FROM BULLETINPANEL WHERE PROFILE = ' + AddExpr(ProfileField.Value));
      LoadBulletinPanel;
    end;
  end else if (ProfileField.Value = NewBulletinField.Value) then begin
    ShowMessage('The old and new profiles are the same.  Please check.')
  end else if (ProfileField.Value <> NewBulletinField.Value) then begin
    If BooleanMessageDlg('Copy profile ' + NewBulletinField.Value + ' from the exiting list to ' + NewBulletinField.Value + '?') then begin
      Open_Query('OLDBULLETINPANEL',false,'SELECT * FROM BULLETINPANEL WHERE PROFILE = ' + AddExpr(ProfileField.Value));
      LoadBulletinPanel;
    end;
  end;
end;

procedure TBulletinForm.LoadBulletinPanel;
begin
  Open_Query('NEWBULLETINPANEL',true, 'SELECT * FROM BULLETINPANEL WHERE 1=2');
  Gauge.MaxValue := A('OLDBULLETINPANEL').QueryRecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;
  While Not A('OLDBULLETINPANEL').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('NEWBULLETINPANEL').UpdateSQL('SELECT * FROM BULLETINPANEL WHERE PROFILE = ' + AddExpr(NewBulletinField.Value) + ' AND COMPONENTNAME = ' + edbfield('OLDBULLETINPANEL','COMPONENTNAME'));
    If A('NEWBULLETINPANEL').RecordsExist then begin
      A('NEWBULLETINPANEL').Edit;
    end else begin
      A('NEWBULLETINPANEL').Append;
      GetField('NEWBULLETINPANEL','ALIGNCLIENT').AsString   := GetField('OLDBULLETINPANEL','ALIGNCLIENT').AsString;
      GetField('NEWBULLETINPANEL','ACTIVE').AsString        := IIf(tdbfield('OLDBULLETINPANEL','ACTIVE') = '','N',tdbfield('OLDBULLETINPANEL','ACTIVE'));
      GetField('NEWBULLETINPANEL','TITLE').AsString         := IIf(ASCRedNMXCheck.Checked,'',tdbfield('OLDBULLETINPANEL','TITLE'));
      GetField('NEWBULLETINPANEL','WIDTH').AsString         := GetField('OLDBULLETINPANEL','WIDTH').AsString;
      GetField('NEWBULLETINPANEL','HEIGHT').AsString        := GetField('OLDBULLETINPANEL','HEIGHT').AsString;
    end;
    GetField('NEWBULLETINPANEL','PROFILE').AsString       := NewBulletinField.value;
    GetField('NEWBULLETINPANEL','CODE').AsString          := GetField('OLDBULLETINPANEL','CODE').AsString;
    GetField('NEWBULLETINPANEL','LEVELSQL').AsString      := GetField('OLDBULLETINPANEL','LEVELSQL').AsString;
    GetField('NEWBULLETINPANEL','COMPONENTNAME').AsString := GetField('OLDBULLETINPANEL','COMPONENTNAME').AsString;
    GetField('NEWBULLETINPANEL','COMPONENTTYPE').AsString := GetField('OLDBULLETINPANEL','COMPONENTTYPE').AsString;
    GetField('NEWBULLETINPANEL','PARENTPANEL').AsString   := GetField('OLDBULLETINPANEL','PARENTPANEL').AsString;
    GetField('NEWBULLETINPANEL','TABORDER').AsString      := GetField('OLDBULLETINPANEL','TABORDER').AsString;
    GetField('NEWBULLETINPANEL','DESCR').AsString         := GetField('OLDBULLETINPANEL','DESCR').AsString;
    A('NEWBULLETINPANEL').Post;
    A('OLDBULLETINPANEL').Skip(1);
  end;
  CloseApollo('NEWBULLETINPANEL');

  Open_Query('BULLETINPROFILE',true,'SELECT * FROM BULLETINPROFILE WHERE PROFILE = ' + AddExpr(NewBulletinField.Value));
  If Not A('BULLETINPROFILE').RecordsExist then begin
    A('BULLETINPROFILE').Append;
    GetField('BULLETINPROFILE','PROFILE').AsString := NewBulletinField.Value;
    GetField('BULLETINPROFILE','PROFILE').AsString := 'Bulletin';
    A('BULLETINPROFILE').Post;
  end;
  CloseApollo('BULLETINPROFILE');
  Gauge.Visible  := false;

  ProfileField.Value     := NewBulletinField.Value;
  NewBulletinField.Value := '';
  If (WeatherStatZipCodeField.Value = '') then
    WeatherStatZipCodeField.Value := SQLLookUp('FDID',mFireID,'FDID','ZIP');

  CloseApollo('OLDBULLETINPROFILE');
  ButtonPanelRefreshClick(self);
  SaveButtonClick(self);
  ShowMessage('All finished');
end;

procedure TBulletinForm.BulletinNarrBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
begin
  inherited;
  If BooleanMessageDlg('WARNING!! ' + #10#13 + #10#13 + ' Deleting Station Message will require a setting change on the Bulletin PC. Please edit existing station message record. ' + #10#13 + #10#13 + ' Continue with Delete?') then
    CanDelete := True
  else
    CanDelete := False;
end;

procedure TBulletinForm.BulletinNarrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString      := ' ';
  DataSet.FieldbyName('BULLETINID').AsString := PK;
  if mFireid='HARFO' then
    DataSet.FieldbyName('FDID').AsString := GetNewFDID;
end;

procedure TBulletinForm.ButtonPanelRefreshClick(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  SQLVar := ' WHERE ' + IIf(ActiveButton.ButtonState = gbUnChecked,'(1=1)','ACTIVE = ' + AddExpr('Y'));

  If AdvPanelField.Checked and SplitterField.Checked then
    SQLVar := SQLVar + ' AND PROFILE = ' + AddExpr(ProfileField.Value)
  else if AdvPanelField.Checked and Not SplitterField.Checked then
    SQLVar := SQLVar + ' AND PROFILE = ' + AddExpr(ProfileField.Value) + ' AND COMPONENTTYPE = ' + AddExpr('ADVPANEL')
  else if Not AdvPanelField.Checked and SplitterField.Checked then
    SQLVar := SQLVar + ' AND PROFILE = ' + AddExpr(ProfileField.Value) + ' AND COMPONENTTYPE = ' + AddExpr('ADVSPLITTER');


  BulletinProfileBrowse.SetUp('BULLETINPROFILE',TBulletinProfileForm,BulletinProfileNewRecord);
  BulletinPanelMainBrowse.ExplicitWhereClause := ' WHERE ' + IIf(ActiveButton.ButtonState = gbUnChecked,'','ACTIVE = ' + AddExpr('Y') + ' AND ') + 'PROFILE = ' + AddExpr(ProfileField.Value) + ' AND LEVELSQL = ' + AddExpr('1');
  BulletinPanelMainBrowse.Setup('BULLETINPANELMAIN',TBulletinPanelForm,BulletinPanelNewRecord);

  BulletinPanelMainBrowse.DefaultRowHeight := 39;
  BulletinPanelMainBrowse.FixedRowHeight   := 22;
  BulletinPanelMainBrowseGridClick(self);

  BulletinPanelMainBrowse.FGrid.ScrollBars := ssNone;
  BulletinPanel2Browse   .FGrid.ScrollBars := ssNone;
  BulletinPanel3Browse   .FGrid.ScrollBars := ssNone;
  BulletinPanel4browse   .FGrid.ScrollBars := ssNone;

  ExtDatabaseCheckClick(self);
end;

procedure TBulletinForm.ClearButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('SYSSET',True,'SELECT * FROM SYSSET WHERE FDID = ' + AddExpr(FdidField.Value));
  GetTable('SYSSET').Edit;
  GetField('SYSSET','LOGO').AsString := '';
  GetTable('SYSSET').Post;
  CloseApollo('SYSSET');
  LogoImage.Picture.Icon := GetGlowImageIcon('CLEAR');
end;

procedure TBulletinForm.ExtDatabaseCheckClick(Sender: TObject);
begin
  inherited;
  ExtDatabasePanel.Visible := ExtDatabaseCheck.Checked;
end;

procedure TBulletinForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'TB');
  SysDemoPictViewForm.Show;
end;

procedure TBulletinForm.RedXRespButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'REDNMX');
  SysDemoPictViewForm.Show;
end;

procedure TBulletinForm.SplitterOffButtonClick(Sender: TObject);
begin
  inherited;
  RunSQL('UPDATE BULLETINPANEL SET ACTIVE = ' + AddExpr('N') + ' WHERE PROFILE = ' + AddExpr(ProfileField.Value) + ' AND COMPONENTTYPE = ' + AddExpr('ADVSPLITTER'));
  ButtonPanelRefreshClick(self);
  ShowMessage('Active panel splitters are turned off');
end;

procedure TBulletinForm.SplitterOnButtonClick(Sender: TObject);
Var SplitterName : String;
begin
  inherited;
  Open_Query('BULLETINPANEL',false,'SELECT * FROM BULLETINPANEL WHERE PROFILE = ' + AddExpr(ProfileField.Value));
  While Not A('BULLETINPANEL').Eof do begin
    SplitterName := Substr(tdbfield('BULLETINPANEL','COMPONENTNAME'),1,at('PANEL',tdbfield('BULLETINPANEL','COMPONENTNAME'))-1) + 'SPLITTER';
    If (tdbfield('BULLETINPANEL','COMPONENTTYPE') = 'ADVPANEL') and (tdbfield('BULLETINPANEL','ACTIVE') = 'Y') and  (tdbfield('BULLETINPANEL','ALIGNCLIENT') = '') then begin
      RunSQL('UPDATE BULLETINPANEL SET ACTIVE = ' + AddExpr('Y') + ' WHERE PROFILE = ' + AddExpr(ProfileField.Value) + ' AND COMPONENTNAME = ' + AddExpr(SplitterName));
    end;
    A('BULLETINPANEL').Skip(1);
  end;
  CloseApollo('BULLETINPANEL');
  ButtonPanelRefreshClick(self);
  ShowMessage('Active panel splitters are turned on');
end;

procedure TBulletinForm.ProfileFieldExit(Sender: TObject);
begin
  inherited;
  ButtonPanelRefreshClick(self);
end;

procedure TBulletinForm.BulletinProfileNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TBulletinForm.ProfileTabShow(Sender: TObject);
begin
  inherited;
  ButtonPanelRefreshClick(self);
end;

procedure TBulletinForm.BulletinPanelMainBrowseGridClick(Sender: TObject);
begin
  inherited;
  BulletinPanel2Browse.ExplicitWhereClause := ' WHERE ' + IIf(ActiveButton.ButtonState = gbUnChecked,'','ACTIVE = ' + AddExpr('Y') + ' AND ') + 'PROFILE = ' + AddExpr(ProfileField.Value) + ' AND PARENTPANEL = ' + AddExpr(BulletinPanelMainBrowse.FGrid.GetValue('COMPONENTNAME')) + ' AND LEVELSQL = ' + AddExpr('2');
  BulletinPanel2Browse.Setup('BULLETINPANELMAIN',TBulletinPanelForm,BulletinPanelNewRecord);
  BulletinPanel2Browse.Caption.Text := 'Panels on ' + BulletinPanelMainBrowse.FGrid.GetValue('DESCR');
  BulletinPanel2BrowseGridClick(self);
end;

procedure TBulletinForm.BulletinPanel2BrowseGridClick(Sender: TObject);
begin
  inherited;
  BulletinPanel3Browse.ExplicitWhereClause := ' WHERE ' + IIf(ActiveButton.ButtonState = gbUnChecked,'','ACTIVE = ' + AddExpr('Y') + ' AND ') + ' PROFILE = ' + AddExpr(ProfileField.Value) + ' AND PARENTPANEL = ' + AddExpr(BulletinPanel2Browse.FGrid.GetValue('COMPONENTNAME')) + ' AND LEVELSQL = ' + AddExpr('3');
  BulletinPanel3Browse.Setup('BULLETINPANELMAIN',TBulletinPanelForm,BulletinPanelNewRecord);
  BulletinPanel3Browse.Caption.Text := 'Panels on ' + BulletinPanel2Browse.FGrid.GetValue('DESCR');
  BulletinPanel3Browse.DefaultRowHeight := 39;
  BulletinPanel3Browse.FixedRowHeight   := 22;
  BulletinPanel3BrowseGridClick(self);
end;

procedure TBulletinForm.BulletinPanel3BrowseGridClick(Sender: TObject);
begin
  inherited;
  BulletinPanel4Browse.ExplicitWhereClause := ' WHERE ' + IIf(ActiveButton.ButtonState = gbUnChecked,'','ACTIVE = ' + AddExpr('Y') + ' AND ') + ' PROFILE = ' + AddExpr(ProfileField.Value) + ' AND PARENTPANEL = ' + AddExpr(BulletinPanel3Browse.FGrid.GetValue('COMPONENTNAME')) + ' AND LEVELSQL = ' + AddExpr('4');
  BulletinPanel4Browse.Setup('BULLETINPANELMAIN',TBulletinPanelForm,BulletinPanelNewRecord);
  BulletinPanel4Browse.DefaultRowHeight := 39;
  BulletinPanel4Browse.FixedRowHeight   := 22;
  BulletinPanel4Browse.Caption.Text := 'Panels on ' + BulletinPanel3Browse.FGrid.GetValue('DESCR');
end;

procedure TBulletinForm.BulletinPanelMainBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_SPACE) then begin
    If (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'INACTIVEPANEL') or (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'ACTIVEPANEL') or (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'BOTTOMPANEL') then
      ShowMessage('You cannot change the settings for this panel: ' + BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME'))
    else
      ToggleActive(BulletinPanelMainBrowse)
  end else if (Key = 65) or (Key = 97) then begin
    If (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'INACTIVEPANEL') or (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'ACTIVEPANEL') or (BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME') = 'BOTTOMPANEL') then
      ShowMessage('You cannot change the settings for this panel: ' + BulletinPanelMainBrowse.Grid.GetValue('COMPONENTNAME'))
    else
      ToggleAlignClient(BulletinPanelMainBrowse);
  end;
end;

procedure TBulletinForm.BulletinPanel2BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_SPACE) then
    ToggleActive(BulletinPanel2Browse)
  else if (Key = 65) or (Key = 97) then
    ToggleAlignClient(BulletinPanel2Browse);
end;

procedure TBulletinForm.BulletinPanel3BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_SPACE) then
    ToggleActive(BulletinPanel3Browse)
  else if (Key = 65) or (Key = 97) then
    ToggleAlignClient(BulletinPanel3Browse);
end;

procedure TBulletinForm.BulletinPanel4BrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (Key = VK_SPACE) then
    ToggleActive(BulletinPanel4Browse)
  else if (Key = 65) or (Key = 97) then
    ToggleAlignClient(BulletinPanel4Browse);
end;

procedure TBulletinForm.ToggleActive(BulletinPanelBrowse: TAlpineBlockBrowse);
begin
  If BulletinPanelBrowse.Grid.GetValue('ACTIVE') = 'Y' then begin
    RunSQL('UPDATE BULLETINPANEL SET ACTIVE = ' + AddExpr('N')  + ' WHERE BULLETINPANELID = ' + BulletinPanelBrowse.Grid.GetValue('BULLETINPANELID'));
    BulletinPanelBrowse.Grid.SetValue('ACTIVE',BulletinPanelBrowse.Grid.Row,'N');
  end else begin
    RunSQL('UPDATE BULLETINPANEL SET ACTIVE = ' + AddExpr('Y') + ' WHERE BULLETINPANELID = ' + BulletinPanelBrowse.Grid.GetValue('BULLETINPANELID'));
    BulletinPanelBrowse.Grid.SetValue('ACTIVE',BulletinPanelBrowse.Grid.Row,'Y');
  end;
end;

procedure TBulletinForm.ToggleAlignClient(BulletinPanelBrowse: TAlpineBlockBrowse);
begin
  If BulletinPanelBrowse.Grid.GetValue('ALIGNCLIENT') = 'Y' then begin
    RunSQL('UPDATE BULLETINPANEL SET ALIGNCLIENT = ' + AddExpr('')  + ' WHERE BULLETINPANELID = ' + BulletinPanelBrowse.Grid.GetValue('BULLETINPANELID'));
    BulletinPanelBrowse.Grid.SetValue('ALIGNCLIENT',BulletinPanelBrowse.Grid.Row,'');
  end else begin
    RunSQL('UPDATE BULLETINPANEL SET ALIGNCLIENT = ' + AddExpr('Y') + ' WHERE BULLETINPANELID = ' + BulletinPanelBrowse.Grid.GetValue('BULLETINPANELID'));
    BulletinPanelBrowse.Grid.SetValue('ALIGNCLIENT',BulletinPanelBrowse.Grid.Row,'Y');
  end;
end;

procedure TBulletinForm.BulletinPanelNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('PROFILE').AsString := ProfileField.Text;
end;

procedure TBulletinForm.ShowImage;
var Stream    : TMemoryStream;
    UsePNG    : Boolean;
    ImageName : TJPegImage;
    Ratio     : Real;
begin
  Stream    := TMemoryStream.create;

  try
    Open_Query('SYSSET',false,'SELECT LOGO, LOGOEXT FROM SYSSET WHERE FDID = ' + AddExpr(FdidField.Value));
    If Not (GetField('SYSSET','LOGO').AsString = '') then begin
      if tdbfield('SYSSET','LOGOEXT') = 'PNG' then begin
        UsePNG       := True;
      end else begin
        UsePNG       := False;
        ImageName    := TJpegImage.create;
      end;

      TBlobField(A('SYSSET').FieldByName('LOGO')).SaveToStream(Stream);
      Stream.position := 0;

      if UsePNG then begin
        LogoPngImage.Align := alClient;
        LogoImage.Visible  := false;
        LogoPngImage.Picture.LoadFromStream(stream);
      end else begin
        ImageName.LoadFromStream(stream);
        LogoImage.Align       := alClient;
        LogoPngImage.Visible  := false;
        LogoImage.Picture.bitmap.assign(ImageName);
      end;
    end;
  finally
    CloseApollo('SYSSET');
  end;
  ImageName.Free;
  Stream.free;
end;


end.
