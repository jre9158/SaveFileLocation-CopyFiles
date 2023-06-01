unit DispSet;

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
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  Menus,
  applst,
  AdvGroupBox,
  AdvObj,
  AlpinePanel,
  Gauges;

type
  TDispSetForm = class(TNormalBaseForm)
    MainTabPanel: TPanel;
    DispSetTab: TAdvPageControl;
    GenTab: TAdvTabSheet;
    AdvTabSheet1: TAdvTabSheet;
    AdvTabSheet4: TAdvTabSheet;
    DispStatCodeTab: TAdvTabSheet;
    DispCallTypeTab: TAdvTabSheet;
    DispBoxTab: TAdvTabSheet;
    DispStatCodeBrowse: TAlpineBlockBrowse;
    DispStatBrowse: TAlpineBlockBrowse;
    DispCallTypeBrowse: TAlpineBlockBrowse;
    DispBoxBrowse: TAlpineBlockBrowse;
    ResponseTab: TAdvTabSheet;
    ProQAEMDCodeTab: TAdvTabSheet;
    ProQAEMDCodeBrowse: TAlpineBlockBrowse;
    DispSeqBrowse: TAlpineBlockBrowse;
    DispCallSourceTab: TAdvTabSheet;
    DispCallSourceBrowse: TAlpineBlockBrowse;
    Panel2: TPanel;
    CallTypeCheck: TRadioButton;
    ResponseCheck: TRadioButton;
    BothCheck: TRadioButton;
    DispSeqBrowseMenu: TPopupMenu;
    ApplyStationSearchOrderforallResponseTypes1: TMenuItem;
    ApplyStationSearchOrderforallResponseTypes2: TMenuItem;
    ApplyResponseNumbers1: TMenuItem;
    ResponseBrowseMenu: TPopupMenu;
    ApplyRequiredNumberofVehiclesacrossallDispatchBoxes1: TMenuItem;
    DispAttrTabSheet: TAdvTabSheet;
    DispAttrBrowse: TAlpineBlockBrowse;
    Panel3: TPanel;
    ApplyApparatusSearchOrder: TMenuItem;
    Replicate: TMenuItem;
    SearchButton: TAlpineGlowButton;
    accessopen: TOpenDialog;
    ImportPROQAEMD: TAlpineGlowButton;
    ClearResponsewillclearoutallentriesingridBelow1: TMenuItem;
    ReplicethisresponseforacrossallCallTypesResponses1: TMenuItem;
    ReplicethisresponseforacrossallCallTypesResponses2: TMenuItem;
    CopySingleResponse: TMenuItem;
    PasteSingleResponse: TMenuItem;
    Panel0B: TAlpinePanel;
    ResponseBrowse: TAlpineTMSStringGrid;
    DispAppBrowse: TAlpineBlockBrowse;
    DispLocBrowse: TAlpineBlockBrowse;
    ProQAEFDCodeBrowse: TAlpineBlockBrowse;
    ImportPROQAEFD: TAlpineGlowButton;
    DispResponseBrowse: TAlpineBlockBrowse;
    DispPrintBrowse: TAlpineBlockBrowse;
    DispTimeSlotBrowse: TAlpineBlockBrowse;
    Panel1: TPanel;
    AlpinePanel1: TAlpinePanel;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GenNfirsIDField: TAlpineLookup;
    AlpineLookup1: TAlpineLookup;
    AlpineLookup2: TAlpineLookup;
    AlpineLookup3: TAlpineLookup;
    AlpineLookup4: TAlpineLookup;
    AlpineLookup5: TAlpineLookup;
    TimeDispIDField: TAlpineLookup;
    TimeRecIDField: TAlpineLookup;
    AlpineLookup8: TAlpineLookup;
    AlpineLookup9: TAlpineLookup;
    AlpineLookup10: TAlpineLookup;
    AlpineLookup11: TAlpineLookup;
    TimeNoteIDField: TAlpineLookup;
    EMSStatusCodesBox: TAlpinePanel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    AlpineLookup6: TAlpineLookup;
    AlpineLookup7: TAlpineLookup;
    AlpineLookup12: TAlpineLookup;
    AlpineLookup13: TAlpineLookup;
    AlpinePanel4: TAlpinePanel;
    Label9: TLabel;
    Label10: TLabel;
    E911WavLabel: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GISESRICheck: TAlpineCheckBox;
    RunCardField: TAlpineCheckBox;
    ShowNthField: TAlpineCheckBox;
    UpdateFdidOffField: TAlpineCheckBox;
    AlpineEdit2: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    AlpineCheckBox7: TAlpineCheckBox;
    usedispattr: TAlpineCheckBox;
    OnlyOnCallField: TAlpineCheckBox;
    RetainColorField: TAlpineCheckBox;
    RipRunButton: TAlpineCheckBox;
    USEDISPSEQRESTField: TAlpineCheckBox;
    AutoTypeIDField: TAlpineLookup;
    DispTimerDefField: TAlpineEdit;
    AlpinePanel5: TAlpinePanel;
    AlpineCheckBox2: TAlpineCheckBox;
    AlpineCheckBox9: TAlpineCheckBox;
    AlpineCheckBox10: TAlpineCheckBox;
    AlpineCheckBox11: TAlpineCheckBox;
    Status911Splitter: TSplitter;
    Splitter1: TSplitter;
    progressgauge: TGauge;
    copyfromapparatus: TAlpineGlowButton;
    CustomTab: TAdvTabSheet;
    ProQAMedical: TAdvTabSheet;
    ProQAFire: TAdvTabSheet;
    AlpinePanel2: TAlpinePanel;
    formnamelabel: TLabel;
    proqamedicalpathlabel: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    PROQAMEDICALEXEField: TAlpineEdit;
    PROQAMEDICALFORMCAPTIONField: TAlpineEdit;
    AlpinePanel3: TAlpinePanel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    AlpineEdit3: TAlpineEdit;
    AlpineEdit4: TAlpineEdit;
    AlpinePanel6: TAlpinePanel;
    PROQAXMLField: TAlpineCheckBox;
    AlpineCheckBox12: TAlpineCheckBox;
    GroupBox3: TGroupBox;
    PROQAFVEHICLEDEBulleted: TRadioButton;
    PROQAFVEHICLEDEParagraph: TRadioButton;
    GroupBox4: TGroupBox;
    PROQAFALLOTHERDEBulleted: TRadioButton;
    PROQAFALLOTHERDEParagraph: TRadioButton;
    PROQAFVehicleDEField: TAlpineEdit;
    PROQAFALLOTHERDEField: TAlpineEdit;
    PROQAPERSONDEField: TAlpineEdit;
    GroupBox5: TGroupBox;
    proqasort2medical: TRadioButton;
    ProQASortField: TAlpineEdit;
    proqasort3medical: TRadioButton;
    proqasort4medical: TRadioButton;
    proqasort1medical: TRadioButton;
    proqasort5medical: TRadioButton;
    proqasort6medical: TRadioButton;
    GroupBox7: TGroupBox;
    proqasort3fire: TRadioButton;
    AlpineCheckBox14: TAlpineCheckBox;
    AlpineCheckBox13: TAlpineCheckBox;
    PROQASORTFire: TAlpineEdit;
    proqasort4fire: TRadioButton;
    proqasort2fire: TRadioButton;
    proqasort1fire: TRadioButton;
    proqasort5fire: TRadioButton;
    proqasort6fire: TRadioButton;
    AlpineCheckBox15: TAlpineCheckBox;
    AlpineCheckBox16: TAlpineCheckBox;
    Label27: TLabel;
    GroupBox6: TGroupBox;
    Label28: TLabel;
    PROQAPERSONDEParagraph: TRadioButton;
    PROQAPERSONDEBulleted: TRadioButton;
    Label29: TLabel;
    Label33: TLabel;
    PROQAALLOTHERDEField: TAlpineEdit;
    PROQAALLOTHERDEParagraph: TRadioButton;
    PROQAALLOTHERDEBulleted: TRadioButton;
    AlpineCheckBox4: TAlpineCheckBox;
    Shape1: TShape;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel4: TPanel;
    WithOutKQNum: TRadioButton;
    WithKQNum: TRadioButton;
    PROQASHOWSEQNUMField: TAlpineEdit;
    Panel5: TPanel;
    WithoutPROQA_SHORT: TRadioButton;
    WithPROQA_SHORT: TRadioButton;
    PROQA_SHORTField: TAlpineEdit;
    DispStatLocButton: TAlpineGlowButton;
    pagerosterField: TAlpineCheckBox;
    PAGEROSTERGRACEField: TAlpineEdit;
    PageRosterGraceLabel: TLabel;
    AlpineCheckBox3: TAlpineCheckBox;
    setdefaultcodes: TAlpineGlowButton;
    PropIDCheck: TAlpineGlowButton;
    ErrorLabel: TLabel;
    DispSOPButtonBrowse: TAlpineBlockBrowse;
    AlpineGlowButton1: TAlpineGlowButton;
    USEDISPQUEUEField: TAlpineCheckBox;
    QueueStatusLabel: TLabel;
    QueueStatusField: TAlpineLookup;
    DispSet32Button: TAlpineGlowButton;
    SmartIconsButton: TAlpineGlowButton;
    ClearIconsButton: TAlpineGlowButton;
    DispSet16Button: TAlpineGlowButton;
    AddCBC: TMenuItem;
    AlpineCheckBox5: TAlpineCheckBox;
    AlpineCheckBox1: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ResponseTabShow(Sender: TObject);
    procedure ProQAEMDCodeTabShow(Sender: TObject);
    procedure ResponseBrowseClick(Sender: TObject);
    procedure DispCallSourceTabShow(Sender: TObject);
    procedure DispSetTabChange(Sender: TObject);
    procedure DispCallTypeTabShow(Sender: TObject);
    procedure CallTypeCheckClick(Sender: TObject);
    procedure ApplyStationSearchOrderforallResponseTypes1Click(Sender: TObject);
    procedure ApplyStationSearchOrderforallResponseTypes2Click(Sender: TObject);
    procedure ApplyRequiredNumberofVehiclesacrossallDispatchBoxes1Click(Sender: TObject);
    procedure ApplyResponseNumbers1Click(Sender: TObject);
    procedure DispSeqBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
    procedure ApplyApparatusSearchOrderClick(Sender: TObject);
    procedure DispSeqBrowseMenuPopup(Sender: TObject);
    procedure DispAppBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure ReplicateClick(Sender: TObject);
    procedure SearchButtonClick(Sender: TObject);
    procedure ImportPROQAEFDClick(Sender: TObject);
    procedure ImportPROQAEMDClick(Sender: TObject);
    procedure DispCallTypeBrowseReplicate(Sender: TObject);
    procedure DispBoxBrowseReplicate(Sender: TObject);
    procedure ClearResponsewillclearoutallentriesingridBelow1Click(Sender: TObject);
    procedure ReplicethisresponseforacrossallCallTypesResponses1Click(Sender: TObject);
    procedure ReplicethisresponseforacrossallCallTypesResponses2Click(Sender: TObject);
    procedure ResponseBrowseMenuPopup(Sender: TObject);
    procedure CopySingleResponseClick(Sender: TObject);
    procedure PasteSingleResponseClick(Sender: TObject);
    procedure copypathClick(Sender: TObject);
    procedure copyformnameClick(Sender: TObject);
    procedure proqasort1medicalClick(Sender: TObject);
    procedure AdvTabSheet1Show(Sender: TObject);
    procedure DispAttrTabSheetShow(Sender: TObject);
    procedure AdvTabSheet4Show(Sender: TObject);
    procedure DispStatCodeTabShow(Sender: TObject);
    procedure DispBoxTabShow(Sender: TObject);
    procedure copyfromapparatusClick(Sender: TObject);
    procedure DispStatLocButtonClick(Sender: TObject);
    procedure setdefaultcodesClick(Sender: TObject);
    procedure PropIDCheckClick(Sender: TObject);
    procedure DispSet32ButtonClick(Sender: TObject);
    procedure DispSet16ButtonClick(Sender: TObject);
    procedure ClearIcons;
    procedure ClearIconsButtonClick(Sender: TObject);
    procedure SmartIconsButtonClick(Sender: TObject);
    procedure AddCBCClick(Sender: TObject);
    procedure RunCardFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure ApplyResponseNumbers(mDispCallTypeID, mDispAppType,mDispAttr,srcDispBoxID: String);
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure CommonApplyResponseNumbers(mDispCallTypeID, mList,mTable,srcDispBoxID: String);
    procedure DispTimeSlotNewRecord(DataSet: TDataSet);
    procedure ImportProQA(mTable: String);
    function CommonReplicate(mAlpineBlockBrowse: TAlpineBlockBrowse; mTable: String):Integer;
    function SetVar(var mDispCallTypeid,mDispBoxid: String): Boolean;
    procedure CommonReplicateAll(mTable: String);
    procedure LoadDispSetCustomForm;        
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DispSeqNewRecord(DataSet: TDataSet);

  end;

var
  DispSetForm: TDispSetForm;
  CopiedDispBoxID: String;
  CopiedDispCallTypeID: String;

implementation
uses GenFunc,
     SecSet,
     DispSetCustom,     
     CommonFunc,
     CommonDisp,
     CommonVar,
     DispStatCode,
     DispStat,
     DispCallType,
     DispLoc,
     DispApp,
     DispBox,
     DispSOPButton,
     SysSet,
     DispSeq,
     DispCallSource,
     DispAttr,
     FormFunc,
     DispResponse,
     progress,
     ProQAEFDCode,
     AlpineSetCode,
     DispTimeSlot,
     DispPrintList,
     Search,
     CommonDispVar,
     ProQAEMDCode;

{$R *.DFM}

class procedure TDispSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TDispSetForm.FormCreate(Sender: TObject);
Var SQLString       : String;
    mBrowseCode     : String;
begin
  inherited;
  CopiedDispBoxID                 := '';
  CopiedDispCallTypeID            := '';

  ProQAEMDCodeTab.TabVisible      := CheckModule('PROQA') or CheckModule('PROQAF');
  ProQAMedical.TabVisible         := (CheckModule('PROQA') and AlpineLogon) or IsMark;
  ProQAFire.TabVisible            := (CheckModule('PROQAF') and AlpineLogon) or IsMark;

  UseDispAttr.Visible             := AlpineLogin or (mFireID = '02220');
  DispPrintBrowse.Visible         := (mFireID = '30039') or AlpineLogin;
  DispPrintBrowse.Visible         := (mFireID = 'TARRA') or AlpineLogin;
  RetainColorField.Visible        := AlpineLogin;
  OnlyOnCallField.Visible         := AlpineLogin;
  UseDispSeqRestField.Visible     := AlpineLogin;
  USEDISPQUEUEField.Visible       := AlpineLogin;
  QueueStatusLabel.Visible        := AlpineLogin;
  QueueStatusField.Visible        := AlpineLogin;
  copyfromapparatus.Visible       := AlpineLogin or (mFireID = '02220');
  DispTimeSlotBrowse.Visible      := UseDispSeqRest or AlpineLogin;

  DispSeqBrowse.ExplicitWhereClause := ' WHERE 1=2 ';
  If UseDispSeqRest or (AlpineLogin) or (mFireID = '02220') then
    mBrowseCode := 'DISPSEQTIME'
  else
    mBrowseCode := 'DISPSEQ';
  DispSeqBrowse.Setup(mBrowseCode,TDispSeqForm,DispSeqNewRecord);

  ImportPROQAEMD.visible := AlpineLogin;
  ImportPROQAEFD.visible := AlpineLogin;
  setdefaultcodes.Visible:= AlpineLogin;
  PropIDCheck.Visible    := AlpineLogin;
  ImportPROQAEFD.parent  := ProQAEFDCodeBrowse.FbuttonPanel;
  ImportPROQAEFD.align   := alRight;
  ImportPROQAEMD.parent  := ProQAEMDCodeBrowse.FbuttonPanel;
  ImportPROQAEMD.align   := alRight;

  SearchButton.Parent                  := DispBoxBrowse.FButtonPanel;
  DispBoxBrowse.FDeleteButton.Position := bpmiddle;
  SearchButton.Align                   := alleft;

  EMSStatusCodesBox.visible     := (AlpineLogin) OR (mFireID = '23122') OR (mFireID = '21101');
  CustomTab.Visible             := TDispSetCustomForm.IsVisible;

  pagerosterField.Visible       := ((mFireid='12345') or (mFireid = '21099') or (mFireid = '26600')  or (mFireid = '06001') or (mFireid = '01309')) and AlpineLogon;
  PAGEROSTERGRACEField.Visible  := pagerosterField.Visible;
  PageRosterGraceLabel.Visible  := pagerosterField.Visible;
  AddCBC.Visible                := (mFireid='28019');
 end;

procedure TDispSetForm.FormShow(Sender: TObject);
begin
  inherited;
  DispSetTab.ActivePage           := GenTab;
  LoadDispSetCustomForm;
end;

procedure TDispSetForm.LoadDispSetCustomForm;
var mDispSetCustomForm: TDispSetCustomForm;
begin
  mDispSetCustomForm             := TDispSetCustomForm.Create(self);
  mDispSetCustomForm.borderstyle := forms.bsNone;
  mDispSetCustomForm.Parent      := CustomTab;
  mDispSetCustomForm.Show;
end;    

procedure TDispSetForm.ImportProQA(mTable: String);
var proqa       : TApolloData;
    proqaAccess : TApolloData;
    AccessData  : TAlpineAdoConnection;
    i           : integer;
begin
  If not BooleanMessageDlg('Use this utility to import data to the ' + mTable + '.  You will be prompted to open an Access file.  ' + 'The Access file can be generated by to the "Export System Tables" tab of the "Alpine Software Corporation" setup area.'+crlf+'Proceed?') then
    exit;
  If (TableRecCount(mTable)> 0) and not BooleanMessageDlg('There are already records on table '+mTable+'.  These will be purged.  Are you you want to proceed?') then
    exit;
  If accessopen.Execute then begin
    AccessData  := CreateAccessDataBase(self,accessopen.filename);
    proqaAccess := open_query(AccessData,False,'SELECT * from '+mTable);
    i := 0;
    if proqaAccess<>nil then begin
      runsql('delete from '+mTable);
      proqa := open_query(True,'SELECT * FROM '+mTable);
      while not proqaaccess.eof do begin
        proqa.insert;
        getfield(proqa,'code').AsString  := tdbfield(proqaaccess,'code');
        getfield(proqa,'descr').AsString := tdbfield(proqaaccess,'descr');
        getfield(proqa,'suffix').AsString := tdbfield(proqaaccess,'suffix');
        proqa.Post;
        i := i + 1;
        proqaaccess.next;
      end;
      proqa.free;
    end;
    proqaAccess.Free;
    AccessData.Free;
    ShowMessage('Imported '+inttostr(i)+' records.');
  end;
end;

procedure TDispSetForm.ImportPROQAEFDClick(Sender: TObject);
begin
  inherited;
  ImportProQA('PROQAEFDCODE'); 
end;

procedure TDispSetForm.ImportPROQAEMDClick(Sender: TObject);
begin
  inherited;
  ImportProQA('PROQAEMDCODE');
end;

procedure TDispSetForm.ResponseTabShow(Sender: TObject);
Var RespVar        : String;
    bShowResponses : Boolean;
begin
  inherited;
  progressgauge.Visible := True;
  Open_Query('DISPBOX',     false,'SELECT * FROM DISPBOX ORDER BY CODE');
  Open_Query('DISPCALLTYPE',false,'SELECT * FROM DISPCALLTYPE ORDER BY CODE');
  Open_Query('DISPSEQ',     false,'SELECT * FROM DISPSEQ WHERE 1=2');
  progressgauge.MaxValue := A('DISPBOX').QueryRecCount;
  progressgauge.progress := 0;
  If (mFireid = '60061') or (mFireId = '07140') or (mFireId = '02220') then begin
    bShowResponses := BooleanMessageDlg('Show Responses? (Can be slow)')
  end else begin
    bShowResponses := True;
  end;

  ResponseBrowse.ColCount := 0;
  ResponseBrowse.ClearColumns;
  ResponseBrowse.RowCount := ResponseBrowse.FixedRows;
  ResponseBrowse.SetColumn('DISPBOXID','DISPBOXID',  000);
  ResponseBrowse.SetColumn('CODE',     'Box#',       055);
  ResponseBrowse.SetColumn('DESCR',    'Description',200);

  If Not bShowResponses then
    ResponseBrowse.FixedRowHeight := 19;

  While Not A('DISPCALLTYPE').Eof do begin
    If tdbfield('DISPCALLTYPE','RESPONSE') = 'Y' then begin
      If bShowResponses then
        ResponseBrowse.SetColumn(tdbfield('DISPCALLTYPE','DISPCALLTYPEID'),tdbField('DISPCALLTYPE','CODE') + '-' + tdbfield('DISPCALLTYPE','VERBALDESCR') + #10#13 + tdbfield('DISPCALLTYPE','DESCR'),180)
      else
        ResponseBrowse.SetColumn(tdbfield('DISPCALLTYPE','DISPCALLTYPEID'),tdbField('DISPCALLTYPE','CODE'),50);
    end;    
    A('DISPCALLTYPE').Skip(1);
  end;

  While Not A('DISPBOX').Eof do begin
    progressgauge.progress := progressgauge.progress+1;
    application.processmessages;
    ResponseBrowse.SetValue('DISPBOXID', GetField('DISPBOX','DISPBOXID').AsString);
    ResponseBrowse.SetValue('CODE', tdbfield('DISPBOX','CODE'));
    ResponseBrowse.SetValue('DESCR',tdbfield('DISPBOX','DESCR'));

    A('DISPCALLTYPE').GoTop;
    If bShowResponses then
      A('DISPSEQ').UpdateSQL('SELECT DISPSEQ.DISPCALLTYPEID,DISPSEQ.ALARM1, DISPAPP.CODE ' +
                             'FROM DISPSEQ ' +
                             'LEFT JOIN DISPAPP ON (DISPSEQ.DISPAPPID = DISPAPP.DISPAPPID) ' +
                             'WHERE DISPSEQ.DISPBOXID = ' + GetField('DISPBOX','DISPBOXID').AsString + ' ' + 
                             'ORDER BY DISPAPP.CODE');

    While Not A('DISPCALLTYPE').Eof do begin
      RespVar := '';
      If not bShowResponses  then
        RespVar := '-'
      else begin
        A('DISPSEQ').GoTop;
        While Not A('DISPSEQ').Eof do begin
          if tdbfield('DISPSEQ','DISPCALLTYPEID')= GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString then
            RespVar := RespVar + tdbfield('DISPSEQ','CODE') + '-' + GetField('DISPSEQ','ALARM1').AsString + ', ';
          A('DISPSEQ').Skip(1);
        end;
        RespVar := Substr(RespVar,1,Length(RespVar)-2);
      end;
      ResponseBrowse.SetValue(tdbfield('DISPCALLTYPE','DISPCALLTYPEID'),RespVar);
      A('DISPCALLTYPE').Skip(1);
    end;
    A('DISPBOX').Skip(1);
  end;
  progressgauge.visible := False;
  CloseApollo('DISPCALLTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('DISPSEQ');
  If ResponseBrowse.ColCount > 3 then begin
    ResponseBrowse.FixedCols := 3;
    ResponseBrowseClick(self);
  end;
end;

procedure TDispSetForm.RunCardFieldClick(Sender: TObject);
begin
  inherited;
  RunCard := RunCardField.Checked;
end;

procedure TDispSetForm.SearchButtonClick(Sender: TObject);
begin
  inherited;
  DispBoxBrowse.Grid.SearchFooter.Visible := Not DispBoxBrowse.Grid.SearchFooter.Visible;
end;

procedure TDispSetForm.setdefaultcodesClick(Sender: TObject);
var DispStatCode : TApolloData;
    DispSet      : TApolloData;
  procedure SetCode(mCode,mDescr,mdispsetfield: String);
  begin
    If not dispstatcode.exactquerylocate(['code'],[mcode]) then begin
      DispStatCode.insert;
      GetField(dispstatcode,'code').AsString       := mCode;
      GetField(dispstatcode,'descr').AsString      := mDescr;
      GetField(dispstatcode,'shortdescr').AsString := mDescr;
      DispStatCode.Post;
    end;
    if getfield(dispset,mDispSetField).AsInteger=0 then
      getfield(dispset,mDispSetField).AsString := getfield(dispstatcode,'dispstatcodeid').AsString;
  end;
begin
  inherited;
  if anystrtoint(pk)=0 then begin
    showmessage('No records exists yet.  Make a simple change to the form first');
    exit;
  end;
  dispstatcode := open_query(true,'select * from dispstatcode');
  dispset      := open_query(true,'select * from dispset where dispsetid = '+pkValue(pk));
  dispset.edit;
  SetCode('REC','Time Received','timerecid');
  SetCode('DISP','Time Dispatched','TimeDispID');
  SetCode('NFIRS','NFIRS Generated','GenNfirsid');
  SetCode('ENR','Enroute','TimeOutID');
  SetCode('ARR','Arrived','TimeArrID');
  SetCode('CONT','Controlled','TimeContID');
  SetCode('CLR','Cleared','TimeInID');
  SetCode('ERH','Enroute Hospital','TimeEnrHospID');
  SetCode('AH','At Hospital','TimeAtHospID');
  SetCode('CLRHOSP','Clear Hospital','TimeClrHospID');
  SetCode('EOA','End of Alarm','EOACodeID');
  dispstatcode.free;
  dispset.Post;
  dispset.free;
  showmessage('Successful - Please Save Dispatch Settings form, exit and get back in to verify');
end;

procedure TDispSetForm.DispTimeSlotNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TDispSetForm.PropIDCheckClick(Sender: TObject);
var
  mRec: String;
  dispcall: TApolloData;
  ipropid: Integer;
  msql: String;
begin
  inherited;
  mRec := '500';
  if not BooleanMessageDlg('Use this utility to see how well historical call records will link to PROP records based on the GetPropIDFromDispCallFields function.  Continue') then exit;
  if not InputDlg('Number of Records','Number of Records',mRec,'9999999') then exit;
  GlobalUseStreetAndExtAliasesForPropID := True;
  progressgauge.visible := True;
  if globaladoconnection.tabletype = MySqlTableType then
    msql := 'select * from dispcall order by dispcallid desc limit '+mRec
  else
    msql := 'set rowcount '+mRec+';select * from dispcall order by dispcallid desc;set rowcount '+mRec;


  dispcall := open_query(mSql);
  progressgauge.MaxValue := dispcall.queryreccount;
  progressgauge.progress := 0;
  while not dispcall.eof do begin
    ipropid:=GetPropIDFromDispCallFields(dispcall,globaladoconnection);
    if iPropid>0 then
      appendtolog('Yes - '+FormatAddress(dispcall));
    progressgauge.progress := progressgauge.progress+1;
    application.processmessages; 

    dispcall.next;
  end;
  dispcall.free;
  showmessage('Done - Please open rednmx.log file to see results');
  progressgauge.visible := False;
end;

procedure TDispSetForm.ProQAEMDCodeTabShow(Sender: TObject);
begin
  inherited;
  ProQAEMDCodeBrowse.Setup('PROQAEMDCODE',TProQAEMDCodeForm,TProQAEMDCodeForm.NewRecord);
  ProQAEFDCodeBrowse.Setup('PROQAEFDCODE',TProQAEFDCodeForm,TProQAEFDCodeForm.NewRecord);
end;

procedure TDispSetForm.proqasort1medicalClick(Sender: TObject);
begin
  inherited;
  If Sender is TRadioButton then begin


    if lowercase(TRadioButton(Sender).Name)='withproqa_short' then
      PROQA_SHORTField.Value := 'Y'
    else if lowercase(TRadioButton(Sender).Name)='withoutproqa_short' then
      PROQA_SHORTField.Value := 'N'

    else if lowercase(TRadioButton(Sender).Name)='withkqnum' then
      PROQASHOWSEQNUMField.Value := 'Y'
    else if lowercase(TRadioButton(Sender).Name)='withoutkqnum' then
      PROQASHOWSEQNUMField.Value := 'N'
    else if lowercase(TRadioButton(Sender).Name)='proqapersondebulleted' then
      PROQAPERSONDEField.Value := 'B'
    else if lowercase(TRadioButton(Sender).Name)='proqapersondeparagraph' then
      PROQAPERSONDEField.Value := 'P'
    else if lowercase(TRadioButton(Sender).Name)='proqaallotherdebulleted' then
      PROQAALLOTHERDEField.Value := 'B'
    else if lowercase(TRadioButton(Sender).Name)='proqaallotherdeparagraph' then
      PROQAALLOTHERDEField.Value := 'P'
    else if lowercase(TRadioButton(Sender).Name)='proqafvehicledebulleted' then
      PROQAFVehicleDEField.Value := 'B'
    else if lowercase(TRadioButton(Sender).Name)='proqafvehicledeparagraph' then
      PROQAFVehicleDEField.Value := 'P'
    else if lowercase(TRadioButton(Sender).Name)='proqafallotherdebulleted' then
      PROQAFALLOTHERDEField.Value := 'B'
    else if lowercase(TRadioButton(Sender).Name)='proqafallotherdeparagraph' then
      PROQAFALLOTHERDEField.Value := 'P'
    else if Pos('medical',lowercase(TRadioButton(Sender).Name))>0 then
      ProQASortField.Value := inttostr(TRadioButton(Sender).Tag)
    else
      ProQASortFire.Value := inttostr(TRadioButton(Sender).Tag);
  end;
end;


procedure TDispSetForm.ReplicateClick(Sender: TObject);
begin
  inherited;
  If not BooleanMessageDlg('Replicate this response?') then
    exit;
  try
    Open_Query('SOURCEDISPSEQ',False,'SELECT * FROM DISPSEQ WHERE DISPSEQID = ' + PkValue(DispSeqBrowse.GetValue('DISPSEQID')));
    Open_Query('DESTDISPSEQ',True,'SELECT * FROM DISPSEQ WHERE 1=2');
    GetTable('DESTDISPSEQ').Insert;
    TransferFields('SOURCEDISPSEQ','DESTDISPSEQ','DISPSEQID');
    GetTable('DESTDISPSEQ').Post;

    if mFIreID = '30033' then begin
      Open_Query('SOURCEPAGEDISP',False,'SELECT * FROM PAGEDISP WHERE DISPSEQID = ' + PkValue(DispSeqBrowse.GetValue('DISPSEQID')));
      Open_Query('DESTPAGEDISP',True,'SELECT * FROM PAGEDISP WHERE 1=2');
      while Not A('SOURCEPAGEDISP').eof do begin
        GetTable('DESTPAGEDISP').Insert;
        TransferFields('SOURCEPAGEDISP','DESTPAGEDISP','PAGEDISPID');
        GetTable('DESTPAGEDISP').Post;
         A('SOURCEPAGEDISP').Skip(1);
      end;
      CloseApollo('SOURCEPAGEDISP');
      CloseApollo('DESTPAGEDISP');
    end;

    ShowMessage('Response Replicated');
    ResponseBrowseClick(nil);
  finally
    CloseApollo('DESTDISPSEQ');
    CloseApollo('SOURCEDISPSEQ');
  end;
end;

procedure TDispSetForm.CopySingleResponseClick(Sender: TObject);
begin
  inherited;
  If not SetVar(CopiedDispCallTypeID,CopiedDispBoxID) then
    exit;
  ShowMessage('Copied Single Response!');
end;

function TDispSetForm.SetVar(var mDispCallTypeid,mDispBoxid: String): Boolean;
begin
  mDispCallTypeID := ResponseBrowse.ColumnNames[DispSetForm.ResponseBrowse.Col];
  mDispBoxID      := ResponseBrowse.GetValue('DISPBOXID');
  result          := (anystrtoint(mDispCallTypeID)>0) and (anystrtoint(mDispBoxID)>0);
end;

procedure TDispSetForm.AddCBCClick(Sender: TObject);
var DispCallTypeid : String;
    DispBoxid      : String;
begin
  inherited;
  If not SetVar(DispCallTypeID,DispBoxID) then
    exit;

  RunSql('INSERT INTO DISPSEQ(DISPCALLTYPEID,DISPBOXID,DISPAPPID,DISPLOCID1,SEARCHORD,ALARM1) VALUES( ' +
                   AddExpr(DispCallTypeID) + ', ' +
                   AddExpr(DispBoxID) + ', ' +
                   AddExpr('26') + ', ' +
                   AddExpr('12') + ', ' +
                   AddExpr('S') + ', ' +
                   AddExpr('1') + ')');
end;

procedure TDispSetForm.PasteSingleResponseClick(Sender: TObject);
var DispCallTypeid : String;
    DispBoxid      : String;
    Copydispseq    : TApolloData;
    Copydisppage   : TApolloData;
    iNewID         : Integer;
    iNewPageID     : Integer;
begin
  inherited;
  If CopiedDispBoxID = '' then begin
    ShowMessage('Please Copy a response first!');
    exit;
  end;

  If not SetVar(DispCallTypeid,DispBoxid) then
    exit;
  If not BooleanMessageDlg('This will replace the selected response in the grid below to the copied response. - Proceed?') then
    exit;

  Copydispseq := open_query('SELECT * FROM DISPSEQ WHERE DISPBOXID = '+CopiedDispBoxID+' AND DISPCALLTYPEID = '+ CopiedDispCallTypeID);
  RunSql('DELETE FROM DISPSEQ WHERE DISPBOXID = '+DispBoxid+' AND DISPCALLTYPEID = '+DispCallTypeid);

  While Not Copydispseq.eof  do begin
    iNewID := AlpineReplicateRecord('DISPSEQ',Getfield(Copydispseq,'dispseqid').AsInteger);
    RunSql('UPDATE DISPSEQ SET DISPBOXID = '+DispBoxid+' WHERE DISPSEQID = '+inttostr(iNewid));
    RunSql('UPDATE DISPSEQ SET DISPCALLTYPEID = '+DispCallTypeid+' WHERE DISPSEQID = '+inttostr(iNewid));

    If mfireID = '30033' then begin
      Copydisppage := open_query('SELECT * FROM PAGEDISP WHERE DISPSEQID = '+ PkValue(Getfield(Copydispseq,'dispseqid').AsString));

      while Not Copydisppage.eof do begin
    	  iNewPageID := AlpineReplicateRecord('PAGEDISP',Getfield(Copydisppage,'PAGEDISPID').AsInteger);
        RunSql('UPDATE PAGEDISP SET DISPSEQID = '+IntToStr(iNewID)+' WHERE PAGEDISPID = '+inttostr(iNewPageID));

    	  Copydisppage.Skip(1);
    	end;
    	Copydisppage.Free;
    end;
    Copydispseq.next;
  end;
  Copydispseq.Free;
  DispSeqBrowse.RefreshGrid(-1);
end;

procedure TDispSetForm.CommonReplicateAll(mTable: String);
var mValue         : String;
    DispCallTypeid : String;
    DispBoxid      : String;
    mContTable     : String;
    dispseq        : TApolloData;
    vartable       : TApolloData;
    Copydisppage   : TApolloData;
    iNewID         : Integer;
    iNewPageID     : Integer;
    bCondition     : Boolean;
begin
  If not SetVar(DispCallTypeid,DispBoxid) then
    exit;
  try
    dispseq := open_query('SELECT * FROM DISPSEQ WHERE DISPBOXID = '+dispboxid+' AND DISPCALLTYPEID = '+DispCallTypeid);
    If uppercase(mTable)='DISPCALLTYPE' then begin
      mContTable := 'DISPBOX';
      vartable := open_query('SELECT * FROM '+mTable+'  WHERE '+mTable+'ID <> '+DispCallTypeid);
    end else begin
      mContTable := 'DISPCALLTYPE';
      vartable := open_query('SELECT * FROM '+mTable+'  WHERE '+mTable+'ID <> '+DispBoxid);
    end;

    ProgressForm := TProgressForm.Create(self);
    ProgressForm.Initialize('Applying',vartable.QueryRecCount);

    While Not vartable.eof  do begin
      progressForm.Increment;
      If uppercase(mTable)='DISPCALLTYPE' then
        bCondition := tdbfield(vartable,'RESPONSE') = 'Y'
      else
        bCondition := True;

      If bCondition  then begin
        dispseq.gotop;
        while not dispseq.eof do begin
          if uppercase(mTable)='DISPCALLTYPE' then
            mValue :=DispBoxid
          else
            mValue :=DispCallTypeid;

          RunSql('DELETE FROM DISPSEQ WHERE '+mContTable+'ID = '+mValue+' AND '+mTable+'ID = '+tdbfield(vartable,mtable+'id')+' AND DISPAPPID = '+tdbfield(dispseq,'dispappid'));
          iNewID := AlpineReplicateRecord('DISPSEQ',Getfield(dispseq,'dispseqid').AsInteger);
          RunSql('UPDATE DISPSEQ SET '+mTable+'ID = '+tdbfield(varTable,mTable+'id')+' WHERE DISPSEQID = '+inttostr(iNewid));

          if mfireID = '30033' then begin
        		Copydisppage := open_query('SELECT * FROM PAGEDISP WHERE DISPSEQID = '+ PkValue(Getfield(dispseq,'dispseqid').AsString));

        		while Not Copydisppage.eof do begin
      	  		iNewPageID := AlpineReplicateRecord('PAGEDISP',Getfield(Copydisppage,'PAGEDISPID').AsInteger);
          		RunSql('UPDATE PAGEDISP SET DISPSEQID = '+IntToStr(iNewID)+' WHERE PAGEDISPID = '+inttostr(iNewPageID));

      	  		Copydisppage.Skip(1);
      			end;
      			Copydisppage.Free;
      		end;
          dispseq.next;
        end;
      end;
      vartable.next;
    end;
    showMessage('Done');

  finally
    progressform.free;
    dispseq.free;
    vartable.free;
  end;
end;

procedure TDispSetForm.copyformnameClick(Sender: TObject);
begin
  inherited;
  If booleanMessageDlg('Set Form Name to '+formnamelabel.Caption+'?') then
    PROQAMEDICALFORMCAPTIONField.Value := formnamelabel.Caption;
end;


procedure TDispSetForm.copypathClick(Sender: TObject);
begin
  inherited;
  If booleanMessageDlg('Set Path to '+proqamedicalpathlabel.Caption+'?') then
    PROQAMEDICALEXEField.Value := proqamedicalpathlabel.Caption;
end;

procedure TDispSetForm.ReplicethisresponseforacrossallCallTypesResponses1Click(Sender: TObject);
begin
  inherited;
  If not BooleanMessageDlg('This will replace the response in the grid below to all other Call Types/Responses (i.e. "columns") - Proceed?') then
    exit;
  CommonReplicateAll('DISPCALLTYPE');
end;

procedure TDispSetForm.ReplicethisresponseforacrossallCallTypesResponses2Click(Sender: TObject);
begin
  inherited;
  If not BooleanMessageDlg('This will replace the response in the grid below to all other Boxes (i.e. "rows") - Proceed?') then
    exit;
  CommonReplicateAll('DISPBOX');
end;

procedure TDispSetForm.ResponseBrowseClick(Sender: TObject);
Var DispCallTypeID : String;
    DispBoxID      : String;
begin
  inherited;
  DispCallTypeID := ResponseBrowse.ColumnNames[DispSetForm.ResponseBrowse.Col];
  If (AnyStrToInt(DispCallTypeID) > 0) then begin
    DispBoxID                         := ResponseBrowse.GetValue('DISPBOXID');
    DispSeqBrowse.Caption.Text        := 'Apparatus to respond to Type: ' + SQLLookUp(DispCallTypeID,'DISPCALLTYPEID','DISPCALLTYPE','CODE') + '-' + SQLLookUp(DispCallTypeID,'DISPCALLTYPEID','DISPCALLTYPE','VERBALDESCR') + ', Box: ' + SQLLookUp(DispBoxID,'DISPBOXID','DISPBOX','CODE') + '-' + SQLLookUp(DispBoxID,'DISPBOXID','DISPBOX','DESCR');
    DispSeqBrowse.ExplicitWhereClause := ' WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeID) + ' AND DISPBOXID = ' + pkValue(DispBoxID);
    DispSeqBrowse.RefreshGrid(-1);
  end;
end;

procedure TDispSetForm.ResponseBrowseMenuPopup(Sender: TObject);
begin
  inherited;
  If CopiedDispBoxID = '' then
    PasteSingleResponse.Enabled := False
  else
    PasteSingleResponse.Enabled := True;
end;

procedure TDispSetForm.DispSeqBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
begin
  inherited;
  If AlpineQuery.FieldByName('SEARCHORD').AsString = 'A' then begin
    If FieldName='DISPLOC1_DISPLOC1DESCR' then
      Value := AlpineQuery.FieldByName('UNITNUM1').AsString
    else if FieldName='DISPLOC2_DISPLOC2DESCR' then
      Value := AlpineQuery.FieldByName('UNITNUM2').AsString
    else if FieldName='DISPLOC3_DISPLOC3DESCR' then
      Value := AlpineQuery.FieldByName('UNITNUM3').AsString
    else if FieldName='DISPLOC4_DISPLOC4DESCR' then
      Value := AlpineQuery.FieldByName('UNITNUM4').AsString
    else if FieldName='DISPLOC5_DISPLOC5DESCR' then
      Value := AlpineQuery.FieldByName('UNITNUM5').AsString
  end;
end;

procedure TDispSetForm.DispSeqBrowseMenuPopup(Sender: TObject);
begin
  inherited;
  ApplyApparatusSearchOrder.Visible := DispSeqBrowse.GetValue('SEARCHORD')='A';
end;

procedure TDispSetForm.DispSeqNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DISPCALLTYPEID').AsString := ResponseBrowse.ColumnNames[DispSetForm.ResponseBrowse.Col];
  if anystrtoint(ResponseBrowse.GetValue('DISPBOXID'))>0 then
    DataSet.FieldbyName('DISPBOXID').AsString      := ResponseBrowse.GetValue('DISPBOXID');
end;

procedure TDispSetForm.DispAppBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
begin
  inherited;
  CanDelete := BooleanMessageDlg('Delete Record?');
  If CanDelete then
    If SqlTableRecCount('SELECT COUNT(*) FROM DISPSEQ WHERE DISPAPPID = '+pkValue(DispAppBrowse.GetValue('DISPAPPID'))) > 0 then
      If BooleanMessageDlg('Would you like to delete Dispatch Sequence Records which have this as the Apparatus Type?') then
        RunSql('DELETE FROM DISPSEQ WHERE DISPAPPID = '+pkValue(DispAppBrowse.GetValue('DISPAPPID')));
end;

procedure TDispSetForm.DispAttrTabSheetShow(Sender: TObject);
begin
  inherited;
  DispPrintBrowse.Setup('DISPPRINTLIST',TDispPrintListForm,TDispPrintListForm.NewRecord);
  DispAttrBrowse.Setup('DISPATTR',TDispAttrForm,TDispAttrForm.NewRecord);
  DispTimeSlotBrowse.Setup('DISPTIMESLOT',TDispTimeSlotForm,DispTimeSlotNewRecord);
end;

procedure TDispSetForm.DispBoxBrowseReplicate(Sender: TObject);
begin
  inherited;
  CommonReplicate(DispBoxBrowse,'DISPBOX');
  ShowMessage('Done');
end;

function TDispSetForm.CommonReplicate(mAlpineBlockBrowse: TAlpineBlockBrowse; mTable: String): Integer;
var mNewCode      : String;
    iNewDispSeqID : Integer;
    iNewID        : Integer;
    id            : Integer;
begin
  inherited;
  id     := strtoint(mAlpineBlockBrowse.GetValue(mTable+'ID'));
  result := 0;
  if id = 0 then
    exit;
  if InputDlg('Replicate','Enter New Code',mNewCode,'!!!!!!!!!!',False) then begin
    if mNewCode = '' then
      ShowMessage('You must enter a value!')
    else if SqlLookup(mNewCode,'CODE',mTable,'CODE')=mNewCode then
      ShowMessage('Code '+mNewCode+' is already used - please select a unique code.')
    else begin
      iNewID := AlpineReplicateRecord(mTable,id);
      RunSql('UPDATE '+mTable+' SET CODE = '+AddExpr(mNewCode)+' WHERE '+mTable+'ID = '+inttostr(iNewID));
      Open_Query('SOURCE',False,'SELECT DISPSEQID FROM DISPSEQ WHERE '+mTable+'ID = '+inttostr(id));
      ProgressForm := TProgressForm.Create(self);
      ProgressForm.Initialize('Applying',A('SOURCE').QueryRecCount);
      while not A('SOURCE').eof do begin
        progressForm.Increment;
        iNewDispSeqid := AlpineReplicateRecord('DISPSEQ',GetField('SOURCE','DISPSEQID').AsInteger);
        RunSql('UPDATE DISPSEQ SET '+mTable+'ID = '+inttostr(iNewID)+' WHERE DISPSEQID = '+inttostr(iNewDispSeqid));
        A('SOURCE').Skip(1);
        application.processmessages;
      end;
      progressform.free;
      CloseApollo('SOURCE');
      mAlpineBlockBrowse.RefreshGrid(iNewID);

      result := iNewID;
    end;
  end;
end;

procedure TDispSetForm.DispCallTypeBrowseReplicate(Sender: TObject);
var iCurrentDispCallTypeid : Integer;
    iNewDispCallTypeid     : Integer;
  procedure ConvertSubTable(mTable: String);
  var i      : Integer;
      iNewID : Integer;
  begin
    try
      Open_Query('SRC',False,'SELECT * FROM '+mTable+' WHERE DISPCALLTYPEID = '+inttostr(iCurrentDispCallTypeid));
      while not A('SRC').eof do begin
        iNewId := AlpineReplicateRecord(mTable,GetField('SRC',mTable+'ID').AsInteger);
        RunSql('UPDATE '+mTable+' SET DISPCALLTYPEID = '+inttostr(iNewDispCalltypeid)+' WHERE '+mTable+'ID='+inttostr(iNewID));
        A('SRC').Skip(1);
      end;
    finally
      CloseApollo('SRC');
    end;
  end;
begin
  inherited;
  iCurrentDispCallTypeid := anystrtoint(DispCallTypeBrowse.GetValue('DISPCALLTYPEID'));
  iNewDispCallTypeid     := CommonReplicate(DispCallTypeBrowse,'DISPCALLTYPE');
  If iNewDispCallTypeid > 0 then begin
    If BooleanMessageDlg('Convert Nature of Call Entries?') then
      ConvertSubTable('DISPSUBTYPE');
    If BooleanMessageDlg('Convert Paging Assignments?') then
      ConvertSubTable('PAGEDISP');
  end;
  ShowMessage('Done');
end;

procedure TDispSetForm.DispCallSourceTabShow(Sender: TObject);
begin
  inherited;
  DispCallSourceBrowse.Setup('DISPCALLSOURCE',TDispCallSourceForm,TDispCallSourceForm.NewRecord);
  DispResponseBrowse.Setup('DISPRESPONSE',TDispResponseForm,TDispResponseForm.NewRecord);
end;

procedure TDispSetForm.DispSet32ButtonClick(Sender: TObject);
var
  iconname : String;
  meiconname : String;
  index : Integer;
  iconlist : TStringList;
begin
  inherited;
  //
  open_query('UNITSCODE', true, 'select UNITNUM, ICON, MEICON from DISPSTAT');
  while not A('UNITSCODE').eof do begin
    GetTable('UNITSCODE').Edit;
    //AppendToLog(getfield('UNITSCODE', 'ICON').AsString);
    iconname := getfield('UNITSCODE', 'ICON').AsString;
    meiconname := getfield('UNITSCODE', 'MEICON').AsString;
    if iconname <> '' then begin
      if not (Pos('32', iconname) = length(iconname) - 1) then begin
        iconlist := getIconList;
        if iconList.Find(iconname, index) then begin
          getfield('UNITSCODE', 'ICON').AsString := iconname + '32';
        end;
      end;
    end;
    if meiconname <> '' then begin
      if not (Pos('32', meiconname) = length(meiconname) - 1) then begin
        iconlist := getIconList;
        if iconList.Find(meiconname, index) then begin
          getfield('UNITSCODE', 'MEICON').AsString := meiconname + '32';
        end;
      end;
    end;
    GetTable('UNITSCODE').Post;
    A('UNITSCODE').Skip(1);
  end;
  CloseApollo('UNITSCODE');
end;

procedure TDispSetForm.DispSet16ButtonClick(Sender: TObject);
var
  iconname : String;
  meiconname : String;
  index : Integer;
  iconlist : TStringList;
begin
  inherited;
  //
  open_query('UNITSCODE', true, 'select UNITNUM, ICON, MEICON from DISPSTAT');
  while not A('UNITSCODE').eof do begin
    GetTable('UNITSCODE').Edit;
    //AppendToLog(getfield('UNITSCODE', 'ICON').AsString);
    iconname := getfield('UNITSCODE', 'ICON').AsString;
    meiconname := getfield('UNITSCODE', 'MEICON').AsString;
    if iconname <> '' then begin
      if (Pos('32', iconname) = length(iconname) -1) then begin
        iconlist := getIconList;
        iconname := substr(iconname, 1 , length(iconname) - 2);
        Appendtolog(iconname);   
        if iconList.Find(iconname, index) then begin
          getfield('UNITSCODE', 'ICON').AsString := iconname;
        end;
      end;
    end;
    if meiconname <> '' then begin
      if (Pos('32', meiconname) = length(meiconname) - 1) then begin
        iconlist := getIconList;
        meiconname := substr(meiconname, 1 , length(meiconname) - 2);
        if iconList.Find(meiconname, index) then begin
          getfield('UNITSCODE', 'MEICON').AsString := meiconname;
        end;
      end;
    end;
    GetTable('UNITSCODE').Post;
    A('UNITSCODE').Skip(1);
  end;
  CloseApollo('UNITSCODE');
end;

//Sets the mapping icons for the vehicles based on the unitnum/ description of the vehicle
procedure TDispSetForm.SmartIconsButtonClick(Sender: TObject);
var
  iconname : String;
  meiconname : String;
  desctab : String;
  unitnumtab : String;
  settostr : String;
  index : Integer;
begin
  inherited;
  {
    Add icon field to apparatus type, use that before reading strings. Feature for later.
    IF there is an icon in apparatus type, that will be considere 'default' and smart icon will still allow for overrides.
    *Will not* replace a field unless it is an empty string to account for this.
  }
  open_query('UNITSCODE', true, 'select UNITNUM, ICON, MEICON, DESCR, DISPAPPID from DISPSTAT');
  //DISPSTAT.DISPAPPID links to DISPAPP.DISPAPPID, which will allow you to pull DISPAPP.ICON when it exists
  while not A('UNITSCODE').eof do begin
    GetTable('UNITSCODE').Edit;
    iconname := getfield('UNITSCODE', 'ICON').AsString;
    meiconname := getfield('UNITSCODE', 'MEICON').AsString;
    desctab := LowerCase(getfield('UNITSCODE', 'DESCR').AsString);
    unitnumtab := getfield('UNITSCODE', 'UNITNUM').AsString;

    if ((Pos('A', unitnumtab) > 0) or (Pos('amb', desctab) > 0)) then
      settostr := 'AMBULANCE'
    else if ((Pos('C', unitnumtab) > 0) or (Pos('chief', desctab) > 0)) then
      settostr := 'CHIEF'
    else if ((Pos('E', unitnumtab) > 0) or (Pos('eng', desctab) > 0)) then
      settostr := 'ENGINE'
    else if ((Pos('L', unitnumtab) > 0) or (Pos('lad', desctab) > 0)) then
      settostr := 'LADDER'
    else if ((Pos('R', unitnumtab) > 0) or (Pos('rescue', desctab) > 0)) then
      settostr := 'RESCUE'
    else
      settostr := 'APPARATUS';
    if iconname = '' then begin
      getfield('UNITSCODE', 'ICON').AsString := settostr;
    end;
    if meiconname = '' then begin
      getfield('UNITSCODE', 'MEICON').AsString := settostr;
    end;
    GetTable('UNITSCODE').Post;
    A('UNITSCODE').Skip(1);
  end;
  CloseApollo('UNITSCODE');
end;

procedure TDispSetForm.ClearIcons;
var
  iconname : String;
  meiconname : String;
  index : Integer;
begin
  inherited;
  open_query('UNITSCODE', true, 'select UNITNUM, ICON, MEICON from DISPSTAT');
  while not A('UNITSCODE').eof do begin
    GetTable('UNITSCODE').Edit;
    iconname := getfield('UNITSCODE', 'ICON').AsString;
    meiconname := getfield('UNITSCODE', 'MEICON').AsString;
    if iconname <> '' then begin
      getfield('UNITSCODE', 'ICON').AsString := '';
    end;
    if meiconname <> '' then begin
      getfield('UNITSCODE', 'MEICON').AsString := '';
    end;
    GetTable('UNITSCODE').Post;
    A('UNITSCODE').Skip(1);
  end;
  CloseApollo('UNITSCODE');
end;


//Eventually this should open up a dialogue that asks the user to confirm whether they want to do this
procedure TDispSetForm.ClearIconsButtonClick(Sender: TObject);
var
  clearConfirm : Integer;
begin
  clearConfirm := messagedlg('This will clear all of your set icons. Are you sure?', mtWarning, [mbYes, mbCancel], 0);
  if clearConfirm = mrYes then ClearIcons;
end;


procedure TDispSetForm.DispSetTabChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := (DispSetTab.ActivePage = GenTab) or (DispSetTab.ActivePage = ProQAFire) or (DispSetTab.ActivePage = ProQAMedical);
end;

procedure TDispSetForm.DispStatLocButtonClick(Sender: TObject);
Var DispStatID : String;
begin
  inherited;
  DispStatID := DispStatBrowse.GetValue('DISPSTATID');
  Open_Query('DISPSTAT',true,'SELECT * FROM DISPSTAT WHERE DISPSTATID = ' + pkValue(DispStatID));
  GetTable('DISPSTAT').Edit;
//GetField('DISPSTAT','LATITUDE').AsString      := GetField('DISPSTAT','LATITUDETEST').AsString;
//GetField('DISPSTAT','LONGITUDE').AsString     := GetField('DISPSTAT','LONGITUDETEST').AsString;
  GetField('DISPSTAT','DATETIMEGPS').AsDateTime := Now;
  GetTable('DISPSTAT').Post;
  CloseApollo('DISPSTAT');
  DispStatBrowse.FGrid.SetValue('DATETIMEGPS',DispStatBrowse.FGrid.Row,FormatDateTime('MM/DD/YYYY  HH:NN',Now));
end;

procedure TDispSetForm.DispCallTypeTabShow(Sender: TObject);
Var ViewCode : String;
begin
  inherited;
  ViewCode := SQLLookUp('DISPCALLTYPE','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  If CallTypeCheck.Checked then
    DispCallTypeBrowse.ExplicitWhereClause := ' WHERE (DISPCALLTYPE.RESPONSE IS NULL OR DISPCALLTYPE.RESPONSE = ' + AddExpr(' ') + ' OR DISPCALLTYPE.RESPONSE = ' + AddExpr('N')+')'
  else if ResponseCheck.Checked then
    DispCallTypeBrowse.ExplicitWhereClause := ' WHERE (DISPCALLTYPE.RESPONSE = ' + AddExpr('Y')+') '
  else
    DispCallTypeBrowse.ExplicitWhereClause := '';
  DispCallTypeBrowse.Setup(IIf(ViewCode = '','DISPCALLTYPE',ViewCode),TDispCallTypeForm,TDispCallTypeForm.NewRecord);
end;

procedure TDispSetForm.CallTypeCheckClick(Sender: TObject);
begin                                                         
  inherited;
  DispCallTypeTabShow(self);
end;

procedure TDispSetForm.ClearResponsewillclearoutallentriesingridBelow1Click(Sender: TObject);
var DispCallTypeid,
    DispBoxid: String;
begin
  inherited;
  DispCallTypeID := ResponseBrowse.ColumnNames[DispSetForm.ResponseBrowse.Col];
  DispBoxID      := ResponseBrowse.GetValue('DISPBOXID');
  if (anystrtoint(DispCallTypeID)>0) and (anystrtoint(DispBoxID)>0) then begin
    if not BooleanMessageDlg('Clear all apparatus response for this specific Box Location and Call Type/Response') then exit;
    RunSql('DELETE FROM DISPSEQ WHERE DISPCALLTYPEID = '+DispCallTypeid+' AND DISPBOXID = '+DispBoxid);
    ResponseBrowseClick(nil);
  end;
end;

procedure TDispSetForm.ApplyStationSearchOrderforallResponseTypes1Click( Sender: TObject);
var mTable : String;
    mpk    : String;
begin
  inherited;
  Open_Query('GETIT',False,'SELECT * FROM DISPSEQ WHERE DISPSEQID = ' + PkValue(DispSeqBrowse.GetValue('DISPSEQID')));
  If (tdbField('GETIT','DISPAPPID')<>'') or (tdbField('GETIT','DISPATTRID')<>'') then begin
    If (tdbField('GETIT','DISPAPPID')<>'') then begin
      mTable := 'DISPAPP';
      mpk    := GetField('GETIT','DISPAPPID').AsString;
    end else begin
      mTable := 'DISPATTR';
      mPk    := GetField('GETIT','DISPATTRID').AsString;
    end;
    TDispSeqForm.ReplicateBoxes(mTable,mPK,'DISPCALLTYPE',GetField('GETIT','DISPCALLTYPEID').AsString,GetField('GETIT','DISPBOXID').AsString,DispSeqBrowse.GetValue('DISPSEQID'),False);
  end;
  CloseApollo('GETIT');
  ResponseBrowseClick(nil);
end;

procedure TDispSetForm.ApplyStationSearchOrderforallResponseTypes2Click(Sender: TObject);
begin
  inherited;
  Open_Query('GETIT',False,'SELECT * FROM DISPSEQ WHERE DISPSEQID = ' + PkValue(DispSeqBrowse.GetValue('DISPSEQID')));
  TDispSeqForm.ReplicateBoxes('DISPCALLTYPE',GetField('GETIT','DISPCALLTYPEID').AsString,'DISPAPP',GetField('GETIT','DISPAPPID').AsString,GetField('GETIT','DISPBOXID').AsString,DispSeqBrowse.GetValue('DISPSEQID'),False);
  CloseApollo('GETIT');
  ResponseBrowseClick(nil);
end;

procedure TDispSetForm.ApplyResponseNumbers(mDispCallTypeID, mDispAppType,mDispAttr,srcDispBoxID: String);
begin
  CommonApplyResponseNumbers(mDispCallTypeID,mDispAppType,'DISPAPP',srcDispBoxID);
  CommonApplyResponseNumbers(mDispCallTypeID,mDispAttr,'DISPATTR',srcDispBoxID);
  ShowMessage('Done');
end;

procedure TDispSetForm.AdvTabSheet1Show(Sender: TObject);
Var DispLocViewCode : String;
begin
  inherited;
  DispLocViewCode := SQLLookUp('DISPLOC','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  DispLocBrowse.Setup(IIf(DispLocViewCode = '','DISPLOC',DispLocViewCode),TDispLocForm,TDispLocForm.NewRecord);
  DispAppBrowse.Setup('DISPAPP',TDispAppForm,TDispAppForm.NewRecord);
end;

procedure TDispSetForm.AdvTabSheet4Show(Sender: TObject);
begin
  inherited;
  DispStatBrowse.Setup('DISPSTAT',TDispStatForm,TDispStatForm.NewRecord);
  DispStatLocButton.Parent              := DispStatBrowse.FButtonPanel;
  DispSet32Button.Parent                := DispStatBrowse.FButtonPanel;
  DispSet32Button.Visible               := AlpineLogin;
  DispSet16Button.Parent                := DispStatBrowse.FButtonPanel;
  DispSet16Button.Visible               := AlpineLogin;
  SmartIconsButton.Parent               := DispStatBrowse.FButtonPanel;
  SmartIconsButton.Visible               := AlpineLogin;
  ClearIconsButton.Parent               := DispStatBrowse.FButtonPanel;
  ClearIconsButton.Visible               := AlpineLogin;
  DispStatBrowse.FDeleteButton.Position := bpmiddle;
  DispStatLocButton.Align               := alleft;
  DispSet32Button.Align                 := alleft;
  DispSet16Button.Align                 := alleft;
  SmartIconsButton.Align                := alleft;
  ClearIconsButton.Align                := alleft;

end;

procedure TDispSetForm.DispStatCodeTabShow(Sender: TObject);
begin
  inherited;
  DispStatCodeBrowse.Setup('DISPSTATCODE',TDispStatCodeForm,TDispStatCodeForm.NewRecord);
end;

procedure TDispSetForm.DispBoxTabShow(Sender: TObject);
begin
  inherited;
  DispBoxBrowse.Setup('DISPBOX',TDispBoxForm,TDispBoxForm.NewRecord);
  DispSOPButtonBrowse.Setup('DISPSOPBUTTON',TDispSOPButtonForm,TDispSOPButtonForm.NewRecord);
end;

procedure TDispSetForm.ApplyApparatusSearchOrderClick(Sender: TObject);
var i      : Integer;
    mField : String;
begin
  inherited;
  if not BooleanMessageDlg('Apply Apparatus Search Order to all Dispatch Boxes') then exit;
  try
    Open_Query('DISPSEQ',False,'SELECT * FROM DISPSEQ WHERE DISPSEQID = '+pkValue(DispSeqBrowse.GetValue('DISPSEQID')));
    Open_Query('TARGETDISPSEQ',True,'SELECT * FROM DISPSEQ WHERE SEARCHORD = '+AddExpr('A')+
    ' AND DISPCALLTYPEID = '+pkValue(GetField('DISPSEQ','DISPCALLTYPEID').AsString)+
    ' AND DISPBOXID <> '+pkValue(DispSeqBrowse.GetValue('DISPBOXID')));
    Open_Query('ALLDISPBOX',False,'SELECT * FROM DISPBOX ORDER BY DISPBOXID');

    ProgressForm := TProgressForm.Create(self);
    ProgressForm.Initialize('Applying',A('ALLDISPBOX').QueryRecCount);
    while not A('ALLDISPBOX').eof do begin
      if progressform.CancelRoutine then break;
      progressForm.Increment;
      A('TARGETDISPSEQ').ExactQueryLocateAndPutInEditMode(['DISPBOXID'],[GetField('ALLDISPBOX','DISPBOXID').AsString]);
      for i:=0 to GetTable('TARGETDISPSEQ').Fields.Count-1 do begin
        mField := GetTable('TARGETDISPSEQ').Fields[i].FieldName;
        if (mField <> 'DISPSEQID') then
          GetField('TARGETDISPSEQ',mField).AsString := GetField('DISPSEQ',mField).AsString;
      end;
      GetField('TARGETDISPSEQ','DISPBOXID').AsInteger := GetField('ALLDISPBOX','DISPBOXID').AsInteger;
      GetField('TARGETDISPSEQ','SORTORD').AsString :=  GetField('DISPSEQ','SORTORD').AsString;
      A('TARGETDISPSEQ').Post;
      A('ALLDISPBOX').skip(1);
    end;

  finally
    CloseApollo('DISPSEQ');
    CloseApollo('TARGETDISPSEQ');
    CloseApollo('ALLDISPBOX');
  end;
  progressform.free;
  ShowMessage('Done');
end;

procedure TDispSetForm.CommonApplyResponseNumbers(mDispCallTypeID, mList,mTable,srcDispBoxID: String);
var i: Integer;
begin
  If mList = '' then
    exit;
  try
    Open_Query('SOURCE',False,'SELECT * FROM DISPSEQ WHERE DISPCALLTYPEID = '+
      pkValue(mDispCalltypeID)+' AND DISPBOXID = '+pkValue(srcDispBoxID) +' AND '+mTable+'ID IN ('+mList+')');
    Open_Query('CURRENTDISPSEQ',True,'SELECT * FROM DISPSEQ WHERE DISPCALLTYPEID = '+pkValue(mDispCallTypeID));
    Open_Query('ALLDISPBOX',False,'SELECT * FROM DISPBOX ORDER BY DISPBOXID');
    Open_Query('ALLAPP',False,'SELECT * FROM '+mTable+' WHERE '+mTable+'ID IN ('+mList+')');

    ProgressForm := TProgressForm.Create(self);
    ProgressForm.Initialize('Applying',A('ALLDISPBOX').QueryRecCount);

    while not A('ALLDISPBOX').eof do begin
      If progressform.CancelRoutine then
        break;
      progressForm.Increment;
      A('ALLAPP').GoTop;
      while not A('ALLAPP').eof do begin
        if A('CURRENTDISPSEQ').ExactQueryLocate([mTable+'ID','DISPBOXID'],[GetField('ALLAPP',mTable+'ID').AsString,GetField('ALLDISPBOX','DISPBOXID').AsString]) then
          GetTable('CURRENTDISPSEQ').Edit
        else begin
          GetTable('CURRENTDISPSEQ').Insert;
          GetField('CURRENTDISPSEQ','DISPCALLTYPEID').AsString := mDispCallTypeID;
          if mTable='DISPAPP' then
            GetField('CURRENTDISPSEQ','DISPAPPID').AsString := GetField('ALLAPP','DISPAPPID').AsString
          else
            GetField('CURRENTDISPSEQ','DISPATTRID').AsString := GetField('ALLAPP','DISPATTRID').AsString;
          Getfield('CURRENTDISPSEQ','DISPBOXID').AsString := GetField('ALLDISPBOX','DISPBOXID').AsString;
        end;
        A('SOURCE').ExactQueryLocate(mTable+'ID',GetField('ALLAPP',mTable+'ID').AsString);
        for i:=1 to 10 do begin
          GetField('CURRENTDISPSEQ','ALARM'+inttostr(i)).AsString := GetField('SOURCE','ALARM'+inttostr(i)).AsString;
        end;

        for i:= 1 to 14 do begin
          GetField('CURRENTDISPSEQ','APPALIAS'+inttostr(i)).AsString := GetField('SOURCE','APPALIAS'+inttostr(i)).AsString;
        end;
        GetField('CURRENTDISPSEQ','SORTORD').AsString :=  GetField('SOURCE','SORTORD').AsString;

        GetTable('CURRENTDISPSEQ').Post;
        A('ALLAPP').Skip(1);
      end;
      A('ALLDISPBOX').Skip(1);
    end;
  finally
    progressform.free;
    CloseApollo('SOURCE');
    CloseApollo('CURRENTDISPSEQ');
    CloseApollo('ALLDISPBOX');
    CloseApollo('ALLAPP');
  end;
end;

procedure TDispSetForm.ApplyResponseNumbers1Click(Sender: TObject);
var mAppType      : String;
    mDispCallType : String;
begin
  inherited;
  try
    Open_Query('GETIT',False,'SELECT * FROM DISPSEQ WHERE DISPSEQID = ' + PkValue(DispSeqBrowse.GetValue('DISPSEQID')));
    mAppType      := SqlLookup(GetField('GETIT','DISPAPPID').AsString,'DISPAPPID','DISPAPP','CODE');
    mDispCallType := SqlLookup(GetField('GETIT','DISPCALLTYPEID').AsString,'DISPCALLTYPEID','DISPCALLTYPE','DESCR');

    if BooleanMessageDlg('Would you like to apply the the number of appartus responding for each alarm for apparatus type '+mApptype+' and call type '+
      mDispCalltype+' across all dispatch boxes?') then
        ApplyResponseNumbers(GetField('GETIT','DISPCALLTYPEID').AsString, GetField('GETIT','DISPAPPID').AsString,GetField('GETIT','DISPATTRID').AsString,GetField('GETIT','DISPBOXID').AsString);
  finally
    CloseApollo('GETIT');
  end;
end;

procedure TDispSetForm.ApplyRequiredNumberofVehiclesacrossallDispatchBoxes1Click( Sender: TObject);
var dispCalltypeID : String;
    DispBoxID      : String;
    mDispAppList   : String;
    mDispAttr      : String;
    mUnitList      : String;
begin
  mDispAppList := '';
  mDispAttr    := '';
  mUnitList    := '';
  DispCallTypeID := ResponseBrowse.ColumnNames[DispSetForm.ResponseBrowse.Col];
  DispBoxID      := ResponseBrowse.GetValue('DISPBOXID');
  try
    Open_Query('GETAPPTYPE',False,'SELECT DISPAPPID FROM DISPSEQ WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeID) + ' AND DISPBOXID = ' + pkValue(DispBoxID)+' AND DISPAPPID>0');
    while not A('GETAPPTYPE').eof do begin
      mDispAppList := mDispAppList + GetField('GETAPPTYPE','DISPAPPID').AsString;
      A('GETAPPTYPE').Skip(1);
      if not A('GETAPPTYPE').eof then
        mDispAppList := mDispAppList + ',';
    end;
  finally
    CloseApollo('GETAPPTYPE');
  end;

  try
    Open_Query('GETATTR',False,'SELECT DISPATTRID FROM DISPSEQ WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeID) + ' AND DISPBOXID = ' + pkValue(DispBoxID)+' AND DISPATTRID>0');
    while not A('GETATTR').eof do begin
      mDispAttr := mDispAttr + GetField('GETATTR','DISPATTRID').AsString;
      A('GETATTR').Skip(1);
      if not A('GETATTR').eof then
        mDispAttr := mDispAttr + ',';
    end;
  finally
    CloseApollo('GETATTR');
  end;
  ApplyResponseNumbers(DispCallTypeID,mDispAppList,mDispAttr,DispBoxId);
end;

procedure TDispSetForm.DoAfterSetControls(Sender: TObject);
begin
  DispAttrTabSheet.TabVisible := usedispattr.Checked;
  if ProQASortField.Value = '1' then
    proqasort1medical.Checked := True
  else if ProQASortField.Value = '2' then
    proqasort2medical.Checked := True
  else if ProQASortField.Value = '3' then
    proqasort3medical.Checked := True
  else if ProQASortField.Value = '4' then
    proqasort4medical.Checked := True
  else if ProQASortField.Value = '5' then
    proqasort5medical.Checked := True
  else if ProQASortField.Value = '6' then
    proqasort6medical.Checked := True;

  if ProQASortFire.Value = '1' then
    proqasort1fire.Checked := True
  else if ProQASortFire.Value = '2' then
    proqasort2fire.Checked := True
  else if ProQASortFire.Value = '3' then
    proqasort3fire.Checked := True
  else if ProQASortFire.Value = '4' then
    proqasort4fire.Checked := True
  else if ProQASortFire.Value = '5' then
    proqasort5fire.Checked := True
  else if ProQASortFire.Value = '6' then
    proqasort6fire.Checked := True;


  if PROQAPERSONDEField.Value = 'B' then
    PROQAPERSONDEBulleted.Checked := True
  else
    PROQAPERSONDEParagraph.Checked := True;


  if PROQAALLOTHERDEField.Value = 'B' then
    PROQAALLOTHERDEBulleted.Checked := True
  else
    PROQAALLOTHERDEParagraph.Checked  := True;


  if PROQAFVehicleDEField.Value = 'B' then

    PROQAFVehicleDEBulleted.Checked := True
  else
    PROQAFVehicleDEParagraph.Checked := True;


  if PROQAFALLOTHERDEField.Value = 'B' then
    PROQAFALLOTHERDEBulleted.Checked := True
  else
    PROQAFALLOTHERDEParagraph.Checked  := True;

  WithKQNum.Checked := PROQASHOWSEQNUMField.Value='Y';

    
  WithPROQA_SHORT.Checked :=PROQA_SHORTField.vALUE='Y';


end;

procedure TDispSetForm.copyfromapparatusClick(Sender: TObject);
  Var InvSubTypeID : String;
  dispapp,truck,dispstat: TApolloData;
  mType: String;
begin
  inherited;

  if not BooleanMessageDlg('Use this utility to "Pull" from the Appartus module fire units.  It does this based on UNITNUM.  '+
    'It will also pull over the "Type" if the codes are consisistent.'+crlf+'Proceed?') then exit;
  truck := open_query('select * from inv where type = '+AddExpr('TRUCK'));
  dispstat := open_query(True,'select * from dispstat');
  dispapp := open_query('select * from dispapp');
  while not truck.eof do begin
    if tdbfield(truck,'unitnum')<>'' then begin
      dispstat.ExactQueryLocateAndPutInEditMode(['unitnum'],[tdbfield(truck,'unitnum')]);
      getfield(dispstat,'unitnum').AsString := tdbfield(truck,'unitnum');
      if tdbfield(truck,'fdid')='' then
        getfield(dispstat,'fdid').AsString := mfireid
      else
        getfield(dispstat,'fdid').AsString := tdbfield(truck,'fdid');
      mType := sqllookup(tdbfield(truck,'invsubtypeid'),'invsubtypeid','invsubtype','code');
      if dispapp.exactquerylocate('code',mType) then
        getfield(dispstat,'dispappid').AsInteger := getfield(dispapp,'dispappid').AsInteger;
      getfield(dispstat,'descr').AsString := tdbfield(truck,'descr');
      getfield(dispstat,'AVL').AsString := tdbfield(truck,'INCLUDE');

      dispstat.post;
    end;
    truck.next;
  end;

  truck.free;
  dispstat.free;
  dispapp.free;
  ShowMessage('Finished');
end;

end. 
