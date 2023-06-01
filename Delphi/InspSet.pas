unit InspSet;
 
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
  AlpinePanel,
  AdvGroupBox,
  AlpineMemo,
  MySBox;

type
  TInspSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    InspSetControl: TAdvPageControl;
    InspTypeTab: TAdvTabSheet;
    InspTypeBrowse: TAlpineBlockBrowse;
    InspStatTab: TAdvTabSheet;
    InspStatBrowse: TAlpineBlockBrowse;
    GenTab: TAdvTabSheet;
    VioStatTab: TAdvTabSheet;
    VioStatBrowse: TAlpineBlockBrowse;
    PersInspTab: TAdvTabSheet;
    PersInspBrowse: TAlpineBlockBrowse;
    InspTickTypeTab: TAdvTabSheet;
    InspTickTypeBrowse: TAlpineBlockBrowse;
    VioCodeSetBrowse: TAlpineBlockBrowse;
    InvInspBrowse: TAlpineBlockBrowse;
    InspImageTypeTab: TAdvTabSheet;
    InspImageTypeBrowse: TAlpineBlockBrowse;
    ImportCodes: TAlpineGlowButton;
    OpenDialog1: TOpenDialog;
    InspPropTypeTab: TAdvTabSheet;
    InspPropTypeBrowse: TAlpineBlockBrowse;
    Panel5: TPanel;
    InspCodeTempTypeBrowse: TAlpineBlockBrowse;
    EMSStatusCodesBox: TAlpinePanel;
    Label1: TLabel;
    Label3: TLabel;
    EmailFaxLabel: TLabel;
    VioCodeSetIDField: TAlpineLookup;
    VioStatIDField: TAlpineLookup;
    EmailFaxField: TAlpineCheckBox;
    MobInspPanel: TAlpinePanel;
    Label2: TLabel;
    Label4: TLabel;
    EmailMessageField: TAlpineMemo;
    EmailSubjectField: TAlpineEdit;
    SysRepBrowse: TAlpineBlockBrowse;
    ConvTab: TAdvTabSheet;
    AlpinePanel1: TAlpinePanel;
    IFC2015RemoteCRButton: TAlpineGlowButton;
    LoadChapterButton: TAlpineGlowButton;
    Label7: TLabel;
    ChapterField: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    Label8: TLabel;
    NFPAColNumField: TLabel;
    NFPARawButton: TAlpineGlowButton;
    NFPAChapField: TAlpineEdit;
    IFC2015BaseButton: TAlpineGlowButton;
    Label5: TLabel;
    IFC2015Directory: TAlpineEdit;
    RemoveAllButton: TAlpineGlowButton;
    NFPAChapterField: TLabel;
    NFPABaseButton: TAlpineGlowButton;
    NFPAChapterButton: TAlpineGlowButton;
    NFPACodeButton: TAlpineGlowButton;
    NFPA2015Directory: TAlpineEdit;
    Label6: TLabel;
    ListBox: TListBox;
    AlpinePanel3: TAlpinePanel;
    Label9: TLabel;
    NFPA101RawButton: TAlpineGlowButton;
    NFPA101ChapField: TAlpineEdit;
    NFPA101RemoveAllButton: TAlpineGlowButton;
    NFPA101BaseButton: TAlpineGlowButton;
    NFPA101ChapterButton: TAlpineGlowButton;
    AlpineGlowButton1: TAlpineGlowButton;
    NFPA101CodeButton: TAlpineGlowButton;
    AlpinePanel4: TAlpinePanel;
    Label13: TLabel;
    NFPA2012BaseButton: TAlpineGlowButton;
    NFPA2012ChapterButton: TAlpineGlowButton;
    NFPA2012CodeButton: TAlpineGlowButton;
    NFPA2012Directory: TAlpineEdit;
    AlpinePanel5: TAlpinePanel;
    Label10: TLabel;
    IPMC2015RawButton: TAlpineGlowButton;
    IPMC2015ChapField: TAlpineEdit;
    IPMC2015BaseButton: TAlpineGlowButton;
    IPMC2015ChapterButton: TAlpineGlowButton;
    IPMC2015CodeButton: TAlpineGlowButton;
    AlpinePanel6: TAlpinePanel;
    String1Field: TLabel;
    ChapterLabel: TLabel;
    Label11: TLabel;
    CloseVioStatIDField: TAlpineLookup;
    AlpinePanel7: TAlpinePanel;
    Label12: TLabel;
    Label14: TLabel;
    IFC2012RemoveCRButton: TAlpineGlowButton;
    IFC2012ChapterButton: TAlpineGlowButton;
    LoadIFC2012CodeButton: TAlpineGlowButton;
    IFC2012ChapterField: TAlpineEdit;
    IFC2012BaseButton: TAlpineGlowButton;
    IFC2012Directory: TAlpineEdit;
    AlpineGlowButton6: TAlpineGlowButton;
    Panel2: TPanel;
    InspLocBrowse: TAlpineBlockBrowse;
    SysNarrBrowse: TAlpineBlockBrowse;
    InspBoxBrowse: TAlpineBlockBrowse;
    InspCntButton: TAlpineGlowButton;
    AlpinePanel8: TAlpinePanel;
    Label15: TLabel;
    Label16: TLabel;
    AlpineGlowButton2: TAlpineGlowButton;
    LoadNJ2015ChapterButton: TAlpineGlowButton;
    NJIFC2015ChapterField: TAlpineEdit;
    NJ2015BaseButton: TAlpineGlowButton;
    NJIFC2015DirectoryField: TAlpineEdit;
    AlpineGlowButton7: TAlpineGlowButton;
    LoadNJ2015CodeButton: TAlpineGlowButton;
    AlpineGlowButton4: TAlpineGlowButton;
    MyScrollBox1: TMyScrollBox;
    AlpinePanel9: TAlpinePanel;
    Label17: TLabel;
    AlpineGlowButton3: TAlpineGlowButton;
    AlpineEdit1: TAlpineEdit;
    AlpineGlowButton5: TAlpineGlowButton;
    NJUFCBaseButton: TAlpineGlowButton;
    AlpineGlowButton9: TAlpineGlowButton;
    NJUFCCodeButton: TAlpineGlowButton;
    NCIFC2018Panel: TAlpinePanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    AlpineGlowButton8: TAlpineGlowButton;
    AlpineEdit2: TAlpineEdit;
    AlpineGlowButton10: TAlpineGlowButton;
    NC2018BaseButton: TAlpineGlowButton;
    NC2018ChapterButton: TAlpineGlowButton;
    LoadNCIFC2018Button: TAlpineGlowButton;
    NCIFC2018Directory: TAlpineEdit;
    BottomSplitter: TSplitter;
    Splitter1: TSplitter;
    NCChp2Button: TAlpineGlowButton;
    AlpinePanel10: TAlpinePanel;
    Label23: TLabel;
    Label24: TLabel;
    VAIFC2015RemoveAllButton: TAlpineGlowButton;
    VA2015BaseButton: TAlpineGlowButton;
    VA2015ChapterButton: TAlpineGlowButton;
    LoadVAIFC2015Button: TAlpineGlowButton;
    AlpineGlowButton16: TAlpineGlowButton;
    AlpinePanel11: TAlpinePanel;
    IFCBaseButton: TAlpineGlowButton;
    IFCChapterButton: TAlpineGlowButton;
    LoadIFCButton: TAlpineGlowButton;
    IFCChp2Button: TAlpineGlowButton;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    NYS2020RadioButton: TRadioButton;
    IFC2018RadioButton: TRadioButton;
    Splitter4: TSplitter;
    NFPA1012015Check: TRadioButton;
    MFSC2015Check: TRadioButton;
    NFPA582014Check: TRadioButton;
    NFPA132013Check: TRadioButton;
    NFPA312011Check: TRadioButton;
    NFPA722013Check: TRadioButton;
    VAIFC2018: TRadioButton;
    InspMobileMessagePanel: TAlpinePanel;
    InspEmailSubjectBrowse: TAlpineBlockBrowse;
    NJ2016DefButton: TAlpineGlowButton;
    IPMC2018: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure InspTypeTabShow(Sender: TObject);
    procedure InspStatTabShow(Sender: TObject);
    procedure VioStatTabShow(Sender: TObject);
    procedure PersInspTabShow(Sender: TObject);
    procedure PersInspBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InvInspBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InspTickTypeTabShow(Sender: TObject);
    procedure InspImageTypeTabShow(Sender: TObject);
    procedure ImportCodesClick(Sender: TObject);
    procedure PersInspBrowseEdit(Sender: TObject);
    procedure InspPropTypeTabShow(Sender: TObject);
    procedure InspTypeBrowseReplicate(Sender: TObject);
    procedure GenTabShow(Sender: TObject);
    procedure IFC2015RemoteCRButtonClick(Sender: TObject);
    procedure LoadChapterButtonClick(Sender: TObject);
    procedure LoadCodeButtonClick(Sender: TObject);
    procedure IFC2015BaseButtonClick(Sender: TObject);
    procedure RemoveAllButtonClick(Sender: TObject);
    procedure NFPARawButtonClick(Sender: TObject);
    procedure NFPABaseButtonClick(Sender: TObject);
    procedure NFPAChapterButtonClick(Sender: TObject);
    procedure NFPACodeButtonClick(Sender: TObject);
    procedure NFPA101BaseButtonClick(Sender: TObject);
    procedure NFPA101RemoveAllButtonClick(Sender: TObject);
    procedure NFPA101RawButtonClick(Sender: TObject);
    procedure NFPA101ChapterButtonClick(Sender: TObject);
    procedure NFPA101CodeButtonClick(Sender: TObject);
    procedure InspTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure InspStatBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure NFPA2012BaseButtonClick(Sender: TObject);
    procedure NFPA2012ChapterButtonClick(Sender: TObject);
    procedure NFPA2012CodeButtonClick(Sender: TObject);
    procedure IPMC2015RawButtonClick(Sender: TObject);
    procedure IPMC2015BaseButtonClick(Sender: TObject);
    procedure IPMC2015ChapterButtonClick(Sender: TObject);
    procedure IPMC2015CodeButtonClick(Sender: TObject);
    procedure IFC2012BaseButtonClick(Sender: TObject);
    procedure IFC2012ChapterButtonClick(Sender: TObject);
    procedure IFC2012RemoveCRButtonClick(Sender: TObject);
    procedure LoadIFC2012CodeButtonClick(Sender: TObject);
    procedure InspBoxButtonClick(Sender: TObject);
    procedure InspCntButtonClick(Sender: TObject);
    procedure NJ2015BaseButtonClick(Sender: TObject);
    procedure LoadNJ2015ChapterButtonClick(Sender: TObject);
    procedure LoadNJ2015CodeButtonClick(Sender: TObject);
    procedure VioStatBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure NJUFCCodeButtonClick(Sender: TObject);
    procedure NJUFCBaseButtonClick(Sender: TObject);
    procedure NC2018BaseButtonClick(Sender: TObject);
    procedure NC2018ChapterButtonClick(Sender: TObject);
    procedure LoadNCIFC2018ButtonClick(Sender: TObject);
    procedure NCChp2ButtonClick(Sender: TObject);
    procedure VAIFC2015RemoveAllButtonClick(Sender: TObject);
    procedure VA2015BaseButtonClick(Sender: TObject);
    procedure VA2015ChapterButtonClick(Sender: TObject);
    procedure LoadVAIFC2015ButtonClick(Sender: TObject);
    procedure IFCBaseButtonClick(Sender: TObject);
    procedure IFCChapterButtonClick(Sender: TObject);
    procedure LoadIFCButtonClick(Sender: TObject);
    procedure IFCChp2ButtonClick(Sender: TObject);
    procedure NYS2020RadioButtonClick(Sender: TObject);
    procedure AlpineGlowButton16Click(Sender: TObject);
    procedure IFC2018RadioButtonClick(Sender: TObject);
    procedure NFPA1012015CheckClick(Sender: TObject);
    procedure MFSC2015CheckClick(Sender: TObject);
    procedure NFPA582014CheckClick(Sender: TObject);
    procedure NFPA132013CheckClick(Sender: TObject);
    procedure NFPA312011CheckClick(Sender: TObject);
    procedure NFPA722013CheckClick(Sender: TObject);
    procedure VAIFC2018Click(Sender: TObject);
    procedure NJ2016DefButtonClick(Sender: TObject);
    procedure IPMC2018Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeInspector;
    function GetPeriodCount(Code: String): Integer;
    function GetChar(C : String): String;
    procedure LoadIFCCodeChapter(ChapterNumber: String);
    procedure LoadIFC2012CodeChapter(ChapterNumber: String);
    procedure LoadNCIFC2018CodeChapter(ChapterNumber: String);
    procedure LoadVAIFC2015CodeChapter(ChapterNumber: String);
    procedure LoadIFC2018CodeChapter(ChapterNumber: String);
    procedure NFPARemoveCR(Chapter: String);
    procedure LoadNFPA101CodeChapter(ChapterNumber: String);
    procedure LoadNFPA2012CodeChapter(ChapterNumber: String);
    procedure LoadIPMCCodeChapter(ChapterNumber: String);
    procedure SysNarrNewRecord(DataSet: TDataSet);
    procedure LoadNJ2015IFCCodeChapter(ChapterNumber: String);
  public
    { Public declarations }
    BaseCode     : String;
    NFPABaseCode : String;
    NFPADescr    : String;
    IFCBaseCode  : String;
    IFCDescr     : String;
    class procedure NewRecord(DataSet: TDataSet);
    class procedure InspSetVar;
    procedure LoadNFPACodeChapter(ChapterNumber: String);
  end;

var
  InspSetForm  : TInspSetForm;

implementation
uses GenFunc,
     SortGridView,
     FormFunc,
     CommonVar,
     InspStat,
     InspType,
     InspTickType,
     InspTypeDup,
     search,
     CommonFunc,
     InspLoc,
     InspImageType,
     InspEmailSubject,
     InspPropType,
     InspBox,
     SysRepInsp,
     VioStat,
     AppLst,
     SecSet,
     SysNarr,
     InspPers,
     VioCodeSet;

{$R *.DFM}

class procedure TInspSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TInspSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  InspSetControl.ActivePage           := GenTab;
  ImportCodes.Visible                 := AlpineLogin;
  AuditButton.Visible                 := AlpineLogin;
  InspCntButton.Visible               := AlpineLogin;
  ConvTab.TabVisible                  := (mFireID = '12345') or AlpineLogin;
  MobInspPanel.Visible                := Not (mFireID = 'EGELS');
  MobInspPanel.Enabled                := Not (mFireID = 'EGELS');
  InspMobileMessagePanel.Visible      := (mFireID = 'EGELS');   //added for multifdid systems
  InspMobileMessagePanel.Enabled      := (mFireID = 'EGELS');
  Height                              := Screen.Height - 70;
end;

procedure TInspSetForm.GenTabShow(Sender: TObject);
begin
  inherited;
  SysRepBrowse.ExplicitWhereClause := ' WHERE SYSREP.MODCODE = ' + AddExpr('INSP') + ' AND INDIVIDUALREPORT = ' + AddExpr('Y');
  SysRepBrowse.Setup('SYSREPINSP',TSysRepInspForm,TSysRepInspForm.NewRecord);
  if MFireID = 'EGELS' then begin
    InspEmailSubjectBrowse.Setup('INSPEMAILSUBJECT',TInspEmailSubjectForm,TInspEmailSubjectForm.NewRecord);
    InspEmailSubjectBrowse.FDeleteButton.Position := bpmiddle;
  end;
end;

procedure TInspSetForm.InspTypeBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar   : Integer;
    InspTypeID : String;
    Descr      : String;
begin
  inherited;
  InspTypeID := InspTypeBrowse.Grid.GetValue('INSPTYPEID');
  Descr      := InspTypeBrowse.Grid.GetValue('DESCR');
  CountVar   := SqlTableRecCount('SELECT COUNT(*) FROM INSP WHERE INSPTYPEID = ' + pkValue(InspTypeID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' inspection(s) entered with the ' + Descr + ' inspection type.' + #10#13 + 'Deleting this record will blank out the inspection type.  Delete anyway?') then
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

procedure TInspSetForm.InspTypeBrowseReplicate(Sender: TObject);
Var InspTypeID    : String;
    NewInspTypeID : Integer;
    Code          : String;
    Descr         : String;
    SQLVar        : String;
begin
  inherited;
  InspTypeID      := InspTypeBrowse.GetValue('INSPTYPEID');
  InspTypeDupForm := TInspTypeDupForm.Create(application,InspTypeID);
  If InspTypeDupForm.ShowModal = mrOK then begin
    Code          := InspTypeDupForm.CodeField.Value;
    Descr         := InspTypeDupForm.DescrField.Value;
    InspTypeDupForm.Free;
    NewInspTypeID := AlpineReplicateRecord('INSPTYPE',AnyStrToInt(InspTypeID));

    RunSQL('UPDATE INSPTYPE SET CODE = ' + AddExpr(Code) + ', DESCR = ' + AddExpr(Descr) + ' WHERE INSPTYPEID = ' + IntToStr(NewInspTypeID));

    Open_Query('INSPCODETEMP',false,'SELECT * FROM INSPCODETEMP WHERE INSPTYPEID = ' + InspTypeID);
    Open_Query('NEWINSPCODETEMP',true,'SELECT * FROM INSPCODETEMP WHERE 1=2');

    While Not A('INSPCODETEMP').Eof do begin
      A('NEWINSPCODETEMP').Append;
      GetField('NEWINSPCODETEMP','INSPTYPEID').AsInteger  := NewInspTypeID;
      GetField('NEWINSPCODETEMP','CODE').AsString         := tdbfield('INSPCODETEMP','CODE');
      GetField('NEWINSPCODETEMP','DESCR').AsString        := tdbfield('INSPCODETEMP','DESCR');
      GetField('NEWINSPCODETEMP','NARR').AsString         := GetField('INSPCODETEMP','NARR').AsString;
      GetField('NEWINSPCODETEMP','SORTORD').AsString      := GetField('INSPCODETEMP','SORTORD').AsString;
      GetField('NEWINSPCODETEMP','SECTIONTITLE').AsString := GetField('INSPCODETEMP','SECTIONTITLE').AsString;
      A('NEWINSPCODETEMP').Post;

      A('INSPCODETEMP').Skip(1);
    end;

    CloseApollo('INSPCODETEMP');
    CloseApollo('NEWINSPCODETEMP');

    InspTypeTabShow(self);
    ShowMessage('Inspection type ' + Descr + ' added');
  end;
end;

procedure TInspSetForm.InspTypeTabShow(Sender: TObject);
begin
  inherited;
  InspTypeBrowse.Setup('INSPTYPE',TInspTypeForm,TInspTypeForm.NewRecord);
  InspTypeBrowse.FDeleteButton.Position := bpmiddle;
end;

procedure TInspSetForm.InspStatBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar   : Integer;
    InspStatID : String;
    Descr      : String;
begin
  inherited;
  InspStatID := InspStatBrowse.Grid.GetValue('INSPSTATID');
  Descr      := InspStatBrowse.Grid.GetValue('DESCR');
  CountVar   := SqlTableRecCount('SELECT COUNT(*) FROM INSP WHERE INSPSTATID = ' + pkValue(InspStatID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' inspection(s) entered with the ' + Descr + ' inspection status.' + #10#13 + 'Deleting this record will blank out the inspection status.  Delete anyway?') then
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

procedure TInspSetForm.InspStatTabShow(Sender: TObject);
Var ViewCode : String;
begin
  inherited;
  ViewCode := SQLLookUp('INSPSTAT','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  InspStatBrowse.Setup(IIf(ViewCode = '','INSPSTAT',ViewCode),TInspStatForm,TInspStatForm.NewRecord);
end;

procedure TInspSetForm.VioStatBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar  : Integer;
    VioStatID : String;
    Descr     : String;
begin
  inherited;
  VioStatID  := VioStatBrowse.Grid.GetValue('VIOSTATID');
  Descr      := VioStatBrowse.Grid.GetValue('DESCR');
  CountVar   := SqlTableRecCount('SELECT COUNT(*) FROM VIO WHERE VIOSTATID = ' + pkValue(VIOStatID));
  If (CountVar > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(CountVar) + ' violations(s) entered with the ' + Descr + ' violation status.' + #10#13 + 'Deleting this record will blank out the violation status.  Delete anyway?') then
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

procedure TInspSetForm.VioStatTabShow(Sender: TObject);
begin
  inherited;
  VioStatBrowse.Setup('VIOSTAT',TVioStatForm,TVioStatForm.NewRecord);
  VioCodeSetBrowse.Setup('VIOCODESET',TVioCodeSetForm,TVioCodeSetForm.NewRecord);
  InspLocBrowse.Setup('INSPLOC',TInspLocForm,TInspLocForm.NewRecord);

  SysNarrBrowse.ExplicitWhereClause := ' WHERE SYSNARR.SYSTABLEID = 2709 AND FIELDNAME = ' + AddExpr('RECOMMEND');
  SysNarrBrowse.Setup('SYSNARR',TSysNarrForm,SysNarrNewRecord);
end;

procedure TInspSetForm.SysNarrNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('SYSTABLEID').AsString := '2709';
  DataSet.FieldbyName('FIELDNAME').AsString  := 'RECOMMEND';
end;

procedure TInspSetForm.PersInspTabShow(Sender: TObject);
begin
  inherited;
  PersInspBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERS.FDID') + ' AND (PERS.ATTEND = ' + AddExpr('Y') + ' OR PERS.INSPECTOR = ' + AddExpr('Y') + ')';
  PersInspBrowse.Setup('PERSINSP',TInspPersForm,SysNarrNewRecord);
  InvInspBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('INV.FDID') + ' AND INV.TYPE = ' + AddExpr('TRUCK');
  InvInspBrowse.Setup('INVINSP');
end;

procedure TInspSetForm.PersInspBrowseEdit(Sender: TObject);
begin
  inherited;
  ChangeInspector;
end;

procedure TInspSetForm.PersInspBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key=VK_SPACE) then begin
    ChangeInspector;
  end;
end;



procedure TInspSetForm.AlpineGlowButton16Click(Sender: TObject);
begin
  inherited;
  ShowMessage('Not Done');
end;

procedure TInspSetForm.ChangeInspector;
begin
  If PersInspBrowse.Grid.GetValue('INSPECTOR') = 'Y' then begin
    RunSQL('UPDATE PERS SET INSPECTOR = ' + AddExpr('') + ' WHERE PERSID = ' + PersInspBrowse.Grid.GetValue('PERSID'));
    PersInspBrowse.Grid.SetValue('INSPECTOR',PersInspBrowse.Grid.Row,'');
  end else begin
    RunSQL('UPDATE PERS SET INSPECTOR = ' + AddExpr('Y') + ' WHERE PERSID = ' + PersInspBrowse.Grid.GetValue('PERSID'));
    PersInspBrowse.Grid.SetValue('INSPECTOR',PersInspBrowse.Grid.Row,'Y');
  end;
end;    


procedure TInspSetForm.InvInspBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key=VK_SPACE) then begin
    If InvInspBrowse.Grid.GetValue('INSPECTOR') = 'Y' then begin
      RunSQL('UPDATE INV SET INSPECTOR = ' + AddExpr('') + ' WHERE INVID = ' + InvInspBrowse.Grid.GetValue('INVID'));
      InvInspBrowse.Grid.SetValue('INSPECTOR',InvInspBrowse.Grid.Row,'');
    end else begin
      RunSQL('UPDATE INV SET INSPECTOR = ' + AddExpr('Y') + ' WHERE INVID = ' + InvInspBrowse.Grid.GetValue('INVID'));
      InvInspBrowse.Grid.SetValue('INSPECTOR',InvInspBrowse.Grid.Row,'Y');
    end;
  end;
end;


procedure TInspSetForm.IPMC2015BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'IPMC 2015 Loading Base . . . . . . Started');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IPMC2015'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'IPMC2015';
    GetField('VIOCODESET','DESCR').AsString := 'IPMC 2015 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IPMC2015'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'IPMC2015';
    GetField('VIOCODE','DESCR').AsString        := 'IPMC 2015 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  AddStatusListBox(ListBox,'IPMC 2015 Loading Base . . . . . . Done');
end;

procedure TInspSetForm.IPMC2015ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    ChpCode      : String;
    ChpDescr     : String;
    SectCode     : String;
    SectDescr    : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'IPMC 2015 Conversion . . . . . . Started');

  FileName  := 'C:\REDNMX\INSPCODE\IPMC2015\TXT\CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IPMC2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IPMC2015'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      ChpCode  := alltrim(substr(LineString,1,11));
      ChpDescr := alltrim(substr(LineString,11,200));
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(ChpCode));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := ChpCode;
        GetField('VIOCODE','DESCR').AsString        := ChpDescr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
        AddStatusListBox(ListBox,'Adding IPMC 2015 Chapter ' + ChpCode);
      end;
      ChpCode  := '';
      ChpDescr := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,3,7) = 'SECTION' then begin
      SectCode  := alltrim(substr(LineString,11,3));
      SectDescr := alltrim(substr(LineString,16,200));
      ChpCode   := 'CHAPTER ' + substr(SectCode,1,1);
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  ' AND CODE = ' + AddExpr(ChpCode));
      ParentID := GetField('VIOCODE','VIOCODEID').AsString;
      If A('VIOCODE').RecordsExist then begin
        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(SectCode));
        If Not A('VIOCODE').RecordsExist then begin
          A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := SectCode;
          GetField('VIOCODE','DESCR').AsString        := SectDescr;
          GetField('VIOCODE','PARENTID').AsString     := ParentID;
          A('VIOCODE').Post;
          AddStatusListBox(ListBox,'Adding IPMC 2015 Chapter ' + SectCode + ' ' + SectDescr);
        end;
        SectCode  := '';
        SectDescr := '';
        ChpCode  := '';
        ChpDescr := '';
      end;  
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);

  AddStatusListBox(ListBox,'IPMC 2015 Conversion . . . . . . Done');
  ShowMessage('Done');
end;

procedure TInspSetForm.IPMC2015CodeButtonClick(Sender: TObject);
begin
  inherited;
  If ChapterField.Text = '' then begin
    LoadIPMCCodeChapter('1');
    LoadIPMCCodeChapter('2');
    LoadIPMCCodeChapter('3');
    LoadIPMCCodeChapter('4');
    LoadIPMCCodeChapter('5');
    LoadIPMCCodeChapter('6');
    LoadIPMCCodeChapter('7');
    ShowMessage('Done');
  end else begin
    LoadIPMCCodeChapter(IPMC2015ChapField.Text);
    ShowMessage('Done');
  end;
end;

procedure TInspSetForm.IPMC2015RawButtonClick(Sender: TObject);
begin
  inherited;
  NFPARemoveCR(IPMC2015ChapField.Text);
end;

procedure TInspSetForm.IPMC2018Click(Sender: TObject);
begin
  inherited;
  IFCBaseCode              := 'IPMC2018';
  IFCDescr                 := '2018 International Property Maintenance Code';
  IFCBaseButton.Caption    := 'Add '  + IFCBaseCode + ' Base';
  IFCChapterButton.Caption := 'Load ' + IFCBaseCode + ' Chapters';
  LoadIFCButton.Caption    := 'Load ' + IFCBaseCode + ' Code';
  IFCChp2Button.Caption    := 'Load ' + IFCBaseCode + ' Definitions';
  IFCBaseButton.   Enabled := true;
  IFCChapterButton.Enabled := true;
  LoadIFCButton.   Enabled := true;
  IFCChp2Button.   Enabled := true;
end;

procedure TInspSetForm.InspTickTypeTabShow(Sender: TObject);
begin
  inherited;
  InspTickTypeBrowse.Setup('INSPTICKTYPE',TInspTickTypeForm,TInspTickTypeForm.NewRecord);
end;

procedure TInspSetForm.ImportCodesClick(Sender: TObject);
var mAccess      : TAlpineAdoConnection;
    errorString  : String;
    mid          : String;  
    mParent      : String;
    mCode        : String;
    mTable       : String;
    mRootNode    : String;
    mcurrentcode : String;
    searcher     : String;
begin
  If not opendialog1.execute then
    exit;
  If not InputQuery('Get Violation Code','Violation CODE in RedNMX:',mCode) then
    exit;
  If not InputQuery('Get Access Table Name','Table name in Access File:',mTable) then
    exit;

  mid := SqlLookup(mCode,'CODE','VIOCODESET','VIOCODESETID');

  If (mid = '') then begin
    MessageDlg('Unknown code set: '+mCode+#13+#10+''+#13+#10+'Aborting Import...', mtWarning, [mbOK], 0);
    exit;
  end;

  try
    mAccess := TAlpineAdoConnection.Create(self,opendialog1.filename,'','',AccessTableType);
    mAccess.Connect(ErrorString);
  except
    on e: exception do begin
      mAccess.Close;
      MessageDlg('Access Connection Error: '+ e.message +#13+#10+''+#13+#10+'Aborting Import...', mtWarning, [mbOK], 0);
      exit;
    end;
  end;

  Open_Query(mAccess,'CODES',False,'SELECT * FROM ' + mTable + ' ORDER BY INDEXSQL');
  if not(A('CODES').RecordsExist) then begin
    MessageDlg('Empty/Unknown Access Table: '+mTable+#13+#10+''+#13+#10+'Aborting Import...', mtWarning, [mbOK], 0);
    CloseApollo('CODES');
    exit;
  end;


  RunSql('DELETE FROM VIOCODE WHERE VIOCODESETID = '+mid);
  TableInsert('VIOCODE',['VIOCODESETID','NARR'],[MID,mCode]);

  WHILE NOT a('CODES').eof do begin
    TableInsert('VIOCODE',['DESCR','CODE','VIOCODESETID','NARR'],[tdbField('CODES','DESCR'),tdbField('CODES','CODE'),MID,GetField('CODES','NARR').AsString]);
    A('CODES').Skip(1);
  end;

  Open_Query('VIOCODE',True,'SELECT * FROM VIOCODE WHERE VIOCODESETID = '+mid+ ' ORDER BY CODE');
  Open_Query('VIOCODELOOKUP',True,'SELECT * FROM VIOCODE WHERE VIOCODESETID = '+mid);
  Open_Query(mAccess,'CODESLOOKUP',False,'SELECT * FROM '+mTable);

  while not A('VIOCODE').eof do begin
    mcurrentcode :=tdbField('VIOCODE','CODE');
    if mcurrentcode='' THEN
      mRootNode := GetField('VIOCODE','VIOCODEID').AsString;
    if A('CODES').exactQueryLocate('CODE',TDBfIELD('VIOCODE','CODE')) then begin
      if tdbfield('CODES','INDEXSQL')<>'' then begin
        if anystrtoint(getfield('CODES','LEVELSQL').Asstring) = 1 then begin
          GetTable('VIOCODE').edit;
          GetField('VIOCODE','PARENTID').AsString := mrootnode;
          GetTable('VIOCODE').Post;
        end else begin

          searcher := padr(tdbfield('CODES','INDEXSQL'),(anystrtoint(GetField('CODES','LEVELSQL').AsString)-1)*5,' ');
          if A('CODESLOOKUP').exactQueryLocate('INDEXSQL',SEARCHER) then begin
            if A('VIOCODELOOKUP').ExactQueryLocate('CODE',tdbField('CODESLOOKUP','CODE')) then
              mParent := GetField('VIOCODELOOKUP','VIOCODEID').AsString
            else
              mParent := mRootNode;

            GetTable('VIOCODE').edit;
            GetField('VIOCODE','PARENTID').AsString := mParent;
            GetTable('VIOCODE').Post;
          end;
        END;
      end;
    end;
    A('VIOCODE').skip(1);
  end;

  closeapollo('CODES');
  closeapollo('CODESLOOKUP');
  closeapollo('VIOCODELOOKUP');
  closeapollo('VIOCODE');

  ShowMessage('Done');
end;

procedure TInspSetForm.InspBoxButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('DISPBOX',false,'SELECT * FROM DISPBOX');
  Open_Query('INSPBOX',true,'SELECT * FROM INSPBOX WHERE 1=2');
  While Not A('DISPBOX').Eof do begin
    A('INSPBOX').UpdateSQL('SELECT * FROM INSPBOX WHERE CODE = ' + edbfield('DISPBOX','CODE'));
    If A('INSPBOX').RecordsExist then
      A('INSPBOX').Edit
    else
      A('INSPBOX').Append;
    GetField('INSPBOX','CODE').AsString  := tdbfield('DISPBOX','CODE');
    GetField('INSPBOX','DESCR').AsString := tdbfield('DISPBOX','DESCR');
    A('INSPBOX').Post;
    A('DISPBOX').Skip(1);
  end;
  CloseApollo('DISPBOX');
  CloseApollo('INSPBOX');
  ShowMessage('Done');
end;

procedure TInspSetForm.InspCntButtonClick(Sender: TObject);
Var InspCnt : Integer;
begin
  inherited;
  Open_Query('INSPBOX',true,'SELECT * FROM INSPBOX');
  While Not A('INSPBOX').Eof do begin
    InspCnt := SQLTableRecCount('SELECT COUNT(*) FROM PROP WHERE INSPBOXID = ' + GetField('INSPBOX','INSPBOXID').AsString);
    GetTable('INSPBOX').Edit;
    GetField('INSPBOX','INSPCNT').AsInteger := InspCnt;
    GetTable('INSPBOX').Post;
    A('INSPBOX').Skip(1);
  end;
  CloseApollo('INSPBOX');
  InspPropTypeTabShow(self);
end;

procedure TInspSetForm.InspImageTypeTabShow(Sender: TObject);
begin
  inherited;
  InspImageTypeBrowse.Setup('INSPIMAGETYPE',TInspImageTypeForm,TInspImageTypeForm.NewRecord);
end;

procedure TInspSetForm.InspPropTypeTabShow(Sender: TObject);
begin
  inherited;
  InspPropTypeBrowse.Setup('INSPPROPTYPE',TInspPropTypeForm,TInspPropTypeForm.NewRecord);
  InspBoxBrowse.Setup('INSPBOX',TInspBoxForm,TInspBoxForm.NewRecord);
end;

class procedure TInspSetForm.InspSetVar;
begin
  Open_Query('INSPSET',false,'SELECT VIOCODESETID FROM INSPSET WHERE FDID = ' + AddExpr(mFireID));
  GlobalVioCodeSetId := GetField('INSPSET','VIOCODESETID').AsString;
  CloseApollo('INSPSET');
end;

procedure TInspSetForm.IFC2015RemoteCRButtonClick(Sender: TObject);
Var FileName   : String;
    OutFileName: String;
    TxtFile    : TextFile;
    ColNum     : Integer;
    C          : char;
    PrevC      : char;
    NewString  : String;
    FileSize   : Real;
begin
  FileName := 'C:\REDNMX\INSPCODE\IPMC2018\RAW\CHP' + alltrim(ChapterField.text) + '.RAW';
  OutFileName := 'C:\REDNMX\INSPCODE\IPMC2018\TXT\CHP' + alltrim(ChapterField.text) + '.TXT';
  If Not (ChapterField.Text = '') and FileExists(FileName) and Not FileExists(OutFileName) and BooleanMessageDlg('Run RAW to TXT process for file: ' + FileName) then begin
    FileSize := GetFileSize(FileName);
    AssignFile(TxtFile,FileName);
    Reset(TxtFile);
    ColNum := 0;

    While true do begin
      ChapterLabel.Caption := FormatFloat('#,###,##0',ColNum);
      Application.ProcessMessages;
      If Colnum > FileSize then
        break
      else
        ColNum := ColNum + 1;

      Read(TxtFile,C);
//    String1Field.Caption  := String1Field.Caption + C;

      If (c = #13) then begin
        If (PrevC = '.') then begin
//        String3Field.Caption := String3Field.Caption + C;
          NewString            := NewString + C;
        end else begin
          Read(TxtFile,C);
//        String3Field.Caption := String3Field.Caption + ' ';
          NewString            := NewString + ' ';
        end;
//      String2Field.Caption := String2Field.Caption + '#13';
      end else begin
//      String2Field.Caption := String2Field.Caption + C;
//      String3Field.Caption := String3Field.Caption + C;
        NewString            := NewString + C;
      end;
      PrevC := C;
    end;

    NewString := StringReplace(NewString,#13#10 + 'SECTION ',#13#10#13#10 + 'SECTION ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + 'Exception: ',#13#10 + '  Exception: ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + 'Exceptions: ',#13#10 + '  Exceptions: ',[rfReplaceAll]);

    NewString := StringReplace(NewString,' 1. ',#13#10 + '  1. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 2. ',#13#10 + '  2. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 3. ',#13#10 + '  3. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 4. ',#13#10 + '  4. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 5. ',#13#10 + '  5. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 6. ',#13#10 + '  6. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 7. ',#13#10 + '  7. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 8. ',#13#10 + '  8. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,' 9. ',#13#10 + '  9. ',[rfReplaceAll]);

    NewString := StringReplace(NewString,#13#10 + '1. ',#13#10 + '  1. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '2. ',#13#10 + '  2. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '3. ',#13#10 + '  3. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '4. ',#13#10 + '  4. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '5. ',#13#10 + '  5. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '6. ',#13#10 + '  6. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '7. ',#13#10 + '  7. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '8. ',#13#10 + '  8. ',[rfReplaceAll]);
    NewString := StringReplace(NewString,#13#10 + '9. ',#13#10 + '  9. ',[rfReplaceAll]);

    StringToFile(OutFileName,NewString);
  end;
end;

procedure TInspSetForm.IFC2012BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2012'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'IFC2012';
    GetField('VIOCODESET','DESCR').AsString := 'IFC 2012 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IFC2012'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'IFC2012';
    GetField('VIOCODE','DESCR').AsString        := 'IFC 2012 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.IFC2012ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  If alltrim(IFC2012Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\IFC2012\TXT\CHP0.TXT'
  else
    FileName := alltrim(IFC2012Directory.Text) + '\CHP0.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2012'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IFC2012'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    Code  := alltrim(substr(LineString,1,11));
    Descr := alltrim(substr(LineString,12,59));
    Narr  := alltrim(substr(LineString,59,2000));
    A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
    If Not (Code = '') and Not A('VIOCODE').RecordsExist then begin
      A('VIOCODE').Append;
      GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
      GetField('VIOCODE','CODE').AsString         := Code;
      GetField('VIOCODE','DESCR').AsString        := Descr;
      GetField('VIOCODE','NARR').AsString         := Narr;
      GetField('VIOCODE','PARENTID').AsString     := ParentID;
      ChapterLabel.Caption                        := Descr;
      String1Field.Caption                        := Narr;
      A('VIOCODE').Post;
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;

procedure TInspSetForm.IFC2012RemoveCRButtonClick(Sender: TObject);
Var FileName   : String;
    TxtFile    : TextFile;
    ColNum     : Integer;
    C          : char;
    PrevC      : char;
    NewString  : String;
    FileSize   : Real;
begin
  FileName := 'C:\REDNMX\INSPCODE\IFC2012\RAW\CHP' + alltrim(IFC2012ChapterField.text) + '.RAW';
  FileSize := GetFileSize(FileName);

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  ColNum := 0;

  While true do begin
    ChapterLabel.Caption := FormatFloat('#,###,##0',ColNum);
    Application.ProcessMessages;
    If Colnum > FileSize then
      break
    else
      ColNum := ColNum + 1;

    Read(TxtFile,C);
//  String1Field.Caption  := String1Field.Caption + C;

    If (c = #13) then begin
      If (PrevC = '.') then begin
//      String3Field.Caption := String3Field.Caption + C;
        NewString            := NewString + C;
      end else begin
        Read(TxtFile,C);
//      String3Field.Caption := String3Field.Caption + ' ';
        NewString            := NewString + ' ';
      end;
//    String2Field.Caption := String2Field.Caption + '#13';
    end else begin
//    String2Field.Caption := String2Field.Caption + C;
//    String3Field.Caption := String3Field.Caption + C;
      NewString            := NewString + C;
    end;
    PrevC := C;
  end;

  NewString := StringReplace(NewString,#13#10 + 'SECTION ',#13#10#13#10 + 'SECTION ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + 'Exception: ',#13#10 + '  Exception: ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + 'Exceptions: ',#13#10 + '  Exceptions: ',[rfReplaceAll]);

  NewString := StringReplace(NewString,' 1. ',#13#10 + '  1. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 2. ',#13#10 + '  2. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 3. ',#13#10 + '  3. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 4. ',#13#10 + '  4. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 5. ',#13#10 + '  5. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 6. ',#13#10 + '  6. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 7. ',#13#10 + '  7. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' 8. ',#13#10 + '  8. ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10 + '1. ',#13#10 + '  1. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '2. ',#13#10 + '  2. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '3. ',#13#10 + '  3. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '4. ',#13#10 + '  4. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '5. ',#13#10 + '  5. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '6. ',#13#10 + '  6. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '7. ',#13#10 + '  7. ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '8. ',#13#10 + '  8. ',[rfReplaceAll]);

  FileName := 'C:\REDNMX\INSPCODE\IFC2012\TXT\CHP' + alltrim(IFC2012ChapterField.text) + '.TXT';
  StringToFile(FileName,NewString);
end;

procedure TInspSetForm.IFC2015BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2015'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'IFC2015';
    GetField('VIOCODESET','DESCR').AsString := 'IFC 2015 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IFC2015'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'IFC2015';
    GetField('VIOCODE','DESCR').AsString        := 'IFC 2015 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.LoadChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  If alltrim(IFC2015Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\IFC2015\TXT\CHP.TXT'
  else
    FileName := alltrim(IFC2015Directory.Text) + '\CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('IFC2015'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
    end else if Not (alltrim(LineString) = '') then
      Narr  := LineString;

    If (alltrim(LineString) = '') then begin
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code  := '';
      Descr := '';
      Narr  := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;

procedure TInspSetForm.LoadCodeButtonClick(Sender: TObject);
begin
  If ChapterField.Text = '' then begin
{
    LoadIFCCodeChapter('3');
    LoadIFCCodeChapter('4');
    LoadIFCCodeChapter('5');
    LoadIFCCodeChapter('6');
    LoadIFCCodeChapter('7');
    LoadIFCCodeChapter('8');
    LoadIFCCodeChapter('9');
    LoadIFCCodeChapter('10');
    LoadIFCCodeChapter('11');
    LoadIFCCodeChapter('20');
    LoadIFCCodeChapter('21');
    LoadIFCCodeChapter('22');
    LoadIFCCodeChapter('23');
    LoadIFCCodeChapter('24');
    LoadIFCCodeChapter('25');
    LoadIFCCodeChapter('26');
    LoadIFCCodeChapter('27');
    LoadIFCCodeChapter('28');
    LoadIFCCodeChapter('29');
    LoadIFCCodeChapter('30');
    LoadIFCCodeChapter('31');
    LoadIFCCodeChapter('32');
    LoadIFCCodeChapter('33');
    LoadIFCCodeChapter('34');
    LoadIFCCodeChapter('35');
    LoadIFCCodeChapter('36');
    LoadIFCCodeChapter('37');
}
    LoadIFCCodeChapter('50');
    LoadIFCCodeChapter('51');
    LoadIFCCodeChapter('53');
    LoadIFCCodeChapter('54');
    LoadIFCCodeChapter('55');
    LoadIFCCodeChapter('56');
    LoadIFCCodeChapter('57');
    LoadIFCCodeChapter('58');
    LoadIFCCodeChapter('59');
    LoadIFCCodeChapter('60');
    LoadIFCCodeChapter('61');
    LoadIFCCodeChapter('62');
    LoadIFCCodeChapter('63');
    LoadIFCCodeChapter('64');
    LoadIFCCodeChapter('65');
    LoadIFCCodeChapter('66');
    LoadIFCCodeChapter('67');

    ShowMessage('Done');

  end else begin
    LoadIFCCodeChapter(ChapterField.Text);
    ShowMessage('Done');

  end;
end;


procedure TInspSetForm.LoadIFC2012CodeButtonClick(Sender: TObject);
begin
  If IFC2012ChapterField.Text = '' then begin

    LoadIFC2012CodeChapter('3');
    LoadIFC2012CodeChapter('4');
    LoadIFC2012CodeChapter('5');
    LoadIFC2012CodeChapter('6');
    LoadIFC2012CodeChapter('7');
    LoadIFC2012CodeChapter('8');
    LoadIFC2012CodeChapter('9');
    LoadIFC2012CodeChapter('10');
    LoadIFC2012CodeChapter('11');

    LoadIFC2012CodeChapter('20');
    LoadIFC2012CodeChapter('21');
    LoadIFC2012CodeChapter('22');
    LoadIFC2012CodeChapter('23');
    LoadIFC2012CodeChapter('24');
    LoadIFC2012CodeChapter('25');
    LoadIFC2012CodeChapter('26');
    LoadIFC2012CodeChapter('27');
    LoadIFC2012CodeChapter('28');
    LoadIFC2012CodeChapter('29');
    LoadIFC2012CodeChapter('30');
    LoadIFC2012CodeChapter('31');
    LoadIFC2012CodeChapter('32');
    LoadIFC2012CodeChapter('33');
    LoadIFC2012CodeChapter('34');
    LoadIFC2012CodeChapter('35');
    LoadIFC2012CodeChapter('36');

    LoadIFC2012CodeChapter('50');
    LoadIFC2012CodeChapter('51');
    LoadIFC2012CodeChapter('52');
    LoadIFC2012CodeChapter('53');
    LoadIFC2012CodeChapter('54');
    LoadIFC2012CodeChapter('55');
    LoadIFC2012CodeChapter('56');
    LoadIFC2012CodeChapter('57');
    LoadIFC2012CodeChapter('58');
    LoadIFC2012CodeChapter('59');
    LoadIFC2012CodeChapter('60');
    LoadIFC2012CodeChapter('61');
    LoadIFC2012CodeChapter('62');
    LoadIFC2012CodeChapter('63');
    LoadIFC2012CodeChapter('64');
    LoadIFC2012CodeChapter('65');
    LoadIFC2012CodeChapter('66');
    ShowMessage('Done');
  end else begin
    LoadIFC2012CodeChapter(IFC2012ChapterField.Text);
    ShowMessage('Done');
  end;
end;

procedure TInspSetForm.LoadIFC2012CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  If alltrim(IFC2012Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\IFC2012\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := IFC2012Directory.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2012'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'Chapter ' + padl(alltrim(ChapterNumber),2,' ');
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin
      Code  := alltrim(substr(LineString,1,12));
      Descr := alltrim(substr(LineString,13,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code     := '';
      Descr    := '';
      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;

procedure TInspSetForm.LoadIFCCodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  If alltrim(IFC2015Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\IFC2015\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := IFC2015Directory.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IFC2015'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin
      Code  := alltrim(substr(LineString,1,13));
      Descr := alltrim(substr(LineString,14,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code     := '';
      Descr    := '';
      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;

function TInspSetForm.GetPeriodCount(Code: String): Integer;
Var ColNum      : Integer;
    PeriodCount : Integer;
begin
  PeriodCount := 0;
  For ColNum := 1 to Length(Code) do begin
    If substr(Code,ColNum,1) = '.' then
      PeriodCount := PeriodCount + 1;
  end;
  GetPeriodCount := PeriodCount;
end;

function TInspSetForm.GetChar(C : String): String;
begin
  If (C = #150) then
    GetChar := #45
  else if (C = #151) then
    GetChar := '-'
  else if  (C = #147) or (C = #148) then
    GetChar := '"'
  else if (C = '*') or (C = #34) or (C = #26) then
    GetChar := ''
  else
    GetChar := C;
end;

procedure TInspSetForm.RemoveAllButtonClick(Sender: TObject);
begin
  inherited;
  {
  NFPARemoveCR('1');
  NFPARemoveCR('2');
  NFPARemoveCR('3');
  NFPARemoveCR('4');
  NFPARemoveCR('5');
  NFPARemoveCR('6');
  NFPARemoveCR('10');
  NFPARemoveCR('11');
  NFPARemoveCR('12');
  NFPARemoveCR('13');
  NFPARemoveCR('14');
  NFPARemoveCR('15');
  NFPARemoveCR('16');
  NFPARemoveCR('17');
  NFPARemoveCR('18');
  NFPARemoveCR('19');
  NFPARemoveCR('20');
  NFPARemoveCR('21');
  NFPARemoveCR('22');
  NFPARemoveCR('23');
  NFPARemoveCR('24');
  NFPARemoveCR('25');
  NFPARemoveCR('26');
  NFPARemoveCR('27');
  NFPARemoveCR('28');
  NFPARemoveCR('29');
  NFPARemoveCR('30');
  NFPARemoveCR('31');
  NFPARemoveCR('32');
  NFPARemoveCR('33');
  NFPARemoveCR('34');
  NFPARemoveCR('41');
  NFPARemoveCR('42');
  NFPARemoveCR('43');
  NFPARemoveCR('44');
  NFPARemoveCR('45');
  NFPARemoveCR('50');
  NFPARemoveCR('51');
  NFPARemoveCR('52');
  NFPARemoveCR('53');
  NFPARemoveCR('54');
  NFPARemoveCR('60');
  NFPARemoveCR('61');
  NFPARemoveCR('63');
  NFPARemoveCR('64');
  NFPARemoveCR('65');
  NFPARemoveCR('66');
  NFPARemoveCR('67');
  NFPARemoveCR('68');
  NFPARemoveCR('69');
  NFPARemoveCR('70');
  NFPARemoveCR('71');
  NFPARemoveCR('72');
  NFPARemoveCR('73');
  NFPARemoveCR('74');
  NFPARemoveCR('75');}
end;


procedure TInspSetForm.NFPABaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2015 Loading Base . . . . . . Started');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2015'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'NFPA2015';
    GetField('VIOCODESET','DESCR').AsString := 'NFPA 2015 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NFPA2015'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'NFPA2015';
    GetField('VIOCODE','DESCR').AsString        := 'NFPA 2015 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  AddStatusListBox(ListBox,'NFPA 2015 Loading Base . . . . . . Done');
end;



procedure TInspSetForm.NFPAChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;  AddStatusListBox(ListBox,'NFPA 2015 Conversion . . . . . . Started');

  If alltrim(NFPA2015Directory.Text) = '' then
    FileName  := 'C:\REDNMX\INSPCODE\NFPA2015\TXT\CHP.TXT'
  else
    FileName := NFPA2015Directory.Value + 'CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');
                                                                   
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NFPA2015'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'Chapter' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
        AddStatusListBox(ListBox,'Adding NFPA 2015 Chapter ' + Code);
      end;
      Code  := '';
      Descr := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  AddStatusListBox(ListBox,'NFPA 2015 Conversion . . . . . . Done');
  ShowMessage('Done');
end;






procedure TInspSetForm.NFPA101RemoveAllButtonClick(Sender: TObject);
begin
  inherited;
  {
  NFPARemoveCR('1');
  NFPARemoveCR('2');
  NFPARemoveCR('3');
  NFPARemoveCR('4');
  NFPARemoveCR('5');
  NFPARemoveCR('6');
  NFPARemoveCR('10');
  NFPARemoveCR('11');
  NFPARemoveCR('12');
  NFPARemoveCR('13');
  NFPARemoveCR('14');
  NFPARemoveCR('15');
  NFPARemoveCR('16');
  NFPARemoveCR('17');
  NFPARemoveCR('18');
  NFPARemoveCR('19');
  NFPARemoveCR('20');
  NFPARemoveCR('21');
  NFPARemoveCR('22');
  NFPARemoveCR('23');
  NFPARemoveCR('24');
  NFPARemoveCR('25');
  NFPARemoveCR('26');
  NFPARemoveCR('27');
  NFPARemoveCR('28');
  NFPARemoveCR('29');
  NFPARemoveCR('30');
  NFPARemoveCR('31');
  NFPARemoveCR('32');
  NFPARemoveCR('33');
  NFPARemoveCR('34');
  NFPARemoveCR('41');
  NFPARemoveCR('42');
  NFPARemoveCR('43');
  }
end;


procedure TInspSetForm.NFPA2012BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2012 Loading Base . . . . . . Started');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2012'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'NFPA2012';
    GetField('VIOCODESET','DESCR').AsString := 'NFPA 2012 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NFPA2012'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'NFPA2012';
    GetField('VIOCODE','DESCR').AsString        := 'NFPA 2012 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  AddStatusListBox(ListBox,'NFPA 2012 Loading Base . . . . . . Done');

end;

procedure TInspSetForm.NFPA2012ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2012 Conversion . . . . . . Started');

  If alltrim(NFPA2012Directory.Text) = '' then
    FileName  := 'C:\REDNMX\INSPCODE\NFPA2012\TXT\CHP.TXT'
  else
    FileName := NFPA2012Directory.Value + 'CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2012'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NFPA2012'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'Chapter' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
        AddStatusListBox(ListBox,'Adding NFPA 2012 Chapter ' + Code);
      end;
      Code  := '';
      Descr := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  AddStatusListBox(ListBox,'NFPA 2012 Conversion . . . . . . Done');
  ShowMessage('Done');
end;

procedure TInspSetForm.NFPARawButtonClick(Sender: TObject);
begin
  inherited;
  IFC2015RemoteCRButtonClick(self);
//NFPARemoveCR('1');
end;


procedure TInspSetForm.VAIFC2015RemoveAllButtonClick(Sender: TObject);
begin
  inherited;
//NFPARemoveCR('67');
end;

procedure TInspSetForm.VAIFC2018Click(Sender: TObject);
begin
  inherited;
  IFCBaseCode              := 'VAIFC2018';
  IFCDescr                 := '2018 Virginia Fire Prevention Code';
  IFCBaseButton.Caption    := 'Add '  + IFCBaseCode + ' Base';
  IFCChapterButton.Caption := 'Load ' + IFCBaseCode + ' Chapters';
  LoadIFCButton.Caption    := 'Load ' + IFCBaseCode + ' Code';
  IFCChp2Button.Caption    := 'Load ' + IFCBaseCode + ' Definitions';
  IFCBaseButton.   Enabled := true;
  IFCChapterButton.Enabled := true;
  LoadIFCButton.   Enabled := true;
  IFCChp2Button.   Enabled := true;
end;

procedure TInspSetForm.NFPA101RawButtonClick(Sender: TObject);
begin
  inherited;
  If (NFPA101ChapField.Text = '') then
    NFPARemoveCR('XX')
  else
    NFPARemoveCR(NFPA101ChapField.Text);
end;

procedure TInspSetForm.NFPARemoveCR(Chapter: String);
Var FileName    : String;
    OutFileName : String;
    TxtFile     : TextFile;
    ColNum      : Integer;
    C           : char;
    PrevC       : char;
    NewString   : String;
    FileSize    : Real;
begin
//FileName                 := 'C:\REDNMX\INSPCODE\NFPA2012\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\NFPA252012\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\NCIFC2018\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\MFSC2015\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\NFPA582014\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\NFPA132013\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\NFPA312011\RAW\CHP' + Chapter + '.RAW';
//FileName                 := 'C:\RedNMX\INSPCODE\VAIFC2018\RAW\CHP' + Chapter + '.RAW';
  FileName                 := 'C:\rednmx\inspcode\NJ2015\RAW\CHP' + Chapter + '.RAW';

//FileName  := 'C:\REDNMX\INSPCODE\NFPA2012\TXT\CHP'   + Chapter + '.TXT';
//FileName  := 'C:\REDNMX\INSPCODE\NFPA252012\TXT\CHP' + Chapter + '.TXT';
//FileName  := 'C:\RedNMX\INSPCODE\NCIFC2018\TXT\CHP'  + Chapter + '.TXT';
//FileName  := 'C:\REDNMX\INSPCODE\IPMC2015\TXT\CHP'   + Chapter + '.TXT';
//FileName  := 'C:\RedNMX\INSPCODE\MFSC2015\TXT\CHP'   + Chapter + '.TXT';
//FileName  := 'C:\RedNMX\INSPCODE\NFPA582014\TXT\CHP' + Chapter + '.TXT';
//FileName  := 'C:\RedNMX\INSPCODE\NFPA132013\TXT\CHP' + Chapter + '.TXT';
//FileName  := 'C:\RedNMX\INSPCODE\NFPA312011\TXT\CHP' + Chapter + '.TXT';
//OutFileName  := 'C:\RedNMX\INSPCODE\VAIFC2018\TXT\CHP' + Chapter + '.TXT';
  OutFileName  := 'C:\RedNMX\INSPCODE\NJ2015\TXT\CHP' + Chapter + '.TXT';

  If Not FileExists(FileName) then
    Abort;

  If FileExists(OutFileName) then begin
    ShowMessage(OutFileName + ' already exists');
    Abort;
  end;  
    
  FileSize                 := GetFileSize(FileName);
  NFPAChapterField.Caption := Chapter;

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  ColNum := 0;

  While true do begin
    NFPAColNumField.Caption := FormatFloat('#,###,##0',ColNum);
    Application.ProcessMessages;
    If Colnum > FileSize then
      break
    else
      ColNum := ColNum + 1;

    Read(TxtFile,C);

    If (c = #13) then begin
      If (PrevC = '.') or (PrevC = ']') then begin
        NewString            := NewString + GetChar(C);
      end else begin
        Read(TxtFile,C);
        NewString            := NewString + ' ';
      end;
    end else begin

      NewString            := NewString + GetChar(C);
    end;
    PrevC := C;
  end;
  CloseFile(TxtFile);  

  NewString := SearchAndReplace(NewString,#13#10+'[','[');

  NewString := StringReplace(NewString,' (1) ', #13#10+'  (1) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (2) ', #13#10+'  (2) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (3) ', #13#10+'  (3) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (4) ', #13#10+'  (4) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (5) ', #13#10+'  (5) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (6) ', #13#10+'  (6) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (7) ', #13#10+'  (7) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (8) ', #13#10+'  (8) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (9) ', #13#10+'  (9) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,' (10) ',#13#10+'  (10) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (11) ',#13#10+'  (11) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (12) ',#13#10+'  (12) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (13) ',#13#10+'  (13) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (14) ',#13#10+'  (14) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (15) ',#13#10+'  (15) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (16) ',#13#10+'  (16) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (17) ',#13#10+'  (17) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (18) ',#13#10+'  (18) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (19) ',#13#10+'  (19) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (20) ',#13#10+'  (20) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (21) ',#13#10+'  (21) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (22) ',#13#10+'  (22) ',[rfReplaceAll]);

  NewString := StringReplace(NewString,'.' + #13#10+'(1) ', '.' + #13#10+'  (1) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(2) ', '.' + #13#10+'  (2) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(3) ', '.' + #13#10+'  (3) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(4) ', '.' + #13#10+'  (4) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(5) ', '.' + #13#10+'  (5) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(6) ', '.' + #13#10+'  (6) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(7) ', '.' + #13#10+'  (7) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(8) ', '.' + #13#10+'  (8) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(9) ', '.' + #13#10+'  (9) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(10) ','.' + #13#10+'  (10) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(11) ','.' + #13#10+'  (11) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(12) ','.' + #13#10+'  (12) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(13) ','.' + #13#10+'  (13) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(14) ','.' + #13#10+'  (14) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(15) ','.' + #13#10+'  (15) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(16) ','.' + #13#10+'  (16) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(17) ','.' + #13#10+'  (17) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(18) ','.' + #13#10+'  (18) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(19) ','.' + #13#10+'  (19) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(20) ','.' + #13#10+'  (20) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(21) ','.' + #13#10+'  (21) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,'.' + #13#10+'(22) ','.' + #13#10+'  (22) ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10+'(1) ', #13#10+'  (1) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10+'(2) ', #13#10+'  (2) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10+'(3) ', #13#10+'  (3) ', [rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10+'(4) ', #13#10+'  (4) ', [rfReplaceAll]);


  NewString := StringReplace(NewString,' (a) ',#13#10 + '    (a) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (b) ',#13#10 + '    (b) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (c) ',#13#10 + '    (c) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (d) ',#13#10 + '    (d) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (e) ',#13#10 + '    (e) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (f) ',#13#10 + '    (f) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (g) ',#13#10 + '    (g) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (h) ',#13#10 + '    (h) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (i) ',#13#10 + '    (i) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,' (j) ',#13#10 + '    (j) ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10 + '(a) ',#13#10 + '    (a) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(b) ',#13#10 + '    (b) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(c) ',#13#10 + '    (c) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(d) ',#13#10 + '    (d) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(e) ',#13#10 + '    (e) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(f) ',#13#10 + '    (f) ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10 + '(A) ',#13#10 + '  (A) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(B) ',#13#10 + '  (B) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(C) ',#13#10 + '  (C) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(D) ',#13#10 + '  (D) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(E) ',#13#10 + '  (E) ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + '(F) ',#13#10 + '  (F) ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10 + 'Exception: ',#13#10 + '  Exception: ',[rfReplaceAll]);

  NewString := StringReplace(NewString,#13#10 + 'Exception No. 1: ',#13#10 + '  Exception No. 1: ',[rfReplaceAll]);
  NewString := StringReplace(NewString,#13#10 + 'Exception No. 2: ',#13#10 + '  Exception No. 2: ',[rfReplaceAll]);

  NewString := StringReplace(NewString,'(Reserved) ','(Reserved)' + #13#10,[rfReplaceAll]);

  NewString := StringReplace(NewString,'(Section deleted.) ','(Section deleted.)' + #13#10,[rfReplaceAll]);

  StringToFile(OutFileName,NewString);
end;


procedure TInspSetForm.NJ2015BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJIFC2015'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'NJIFC2015';
    GetField('VIOCODESET','DESCR').AsString := 'NJ IFC 2015 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NJIFC2015'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'NJIFC2015';
    GetField('VIOCODE','DESCR').AsString        := 'NJ IFC 2015 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.NJ2016DefButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
    SortOrd      : Integer;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\NJ2015\TXT\CHP2-DEF.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJIFC2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('SECTION 202'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  Descr := '';
  Narr  := '';
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If (alltrim(LineString) = '') then begin
      ChapterLabel.caption := Descr;
      String1Field.caption := Narr;

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND DESCR = ' + AddExpr(Descr));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Descr;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;

      Readln(TxtFile,LineString);
    end else if substr(LineString,1,2) = '  ' then begin
      Narr := Narr + #13#10  + alltrim(LineString);
      Readln(TxtFile,LineString);
    end else begin
      Descr := alltrim(substr(LineString,1,at('.',LineString)));
      Narr  := alltrim(substr(LineString,at('.',LineString)+1,10000));
      Readln(TxtFile,LineString);
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);

  SortOrd := 1;
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' ORDER BY CODE,DESCR');
  While Not A('VIOCODE').Eof do begin
    GetTable('VIOCODE').Edit;
    GetField('VIOCODE','SORTORD').AsInteger := SortOrd;
    GetTable('VIOCODE').Post;
    SortOrd := SortOrd + 1;
    A('VIOCODE').Skip(1);
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');

end;

procedure TInspSetForm.NJUFCBaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJUFC'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'NJUFC';
    GetField('VIOCODESET','DESCR').AsString := 'NJ Uniform Fire Code';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NJUFC'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'NJUFC';
    GetField('VIOCODE','DESCR').AsString        := 'NJ Uniform Fire Code';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.NJUFCCodeButtonClick(Sender: TObject);
var CodeVar       : String;
    DescrVar      : String;
    VioCodeSetID  : String;
    ParentID      : String;
    mError        : String;
    SortOrd       : Integer;
    DataSourceDB: TAlpineadoConnection;
begin
  inherited;
  SortOrd := 1;
  DataSourceDB := TAlpineAdoConnection.Create(self,'rednmxservices1.com:REDNMX_CAD','ALPINE','A_S_C',MySqlTableType);
  DataSourceDB.connect(merror);

  Open_Query(DataSourceDB,'VIONJCODE',false,'SELECT * FROM VIONJCODE');

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJUFC'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + PKValue(VioCodeSetID) +
                                ' AND CODE = ' + AddExpr('NJUFC'));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');

  while not A('VIONJCODE').eof do begin
    CodeVar  := alltrim(GetField('VIONJCODE','CODE').AsString);
    DescrVar := alltrim(GetField('VIONJCODE','DESCR').AsString);

    A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +
                            ' AND PARENTID = ' + AddExpr(ParentID) + ' AND CODE = ' + AddExpr(CodeVar));
    If A('VIOCODE').RecordsExist then
      A('VIOCODE').Edit
    else
      A('VIOCODE').Append;

    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := CodeVar;
    GetField('VIOCODE','DESCR').AsString        := DescrVar;
    GetField('VIOCODE','NARR').AsString         := alltrim(GetField('VIONJCODE','NARR').AsString);
    GetField('VIOCODE','PARENTID').AsString     := ParentID;
    GetField('VIOCODE','SORTORD').AsString      := IntToStr(SortOrd);

    SortOrd := SortOrd + 1;

    A('VIOCODE').Post;

    AddStatusListBox(ListBox,'NJ Uniform Fire Code: ' + CodeVar);

    A('VIONJCODE').Skip(1);
  end;

  CloseApollo('VIOCODE');
  CloseApollo('VIONJCODE');
  AddStatusListBox(ListBox,'NJ Uniform Fire Import Complete!');
end;


procedure TInspSetForm.NFPACodeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2015 Chapter Text  . . . . . Started');
  LoadNFPACodeChapter('1');
  LoadNFPACodeChapter('2');
  LoadNFPACodeChapter('3');
  LoadNFPACodeChapter('4');
  LoadNFPACodeChapter('5');
  LoadNFPACodeChapter('6');
  LoadNFPACodeChapter('10');
  LoadNFPACodeChapter('11');
  LoadNFPACodeChapter('12');
  LoadNFPACodeChapter('13');
  LoadNFPACodeChapter('14');
  LoadNFPACodeChapter('15');
  LoadNFPACodeChapter('16');
  LoadNFPACodeChapter('17');
  LoadNFPACodeChapter('18');
  LoadNFPACodeChapter('19');
  LoadNFPACodeChapter('20');
  LoadNFPACodeChapter('21');
  LoadNFPACodeChapter('22');
  LoadNFPACodeChapter('23');
  LoadNFPACodeChapter('24');
  LoadNFPACodeChapter('25');
  LoadNFPACodeChapter('26');
  LoadNFPACodeChapter('27');
  LoadNFPACodeChapter('28');
  LoadNFPACodeChapter('29');
  LoadNFPACodeChapter('30');
  LoadNFPACodeChapter('31');
  LoadNFPACodeChapter('32');
  LoadNFPACodeChapter('33');
  LoadNFPACodeChapter('34');
  LoadNFPACodeChapter('36');
  LoadNFPACodeChapter('37');
  LoadNFPACodeChapter('40');
  LoadNFPACodeChapter('41');
  LoadNFPACodeChapter('42');
  LoadNFPACodeChapter('43');
  LoadNFPACodeChapter('44');
  LoadNFPACodeChapter('45');
  LoadNFPACodeChapter('50');
  LoadNFPACodeChapter('51');
  LoadNFPACodeChapter('52');
  LoadNFPACodeChapter('53');
  LoadNFPACodeChapter('54');
  LoadNFPACodeChapter('60');
  LoadNFPACodeChapter('61');
  LoadNFPACodeChapter('63');
  LoadNFPACodeChapter('64');
  LoadNFPACodeChapter('65');
  LoadNFPACodeChapter('66');
  LoadNFPACodeChapter('67');
  LoadNFPACodeChapter('68');
  LoadNFPACodeChapter('69');
  LoadNFPACodeChapter('70');
  LoadNFPACodeChapter('71');
  LoadNFPACodeChapter('72');
  LoadNFPACodeChapter('73');
  LoadNFPACodeChapter('74');
  LoadNFPACodeChapter('75');
  AddStatusListBox(ListBox,'NFPA 2015 Chapter Text  . . . . . Done');
end;

procedure TInspSetForm.LoadNFPACodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
    DotCol       : Integer;
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2015 Chapter Text ' + ChapterNumber);
  If alltrim(NFPA2015Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NFPA2015\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := NFPA2015Directory.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  If FileExists(FileName) then begin

    Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2015'));
    VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
    CloseApollo('VIOCODESET');

    Code         := 'Chapter ' + alltrim(ChapterNumber);
    Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + PKValue(VioCodeSetID) + ' AND CODE = ' + AddExpr(Code));
    ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
    CloseApollo('GETVIOCODE');

    AssignFile(TxtFile,FileName);
    Reset(TxtFile);
    Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
    Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
    Readln(TxtFile,LineString);

    While not Eof(TxtFile) do begin
      If (alltrim(LineString) = '') then begin
        Readln(TxtFile,LineString);

      end else if Not (alltrim(LineString) = '') then begin
        FullLine    := LineString;
        Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
        LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
        DotCol      := at('.',LineString);
        If (DotCol < 60) then begin
          Descr      := alltrim(Substr(LineString,1,at('.',LineString)));
          LineString := alltrim(Substr(LineString,at('.',LineString)+1,5000));
          Narr       := LineString;
        end else begin
          Descr      := alltrim(Substr(LineString,1,50));
          Narr       := LineString;
        end;
        ContNarr    := true;

        While ContNarr do begin
          Readln(TxtFile,LineString);
          If alltrim(LineString) = '' then
            ContNarr := false
          else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
            Narr     := Narr + #13#10 + rtrim(LineString);
            ContNarr := true;
          end else begin
            ContNarr := false;
          end;
        end;

        PeriodCount := GetPeriodCount(Code);
        QueryCode := substr(Code,1,rat('.',Code)-1);
        If PeriodCount = 1 then
          QueryCode := 'Chapter ' + QueryCode;

        A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
        If A('GETVIOCODE').RecordsExist then begin

          A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
          If A('VIOCODE').RecordsExist then
            A('VIOCODE').Edit
          else
            A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := Code;
          GetField('VIOCODE','DESCR').AsString        := Descr;
          GetField('VIOCODE','NARR').AsString         := Narr;
          GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
          A('VIOCODE').Post;

          AddStatusListBox(ListBox,'NFPA 2015 Code ' + Code);
          
          ChapterLabel.Caption := Code + ' ' + Descr;
          String1Field.Caption := Narr;
        end;

        QueryCode   := '';
        Code        := '';
        Descr       := '';
        Narr        := '';
      end;

      Application.ProcessMessages;
    end;

    CloseApollo('GETVIOCODE');
    CloseApollo('VIOCODE');
    CloseFile(TxtFile);
  end;
end;


procedure TInspSetForm.LoadNJ2015ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  If alltrim(NJIFC2015DirectoryField.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NJ2015\TXT\CHP.TXT'
  else
    FileName := alltrim(NJIFC2015DirectoryField.Text) + '\CHP.TXT';
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJIFC2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NJIFC2015'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  AddStatusListBox(ListBox,'Loading NJ2015 Chapters. . . . . . Started');
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
    end else if Not (alltrim(LineString) = '') then
      Narr  := LineString;


    If (alltrim(LineString) = '') then begin
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      AddStatusListBox(ListBox,'Loading NJ2015 Chapters. . . . . . ' + Code + ' ' + Descr);
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code  := '';
      Descr := '';
      Narr  := '';
    end;
    Application.ProcessMessages;
  end;

  AddStatusListBox(ListBox,'Loading NJ2015 Chapters. . . . . . Finished');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;

procedure TInspSetForm.LoadNJ2015CodeButtonClick(Sender: TObject);
begin
  inherited;
  If NJIFC2015ChapterField.Text = '' then begin
{   LoadNJ2015IFCCodeChapter('1');
    LoadNJ2015IFCCodeChapter('2');
    LoadNJ2015IFCCodeChapter('3');
    LoadNJ2015IFCCodeChapter('4');
    LoadNJ2015IFCCodeChapter('5');
    LoadNJ2015IFCCodeChapter('6');
    LoadNJ2015IFCCodeChapter('7');
    LoadNJ2015IFCCodeChapter('8');
    LoadNJ2015IFCCodeChapter('9');
}
    LoadNJ2015IFCCodeChapter('10');
{
    LoadNJ2015IFCCodeChapter('20');
    LoadNJ2015IFCCodeChapter('21');
    LoadNJ2015IFCCodeChapter('22');
    LoadNJ2015IFCCodeChapter('23');
    LoadNJ2015IFCCodeChapter('24');
    LoadNJ2015IFCCodeChapter('25');
    LoadNJ2015IFCCodeChapter('26');
    LoadNJ2015IFCCodeChapter('27');
    LoadNJ2015IFCCodeChapter('28');
    LoadNJ2015IFCCodeChapter('29');
    LoadNJ2015IFCCodeChapter('30');
    LoadNJ2015IFCCodeChapter('31');
    LoadNJ2015IFCCodeChapter('32');
    LoadNJ2015IFCCodeChapter('33');
    LoadNJ2015IFCCodeChapter('34');
    LoadNJ2015IFCCodeChapter('35');
    LoadNJ2015IFCCodeChapter('36');
    LoadNJ2015IFCCodeChapter('37');
    LoadNJ2015IFCCodeChapter('50');
    LoadNJ2015IFCCodeChapter('51');
    LoadNJ2015IFCCodeChapter('53');
    LoadNJ2015IFCCodeChapter('54');
    LoadNJ2015IFCCodeChapter('55');
    LoadNJ2015IFCCodeChapter('56');
    LoadNJ2015IFCCodeChapter('57');
    LoadNJ2015IFCCodeChapter('58');
    LoadNJ2015IFCCodeChapter('59');
    LoadNJ2015IFCCodeChapter('60');
    LoadNJ2015IFCCodeChapter('61');
    LoadNJ2015IFCCodeChapter('62');
    LoadNJ2015IFCCodeChapter('63');
    LoadNJ2015IFCCodeChapter('64');
    LoadNJ2015IFCCodeChapter('65');
    LoadNJ2015IFCCodeChapter('66');
    LoadNJ2015IFCCodeChapter('67');
}
    ShowMessage('Done');

  end else begin
//  LoadNJ2015IFCCodeChapter(NJIFC2015ChapterField.Text);
//  ShowMessage('Done');
  end;
end;



procedure TInspSetForm.NFPA2012CodeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2012 Chapter Text  . . . . . Started');
  LoadNFPA2012CodeChapter('1');
  LoadNFPA2012CodeChapter('2');
  LoadNFPA2012CodeChapter('3');
  LoadNFPA2012CodeChapter('4');
  LoadNFPA2012CodeChapter('5');
  LoadNFPA2012CodeChapter('6');
  LoadNFPA2012CodeChapter('10');
  LoadNFPA2012CodeChapter('11');
  LoadNFPA2012CodeChapter('12');
  LoadNFPA2012CodeChapter('13');
  LoadNFPA2012CodeChapter('14');
  LoadNFPA2012CodeChapter('15');
  LoadNFPA2012CodeChapter('16');
  LoadNFPA2012CodeChapter('17');
  LoadNFPA2012CodeChapter('18');
  LoadNFPA2012CodeChapter('19');
  LoadNFPA2012CodeChapter('20');
  LoadNFPA2012CodeChapter('21');
  LoadNFPA2012CodeChapter('22');
  LoadNFPA2012CodeChapter('23');
  LoadNFPA2012CodeChapter('24');
  LoadNFPA2012CodeChapter('25');
  LoadNFPA2012CodeChapter('26');
  LoadNFPA2012CodeChapter('27');
  LoadNFPA2012CodeChapter('28');
  LoadNFPA2012CodeChapter('29');
  LoadNFPA2012CodeChapter('30');
  LoadNFPA2012CodeChapter('31');
  LoadNFPA2012CodeChapter('32');
  LoadNFPA2012CodeChapter('33');
  LoadNFPA2012CodeChapter('34');
  LoadNFPA2012CodeChapter('36');
  LoadNFPA2012CodeChapter('37');
  LoadNFPA2012CodeChapter('40');
  LoadNFPA2012CodeChapter('41');
  LoadNFPA2012CodeChapter('42');
  LoadNFPA2012CodeChapter('43');
  LoadNFPA2012CodeChapter('44');
  LoadNFPA2012CodeChapter('45');
  LoadNFPA2012CodeChapter('50');
  LoadNFPA2012CodeChapter('51');
  LoadNFPA2012CodeChapter('52');
  LoadNFPA2012CodeChapter('53');
  LoadNFPA2012CodeChapter('54');
  LoadNFPA2012CodeChapter('60');
  LoadNFPA2012CodeChapter('61');
  LoadNFPA2012CodeChapter('63');
  LoadNFPA2012CodeChapter('64');
  LoadNFPA2012CodeChapter('65');
  LoadNFPA2012CodeChapter('66');
  LoadNFPA2012CodeChapter('67');
  LoadNFPA2012CodeChapter('68');
  LoadNFPA2012CodeChapter('69');
  LoadNFPA2012CodeChapter('70');
  LoadNFPA2012CodeChapter('71');
  LoadNFPA2012CodeChapter('72');
  LoadNFPA2012CodeChapter('73');
  LoadNFPA2012CodeChapter('74');
  LoadNFPA2012CodeChapter('75');
  AddStatusListBox(ListBox,'NFPA 2012 Chapter Text  . . . . . Done');
end;


procedure TInspSetForm.LoadNFPA2012CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
    DotCol       : Integer;
begin
  inherited;
  AddStatusListBox(ListBox,'NFPA 2012 Chapter Text ' + ChapterNumber);
  If alltrim(NFPA2012Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NFPA2012\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := NFPA2012Directory.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  If FileExists(FileName) then begin

    Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NFPA2012'));
    VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
    CloseApollo('VIOCODESET');

    Code         := 'Chapter ' + alltrim(ChapterNumber);
    Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
    ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
    CloseApollo('GETVIOCODE');

    AssignFile(TxtFile,FileName);
    Reset(TxtFile);
    Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
    Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
    Readln(TxtFile,LineString);

    While not Eof(TxtFile) do begin
      If (alltrim(LineString) = '') then begin
        Readln(TxtFile,LineString);

      end else if Not (alltrim(LineString) = '') then begin
        FullLine    := LineString;
        Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
        LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
        DotCol      := at('.',LineString);
        If (DotCol < 60) then begin
          Descr      := alltrim(Substr(LineString,1,at('.',LineString)));
          LineString := alltrim(Substr(LineString,at('.',LineString)+1,5000));
          Narr       := LineString;
        end else begin
          Descr      := alltrim(Substr(LineString,1,50));
          Narr       := LineString;
        end;
        ContNarr    := true;

        While ContNarr do begin
          Readln(TxtFile,LineString);
          If alltrim(LineString) = '' then
            ContNarr := false
          else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
            Narr     := Narr + #13#10 + rtrim(LineString);
            ContNarr := true;
          end else begin
            ContNarr := false;
          end;
        end;

        PeriodCount := GetPeriodCount(Code);
        QueryCode := substr(Code,1,rat('.',Code)-1);
        If PeriodCount = 1 then
          QueryCode := 'Chapter ' + QueryCode;

        A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
        If A('GETVIOCODE').RecordsExist then begin

          A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
          If A('VIOCODE').RecordsExist then
            A('VIOCODE').Edit
          else
            A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := Code;
          GetField('VIOCODE','DESCR').AsString        := Descr;
          GetField('VIOCODE','NARR').AsString         := Narr;
          GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
          A('VIOCODE').Post;

          AddStatusListBox(ListBox,'NFPA 2012 Code ' + Code);
          
          ChapterLabel.Caption := Code + ' ' + Descr;
          String1Field.Caption := Narr;
        end;

        QueryCode   := '';
        Code        := '';
        Descr       := '';
        Narr        := '';
      end;

      Application.ProcessMessages;
    end;

    CloseApollo('GETVIOCODE');
    CloseApollo('VIOCODE');
    CloseFile(TxtFile);
  end;
end;

procedure TInspSetForm.LoadIPMCCodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\IPMC2015\TXT\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('IPMC2015'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin

      Code  := alltrim(substr(LineString,1,13));
      Descr := alltrim(substr(LineString,14,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;

      AddStatusListBox(ListBox,'Adding IPMC 2015 Code ' + Code + ' ' + Descr);

      Code     := '';
      Descr    := '';

      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      AddStatusListBox(ListBox,'Adding IPMC 2015 Code ' + Code + ' ' + Descr);

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;

procedure TInspSetForm.LoadNJ2015IFCCodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  If alltrim(NJIFC2015DirectoryField.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NJ2015\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := NJIFC2015DirectoryField.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NJIFC2015'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin
      Code  := alltrim(substr(LineString,1,13));
      Descr := alltrim(substr(LineString,14,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code     := '';
      Descr    := '';
      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;




procedure TInspSetForm.NC2018BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NCIFC2018'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'NCIFC2018';
    GetField('VIOCODESET','DESCR').AsString := 'NC IFC 2018 Codes (IFC 2015 with NC Amendments)';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NCIFC2018'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'NCIFC2018';
    GetField('VIOCODE','DESCR').AsString        := 'NC IFC 2018 Codes (IFC 2015 with NC Amendments)';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;


procedure TInspSetForm.NC2018ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  If alltrim(NCIFC2018Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NCIFC2018\TXT\CHP.TXT'
  else
    FileName := alltrim(NCIFC2018Directory.Text) + '\CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NCIFC2018'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('NCIFC2018'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
    end else if Not (alltrim(LineString) = '') then
      Narr  := LineString;

    If (alltrim(LineString) = '') then begin
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code  := '';
      Descr := '';
      Narr  := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;

procedure TInspSetForm.NCChp2ButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
    Cont         : Boolean;
    SortOrd      : Integer;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\NCIFC2018\TXT\CHP2-DEF.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NCIFC2018'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('SECTION 202'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  Descr := '';
  Narr  := '';
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If (alltrim(LineString) = '') then begin
      ChapterLabel.caption := Descr;
      String1Field.caption := Narr;

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND DESCR = ' + AddExpr(Descr));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Descr;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;

      Readln(TxtFile,LineString);
    end else if substr(LineString,1,2) = '  ' then begin
      Narr := Narr + #13#10  + alltrim(LineString);
      Readln(TxtFile,LineString);
    end else begin
      Descr := alltrim(substr(LineString,1,at('.',LineString)));
      Narr  := alltrim(substr(LineString,at('.',LineString)+1,10000));
      Readln(TxtFile,LineString);
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);


  SortOrd := 1;
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' ORDER BY CODE,DESCR');
  While Not A('VIOCODE').Eof do begin
    GetTable('VIOCODE').Edit;
    GetField('VIOCODE','SORTORD').AsInteger := SortOrd;
    GetTable('VIOCODE').Post;
    SortOrd := SortOrd + 1;
    A('VIOCODE').Skip(1);
  end;
  CloseApollo('VIOCODE');

  ShowMessage('Done');
end;

procedure TInspSetForm.LoadNCIFC2018ButtonClick(Sender: TObject);
begin
  inherited;
  If ChapterField.Text = '' then begin
//  LoadNCIFC2018CodeChapter('1');
    LoadNCIFC2018CodeChapter('2');
{
    LoadNCIFC2018CodeChapter('1');
    LoadNCIFC2018CodeChapter('3');
    LoadNCIFC2018CodeChapter('4');
    LoadNCIFC2018CodeChapter('5');
    LoadNCIFC2018CodeChapter('6');
    LoadNCIFC2018CodeChapter('7');
    LoadNCIFC2018CodeChapter('8');
    LoadNCIFC2018CodeChapter('9');
    LoadNCIFC2018CodeChapter('10');
    LoadNCIFC2018CodeChapter('20');
    LoadNCIFC2018CodeChapter('21');
    LoadNCIFC2018CodeChapter('22');
    LoadNCIFC2018CodeChapter('23');
    LoadNCIFC2018CodeChapter('24');
    LoadNCIFC2018CodeChapter('25');
    LoadNCIFC2018CodeChapter('26');
    LoadNCIFC2018CodeChapter('27');
    LoadNCIFC2018CodeChapter('28');
    LoadNCIFC2018CodeChapter('29');
    LoadNCIFC2018CodeChapter('30');
    LoadNCIFC2018CodeChapter('31');
    LoadNCIFC2018CodeChapter('32');
    LoadNCIFC2018CodeChapter('33');
    LoadNCIFC2018CodeChapter('34');
    LoadNCIFC2018CodeChapter('35');
    LoadNCIFC2018CodeChapter('36');
    LoadNCIFC2018CodeChapter('37');
    LoadNCIFC2018CodeChapter('50');
    LoadNCIFC2018CodeChapter('51');
    LoadNCIFC2018CodeChapter('53');
    LoadNCIFC2018CodeChapter('54');
    LoadNCIFC2018CodeChapter('55');
    LoadNCIFC2018CodeChapter('56');
    LoadNCIFC2018CodeChapter('57');
    LoadNCIFC2018CodeChapter('58');
    LoadNCIFC2018CodeChapter('59');
    LoadNCIFC2018CodeChapter('60');
    LoadNCIFC2018CodeChapter('61');
    LoadNCIFC2018CodeChapter('62');
    LoadNCIFC2018CodeChapter('63');
    LoadNCIFC2018CodeChapter('64');
    LoadNCIFC2018CodeChapter('65');
    LoadNCIFC2018CodeChapter('66');
    LoadNCIFC2018CodeChapter('67');
}
    ShowMessage('Done');
  end else begin
    LoadNCIFC2018CodeChapter(ChapterField.Text);
    ShowMessage('Done');
  end;
end;


procedure TInspSetForm.LoadNCIFC2018CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  If alltrim(NCIFC2018Directory.Text) = '' then
    FileName := 'C:\REDNMX\INSPCODE\NCIFC2018\TXT\CHP' + alltrim(ChapterNumber) + '.TXT'
  else
    FileName  := NCIFC2018Directory.Text + '\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('NCIFC2018'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin
      Code  := alltrim(substr(LineString,1,13));
      Descr := alltrim(substr(LineString,14,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code     := '';
      Descr    := '';
      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;

procedure TInspSetForm.VA2015BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('VAIFC2015'));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := 'VAIFC2015';
    GetField('VIOCODESET','DESCR').AsString := 'VA IFC 2015 Codes';
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('VAIFC2015'));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := 'VAIFC2015';
    GetField('VIOCODE','DESCR').AsString        := 'VA IFC 2015 Codes';
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;


procedure TInspSetForm.VA2015ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\VAIFC2015\TXT\CHP.TXT';
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('VAIFC2015'));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('VAIFC2015'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
    end else if Not (alltrim(LineString) = '') then
      Narr  := LineString;

    If (alltrim(LineString) = '') then begin
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code  := '';
      Descr := '';
      Narr  := '';
    end;
    Application.ProcessMessages;
  end;
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;


procedure TInspSetForm.LoadVAIFC2015ButtonClick(Sender: TObject);
begin
  inherited;
  LoadVAIFC2015CodeChapter('1');
  LoadVAIFC2015CodeChapter('3');
  LoadVAIFC2015CodeChapter('4');
  LoadVAIFC2015CodeChapter('5');
  LoadVAIFC2015CodeChapter('6');
  LoadVAIFC2015CodeChapter('7');
  LoadVAIFC2015CodeChapter('8');
  LoadVAIFC2015CodeChapter('9');
  LoadVAIFC2015CodeChapter('10');
  LoadVAIFC2015CodeChapter('20');
  LoadVAIFC2015CodeChapter('21');
  LoadVAIFC2015CodeChapter('22');
  LoadVAIFC2015CodeChapter('23');
  LoadVAIFC2015CodeChapter('24');
  LoadVAIFC2015CodeChapter('25');
  LoadVAIFC2015CodeChapter('26');
  LoadVAIFC2015CodeChapter('27');
  LoadVAIFC2015CodeChapter('28');
  LoadVAIFC2015CodeChapter('29');
  LoadVAIFC2015CodeChapter('30');
  LoadVAIFC2015CodeChapter('31');
  LoadVAIFC2015CodeChapter('32');
  LoadVAIFC2015CodeChapter('33');
  LoadVAIFC2015CodeChapter('34');
  LoadVAIFC2015CodeChapter('35');
  LoadVAIFC2015CodeChapter('36');
  LoadVAIFC2015CodeChapter('37');
  LoadVAIFC2015CodeChapter('50');
  LoadVAIFC2015CodeChapter('51');
  LoadVAIFC2015CodeChapter('53');
  LoadVAIFC2015CodeChapter('54');
  LoadVAIFC2015CodeChapter('55');
  LoadVAIFC2015CodeChapter('56');
  LoadVAIFC2015CodeChapter('57');
  LoadVAIFC2015CodeChapter('58');
  LoadVAIFC2015CodeChapter('59');
  LoadVAIFC2015CodeChapter('60');
  LoadVAIFC2015CodeChapter('61');
  LoadVAIFC2015CodeChapter('62');
  LoadVAIFC2015CodeChapter('63');
  LoadVAIFC2015CodeChapter('64');
  LoadVAIFC2015CodeChapter('65');
  LoadVAIFC2015CodeChapter('66');
  LoadVAIFC2015CodeChapter('67');
  ShowMessage('Done');
end;


procedure TInspSetForm.LoadVAIFC2015CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\VAIFC2015\TXT\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr('VAIFC2015'));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If substr(LineString,1,7) = 'SECTION' then begin
      Code  := alltrim(substr(LineString,1,13));
      Descr := alltrim(substr(LineString,14,200));

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;
      Code     := '';
      Descr    := '';
      Readln(TxtFile,LineString);

    end else if (alltrim(LineString) = '') then begin
      Readln(TxtFile,LineString);

    end else if Not (alltrim(LineString) = '') then begin
      FullLine    := LineString;
      Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
      LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
      Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
      LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
      Narr        := LineString;
      ContNarr    := true;

      While ContNarr do begin
        Readln(TxtFile,LineString);
        If alltrim(LineString) = '' then
          ContNarr := false
        else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
          Narr     := Narr + #13#10 + rtrim(LineString);
          ContNarr := true;
        end else begin
          ContNarr := false;
        end;
      end;

      PeriodCount := GetPeriodCount(Code);
      If PeriodCount = 1 then begin
        QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
      end else begin
        QueryCode := substr(Code,1,rat('.',Code)-1);
      end;

      A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
      If A('GETVIOCODE').RecordsExist then begin

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
        If A('VIOCODE').RecordsExist then
          A('VIOCODE').Edit
        else
          A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;

      QueryCode   := '';
      Code        := '';
      Descr       := '';
      Narr        := '';
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('GETVIOCODE');
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
end;


procedure TInspSetForm.IFCBaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(IFCBaseCode));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := IFCBaseCode;
    GetField('VIOCODESET','DESCR').AsString := IFCDescr;
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(IFCBaseCode));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := IFCBaseCode;
    GetField('VIOCODE','DESCR').AsString        := IFCDescr;
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.IFCChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\' + IFCBaseCode + '\TXT\CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(IFCBaseCode));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(IFCBaseCode));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'CHAPTER' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
    end else if Not (alltrim(LineString) = '') then
      Narr  := LineString;

    If (alltrim(LineString) = '') then begin
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;

        ChapterLabel.Caption := Code + ' ' + Descr;
        String1Field.Caption := Narr;
      end;
      Code  := '';
      Descr := '';
      Narr  := '';
    end;
    Application.ProcessMessages;
  end;
  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  ShowMessage('Done');
end;

procedure TInspSetForm.LoadIFCButtonClick(Sender: TObject);
begin
  inherited;
  LoadIFC2018CodeChapter('1');
  LoadIFC2018CodeChapter('2');
  LoadIFC2018CodeChapter('3');
  LoadIFC2018CodeChapter('4');
  LoadIFC2018CodeChapter('5');
  LoadIFC2018CodeChapter('6');
  LoadIFC2018CodeChapter('7');
  LoadIFC2018CodeChapter('8');
  LoadIFC2018CodeChapter('9');
  LoadIFC2018CodeChapter('10');
  LoadIFC2018CodeChapter('11');
  LoadIFC2018CodeChapter('12');
  LoadIFC2018CodeChapter('20');
  LoadIFC2018CodeChapter('21');
  LoadIFC2018CodeChapter('22');
  LoadIFC2018CodeChapter('23');
  LoadIFC2018CodeChapter('24');
  LoadIFC2018CodeChapter('25');
  LoadIFC2018CodeChapter('26');
  LoadIFC2018CodeChapter('27');
  LoadIFC2018CodeChapter('28');
  LoadIFC2018CodeChapter('29');
  LoadIFC2018CodeChapter('30');
  LoadIFC2018CodeChapter('31');
  LoadIFC2018CodeChapter('32');
  LoadIFC2018CodeChapter('33');
  LoadIFC2018CodeChapter('34');
  LoadIFC2018CodeChapter('35');
  LoadIFC2018CodeChapter('36');
  LoadIFC2018CodeChapter('37');
  LoadIFC2018CodeChapter('38');
  LoadIFC2018CodeChapter('39');
  LoadIFC2018CodeChapter('50');
  LoadIFC2018CodeChapter('51');
  LoadIFC2018CodeChapter('53');
  LoadIFC2018CodeChapter('54');
  LoadIFC2018CodeChapter('55');
  LoadIFC2018CodeChapter('56');
  LoadIFC2018CodeChapter('57');
  LoadIFC2018CodeChapter('58');
  LoadIFC2018CodeChapter('59');
  LoadIFC2018CodeChapter('60');
  LoadIFC2018CodeChapter('61');
  LoadIFC2018CodeChapter('62');
  LoadIFC2018CodeChapter('63');
  LoadIFC2018CodeChapter('64');
  LoadIFC2018CodeChapter('65');
  LoadIFC2018CodeChapter('66');
  LoadIFC2018CodeChapter('67');

  ShowMessage('Done');
end;

procedure TInspSetForm.LoadIFC2018CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\' + IFCBaseCode + '\TXT\CHP' + alltrim(ChapterNumber) + '.TXT';

  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(IFCBaseCode));
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Code         := 'CHAPTER ' + alltrim(ChapterNumber);
  Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
  ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
  CloseApollo('GETVIOCODE');

  If FileExists(FileName) then begin
    AssignFile(TxtFile,FileName);
    Reset(TxtFile);
    Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
    Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
    Readln(TxtFile,LineString);

    While not Eof(TxtFile) do begin
      If substr(LineString,1,7) = 'SECTION' then begin
        Code  := alltrim(substr(LineString,1,13));
        Descr := alltrim(substr(LineString,14,200));

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
        If Not A('VIOCODE').RecordsExist then begin
          A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := Code;
          GetField('VIOCODE','DESCR').AsString        := Descr;
          GetField('VIOCODE','PARENTID').AsString     := ParentID;
          A('VIOCODE').Post;
        end;
        Code     := '';
        Descr    := '';
        Readln(TxtFile,LineString);

      end else if (alltrim(LineString) = '') then begin
        Readln(TxtFile,LineString);

      end else if Not (alltrim(LineString) = '') then begin
        FullLine    := LineString;
        Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
        LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
        Descr       := alltrim(Substr(LineString,1,at('.',LineString)));
        LineString  := alltrim(Substr(LineString,at('.',LineString)+1,5000));
        Narr        := LineString;
        ContNarr    := true;

        While ContNarr do begin
          Readln(TxtFile,LineString);
          If alltrim(LineString) = '' then
            ContNarr := false
          else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
            Narr     := Narr + #13#10 + rtrim(LineString);
            ContNarr := true;
          end else begin
            ContNarr := false;
          end;
        end;

        PeriodCount := GetPeriodCount(Code);
        If PeriodCount = 1 then begin
          QueryCode := 'SECTION ' + substr(Code,1,at('.',Code)-1);
        end else begin
          QueryCode := substr(Code,1,rat('.',Code)-1);
        end;

        A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
        If A('GETVIOCODE').RecordsExist then begin

          A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
          If A('VIOCODE').RecordsExist then
            A('VIOCODE').Edit
          else
            A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := Code;
          GetField('VIOCODE','DESCR').AsString        := Descr;
          GetField('VIOCODE','NARR').AsString         := Narr;
          GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
          A('VIOCODE').Post;

          ChapterLabel.Caption := Code + ' ' + Descr;
          String1Field.Caption := Narr;
        end;

        QueryCode   := '';
        Code        := '';
        Descr       := '';
        Narr        := '';
      end;

      Application.ProcessMessages;
    end;

    CloseApollo('GETVIOCODE');
    CloseApollo('VIOCODE');
    CloseFile(TxtFile);
  end;
end;

procedure TInspSetForm.IFCChp2ButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    VioCodeSetID : String;
    Cont         : Boolean;
    SortOrd      : Integer;
begin
  inherited;
  FileName := 'C:\REDNMX\INSPCODE\' + IFCBaseCode + '\TXT\CHP2-DEF.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(IFCBaseCode));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr('SECTION 202'));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  Descr := '';
  Narr  := '';
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    If (alltrim(LineString) = '') then begin
      ChapterLabel.caption := Descr;
      String1Field.caption := Narr;

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID +  '  AND PARENTID = ' + ParentID + ' AND DESCR = ' + AddExpr(Descr));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Descr;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','NARR').AsString         := Narr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
      end;

      Readln(TxtFile,LineString);
    end else if substr(LineString,1,2) = '  ' then begin
      Narr := Narr + #13#10  + alltrim(LineString);
      Readln(TxtFile,LineString);
    end else begin
      Descr := alltrim(substr(LineString,1,at('.',LineString)));
      Narr  := alltrim(substr(LineString,at('.',LineString)+1,10000));
      Readln(TxtFile,LineString);
    end;

    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);

  SortOrd := 1;
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + ParentID + ' ORDER BY CODE,DESCR');
  While Not A('VIOCODE').Eof do begin
    GetTable('VIOCODE').Edit;
    GetField('VIOCODE','SORTORD').AsInteger := SortOrd;
    GetTable('VIOCODE').Post;
    SortOrd := SortOrd + 1;
    A('VIOCODE').Skip(1);
  end;
  CloseApollo('VIOCODE');
  ShowMessage('Done');
end;

procedure TInspSetForm.NYS2020RadioButtonClick(Sender: TObject);
begin
  inherited;
  IFCBaseCode              := 'NYS2020';
  IFCDescr                 := '2020 New York State Code';
  IFCBaseButton.Caption    := 'Add '  + BaseCode + ' Base';
  IFCChapterButton.Caption := 'Load ' + BaseCode + ' Chapters';
  LoadIFCButton.Caption    := 'Load ' + BaseCode + ' Code';

  IFCBaseButton.   Enabled := true;
  IFCChapterButton.Enabled := true;
  LoadIFCButton.   Enabled := true;
end;

procedure TInspSetForm.IFC2018RadioButtonClick(Sender: TObject);
begin
  inherited;
  IFCBaseCode              := 'IFC2018';
  IFCDescr                 := '2018 IFC Code';
  IFCBaseButton.Caption    := 'Add '  + BaseCode + ' Base';
  IFCChapterButton.Caption := 'Load ' + BaseCode + ' Chapters';
  LoadIFCButton.Caption    := 'Load ' + BaseCode + ' Code';

  IFCBaseButton.   Enabled := true;
  IFCChapterButton.Enabled := true;
  LoadIFCButton.   Enabled := true;
end;

procedure TInspSetForm.NFPA1012015CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'NFPA1012015';
  NFPADescr                    := 'NFPA 101 2015 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + BaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + BaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + BaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;

procedure TInspSetForm.MFSC2015CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'MFSC2015';
  NFPADescr                    := 'Massachusetts Comprehensive Fire Safety 2015 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + NFPABaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + NFPABaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + NFPABaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;

procedure TInspSetForm.NFPA582014CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'NFPA582014';
  NFPADescr                    := 'NFPA 58 Liquefied Petroleum Gas 2014 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + NFPABaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + NFPABaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + NFPABaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;


procedure TInspSetForm.NFPA132013CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'NFPA132013';
  NFPADescr                    := 'NFPA 13 Standard for the Installation of Sprinkler Systems 2013 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + NFPABaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + NFPABaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + NFPABaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;

procedure TInspSetForm.NFPA312011CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'NFPA312011';
  NFPADescr                    := 'NFPA 31 Standard for the Installation of Oil-Burning Equipment 2011 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + NFPABaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + NFPABaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + NFPABaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;

procedure TInspSetForm.NFPA722013CheckClick(Sender: TObject);
begin
  inherited;
  NFPABaseCode                 := 'NFPA722013';
  NFPADescr                    := 'NFPA 72 National Fire Alarm and Signaling Code 2013 Codes';
  NFPA101BaseButton.Caption    := 'Add '  + NFPABaseCode + ' Base';
  NFPA101ChapterButton.Caption := 'Load ' + NFPABaseCode + ' Chapters';
  NFPA101CodeButton.Caption    := 'Load ' + NFPABaseCode + ' Code';

  NFPA101BaseButton.   Enabled := true;
  NFPA101ChapterButton.Enabled := true;
  NFPA101CodeButton.   Enabled := true;
end;


procedure TInspSetForm.NFPA101BaseButtonClick(Sender: TObject);
Var VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,NFPADescr + ' Loading Base . . . . . . Started');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(NFPABaseCode));
  If Not A('VIOCODESET').RecordsExist then begin
    A('VIOCODESET').Append;
    GetField('VIOCODESET','CODE').AsString  := NFPABaseCode;
    GetField('VIOCODESET','DESCR').AsString := NFPADescr;
    A('VIOCODESET').Post;
  end;
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(NFPABaseCode));
  If Not A('VIOCODE').RecordsExist then begin
    A('VIOCODE').Append;
    GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
    GetField('VIOCODE','CODE').AsString         := NFPABaseCode;
    GetField('VIOCODE','DESCR').AsString        := NFPADescr;
    A('VIOCODE').Post;
  end;
  CloseApollo('VIOCODE');
  AddStatusListBox(ListBox,NFPADescr + ' Loading Base . . . . . . Done');
end;


procedure TInspSetForm.NFPA101ChapterButtonClick(Sender: TObject);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    Code         : String;
    Descr        : String;
    ParentID     : String;
    VioCodeSetID : String;
begin
  inherited;
  AddStatusListBox(ListBox,NFPADescr + ' Conversion . . . . . . Started');

  FileName  := 'C:\REDNMX\INSPCODE\' + NFPABaseCode + '\TXT\CHP.TXT';

  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(NFPABaseCode));
  VioCodeSetID := Getfield('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESETID');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(NFPABaseCode));
  ParentID := GetField('VIOCODE','VIOCODEID').AsString;
  CloseApollo('VIOCODE');

  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    If substr(LineString,1,7) = 'Chapter' then begin
      Code  := alltrim(substr(LineString,1,11));
      Descr := alltrim(substr(LineString,11,200));
      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + '  AND PARENTID = ' + ParentID + ' AND CODE = ' + AddExpr(Code));
      If Not A('VIOCODE').RecordsExist then begin
        A('VIOCODE').Append;
        GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
        GetField('VIOCODE','CODE').AsString         := Code;
        GetField('VIOCODE','DESCR').AsString        := Descr;
        GetField('VIOCODE','PARENTID').AsString     := ParentID;
        A('VIOCODE').Post;
        AddStatusListBox(ListBox,'Adding ' + NFPADescr + ' Chapter ' + Code);
      end;
      Code  := '';
      Descr := '';
    end;
    Application.ProcessMessages;
  end;

  CloseApollo('VIOCODE');
  CloseFile(TxtFile);
  AddStatusListBox(ListBox,NFPADescr + ' Conversion . . . . . . Done');
  ShowMessage('Done');
end;

procedure TInspSetForm.NFPA101CodeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,NFPADescr + ' Chapter Text  . . . . . Started');

  LoadNFPA101CodeChapter('1');
  LoadNFPA101CodeChapter('2');
  LoadNFPA101CodeChapter('3');
  LoadNFPA101CodeChapter('4');
  LoadNFPA101CodeChapter('5');
  LoadNFPA101CodeChapter('6');
  LoadNFPA101CodeChapter('7');
  LoadNFPA101CodeChapter('8');
  LoadNFPA101CodeChapter('9');
  LoadNFPA101CodeChapter('10');
  LoadNFPA101CodeChapter('11');
  LoadNFPA101CodeChapter('12');
  LoadNFPA101CodeChapter('13');
  LoadNFPA101CodeChapter('14');
  LoadNFPA101CodeChapter('15');
  LoadNFPA101CodeChapter('16');
  LoadNFPA101CodeChapter('17');
  LoadNFPA101CodeChapter('18');
  LoadNFPA101CodeChapter('19');
  LoadNFPA101CodeChapter('20');
  LoadNFPA101CodeChapter('21');
  LoadNFPA101CodeChapter('22');
  LoadNFPA101CodeChapter('23');
  LoadNFPA101CodeChapter('24');
  LoadNFPA101CodeChapter('25');
  LoadNFPA101CodeChapter('26');
  LoadNFPA101CodeChapter('27');
  LoadNFPA101CodeChapter('28');
  LoadNFPA101CodeChapter('29');
  LoadNFPA101CodeChapter('30');
  LoadNFPA101CodeChapter('31');
  LoadNFPA101CodeChapter('32');
  LoadNFPA101CodeChapter('33');
  LoadNFPA101CodeChapter('34');
  LoadNFPA101CodeChapter('35');
  LoadNFPA101CodeChapter('36');
  LoadNFPA101CodeChapter('37');
  LoadNFPA101CodeChapter('38');
  LoadNFPA101CodeChapter('39');
  LoadNFPA101CodeChapter('40');
  LoadNFPA101CodeChapter('41');
  LoadNFPA101CodeChapter('42');
  LoadNFPA101CodeChapter('43');
  LoadNFPA101CodeChapter('43');
  LoadNFPA101CodeChapter('44');
  LoadNFPA101CodeChapter('45');
  LoadNFPA101CodeChapter('46');
  LoadNFPA101CodeChapter('47');
  LoadNFPA101CodeChapter('48');
  LoadNFPA101CodeChapter('49');
  LoadNFPA101CodeChapter('50');
  LoadNFPA101CodeChapter('51');
  LoadNFPA101CodeChapter('52');
  LoadNFPA101CodeChapter('53');
  LoadNFPA101CodeChapter('54');
  LoadNFPA101CodeChapter('55');
  LoadNFPA101CodeChapter('56');
  LoadNFPA101CodeChapter('57');
  LoadNFPA101CodeChapter('58');
  LoadNFPA101CodeChapter('59');
  LoadNFPA101CodeChapter('60');
  LoadNFPA101CodeChapter('61');
  LoadNFPA101CodeChapter('62');
  LoadNFPA101CodeChapter('63');
  LoadNFPA101CodeChapter('64');
  LoadNFPA101CodeChapter('65');
  LoadNFPA101CodeChapter('66');
  LoadNFPA101CodeChapter('67');
  AddStatusListBox(ListBox,NFPADescr + ' Chapter Text  . . . . . Done');
end;

procedure TInspSetForm.LoadNFPA101CodeChapter(ChapterNumber: String);
Var FileName     : String;
    TxtFile      : TextFile;
    LineString   : String;
    FullLine     : String;
    Code         : String;
    Descr        : String;
    Narr         : String;
    ParentID     : String;
    PeriodCount  : Integer;
    QueryCode    : String;
    VioCodeSetID : String;
    ContNarr     : Boolean;
    DotCol       : Integer;
begin
  inherited;
  AddStatusListBox(ListBox,NFPADescr + ' chapter ' + ChapterNumber);

  FileName := 'C:\REDNMX\INSPCODE\' + NFPABaseCode + '\TXT\CHP' + alltrim(ChapterNumber) + '.TXT';

  If FileExists(FileName) then begin

    Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET WHERE CODE = ' + AddExpr(NFPABaseCode));
    VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
    CloseApollo('VIOCODESET');

    Code         := 'Chapter ' + alltrim(ChapterNumber);
    Open_Query('GETVIOCODE',false,'SELECT VIOCODESETID, VIOCODEID FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(Code));
    ParentID     := GetField('GETVIOCODE','VIOCODEID').AsString;
    CloseApollo('GETVIOCODE');

    AssignFile(TxtFile,FileName);
    Reset(TxtFile);
    Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
    Open_Query('GETVIOCODE',false,'SELECT * FROM VIOCODE WHERE 1=2');
    Readln(TxtFile,LineString);

    While not Eof(TxtFile) do begin
      If (alltrim(LineString) = '') then begin
        Readln(TxtFile,LineString);

      end else if Not (alltrim(LineString) = '') then begin
        FullLine    := LineString;
        Code        := alltrim(Substr(LineString,1,at(' ',LineString)));
        LineString  := alltrim(Substr(LineString,at(' ',LineString),5000));
        DotCol      := at('.',LineString);
        If (DotCol < 60) then begin
          Descr      := alltrim(Substr(LineString,1,at('.',LineString)));
          LineString := alltrim(Substr(LineString,at('.',LineString)+1,5000));
          Narr       := LineString;
        end else begin
          Descr      := alltrim(Substr(LineString,1,50));
          Narr       := LineString;
        end;
        ContNarr    := true;

        While ContNarr do begin
          Readln(TxtFile,LineString);
          If alltrim(LineString) = '' then
            ContNarr := false
          else if (substr(LineString,1,2) = '  ') and Not (alltrim(LineString) = '') then begin
            Narr     := Narr + #13#10 + rtrim(LineString);
            ContNarr := true;
          end else begin
            ContNarr := false;
          end;
        end;

        PeriodCount := GetPeriodCount(Code);
        QueryCode := substr(Code,1,rat('.',Code)-1);
        If PeriodCount = 1 then
          QueryCode := 'Chapter ' + QueryCode;

        A('GETVIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND CODE = ' + AddExpr(QueryCode));
        If A('GETVIOCODE').RecordsExist then begin

          A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + VioCodeSetID + ' AND PARENTID = ' + GetField('GETVIOCODE','VIOCODEID').AsString + ' AND CODE = ' + AddExpr(Code));
          If A('VIOCODE').RecordsExist then
            A('VIOCODE').Edit
          else
            A('VIOCODE').Append;
          GetField('VIOCODE','VIOCODESETID').AsString := VioCodeSetID;
          GetField('VIOCODE','CODE').AsString         := Code;
          GetField('VIOCODE','DESCR').AsString        := Descr;
          GetField('VIOCODE','NARR').AsString         := Narr;
          GetField('VIOCODE','PARENTID').AsString     := GetField('GETVIOCODE','VIOCODEID').AsString;
          A('VIOCODE').Post;

          AddStatusListBox(ListBox,NFPADescr + ' code ' + Code);
          
          ChapterLabel.Caption := Code + ' ' + Descr;
          String1Field.Caption := Narr;
        end;

        QueryCode   := '';
        Code        := '';
        Descr       := '';
        Narr        := '';
      end;

      Application.ProcessMessages;
    end;
    CloseApollo('GETVIOCODE');
    CloseApollo('VIOCODE');
    CloseFile(TxtFile);
  end;
end;

end.
