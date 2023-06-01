unit NfirsSet;
 
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
  ADODB,
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
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  alpinecheck,
  AdvGroupBox,
  AdvObj, AlpineMemo, Gauges;

type
  TNFIRSSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    IncTab: TAdvPageControl;
    SmallImage: TImageList;
    GenTab: TAdvTabSheet;
    NFIRSAttTaskTab: TAdvTabSheet;
    NFIRSAttTaskBrowse: TAlpineBlockBrowse;
    ColorDialog1: TColorDialog;
    NFIRSAppDispTab: TAdvTabSheet;
    NFIRSAppDispBrowse: TAlpineBlockBrowse;
    TableDefaultTab: TAdvTabSheet;
    TableDefaultBrowse: TAlpineBlockBrowse;
    NFIRSAttActListTab: TAdvTabSheet;
    NfirsAttActListBrowse: TAlpineBlockBrowse;
    N5DistrictTab: TAdvTabSheet;
    N5DistrictBrowse: TAlpineBlockBrowse;
    NFIRSAppFOCodeTab: TAdvTabSheet;
    NFIRSAppFOCodeBrowse: TAlpineBlockBrowse;
    DispBoxTab: TAdvTabSheet;
    DispBoxBrowse: TAlpineBlockBrowse;
    NfirsInvTypeTab: TAdvTabSheet;
    NfirsInvTypeBrowse: TAlpineBlockBrowse;
    SSTab: TAdvTabSheet;
    SSBrowse: TAlpineBlockBrowse;
    InvTab: TAdvTabSheet;
    InvBrowse: TAlpineBlockBrowse;
    N5CodeBrowse: TAlpineBlockBrowse;
    ColorBox: TAlpinePanel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    APanel: TAlpinePanel;
    ALabel: TLabel;
    Label3: TLabel;
    Label11: TLabel;
    FdidField: TAlpineLookup;
    DateField: TAlpineDateTime;
    ColorFormField: TAlpineEdit;
    ColorLeftField: TAlpineEdit;
    ColorRequiredField: TAlpineEdit;
    ColorHighlightField: TAlpineEdit;
    ColorButton: TAlpineGlowButton;
    LeftButton: TAlpineGlowButton;
    RequiredButton: TAlpineGlowButton;
    HighlightButton: TAlpineGlowButton;
    SchdShiftNameTab: TAdvTabSheet;
    SchdShiftnameBrowse: TAlpineBlockBrowse;
    PlusOnetab: TAdvTabSheet;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    PlusOneCode: TAlpineEdit;
    PlusOneDescr: TAlpineEdit;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Memo1: TMemo;
    RedNMXCodeBrowse: TAlpineBlockBrowse;
    PlusOneButton: TAlpineGlowButton;
    PlusOneTableName: TAlpineLookup;
    TestPlusOneField: TAlpineLookup;
    Label13: TLabel;
    Status911Splitter: TSplitter;
    N5DistrictCountButton: TAlpineGlowButton;
    NfirsEquTab: TAdvTabSheet;
    NFIRSEquTypeBrowse: TAlpineBlockBrowse;
    Panel2: TPanel;
    AlpinePanel1: TAlpinePanel;
    NfirsApp3Field: TRadioButton;
    NfirsApp2Field: TRadioButton;
    NfirsApp1Field: TRadioButton;
    ResFormField: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    NfirsAppBrowse2Field: TRadioButton;
    NfirsAppBrowse1Field: TRadioButton;
    ResBrowseField: TAlpineEdit;
    EmailPanel: TAlpinePanel;
    EmailSubjectLabel: TLabel;
    EmailMessageLabel: TLabel;
    EmailSubjectField: TAlpineEdit;
    EmailMessageField: TAlpineMemo;
    Panel3: TPanel;
    Panel0B: TAlpinePanel;
    ShowSecondLabel: TLabel;
    AutoAddNfirsAttLabel: TLabel;
    NFIRSIncTimeLabel: TLabel;
    UseNfirsEmsLabel: TLabel;
    DisableIncNumLabel: TLabel;
    UpdateNfirsEvLengthLabel: TLabel;
    KFormLabel: TLabel;
    SchdHistCBLabel: TLabel;
    Nforslabel: TLabel;
    EmailFaxLabel: TLabel;
    ShowSecondField: TAlpineCheckBox;
    AutoAddNfirsAttField: TAlpineCheckBox;
    NFIRSIncTimeField: TAlpineEdit;
    UseNfirsEmsField: TAlpineCheckBox;
    DisableIncNumField: TAlpineCheckBox;
    UpdateNfirsEvLengthField: TAlpineCheckBox;
    KFormField: TAlpineCheckBox;
    SchdHistCBField: TAlpineCheckBox;
    NFORSCheckBox: TAlpineCheckBox;
    EmailFaxField: TAlpineCheckBox;
    AlpinePanel3: TAlpinePanel;
    UpdateNfirsButton: TAlpineGlowButton;
    UpdateEvLengthCheck: TCheckBox;
    UpdateEvLengthLabel: TLabel;
    UpdateNfirsAttLabel: TLabel;
    UpdateNfirsAttCheck: TCheckBox;
    UpdateG1Check: TCheckBox;
    UpdateG1Label: TLabel;
    DateTimeStartLabel: TLabel;
    DateTimeEndLabel: TLabel;
    DateTimeStartField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    Gauge: TGauge;
    ListBox: TListBox;
    UpdateNfirsLabel: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure ColorButtonClick(Sender: TObject);
    procedure LeftButtonClick(Sender: TObject);
    procedure RequiredButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HighlightButtonClick(Sender: TObject);
    procedure NFIRSAttTaskTabShow(Sender: TObject);
    procedure NFIRSAppDispTabShow(Sender: TObject);
    procedure TableDefaultTabShow(Sender: TObject);
    procedure NFIRSAttActListTabShow(Sender: TObject);
    procedure N5DistrictTabShow(Sender: TObject);
    procedure IncTabChange(Sender: TObject);
    procedure NFIRSAppFOCodeTabShow(Sender: TObject);
    procedure DispBoxTabShow(Sender: TObject);
    procedure EnableSave(Sender: TObject);
    procedure NfirsInvTypeTabShow(Sender: TObject);
    procedure SSTabShow(Sender: TObject);
    procedure InvTabShow(Sender: TObject);
    procedure SchdShiftNameTabShow(Sender: TObject);
    procedure PlusOneFieldChange(Sender: TObject);
    procedure PLUSONEBUTTONClick(Sender: TObject);
    procedure NFIRSAttTaskBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure PlusOneTableNameEnter(Sender: TObject);
    procedure N5DistrictCountButtonClick(Sender: TObject);
    procedure NfirsEquTabShow(Sender: TObject);
    procedure EmailFaxFieldClick(Sender: TObject);
    procedure UpdateNfirsButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdatePanel;
    procedure RedNMXCodeNewRecord(DataSet: TDataSet);
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure NFIRSAttTaskNewRecord(DataSet: TDataSet);
    procedure SchdShiftNameNewRecord(DataSet: TDataSet);
    procedure TableDefaultNewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
    class procedure InvNewRecord(DataSet: TDataSet);
  end;
  function ColorForm: TColor;
  function ColorHighLight: TColor;
  function ColorLeft: TColor;

var
  NFIRSSetForm : TNFIRSSetForm;
  procedure NFIRSSetVar;

implementation
uses GenFunc,
     FormFunc,
     Applst,
     CommonFunc,
     SortGridView,
     NFIRSAttTask,
     NFIRSAppDisp,
     TableDefault,
     NFIRSAttActList,
     NFIRSSSSetup,
     schdshiftname,
     N5District,
     NFIRSAppFOCode,
     NFIRSInvType,
     CommonDisp,
     CommonNfirs,
     NfirsUnit,
     N5Code,
     DispBox,
     SecSet,
     RedNMXCode,
     NfirsEquType,
     CommonVar; 

{$R *.DFM}

class procedure TNFIRSSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TNFIRSSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  IncTab.ActivePage             := GenTab;
  ColorBox.Visible              := AlpineLogin;
  N5CodeBrowse.Visible          := AlpineLogin;
  N5DistrictCountButton.Visible := AlpineLogin;
  SchdHistCBField.Enabled       := AlpineLogin;
  Nforslabel.Visible            := AlpineLogin;
  NforsCheckBox.Visible         := AlpineLogin;
  DispBoxTab.TabVisible         := Not CheckModule('DISP');
  SchdShiftNameTab.TabVisible   := not CheckModule('SCHD');
  AutoAddNfirsAttField.Visible  := CheckModule('SCHD');
  AutoAddNfirsAttLabel.Visible  := AutoAddNfirsAttField.Visible;
  InvTab.TabVisible             := Not CheckModule('APP') or (mFireID = '12345');
  PlusOneTab.TabVisible         := AlpineLogin or (mFireid='28023') or (mFireid='25127') or (mFireid='23123') or (mFireid='25135') or (mFireid='25115') or (mFireid='25119') or (mFireid='28017') or (mFireid='28028') or (mFireid ='23082') or (mFireid ='23231');
end;

procedure NFIRSSetVar;
begin
  CommonDisp.NfirsSetVar(GlobalAdoConnection,mFireID);
end;

procedure TNFIRSSetForm.NfirsEquTabShow(Sender: TObject);
begin
  inherited;
  NFIRSEquTypeBrowse.Setup('NFIRSEQUTYPE',TNfirsEquTypeForm,TNfirsEquTypeForm.NewRecord);
end;

procedure TNFIRSSetForm.NfirsInvTypeTabShow(Sender: TObject);
begin
  inherited;
  NFIRSInvTypeBrowse.Setup('NFIRSINVTYPE',TNfirsInvTypeForm,TNfirsInvTypeForm.NewRecord);
end;

procedure TNFIRSSetForm.PLUSONEBUTTONClick(Sender: TObject);
var mBaseCode: String;
begin
  inherited;
  If not CheckTableExists(PlusOneTableName.Text) then begin
    showmessage('Table '+PlusOneTableName.Text +' does not exist!');
    exit;
  end;
  mbasecode := substr(PlusOneCode.Text,1,length(PlusOneCode.Text)-1);
  If sqltableRecCount('select count(*) from '+PlusOneTableName.Text+' where code = '+AddExpr(mBaseCode))=0 then begin
    showmessage('There were no "Base" records found on this table with code '+mBaseCode+'.  Plus-One code not added!');
    exit;
  end;
  If sqltableRecCount('select count(*) from '+PlusOneTableName.Text+' where code = '+AddExpr(PlusOneCode.Text))>0 then begin
    showmessage('There is already a Plus-One code for this value');
    exit;
  end;

  TableInsert(PlusOneTableName.Text,['CODE','DESCR','LEVELSQL'],[PlusOneCode.Text,PlusOneDescr.Text,length(PlusOneCode.Text)]);
  ShowMessage('Plus one code added!');
  TestPlusOneField.ReferencingTable := PlusOneTableName.Text;
  TestPlusOneField.Enabled          := true;
end;

procedure TNFIRSSetForm.PlusOneFieldChange(Sender: TObject);
begin
  inherited;
  PlusOneButton.enabled := (PlusOneTableName.Value <>'')  and (PlusOneCode.Text<>'') and (PlusOneDescr.Text <> '');
end;

procedure TNFIRSSetForm.ColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then
    ColorFormField.Text := ColorToString(ColorDialog1.Color);
  SaveButton.Enabled := true;
  UpdatePanel;
end;

procedure TNFIRSSetForm.UpdatePanel;
begin
  If Not (ColorFormField.Text = '') then
    APanel.Color                        := StringToColor(ColorFormField.Text);

  If Not (ColorLeftField.Text = '') then
    ALabel.Color                        := StringToColor(ColorLeftField.Text);

  If Not (ColorRequiredField.Text = '') then begin
    FdidField.AlpineColors.NonEditColor := StringToColor(ColorRequiredField.Text);
    DateField.AlpineColors.NonEditColor := StringToColor(ColorRequiredField.Text);
  end;

  If Not (ColorHighlightField.Text = '') then
    APanel.HighlightColor               := StringToColor(ColorLeftField.Text);
end;

procedure TNFIRSSetForm.LeftButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then
    ColorLeftField.Text := ColorToString(ColorDialog1.Color);
  SaveButton.Enabled := true;
  UpdatePanel;
end;

procedure TNFIRSSetForm.RequiredButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then
    ColorRequiredField.Text := ColorToString(ColorDialog1.Color);
  SaveButton.Enabled := true;
  UpdatePanel;
end;

procedure TNFIRSSetForm.FormShow(Sender: TObject);
begin
  inherited;
  UpdatePanel;
  Open_Query('GETNFIRSSET',false,'SELECT RESBROWSE, RESFORM FROM NFIRSSET WHERE FDID = ' + AddExpr(mFireID));
  NfirsApp1Field.Checked       := (tdbfield('GETNFIRSSET','RESFORM') = 'X') or (tdbfield('GETNFIRSSET','RESFORM') = '');
  NfirsApp2Field.Checked       := (tdbfield('GETNFIRSSET','RESFORM') = 'R');
  NfirsApp3Field.Checked       := (tdbfield('GETNFIRSSET','RESFORM') = 'Y');
  NfirsAppBrowse1Field.Checked := (tdbfield('GETNFIRSSET','RESBROWSE') = 'R');
  NfirsAppBrowse2Field.Checked := (tdbfield('GETNFIRSSET','RESBROWSE') = 'X') or (tdbfield('GETNFIRSSET','RESBROWSE') = '');
  CloseApollo('GETNFIRSSET');
  SaveButton.Enabled           := false;
  EmailPanel.Visible           := EmailFaxField.Checked;
  DateTimeStartField.Value     := StrToDate('01/01/' + FormatDateTime('YYYY',Now));
  DateTimeEndField.Value       := StrToDate('12/31/' + FormatDateTime('YYYY',Now));
end;

procedure TNFIRSSetForm.HighlightButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog1.Execute then
    ColorHighlightField.Text := ColorToString(ColorDialog1.Color);
  SaveButton.Enabled := true;
  UpdatePanel;
end;

procedure TNFIRSSetForm.SchdShiftNameTabShow(Sender: TObject);
begin
  inherited;
  SchdShiftNameBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('SCHDSHIFTNAME.FDID');
  SchdShiftNameBrowse.Setup('SCHDSHIFTNAME',TSchdShiftNameForm,SchdShiftNameNewRecord);
end;       

procedure TNFIRSSetForm.NFIRSAttTaskTabShow(Sender: TObject);
var ViewCode : String;
begin
  inherited;
  ViewCode := SQLLookUp('NFIRSATTTASK','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  ViewCode := IIf(ViewCode = '','NFIRSATTTASK',ViewCode);
  NFIRSAttTaskBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('NFIRSATTTASK.FDID');
  NFIRSAttTaskBrowse.Setup(ViewCode,TNFIRSAttTaskForm,NFIRSAttTaskNewRecord);
end;

procedure TNFIRSSetForm.SchdShiftNameNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TNFIRSSetForm.NFIRSAttTaskBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar       : Integer;
    NfirsAttTaskID : String;
    Descr          : String;
begin
  inherited;
  NfirsAttTaskID := NfirsAttTaskBrowse.Grid.GetValue('NFIRSATTTASKID');
  Descr          := NfirsAttTaskBrowse.Grid.GetValue('DESCR');
  CountVar       := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSATT WHERE NFIRSATTTASKID = ' + pkValue(NfirsAttTaskID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' event(s) entered with the ' + Descr + ' NFIRS Unit Attendance Type.' + #10#13 + 'Deleting this record will blank out the NFIRS Attendance Unit Attendance Type.'  + #10#13 + 'This can only be restored from a backup and it is a lengthy process.'  + #10#13 +'Delete anyway?') then
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

procedure TNFIRSSetForm.NFIRSAttTaskNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TNFIRSSetForm.NFIRSAppDispTabShow(Sender: TObject);
begin
  inherited;
  NFIRSAppDispBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('NFIRSAPPDISP.FDID');
  NFIRSAppDispBrowse.Setup('NFIRSAPPDISP',TNFIRSAppDispForm,TNFIRSAppDispForm.NewRecord);
end;

procedure TNFIRSSetForm.TableDefaultTabShow(Sender: TObject);
begin
  inherited;
  TableDefaultBrowse.ExplicitWhereClause := ' WHERE MODCODE = ' + AddExpr('INC');
  TableDefaultBrowse.Setup('TABLEDEFAULT',TTableDefaultForm,TableDefaultNewRecord);
end;

procedure TNFIRSSetForm.SSTabShow(Sender: TObject);
begin
  inherited;
  SSBrowse.Setup('NFIRSSSSSETUP',TNFIRSSSSetupFrom,TNFIRSSSSetupFrom.NewRecord);
  N5CodeBrowse.Setup('N5CODE',TN5CodeForm,TN5CodeForm.NewRecord);
end;

procedure TNFIRSSetForm.PlusOneTableNameEnter(Sender: TObject);
begin
  inherited;
  PlusOneTableName.SQLExpr := 'SELECT * FROM SYSTABLE WHERE TABLENAME LIKE ' + AddExpr('N5%');
end;

procedure TNFIRSSetForm.TableDefaultNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString    := mFireID;
  DataSet.FieldbyName('MODCODE').AsString := 'INC';
end;

procedure TNFIRSSetForm.NFIRSAttActListTabShow(Sender: TObject);
begin
  inherited;
  NfirsAttActListBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('NFIRSATTACTLIST.FDID');
  NfirsAttActListBrowse.Setup('NFIRSATTACTLIST',TNfirsAttActListForm,TNfirsAttActListForm.NewRecord);
end;

procedure TNFIRSSetForm.N5DistrictCountButtonClick(Sender: TObject);
Var N5DistrictCount: Integer;
begin
  inherited;
  Open_Query('N5DISTRICT',true,'SELECT * FROM N5DISTRICT');
  While Not A('N5DISTRICT').Eof do begin
    N5DistrictCount:= SQLTableRecCount('SELECT COUNT(*) FROM NFIRSMAIN WHERE N5DISTRICTID = ' + GetField('N5DISTRICT','N5DISTRICTID').AsString);
    GetTable('N5DISTRICT').Edit;
    GetField('N5DISTRICT','N5DISTRICTCOUNT').AsInteger := N5DistrictCount;
    GetTable('N5DISTRICT').Post;
    A('N5DISTRICT').Skip(1);
  end;
  CloseApollo('N5DISTRICT');
  N5DistrictBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('N5DISTRICT.FDID');
  N5DistrictBrowse.Setup('N5DISTRICT',TN5DistrictForm,TN5DistrictForm.NewRecord);
  ShowMessage('Done');
end;

procedure TNFIRSSetForm.N5DistrictTabShow(Sender: TObject);
begin
  inherited;
  N5DistrictBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('N5DISTRICT.FDID');
  N5DistrictBrowse.Setup('N5DISTRICT',TN5DistrictForm,TN5DistrictForm.NewRecord);

  N5DistrictCountButton.Parent := N5DistrictBrowse.FButtonPanel;
  N5DistrictCountButton.Align  := alleft;

  RedNMXCodeBrowse.ExplicitWhereClause := ' WHERE FIELDNAME = ' + AddExpr('CENSUS');
  RedNMXCodeBrowse.Setup('REDNMXCODE',TRedNMXCodeForm,RedNMXCodeNewRecord);
end;

procedure TNFIRSSetForm.RedNMXCodeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TABLENAME').AsString := 'NFIRSMAIN';
  DataSet.FieldbyName('FIELDNAME').AsString := 'CENSUS';
  DataSet.FieldByname('ACTIVE').AsString    := 'Y';
end;


procedure TNFIRSSetForm.IncTabChange(Sender: TObject);
begin
  inherited; 
  SaveButton.Visible := (IncTab.ActivePage = GenTab);
end;

procedure TNFIRSSetForm.InvTabShow(Sender: TObject);
begin
  inherited;
  InvBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INV.FDID') + ' AND INV.TYPE = ' + AddExpr('TRUCK');
  InvBrowse.Setup('NFIRSUNIT',TNfirsUnitForm,InvNewRecord);
end;

class procedure TNFIRSSetForm.InvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TYPE').AsString    := 'TRUCK';
  DataSet.FieldbyName('INCLUDE').AsString := 'Y';
end;

procedure TNFIRSSetForm.NFIRSAppFOCodeTabShow(Sender: TObject);
begin
  inherited;
  NFIRSAppFOCodeBrowse.Setup('NFIRSAPPFOCODE',TNFIRSAppFOCodeForm,TNFIRSAppFOCodeForm.NewRecord);
end;

procedure TNFIRSSetForm.DispBoxTabShow(Sender: TObject);
begin
  inherited;
  DispBoxBrowse.Setup('DISPBOX',TDispBoxForm,TDispBoxForm.NewRecord);
end;

procedure TNFIRSSetform.DoBeforePost(Sender: TObject);
begin
  If NfirsApp1Field.Checked then
    ResFormField.Value := 'X'
  else if NfirsApp2Field.Checked then
    ResFormField.Value := 'R'
  else if NfirsApp3Field.Checked then
    ResFormField.Value := 'Y';

  If NfirsAppBrowse1Field.Checked then
    ResBrowseField.Value := 'R'
  else if NfirsAppBrowse2Field.Checked then
    ResBrowseField.Value := 'X';
end;

procedure TNFIRSSetForm.EmailFaxFieldClick(Sender: TObject);
begin
  inherited;
  EmailPanel.Visible := EmailFaxField.Checked;
end;

procedure TNFIRSSetForm.EnableSave(Sender: TObject);
begin
  SaveButton.Enabled := true;
end;

function ColorForm: TColor;
begin
  result := commonvar.ColorForm;
end;

function ColorHighLight: TColor;
begin
  result := commonvar.ColorHighLight;
end;

function ColorLeft: TColor;
begin
  result := commonvar.ColorLeft;
end;

procedure TNFIRSSetForm.UpdateNfirsButtonClick(Sender: TObject);
Var SQLVar    : String;
    EvLength  : Real;
    AppSupp   : Integer;
    AppEMS    : Integer;
    AppOth    : Integer;
    PersSupp  : Integer;
    PersEMS   : Integer;
    PersOth   : Integer;
    PersMisc  : Integer;
    PersTotal : Integer;
begin
  inherited;
  If Not BooleanMessageDlg('Process NFIRS incidents for the entered date range') then
    exit;

  SQLVar := 'SELECT NFIRSMAINID, INCNUM, DATETIMEALARM, DATETIMEIN, EVLENGTH, APPSUPP, APPEMS, APPOTH, PERSSUPP, PERSEMS, PERSOTH, PERSMISC, PERSTOTAL FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',DateTimeStartField.Value,DateTimeEndField.Value);

  Open_Query('GETNFIRSMAIN',true,SQLVar);
  Gauge.MaxValue := A('GETNFIRSMAIN').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('GETNFIRSMAIN').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;

    AddStatusListBoxNoTime(ListBox,'Updating NFIRS Incident ' + tdbfield('GETNFIRSMAIN','INCNUM') + ' . . . . ');

    GetTable('GETNFIRSMAIN').Edit;
    If UpdateEvLengthCheck.Checked then begin
      If (GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime > 0) and (GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime > 0) then
        EvLength := (GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime - GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime)*24
      else
        EvLength := 0;
      If EvLength > 0 then begin
        GetField('GETNFIRSMAIN','EVLENGTH').AsFloat := EvLength;
        AddStatusListBoxNoTime(ListBox,' - Entering Length ' + FormatFloat('##0.00',EvLength) +' for incident ' + tdbfield('GETNFIRSMAIN','INCNUM'));
      end;
    end;

    If UpdateNfirsAttCheck.Checked then begin
      If EvLength > 0 then begin
        RunSQL('UPDATE NFIRSATT SET EVLENGTH = ' + FormatFloat('##,##0.00',EvLength) + ' WHERE NFIRSMAINID = ' + PkValue(GetField('GETNFIRSMAIN','NFIRSMAINID').AsString));
        AddStatusListBoxNoTime(ListBox,' - Updating Attendance Length ' + FormatFloat('##0.00',EvLength) +' for incident ' + tdbfield('GETNFIRSMAIN','INCNUM'));
      end;
    end;

    If UpdateG1Check.Checked then begin
      AppSupp   := 0;
      AppEMS    := 0;
      AppOth    := 0;
      PersSupp  := 0;
      PersEMS   := 0;
      PersOth   := 0;
      PersMisc  := 0;
      PersTotal := 0;

      CalculateG1Fields(GlobalAdoConnection,GetField('GETNFIRSMAIN','NFIRSMAINID').AsInteger,AppEMS,AppSupp,AppOth,PersSupp,PersEMS,PersOth,PersMisc);

      PersTotal := PersSupp + PersEMS + PersOth + PersMisc;
      GetField('GETNFIRSMAIN','APPSUPP').AsInteger   := AppSupp;
      GetField('GETNFIRSMAIN','APPEMS').AsInteger    := AppEMS;
      GetField('GETNFIRSMAIN','APPOTH').AsInteger    := AppOth;
      GetField('GETNFIRSMAIN','PERSSUPP').AsInteger  := PersSupp;
      GetField('GETNFIRSMAIN','PERSEMS').AsInteger   := PersEMS;
      GetField('GETNFIRSMAIN','PERSOTH').AsInteger   := PersOth;
      GetField('GETNFIRSMAIN','PERSMISC').AsInteger  := PersMisc;
      GetField('GETNFIRSMAIN','PERSTOTAL').AsInteger := PersTotal;
      AddStatusListBoxNoTime(ListBox,' - Updating G1 Fields ' + FormatFloat('##0.00',EvLength) +' for incident ' + tdbfield('GETNFIRSMAIN','INCNUM'));
    end;
    GetTable('GETNFIRSMAIN').Post;
    AddStatusListBoxNoTime(ListBox,' - Updated NFIRS Incident ' + tdbfield('GETNFIRSMAIN','INCNUM'));

    A('GETNFIRSMAIN').Skip(1);
  end;

  CloseApollo('GETNFIRSMAIN');
  Gauge.Visible  := false;
  ShowMessage('Done');
end;

initialization
  NfirsIncTime:= 0;

end. 
