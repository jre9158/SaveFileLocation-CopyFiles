unit ConvFH;

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
  GISFunc,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  AlpineLookGridNemsis,
  Blink,
  Buttons,
  ImgList,
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  ADODB,
  Gauges,
  AlpineDateTime,
  EnJpgGr,
  jpeg,
  AlpinePanel,
  AlpineMemo,
  AlpineLookGrid,
  AdvGroupBox,
  htmlbtns,
  alpinecheck;

type
  TConvFHForm = class(TNormalBaseForm)
    OvcController1: TOvcController;
    Panel2: TPanel;
    Gauge: TGauge;
    Panel4: TPanel;
    AlpinePanel4: TAlpinePanel;
    PropTypeButton: TAlpineGlowButton;
    PropButton: TAlpineGlowButton;
    LKP_OCCButton: TAlpineGlowButton;
    PropLKP_STNButton: TAlpineGlowButton;
    PropLKP_SYSButton: TAlpineGlowButton;
    ImageButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    HydButton: TAlpineGlowButton;
    LKP_HYDRButton: TAlpineGlowButton;
    AlpinePanel5: TAlpinePanel;
    LKPSysButton: TAlpineGlowButton;
    RolodexTypeButton: TAlpineGlowButton;
    LKP_UnitButton: TAlpineGlowButton;
    RolodexButton: TAlpineGlowButton;
    StreetButton: TAlpineGlowButton;
    CityButton: TAlpineGlowButton;
    FdidButton: TAlpineGlowButton;
    AlpinePanel7: TAlpinePanel;
    LKP_INSPButton: TAlpineGlowButton;
    InspButton: TAlpineGlowButton;
    AlpinePanel8: TAlpinePanel;
    LKP_INVButton: TAlpineGlowButton;
    Panel1: TPanel;
    AlpinePanel3: TAlpinePanel;
    TrainingButton: TAlpineGlowButton;
    TrainCodeButton: TAlpineGlowButton;
    NITrainCatTypeButton: TAlpineGlowButton;
    AlpinePanel9: TAlpinePanel;
    NIPTypeButton: TAlpineGlowButton;
    NISTypeButton: TAlpineGlowButton;
    NIButton: TAlpineGlowButton;
    NILosapCATButton: TAlpineGlowButton;
    Panel5: TPanel;
    AlpinePanel11: TAlpinePanel;
    AlpinePanel12: TAlpinePanel;
    ErrorBox: TListBox;
    ListBox: TListBox;
    AlpinePanel14: TAlpinePanel;
    AlpinePanel13: TAlpinePanel;
    Label1: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ServerField: TAlpineEdit;
    DatabaseField: TAlpineEdit;
    UserNameField: TAlpineEdit;
    PasswordField: TAlpineEdit;
    TableTypeField: TAlpineEdit;
    Label7: TLabel;
    Label3: TLabel;
    InitialDateField: TAlpineDateTime;
    FinalDateField: TAlpineDateTime;
    AlpinePanel10: TAlpinePanel;
    FHNarrField: TMemo;
    Panel6: TPanel;
    AlpinePanel2: TAlpinePanel;
    NfirsMainButton: TAlpineGlowButton;
    IncLKP_STFButton: TAlpineGlowButton;
    AlpinePanel15: TAlpinePanel;
    EMSButton: TAlpineGlowButton;
    EMSSetupButton: TAlpineGlowButton;
    Label6: TLabel;
    ConvRecordField: TAlpineEdit;
    NarrField: TAlpineMemo;
    Splitter2: TSplitter;
    EMSManSetupButton: TAlpineGlowButton;
    InspManButton: TAlpineGlowButton;
    ConvFdidField: TAlpineLookup;
    ConvFdidLabel: TLabel;
    AlpineGlowButton1: TAlpineGlowButton;
    LoadOccFieldButton: TAlpineGlowButton;
    NIFdidField: TAlpineCheckBox;
    Label10: TLabel;
    NIFieldListButton: TAlpineGlowButton;
    InspImageButton: TAlpineGlowButton;
    SchRoleButton: TAlpineGlowButton;
    Panel7: TPanel;
    AlpinePanel6: TAlpinePanel;
    PersButton: TAlpineGlowButton;
    SchdLocButton: TAlpineGlowButton;
    SchdRankButton: TAlpineGlowButton;
    CodeButton: TAlpineGlowButton;
    PersAvailButton: TAlpineGlowButton;
    AlpinePanel16: TAlpinePanel;
    SchdTypeButton: TAlpineGlowButton;
    SchdShiftNameField: TAlpineGlowButton;
    Panel3: TPanel;
    InvButton: TAlpineGlowButton;
    AppCheck: TAlpineCheckBox;
    SCBACheck: TAlpineCheckBox;
    HoseCheck: TAlpineCheckBox;
    GenCheck: TAlpineCheckBox;
    Label11: TLabel;
    VioCodeButton: TAlpineGlowButton;
    Image1: TImage;
    PermitTypeButton: TAlpineGlowButton;
    PropPhoneTypeButton: TAlpineGlowButton;
    PropContactTypeButton: TAlpineGlowButton;
    InspBoxButton: TAlpineGlowButton;
    PropParentButton: TAlpineGlowButton;
    LocationButton: TAlpineGlowButton;
    Label12: TLabel;
    AppTypeCheck: TAlpineCheckBox;
    SCBATypeCheck: TAlpineCheckBox;
    HoseTypeCheck: TAlpineCheckBox;
    GenTypeCheck: TAlpineCheckBox;
    PersHistButton: TAlpineGlowButton;
    PermitButton: TAlpineGlowButton;
    SchdPayRateButton: TAlpineGlowButton;
    PersCompButton: TAlpineGlowButton;
    CallSplitter: TSplitter;
    CleanNfirsAppButton: TAlpineGlowButton;
    VioCodeFHButton: TAlpineGlowButton;
    VIOCodeSetFHButton: TAlpineGlowButton;
    VioCodeQuickSetButton: TAlpineGlowButton;
    EMSNfirsMainButton: TAlpineGlowButton;
    InvToInvLocButton: TAlpineGlowButton;
    InvLocButton: TAlpineGlowButton;
    InspMAButton: TAlpineGlowButton;
    procedure NfirsMainButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure InvButtonClick(Sender: TObject);
    procedure LKPSysButtonClick(Sender: TObject);
    procedure CodeButtonClick(Sender: TObject);
    procedure TrainingButtonClick(Sender: TObject);
    procedure RolodexTypeButtonClick(Sender: TObject);
    procedure LKP_UnitButtonClick(Sender: TObject);
    procedure NIPTypeButtonClick(Sender: TObject);
    procedure StreetButtonClick(Sender: TObject);
    procedure CityButtonClick(Sender: TObject);
    procedure RolodexButtonClick(Sender: TObject);
    procedure TrainCodeButtonClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure PropTypeButtonClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure LKP_OCCButtonClick(Sender: TObject);
    procedure PropLKP_STNButtonClick(Sender: TObject);
    procedure PropLKP_SYSButtonClick(Sender: TObject);
    procedure LKP_HYDRButtonClick(Sender: TObject);
    procedure ImageTestButtonClick(Sender: TObject);
    procedure LKP_INSPButtonClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure ImageButtonClick(Sender: TObject);
    procedure SchdLocButtonClick(Sender: TObject);
    procedure SchdRankButtonClick(Sender: TObject);
    procedure SchdTypeButtonClick(Sender: TObject);
    procedure NISTypeButtonClick(Sender: TObject);
    procedure NIButtonClick(Sender: TObject);
    procedure NITrainCatTypeButtonClick(Sender: TObject);
    procedure NILosapCATButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LKP_INVButtonClick(Sender: TObject);
    procedure FdidButtonClick(Sender: TObject);
    procedure IncSetupButtonClick(Sender: TObject);
    procedure EMSButtonClick(Sender: TObject);
    procedure EMSSetupButtonClick(Sender: TObject);
    procedure EMSManSetupButtonClick(Sender: TObject);
    procedure InspManButtonClick(Sender: TObject);
    procedure ConvFdidFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure ConvFdidFieldEnter(Sender: TObject);
    procedure IncLKP_STFButtonClick(Sender: TObject);
    procedure LoadOccFieldButtonClick(Sender: TObject);
    procedure NIFieldListButtonClick(Sender: TObject);
    procedure InspImageButtonClick(Sender: TObject);
    procedure SchRoleButtonClick(Sender: TObject);
    procedure SchdShiftNameFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VioCodeButtonClick(Sender: TObject);
    procedure PermitTypeButtonClick(Sender: TObject);
    procedure PropContactTypeButtonClick(Sender: TObject);
    procedure PropPhoneTypeButtonClick(Sender: TObject);
    procedure InspBoxButtonClick(Sender: TObject);
    procedure PropParentButtonClick(Sender: TObject);
    procedure LocationButtonClick(Sender: TObject);
    procedure PersHistButtonClick(Sender: TObject);
    procedure PermitButtonClick(Sender: TObject);
    procedure SchdPayRateButtonClick(Sender: TObject);
    procedure PersCompButtonClick(Sender: TObject);
    procedure PersAvailButtonClick(Sender: TObject);
    procedure CleanNfirsAppButtonClick(Sender: TObject);
    procedure VioCodeFHButtonClick(Sender: TObject);
    procedure VIOCodeSetFHButtonClick(Sender: TObject);
    procedure VioCodeQuickSetButtonClick(Sender: TObject);
    procedure EMSNfirsMainButtonClick(Sender: TObject);
    procedure InvToInvLocButtonClick(Sender: TObject);
    procedure InvLocButtonClick(Sender: TObject);
    procedure InspMAButtonClick(Sender: TObject);
  private
    { Private declarations }
    FHDatabase      : TAlpineAdoConnection;
    RedNMXDatabase  : TAlpineAdoConnection;
    OCCUP_ID        : String;
    PropTypeID      : String;
    Inc_MainQuery   : TApolloData;
    Inc_InvlQuery   : TApolloData;
    Inc_AuthQuery   : TApolloData;
    Inc_UnitQuery   : TApolloData;
    Inc_UActQuery   : TApolloData;
    Inv_UseQuery    : TApolloData;
    Act_DetQuery    : TApolloData;
    Act_MainQuery   : TApolloData;
    Inc_StruQuery   : TApolloData;
    Inc_FireQuery   : TApolloData;
    Inc_ActQuery    : TApolloData;
    Inc_fhfQuery    : TApolloData;
    Inc_FmatQuery   : TApolloData;
    Inc_FIgnQuery   : TApolloData;
    Inc_fsupQuery   : TApolloData;
    Inc_MaidQuery   : TApolloData;
    Inc_CCasQuery   : TApolloData;
    Inc_CCHFQuery   : TApolloData;
    Inc_CCFQuery    : TApolloData;
    Inc_FCasQuery   : TApolloData;
    Inc_WildQuery   : TApolloData;
    Inc_WthrQuery   : TApolloData;
    Inc_WCrpQuery   : TApolloData;
    Inc_WHFQuery    : TApolloData;
    Inc_WSUPQuery   : TApolloData;
    Inc_HAZQuery    : TApolloData;
    Inc_ARSQuery    : TApolloData;

    Inci_Id         : String;
    Inci_NO         : String;
    Exp_No          : String;
    IncNum          : String;
    NfirsMainID     : String;
    Activ_Id        : String;

    Insp_Id         : String;
    Address         : String;
    StrNum          : String;
    Street          : String;
    VioCodeSetID    : String;

    function  GetFileExt(FileName: String): String;

    procedure ConnectFH;
    procedure ConnectRedNMX;

    function  CheckDate(DateVar: TDateTime): Boolean;
    function  GetDATETIMEOUT(id: String): String;
    procedure LoadRedNMXCode(FieldName,Code,Descr: String);

    function  GetUnitNum(OldUnitNum: String): String;

    procedure LoadPersImage;
    procedure LoadPersPhone;
    procedure LoadPersHist;

    function  GetInvServForm(Code: String): String;
    procedure LoadInvServHist(Inv_ID: String);
    function  GetInvSubType(TypeVar: String): String;
    procedure LoadInv_HosM;

    procedure LoadNfirsMain;
    procedure LoadDispCall;
    procedure LoadDispHist;
    procedure LoadDispHistTime(DispStatCodeID: String; DateTimeStat: TDateTime);
    
    procedure LoadNfirsFire;
    procedure LoadNfirsStr;
    procedure LoadNfirsWildLand;
    procedure LoadNfirsHazMat;
    procedure LoadNfirsArson;
    procedure LoadNfirsInv;
    procedure LoadNfirsEquUse;
    procedure LoadNfirsImage;

    procedure LoadNfirsApp;
    procedure LoadNfirsAtt;
    procedure LoadActNfirsAtt;
    procedure LoadNfirsAttSchdHist;

    procedure LoadNfirsMaid;
    procedure LoadNfirsCivilian;

    procedure LoadProp;
    procedure LoadPropImage;
    procedure LoadPropHyd;
    procedure LoadPropRep;
    procedure LoadPropContact;
    procedure LoadPropTank;
    procedure LoadPropHazMat;
    procedure LoadNfirsFireCasualty;
    procedure LoadPropPhone(ID, PropID, PropContactID: String);
    function  GetFieldName(GroupName, FieldName : String): String;
    Procedure LoadNemsis;
    procedure LoadNemsisE04;
    procedure LoadNemsisE14;
    procedure LoadNemsisE18;
    procedure LoadNemsisE18Sub;
    procedure LoadNemsisE19;
    procedure LoadNemsisE19Sub;
    procedure LoadNemsisE09_14;
    procedure LoadNemsisSub(Alias, CodeFieldName, NemsisFieldName: String);
    procedure LoadNemsisStat;
    procedure LoadNemsisCode(FieldName, Code, Descr: String);
    procedure LoadNemsisCodeFromRedNMX(FieldName: String);
    function  GetNemsisCode(Code : String): String;
    procedure LoadInsp;
    procedure LoadInspMA;
    procedure LoadInspStatTable(Code, Descr, OpenInsp: String);
    procedure LoadVioStatTable(Code, Descr, OpenVio : String);
    procedure LoadVio;
    procedure LoadInspImage;
    procedure LoadInspChecklist;
    function  GetConvFdid(FdidVar: String): String;
    function  CheckMaintType: Boolean;
    function  CheckStreetAlias(Street: String):String;
    function  ConvInvType(TypeVar: String): Boolean;
  public
    { Public declarations }
  end;

var
  ConvFHForm: TConvFHForm;

implementation
uses GenFunc,
     CommonFunc,
     AlpineBaseSummaryReport,
     ToolBar,
     PropSet,
     StrUtils,
     PropRep,
     FormFunc,
     NISet,
     CommonConv,
     SecSet,
     CommonVar;

{$R *.DFM}
{$I rednmx.inc}

procedure TConvFHForm.CityButtonClick(Sender: TObject);
Var City : String;
    Zip  : String;
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting CITY . . . . .Started');

  Open_Query(FHDatabase,'LKP_ZIP',false,'SELECT * FROM LKP_ZIP');
  Open_Query('CITY',true,'SELECT * FROM CITY WHERE 1=2');

  Gauge.MaxValue := A('LKP_ZIP').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_ZIP').Eof do begin
    Zip  := tdbfield('LKP_ZIP','ZIP');
    If Not (Zip = '') then begin
      City := UpperCase(tdbfield('LKP_ZIP','CITY'));
      A('CITY').UpdateSQL('SELECT * FROM CITY WHERE CITY = ' + AddExpr(City) + ' AND ZIP = ' + AddExpr(Zip));
      If A('CITY').RecordsExist then
        A('CITY').Edit
      else
        A('CITY').Append;
      Getfield('CITY','CITY').AsString  := City;
      Getfield('CITY','STATE').AsString := tdbfield('LKP_ZIP','STATE');
      Getfield('CITY','ZIP').AsString   := Zip;
      A('CITY').Post;
    end;

    A('LKP_ZIP').Skip(1);

    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('CITY');
  CloseApollo('LKP_ZIP');
  FHDatabase.Free;

  AddStatusListBox(ListBox,'Converting CITY . . . . .Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.CleanNfirsAppButtonClick(Sender: TObject);
Var EvLength : Real;
begin
  inherited;
  If BooleanMessageDlg('Update NFIRSAPP, NFIRSATT with NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMEIN, and NFIRSMAIN.EVLENGTH.') then begin
    Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID, INCNUM, DATETIMEALARM, DATETIMEARR, DATETIMEIN, EVLENGTH FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDateField.Value,FinalDateField.Value));
    Open_Query('NFIRSAPP',true,'SELECT * FROM NFIRSAPP WHERE 1=2');
    Open_Query('NFIRSATT',true,'SELECT * FROM NFIRSATT WHERE 1=2');

    Gauge.MaxValue := A('NFIRSMAIN').QueryRecCount;
    Gauge.progress := 0;

    While Not A('NFIRSMAIN').Eof do begin
      AddStatusListBox(ListBox,'Processing ' + tdbfield('NFIRSMAIN','INCNUM'));
      Gauge.progress  := Gauge.progress + 1;
      Application.ProcessMessages;
      EvLength        := 0;

      EvLength := 24 * (Getfield('NFIRSMAIN','DATETIMEIN').AsDateTime - Getfield('NFIRSMAIN','DATETIMEALARM').AsDateTime);
      If (Getfield('NFIRSMAIN','DATETIMEALARM').AsDateTime > 0) and (Getfield('NFIRSMAIN','DATETIMEIN').AsDateTime > 0) and (Getfield('NFIRSMAIN','EVLENGTH').AsFloat = 0) then begin
        RunSQL('UPDATE NFIRSMAIN SET EVLENGTH = ' + FormatFloat('##0.00',EvLength) + ' WHERE NFIRSMAIN.NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
      end;

      A('NFIRSAPP').UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
      While Not A('NFIRSAPP').eof do begin
        EvLength := 0;
        A('NFIRSAPP').Edit;
        If Getfield('NFIRSAPP','DATETIMEALARM').AsDateTime = 0 then
          Getfield('NFIRSAPP','DATETIMEALARM').AsDateTime := Getfield('NFIRSMAIN','DATETIMEALARM').AsDateTime;
        If Getfield('NFIRSAPP','DATETIMEARR').AsDateTime = 0 then
          Getfield('NFIRSAPP','DATETIMEARR').AsDateTime := Getfield('NFIRSMAIN','DATETIMEARR').AsDateTime;
        If Getfield('NFIRSAPP','DATETIMEIN').AsDateTime = 0 then
          Getfield('NFIRSAPP','DATETIMEIN').AsDateTime := Getfield('NFIRSMAIN','DATETIMEIN').AsDateTime;

        If (Getfield('NFIRSAPP','DATETIMEALARM').AsDateTime > 0) and (Getfield('NFIRSAPP','DATETIMEIN').AsDateTime > 0) and (Getfield('NFIRSAPP','EVLENGTH').AsFloat = 0) then 
          EvLength := 24 * (Getfield('NFIRSAPP','DATETIMEIN').AsDateTime - Getfield('NFIRSAPP','DATETIMEALARM').AsDateTime);

        If (Getfield('NFIRSAPP','EVLENGTH').AsFloat = 0) and (EvLength > 0) then
          Getfield('NFIRSAPP','EVLENGTH').AsFloat:= EvLength;
          
        A('NFIRSAPP').Post;
        A('NFIRSAPP').Skip(1);
      end;

      A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
      While Not A('NFIRSATT').eof do begin
        A('NFIRSATT').Edit;
        If (Getfield('NFIRSATT','EVLENGTH').AsFloat = 0) and (EvLength > 0) then
          Getfield('NFIRSATT','EVLENGTH').AsFloat:= EvLength;
        A('NFIRSATT').Post;
        A('NFIRSATT').Skip(1);
      end;

      A('NFIRSMAIN').Skip(1);
    end;
    CloseApollo('NFIRSMAIN');
    CloseApollo('NFIRSAPP');
    CloseApollo('NFIRSATT');
    ShowMessage('Done');
  end;

end;

procedure TConvFHForm.CodeButtonClick(Sender: TObject);
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting LKP_STF . . . . . Started');
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');

  Open_Query('PERSSTAT',true,       'SELECT * FROM PERSSTAT      WHERE 1=2');
  Open_Query('PERSTYPE',true,       'SELECT * FROM PERSTYPE      WHERE 1=2');
  Open_Query('PERSRANK',true,       'SELECT * FROM PERSRANK      WHERE 1=2');
  Open_Query('PERSMED',true,        'SELECT * FROM PERSMED       WHERE 1=2');
  Open_Query('PERSDLCLASS',true,    'SELECT * FROM PERSDLCLASS   WHERE 1=2');
  Open_Query('NIUSER1',true,        'SELECT * FROM NIUSER1       WHERE 1=2');
  Open_Query('PERSCONTTYPE',true,   'SELECT * FROM PERSCONTTYPE  WHERE 1=2');
  Open_Query('PERSPHONETYPE',true,  'SELECT * FROM PERSPHONETYPE WHERE 1=2');
  Open_Query('PERSAVAILTYPE',true,  'SELECT * FROM PERSAVAILTYPE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    If (tdbfield('CODE','CATEGORY') = 'STF STAT') then begin
      A('PERSSTAT').UpdateSQL('SELECT * FROM PERSSTAT WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSSTAT').RecordsExist then
        A('PERSSTAT').Edit
      else
        A('PERSSTAT').Append;
      Getfield('PERSSTAT','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSSTAT','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSSTAT').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'STF CAREER') then begin
      A('PERSTYPE').UpdateSQL('SELECT * FROM PERSTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSTYPE').RecordsExist then
        A('PERSTYPE').Edit
      else
        A('PERSTYPE').Append;
      Getfield('PERSTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSTYPE').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'STF RANK') then begin
      A('PERSRANK').UpdateSQL('SELECT * FROM PERSRANK WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSRANK').RecordsExist then
        A('PERSRANK').Edit
      else
        A('PERSRANK').Append;
      Getfield('PERSRANK','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSRANK','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSRANK').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'STF DLIC') then begin
      A('PERSDLCLASS').UpdateSQL('SELECT * FROM PERSDLCLASS WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSDLCLASS').RecordsExist then
        A('PERSDLCLASS').Edit
      else
        A('PERSDLCLASS').Append;
      Getfield('PERSDLCLASS','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSDLCLASS','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSDLCLASS').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'TRNG METH') then begin
      A('NIUSER1').UpdateSQL('SELECT * FROM NIUSER1 WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('NIUSER1').RecordsExist then
        A('NIUSER1').Edit
      else
        A('NIUSER1').Append;
      Getfield('NIUSER1','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('NIUSER1','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('NIUSER1').Post;

    end else if ((tdbfield('CODE','CATEGORY') = 'STF HIST') and (tdbfield('CODE','GRP') = 'MEDICAL')) then begin
      A('PERSMED').UpdateSQL('SELECT * FROM PERSMED WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSMED').RecordsExist then
        A('PERSMED').Edit
      else
        A('PERSMED').Append;
      Getfield('PERSMED','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSMED','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSMED').Post;
    end else if ((tdbfield('CODE','CATEGORY') = 'STF HIST') and (tdbfield('CODE','GRP') = 'RANK')) then begin
      A('PERSRANK').UpdateSQL('SELECT * FROM PERSRANK WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSRANK').RecordsExist then
        A('PERSRANK').Edit
      else
        A('PERSRANK').Append;
      Getfield('PERSRANK','FDID').AsString  := ConvFDIDField.Value;
      Getfield('PERSRANK','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSRANK','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSRANK').Post;
    end else if ((tdbfield('CODE','CATEGORY') = 'STF HIST') and (tdbfield('CODE','GRP') = 'MEMBERSHIP')) then begin
      A('PERSSTAT').UpdateSQL('SELECT * FROM PERSSTAT WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSSTAT').RecordsExist then
        A('PERSSTAT').Edit
      else
        A('PERSSTAT').Append;
      Getfield('PERSSTAT','FDID').AsString  := ConvFDIDField.Value;
      Getfield('PERSSTAT','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSSTAT','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSSTAT').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'STF AVAIL') then begin
      A('PERSAVAILTYPE').UpdateSQL('SELECT * FROM PERSAVAILTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSAVAILTYPE').RecordsExist then
        A('PERSAVAILTYPE').Edit
      else
        A('PERSAVAILTYPE').Append;
      Getfield('PERSAVAILTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSAVAILTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSAVAILTYPE').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'STF CONT') then begin
      A('PERSCONTTYPE').UpdateSQL('SELECT * FROM PERSCONTTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSCONTTYPE').RecordsExist then
        A('PERSCONTTYPE').Edit
      else
        A('PERSCONTTYPE').Append;
      Getfield('PERSCONTTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSCONTTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSCONTTYPE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('PERSSTAT');
  CloseApollo('PERSTYPE');
  CloseApollo('PERSRANK');
  CloseApollo('PERSMED');
  CloseApollo('PERSDLCLASS');
  CloseApollo('NIUSER1');
  CloseApollo('PERSCONTTYPE');
  CloseApollo('PERSPHONETYPE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_STF . . . . . Done');
  ShowMessage('Done');
end;

function GetInvType(TypeVar: String): String;
begin
  If (substr(TypeVar,1,3) = 'SCB') then
    GetInvType := 'SCBA'
  else if TypeVar = 'HOS' then
    GetInvType := 'HOSE'
  else if (TypeVar = 'APP') then
    GetInvType := 'TRUCK'
  else
    GetInvType := 'GEN';
end;

function TConvFHForm.GetInvSubType(TypeVar: String): String;
begin
  If (TypeVar = 'SCB') or (substr(TypeVar,1,3) = 'CYL') then
    GetInvSubType := 'SCBA'
  else if (TypeVar = 'HOS') or (TypeVar = 'FIRE HOSE') then
    GetInvSubType := 'HOSE'
  else if (substr(TypeVar,1,3) = 'APP') or (substr(TypeVar,1,4) = 'CMMD') or (substr(TypeVar,1,4) = 'UTIL') then
    GetInvSubType := 'TRUCK'
  else if (TypeVar = 'STATION') or (substr(TypeVar,1,3) = 'STA') then
    GetInvSubType := 'STATION'
  else
    GetInvSubType := 'GEN';
end;

procedure TConvFHForm.ImageTestButtonClick(Sender: TObject);
Var Att_FileQuery : TApolloData;
begin
  ConnectFH;
  Att_FileQuery := Open_Query(FHDatabase,false,'SELECT * FROM ATT_FILE WHERE RECORD_KEY = ' + AddExpr('FRONT1131'));
  Open_Query('PERSIMAGE',true,'SELECT * FROM PERSIMAGE WHERE 1=2');
  A('PERSIMAGE').Append;
  GetField('PERSIMAGE','PERSID').AsString    := '134';
  GetField('PERSIMAGE','DESCR').AsString     := 'Conway Test';
  GetField('PERSIMAGE','FILEEXT').AsString   := 'PDF';
  GetField('PERSIMAGE','FILENAME').AsString  := tdbfield(Att_FileQuery,'NAME');
  GetField('PERSIMAGE','IMAGEBLOB').Value    := GetField(Att_FileQuery,'CONTENTS').Value;
  A('PERSIMAGE').Post;

  CloseApollo('PERSIMAGE');
  Att_FileQuery.Free;
  FHDatabase.Free;
end;

procedure TConvFHForm.IncLKP_STFButtonClick(Sender: TObject);
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Incident LKP_STF . . . . . Started');
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');

  Open_Query('NFIRSATTTASK',true,'SELECT  * FROM NFIRSATTTASK WHERE 1=2');
  Open_Query('PERSPAYSCALE', true,'SELECT * FROM PERSPAYSCALE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    If (tdbfield('CODE','CATEGORY') = 'ACTV POS') then begin
      A('NFIRSATTTASK').UpdateSQL('SELECT * FROM NFIRSATTTASK WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('NFIRSATTTASK').RecordsExist then
        A('NFIRSATTTASK').Edit
      else
        A('NFIRSATTTASK').Append;
      Getfield('NFIRSATTTASK','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('NFIRSATTTASK','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('NFIRSATTTASK').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'PAY SCALE') then begin
      A('PERSPAYSCALE').UpdateSQL('SELECT * FROM PERSPAYSCALE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSPAYSCALE').RecordsExist then
        A('PERSPAYSCALE').Edit
      else
        A('PERSPAYSCALE').Append;
      Getfield('PERSPAYSCALE','FDID').AsString   := GetConvFdid(ConvFdidField.Value);
      Getfield('PERSPAYSCALE','CODE').AsString   := tdbfield('CODE','CODE');
      Getfield('PERSPAYSCALE','DESCR').AsString  := tdbfield('CODE','DESCRIPT');
      Getfield('PERSPAYSCALE','AMOUNT').AsString := GetField('CODE','DEF_AMT').AsString;
      Getfield('PERSPAYSCALE','ACTIVE').AsString := IIf(GetField('CODE','HIDE').AsBoolean,'N','Y');
      A('PERSPAYSCALE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('NFIRSATTTASK');
  CloseApollo('PERSPAYSCALE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_STF . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.IncSetupButtonClick(Sender: TObject);
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting LKP_INCI . . . . . Started');
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_INCI');

  Open_Query('NFIRSINVTYPE',true,'SELECT * FROM NFIRSINVTYPE WHERE 1=2');
  Open_Query('N5INCTYPE',   true,'SELECT * FROM N5INCTYPE WHERE 1=2');
  Open_Query('N5ACTION',    true,'SELECT * FROM N5ACTION WHERE 1=2');
  Open_Query('REDNMXCODE',true,'SELECT * FROM REDNMXCODE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));

    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
    If (tdbfield('CODE','CATEGORY') = 'INVL TYPE') then begin
      A('NFIRSINVTYPE').UpdateSQL('SELECT * FROM NFIRSINVTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('NFIRSINVTYPE').RecordsExist then
        A('NFIRSINVTYPE').Edit
      else
        A('NFIRSINVTYPE').Append;
      Getfield('NFIRSINVTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('NFIRSINVTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('NFIRSINVTYPE').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'INCI TYPE') then begin
      A('N5INCTYPE').UpdateSQL('SELECT * FROM N5INCTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If Not A('N5INCTYPE').RecordsExist then begin
        A('N5INCTYPE').Append;
        Getfield('N5INCTYPE','CODE').AsString     := tdbfield('CODE','CODE');
        Getfield('N5INCTYPE','DESCR').AsString    := tdbfield('CODE','DESCRIPT');
        Getfield('N5INCTYPE','LEVELSQL').AsString := IntToStr(Length(tdbfield('CODE','CODE')));
        A('N5INCTYPE').Post;
      end;
    end else if (tdbfield('CODE','CATEGORY') = 'ACT TAKEN') then begin
      A('N5ACTION').UpdateSQL('SELECT * FROM N5ACTION WHERE CODE = ' + edbfield('CODE','CODE'));
      If Not A('N5ACTION').RecordsExist then begin
        A('N5ACTION').Append;
        Getfield('N5ACTION','CODE').AsString     := tdbfield('CODE','CODE');
        Getfield('N5ACTION','DESCR').AsString    := tdbfield('CODE','DESCRIPT');
        Getfield('N5ACTION','LEVELSQL').AsString := IntToStr(Length(tdbfield('CODE','CODE')));
        A('N5ACTION').Post;
      end;
    end else if (tdbfield('CODE','CATEGORY') = 'AES TYPE') then begin
      LoadRedNMXCode('AESTYPE',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'AES PRES') then begin
      LoadRedNMXCode('AESPRES',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'DET TYPE') then begin
      LoadRedNMXCode('DETTYPE',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'DET PRES') then begin
      LoadRedNMXCode('DETPRES',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'DET POWER') then begin
      LoadRedNMXCode('DETPOWER',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'STRU TYPE') then begin
      LoadRedNMXCode('STRUTYPE',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'TYPE CNS') then begin
      LoadRedNMXCode('TYPECONS',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end else if (tdbfield('CODE','CATEGORY') = 'BLDG STAT') then begin
      LoadRedNMXCode('BLDGSTAT',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('NFIRSINVTYPE');
  CloseApollo('REDNMXCODE');
  CloseApollo('N5INCTYPE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_INCI . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.InspBoxButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Setting Up INSPBOX Tables. . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_SYS');
  Open_Query('INSPBOX',true,'SELECT * FROM INSPBOX WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','CODE') + '  ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
    if (tdbfield('CODE','CATEGORY') = 'DISTRICT') then begin
      A('INSPBOX').UpdateSQL('SELECT * FROM INSPBOX WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INSPBOX').RecordsExist then
        A('INSPBOX').Edit
      else
        A('INSPBOX').Append;
      Getfield('INSPBOX','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('INSPBOX','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('INSPBOX').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  FHDatabase.Free;

  CloseApollo('INSPBOX');
  AddStatusListBox(ListBox,'Setting Up INSPBOX Tables. . . . . Done');
end;

procedure TConvFHForm.InspButtonClick(Sender: TObject);
Var SQLVar       : String;
    VioCodeSetID : String;
begin
  ConnectFH;
  Gauge.progress := 0;
  If Not (ConvRecordField.Value = '')  then
    SQLVar         := 'SELECT * FROM INS_MAIN WHERE INSP_ID = ' + AddExpr(ConvRecordField.Value)
  else 
    SQLVar         := 'SELECT * FROM INS_MAIN WHERE ' + BuildSQLAlpineDate('INS_MAIN.COMPLETED',InitialDateField.Value,FinalDateField.Value) + ' OR ' + BuildSQLAlpineDate('INS_MAIN.RECEIVED',InitialDateField.Value,FinalDateField.Value) + ' OR ' + BuildSQLAlpineDate('INS_MAIN.SCHEDULED',InitialDateField.Value,FinalDateField.Value);

  Open_Query('VIOCODESET',false,'SELECT VIOCODESETID FROM VIOCODESET');
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query(FHDatabase,'INS_MAIN',false,SQLVar);
  Open_Query(FHDatabase,'INS_VIOL',false,'SELECT * FROM INS_VIOL WHERE 1=2');
  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE 1=2');
  Open_Query(FHDatabase,'LKP_VIOL',false,'SELECT * FROM LKP_VIOL WHERE 1=2');
  Open_Query(FHDatabase,'INS_EML', false,'SELECT * FROM INS_EML');
  Open_Query(FHDatabase,'INS_PH', false,'SELECT * FROM INS_PH');

  Open_Query('INSP',         true, 'SELECT * FROM INSP WHERE 1=2');
  Open_Query('VIO',          true, 'SELECT * FROM VIO WHERE 1=2');
  Open_Query('VIOSTAT',      false,'SELECT * FROM VIOSTAT');
  Open_Query('INSPTYPE',     false,'SELECT * FROM INSPTYPE');
  Open_Query('INSPSTAT',     false,'SELECT * FROM INSPSTAT');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('PERS',         false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');
  Open_Query('INSPIMAGE',    true, 'SELECT * FROM INSPIMAGE WHERE 1=2');
  Open_Query('PROP',false,'SELECT * FROM PROP WHERE 1=2');

  Gauge.MaxValue := A('INS_MAIN').QueryRecCount;

  While Not A('INS_MAIN').Eof do begin
    Insp_ID   := tdbfield('INS_MAIN','INSP_ID');
    Address   := alltrim(tdbfield('INS_MAIN','ADDR_1'));
    StrNum    := alltrim(substr(Address,1,at(' ',address)));
    If AnyStrToInt(StrNum) > 0 then begin
      Street := alltrim(substr(Address,at(' ',address),200));
    end else begin
      StrNum := '';
      Street := Address;
    end;

    A('INSP').UpdateSQL('SELECT * FROM INSP WHERE FHKEY = ' + AddExpr(Insp_ID));
    If A('INSP').RecordsExist then
      A('INSP').Edit
    else
      A('INSP').Append;
    LoadInsp;
    A('INSP').Post;

    LoadVio;
    LoadInspImage;

    A('INS_MAIN').Skip(1);

    AddStatusListBox(ListBox,'Converting ' + Insp_ID + '  ' + tdbfield('INSP','STRNUM') + ' ' + tdbfield('INSP','STREET'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('INS_MAIN');
  CloseApollo('INS_VIOL');
  CloseApollo('ATT_FILE');
  CloseApollo('LKP_VIOL');
  CloseApollo('INS_EML');
  CloseApollo('INS_PH');

  CloseApollo('INSP');
  CloseApollo('VIO');
  CloseApollo('VIOSTAT');
  CloseApollo('INSPTYPE');
  CloseApollo('INSPSTAT');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('PERS');
  CloseApollo('SCHDLOC');
  CloseApollo('INSPIMAGE');
  CloseApollo('PROP');

  FHDatabase.Free;
  ShowMessage('DONE');
end;


procedure TConvFHForm.LoadInsp;
begin
  GetField('INSP','FHKEY').AsString            := Insp_ID;
  If MFireID = '01920' then
    GetField('INSP','FDID').AsString             := '01920'
  else
    GetField('INSP','FDID').AsString             := GetConvFdid(ConvFdidField.Value);

  If (MFireID <> '01920') then
    GetField('INSP','DATETIMESCHD').AsDateTime   := GetField('INS_MAIN','SCHEDULED').AsDateTime
  else
    GetField('INSP','DATETIMESCHD').AsDateTime   := GetField('INS_MAIN','RECEIVED').AsDateTime;

  If (GetField('INS_MAIN','START_DTTM').AsString <> '')  and (MFireID <> '01920') then
    GetField('INSP','DATETIMESTART').AsDateTime  := GetField('INS_MAIN','START_DTTM').AsDateTime
  else if (GetField('INS_MAIN','TIME').AsString <> '') then
    GetField('INSP','DATETIMESTART').AsDateTime  := GetField('INS_MAIN','SCHEDULED').AsDateTime + GetRealTime(tdbField('INS_MAIN','TIME'))
  else
    GetField('INSP','DATETIMESTART').AsDateTime  := GetField('INS_MAIN','SCHEDULED').AsDateTime;

  If (GetField('INS_MAIN','END_DTTM').AsString <> '')  and (MFireID <> '01920') then
    GetField('INSP','DATETIMEEND').AsDateTime  := GetField('INS_MAIN','END_DTTM').AsDateTime
  else
    GetField('INSP','DATETIMEEND').AsDateTime  := GetField('INS_MAIN','COMPLETED').AsDateTime + GetRealTime(tdbField('INS_MAIN','END_TIME'));
    
  GetField('INSP','UNITNUM').AsString          := GetUnitNum(GetField('INS_MAIN','UNIT').AsString);
  GetField('INSP','NARR').AsString             := GetField('INS_MAIN','COMMENTS').AsString;
  GetField('INSP','EVLENGTH').AsString         := GetField('INS_MAIN','STAFF_HRS').AsString;
  GetField('INSP','NAME').AsString             := GetField('INS_MAIN','INSTITUTION').AsString;

  If A('INSPTYPE').ExactQueryLocate('CODE',tdbfield('INS_MAIN','TYPE')) then
    GetField('INSP','INSPTYPEID').AsString := GetField('INSPTYPE','INSPTYPEID').AsString;

  If A('INSPSTAT').ExactQueryLocate('SORTORD',alltrim(GetField('INS_MAIN','STATUS').AsString)) then
    GetField('INSP','INSPSTATID').AsString := GetField('INSPSTAT','INSPSTATID').AsString;

  If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('INS_MAIN','SHIFT')) then
    GetField('INSP','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

  If A('SCHDLOC').ExactQueryLocate('CODE',tdbfield('INS_MAIN','STATION')) then
    GetField('INSP','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

  If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('INS_MAIN','STAFF_ID')) then
    GetField('INSP','PERSID').AsString := GetField('PERS','PERSID').AsString;

  GetField('INSP','CONTACT').AsString          := alltrim(uppercase(alltrim(GetField('INS_MAIN','FIRST').AsString) + ' ' + alltrim(GetField('INS_MAIN','LAST').AsString)));

  If MFireID = '01920' then begin
    GetField('INSP','ACONTACT').AsString         := alltrim(uppercase(alltrim(GetField('INS_MAIN','LAST').AsString)));
    GetField('INSP','ACOMPANY').AsString         := alltrim(uppercase(alltrim(GetField('INS_MAIN','INSTITUTION').AsString)));
    If A('INS_PH').ExactQueryLocate('ID',tdbfield('INS_MAIN','INSP_ID')) then
      GetField('INSP','APHONE').AsString := GetField('INS_PH','PHONE').AsString;
    If A('INS_EML').ExactQueryLocate('ID',tdbfield('INS_MAIN','INSP_ID')) then
      GetField('INSP','AEMAIL').AsString := GetField('INS_EML','EMAIL').AsString;
  end;

  If tdbfield('INS_MAIN','OCCUP_ID') = '' then begin
    GetField('INSP','STRNUM').AsString           := StrNum;
    GetField('INSP','STREET').AsString           := Street;
    GetField('INSP','CITY').AsString             := tdbfield('INS_MAIN','CITY');
    GetField('INSP','STATE').AsString            := tdbfield('INS_MAIN','STATE');
    GetField('INSP','ZIP').AsString              := tdbfield('INS_MAIN','ZIP');
  end else begin
    A('PROP').UpdateSQL('SELECT PROPID, STRNUM,PLASTNAME, STREET, ROOMAPT, CITY, STATE, ZIP FROM PROP WHERE OCCUP_ID = ' + AddExpr(AllTrim(GetField('INS_MAIN','OCCUP_ID').asString)));
    If A('PROP').RecordsExist then begin
      GetField('INSP','STRNUM').AsString           := tdbfield('PROP','STRNUM');
      GetField('INSP','STREET').AsString           := tdbfield('PROP','STREET');
      GetField('INSP','ROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
      GetField('INSP','CITY').AsString             := tdbfield('PROP','CITY');
      GetField('INSP','STATE').AsString            := tdbfield('PROP','STATE');
      GetField('INSP','ZIP').AsString              := tdbfield('PROP','ZIP');
      GetField('INSP','PROPID').AsString           := GetField('PROP','PROPID').AsString;
      if MFireID = '01920' then begin
        GetField('INSP','ONAME').AsString             := tdbfield('PROP','PLASTNAME');
        GetField('INSP','OSTRNUM').AsString           := tdbfield('PROP','STRNUM');
        GetField('INSP','OSTREET').AsString           := tdbfield('PROP','STREET');
        GetField('INSP','OROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
        GetField('INSP','OCITY').AsString             := tdbfield('PROP','CITY');
        GetField('INSP','OSTATE').AsString            := tdbfield('PROP','STATE');
        GetField('INSP','OZIP').AsString              := tdbfield('PROP','ZIP');
      end;
    end  else begin
      GetField('INSP','STRNUM').AsString           := StrNum;
      GetField('INSP','STREET').AsString           := Street;
      GetField('INSP','CITY').AsString             := tdbfield('INS_MAIN','CITY');
      GetField('INSP','STATE').AsString            := tdbfield('INS_MAIN','STATE');
      GetField('INSP','ZIP').AsString              := tdbfield('INS_MAIN','ZIP');
    end;
  end;
end;

procedure TConvFHForm.LoadInspMA;
begin
  GetField('INSP','FHKEY').AsString            := Insp_ID;
  GetField('INSP','FDID').AsString             := '01920';
  GetField('INSP','DATETIMESTART').AsDateTime  := GetField('INS_MAIN','COMPLETED').AsDateTime;
  GetField('INSP','DATETIMEEND').AsDateTime    := GetField('INS_MAIN','COMPLETED').AsDateTime;
  GetField('INSP','UNITNUM').AsString          := GetUnitNum(GetField('INS_MAIN','UNIT').AsString);
  GetField('INSP','NARR').AsString             := GetField('INS_MAIN','COMMENTS').AsString;
  GetField('INSP','EVLENGTH').AsString         := GetField('INS_MAIN','STAFF_HRS').AsString;
  GetField('INSP','NAME').AsString             := GetField('INS_MAIN','INSTITUTION').AsString;

  If A('INSPTYPE').ExactQueryLocate('CODE',tdbfield('INS_MAIN','TYPE')) then
    GetField('INSP','INSPTYPEID').AsString := GetField('INSPTYPE','INSPTYPEID').AsString;

  If A('INSPSTAT').ExactQueryLocate('SORTORD',alltrim(GetField('INS_MAIN','STATUS').AsString)) then
    GetField('INSP','INSPSTATID').AsString := GetField('INSPSTAT','INSPSTATID').AsString;

  If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('INS_MAIN','SHIFT')) then
    GetField('INSP','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

  If A('SCHDLOC').ExactQueryLocate('CODE',tdbfield('INS_MAIN','STATION')) then
    GetField('INSP','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

  If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('INS_MAIN','STAFF_ID')) then
    GetField('INSP','PERSID').AsString := GetField('PERS','PERSID').AsString;

  GetField('INSP','CONTACT').AsString          := alltrim(uppercase(alltrim(GetField('INS_MAIN','FIRST').AsString) + ' ' + alltrim(GetField('INS_MAIN','LAST').AsString)));
  GetField('INSP','ACONTACT').AsString         := alltrim(uppercase(alltrim(GetField('INS_MAIN','LAST').AsString)));
  GetField('INSP','ACOMPANY').AsString         := alltrim(uppercase(alltrim(GetField('INS_MAIN','INSTITUTION').AsString)));
  
  If A('INS_PH').ExactQueryLocate('ID',tdbfield('INS_MAIN','INSP_ID')) then
    GetField('INSP','APHONE').AsString := GetField('INS_PH','PHONE').AsString;
  If A('INS_EML').ExactQueryLocate('ID',tdbfield('INS_MAIN','INSP_ID')) then
    GetField('INSP','AEMAIL').AsString := GetField('INS_EML','EMAIL').AsString;

  If tdbfield('INS_MAIN','OCCUP_ID') = '' then begin
    GetField('INSP','STRNUM').AsString           := StrNum;
    GetField('INSP','STREET').AsString           := Street;
    GetField('INSP','CITY').AsString             := tdbfield('INS_MAIN','CITY');
    GetField('INSP','STATE').AsString            := tdbfield('INS_MAIN','STATE');
    GetField('INSP','ZIP').AsString              := tdbfield('INS_MAIN','ZIP');
  end else begin
    A('PROP').UpdateSQL('SELECT PROPID, STRNUM,PLASTNAME, STREET, ROOMAPT, CITY, STATE, ZIP FROM PROP WHERE OCCUP_ID = ' + AddExpr(AllTrim(GetField('INS_MAIN','OCCUP_ID').asString)));
    If A('PROP').RecordsExist then begin
      GetField('INSP','STRNUM').AsString           := tdbfield('PROP','STRNUM');
      GetField('INSP','STREET').AsString           := tdbfield('PROP','STREET');
      GetField('INSP','ROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
      GetField('INSP','CITY').AsString             := tdbfield('PROP','CITY');
      GetField('INSP','STATE').AsString            := tdbfield('PROP','STATE');
      GetField('INSP','ZIP').AsString              := tdbfield('PROP','ZIP');
      GetField('INSP','PROPID').AsString           := GetField('PROP','PROPID').AsString;
      GetField('INSP','ONAME').AsString             := tdbfield('PROP','PLASTNAME');
      GetField('INSP','OSTRNUM').AsString           := tdbfield('PROP','STRNUM');
      GetField('INSP','OSTREET').AsString           := tdbfield('PROP','STREET');
      GetField('INSP','OROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
      GetField('INSP','OCITY').AsString             := tdbfield('PROP','CITY');
      GetField('INSP','OSTATE').AsString            := tdbfield('PROP','STATE');
      GetField('INSP','OZIP').AsString              := tdbfield('PROP','ZIP');
    end  else begin
      GetField('INSP','STRNUM').AsString           := StrNum;
      GetField('INSP','STREET').AsString           := Street;
      GetField('INSP','CITY').AsString             := tdbfield('INS_MAIN','CITY');
      GetField('INSP','STATE').AsString            := tdbfield('INS_MAIN','STATE');
      GetField('INSP','ZIP').AsString              := tdbfield('INS_MAIN','ZIP');
    end;
  end;
end;


procedure TConvFHForm.LoadVio;
begin
  A('INS_VIOL').UpdateSQl('SELECT * FROM INS_VIOL WHERE INSP_ID = ' + AddExpr(AllTrim(getfield('INS_MAIN','INSP_ID').AsString)));
  While Not A('INS_VIOL').Eof do begin
    A('VIO').UpdateSQL('SELECT * FROM VIO WHERE VIOL_ID = ' + AddExpr(AllTrim(getfield('INS_VIOL','VIOL_ID').AsString)));
    If A('VIO').RecordsExist then
      A('VIO').Edit
    else
      A('VIO').Append;
    GetField('VIO','VIOL_ID').AsString       := tdbfield('INS_VIOL','VIOL_ID');
    GetField('VIO','INSPID').AsString        := GetField('INSP','INSPID').AsString;
    GetField('VIO','CODE').AsString          := tdbfield('INS_VIOL','CODE');
    GetField('VIO','DATEFOUND').AsDateTime   := GetField('INS_VIOL','REPORTED').AsDateTime;
    GetField('VIO','DATECORR').AsDateTime    := GetField('INS_VIOL','REPAIRED').AsDateTime;
    GetField('VIO','NARR').AsString          := GetField('INS_VIOL','REMARKS').AsString;
    GetField('VIO','PROPID').AsString        := GetField('INSP','PROPID').AsString;
    GetField('VIO','VIOCODESETID').AsString  := VioCodeSetID;
    GetField('VIO','NUMVIOLATIONS').AsString := GetField('INS_VIOL','CNT').AsString;

    If A('VIOSTAT').ExactQueryLocate('CODE',tdbfield('INS_VIOL','STATUS')) then
      GetField('VIO','VIOSTATID').AsString := GetField('VIOSTAT','VIOSTATID').AsString;

    A('LKP_VIOL').UpdateSQL('SELECT * FROM LKP_VIOL WHERE CODE = ' + edbfield('INS_VIOL','CODE'));
    If A('LKP_VIOL').RecordsExist then begin
      GetField('VIO','VIONARR').AsString := GetField('LKP_VIOL','COMMENTS').AsString;
      GetField('VIO','DESCR').AsString   := GetField('LKP_VIOL','DESCRIPT').AsString;
    end;

    A('VIO').Post;
    A('INS_VIOL').Skip(1);
  end;
end;

procedure TConvFHForm.LoadInspImage;
begin
  A('ATT_FILE').UpdateSQL('SELECT * FROM ATT_FILE WHERE TABLE_NM = ' + AddExpr('INS_MAIN') + ' AND RECORD_KEY = ' + edbfield('INS_MAIN','INSP_ID'));
  While Not A('ATT_FILE').eof do begin
    A('INSPIMAGE').UpdateSQL('SELECT * FROM INSPIMAGE WHERE ATT_ID = ' + edbfield('ATT_FILE','ATT_ID'));
    If A('INSPIMAGE').RecordsExist then
      A('INSPIMAGE').Edit
    else
    A('INSPIMAGE').Append;
    GetField('INSPIMAGE','ATT_ID').AsString       := tdbfield('ATT_FILE','ATT_ID');
    GetField('INSPIMAGE','DESCR').AsString        := tdbfield('ATT_FILE','NAME');
    GetField('INSPIMAGE','INSPID').AsString       := GetField('INSP','INSPID').AsString;
    GetField('INSPIMAGE','FILENAME').AsString     := tdbfield('ATT_FILE','NAME');
    GetField('INSPIMAGE','IMAGEBLOB').AsString    := GetField('ATT_FILE','CONTENTS').AsString;
    GetField('INSPIMAGE','FILEEXT').AsString      := 'PDF';
    A('INSPIMAGE').Post;
    A('ATT_FILE').Skip(1);
  end;
end;

procedure TConvFHForm.InspMAButtonClick(Sender: TObject);
Var SQLVar       : String;
    VioCodeSetID : String;
begin
  ConnectFH;
  Gauge.progress := 0;
  SQLVar         := 'SELECT * FROM INS_MAIN WHERE RECEIVED IS NULL AND SCHEDULED IS NULL AND START_DTTM IS NULL AND END_DTTM IS NULL AND COMPLETED > 0 ORDER BY COMPLETED';

  Open_Query('VIOCODESET',false,'SELECT VIOCODESETID FROM VIOCODESET');
  VioCodeSetID := GetField('VIOCODESET','VIOCODESETID').AsString;
  CloseApollo('VIOCODESET');

  Open_Query(FHDatabase,'INS_MAIN',false,SQLVar);
  Open_Query(FHDatabase,'INS_VIOL',false,'SELECT * FROM INS_VIOL WHERE 1=2');
  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE 1=2');
  Open_Query(FHDatabase,'LKP_VIOL',false,'SELECT * FROM LKP_VIOL WHERE 1=2');
  Open_Query(FHDatabase,'INS_EML', false,'SELECT * FROM INS_EML');
  Open_Query(FHDatabase,'INS_PH', false,'SELECT * FROM INS_PH');

  Open_Query('INSP',         true, 'SELECT * FROM INSP WHERE 1=2');
  Open_Query('VIO',          true, 'SELECT * FROM VIO WHERE 1=2');
  Open_Query('VIOSTAT',      false,'SELECT * FROM VIOSTAT');
  Open_Query('INSPTYPE',     false,'SELECT * FROM INSPTYPE');
  Open_Query('INSPSTAT',     false,'SELECT * FROM INSPSTAT');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('PERS',         false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');
  Open_Query('INSPIMAGE',    true, 'SELECT * FROM INSPIMAGE WHERE 1=2');
  Open_Query('PROP',false,'SELECT * FROM PROP WHERE 1=2');

  Gauge.MaxValue := A('INS_MAIN').QueryRecCount;

  While Not A('INS_MAIN').Eof do begin
    Insp_ID   := tdbfield('INS_MAIN','INSP_ID');
    Address   := alltrim(tdbfield('INS_MAIN','ADDR_1'));
    StrNum    := alltrim(substr(Address,1,at(' ',address)));
    If AnyStrToInt(StrNum) > 0 then begin
      Street := alltrim(substr(Address,at(' ',address),200));
    end else begin
      StrNum := '';
      Street := Address;
    end;

    A('INSP').UpdateSQL('SELECT * FROM INSP WHERE FHKEY = ' + AddExpr(Insp_ID));
    If Not A('INSP').RecordsExist then begin
      A('INSP').Append;
      LoadInspMA;
      A('INSP').Post;
      LoadVio;
      LoadInspImage;
      AddStatusListBox(ListBox,'Converting ' + Insp_ID + '  ' + tdbfield('INSP','STRNUM') + ' ' + tdbfield('INSP','STREET'));
    end;
    A('INS_MAIN').Skip(1);

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('INS_MAIN');
  CloseApollo('INS_VIOL');
  CloseApollo('ATT_FILE');
  CloseApollo('LKP_VIOL');
  CloseApollo('INS_EML');
  CloseApollo('INS_PH');

  CloseApollo('INSP');
  CloseApollo('VIO');
  CloseApollo('VIOSTAT');
  CloseApollo('INSPTYPE');
  CloseApollo('INSPSTAT');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('PERS');
  CloseApollo('SCHDLOC');
  CloseApollo('INSPIMAGE');
  CloseApollo('PROP');

  FHDatabase.Free;
  ShowMessage('DONE');
end;

procedure TConvFHForm.InspManButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INSPSTAT',true,'SELECT * FROM INSPSTAT WHERE 1=2');
  LoadInspStatTable('0','New',      'Y');
  LoadInspStatTable('1','Received', 'Y');
  LoadInspStatTable('2','Scheduled','Y');
  LoadInspStatTable('3','Completed','N');
  CloseApollo('INSPSTAT');

  Open_Query('VIOSTAT',true,'SELECT * FROM VIOSTAT WHERE 1=2');
  LoadVioStatTable('1','Violation Noted:  Do not Schedule Recheck','N');
  LoadVioStatTable('2','Violation Noted:  Schedule Recheck',       'Y');
  LoadVioStatTable('3','Violation Repaired',                       'N');
  LoadVioStatTable('4','Variance Issued',                          'Y');
  CloseApollo('VIOSTAT');
end;

procedure TConvFHForm.LoadInspStatTable(Code, Descr, OpenInsp: String);
begin
  A('INSPSTAT').UpdateSQL('SELECT * FROM INSPSTAT WHERE CODE = ' + AddExpr(Code) + ' AND DESCR = ' + AddExpr(Descr));
  If A('INSPSTAT').RecordsExist then
    A('INSPSTAT').Edit
  else
    A('INSPSTAT').Append;
  Getfield('INSPSTAT','CODE').AsString      := Code;
  Getfield('INSPSTAT','DESCR').AsString     := Descr;
  Getfield('INSPSTAT','OPENINSP').AsString  := OpenInsp;
  A('INSPSTAT').Post;
  AddStatusListBox(ListBox,'Processing INSPSTAT ' + Code + ' ' + Descr);
end;

procedure TConvFHForm.LoadVioStatTable(Code, Descr, OpenVio : String);
begin
  A('VIOSTAT').UpdateSQL('SELECT * FROM VIOSTAT WHERE CODE = ' + AddExpr(Code) + ' AND DESCR = ' + AddExpr(Descr));
  If A('VIOSTAT').RecordsExist then
    A('VIOSTAT').Edit
  else
    A('VIOSTAT').Append;
  Getfield('VIOSTAT','CODE').AsString    := Code;
  Getfield('VIOSTAT','DESCR').AsString   := Descr;
  Getfield('VIOSTAT','OPENVIO').AsString := OpenVio;
  A('VIOSTAT').Post;
  AddStatusListBox(ListBox,'Processing VIOSTAT ' + Code + ' ' + Descr);
end;


procedure TConvFHForm.LocationButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  inherited;
  If BooleanMessageDlg('Changes have been made to this conversion.  It is FDID Based.  Check data before proceding.') then begin
    AddStatusListBox(ListBox,'Converting Location Codes . . . . .Started');
    ConnectFH;
    Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');
    Open_Query('LOCATION',       true, 'SELECT * FROM LOCATION WHERE 1=2');

    Gauge.MaxValue := A('CODE').QueryRecCount;
    Gauge.progress := 0;
    While Not A('CODE').Eof do begin
      AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));
      Gauge.progress  := Gauge.progress + 1;
      Application.ProcessMessages;
      If (tdbfield('CODE','CATEGORY') = 'TRNG LOC') then begin
        FdidVar := GetConvFdid(ConvFdidField.Value);
        A('LOCATION').UpdateSQL('SELECT * FROM LOCATION WHERE FDID = ' + AddExpr(FdidVar) + ' AND ' + 'CODE = ' + AddExpr(edbfield('CODE','CODE')));
        If A('LOCATION').RecordsExist then
          A('LOCATION').Edit
        else
          A('LOCATION').Append;
        GetField('LOCATION','FDID').AsString  := FdidVar;
        Getfield('LOCATION','CODE').AsString  := tdbfield('CODE','CODE');
        Getfield('LOCATION','DESCR').AsString := tdbfield('CODE','DESCRIPT');
        A('LOCATION').Post;
      end;

      A('CODE').Skip(1);
    end;
    CloseApollo('CODE');
    CloseApollo('LOCATION');
    FHDatabase.Free;
    AddStatusListBox(ListBox,'Converting Location . . . . . Done');
    ShowMessage('Done');
  end;  
end;

procedure TConvFHForm.InvButtonClick(Sender: TObject);
Var Inv_MainQuery  : TApolloData;
    inv_id         : String;
    InvType        : String;
    Guididnumber   : String;
    FdidVar        : String;
    UnitNum        : String;
    SQLVar         : String;
begin
  ConnectFH;
  If ConvRecordField.Value = '' then
    SQLVar         := 'SELECT * FROM INV_MAIN'
  else
    SQLVar         := 'SELECT * FROM INV_MAIN WHERE INV_ID = ' + AddExpr(ConvRecordField.Value);

  Inv_MainQuery  := Open_Query(FHDatabase,false,SQLVar);
  Open_Query(FHDatabase,'INV_HOS',false,'SELECT * FROM INV_HOS WHERE 1=2');
  Open_Query(FHDatabase,'INV_MNT',false,'SELECT * FROM INV_MNT');
  Open_Query(FHDatabase,'INV_MHOS',false,'SELECT * FROM INV_MNT WHERE 1=2');
  Open_Query(FHDatabase,'INV_SCB',false,'SELECT * FROM INV_SCB WHERE 1=2');
  Open_Query('INV',          true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('INVSERVHIST',  true,'SELECT * FROM INVSERVHIST WHERE 1=2');
  Open_Query('INVSUBTYPE',   false,'SELECT * FROM INVSUBTYPE');
  Open_Query('INVLOC',       false,'SELECT * FROM INVLOC');
  Open_Query('INVSERVTYPE',  false,'SELECT * FROM INVSERVTYPE');
  Open_Query('INVSERVSTATUS',false,'SELECT * FROM INVSERVSTATUS');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');
  Open_Query('PERS',         false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('ROLODEX',      false,'SELECT * FROM ROLODEX');

  Open_Query('HOSEMATERIAL',    false,'SELECT * FROM HOSEMATERIAL');
  Open_Query('HOSEJACKET',      false,'SELECT * FROM HOSEJACKET');
  Open_Query('HOSECOUPLETHREAD',false,'SELECT * FROM HOSECOUPLETHREAD');
  Open_Query('HOSECOUPLE',      false,'SELECT * FROM HOSECOUPLE');

  Gauge.progress := 0;
  Gauge.MaxValue := Inv_MainQuery.QueryRecCount;

  While Not Inv_MainQuery.Eof do begin
    Inv_Id  := alltrim(Inv_MainQuery.FieldByName('INV_ID').AsString);
    InvType := GetInvType(alltrim(Inv_MainQuery.FieldByName('TYPE').AsString));
    FdidVar := GetConvFdid(tdbfield(Inv_MainQuery,'FDID'));
    UnitNum := GetUnitNum(alltrim(Inv_MainQuery.FieldByName('UNIT').AsString));


    If ConvInvType(InvType) then begin

      AddStatusListBox(ListBox,'Converting Inventory Data ' + Inv_ID + ' - ' + tdbfield(Inv_MainQuery,'DESCRIPT'));

      If ((InvType = 'TRUCK') OR (InvType = 'APPAR') OR (InvType = 'APP')) and Not (UnitNum = '') then begin
        A('INV').UpdateSQL('SELECT * FROM INV WHERE UNITNUM = ' + AddExpr(UnitNum) + ' AND FDID = ' + AddExpr(FdidVar));
      end else begin
        A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(Inv_ID) + ' AND FDID = ' + AddExpr(FdidVar));

      end;
      //+ ' AND GUIDIDNUMBER = ' + AddExpr(Guididnumber)

      If A('INV').RecordsExist then
        A('INV').Edit
      else
        A('INV').Append;

      GetField('INV','INVNUM').AsString         := Inv_Id;
      GetField('INV','FDID').AsString           := FdidVar;
      GetField('INV','TYPE').AsString           := InvType;
      
      if MFireID = '01034' then begin
        if Inv_MainQuery.FieldByName('NOT_IN_SRV').AsString ='True' then
          GetField('INV','INVSTATID').AsString    := '1'
        else
          GetField('INV','INVSTATID').AsString    := '2';
      end;

      If (InvType = 'TRUCK')  then
        GetField('INV','UNITNUM').AsString := GetUnitNum(Inv_MainQuery.FieldByName('UNIT').AsString);

      GetField('INV','DESCR').AsString          := Inv_MainQuery.FieldByName('DESCRIPT').AsString;
      GetField('INV','COST').AsString           := Inv_MainQuery.FieldByName('ORIG_COST').AsString;
      GetField('INV','PURCHASEDATE').AsString   := Inv_MainQuery.FieldByName('PURCHASE_DATE').AsString;
      GetField('INV','RECEIVEDATE').AsString    := Inv_MainQuery.FieldByName('RECEIVED_DATE').AsString;
      GetField('INV','INSERVICEDATE').AsString  := Inv_MainQuery.FieldByName('SERVICE_DATE').AsString;
      GetField('INV','EXPDATE').AsString        := Inv_MainQuery.FieldByName('REPLACE_DATE').AsString;
      If Not (tdbfield(Inv_MainQuery,'YEAR') = '') then
        GetField('INV','MANDATE').AsString  := '01/01/' + Inv_MainQuery.FieldByName('YEAR').AsString;

      GetField('INV','SERNUM').AsString         := Inv_MainQuery.FieldByName('SERIAL_NO').AsString;
      GetField('INV','MANUFACT').AsString       := Inv_MainQuery.FieldByName('MAKE').AsString;
      GetField('INV','MODEL').AsString          := Inv_MainQuery.FieldByName('MODEL').AsString;
      GetField('INV','YEAR').AsString           := Inv_MainQuery.FieldByName('YEAR').AsString;
      GetField('INV','NARR').AsString           := Inv_MainQuery.FieldByName('NOTES').AsString;

      If A('INVSUBTYPE').ExactQueryLocate('CODE',Inv_MainQuery.FieldByName('INV_CLASS').AsString) then
        GetField('INV','INVSUBTYPEID').AsString := GetField('INVSUBTYPE','INVSUBTYPEID').AsString;

      If A('INVLOC').ExactQueryLocate('MAINCODE',Inv_MainQuery.FieldByName('STAFF_ID').AsString) then
        GetField('INV','INVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;

      If A('ROLODEX').ExactQueryLocate('CODE',Inv_MainQuery.FieldByName('VEND_ID').AsString) then
        GetField('INV','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;

      If (InvType = 'HOSE') OR (Inv_MainQuery.FieldByName('INV_CLASS').AsString='HOSE') then begin
        GetField('INV','TYPE').AsString           := 'HOSE';
        A('INV_HOS').UpdateSQL('SELECT * FROM INV_HOS WHERE INV_ID = ' + AddExpr(inv_id));
        While Not A('INV_HOS').Eof do begin
          GetField('INV','HSIZE').AsFloat         := GetField('INV_HOS','SIZE').AsFloat;
          GetField('INV','HLENGTH').AsFloat       := GetField('INV_HOS','LENGTH').AsFloat;
          GetField('INV','INVSUBTYPEID').AsString := SqlLookup(alltrim(GetField('INV_HOS','HOSE_TYPE').AsString),'DESCR','INVSUBTYPE','INVSUBTYPEID');

          If A('HOSEJACKET').ExactQueryLocate('CODE',tdbfield('INV_HOS','JACKET')) then
            GetField('INV','HOSEJACKETID').AsString := GetField('HOSEJACKET','HOSEJACKETID').AsString;

          If A('HOSEMATERIAL').ExactQueryLocate('CODE',tdbfield('INV_HOS','MATERIAL')) then
            GetField('INV','HOSEMATERIALID').AsString := GetField('HOSEMATERIAL','HOSEMATERIALID').AsString;

          If A('HOSECOUPLE').ExactQueryLocate('CODE',tdbfield('INV_HOS','COUPLER')) then
            GetField('INV','HOSECOUPLEID').AsString := GetField('HOSECOUPLE','HOSECOUPLEID').AsString;

          If A('HOSECOUPLETHREAD').ExactQueryLocate('CODE',tdbfield('INV_HOS','COUPLER_THREAD')) then
            GetField('INV','HOSECOUPLETHREADID').AsString := GetField('HOSECOUPLETHREAD','HOSECOUPLETHREADID').AsString;

          A('INV_HOS').Next;
        end;
      end;

      If InvType = 'SCBA' then begin
//      PURCHASEDATE
        A('INV_SCB').UpdateSQL('SELECT * FROM INV_SCB WHERE INV_ID = ' + AddExpr(inv_id));
        If A('INV_SCB').RecordsExist then begin
          GetField('INV','PRSERNUM').AsString := tdbfield('INV_SCB','REGULATORY');
        end;
      end;

      A('INV').Post;

      If CheckMaintType then
        LoadInvServHist(Inv_ID);


    end;
    Inv_MainQuery.Next;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  Inv_MainQuery.free;
  FHDatabase.Free;

  CloseApollo('INV_MNT');
  CloseApollo('INV_HOS');
  CloseApollo('INV_MHOS');
  CloseApollo('INV_SCB');
  CloseApollo('INVSERVHIST');
  CloseApollo('INVSUBTYPE');
  CloseApollo('INVLOC');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INVSERVSTATUS');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('SCHDLOC');
  CloseApollo('PERS');
  CloseApollo('ROLODEX');

  CloseApollo('HOSEMATERIAL');
  CloseApollo('HOSEJACKET');
  CloseApollo('HOSECOUPLE');
  CloseApollo('HOSECOUPLETHREAD');

  ShowMessage('Done');
end;


procedure TConvFHForm.InvLocButtonClick(Sender: TObject);
Var LKP_InvQuery  : TApolloData;
    MainCode      : String;
begin
  inherited;
  ConnectFH;
  LKP_InvQuery := Open_Query(FHDatabase,false,'SELECT * FROM LKP_INV WHERE CATEGORY = ' + AddExpr('INV LOC') + ' ORDER BY CODE');
  Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE 1=2');

  Gauge.progress := 0;
  Gauge.MaxValue := LKP_InvQuery.QueryRecCount;

  While Not LKP_InvQuery.Eof do begin
    MainCode := alltrim(LKP_InvQuery.FieldByName('CODE').AsString);
    AddStatusListBox(ListBox,'Loading in inventory location data for MAINCODE = ' + MainCode);

    A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr(MainCode));
    If Not A('INVLOC').RecordsExist then begin
      A('INVLOC').Append;
      GetField('INVLOC','MAINCODE').AsString := MainCode;
      GetField('INVLOC','DESCR').AsString    := LKP_InvQuery.FieldByName('DESCRIPT').AsString;
      GetField('INVLOC','FDID').AsString     := GetConvFdid(tdbfield(LKP_InvQuery,'FDID'));
      A('INVLOC').Post;
    end;

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
    LKP_InvQuery.Skip(1);
  end;

  LKP_InvQuery.free;
  FHDatabase.Free;
  CloseApollo('INVLOC');
  ShowMessage('Done');
end;

procedure TConvFHForm.InvToInvLocButtonClick(Sender: TObject);
Var Inv_MainQuery  : TApolloData;
    inv_id         : String;
    InvType        : String;
    Guididnumber   : String;
    FdidVar        : String;
    UnitNum        : String;
    SQLVar         : String;
    MainCode       : String;
begin
  inherited;
  ConnectFH;
  SQLVar         := 'SELECT INV_ID, STAFF_ID, LOCATION, DESCRIPT, TYPE, FDID, UNIT FROM INV_MAIN';
  Inv_MainQuery  := Open_Query(FHDatabase,false,SQLVar);
  Open_Query('INV',   true, 'SELECT * FROM INV WHERE 1=2');
  Open_Query('INVLOC',false,'SELECT * FROM INVLOC');

  Gauge.progress := 0;
  Gauge.MaxValue := Inv_MainQuery.QueryRecCount;

  While Not Inv_MainQuery.Eof do begin
    Inv_Id  := alltrim(Inv_MainQuery.FieldByName('INV_ID').AsString);
    InvType := GetInvType(alltrim(Inv_MainQuery.FieldByName('TYPE').AsString));
    FdidVar := GetConvFdid(tdbfield(Inv_MainQuery,'FDID'));
    UnitNum := GetUnitNum(alltrim(Inv_MainQuery.FieldByName('UNIT').AsString));
    If (alltrim(Inv_MainQuery.FieldByName('STAFF_ID').AsString) <> '') then
      MainCode := alltrim(Inv_MainQuery.FieldByName('STAFF_ID').AsString)
    else if (alltrim(Inv_MainQuery.FieldByName('LOCATION').AsString) <> '') then
      MainCode := alltrim(Inv_MainQuery.FieldByName('LOCATION').AsString)
    else
      MainCode := '';


    AddStatusListBox(ListBox,'Converting Inventory location data ' + Inv_ID + ' - ' + tdbfield(Inv_MainQuery,'DESCRIPT'));

    A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(Inv_ID) + ' AND FDID = ' + AddExpr(FdidVar));
    If (GetField('INV','INVLOCID').AsString = '') and A('INV').RecordsExist then begin
      A('INV').Edit;
      GetField('INV','MAINCODE').AsString := MainCode;
      If A('INVLOC').ExactQueryLocate('MAINCODE',MainCode) then 
        GetField('INV','INVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      A('INV').Post;
    end;
    Inv_MainQuery.Next;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  Inv_MainQuery.free;
  FHDatabase.Free;
  CloseApollo('INV');
  CloseApollo('INVLOC');

  ShowMessage('Done');
end;

function TConvFHForm.ConvInvType(TypeVar: String): Boolean;
begin
  If (TypeVar = 'TRUCK') then
    ConvInvType := AppTypeCheck.Checked
  else if (TypeVar = 'GEN') then
    ConvInvType := GenTypeCheck.Checked
  else if (TypeVar = 'SCBA') then
    ConvInvType := SCBATypeCheck.Checked
  else if (TypeVar = 'HOSE') then
    ConvInvType := HoseTypeCheck.Checked
  else
    ConvInvType := false;
end;

function TConvFHForm.CheckMaintType: Boolean;
begin
  If (tdbfield('INV','TYPE') = 'APP') then
    CheckMaintType := AppCheck.Checked
  else if (tdbfield('INV','TYPE') = 'GEN') then
    CheckMaintType := GenCheck.Checked
  else if (tdbfield('INV','TYPE') = 'SCBA') then
    CheckMaintType := SCBACheck.Checked
  else if (tdbfield('INV','TYPE') = 'HOSE') then
    CheckMaintType := HoseCheck.Checked;
end;

procedure TConvFHForm.LoadInvServHist(Inv_ID: String);
begin
  A('INV_MNT').UpdateSQL('SELECT * FROM INV_MNT WHERE INV_ID = ' + AddExpr(Inv_ID));

  While Not A('INV_MNT').Eof do begin
    A('INVSERVHIST').UpdateSQL('SELECT * FROM INVSERVHIST WHERE INVID = ' + PKValue(GetField('INV','INVID').AsString) + ' AND PRIMEKEY = ' + edbfield('INV_MNT','MNT_ID'));
    If A('INVSERVHIST').RecordsExist then
      A('INVSERVHIST').Edit
    else
      A('INVSERVHIST').Append;
    GetField('INVSERVHIST','PRIMEKEY').AsString       := GetField('INV_MNT','MNT_ID').AsString;
    GetField('INVSERVHIST','INVID').AsString          := GetField('INV','INVID').AsString;

    If A('INVSERVTYPE').ExactQueryLocate('CODE',tdbfield('INV_MNT','JOB')) then begin
      GetField('INVSERVHIST','INVSERVTYPEID').AsString  := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;
      GetField('INVSERVHIST','INVSERVFORM').AsString    := GetField('INVSERVTYPE','INVSERVFORM').AsString;
    end;

    GetField('INVSERVHIST','DATEDONE').AsString       := GetField('INV_MNT','DATE').AsString;
    GetField('INVSERVHIST','NARR').AsString           := GetField('INV_MNT','NOTES').AsString;

    GetField('INVSERVHIST','WORKNUM').AsString        := GetField('INV_MNT','WORK_ORDER').AsString;

    GetField('INVSERVHIST','ODOMETER').AsFloat        := GetField('INV_MNT','MILEAGE').AsFloat;
    GetField('INVSERVHIST','HOURENGINE').AsFloat      := GetField('INV_MNT','HOURS').AsFloat;

    GetField('INVSERVHIST','PARTTOTAL').AsFloat       := GetField('INV_MNT','PARTS').AsFloat;
    GetField('INVSERVHIST','LABORTOTAL').AsFloat      := GetField('INV_MNT','LABOR').AsFloat;
    GetField('INVSERVHIST','OTHERTOTAL').AsFloat      := GetField('INV_MNT','OTHER').AsFloat;
    GetField('INVSERVHIST','TOTALCOST').AsFloat       := GetField('INV_MNT','PARTS').AsFloat + GetField('INV_MNT','LABOR').AsFloat + GetField('INV_MNT','OTHER').AsFloat;

    GetField('INVSERVHIST','OOS').AsFloat             := GetField('INV_MNT','DWN_HRS').AsFloat;

    If A('ROLODEX').ExactQueryLocate('CODE',tdbfield('INV_MNT','VEND_ID')) then
      GetField('INVSERVHIST','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('INV_MNT','STAFF_ID')) then
      GetField('INVSERVHIST','PERSID').AsString := GetField('PERS','PERSID').AsString;
    If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('INV_MNT','SHIFT')) then
      GetField('INVSERVHIST','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;
    If A('SCHDLOC').ExactQueryLocate('CODE',tdbfield('INV_MNT','STATION')) then
      GetField('INVSERVHIST','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

    If (tdbfield('INV','TYPE') = 'HOSE') then
      LoadInv_HosM;
    A('INVSERVHIST').Post;
    A('INV_MNT').Skip(1);
  end;
end;

procedure TConvFHForm.LoadInv_HosM;
begin
  A('INV_MHOS').UpdateSQL('SELECT * FROM INV_MHOS WHERE MNT_ID = ' + edbfield('INV_MNT','MNT_ID'));
  If A('INV_MHOS').RecordsExist then begin
    GetField('INVSERVHIST','VANDALISM').AsString   := IIf(GetField('INV_MHOS','VANDALISM').AsBoolean,'Y','');
    GetField('INVSERVHIST','DEBRIS').AsString      := IIf(GetField('INV_MHOS','DEBRIS').AsBoolean,'Y','');
    GetField('INVSERVHIST','MILDEW').AsString      := IIf(GetField('INV_MHOS','MILDEW').AsBoolean,'Y','');
    GetField('INVSERVHIST','DAMAGE').AsString      := IIf(GetField('INV_MHOS','DAMAGE').AsBoolean,'Y','');
    GetField('INVSERVHIST','WATERWAY').AsString    := IIf(GetField('INV_MHOS','WATERWAY').AsBoolean,'Y','');
    GetField('INVSERVHIST','TIP').AsString         := IIf(GetField('INV_MHOS','TIP').AsBoolean,'Y','');
    GetField('INVSERVHIST','OPERATION').AsString   := IIf(GetField('INV_MHOS','OPERATION').AsBoolean,'Y','');
    GetField('INVSERVHIST','VALVE').AsString       := IIf(GetField('INV_MHOS','VALVE').AsBoolean,'Y','');
    GetField('INVSERVHIST','PARTS').AsString       := IIf(GetField('INV_MHOS','PARTS').AsBoolean,'Y','');
    GetField('INVSERVHIST','NOZ_GASKET').AsString  := IIf(GetField('INV_MHOS','NOZ_GASKET').AsBoolean,'Y','');
    GetField('INVSERVHIST','THREADS').AsString     := IIf(GetField('INV_MHOS','THREADS').AsBoolean,'Y','');
    GetField('INVSERVHIST','CORROSION').AsString   := IIf(GetField('INV_MHOS','CORROSION').AsBoolean,'Y','');
    GetField('INVSERVHIST','HOSE_SLIP').AsString   := IIf(GetField('INV_MHOS','HOSE_SLIP').AsBoolean,'Y','');

    GetField('INVSERVHIST','ROUND').AsString       := IIf(GetField('INV_MHOS','ROUND').AsBoolean,'Y','');
    GetField('INVSERVHIST','SWIVEL').AsString      := IIf(GetField('INV_MHOS','SWIVEL').AsBoolean,'Y','');
    GetField('INVSERVHIST','LUGS').AsString        := IIf(GetField('INV_MHOS','LUGS').AsBoolean,'Y','');

    GetField('INVSERVHIST','COLLAR').AsString      := IIf(GetField('INV_MHOS','COLLAR').AsBoolean,'Y','');
    GetField('INVSERVHIST','COUP_GASKET').AsString := IIf(GetField('INV_MHOS','COUP_GASKET').AsBoolean,'Y','');
    GetField('INVSERVHIST','DEFECTS').AsString     := IIf(GetField('INV_MHOS','DEFECTS').AsBoolean,'Y','');

    GetField('INVSERVHIST','HOSE').AsString        := IIf(GetField('INV_MHOS','HOSE').AsBoolean,'Y','');
    GetField('INVSERVHIST','HOSE_F').AsString      := IIf(GetField('INV_MHOS','HOSE_F').AsBoolean,'Y','');
    GetField('INVSERVHIST','HOSE_P').AsString      := IIf(GetField('INV_MHOS','HOSE_P').AsBoolean,'Y','');

    GetField('INVSERVHIST','NOZZLE').AsString      := IIf(GetField('INV_MHOS','NOZZLE').AsBoolean,'Y','');
    GetField('INVSERVHIST','NOZZLE_F').AsString    := IIf(GetField('INV_MHOS','NOZZLE_F').AsBoolean,'Y','');
    GetField('INVSERVHIST','NOZZLE_P').AsString    := IIf(GetField('INV_MHOS','NOZZLE_P').AsBoolean,'Y','');

    GetField('INVSERVHIST','COUPLING').AsString    := IIf(GetField('INV_MHOS','COUPLING').AsBoolean,'Y','');
    GetField('INVSERVHIST','COUPLING_F').AsString  := IIf(GetField('INV_MHOS','COUPLING_F').AsBoolean,'Y','');
    GetField('INVSERVHIST','COUPLING_P').AsString  := IIf(GetField('INV_MHOS','COUPLING_P').AsBoolean,'Y','');

    GetField('INVSERVHIST','PRESSURE_I').AsString  := IIf(GetField('INV_MHOS','PRESSURE').AsBoolean,'Y','');
    GetField('INVSERVHIST','PRESSURE_F').AsString  := IIf(GetField('INV_MHOS','PRESSURE_F').AsBoolean,'Y','');
    GetField('INVSERVHIST','PRESSURE_P').AsString  := IIf(GetField('INV_MHOS','PRESSURE_P').AsBoolean,'Y','');

    GetField('INVSERVHIST','PRESSURE').AsString    := GetField('INV_MHOS','TEST_PRES').AsString;
    GetField('INVSERVHIST','DURATION').AsString    := GetField('INV_MHOS','TEST_DURATION').AsString;

    GetField('INVSERVHIST','LEAK_45').AsString     := IIf(GetField('INV_MHOS','LEAK_45').AsBoolean,'Y','');
    GetField('INVSERVHIST','LEAK_PRES').AsString   := IIf(GetField('INV_MHOS','LEAK_PRES').AsBoolean,'Y','');
    GetField('INVSERVHIST','COUP_SLIP').AsString   := IIf(GetField('INV_MHOS','COUP_SLIP').AsBoolean,'Y','');

    GetField('INVSERVHIST','CUT').AsString         := IIf(GetField('INV_MHOS','CUT').AsBoolean,'Y','');

    GetField('INVSERVHIST','NEW_LEN').AsString    := GetField('INV_MHOS','NEW_LEN').AsString;
    GetField('INVSERVHIST','NEW_ID').AsString     := GetField('INV_MHOS','NEW_ID').AsString;
    GetField('INVSERVHIST','REASON').AsString     := GetField('INV_MHOS','REASON').AsString;
  end;
end;


procedure TConvFHForm.LKPSysButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  ConnectFH;

  AddStatusListBox(ListBox,'Converting Incident LKP_SYS . . . . . Started');

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_SYS');
  Open_Query('PERSRACE',true,'SELECT * FROM PERSRACE WHERE 1=2');
  Open_Query('N5DISTRICT',true,'SELECT * FROM N5DISTRICT WHERE 1=2');
  Open_Query('REDNMXCODE',true,'SELECT * FROM REDNMXCODE WHERE 1=2');
  Open_Query('PERSCONTTYPE',true,'SELECT * FROM PERSCONTTYPE WHERE 1=2');
  Open_Query('PERSPHONETYPE',true,'SELECT * FROM PERSPHONETYPE WHERE 1=2');

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));
    If (tdbfield('CODE','CATEGORY') = 'RACE') then begin
      A('PERSRACE').UpdateSQL('SELECT * FROM PERSRACE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSRACE').RecordsExist then
        A('PERSRACE').Edit
      else
        A('PERSRACE').Append;
      Getfield('PERSRACE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSRACE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSRACE').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'DISTRICT') then begin
      FdidVar := GetConvFdid(ConvFdidField.Value);
      A('N5DISTRICT').UpdateSQL('SELECT * FROM N5DISTRICT WHERE FDID = ' + AddExpr(FdidVar ) + ' AND CODE = ' + edbfield('CODE','CODE'));
      If A('N5DISTRICT').RecordsExist then
        A('N5DISTRICT').Edit
      else
        A('N5DISTRICT').Append;
      Getfield('N5DISTRICT','FDID').AsString  := FdidVar;
      Getfield('N5DISTRICT','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('N5DISTRICT','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('N5DISTRICT').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'PHONE') then begin
      A('PERSPHONETYPE').UpdateSQL('SELECT * FROM PERSPHONETYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERSPHONETYPE').RecordsExist then
        A('PERSPHONETYPE').Edit
      else
        A('PERSPHONETYPE').Append;
      Getfield('PERSPHONETYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSPHONETYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSPHONETYPE').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'CENSUS') then begin
      LoadRedNMXCode('CENSUS',tdbfield('CODE','CODE'),tdbfield('CODE','DESCRIPT'));
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('PERSRACE');
  CloseApollo('N5DISTRICT');
  CloseApollo('REDNMXCODE');
  CloseApollo('PERSCONTTYPE');
  CloseApollo('PERSPHONETYPE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Incident LKP_SYS . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.LKP_HYDRButtonClick(Sender: TObject);
  procedure LoadHydStatusRecord(Code, Descr: String);
  begin
    A('HYDSTATUS').UpdateSQL('SELECT * FROM HYDSTATUS WHERE CODE = ' + AddExpr(Code));
    If A('HYDSTATUS').RecordsExist then
      A('HYDSTATUS').Edit
    else
      A('HYDSTATUS').Append;
    GetField('HYDSTATUS','CODE').AsString  := Code;
    GetField('HYDSTATUS','DESCR').AsString := Descr;
    A('HYDSTATUS').Post;
  end;
begin
  ConnectFH;

  Open_Query('HYDSTATUS',true,'SELECT * FROM HYDSTATUS WHERE 1=2');
  LoadHydStatusRecord('IS','In Service');
  LoadHydStatusRecord('OOS','Out of Service');
  CloseApollo('HYDSTATUS');

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_HYDR');
  Open_Query('HYDINSPECTDEFLU',true,'SELECT * FROM HYDINSPECTDEFLU WHERE 1=2');
  Open_Query('HYDNFPACLASS',true,'SELECT * FROM HYDNFPACLASS WHERE 1=2'); 
  Open_Query('HYDTYPE',true,'SELECT * FROM HYDTYPE WHERE 1=2');

  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'HYD DEFECT') then begin
      A('HYDINSPECTDEFLU').UpdateSQL('SELECT * FROM HYDINSPECTDEFLU WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HYDINSPECTDEFLU').RecordsExist then
        A('HYDINSPECTDEFLU').Edit
      else
        A('HYDINSPECTDEFLU').Append;
      Getfield('HYDINSPECTDEFLU','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HYDINSPECTDEFLU','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HYDINSPECTDEFLU').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'HYD CLASS') then begin
      A('HYDNFPACLASS').UpdateSQL('SELECT * FROM HYDNFPACLASS WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HYDNFPACLASS').RecordsExist then
        A('HYDNFPACLASS').Edit
      else
        A('HYDNFPACLASS').Append;
      Getfield('HYDNFPACLASS','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HYDNFPACLASS','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HYDNFPACLASS').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'HYD MAIN') then begin
      A('HYDTYPE').UpdateSQL('SELECT * FROM HYDTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HYDTYPE').RecordsExist then
        A('HYDTYPE').Edit
      else
        A('HYDTYPE').Append;
      Getfield('HYDTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HYDTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HYDTYPE').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('HYDINSPECTDEFLU');
  CloseApollo('HYDNFPACLASS');
  CloseApollo('HYDTYPE');
  FHDatabase.Free;
  ShowMessage('Done');
end;

procedure TConvFHForm.LoadInspChecklist;
Var InspTypeIDVar : String;
begin
  ConnectFH;
  Open_Query(FHDatabase,'CHKL',false,'SELECT * FROM INS_CHKL WHERE IS_CAT =' + AddExpr('False'));
  Open_Query('INSPTYPE',false,'SELECT * FROM INSPTYPE');
  Open_Query('INSPCODETEMP',true,'SELECT * FROM INSPCODETEMP WHERE 1=2');
   //needs to be implemented but its unclear how to link these to inspection types
  {While Not A('CHKL').Eof do begin

    A('INSPCODETEMP').UpdateSQL('SELECT * FROM INSPCODETEMP WHERE INSPTYPEID = ' + edbfield('CODE','CODE'));
    If A('INSPCODETEMP').RecordsExist then
      A('INSPCODETEMP').Edit
    else
      A('INSPCODETEMP').Append;

    Getfield('INSPTYPE','CODE').AsString   := tdbfield('CODE','CODE');
    Getfield('INSPTYPE','DESCR').AsString  := tdbfield('CODE','DESCRIPT');
    Getfield('INSPTYPE','ACTIVE').AsString := 'Y';

    A('INSPCODETEMP').Post;
    
    A('CHKL').Skip(1);
  end;  }
  CloseApollo('INSPCODETEMP');
  CloseApollo('INSPTYPE');
  CloseApollo('CHKL');
  FHDatabase.Free;

end;

procedure TConvFHForm.LKP_INSPButtonClick(Sender: TObject);
begin
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_OCC');
  Open_Query('INSPTYPE',true,'SELECT * FROM INSPTYPE WHERE 1=2');
  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'INSP TYPE') then begin
      A('INSPTYPE').UpdateSQL('SELECT * FROM INSPTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INSPTYPE').RecordsExist then
        A('INSPTYPE').Edit
      else
        A('INSPTYPE').Append;
      Getfield('INSPTYPE','CODE').AsString   := tdbfield('CODE','CODE');
      Getfield('INSPTYPE','DESCR').AsString  := tdbfield('CODE','DESCRIPT');
      Getfield('INSPTYPE','ACTIVE').AsString := 'Y';
      A('INSPTYPE').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('INSPTYPE');
  FHDatabase.Free;
  LoadInspChecklist;
  ShowMessage('Done');
end;

procedure TConvFHForm.VioCodeButtonClick(Sender: TObject);
Var Category : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Converting LKP_VIO . . . . Started');

  Category := 'MASS CMR';
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_VIOL WHERE CATEGORY = ' + AddExpr(Category));
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Converting Violation Code Data ' + tdbfield('CODE','CODE') + ' - ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = 9 AND CODE = ' + edbfield('CODE','CODE'));
    If A('VIOCODE').RecordsExist then
      A('VIOCODE').Edit
    else
      A('VIOCODE').Append;
    Getfield('VIOCODE','VIOCODESETID').AsString := '9';
    Getfield('VIOCODE','CODE').AsString         := tdbfield('CODE','CODE');
    Getfield('VIOCODE','DESCR').AsString        := tdbfield('CODE','DESCRIPT');
    Getfield('VIOCODE','CATEGORY').AsString     := tdbfield('CODE','CATEGORY');
    Getfield('VIOCODE','GRP').AsString          := tdbfield('CODE','GRP');
    Getfield('VIOCODE','NARR').AsString         := GetField('CODE','COMMENTS').AsString;
    A('VIOCODE').Post;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('VIOCODE');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_VIO . . . . Done');
  ShowMessage('Done');
end;


procedure TConvFHForm.VioCodeFHButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting LKP_VIOL to VIOCODE . . . . Started');

  ConnectFH;
  Open_Query(FHDatabase,'LKP_VIOL',false,'SELECT * FROM LKP_VIOL ORDER BY CATEGORY, GRP, CODE');
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
  Open_Query('VIOCODESET',false,'SELECT * FROM VIOCODESET');

  Gauge.MaxValue := A('LKP_VIOL').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_VIOL').Eof do begin
    AddStatusListBox(ListBox,'Converting Violation Code Data ' + tdbfield('LKP_VIOL','CODE') + ' - ' + tdbfield('LKP_VIOL','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    If A('VIOCODESET').ExactQueryLocate('CODE',tdbfield('LKP_VIOL','CATEGORY')) then begin

      A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + GetField('VIOCODESET','VIOCODESETID').AsString + ' AND CODE = ' + edbfield('LKP_VIOL','CODE'));
      If A('VIOCODE').RecordsExist then
        A('VIOCODE').Edit
      else
        A('VIOCODE').Append;
      Getfield('VIOCODE','VIOCODESETID').AsString := GetField('VIOCODESET','VIOCODESETID').AsString;
      Getfield('VIOCODE','CODE').AsString         := tdbfield('LKP_VIOL','CODE');
      Getfield('VIOCODE','DESCR').AsString        := tdbfield('LKP_VIOL','DESCRIPT');
      Getfield('VIOCODE','GRP').AsString          := tdbfield('LKP_VIOL','GRP');
      Getfield('VIOCODE','NARR').AsString         := GetField('LKP_VIOL','COMMENTS').AsString;
      A('VIOCODE').Post;
    end;

    A('LKP_VIOL').Skip(1);
  end;
  CloseApollo('LKP_VIOL');
  CloseApollo('VIOCODE');
  CloseApollo('VIOCODESET');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_VIOL to VIOCODE . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.VioCodeQuickSetButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting QUICKSET to the Violation Code. . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'INS_VIOL',false,'SELECT * FROM INS_VIOL ORDER BY REPORTED');
  Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');

  Gauge.MaxValue := A('INS_VIOL').QueryRecCount;
  Gauge.progress := 0;

  While Not A('INS_VIOL').Eof do begin
    AddStatusListBox(ListBox,'Converting Violation Code Data ' + tdbfield('INS_VIOL','CODE'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE CODE = ' + edbfield('INS_VIOL','CODE'));
    While Not A('VIOCODE').Eof do begin
      A('VIOCODE').Edit;
      Getfield('VIOCODE','QUICKSET').AsString   := 'Y';
      GetField('VIOCODE','DATELAST').AsDateTime := GetField('INS_VIOL','REPORTED').AsDateTime;
      A('VIOCODE').Post;
      A('VIOCODE').Skip(1);
    end;
    A('INS_VIOL').Skip(1);
  end;
  CloseApollo('VIOCODE');
  CloseApollo('INS_VIOL');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting QUICKSET to the Violation Code. . . . Done');
end;

procedure TConvFHForm.VIOCodeSetFHButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting LKP_CAT to VIOCODESET . . . . Started');

  ConnectFH;

  Open_Query(FHDatabase,'LKP_CAT',false,'SELECT * FROM LKP_CAT WHERE CLASS_NM = ' + AddExpr('LKPVIOL') + ' ORDER BY CATEGORY');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE 1=2');

  Gauge.MaxValue := A('LKP_CAT').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_CAT').Eof do begin
    AddStatusListBox(ListBox,'Converting Violation Code Data ' + tdbfield('LKP_CAT','CATEGORY') + ' - ' + tdbfield('LKP_CAT','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    A('VIOCODESET').UpdateSQL('SELECT * FROM VIOCODESET WHERE CODE = ' + edbfield('LKP_CAT','CATEGORY'));
    If A('VIOCODESET').RecordsExist then
      A('VIOCODESET').Edit
    else
      A('VIOCODESET').Append;
    Getfield('VIOCODESET','CODE').AsString         := tdbfield('LKP_CAT','CATEGORY');
    Getfield('VIOCODESET','DESCR').AsString        := tdbfield('LKP_CAT','DESCRIPT');
    A('VIOCODESET').Post;

    A('LKP_CAT').Skip(1);
  end;
  CloseApollo('LKP_CAT');
  CloseApollo('VIOCODESET');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_CAT to VIOCODESET . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.LKP_INVButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting Inventory Setup . . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_INV');

  Open_Query('INVSUBTYPE', true,'SELECT * FROM INVSUBTYPE WHERE 1=2');
  Open_Query('INVFUELTYPE',true,'SELECT * FROM INVFUELTYPE WHERE 1=2');
  Open_Query('INVMANUFACT',true,'SELECT * FROM INVMANUFACT WHERE 1=2');
  Open_Query('HOSEJACKET',true,'SELECT * FROM HOSEJACKET WHERE 1=2');
  Open_Query('HOSECOUPLE',true,'SELECT * FROM HOSECOUPLE WHERE 1=2');
  Open_Query('HOSEMATERIAL',true,'SELECT * FROM HOSEMATERIAL WHERE 1=2');
  Open_Query('HOSECOUPLETHREAD',true,'SELECT * FROM HOSECOUPLETHREAD WHERE 1=2');
  Open_Query('INVSERVTYPE',true,'SELECT * FROM INVSERVTYPE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Converting Inventory Data ' + tdbfield('CODE','CODE') + ' - ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    If (tdbfield('CODE','CATEGORY') = 'INV CLASS') then begin
      A('INVSUBTYPE').UpdateSQL('SELECT * FROM INVSUBTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INVSUBTYPE').RecordsExist then
        A('INVSUBTYPE').Edit
      else
        A('INVSUBTYPE').Append;
      Getfield('INVSUBTYPE','TYPE').AsString  := GetInvSubType(tdbfield('CODE','CODE'));
      Getfield('INVSUBTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('INVSUBTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('INVSUBTYPE').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'INV MAINT') then begin
      A('INVSERVTYPE').UpdateSQL('SELECT * FROM INVSERVTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INVSERVTYPE').RecordsExist then
        A('INVSERVTYPE').Edit
      else
        A('INVSERVTYPE').Append;
      Getfield('INVSERVTYPE','CODE').AsString        := tdbfield('CODE','CODE');
      Getfield('INVSERVTYPE','DESCR').AsString       := tdbfield('CODE','DESCRIPT');
      Getfield('INVSERVTYPE','INVSERVFORM').AsString := GetInvServForm(tdbfield('CODE','CODE'));
      A('INVSERVTYPE').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'FUEL TYPE') then begin
      A('INVFUELTYPE').UpdateSQL('SELECT * FROM INVFUELTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INVFUELTYPE').RecordsExist then
        A('INVFUELTYPE').Edit
      else
        A('INVFUELTYPE').Append;
      Getfield('INVFUELTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('INVFUELTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('INVFUELTYPE').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'INV MAKE') then begin
      A('INVMANUFACT').UpdateSQL('SELECT * FROM INVMANUFACT WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INVMANUFACT').RecordsExist then
        A('INVMANUFACT').Edit
      else
        A('INVMANUFACT').Append;
      Getfield('INVMANUFACT','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('INVMANUFACT','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('INVMANUFACT').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'HOS JCKT') then begin
      A('HOSEJACKET').UpdateSQL('SELECT * FROM HOSEJACKET WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HOSEJACKET').RecordsExist then
        A('HOSEJACKET').Edit
      else
        A('HOSEJACKET').Append;
      Getfield('HOSEJACKET','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HOSEJACKET','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HOSEJACKET').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'HOS CPLR') then begin
      A('HOSECOUPLE').UpdateSQL('SELECT * FROM HOSECOUPLE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HOSECOUPLE').RecordsExist then
        A('HOSECOUPLE').Edit
      else
        A('HOSECOUPLE').Append;
      Getfield('HOSECOUPLE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HOSECOUPLE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HOSECOUPLE').Post;
      
    end else if (tdbfield('CODE','CATEGORY') = 'HOS MATL') then begin
      A('HOSEMATERIAL').UpdateSQL('SELECT * FROM HOSEMATERIAL WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HOSEMATERIAL').RecordsExist then
        A('HOSEMATERIAL').Edit
      else
        A('HOSEMATERIAL').Append;
      Getfield('HOSEMATERIAL','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HOSEMATERIAL','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HOSEMATERIAL').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'HOS THRD') then begin
      A('HOSECOUPLETHREAD').UpdateSQL('SELECT * FROM HOSECOUPLETHREAD WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('HOSECOUPLETHREAD').RecordsExist then
        A('HOSECOUPLETHREAD').Edit
      else
        A('HOSECOUPLETHREAD').Append;
      Getfield('HOSECOUPLETHREAD','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('HOSECOUPLETHREAD','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('HOSECOUPLETHREAD').Post;

    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('INVSUBTYPE');
  CloseApollo('INVFUELTYPE');
  CloseApollo('INVMANUFACT');
  CloseApollo('HOSEJACKET');
  CloseApollo('HOSECOUPLE');
  CloseApollo('HOSEMATERIAL');
  CloseApollo('HOSECOUPLETHREAD');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Inventory Setup . . . . . Completed');
  ShowMessage('Done');
end;

procedure TConvFHForm.RolodexTypeButtonClick(Sender: TObject);
begin
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_INV');

  Open_Query('ROLODEXTYPE',true,'SELECT * FROM ROLODEXTYPE WHERE 1=2');

  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'VEND CLS') then begin
      A('ROLODEXTYPE').UpdateSQL('SELECT * FROM ROLODEXTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('ROLODEXTYPE').RecordsExist then
        A('ROLODEXTYPE').Edit
      else
        A('ROLODEXTYPE').Append;
      Getfield('ROLODEXTYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('ROLODEXTYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('ROLODEXTYPE').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('ROLODEXTYPE');
  FHDatabase.Free;
  ShowMessage('Done');
end;

procedure TConvFHForm.LKP_OCCButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Converting LKP_OCC . . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'LKP_OCC',false,'SELECT * FROM LKP_OCC ORDER BY CATEGORY, GRP, CODE, DESCRIPT');

  Open_Query('PROPSUBTYPE',true,'SELECT * FROM PROPSUBTYPE WHERE 1=2');
  Open_Query('PROPPREPTYPE',true,'SELECT * FROM PROPPREPTYPE WHERE 1=2');
  Open_Query('PROPCONTACTTYPE',true,'SELECT * FROM PROPCONTACTTYPE WHERE 1=2');
  Open_Query('INSPTYPE',true,'SELECT * FROM INSPTYPE WHERE 1=2');
  Open_Query('REDNMXCODE',true,'SELECT * FROM REDNMXCODE WHERE 1=2');

  Gauge.Progress := 0;
  Gauge.MaxValue := A('LKP_OCC').RecordCount;
  While Not A('LKP_OCC').Eof do begin
    If (tdbfield('LKP_OCC','CATEGORY') = 'BLDG CLS') then begin
      A('PROPSUBTYPE').UpdateSQL('SELECT * FROM PROPSUBTYPE WHERE CODE = ' + edbfield('LKP_OCC','CODE'));
      If A('PROPSUBTYPE').RecordsExist then
        A('PROPSUBTYPE').Edit
      else
        A('PROPSUBTYPE').Append;
      Getfield('PROPSUBTYPE','FDID').AsString  := mFireID;
      Getfield('PROPSUBTYPE','CODE').AsString  := tdbfield('LKP_OCC','CODE');
      Getfield('PROPSUBTYPE','DESCR').AsString := tdbfield('LKP_OCC','DESCRIPT');
      A('PROPSUBTYPE').Post;
    end else if (tdbfield('LKP_OCC','CATEGORY') = 'OCC PREP') then begin
      A('PROPPREPTYPE').UpdateSQL('SELECT * FROM PROPPREPTYPE WHERE CODE = ' + edbfield('LKP_OCC','CODE'));
      If A('PROPPREPTYPE').RecordsExist then
        A('PROPPREPTYPE').Edit
      else
        A('PROPPREPTYPE').Append;
      Getfield('PROPPREPTYPE','CODE').AsString  := tdbfield('LKP_OCC','CODE');
      Getfield('PROPPREPTYPE','DESCR').AsString := tdbfield('LKP_OCC','DESCRIPT');
      A('PROPPREPTYPE').Post;
    end else if (tdbfield('LKP_OCC','CATEGORY') = 'OCC CONT') then begin
      A('PROPCONTACTTYPE').UpdateSQL('SELECT * FROM PROPCONTACTTYPE WHERE CODE = ' + edbfield('LKP_OCC','CODE'));
      If A('PROPCONTACTTYPE').RecordsExist then
        A('PROPCONTACTTYPE').Edit
      else
        A('PROPCONTACTTYPE').Append;
      Getfield('PROPCONTACTTYPE','CODE').AsString  := tdbfield('LKP_OCC','CODE');
      Getfield('PROPCONTACTTYPE','DESCR').AsString := tdbfield('LKP_OCC','DESCRIPT');
      A('PROPCONTACTTYPE').Post;
    end else if (tdbfield('LKP_OCC','CATEGORY') = 'INSP TYPE') then begin
      A('INSPTYPE').UpdateSQL('SELECT * FROM INSPTYPE WHERE CODE = ' + edbfield('LKP_OCC','CODE'));
      If A('INSPTYPE').RecordsExist then
        A('INSPTYPE').Edit
      else
        A('INSPTYPE').Append;
      Getfield('INSPTYPE','CODE').AsString  := tdbfield('LKP_OCC','CODE');
      Getfield('INSPTYPE','DESCR').AsString := tdbfield('LKP_OCC','DESCRIPT');
      A('INSPTYPE').Post;

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'ROOF COVER') then begin
      LoadRedNMXCode('ROOFCOVER',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));


    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK APPR') then begin
      LoadRedNMXCode('TANKAPP',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK BASE') then begin
      LoadRedNMXCode('TANKBASE',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK CONS') then begin
      LoadRedNMXCode('TANKCONS',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK CONT') then begin
      LoadRedNMXCode('TANKCONT',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK STAT') then begin
      LoadRedNMXCode('TANKSTAT',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK USER') then begin
      LoadRedNMXCode('TANKUSER',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK LEAK') then begin
      LoadRedNMXCode('TANKLEAKDET',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'TANK PIPE') then begin
      LoadRedNMXCode('PIPECONS',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'INV AMT') then begin
      LoadRedNMXCode('INVAMT',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'STORGE PRS') then begin
      LoadRedNMXCode('STORAGEPRES',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'STORGE TMP') then begin
      LoadRedNMXCode('STORAGETEMP',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));

    end else if (tdbfield('LKP_OCC','CATEGORY') = 'STORGE TYP') then begin
      LoadRedNMXCode('STORAGETYPE',tdbfield('LKP_OCC','CODE'),tdbfield('LKP_OCC','DESCRIPT'));
    end;
    A('LKP_OCC').Skip(1);
    AddStatusListBox(ListBox,'Processing ' + tdbfield('LKP_OCC','CATEGORY') + '  ' + tdbfield('LKP_OCC','CODE') + '  ' + tdbfield('LKP_OCC','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  LoadRedNMXCode('TANKPOSITION','0', 'N/A');
  LoadRedNMXCode('TANKPOSITION','1', 'Vertical');
  LoadRedNMXCode('TANKPOSITION','2', 'Horizontal');

  LoadRedNMXCode('TANKLOCATION','0','N/A');
  LoadRedNMXCode('TANKLOCATION','1','In Ground');
  LoadRedNMXCode('TANKLOCATION','2','Above Ground');

  LoadRedNMXCode('TANKCAPUNIT', '12','Gallons');

  CloseApollo('LKP_OCC');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('PROPPREPTYPE');
  CloseApollo('PROPCONTTYPE');
  CloseApollo('REDNMXCODE');
  CloseApollo('INSPTYPE');
  FHDatabase.Free;

  ShowMessage('Done');

  AddStatusListBox(ListBox,'Converting LKP_OCC . . . . . Done');
end;

procedure TConvFHForm.LoadRedNMXCode(FieldName,Code,Descr: String);
begin
  A('REDNMXCODE').UpdateSQL('SELECT * FROM REDNMXCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + AddExpr(Code));
  If A('REDNMXCODE').RecordsExist then
    A('REDNMXCODE').Edit
  else
    A('REDNMXCODE').Append;
  Getfield('REDNMXCODE','FIELDNAME').AsString := FieldName;
  Getfield('REDNMXCODE','CODE').AsString      := Code;
  Getfield('REDNMXCODE','DESCR').AsString     := Descr;
  Getfield('REDNMXCODE','ACTIVE').AsString    := 'Y';
  A('REDNMXCODE').Post;
end;

procedure TConvFHForm.LKP_UnitButtonClick(Sender: TObject);
Var LKP_Unit : TApolloData;
    FdidVar  : String;
begin
  AddStatusListBox(ListBox,'Converting UNIT . . . . .Started');
  ConnectFH;
  LKP_Unit := Open_query(FHDatabase,false,'SELECT * FROM LKP_UNIT');
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');

  Gauge.MaxValue := LKP_Unit.QueryRecCount;
  Gauge.progress := 0;

  While Not LKP_Unit.Eof do begin
    FdidVar := GetConvFdid(tdbfield(LKP_Unit,'FDID'));

    A('INV').UpdateSQL('SELECT * FROM INV WHERE FDID = ' + AddExpr(FdidVar) + ' AND UNITNUM = ' + AddExpr(LKP_Unit.FieldByName('CODE').AsString) );
    If A('INV').RecordsExist then
      A('INV').Edit
    else
      A('INV').Append;

    Getfield('INV','TYPE').AsString    := 'TRUCK';
    Getfield('INV','FDID').AsString    := FdidVar;
    Getfield('INV','UNITNUM').AsString := GetUnitNum(LKP_Unit.FieldByName('CODE').AsString);
    Getfield('INV','INVNUM').AsString  := LKP_Unit.FieldByName('CODE').AsString;
    Getfield('INV','DESCR').AsString   := LKP_Unit.FieldByName('DESCRIPT').AsString;
    Getfield('INV','N5AORT').AsString  := LKP_Unit.FieldByName('TYPE').AsString;
    Getfield('INV','INCLUDE').AsString := 'Y';
    A('INV').Post;

    AddStatusListBox(ListBox,'Processing ' + LKP_Unit.FieldByName('CODE').AsString);
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;

    LKP_Unit.Next;
  end;
  CloseApollo('INV');
  LKP_Unit.Free;
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting UNIT . . . . .Completed');
  ShowMessage('Done');
end;


function TConvFHForm.CheckDate(DateVar: TDateTime): Boolean;
begin
  If (InitialDateField.Value = 0) or (FinalDateField.Value = 0) then
    CheckDate := true
  else if (InitialDateField.Value <= DateVar) and (FinalDateField.Value >= DateVar) then
    CheckDate := true
  else
    CheckDate := false;
end;

procedure TConvFHForm.NfirsMainButtonClick(Sender: TObject);
Var SQLVar    : String;
    FdidVar   : String;
    PersTotal : Integer;
begin
  AddStatusListBox(ListBox,'Converting Incidents . . . . . Started');

  ConnectFH;

  If (ConvRecordField.Value = '') then
    SQLVar := 'SELECT * FROM INC_MAIN WHERE INC_MAIN.ALM_DATE >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',InitialDateField.Value)) + ' AND INC_MAIN.ALM_DATE <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',FinalDateField.Value)) + ' ORDER BY INC_MAIN.ALM_DATE, INCI_NO'
  else
    SQLVar := 'SELECT * FROM INC_MAIN WHERE INCI_NO = ' + AddExpr(AllTrim(ConvRecordField.Value));

  Inc_MainQuery := Open_Query(FHDatabase,false,SQLVar);
  Inc_InvlQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_INVL WHERE 1=2');
  Inc_AuthQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_AUTH WHERE 1=2');
  Inc_UnitQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_UNIT WHERE 1=2');
  Inc_UActQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_UACT WHERE 1=2');
  Inv_UseQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INV_USE  WHERE 1=2');  
  Act_DetQuery  := Open_Query(FHDatabase,false,'SELECT * FROM ACT_DET  WHERE 1=2');
  Act_MainQuery := Open_Query(FHDatabase,false,'SELECT * FROM ACT_MAIN WHERE 1=2');

  Inc_StruQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_STRU WHERE 1=2');
  Inc_FireQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_FIRE WHERE 1=2');
  Inc_ActQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_ACT  WHERE 1=2');
  Inc_fhfQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_FHF  WHERE 1=2');
  Inc_FmatQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_FMAT WHERE 1=2');
  Inc_FIgnQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_FIGN WHERE 1=2');
  Inc_fsupQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_FSUP WHERE 1=2');
  Inc_MaidQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_MAID WHERE 1=2');

  Inc_FCasQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_FCAS WHERE 1=2');
  Inc_CCasQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_CCAS WHERE 1=2');
  Inc_CCHFQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_CCHF WHERE 1=2');
  Inc_CCFQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_CCF  WHERE 1=2');

  Inc_WthrQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_WTHR WHERE 1=2');
  Inc_WildQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_WILD WHERE 1=2');
  Inc_WCrpQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_WCRP WHERE 1=2');
  Inc_WSUPQuery := Open_Query(FHDatabase,false,'SELECT * FROM INC_WSUP WHERE 1=2');
  Inc_WHFQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_WHF  WHERE 1=2');
  Inc_HAZQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_HAZ  WHERE 1=2');
  Inc_ARSQuery  := Open_Query(FHDatabase,false,'SELECT * FROM INC_ARS  WHERE 1=2');

  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE 1=2');
  Open_Query('PERS',             false,'SELECT FDID, PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS');
  Open_Query('PERSPAYSCALE',     false,'SELECT * FROM PERSPAYSCALE');
  Open_Query('N5DISTRICT',       false,'SELECT * FROM N5DISTRICT');
  Open_Query('SCHDLOC',          false,'SELECT * FROM SCHDLOC');
  Open_Query('NFIRSATTTASK',     false, 'SELECT * FROM NFIRSATTTASK');
  Open_Query('PROP',             false,'SELECT FDID, PROPID, OCCUP_ID FROM PROP');
  Open_Query('INV',              false,'SELECT INVID, INVNUM FROM INV');
  Open_Query('DISPBOX',          false,'SELECT * FROM DISPBOX');
  Open_Query('SCHDSHIFTNAME',    false,'SELECT * FROM SCHDSHIFTNAME');

  Open_Query('NFIRSMAIN',        true, 'SELECT * FROM NFIRSMAIN     WHERE 1=2');
  Open_Query('NFIRSIMAGE',       true, 'SELECT * FROM NFIRSMAIN     WHERE 1=2');
  Open_Query('NFIRSATT',         true, 'SELECT * FROM NFIRSATT      WHERE 1=2');
  Open_Query('NFIRSAPP',         true, 'SELECT * FROM NFIRSAPP      WHERE 1=2');
  Open_Query('NFIRSSTR',         true, 'SELECT * FROM NFIRSSTR      WHERE 1=2');
  Open_Query('NFIRSFIR',         true, 'SELECT * FROM NFIRSFIR      WHERE 1=2');
  Open_Query('NFIRSWILDLAND',    true, 'SELECT * FROM NFIRSWILDLAND WHERE 1=2');
  Open_Query('NFIRSHAZMAT',      true, 'SELECT * FROM NFIRSHAZMAT   WHERE 1=2');
  Open_Query('NFIRSARSON',       true, 'SELECT * FROM NFIRSARSON    WHERE 1=2');
  Open_Query('NFIRSINV',         true, 'SELECT * FROM NFIRSINV      WHERE 1=2');
  Open_Query('NFIRSEQUUSE',      true, 'SELECT * FROM NFIRSEQUUSE   WHERE 1=2');

  Open_Query('DISPCALL',         true, 'SELECT * FROM DISPCALL      WHERE 1=2');
  Open_Query('DISPHIST',         true, 'SELECT * FROM DISPHIST      WHERE 1=2');
  Open_Query('DISPSTATCODE',     false,'SELECT * FROM DISPSTATCODE');
  Open_Query('DISPSET',          false,'SELECT * FROM DISPSET WHERE FDID = ' + AddExpr(mFireID));

  Open_Query('NFIRSINVTYPE',     false,'SELECT * FROM NFIRSINVTYPE');
  Open_Query('PERSSCHDROLE',     false,'SELECT * FROM PERSSCHDROLE');

  Open_Query('NFIRSFIRECASUALTY',true, 'SELECT * FROM NFIRSFIR  WHERE 1=2');
  Open_Query('NFIRSCIVILIAN',    true, 'SELECT * FROM NFIRSCIVILIAN WHERE 1=2');
  Open_Query('NFIRSMAID',        true, 'SELECT * FROM NFIRSMAID WHERE 1=2');

  Open_Query('GETNFIRSAPP',      false,'SELECT NFIRSAPPID FROM NFIRSAPP WHERE 1=2');

  Open_Query('SCHDHIST',         true, 'SELECT * FROM NFIRSMAID WHERE 1=2');
  Open_Query('SCHDTYPE',         false,'SELECT * FROM SCHDTYPE');

  Open_Query('FDID',             false,'SELECT FDID, DEPTNAME FROM FDID');


  Gauge.MaxValue := Inc_MainQuery.QueryRecCount;
  Gauge.progress := 0;
  While Not Inc_MainQuery.Eof do begin
    inci_id := Inc_MainQuery.FieldByName('inci_id').AsString;
    inci_no := Inc_MainQuery.FieldByName('inci_no').AsString;
    Exp_No  := padl(alltrim(Inc_MainQuery.FieldByName('EXP_NO').AsString),2,'0');
    FdidVar := GetConvFdid(Inc_MainQuery.FieldByName('FDID').AsString);

    if ((AllTrim(FDIDVar) = '00012') or (AllTrim(FDIDVar) = '12')) then
      FdidVar := '21012';

    If FdidVar = '26600' then
      IncNum  := AlpineFormatDateTime('YYYY',GetField(Inc_MainQuery,'ALM_DATE').AsDateTime) + '00' + substr(Inc_MainQuery.FieldByName('inci_no').AsString,7,4)
    else if (MFireID = '21012') then
      IncNum  := Inc_MainQuery.FieldByName('inci_no').AsString
    else if substr(Inc_MainQuery.FieldByName('inci_no').AsString,1,1) ='9' then
      IncNum  := '19' + substr(Inc_MainQuery.FieldByName('inci_no').AsString,1,2) + substr(Inc_MainQuery.FieldByName('inci_no').AsString,5,6)
    else
      IncNum  := '20' + substr(Inc_MainQuery.FieldByName('inci_no').AsString,1,2) + substr(Inc_MainQuery.FieldByName('inci_no').AsString,5,6);

    A('NFIRSMAIN').UpdateSQL('SELECT * FROM NFIRSMAIN WHERE FDID = ' + AddExpr(FdidVar) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(Exp_No));

    If A('NFIRSMAIN').RecordsExist then
      A('NFIRSMAIN').Edit
    else
      A('NFIRSMAIN').Append;

    LoadNfirsMain;

    GetTable('NFIRSMAIN').Post;
    NfirsMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString;

    LoadDispCall;
    LoadNfirsApp;
    LoadNfirsAtt;
    LoadNfirsFire;
    LoadNfirsStr;
    LoadNfirsCivilian;
    LoadNfirsFireCasualty;
    LoadNfirsMaid;
    LoadNfirsWildLand;

    LoadNfirsHazMat;
    LoadNfirsImage;
    LoadNfirsArson;
    LoadNfirsInv;
    LoadNfirsEquUse;


    PersTotal := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSATT WHERE NFIRSMAINID = ' + pkvalue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
    RunSQL('UPDATE NFIRSMAIN SET PERSTOTAL = ' + IntToStr(PersTotal) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
 
    Inc_MainQuery.Skip(1);
    AddStatusListBox(ListBox,'Converting Incident Number ' + Tdbfield('NFIRSMAIN','INCNUM') + ' for date ' + FormatDateTime('MM/DD/YYYY',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime));

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  Inc_MainQuery.Free;
  Inc_InvlQuery.Free;
  Inc_AuthQuery.Free;
  Inc_UnitQuery.Free;
  Inc_UActQuery.Free;
  Inv_UseQuery.Free;
  Act_DetQuery.Free;
  Act_MainQuery.Free;
  Inc_StruQuery.Free;
  Inc_FireQuery.Free;
  Inc_ActQuery.Free;
  Inc_fhfQuery.Free;
  Inc_FmatQuery.Free;
  Inc_FIgnQuery.Free;
  Inc_fsupQuery.Free;
  Inc_MaidQuery.Free;
  Inc_FCasQuery.Free;
  Inc_CCasQuery.Free;
  Inc_CCHFQuery.Free;
  Inc_CCFQuery.Free;
  Inc_WildQuery.Free;
  Inc_WthrQuery.Free;
  Inc_WCrpQuery.Free;
  Inc_WHFQuery.Free;
  Inc_WSUPQuery.Free;
  Inc_HAZQuery.Free;
  Inc_ARSQuery.Free;

  FHDatabase.Free;

  CloseApollo('PERS');
  CloseApollo('PERSPAYSCALE');
  CloseApollo('N5DISTRICT');
  CloseApollo('SCHDLOC');
  CloseApollo('PROP');
  CloseApollo('INV');
  CloseApollo('DISPBOX');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('ATT_FILE');

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSIMAGE');
  CloseApollo('NFIRSAPP');
  CloseApollo('NFIRSATTTASK');
  CloseApollo('NFIRSATT');
  CloseApollo('NFIRSSTR');
  CloseApollo('NFIRSFIR');
  CloseApollo('NFIRSWILDLAND');
  CloseApollo('NFIRSHAZMAT');
  CloseApollo('NFIRSARSON');
  CloseApollo('NFIRSINV');
  CloseApollo('NFIRSEQUUSE');

  CloseApollo('DISPCALL');
  CloseApollo('DISPHIST');
  CloseApollo('DISPSTATCODE');
  CloseApollo('DISPSET');

  CloseApollo('NFIRSINVTYPE');
  CloseApollo('PERSSCHDROLE');

  CloseApollo('NFIRSFIRECASUALTY');
  CloseApollo('NFIRSCIVILIAN');
  CloseApollo('NFIRSMAID');

  CloseApollo('GETNFIRSAPP');

  CloseApollo('SCHDHIST');
  CloseApollo('SCHDTYPE');
  CloseApollo('FDID');

  AddStatusListBox(ListBox,'Converting Incidents . . . . . Completed');
  ShowMessage('Finished');
end;

function GetSitFound(Code: String): String;
begin
  If (mFireID = '47000') and (Code = '3111') then
    GetSitFound := '321'
  else
    GetSitFound := Code;
end;

procedure TConvFHForm.LoadNfirsMain;
Var FdidVar : String;
begin
  FdidVar                                     := GetConvFdid(Inc_MainQuery.FieldByName('FDID').AsString);

  If A('FDID').ExactQueryLocate('FDID',FdidVar) then
    GetField('NFIRSMAIN','FDID').AsString       := FdidVar
  else
    GetField('NFIRSMAIN','FDID').AsString       := mFireID;
    
  GetField('NFIRSMAIN','INCNUM').AsString     := IncNum;
  GetField('NFIRSMAIN','EXPNUM').AsString     := Exp_No;
  GetField('NFIRSMAIN','STRNUM').AsString     := padl(alltrim(Inc_MainQuery.FieldByName('number').AsString),8,' ');
  GetField('NFIRSMAIN','STREET').AsString     := alltrim(rtrim(Inc_MainQuery.FieldByName('st_prefix').AsString) + ' ' + rtrim(Inc_MainQuery.FieldByName('street').AsString) + ' ' + rtrim(Inc_MainQuery.FieldByName('st_type').AsString) + ' ' + rtrim(Inc_MainQuery.FieldByName('st_suffix').AsString));
  GetField('NFIRSMAIN','CITY').AsString       := Inc_MainQuery.FieldByName('CITY').AsString;
  GetField('NFIRSMAIN','STATE').AsString      := Inc_MainQuery.FieldByName('STATE').AsString;
  GetField('NFIRSMAIN','ZIP').AsString        := Inc_MainQuery.FieldByName('ZIP').AsString;
  GetField('NFIRSMAIN','CENSUS').AsString     := Inc_MainQuery.FieldByName('CENSUS').AsString;
  GetField('NFIRSMAIN','LOCTYPE').AsString    := Inc_MainQuery.FieldByName('ADDR_TYPE').AsString;
  GetField('NFIRSMAIN','ROOMAPT').AsString    := alltrim(Inc_MainQuery.FieldByName('apt_room').AsString);
  GetField('NFIRSMAIN','CROSS1').AsString     := Inc_MainQuery.FieldByName('xstreet').AsString;
  if mFireID = '21012' then
    GetField('NFIRSMAIN','CROSS1').AsString     := Inc_MainQuery.FieldByName('rural').AsString;

  GetField('NFIRSMAIN','SITFOUND').AsString   := GetSitFound(Inc_MainQuery.FieldByName('inci_type').AsString);
  GetField('NFIRSMAIN','MAID').AsString       := Inc_MainQuery.FieldByName('mutl_aid').AsString;

  if mFireID = '21012' then begin
      GetField('NFIRSMAIN','CAD_County').AsString       := alltrim(Inc_MainQuery.FieldByName('county').AsString);
      GetField('NFIRSMAIN','CAD_Town').AsString         := alltrim(Inc_MainQuery.FieldByName('township').AsString);
  end;

  If A('PROP').ExactQueryLocate(['FDID','OCCUP_ID'],[FdidVar,Inc_MainQuery.FieldByName('OCCUP_ID').AsString]) then
    GetField('NFIRSMAIN','PROPID').AsString   := GetField('PROP','PROPID').AsString
  else if A('PROP').ExactQueryLocate(['OCCUP_ID'],[Inc_MainQuery.FieldByName('OCCUP_ID').AsString]) then
    GetField('NFIRSMAIN','PROPID').AsString   := GetField('PROP','PROPID').AsString;
  GetField('NFIRSMAIN','ALARMNUM').AsString   := Inc_MainQuery.FieldByName('alarms').AsString;
  GetField('NFIRSMAIN','APPSUPP').AsString    := Inc_MainQuery.FieldByName('app_supp').AsString;
  GetField('NFIRSMAIN','APPEMS').AsString     := Inc_MainQuery.FieldByName('app_ems').AsString;
  GetField('NFIRSMAIN','APPOTH').AsString     := Inc_MainQuery.FieldByName('app_other').AsString;
  GetField('NFIRSMAIN','PERSSUPP').AsString   := Inc_MainQuery.FieldByName('per_supp').AsString;
  GetField('NFIRSMAIN','PERSEMS').AsString    := Inc_MainQuery.FieldByName('per_ems').AsString;
  GetField('NFIRSMAIN','PERSOTH').AsString    := Inc_MainQuery.FieldByName('per_other').AsString;

  If A('N5DISTRICT').ExactQueryLocate('CODE',Inc_MainQuery.FieldByName('DISTRICT').AsString) then
    GetField('NFIRSMAIN','N5DISTRICTID').AsString := GetField('N5DISTRICT','N5DISTRICTID').AsString;

  If A('DISPBOX').ExactQueryLocate('CODE',Inc_MainQuery.FieldByName('ALM_TYPE').AsString) then
    GetField('NFIRSMAIN','DISPBOXID').AsString := GetField('DISPBOX','DISPBOXID').AsString;

  If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',Inc_MainQuery.FieldByName('SHIFT').AsString) then
    GetField('NFIRSMAIN','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;



  If Inc_MainQuery.FieldByName('PROP_LOSS').AsFloat > 0 then
    GetField('NFIRSMAIN','LOSSPROP').AsString   := Inc_MainQuery.FieldByName('PROP_LOSS').AsString;
  If Inc_MainQuery.FieldByName('CONT_LOSS').AsFloat > 0 then
    GetField('NFIRSMAIN','LOSSCONT').AsString   := Inc_MainQuery.FieldByName('CONT_LOSS').AsString;
  If Inc_MainQuery.FieldByName('PROP_VAL').AsFloat > 0 then
    GetField('NFIRSMAIN','VALPROP').AsString    := Inc_MainQuery.FieldByName('PROP_VAL').AsString;
  If Inc_MainQuery.FieldByName('CONT_VAL').AsFloat > 0 then
    GetField('NFIRSMAIN','VALCONT').AsString    := Inc_MainQuery.FieldByName('CONT_VAL').AsString;

  GetField('NFIRSMAIN','INJFIRE').AsString    := Inc_MainQuery.FieldByName('inj_fs').AsString;
  GetField('NFIRSMAIN','INJCIV').AsString     := Inc_MainQuery.FieldByName('inj_civ').AsString;
  GetField('NFIRSMAIN','FATFIRE').AsString    := Inc_MainQuery.FieldByName('fatal_fs').AsString;
  GetField('NFIRSMAIN','FATCIV').AsString     := Inc_MainQuery.FieldByName('fatal_civ').AsString;
  GetField('NFIRSMAIN','DETECTOR').AsString   := Inc_MainQuery.FieldByName('det_alert').AsString;
  GetField('NFIRSMAIN','HAZMAT').AsString     := Inc_MainQuery.FieldByName('haz_rel').AsString;
  GetField('NFIRSMAIN','COMPLEX').AsString    := Inc_MainQuery.FieldByName('mixed_use').AsString;
  GetField('NFIRSMAIN','FIXPROP').AsString    := Inc_MainQuery.FieldByName('prop_use').AsString;
  GetField('NFIRSMAIN','NARR').AsString       := Inc_MainQuery.FieldByName('narrative').AsString;
  GetField('NFIRSMAIN','DONE').AsString       := IIf(Inc_MainQuery.FieldByName('Complete').AsBoolean,'Y','N');
  GetField('NFIRSMAIN','RVSTAT').AsString     := IIf(Inc_MainQuery.FieldByName('Complete').AsBoolean,'RC','PR');

  If Inc_MainQuery.FieldByName('alm_date').AsDateTime > 0 then begin
    try
      GetField('NFIRSMAIN','DATETIMEALARM').AsString := Inc_MainQuery.FieldByName('alm_date').AsString + ' ' + Inc_MainQuery.FieldByName('alm_time').AsString;
    except
    end;
  end;

  If Inc_MainQuery.FieldByName('arv_date').AsDateTime > 0 then begin
    try
      GetField('NFIRSMAIN','DATETIMEARR').AsString := Inc_MainQuery.FieldByName('arv_date').AsString + ' ' + Inc_MainQuery.FieldByName('arv_time').AsString;
    except
    end;
  end;


  If GetDATETIMEOUT(inci_id) <> '' then begin
    try
      GetField('NFIRSMAIN','DATETIMEOUT').AsString := GetDATETIMEOUT(inci_id);
    except
    end;
  end;


  If Inc_MainQuery.FieldByName('ctrl_date').AsDateTime > 0 then begin
    try
      GetField('NFIRSMAIN','DATETIMECONT').AsString := Inc_MainQuery.FieldByName('ctrl_date').AsString + ' ' + Inc_MainQuery.FieldByName('ctrl_time').AsString;
    except
    end;
  end;

  If Inc_MainQuery.FieldByName('clr_date').AsDateTime > 0 then begin
    try
      GetField('NFIRSMAIN','DATETIMEIN').AsString := Inc_MainQuery.FieldByName('clr_date').AsString + ' ' + Inc_MainQuery.FieldByName('clr_time').AsString;
    except
    end;
  end;

  If (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime > 0) and (GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime > 0) then
    GetField('NFIRSMAIN','EVLENGTH').AsFloat := 24 * (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime - GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime);

  Inc_InvlQuery.UpdateSQL('select * from inc_invl where inci_id = ' + AddExpr(inci_id));
  While Not Inc_InvlQuery.Eof do begin
    If Inc_InvlQuery.FieldByName('occupant').AsBoolean then begin
      GetField('NFIRSMAIN','PLASTNAME').AsString   := Inc_InvlQuery.FieldByName('last').AsString;
      GetField('NFIRSMAIN','PFIRSTNAME').AsString  := Inc_InvlQuery.FieldByName('first').AsString;
      GetField('NFIRSMAIN','PESTREET').AsString    := Inc_InvlQuery.FieldByName('addr_1').AsString;
      GetField('NFIRSMAIN','PEROOMAPT').AsString   := Inc_InvlQuery.FieldByName('apt_room').AsString;
      GetField('NFIRSMAIN','PECITY').AsString      := Inc_InvlQuery.FieldByName('city').AsString;
      GetField('NFIRSMAIN','PESTATE').AsString     := Inc_InvlQuery.FieldByName('state').AsString;
      GetField('NFIRSMAIN','PEZIP').AsString       := Inc_InvlQuery.FieldByName('zip').AsString;
      GetField('NFIRSMAIN','BUSNAME').AsString     := Inc_InvlQuery.FieldByName('institution').AsString;     //change for swnasea
    end;
    If Inc_InvlQuery.FieldByName('owner').AsBoolean then begin
      GetField('NFIRSMAIN','OLASTNAME').AsString   := Inc_InvlQuery.FieldByName('last').AsString;
      GetField('NFIRSMAIN','OFIRSTNAME').AsString  := Inc_InvlQuery.FieldByName('first').AsString;
      GetField('NFIRSMAIN','OSTREET').AsString     := Inc_InvlQuery.FieldByName('addr_1').AsString;
      GetField('NFIRSMAIN','OROOMAPT').AsString    := Inc_InvlQuery.FieldByName('apt_room').AsString;
      GetField('NFIRSMAIN','OCITY').AsString       := Inc_InvlQuery.FieldByName('city').AsString;
      GetField('NFIRSMAIN','OSTATE').AsString      := Inc_InvlQuery.FieldByName('state').AsString;
      GetField('NFIRSMAIN','OZIP').AsString        := Inc_InvlQuery.FieldByName('zip').AsString;
      GetField('NFIRSMAIN','OBUSINESS').AsString   := Inc_InvlQuery.FieldByName('institution').AsString;        //change for swansea
    end;
    Inc_InvlQuery.Next;
  end;

  Inc_AuthQuery.UpdateSQL('select * from inc_auth where inci_ID = ' + AddExpr(inci_id));
  While Not Inc_AuthQuery.Eof do begin
    If Inc_AuthQuery.FieldByName('auth_type').AsString  = 'MM ' then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[Inc_AuthQuery.FieldByName('staff_id').AsString,tdbfield('NFIRSMAIN','FDID')]) then begin
        GetField('NFIRSMAIN','PERSIDMAKEREP').AsString   := GetField('PERS','PERSID').AsString;
        GetField('NFIRSMAIN','MEMREP').AsString          := GetField('PERS','LNAME').AsString;
        GetField('NFIRSMAIN','MRFIRST').AsString         := GetField('PERS','FNAME').AsString;
        GetField('NFIRSMAIN','MRMI').AsString            := Substr(GetField('PERS','MNAME').AsString,1,1);
        GetField('NFIRSMAIN','MEMRANK').AsString         := Inc_AuthQuery.FieldByName('rank').AsString;
        GetField('NFIRSMAIN','MEMDATE').AsString         := Inc_AuthQuery.FieldByName('date').AsString;
      end;
    end;

    If Inc_AuthQuery.FieldByName('auth_type').AsString  = 'OC ' then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[Inc_AuthQuery.FieldByName('staff_id').AsString,tdbfield('NFIRSMAIN','FDID')]) then begin
        GetField('NFIRSMAIN','PERSIDOFFCHARGE').AsString   := GetField('PERS','PERSID').AsString;
        GetField('NFIRSMAIN','OFFCHARGE').AsString         := GetField('PERS','LNAME').AsString;
        GetField('NFIRSMAIN','OCFIRST').AsString           := GetField('PERS','FNAME').AsString;
        GetField('NFIRSMAIN','OCMI').AsString              := Substr(GetField('PERS','MNAME').AsString,1,1);
        GetField('NFIRSMAIN','OFFRANK').AsString           := Inc_AuthQuery.FieldByName('rank').AsString;
        GetField('NFIRSMAIN','OFFDATE').AsString           := Inc_AuthQuery.FieldByName('date').AsString;
      end;
    end;

    If Inc_AuthQuery.FieldByName('auth_type').AsString  = 'QC ' then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[Inc_AuthQuery.FieldByName('staff_id').AsString,tdbfield('NFIRSMAIN','FDID')]) then begin
        GetField('NFIRSMAIN','PERSIDREVIEW').AsString   := GetField('PERS','PERSID').AsString;
        GetField('NFIRSMAIN','RVLAST').AsString         := GetField('PERS','LNAME').AsString;
        GetField('NFIRSMAIN','RVFIRST').AsString        := GetField('PERS','FNAME').AsString;
        GetField('NFIRSMAIN','RVMI').AsString           := Substr(GetField('PERS','MNAME').AsString,1,1);
        GetField('NFIRSMAIN','RVRANK').AsString         := Inc_AuthQuery.FieldByName('rank').AsString;
        GetField('NFIRSMAIN','RVDATE').AsString         := Inc_AuthQuery.FieldByName('date').AsString;
      end;
    end;

    INC_AuthQuery.Next;
  end;

  Inc_ActQuery.UpdateSQL('select * from Inc_Act where inci_ID = ' + AddExpr(inci_id));
  While Not Inc_ActQuery.Eof do begin
    if (Inc_ActQuery.FieldByName('sequence').AsString = '1') then begin
      GetField('NFIRSMAIN','TYPEACT').AsString      := Inc_ActQuery.FieldByName('code').AsString;
    end else if (Inc_ActQuery.FieldByName('sequence').AsString = '2') then begin
      GetField('NFIRSMAIN','ACTION2').AsString      := Inc_ActQuery.FieldByName('code').AsString;
    end else if (Inc_ActQuery.FieldByName('sequence').AsString = '3') then begin
      GetField('NFIRSMAIN','ACTION3').AsString     := Inc_ActQuery.FieldByName('code').AsString;
    end;
    Inc_ActQuery.Next;
  end;

  If (tdbfield('NFIRSMAIN','FDID') = 'EGELS') then begin
    GetField('NFIRSMAIN','MTFDCOMPNAME').AsString    := Inc_MainQuery.FieldByName('ALM_TYPE').AsString;
    GetField('NFIRSMAIN','MTFDCOSTREC').AsString     := Inc_MainQuery.FieldByName('E911_USED').AsString;
  end;
  if mfireid = '05292'then
    GetField('NFIRSMAIN','E911USED').AsString       := Inc_MainQuery.FieldByName('E911_USED').AsString;
  If mFireID = '21012' then
    GetField('NFIRSMAIN','LATCALLTYPE').AsString    := Inc_MainQuery.FieldByName('ALM_TYPE').AsString;
end;


procedure TConvFHForm.LoadDispCall;
begin
  If CheckModule('CADINT') or CheckModule('DISP') then begin

    A('DISPCALL').UpdateSQL('SELECT * FROM DISPCALL WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
    If  A('DISPCALL').RecordsExist then
      GetTable('DISPCALL').Edit
    else
      GetTable('DISPCALL').Append;

    GetField('DISPCALL','NFIRSMAINID').AsString       := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('DISPCALL','FDID').AsString              := tdbfield('NFIRSMAIN','FDID');
  If Inc_MainQuery.FieldByName('disp_date').AsDateTime > 0 then begin
    try
      GetField('DISPCALL','DATETIMEDISP').AsString      := Inc_MainQuery.FieldByName('disp_date').AsString + ' ' + Inc_MainQuery.FieldByName('disp_time').AsString;
    except
    end;
  end;

    GetField('DISPCALL','STRNUM').AsString            := alltrim(tdbfield('NFIRSMAIN','STRNUM'));
    GetField('DISPCALL','STREET').AsString            := tdbfield('NFIRSMAIN','STREET');
    GetField('DISPCALL','CITY').AsString              := tdbfield('NFIRSMAIN','CITY');
    GetField('DISPCALL','STATE').AsString             := tdbfield('NFIRSMAIN','STATE');
    GetField('DISPCALL','ZIP').AsString               := tdbfield('NFIRSMAIN','ZIP');
    GetField('DISPCALL','ADDRESS').AsString           := alltrim(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET'));
    GetField('DISPCALL','DATETIMEREC').AsString       := GetField('NFIRSMAIN','DATETIMEALARM').AsString;
    GetField('DISPCALL','DATETIMEIN').AsString        := GetField('NFIRSMAIN','DATETIMEIN').AsString;
    GetField('DISPCALL','INCSTAT').AsString           := 'CLOSED';
    GetTable('DISPCALL').Post;

    RunSQL('UPDATE NFIRSMAIN SET DISPCALLID = ' + GetField('DISPCALL','DISPCALLID').AsString + ' WHERE NFIRSMAINID = ' + pkValue(GetField('NFIRSMAIN','NFIRSMAINID').AsString));
  end;
end;



procedure TConvFHForm.LoadNfirsFire;
Var HumanFactor : String;
begin
  Inc_FireQuery.UpdateSQL('select * from Inc_Fire where inci_ID = ' + AddExpr(inci_id));
  If Inc_FireQuery.RecordsExist then begin
    A('NFIRSFIR').UpdateSQL('SELECT * FROM NFIRSFIR WHERE NFIRSMAINID = ' + NfirsMainID);
    If A('NFIRSFIR').RecordsExist then
      A('NFIRSFIR').Edit
    else
      A('NFIRSFIR').Append;
    GetField('NFIRSFIR','NFIRSMAINID').AsString  := NfirsMainID;
    GetField('NFIRSFIR','NUMRESUNIT').AsString   := Inc_FireQuery.FieldByName('units').AsString;
    GetField('NFIRSFIR','NOTRESFLAG').AsString   := IIf(Inc_FireQuery.FieldByName('not_resid').AsBoolean ,'Y','N');
    GetField('NFIRSFIR','NUMBUILD').AsString     := Inc_FireQuery.FieldByName('buildings').AsString;
    GetField('NFIRSFIR','BUILDNOINV').AsString   := IIf( Inc_FireQuery.FieldByName('no_bldgs').AsBoolean,'Y','N');
    GetField('NFIRSFIR','ACREBURN').AsString     := Inc_FireQuery.FieldByName('acres_burn').AsString;
    GetField('NFIRSFIR','ACRENONE').AsString     := IIf( Inc_FireQuery.FieldByName('no_acres').AsBoolean,'Y','N');
    GetField('NFIRSFIR','LESSONEACR').AsString   := IIf( Inc_FireQuery.FieldByName('less_one_acre').AsBoolean,'Y','N');     //changed for swansea
    GetField('NFIRSFIR','NOIGNITION').AsString   := Inc_FireQuery.FieldByName('no_matl').AsString;
    GetField('NFIRSFIR','AREAORIGIN').AsString   := Inc_FireQuery.FieldByName('area_org').AsString;
    GetField('NFIRSFIR','HEATSOURCE').AsString   := Inc_FireQuery.FieldByName('heat_src').AsString;
    GetField('NFIRSFIR','ITEMFIRST').AsString    := Inc_FireQuery.FieldByName('item_type').AsString;
    GetField('NFIRSFIR','CONFINEDTO').AsString   := IIf(Inc_FireQuery.FieldByName('confined_orig').AsBoolean,'1','');   //changed for swansea

    If tdbfield(Inc_FireQuery,'matl_type') = '' then
      GetField('NFIRSFIR','TYPEMAT').AsString    := 'UU'
    else
      GetField('NFIRSFIR','TYPEMAT').AsString := Inc_FireQuery.FieldByName('matl_type').AsString;

    GetField('NFIRSFIR','CAUSEIGN').AsString     := Inc_FireQuery.FieldByName('cause_ign').AsString;
    GetField('NFIRSFIR','EQUINV').AsString       := Inc_FireQuery.FieldByName('eqp_invl').AsString;
    GetField('NFIRSFIR','EQUBRAND').AsString     := Inc_FireQuery.FieldByName('eqp_brand').AsString;
    GetField('NFIRSFIR','EQUMODEL').AsString     := Inc_FireQuery.FieldByName('eqp_model').AsString;
    GetField('NFIRSFIR','EQUSERIAL').AsString    := Inc_FireQuery.FieldByName('eqp_sn').AsString;

    If AnyStrToInt( tdbfield(Inc_FireQuery,'eqp_year') ) > 1900 then
      GetField('NFIRSFIR','EQUYEAR').AsString      := Inc_FireQuery.FieldByName('eqp_year').AsString
    else
      GetField('NFIRSFIR','EQUYEAR').AsString      := '';

    GetField('NFIRSFIR','EQUPOWER').AsString     := Inc_FireQuery.FieldByName('eqp_power').AsString;
    GetField('NFIRSFIR','EQUPORT').AsString      := Inc_FireQuery.FieldByName('eqp_port').AsString;
    GetField('NFIRSFIR','MOBINV').AsString       := Inc_FireQuery.FieldByName('mobl_invl').AsString;
    If Not (tdbfield('NFIRSFIR','MOBINV') = 'N') and Not (tdbfield('NFIRSFIR','MOBINV') = '') then begin
      GetField('NFIRSFIR','MOBTYPE').AsString      := Inc_FireQuery.FieldByName('mobl_prop').AsString;
      GetField('NFIRSFIR','MOBMAKE').AsString      := Inc_FireQuery.FieldByName('mobl_make').AsString;
      GetField('NFIRSFIR','MOBMODEL').AsString     := Inc_FireQuery.FieldByName('mobl_model').AsString;

      If AnyStrToInt( tdbfield(Inc_FireQuery,'mobl_year') ) > 1900 then
        GetField('NFIRSFIR','MOBYEAR').AsString      := Inc_FireQuery.FieldByName('mobl_year').AsString
      else
        GetField('NFIRSFIR','MOBYEAR').AsString      := '';

      GetField('NFIRSFIR','MOBLIC').AsString       := Inc_FireQuery.FieldByName('mobl_plate').AsString;
      GetField('NFIRSFIR','MOBSTATE').AsString     := Inc_FireQuery.FieldByName('mobl_state').AsString;
      GetField('NFIRSFIR','MOBSER').AsString       := Inc_FireQuery.FieldByName('mobl_vin').AsString;
    end;

    Inc_fsupQuery.UpdateSQL('select * from Inc_fsup where inci_ID = ' + AddExpr(inci_id));
    While Not Inc_fsupQuery.Eof do begin
      If (Inc_fsupQuery.FieldByName('sequence').AsString = '1') then
        GetField('NFIRSFIR','FIRESUPP1').AsString := Inc_fsupQuery.FieldByName('factor').AsString;
      Inc_fsupQuery.Next;
    end;

    Inc_fignQuery.UpdateSQL('select * from Inc_fign where inci_ID = ' + AddExpr(inci_id));
    While Not Inc_fignQuery.Eof do begin
      If (Inc_fignQuery.FieldByName('sequence').AsString = '1') then
        GetField('NFIRSFIR','CONTIGN1').AsString := Inc_fignQuery.FieldByName('factor').AsString;
      Inc_fignQuery.Next;
    end;

    Inc_fhfQuery.UpdateSQL('select * from inc_fhf where inci_id = ' + AddExpr(inci_id));
    While Not Inc_fhfQuery.Eof do begin
      HumanFactor := substr(Inc_fhfQuery.FieldByName('factor').AsString,1,1);
      If alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '1' then
        GetField('NFIRSFIR','HUMAN1').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '2' then
        GetField('NFIRSFIR','HUMAN2').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '3' then
        GetField('NFIRSFIR','HUMAN3').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '4' then
        GetField('NFIRSFIR','HUMAN4').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '5' then
        GetField('NFIRSFIR','HUMAN5').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '6' then
        GetField('NFIRSFIR','HUMAN6').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = '7' then
        GetField('NFIRSFIR','HUMAN7').AsString        := HumanFactor
      else if alltrim(Inc_fhfQuery.FieldByName('factor').AsString) = 'N' then
        GetField('NFIRSFIR','NOCAUSE').AsString       := HumanFactor;

      If (Inc_fhfQuery.FieldByName('age').AsInteger > 0 ) then
        GetField('NFIRSFIR','CAUSEAGE').AsString      := Inc_fhfQuery.FieldByName('age').AsString;
      GetField('NFIRSFIR','HUMANSEX').AsString        := Inc_fhfQuery.FieldByName('gender').AsString;
      Inc_fhfQuery.Next;
    end;

    If tdbfield('NFIRSFIR','HUMAN1') + tdbfield('NFIRSFIR','HUMAN2')  + tdbfield('NFIRSFIR','HUMAN3') +
       tdbfield('NFIRSFIR','HUMAN4') + tdbfield('NFIRSFIR','HUMAN5')  + tdbfield('NFIRSFIR','HUMAN6') +
       tdbfield('NFIRSFIR','HUMAN7') = '' then
      GetField('NFIRSFIR','NOCAUSE').AsString := 'N'
    else
      GetField('NFIRSFIR','NOCAUSE').AsString := '';

    Inc_FmatQuery.UpdateSQL('select * from Inc_Fmat where inci_ID = ' + AddExpr(inci_id));
    While Not Inc_FmatQuery.Eof do begin
      if (Inc_FmatQuery.FieldByName('sequence').AsString = '1') then begin
        GetField('NFIRSFIR','ONSITE1').AsString      := Inc_FmatQuery.FieldByName('site_matl').AsString;
        GetField('NFIRSFIR','STORAGE1').AsString      := Inc_FmatQuery.FieldByName('site_use').AsString;
      end else if (Inc_FmatQuery.FieldByName('sequence').AsString = '2') then begin
        GetField('NFIRSFIR','ONSITE2').AsString      := Inc_FmatQuery.FieldByName('site_matl').AsString;
        GetField('NFIRSFIR','STORAGE2').AsString     := Inc_FmatQuery.FieldByName('site_use').AsString;
      end else if (Inc_FmatQuery.FieldByName('sequence').AsString = '3') then begin
        GetField('NFIRSFIR','ONSITE3').AsString     := Inc_FmatQuery.FieldByName('site_matl').AsString;
        GetField('NFIRSFIR','STORAGE3').AsString     := Inc_FmatQuery.FieldByName('site_use').AsString;
      end;
      Inc_FmatQuery.Next;
    end;

    If (tdbfield('NFIRSFIR','ONSITE1') = 'NNN') or (tdbfield('NFIRSFIR','ONSITE1') = '') then begin
      GetField('NFIRSFIR','ONSITENONE').AsString := 'NNN';
      GetField('NFIRSFIR','ONSITE1').AsString    := '';
      GetField('NFIRSFIR','STORAGE1').AsString   := '';
      GetField('NFIRSFIR','ONSITE2').AsString    := '';
      GetField('NFIRSFIR','STORAGE2').AsString   := '';
      GetField('NFIRSFIR','ONSITE3').AsString    := '';
      GetField('NFIRSFIR','STORAGE3').AsString   := '';
    end else
      GetField('NFIRSFIR','ONSITENONE').AsString   := '';
    A('NFIRSFIR').Post;
    Inc_FireQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsStr;
begin
  Inc_StruQuery.UpdateSQL('select * from Inc_Stru where inci_ID = ' + AddExpr(inci_id));
  If Inc_StruQuery.RecordsExist then begin
    A('NFIRSSTR').UpdateSQL('SELECT * FROM NFIRSSTR WHERE NFIRSMAINID = ' + NfirsMainID);
    If A('NFIRSSTR').RecordsExist then
      A('NFIRSSTR').Edit
    else
      A('NFIRSSTR').Append;
    GetField('NFIRSSTR','NFIRSMAINID').AsString:= NfirsMainID;
    GetField('NFIRSSTR','STRTYPE').AsString    := Inc_StruQuery.FieldByName('stru_type').AsString;
    GetField('NFIRSSTR','BUILDSTAT').AsString  := Inc_StruQuery.FieldByName('bldg_stat').AsString;
    GetField('NFIRSSTR','BLDHEIGHT').AsString  := Inc_StruQuery.FieldByName('floors_above').AsString;   //changed for swansea
    GetField('NFIRSSTR','BELOWCHECK').AsString := Inc_StruQuery.FieldByName('below_grade').AsString;      //changed for swansea
    GetField('NFIRSSTR','BELOWGRADE').AsString := Inc_StruQuery.FieldByName('floors_below').AsString;       //changed for swansea
    If Inc_StruQuery.FieldByName('total_area').AsFloat > 0 then
      GetField('NFIRSSTR','SQUAREFEET').AsString := Inc_StruQuery.FieldByName('total_area').AsString
    else begin
      GetField('NFIRSSTR','WIDTH').AsString      := Inc_StruQuery.FieldByName('bldg_width').AsString;
      GetField('NFIRSSTR','LENGTHSQL').AsString  := Inc_StruQuery.FieldByName('bldg_len').AsString;
    end;

    GetField('NFIRSSTR','FIREORIGIN').AsString := Inc_StruQuery.FieldByName('floor_origin').AsString;        //changed for swansea
    GetField('NFIRSSTR','FIRESPREAD').AsString := Inc_StruQuery.FieldByName('fire_sprd').AsString;
    GetField('NFIRSSTR','STORYMINOR').AsString := Inc_StruQuery.FieldByName('minor_damg').AsString;
    GetField('NFIRSSTR','STORYSIGN').AsString  := Inc_StruQuery.FieldByName('signif_damg').AsString;        //changed for swansea
    GetField('NFIRSSTR','STORYHEAVY').AsString := Inc_StruQuery.FieldByName('heavy_damg').AsString;
    GetField('NFIRSSTR','STORYEXT').AsString   := Inc_StruQuery.FieldByName('extr_damg').AsString;
    GetField('NFIRSSTR','NOFLAMESPR').AsString := Inc_StruQuery.FieldByName('no_sprd').AsString;
    GetField('NFIRSSTR','ITEMCONTR').AsString  := Inc_StruQuery.FieldByName('item_sprd').AsString;
    GetField('NFIRSSTR','TYPEMAT').AsString    := Inc_StruQuery.FieldByName('matl_sprd').AsString;
    GetField('NFIRSSTR','DETPRES').AsString    := Inc_StruQuery.FieldByName('det_pres').AsString;
    GetField('NFIRSSTR','DETTYPE').AsString    := Inc_StruQuery.FieldByName('det_type').AsString;
    GetField('NFIRSSTR','DETPOWER').AsString   := Inc_StruQuery.FieldByName('det_power').AsString;
    GetField('NFIRSSTR','DETOP').AsString      := Inc_StruQuery.FieldByName('det_oper').AsString;
    GetField('NFIRSSTR','DETEFF').AsString     := Inc_StruQuery.FieldByName('det_effect').AsString;
    GetField('NFIRSSTR','DETFAIL').AsString    := Inc_StruQuery.FieldByName('det_fail').AsString;
    GetField('NFIRSSTR','AUTOPRES').AsString   := Inc_StruQuery.FieldByName('aes_pres').AsString;
    GetField('NFIRSSTR','AUTOTYPE').AsString   := Inc_StruQuery.FieldByName('aes_type').AsString;
    GetField('NFIRSSTR','AUTOOP').AsString     := Inc_StruQuery.FieldByName('aes_oper').AsString;
    GetField('NFIRSSTR','NUMSPR').AsString     := Inc_StruQuery.FieldByName('sprklr_heads').AsString;       //changed for swansea
    GetField('NFIRSSTR','AUTOFAIL').AsString   := Inc_StruQuery.FieldByName('aes_fail').AsString;

    A('NFIRSSTR').Post;
  end;
end;

procedure TConvFHForm.LoadNfirsInv;
Var StrNum  : String;
    Street  : String;
    Address : String;
begin
  Inc_InvlQuery.GoTop;
  While Not Inc_InvlQuery.Eof do begin
    A('NFIRSINV').UpdateSQL('SELECT * FROM NFIRSINV WHERE NFIRSMAINID = ' + pkvalue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND PRIMEKEY = ' + edbfield(Inc_InvlQuery,'INVL_ID'));
    If A('NFIRSINV').RecordsExist then
      A('NFIRSINV').Edit
    else
      A('NFIRSINV').Append;
    GetField('NFIRSINV','NFIRSMAINID').AsString   := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    If A('NFIRSINVTYPE').ExactQueryLocate('CODE',tdbfield(Inc_InvlQuery,'INVL_TYPE')) then
      GetField('NFIRSINV','NFIRSINVTYPEID').AsString := GetField('NFIRSINVTYPE','NFIRSINVTYPEID').AsString;
    GetField('NFIRSINV','PRIMEKEY').AsString      := tdbfield(Inc_InvlQuery,'INVL_ID');
    GetField('NFIRSINV','BUSINESSNAME').AsString  := GetField(Inc_InvlQuery,'INSTITUTION').AsString;   //changed for swansea
    GetField('NFIRSINV','SEQUENCE').AsString      := GetField(Inc_InvlQuery,'SEQUENCE').AsString;
    GetField('NFIRSINV','LASTNAME').AsString      := GetField(Inc_InvlQuery,'LAST').AsString;
    GetField('NFIRSINV','MIDDLEINITIAL').AsString := GetField(Inc_InvlQuery,'MIDDLE').AsString;
    GetField('NFIRSINV','FIRSTNAME').AsString     := GetField(Inc_InvlQuery,'FIRST').AsString;


    Address                                       := tdbfield(Inc_InvlQuery,'ADDR_1');
    StrNum                                        := alltrim(substr(Address,1,at(' ',address)));
    If AnyStrToInt(StrNum) > 0 then begin
      Street := alltrim(substr(Address,at(' ',address),200));
    end else begin
      StrNum := '';
      Street := Address;
    end;

    GetField('NFIRSINV','STRNUM').AsString        := StrNum;
    GetField('NFIRSINV','STREET').AsString        := Street;
    GetField('NFIRSINV','ROOMAPT').AsString       := GetField(Inc_InvlQuery,'APT_ROOM').AsString;
    GetField('NFIRSINV','CITY').AsString          := GetField(Inc_InvlQuery,'CITY').AsString;
    GetField('NFIRSINV','STATE').AsString         := GetField(Inc_InvlQuery,'STATE').AsString;
    GetField('NFIRSINV','ZIP').AsString           := GetField(Inc_InvlQuery,'ZIP').AsString;
    GetField('NFIRSINV','AGE').AsString           := GetField(Inc_InvlQuery,'AGE_YRS').AsString;
    GetField('NFIRSINV','GENDER').AsString        := GetField(Inc_InvlQuery,'GENDER').AsString;
    GetField('NFIRSINV','SOCSEC').AsString        := GetField(Inc_InvlQuery,'SSN').AsString;
    GetField('NFIRSINV','DOB').AsString           := GetField(Inc_InvlQuery,'DOB').AsString;
    GetField('NFIRSINV','NARR').AsString          := GetField(Inc_InvlQuery,'NOTES').AsString;

    A('NFIRSINV').Post;
    Inc_InvlQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsEquUse;
Var InvNum : String;
begin
  Inv_UseQuery.UpdateSQL('select * from Inv_Use where inci_no = ' + AddExpr(inci_no));
  While Not Inv_UseQuery.Eof do begin
    InvNum := tdbfield(Inv_UseQuery,'INV_ID');
    If A('INV').ExactQueryLocate('INVNUM',InvNum) then begin
      A('NFIRSEQUUSE').UpdateSQL('SELECT * FROM NFIRSEQUUSE WHERE NFIRSMAINID = ' + pkvalue(GetField('NFIRSMAIN','NFIRSMAINID').AsString) + ' AND FHKEY = ' + edbfield(Inv_UseQuery,'P_INV_USE'));
      If A('NFIRSEQUUSE').RecordsExist then
        A('NFIRSEQUUSE').Edit
      else
        A('NFIRSEQUUSE').Append;
      GetField('NFIRSEQUUSE','INVID').AsString       := GetField('INV','INVID').AsString;
      GetField('NFIRSEQUUSE','FHKEY').AsString       := tdbfield(Inv_UseQuery,'P_INV_USE');
      GetField('NFIRSEQUUSE','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSEQUUSE','NARR').AsString        := GetField(Inv_UseQuery,'NOTES').AsString;
      GetField('NFIRSEQUUSE','QTY').AsString         := FloatToStr(Trunc(GetField(Inv_UseQuery,'QUANTITY').AsFloat));
      GetField('NFIRSEQUUSE','HOURENGINE').AsString  := GetField(Inv_UseQuery,'HOURS').AsString;
      GetField('NFIRSEQUUSE','ODOMETER').AsString    := GetField(Inv_UseQuery,'MILEAGE').AsString;
      A('NFIRSEQUUSE').Post;
    end;
    Inv_UseQuery.Next;
  end;
end;


function TConvFHForm.GetUnitNum(OldUnitNum: String): String;
Var NewUnitNum : String;
begin
  If mFireID = '11540' then begin
    If OldUnitNum = 'CHP06' then
      NewUnitNum := 'E1'
    else if OldUnitNum = 'BOAT1' then
      NewUnitNum := 'B1'
    else if OldUnitNum = 'BOAT2' then
      NewUnitNum := 'B2'
    else if OldUnitNum = 'ARFF V' then
      NewUnitNum := 'ARFF1'
    else if OldUnitNum = 'CH002' then
      NewUnitNum := 'T10'
    else if OldUnitNum = 'CH003' then
      NewUnitNum := 'L1'
    else if OldUnitNum = 'CH004' then
      NewUnitNum := 'E3'
    else if OldUnitNum = 'CH006' then
      NewUnitNum := 'E2'
    else if OldUnitNum = 'CH007' then
      NewUnitNum := 'C6'
    else if OldUnitNum = 'CH008' then
      NewUnitNum := 'UTV'
    else if OldUnitNum = 'CH009' then
      NewUnitNum := 'E4'
    else if OldUnitNum = 'CH014' then
      NewUnitNum := 'U5'
    else if OldUnitNum = 'CH017' then
      NewUnitNum := 'T1'
    else if OldUnitNum = 'HAZTRA' then
      NewUnitNum := 'HAZ1'
    else if OldUnitNum = 'TRTRA' then
      NewUnitNum := 'TRT1'
    else
      NewUnitNum := OldUnitNum;
  end else begin
    NewUnitNum := OldUnitNum;
  end;
  GetUnitNum := NewUnitNum;
end;


procedure TConvFHForm.LoadNfirsApp;
Var UnitNum : String;
begin
  Inc_UnitQuery.UpdateSQL('SELECT * FROM INC_UNIT WHERE INCI_NO = ' + AddExpr(inci_no));
  While Not Inc_UnitQuery.Eof do begin
    UnitNum := GetUnitNum(alltrim(Inc_UnitQuery.FieldByName('UNIT').AsString ));
    If Not (UnitNum = '') then begin
      A('NFIRSAPP').UpdateSQL('SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + NfirsMainID + ' AND UNITNUM = ' + AddExpr( UnitNum ));
      If A('NFIRSAPP').RecordsExist then
        A('NFIRSAPP').Edit
      else
        A('NFIRSAPP').Append;
      GetField('NFIRSAPP','NFIRSMAINID').AsString := NfirsMainID;
      GetField('NFIRSAPP','UNITNUM').AsString     := UnitNum;
      GetField('NFIRSAPP','N5AORT').AsString      := Inc_UnitQuery.FieldByName('TYPE').AsString;
      If Inc_UnitQuery.FieldByName('fire').AsBoolean then
        GetField('NFIRSAPP','N5AU').AsString := '1'
      else if Inc_UnitQuery.FieldByName('medical').AsBoolean or Inc_UnitQuery.FieldByName('rescue').AsBoolean then
        GetField('NFIRSAPP','N5AU').AsString := '2'
      else if Inc_UnitQuery.FieldByName('other').AsBoolean then
        GetField('NFIRSAPP','N5AU').AsString := '0';

      GetField('NFIRSAPP','EVLENGTH').AsString        := Inc_UnitQuery.FieldByName('HOURS').AsString;
      GetField('NFIRSAPP','NARR').AsString            := Inc_UnitQuery.FieldByName('NOTES').AsString;

      GetField('NFIRSAPP','DATETIMEALARM').AsDateTime := Inc_UnitQuery.FieldByName('NOTIF_DTTM').AsDateTime;
      GetField('NFIRSAPP','DATETIMEARR').AsDateTime   := Inc_UnitQuery.FieldByName('ARV_DTTM').AsDateTime;
      GetField('NFIRSAPP','DATETIMEIN').AsDateTime    := Inc_UnitQuery.FieldByName('IN_DTTM').AsDateTime;

      If CheckModule('CADINT') or CheckModule('DISP') then
        GetField('NFIRSAPP','DISPCALLID').AsString := GetField('DISPCALL','DISPCALLID').AsString;

      GetField('NFIRSAPP','N5ACT1').AsString := '';
      GetField('NFIRSAPP','N5ACT2').AsString := '';
      GetField('NFIRSAPP','N5ACT3').AsString := '';
      GetField('NFIRSAPP','N5ACT4').AsString := '';

      Inc_UActQuery.UpdateSQL('SELECT * FROM INC_UACT WHERE UNIT_ID = ' + edbfield(Inc_UnitQuery,'UNIT_ID') + ' ORDER BY SEQUENCE');
      While Not Inc_UActQuery.eof do begin
        If tdbfield(Inc_UActQuery,'SEQUENCE') = '1' then
          GetField('NFIRSAPP','N5ACT1').AsString := tdbfield(Inc_UActQuery,'CODE')
        else if tdbfield(Inc_UActQuery,'SEQUENCE') = '2' then
          GetField('NFIRSAPP','N5ACT2').AsString := tdbfield(Inc_UActQuery,'CODE')
        else if tdbfield(Inc_UActQuery,'SEQUENCE') = '3' then
          GetField('NFIRSAPP','N5ACT3').AsString := tdbfield(Inc_UActQuery,'CODE')
        else if tdbfield(Inc_UActQuery,'SEQUENCE') = '4' then
          GetField('NFIRSAPP','N5ACT4').AsString := tdbfield(Inc_UActQuery,'CODE');
        Inc_UActQuery.Next;
      end;
      A('NFIRSAPP').Post;
      LoadDispHist;
    end;
    Inc_UnitQuery.Next;
  end;
end;

function TConvFHForm.GetDateTimeOut(id : String):String;
Var UnitNum : String;
begin
  Inc_UnitQuery.UpdateSQL('select * from inc_unit where inci_no = ' + AddExpr(inci_no) + ' order by roll_time');
  If Inc_UnitQuery.RecordsExist then
    GetDateTimeOut := Inc_UnitQuery.FieldByName('roll_dttm').AsString
  else
    GetDateTimeOut := '0';
end;

procedure TConvFHForm.LoadDispHistTime(DispStatCodeID: String; DateTimeStat: TDateTime);
Var SQLVar : String;
begin
  If Not (DispStatCodeID = '') and (DateTimeStat > 0) then begin
    SQLVar := 'SELECT * FROM DISPHIST WHERE DISPCALLID = ' + pkValue(GetField('DISPCALL','DISPCALLID').AsString) + ' AND UNITNUM = ' + edbfield(Inc_UnitQuery,'UNIT') + ' AND DISPSTATCODEID = ' + pkValue(DispStatCodeID);
    A('DISPHIST').UpdateSQL(SQLVar);
    If A('DISPHIST').RecordsExist then
      A('DISPHIST').Edit
    else
      A('DISPHIST').Append;
    GetField('DISPHIST','NFIRSAPPID').AsString     := GetField('NFIRSAPP','NFIRSAPPID').AsString;
    GetField('DISPHIST','DISPCALLID').AsString     := GetField('DISPCALL','DISPCALLID').AsString;
    GetField('DISPHIST','NFIRSMAINID').AsString    := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
    GetField('DISPHIST','DISPSTATCODEID').AsString := DispStatCodeID;
    GetField('DISPHIST','UNITNUM').AsString        := GetUnitNum(tdbfield(Inc_UnitQuery,'UNIT'));
    GetField('DISPHIST','DATETIMESTAT').AsDateTime := DateTimeStat;
    A('DISPHIST').Post;
 end;
end;

procedure TConvFHForm.LoadDispHist;
begin
  If CheckModule('CADINT') or CheckModule('DISP') then begin
    LoadDispHistTime(GetField('DISPSET','TIMEDISPID').AsString,Inc_UnitQuery.FieldByName('NOTIF_DTTM').AsDateTime);
    LoadDispHistTime(GetField('DISPSET','TIMEOUTID').AsString, Inc_UnitQuery.FieldByName('ROLL_DTTM').AsDateTime);
    LoadDispHistTime(GetField('DISPSET','TIMEARRID').AsString, Inc_UnitQuery.FieldByName('ARV_DTTM').AsDateTime);
    LoadDispHistTime(GetField('DISPSET','TIMEINID').AsString,  Inc_UnitQuery.FieldByName('IN_DTTM').AsDateTime);
  end;
end;

procedure TConvFHForm.LoadNfirsAtt;
begin
  A('GETNFIRSAPP').UpdateSQL('SELECT NFIRSAPPID, UNITNUM FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkValue(NfirsMainID));
  if GetField(Inc_UnitQuery,'FDID').AsString = '' then
    Act_MainQuery.UpdateSQL('SELECT * FROM ACT_MAIN WHERE INCI_NO = ' + AddExpr(inci_no) + ' ORDER BY ACTIV_ID')
  else
    Act_MainQuery.UpdateSQL('SELECT * FROM ACT_MAIN WHERE FDID = ' + edbfield(Inc_UnitQuery,'FDID') + ' AND INCI_NO = ' + AddExpr(inci_no) + ' ORDER BY ACTIV_ID');
  While Not Act_MainQuery.Eof do begin
    If tdbfield(Act_MainQuery,'ACT_CODE') = 'CALLBACK' then begin
      LoadNfirsAttSchdHist;
    end else begin
      LoadActNfirsAtt;
    end;
    Act_MainQuery.Next;
  end;
end;

procedure TConvFHForm.LoadActNfirsAtt;
Var UnitNum   : String;
    PersCode  : String;
begin
  Activ_Id := Act_MainQuery.FieldByName('ACTIV_ID').AsString;
  Act_DetQuery.UpdateSQL('SELECT * FROM ACT_DET WHERE ACTIV_ID = ' + AddExpr(Activ_Id));
  While Not Act_DetQuery.Eof do begin
    PersCode := alltrim(Act_DetQuery.FieldByName('STAFF_ID').AsString);
    If A('PERS').ExactQueryLocate(['FDID','PERSCODE'],[tdbfield('NFIRSMAIN','FDID'),PersCode]) then begin
      UnitNum   := GetUnitNum(alltrim( Act_DetQuery.FieldByName('UNIT').AsString));
      A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + NfirsMainID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
      If A('NFIRSATT').RecordsExist then
        A('NFIRSATT').Edit
      else
        A('NFIRSATT').Append;
      GetField('NFIRSATT','NFIRSMAINID').AsString     := NfirsMainID;
      GetField('NFIRSATT','PERSID').AsString          := GetField('PERS','PERSID').AsString;
      GetField('NFIRSATT','POINT').AsString           := Act_DetQuery.FieldByName('POINTS').AsString;
      GetField('NFIRSATT','EVLENGTH').AsFloat         := GetField(Act_DetQuery,'HOURS').AsFloat;
      
      If Not (UnitNum = '') and  A('GETNFIRSAPP').ExactQueryLocate('UNITNUM',UnitNum) then
        Getfield('NFIRSATT','NFIRSAPPID').AsString := GetField('GETNFIRSAPP','NFIRSAPPID').AsString;
      If A('NFIRSATTTASK').ExactQueryLocate(['CODE'],[ALLTRIM(tdbfield(Act_DetQuery,'ACT_CODE'))]) then
        GetField('NFIRSATT','NFIRSATTTASKID').AsString := GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;

      If (mFireID = 'EGELS') then
        GetField('NFIRSATT','PAYLENGTH').AsFloat := GetField(Act_DetQuery,'HRS_PAID').AsFloat;
      If mFireID = '21012' then begin  //This was added for the Lower Allen conversion, can be used for any department that uses the driver flag
        If GetField(Act_DetQuery,'DRIVER').AsBoolean = True then
          GetField('NFIRSATT','NFIRSATTTASKID').AsString := '2';
      end;

      If A('PERSPAYSCALE').ExactQueryLocate(['FDID','CODE'],[tdbfield('NFIRSMAIN','FDID'),tdbfield(Act_DetQuery,'PAY_SCALE')]) then begin
        GetField('NFIRSATT','PERSPAYSCALEID').AsString := GetField('PERSPAYSCALE','PERSPAYSCALEID').AsString;
        If (mFireID = 'EGELS') then begin
          GetField('NFIRSATT','PAYRATE').AsFloat  := GetField('PERSPAYSCALE','AMOUNT').AsFloat;
          GetField('NFIRSATT','PAYTOTAL').AsFloat := GetField('PERSPAYSCALE','AMOUNT').AsFloat * GetField('NFIRSATT','PAYLENGTH').AsFloat;
        end;
      end;
      If A('PERSSCHDROLE').ExactQueryLocate(['FDID','CODE'],[tdbfield('NFIRSMAIN','FDID'),tdbfield(Act_DetQuery,'ROLES')]) then
        GetField('NFIRSATT','PERSSCHDROLEID').AsString := GetField('PERSSCHDROLE','PERSSCHDROLEID').AsString;
    end;
    A('NFIRSATT').Post;
    Act_DetQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsAttSchdHist;
Var PersCode : String;
    UnitNum  : String;
begin
  Act_DetQuery.UpdateSQL('SELECT * FROM ACT_DET WHERE ACTIV_ID = ' + edbfield(Act_MainQuery,'ACTIV_ID'));
  While Not Act_DetQuery.Eof do begin
    PersCode := alltrim(Act_DetQuery.FieldByName('STAFF_ID').AsString);
    UnitNum  := GetUnitNum(alltrim( Act_DetQuery.FieldByName('UNIT').AsString));
    If A('PERS').ExactQueryLocate(['FDID','PERSCODE'],[tdbfield('NFIRSMAIN','FDID'),PersCode]) then begin
      A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + NfirsMainID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
      If A('NFIRSATT').RecordsExist then
        A('NFIRSATT').Edit
      else
        A('NFIRSATT').Append;
      GetField('NFIRSATT','NFIRSMAINID').AsString     := NfirsMainID;
      GetField('NFIRSATT','PERSID').AsString          := GetField('PERS','PERSID').AsString;
      If GetField('NFIRSATT','EVLENGTH').AsFloat = 0 then
        GetField('NFIRSATT','EVLENGTH').AsFloat         := GetField(Act_DetQuery,'HOURS').AsFloat;

      If Not (UnitNum = '') and  A('GETNFIRSAPP').ExactQueryLocate('UNITNUM',UnitNum) then
        Getfield('NFIRSATT','NFIRSAPPID').AsString := GetField('GETNFIRSAPP','NFIRSAPPID').AsString;

      If A('NFIRSATTTASK').ExactQueryLocate(['CODE'],[ALLTRIM(tdbfield(Act_DetQuery,'ACT_CODE'))]) then
        GetField('NFIRSATT','NFIRSATTTASKID').AsString := GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;

      If (mFireID = '11540') then begin
        A('SCHDHIST').UpdateSQL('SELECT * FROM SCHDHIST WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NFIRSMAINID = ' + NfirsMainID);
        If A('SCHDHIST').RecordsExist then
          A('SCHDHIST').Edit
        else
          A('SCHDHIST').Append;
        GetField('SCHDHIST','NFIRSMAINID').AsString  := NfirsMainID;
        GetField('SCHDHIST','PERSID').AsString       := GetField('PERS','PERSID').AsString;
        GetField('SCHDHIST','DATETIMESTART').AsFloat := GetField(Act_MainQuery,'DTTM').AsFloat;
        GetField('SCHDHIST','SHIFTLENGTH').AsFloat   := GetField(Act_DetQuery,'HOURS').AsFloat;
        GetField('SCHDHIST','SCHDTYPEID').AsString   := '176';
        A('SCHDHIST').Post;
      end;
    end;    

    Act_DetQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsMaid;
Var SQLVar : String;
begin
  SQLVar := 'SELECT * FROM INC_MAID WHERE FDID = ' + edbfield(Inc_MainQuery,'FDID') + ' AND INCI_NO = ' + edbfield(Inc_MainQuery,'INCI_NO');
  Inc_MaidQuery.UpdateSQL(SQLVar);
  While Not Inc_MaidQuery.Eof do begin
    A('NFIRSMAID').UpdateSQL('SELECT * FROM NFIRSMAID WHERE NFIRSMAINID = ' + NfirsMainID + ' AND MUTAIDDEPTNAME = ' + edbfield(Inc_MaidQuery,'MA_DEPT'));
    If A('NFIRSMAID').RecordsExist then
      A('NFIRSMAID').Edit
    else
      A('NFIRSMAID').Append;
    GetField('NFIRSMAID','NFIRSMAINID').AsString     := NfirsMainID;
    GetField('NFIRSMAID','MAID').AsString            := tdbfield(Inc_MaidQuery,'MUTL_AID');
    GetField('NFIRSMAID','MUTAIDDEPTNAME').AsString  := tdbfield(Inc_MaidQuery,'MA_DEPT');
    GetField('NFIRSMAID','FDID').AsString            := tdbfield(Inc_MaidQuery,'MA_DEPT');
    A('NFIRSMAID').Post;
    Inc_MaidQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsCivilian;
begin
  Inc_CCasQuery.UpdateSQL('SELECT * FROM INC_CCAS WHERE INCI_ID = ' + edbfield(Inc_MainQuery,'INCI_ID') + ' ORDER BY SEQUENCE');
  While Not Inc_CCasQuery.Eof do begin
    A('NFIRSCIVILIAN').UpdateSQL('SELECT * FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + NfirsMainID + ' AND ' +
                                 'CASNUM = ' + GetField(Inc_CCasQuery,'SEQUENCE').AsString);
    If A('NFIRSCIVILIAN').RecordsExist then
      A('NFIRSCIVILIAN').Edit
    else
      A('NFIRSCIVILIAN').Append;
    GetField('NFIRSCIVILIAN','NFIRSMAINID').AsString     := NfirsMainID;
    GetField('NFIRSCIVILIAN','CASNUM').AsString          := GetField(Inc_CCasQuery,'SEQUENCE').AsString;
    GetField('NFIRSCIVILIAN','NAME').AsString            := tdbfield(Inc_CCasQuery,'LAST');
    GetField('NFIRSCIVILIAN','FIRSTNAME').AsString       := tdbfield(Inc_CCasQuery,'FIRST');
    GetField('NFIRSCIVILIAN','MI').AsString              := tdbfield(Inc_CCasQuery,'MIDDLE');
    GetField('NFIRSCIVILIAN','SUFFIX').AsString          := tdbfield(Inc_CCasQuery,'SUFFIX');
    GetField('NFIRSCIVILIAN','SEX').AsString             := tdbfield(Inc_CCasQuery,'GENDER');
    GetField('NFIRSCIVILIAN','AGE').AsString             := GetField(Inc_CCasQuery,'AGE_YRS').AsString;
    GetField('NFIRSCIVILIAN','DOB').AsString             := GetField(Inc_CCasQuery,'DOB').AsString;
    GetField('NFIRSCIVILIAN','RACE').AsString            := GetField(Inc_CCasQuery,'RACE').AsString;
    GetField('NFIRSCIVILIAN','ETHNICITY').AsString       := GetField(Inc_CCasQuery,'ETHNICITY').AsString;
    GetField('NFIRSCIVILIAN','AFFILIAT').AsString        := GetField(Inc_CCasQuery,'AFFILIATION').AsString;       //change for swansea

    If GetField(Inc_CCasQuery,'INJ_DTTM').AsDateTime > 0 then
      GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDateTime   := GetField(Inc_CCasQuery,'INJ_DTTM').AsDateTime
    else
      GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDateTime   := GetField(Inc_CCasQuery,'INJ_DATE').AsDateTime;

    GetField('NFIRSCIVILIAN','CASSEV').AsString          := tdbfield(Inc_CCasQuery,'SEVERITY');
    GetField('NFIRSCIVILIAN','CAUSEINJ').AsString        := tdbfield(Inc_CCasQuery,'CAUSE');
    GetField('NFIRSCIVILIAN','ACTINJ').AsString          := tdbfield(Inc_CCasQuery,'ACTIVITY');
    if tdbfield(Inc_CCasQuery,'LOC_INCI') = '4' then
      GetField('NFIRSCIVILIAN','LOCATION').AsString        := '1'
    else
      GetField('NFIRSCIVILIAN','LOCATION').AsString        := tdbfield(Inc_CCasQuery,'LOC_INCI');
    GetField('NFIRSCIVILIAN','GENLOC').AsString          := tdbfield(Inc_CCasQuery,'GEN_LOC_IN');  //change for swansea
    GetField('NFIRSCIVILIAN','STORYSTART').AsString      := tdbfield(Inc_CCasQuery,'STORY_INCI');
    GetField('NFIRSCIVILIAN','STARTBELOW').AsString      := IIf(Inc_CCasQuery.FieldByName('STORY_INC_BELOW').AsBoolean,'Y','');  //change for swansea
    GetField('NFIRSCIVILIAN','STORYINJ').AsString        := tdbfield(Inc_CCasQuery,'STORY_INJ');
    GetField('NFIRSCIVILIAN','INJBELOW').AsString        := IIf(Inc_CCasQuery.FieldByName('STORY_INJ_BELOW').AsBoolean,'Y','');      //change for swansea
    GetField('NFIRSCIVILIAN','SPECLOC').AsString         := tdbfield(Inc_CCasQuery,'SPEC_LOC_INJ'); //change for swansea
    GetField('NFIRSCIVILIAN','PRIMSYM').AsString         := tdbfield(Inc_CCasQuery,'SYMPTOM');
    GetField('NFIRSCIVILIAN','PARTINJ').AsString         := tdbfield(Inc_CCasQuery,'BODY_PART');       
    GetField('NFIRSCIVILIAN','DISPOSIT').AsString        := IIf(tdbfield(Inc_CCasQuery,'DISPOSITION') = '1','Y','');   //change for swansea

    Inc_CCHFQuery.UpdateSQL('SELECT * FROM INC_CCHF WHERE CAS_ID = ' + edbfield(Inc_CCasQuery,'CAS_ID'));
    while not Inc_CCHFQuery.Eof do begin
      If tdbfield(Inc_CCHFQuery,'FACTOR') = '1' then
        GetField('NFIRSCIVILIAN','HUMAN1').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '2' then
        GetField('NFIRSCIVILIAN','HUMAN2').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '3' then
        GetField('NFIRSCIVILIAN','HUMAN3').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '4' then
        GetField('NFIRSCIVILIAN','HUMAN4').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '5' then
        GetField('NFIRSCIVILIAN','HUMAN5').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '6' then
        GetField('NFIRSCIVILIAN','HUMAN6').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '7' then
        GetField('NFIRSCIVILIAN','HUMAN7').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = '8' then
        GetField('NFIRSCIVILIAN','HUMAN8').AsString    := tdbfield(Inc_CCHFQuery,'FACTOR')
      else if tdbfield(Inc_CCHFQuery,'FACTOR') = 'N' then
        GetField('NFIRSCIVILIAN','HUMANNONE').AsString := 'N';
      Inc_CCHFQuery.Skip(1);
    end;

    Inc_CCFQuery.UpdateSQL('SELECT * FROM INC_CCF WHERE CAS_ID = ' + edbfield(Inc_CCasQuery,'CAS_ID'));
    while not Inc_CCFQuery.Eof do begin
      If (tdbfield(Inc_CCFQuery,'SEQUENCE') = '1') and Not (tdbfield(Inc_CCFQuery,'FACTOR') = 'NN') then
        GetField('NFIRSCIVILIAN','FACTOR1').AsString := tdbfield(Inc_CCFQuery,'FACTOR')
      else if (tdbfield(Inc_CCFQuery,'SEQUENCE') = '2') and Not (tdbfield(Inc_CCFQuery,'FACTOR') = 'NN') then
        GetField('NFIRSCIVILIAN','FACTOR2').AsString := tdbfield(Inc_CCFQuery,'FACTOR')
      else if (tdbfield(Inc_CCFQuery,'SEQUENCE') = '3') and Not (tdbfield(Inc_CCFQuery,'FACTOR') = 'NN') then
        GetField('NFIRSCIVILIAN','FACTOR3').AsString := tdbfield(Inc_CCFQuery,'FACTOR')
      else if (tdbfield(Inc_CCFQuery,'FACTOR') = 'NN') then
        GetField('NFIRSCIVILIAN','NOFACTORS').AsString := 'N';
      Inc_CCFQuery.Skip(1);
    end;

    A('NFIRSCIVILIAN').Post;
    Inc_CCasQuery.Next;
  end;
end;

procedure TConvFHForm.LoadNfirsFireCasualty;
begin
  Inc_FCasQuery.UpdateSQL('SELECT * FROM INC_FCAS WHERE INCI_ID = ' + edbfield(Inc_MainQuery,'INCI_ID') + ' ORDER BY SEQUENCE');
  While Not Inc_FCasQuery.Eof do begin
    A('NFIRSFIRECASUALTY').UpdateSQL('SELECT * FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + NfirsMainID + ' AND ' +
                                 'CASNUM = ' + GetField(Inc_FCasQuery,'SEQUENCE').AsString);
    If A('NFIRSFIRECASUALTY').RecordsExist then
      A('NFIRSFIRECASUALTY').Edit
    else
      A('NFIRSFIRECASUALTY').Append;
      
    GetField('NFIRSFIRECASUALTY','NFIRSMAINID').AsString := NfirsMainID;
    if GetField(Inc_FCasQuery,'STAFF_ID').AsString <> '' then
      GetField('NFIRSFIRECASUALTY','PERSID').AsString      := SQLLookup(GetField(Inc_FCasQuery,'STAFF_ID').AsString,'PERSCODE','PERS','PERSID');;

    GetField('NFIRSFIRECASUALTY','CASNUM').AsString      := GetField(Inc_FCasQuery,'SEQUENCE').AsString;
    GetField('NFIRSFIRECASUALTY','NAME').AsString        := tdbfield(Inc_FCasQuery,'LAST');
    GetField('NFIRSFIRECASUALTY','FIRSTNAME').AsString   := tdbfield(Inc_FCasQuery,'FIRST');
    GetField('NFIRSFIRECASUALTY','MI').AsString          := tdbfield(Inc_FCasQuery,'MIDDLE');
    GetField('NFIRSFIRECASUALTY','SEX').AsString         := tdbfield(Inc_FCasQuery,'GENDER');
    GetField('NFIRSFIRECASUALTY','AGE').AsString         := tdbfield(Inc_FCasQuery,'AGE_YRS');
    GetField('NFIRSFIRECASUALTY','CARVOL').AsString      := tdbfield(Inc_FCasQuery,'CAREER');
    GetField('NFIRSFIRECASUALTY','NUMRESP').AsString     := tdbfield(Inc_FCasQuery,'RESPONSES');
    GetField('NFIRSFIRECASUALTY','ASSIGN').AsString      := tdbfield(Inc_FCasQuery,'ASSIGNMENT');
    GetField('NFIRSFIRECASUALTY','COND').AsString        := tdbfield(Inc_FCasQuery,'PHYS_COND');
    GetField('NFIRSFIRECASUALTY','TAKENTO').AsString     := tdbfield(Inc_FCasQuery,'TAKEN_TO');

    if GetField('NFIRSFIRECASUALTY','CARVOL').AsString = '' then
      GetField('NFIRSFIRECASUALTY','CARVOL').AsString    := '2';

    If GetField(Inc_FCasQuery,'DOB').AsDateTime > 0 then
      GetField('NFIRSFIRECASUALTY','DOB').AsDateTime     := GetField(Inc_FCasQuery,'DOB').AsDateTime
    else
      GetField('NFIRSFIRECASUALTY','DOB').AsDateTime     := GetField(Inc_FCasQuery,'DOB').AsDateTime;

    GetField('NFIRSFIRECASUALTY','SEV').AsString         := tdbfield(Inc_FCasQuery,'SEVERITY');
    GetField('NFIRSFIRECASUALTY','CAUSEINJ').AsString    := tdbfield(Inc_FCasQuery,'CAUSE');
    GetField('NFIRSFIRECASUALTY','ACTINJ').AsString      := tdbfield(Inc_FCasQuery,'ACTIVITY');
    GetField('NFIRSFIRECASUALTY','WHEREINJ').AsString    := tdbfield(Inc_FCasQuery,'GEN_LOC_INJ');
    GetField('NFIRSFIRECASUALTY','STORYINJ').AsString    := tdbfield(Inc_FCasQuery,'STORY_INJ');
    GetField('NFIRSFIRECASUALTY','SPECLOC').AsString     := tdbfield(Inc_FCasQuery,'SPEC_LOC_INJ');
    GetField('NFIRSFIRECASUALTY','PRIMSYMP').AsString    := tdbfield(Inc_FCasQuery,'SYMPTOM');
    GetField('NFIRSFIRECASUALTY','PRIMINJ').AsString     := tdbfield(Inc_FCasQuery,'BODY_PART');

    If GetField(Inc_FCasQuery,'INJ_DTTM').AsDateTime > 0 then
      GetField('NFIRSFIRECASUALTY','DATETIMEINJ').AsDateTime   := GetField(Inc_FCasQuery,'INJ_DTTM').AsDateTime
    else
      GetField('NFIRSFIRECASUALTY','DATETIMEINJ').AsDateTime   := GetField(Inc_FCasQuery,'INJ_DATE').AsDateTime;
      
    A('NFIRSFIRECASUALTY').Post;
    Inc_FCasQuery.Next;
  end;
end;


procedure TConvFHForm.LoadNfirsWildLand;
Var CropNum     : Integer;
    HumanFactor : String;
begin
  Inc_WildQuery.UpdateSQL('SELECT * FROM INC_WILD WHERE INCI_ID = ' + AddExpr(inci_id));
  Inc_WthrQuery.UpdateSQL('SELECT * FROM INC_WTHR WHERE INCI_ID = ' + AddExpr(inci_id));
  If Inc_WildQuery.RecordsExist then begin
    RunSQL('UPDATE NFIRSMAIN SET FIRORWILD = ' + AddExpr('Y') + ' WHERE NFIRSMAINID = ' + NfirsMainID);
    A('NFIRSWILDLAND').UpdateSQL('SELECT * FROM NFIRSWILDLAND WHERE NFIRSMAINID = ' + NfirsMainID);
    If A('NFIRSWILDLAND').RecordsExist then
      A('NFIRSWILDLAND').Edit
    else
      A('NFIRSWILDLAND').Append;
    GetField('NFIRSWILDLAND','NFIRSMAINID').AsString := NfirsMainID;
    GetField('NFIRSWILDLAND','LATITUDE').AsFloat     := GetField(Inc_WildQuery,'LATITUDE').AsFloat;
    GetField('NFIRSWILDLAND','LONGITUDE').AsFloat    := GetField(Inc_WildQuery,'LONGITUDE').AsFloat;
    GetField('NFIRSWILDLAND','AREATYPE').AsString    := tdbfield(Inc_WildQuery,'AREA_TYPE');
    GetField('NFIRSWILDLAND','FIRECAUSE').AsString   := tdbfield(Inc_WildQuery,'CAUSE_IGN');
    GetField('NFIRSWILDLAND','HEATSOURCE').AsString  := tdbfield(Inc_WildQuery,'HEAT_SRC');
    GetField('NFIRSWILDLAND','MOBTYPE').AsString     := tdbfield(Inc_WildQuery,'MOBL_PROP');
    GetField('NFIRSWILDLAND','EQUINV').AsString      := tdbfield(Inc_WildQuery,'EQP_INVL');
    GetField('NFIRSWILDLAND','NUMBUILDI').AsString   := GetField(Inc_WildQuery,'BLDG_IGN').AsString;
    GetField('NFIRSWILDLAND','NUMBUILDT').AsString   := GetField(Inc_WildQuery,'BLDG_THREAT').AsString; //change for swansea
    GetField('NFIRSWILDLAND','ACREBURNED').AsString  := GetField(Inc_WildQuery,'ACRES_BURN').AsString;

    GetField('NFIRSWILDLAND','BURNU').AsString       := GetField(Inc_WildQuery,'PCT_UNDET').AsString;
    GetField('NFIRSWILDLAND','BURN1').AsString       := GetField(Inc_WildQuery,'PCT_TAX').AsString;
    GetField('NFIRSWILDLAND','BURN2').AsString       := GetField(Inc_WildQuery,'PCT_NONTAX').AsString;
    GetField('NFIRSWILDLAND','BURN3').AsString       := GetField(Inc_WildQuery,'PCT_CITY').AsString;
    GetField('NFIRSWILDLAND','BURN4').AsString       := GetField(Inc_WildQuery,'PCT_COUNTY').AsString;
    GetField('NFIRSWILDLAND','BURN5').AsString       := GetField(Inc_WildQuery,'PCT_STATE').AsString;
    GetField('NFIRSWILDLAND','BURN6').AsString       := GetField(Inc_WildQuery,'PCT_FED').AsString;
    GetField('NFIRSWILDLAND','FAC').AsString         := GetField(Inc_WildQuery,'FED_CODE').AsString;
    GetField('NFIRSWILDLAND','BURN7').AsString       := GetField(Inc_WildQuery,'PCT_FOREIGN').AsString; //change for swansea
    GetField('NFIRSWILDLAND','BURN8').AsString       := GetField(Inc_WildQuery,'PCT_MILITARY').AsString;   //change for swansea
    GetField('NFIRSWILDLAND','BURN0').AsString       := GetField(Inc_WildQuery,'PCT_OTHER').AsString;

    Inc_WCrpQuery.UpdateSQL('SELECT * FROM INC_WCRP WHERE INCI_ID = ' + AddExpr(Inci_Id));
    CropNum := 1;
    while not Inc_WCrpQuery.Eof do begin
      If Not (alltrim(tdbfield(Inc_WCrpQuery,'CROP')) = '') then begin
        If CropNum = 1 then begin
          GetField('NFIRSWILDLAND','PRIMECROP1').AsString := tdbfield(Inc_WCrpQuery,'CROP');
          GetField('NFIRSWILDLAND','PRIMEACRE1').AsFloat  := GetField(Inc_WCrpQuery,'ACRES_BURN').AsFloat;
          CropNum := CropNum + 1;
        end else if CropNum = 2 then begin
          GetField('NFIRSWILDLAND','PRIMECROP2').AsString := tdbfield(Inc_WCrpQuery,'CROP');
          GetField('NFIRSWILDLAND','PRIMEACRE2').AsFloat  := GetField(Inc_WCrpQuery,'ACRES_BURN').AsFloat;
        end else if CropNum = 2 then begin
          GetField('NFIRSWILDLAND','PRIMECROP3').AsString := tdbfield(Inc_WCrpQuery,'CROP');
          GetField('NFIRSWILDLAND','PRIMEACRE3').AsFloat  := GetField(Inc_WCrpQuery,'ACRES_BURN').AsFloat;
        end;  
      end;
      Inc_WCrpQuery.Skip(1)
    end;

    Inc_WHFQuery.UpdateSQL('SELECT * FROM INC_WHF WHERE INCI_ID = ' + AddExpr(Inci_Id));
    While Not Inc_WHFQuery.Eof do begin

      HumanFactor := substr(Inc_WHFQuery.FieldByName('FACTOR').AsString,1,1);
      If alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '1' then
        GetField('NFIRSWILDLAND','HUMAN1').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '2' then
        GetField('NFIRSWILDLAND','HUMAN2').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '3' then
        GetField('NFIRSWILDLAND','HUMAN3').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '4' then
        GetField('NFIRSWILDLAND','HUMAN4').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '5' then
        GetField('NFIRSWILDLAND','HUMAN5').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '6' then
        GetField('NFIRSWILDLAND','HUMAN6').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = '7' then
        GetField('NFIRSWILDLAND','HUMAN7').AsString := HumanFactor
      else if alltrim(Inc_WHFQuery.FieldByName('FACTOR').AsString) = 'N' then
        GetField('NFIRSWILDLAND','HUMANNONE').AsString := HumanFactor;

      Inc_WHFQuery.Next;
    end;

    Inc_WSUPQuery.UpdateSQL('SELECT * FROM INC_WSUP WHERE INCI_ID = ' + AddExpr(Inci_Id));
    While Not Inc_WSUPQuery.Eof do begin
      If alltrim(Inc_WSUPQuery.FieldByName('SEQUENCE').AsString) = '1' then
        GetField('NFIRSWILDLAND','FIRESUPP1').AsString := tdbfield(Inc_WSUPQuery,'FACTOR') 
      else if alltrim(Inc_WSUPQuery.FieldByName('SEQUENCE').AsString) = '2' then
        GetField('NFIRSWILDLAND','FIRESUPP2').AsString := tdbfield(Inc_WSUPQuery,'FACTOR') 
      else if alltrim(Inc_WSUPQuery.FieldByName('SEQUENCE').AsString) = '3' then
        GetField('NFIRSWILDLAND','FIRESUPP3').AsString := tdbfield(Inc_WSUPQuery,'FACTOR');
      Inc_WSUPQuery.Next;
    end;

    If Inc_WthrQuery.RecordsExist then begin
      GetField('NFIRSWILDLAND','WEATHTYPE').AsString  := tdbfield(Inc_WthrQuery,'WTHR_TYPE');
      GetField('NFIRSWILDLAND','WINDDIRECT').AsString := tdbfield(Inc_WthrQuery,'WIND_DIR');
      GetField('NFIRSWILDLAND','WINDSPEED').AsString  := GetField(Inc_WthrQuery,'WIND_SPEED').AsString;
      GetField('NFIRSWILDLAND','AIRTEMP').AsString    := GetField(Inc_WthrQuery,'AIR_TEMP').AsString;
      GetField('NFIRSWILDLAND','RELHUM').AsString     := GetField(Inc_WthrQuery,'HUMIDITY').AsString;
      GetField('NFIRSWILDLAND','FUELMOIST').AsString  := GetField(Inc_WthrQuery,'FUEL_MOISTURE').AsString;
      GetField('NFIRSWILDLAND','FIREDANGER').AsString := GetField(Inc_WthrQuery,'FIRE_DANGER').AsString;
    end;

    A('NFIRSWILDLAND').Post;
  end;
end;

procedure TConvFHForm.LoadNfirsHazMat;
begin
  Inc_HazQuery.UpdateSQL('SELECT * FROM INC_HAZ WHERE INCI_ID = ' + AddExpr(inci_id));
  If Inc_HazQuery.RecordsExist then begin
    A('NFIRSHAZMAT').UpdateSQL('SELECT * FROM NFIRSHAZMAT WHERE NFIRSMAINID = ' + NfirsMainID);
    If A('NFIRSHAZMAT').RecordsExist then
      A('NFIRSHAZMAT').Edit
    else
      A('NFIRSHAZMAT').Append;
    GetField('NFIRSHAZMAT','NFIRSMAINID').AsString := NfirsMainID;
    GetField('NFIRSHAZMAT','RELFROM').AsString     := tdbfield(Inc_HazQuery,'REl_FROM');
    GetField('NFIRSHAZMAT','RELSTORY').AsString    := GetField(Inc_HazQuery,'STORY_REL').AsString;
    GetField('NFIRSHAZMAT','POPDENSITY').AsString  := GetField(Inc_HazQuery,'POP_DENS').AsString;
    GetField('NFIRSHAZMAT','AREAAMEAS').AsString   := GetField(Inc_HazQuery,'AREA_AFFECT').AsString;      //change for swansea
    GetField('NFIRSHAZMAT','AREAAFFECT').AsString  := GetField(Inc_HazQuery,'AREA_AFF_UNIT').AsString;    //change for some (swansea, rutland)
    GetField('NFIRSHAZMAT','HAZMATDISP').AsString  := GetField(Inc_HazQuery,'DISPOSITION').AsString;   
    A('NFIRSHAZMAT').Post;
  end;
end;

procedure TConvFHForm.LoadNfirsArson;
begin
  Inc_ArsQuery.UpdateSQL('SELECT * FROM INC_ARS WHERE INCI_ID = ' + AddExpr(inci_id));
  If Inc_ArsQuery.RecordsExist then begin
    A('NFIRSARSON').UpdateSQL('SELECT * FROM NFIRSARSON WHERE NFIRSMAINID = ' + NfirsMainID);
    If A('NFIRSARSON').RecordsExist then
      A('NFIRSARSON').Edit
    else
      A('NFIRSARSON').Append;

    GetField('NFIRSARSON','NFIRSMAINID').AsString   := NfirsMainID;
    GetField('NFIRSARSON','ARCITY').AsString        := Inc_ArsQuery.FieldByName('city').AsString;
    GetField('NFIRSARSON','ARSTATE').AsString       := Inc_ArsQuery.FieldByName('state').AsString;
    GetField('NFIRSARSON','ARZIP').AsString         := Inc_ArsQuery.FieldByName('zip').AsString;
    GetField('NFIRSARSON','CASESTATUS').AsString    := Inc_ArsQuery.FieldByName('case_status').AsString;         //change for swansea
    GetField('NFIRSARSON','AVALMFI').AsString       := Inc_ArsQuery.FieldByName('avail_mat').AsString;
    GetField('NFIRSARSON','IDCON').AsString         := Inc_ArsQuery.FieldByName('container').AsString;
    GetField('NFIRSARSON','IDIDELAY').AsString      := Inc_ArsQuery.FieldByName('delay_device').AsString;       //change for swansea
    GetField('NFIRSARSON','IDFUEL').AsString        := Inc_ArsQuery.FieldByName('fuel').AsString;
    GetField('NFIRSARSON','ENTMETH').AsString       := Inc_ArsQuery.FieldByName('entry_method').AsString;         //change for swansea
    GetField('NFIRSARSON','EXINVOLV').AsString      := Inc_ArsQuery.FieldByName('extent_invl').AsString;        //change for swansea add l
    GetField('NFIRSARSON','PROPOWN').AsString       := Inc_ArsQuery.FieldByName('prop_own').AsString;
    GetField('NFIRSARSON','NARR').AsString          := Inc_ArsQuery.FieldByName('narrative').AsString;
    GetField('NFIRSARSON','DATETIMESTART').AsString := Inc_ArsQuery.FieldByName('start_dt').AsString;
    GetField('NFIRSARSON','DATETIMEEND').AsString   := Inc_ArsQuery.FieldByName('invest_dt').AsString;
    GetField('NFIRSARSON','ARCASENUMB').AsString    := Inc_ArsQuery.FieldByName('invest_id').AsString;
    GetField('NFIRSARSON','ADDRESS').AsString       := Inc_ArsQuery.FieldByName('number').AsString + ' ' + Inc_ArsQuery.FieldByName('st_prefix').AsString + ' ' + Inc_ArsQuery.FieldByName('street').AsString + ' ' + Inc_ArsQuery.FieldByName('st_type').AsString;

    If (Inc_ArsQuery.FieldByName('no_motiv').AsString = 'True')then
      GetField('NFIRSARSON','SUSPMOTUU').AsString := 'UU';
    If (Inc_ArsQuery.FieldByName('no_grpinvl').AsString = 'True')then     
      GetField('NFIRSARSON','AGIN').AsString := 'N';
    If (Inc_ArsQuery.FieldByName('unk_grpinvl').AsString = 'True')then            //change for swansea
      GetField('NFIRSARSON','AGIU').AsString := 'U';
    If (Inc_ArsQuery.FieldByName('no_lab_used').AsString = 'True')then            //change for swansea
      GetField('NFIRSARSON','LABN').AsString := 'N';

    A('NFIRSARSON').Post;
  end;
end;

procedure TConvFHForm.HydButtonClick(Sender: TObject);
Var Hyd_Main       : TApolloData;
    Hyd_Actv       : TApolloData;
    Hyd_Dfct       : TApolloData;
    Hyd_User       : TApolloData;
    HydCode        : String;
    Street         : String;
    CrossStreet    : String;
    OOSVar         : String;
    ISVar          : String;
    FdidVar        : String;
begin
  AddStatusListBox(ListBox,'Converting Hydrants . . . . . Started');
  ConnectFH;

  Hyd_Main := Open_Query(FHDatabase,false,'SELECT * FROM HYD_MAIN');
  Hyd_Actv := Open_Query(FHDatabase,false,'SELECT * FROM HYD_ACTV WHERE 1=2');
  Hyd_Dfct := Open_Query(FHDatabase,false,'SELECT * FROM HYD_DFCT WHERE 1=2');
  Hyd_User := Open_Query(FHDatabase,false,'SELECT * FROM HYD_USER WHERE 1=2');

  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('HYDINSPECT',true,'SELECT * FROM HYDINSPECT WHERE 1=2');
  Open_Query('N5DISTRICT',false,'SELECT * FROM N5DISTRICT');
  Open_Query('HYDTYPE',false,'SELECT * FROM HYDTYPE');
  Open_Query('HYDINSPECTDEF',true,'SELECT * FROM HYDINSPECTDEF WHERE 1=2');
  Open_Query('HYDINSPECTDEFLU',false,'SELECT * FROM HYDINSPECTDEFLU');
  Open_Query('HYDNFPACLASS',false,'SELECT * FROM HYDNFPACLASS');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('DISPLOC',false,'SELECT * FROM DISPLOC');

  Gauge.MaxValue            := Hyd_Main.QueryRecCount;
  Gauge.progress            := 0;
  While Not Hyd_Main.Eof do begin

    OOSVar  := SQLLookUp('OOS','CODE','HYDSTATUS','HYDSTATUSID');
    ISVar   := SQLLookUp('IS','CODE','HYDSTATUS','HYDSTATUSID');
    HydCode := alltrim(Hyd_Main.FieldByName('HYDR_ID').AsString);
    FdidVar := GetConvFdid(ConvFdidField.Caption);

    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + AddExpr(HydCode) + ' AND FDID = ' + AddExpr(FdidVar));
    If A('HYD').RecordsExist then
      A('HYD').Edit
    else
      A('HYD').Append;

    Street                                 := alltrim(alltrim(Hyd_Main.FieldByName('ST_PREFIX').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('STREET').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('ST_TYPE').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('ST_SUFFIX').AsString));
    CrossStreet                            := alltrim(alltrim(Hyd_Main.FieldByName('XST_PREFIX').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('XSTREET').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('XST_TYPE').AsString) + ' ' + alltrim(Hyd_Main.FieldByName('XST_SUFFIX').AsString));
    GetField('HYD','FDID').AsString        := FdidVar;
    GetField('HYD','HYDCODE').AsString     := HydCode;
    GetField('HYD','STRNUM').AsString      := Hyd_Main.FieldByName('NUMBER').AsString;
    GetField('HYD','STREET').AsString      := Street;
    GetField('HYD','CROSSSTREET').AsString := CrossStreet;
    GetField('HYD','CITY').AsString        := Hyd_Main.FieldByName('CITY').AsString;
    GetField('HYD','STATE').AsString       := Hyd_Main.FieldByName('STATE').AsString;
    GetField('HYD','ZIP').AsString         := Hyd_Main.FieldByName('ZIP').AsString;

    If (alltrim(Hyd_Main.FieldByName('ADDR_2').AsString) = '') then
      GetField('HYD','LOCATION').AsString := alltrim(alltrim(Hyd_Main.FieldByName('NUMBER').AsString) + ' ' + alltrim(Street))
    else
      GetField('HYD','LOCATION').AsString := Hyd_Main.FieldByName('ADDR_2').AsString;

    GetField('HYD','MAINSIZE').AsString    := Hyd_Main.FieldByName('MAIN_SIZE').AsString;
    GetField('HYD','STEAMERSIZE').AsString := Hyd_Main.FieldByName('STEAMER_SIZE').AsString;
    GetField('HYD','NARR').AsString        := Hyd_Main.FieldByName('NOTES').AsString;

    GetField('HYD','LATITUDE').AsFloat     := DecimalToMinutes(GetField(Hyd_Main,'LATITUDE').AsFloat);
    
    if GetField(Hyd_Main,'LONGITUDE').AsFloat > 0 then
      GetField('HYD','LONGITUDE').AsFloat    := DecimalToMinutes(GetField(Hyd_Main,'LONGITUDE').AsFloat) * -1
    else
      GetField('HYD','LONGITUDE').AsFloat    := DecimalToMinutes(GetField(Hyd_Main,'LONGITUDE').AsFloat);

    If A('N5DISTRICT').ExactQueryLocate('CODE',Hyd_Main.FieldByName('DISTRICT').AsString) then
      GetField('HYD','N5DISTRICTID').AsString := GetField('N5DISTRICT','N5DISTRICTID').AsString;

    If A('DISPLOC').ExactQueryLocate('CODE',Hyd_Main.FieldByName('STATION').AsString) then
      GetField('HYD','DISPLOCID').AsString := GetField('DISPLOC','DISPLOCID').AsString;

//  GetField('HYD','ZONE').AsString        := Hyd_Main.FieldByName('ZONE').AsString;
    GetField('HYD','MANUFACT').AsString    := Hyd_Main.FieldByName('MAKE').AsString;
    GetField('HYD','MODEL').AsString       := Hyd_Main.FieldByName('MODEL').AsString;
    GetField('HYD','YEAR').AsString        := Hyd_Main.FieldByName('YEAR').AsString;
    GetField('HYD','BARRELSIZE').AsString  := Hyd_Main.FieldByName('BARREL_SIZE').AsString;
    GetField('HYD','BARRELLENGTH').AsString:= Hyd_Main.FieldByName('BARR_LENGTH').AsString;
    GetField('HYD','VALVELOC').AsString    := Hyd_Main.FieldByName('VALVE_LOC').AsString;
    GetField('HYD','VALVESIZE').AsString   := Hyd_Main.FieldByName('VALVE_SIZE').AsString;

    If Hyd_Main.FieldByName('NOT_IN_SRV').Asboolean then
      Getfield('HYD','HYDSTATUSID').AsString := OOSVar
    else
      Getfield('HYD','HYDSTATUSID').AsString := ISVar;

    If A('HYDNFPACLASS').ExactQueryLocate('CODE',Hyd_Main.FieldByName('CLASS').AsString) then
      GetField('HYD','HYDNFPACLASSID').AsString := GetField('HYDNFPACLASS','HYDNFPACLASSID').AsString;

    If A('HYDTYPE').ExactQueryLocate('CODE',Hyd_Main.FieldByName('MAIN_TYPE').AsString) then
      GetField('HYD','HYDTYPEID').AsString := GetField('HYDTYPE','HYDTYPEID').AsString;
      
    A('HYD').Post;

    Gauge.progress        := Gauge.progress + 1;
    Application.ProcessMessages;
    AddStatusListBox(ListBox,'Converting Hydrant ' + HydCode);
    
    Hyd_Actv.UpdateSQL('select * from hyd_actv where hydr_id = ' + AddExpr(HydCode));

    While Not Hyd_Actv.Eof do begin
      A('HYDINSPECT').UpdateSQL('SELECT * FROM HYDINSPECT WHERE HACT_ID = ' + AddExpr(Hyd_actv.FieldByName('HACT_ID').AsString));
      If A('HYDINSPECT').RecordsExist then
        A('HYDINSPECT').Edit
      else
        A('HYDINSPECT').Append;

      GetField('HYDINSPECT','DATETIMEINSPECT').AsDateTime := Hyd_actv.FieldByName('DATE').AsDateTime;
      GetField('HYDINSPECT','HYDCODE').AsString           := HydCode;
      GetField('HYDINSPECT','HYDID').AsString             := GetField('HYD','HYDID').AsString;
      GetField('HYDINSPECT','HACT_ID').AsString           := Hyd_actv.FieldByName('HACT_ID').AsString;

      If A('PERS').ExactQueryLocate('PERSCODE',Hyd_actv.FieldByName('STAFF_ID').AsString) then
        GetField('HYDINSPECT','PERSID').AsString := GetField('PERS','PERSID').AsString;

      GetField('HYDINSPECT','FLOWRATE').AsString          := Hyd_actv.FieldByName('HYDR_GPM').AsString;
      GetField('HYDINSPECT','OFLOW1').AsString            := Hyd_actv.FieldByName('HYDR_GPM').AsString;

      GetField('HYDINSPECT','TTF0').AsString              := Hyd_actv.FieldByName('GPM_0').AsString;
      GetField('HYDINSPECT','TTF10').AsString             := Hyd_actv.FieldByName('GPM_10').AsString;
      GetField('HYDINSPECT','TTF20').AsString             := Hyd_actv.FieldByName('GPM_20').AsString;

      GetField('HYDINSPECT','STATICPRESSURE').AsString    := Hyd_actv.FieldByName('STATIC').AsString;
      GetField('HYDINSPECT','RESIDUALPRESSURE').AsString  := Hyd_actv.FieldByName('RESIDUAL').AsString;

      GetField('HYDINSPECT','UNITNUM').AsString           := GetUnitNum(Hyd_actv.FieldByName('UNIT').AsString);
      If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',Hyd_actv.FieldByName('SHIFT').AsString) then
        GetField('HYDINSPECT','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

      GetField('HYDINSPECT','FLOWTEST').AsString          := IIf(Hyd_Actv.FieldByName('FLOWTEST').AsBoolean,'Y','');
      GetField('HYDINSPECT','FLUSHED').AsString           := IIf(Hyd_Actv.FieldByName('FLUSHED').AsBoolean,'Y','');
      GetField('HYDINSPECT','SERVICED').AsString          := IIf(Hyd_Actv.FieldByName('SERVICED').AsBoolean,'Y','');
      GetField('HYDINSPECT','PAINTED').AsString           := IIf(Hyd_Actv.FieldByName('PAINTED').AsBoolean,'Y','');
      GetField('HYDINSPECT','INSPECTED').AsString         := IIf(Hyd_Actv.FieldByName('INSPECTED').AsBoolean,'Y','');

      GetField('HYDINSPECT','PITOT1').AsString            := Hyd_actv.FieldByName('PITOT').AsString;
      GetField('HYDINSPECT','PITOT2').AsString            := Hyd_actv.FieldByName('PITOT2').AsString;

      GetField('HYDINSPECT','COEF1').AsString             := Hyd_actv.FieldByName('COEFF').AsString;
      GetField('HYDINSPECT','DIAM1').AsString             := Hyd_actv.FieldByName('DIAMETER').AsString;

      A('HYDINSPECT').Post;

      Hyd_Dfct.UpdateSQL('select * from hyd_dfct where hact_id = ' + AddExpr(Hyd_actv.FieldByName('HACT_ID').AsString));

      While Not Hyd_dfct.Eof do begin
        A('HYDINSPECTDEF').UpdateSQL('SELECT * FROM HYDINSPECTDEF WHERE P_HYD_DFCT = ' + AddExpr(Hyd_Dfct.FieldByName('P_HYD_DFCT').AsString));
        If A('HYDINSPECTDEF').RecordsExist then
          A('HYDINSPECTDEF').Edit
        else
          A('HYDINSPECTDEF').Append;

        GetField('HYDINSPECTDEF','HYDINSPECTID').AsString := GetField('HYDINSPECT','HYDINSPECTID').AsString;
        GetField('HYDINSPECTDEF','P_HYD_DFCT').AsString   := Hyd_Dfct.FieldByName('P_HYD_DFCT').AsString;
        GetField('HYDINSPECTDEF','REPAIRED').AsString     := IIf(Hyd_Dfct.FieldByName('REPAIRED').AsBoolean,'Y','N');

        If A('HYDINSPECTDEFLU').ExactQueryLocate('CODE',Hyd_Dfct.FieldByName('DEFECT').AsString) then
          GetField('HYDINSPECTDEF','HYDINSPECTDEFLUID').AsString := GetField('HYDINSPECTDEFLU','HYDINSPECTDEFLUID').AsString;

        A('HYDINSPECTDEF').Post;
        Hyd_Dfct.Next;
      end;

      Hyd_Actv.Next;
    end;

    Hyd_Main.Next;

    A('HYDINSPECT').UpdateSQL('SELECT TOP 1 * FROM HYDINSPECT WHERE HYDCODE = ' + edbfield('HYD','HYDCODE') + ' AND TTF20 > 0 AND TTF0 > 0 ORDER BY DATETIMEINSPECT DESC');
    If A('HYDINSPECT').RecordsExist then begin
      A('HYD').Edit;
      GetField('HYD','STATICPRESSURE').AsString   := GetField('HYDINSPECT','STATICPRESSURE').AsString;
      GetField('HYD','RESIDUALPRESSURE').AsString := GetField('HYDINSPECT','RESIDUALPRESSURE').AsString;
      GetField('HYD','LASTFLOWDATE').AsDateTime   := GetField('HYDINSPECT','DATETIMEINSPECT').AsDateTime;
      GetField('HYD','PITOTPRESSURE').AsString    := GetField('HYDINSPECT','PITOT1').AsString;
      GetField('HYD','FLOWRATE0').AsString        := GetField('HYDINSPECT','TTF0').AsString;
      GetField('HYD','FLOWRATE20').AsString       := GetField('HYDINSPECT','TTF20').AsString;
      GetField('HYD','FLOWRATE').AsString         := GetField('HYDINSPECT','FLOWRATE').AsString;

      GetField('HYD','GATESIZE').AsString         := GetField('HYDINSPECT','DIAM1').AsString;
      GetField('HYD','OUTLETSIZE').AsString       := GetField('HYDINSPECT','DIAM1').AsString;
      GetField('HYD','COEFFICIENT').AsString      := GetField('HYDINSPECT','COEF1').AsString;
      A('HYD').Post;
    end;
  end;

  Hyd_Main.Free;
  Hyd_Actv.Free;
  Hyd_Dfct.Free;
  Hyd_User.Free;

  CloseApollo('HYD');
  CloseApollo('PERS');
  CloseApollo('HYDTYPE');
  CloseApollo('HYDINSPECT');
  CloseApollo('HYDINSPECTLU');
  CloseApollo('HYDNFPACLASS');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('N5DISTRICT');
  CloseApollo('DISPLOC');
  AddStatusListBox(ListBox,'Converting Hydrants . . . . . Completed');
end;

procedure TConvFHForm.NIButtonClick(Sender: TObject);
Var PersCode      : String;
    CodeVar       : String;
    NIID          : String;
    NISTypeCode   : String;
begin
  AddStatusListBox(ListBox,'Converting Non Incidents. . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'ACT_MAIN',false,'SELECT * FROM ACT_MAIN WHERE ' + BuildSQLAlpineDate('ACT_MAIN.DTTM',InitialDateField.Value,FinalDateField.Value) + ' AND (INCI_NO IS NULL OR INCI_NO = ' + AddExpr('') + ') ORDER BY ACT_MAIN.DTTM');
  Open_Query(FHDatabase,'ACT_DET', false,'SELECT * FROM ACT_DET WHERE 1=2');

  Open_Query('NI',           true, 'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',        true, 'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',         false,'SELECT FDID, PERSID, PERSCODE FROM PERS');
  Open_Query('NIPTYPE',      false,'SELECT * FROM NIPTYPE');
  Open_Query('NISTYPE',      false,'SELECT * FROM NISTYPE');
  Open_Query('LOCATION',     false,'SELECT * FROM LOCATION');
  Open_Query('NIUSER1',      false,'SELECT * FROM NIUSER1');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');
  Open_Query('FDIDCOMP',     false,'SELECT * FROM FDIDCOMP');

  Gauge.MaxValue            := A('ACT_MAIN').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('ACT_MAIN').Eof do begin
    CodeVar       := GetField('ACT_MAIN','ACTIV_ID').AsString;

    NISTypeCode := tdbfield('ACT_MAIN','ACT_CODE');
    If mFireID = '42044' then begin
      If NISTypeCode = '70' then
        NISTypeCode := 'MM'
      else If NISTypeCode = '30' then
        NISTypeCode := 'TR'
      else If NISTypeCode = '40' then
        NISTypeCode := 'DR';
    end;


    If A('NISTYPE').ExactQueryLocate('CODE',NISTypeCode) then begin

      A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + AddExpr(CodeVar));
      If A('NI').RecordsExist then
        A('NI').Edit
      else
        A('NI').Append;

      GetField('NI','FDID').AsString            := GetConvFdid(ConvFdidField.Value);
      Getfield('NI','CODE').AsString            := CodeVar;
      Getfield('NI','NIPTYPEID').AsString       := GetField('NISTYPE','NIPTYPEID').AsString;
      Getfield('NI','NISTYPEID').AsString       := GetField('NISTYPE','NISTYPEID').AsString;
      Getfield('NI','NILOSAPCATID').AsString    := GetField('NISTYPE','NILOSAPCATID').AsString;

      Getfield('NI','DATETIMESTART').AsDateTime := GetField('ACT_MAIN','DTTM').AsDateTime;

      If (GetField('ACT_MAIN','END_DTTM').AsDateTime > 0) then
        Getfield('NI','DATETIMEEND').AsDateTime   := GetField('ACT_MAIN','END_DTTM').AsDateTime
      else if (GetField('ACT_MAIN','DATE').AsDateTime > 0) and Not (tdbfield('ACT_MAIN','END_TIME') = '') then begin
        Getfield('NI','DATETIMEEND').AsDateTime   := GetField('ACT_MAIN','DATE').AsDateTime + GetRealTime(tdbfield('ACT_MAIN','END_TIME'))
      end;

      Getfield('NI','DESCR').AsString           := GetField('ACT_MAIN','DESCRIPT').AsString;
      Getfield('NI','POINT').AsFloat            := GetField('ACT_MAIN','POINTS').AsFloat;
      Getfield('NI','EVLENGTH').AsFloat         := GetField('ACT_MAIN','HOURS').AsFloat;
      Getfield('NI','NARR').AsString            := GetField('ACT_MAIN','NOTES').AsString;
      Getfield('NI','UNITNUM').AsString         := GetUnitNum(GetField('ACT_MAIN','UNIT').AsString);

      If MultiFdid then begin
        If A('LOCATION').ExactQueryLocate(['CODE','FDID'],[tdbfield('ACT_MAIN','LOCATION'),tdbfield('NI','FDID')]) then
          GetField('NI','LOCATIONID').AsString := GetField('LOCATION','LOCATIONID').AsString;
      end else begin
        If A('LOCATION').ExactQueryLocate('CODE',tdbfield('ACT_MAIN','LOCATION')) then
          GetField('NI','LOCATIONID').AsString := GetField('LOCATION','LOCATIONID').AsString;
      end;    

      If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',GetField('ACT_MAIN','SHIFT').AsString) then
        GetField('NI','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

      If A('SCHDLOC').ExactQueryLocate('CODE',GetField('ACT_MAIN','STATION').AsString) then
        GetField('NI','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

      If A('FDIDCOMP').ExactQueryLocate('CODE',GetField('ACT_MAIN','STATION').AsString) then
        GetField('NI','FDIDCOMPID').AsString := GetField('FDIDCOMP','FDIDCOMPID').AsString;

      Getfield('NI','FHFIRE').AsString    := IIf(GetField('ACT_MAIN','FIRE').AsBoolean,'Y','N');
      Getfield('NI','FHRESCUE').AsString  := IIf(GetField('ACT_MAIN','RESCUE').AsBoolean,'Y','N');
      Getfield('NI','FHMEDICAL').AsString := IIf(GetField('ACT_MAIN','MEDICAL').AsBoolean,'Y','N');
      Getfield('NI','FHOTHER').AsString   := IIf(GetField('ACT_MAIN','OTHER').AsBoolean,'Y','N'); 

      GetTable('NI').Post;
      NIID := GetField('NI','NIID').AsString;

      A('ACT_DET').UpdateSQL('SELECT * FROM ACT_DET WHERE ACTIV_ID = ' + AddExpr(CodeVar));

      While Not A('ACT_DET').Eof do begin
        PersCode := GetField('ACT_DET','STAFF_ID').AsString;
        If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,tdbfield('NI','FDID')]) then begin
          A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + NIID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
          If A('NIATT').RecordsExist then
            A('NIATT').Edit
          else
            A('NIATT').Append;
          GetField('NIATT','NIID').AsString            := NIID;
          GetField('NIATT','FDID').AsString            := GetConvFdid(ConvFdidField.Value);
          GetField('NIATT','PERSID').AsString          := GetField('PERS','PERSID').AsString;
          GetField('NIATT','POINT').AsString           := GetField('ACT_DET','POINTS').AsString;
          GetField('NIATT','EVLENGTH').AsFloat         := GetField('ACT_DET','HOURS').AsFloat;
          A('NIATT').Post;
        end;
        A('ACT_DET').Skip(1);
      end;
    end else begin
      AddStatusListBox(ErrorBox,'Missing Non Incident Code Type = ' + tdbfield('ACT_MAIN','ACT_CODE') + ' for Non Incident Number ' + CodeVar);
      appendtolog('Missing Non Incident Code Type = ' + tdbfield('ACT_MAIN','ACT_CODE') + ' for Non Incident Number ' + CodeVar);
    end;

    Gauge.progress  := Gauge.progress + 1;
    AddStatusListBox(ListBox,'Converting Non Incident Number ' + CodeVar);

    Application.ProcessMessages;
    A('ACT_MAIN').Skip(1);
  end;

  CloseApollo('ACT_MAIN');
  CloseApollo('ACT_DET');

  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');
  CloseApollo('NIPTYPE');
  CloseApollo('NISTYPE');
  CloseApollo('LOCATION');
  CloseApollo('NIUSER1');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('SCHDLOC');
  CloseApollo('FDIDCOMP');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Non Incidents. . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.NIFieldListButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Loading NIFIELDLIST . . . . . Started');
  Open_Query('NIPTYPE',true,'SELECT * FROM NIPTYPE');
  While Not A('NIPTYPE').Eof do begin
    AddStatusListBox(ListBox,'Loading NIFIELDLIST for NIPTYPE = ' + tdbfield('NIPTYPE','CODE'));
    TNISetForm.LoadNIFieldList(GetField('NIPTYPE','NIPTYPEID').AsString);
    A('NIPTYPE').Skip(1);
  end;
  CloseApollo('NIPTYPE');
  AddStatusListBox(ListBox,'Loading NIFIELDLIST . . . . . Done');
end;

procedure TConvFHForm.NILosapCATButtonClick(Sender: TObject);
  procedure LoadNILosapCAT(CodeVar, DescrVar: String);
  begin
    A('NILOSAPCAT').UpdateSQL('SELECT * FROM NILOSAPCAT WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NILOSAPCAT');
    GetField('NILOSAPCAT','FDID').AsString       := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');
    GetField('NILOSAPCAT','CODE').AsString       := CodeVar;
    GetField('NILOSAPCAT','DESCR').AsString      := DescrVar;
    GetField('NILOSAPCAT','SHORTDESCR').AsString := DescrVar;
    GetTable('NILOSAPCAT').Post;
  end;
begin
  AddStatusListBox(ListBox,'Loading NILOSAPCAT . . . . . Started');
  Open_Query('NILOSAPCAT',true,'SELECT * FROM NILOSAPCAT WHERE 1=2');
  LoadNILosapCAT('TR','Trainings');
  LoadNILosapCAT('DR','Drills');
  LoadNILosapCAT('MT','Meetings');
  LoadNILosapCAT('ST','Standbys');
  LoadNILosapCAT('MI','Miscellaneous');
  CloseApollo('NILOSAPCAT');
  AddStatusListBox(ListBox,'Loading NILOSAPCAT . . . . . Done');
end;

procedure TConvFHForm.NIPTypeButtonClick(Sender: TObject);
Var NIPTypeID : String;
  procedure LoadNIPType(CodeVar, DescrVar: String);
  begin
    A('NIPTYPE').UpdateSQL('SELECT * FROM NIPTYPE WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NIPTYPE');
    GetField('NIPTYPE','FDID').AsString       := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');
    GetField('NIPTYPE','CODE').AsString       := CodeVar;
    GetField('NIPTYPE','DESCR').AsString      := DescrVar;
    GetField('NIPTYPE','SHORTDESCR').AsString := DescrVar;
    GetField('NIPTYPE','ACTIVE').AsString     := 'Y';
    GetTable('NIPTYPE').Post;
    NIPTypeID := GetField('NIPTYPE','NIPTYPEID').AsString;
  end;
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting NIPTYPE . . . . . Started');
  Open_Query(FHDatabase,'LKP_GRP',false,'SELECT * FROM LKP_GRP WHERE CATEGORY = ' + AddExpr('ACTV TYPE') + ' ORDER BY GRP');

  Open_Query('NIPTYPE',true,'SELECT * FROM NIPTYPE WHERE 1=2');
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  LoadNIPType('DT','Drill and Trainings');

  Gauge.MaxValue            := A('LKP_GRP').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('LKP_GRP').Eof do begin
    Gauge.progress        := Gauge.progress + 1;

    A('NIPTYPE').UpdateSQL('SELECT * FROM NIPTYPE WHERE CODE = ' + edbfield('LKP_GRP','GRP'));
    PutInUpdateMode('NIPTYPE');
    GetField('NIPTYPE','FDID').AsString       := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');
    GetField('NIPTYPE','DESCR').AsString      := tdbfield('LKP_GRP','DESCRIPT');
    GetField('NIPTYPE','SHORTDESCR').AsString := tdbfield('LKP_GRP','DESCRIPT');
    GetField('NIPTYPE','CODE').AsString       := tdbfield('LKP_GRP','GRP');
    GetField('NIPTYPE','ACTIVE').AsString     := 'Y';
    GetTable('NIPTYPE').Post;

    AddStatusListBox(ListBox,'Converting NIPTYPE Code ' + tdbfield('LKP_GRP','GRP'));

    A('LKP_GRP').Skip(1);
  end;

  A('NIPTYPE').UpdateSQL('SELECT * FROM NIPTYPE');
  If A('NIPTYPE').QueryRecCount = 1 then
    LoadNIPType('MI','Miscellaneous');
    
  CloseApollo('LKP_GRP');
  CloseApollo('NIPTYPE');
  CloseApollo('NISTYPE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting NIPTYPE . . . . . Started');
  ShowMessage('Done');
end;

procedure TConvFHForm.NISTypeButtonClick(Sender: TObject);

  procedure LoadNISType(CodeVar, DescrVar, Point: String);
  begin
    A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + pkValue(Getfield('NIPTYPE','NIPTYPEID').AsString) + ' AND CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NISTYPE');
    GetField('NISTYPE','FDID').AsString       := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');
    GetField('NISTYPE','NIPTYPEID').AsString  := Getfield('NIPTYPE','NIPTYPEID').AsString;
    GetField('NISTYPE','CODE').AsString       := CodeVar;
    GetField('NISTYPE','DESCR').AsString      := DescrVar;
    GetField('NISTYPE','SHORTDESCR').AsString := DescrVar;
    GetField('NISTYPE','POINT').AsString      := Point;
    GetField('NISTYPE','ACTIVE').AsString     := 'Y';
    GetTable('NISTYPE').Post;
  end;

begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting NISTYPE . . . . . Started');
  Open_Query(FHDatabase,'LKP_STF',false,'SELECT * FROM LKP_STF WHERE CATEGORY = ' + AddExpr('ACTV TYPE') + ' ORDER BY GRP');

  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE');
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  If A('NIPTYPE').ExactQueryLocate('CODE','DT') then begin
    LoadNISType('TR','Trainings','');
    LoadNISType('DR','Drills','');
  end;

  Gauge.MaxValue            := A('LKP_STF').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('LKP_STF').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    AddStatusListBox(ListBox,'Converting NISTYPE Code ' + tdbfield('LKP_STF','CODE'));

    If tdbfield('LKP_STF','GRP') = '' then begin
      If A('NIPTYPE').ExactQueryLocate('CODE','MI') then
        LoadNISType(tdbfield('LKP_STF','CODE'),tdbfield('LKP_STF','DESCRIPT'),GetField('LKP_STF','DEF_PTS').AsString);

    end else begin
      If A('NIPTYPE').ExactQueryLocate('CODE',tdbfield('LKP_STF','GRP')) then begin
        If Not (tdbfield('NIPTYPE','CODE') = '') then begin
          LoadNISType(tdbfield('LKP_STF','CODE'),tdbfield('LKP_STF','DESCRIPT'),GetField('LKP_STF','DEF_PTS').AsString);
        end;
      end;
    end;

    A('LKP_STF').Skip(1);
  end;

  CloseApollo('LKP_STF');
  CloseApollo('NIPTYPE');
  CloseApollo('NISTYPE');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting NISTYPE . . . . . Done');
end;

procedure TConvFHForm.NITrainCatTypeButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting NITrainCATType . . . . . Started');
  Open_Query(FHDatabase,'LKP_GRP',false,'SELECT * FROM LKP_GRP');

  Open_Query('NITRAINCATTYPE',true,'SELECT * FROM NITRAINCATTYPE WHERE 1=2');

  Gauge.MaxValue            := A('LKP_GRP').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('LKP_GRP').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    Application.ProcessMessages;
    
    If (tdbfield('LKP_GRP','CATEGORY') = 'TRNG CAT') then begin
      FdidVar := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');
      FdidVar := '21010';

      If (FdidVar = '') then
        A('NITRAINCATTYPE').UpdateSQL('SELECT * FROM NITRAINCATTYPE WHERE CODE = ' + edbfield('LKP_GRP','GRP'))
      else
        A('NITRAINCATTYPE').UpdateSQL('SELECT * FROM NITRAINCATTYPE WHERE FDID = ' + AddExpr(FdidVar) + ' AND CODE = ' + edbfield('LKP_GRP','GRP'));

      If A('NITRAINCATTYPE').RecordsExist then
        A('NITRAINCATTYPE').Edit
      else
        A('NITRAINCATTYPE').Append;
      Getfield('NITRAINCATTYPE','FDID').AsString  := FdidVar;
      Getfield('NITRAINCATTYPE','CODE').AsString  := tdbfield('LKP_GRP','GRP');
      Getfield('NITRAINCATTYPE','DESCR').AsString := tdbfield('LKP_GRP','DESCRIPT');
      A('NITRAINCATTYPE').Post;
    end;
    A('LKP_GRP').Skip(1);
  end;
  CloseApollo('LKP_GRP');
  CloseApollo('NITRAINCATTYPE');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting NITrainCATType . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.PermitButtonClick(Sender: TObject);
var Occup_ID  : String;
    SQLVar    : String;
    Permit_ID : String;
    InspID    : String;
begin
  inherited;
  ConnectFH;
  Gauge.progress := 0;
  If ConvRecordField.Value = '' then
    SQLVar         := 'SELECT * FROM OCC_PERM WHERE ' + BuildSQLAlpineDate('OCC_PERM.ISSUED',InitialDateField.Value,FinalDateField.Value)
  else
    SQLVar         := 'SELECT * FROM OCC_PERM WHERE PERMIT_NO = ' + AddExpr(ConvRecordField.Value);
  Open_Query(FHDatabase,'OCC_PERM',false,SQLVar);
  Open_Query(FHDatabase,'OCC_PUSR',       false,'SELECT * FROM OCC_PUSR WHERE 1=2');
  Open_Query('PERMIT',         true, 'SELECT * FROM PERMIT WHERE 1=2');
  Open_Query('PERMTYPE',       true, 'SELECT * FROM PERMITTYPE');
  Open_Query('PERS',           false,'SELECT PERSCODE, FNAME, LNAME, MNAME, PERSID FROM PERS');
  Open_Query('PROP',           false,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('INSP',           false,'SELECT * FROM INSP WHERE 1=2');

  Gauge.MaxValue := A('OCC_PERM').QueryRecCount;

  While Not A('OCC_PERM').Eof do begin
    Insp_ID   := alltrim(tdbfield('OCC_PERM','INSP_ID'));
    Permit_ID := alltrim(tdbfield('OCC_PERM','PERMIT_ID'));
    Occup_ID  := alltrim(tdbfield('OCC_PERM','OCCUP_ID'));

    A('PERMIT').UpdateSQL('SELECT * FROM PERMIT WHERE FHKEY = ' + AddExpr(Permit_ID));
    If A('PERMIT').RecordsExist then
      A('PERMIT').Edit
    else
      A('PERMIT').Append;

    GetField('PERMIT','FHKEY').AsString            := Permit_ID;
    GetField('PERMIT','PERMITNUM').AsString        := tdbfield('OCC_PERM','PERMIT_NO');

    if MFireID = '01920' then
      GetField('PERMIT','FDID').AsString             := '01920'
    else
      GetField('PERMIT','FDID').AsString             := GetConvFdid(ConvFdidField.Value);


    If (GetField('OCC_PERM','DATE_PAID').AsDateTime > 0) then begin
      GetField('PERMIT','FEEPAIDDATE').AsDateTime  := GetField('OCC_PERM','DATE_PAID').AsDateTime;
      If (mFireID = '01920') then
        GetField('PERMIT','PERMITSTATID').AsString := '3';
    end;  

    GetField('PERMIT','FEEAMT').AsString           := GetField('OCC_PERM','FEE').AsString;
    GetField('PERMIT','CHECKCASH').AsString        := GetField('OCC_PERM','CHECK_NO').AsString;

    If (GetField('OCC_PERM','ISSUED').AsDateTime > 0) then
      GetField('PERMIT','DATEAPPL').AsDateTime  := GetField('OCC_PERM','ISSUED').AsDateTime;
    If (GetField('OCC_PERM','EFFECTIVE').AsDateTime > 0) then
      GetField('PERMIT','DATEAPPR').AsDateTime  := GetField('OCC_PERM','EFFECTIVE').AsDateTime;
    If (GetField('OCC_PERM','EXPIRES').AsDateTime > 0) then
      GetField('PERMIT','DATEEXP').AsDateTime  := GetField('OCC_PERM','EXPIRES').AsDateTime;

    if MFireID = '01920' then
      GetField('PERMIT','RESTRNARR').AsString          := GetField('OCC_PERM','NOTES').AsString
    else
      GetField('PERMIT','NARR').AsString               := GetField('OCC_PERM','NOTES').AsString;

    If A('PERMTYPE').ExactQueryLocate('CODE',tdbfield('OCC_PERM','TYPE')) then
      GetField('PERMIT','PERMITTYPEID').AsString := GetField('PERMTYPE','PERMITTYPEID').AsString;

    If A('PERS').ExactQueryLocate('PERSCODE',AllTrim(GetField('OCC_PERM','ISSUED_BY').AsString)) then begin
      GetField('PERMIT','PERSID').AsString       := GetField('PERS','PERSID').AsString;
      GetField('PERMIT','APPROVEBY').AsString    := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME');
      GetField('PERMIT','APPROVETITLE').AsString := 'FIRE PREVENTION OFFICER';
    end;

    InspID := '';
    A('INSP').UpdateSQL('SELECT INSPID,PERSID,ACOMPANY,ACONTACT,AEMAIL,APHONE FROM INSP WHERE FHKEY = ' + AddExpr(Insp_ID));
    If A('INSP').RecordsExist then begin
      GetField('PERMIT','INSPID').AsString   := GetField('INSP','INSPID').AsString;

      if MFireID = '01920' then begin
        GetField('PERMIT','ACOMPANY').AsString := GetField('INSP','ACOMPANY').AsString;
        GetField('PERMIT','ACONTACT').AsString := GetField('INSP','ACONTACT').AsString;
        GetField('PERMIT','AEMAIL').AsString   := GetField('INSP','AEMAIL').AsString;
        GetField('PERMIT','APHONE').AsString   := GetField('INSP','APHONE').AsString;
      If A('PERS').ExactQueryLocate('PERSID',AllTrim(GetField('INSP','PERSID').AsString)) then begin
        GetField('PERMIT','PERSID').AsString       := GetField('PERS','PERSID').AsString;
        GetField('PERMIT','APPROVEBY').AsString    := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME');
        GetField('PERMIT','APPROVETITLE').AsString := 'FIRE PREVENTION OFFICER';
    end;
      end;

      InspID                                 := GetField('INSP','INSPID').AsString;
    end;



    If tdbfield('OCC_PERM','OCCUP_ID') <> '' then begin
      A('PROP').UpdateSQL('SELECT PROPID, STRNUM, PLASTNAME, STREET, FIRSTPERS, ROOMAPT, CITY, STATE, ZIP FROM PROP WHERE OCCUP_ID = ' + edbfield('OCC_PERM','OCCUP_ID'));
      If A('PROP').RecordsExist then begin
        GetField('PERMIT','STRNUM').AsString           := tdbfield('PROP','STRNUM');
        GetField('PERMIT','STREET').AsString           := tdbfield('PROP','STREET');
        GetField('PERMIT','STRNUM').AsString           := tdbfield('PROP','STRNUM');
        GetField('PERMIT','NAME').AsString             := tdbfield('PROP','PLASTNAME');
        GetField('PERMIT','BUSINESS').AsString         := tdbfield('PROP','FIRSTPERS');
        GetField('PERMIT','ROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
        GetField('PERMIT','CITY').AsString             := tdbfield('PROP','CITY');
        GetField('PERMIT','STATE').AsString            := tdbfield('PROP','STATE');
        GetField('PERMIT','ZIP').AsString              := tdbfield('PROP','ZIP');
        GetField('PERMIT','PROPID').AsString           := GetField('PROP','PROPID').AsString;

        If (mFireID = '01920') then begin
          GetField('PERMIT','ONAME').AsString             := tdbfield('PROP','PLASTNAME');
          GetField('PERMIT','OSTRNUM').AsString           := tdbfield('PROP','STRNUM');
          GetField('PERMIT','OSTREET').AsString           := tdbfield('PROP','STREET');
          GetField('PERMIT','OROOMAPT').AsString          := tdbfield('PROP','ROOMAPT');
          GetField('PERMIT','OCITY').AsString             := tdbfield('PROP','CITY');
          GetField('PERMIT','OSTATE').AsString            := tdbfield('PROP','STATE');
          GetField('PERMIT','OZIP').AsString              := tdbfield('PROP','ZIP');
        end;
      end else begin
        AddStatusListBox(ListBox,'Could not find ' + tdbfield('OCC_PERM','OCCUP_ID'));
        AppendStringToFile('COMM-OCCUP_ID.TXT','Could not find ' + tdbfield('OCC_PERM','OCCUP_ID') + ' for permit ' + tdbfield('OCC_PERM','PERMIT_NO'));
      end;
    end;

    If (mFireID = '01920') then begin
      GetField('PERMIT','ANAME').AsString := tdbfield('OCC_PERM','ISSUEE');
      A('OCC_PUSR').UpdateSQL('SELECT * FROM OCC_PUSR WHERE PERMIT_ID = ' + edbfield('OCC_PERM','PERMIT_ID'));
      If A('OCC_PUSR').RecordsExist then begin
        GetField('PERMIT','DIGSTART').AsString           := tdbfield('OCC_PUSR','DIGSAFEDATE');
        GetField('PERMIT','OPERATOR').AsString           := tdbfield('OCC_PUSR','OPNAME');
        GetField('PERMIT','CURRENTCERTNUM').AsString     := tdbfield('OCC_PUSR','OPCERT');
        GetField('PERMIT','DIGSAFENUM').AsString         := tdbfield('OCC_PUSR','DSAFE');

        GetField('PERMIT','MOBFIREEXT').AsString         := tdbfield('OCC_PUSR','FIREEXT');
        GetField('PERMIT','MOBHOIST').AsString           := tdbfield('OCC_PUSR','HOIST');
        GetField('PERMIT','MOBMAKE').AsString            := tdbfield('OCC_PUSR','MAKE');
        GetField('PERMIT','MOBMOUNTED').AsString         := tdbfield('OCC_PUSR','MOUNTED');
        GetField('PERMIT','MOBPUMP').AsString            := tdbfield('OCC_PUSR','PUMP');
        GetField('PERMIT','MOBSTEEL').AsString           := tdbfield('OCC_PUSR','STEEL');
        GetField('PERMIT','MOBTYPE').AsString            := tdbfield('OCC_PUSR','VEHTYPE');
        GetField('PERMIT','MOBVIN').AsString             := tdbfield('OCC_PUSR','VIN');
        GetField('PERMIT','MOBCAPACITY').AsString        := tdbfield('OCC_PUSR','TANAKCAP');
        GetField('PERMIT','MOBDIESEL').AsString          := tdbfield('OCC_PUSR','DIESEL');
        GetField('PERMIT','MOBYEAR').AsString            := tdbfield('OCC_PUSR','YEAR');
        GetField('PERMIT','MOBREG').AsString             := GetField('OCC_PUSR','REG').AsString;
      end else begin
        AddStatusListBox(ListBox,'Could not find any additional permit data for' + tdbfield('OCC_PERM','PERMIT_ID'));

      end;
    end;

    A('PERMIT').Post;

    If Not (InspID = '') then
      RunSQL('UPDATE INSP SET PERMITID = ' + GetField('PERMIT','PERMITID').AsString + ' WHERE INSPID = ' + pkvalue(InspID));

    A('OCC_PERM').Skip(1);

    AddStatusListBox(ListBox,'Converting Permit: ' + Permit_ID + ' for Address ' + Occup_id);
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('OCC_PERM');
  CloseApollo('OCC_PUSR');
  CloseApollo('PERMIT');
  CloseApollo('PERMTYPE');
  CloseApollo('PERS');
  CloseApollo('PROP');
  CloseApollo('INSP');

  FHDatabase.Free;
  ShowMessage('DONE');
end;

procedure TConvFHForm.PermitTypeButtonClick(Sender: TObject);
begin
  inherited;
  ConnectFH;

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_OCC');
  Open_Query('PERMITTYPE',true,'SELECT * FROM PERMITTYPE WHERE 1=2');

  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'OCC PERM') then begin
      A('PERMITTYPE').UpdateSQL('SELECT * FROM PERMITTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PERMITTYPE').RecordsExist then
        A('PERMITTYPE').Edit
      else
        A('PERMITTYPE').Append;
      Getfield('PERMITTYPE','CODE').AsString   := tdbfield('CODE','CODE');
      Getfield('PERMITTYPE','DESCR').AsString  := tdbfield('CODE','DESCRIPT');
      Getfield('PERMITTYPE','DESCR').AsString  := tdbfield('CODE','DESCRIPT');
      Getfield('PERMITTYPE','FEEAMT').AsFloat  := GetField('CODE','FEE').AsFloat;
      Getfield('PERMITTYPE','ACTIVE').AsString := 'Y';
      A('PERMITTYPE').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('PERMITTYPE');
  FHDatabase.Free;
  ShowMessage('Done');
end;

procedure TConvFHForm.PersAvailButtonClick(Sender: TObject);
var PersCode    : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Personnel Availability . . . . . Started');
  Open_Query(FHDatabase,'STF_AVL',false,'SELECT * FROM STF_AVL');

  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('PERSAVAIL',true,'SELECT * FROM PERSAVAIL WHERE 1=2');
  Open_Query('PERSAVAILTYPE',False,'SELECT * FROM PERSAVAILTYPE');

  Gauge.MaxValue            := A('STF_AVL').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('STF_AVL').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    PersCode              := tdbfield('STF_AVL','STAFF_ID');

    A('PERSAVAIL').UpdateSQL('SELECT * FROM PERSAVAIL WHERE FHKEY = ' + AddExpr(GetField('STF_AVL','p_stf_avl').AsString));
    If A('PERSAVAIL').RecordsExist then
      A('PERSAVAIL').Edit
    else
      A('PERSAVAIL').Append;

    If A('PERS').ExactQueryLocate('PERSCODE',alltrim(PersCode)) then
      GetField('PERSAVAIL','PERSID').AsString := GetField('PERS','PERSID').AsString
    else
      Break;

    GetField('PERSAVAIL','DATESTART').AsString       := GetField('STF_AVL','from_date').AsString;
    GetField('PERSAVAIL','DATEEND').AsString         := GetField('STF_AVL','to_date').AsString;
    GetField('PERSAVAIL','TIMESTART').AsString       := GetField('STF_AVL','from_time').AsString;
    GetField('PERSAVAIL','TIMEEND').AsString         := GetField('STF_AVL','to_time').AsString;

    if GetField('STF_AVL','sun').AsString = 'true' then
      GetField('PERSAVAIL','SUNDAY').AsString        := 'N'
    else
      GetField('PERSAVAIL','SUNDAY').AsString        := 'Y';

    if GetField('STF_AVL','mon').AsString = 'true' then
      GetField('PERSAVAIL','MONDAY').AsString        := 'N'
    else
      GetField('PERSAVAIL','MONDAY').AsString        := 'Y';

    if GetField('STF_AVL','tue').AsString = 'true' then
      GetField('PERSAVAIL','TUESDAY').AsString       := 'N'
    else
      GetField('PERSAVAIL','TUESDAY').AsString       := 'Y';

    if GetField('STF_AVL','wed').AsString = 'true' then
      GetField('PERSAVAIL','WEDNESDAY').AsString     := 'N'
    else
      GetField('PERSAVAIL','WEDNESDAY').AsString     := 'Y';

    if GetField('STF_AVL','thu').AsString = 'true' then
      GetField('PERSAVAIL','THURSDAY').AsString      := 'N'
    else
      GetField('PERSAVAIL','THURSDAY').AsString      := 'Y';

    if GetField('STF_AVL','fri').AsString = 'true' then
      GetField('PERSAVAIL','FRIDAY').AsString        := 'N'
    else
      GetField('PERSAVAIL','FRIDAY').AsString        := 'Y';

    if GetField('STF_AVL','sat').AsString = 'true' then
      GetField('PERSAVAIL','SATURDAY').AsString      := 'N'
    else
      GetField('PERSAVAIL','SATURDAY').AsString      := 'Y';

    GetField('PERSAVAIL','NARR').AsString            := GetField('STF_AVL','notes').AsString;
    GetField('PERSAVAIL','FHKEY').AsString           := GetField('STF_AVL','p_stf_avl').AsString;
    GetField('PERSAVAIL','AVAILABLE').AsString       := 'N';

    If A('PERSAVAILTYPE').ExactQueryLocate('CODE',alltrim(GetField('STF_AVL','code').AsString)) then
      GetField('PERSAVAIL','PERSAVAILTYPEID').AsString := GetField('PERSAVAILTYPE','PERSAVAILTYPEID').AsString;

    Application.ProcessMessages;
    AddStatusListBox(ListBox,'Converting Personnel Availability for ' + tdbfield('STF_AVL','STAFF_ID'));
    A('PERSAVAIL').Post;
    A('STF_AVL').Skip(1);
  end;

  CloseApollo('STF_AVL');
  FHDatabase.Free;
  CloseApollo('PERS');
  CloseApollo('PERSAVAIL');
  CloseApollo('PERSAVAILTYPE');
  AddStatusListBox(ListBox,'Converting Personnel Availability . . . . . Completed');
  ShowMessage('Done');
end;

procedure TConvFHForm.PersButtonClick(Sender: TObject);
Var PersCode : String;
    Fdid     : String;
    CityVar  : String;
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Personnel . . . . . Started');
  If (ConvRecordField.Value = '') then
    Open_Query(FHDatabase,'STF_MAIN',false,'SELECT * FROM STF_MAIN ORDER BY STAFF_ID')
  else  
    Open_Query(FHDatabase,'STF_MAIN',false,'SELECT * FROM STF_MAIN WHERE STAFF_ID = ' + AddExpr(ConvRecordField.Value) + ' ORDER BY STAFF_ID');
  Open_Query(FHDatabase,'STF_ADMN',false,'SELECT * FROM STF_ADMN WHERE 1=2');
  Open_Query(FHDatabase,'STF_PH',false,  'SELECT * FROM STF_PH WHERE 1=2');
  Open_Query(FHDatabase,'STF_EML',false, 'SELECT * FROM STF_EML WHERE 1=2');
  Open_Query(FHDatabase,'STF_CONT',false,'SELECT * FROM STF_CONT WHERE 1=2');
  Open_Query(FHDatabase,'STF_PHC',false, 'SELECT * FROM STF_PHC WHERE 1=2');
  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE 1=2');
  Open_Query(FHDatabase,'STF_HIST',false,'SELECT * FROM STF_HIST WHERE 1=2');

  Open_Query('PERS',         true, 'SELECT * FROM PERS         WHERE 1=2');
  Open_Query('PERSHIST',     true, 'SELECT * FROM PERSHIST     WHERE 1=2');
  Open_Query('PERSIMAGE',    true, 'SELECT * FROM PERSIMAGE    WHERE 1=2');
  Open_Query('PERSPHONE',    true, 'SELECT * FROM PERSPHONE    WHERE 1=2');
  Open_Query('PERSSTATHIST', true, 'SELECT * FROM PERSSTATHIST WHERE 1=2');
  Open_Query('PERSSTAT',     false,'SELECT * FROM PERSSTAT');
  Open_Query('PERSTYPE',     false,'SELECT * FROM PERSTYPE');
  Open_Query('PERSRANK',     false,'SELECT * FROM PERSRANK');
  Open_Query('PERSRACE',     false,'SELECT * FROM PERSRACE');
  Open_Query('PERSDLCLASS',  false,'SELECT * FROM PERSDLCLASS');
  Open_Query('PERSCONT',     true, 'SELECT * FROM PERSCONT');
  Open_Query('PERSCONTTYPE', true, 'SELECT * FROM PERSCONTTYPE');
  Open_Query('SCHDSHIFT',    false,'SELECT SCHDSHIFTNAME.CODE, SCHDSHIFT.SCHDSHIFTID FROM SCHDSHIFT LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFT.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID)');
  Open_Query('SCHDRANK',     false,'SELECT * FROM SCHDRANK');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');
  Open_Query('PERSPHONETYPE',false,'SELECT * FROM PERSPHONETYPE');
  Open_Query('PERSHISTTYPE', false,'SELECT * FROM PERSHISTTYPE');

  Gauge.MaxValue            := A('STF_MAIN').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('STF_MAIN').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    PersCode              := tdbfield('STF_MAIN','STAFF_ID');
    Fdid                  := GetConvFdid(tdbfield('STF_MAIN','FDID'));
    Application.ProcessMessages;

    If MultiFDID then
      A('PERS').UpdateSQL('SELECT * FROM PERS WHERE PERSCODE = ' + AddExpr(PersCode) + ' AND FDID = ' + AddExpr(Fdid))
    else
      A('PERS').UpdateSQL('SELECT * FROM PERS WHERE PERSCODE = ' + AddExpr(PersCode));
    If A('PERS').RecordsExist then
      A('PERS').Edit
    else
      A('PERS').Append;

    Getfield('PERS','PERSCODE').AsString := PersCode;
    Getfield('PERS','FTMEMCODE').AsString:= substr(Fdid,4,2) + '-' + padl(PersCode,4,'0'); 
    GetField('PERS','FDID').AsString     := Fdid;
    GetField('PERS','LNAME').AsString    := tdbfield('STF_MAIN','LAST');
    GetField('PERS','FNAME').AsString    := tdbfield('STF_MAIN','FIRST');
    GetField('PERS','MNAME').AsString    := tdbfield('STF_MAIN','MIDDLE');
    GetField('PERS','ADD1').AsString     := tdbfield('STF_MAIN','ADDR_1');     //ADDR_1 AND ADDR_2 FOR SWANSEA
    GetField('PERS','ADD2').AsString     := tdbfield('STF_MAIN','ADDR_2');
    CityVar                              := tdbfield('STF_MAIN','CITY');   
    GetField('PERS','CITY').AsString     := UpperCase(Substr(CityVar,1,1)) + Substr(CityVar,2,40);
    GetField('PERS','STATE').AsString    := tdbfield('STF_MAIN','STATE');
    GetField('PERS','ZIP').AsString      := tdbfield('STF_MAIN','ZIP');
    GetField('PERS','ATTEND').AsString   := IIf(GetField('STF_MAIN','HIDE').AsBoolean,'N','Y');
    GetField('PERS','JOINDATE').AsString := GetField('STF_MAIN','HIRE_DATE').AsString;

    GetField('PERS','RESDATE').AsString  := GetField('STF_MAIN','END_SERVICE').AsString;

    If (GetField('STF_MAIN','HIRE_DATE').AsDateTime > 0) and (GetField('STF_MAIN','END_SERVICE').AsDateTime = 0) then
      GetField('PERS','YOS').AsFloat := ((Now - GetField('STF_MAIN','HIRE_DATE').AsDateTime) / 365.25)
    else if (GetField('STF_MAIN','HIRE_DATE').AsDateTime > 0) and (GetField('STF_MAIN','END_SERVICE').AsDateTime > 0) then
      GetField('PERS','YOS').AsFloat := ((GetField('STF_MAIN','END_SERVICE').AsDateTime - GetField('STF_MAIN','HIRE_DATE').AsDateTime) / 365.25);
    GetField('PERS','ACTDATE').AsString  := GetField('STF_MAIN','STAT_DATE').AsString;
    If Fdid = '21010' then BEGIN
      If (tdbfield('STF_MAIN','STATUS') = 'ALI') then begin
        GetField('PERS','LIFEDATE').AsString       := GetField('STF_MAIN','STAT_DATE').AsString;
        GetField('PERS','ACTIVELIFEDATE').AsString := GetField('STF_MAIN','STAT_DATE').AsString;
      end else
        GetField('PERS','LIFEDATE').AsString := '';
    end else
      GetField('PERS','LIFEDATE').AsString := GetField('STF_MAIN','RANK_DATE').AsString;

    If mFireID = '07130' then begin
      GetField('PERS','LIFEDATE').AsDateTime := 0;
      GetField('PERS','RESDATE').AsDateTime  := 0;

      GetField('PERS','LIFEDATE').AsString  := GetField('STF_MAIN','END_SERVICE').AsString;
      GetField('PERS','RESDATE').AsString  := GetField('STF_MAIN','RANK_DATE').AsString;
      GetField('PERS','ADJDATE').AsString  := GetField('STF_MAIN','ADJ_HIRE').AsString;
    end;

  //  Getfield('PERS', 'ALTID').AsString := GetField('STF_MAIN','ALT_ID').AsString;             //only if they used this field

    GetField('PERS','DOB').AsString      := GetField('STF_MAIN','DOB').AsString;
    GetField('PERS','NARR').AsString     := GetField('STF_MAIN','NOTES').AsString;

    If A('PERSSTAT').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','STATUS').AsString)) then
      GetField('PERS','PERSSTATID').AsString := GetField('PERSSTAT','PERSSTATID').AsString;
    If A('PERSTYPE').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','CAREER').AsString)) then
      GetField('PERS','PERSTYPEID').AsString := GetField('PERSTYPE','PERSTYPEID').AsString;
    If A('PERSRANK').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','RANK').AsString)) then
      GetField('PERS','PERSRANKID').AsString := GetField('PERSRANK','PERSRANKID').AsString;
    If A('SCHDRANK').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','RANK').AsString)) then
      GetField('PERS','SCHDRANKID').AsString := GetField('SCHDRANK','SCHDRANKID').AsString;
    If A('SCHDLOC').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','STATION').AsString)) then
      GetField('PERS','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

    If A('SCHDSHIFT').ExactQueryLocate('CODE',alltrim(GetField('STF_MAIN','SHIFT').AsString)) then
      GetField('PERS','SCHDSHIFTID').AsString := GetField('SCHDSHIFT','SCHDSHIFTID').AsString;
    GetField('PERS','UNITNUM').AsString     := GetUnitNum(tdbfield('STF_MAIN','UNIT'));

    A('STF_ADMN').UpdateSQL('select * from stf_admn where staff_id = ' + AddExpr(PersCode));
    If A('STF_ADMN').RecordsExist then begin
      GetField('PERS','DLNUM').AsString     := GetField('STF_ADMN','LICENSE').AsString;
      GetField('PERS','SPOUSE').AsString    := GetField('STF_ADMN','SPOUSE').AsString;

      If A('PERSDLCLASS').ExactQueryLocate('CODE',alltrim(GetField('STF_ADMN','CLASS').AsString)) then
        GetField('PERS','PERSDLCLASSID').AsString := GetField('PERSDLCLASS','PERSDLCLASSID').AsString;

      GetField('PERS','DLEXP').AsString := GetField('STF_ADMN','EXPIRES').AsString;

      If A('PERSRACE').ExactQueryLocate('CODE',alltrim(GetField('STF_ADMN','RACE').AsString)) then
        GetField('PERS','PERSRACEID').AsString := GetField('PERSRACE','PERSRACEID').AsString;

      GetField('PERS','SOCSEC').AsString     := GetField('STF_ADMN','SSN').AsString;
      GetField('PERS','CONFNARR').AsString   := GetField('STF_ADMN','NOTES').AsString;
      If tdbfield('STF_ADMN','GENDER') = '1' then
        GetField('PERS','SEX').AsString := 'M'
      else IF tdbfield('STF_ADMN','GENDER') = '2' then
        GetField('PERS','SEX').AsString := 'F';
    end;

    A('STF_PH').UpdateSQL('select * from Stf_Ph where id = ' + AddExpr(PersCode));
    While Not A('STF_PH').eof do begin
      If (tdbfield('STF_PH','CODE') = 'HOME') or (tdbfield('STF_PH','CODE') = 'FAMI') then
        GetField('PERS','PHONE').AsString := tdbfield('STF_PH','PHONE')
      else if (tdbfield('STF_PH','CODE') = 'MOBL') or (tdbfield('STF_PH','CODE') = 'CELL') then
        GetField('PERS','CELL').AsString := tdbfield('STF_PH','PHONE')
      else if (tdbfield('STF_PH','CODE') = 'WORK') or (tdbfield('STF_PH','CODE') = 'OFFC') then
        GetField('PERS','OCCPHONE').AsString     := tdbfield('STF_PH','PHONE')
      else if (tdbfield('STF_PH','CODE') = 'HPGR') then
        GetField('PERS','PAGER').AsString     := tdbfield('STF_PH','PHONE')
      else if (tdbfield('STF_PH','CODE') = 'WPGR') then
        GetField('PERS','PAGER').AsString     := tdbfield('STF_PH','PHONE');

      A('STF_PH').Skip(1);
    end;

    If not (mFireID = 'EGELS') then begin  // Live with Responder, do not overwrite
      A('STF_EML').UpdateSQL('select * from Stf_Eml where id = ' + AddExpr(PersCode));
      While Not A('STF_EML').eof do begin
        If tdbfield('STF_EML','SEQUENCE') = '1' then
          GetField('PERS','EMAIL').AsString := tdbfield('STF_EML','EMAIL');
        A('STF_EML').Skip(1);
      end;
    end;  

    A('STF_CONT').UpdateSQL('select * from Stf_Cont where Staff_id = ' + AddExpr(PersCode));
    While Not A('STF_CONT').eof do begin
      A('PERSCONT').UpdateSQL('SELECT * FROM PERSCONT WHERE CONT_ID = ' + AddExpr(GetField('STF_CONT','CONT_ID').AsString));
      If A('PERSCONT').RecordsExist then
        A('PERSCONT').Edit
      else
        A('PERSCONT').Append;
      If A('PERSCONTTYPE').ExactQueryLocate('CODE',alltrim(GetField('STF_CONT','TYPE').AsString)) then
        GetField('PERSCONT','PERSCONTTYPEID').AsString := GetField('PERSCONTTYPE','PERSCONTTYPEID').AsString;
      GetField('PERSCONT','CONT_ID').AsString  := GetField('STF_CONT','CONT_ID').AsString;
      GetField('PERSCONT','PERSID').AsString   := GetField('PERS','PERSID').AsString;
      GetField('PERSCONT','DESCR').AsString    := tdbfield('PERS','TITLE');
      GetField('PERSCONT','COMPANY').AsString  := tdbfield('PERS','INSTITUTION');

      GetField('PERSCONT','NAME').AsString     := alltrim(alltrim(tdbfield('STF_CONT','FIRST') + ' ' + tdbfield('STF_CONT','MIDDLE')) + ' ' + tdbfield('STF_CONT','LAST'));

      GetField('PERSCONT','ADDRESS1').AsString := tdbfield('PERS','ADD1');
      GetField('PERSCONT','ADDRESS2').AsString := tdbfield('PERS','ADD2');
      GetField('PERSCONT','CITY').AsString     := tdbfield('PERS','CITY');
      GetField('PERSCONT','STATE').AsString    := tdbfield('PERS','STATE');
      GetField('PERSCONT','ZIP').AsString      := tdbfield('PERS','ZIP');
      GetField('PERSCONT','NARR').AsString     := tdbfield('PERS','NARR');

      A('STF_PHC').UpdateSQL('SELECT * FROM STF_PHC WHERE ID = ' + AddExpr(PersCode) + ' AND SEQUENCE = ' + GetField('STF_CONT','SEQUENCE').AsString);
      While Not A('STF_PHC').eof do begin
        If (tdbfield('STF_PHC','CODE') = 'HOME') or (tdbfield('STF_PHC','CODE') = 'FAMI') then
          GetField('PERSCONT','HOME').AsString := tdbfield('STF_PHC','PHONE')
        else if (tdbfield('STF_PHC','CODE') = 'MOBL') or (tdbfield('STF_PHC','CODE') = 'CELL') then
          GetField('PERSCONT','CELL').AsString := tdbfield('STF_PHC','PHONE');
        A('STF_PHC').Skip(1);
      end;

      A('PERSCONT').Post;
      A('STF_CONT').Skip(1);
    end;
    AddStatusListBox(ListBox,'Converting Personnel Code ' + tdbfield('PERS','PERSCODE'));
    GetTable('PERS').Post;

    LoadPersImage;
    LoadPersPhone;
    LoadPersHist;

    A('STF_MAIN').Skip(1);
  end;

  CloseApollo('STF_MAIN');
  CloseApollo('STF_PH');
  CloseApollo('STF_PHC');
  CloseApollo('STF_EML');
  CloseApollo('STF_ADMN');
  CloseApollo('STF_CONT');
  CloseApollo('ATT_FILE');
  CloseApollo('STF_HIST');
  FHDatabase.Free;
  CloseApollo('PERS');
  CloseApollo('PERSHIST');
  CloseApollo('PERSIMAGE');
  CloseApollo('PERSPHONE');
  CloseApollo('PERSSTATHIST');
  CloseApollo('PERSSTAT');
  CloseApollo('PERSTYPE');
  CloseApollo('PERSRANK');
  CloseApollo('PERSRACE');
  CloseApollo('PERSDLCLASS');
  CloseApollo('PERSCONT');
  CloseApollo('PERSCONTTYPE');
  CloseApollo('SCHDSHIFT');
  CloseApollo('SCHDRANK');
  CloseApollo('SCHDLOC');
  CloseApollo('PERSPHONETYPE');
  CloseApollo('PERSHISTTYPE');
  AddStatusListBox(ListBox,'Converting Personnel . . . . . Completed');
  ShowMessage('Done');
end;

function GetPersHistTypeCode(OldCode: String): String;
begin
  If OldCode = 'ACTIV' then
    GetPersHistTypeCode := 'ACT'
  else if OldCode = 'ALIFF' then
    GetPersHistTypeCode := 'ALI'
  else if OldCode = 'PROBE' then
    GetPersHistTypeCode := 'PEX'
  else if OldCode = 'TERM' then
    GetPersHistTypeCode := 'TRM'
  else
    GetPersHistTypeCode := OldCode;
end;

procedure TConvFHForm.LoadPersHist;
Var PersHistTypeID : String;
    TableName      : String;
    Code           : String;
begin
  A('STF_HIST').UpdateSQL('SELECT * FROM STF_HIST WHERE STAFF_ID = ' + edbfield('STF_MAIN','STAFF_ID'));
  While Not A('STF_HIST').eof do begin
    PersHistTypeID := '';
    TableName   := 'PERSHIST';
    Code        := GetPersHistTypeCode(tdbfield('STF_HIST','ACT_CODE'));
    If A('PERSHISTTYPE').ExactQueryLocate('CODE',Code) then begin
      PersHistTypeID := GetField('PERSHISTTYPE','PERSHISTTYPEID').AsString;
      TableName      := IIf(tdbfield('PERSHISTTYPE','TABLENAME') = '','PERSHIST',tdbfield('PERSHISTTYPE','TABLENAME'));
    end;

    If (TableName = 'PERSSTATHIST') then begin
      A('PERSSTATHIST').UpdateSQL('SELECT * FROM PERSSTATHIST WHERE PRIMEKEY = ' + edbfield('STF_HIST','HIST_ID'));
      If A('PERSSTATHIST').RecordsExist then
        A('PERSSTATHIST').Edit
      else
        A('PERSSTATHIST').Append;
      If A('PERSSTAT').ExactQueryLocate('CODE',Code) then
        GetField('PERSSTATHIST','PERSSTATID').AsString    := GetField('PERSSTAT','PERSSTATID').AsString;
      GetField('PERSSTATHIST','PRIMEKEY').AsString        := tdbfield('STF_HIST','HIST_ID');
      GetField('PERSSTATHIST','PERSID').AsString          := GetField('PERS','PERSID').AsString;
      GetField('PERSSTATHIST','DATETIMESTART').AsDateTime := GetField('STF_HIST','ACT_DTTM').AsDateTime;
      GetField('PERSSTATHIST','NARR').AsString            := GetField('STF_HIST','ACT_NOTES').AsString;
      A('PERSSTATHIST').Post;
    end else if (TableName = 'PERSHIST') then begin
      A('PERSHIST').UpdateSQL('SELECT * FROM PERSHIST WHERE HIST_ID = ' + edbfield('STF_HIST','HIST_ID'));
      If A('PERSHIST').RecordsExist then
        A('PERSHIST').Edit
      else
        A('PERSHIST').Append;
      GetField('PERSHIST','PERSHISTTYPEID').AsString := PersHistTypeID;
      GetField('PERSHIST','HIST_ID').AsString        := tdbfield('STF_HIST','HIST_ID');
      GetField('PERSHIST','PERSID').AsString         := GetField('PERS','PERSID').AsString;
      GetField('PERSHIST','DATETIMEDONE').AsDateTime := GetField('STF_HIST','ACT_DTTM').AsDateTime;
      GetField('PERSHIST','NARR').AsString  := GetField('STF_HIST','ACT_NOTES').AsString;
      A('PERSHIST').Post;
    end;
    A('STF_HIST').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNfirsImage;
Var FileExt  : String;
    FileName : String;
begin
  A('ATT_FILE').UpdateSQL('SELECT * FROM ATT_FILE WHERE TABLE_NM LIKE ' + AddExpr('INC_%') + ' AND RECORD_KEY = ' + AddExpr(Inc_MainQuery.FieldByName('inci_id').AsString));
  While Not A('ATT_FILE').eof do begin
    FileExt  := UpperCase(GetFileExt(tdbfield('ATT_FILE','TARGET')));
    FileName := 'C:\TEMP\FHIMAGE.' + FileExt;

    If (Length(GetField('ATT_FILE','CONTENTS').AsString) > 500) then begin
      TBlobField(A('ATT_FILE').FieldByName('CONTENTS')).SaveToFile(FileName);

      A('NFIRSIMAGE').UpdateSQL('SELECT * FROM NFIRSIMAGE WHERE ATT_ID = ' + edbfield('ATT_FILE','ATT_ID'));
      If A('NFIRSIMAGE').RecordsExist then
        A('NFIRSIMAGE').Edit
      else
      A('NFIRSIMAGE').Append;
      GetField('NFIRSIMAGE','ATT_ID').AsString       := tdbfield('ATT_FILE','ATT_ID');
      GetField('NFIRSIMAGE','DESCR').AsString        := tdbfield('ATT_FILE','NAME');
      GetField('NFIRSIMAGE','NFIRSMAINID').AsString  := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
      GetField('NFIRSIMAGE','FILENAME').AsString     := tdbfield('ATT_FILE','TARGET');

      (A('NFIRSIMAGE').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
      TBlobField(A('NFIRSIMAGE').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);

      GetField('NFIRSIMAGE','FILEEXT').AsString      := FileExt;
      A('NFIRSIMAGE').Post;

      AddStatusListBox(ListBox,'    Loading image file ' + tdbfield('ATT_FILE','TARGET'));
    end else
      AddStatusListBox(ListBox,'    Skipping small file ' + tdbfield('ATT_FILE','TARGET'));

    A('ATT_FILE').Skip(1);
  end;
end;

procedure TConvFHForm.LoadPersImage;
Var FileExt  : String;
    FileName : String;
begin
  A('ATT_FILE').UpdateSQL('SELECT * FROM ATT_FILE WHERE TABLE_NM = ' + AddExpr('STF_MAIN') + ' AND RECORD_KEY = ' + edbfield('STF_MAIN','STAFF_ID'));
  While Not A('ATT_FILE').eof do begin
    FileExt  := UpperCase(GetFileExt(tdbfield('ATT_FILE','TARGET')));
    FileName := 'C:\TEMP\FHIMAGE.' + FileExt;

    If (Length(GetField('ATT_FILE','CONTENTS').AsString) > 500) then begin
      TBlobField(A('ATT_FILE').FieldByName('CONTENTS')).SaveToFile(FileName);

      A('PERSIMAGE').UpdateSQL('SELECT * FROM PERSIMAGE WHERE ATT_ID = ' + edbfield('ATT_FILE','ATT_ID'));
      If A('PERSIMAGE').RecordsExist then
        A('PERSIMAGE').Edit
      else
      A('PERSIMAGE').Append;
      GetField('PERSIMAGE','ATT_ID').AsString       := tdbfield('ATT_FILE','ATT_ID');
      GetField('PERSIMAGE','DESCR').AsString        := tdbfield('ATT_FILE','NAME');
      GetField('PERSIMAGE','PERSID').AsString       := GetField('PERS','PERSID').AsString;
      GetField('PERSIMAGE','FILENAME').AsString     := tdbfield('ATT_FILE','TARGET');

      (A('PERSIMAGE').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
      TBlobField(A('PERSIMAGE').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);

      GetField('PERSIMAGE','FILEEXT').AsString      := FileExt;
      A('PERSIMAGE').Post;

      AddStatusListBox(ListBox,'    Loading image file ' + tdbfield('ATT_FILE','TARGET'));
    end else
      AddStatusListBox(ListBox,'    Skipping small file ' + tdbfield('ATT_FILE','TARGET'));

    A('ATT_FILE').Skip(1);
  end;
end;

procedure TConvFHForm.LoadPersPhone;
begin
  A('STF_PH').GoTop;
  While Not A('STF_PH').eof do begin
    A('PERSPHONE').UpdateSQL('SELECT * FROM PERSPHONE WHERE FHKEY = ' + edbfield('STF_PH','P_STF_PH'));
    If A('PERSPHONE').RecordsExist then
      A('PERSPHONE').Edit
    else
      A('PERSPHONE').Append;
    GetField('PERSPHONE','FHKEY').AsString  := tdbfield('STF_PH','P_STF_PH');
    GetField('PERSPHONE','PERSID').AsString := GetField('PERS','PERSID').AsString;
    If A('PERSPHONETYPE').ExactQueryLocate('CODE',alltrim(GetField('STF_PH','CODE').AsString)) then
      GetField('PERSPHONE','PERSPHONETYPEID').AsString := GetField('PERSPHONETYPE','PERSPHONETYPEID').AsString;
    GetField('PERSPHONE','PHONE').AsString    := tdbfield('STF_PH','PHONE');
    A('PERSPHONE').Post;
    A('STF_PH').Skip(1);
  end;
end;

procedure TConvFHForm.PersCompButtonClick(Sender: TObject);
Var PersCode : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Personnel Company . . . . . Started');
  Open_Query(FHDatabase,'STF_MAIN',false,'SELECT STAFF_ID, STATION FROM STF_MAIN');

  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP');
  Open_Query('PERSCOMP',true,'SELECT * FROM FDIDCOMP');

  Gauge.MaxValue            := A('STF_MAIN').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('STF_MAIN').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    PersCode              := tdbfield('STF_MAIN','STAFF_ID');
    Application.ProcessMessages;

    If A('FDIDCOMP').ExactQueryLocate('CODE',tdbfield('STF_MAIN','STATION')) then begin
      If A('PERS').ExactQueryLocate('PERSCODE',PersCode) then begin
        A('PERSCOMP').UpdateSQL('SELECT * FROM PERSCOMP WHERE FDIDCOMPID = ' + pkvalue(GetField('FDIDCOMP','FDIDCOMPID').AsString) + ' AND PERSID = ' + pkvalue(GetField('PERS','PERSID').AsString) );
        If A('PERSCOMP').RecordsExist then
          A('PERSCOMP').Edit
        else
          A('PERSCOMP').Append;
        GetField('PERSCOMP','FDIDCOMPID').AsString := GetField('FDIDCOMP','FDIDCOMPID').AsString;
        GetField('PERSCOMP','PERSID').AsString     := GetField('PERS','PERSID').AsString;
        A('PERSCOMP').Post;
      end;
    end;

    AddStatusListBox(ListBox,'Converting Personnel ' + tdbfield('STF_MAIN','STAFF_ID'));

    A('STF_MAIN').Skip(1);
  end;

  CloseApollo('STF_MAIN');
  FHDatabase.Free;
  CloseApollo('PERS');
  CloseApollo('FDIDCOMP');
  CloseApollo('PERSCOMP');
  AddStatusListBox(ListBox,'Converting Personnel Company . . . . . Completed');
  ShowMessage('Done');
end;

// DSW 6-20-19 PER WINDSOR REQUEST
procedure TConvFHForm.PersHistButtonClick(Sender: TObject);
Var PersCode,FDID : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Personnel History . . . . . Started');
  Open_Query(FHDatabase,'STF_HIST',false,'SELECT * FROM STF_HIST');

  Open_Query('PERS',false,'SELECT PERSID, PERSCODE, FDID FROM PERS');
  Open_Query('PERSMEDHIST',true,'SELECT * FROM PERSMEDHIST');
  Open_Query('PERSMED',true,'SELECT * FROM PERSMED');
  Open_Query('PERSRANKHIST',true,'SELECT * FROM PERSRANKHIST');
  Open_Query('PERSRANK',true,'SELECT * FROM PERSRANK');
  Open_Query('PERSSTATHIST',true,'SELECT * FROM PERSSTATHIST');
  Open_Query('PERSSTAT',true,'SELECT * FROM PERSSTAT');

  Gauge.MaxValue            := A('STF_HIST').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('STF_HIST').Eof do begin
    Gauge.progress        := Gauge.progress + 1;
    PersCode              := tdbfield('STF_HIST','STAFF_ID');
    FDID                  := IIf(ConvFDIDField.Value = '',mFireID,ConvFDIDField.Value);
    Application.ProcessMessages;
    If A('PERSMED').ExactQueryLocate('CODE',tdbfield('STF_HIST','ACT_CODE')) then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,FDID]) then begin
        A('PERSMEDHIST').UpdateSQL('SELECT * FROM PERSMEDHIST WHERE HISTID = ' + AddExpr(pkvalue(GetField('STF_HIST','P_STF_HIST').AsString)));
        If A('PERSMEDHIST').RecordsExist then
          A('PERSMEDHIST').Edit
        else
          A('PERSMEDHIST').Append;
        GetField('PERSMEDHIST','PERSMEDID').AsString  := GetField('PERSMED','PERSMEDID').AsString;
        GetField('PERSMEDHIST','HISTID').AsString     := GetField('STF_HIST','P_STF_HIST').AsString;
        GetField('PERSMEDHIST','PERSID').AsString     := GetField('PERS','PERSID').AsString;
        GetField('PERSMEDHIST','NARR').AsString       := GetField('STF_HIST','ACT_NOTES').AsString;
        GetField('PERSMEDHIST','DESCR').AsString      := GetField('PERSMED','DESCR').AsString;
        GetField('PERSMEDHIST','DATEDONE').AsString   := GetField('STF_HIST','ACT_DTTM').AsString;
        A('PERSMEDHIST').Post;
      end;
    end else if A('PERSRANK').ExactQueryLocate('CODE',tdbfield('STF_HIST','ACT_CODE')) then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,FDID]) then begin
        A('PERSRANKHIST').UpdateSQL('SELECT * FROM PERSRANKHIST WHERE RANKID = ' + AddExpr(pkvalue(GetField('STF_HIST','P_STF_HIST').AsString)));
        If A('PERSRANKHIST').RecordsExist then
          A('PERSRANKHIST').Edit
        else
          A('PERSRANKHIST').Append;
        GetField('PERSRANKHIST','PERSRANKID').AsString  := GetField('PERSRANK','PERSRANKID').AsString;
        GetField('PERSRANKHIST','RANKID').AsString     := GetField('STF_HIST','P_STF_HIST').AsString;
        GetField('PERSRANKHIST','PERSID').AsString     := GetField('PERS','PERSID').AsString;
        GetField('PERSRANKHIST','NARR').AsString       := GetField('STF_HIST','ACT_NOTES').AsString;
        GetField('PERSRANKHIST','DESCR').AsString      := GetField('PERSRANK','DESCR').AsString;
        GetField('PERSRANKHIST','DATETIMESTART').AsString   := GetField('STF_HIST','ACT_DTTM').AsString;
        A('PERSRANKHIST').Post;
      end;
    end else if A('PERSSTAT').ExactQueryLocate('CODE',tdbfield('STF_HIST','ACT_CODE')) then begin
      If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,FDID]) then begin
        A('PERSSTATHIST').UpdateSQL('SELECT * FROM PERSSTATHIST WHERE STATID = ' + AddExpr(pkvalue(GetField('STF_HIST','P_STF_HIST').AsString)));
        If A('PERSSTATHIST').RecordsExist then
          A('PERSSTATHIST').Edit
        else
          A('PERSSTATHIST').Append;
        GetField('PERSSTATHIST','PERSSTATID').AsString      := GetField('PERSSTAT','PERSSTATID').AsString;
        GetField('PERSSTATHIST','STATID').AsString          := GetField('STF_HIST','P_STF_HIST').AsString;
        GetField('PERSSTATHIST','PERSID').AsString          := GetField('PERS','PERSID').AsString;
        GetField('PERSSTATHIST','DESCR').AsString           := GetField('PERSSTAT','DESCR').AsString;
        GetField('PERSSTATHIST','DATETIMESTART').AsString   := GetField('STF_HIST','ACT_DTTM').AsString;
        A('PERSSTATHIST').Post;
      end;
    end else
      AddStatusListBox(ErrorBox,'Error in STF_HIST Code ' + tdbfield('STF_HIST','ACT_CODE'));


    AddStatusListBox(ListBox,'Converting Personnel ' + tdbfield('STF_HIST','STAFF_ID'));

    A('STF_HIST').Skip(1);
  end;

  CloseApollo('STF_HIST');
  FHDatabase.Free;
  CloseApollo('PERS');
  CloseApollo('PERSMEDHIST');
  CloseApollo('PERSMED');
  CloseApollo('PERSRANKHIST');
  CloseApollo('PERSRANK');
  CloseApollo('PERSSTATHIST');
  CloseApollo('PERSSTAT');
  AddStatusListBox(ListBox,'Converting Personnel History . . . . . Completed');
  ShowMessage('Done');

end;

procedure TConvFHForm.PropButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  ConnectFH;

  PropTypeID := SQLLookUp(mFireID,'FDID','PROPSET','PROPADDR');
  Open_Query(FHDatabase,'OCC_PH',  false,'SELECT * FROM OCC_PH   WHERE 1=2');
  Open_Query(FHDatabase,'OCC_EML', false,'SELECT * FROM OCC_EML  WHERE 1=2');
  Open_Query(FHDatabase,'OCC_PREP',false,'SELECT * FROM OCC_PREP WHERE 1=2');
  Open_Query(FHDatabase,'OCC_CONT',false,'SELECT * FROM OCC_CONT WHERE 1=2');
  Open_Query(FHDatabase,'OCC_HYDR',false,'SELECT * FROM OCC_HYDR WHERE 1=2');
  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE 1=2');
  Open_Query(FHDatabase,'OCC_TANK',false,'SELECT * FROM OCC_TANK WHERE 1=2');
  Open_Query(FHDatabase,'OCC_CHEM',false,'SELECT * FROM OCC_CHEM WHERE 1=2');
  Open_Query(FHDatabase,'OCC_USER',false,'SELECT * FROM OCC_USER WHERE 1=2');
  Open_Query(FHDatabase,'OCC_FLOW',false,'SELECT * FROM OCC_FLOW WHERE 1=2');

  If ConvRecordField.Value = '' then
    Open_Query(FHDatabase,'OCC_MAIN',false,'SELECT * FROM OCC_MAIN')
  else
    Open_Query(FHDatabase,'OCC_MAIN',false,'SELECT * FROM OCC_MAIN WHERE OCCUP_ID = ' + AddExpr(ConvRecordField.Value));

  Open_Query('PROP',           true, 'SELECT * FROM PROP WHERE 1=2');
  Open_Query('PROPHYD',        true, 'SELECT * FROM PROPHYD WHERE 1=2');
  Open_Query('HYD',            false,'SELECT HYDCODE, HYDID FROM HYD');
  Open_Query('PROPSUBTYPE',    false,'SELECT * FROM PROPSUBTYPE');
  Open_Query('DISPBOX',        false,'SELECT * FROM DISPBOX');
  Open_Query('INSPBOX',        false,'SELECT * FROM INSPBOX');
  Open_Query('DISPLOC',        false,'SELECT * FROM DISPLOC');
  Open_Query('PROPIMAGE',      true, 'SELECT * FROM PROPIMAGE WHERE 1=2');

  Open_Query('PROPCONTACT',    true, 'SELECT * FROM PROPCONTACT WHERE 1=2');
  Open_Query('PROPCONTACTTYPE',false,'SELECT * FROM PROPCONTACTTYPE');

  Open_Query('PROPPREPTYPE',   false,'SELECT * FROM PROPPREPTYPE');
  Open_Query('PROPPREP',       true, 'SELECT * FROM PROPPREP WHERE 1=2');

  Open_Query('PROPPHONETYPE',  false,'SELECT * FROM PROPPHONETYPE');
  Open_Query('PROPPHONE',      true, 'SELECT * FROM PROPPHONE WHERE 1=2');

  Open_Query('PROPTANK',       true, 'SELECT * FROM PROPTANK WHERE 1=2');
  Open_Query('PROPHAZMAT',     true, 'SELECT * FROM PROPHAZMAT WHERE 1=2');
  Open_Query('STREETALIAS',    false,'SELECT STREETALIAS.STREETALIAS, STREET.STREET FROM STREETALIAS LEFT JOIN STREET ON (STREETALIAS.STREETID = STREET.STREETID)');

  Gauge.Progress := 0;
  Gauge.MaxValue := A('OCC_MAIN').RecordCount;

  While Not A('OCC_MAIN').Eof do begin
    OCCUP_ID := tdbfield('OCC_MAIN','OCCUP_ID');
    FdidVar  := GetConvFdid(ConvFdidField.Value);
    If FdidVar <> '' then
      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE FDID = ' + AddExpr(FdidVar) + ' AND OCCUP_ID = ' + AddExpr(Occup_ID))
    else
      A('PROP').UpdateSQL('SELECT * FROM PROP WHERE OCCUP_ID = ' + AddExpr(Occup_ID));

    If A('PROP').RecordsExist then
      A('PROP').Edit
    else
      A('PROP').Append;
    if FdidVar <> '' then
      GetField('PROP','FDID').AsString              := FdidVar;
    GetField('PROP','OCCUP_ID').AsString          := OCCUP_ID;

    LoadProp;
    GetTable('PROP').Post;

    LoadPropPhone(OCCUP_ID,GetField('PROP','PROPID').AsString, '');
    LoadPropImage;
    LoadPropHyd;
    LoadPropRep;
    LoadPropContact;
    LoadPropTank;
    LoadPropHazMat;  

    AddStatusListBox(ListBox,'Converting ' + tdbfield('PROP','STRNUM') + ' ' + tdbfield('PROP','STREET'));

    A('OCC_MAIN').Skip(1);

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('OCC_MAIN');
  CloseApollo('OCC_PH');
  CloseApollo('OCC_PREP');
  CloseApollo('OCC_CONT');
  CloseApollo('OCC_EML');
  CloseApollo('OCC_HYDR');
  CloseApollo('OCC_TANK');
  CloseApollo('OCC_CHEM');
  CloseApollo('OCC_USER');
  CloseApollo('OCC_FLOW');

  FHDatabase.Free;

  CloseApollo('PROP');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('INSPBOX');

  CloseApollo('PROPPHONE');
  CloseApollo('PROPPHONETYPE');

  CloseApollo('PROPCONTACT');
  CloseApollo('PROPCONTACTTYPE');

  CloseApollo('PROPPREP');
  CloseApollo('PROPPREPTYPE');
  CloseApollo('HYD');
  CloseApollo('PROPHYD');

  CloseApollo('PROPIMAGE');
  CloseApollo('PROPTANK');
  CloseApollo('PROPHAZ');
  CloseApollo('STREETALIAS');

  ShowMessage('Done');
end;

procedure TConvFHForm.PropContactTypeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting LKP_OCC . . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'LKP_OCC',false,'SELECT * FROM LKP_OCC ORDER BY CATEGORY, GRP, CODE, DESCRIPT');

  Open_Query('PROPCONTACTTYPE',true,'SELECT * FROM PROPCONTACTTYPE WHERE 1=2');

  Gauge.Progress := 0;
  Gauge.MaxValue := A('LKP_OCC').RecordCount;
  While Not A('LKP_OCC').Eof do begin
    If (tdbfield('LKP_OCC','CATEGORY') = 'OCC CONT') then begin
      A('PROPCONTACTTYPE').UpdateSQL('SELECT * FROM PROPCONTACTTYPE WHERE CODE = ' + edbfield('LKP_OCC','CODE'));
      If A('PROPCONTACTTYPE').RecordsExist then
        A('PROPCONTACTTYPE').Edit
      else
        A('PROPCONTACTTYPE').Append;
      Getfield('PROPCONTACTTYPE','CODE').AsString  := tdbfield('LKP_OCC','CODE');
      Getfield('PROPCONTACTTYPE','DESCR').AsString := tdbfield('LKP_OCC','DESCRIPT');
      A('PROPCONTACTTYPE').Post;
    end;
    A('LKP_OCC').Skip(1);
    AddStatusListBox(ListBox,'Processing ' + tdbfield('LKP_OCC','CATEGORY') + '  ' + tdbfield('LKP_OCC','CODE') + '  ' + tdbfield('LKP_OCC','DESCRIPT'));
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('PROPCONTTYPE');
  CloseApollo('LKP_OCC');
  FHDatabase.Free;

  ShowMessage('Done');

  AddStatusListBox(ListBox,'Converting LKP_OCC . . . . . Done');
end;

function TConvFHForm.CheckStreetAlias(Street: String): String;
begin
  If A('STREETALIAS').ExactQueryLocate('STREETALIAS',Street) then
    CheckStreetAlias := tdbfield('STREETALIAS','STREET')
  else
    CheckStreetAlias := Street;
end;

procedure TConvFHForm.LoadProp;
Var Street ,District: String;
begin

  Street                                        := uppercase(alltrim(tdbfield('OCC_MAIN','ST_PREFIX')+ ' ' + alltrim(tdbfield('OCC_MAIN','STREET')) + ' ' + tdbfield('OCC_MAIN','ST_TYPE')));
  Street                                        := CheckStreetAlias(Street);
  GetField('PROP','PROPTYPEID').AsString        := PropTypeID;
  GetField('PROP','PLASTNAME').AsString         := uppercase(tdbfield('OCC_MAIN','NAME'));
  GetField('PROP','STRNUM').AsString            := alltrim(tdbfield('OCC_MAIN','NUMBER'));
  GetField('PROP','STREET').AsString            := Street;
  GetField('PROP','ROOMAPT').AsString           := UpperCase(alltrim(tdbfield('OCC_MAIN','APT_ROOM')));
  GetField('PROP','CITY').AsString              := uppercase(tdbfield('OCC_MAIN','CITY'));
  GetField('PROP','STATE').AsString             := tdbfield('OCC_MAIN','STATE');
  GetField('PROP','ZIP').AsString               := tdbfield('OCC_MAIN','ZIP');

  if mfireid = '12313'  then begin
    GetField('PROP','SPRINKLOC').AsString            := tdbfield('OCC_MAIN','STATE');
    GetField('PROP','ALARMLOC').AsString             := tdbfield('OCC_MAIN','ZIP');
    GetField('PROP','STANDLOC').AsString             := tdbfield('OCC_MAIN','STATE');
  end;

  GetField('PROP','CENSUS').AsString            := AllTrim(GetField('OCC_MAIN','CENSUS').AsString);
  GetField('PROP','LATITUDE').AsFloat           := DecimalToMinutes(GetField('OCC_MAIN','LATITUDE').AsFloat);
  GetField('PROP','LONGITUDE').AsFloat          := DecimalToMinutes(GetField('OCC_MAIN','LONGITUDE').AsFloat);

  If A('PROPSUBTYPE').ExactQueryLocate('CODE',alltrim(tdbfield('OCC_MAIN','CLASS'))) then
    GetField('PROP','PROPSUBTYPEID').AsString := GetField('PROPSUBTYPE','PROPSUBTYPEID').AsString;
  If A('DISPLOC').ExactQueryLocate('CODE',alltrim(tdbfield('OCC_MAIN','STATION'))) then
    GetField('PROP','DISPLOCID').AsString := GetField('DISPLOC','DISPLOCID').AsString;

  GetField('PROP','FIXPROP').AsString           := tdbfield('OCC_MAIN','PROP_USE');
  GetField('PROP','NARR').AsString              := tdbfield('OCC_MAIN','NOTES');

 If A('DISPBOX').ExactQueryLocate('CODE',alltrim(tdbfield('OCC_MAIN','DISTRICT'))) then
    GetField('PROP','DISPBOXID').AsString := GetField('DISPBOX','DISPBOXID').AsString;

 if mfireid = '01920' then begin
   District   := AnsiLeftStr(tdbfield('OCC_MAIN','PARCEL'),3);
   if District = '1-2' then
    GetField('PROP','DISPBOXID').AsString  := '1'
   else if District = '1-3' then
    GetField('PROP','DISPBOXID').AsString  := '2'
   else if District = '2-1' then
    GetField('PROP','DISPBOXID').AsString  := '3'
   else if District = '2-3' then
    GetField('PROP','DISPBOXID').AsString  := '4'
   else if District = '3-1' then
    GetField('PROP','DISPBOXID').AsString  := '5'
   else if District = '3-2' then
    GetField('PROP','DISPBOXID').AsString  := '6'
   else if District = '1' then
    GetField('PROP','DISPBOXID').AsString  := '7'
   else if District = '2' then
    GetField('PROP','DISPBOXID').AsString  := '8';
 end;

        
  If A('INSPBOX').ExactQueryLocate('CODE',alltrim(tdbfield('OCC_MAIN','INSP_DIST'))) then
    GetField('PROP','INSPBOXID').AsString := GetField('INSPBOX','INSPBOXID').AsString;

  GetField('PROP','ADDRESS2').AsString          := tdbfield('OCC_MAIN','ADDR_2');
  GetField('PROP','DETPRES').AsString           := tdbfield('OCC_MAIN','DET_PRES');
  GetField('PROP','DETTYPE').AsString           := tdbfield('OCC_MAIN','DET_TYPE');
  GetField('PROP','DETPOWER').AsString          := tdbfield('OCC_MAIN','DET_POWER');
  GetField('PROP','AUTOPRES').AsString          := tdbfield('OCC_MAIN','AES_PRES');
  GetField('PROP','AUTOTYPE').AsString          := tdbfield('OCC_MAIN','AES_TYPE');
  GetField('PROP','NUMSPR').AsString            := tdbfield('OCC_MAIN','AES_HEADS');

  GetField('PROP','COMPLEX').AsString           := tdbfield('OCC_MAIN','MIXED_USE');
  GetField('PROP','BUILDSTAT').AsString         := tdbfield('OCC_MAIN','BLDG_STAT');
  GetField('PROP','STRUCTURETYPE').AsString     := tdbfield('OCC_MAIN','STRU_TYPE');

  GetField('PROP','ABOVEGRADE').AsString        := tdbfield('OCC_MAIN','FLOORS_ABOVE');
  GetField('PROP','BELOWGRADE').AsString        := tdbfield('OCC_MAIN','FLOORS_BELOW');

  GetField('PROP','ROOFCOVER').AsString         := tdbfield('OCC_MAIN','ROOF_COVER');
  GetField('PROP','TYPECONS').AsString          := tdbfield('OCC_MAIN','CONSTRUCT');
  GetField('PROP','PROPOWN').AsString           := tdbfield('OCC_MAIN','PROP_OWN');
  GetField('PROP','OCCLOAD').AsString           := tdbfield('OCC_MAIN','OCC_LOAD');
  GetField('PROP','ACTIVE').AsString            := IIf(GetField('OCC_MAIN','HIDE').AsBoolean,'N','Y');
  GetField('PROP','PARENTPROP').AsString        := IIf(GetField('OCC_MAIN','PROPERTY').AsBoolean,'Y','N');


  A('OCC_USER').UpdateSQL('SELECT * FROM OCC_USER WHERE OCCUP_ID = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  If A('OCC_USER').RecordsExist then begin

      if tdbfield('OCC_USER','form_26c') = 'TRUE' then
        GetField('PROP','26C').AsString               := 'Y'
      else if tdbfield('OCC_USER','form_26c') = 'FALSE' then
        GetField('PROP','26C').AsString               := 'N';

      if tdbfield('OCC_USER','form_26G') = 'TRUE' then
        GetField('PROP','26G').AsString               := 'Y'
      else if tdbfield('OCC_USER','form_26G') = 'FALSE' then
        GetField('PROP','26G').AsString               := 'N';
    end else begin
      If tdbfield('OCC_USER','BOX') = '2' then                 //CHANGED FROM KNOX_BOX FOR SWANSEA
        GetField('PROP','KNOXBOX').AsString := 'Y'
      else if tdbfield('OCC_USER','BOX') = '1' then
        GetField('PROP','KNOXBOX').AsString := 'N'
      else
        GetField('PROP','KNOXBOX').AsString := '';
    end;

  A('OCC_FLOW').UpdateSQL('SELECT * FROM OCC_FLOW WHERE OCCUP_ID = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  If A('OCC_FLOW').RecordsExist then begin
     //blank ...
  end;      

end;

procedure TConvFHForm.LoadPropImage;
begin
  A('ATT_FILE').UpdateSQL('SELECT * FROM ATT_FILE WHERE TABLE_NM = ' + AddExpr('OCC_MAIN') + ' AND RECORD_KEY = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  While Not A('ATT_FILE').eof do begin
    A('PROPIMAGE').UpdateSQL('SELECT * FROM PROPIMAGE WHERE PROPID = ' + pkValue(GetField('PROP','PROPID').AsString) + ' AND ATT_ID = ' + edbfield('ATT_FILE','ATT_ID'));
    If A('PROPIMAGE').RecordsExist then
      A('PROPIMAGE').Edit
    else
    A('PROPIMAGE').Append;
    GetField('PROPIMAGE','ATT_ID').AsString       := tdbfield('ATT_FILE','ATT_ID');
    GetField('PROPIMAGE','DESCR').AsString        := tdbfield('ATT_FILE','NAME');
    GetField('PROPIMAGE','PROPID').AsString       := GetField('PROP','PROPID').AsString;
    GetField('PROPIMAGE','FILENAME').AsString     := tdbfield('ATT_FILE','NAME');
    GetField('PROPIMAGE','IMAGEBLOB').AsString    := GetField('ATT_FILE','CONTENTS').AsString;
    GetField('PROPIMAGE','FILEEXT').AsString      := GetFileExt(tdbfield('ATT_FILE','TARGET'));
    A('PROPIMAGE').Post;
    A('ATT_FILE').Skip(1);
    AddStatusListBox(ListBox,'Loading Occupant Image ' + tdbfield('ATT_FILE','TARGET'));
  end;
end;

procedure TConvFHForm.LoadPropHyd;
begin
  A('OCC_HYDR').UpdateSQL('SELECT * FROM OCC_HYDR WHERE OCCUP_ID = ' + AddExpr(GetField('OCC_MAIN','OCCUP_ID').AsString));
  While Not A('OCC_HYDR').eof do begin
    If A('HYD').ExactQueryLocate('HYDCODE',alltrim(tdbfield('OCC_HYDR','HYDR_ID'))) then begin
      A('PROPHYD').UpdateSQL('SELECT * FROM PROPHYD WHERE PROPID = ' + GetField('PROP','PROPID').AsString + ' AND HYDID = ' + GetField('HYD','HYDID').AsString);
      If A('PROPHYD').RecordsExist then
        A('PROPHYD').Edit
      else
      A('PROPHYD').Append;
      GetField('PROPHYD','PROPID').AsString       := GetField('PROP','PROPID').AsString;
      GetField('PROPHYD','HYDID').AsString        := GetField('HYD','HYDID').AsString;
      GetField('PROPHYD','SORTORD').AsString      := GetField('OCC_HYDR','SEQUENCE').AsString;
      GetField('PROPHYD','DISTANCE').AsString     := GetField('OCC_HYDR','DISTANCE').AsString;
      GetField('PROPHYD','NARR').AsString         := GetField('OCC_HYDR','COMMENTS').AsString;
      A('PROPHYD').Post;
    end;
    A('OCC_HYDR').Skip(1);
  end;
end;

procedure TConvFHForm.LoadPropRep;
begin
  A('OCC_PREP').UpdateSQL('SELECT * FROM OCC_PREP WHERE OCCUP_ID = ' + AddExpr(GetField('OCC_MAIN','OCCUP_ID').AsString));
  While Not A('OCC_PREP').eof do begin
    If A('PROPPREPTYPE').ExactQueryLocate('CODE',alltrim(tdbfield('OCC_PREP','CODE'))) then begin
      A('PROPPREP').UpdateSQL('SELECT * FROM PROPPREP WHERE PREP_ID = ' + AddExpr(tdbfield('OCC_PREP','PREP_ID')));
      If A('PROPPREP').RecordsExist then
        A('PROPPREP').Edit
      else
        A('PROPPREP').Append;

      GetField('PROPPREP','PROPID').AsString         := GetField('PROP','PROPID').AsString;
      GetField('PROPPREP','PREP_ID').AsString        := GetField('OCC_PREP','PREP_ID').AsString;
      GetField('PROPPREP','PROPPREPTYPEID').AsString := GetField('PROPPREPTYPE','PROPPREPTYPEID').AsString;
      GetField('PROPPREP','NARR').AsString           := GetField('OCC_PREP','DATA').AsString;
      GetField('PROPPREP','DATETIMEVER').AsString    := GetField('OCC_PREP','VERIFIED').AsString;
      A('PROPPREP').Post;
    end;
    A('OCC_PREP').Skip(1);
  end;
end;

procedure TConvFHForm.LoadPropContact;
begin
  A('OCC_CONT').UpdateSQL('SELECT * FROM OCC_CONT WHERE OCCUP_ID = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  While Not A('OCC_CONT').eof do begin
    A('PROPCONTACT').UpdateSQL('SELECT * FROM PROPCONTACT WHERE FHKEY = ' + AddExpr(tdbfield('OCC_CONT','CONT_ID')));
    If A('PROPCONTACT').RecordsExist then
      A('PROPCONTACT').Edit
    else
      A('PROPCONTACT').Append;
    GetField('PROPCONTACT','PROPID').AsString     := GetField('PROP','PROPID').AsString;
    GetField('PROPCONTACT','FHKEY').AsString      := tdbfield('OCC_CONT','CONT_ID');

    If Alltrim(GetField('OCC_CONT','MIDDLE').AsString) = '' then
      GetField('PROPCONTACT','NAME').AsString      := ALLTRIM(Alltrim(GetField('OCC_CONT','FIRST').AsString) + ' ' + Alltrim(GetField('OCC_CONT','LAST').AsString))
    else
      GetField('PROPCONTACT','NAME').AsString      := ALLTRIM(Alltrim(GetField('OCC_CONT','FIRST').AsString) + ' ' + Alltrim(GetField('OCC_CONT','MIDDLE').AsString) + ' ' + Alltrim(GetField('OCC_CONT','LAST').AsString));

    GetField('PROPCONTACT','COMPANY').AsString    := tdbfield('OCC_CONT','INSTITUTION');
    GetField('PROPCONTACT','ADDRESS').AsString    := tdbfield('OCC_CONT','ADDR_1');
    GetField('PROPCONTACT','ADDRESS2').AsString   := Alltrim(GetField('OCC_CONT','ADDR_2').AsString);
    GetField('PROPCONTACT','CITY').AsString       := tdbfield('OCC_CONT','CITY');
    GetField('PROPCONTACT','STATE').AsString      := tdbfield('OCC_CONT','STATE');
    GetField('PROPCONTACT','ZIP').AsString        := tdbfield('OCC_CONT','ZIP');
    GetField('PROPCONTACT','SORTORD').AsString    := GetField('OCC_CONT','SEQUENCE').AsString;

    If A('PROPCONTACTTYPE').ExactQueryLocate('CODE',tdbfield('OCC_CONT','TYPE')) then
      GetField('PROPCONTACT','PROPCONTACTTYPEID').AsString := GetField('PROPCONTACTTYPE','PROPCONTACTTYPEID').AsString;

    If GetField('OCC_CONT','KEY_HOLDER').AsString = 'True' then
      GetField('PROPCONTACT','KEYHOLDER').AsString := 'Y';
    If GetField('OCC_CONT','OCCUPANT').AsString = 'True' then
      GetField('PROPCONTACT','OCCUPANT').AsString  := 'Y';
    If GetField('OCC_CONT','OWNER').AsString = 'True' then
      GetField('PROPCONTACT','OWNER').AsString     := 'Y';
    if GetField('OCC_CONT','DATE_OUT').AsString = '' then begin     //indicates they are no longer a contact if field has value
      A('PROPCONTACT').Post;
      LoadPropPhone(tdbfield('OCC_CONT','CONT_ID'),'', GetField('PROPCONTACT','PROPCONTACTID').AsString);
    end;
    A('OCC_CONT').Skip(1);
  end;
end;


procedure TConvFHForm.LoadPropPhone(ID, PropID, PropContactID: String);
begin
  A('OCC_PH').UpdateSQL('SELECT * FROM OCC_PH WHERE ID = ' + AddExpr(ID));
  While Not A('OCC_PH').eof do begin
    A('PROPPHONE').UpdateSQL('SELECT * FROM PROPPHONE WHERE FHKEY = ' + AddExpr(tdbfield('OCC_PH','P_OCC_PH')));
    If A('PROPPHONE').RecordsExist then
      A('PROPPHONE').Edit
    else
      A('PROPPHONE').Append;
    If GetField('OCC_PH','SEQUENCE').AsInteger = 1 then
      RunSql('UPDATE PROP SET PHONE = ' + AddExpr(tdbfield('OCC_PH','PHONE')) + ', PHONEEXT = ' + AddExpr(tdbfield('OCC_PH','EXT')) + ' WHERE PROPID = ' + AddExpr(GetField('PROP','PROPID').AsString));
    GetField('PROPPHONE','PROPCONTACTID').AsString   := PropContactID;
    GetField('PROPPHONE','PROPID').AsString          := PropID;
    GetField('PROPPHONE','FHKEY').AsString           := tdbfield('OCC_PH','P_OCC_PH');
    If A('PROPPHONETYPE').ExactQueryLocate('CODE',tdbfield('OCC_PH','CODE')) then
      GetField('PROPPHONE','PROPPHONETYPEID').AsString := GetField('PROPPHONETYPE','PROPPHONETYPEID').AsString;
    GetField('PROPPHONE','PHONE').AsString           := tdbfield('OCC_PH','PHONE');
    GetField('PROPPHONE','SORTORD').AsInteger        := GetField('OCC_PH','SEQUENCE').AsInteger;
    GetField('PROPPHONE','EXT').AsString             := tdbfield('OCC_PH','EXT');
    A('PROPPHONE').Post;
    A('OCC_PH').Skip(1);
  end;  
end;

procedure TConvFHForm.LoadPropTank;
begin
  A('OCC_TANK').UpdateSQL('SELECT * FROM OCC_TANK WHERE OCCUP_ID = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  While Not A('OCC_TANK').eof do begin
    A('PROPTANK').UpdateSQL('SELECT * FROM PROPTANK WHERE PROPID = ' + pkValue(GetField('PROP','PROPID').AsString) + ' AND TANK_ID = ' + edbfield('OCC_TANK','TANK_ID'));
    If A('PROPTANK').RecordsExist then
      A('PROPTANK').Edit
    else
      A('PROPTANK').Append;
    GetField('PROPTANK','TANK_ID').AsString       := tdbfield('OCC_TANK','TANK_ID');
    GetField('PROPTANK','PROPID').AsString        := tdbfield('PROP','PROPID');
    GetField('PROPTANK','TANKNUM').AsString       := tdbfield('OCC_TANK','TANK_REG');
    GetField('PROPTANK','DESCR').AsString         := tdbfield('OCC_TANK','DESCRIPT');
    GetField('PROPTANK','TANKSTAT').AsString      := tdbfield('OCC_TANK','STATUS');
    GetField('PROPTANK','TANKCONS').AsString      := tdbfield('OCC_TANK','CONSTRUCT');
    GetField('PROPTANK','NARR').AsString          := GetField('OCC_TANK','COMMENTS').AsString;
    GetField('PROPTANK','CAPACITY').AsString      := GetField('OCC_TANK','CAPACITY').AsString;
    GetField('PROPTANK','TANKCAPUNIT').AsString   := GetField('OCC_TANK','UNIT').AsString;
    GetField('PROPTANK','TANKUSER').AsString      := GetField('OCC_TANK','TANK_USER').AsString;
    GetField('PROPTANK','TANKCONT').AsString      := GetField('OCC_TANK','CONTENTS').AsString;
    GetField('PROPTANK','TANKLEAKDET').AsString   := GetField('OCC_TANK','LEAK_DET').AsString;
    GetField('PROPTANK','TANKBASE').AsString      := GetField('OCC_TANK','BASE').AsString;
    GetField('PROPTANK','TANKUSER').AsString      := GetField('OCC_TANK','TANK_USER').AsString;
    GetField('PROPTANK','TANKAPP').AsString       := GetField('OCC_TANK','APPROVAL').AsString;
    GetField('PROPTANK','MANUFACT').AsString      := GetField('OCC_TANK','MFG').AsString;
    GetField('PROPTANK','TANKPOSITION').AsString  := GetField('OCC_TANK','POSITION').AsString;
    GetField('PROPTANK','TANKLOCATION').AsString  := GetField('OCC_TANK','LOCATION').AsString;
    GetField('PROPTANK','DATEINSTALL').AsDateTime := GetField('OCC_TANK','DATE_INSTL').AsDateTime;
    GetField('PROPTANK','DATEBUILT').AsDateTime   := GetField('OCC_TANK','DATE_BUILT').AsDateTime;
    GetField('PROPTANK','DATEOOS').AsDateTime     := GetField('OCC_TANK','DATE_STOP').AsDateTime;
    GetField('PROPTANK','PIPECONS').AsString      := GetField('OCC_TANK','PIPE_CONST').AsString;
    GetField('PROPTANK','PIPEABOVE').AsString     := IIf(GetField('OCC_TANK','PIPES_ABOVE').AsBoolean,'Y','');
    GetField('PROPTANK','PIPEBELOW').AsString     := IIf(GetField('OCC_TANK','PIPES_BELOW').AsBoolean,'Y','');
    A('PROPTANK').Post;
    A('OCC_TANK').Skip(1);
  end;
end;

procedure TConvFHForm.LoadPropHazMat;
begin
  A('OCC_CHEM').UpdateSQL('SELECT * FROM OCC_CHEM WHERE OCCUP_ID = ' + edbfield('OCC_MAIN','OCCUP_ID'));
  While Not A('OCC_CHEM').eof do begin
    A('PROPHAZMAT').UpdateSQL('SELECT * FROM PROPHAZMAT WHERE PROPID = ' + pkValue(GetField('PROP','PROPID').AsString) + ' AND OCHM_ID = ' + edbfield('OCC_CHEM','OCHM_ID'));
    If A('PROPHAZMAT').RecordsExist then
      A('PROPHAZMAT').Edit
    else
      A('PROPHAZMAT').Append;
    GetField('PROPHAZMAT','OCHM_ID').AsString       := tdbfield('OCC_CHEM','OCHM_ID');
    GetField('PROPHAZMAT','PROPID').AsString        := tdbfield('PROP','PROPID');
    GetField('PROPHAZMAT','CHEM_NAME').AsString     := alltrim(tdbfield('OCC_CHEM','CHEM_NAME'));
    GetField('PROPHAZMAT','LOCATION').AsString      := alltrim(tdbfield('OCC_CHEM','LOCATION'));
    GetField('PROPHAZMAT','ACTAMT').AsString        := GetField('OCC_CHEM','ACT_AMT').AsString;
    GetField('PROPHAZMAT','ACTUNIT').AsString       := GetField('OCC_CHEM','AMT_UNIT').AsString;
    GetField('PROPHAZMAT','ACUTE').AsString         := IIf(GetField('OCC_CHEM','ACUTE').AsBoolean,'Y','');
    GetField('PROPHAZMAT','AVEAMT').AsString        := GetField('OCC_CHEM','AVE_AMT').AsString;
    GetField('PROPHAZMAT','CASNUM').AsString        := GetField('OCC_CHEM','CAS').AsString;
    GetField('PROPHAZMAT','CHEMNO').AsString        := GetField('OCC_CHEM','CHEM_NO').AsString;
    GetField('PROPHAZMAT','CHEMSRC').AsString       := GetField('OCC_CHEM','CHEM_SRC').AsString;
    GetField('PROPHAZMAT','CHRONIC').AsString       := IIf(GetField('OCC_CHEM','CHRONIC').AsBoolean,'Y','');
    GetField('PROPHAZMAT','DAYS').AsString          := GetField('OCC_CHEM','DAYS').AsString;
    GetField('PROPHAZMAT','FIRE').AsString          := IIf(GetField('OCC_CHEM','FIRE').AsBoolean,'Y','');
    GetField('PROPHAZMAT','GAS').AsString           := IIf(GetField('OCC_CHEM','GAS').AsBoolean,'Y','');
    GetField('PROPHAZMAT','HAZCLASS').AsString      := GetField('OCC_CHEM','HAZ_CLASS').AsString;
    GetField('PROPHAZMAT','LIQUID').AsString        := IIf(GetField('OCC_CHEM','LIQUID').AsBoolean,'Y','');
    GetField('PROPHAZMAT','MAXAMT').AsString        := GetField('OCC_CHEM','MAX_AMT').AsString;
    GetField('PROPHAZMAT','MIX').AsString           := IIf(GetField('OCC_CHEM','MIX').AsBoolean,'Y','');
    GetField('PROPHAZMAT','MSDSFLAG').AsString      := IIf(GetField('OCC_CHEM','MSDS_FLAG').AsBoolean,'Y','');
    GetField('PROPHAZMAT','NARR').AsString          := GetField('OCC_CHEM','NOTES').AsString;
    GetField('PROPHAZMAT','NFPA_F').AsString        := GetField('OCC_CHEM','NFPA_F').AsString;
    GetField('PROPHAZMAT','NFPA_H').AsString        := GetField('OCC_CHEM','NFPA_H').AsString;
    GetField('PROPHAZMAT','NFPA_R').AsString        := GetField('OCC_CHEM','NFPA_R').AsString;
    GetField('PROPHAZMAT','NFPA_S').AsString        := GetField('OCC_CHEM','NFPA_S').AsString;
    GetField('PROPHAZMAT','NOAANO').AsString        := GetField('OCC_CHEM','NOAA_NO').AsString;
    GetField('PROPHAZMAT','PRESSURE').AsString      := IIf(GetField('OCC_CHEM','PRESSURE').AsBoolean,'Y','');
    GetField('PROPHAZMAT','PURE').AsString          := IIf(GetField('OCC_CHEM','PURE').AsBoolean,'Y','');
    GetField('PROPHAZMAT','REACTIVE').AsString      := IIf(GetField('OCC_CHEM','REACTIVE').AsBoolean,'Y','');
    GetField('PROPHAZMAT','SOLID').AsString         := IIf(GetField('OCC_CHEM','SOLID').AsBoolean,'Y','');
    GetField('PROPHAZMAT','UNNO').AsString          := GetField('OCC_CHEM','UN_NO').AsString;
    GetField('PROPHAZMAT','STORAGEPRES').AsString   := GetField('OCC_CHEM','STORAGE_PRES').AsString;
    GetField('PROPHAZMAT','STORAGETEMP').AsString   := GetField('OCC_CHEM','STORAGE_TEMP').AsString;
    GetField('PROPHAZMAT','STORAGETYPE').AsString   := GetField('OCC_CHEM','STORAGE_TYPE').AsString;
    A('PROPHAZMAT').Post;
    A('OCC_CHEM').Skip(1);
  end;
end;

procedure TConvFHForm.PropLKP_STNButtonClick(Sender: TObject);
begin
  ConnectFH;

  Open_Query(FHDatabase,'LKP_STN',false,'SELECT * FROM LKP_STN');
  Open_Query('DISPLOC',true,'SELECT * FROM DISPLOC WHERE 1=2');

  While Not A('LKP_STN').Eof do begin
    A('DISPLOC').UpdateSQL('SELECT * FROM DISPLOC WHERE CODE = ' + edbfield('LKP_STN','CODE'));
    If A('DISPLOC').RecordsExist then
      A('DISPLOC').Edit
    else
      A('DISPLOC').Append;

    Getfield('DISPLOC','FDID').AsString    := mFireID;
    Getfield('DISPLOC','CODE').AsString    := tdbfield('LKP_STN','CODE');
    Getfield('DISPLOC','DESCR').AsString   := tdbfield('LKP_STN','DESCRIPT');

    Getfield('DISPLOC','STRNUM').AsString  := tdbfield('LKP_STN','NUMBER');
    Getfield('DISPLOC','STREET').AsString  := alltrim(tdbfield('LKP_STN','STREET') + ' ' + tdbfield('LKP_STN','ST_TYPE'));
    Getfield('DISPLOC','CITY').AsString    := tdbfield('LKP_STN','CITY');
    Getfield('DISPLOC','STATE').AsString   := tdbfield('LKP_STN','STATE');
    Getfield('DISPLOC','ZIP').AsString     := tdbfield('LKP_STN','ZIP');

    A('DISPLOC').Post;

    A('LKP_STN').Skip(1);
  end;

  CloseApollo('LKP_STN');
  FHDatabase.Free;

  CloseApollo('DISPLOC');
  ShowMessage('Done');
end;

procedure TConvFHForm.PropLKP_SYSButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Setting Up PROP Tables. . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_SYS');
  Open_Query('PROPPHONETYPE',true,'SELECT * FROM PROPPHONETYPE WHERE 1=2');
  Open_Query('DISPBOX',true,'SELECT * FROM DISPBOX WHERE 1=2');
  Open_Query('INSPBOX',true,'SELECT * FROM INSPBOX WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','CODE') + '  ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
    If (tdbfield('CODE','CATEGORY') = 'PHONE') then begin
      A('PROPPHONETYPE').UpdateSQL('SELECT * FROM PROPPHONETYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PROPPHONETYPE').RecordsExist then
        A('PROPPHONETYPE').Edit
      else
        A('PROPPHONETYPE').Append;
      Getfield('PROPPHONETYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PROPPHONETYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PROPPHONETYPE').Post;
    end else if (tdbfield('CODE','CATEGORY') = 'DISTRICT') then begin
      A('DISPBOX').UpdateSQL('SELECT * FROM DISPBOX WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPBOX').RecordsExist then
        A('DISPBOX').Edit
      else
        A('DISPBOX').Append;
      Getfield('DISPBOX','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('DISPBOX','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('DISPBOX').Post;
      A('INSPBOX').UpdateSQL('SELECT * FROM INSPBOX WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('INSPBOX').RecordsExist then
        A('INSPBOX').Edit
      else
        A('INSPBOX').Append;
      Getfield('INSPBOX','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('INSPBOX','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('INSPBOX').Post;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  FHDatabase.Free;

  CloseApollo('PROPPHONETYPE');
  CloseApollo('DISPBOX');
  CloseApollo('INSPBOX');

  AddStatusListBox(ListBox,'Setting Up PROP Tables. . . . . Done');
end;

procedure TConvFHForm.PropParentButtonClick(Sender: TObject);
Var ParentPropID : String;
    PropID       : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Setting Up PROP PARENT Tables. . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'OCC_MAIN',false,'SELECT OCCUP_ID, PROP_ID FROM OCC_MAIN WHERE PROP_ID IS NOT NULL AND PROP_ID <> ' + AddExpr(''));
  Open_Query('PROP',false,'SELECT PROPID, OCCUP_ID FROM PROP');

  Gauge.MaxValue := A('OCC_MAIN').QueryRecCount;
  Gauge.progress := 0;

  While Not A('OCC_MAIN').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('OCC_MAIN','OCCUP_ID'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    If A('PROP').ExactQueryLocate('OCCUP_ID',tdbfield('OCC_MAIN','PROP_ID')) then begin
      ParentPropID := GetField('PROP','PROPID').AsString;
      If A('PROP').ExactQueryLocate('OCCUP_ID',tdbfield('OCC_MAIN','OCCUP_ID')) then begin
        PropID := GetField('PROP','PROPID').AsString;
        RunSQL('UPDATE PROP SET PARENTPROPID = ' + ParentPropID + ' WHERE PROPID = ' + PropID);
      end;
    end;
    
    A('OCC_MAIN').Skip(1);
  end;  

  CloseApollo('OCC_MAIN');
  CloseApollo('PROP');
  FHDatabase.Free;

  AddStatusListBox(ListBox,'Setting Up PROP PARENT Tables. . . . . Completed');
end;

procedure TConvFHForm.PropPhoneTypeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Setting Up PROP Tables. . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_SYS');
  Open_Query('PROPPHONETYPE',true,'SELECT * FROM PROPPHONETYPE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','CODE') + '  ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
    If (tdbfield('CODE','CATEGORY') = 'PHONE') then begin
      A('PROPPHONETYPE').UpdateSQL('SELECT * FROM PROPPHONETYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('PROPPHONETYPE').RecordsExist then
        A('PROPPHONETYPE').Edit
      else
        A('PROPPHONETYPE').Append;
      Getfield('PROPPHONETYPE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PROPPHONETYPE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PROPPHONETYPE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  FHDatabase.Free;

  CloseApollo('PROPPHONETYPE');

  AddStatusListBox(ListBox,'Setting Up PROP Tables. . . . . Done');

end;

procedure TConvFHForm.PropTypeButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox,'Setting Up PROP. . . . . Started');
  TPropSetForm.LoadPropType;
  AddStatusListBox(ListBox,'Setting Up PROP. . . . . Done');
end;

procedure TConvFHForm.RolodexButtonClick(Sender: TObject);
var Code : String;
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting ROLODEX . . . . . Started');
  Open_Query(FHDatabase,'VEN_MAIN',false,'SELECT * FROM VEN_MAIN');
  Open_Query(FHDatabase,'VEN_PH',false,'SELECT * FROM VEN_PH');

  Gauge.MaxValue                 := A('VEN_MAIN').RecordCount;
  Gauge.progress                 := 0;

  Open_Query('ROLODEX',true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('ROLODEXTYPE',false,'SELECT * FROM ROLODEXTYPE');

  While Not A('VEN_MAIN').eof do begin
    Code := GetField('VEN_MAIN','VEND_ID').AsString;

    A('ROLODEX').UpdateSql('SELECT * FROM ROLODEX WHERE CODE = ' + AddExpr(Code));
    If A('ROLODEX').RecordsExist then
      A('ROLODEX').Edit
    else
      A('ROLODEX').Append;

    GetField('ROLODEX','CODE').AsString          := Code;
    GetField('ROLODEX','COMPANY').AsString       := GetField('VEN_MAIN','NAME').AsString;
    GetField('ROLODEX','INVENTORY').AsString     := 'Y';
    GetField('ROLODEX','ADDRESS').AsString       := GetField('VEN_MAIN','ADDR_1').AsString;
    GetField('ROLODEX','CITY').AsString          := GetField('VEN_MAIN','CITY').AsString;
    GetField('ROLODEX','STATE').AsString         := GetField('VEN_MAIN','STATE').AsString;
    GetField('ROLODEX','ZIP').AsString           := GetField('VEN_MAIN','ZIP').AsString;
    If A('ROLODEXTYPE').ExactQueryLocate('CODE',tdbfield('VEN_MAIN','CLASS')) then
      GetField('ROLODEX','ROLODEXTYPEID').AsString := GetField('ROLODEXTYPE','ROLODEXTYPEID').AsString;

      //GET THE VENDOR PHONE NUMBERS
    A('VEN_PH').UpdateSql('SELECT * FROM VEN_PH WHERE ID = ' + AddExpr(Code));
      While Not A('VEN_PH').eof do begin
        if (GetField('VEN_PH','CODE').AsString = 'HOME') then begin
          GetField('ROLODEX','PHONE1').AsString       := GetField('VEN_PH','PHONE').AsString;
          GetField('ROLODEX','EXT1').AsString         := GetField('VEN_PH','EXT').AsString;
        end else if ((GetField('VEN_PH','CODE').AsString = 'WORK') OR (GetField('VEN_PH','CODE').AsString = 'OFFC')) then begin
          GetField('ROLODEX','PHONE2').AsString       := GetField('VEN_PH','PHONE').AsString;
          GetField('ROLODEX','EXT2').AsString         := GetField('VEN_PH','EXT').AsString;
        end else if ((GetField('VEN_PH','CODE').AsString = 'CELL') OR (GetField('VEN_PH','CODE').AsString = 'MOBL')) then begin
          GetField('ROLODEX','PHONE3').AsString       := GetField('VEN_PH','PHONE').AsString;
          GetField('ROLODEX','EXT3').AsString         := GetField('VEN_PH','EXT').AsString;
        end else if (GetField('VEN_PH','CODE').AsString = 'AFTR') then begin
          GetField('ROLODEX','PHONE4').AsString       := GetField('VEN_PH','PHONE').AsString;
          GetField('ROLODEX','EXT4').AsString         := GetField('VEN_PH','EXT').AsString;
        end else if (GetField('VEN_PH','CODE').AsString = 'FAX') then begin
          GetField('ROLODEX','PHONE5').AsString       := GetField('VEN_PH','PHONE').AsString;
          GetField('ROLODEX','EXT5').AsString         := GetField('VEN_PH','EXT').AsString;
        end;

        A('VEN_PH').Skip(1);
      end;

    A('ROLODEX').Post;
    A('VEN_MAIN').Skip(1);
    Application.ProcessMessages;
    Gauge.progress   := Gauge.progress + 1;
  end;

  CloseApollo('VEN_MAIN');
  CloseApollo('VEN_PH');
  CloseApollo('ROLODEX');
  CloseApollo('ROLODEXTYPE');
  FHDatabase.Free;

  Gauge.progress   := 0;
  AddStatusListBox(ListBox,'Converting ROLODEX . . . . . Done');
  ShowMessage('DONE');
end;

procedure TConvFHForm.SchdLocButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting SCHDLOC . . . . . Started');
  ConnectFH;

  Open_Query(FHDatabase,'LKP_STN',false,'SELECT * FROM LKP_STN');
  Open_Query('SCHDLOC',true,'SELECT * FROM SCHDLOC WHERE 1=2');

  While Not A('LKP_STN').Eof do begin
    A('SCHDLOC').UpdateSQL('SELECT * FROM SCHDLOC WHERE CODE = ' + edbfield('LKP_STN','CODE'));
    If A('SCHDLOC').RecordsExist then
      A('SCHDLOC').Edit
    else
      A('SCHDLOC').Append;

    Getfield('SCHDLOC','FDID').AsString    := GetConvFdid(tdbfield('LKP_STN','FDID'));
    Getfield('SCHDLOC','CODE').AsString    := tdbfield('LKP_STN','CODE');
    Getfield('SCHDLOC','DESCR').AsString   := tdbfield('LKP_STN','DESCRIPT');

    A('SCHDLOC').Post;
    AddStatusListBox(ListBox,'Converting SCHDLOC . . ' + tdbfield('LKP_STN','CODE'));

    A('LKP_STN').Skip(1);
  end;

  CloseApollo('LKP_STN');
  FHDatabase.Free;

  CloseApollo('SCHDLOC');
  AddStatusListBox(ListBox,'Converting SCHDLOC . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.SchdPayRateButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting SCHDPAYRATE. . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'STF_PAY',false,'SELECT * FROM STF_PAY');
  Open_Query('SCHDPAYRATE',true, 'SELECT * FROM SCHDPAYRATE WHERE 1=2');
  Open_Query('PERS',       false,'SELECT PERSID, PERSCODE FROM PERS');

  Gauge.MaxValue := A('STF_PAY').QueryRecCount;
  Gauge.progress := 0;

  While Not A('STF_PAY').Eof do begin
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('STF_PAY','STAFF_ID')) then begin
      A('SCHDPAYRATE').UpdateSQL('SELECT * FROM SCHDPAYRATE WHERE PAY_ID = ' + edbfield('STF_PAY','PAY_ID'));
      If A('SCHDPAYRATE').RecordsExist then
        A('SCHDPAYRATE').Edit
      else
        A('SCHDPAYRATE').Append;
      Getfield('SCHDPAYRATE','PERSID').AsString      := GetField('PERS','PERSID').AsString;
      Getfield('SCHDPAYRATE','DATESTART').AsDateTime := GetField('STF_PAY','FROM_DATE').AsDateTime;
      Getfield('SCHDPAYRATE','DATEEND').AsDateTime   := GetField('STF_PAY','TO_DATE').AsDateTime;
      Getfield('SCHDPAYRATE','SCHDTYPEID').AsString  := '86';
      Getfield('SCHDPAYRATE','PAY_ID').AsString      := tdbfield('STF_PAY','PAY_ID');
      Getfield('SCHDPAYRATE','RATE').AsFloat         := GetField('STF_PAY','RATE').AsFloat;
      A('SCHDPAYRATE').Post;
      AddStatusListBox(ListBox,'Converting SCHDPAYRATE . . ' + tdbfield('PERS','PERSCODE'));
    end;  
    A('STF_PAY').Skip(1);
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('STF_PAY');
  CloseApollo('SCHDPAYRATE');
  CloseApollo('PERS');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting SCHDRANK . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.SchdRankButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting SCHDRANK . . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');
  Open_Query('SCHDRANK',true,       'SELECT * FROM SCHDRANK WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'STF RANK') and Not (tdbfield('CODE','DESCRIPT') = '') then begin
      A('SCHDRANK').UpdateSQL('SELECT * FROM SCHDRANK WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('SCHDRANK').RecordsExist then
        A('SCHDRANK').Edit
      else
        A('SCHDRANK').Append;
      Getfield('SCHDRANK','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('SCHDRANK','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('SCHDRANK').Post;
      AddStatusListBox(ListBox,'Converting SCHDRANK . . ' + tdbfield('CODE','CODE'));
    end;
    A('CODE').Skip(1);
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('CODE');
  CloseApollo('SCHDRANK');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting SCHDRANK . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.SchdShiftNameFieldClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting LKP_SYS . . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'LKP_SYS',false,'SELECT * FROM LKP_SYS');
  Open_Query('SCHDSHIFTNAME',true,       'SELECT * FROM SCHDSHIFTNAME WHERE 1=2');

  Gauge.MaxValue := A('LKP_SYS').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_SYS').Eof do begin
    If (tdbfield('LKP_SYS','CATEGORY') = 'SHIFT') and Not (tdbfield('LKP_SYS','DESCRIPT') = '') then begin
      A('SCHDSHIFTNAME').UpdateSQL('SELECT * FROM SCHDSHIFTNAME WHERE CODE = ' + edbfield('LKP_SYS','CODE'));
      If A('SCHDSHIFTNAME').RecordsExist then
        A('SCHDSHIFTNAME').Edit
      else
        A('SCHDSHIFTNAME').Append;
      Getfield('SCHDSHIFTNAME','FDID').AsString  := GetConvFdid(ConvFdidField.Value);
      Getfield('SCHDSHIFTNAME','CODE').AsString  := tdbfield('LKP_SYS','CODE');
      Getfield('SCHDSHIFTNAME','DESCR').AsString := tdbfield('LKP_SYS','DESCRIPT');
      A('SCHDSHIFTNAME').Post;
    end;
    A('LKP_SYS').Skip(1);
    AddStatusListBox(ListBox,tdbfield('LKP_SYS','CODE') + ' ' + tdbfield('LKP_SYS','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('LKP_SYS');
  CloseApollo('SCHDSHIFTNAME');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting SCHDSHIFTNAME . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.SchdTypeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Converting SCHDTYPE . . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'LKP_STF',false,'SELECT * FROM LKP_STF');
  Open_Query('SCHDTYPE',true,       'SELECT * FROM SCHDTYPE WHERE 1=2');

  Gauge.MaxValue := A('LKP_STF').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_STF').Eof do begin
    If (tdbfield('LKP_STF','CATEGORY') = 'ACTV TYPE') and Not (tdbfield('LKP_STF','DESCRIPT') = '') then begin
      A('SCHDTYPE').UpdateSQL('SELECT * FROM SCHDTYPE WHERE CODE = ' + edbfield('LKP_STF','CODE'));
      If A('SCHDTYPE').RecordsExist then
        A('SCHDTYPE').Edit
      else
        A('SCHDTYPE').Append;
      Getfield('SCHDTYPE','FDID').AsString  := GetConvFdid(ConvFdidField.Value);
      Getfield('SCHDTYPE','CODE').AsString  := tdbfield('LKP_STF','CODE');
      Getfield('SCHDTYPE','DESCR').AsString := tdbfield('LKP_STF','DESCRIPT');
      A('SCHDTYPE').Post;
    end;
    A('LKP_STF').Skip(1);
    AddStatusListBox(ListBox,tdbfield('LKP_STF','CODE') + ' ' + tdbfield('LKP_STF','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('LKP_STF');
  CloseApollo('SCHDTYPE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting SCHDTYPE . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.SchRoleButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting Incident SCH ROLE . . . . . Started');
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');

  Open_Query('PERSSCHDROLE',true,'SELECT * FROM PERSSCHDROLE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    AddStatusListBox(ListBox,'Processing ' + tdbfield('CODE','DESCRIPT'));
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    FdidVar := GetConvFdid(ConvFdidField.Value);
    If (tdbfield('CODE','CATEGORY') = 'SCH ROLE') then begin
      A('PERSSCHDROLE').UpdateSQL('SELECT * FROM PERSSCHDROLE WHERE FDID = ' + AddExpr(FdidVar) + ' AND CODE = ' + edbfield('CODE','CODE'));
      If A('PERSSCHDROLE').RecordsExist then
        A('PERSSCHDROLE').Edit
      else
        A('PERSSCHDROLE').Append;
      Getfield('PERSSCHDROLE','FDID').AsString  := FdidVar;
      Getfield('PERSSCHDROLE','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('PERSSCHDROLE','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('PERSSCHDROLE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('PERSSCHDROLE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting SCH ROLE . . . . . Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.StreetButtonClick(Sender: TObject);
Var Street : String;
begin
  AddStatusListBox(ListBox,'Converting Streets . . . . .Started');
  
  ConnectFH;
  Open_Query(FHDatabase,'LKP_STRT',false,'SELECT * FROM LKP_STRT WHERE HIDE = 0');
  Open_Query('STREET',true,'SELECT * FROM STREET WHERE 1=2');

  Gauge.MaxValue := A('LKP_STRT').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_STRT').Eof do begin

    Street := UpperCase(alltrim(tdbfield('LKP_STRT','PREFIX') + ' ' + alltrim(tdbfield('LKP_STRT','STREET') + ' ' + tdbfield('LKP_STRT','TYPE') + ' ' + tdbfield('LKP_STRT','SUFFIX'))));

    If At('/',Street) = 0 then begin
      A('STREET').UpdateSQL('SELECT * FROM STREET WHERE STREET = ' + AddExpr(Street));
      If A('STREET').RecordsExist then
        A('STREET').Edit
      else
        A('STREET').Append;
      Getfield('STREET','STREET').AsString  := Street;
      A('STREET').Post;
    end;  

    A('LKP_STRT').Skip(1);

    AddStatusListBox(ListBox,'Converting Street . . ' + Street);
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('STREET');
  CloseApollo('LKP_STRT');

  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Streets . . . . .Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.TrainCodeButtonClick(Sender: TObject);
Var FdidVar : String;
begin
  AddStatusListBox(ListBox,'Converting Training Codes . . . . .Started');
  ConnectFH;
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_STF');

  Open_Query('NITRAINCAT1',true,    'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Open_Query('NITRAINCAT2',true,    'SELECT * FROM NITRAINCAT2 WHERE 1=2');
  Open_Query('NITRAINCATTYPE',false,'SELECT * FROM NITRAINCATTYPE');
  Open_Query('NIUSER1',true,        'SELECT * FROM NIUSER1     WHERE 1=2');
  Open_Query('NIAGENCY',true,       'SELECT * FROM NIAGENCY    WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin
    If (tdbfield('CODE','CATEGORY') = 'TRNG METH') then begin
      A('NIUSER1').UpdateSQL('SELECT * FROM NIUSER1 WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('NIUSER1').RecordsExist then
        A('NIUSER1').Edit
      else
        A('NIUSER1').Append;
      Getfield('NIUSER1','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('NIUSER1','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('NIUSER1').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'TRNG AGCY') then begin
      A('NIAGENCY').UpdateSQL('SELECT * FROM NIUSER1 WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('NIAGENCY').RecordsExist then
        A('NIAGENCY').Edit
      else
        A('NIAGENCY').Append;
      Getfield('NIAGENCY','CODE').AsString  := tdbfield('CODE','CODE');
      Getfield('NIAGENCY','DESCR').AsString := tdbfield('CODE','DESCRIPT');
      A('NIAGENCY').Post;

    end else if (tdbfield('CODE','CATEGORY') = 'TRNG CAT') then begin
      FdidVar := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');

      If (FdidVar = '') then
        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('CODE','CODE'))
      else
        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE FDID = ' + AddExpr(FdidVar) + ' AND CODE = ' + edbfield('CODE','CODE'));

      If A('NITRAINCAT1').RecordsExist then
        A('NITRAINCAT1').Edit
      else
        A('NITRAINCAT1').Append;
      Getfield('NITRAINCAT1','FDID').AsString    := FdidVar;
      Getfield('NITRAINCAT1','CODE').AsString    := tdbfield('CODE','CODE');
      Getfield('NITRAINCAT1','DESCR').AsString   := tdbfield('CODE','DESCRIPT');
      Getfield('NITRAINCAT1','EVLENGTH').AsFloat := Getfield('CODE','DEF_HRS').AsFloat;
      Getfield('NITRAINCAT1','POINT').AsFloat    := Getfield('CODE','DEF_PTS').AsFloat;
      Getfield('NITRAINCAT1','NARR').AsString    := Getfield('CODE','COMMENTS').AsString;
      If A('NITRAINCATTYPE').ExactQueryLocate('CODE',tdbfield('CODE','GRP')) then
        GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString := GetField('NITRAINCATTYPE','NITRAINCATTYPEID').AsString;
      A('NITRAINCAT1').Post;

      AddStatusListBox(ListBox,'Converting Training Course ' + tdbfield('CODE','CODE') + ' ' + tdbfield('CODE','DESCRIPT'));

    end else if (tdbfield('CODE','CATEGORY') = 'TRNG RBUR') then begin
      FdidVar := IIf(NIFdidField.Checked,GetConvFdid(ConvFdidField.Value),'');

      If (FdidVar = '') then
        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('CODE','CODE'))
      else
        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE FDID = ' + AddExpr(FdidVar) + ' AND CODE = ' + edbfield('CODE','CODE'));

      If A('NITRAINCAT1').RecordsExist then
        A('NITRAINCAT1').Edit
      else
        A('NITRAINCAT1').Append;
      Getfield('NITRAINCAT1','FDID').AsString    := FdidVar;
      Getfield('NITRAINCAT1','CODE').AsString    := tdbfield('CODE','CODE');
      Getfield('NITRAINCAT1','DESCR').AsString   := tdbfield('CODE','DESCRIPT');
      Getfield('NITRAINCAT1','EVLENGTH').AsFloat := Getfield('CODE','DEF_HRS').AsFloat;
      Getfield('NITRAINCAT1','POINT').AsFloat    := Getfield('CODE','DEF_PTS').AsFloat;
      Getfield('NITRAINCAT1','NARR').AsString    := Getfield('CODE','COMMENTS').AsString;
      A('NITRAINCAT1').Post;

      AddStatusListBox(ListBox,'Converting Ratings Training Course ' + tdbfield('CODE','CODE') + ' ' + tdbfield('CODE','DESCRIPT'));
    end;

    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NITRAINCAT2');
  CloseApollo('NITRAINCATTYPE');
  CloseApollo('NIUSER1');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Training Codes . . . . .Done');
  ShowMessage('Done');
end;

procedure TConvFHForm.TrainingButtonClick(Sender: TObject);
Var PersCode      : String;
    CodeVar       : String;
    NIID          : String;
    RecCount      : integer;
    SQLVar        : String;
    FDIDVar       : String;
    NISTypeCode   : String;
begin
  SQLVar := 'SELECT * FROM TRN_MAIN WHERE ' + BuildSQLAlpineDate('TRN_MAIN.DATE',InitialDateField.Value,FinalDateField.Value) + ' ORDER BY TRN_MAIN.DATE';
  AddStatusListBox(ListBox,'Converting Training . . . . . Started');
  ConnectFH;
  Open_Query(FHDatabase,'TRN_MAIN',false,SQLVar);
  Open_Query(FHDatabase,'TRN_DET',false,' SELECT * FROM TRN_DET  WHERE 1=2');
  Open_Query(FHDatabase,'TRN_INST',false,'SELECT * FROM TRN_INST WHERE 1=2');
  Open_Query(FHDatabase,'TRN_RBUR',false,'SELECT * FROM TRN_RBUR WHERE 1=2');

  Open_Query('NI',           true, 'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',        true, 'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',         false,'SELECT FDID, PERSID, PERSCODE FROM PERS');
  Open_Query('NIPTYPE',      false,'SELECT * FROM NIPTYPE');
  Open_Query('NISTYPE',      false,'SELECT * FROM NISTYPE');
  Open_Query('NIEV',         true, 'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',      true, 'SELECT * FROM NIEVATT WHERE 1=2');
  Open_Query('NITRAINCAT1',  false,'SELECT * FROM NITRAINCAT1');
  Open_Query('LOCATION',     false,'SELECT * FROM LOCATION WHERE ' + GetFdidSQL(ConvFdidField.value));
  Open_Query('NIUSER1',      false,'SELECT * FROM NIUSER1');
  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('FDIDCOMP',     false,'SELECT * FROM FDIDCOMP');
  Open_Query('SCHDLOC',      false,'SELECT * FROM SCHDLOC');

  Gauge.MaxValue            := A('TRN_MAIN').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('TRN_MAIN').Eof do begin
    CodeVar       := GetField('TRN_MAIN','COURSE_ID').AsString;
    NISTypeCode   := 'TR';

    If (mFireID = '07130') and (tdbfield('TRN_MAIN','TRA_CODE') = 'APPCHECK') then
      NISTypeCode := 'APPCHECK';

    If (mFireID = '36017') then begin
      If (tdbfield('TRN_MAIN','TRA_CODE') = 'DW') or (tdbfield('TRN_MAIN','MET_CODE') = 'DR')  or (tdbfield('TRN_MAIN','TRA_CODE') = 'DE') then
        NISTypeCode := 'DR'
      else
        NISTypeCode := 'TR';
    end;

    If (mFireID = '36045') then begin
      If (tdbfield('TRN_MAIN','MET_CODE') = '40') then
        NISTypeCode := 'DR'
      else
        NISTypeCode := 'TR';
    end;

    If (mFireID = '56030') then begin
      If (tdbfield('TRN_MAIN','TRA_CODE') = 'DR') then
        NISTypeCode := 'DR'
      else
        NISTypeCode := 'TR';
    end;

    If A('NISTYPE').ExactQueryLocate('CODE',NISTypeCode) then begin
      A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + AddExpr(CodeVar));
      If A('NI').RecordsExist then
        A('NI').Edit
      else
        A('NI').Append;

      Getfield('NI','NIPTYPEID').AsString       := GetField('NISTYPE','NIPTYPEID').AsString;
      Getfield('NI','NISTYPEID').AsString       := GetField('NISTYPE','NISTYPEID').AsString;
      Getfield('NI','NILOSAPCATID').AsString    := GetField('NISTYPE','NILOSAPCATID').AsString;

      Getfield('NI','CODE').AsString            := CodeVar;

      If (((mFireID = '09259') or (mFireID = '21012') or(mFireID = '01011')) and (alltrim(GetField('TRN_MAIN','DATE').AsString) <> ''))  then begin
        Getfield('NI','DATETIMESTART').AsDateTime := StrToDateTime(GetField('TRN_MAIN','DATE').AsString + ' ' + GetField('TRN_MAIN','TIME').AsString);
        If (trim(GetField('TRN_MAIN','END_DATE').AsString) <> '') then
          Getfield('NI','DATETIMEEND').AsDateTime   := StrToDateTime(GetField('TRN_MAIN','END_DATE').AsString + ' ' + GetField('TRN_MAIN','END_TIME').AsString);
      end else begin
        Getfield('NI','DATETIMESTART').AsDateTime := GetField('TRN_MAIN','DTTM').AsDateTime;

        If (GetField('TRN_MAIN','END_DTTM').AsDateTime > 0) then
          Getfield('NI','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','END_DTTM').AsDateTime
        else if (GetField('TRN_MAIN','DATE').AsDateTime > 0) and Not (tdbfield('TRN_MAIN','END_TIME') = '') then begin
          Getfield('NI','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','DATE').AsDateTime + GetRealTime(tdbfield('TRN_MAIN','END_TIME'))
        end;
      end;


      GetField('NI','FDID').AsString            := GetConvFdid(ConvFdidField.Value);
      Getfield('NI','DESCR').AsString           := GetField('TRN_MAIN','DESCRIPT').AsString;
      Getfield('NI','POINT').AsFloat            := GetField('TRN_MAIN','POINTS').AsFloat;
      Getfield('NI','EVLENGTH').AsFloat         := GetField('TRN_MAIN','HOURS').AsFloat;
      Getfield('NI','NARR').AsString            := GetField('TRN_MAIN','NOTES').AsString;
      Getfield('NI','UNITNUM').AsString         := GetUnitNum(GetField('TRN_MAIN','UNIT').AsString);

      If A('LOCATION').ExactQueryLocate('CODE',GetField('TRN_MAIN','LOCATION').AsString) then
        GetField('NI','LOCATIONID').AsString := GetField('LOCATION','LOCATIONID').AsString;

      If A('NIUSER1').ExactQueryLocate('CODE',GetField('TRN_MAIN','MET_CODE').AsString) then
        GetField('NI','NIUSER1ID').AsString := GetField('NIUSER1','NIUSER1ID').AsString;

      If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',GetField('TRN_MAIN','SHIFT').AsString) then
        GetField('NI','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

      If A('FDIDCOMP').ExactQueryLocate('CODE',GetField('TRN_MAIN','STATION').AsString) then
        GetField('NI','FDIDCOMPID').AsString := GetField('FDIDCOMP','FDIDCOMPID').AsString;

      If A('SCHDLOC').ExactQueryLocate('CODE',GetField('TRN_MAIN','STATION').AsString) then
        GetField('NI','SCHDLOCID').AsString := GetField('SCHDLOC','SCHDLOCID').AsString;

      GetTable('NI').Post;
      NIID := GetField('NI','NIID').AsString;

      A('TRN_RBUR').UpdateSQL('SELECT * FROM TRN_RBUR WHERE COURSE_ID = ' + AddExpr(CodeVar));
      While Not A('TRN_RBUR').Eof do begin
        If A('NITRAINCAT1').ExactQueryLocate('CODE',tdbfield('TRN_RBUR','RBUR_CODE')) then begin
          A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + pkvalue(NIID) + ' AND NITRAINCAT1ID = ' + pkValue(GetField('NITRAINCAT1','NITRAINCAT1ID').AsString));
          If A('NIEV').RecordsExist then
            A('NIEV').Edit
          else
            A('NIEV').Append;
          Getfield('NIEV','NIID').AsString            := NIID;
          Getfield('NIEV','NITRAINCATTYPEID').AsString:= GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString;
          Getfield('NIEV','NITRAINCAT1ID').AsString   := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
          Getfield('NIEV','DATETIMESTART').AsDateTime := GetField('TRN_MAIN','dttm').AsDateTime;
          Getfield('NIEV','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','end_dttm').AsDateTime;
          if MFireID = '01011' then begin
            Getfield('NIEV','DATETIMESTART').AsDateTime := GetField('TRN_MAIN','DATE').AsDateTime;
            Getfield('NIEV','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','DATE').AsDateTime;
          end;

          Getfield('NIEV','DESCR').AsString           := tdbfield('TRN_RBUR','RESPONSE');
          Getfield('NIEV','EVLENGTH').AsFloat         := GetField('TRN_MAIN','HOURS').AsFloat;
          A('NIEV').Post;
        end;
        A('TRN_RBUR').Skip(1);
      end;

      If A('NITRAINCAT1').ExactQueryLocate('CODE',tdbfield('TRN_MAIN','TRA_CODE')) then begin
        A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + NIID + ' AND NITRAINCAT1ID = ' + pkValue(GetField('NITRAINCAT1','NITRAINCAT1ID').AsString));
        If A('NIEV').RecordsExist then
          A('NIEV').Edit
        else
          A('NIEV').Append;
        Getfield('NIEV','NIID').AsString            := NIID;
        Getfield('NIEV','NITRAINCATTYPEID').AsString:= GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString;
        Getfield('NIEV','NITRAINCAT1ID').AsString   := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
        Getfield('NIEV','DATETIMESTART').AsDateTime := GetField('TRN_MAIN','dttm').AsDateTime;
        Getfield('NIEV','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','end_dttm').AsDateTime;
        if MFireID = '01011' then begin
          Getfield('NIEV','DATETIMESTART').AsDateTime := GetField('TRN_MAIN','DATE').AsDateTime;
          Getfield('NIEV','DATETIMEEND').AsDateTime   := GetField('TRN_MAIN','DATE').AsDateTime;
        end;
        Getfield('NIEV','DESCR').AsString           := GetField('TRN_MAIN','DESCRIPT').AsString;
        Getfield('NIEV','EVLENGTH').AsFloat         := GetField('TRN_MAIN','HOURS').AsFloat;
        A('NIEV').Post;
      end;

      A('TRN_DET').UpdateSQL('SELECT * FROM TRN_DET WHERE COURSE_ID = ' + AddExpr(CodeVar));
      While Not A('TRN_DET').Eof do begin
        PersCode := tdbfield('TRN_DET','STAFF_ID');
        If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,tdbfield('NI','FDID')]) then begin
          A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE NIID = ' + NIID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
          If A('NIATT').RecordsExist then
            A('NIATT').Edit
          else
            A('NIATT').Append;
          GetField('NIATT','NIID').AsString            := NIID;
          GetField('NIATT','FDID').AsString            := GetConvFdid(ConvFdidField.Value);
          GetField('NIATT','PERSID').AsString          := GetField('PERS','PERSID').AsString;
          GetField('NIATT','POINT').AsString           := GetField('TRN_DET','POINTS').AsString;
          GetField('NIATT','EVLENGTH').AsFloat         := GetField('TRN_DET','HOURS').AsFloat;
          A('NIATT').Post;
        end;
        A('TRN_DET').Skip(1);
      end;

      A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + NIID);
      While Not A('NIEV').Eof do begin
        A('NIATT').UpdateSQL('SELECT PERSID FROM NIATT WHERE NIID = ' + NIID);
        While Not A('NIATT').Eof do begin
          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + pkValue(GetField('NIEV','NIEVID').AsString) + ' AND PERSID = ' + pkvalue(GetField('NIATT','PERSID').AsString));
          If A('NIEVATT').RecordsExist then
            GetTable('NIEVATT').Edit
          else
            GetTable('NIEVATT').Append;
          GetField('NIEVATT','NIID').AsString          := GetField('NI','NIID').AsString;
          GetField('NIEVATT','PERSID').AsString        := GetField('NIATT','PERSID').AsString;
          GetField('NIEVATT','NIEVID').AsString        := GetField('NIEV','NIEVID').AsString;
          GetTable('NIEVATT').Post;
          A('NIATT').Skip(1);
        end;
        A('NIEV').Skip(1);
      end;
    end;
    Gauge.progress  := Gauge.progress + 1;
    AddStatusListBox(ListBox,'Converting Training Number ' + CodeVar);

    Application.ProcessMessages;
    A('TRN_MAIN').Skip(1);
  end;

  CloseApollo('TRN_MAIN');
  CloseApollo('TRN_INST');
  CloseApollo('TRN_DET');
  CloseApollo('TRN_RBUR');

  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');
  CloseApollo('NIPTYPE');
  CloseApollo('NISTYPE');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  CloseApollo('NITRAINCAT1');
  CloseApollo('LOCATION');
  CloseApollo('NIUSER1');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('FDIDCOMP');
  CloseApollo('SCHDLOC');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting Training . . . . . Done');
  ShowMessage('Done');
end;


procedure TConvFHForm.ConnectFH;
Var ErrorString   : String;
    TableType     : Integer;
begin
  inherited;
  TableType  := AnyStrToInt(TableTypeField.Text);
  FHDatabase := TAlpineAdoConnection.Create(self,ServerField.Value + ':' + DatabaseField.Value,UserNameField.Value,PasswordField.Value,TableType);
  FHDatabase.Connect(ErrorString);
end;

procedure TConvFHForm.ConnectRedNMX;
Var ErrorString   : String;
begin
  inherited;
  RedNMXDatabase := TAlpineAdoConnection.Create(self,'REDNMX.COM:REDNMX','ALPINE','A_S_C',4);
  RedNMXDatabase.Connect(ErrorString);
end;


procedure TConvFHForm.ConvFdidFieldAfterLookup(Sender: TAlpineLookupForm);
Var FdidVar : String;
begin
  inherited;
  FdidVar := Sender.Grid.GetValue('FDID');
  Open_Query('FDID',false,'SELECT SERVER, DATABASENAME, USERNAME, PASSWORD, TABLETYPE FROM FDID WHERE FDID = ' + AddExpr(FdidVar));
  ServerField.Value    := tdbfield('FDID','SERVER');
  DatabaseField.Value  := tdbfield('FDID','DATABASENAME');
  UserNameField.Value  := tdbfield('FDID','USERNAME');
  PasswordField.Value  := tdbfield('FDID','PASSWORD');
  TableTypeField.Value := tdbfield('FDID','TABLETYPE');
  CloseApollo('FDID');
end;

procedure TConvFHForm.ConvFdidFieldEnter(Sender: TObject);
begin
  inherited;
  ConvFdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE DATABASENAME IS NOT NULL AND DATABASENAME <> ' + AddExpr('');
end;

procedure TConvFHForm.EMSButtonClick(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  ConnectFH;
  AddStatusListBox(ListBox,'Converting EMS . . . . .Started');
  SQLVar := 'SELECT EMS_PTNT.INCI_ID, EMS_PTNT.PTNT_ID, EMS_MAIN.ALM_DATE FROM EMS_PTNT ' +
            'LEFT JOIN EMS_MAIN ON (EMS_PTNT.INCI_ID = EMS_MAIN.INCI_ID) WHERE ' +
            'EMS_MAIN.ALM_DATE >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',InitialDateField.Value)) + ' AND ' +
            'EMS_MAIN.ALM_DATE <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',FinalDateField.Value)) + ' ' +
            'ORDER BY EMS_MAIN.ALM_DATE, EMS_MAIN.INCI_NO';
  if mFireID = '08108' then

    SQLVar := 'SELECT EMS_MAIN.INCI_ID, EMS_PTNT.PTNT_ID, EMS_MAIN.ALM_DATE FROM EMS_MAIN ' +
              'LEFT JOIN EMS_PTNT ON (EMS_PTNT.INCI_ID = EMS_MAIN.INCI_ID) WHERE ' +
              'EMS_MAIN.ALM_DATE >= ' + AddExpr(FormatDateTime('YYYY-MM-DD',InitialDateField.Value)) + ' AND ' +
              'EMS_MAIN.ALM_DATE <= ' + AddExpr(FormatDateTime('YYYY-MM-DD',FinalDateField.Value)) + ' ' +
              'ORDER BY EMS_MAIN.ALM_DATE, EMS_MAIN.INCI_NO';

  Open_Query(FHDatabase,'EMS',false,SQLVar);
  Open_Query(FHDatabase,'EMS_PTNT',false,'SELECT * FROM EMS_PTNT WHERE 1=2');
  Open_Query(FHDatabase,'EMS_MAIN',false,'SELECT * FROM EMS_MAIN WHERE 1=2');
  Open_Query(FHDatabase,'EMS_VITA',false,'SELECT * FROM EMS_VITA WHERE 1=2');
  Open_Query(FHDatabase,'EMS_MEDS',false,'SELECT * FROM EMS_MEDS WHERE 1=2');
  Open_Query(FHDatabase,'EMS_MCPL',false,'SELECT * FROM EMS_MCPL WHERE 1=2');
  Open_Query(FHDatabase,'EMS_PROC',false,'SELECT * FROM EMS_PROC WHERE 1=2');
  Open_Query(FHDatabase,'EMS_PCPL',false,'SELECT * FROM EMS_PCPL WHERE 1=2');
  Open_Query(FHDatabase,'EMS_SF',  false,'SELECT * FROM EMS_SF   WHERE 1=2');
  Open_Query(FHDatabase,'EMS_HF',  false,'SELECT * FROM EMS_HF   WHERE 1=2');
  Open_Query(FHDatabase,'EMS_SYM', false,'SELECT * FROM EMS_SYM  WHERE 1=2');
  Open_Query(FHDatabase,'EMS_AUTH',false,'SELECT * FROM EMS_AUTH WHERE 1=2');
  Open_Query(FHDatabase,'EMS_PROT',false,'SELECT * FROM EMS_PROT WHERE 1=2');
  Open_Query(FHDatabase,'EMS_PH',  false,'SELECT * FROM EMS_PH   WHERE 1=2');
  Open_Query(FHDatabase,'ACT_DET', false,'SELECT * FROM ACT_DET  WHERE 1=2');
  Open_Query(FHDatabase,'ACT_MAIN',false,'SELECT * FROM ACT_MAIN WHERE 1=2');
  Act_DetQuery  := Open_Query(FHDatabase,false,'SELECT * FROM ACT_DET  WHERE 1=2');
  Act_MainQuery := Open_Query(FHDatabase,false,'SELECT * FROM ACT_MAIN WHERE 1=2');

  Open_Query('NEMSIS',      true, 'SELECT * FROM NEMSIS    WHERE 1=2');
  Open_Query('NEMSISSTAT',  true, 'SELECT * FROM NEMSIS    WHERE 1=2');
  Open_Query('NEMSISSUB',   true, 'SELECT * FROM NEMSISSUB WHERE 1=2');
  Open_Query('NEMSISE04',   true, 'SELECT * FROM NEMSISE04 WHERE 1=2');
  Open_Query('NEMSISE14',   true, 'SELECT * FROM NEMSISE14 WHERE 1=2');
  Open_Query('NEMSISE18',   true, 'SELECT * FROM NEMSISE18 WHERE 1=2');
  Open_Query('NEMSISE18SUB',true, 'SELECT * FROM NEMSISE18SUB WHERE 1=2');
  Open_Query('NEMSISE19',   true, 'SELECT * FROM NEMSISE19 WHERE 1=2');
  Open_Query('NEMSISE19SUB',true, 'SELECT * FROM NEMSISE19SUB WHERE 1=2');
  Open_Query('PERS',        false,'SELECT PERSID, FDID, PERSCODE FROM PERS');
  Open_Query('NEMSISCODE',  false,'SELECT * FROM NEMSISCODE ORDER BY FIELDNAME, CODE');
  Open_Query('NFIRSMAIN',   false,'SELECT * FROM NFIRSMAIN WHERE 1=2');

  Gauge.MaxValue := A('EMS').QueryRecCount;
  Gauge.progress := 0;

  While Not A('EMS').Eof do begin
    A('EMS_PTNT').UpdateSQL('SELECT * FROM EMS_PTNT WHERE PTNT_ID = ' + edbfield('EMS','PTNT_ID'));
    A('EMS_MAIN').UpdateSQL('SELECT * FROM EMS_MAIN WHERE INCI_ID = ' + edbfield('EMS','INCI_ID'));
    A('EMS_SYM'). UpdateSQL('SELECT * FROM EMS_SYM  WHERE PTNT_ID = ' + edbfield('EMS','PTNT_ID'));
    A('EMS_SF').  UpdateSQL('SELECT * FROM EMS_SF   WHERE PTNT_ID = ' + edbfield('EMS','PTNT_ID'));
    A('EMS_HF').  UpdateSQL('SELECT * FROM EMS_HF   WHERE PTNT_ID = ' + edbfield('EMS','PTNT_ID'));
    A('EMS_PROT').UpdateSQL('SELECT * FROM EMS_PROT WHERE PTNT_ID = ' + edbfield('EMS','PTNT_ID'));
    A('EMS_PH').  UpdateSQL('SELECT * FROM EMS_PH   WHERE ID =      ' + edbfield('EMS','PTNT_ID'));

    A('NEMSIS').UpdateSQL('SELECT * FROM NEMSIS WHERE CONVNUM = ' + edbfield('EMS_PTNT','PTNT_ID'));
    If A('NEMSIS').RecordsExist then
      A('NEMSIS').Edit
    else
      A('NEMSIS').Append;
    LoadNemsis;
    A('NEMSIS').Post;

    LoadNemsisStat;
    LoadNemsisE04;
    LoadNemsisE14;
    LoadNemsisE18;
    LoadNemsisE19;
    LoadNemsisE09_14;
    LoadNemsisSub('EMS_PROT','PROTOCOL','E17_01');
    LoadNemsisSub('EMS_HF',  'FACTOR',  'E12_01');

    AddStatusListBox(ListBox,'Processing ' + tdbfield('NEMSIS','E01_01') + ' ' + GetField('EMS_MAIN','ALM_DATE').AsString + ' ' + tdbfield('NEMSIS','STRNUM') + ' ' + tdbfield('NEMSIS','STREET'));
    A('EMS').Skip(1);

    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('EMS');
  CloseApollo('EMS_PTNT');
  CloseApollo('EMS_MAIN');
  CloseApollo('EMS_VITA');
  CloseApollo('EMS_MEDS');
  CloseApollo('EMS_MCPL');
  CloseApollo('EMS_PROC');
  CloseApollo('EMS_PCPL');
  CloseApollo('EMS_SF');
  CloseApollo('EMS_SYM');
  CloseApollo('EMS_AUTH');
  CloseApollo('EMS_PROT');
  CloseApollo('EMS_PH');
  CloseApollo('ACT_DET');
  CloseApollo('ACT_MAIN');

  CloseApollo('NEMSIS');
  CloseApollo('NEMSISSUB');
  CloseApollo('NEMSISSTAT');

  CloseApollo('NEMSISE04');
  CloseApollo('NEMSISE14');
  CloseApollo('NEMSISE18');
  CloseApollo('NEMSISE18SUB');
  CloseApollo('NEMSISE19');
  CloseApollo('NEMSISE19SUB');
  CloseApollo('PERS');
  CloseApollo('NEMSISCODE');
  CloseApollo('NFIRSMAIN');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting EMS . . . . .Done');
end;
 
procedure TConvFHForm.LoadNemsis;
begin
  IncNum  := '20' + substr(dbfield('EMS_MAIN','INCI_NO'),1,2) + substr(dbfield('EMS_MAIN','INCI_NO'),5,6);
  A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + edbfield('EMS_MAIN','FDID') + ' AND INCNUM = ' + AddExpr(IncNum));
  If A('NFIRSMAIN').RecordsExist then
    GetField('NEMSIS','NFIRSMAINID').AsString := Getfield('NFIRSMAIN','NFIRSMAINID').AsString; 

  Getfield('NEMSIS','FDID').AsString        := dbfield('EMS_MAIN','FDID');
  Getfield('NEMSIS','CONVNUM').AsString     := dbfield('EMS_PTNT','PTNT_ID');
  Getfield('NEMSIS','E01_01').AsString      := dbfield('EMS_MAIN','INCI_NO') + '-' + GetField('EMS_PTNT','SEQUENCE').AsString;
  Getfield('NEMSIS','E02_04').AsString      := GetNemsisCode(dbfield('EMS_MAIN','SVC_TYPE'));
  Getfield('NEMSIS','E02_05').AsString      := GetNemsisCode(dbfield('EMS_PTNT','UNIT_ROLE'));
  Getfield('NEMSIS','E02_20').AsString      := GetNemsisCode(dbfield('EMS_PTNT','LS_TO'));
  Getfield('NEMSIS','E20_02').AsString      := GetNemsisCode(dbfield('EMS_PTNT','DESTINATION'));
  Getfield('NEMSIS','E20_14').AsString      := GetNemsisCode(dbfield('EMS_PTNT','LS_FROM'));

  Getfield('NEMSIS','E03_01').AsString      := GetNemsisCode(tdbfield('EMS_MAIN','RSN_CODE'));

  Getfield('NEMSIS','E05_01').AsDateTime    := GetField('EMS_PTNT','ONSET_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_02').AsDateTime    := GetField('EMS_MAIN','ALM_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_03').AsDateTime    := GetField('EMS_MAIN','DISP_DTTM').AsDateTime;
  if GetField('EMS_PTNT','NOTIF_DTTM').AsString = ''  then
    Getfield('NEMSIS','E05_04').AsDateTime    :=  Getfield('NEMSIS','E05_02').AsDateTime
  else
    Getfield('NEMSIS','E05_04').AsDateTime    := GetField('EMS_PTNT','NOTIF_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_05').AsDateTime    := GetField('EMS_PTNT','ROLL_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_06').AsDateTime    := GetField('EMS_MAIN','ARV_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_07').AsDateTime    := GetField('EMS_PTNT','PT_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_08').AsDateTime    := GetField('EMS_PTNT','XFER_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_09').AsDateTime    := GetField('EMS_PTNT','LV_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_10').AsDateTime    := GetField('EMS_PTNT','DEST_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_11').AsDateTime    := GetField('EMS_PTNT','IN_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_12').AsDateTime    := GetField('EMS_PTNT','CANCEL_DTTM').AsDateTime;
  Getfield('NEMSIS','E05_13').AsDateTime    := GetField('EMS_PTNT','HOME_DTTM').AsDateTime;

  Getfield('NEMSIS','E02_11').AsString      := dbfield('EMS_PTNT','UNIT');
  Getfield('NEMSIS','PATNUM').AsString      := GetField('EMS_PTNT','SEQUENCE').AsString;
  Getfield('NEMSIS','STRNUM').AsString      := tdbfield('EMS_MAIN','NUMBER');
  Getfield('NEMSIS','STREET').AsString      := alltrim(tdbfield('EMS_MAIN','ST_PREFIX') + ' ' + tdbfield('EMS_MAIN','STREET') + ' ' + tdbfield('EMS_MAIN','ST_TYPE'));
  Getfield('NEMSIS','ROOMAPT').AsString     := tdbfield('EMS_MAIN','APT_ROOM');
  Getfield('NEMSIS','CITY').AsString        := tdbfield('EMS_MAIN','CITY');
  Getfield('NEMSIS','STATE').AsString       := tdbfield('EMS_MAIN','STATE');

  Getfield('NEMSIS','E08_05').AsString      := GetNemsisCode(tdbfield('EMS_MAIN','PT_VICT_SCENE'));
  Getfield('NEMSIS','E08_06').AsString      := IIf(GetField('EMS_MAIN','MAS_CAS').AsString = 'False','0','1');
  Getfield('NEMSIS','E08_07').AsString      := GetNemsisCode(tdbfield('EMS_MAIN','LOC_TYPE'));
  Getfield('NEMSIS','E08_15').AsString      := tdbfield('EMS_MAIN','ZIP');


  Getfield('NEMSIS','E20_10').AsString      := GetNemsisCode(tdbfield('EMS_PTNT','DISPOSITION'));
  Getfield('NEMSIS','E20_16').AsString      := GetNemsisCode(tdbfield('EMS_PTNT','DEST_DET'));

  Getfield('NEMSIS','E06_01').AsString      := tdbfield('EMS_PTNT','LAST');
  Getfield('NEMSIS','E06_02').AsString      := tdbfield('EMS_PTNT','FIRST');
  Getfield('NEMSIS','E06_03').AsString      := tdbfield('EMS_PTNT','MIDDLE');
  Getfield('NEMSIS','E06_04').AsString      := tdbfield('EMS_PTNT','ADDR_1');
  Getfield('NEMSIS','E06_08').AsString      := tdbfield('EMS_PTNT','ZIP');
  Getfield('NEMSIS','E06_11').AsString      := GetNemsisCode(tdbfield('EMS_PTNT','GENDER'));
  Getfield('NEMSIS','E06_12').AsString      := GetNemsisCode(tdbfield('EMS_PTNT','RACE'));
  Getfield('NEMSIS','E06_13').AsString      := GetNemsisCode(tdbfield('EMS_PTNT','ETHNICITY'));
  Getfield('NEMSIS','E06_16').AsDateTime    := GetField('EMS_PTNT','DOB').AsDateTime;

  If A('EMS_PH').RecordsExist then
    Getfield('NEMSIS','E06_17').AsString := tdbfield('EMS_PH','PHONE');
    
  Getfield('NEMSIS','E06_16').AsDateTime    := GetField('EMS_PTNT','DOB').AsDateTime;
  Getfield('NEMSIS','E06_19').AsString      := tdbfield('EMS_PTNT','DL_NUM');
  Getfield('NEMSIS','CITY').AsString        := tdbfield('EMS_PTNT','CITY');
  Getfield('NEMSIS','STATE').AsString       := tdbfield('EMS_PTNT','STATE');

  Getfield('NEMSIS','E09_04').AsString      := IIf(GetField('EMS_PTNT','INJ_ILL').AsString = '1','1','');
  Getfield('NEMSIS','E09_05').AsString      := tdbfield('EMS_PTNT','COMPLAINT');
  Getfield('NEMSIS','E09_06').AsString      := GetField('EMS_PTNT','COMPL_DURAT').AsString;
  Getfield('NEMSIS','E09_07').AsString      := GetNemsisCode(GetField('EMS_PTNT','COMPL_TMUNIT').AsString);

  Getfield('NEMSIS','E09_08').AsString      := tdbfield('EMS_PTNT','COMPL_SEC');
  Getfield('NEMSIS','E09_09').AsString      := GetField('EMS_PTNT','COMPL2_DURAT').AsString;
  Getfield('NEMSIS','E09_10').AsString      := GetNemsisCode(GetField('EMS_PTNT','COMPL2_TMUNIT').AsString);

  Getfield('NEMSIS','E09_11').AsString      := GetNemsisCode(GetField('EMS_PTNT','CMPL_AREA').AsString);
  Getfield('NEMSIS','E09_12').AsString      := GetNemsisCode(GetField('EMS_PTNT','CMPL_ORGAN').AsString);
  If A('EMS_SYM').RecordsExist and (GetField('EMS_SYM','SEQUENCE').AsString = '1') then
    Getfield('NEMSIS','E09_13').AsString      := GetNemsisCode(GetField('EMS_SYM','CODE').AsString);

  Getfield('NEMSIS','E09_15').AsString      := GetNemsisCode(GetField('EMS_PTNT','IMPRESSION').AsString);
  Getfield('NEMSIS','E09_16').AsString      := GetNemsisCode(GetField('EMS_PTNT','SEC_IMPRESS').AsString);

  Getfield('NEMSIS','E10_01').AsString      := GetNemsisCode(GetField('EMS_PTNT','CAUSE').AsString);

  Getfield('NEMSIS','E13_01').AsString      := GetField('EMS_PTNT','NARRATIVE').AsString;


  Getfield('NEMSIS','E16_01').AsString      := GetField('EMS_PTNT','WEIGHT_LBS').AsString;
end;

procedure TConvFHForm.LoadNemsisE04;
Var PersCode  : String;
begin
  A('ACT_MAIN').UpdateSQL('SELECT * FROM ACT_MAIN WHERE INCI_NO = ' + edbfield('EMS_MAIN','INCI_NO'));
  activ_id  := GetField('ACT_MAIN','ACTIV_ID').AsString;

  A('ACT_DET').UpdateSQL('SELECT * FROM ACT_DET WHERE ACTIV_ID = ' + AddExpr(Activ_Id));
  While Not A('ACT_DET').Eof do begin
    PersCode := alltrim(GetField('ACT_DET','STAFF_ID').AsString);
    If A('PERS').ExactQueryLocate(['FDID','PERSCODE'],[tdbfield('EMS_MAIN','FDID'),PersCode]) then begin
      A('NEMSISE04').UpdateSQL('SELECT * FROM NEMSISE04 WHERE NEMSISID = ' + Getfield('NEMSIS','NEMSISID').AsString + ' AND ' + 'PERSID = ' + GetField('PERS','PERSID').AsString);
      If A('NEMSISE04').RecordsExist then
        A('NEMSISE04').Edit
      else
        A('NEMSISE04').Append;
      GetField('NEMSISE04','NEMSISID').AsString := Getfield('NEMSIS','NEMSISID').AsString;
      GetField('NEMSISE04','PERSID').AsString   := GetField('PERS','PERSID').AsString;
      A('NEMSISE04').Post;
    end;
    A('ACT_DET').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisE14;
begin
  A('EMS_VITA').UpdateSQL('SELECT * FROM EMS_VITA WHERE PTNT_ID = ' + edbfield('EMS_PTNT','PTNT_ID'));

  While Not A('EMS_VITA').Eof do begin
    A('NEMSISE14').UpdateSQL('SELECT * FROM NEMSISE14 WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString + ' AND CONVNUM = ' + edbfield('EMS_VITA','VITA_ID'));
    If A('NEMSISE14').RecordsExist then
      A('NEMSISE14').Edit
    else
      A('NEMSISE14').Append;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('EMS_VITA','STAFF_ID')) then
      GetField('NEMSISE14','PERSID').AsString := GetField('PERS','PERSID').AsString;

    GetField('NEMSISE14','CONVNUM').AsString  := GetField('EMS_VITA','VITA_ID').AsString;
    GetField('NEMSISE14','NEMSISID').AsString := GetField('NEMSIS','NEMSISID').AsString;
    GetField('NEMSISE14','E14_01').AsDateTime := GetField('EMS_VITA','DTTM').AsDateTime;
    GetField('NEMSISE14','E14_02').AsString   := IIf(GetField('EMS_VITA','PTA').AsString = 'False','0','1');
    GetField('NEMSISE14','E14_04').AsString   := GetField('EMS_VITA','BP_SYS').AsString;
    GetField('NEMSISE14','E14_05').AsString   := GetField('EMS_VITA','BP_DIA').AsString;
    GetField('NEMSISE14','E14_06').AsString   := GetNemsisCode(GetField('EMS_VITA','BP_METH').AsString);
    GetField('NEMSISE14','E14_07').AsString   := GetField('EMS_VITA','PULSE').AsString;
    GetField('NEMSISE14','E14_10').AsString   := GetNemsisCode(GetField('EMS_VITA','PULSE_RHYTHM').AsString);
    GetField('NEMSISE14','E14_11').AsString   := GetField('EMS_VITA','RESP').AsString;
    GetField('NEMSISE14','E14_12').AsString   := GetNemsisCode(GetField('EMS_VITA','RESP_EFFORT').AsString);

    GetField('NEMSISE14','E14_15').AsString   := GetField('EMS_VITA','G_EYE').AsString;
    GetField('NEMSISE14','E14_16').AsString   := GetField('EMS_VITA','G_VERBAL').AsString;
    GetField('NEMSISE14','E14_17').AsString   := GetField('EMS_VITA','G_MOTOR').AsString;
    GetField('NEMSISE14','E14_19').AsString   := GetField('EMS_VITA','GCS_TOTAL').AsString;

    GetField('NEMSISE14','E14_20').AsString   := GetField('EMS_VITA','TEMPERATURE').AsString;
    GetField('NEMSISE14','E14_21').AsString   := GetNemsisCode(GetField('EMS_VITA','TEMP_METH').AsString);
    GetField('NEMSISE14','E14_22').AsString   := GetNemsisCode(GetField('EMS_VITA','LEVEL_CON').AsString);
    A('NEMSISE14').Post;
    A('EMS_VITA').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisE18;
Var Code : String;
begin
  A('EMS_MEDS').UpdateSQL('SELECT * FROM EMS_MEDS WHERE PTNT_ID = ' + edbfield('EMS_PTNT','PTNT_ID'));

  While Not A('EMS_MEDS').Eof do begin
    Code := GetNemsisCode(tdbfield('EMS_MEDS','MED'));
    A('NEMSISE18').UpdateSQL('SELECT * FROM NEMSISE18 WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString + ' AND CONVNUM = ' + edbfield('EMS_MEDS','MED_ID'));
    If A('NEMSISE18').RecordsExist then
      A('NEMSISE18').Edit
    else
      A('NEMSISE18').Append;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('EMS_MEDS','STAFF_ID')) then
      GetField('NEMSISE18','PERSID').AsString := GetField('PERS','PERSID').AsString;

    GetField('NEMSISE18','CONVNUM').AsString  := GetField('EMS_MEDS','MED_ID').AsString;
    GetField('NEMSISE18','NEMSISID').AsString := GetField('NEMSIS','NEMSISID').AsString;
    GetField('NEMSISE18','E18_01').AsDateTime := GetField('EMS_MEDS','DTTM').AsDateTime;
    GetField('NEMSISE18','E18_02').AsString   := IIf(GetField('EMS_MEDS','PTA').AsString = 'False','0','1');
    GetField('NEMSISE18','E18_04').AsString   := GetNemsisCode(GetField('EMS_MEDS','DOS_ROUTE').AsString);
    GetField('NEMSISE18','E18_05').AsString   := GetNemsisCode(GetField('EMS_MEDS','DOS_MED').AsString);
    GetField('NEMSISE18','E18_06').AsString   := GetNemsisCode(GetField('EMS_MEDS','DOS_UNIT').AsString);
    GetField('NEMSISE18','E18_07').AsString   := GetField('EMS_MEDS','RESPONSE').AsString;
    GetField('NEMSISE18','E18_10').AsString   := GetNemsisCode(GetField('EMS_MEDS','AUTH_TYPE').AsString);
    GetField('NEMSISE18','E18_11').AsString   := GetField('EMS_MEDS','PHYS_NAME').AsString;

    GetField('NEMSISE18','DESCR').AsString    := GetField('EMS_MEDS','DOSAGE').AsString;

    If A('NEMSISCODE').ExactQueryLocate(['FIELDNAME','CODE'],['E18_03',Code]) then
      GetField('NEMSISE18','NEMSISCODEID').AsString := GetField('NEMSISCODE','NEMSISCODEID').AsString;

    GetField('NEMSISE18','NARR').AsString     := GetField('EMS_MEDS','NOTES').AsString;

    A('NEMSISE18').Post;

    A('EMS_MCPL').UpdateSQL('SELECT * FROM EMS_MCPL WHERE MED_ID = ' + edbfield('EMS_MEDS','MED_ID'));
    LoadNemsisE18Sub;
    
    A('EMS_MEDS').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisE18Sub;
Var Code : String;
begin
  While Not A('EMS_MCPL').Eof do begin
    Code := GetNemsisCode(tdbfield('EMS_MCPL','COMPLICATION'));
    A('NEMSISE18SUB').UpdateSQL('SELECT * FROM NEMSISE18SUB WHERE NEMSISE18ID = ' + GetField('NEMSISE18','NEMSISE18ID').AsString + ' AND FIELDNAME = ' + AddExpr('E18_08') + ' AND CODE = ' + AddExpr(Code));
    If A('NEMSISE18SUB').RecordsExist then
      A('NEMSISE18SUB').Edit
    else
      A('NEMSISE18SUB').Append;
    GetField('NEMSISE18SUB','NEMSISE18ID').AsString := GetField('NEMSISE18','NEMSISE18ID').AsString;
    GetField('NEMSISE18SUB','FIELDNAME').AsString   := 'E18_08';
    GetField('NEMSISE18SUB','CODE').AsString        := Code;
    A('NEMSISE18SUB').Post;
    A('EMS_MCPL').Skip(1);
  end;
end;


procedure TConvFHForm.LoadNemsisE19;
Var Code : String;
begin
  A('EMS_PROC').UpdateSQL('SELECT * FROM EMS_PROC WHERE PTNT_ID = ' + edbfield('EMS_PTNT','PTNT_ID'));

  While Not A('EMS_PROC').Eof do begin
    Code := GetNemsisCode(tdbfield('EMS_PROC','CODE'));
    A('NEMSISE19').UpdateSQL('SELECT * FROM NEMSISE19 WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString + ' AND CONVNUM = ' + edbfield('EMS_PROC','PROC_ID'));
    If A('NEMSISE19').RecordsExist then
      A('NEMSISE19').Edit
    else
      A('NEMSISE19').Append;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('EMS_PROC','STAFF_ID')) then
      GetField('NEMSISE19','PERSID').AsString := GetField('PERS','PERSID').AsString;

    GetField('NEMSISE19','CONVNUM').AsString  := GetField('EMS_PROC','PROC_ID').AsString;
    GetField('NEMSISE19','NEMSISID').AsString := GetField('NEMSIS','NEMSISID').AsString;
    GetField('NEMSISE19','E19_01').AsDateTime := GetField('EMS_PROC','DTTM').AsDateTime;
    GetField('NEMSISE19','E19_02').AsString   := IIf(GetField('EMS_PROC','PTA').AsString = 'False','0','1');

    If A('NEMSISCODE').ExactQueryLocate(['FIELDNAME','CODE'],['E19_03',Code]) then
      GetField('NEMSISE19','NEMSISCODEID').AsString := GetField('NEMSISCODE','NEMSISCODEID').AsString;

    GetField('NEMSISE19','NARR').AsString     := GetField('EMS_PROC','NOTES').AsString;
    GetField('NEMSISE19','E19_05').AsString   := GetField('EMS_PROC','ATTEMPTS').AsString;
    GetField('NEMSISE19','E19_06').AsString   := IIf(GetField('EMS_PROC','SUCCESS').AsString = 'False','0','1');

    A('NEMSISE19').Post;

    A('EMS_PCPL').UpdateSQL('SELECT * FROM EMS_PCPL WHERE PROC_ID = ' + edbfield('EMS_PROC','PROC_ID'));
    LoadNemsisE19Sub;

    A('EMS_PROC').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisE19Sub;
Var Code : String;
begin
  While Not A('EMS_PCPL').Eof do begin
    Code := GetNemsisCode(tdbfield('EMS_PCPL','COMPLICATION')); 
    A('NEMSISE19SUB').UpdateSQL('SELECT * FROM NEMSISE19SUB WHERE NEMSISE19ID = ' + GetField('NEMSISE19','NEMSISE19ID').AsString + ' AND FIELDNAME = ' + AddExpr('E19_07') + ' AND CODE = ' + AddExpr(Code));
    If A('NEMSISE19SUB').RecordsExist then
      A('NEMSISE19SUB').Edit
    else
      A('NEMSISE19SUB').Append;
    GetField('NEMSISE19SUB','NEMSISE19ID').AsString := GetField('NEMSISE19','NEMSISE19ID').AsString;
    GetField('NEMSISE19SUB','FIELDNAME').AsString   := 'E19_07';
    GetField('NEMSISE19SUB','CODE').AsString        := Code;
    A('NEMSISE19SUB').Post;
    A('EMS_PCPL').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisE09_14;
begin
  While Not A('EMS_SYM').Eof do begin
    If GetField('EMS_SYM','SEQUENCE').AsInteger > 1 then begin
      A('NEMSISSUB').UpdateSQL('SELECT * FROM NEMSISSUB WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString + ' AND FIELDNAME = ' + AddExpr('E09_14') + ' AND CODE = ' + edbfield('EMS_SYM','CODE'));
      If A('NEMSISSUB').RecordsExist then
        A('NEMSISSUB').Edit
      else
        A('NEMSISSUB').Append;
      GetField('NEMSISSUB','NEMSISID').AsString  := GetField('NEMSIS','NEMSISID').AsString;
      GetField('NEMSISSUB','FIELDNAME').AsString := 'E09_14';
      GetField('NEMSISSUB','CODE').AsString      := GetNemsisCode(tdbfield('EMS_SYM','CODE'));
      A('NEMSISSUB').Post;
    end;
    A('EMS_SYM').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisSub(Alias, CodeFieldName, NemsisFieldName: String);
Var Code : String;
begin
  While Not A(Alias).Eof do begin
    Code := GetNemsisCode(tdbfield(Alias,CodeFieldName));
    A('NEMSISSUB').UpdateSQL('SELECT * FROM NEMSISSUB WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString + ' AND FIELDNAME = ' + AddExpr(NemsisFieldName) + ' AND CODE = ' + AddExpr(Code));
    If A('NEMSISSUB').RecordsExist then
      A('NEMSISSUB').Edit
    else
      A('NEMSISSUB').Append;
    GetField('NEMSISSUB','NEMSISID').AsString  := GetField('NEMSIS','NEMSISID').AsString;
    GetField('NEMSISSUB','FIELDNAME').AsString := NemsisFieldName;
    GetField('NEMSISSUB','CODE').AsString      := Code;
    A('NEMSISSUB').Post;
    A(Alias).Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisStat;
Var SQL : String;
begin
  A('EMS_AUTH').UpdateSQL('SELECT * FROM EMS_AUTH WHERE PTNT_ID = ' + edbfield('EMS_PTNT','PTNT_ID') + ' AND AUTH_TYPE = ' + AddExpr('MM'));
  A('NEMSISSTAT').UpdateSQL('SELECT * FROM NEMSISSTAT WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString);
  If A('NEMSISSTAT').RecordsExist then
    A('NEMSISSTAT').Edit
  else
    A('NEMSISSTAT').Append;
  GetField('NEMSISSTAT','NEMSISID').AsString         := GetField('NEMSIS','NEMSISID').AsString;
  GetField('NEMSISSTAT','NEMSISSTATTYPEID').AsString := '3';
  If A('EMS_AUTH').RecordsExist then begin
    GetField('NEMSISSTAT','DATETIMEDONE').AsDateTime   := GetField('EMS_AUTH','DTTM').AsDateTime;
    GetField('NEMSISSTAT','DATETIMEENT').AsDateTime    := GetField('EMS_AUTH','DTTM').AsDateTime;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('EMS_AUTH','STAFF_ID')) then
      GetField('NEMSISSTAT','PERSID').AsString           := GetField('PERS','PERSID').AsString
  end;
  A('NEMSISSTAT').Post;
  SQL := 'UPDATE NEMSIS SET NEMSISSTATID = ' + GetField('NEMSISSTAT','NEMSISSTATID').AsString + ' WHERE NEMSISID = ' + GetField('NEMSIS','NEMSISID').AsString;
  RunSQL(SQL);
end;


function TConvFHForm.GetNemsisCode(Code : String): String;
begin
  If (substr(Code,1,1) = 'N') and (at('1',Code) > 0) then
    GetNemsisCode := '-10'
  else if (substr(Code,1,1) = 'N') and (at('2',Code) > 0) then
    GetNemsisCode := '-25'
  else if (substr(Code,1,1) = 'N') and (at('3',Code) > 0) then
    GetNemsisCode := '-5'
  else
    GetNemsisCode := Code;
end;

procedure TConvFHForm.EMSSetupButtonClick(Sender: TObject);
Var FieldName : String;
    Code      : String;
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting LKP_EMS . . . . . Started');
  Open_Query(FHDatabase,'CODE',false,'SELECT * FROM LKP_EMS');

  Open_Query('NEMSISCODE',true,'SELECT * FROM NEMSISCODE WHERE 1=2');

  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.progress := 0;

  While Not A('CODE').Eof do begin

    FieldName := GetFieldName(tdbfield('CODE','GRP'),tdbfield('CODE','CATEGORY'));
    Code      := GetNemsisCode(tdbfield('CODE','CODE'));

    If Not (FieldName = '') and Not GetField('CODE','HIDE').AsBoolean then begin
      A('NEMSISCODE').UpdateSQL('SELECT * FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + AddExpr(Code));
      If A('NEMSISCODE').RecordsExist then
        A('NEMSISCODE').Edit
      else
        A('NEMSISCODE').Append;
      Getfield('NEMSISCODE','FIELDNAME').AsString := FieldName;
      Getfield('NEMSISCODE','CODE').AsString      := Code;
      Getfield('NEMSISCODE','DESCR').AsString     := tdbfield('CODE','DESCRIPT');
      Getfield('NEMSISCODE','ACTIVE').AsString    := IIf(GetField('CODE','HIDE').AsBoolean,'N','Y');
      A('NEMSISCODE').Post;
      AddStatusListBox(ListBox,'Processing ' + FieldName + ' ' + Code + ' ' + tdbfield('CODE','DESCRIPT'));
      Gauge.progress  := Gauge.progress + 1;
      Application.ProcessMessages;
    end else begin
      AddStatusListBox(ErrorBox,'Processing ' + Code + ' ' + tdbfield('CODE','DESCRIPT'));
      Gauge.progress  := Gauge.progress + 1;
      Application.ProcessMessages;
    end;

    A('CODE').Skip(1);
  end;
  CloseApollo('CODE');
  CloseApollo('NEMSISCODE');
  FHDatabase.Free;
  AddStatusListBox(ListBox,'Converting LKP_EMS . . . . . Done');
  ShowMessage('Done');
end;

function TConvFHForm.GetFieldName(GroupName, FieldName : String): String;
begin
  If (GroupName = 'EMS') and (FieldName = 'EMS DISP') then
    GetFieldName := 'E20_10'
  else if (GroupName = '') and (FieldName = 'EMS TYPE') then
    GetFieldName := 'E02_04'
  else if (GroupName = '') and (FieldName = 'EMS UROLE') then
    GetFieldName := 'E02_05'
    
  else if (GroupName = 'DISPATCH') and (FieldName = 'EMS SCENE') then
    GetFieldName := 'E02_06'
  else if (GroupName = 'RESPONSE') and (FieldName = 'EMS SCENE') then
    GetFieldName := 'E02_07'
  else if (GroupName = 'SCENE') and (FieldName = 'EMS SCENE') then
    GetFieldName := 'E02_08'
  else if (GroupName = 'TRANSPORT') and (FieldName = 'EMS SCENE') then
    GetFieldName := 'E02_09'
  else if (GroupName = 'TURNAROUND') and (FieldName = 'EMS SCENE') then
    GetFieldName := 'E02_10'

//else if (GroupName = 'TO') and (FieldName = 'EMS LS') then
//  GetFieldName := 'E02_14'

  else if (GroupName = 'FROM') and (FieldName = 'EMS LS') then
    GetFieldName := 'E20_14'

  else if (GroupName = 'TO') and (FieldName = 'EMS LS') then
    GetFieldName := 'E02_20'

  else if (GroupName = '') and (FieldName = 'EMS CMPLNT') then
    GetFieldName := 'E03_01'
  else if (GroupName = '') and (FieldName = 'EMS EMD') then
    GetFieldName := 'E03_02'

  else if (GroupName = '') and (FieldName = 'EMS CR RLE') then
    GetFieldName := 'E04_02'
  else if (GroupName = '') and (FieldName = 'EMS CR LVL') then
    GetFieldName := 'E04_03'

  else if (GroupName = '') and (FieldName = 'EMS LEVEL') then
    GetFieldName := 'E04_03'
  else if (GroupName = '') and (FieldName = 'EMS GEND') then
    GetFieldName := 'E06_11'
  else if (GroupName = '') and (FieldName = 'EMS RACE') then
    GetFieldName := 'E06_12'
  else if (GroupName = '') and (FieldName = 'EMS ETHNCT') then
    GetFieldName := 'E06_13'

  else if (GroupName = '') and (FieldName = 'EMS OSVC') then
    GetFieldName := 'E08_02'
  else if (GroupName = '') and (FieldName = 'INIT RSPTM') then
    GetFieldName := 'E08_03'
  else if (GroupName = '') and (FieldName = 'EMS PTSCEN') then
    GetFieldName := 'E08_05'
  else if (GroupName = '') and (FieldName = 'EMS LOC') then
    GetFieldName := 'E08_07'

  else if (GroupName = '') and (FieldName = 'EMS AID') then
    GetFieldName := 'E09_02'
  else if (GroupName = 'AID') and (FieldName = 'EMS STAT') then
    GetFieldName := 'E09_03'
    
  else if (GroupName = 'PRIM COMPLAINT') and (FieldName = 'EMS TMUNIT') then
    GetFieldName := 'E09_07'
  else if (GroupName = 'SEC COMPLAINT') and (FieldName = 'EMS TMUNIT') then
    GetFieldName := 'E09_10'

  else if (GroupName = '') and (FieldName = 'EMS BODY') then
    GetFieldName := 'E09_11'
  else if (GroupName = '') and (FieldName = 'EMS ORGAN') then
    GetFieldName := 'E09_12'
  else if (GroupName = '') and (FieldName = 'EMS SYMPT') then
    GetFieldName := 'E09_13'
  else if (GroupName = '') and (FieldName = 'EMS OSYMPT') then
    GetFieldName := 'E09_14'
  else if (GroupName = 'PRIMARY') and (FieldName = 'EMS IMPR') then
    GetFieldName := 'E09_15'
  else if (GroupName = 'SECONDARY') and (FieldName = 'EMS IMPR') then
    GetFieldName := 'E09_16'

  else if (GroupName = '') and (FieldName = 'EMS CAUSE') then
    GetFieldName := 'E10_01'
  else if (GroupName = '') and (FieldName = 'EMS INTENT') then
    GetFieldName := 'E10_02'
  else if (GroupName = '') and (FieldName = 'EMS INJILL') then
    GetFieldName := 'E10_03'
  else if (GroupName = '') and (FieldName = 'VEH INJIND') then
    GetFieldName := 'E10_04'
  else if (GroupName = '') and (FieldName = 'VEH ACCI') then
    GetFieldName := 'E10_05'
  else if (GroupName = '') and (FieldName = 'VEH POS') then
    GetFieldName := 'E10_07'
  else if (GroupName = '') and (FieldName = 'EMS S EQPT') then
    GetFieldName := 'E10_08'
  else if (GroupName = '') and (FieldName = 'VEH AIRBAG') then
    GetFieldName := 'E10_09'

  else if (GroupName = '') and (FieldName = 'EMS ARREST') then
    GetFieldName := 'E11_01'
  else if (GroupName = '') and (FieldName = 'EMS ACAUSE') then
    GetFieldName := 'E11_02'
  else if (GroupName = '') and (FieldName = 'RESUSITATN') then
    GetFieldName := 'E11_03'
  else if (GroupName = 'FIRST') and (FieldName = 'VITA CRYTH') then
    GetFieldName := 'E11_05'
  else if (GroupName = '') and (FieldName = 'VITA SPON') then
    GetFieldName := 'E11_06'

  else if (GroupName = '') and (FieldName = 'EMS HUMAN') then
    GetFieldName := 'E12_01'
  else if (GroupName = 'ENVIRN ALLERGS') and (FieldName = 'EMS HIST') then
    GetFieldName := 'E12_09'

  else if (GroupName = 'IMMUNIZATION') and (FieldName = 'EMS HIST') then
    GetFieldName := 'E12_12'

  else if (GroupName = 'HISTORY') and (FieldName = 'MED RATE') then
    GetFieldName := 'E12_16'
  else if (GroupName = 'HISTORY') and (FieldName = 'MED ROUTE') then
    GetFieldName := 'E12_17'

  else if (GroupName = 'ALLERGS') and (FieldName = 'HF ALC DRG') then
    GetFieldName := 'E12_19'
    
  else if (GroupName = 'INTERIM') and (FieldName = 'VITA CRYTH') then
    GetFieldName := 'E14_03'
  else if (GroupName = '') and (FieldName = 'VITA BPMTH') then
    GetFieldName := 'E14_06'
  else if (GroupName = '') and (FieldName = 'VITA PRYTH') then
    GetFieldName := 'E14_10'
  else if (GroupName = '') and (FieldName = 'VITA REFF') then
    GetFieldName := 'E14_12'
  else if (GroupName = '') and (FieldName = 'VITA GCSQU') then
    GetFieldName := 'E14_18'


  else if (GroupName = '') and (FieldName = 'VITA TPMTH') then
    GetFieldName := 'E14_21'
  else if (GroupName = '') and (FieldName = 'VITA LOC') then
    GetFieldName := 'E14_22'
  else if (GroupName = '') and (FieldName = 'VITA STROK') then
    GetFieldName := 'E14_24'


  else if (GroupName = '') and (FieldName = 'EXAM BRLUT') then
    GetFieldName := 'E16_02'
  else if (GroupName = '') and (FieldName = 'EXAM SKIN') then
    GetFieldName := 'E16_04'
  else if (GroupName = '') and (FieldName = 'EXAM HDFC') then
    GetFieldName := 'E16_05'
  else if (GroupName = '') and (FieldName = 'EXAM NECK') then
    GetFieldName := 'E16_06'
  else if (GroupName = '') and (FieldName = 'EXAM CHST') then
    GetFieldName := 'E16_07'
  else if (GroupName = '') and (FieldName = 'EXAM HEART') then
    GetFieldName := 'E16_08'
  else if (GroupName = 'LEFT UPPER') and (FieldName = 'EXAM ABDOM') then
    GetFieldName := 'E16_09'
  else if (GroupName = 'LEFT LOWER') and (FieldName = 'EXAM ABDOM') then
    GetFieldName := 'E16_10'
  else if (GroupName = 'RIGHT UPPER') and (FieldName = 'EXAM ABDOM') then
    GetFieldName := 'E16_11'
  else if (GroupName = 'RIGHT LOWER') and (FieldName = 'EXAM ABDOM') then
    GetFieldName := 'E16_12'
  else if (GroupName = '') and (FieldName = 'EXAM GU') then
    GetFieldName := 'E16_13'
  else if (GroupName = 'CERVICAL') and (FieldName = 'EXAM BACK') then
    GetFieldName := 'E16_14'
  else if (GroupName = 'THORACIC') and (FieldName = 'EXAM BACK') then
    GetFieldName := 'E16_15'
  else if (GroupName = 'LUMBAR') and (FieldName = 'EXAM BACK') then
    GetFieldName := 'E16_16'
  else if (GroupName = 'RIGHT UPPER') and (FieldName = 'EXAM EXTRM') then
    GetFieldName := 'E16_17'
  else if (GroupName = 'RIGHT LOWER') and (FieldName = 'EXAM EXTRM') then
    GetFieldName := 'E16_18'
  else if (GroupName = 'LEFT UPPER') and (FieldName = 'EXAM EXTRM') then
    GetFieldName := 'E16_19'
  else if (GroupName = 'LEFT LOWER') and (FieldName = 'EXAM EXTRM') then
    GetFieldName := 'E16_20'
  else if (GroupName = 'LEFT') and (FieldName = 'EXAM EYE') then
    GetFieldName := 'E16_21'
  else if (GroupName = 'RIGHT') and (FieldName = 'EXAM EYE') then
    GetFieldName := 'E16_22'
  else if (GroupName = '') and (FieldName = 'EXAM MNTAL') then
    GetFieldName := 'E16_23'
  else if (GroupName = 'EXAM NEURO') and (FieldName = ' ') then
    GetFieldName := 'E16_24'


  else if (GroupName = '') and (FieldName = 'EMS PROT') then
    GetFieldName := 'E17_01'

  else if (GroupName = '') and (FieldName = 'EMS MED') then
    GetFieldName := 'E18_03'
  else if (GroupName = 'ADMINISTERED') and (FieldName = 'MED ROUTE') then
    GetFieldName := 'E18_04'
  else if (GroupName = 'ADMINISTERED') and (FieldName = 'MED RATE') then
    GetFieldName := 'E18_06'

  else if (GroupName = 'MEDICATION') and (FieldName = 'EMS STAT') then
    GetFieldName := 'E18_07'
  else if (GroupName = 'MEDICATION') and (FieldName = 'COMPLICATN') then
    GetFieldName := 'E18_08'

  else if (GroupName = 'MEDICINE') and (FieldName = 'EMS MPAUTH') then
    GetFieldName := 'E18_10'

  else if (GroupName = '') and (FieldName = 'EMS PROC') then
    GetFieldName := 'E19_03'
  else if (GroupName = 'PROCEDURE') and (FieldName = 'COMPLICATN') then
    GetFieldName := 'E19_07'
  else if (GroupName = 'PROCEDURE') and (FieldName = 'EMS STAT') then
    GetFieldName := 'E19_08'
  else if (GroupName = 'PROCEDURE') and (FieldName = 'EMS MPAUTH') then
    GetFieldName := 'E19_10'

  else if (GroupName = 'TO') and (FieldName = 'EMS MOVED') then
    GetFieldName := 'E20_11'
  else if (GroupName = '') and (FieldName = 'EMS TRNPOS') then
    GetFieldName := 'E20_12'
  else if (GroupName = 'FROM') and (FieldName = 'EMS MOVED') then
    GetFieldName := 'E20_13'

  else if (GroupName = 'DESTINATION') and (FieldName = 'EMS STAT') then
    GetFieldName := 'E20_15'
    
  else if (GroupName = '') and (FieldName = 'EMS DDET') then
    GetFieldName := 'E20_16'
  else if (GroupName = '') and (FieldName = 'FACIL TYPE') then
    GetFieldName := 'E20_17'

  else if (GroupName = 'ER') and (FieldName = 'EMS DISP') then
    GetFieldName := 'E22_01'
  else if (GroupName = 'HOSPITAL') and (FieldName = 'EMS DISP') then
    GetFieldName := 'E22_02'

  else if (GroupName = '') and (FieldName = 'EMS CA PRE') then
    GetFieldName := 'E23_15'
  else
    GetFieldName := '';
end;

procedure TConvFHForm.EMSManSetupButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Processing Nemsis Manual Codes . . . .  Started');
  ConnectRedNMX;

  Open_Query(RedNMXDatabase,'REDNMXNEMSISCODE',false,'SELECT * FROM NEMSISCODE WHERE 1=2');
  Open_Query('NEMSISCODE',true,'SELECT * FROM NEMSISCODE WHERE 1=2');


  LoadNemsisCode('E08_06','0','No');
  LoadNemsisCode('E08_06','1','Yes');

  LoadNemsisCode('E09_04','0','No');
  LoadNemsisCode('E09_04','1','Yes');

  LoadNemsisCode('E12_20','0','No');
  LoadNemsisCode('E12_20','1','Yes');

  LoadNemsisCode('E14_02','0','No');
  LoadNemsisCode('E14_02','1','Yes');

  LoadNemsisCode('E14_15','1','1-Does Not Open Eyes');
  LoadNemsisCode('E14_15','2','2-Opens Eyes to painful stimulation');
  LoadNemsisCode('E14_15','3','3-Opens Eyes to verbal stimulation');
  LoadNemsisCode('E14_15','4','4-Opens Eyes spontaneously');

  LoadNemsisCode('E14_16','1','1-None');
  LoadNemsisCode('E14_16','2','2-Non-specified sounds');
  LoadNemsisCode('E14_16','3','3-Inappropriate words');
  LoadNemsisCode('E14_16','4','4-Confused conversation');
  LoadNemsisCode('E14_16','5','5-Oriented and appropriate speech');

  LoadNemsisCode('E14_17','1','1-None');
  LoadNemsisCode('E14_17','2','2-Extensor posturing in response to painful stimulation');
  LoadNemsisCode('E14_17','3','3-Flexor posturing in response to painful stimulation');
  LoadNemsisCode('E14_17','4','4-General withdrawal in response painful stimulation');
  LoadNemsisCode('E14_17','5','5-Localization of painful stimulation');
  LoadNemsisCode('E14_17','6','6-Obeys commands with appropriate motor responses');


  LoadNemsisCode('E14_23','1','1');
  LoadNemsisCode('E14_23','2','2');
  LoadNemsisCode('E14_23','3','3');
  LoadNemsisCode('E14_23','4','4');
  LoadNemsisCode('E14_23','5','5');
  LoadNemsisCode('E14_23','6','6');
  LoadNemsisCode('E14_23','7','7');
  LoadNemsisCode('E14_23','8','8');
  LoadNemsisCode('E14_23','9','9');
  LoadNemsisCode('E14_23','10','10');

  LoadNemsisCode('E18_02','0','No');
  LoadNemsisCode('E18_02','1','Yes');
  LoadNemsisCode('E19_02','0','No');
  LoadNemsisCode('E19_02','1','Yes');
  LoadNemsisCode('E19_06','0','No');
  LoadNemsisCode('E19_06','1','Yes');

  LoadNemsisCodeFromRedNMX('E06_15');
  LoadNemsisCodeFromRedNMX('E06_18');

  LoadNemsisCodeFromRedNMX('E15_01');
  LoadNemsisCodeFromRedNMX('E15_02');
  LoadNemsisCodeFromRedNMX('E15_03');
  LoadNemsisCodeFromRedNMX('E15_04');
  LoadNemsisCodeFromRedNMX('E15_05');
  LoadNemsisCodeFromRedNMX('E15_06');
  LoadNemsisCodeFromRedNMX('E15_07');
  LoadNemsisCodeFromRedNMX('E15_08');
  LoadNemsisCodeFromRedNMX('E15_09');
  LoadNemsisCodeFromRedNMX('E15_10');
  LoadNemsisCodeFromRedNMX('E15_11');

  CloseApollo('NEMSISCODE');
  CloseApollo('REDNMXNEMSISCODE');

  RunSQL('DELETE FROM NEMSISCODE WHERE FIELDNAME LIKE ' + AddExpr('E15%') + ' AND CODE LIKE ' + AddExpr('695%'));

  RedNMXDatabase.Free;

  AddStatusListBox(ListBox,'Processing Nemsis Manual Codes . . . .  Done');
end;

procedure TConvFHForm.EMSNfirsMainButtonClick(Sender: TObject);
Var Activ_ID    : String;
    Inci_ID     : String;
    SQLVar      : String;
    IncNum      : String;
    NfirsMainID : String;
    PersCode    : String;
begin
  inherited;
  AddStatusListBox(ListBox,'Converting EMS_MAIN to NFIRSMAIN for EMS Incidents. . . . . Started');
  ConnectFH;

  SQLVar := 'SELECT * FROM ACT_MAIN WHERE ' + BuildSQLAlpineDate('ACT_MAIN.DTTM',InitialDateField.Value,FinalDateField.Value) + ' AND RESPONSE = 1 AND MEDICAL = 1 ORDER BY ACT_MAIN.DTTM';

  Open_Query(FHDatabase,'ACT_MAIN',false,SQLVar);
  Open_Query(FHDatabase,'ACT_DET', false,'SELECT * FROM ACT_DET WHERE 1=2');
  Open_Query(FHDatabase,'EMS_MAIN',false,'SELECT * FROM EMS_MAIN WHERE 1=2');

  Open_Query('NFIRSMAIN',    true, 'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSATT',     true, 'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',         false,'SELECT FDID, PERSID, PERSCODE FROM PERS');

  Gauge.MaxValue            := A('ACT_MAIN').QueryRecCount;
  Gauge.progress            := 0;
  While Not A('ACT_MAIN').Eof do begin
    Activ_ID := GetField('ACT_MAIN','ACTIV_ID').AsString;
    IncNum   := '20' + substr(tdbfield('ACT_MAIN','INCI_NO'),1,2) + substr(tdbfield('ACT_MAIN','INCI_NO'),5,6);

    A('EMS_MAIN').UpdateSQL('SELECT * FROM EMS_MAIN WHERE INCI_NO = ' + edbfield('ACT_MAIN','INCI_NO'));

    If A('EMS_MAIN').RecordsExist then begin

      A('NFIRSMAIN').UpdateSQL('SELECT * FROM NFIRSMAIN WHERE FDID = ' + AddExpr(mFireID) +  ' AND INCNUM = ' + AddExpr(IncNum));
      If A('NFIRSMAIN').RecordsExist then
        A('NFIRSMAIN').Edit
      else
        A('NFIRSMAIN').Append;
                                         
      GetField('NFIRSMAIN','FDID').AsString            := GetConvFdid(ConvFdidField.Value);
      GetField('NFIRSMAIN','INCNUM').AsString          := IncNum;
      Getfield('NFIRSMAIN','DATETIMEALARM').AsDateTime := GetField('EMS_MAIN','ALM_DTTM').AsDateTime;
      Getfield('NFIRSMAIN','DATETIMEOUT').AsDateTime   := GetField('EMS_MAIN','DISP_DTTM').AsDateTime;
      Getfield('NFIRSMAIN','DATETIMEARR').AsDateTime   := GetField('EMS_MAIN','ARV_DTTM').AsDateTime;
      Getfield('NFIRSMAIN','DATETIMEIN').AsDateTime    := GetField('EMS_MAIN','CLR_DTTM').AsDateTime;
      If (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime > 0) and (GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime > 0) then
        GetField('NFIRSMAIN','EVLENGTH').AsFloat := 24 * (GetField('NFIRSMAIN','DATETIMEIN').AsDateTime - GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime);

      GetField('NFIRSMAIN','EXPNUM').AsString          := '00';
      GetField('NFIRSMAIN','STRNUM').AsString          := padl(alltrim(tdbfield('EMS_MAIN','NUMBER')),8,' ');
      GetField('NFIRSMAIN','STREET').AsString          := UpperCase(alltrim(rtrim(tdbfield('EMS_MAIN','ST_PREFIX')) + ' ' + rtrim(tdbfield('EMS_MAIN','STREET')) + ' ' + rtrim(tdbfield('EMS_MAIN','ST_TYPE')) + ' ' + rtrim(tdbfield('EMS_MAIN','ST_SUFFIX'))));
      GetField('NFIRSMAIN','CITY').AsString            := UpperCase(tdbfield('EMS_MAIN','CITY'));
      GetField('NFIRSMAIN','STATE').AsString           := tdbfield('EMS_MAIN','STATE');
      GetField('NFIRSMAIN','ZIP').AsString             := tdbfield('EMS_MAIN','ZIP');
      GetField('NFIRSMAIN','ROOMAPT').AsString         := alltrim(tdbfield('EMS_MAIN','APT_ROOM'));
      GetField('NFIRSMAIN','LOCTYPE').AsString         := tdbfield('EMS_MAIN','ADDR_TYPE');

      GetField('NFIRSMAIN','CROSS1').AsString          := UpperCase(alltrim(rtrim(tdbfield('EMS_MAIN','XST_PREFIX')) + ' ' + rtrim(tdbfield('EMS_MAIN','XSTREET')) + ' ' + rtrim(tdbfield('EMS_MAIN','XST_TYPE')) + ' ' + rtrim(tdbfield('EMS_MAIN','XST_SUFFIX'))));
      If (Street = '') and Not (alltrim(GetField('EMS_MAIN','RURAL').AsString) = '') then
        GetField('NFIRSMAIN','STREET').AsString := UpperCase(GetField('EMS_MAIN','RURAL').AsString);

      GetField('NFIRSMAIN','SITFOUND').AsString        := '300';
      GetField('NFIRSMAIN','DONE').AsString            := 'N';

      GetTable('NFIRSMAIN').Post;
      NfirsMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString;

      
      A('ACT_DET').UpdateSQL('SELECT * FROM ACT_DET WHERE ACTIV_ID = ' + AddExpr(Activ_ID));
      While Not A('ACT_DET').Eof do begin
        PersCode := GetField('ACT_DET','STAFF_ID').AsString;
        If A('PERS').ExactQueryLocate(['PERSCODE','FDID'],[PersCode,tdbfield('NFIRSMAIN','FDID')]) then begin
          A('NFIRSATT').UpdateSQL('SELECT * FROM NFIRSATT WHERE NFIRSMAINID = ' + NfirsMainID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
          If A('NFIRSATT').RecordsExist then
            A('NFIRSATT').Edit
          else
            A('NFIRSATT').Append;
          GetField('NFIRSATT','NFIRSMAINID').AsString := NfirsMainID;
          GetField('NFIRSATT','PERSID').AsString      := GetField('PERS','PERSID').AsString;
          GetField('NFIRSATT','POINT').AsString       := GetField('ACT_DET','POINTS').AsString;
          GetField('NFIRSATT','EVLENGTH').AsFloat     := GetField('NFIRSMAIN','EVLENGTH').AsFloat;
          A('NFIRSATT').Post;
        end;
        A('ACT_DET').Skip(1);
      end;


    end;

    Gauge.progress  := Gauge.progress + 1;
    AddStatusListBox(ListBox,'Converting EMS_MAIN to NFIRSMAIN for incident number ' + IncNum);

    Application.ProcessMessages;
    A('ACT_MAIN').Skip(1);
  end;

  CloseApollo('ACT_MAIN');
  CloseApollo('ACT_DET');
  CloseApollo('EMS_MAIN');
  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSATT');
  CloseApollo('PERS');
  
  AddStatusListBox(ListBox,'Converting EMS_MAIN to NFIRSMAIN for EMS Incidents. . . . . Completed');
  FHDatabase.Free;
  ShowMessage('Done');
end;

procedure TConvFHForm.LoadNemsisCodeFromRedNMX(FieldName: String);
begin
  A('REDNMXNEMSISCODE').UpdateSQL('SELECT * FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr(FieldName));
  While Not A('REDNMXNEMSISCODE').Eof do begin
    A('NEMSISCODE').UpdateSQL('SELECT * FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + edbfield('REDNMXNEMSISCODE','CODE'));
    If A('NEMSISCODE').RecordsExist then
      A('NEMSISCODE').Edit
    else begin
      A('NEMSISCODE').Append;
    end;
    Getfield('NEMSISCODE','FIELDNAME').AsString := FieldName;
    Getfield('NEMSISCODE','CODE').AsString      := dbfield('REDNMXNEMSISCODE','CODE');
    Getfield('NEMSISCODE','DESCR').AsString     := dbfield('REDNMXNEMSISCODE','DESCR');
    Getfield('NEMSISCODE','ACTIVE').AsString    := 'Y';
    A('NEMSISCODE').Post;
    AddStatusListBox(ListBox,'Processing ' + FieldName + ' ' + tdbfield('REDNMXNEMSISCODE','CODE') + ' ' + tdbfield('REDNMXNEMSISCODE','DESCR'));
    A('REDNMXNEMSISCODE').Skip(1);
  end;
end;

procedure TConvFHForm.LoadNemsisCode(FieldName, Code, Descr: String);
begin
  A('NEMSISCODE').UpdateSQL('SELECT * FROM NEMSISCODE WHERE FIELDNAME = ' + AddExpr(FieldName) + ' AND CODE = ' + AddExpr(Code));
  If A('NEMSISCODE').RecordsExist then
    A('NEMSISCODE').Edit
  else
    A('NEMSISCODE').Append;
  Getfield('NEMSISCODE','FIELDNAME').AsString := FieldName;
  Getfield('NEMSISCODE','CODE').AsString      := Code;
  Getfield('NEMSISCODE','DESCR').AsString     := Descr;
  Getfield('NEMSISCODE','ACTIVE').AsString    := 'Y';
  A('NEMSISCODE').Post;
  AddStatusListBox(ListBox,'Processing ' + FieldName + ' ' + Code + ' ' + Descr);
end;

procedure TConvFHForm.FdidButtonClick(Sender: TObject);
begin
  ConnectFH;
  AddStatusListBox(ListBox,'Converting FDID . . . . .Started');
  Open_Query(FHDatabase,'LKP_DEPT',false,'SELECT * FROM LKP_DEPT');
  Open_Query('FDID',true,'SELECT * FROM FDID WHERE 1=2');

  Gauge.MaxValue := A('LKP_DEPT').QueryRecCount;
  Gauge.progress := 0;

  While Not A('LKP_DEPT').Eof do begin
    If Not (tdbfield('LKP_DEPT','FDID') = '') then begin
      A('FDID').UpdateSQL('SELECT * FROM FDID WHERE FDID = ' + edbfield('LKP_DEPT','FDID'));
      If A('FDID').RecordsExist then
        A('FDID').Edit
      else
        A('FDID').Append;
      Getfield('FDID','FDID').AsString       := dbfield('LKP_DEPT','FDID');
//    Getfield('FDID','ABBREVIATE').AsString := dbfield('LKP_DEPT','CODE');
      Getfield('FDID','DEPTNAME').AsString   := dbfield('LKP_DEPT','DESCRIPT');
      A('FDID').Post;
    end else if Not (tdbfield('LKP_DEPT','CODE') = '') then begin
      A('FDID').UpdateSQL('SELECT * FROM FDID WHERE FDID = ' + edbfield('LKP_DEPT','CODE'));
      If A('FDID').RecordsExist then
        A('FDID').Edit
      else
        A('FDID').Append;
      Getfield('FDID','FDID').AsString       := dbfield('LKP_DEPT','CODE');
//    Getfield('FDID','ABBREVIATE').AsString := dbfield('LKP_DEPT','CODE');
      Getfield('FDID','DEPTNAME').AsString   := dbfield('LKP_DEPT','DESCRIPT');
      A('FDID').Post;
    end;

    AddStatusListBox(ListBox,'Processing ' + tdbfield('LKP_DEPT','DESCRIPT'));
    A('LKP_DEPT').Skip(1);

    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  CloseApollo('FDID');
  CloseApollo('LKP_DEPT');
  FHDatabase.Free;

  AddStatusListBox(ListBox,'Converting FDID . . . . .Done');
  ShowMessage('Done with FDID');
end;

procedure TConvFHForm.FormCreate(Sender: TObject);
begin
  inherited;
  If AlpineLogin then begin
    ServerField.options   := [efoCaretToEnd,efoTrimBlanks];
    DatabaseField.options := [efoCaretToEnd,efoTrimBlanks];
    UserNameField.options := [efoCaretToEnd,efoTrimBlanks];
    PasswordField.options := [efoCaretToEnd,efoTrimBlanks];
  end else begin
    ServerField.options   := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    DatabaseField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    UserNameField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
    PasswordField.options := [efoCaretToEnd,efoPasswordMode,efoTrimBlanks];
  end;
end;

procedure TConvFHForm.FormShow(Sender: TObject);
begin
  inherited;
  InspMAButton.Visible := (mFireID = '01920');
end;

procedure TConvFHForm.ImageButtonClick(Sender: TObject);
begin
  Open_Query('PROPIMAGE',false,'SELECT * FROM PROPIMAGE');
  Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE 1=2');
  Open_Query('IMAGEPROP',true,'SELECT * FROM IMAGEPROP WHERE 1=2');

  Gauge.MaxValue := A('PROPIMAGE').QueryRecCount;

  While Not A('PROPIMAGE').Eof do begin
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;

    A('IMAGELIST').UpdateSQL('SELECT * FROM IMAGELIST WHERE ATT_ID = ' + edbfield('PROPIMAGE','ATT_ID'));
    If A('IMAGELIST').RecordsExist then
      A('IMAGELIST').Edit
    else
      A('IMAGELIST').Append;
    Getfield('IMAGELIST','ATT_ID').AsString    := Getfield('PROPIMAGE','ATT_ID').AsString;
    Getfield('IMAGELIST','IMAGEBLOB').AsString := Getfield('PROPIMAGE','IMAGEBLOB').AsString;
    Getfield('IMAGELIST','DESCR').AsString     := Getfield('PROPIMAGE','DESCR').AsString;
    Getfield('IMAGELIST','FILENAME').AsString  := Getfield('PROPIMAGE','FILENAME').AsString;
    A('IMAGELIST').Post;

    A('IMAGEPROP').UpdateSQL('SELECT * FROM IMAGEPROP WHERE IMAGELISTID = ' + GetField('IMAGELIST','IMAGELISTID').AsString + ' AND PROPID = ' + GetField('PROPIMAGE','PROPID').AsString);
    If A('IMAGEPROP').RecordsExist then
      A('IMAGEPROP').Edit
    else
      A('IMAGEPROP').Append;
    Getfield('IMAGEPROP','IMAGELISTID').AsString := Getfield('IMAGELIST','IMAGELISTID').AsString;
    Getfield('IMAGEPROP','PROPID').AsString      := Getfield('PROPIMAGE','PROPID').AsString;
    Getfield('IMAGEPROP','DESCR').AsString       := Getfield('PROPIMAGE','DESCR').AsString;
    A('IMAGEPROP').Post;
    A('PROPIMAGE').Skip(1);
  end;
  CloseApollo('PROPIMAGE');
  CloseApollo('IMAGELIST');
  CloseApollo('IMAGEPROP');
end;

procedure TConvFHForm.LoadOccFieldButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox,'Creating PROP Custom Fields. . . . . Started');
  Open_Query('SYSFIELD',true,'SELECT * FROM SYSFIELD WHERE 1=2');

  LoadSysField(ListBox,ASCVAR,'PROP','OCCUP_ID' ,'C',16, 0,false,'Occupant ID for Conversion');
  LoadSysField(ListBox,ASCVAR,'PROP','ADDRESS2' ,'C',200,0,false,'Address Line 2');
  LoadSysField(ListBox,ASCVAR,'PROP','DETPRES'  ,'C',8,  0,false,'Detector Present?');
  LoadSysField(ListBox,ASCVAR,'PROP','DETTYPE'  ,'C',8,  0,false,'Detector Type');
  LoadSysField(ListBox,ASCVAR,'PROP','DETPOWER' ,'C',8,  0,false,'Detector Power Supply');
  LoadSysField(ListBox,ASCVAR,'PROP','NUMSPR'   ,'C',10, 0,false,'Number of Sprinklers');
  LoadSysField(ListBox,ASCVAR,'PROP','COMPLEX'  ,'C',8,  0,false,'Complex');
  LoadSysField(ListBox,ASCVAR,'PROP','BUILDSTAT','C',8,  0,false,'Building Status');
  LoadSysField(ListBox,ASCVAR,'PROP','STRTYPE'  ,'C',8,  0,false,'Structure Type');
  LoadSysField(ListBox,ASCVAR,'PROP','ROOFCOVER','C',200,0,false,'Roof Cover');
  LoadSysField(ListBox,ASCVAR,'PROP','TYPECONS' ,'C',40, 0,false,'Type of Construction');
  LoadSysField(ListBox,ASCVAR,'PROP','OCCLOAD'  ,'C',20, 0,false,'Occupancy Load');

  CloseApollo('SYSFIELD');
  AddStatusListBox(ListBox,'Creating PROP Custom Fields. . . . . Done');
end;


procedure TConvFHForm.InspImageButtonClick(Sender: TObject);
begin
  inherited;
  ConnectFH;
  Open_Query(FHDatabase,'ATT_FILE',false,'SELECT * FROM ATT_FILE WHERE ATT_ID = ' + AddExpr('_3FU0NA4A6'));
  TBlobField(A('ATT_FILE').FieldByName('CONTENTS')).SaveToFile('C:\TEMP\TESTIMAGE.PDF');
  CloseApollo('ATT_FILE');
  FHDatabase.Free;
  ShowMessage('Done');
end;

function TConvFHForm.GetConvFdid(FdidVar: String): String;
begin
  If MultiFdid then begin
    If (FdidVar = '') then
      GetConvFdid := ConvFdidField.Value
    else
      GetConvFdid := FdidVar;
  end else begin
    If (FdidVar = '') then
      GetConvFdid := mFireID
    else
      GetConvFdid := FdidVar;
  end;
end;

function TConvFHForm.GetFileExt(FileName: String): String;
begin
  If at('.JPG',UpperCase(FileName)) > 0 then
    GetFileExt := 'JPG'
  else if at('.BMP',UpperCase(FileName)) > 0 then
    GetFileExt := 'BMP'
  else if at('.PDF',UpperCase(FileName)) > 0 then
    GetFileExt := 'PDF'
  else begin
    AddStatusListBox(ErrorBox,'Error in file name for ATT_FILE record = ' + tdbfield('ATT_FILE','ATT_ID'));
    GetFileExt := 'ERR'
  end;
end;

function TConvFHForm.GetInvServForm(Code: String): String;
begin
  If Code = '001' then        //  B Service
    GetInvServForm := 'APPSERV'
  else if Code = '002' then   //  Replace rupture disc
    GetInvServForm := 'STASERV'
  else if Code = '003' then   //  Clean Station Gutters
    GetInvServForm := 'STASERV'
  else if Code = '004' then   //  Re-Tar roof seems
    GetInvServForm := 'STASERV'
  else if Code = '005' then   //  Lubricate Bay Doors
    GetInvServForm := 'STASERV'
  else if Code = '006' then   //  Clean & Lube Nozzles
    GetInvServForm := 'APPSERV'
  else if Code = '007' then   //  Clean & Lube all discharge adapters
    GetInvServForm := 'APPSERV'
  else if Code = '008' then   //  Clean & Lube Nozzles
    GetInvServForm := 'APPSERV'
  else if Code = '009' then   //  Lubricate roll up doors
    GetInvServForm := 'STASERV'
  else if Code = '010' then   //  Sharpen Blades/New Blades
    GetInvServForm := 'GENSERV'
  else if Code = '011' then   //  Seafoam fuel treatment
    GetInvServForm := 'GENSERV'
  else if Code = '012' then   //  Clean Storm Drains
    GetInvServForm := 'STASERV'
  else if Code = '013' then   //  Replace filter
    GetInvServForm := 'STASERV'
  else if Code = '014' then   //  Septic Pumped
    GetInvServForm := 'STASERV'
  else if Code = '015' then   //  Breathing Air Test
    GetInvServForm := 'STASERV'
  else if Code = '016' then   //  Cascade System Inspection
    GetInvServForm := 'STASERV'
  else if substr(Code,1,1) = '1' then
    GetInvServForm := 'APPSERV'
    {
    100  Alternate/Generator Repair
    101  Heat/Coolant Repair
    102  Light Bar
    103  Fuel System Repair
    104  Drive Train Repair
    105  Exhaust Repair
    106  Fill With Diesel Fuel
    110  Brake Repair
    111  Electrical Repair
    112  Weekly Check
    114  Light/Bulb Replacement
    }
  else if Code = '200' then   //  Oil Change
    GetInvServForm := 'APPSERV'
  else if Code = '201' then   //  Lube Chassis
    GetInvServForm := 'APPSERV'
  else if Code = '202' then   //  Monthly Check
    GetInvServForm := 'APPINSP'
  else if Code = '210' then   //  Post-Call Inspection
    GetInvServForm := 'APPINSP'
  else if Code = '212' then   //  Annual Apparatus Maintenance
    GetInvServForm := 'APPSERV'
  else if Code = '300' then   //  Tune Up
    GetInvServForm := 'APPSERV'
  else if Code = '310' then   //  Engine overhaul
    GetInvServForm := 'APPSERV'
  else if Code = '320' then   //  Referb/overhall
    GetInvServForm := 'APPSERV'
  else if Code = '350' then   //  Test Battery
    GetInvServForm := 'GENSERV'
  else if Code = '353' then   //  Replace Battery
    GetInvServForm := 'GENSERV'
  else if Code = '354' then   //  Replaced pass alarm batteries
    GetInvServForm := 'GENSERV'
  else if Code = '355' then   //  Replace pass alarm batteries
    GetInvServForm := 'GENSERV'
  else if Code = '400' then   //  Body Repair
    GetInvServForm := 'APPSERV'
  else if Code = '401' then   //  Waxed Truck Body
    GetInvServForm := 'APPSERV'
  else if Code = '402' then   //  TIRE REPLACE /REPAIR
    GetInvServForm := 'APPSERV'
  else if Code = '500' then   //  SCBA (Battery Replacement)
    GetInvServForm := 'SCBAERV'
  else if Code = '501' then   //  Pump Test
    GetInvServForm := 'APPSERV'
  else if Code = '502' then   //  Pump Service
    GetInvServForm := 'APPSERV'
  else if Code = '511' then   //  OSHA Ladder Certification/Testing
    GetInvServForm := 'GENSERV'
  else if Code = '512' then   //  Aerial Ladder/Platform non-destructive test
    GetInvServForm := 'APPSERV'
  else if Code = '546' then   //  Annual Extinguisher Inspection
    GetInvServForm := 'GENINSP'
  else if Code = '547' then   //  Fire Extinguisher Recharge
    GetInvServForm := 'GENSERV'
  else if (Code = '548') or (Code = '549') or (Code = '550') or (Code = '551') or (Code = '552') or (Code = '553') or (Code = '554') or (Code = '555') then
    GetInvServForm := 'SCBASERV'
    {
    548  SCBA Refilled
    549  SCBA Certified Test
    550  Hydro Static Test 3 Year
    551  Hydro Static Test 5 Year
    552  Service and Clean
    553  SCBA Check
    554  SCBA Battery's
    555  SCBA (Battery Replacement)
    }
  else if Code = '600' then   //  Serviced and Test Run
    GetInvServForm := 'APPSERV'
  else if Code = '700' then   //  Winterized
    GetInvServForm := 'APPSERV'
  else if (Code = '800')  or (Code = '803') or (Code = '804') then
    GetInvServForm := 'HOSESERV'
    {
    800  Clean
    803  Hose Repair
    803  Valve Repair
    }
  else if Code = '801' then   //  OSHA Hose Pressure Test
    GetInvServForm := 'HOSETEST'
  else if Code = '811' then   //  Presurized & Leak Check
    GetInvServForm := 'HOSETEST'
  else if Code = '812' then   //  Visual Inspection
    GetInvServForm := 'HOSEINSP'
  else if Code = '813' then   //  Inventory/Visual inspection
    GetInvServForm := 'HOSEINSP'
  else if Code = '814' then   //  Service Text
    GetInvServForm := 'HOSEINSP'
  else if Code = '815' then   //  Holmatro Annual Service
    GetInvServForm := 'HOSESERV'

  else if (Code = '900') or (Code = '901') or (Code = '902') then
    GetInvServForm := 'GENSERV'
    {
    900  Radio Repair
    901  Pager Repair
    902  Radio Installation
    }
  else if Code = '903' then   //  Insurance Card
    GetInvServForm := 'APPSERV'
  else if Code = '996' then   //  Out For Repair
    GetInvServForm := 'GENSERV'
  else if Code = '997' then   //  Personal Equipment Issue
    GetInvServForm := 'GENSERV'
  else if Code = '998' then   //  Taken Out of Service
    GetInvServForm := 'APPSERV'
  else if Code = '999' then   //  Placed Into Service
    GetInvServForm := 'APPSERV'
  else if Code = 'CAL' then   //  Calibrate
    GetInvServForm := 'GENSERV'
  else if Code = 'INSTCALIBR' then   //  Instrument Calibration by Factory or Service Agent
    GetInvServForm := 'GENSERV'
  else begin
    GetInvServForm := 'NEWSERV';
    AddStatusListBox(ErrorBox,'Need to Set INVSERVFORM for ' + Code);
  end;  
end;

end.

AUTOPRES   ALPINE
AUTOTYPE   ALPINE
ABOVEGRADE ALPINE
BELOWGRADE ALPINE
PROPOWN    ALPINE

ADDRESS2   C 200
DETPRES    C 8
DETTYPE    C 8
DETPOWER   C 8
NUMSPR     C 10
COMPLEX    C 8
BUILDSTAT  C 8
STRTYPE    C 8
ROOFCOVER  C 200
TYPECONS   C 40
OCCLOAD    C 20


1.  Add a new field to SYSTABLE and SYSFIELD that is called CONVCODE.
2.  This could be
       FP Fire Programs
       FH Fire House
       FT Fire Tracker
       HP High Plains
3.  Add ASCSET.CONVCODE
4.  Enter the CONVCODE in the live system.
5.  When modifying PROP, PERS etc, it will include fields like ASCSET.CONVCODE = SYSTABLE.CONVCODE and ASCSET.CONVCODE = SYSFIELD.CONVCODE
6.  Create Standard Fire House Preplan Forms.


Need to add to rednmxcode for TYPE CNS.
  Open_Query(FHDatabase,'LKP_INCI',false,'SELECT * FROM LKP_OCC ORDER BY CATEGORY, GRP, CODE, DESCRIPT');

