unit PersSet;

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
  AdvGroupBox,
  AdvTrackBar;

type
  TPersSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    PersControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    PersPointTypeTab: TAdvTabSheet;
    PersTypeTab: TAdvTabSheet;
    PersTypeBrowse: TAlpineBlockBrowse;
    PersRankTab: TAdvTabSheet;
    PersRankBrowse: TAlpineBlockBrowse;
    PersMedTab: TAdvTabSheet;
    PersMedBrowse: TAlpineBlockBrowse;
    PersContTypeTab: TAdvTabSheet;
    PersContTypeBrowse: TAlpineBlockBrowse;
    PersDriverTab: TAdvTabSheet;
    PersDriverBrowse: TAlpineBlockBrowse;
    PersSortBrowse: TAlpineBlockBrowse;
    PersReligionTab: TAdvTabSheet;
    PersReligionBrowse: TAlpineBlockBrowse;
    PersPayScaleTab: TAdvTabSheet;
    PersPointRepTab: TAdvTabSheet;
    PersPointRepBrowse: TAlpineBlockBrowse;
    PersCommTab: TAdvTabSheet;
    PersDLClassBrowse: TAlpineBlockBrowse;
    PersBloodTypeBrowse: TAlpineBlockBrowse;
    PersCommTypeBrowse: TAlpineBlockBrowse;
    PersCommPosBrowse: TAlpineBlockBrowse;
    PersRaceBrowse: TAlpineBlockBrowse;
    PersMaskSizeBrowse: TAlpineBlockBrowse;
    PersImageTypeTab: TAdvTabSheet;
    PersImageTypeBrowse: TAlpineBlockBrowse;
    EmsQualBrowse: TAlpineBlockBrowse;
    PersStatBrowse: TAlpineBlockBrowse;
    PersPointTypeBrowse: TAlpineBlockBrowse;
    PersMaritalBrowse: TAlpineBlockBrowse;
    PersBenBrowse: TAlpineBlockBrowse;
    PersPayScaleBrowse: TAlpineBlockBrowse;
    AlpinePanel12: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    QueryHandCheckField: TAlpineCheckBox;
    UNIQUEBADGENUMField: TAlpineCheckBox;
    ManualEntryOnlyCheck: TAlpineCheckBox;
    Label1: TLabel;
    PersAttSortIDField: TAlpineLookup;
    AlpinePanel3: TAlpinePanel;
    Label2: TLabel;
    Label3: TLabel;
    MyDBEdit40: TAlpineEdit;
    AlpineEdit9: TAlpineEdit;
    Panel2: TPanel;
    AlpinePanel2: TAlpinePanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    AlpineEdit1: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    TargetPanel: TAlpinePanel;
    Label4: TLabel;
    Label9: TLabel;
    TargetKeyField: TAlpineEdit;
    TargetSeqcretField: TAlpineEdit;
    BottomPanel: TAlpinePanel;
    AlpineCheckBox2: TAlpineCheckBox;
    PersTypeButton: TAlpineGlowButton;
    PersStatButton: TAlpineGlowButton;
    TopSplitter: TSplitter;
    PersElectionTab: TAdvTabSheet;
    PersVoteEventBrowse: TAlpineBlockBrowse;
    NYSTab: TAdvTabSheet;
    NYSCensusPanel: TAlpinePanel;
    Label14: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    AlpineLookup1: TAlpineLookup;
    AlpineLookup2: TAlpineLookup;
    AlpineLookup3: TAlpineLookup;
    AlpineEdit3: TAlpineEdit;
    PersCovidHistoryBrowse: TAlpineBlockBrowse;
    PersAwardTypeBrowse: TAlpineBlockBrowse;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DateTimeYOSUpdateField: TAlpineDateTime;
    DateTimeYOSUpdateLabel: TLabel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    Label15: TLabel;
    NILosapCATIDField: TAlpineLookup;
    Label16: TLabel;
    NIKioskField: TAlpineCheckBox;
    PersHistTypeBrowse: TAlpineBlockBrowse;
    PersHistTypeSplitter: TSplitter;
    procedure FormCreate(Sender: TObject);
    procedure PersTypeTabShow(Sender: TObject);
    procedure PersRankTabShow(Sender: TObject);
    procedure PersMedTabShow(Sender: TObject);
    procedure PersContTypeTabShow(Sender: TObject);
    procedure PersDriverTabShow(Sender: TObject);
    procedure PersReligionTabShow(Sender: TObject);
    procedure PersControlChange(Sender: TObject);
    procedure PersPointRepTabShow(Sender: TObject);
    procedure PersCommTabShow(Sender: TObject);
    procedure PersPointTypeTabShow(Sender: TObject);
    procedure PersImageTypeTabShow(Sender: TObject);
    procedure PersPayScaleTabShow(Sender: TObject);
    procedure PersTypeButtonClick(Sender: TObject);
    procedure PersStatButtonClick(Sender: TObject);
    procedure PersElectionTabShow(Sender: TObject);
    procedure NYSTabShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure PersPointTypeNewRecord(DataSet: TDataSet);
    procedure PersTypeNewRecord(DataSet: TDataSet);
    procedure PersStatNewRecord(DataSet: TDataSet);
    procedure PersRankNewRecord(DataSet: TDataSet);
    procedure EmsQualNewRecord(DataSet: TDataSet);
    procedure PersMedNewRecord(DataSet: TDataSet);
    procedure PersContTypeNewRecord(DataSet: TDataSet);
    procedure PersBenTypeNewRecord(DataSet: TDataSet);
    procedure PersDriverNewRecord(DataSet: TDataSet);
    procedure PersDLClassNewRecord(DataSet: TDataSet);
    procedure PersVoteEventNewRecord(DataSet: TDataSet);
    procedure PersCovidHistNewRecord(DataSet: TDataSet);
    procedure DoAfterPost(Sender: TObject); override;
  end;

var
  PersSetForm : TPersSetForm;

implementation
uses GenFunc,
     SecSet,
     SortGridView,
     PersPointType,
     PersType,
     PersStat,
     PersRank,
     PersMed,
     PersContType,                                                                            
     PersBenType,
     PersDriver,
     PersDLClass,
     PersBloodType,
     PersReligion,
     PersRace,
     PersMarital,
     PersPoint,
     PersCommType,
     PersCommPos,
     PersMaskSize,
     PersImageType,
     PersPayScale,
     PersVoteEvent,
     PersCovidHist,
     PersAwardType,
     EmsQual,
     PersHistType,                                                                            
     CommonVar,
     CommonPers;

{$R *.DFM}

class procedure TPersSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TPersSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  NYSTab.TabVisible              := SubStr(ASCVAR,1,2)='NY';
  PersControl.ActivePage         := GenTab;
  QueryHandCheckField.Visible    := AlpineLogin;
  PersImageTypeTab.TabVisible    := CheckModule('IMAGE');
  ManualEntryOnlyCheck.Visible   := CheckModule('FINGER');
  TargetPanel.Visible            := AlpineLogin;
  DateTimeYOSUpdateField.Visible := AlpineLogin;
  DateTimeYOSUpdateLabel.Visible := AlpineLogin;
  PersElectionTab.TabVisible     := False;
  NIKioskField.Visible           := AlpineLogin;
  PersHistTypeSplitter.Visible   := (mFireID = '21012');
  PersHistTypeBrowse.Visible     := (mFireID = '21012');
  try
    Open_Query('FINGERSET',true,'SELECT * FROM FINGERSET WHERE FDID = ' + AddExpr(mFireID));
    If tdbfield('FINGERSET','ENABLEPERSVOTE') = 'Y' then
      PersElectionTab.TabVisible      := CheckSecVar('FINGERELECT');
  finally
    CloseApollo('FINGERSET');
  end;
end;

procedure TPersSetForm.PersPointTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersVoteEventNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersCovidHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('YEAR').AsString := FormatDateTime('YYYY',Now);
end;

procedure TPersSetForm.PersElectionTabShow(Sender: TObject);
begin
  inherited;
  PersVoteEventBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSVOTEEVENT.FDID');
  PersVoteEventBrowse.Setup('PERSVOTEEVENT',TPersVoteEventForm,PersVoteEventNewRecord);
end;

procedure TPersSetForm.NYSTabShow(Sender: TObject);
begin
  inherited;
  PersCovidHistoryBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSCOVIDHIST.FDID');
  PersCovidHistoryBrowse.Setup('PERSCOVIDHIST',TPersCovidHistForm,PersCovidHistNewRecord);
end;

procedure TPersSetForm.PersTypeButtonClick(Sender: TObject);
Var PersCount : Integer;
begin
  inherited;
  Open_Query('PERSTYPE',true,'SELECT * FROM PERSTYPE');
  While Not A('PERSTYPE').Eof do begin
    PersCount := SQLTableRecCount('SELECT COUNT(*) FROM PERS WHERE PERSTYPEID = ' + GetField('PERSTYPE','PERSTYPEID').AsString);
    GetTable('PERSTYPE').Edit;
    GetField('PERSTYPE','PERSCOUNT').AsInteger := PersCount;
    GetTable('PERSTYPE').Post;
    A('PERSTYPE').Skip(1);
  end;
  CloseApollo('PERSTYPE');
  PersTypeBrowse.Setup('PERSTYPE',TPersTypeForm,PersTypeNewRecord);
  ShowMessage('Done');
end;

procedure TPersSetForm.PersTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersStatButtonClick(Sender: TObject);
Var PersCount : Integer;
begin
  inherited;
  Open_Query('PERSSTAT',true,'SELECT * FROM PERSSTAT');
  While Not A('PERSSTAT').Eof do begin
    PersCount := SQLTableRecCount('SELECT COUNT(*) FROM PERS WHERE PERSSTATID = ' + GetField('PERSSTAT','PERSSTATID').AsString);
    GetTable('PERSSTAT').Edit;
    GetField('PERSSTAT','PERSCOUNT').AsInteger := PersCount;
    GetTable('PERSSTAT').Post;
    A('PERSSTAT').Skip(1);
  end;
  CloseApollo('PERSSTAT');
  PersStatBrowse.Setup('PERSSTAT',TPersStatForm,PersStatNewRecord);
  ShowMessage('Done');
end;

procedure TPersSetForm.PersStatNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersTypeTabShow(Sender: TObject);
Var ViewCode : String;
begin
  inherited;
  PersTypeButton.Parent := PersTypeBrowse.FButtonPanel;
  PersTypeButton.Align  := alleft;
  PersStatButton.Parent := PersStatBrowse.FButtonPanel;
  PersStatButton.Align  := alleft;

  ViewCode := SQLLookUp('PERSSTAT','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  ViewCode := IIf(ViewCode = '','PERSSTAT',ViewCode);
  
  PersTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSTYPE.FDID');
  PersTypeBrowse.Setup('PERSTYPE',TPersTypeForm,PersTypeNewRecord);
  PersStatBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSSTAT.FDID');
  PersStatBrowse.Setup(ViewCode,TPersStatForm,PersStatNewRecord);
end;

procedure TPersSetForm.PersRankTabShow(Sender: TObject);
begin
  inherited;
  PersRankBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSRANK.FDID');
  PersRankBrowse.Setup('PERSRANK',TPersRankForm,PersRankNewRecord);
  EMSQualBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('EMSQUAL.FDID');
  EMSQualBrowse.Setup('EMSQUAL',TEmsQualForm,EmsQualNewRecord);
end;

procedure TPersSetForm.EmsQualNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersRankNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersMedTabShow(Sender: TObject);
begin
  inherited;
  PersMedBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSMED.FDID');
  PersMedBrowse.Setup('PERSMED',TPersMedForm,PersMedNewRecord);
  PersBloodTypeBrowse.Setup('PERSBLOODTYPE',TPersBloodTypeForm,TPersBloodTypeForm.NewRecord);
  PersMaskSizeBrowse.Setup('PERSMASKSIZE',TPersMaskSizeForm,TPersMaskSizeForm.NewRecord);
end;

procedure TPersSetForm.PersPayScaleTabShow(Sender: TObject);
begin
  inherited;
  PersPayScaleBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSPAYSCALE.FDID');
  PersPayScaleBrowse.Setup('PERSPAYSCALE',TPersPayScaleForm,PersMedNewRecord);
end;

procedure TPersSetForm.PersMedNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' '
end;

procedure TPersSetForm.PersContTypeTabShow(Sender: TObject);
begin
  inherited;
  PersContTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSCONTTYPE.FDID');
  PersContTypeBrowse.Setup('PERSCONTTYPE',TPersContTypeForm,PersContTypeNewRecord);
  PersBenBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSBENTYPE.FDID');
  PersBenBrowse.Setup('PERSBENTYPE',TPersBenTypeForm,PersBenTypeNewRecord);
end;

procedure TPersSetForm.PersContTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersBenTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TPersSetForm.PersDriverTabShow(Sender: TObject);
begin
  inherited;
  PersDriverBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSDRIVER.FDID');
  PersDriverBrowse.Setup('PERSDRIVER',TPersDriverForm,PersDriverNewRecord);
  PersDLClassBrowse.Setup('PERSDLCLASS',TPersDLClassForm,PersDlClassNewRecord);
end;

procedure TPersSetForm.PersDriverNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('CODE').AsString := ' ';
end;

procedure TPersSetForm.PersDLClassNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('CODE').AsString := ' ';
end;

procedure TPersSetForm.PersReligionTabShow(Sender: TObject);
begin
  inherited;
  PersRaceBrowse.Setup('PERSRACE',TPersRaceForm,TPersRaceForm.NewRecord);
  PersReligionBrowse.Setup('PERSRELIGION',TPersReligionForm,TPersReligionForm.NewRecord);
  PersMaritalBrowse.Setup('PERSMARITAL',TPersMaritalForm,TPersMaritalForm.NewRecord);
end;

procedure TPersSetForm.PersControlChange(Sender: TObject);
begin
  inherited;
  SaveButton.Visible := PersControl.ActivePage = GenTab;
  If PersControl.ActivePage = GenTab then
    CloseButton.position := bpRight
  else
    CloseButton.position := bpStandalone;
end;

procedure TPersSetForm.DoAfterPost(Sender: TObject);
begin
  PersSetVar;
end;

procedure TPersSetForm.PersPointRepTabShow(Sender: TObject);
begin
  inherited;
  PersPointRepBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSPOINTREP.FDID');
  PersPointRepBrowse.Setup('PERSPOINTREP',TPersPointForm,TPersPointForm.NewRecord);
end;

procedure TPersSetForm.PersCommTabShow(Sender: TObject);
begin
  inherited;
  PersCommTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSCOMMTYPE.FDID');
  PersCommTypeBrowse.Setup('PERSCOMMTYPE',TPersCommTypeForm,TPersCommTypeForm.NewRecord);

  PersCommPosBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSCOMMPOS.FDID');
  PersCommPosBrowse.Setup('PERSCOMMPOS',TPersCommPosForm,TPersCommPosForm.NewRecord);
  
  PersAwardTypeBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('PERSAWARDTYPE.FDID');
  PersAwardTypeBrowse.Setup('PERSAWARDTYPE',TPersAwardTypeForm,TPersCommPosForm.NewRecord);
end;

procedure TPersSetForm.PersPointTypeTabShow(Sender: TObject);
begin
  inherited;
  PersPointTypeBrowse.Setup('PERSPOINTTYPE',TPersPointTypeForm,PersPointTypeNewRecord);
  PersHistTypeBrowse.Setup('PERSHISTTYPE',  TPersHistTypeForm, PersPointTypeNewRecord);
end;

procedure TPersSetForm.PersImageTypeTabShow(Sender: TObject);
begin
  inherited;
  PersImageTypeBrowse.Setup('PERSIMAGETYPE',TPersImageTypeForm,PersDLClassNewRecord);
end; 

end. 
