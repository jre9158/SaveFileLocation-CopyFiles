unit ConvDbase;
 
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
  AdvGlowButton,
  AlpineBase,
  apodset,
  AlpineGlowButton,
  AlpinePanel,
  Gauges,
  OvcMeter,
  ALPINEDATETIME,
  ComCtrls,
  AdvGroupBox,
  AlpineMemo;

type
  TConvDbaseForm = class(TNormalBaseForm)
    Panel1: TPanel;
    OvcController1: TOvcController;
    InitialDateField: TAlpineDateTime;
    Label2: TLabel;
    FinalDateField: TAlpineDateTime;
    Label1: TLabel;
    TimeField: TLabel;
    Time1000: TLabel;
    Time10: TLabel;
    Time100: TLabel;
    DirectoryField: TAlpineEdit;
    Gauge: TGauge;
    ConvControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    PAGECOMP: TAlpineGlowButton;
    PageListButton: TAlpineGlowButton;
    PageGroupButton: TAlpineGlowButton;
    PageLinkButton: TAlpineGlowButton;
    PageDispButton: TAlpineGlowButton;
    NFIRSMainButton: TAlpineGlowButton;
    NFIRSSTR: TAlpineGlowButton;
    NFIRSFIRButton: TAlpineGlowButton;
    DispCallButton: TAlpineGlowButton;
    NfirsAttTaskButton: TAlpineGlowButton;
    DispHistButton: TAlpineGlowButton;
    TabSheet3: TTabSheet;
    InvButton: TAlpineGlowButton;
    InvFuelButton: TAlpineGlowButton;
    InvFuelType: TAlpineGlowButton;
    InvCodeButton: TAlpineGlowButton;
    ServTypeButton: TAlpineGlowButton;
    ServHistButton: TAlpineGlowButton;
    InvServStatusButton: TAlpineGlowButton;
    InspTypeButton: TAlpineGlowButton;
    ServSchdButton: TAlpineGlowButton;
    InspSchdButton: TAlpineGlowButton;
    InspHistButton: TAlpineGlowButton;
    TabSheet4: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    NIButton: TAlpineGlowButton;
    nisptypebutton: TAlpineGlowButton;
    LOCATION: TAlpineGlowButton;
    MeetIDField: TAlpineLookup;
    DrillIDField: TAlpineLookup;
    NIPTYPEButton: TAlpineGlowButton;
    MeetLosapCatIDField: TAlpineLookup;
    DrillLosapCatIDField: TAlpineLookup;
    WorkIDField: TAlpineLookup;
    WorkLosapCatIDField: TAlpineLookup;
    Misc1IDField: TAlpineLookup;
    Misc1LosapCatIDField: TAlpineLookup;
    Misc2IDField: TAlpineLookup;
    Misc2LosapCatIDField: TAlpineLookup;
    StandIDField: TAlpineLookup;
    StandLosapCATIDField: TAlpineLookup;
    TrainIDField: TAlpineLookup;
    TrainLosapCatIDField: TAlpineLookup;
    TrainLocationButton: TAlpineGlowButton;
    TrCourseButton: TAlpineGlowButton;
    TrEventButton: TAlpineGlowButton;
    NonIncButton: TAlpineGlowButton;
    Statuslabel: TLabel;
    NITRAINCATTYPEButton: TAlpineGlowButton;
    TabSheet5: TTabSheet;
    GISSetButton: TAlpineGlowButton;
    GISLayerButton: TAlpineGlowButton;
    TabSheet6: TTabSheet;
    Label5: TLabel;
    DispAppButton: TAlpineGlowButton;
    DISPLOCButton: TAlpineGlowButton;
    DispStatCodeButton: TAlpineGlowButton;
    DispStatButton: TAlpineGlowButton;
    DispCallTypeButton: TAlpineGlowButton;
    DispBoxButton: TAlpineGlowButton;
    DispSubTypeButton: TAlpineGlowButton;
    DispStatCodeIDField: TAlpineLookup;
    DispSetButton: TAlpineGlowButton;
    PersTab: TTabSheet;
    PersButton: TAlpineGlowButton;
    PersTypeButton: TAlpineGlowButton;
    PersRankButton: TAlpineGlowButton;
    PersRankHistButton: TAlpineGlowButton;
    PersDriverButton: TAlpineGlowButton;
    PersMedButton: TAlpineGlowButton;
    PersBloodTypeButton: TAlpineGlowButton;
    PERSMEDHISTButton: TAlpineGlowButton;
    PersDLClassButton: TAlpineGlowButton;
    PersCommHistButton: TAlpineGlowButton;
    TabSheet8: TTabSheet;
    Label18: TLabel;
    PropStatTypeButton: TAlpineGlowButton;
    PropHazMatButton: TAlpineGlowButton;
    PropStatButton: TAlpineGlowButton;
    PropSubTypeButton: TAlpineGlowButton;
    PropButton: TAlpineGlowButton;
    PropIntField: TAlpineEdit;
    Hydrant2Button: TAlpineGlowButton;
    NIZapButton: TAlpineGlowButton;
    NIResetButton: TAlpineGlowButton;
    DateField: TLabel;
    PersPointTypeButton: TAlpineGlowButton;
    TabSheet7: TTabSheet;
    HydType: TAlpineGlowButton;
    HydButton: TAlpineGlowButton;
    HydInspections: TAlpineGlowButton;
    GenTab: TTabSheet;
    FDIDButton: TAlpineGlowButton;
    FDIDCOMPButton: TAlpineGlowButton;
    RolodexButton: TAlpineGlowButton;
    RolodexTypeButton: TAlpineGlowButton;
    TableDefaultButton: TAlpineGlowButton;
    CityButton: TAlpineGlowButton;
    StreetButton: TAlpineGlowButton;
    SecButton: TAlpineGlowButton;
    BoxButton: TAlpineGlowButton;
    Label24: TLabel;
    PaginationRecField: TAlpineEdit;
    TabSheet10: TTabSheet;
    DLTypeButton: TAlpineGlowButton;
    DLButton: TAlpineGlowButton;
    MainCodeButton: TAlpineGlowButton;
    HoseTestButton: TAlpineGlowButton;
    ResetButton: TAlpineGlowButton;
    InvTypeButton: TAlpineGlowButton;
    VendorButton: TAlpineGlowButton;
    DirectButton: TAlpineGlowButton;
    LosapCreditButton: TAlpineGlowButton;
    INVLOCPERSButton: TAlpineGlowButton;
    INVLOCAppButton: TAlpineGlowButton;
    SCBAInspButton: TAlpineGlowButton;
    InvMastsButton: TAlpineGlowButton;
    ScbaInspInvServTypeIDField: TAlpineLookup;
    SCBAServButton: TAlpineGlowButton;
    ScbaServInvServTypeIDField: TAlpineLookup;
    PersInvQualButton: TAlpineGlowButton;
    PersAccHistButton: TAlpineGlowButton;
    TabSheet11: TTabSheet;
    FundEventButton: TAlpineGlowButton;
    FundActionButton: TAlpineGlowButton;
    FundCodeButton: TAlpineGlowButton;
    FundCheckButton: TAlpineGlowButton;
    NITrainCAT1Button: TAlpineGlowButton;
    IncTemplateButton: TAlpineGlowButton;
    Label19: TLabel;
    StatCodeButton: TAlpineGlowButton;
    TRCodeButton: TAlpineGlowButton;
    DispSeqButton: TAlpineGlowButton;
    AddSpecsButton: TAlpineGlowButton;
    TrainAttField: TAlpineGlowButton;
    WOCodeButton: TAlpineGlowButton;
    WorkOrdButton: TAlpineGlowButton;
    PersImageButton: TAlpineGlowButton;
    HourLogButton: TAlpineGlowButton;
    TabSheet12: TTabSheet;
    VOTEELECTButton: TAlpineGlowButton;
    VOTEADDRButton: TAlpineGlowButton;
    VOTEEXCLButton: TAlpineGlowButton;
    VOTEHISTButton: TAlpineGlowButton;
    TabSheet13: TTabSheet;
    InspButton: TAlpineGlowButton;
    InsCodeButton: TAlpineGlowButton;
    Shape1: TShape;
    Label20: TLabel;
    TRCode2Button: TAlpineGlowButton;
    Shape2: TShape;
    TRCode3Button: TAlpineGlowButton;
    NIPType2Button: TAlpineGlowButton;
    TRCourse2Button: TAlpineGlowButton;
    TrEvent2Button: TAlpineGlowButton;
    GeneralServiceButton: TAlpineGlowButton;
    HoseTestInvServTypeIDField: TAlpineLookup;
    IncNIEVAttButton: TAlpineCheckBoxGlowButton;
    NarrField: TAlpineMemo;
    ListBox1: TListBox;
    Label21: TLabel;
    Shape3: TShape;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    SCBACheckListButton: TAlpineGlowButton;
    TrainAtt2Button: TAlpineGlowButton;
    DispCallSourceButton: TAlpineGlowButton;
    SAExceptButton: TAlpineGlowButton;
    SACodeButton: TAlpineGlowButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    HandReadButton: TAlpineGlowButton;
    KeyCodeButton: TAlpineGlowButton;
    MCIButton: TAlpineGlowButton;
    InvServTypeStatusButton: TAlpineGlowButton;
    NfirsEMSButton: TAlpineGlowButton;
    TREventTRCLButton: TAlpineGlowButton;
    TopicButton: TAlpineGlowButton;
    Shape4: TShape;
    SCReportButton: TAlpineGlowButton;
    Label30: TLabel;
    TRNREQRPButton: TAlpineGlowButton;
    INVLOCAUDITButton: TAlpineGlowButton;
    DocLinkButton: TAlpineGlowButton;
    Label31: TLabel;
    TRTaskButton: TAlpineGlowButton;
    AppNoIncButton: TAlpineGlowButton;
    Shape5: TShape;
    FundPropButton: TAlpineGlowButton;
    procedure FDIDButtonClick(Sender: TObject);
    procedure DispAppButtonClick(Sender: TObject);
    procedure DISPLOCButtonClick(Sender: TObject);
    procedure DispStatCodeButtonClick(Sender: TObject);
    procedure DispStatButtonClick(Sender: TObject);
    procedure DispCallTypeButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure FDIDCOMPButtonClick(Sender: TObject);
    procedure PersTypeButtonClick(Sender: TObject);
    procedure DispBoxButtonClick(Sender: TObject);
    procedure PersRankButtonClick(Sender: TObject);
    procedure PersRankHistButtonClick(Sender: TObject);
    procedure DispSubTypeButtonClick(Sender: TObject);
    procedure PropStatTypeButtonClick(Sender: TObject);
    procedure PropStatButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure PropHazMatButtonClick(Sender: TObject);
    procedure PropSubTypeButtonClick(Sender: TObject);
    procedure PersDriverButtonClick(Sender: TObject);
    procedure RolodexTypeButtonClick(Sender: TObject);
    procedure RolodexButtonClick(Sender: TObject);
    procedure TableDefaultButtonClick(Sender: TObject);
    procedure CityButtonClick(Sender: TObject);
    procedure InvButtonClick(Sender: TObject);
    procedure StreetButtonClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure PersMedButtonClick(Sender: TObject);
    procedure PersBloodTypeButtonClick(Sender: TObject);
    procedure PERSMEDHISTButtonClick(Sender: TObject);
    procedure HydButtonClick(Sender: TObject);
    procedure InvFuelButtonClick(Sender: TObject);
    procedure InvFuelTypeClick(Sender: TObject);
    procedure nisptypebuttonClick(Sender: TObject);
    procedure LOCATIONClick(Sender: TObject);
    procedure NIButtonClick(Sender: TObject);
    procedure NFIRSSTRClick(Sender: TObject);
    procedure InvCodeButtonClick(Sender: TObject);
    procedure ServTypeButtonClick(Sender: TObject);
    procedure ServHistButtonClick(Sender: TObject);
    procedure InvServStatusButtonClick(Sender: TObject);
    procedure HydTypeClick(Sender: TObject);
    procedure HydInspectionsClick(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure NIPTYPEButtonClick(Sender: TObject);
    procedure DispCallButtonClick(Sender: TObject);
    procedure NFIRSFIRButtonClick(Sender: TObject);
    procedure NfirsAttTaskButtonClick(Sender: TObject);
    procedure DispHistButtonClick(Sender: TObject);
    procedure Hydrant2ButtonClick(Sender: TObject);
    procedure TrainLocationButtonClick(Sender: TObject);
    procedure TrCourseButtonClick(Sender: TObject);
    procedure TrEventButtonClick(Sender: TObject);
    procedure PAGECOMPClick(Sender: TObject);
    procedure PageListButtonClick(Sender: TObject);
    procedure PageGroupButtonClick(Sender: TObject);
    procedure PageLinkButtonClick(Sender: TObject);
    procedure PageDispButtonClick(Sender: TObject);
    procedure PersDLClassButtonClick(Sender: TObject);
    procedure InspTypeButtonClick(Sender: TObject);
    procedure ServSchdButtonClick(Sender: TObject);
    procedure InspSchdButtonClick(Sender: TObject);
    procedure InspHistButtonClick(Sender: TObject);
    procedure PersInvQualButtonClick(Sender: TObject);
    procedure NonIncButtonClick(Sender: TObject);
    procedure NITRAINCATTYPEButtonClick(Sender: TObject);
    procedure GISSetButtonClick(Sender: TObject);
    procedure GISLayerButtonClick(Sender: TObject);
    procedure DispSetButtonClick(Sender: TObject);
    procedure PersCommHistButtonClick(Sender: TObject);
    procedure NIResetButtonClick(Sender: TObject);
    procedure NIZapButtonClick(Sender: TObject);
    procedure PersPointTypeButtonClick(Sender: TObject);
    procedure BoxButtonClick(Sender: TObject);
    procedure NFIRSMainButtonClick(Sender: TObject);
    procedure DLTypeButtonClick(Sender: TObject);
    procedure DLButtonClick(Sender: TObject);
    procedure MainCodeButtonClick(Sender: TObject);
    procedure HoseTestButtonClick(Sender: TObject);
    procedure ResetButtonClick(Sender: TObject);
    procedure InvTypeButtonClick(Sender: TObject);
    procedure VendorButtonClick(Sender: TObject);
    procedure DirectButtonClick(Sender: TObject);
    procedure LosapCreditButtonClick(Sender: TObject);
    procedure INVLOCPERSButtonClick(Sender: TObject);
    procedure INVLOCAppButtonClick(Sender: TObject);
    procedure SCBAInspButtonClick(Sender: TObject);
    procedure InvMastsButtonClick(Sender: TObject);
    procedure SCBAServButtonClick(Sender: TObject);
    procedure PersAccHistButtonClick(Sender: TObject);
    procedure FundEventButtonClick(Sender: TObject);
    procedure FundActionButtonClick(Sender: TObject);
    procedure FundCodeButtonClick(Sender: TObject);
    procedure FundCheckButtonClick(Sender: TObject);
    procedure NITrainCAT1ButtonClick(Sender: TObject);
    procedure IncTemplateButtonClick(Sender: TObject);
    procedure TRCodeButtonClick(Sender: TObject);
    procedure StatCodeButtonClick(Sender: TObject);
    procedure DispSeqButtonClick(Sender: TObject);
    procedure AddSpecsButtonClick(Sender: TObject);
    procedure TrainAttFieldClick(Sender: TObject);
    procedure WOCodeButtonClick(Sender: TObject);
    procedure WorkOrdButtonClick(Sender: TObject);
    procedure PersImageButtonClick(Sender: TObject);
    procedure HourLogButtonClick(Sender: TObject);
    procedure VOTEELECTButtonClick(Sender: TObject);
    procedure VOTEADDRButtonClick(Sender: TObject);
    procedure VOTEEXCLButtonClick(Sender: TObject);
    procedure VOTEHISTButtonClick(Sender: TObject);
    procedure InspButtonClick(Sender: TObject);
    procedure InsCodeButtonClick(Sender: TObject);
    procedure TRCode2ButtonClick(Sender: TObject);
    procedure TRCode3ButtonClick(Sender: TObject);
    procedure NIPType2ButtonClick(Sender: TObject);
    procedure TRCourse2ButtonClick(Sender: TObject);
    procedure TrEvent2ButtonClick(Sender: TObject);
    procedure GeneralServiceButtonClick(Sender: TObject);
    procedure HoseTestInvServTypeIDFieldExit(Sender: TObject);
    procedure ScbaInspInvServTypeIDFieldExit(Sender: TObject);
    procedure ScbaServInvServTypeIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SCBACheckListButtonClick(Sender: TObject);
    procedure DispCallSourceButtonClick(Sender: TObject);
    procedure SAExceptButtonClick(Sender: TObject);
    procedure SACodeButtonClick(Sender: TObject);
    procedure HandReadButtonClick(Sender: TObject);
    procedure KeyCodeButtonClick(Sender: TObject);
    procedure MCIButtonClick(Sender: TObject);
    procedure InvServTypeStatusButtonClick(Sender: TObject);
    procedure NfirsEMSButtonClick(Sender: TObject);
    procedure TREventTRCLButtonClick(Sender: TObject);
    procedure TopicButtonClick(Sender: TObject);
    procedure SCReportButtonClick(Sender: TObject);
    procedure TRNREQRPButtonClick(Sender: TObject);
    procedure INVLOCAUDITButtonClick(Sender: TObject);
    procedure DocLinkButtonClick(Sender: TObject);
    procedure TRTaskButtonClick(Sender: TObject);
    procedure AppNoIncButtonClick(Sender: TObject);
    procedure FundPropButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConvertNfirsMain;
    procedure ConvertNfirsAtt(Fdid, IncNum, NfirsMainID: String);
    procedure ConvertNfirsApp(Fdid, IncNum, NfirsMainID: String);
    procedure ConvertNfirsFdidComp(Fdid, IncNum, NfirsMainID: String);
    procedure ConvertCodeTable(NMXTable,dBaseTable,dBaseFieldValue: String);
    procedure CheckSupportTable(mdBaseTable,mDBaseField,mRedNMXLookupTable,mRedNmxTable: String);
    procedure LoadRedNMXCode(FieldName,Code,Descr: String);
    procedure LoadNIPType(CodeVar, DescrVar: String);
    procedure LoadNITrainCat1;
    procedure LoadNISType;
    procedure AddNILosapCat(Code, Descr: String);
    procedure AddNISType(NIPTypeID, CodeVar, DescrVar, NILosapCatID: String);
    procedure ConvertNI;
    procedure ConvertNIEvent(EventType,NIPTypeID, NISTypeID, NILosapCATID, EventDbf, AttendDbf: String);
    procedure LoadNIPersInvType(Code, Descr: String);
    procedure ImportNfirs(mInitDate,mFinalDate: TDateTime);
    procedure LoadHydrant(PropID, SortOrd, HydCode: String);
    function  GetRedNarr: String;
    procedure ConvertEvent(NIPTypeID, NILosapCATID, Event, Attend: String);
    procedure LoadCheckList(SortOrd, Descr, InvServTypeID: String);
  public
    { Public declarations }
  end;

var
  ConvDbaseForm: TConvDbaseForm;

implementation
uses GenFunc,
     SDE61,
     SortGridView,
     FormFunc,
     ExitPass,
     SecSet,
     TreeSetup,
     CommonConv,
     CommonFunc,
     CommonVar;

{$R *.DFM}

procedure TConvDbaseForm.FDIDButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\DICTION\FIREDEPT.DBF','S','FIREDEPT');
  Open_Query('FDID',true,'SELECT * FROM FDID WHERE 1=2');
  While Not A('FIREDEPT').Eof do begin
    A('FDID').UpdateSQL('SELECT * FROM FDID WHERE FDID = ' + edbfield('FIREDEPT','FDID'));
    PutInUpdateMode('FDID');
    GetField('FDID','FDID').AsString       := GetField('FIREDEPT','FDID').AsString;
    GetField('FDID','DEPTNAME').AsString   := GetField('FIREDEPT','DEPTNAME').AsString;
    GetField('FDID','ADDRESS').AsString    := GetField('FIREDEPT','ADDRESS').AsString;
    GetField('FDID','MULTIINC').AsString   := GetField('FIREDEPT','MULTIINC').AsString;
    GetField('FDID','ABBREVIATE').AsString := GetField('FIREDEPT','ABBREVIATE').AsString;
    A('FDID').Post(false);
    A('FIREDEPT').Skip(1);
  end;
  CloseApollo('FIREDEPT');
  CloseApollo('FDID');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispAppButtonClick(Sender: TObject);
begin
  Open_Query('DISPAPP',true,'SELECT * FROM DISPAPP WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  While Not A('CODE').Eof do begin
    If tdbfield('CODE','FIELD') = 'APPTYPE' then begin
      A('DISPAPP').UpdateSQL('SELECT * FROM DISPAPP WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPAPP').RecordsExist then
        GetTable('DISPAPP').Edit
      else
        GetTable('DISPAPP').Append;
      GetField('DISPAPP','CODE').AsString       := GetField('CODE','CODE').AsString;
      GetField('DISPAPP','DESCR').AsString      := GetField('CODE','DESC').AsString;
      GetField('DISPAPP','SHORTDESCR').AsString := GetField('CODE','CODE').AsString;
      GetField('DISPAPP','HIDDEN').AsString     := 'N';
      GetTable('DISPAPP').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPAPP');
  CloseApollo('CODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispCallSourceButtonClick(Sender: TObject);
begin
  Open_Query('DISPCALLSOURCE',true,'SELECT * FROM DISPCALLSOURCE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  While Not A('CODE').Eof do begin
    If tdbfield('CODE','FIELD') = 'SOURCE' then begin
      A('DISPCALLSOURCE').UpdateSQL('SELECT * FROM DISPCALLSOURCE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPCALLSOURCE').RecordsExist then
        GetTable('DISPCALLSOURCE').Edit
      else
        GetTable('DISPCALLSOURCE').Append;

      GetField('DISPCALLSOURCE','CODE').AsString       := GetField('CODE','CODE').AsString;
      GetField('DISPCALLSOURCE','DESCR').AsString      := GetField('CODE','DESC').AsString;

      GetTable('DISPCALLSOURCE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPCALLSOURCE');
  CloseApollo('CODE');

  ShowMessage('Done');

end;

procedure TConvDbaseForm.DISPLOCButtonClick(Sender: TObject);
begin
  Open_Query('DISPLOC',true,'SELECT * FROM DISPLOC WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  While Not A('CODE').Eof do begin
    If tdbfield('CODE','FIELD') = 'LOCATION' then begin
      A('DISPLOC').UpdateSQL('SELECT * FROM DISPLOC WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPLOC').RecordsExist then
        GetTable('DISPLOC').Edit
      else
        GetTable('DISPLOC').Append;
      GetField('DISPLOC','FDID').AsString       := mFireID;
      GetField('DISPLOC','CODE').AsString       := GetField('CODE','CODE').AsString;
      GetField('DISPLOC','DESCR').AsString      := GetField('CODE','DESC').AsString;
      GetField('DISPLOC','SHORTDESCR').AsString := GetField('CODE','CODE').AsString;
      GetField('DISPLOC','HIDDEN').AsString     := 'N';
      GetTable('DISPLOC').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPLOC');
  CloseApollo('CODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispStatCodeButtonClick(Sender: TObject);
begin
  Open_Query('DISPSTATCODE',true,'SELECT * FROM DISPSTATCODE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  While Not A('CODE').Eof do begin
    If tdbfield('CODE','FIELD') = 'STATCODE' then begin
      A('DISPSTATCODE').UpdateSQL('SELECT * FROM DISPSTATCODE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPSTATCODE').RecordsExist then
        GetTable('DISPSTATCODE').Edit
      else
        GetTable('DISPSTATCODE').Append;
      GetField('DISPSTATCODE','CODE').AsString        := GetField('CODE','CODE').AsString;
      GetField('DISPSTATCODE','DESCR').AsString       := GetField('CODE','DESC').AsString;
      GetField('DISPSTATCODE','SHORTDESCR').AsString  := GetField('CODE','CODE').AsString;
      GetField('DISPSTATCODE','COLOR').AsString       := GetField('CODE','TYPE').AsString;
      GetField('DISPSTATCODE','BULLCOLOR').AsString   := GetField('CODE','BULLCOLOR').AsString;

      If GetField('CODE','ORDER').AsInteger > 0 then
        GetField('DISPSTATCODE','SORTORD').AsInteger    := GetField('CODE','ORDER').AsInteger
      else
        GetField('DISPSTATCODE','SORTORD').AsInteger    := 0;

      GetField('DISPSTATCODE','TRUCKALARM').AsString  := GetField('CODE','TRUCKALARM').AsString;
      GetTable('DISPSTATCODE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPSTATCODE');
  CloseApollo('CODE');

  ShowMessage('Done');
end;


procedure TConvDbaseForm.DispStatButtonClick(Sender: TObject);
Var DispLocVar     : Integer;
    DispAppVar     : Integer;
  function GetDispApp(CodeVar: String): Integer;
  begin
    A('DISPAPP').UpdateSQL('SELECT DISPAPPID FROM DISPAPP WHERE CODE = ' + AddExpr(CodeVar));
    GetDispApp := GetField('DISPAPP','DISPAPPID').AsInteger;
  end;

  function GetDispLoc(CodeVar: String): Integer;
  begin
    A('DISPLOC').UpdateSQL('SELECT DISPLOCID FROM DISPLOC WHERE CODE = ' + AddExpr(CodeVar));
    GetDispLoc := GetField('DISPLOC','DISPLOCID').AsInteger;
  end;
begin
  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\APPSTAT.DBF','S','APPSTAT');

  Open_Query('DISPAPP',false,'SELECT DISPAPPID FROM DISPAPP WHERE 1=2');
  Open_Query('DISPLOC',false,'SELECT DISPLOCID FROM DISPLOC WHERE 1=2');
  Open_Query('DISPSTATCODE',false,'SELECT CODE, DISPSTATCODEID FROM DISPSTATCODE');
  Open_Query('DISPSTAT',true,'SELECT * FROM DISPSTAT WHERE 1=2');

  Gauge.MaxValue := A('APPSTAT').RecordCount;
  Gauge.Progress := 0;
  
  While Not A('APPSTAT').Eof do begin
    A('DISPSTAT').UpdateSQL('SELECT * FROM DISPSTAT WHERE UNITNUM = ' + edbfield('APPSTAT','INVNUM'));
    If A('DISPSTAT').RecordsExist then
      GetTable('DISPSTAT').Edit
    else
      GetTable('DISPSTAT').Append;

    If Not (tdbfield('APPSTAT','FDID') = '') then
      GetField('DISPSTAT','FDID').AsString := dbfield('APPSTAT','FDID')
    else
      GetField('DISPSTAT','FDID').AsString := mfireid;

    GetField('DISPSTAT','UNITNUM').AsString         := dbfield('APPSTAT','INVNUM');

    DispAppVar := GetDispApp(dbfield('APPSTAT','APPTYPE'));
    If DispAppVar > 0 then
      GetField('DISPSTAT','DISPAPPID').AsInteger      := DispAppVar;

    GetField('DISPSTAT','SORTORD').AsInteger        := AnyStrToInt(GetField('APPSTAT','LISTORDER').AsString);
    GetField('DISPSTAT','HORZLINE').AsString        := GetField('APPSTAT','HORZLINE').AsString;

    DispLocVar := GetDispLoc(dbfield('APPSTAT','LOCATION'));
    If DispLocVar > 0 then
      GetField('DISPSTAT','DISPLOCID').AsInteger := DispLocVar;

    If A('DISPSTATCODE').ExactQueryLocate('CODE',tdbfield('APPSTAT','STATCODE')) then
      GetField('DISPSTAT','DISPSTATCODEID').AsString := GetField('DISPSTATCODE','DISPSTATCODEID').AsString;
    A('DISPSTAT').Post;
    A('APPSTAT').Skip(1);

    Gauge.Progress := Gauge.Progress + 1; 
    Application.processmessages;
  end;

  CloseApollo('APPSTAT');
  CloseApollo('DISPSTAT');
  CloseApollo('DISPSTATCODE');
  CloseApollo('DISPLOC');
  CloseApollo('DISPAPP');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispCallTypeButtonClick(Sender: TObject);
begin
  Open_Query('DISPCALLTYPE',true,'SELECT * FROM DISPCALLTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  While Not A('CODE').Eof do begin
    If tdbfield('CODE','FIELD') = 'CALLTYPE' then begin
      A('DISPCALLTYPE').UpdateSQL('SELECT * FROM DISPCALLTYPE WHERE CODE = ' + edbfield('CODE','CODE'));
      If A('DISPCALLTYPE').RecordsExist then
        GetTable('DISPCALLTYPE').Edit
      else
        GetTable('DISPCALLTYPE').Append;

      GetField('DISPCALLTYPE','CODE').AsString        := GetField('CODE','CODE').AsString;
      GetField('DISPCALLTYPE','DESCR').AsString       := GetField('CODE','DESC').AsString;
      GetField('DISPCALLTYPE','TYPE').AsString        := 'NFIRS';
      GetField('DISPCALLTYPE','HIDDEN').AsString      := 'N';
      GetField('DISPCALLTYPE','ICON').AsString        := GetField('CODE','ICON').AsString;
      GetField('DISPCALLTYPE','SORTORD').AsString     := GetField('CODE','ORDER').AsString;
      GetField('DISPCALLTYPE','RESPONSE').AsString    := 'N';
      GetTable('DISPCALLTYPE').Post;
    end;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
  CloseApollo('CODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersButtonClick(Sender: TObject);
Var PersID : String;
  procedure LoadPersComp(FdidVar, CompanyVar: String);
  begin
    If Not (CompanyVar = '') and Not (FdidVar = '') then begin
      A('FDIDCOMP').UpdateSQL('SELECT * FROM FDIDCOMP WHERE FDID = ' + AddExpr(FdidVar) + ' AND CODE = ' + AddExpr(CompanyVar));
      If A('FDIDCOMP').RecordsExist then begin
        A('PERSCOMP').UpdateSQL('SELECT * FROM PERSCOMP WHERE PERSID = ' + PkValue(PersID) + ' AND FDIDCOMPID = ' + PkValue(GetField('FDIDCOMP','FDIDCOMPID').AsString));
        If Not A('PERSCOMP').RecordsExist then begin
          A('PERSCOMP').Append;
          GetField('PERSCOMP','PERSID').AsString     := GetField('PERS','PERSID').AsString;
          GetField('PERSCOMP','FDIDCOMPID').AsString := GetField('FDIDCOMP','FDIDCOMPID').AsString;
          A('PERSCOMP').Post;
        end;
      end;
    end;
  end;
begin
  AddStatusListBox(ListBox1,'Convert PERS . . . . ');
  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\MEMBER.DBF','S','MEMBER');
  Gauge.MaxValue := A('MEMBER').RecordCount;
  Gauge.Progress := 0;

  Open_Query('PERS',true,'SELECT * FROM PERS WHERE 1=2');
  Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP WHERE 1=2');
  Open_Query('PERSCOMP',true,'SELECT * FROM PERSCOMP WHERE 1=2');
  Open_Query('PERSTYPE',true,'SELECT * FROM PERSTYPE WHERE 1=2');
  Open_Query('PERSBLOODTYPE',true,'SELECT * FROM PERSBLOODTYPE');
  Open_Query('PERSDRIVER',true,'SELECT * FROM PERSDRIVER');
  Open_Query('PERSDLCLASS',true,'SELECT * FROM PERSDLCLASS');
  Open_Query('REDNMXCODE',true,'SELECT * FROM REDNMXCODE');
  Open_Query('PERSBEN',true,'SELECT * FROM PERSBEN');

  While Not A('MEMBER').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    PersButton.Caption := IntToStr(A('MEMBER').RecNo);
    A('PERS').UpdateSQL('SELECT * FROM PERS WHERE PERSCODE = ' + edbfield('MEMBER','MEMCODE'));
    If A('PERS').RecordsExist then
      GetTable('PERS').Edit
    else begin
      GetTable('PERS').Append;
      GetField('PERS','PERSCODE').AsString   := GetField('MEMBER','MEMCODE').AsString;
    end;

    GetField('PERS','LNAME').AsString      := GetField('MEMBER','LNAME').AsString;
    GetField('PERS','FNAME').AsString      := GetField('MEMBER','FNAME').AsString;
    GetField('PERS','MNAME').AsString      := GetField('MEMBER','MNAME').AsString;
    GetField('PERS','ADD1').AsString       := GetField('MEMBER','ADD1').AsString;
    GetField('PERS','ADD2').AsString       := GetField('MEMBER','ADD2').AsString;
    GetField('PERS','CITY').AsString       := GetField('MEMBER','CITY').AsString;
    GetField('PERS','STATE').AsString      := GetField('MEMBER','STATE').AsString;
    GetField('PERS','ZIP').AsString        := GetField('MEMBER','ZIP').AsString;
    GetField('PERS','ATTEND').AsString        := IIf(tdbfield('MEMBER','ATTEND') = 'Y','Y','N');
    GetField('PERS','FDID').AsString          := GetField('MEMBER','FDID').AsString;
    GetField('PERS','EMAIL').AsString         := GetField('MEMBER','EMAIL').AsString;

    GetField('PERS','BLOODPRESSURE').AsString := GetField('MEMBER','BP').AsString;
    GetField('PERS','PULSERATE').AsString     := GetField('MEMBER','PR').AsString;
    GetField('PERS','BLOODDONOR').AsString    := GetField('MEMBER','DONOR').AsString;
    GetField('PERS','ORGANDONOR').AsString    := GetField('MEMBER','ORGAN').AsString;
    GetField('PERS','SEX').AsString           := GetField('MEMBER','SEX').AsString;
    GetField('PERS','DOB').AsString           := GetField('MEMBER','DOB').AsString;
    GetField('PERS','MEDNARR').AsString       := GetField('MEMBER','MEDNARR').AsString;
    GetField('PERS','CURRMED').AsString       := GetField('MEMBER','CURRMED').AsString;
    GetField('PERS','DOCTORNAME').AsString    := GetField('MEMBER','DOCTORNAME').AsString;
    GetField('PERS','DOCTORPHONE').AsString   := GetField('MEMBER','DOCTORNUM').AsString;
    GetField('PERS','DOCTORHOSP').AsString    := GetField('MEMBER','DOCTORHOSP').AsString;
    GetField('PERS','INSCODE').AsString       := GetField('MEMBER','INSCODE').AsString;
    GetField('PERS','BENEFIT').AsString       := GetField('MEMBER','BENEFIT').AsString;
    GetField('PERS','DEPEND').AsString        := GetField('MEMBER','DEPEND').AsString;

    GetField('PERS','ALLERGY').AsString    := GetField('MEMBER','ALLERGY').AsString;
    GetField('PERS','HEIGHT').AsString     := GetField('MEMBER','HEIGHT').AsString;
    GetField('PERS','WEIGHT').AsString     := GetField('MEMBER','WEIGHT').AsString;
    GetField('PERS','HAIR').AsString       := GetField('MEMBER','HAIR').AsString;
    GetField('PERS','EYES').AsString       := GetField('MEMBER','EYES').AsString;

    If mFireID = '46006' then begin
      If GetField('MEMBER','ASSCODE1').AsString = 'Y' then
        GetField('PERS','ASSCODE1').AsString := 'Y'
      else
        GetField('PERS','ASSCODE1').AsString := 'N';
    end;

    If mFireID = '15064' then begin
      If A('REDNMXCODE').ExactQueryLocate('CODE',alltrim(tdbfield('MEMBER','USERL1'))) then
        GetField('PERS','SHIFTID').AsString := AllTrim(GetField('REDNMXCODE','CODE').AsString)
    end;
    If A('PERSBLOODTYPE').ExactQueryLocate('CODE',tdbfield('MEMBER','BLDTYPE')) then
      GetField('PERS','PERSBLOODTYPEID').AsString  := GetField('PERSBLOODTYPE','PERSBLOODTYPEID').AsString;

    GetField('PERS','EMERGPHONE').AsString := GetField('MEMBER','EMERG').AsString;
    GetField('PERS','EMERGNAME').AsString  := GetField('MEMBER','NOTE_NAME').AsString;

    If Not (alltrim(substr(tdbfield('MEMBER','SOCSEC'),1,2)) = '') then
      GetField('PERS','SOCSEC').AsString    := tdbfield('MEMBER','SOCSEC');

    GetField('PERS','PHONE').AsString    := GetField('MEMBER','PHONE').AsString;
    GetField('PERS','OCC').AsString      := GetField('MEMBER','OCC').AsString;
    GetField('PERS','OCCPHONE').AsString := GetField('MEMBER','OCCPHONE').AsString;
    GetField('PERS','CELL').AsString     := GetField('MEMBER','CELL').AsString;
    GetField('PERS','PAGER').AsString    := GetField('MEMBER','PAGER').AsString;

    GetField('PERS','DLEXP').AsString    := GetField('MEMBER','DLEXP').AsString;
    GetField('PERS','DLNUM').AsString    := GetField('MEMBER','DLNUM').AsString;
    GetField('PERS','DLSTATE').AsString  := GetField('MEMBER','DLSTATE').AsString;
    If A('PERSDRIVER').ExactQueryLocate('CODE',tdbfield('MEMBER','DRIVER')) then
      GetField('PERS','PERSDRIVERID').AsString  := GetField('PERSDRIVER','PERSDRIVERID').AsString;

    If A('PERSDLCLASS').ExactQueryLocate('CODE',tdbfield('MEMBER','DLCLASS')) then
      GetField('PERS','PERSDLCLASSID').AsString  := GetField('PERSDLCLASS','PERSDLCLASSID').AsString;

    GetField('PERS','JOINDATE').AsString := GetField('MEMBER','JOINDATE').AsString;
    If mFireID = '46006' then begin
      GetField('PERS','PROBENDDATE').AsString  := GetField('MEMBER','RESDATE').AsString;
      GetField('PERS','PROBSTARTDATE').AsString  := GetField('MEMBER','ACTDATE').AsString;
      GetField('PERS','RESDATE').AsString := GetField('MEMBER','LIFEDATE').AsString;
    end else begin
      GetField('PERS','RESDATE').AsString  := GetField('MEMBER','RESDATE').AsString;
      GetField('PERS','ACTDATE').AsString  := GetField('MEMBER','ACTDATE').AsString;
      GetField('PERS','LIFEDATE').AsString := GetField('MEMBER','LIFEDATE').AsString;
    end;

    GetField('PERS','NARR').AsString           := GetField('MEMBER','NARRATIVE').AsString;

    try
      GetField('PERS','TEMPLATE').AsString       := GetField('MEMBER','TEMPLATE').AsString;
    except
    end;

    try
      GetField('PERS','DATETIMEPOLL').AsDateTime := GetField('MEMBER','POLLDATE').AsDateTime + GetRealTime(tdbfield('MEMBER','POLLTIME'));
    except
    end;

    A('PERSTYPE').UpdateSQL('SELECT PERSTYPEID FROM PERSTYPE WHERE CODE = ' + edbfield('MEMBER','MEMTYPE'));
    If A('PERSTYPE').RecordsExist then
      GetField('PERS','PERSTYPEID').AsInteger := GetField('PERSTYPE','PERSTYPEID').AsInteger;

    A('PERS').Post;

    If GetField('PERS','PERSID').AsInteger > 0 then
      PersID := GetField('PERS','PERSID').AsString
    else
      PersID := A('PERSID').NewPk;

    LoadPersComp(tdbfield('MEMBER','FDID'),tdbfield('MEMBER','COMPANY'));
    LoadPersComp(tdbfield('MEMBER','FDID'),tdbfield('MEMBER','COMPANY2'));

    A('MEMBER').Skip(1);
    Application.processmessages;
  end;
  CloseApollo('MEMBER');
  CloseApollo('PERS');
  CloseApollo('PERSCOMP');
  CloseApollo('PERSTYPE');
  CloseApollo('REDNMXCODE');
  CloseApollo('FDIDCOMP');
  CloseApollo('PERSBLOODTYPE');
  CloseApollo('PERSDRIVER');
  CloseApollo('PERSDLCLASS');
  CloseApollo('PERSBEN');

  AddStatusListBox(ListBox1,'Convert PERS . . . . ');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.LoadRedNMXCode(FieldName,Code,Descr: String);
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

procedure TConvDbaseForm.FDIDCOMPButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\DICTION\COMPANY.DBF','S','COMPANY');
  Open_Query('FDID',true,'SELECT FDID FROM FDID');
  Open_Query('FDIDCOMP',true,'SELECT * FROM FDIDCOMP WHERE 1=2');
  While Not A('COMPANY').Eof do begin
    If A('FDID').ExactQueryLocate('FDID',tdbfield('COMPANY','FDID')) then begin
      A('FDIDCOMP').UpdateSQL('SELECT * FROM FDIDCOMP WHERE FDID = ' + edbfield('COMPANY','FDID') + ' AND CODE = ' + edbfield('COMPANY','CODE'));
      If A('FDIDCOMP').RecordsExist then
        GetTable('FDIDCOMP').Edit
      else
        GetTable('FDIDCOMP').Append;
      GetField('FDIDCOMP','FDID').AsString  := GetField('COMPANY','FDID').AsString;
      GetField('FDIDCOMP','CODE').AsString  := GetField('COMPANY','CODE').AsString;
      GetField('FDIDCOMP','DESCR').AsString := GetField('COMPANY','NAME').AsString;
      A('FDIDCOMP').Post;
    end;  
    A('COMPANY').Skip(1);
  end;
  CloseApollo('FDID');
  CloseApollo('FDIDCOMP');
  CloseApollo('COMPANY');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.FormShow(Sender: TObject);
begin
  inherited;
  HoseTestInvServTypeIDFieldExit(self);
  ScbaInspInvServTypeIDFieldExit(self);
  ScbaServInvServTypeIDFieldExit(self);
  Height                 := IMin(Height,Round(Screen.Height * 0.91));
  ConvControl.ActivePage := GenTab;
end;

procedure TConvDbaseForm.FundCodeButtonClick(Sender: TObject);
Var AmountVar : String;
begin
  inherited;
  Open_Query('FUNDAMOUNT',true,'SELECT * FROM FUNDAMOUNT WHERE 1=2');
  Open_Query('FUNDACTIONTYPE',true,'SELECT * FROM FUNDACTIONTYPE WHERE 1=2');
  Open_Query('PROPSUBTYPE',true,'SELECT * FROM PROPSUBTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + '\FUNDS\DBF\FUNDCODE.DBF','S','FUNDCODE');
  While Not A('FUNDCODE').Eof do begin
    If tdbfield('FUNDCODE','FIELD') = 'AMOUNT' then begin
      AmountVar := FormatFloat('##0.00',AnyStrToFloat(tdbfield('FUNDCODE','CODE')));
      A('FUNDAMOUNT').UpdateSQL('SELECT * FROM FUNDAMOUNT WHERE AMOUNT = ' + AmountVar);
      PutInUpdateMode('FUNDAMOUNT');
      GetField('FUNDAMOUNT','AMOUNT').AsString := AmountVar;
      GetTable('FUNDAMOUNT').Post;
    end else if tdbfield('FUNDCODE','FIELD') = 'FLTYPE' then begin
      A('FUNDACTIONTYPE').UpdateSQL('SELECT * FROM FUNDACTIONTYPE WHERE CODE = ' + edbfield('FUNDCODE','CODE'));;
      PutInUpdateMode('FUNDACTIONTYPE');
      GetField('FUNDACTIONTYPE','CODE').AsString  := tdbfield('FUNDCODE','CODE');
      GetField('FUNDACTIONTYPE','DESCR').AsString := tdbfield('FUNDCODE','DESC');
      GetTable('FUNDACTIONTYPE').Post;
    end else if tdbfield('FUNDCODE','FIELD') = 'PRPROPTYPE' then begin
      A('PROPSUBTYPE').UpdateSQL('SELECT * FROM PROPSUBTYPE WHERE CODE = ' + edbfield('FUNDCODE','CODE'));;
      PutInUpdateMode('PROPSUBTYPE');
      GetField('PROPSUBTYPE','CODE').AsString  := tdbfield('FUNDCODE','CODE');
      GetField('PROPSUBTYPE','DESCR').AsString := tdbfield('FUNDCODE','DESC');
      GetTable('PROPSUBTYPE').Post;
    end;
    A('FUNDCODE').Skip(1);
  end;
  CloseApollo('FUNDAMOUNT');
  CloseApollo('FUNDACTIONTYPE');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('FUNDCODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.FundEventButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('FUNDEVENT',true,'SELECT * FROM FUNDEVENT WHERE 1=2');
  Net_Open(DirectoryField.Text + '\FUNDS\DBF\EVENT.DBF','S','EVENT');
  While Not A('EVENT').Eof do begin
    A('FUNDEVENT').UpdateSQL('SELECT * FROM FUNDEVENT WHERE CODE = ' + edbfield('EVENT','FUNDCODE'));
    PutInUpdateMode('FUNDEVENT');
    GetField('FUNDEVENT','NARR').AsString        := GetField('EVENT','NARR').AsString;
    GetField('FUNDEVENT','CODE').AsString        := GetField('EVENT','FUNDCODE').AsString;
    GetField('FUNDEVENT','GOAL').AsFloat         := GetField('EVENT','GOAL').AsFloat;
    GetField('FUNDEVENT','AMOUNT').AsFloat       := GetField('EVENT','AMOUNT').AsFloat;
    GetField('FUNDEVENT','DATESTART').AsDateTime := GetField('EVENT','STARTDATE').AsDatetime;
    GetField('FUNDEVENT','DATEEND').AsDateTime   := GetField('EVENT','FINDATE').AsDatetime;
    GetField('FUNDEVENT','DESCR').AsString       := GetField('EVENT','DESC').AsString;
    GetField('FUNDEVENT','INCHARGE').AsString    := GetField('EVENT','MEMDESC').AsString;
    GetTable('FUNDEVENT').Post;
    A('EVENT').Skip(1);
  end;
  CloseApollo('FUNDEVENT');
  CloseApollo('EVENT');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.FundPropButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('PROPSUBTYPE',false,'SELECT * FROM PROPSUBTYPE');
  Net_Open(DirectoryField.Text + '\FUNDS\DBF\FUNDPROP.DBF','S','FUNDPROP');

  Gauge.MaxValue := A('FUNDPROP').RecordCount;
  
  While Not A('FUNDPROP').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;


    A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPCODE = ' + edbfield('FUNDPROP','PROPCODE'));
    If A('PROP').RecordsExist then
      GetTable('PROP').Edit
    else
      GetTable('PROP').Append;


    A('PROPSUBTYPE').UpdateSQL('SELECT PROPSUBTYPEID FROM PROPSUBTYPE WHERE CODE = ' + edbfield('FUNDPROP','PROPTYPE'));
    If A('PROPSUBTYPE').RecordsExist then
      GetField('PROP','PROPSUBTYPEID').AsString := GetField('PROPSUBTYPE','PROPSUBTYPEID').AsString;


    GetField('PROP','FDID').AsString            := mFireID;
    GetField('PROP','PLASTNAME').AsString       := GetField('FUNDPROP','PLASTNAME').AsString;
    GetField('PROP','PFIRSTNAME').AsString      := GetField('FUNDPROP','PFIRSTNAME').AsString;
//  GetField('PROP','SALUT').AsString           := GetField('FUNDPROP','PSALUT').AsString;
    GetField('PROP','COMPANY').AsString         := GetField('FUNDPROP','COMPANY').AsString;
    GetField('PROP','PROPCODE').AsString        := GetField('FUNDPROP','PROPCODE').AsString;
    GetField('PROP','ROOMAPT').AsString         := alltrim(dbfield('FUNDPROP','PROOMAPT'));
    GetField('PROP','STRNUM').AsString          := alltrim(dbfield('FUNDPROP','PSTRNUM'));
    GetField('PROP','STREET').AsString          := tdbfield('FUNDPROP','PSTREET');
    GetField('PROP','CITY').AsString            := tdbfield('FUNDPROP','PCITY');
    GetField('PROP','STATE').AsString           := tdbfield('FUNDPROP','PSTATE');
    GetField('PROP','ZIP').AsString             := tdbfield('FUNDPROP','PZIP');
    GetField('PROP','PHONE').AsString           := tdbfield('FUNDPROP','PPHONE');
    GetField('PROP','PLASTNAME').AsString       := tdbfield('FUNDPROP','PLASTNAME');
    GetField('PROP','PPOSTNET').AsString        := tdbfield('FUNDPROP','PPOSTNET');
    GetField('PROP','OLASTNAME').AsString       := tdbfield('FUNDPROP','OLASTNAME');
    GetField('PROP','OFIRSTNAME').AsString      := tdbfield('FUNDPROP','OFIRSTNAME');
//  GetField('PROP','OSALUT').AsString          := GetField('FUNDPROP','OSALUT').AsString;
    GetField('PROP','OPHONE').AsString          := tdbfield('FUNDPROP','OPHONE');
    GetField('PROP','OADDRESS').AsString        := tdbfield('FUNDPROP','OADDRESS');
    GetField('PROP','OADDRESS2').AsString       := tdbfield('FUNDPROP','OADDRESS2');
    GetField('PROP','OCITY').AsString           := tdbfield('FUNDPROP','OCITY');
    GetField('PROP','OSTATE').AsString          := tdbfield('FUNDPROP','OSTATE');
    GetField('PROP','OZIP').AsString            := tdbfield('FUNDPROP','OZIP');
    GetField('PROP','FUNDADDR').AsString        := 'Y';
    GetTable('PROP').Post;

    Application.ProcessMessages;
    A('FUNDPROP').Skip(1);
  end;
  CloseApollo('FUNDPROP');
  CloseApollo('PROP');


end;

procedure TConvDbaseForm.FundActionButtonClick(Sender: TObject);
Var DateVar : String;
begin
  inherited;
  Open_Query('FUNDACTION',true,'SELECT * FROM FUNDACTION WHERE 1=2');
  Open_Query('FUNDEVENT',false,'SELECT * FROM FUNDEVENT');
  Open_Query('FUNDACTIONTYPE',false,'SELECT * FROM FUNDACTIONTYPE');
  Net_Open(DirectoryField.Text + '\FUNDS\DBF\LETTER.DBF','S','LETTER');

  While Not A('LETTER').Eof do begin
    If A('FUNDEVENT').ExactQueryLocate('CODE',tdbfield('LETTER','FUNDCODE')) then begin
      DateVar := AddExpr(FormatDateTime('YYYY-MM-DD',GetField('LETTER','DATE').AsDateTime));
      A('FUNDACTION').UpdateSQL('SELECT * FROM FUNDACTION WHERE FUNDEVENTID = ' + GetField('FUNDEVENT','FUNDEVENTID').AsString + ' AND DATEDONE = ' + DateVar + ' AND DESCR = ' + edbfield('LETTER','DESC'));
      PutInUpdateMode('FUNDACTION');
      If A('FUNDACTIONTYPE').ExactQueryLocate('CODE',tdbfield('LETTER','TYPE')) then
        GetField('FUNDACTION','FUNDACTIONTYPEID').AsString := GetField('FUNDACTIONTYPE','FUNDACTIONTYPEID').AsString;
      GetField('FUNDACTION','FUNDEVENTID').AsString := GetField('FUNDEVENT','FUNDEVENTID').AsString;
      GetField('FUNDACTION','DATEDONE').AsDateTime  := GetField('LETTER','DATE').AsDateTime;
      GetField('FUNDACTION','DESCR').AsString       := GetField('LETTER','DESC').AsString;
      GetTable('FUNDACTION').Post;
    end;
    A('LETTER').Skip(1);
  end;

  CloseApollo('FUNDEVENT');
  CloseApollo('FUNDACTION');
  CloseApollo('FUNDACTIONTYPE');
  CloseApollo('LETTER');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.FundCheckButtonClick(Sender: TObject);
Var DateRec : String;
    StrNum  : String;
begin
  inherited;
  Open_Query('FUNDCHECK',true,'SELECT * FROM FUNDCHECK WHERE 1=2');

  Open_Query('FUNDEVENT',false,'SELECT * FROM FUNDEVENT');
  Open_Query('PROPSUBTYPE',false,'SELECT * FROM PROPSUBTYPE');
  Open_Query('FUNDACTIONTYPE',false,'SELECT * FROM FUNDACTIONTYPE');
  Open_Query('PROP',false,'SELECT PROPID, PROPCODE FROM PROP');
  Net_Open(DirectoryField.Text + '\FUNDS\DBF\CHECK.DBF','S','CHECK');
  A('CHECK').SetOrder(3);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('CHECK').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));
  Gauge.MaxValue := A('CHECK').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('CHECK').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('FUNDEVENT').ExactQueryLocate('CODE',tdbfield('CHECK','FUNDCODE')) then begin
      DateRec := AddExpr(FormatDateTime('YYYY-MM-DD',GetField('CHECK','DATE').AsDateTime));
      StrNum  := alltrim(tdbfield('CHECK','PSTRNUM'));
      A('FUNDCHECK').UpdateSQL('SELECT * FROM FUNDCHECK WHERE FUNDEVENTID = ' + GetField('FUNDEVENT','FUNDEVENTID').AsString + ' AND DATEREC = ' + DateRec + ' AND STREET = ' + edbfield('CHECK','PSTREET') + ' AND STRNUM = ' + AddExpr(StrNum) + ' AND NAME = ' + edbfield('CHECK','NAME'));
      PutInUpdateMode('FUNDCHECK');
      GetField('FUNDCHECK','FUNDEVENTID').AsString := GetField('FUNDEVENT','FUNDEVENTID').AsString;
      GetField('FUNDCHECK','DATEREC').AsDateTime   := GetField('CHECK','DATE').AsDateTime;
      GetField('FUNDCHECK','NAME').AsString        := GetField('CHECK','NAME').AsString;
      GetField('FUNDCHECK','AMOUNT').AsFloat       := GetField('CHECK','AMOUNT').AsFloat;
      GetField('FUNDCHECK','STRNUM').AsString      := alltrim(tdbfield('CHECK','PSTRNUM'));
      GetField('FUNDCHECK','STREET').AsString      := tdbfield('CHECK','PSTREET');
      GetField('FUNDCHECK','ROOMAPT').AsString     := tdbfield('CHECK','PROOMAPT');
      GetField('FUNDCHECK','CITY').AsString        := tdbfield('CHECK','CITY');
      GetField('FUNDCHECK','STATE').AsString       := tdbfield('CHECK','STATE');
      GetField('FUNDCHECK','ZIP').AsString         := tdbfield('CHECK','ZIP');

      If A('PROP').ExactQueryLocate('PROPCODE',tdbfield('CHECK','PROPCODE')) then
        GetField('FUNDCHECK','PROPID').AsString := GetField('PROP','PROPID').AsString;

      If A('PROPSUBTYPE').ExactQueryLocate('CODE',tdbfield('CHECK','PROPTYPE')) then
        GetField('FUNDCHECK','PROPSUBTYPEID').AsString := GetField('PROPSUBTYPE','PROPSUBTYPEID').AsString;

      If A('FUNDACTIONTYPE').ExactQueryLocate('CODE',tdbfield('CHECK','MAILTYPE')) then
        GetField('FUNDCHECK','FUNDACTIONTYPEID').AsString := GetField('FUNDACTIONTYPE','FUNDACTIONTYPEID').AsString;

      GetTable('FUNDCHECK').Post;

      AddStatusListBox(ListBox1,'Converting Fund Drive Checks:  PropCode = ' + tdbfield('CHECK','PROPCODE') + ' Date = ' + GetField('CHECK','DATE').AsString);
    end;
    A('CHECK').Skip(1);
  end;

  CloseApollo('FUNDACTIONTYPE');
  CloseApollo('FUNDEVENT');
  CloseApollo('PROP');
  CloseApollo('FUNDCHECK');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('CHECK');

  ShowMessage('Done');
end;


procedure TConvDbaseForm.PersTypeButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert MEMCODE . . . . ');
  Open_Query('PERSTYPE',true,'SELECT * FROM PERSTYPE WHERE 1=2');
  Open_Query('PERSCOMMPOS',true,'SELECT * FROM PERSCOMMPOS WHERE 1=2');
  Open_Query('PERSCOMMTYPE',true,'SELECT * FROM PERSCOMMTYPE WHERE 1=2');
  Open_Query('LOSAPCREDITTYPE',true,'SELECT * FROM LOSAPCREDITTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEMEMTYPE' then begin
      A('PERSTYPE').UpdateSQL('SELECT * FROM PERSTYPE WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSTYPE').RecordsExist then
        GetTable('PERSTYPE').Edit
      else
        GetTable('PERSTYPE').Append;
      GetField('PERSTYPE','FDID').AsString   := mFireID;
      GetField('PERSTYPE','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSTYPE','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSTYPE').Post;
    end else if tdbfield('MEMCODE','FIELD') = 'COMMITTEES' then begin
      A('PERSCOMMTYPE').UpdateSQL('SELECT * FROM PERSCOMMTYPE WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSCOMMTYPE').RecordsExist then
        GetTable('PERSCOMMTYPE').Edit
      else
        GetTable('PERSCOMMTYPE').Append;
      GetField('PERSCOMMTYPE','FDID').AsString   := mFireID;
      GetField('PERSCOMMTYPE','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSCOMMTYPE','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSCOMMTYPE').Post;
    end else if tdbfield('MEMCODE','FIELD') = 'COMMPOS' then begin
      A('PERSCOMMPOS').UpdateSQL('SELECT * FROM PERSCOMMPOS WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSCOMMPOS').RecordsExist then
        GetTable('PERSCOMMPOS').Edit
      else
        GetTable('PERSCOMMPOS').Append;
      GetField('PERSCOMMPOS','FDID').AsString   := mFireID;
      GetField('PERSCOMMPOS','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSCOMMPOS','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSCOMMPOS').Post;
    end else if tdbfield('MEMCODE','FIELD') = 'SERVCODE' then begin
      A('LOSAPCREDITTYPE').UpdateSQL('SELECT * FROM LOSAPCREDITTYPE WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('LOSAPCREDITTYPE').RecordsExist then
        GetTable('LOSAPCREDITTYPE').Edit
      else
        GetTable('LOSAPCREDITTYPE').Append;
      GetField('LOSAPCREDITTYPE','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('LOSAPCREDITTYPE','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('LOSAPCREDITTYPE').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSTYPE');
  CloseApollo('PERSCOMMTYPE');
  CloseApollo('PERSCOMMPOS');
  CloseApollo('LOSAPCREDITTYPE');
  CloseApollo('MEMCODE');
  AddStatusListBox(ListBox1,'Convert MEMCODE . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispBoxButtonClick(Sender: TObject);
begin
  Open_Query('DISPBOX',true,'SELECT * FROM DISPBOX WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\DISPBOX.DBF','S','OLDDISPBOX');
  Gauge.MaxValue := A('OLDDISPBOX').RecordCount;
  Gauge.Progress := 0; 
  While Not A('OLDDISPBOX').Eof do begin
    Gauge.Progress := Gauge.Progress + 1; 
    Application.ProcessMessages;
    A('DISPBOX').UpdateSQL('SELECT * FROM DISPBOX WHERE CODE = ' + edbfield('OLDDISPBOX','BOXCODE'));
    If A('DISPBOX').RecordsExist then
      GetTable('DISPBOX').Edit
    else
      GetTable('DISPBOX').Append;
    GetField('DISPBOX','NARR').AsString   := GetField('OLDDISPBOX','NARR').AsString;
    GetField('DISPBOX','CODE').AsString   := GetField('OLDDISPBOX','BOXCODE').AsString;
    GetField('DISPBOX','DESCR').AsString  := GetField('OLDDISPBOX','DESC').AsString;
    GetField('DISPBOX','ALARM1').AsString := GetField('OLDDISPBOX','ALARM1').AsString;
    GetField('DISPBOX','ALARM2').AsString := GetField('OLDDISPBOX','ALARM2').AsString;
    GetField('DISPBOX','ALARM3').AsString := GetField('OLDDISPBOX','ALARM3').AsString;
    GetTable('DISPBOX').Post;
    A('OLDDISPBOX').Skip(1);
  end;
  CloseApollo('OLDDISPBOX');
  CloseApollo('DISPBOX');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersRankButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert PERSRANK . . . . ');
  Open_Query('PERSRANK',true,'SELECT * FROM PERSRANK WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\OFFICE.DBF','S','OFFICE');
  While Not A('OFFICE').Eof do begin
    A('PERSRANK').UpdateSQL('SELECT * FROM PERSRANK WHERE CODE = ' + edbfield('OFFICE','OFFCODE'));
    If A('PERSRANK').RecordsExist then
      GetTable('PERSRANK').Edit
    else
      GetTable('PERSRANK').Append;

    GetField('PERSRANK','FDID').AsString   := mFireID;
    GetField('PERSRANK','CODE').AsString   := GetField('OFFICE','OFFCODE').AsString;
    GetField('PERSRANK','DESCR').AsString  := GetField('OFFICE','DESC').AsString;
    GetField('PERSRANK','POINT').AsString  := GetField('OFFICE','SERVICE').AsString;

    GetTable('PERSRANK').Post;
    A('OFFICE').Skip(1);
  end;
  CloseApollo('PERSRANK');
  CloseApollo('OFFICE');

  AddStatusListBox(ListBox1,'Convert PERSRANK . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersRankHistButtonClick(Sender: TObject);
begin
  Open_Query('PERSRANKHIST',true,'SELECT * FROM PERSRANKHIST WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('PERSRANK',false,'SELECT CODE, PERSRANKID FROM PERSRANK');

  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\TERM.DBF','S','TERM');

  Gauge.MaxValue := A('TERM').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('TERM').Eof do begin
    Gauge.Progress := Gauge.Progress + 1; 
    Application.ProcessMessages;
    If A('PERS').ExactQueryLocate('PERSCODE',dbfield('TERM','MEMCODE')) then begin

      If A('PERSRANK').ExactQueryLocate('CODE',dbfield('TERM','OFFCODE')) then begin


        A('PERSRANKHIST').UpdateSQL('SELECT * FROM PERSRANKHIST WHERE PERSID = ' + GetField('PERS','PERSID').AsString +
                                    ' AND PERSRANKID = ' + GetField('PERSRANK','PERSRANKID').AsString +
                                    ' AND DATETIMESTART = ' + AddExpr(FormatDateTime('YYYY-MM-DD',GetField('TERM','START').AsDateTime)));
        If A('PERSRANKHIST').RecordsExist then
          A('PERSRANKHIST').edit
        else  
          A('PERSRANKHIST').Append;
        GetField('PERSRANKHIST','PERSID').AsString        := GetField('PERS','PERSID').AsString;
        GetField('PERSRANKHIST','PERSRANKID').AsString    := GetField('PERSRANK','PERSRANKID').AsString;
        GetField('PERSRANKHIST','DATETIMESTART').AsString := GetField('TERM','START').AsString;
        GetField('PERSRANKHIST','DATETIMEEND').AsString   := GetField('TERM','FINISH').AsString;
        GetField('PERSRANKHIST','POINT').AsString         := GetField('TERM','SERVICE').AsString;
        If (GetField('TERM','START').AsDateTime > 0) and (GetField('TERM','FINISH').AsDateTime > 0) then
          GetField('PERSRANKHIST','DATETIMELOSAP').AsDateTime := GetField('TERM','START').AsDateTime + (GetField('TERM','FINISH').AsDateTime - GetField('TERM','START').AsDateTime) / 2
        else if (GetField('TERM','START').AsDateTime > 0) then
          GetField('PERSRANKHIST','DATETIMELOSAP').AsDateTime := GetField('TERM','START').AsDateTime + (Now - GetField('TERM','START').AsDateTime) / 2;

        GetTable('PERSRANKHIST').Post;
      end
    end;

    A('TERM').Skip(1);
  end;
  CloseApollo('PERSRANKHIST');
  CloseApollo('PERSRANK');
  CloseApollo('PERS');
  CloseApollo('TERM');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispSubTypeButtonClick(Sender: TObject);
Var Code : String;
begin
  Open_Query('DISPCALLTYPE',false,'SELECT CODE,DISPCALLTYPEID FROM DISPCALLTYPE');
  Open_Query('DISPSUBTYPE',true,'SELECT * FROM DISPSUBTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\CODE.DBF','S','CODE');
  Gauge.MaxValue := A('CODE').QueryRecCount;
  Gauge.Progress := 0;
  While Not A('CODE').Eof do begin
    If substr(dbfield('CODE','FIELD'),1,2) = 'IT' then begin
      Code := alltrim(substr(dbfield('CODE','FIELD'),3,8));
      If A('DISPCALLTYPE').ExactQueryLocate('CODE',Code) then begin
        A('DISPSUBTYPE').UpdateSQL('SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = ' + GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString + ' AND CODE = ' + edbfield('CODE','CODE'));
        If A('DISPSUBTYPE').RecordsExist then
          GetTable('DISPSUBTYPE').Edit
        else
          GetTable('DISPSUBTYPE').Append;

        GetField('DISPSUBTYPE','DISPCALLTYPEID').AsString := GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString;
        GetField('DISPSUBTYPE','CODE').AsString           := GetField('CODE','CODE').AsString;
        GetField('DISPSUBTYPE','DESCR').AsString          := GetField('CODE','DESC').AsString;
        GetTable('DISPSUBTYPE').Post;
      end;
    end;
    Gauge.Progress := Gauge.Progress + 1; 
    Application.ProcessMessages;
    A('CODE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
  CloseApollo('DISPSUBTYPE');
  CloseApollo('CODE');

  ShowMessage('Done');

end;

procedure TConvDbaseForm.PropStatTypeButtonClick(Sender: TObject);
begin
  Open_Query('PROPSTATTYPE',true,'SELECT * FROM PROPSTATTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PROPERTY\SUPPORT\PROPCODE.DBF','S','PROPCODE');
  While Not A('PROPCODE').Eof do begin
    If (tdbfield('PROPCODE','FIELD') = 'PSSTAT') and Not (tdbfield('PROPCODE','CODE') = '') then begin
      A('PROPSTATTYPE').UpdateSQL('SELECT * FROM PROPSTATTYPE WHERE CODE = ' + edbfield('PROPCODE','CODE'));
      If A('PROPSTATTYPE').RecordsExist then
        GetTable('PROPSTATTYPE').Edit
      else
        GetTable('PROPSTATTYPE').Append;
      GetField('PROPSTATTYPE','CODE').AsString   := GetField('PROPCODE','CODE').AsString;
      GetField('PROPSTATTYPE','DESCR').AsString  := GetField('PROPCODE','DESC').AsString;
      GetTable('PROPSTATTYPE').Post;
    end;
    A('PROPCODE').Skip(1);
  end;
  CloseApollo('PROPSTATTYPE');
  CloseApollo('PROPCODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.BoxButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('DISPBOX',true,'SELECT * FROM DISPBOX WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PROPERTY\DBF\BOX.DBF','S','BOX');

  While Not A('BOX').Eof do begin
    A('DISPBOX').UpdateSQL('SELECT * FROM DISPBOX WHERE CODE = ' + edbfield('BOX','BOXCODE'));
    If A('DISPBOX').RecordsExist then
      GetTable('DISPBOX').Edit
    else
      GetTable('DISPBOX').Append;
    GetField('DISPBOX','CODE').AsString   := GetField('BOX','BOXCODE').AsString;
    GetField('DISPBOX','DESCR').AsString  := GetField('BOX','DESC').AsString;
    GetField('DISPBOX','NARR').AsString   := GetField('BOX','NARR').AsString;
    GetTable('DISPBOX').Post;
    A('BOX').Skip(1);
  end;
  CloseApollo('BOX');
  CloseApollo('DISPBOX');

  ShowMessage('Done');
end;


procedure TConvDbaseForm.PropStatButtonClick(Sender: TObject);
Var PropID         : String;
    PropStatTypeID : String;
begin
  Open_Query('PROPSTAT',true,'SELECT * FROM PROPSTAT WHERE 1=2');
  Open_Query('PROPSTATTYPE',false,'SELECT PROPSTATTYPEID FROM PROPSTATTYPE WHERE 1=2');
  Open_Query('PROP',false,'SELECT PROPID FROM PROP WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PROPERTY\DBF\PROPSTAT.DBF','S','PS');
  Gauge.MaxValue := A('PS').RecordCount;

  While Not A('PS').Eof do begin

    A('PROPSTAT').UpdateSQL('SELECT * FROM PROPSTAT WHERE 1=2');
    A('PROPSTAT').Append;

    A('PROPSTATTYPE').UpdateSQL('SELECT PROPSTATTYPEID FROM PROPSTATTYPE WHERE CODE = ' + edbfield('PS','CODE'));
    If A('PROPSTATTYPE').RecordsExist then
      GetField('PROPSTAT','PROPSTATTYPEID').AsString := GetField('PROPSTATTYPE','PROPSTATTYPEID').AsString;

    A('PROP').UpdateSQL('SELECT PROPID FROM PROP WHERE PROPCODE = ' + edbfield('PS','PROPCODE'));
    If A('PROP').RecordsExist then
      GetField('PROPSTAT','PROPID').AsString := GetField('PROP','PROPID').AsString;


    If Not (alltrim(substr(GetField('PS','DATEOUT').AsString,1,2)) = '') then
      GetField('PROPSTAT','DATETIMEOUT').AsDateTime := GetField('PS','DATEOUT').AsDateTime + GetRealTime(dbfield('PS','TIMEOUT'));
    If Not (alltrim(substr(GetField('PS','DATEIN').AsString,1,2)) = '') then
      GetField('PROPSTAT','DATETIMEIN').AsDateTime  := GetField('PS','DATEIN').AsDateTime + GetRealTime(dbfield('PS','TIMEIN'));
    If Not (alltrim(substr(GetField('PS','EXPDATE').AsString,1,2)) = '') then
      GetField('PROPSTAT','DATETIMEIN').AsDateTime  := GetField('PS','EXPDATE').AsDateTime + GetRealTime(dbfield('PS','EXPTIME'));

    GetField('PROPSTAT','CALLNAME').AsString  := GetField('PS','CALLER').AsString;
    GetField('PROPSTAT','CALLPHONE').AsString := GetField('PS','PHONE').AsString;
    GetField('PROPSTAT','CALLDESCR').AsString := GetField('PS','COMMENT').AsString;
    GetField('PROPSTAT','AUTHOUT').AsString   := GetField('PS','AUTHOUT').AsString;
    GetField('PROPSTAT','AUTHIN').AsString    := GetField('PS','AUTHIN').AsString;

    A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('PS','MEMOUT'));
    If A('PERS').RecordsExist then
      GetField('PROPSTAT','PERSIDOUT').AsString := GetField('PERS','PERSID').AsString;

    A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('PS','MEMIN'));
    If A('PERS').RecordsExist then
      GetField('PROPSTAT','PERSIDIN').AsString := GetField('PERS','PERSID').AsString;

    GetTable('PROPSTAT').Post;

    A('PS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.Processmessages;
  end;

  CloseApollo('PERS');
  CloseApollo('PROP');
  CloseApollo('PROPSTAT');
  CloseApollo('PROPSTATTYPE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TConvDbaseForm.PropHazMatButtonClick(Sender: TObject);
Var PropID   : String;
    PropCode : String;
begin

  Open_Query('PROPHAZMAT',true,'SELECT * FROM PROPHAZMAT WHERE 1=2');
  Open_Query('PROP',false,'SELECT PROPID FROM PROP WHERE 1=2');
  Open_Query('CHEM',false,'SELECT UNNO, CHEMID FROM CHEM WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PROPERTY\DBF\HAZMAT.DBF','S','HAZMAT');

  Gauge.MaxValue := A('HAZMAT').RecordCount;
  Gauge.Progress := 0;

  While Not A('HAZMAT').Eof do begin
    PropCode := tdbfield('HAZMAT','PROPCODE');
    A('PROP').UpdateSQL('SELECT PROPID FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode));
    If A('PROP').RecordsExist then begin
      A('PROPHAZMAT').UpdateSQL('SELECT * FROM PROPHAZMAT WHERE PROPID    = ' + GetField('PROP','PROPID').AsString + ' AND ' +
                                                               'CHEM_NAME = ' + edbfield('HAZMAT','CHEM_NAME') + ' AND ' +
                                                               'QUANTITY  = ' + edbfield('HAZMAT','QUANTITY') + ' AND ' +
                                                               'LOCATION  = ' + edbfield('HAZMAT','LOCATION'));
      If A('PROPHAZMAT').RecordsExist then
        A('PROPHAZMAT').Edit
      else
        A('PROPHAZMAT').Append;
      GetField('PROPHAZMAT','CHEM_NAME').AsString := GetField('HAZMAT','CHEM_NAME').AsString;
      GetField('PROPHAZMAT','QUANTITY').AsString  := GetField('HAZMAT','QUANTITY').AsString;
      GetField('PROPHAZMAT','LOCATION').AsString  := GetField('HAZMAT','LOCATION').AsString;
      GetField('PROPHAZMAT','PROPID').AsString    := GetField('PROP','PROPID').AsString;

      If Not (tdbfield('HAZMAT','UNNO') = '') then begin
        A('CHEM').UpdateSQL('SELECT CHEMID FROM CHEM WHERE UNNO = ' + edbfield('HAZMAT','UNNO'));
        If A('CHEM').RecordsExist then
          GetField('PROPHAZMAT','CHEMID').AsString := GetField('CHEM','CHEMID').AsString;
      end;

      GetTable('PROPHAZMAT').Post;
    end;
    A('HAZMAT').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.Processmessages;
  end;

  CloseApollo('PROP');
  CloseApollo('CHEM');
  CloseApollo('PROPHAZMAT');
  CloseApollo('HAZMAT');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PropSubTypeButtonClick(Sender: TObject);
begin
  Open_Query('PROPSUBTYPE',true,'SELECT * FROM PROPSUBTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PROPERTY\SUPPORT\PROPCODE.DBF','S','PROPCODE');
  While Not A('PROPCODE').Eof do begin
    If (tdbfield('PROPCODE','FIELD') = 'PRPROPTYPE') and Not (tdbfield('PROPCODE','CODE') = '') then begin
      A('PROPSUBTYPE').UpdateSQL('SELECT * FROM PROPSUBTYPE WHERE CODE = ' + edbfield('PROPCODE','CODE'));
      If A('PROPSUBTYPE').RecordsExist then
        GetTable('PROPSUBTYPE').Edit
      else
        GetTable('PROPSUBTYPE').Append;
      GetField('PROPSUBTYPE','CODE').AsString   := GetField('PROPCODE','CODE').AsString;
      GetField('PROPSUBTYPE','DESCR').AsString  := GetField('PROPCODE','DESC').AsString;
      GetTable('PROPSUBTYPE').Post;
    end;
    A('PROPCODE').Skip(1);
  end;
  CloseApollo('PROPSUBTYPE');
  CloseApollo('PROPCODE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersDriverButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert PERSDRIVER . . . . ');
  Open_Query('PERSDRIVER',true,'SELECT * FROM PERSDRIVER WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEMDRIVER' then begin
      A('PERSDRIVER').UpdateSQL('SELECT * FROM PERSDRIVER WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSDRIVER').RecordsExist then
        GetTable('PERSDRIVER').Edit
      else
        GetTable('PERSDRIVER').Append;
      GetField('PERSDRIVER','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSDRIVER','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSDRIVER').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSDRIVER');
  CloseApollo('MEMCODE');
  AddStatusListBox(ListBox1,'Convert PERSDRIVER . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersPointTypeButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox1,'Convert PERSPOINTTYPE . . . . ');
  Open_Query('PERSPOINTTYPE',true,'SELECT * FROM PERSPOINTTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'POINTTYPE' then begin
      A('PERSPOINTTYPE').UpdateSQL('SELECT * FROM PERSPOINTTYPE WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSPOINTTYPE').RecordsExist then
        GetTable('PERSPOINTTYPE').Edit
      else
        GetTable('PERSPOINTTYPE').Append;
      GetField('PERSPOINTTYPE','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSPOINTTYPE','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;

      If tdbfield('MEMCODE','CODE') = 'S' then begin
        GetField('PERSPOINTTYPE','COLOR').AsString   := 'clblue';
        GetField('PERSPOINTTYPE','SORTORD').AsString := '1';
      end else if tdbfield('MEMCODE','CODE') = 'Y' then begin
        GetField('PERSPOINTTYPE','COLOR').AsString   := 'clmaroon';
        GetField('PERSPOINTTYPE','SORTORD').AsString := '2';
      end;

      GetTable('PERSPOINTTYPE').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSPOINTTYPE');
  CloseApollo('MEMCODE');
  AddStatusListBox(ListBox1,'Convert PERSPOINTTYPE . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersDLClassButtonClick(Sender: TObject);
begin
  inherited;
  AddStatusListBox(ListBox1,'Convert PERSDLCLASS . . . . ');
  Open_Query('PERSDLCLASS',true,'SELECT * FROM PERSDLCLASS WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEDLCLASS' then begin
      A('PERSDLCLASS').UpdateSQL('SELECT * FROM PERSDLCLASS WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSDLCLASS').RecordsExist then
        GetTable('PERSDLCLASS').Edit
      else
        GetTable('PERSDLCLASS').Append;
        
      GetField('PERSDLCLASS','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      If tdbfield('MEMCODE','DESC') = '' then
        GetField('PERSDLCLASS','DESCR').AsString  := 'Type ' + GetField('MEMCODE','CODE').AsString
      else
        GetField('PERSDLCLASS','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
        
      GetTable('PERSDLCLASS').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSDLCLASS');
  CloseApollo('MEMCODE');
  AddStatusListBox(ListBox1,'Convert PERSDLCLASS . . . . Done');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.ConvertNfirsMain;
Var DateTimeAlarm  : TDateTime;
    DateTimeOut    : TDateTime;
    DateTimeArr    : TDateTime;
    DateTimeCont   : TDateTime;
    DateTimeIn     : TDateTime;
begin
  DateTimeAlarm := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEALARM'));
  If DateTimeAlarm > 0 then
    GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime := DateTimeAlarm;

  DateTimeOut   := ConvertDateTime(GetField('INC','DATEOUT').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEOUT'));
  If DateTimeAlarm > 0 then
    GetField('NFIRSMAIN','DATETIMEOUT').AsDateTime := DateTimeOut;

  DateTimeArr   := ConvertDateTime(GetField('INC','DATEARR').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEARR'));
  If DateTimeArr > 0 then
    GetField('NFIRSMAIN','DATETIMEARR').AsDateTime := DateTimeArr;

  DateTimeCont  := ConvertDateTime(GetField('INC','DATECONT').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMECONT'));
  If DateTimeCont > 0 then
    GetField('NFIRSMAIN','DATETIMECONT').AsDateTime := DateTimeCont;

  DateTimeIn    := ConvertDateTime(GetField('INC','DATEIN').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEIN'));
  If DateTimeIn > 0 then
    GetField('NFIRSMAIN','DATETIMEIN').AsDateTime := DateTimeIn;

  GetField('NFIRSMAIN','EVLENGTH').AsFloat         := GetField('INC','LENGTH').AsFloat;
  GetField('NFIRSMAIN','NARR').AsString            := A('INC').GetMemo('ADDREMARK',1000);
end;
             

procedure TConvDbaseForm.ConvertNfirsApp(Fdid, IncNum, NfirsMainID: String);
Var UnitNum : String;
begin
  A('APPINC').SetScope(Fdid + IncNum,Fdid + IncNum);
  While Not A('APPINC').Eof do begin
    UnitNum := tdbfield('APPINC','INVNUM');
    A('NFIRSAPP').ExactQueryLocateAndPutInEditMode(['NFIRSMAINID','UNITNUM'],[NfirsMainID,UnitNum]);

    GetField('NFIRSAPP','NFIRSMAINID').AsString := NfirsMainID;
    GetField('NFIRSAPP','UNITNUM').AsString     := UnitNum;
    GetField('NFIRSAPP','NARR').AsString        := GetField('APPINC','NARRATIVE').AsString;
    GetField('NFIRSAPP','OLDDISPNUM').AsString  := GetField('APPINC','DISPNUM').AsString;
    GetField('NFIRSAPP','EVLENGTH').AsString    := GetField('APPINC','TIME').AsString;
    
    If A('INV').ExactQueryLocate('UNITNUM',UnitNum) then
      GetField('NFIRSAPP','N5AU').AsString := tdbfield('INV','N5AU');

    A('NFIRSAPP').Post;
    A('APPINC').Skip(1);

    If Not (tdbfield('APPINC','CFUTURE1') = '') then begin
      If A('NFIRSAPPFOCODE').ExactQueryLocate('CODE',tdbfield('APPINC','CFUTURE1')) then begin
        A('NFIRSAPPFOHIST').UpdateSQL('SELECT * FROM NFIRSAPPFOHIST WHERE NFIRSAPPID = ' + GetField('NFIRSAPP','NFIRSAPPID').AsString + ' AND NFIRSAPPFOCODEID = ' + GetField('NFIRSAPPFOCODE','NFIRSAPPFOCODEID').AsString);
        If A('NFIRSAPPFOHIST').RecordsExist then
          A('NFIRSAPPFOHIST').Edit
        else
          A('NFIRSAPPFOHIST').Append;
        GetField('NFIRSAPPFOHIST','NFIRSAPPID').AsString       := GetField('NFIRSAPP','NFIRSAPPID').AsString;
        GetField('NFIRSAPPFOHIST','NFIRSAPPFOCODEID').AsString := GetField('NFIRSAPPFOCODE','NFIRSAPPFOCODEID').AsString;
        A('NFIRSAPPFOHIST').Post;
      end;
    end;

  end;
end;

procedure TConvDbaseForm.ConvertNfirsFdidComp(Fdid, IncNum, NfirsMainID: String);
Var UnitNum : String;
begin
  A('INCCOMP').SetScope(Fdid + IncNum,Fdid + IncNum);
  While Not A('INCCOMP').Eof do begin
    If A('FDIDCOMP').ExactQueryLocate('CODE',tdbfield('INCCOMP','COMPANY')) then begin
      A('NFIRSFDIDCOMP').UpdateSQL('SELECT * FROM NFIRSFDIDCOMP WHERE NFIRSMAINID = ' + NfirsMainID + ' AND FDIDCOMPID = ' + GetField('FDIDCOMP','FDIDCOMPID').AsString);
      If A('NFIRSFDIDCOMP').RecordsExist then
        A('NFIRSFDIDCOMP').Edit
      else
        A('NFIRSFDIDCOMP').Append;
      GetField('NFIRSFDIDCOMP','NFIRSMAINID').AsString := NfirsMainID;
      GetField('NFIRSFDIDCOMP','FDIDCOMPID').AsString  := GetField('FDIDCOMP','FDIDCOMPID').AsString;
      A('NFIRSFDIDCOMP').Post;
    end;
    A('INCCOMP').Skip(1);
  end;
end;


procedure TConvDbaseForm.ConvertNfirsAtt(Fdid, IncNum, NfirsMainID: String);
Var MemCode       : String;
    PersID        : String;
    DateTimeEntry : TDateTime;
begin
  A('INCATT').SetScope(FDID + IncNum,FDID + IncNum);
  While Not A('INCATT').Eof do begin
    MemCode := tdbfield('INCATT','MEMCODE');
    if A('PERS').ExactQueryLocate('PERSCODE',MemCode) then
      PersID := GetField('PERS','PERSID').AsString
    else
      PersID := '';
    If Not (PersID = '') and Not (NfirsMainID = '') then begin
      A('NFIRSATT').ExactQueryLocateAndPutInEditMode(['NFIRSMAINID','PERSID'],[NfirsMainID,PersID]);
      GetField('NFIRSATT','NFIRSMAINID').AsString := NfirsMainID;
      GetField('NFIRSATT','PERSID').AsString      := PersID;
      GetField('NFIRSATT','EVLENGTH').AsFloat     := GetField('INCATT','NFUTURE1').AsFloat;
      GetField('NFIRSATT','POINT').AsFloat        := GetField('INCATT','NFUTURE2').AsFloat;
      GetField('NFIRSATT','ENTRYCOMP').AsString   := GetField('INCATT','ENTRYBY').AsString;
      GetField('NFIRSATT','ENTRYMETH').AsString   := GetField('INCATT','ENTRYMETH').AsString;
      DateTimeEntry := ConvertDateTime(GetField('INCATT','ENTRYDATE').AsString,GetField('INCATT','ENTRYDATE').AsString,tdbfield('INCATT','ENTRYTIME'));
      If DateTimeEntry > 0 then
        GetField('NFIRSATT','DATETIMEENTRY').AsDateTime := DateTimeEntry;

      If A('PERSPOINTTYPE').ExactQueryLocate('CODE',tdbfield('INCATT','POINT')) then
        GetField('NFIRSATT','PERSPOINTTYPEID').AsString  := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;

      If A('NFIRSATTTASK').ExactQueryLocate('CODE',tdbfield('INCATT','CFUTURE1')) then
        GetField('NFIRSATT','NFIRSATTTASKID').AsString  := GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;

      If Not (tdbfield('INCATT','INVNUM') = '') then begin
        if A('NFIRSAPP').ExactQueryLocate(['NFIRSMAINID','UNITNUM'],[NfirsMainID,tdbfield('INCATT','INVNUM')]) then
          Getfield('NFIRSATT','NFIRSAPPID').AsString := GetField('NFIRSAPP','NFIRSAPPID').AsString;
      end;    
        
      A('NFIRSATT').Post;
    end;
    A('INCATT').Skip(1);
  end;
end;

procedure TConvDbaseForm.NFIRSFIRButtonClick(Sender: TObject);
Var Fdid   : String;
    IncNum : String;
    ExpNum : String;
begin
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\NFIRSFIR.DBF','S','OLDNFIRSFIR');
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCIDENT.DBF','S','INC');
  A('INC').SetOrder(1);

  AddStatusListBox(ListBox1,'Convert NFIRSSTR . . . . ');
  Gauge.MaxValue := A('OLDNFIRSFIR').RecordCount;
  Gauge.Progress := 0;

  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSFIR',true,'SELECT * FROM NFIRSFIR WHERE 1=2');


  While Not A('OLDNFIRSFIR').Eof do begin
    Fdid   := tdbfield('OLDNFIRSFIR','FDID');
    IncNum := tdbfield('OLDNFIRSFIR','INCNUM');
    ExpNum := tdbfield('OLDNFIRSFIR','EXPNUM');

    Gauge.Progress := Gauge.Progress + 1;
    AddStatusListBox(ListBox1,'Converting ' + tdbfield('OLDNFIRSFIR','INCNUM'));
    Application.ProcessMessages;

    If Not (Fdid = '') and Not (IncNum = '') and Not (ExpNum = '') then begin
      dbseek('INC',Fdid + IncNum + ExpNum,false);
      A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
      If A('NFIRSMAIN').RecordsExist then begin
        A('NFIRSFIR').UpdateSQL('SELECT * FROM NFIRSFIR WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        If A('NFIRSFIR').RecordsExist then
          GetTable('NFIRSFIR').Edit
        else begin
          GetTable('NFIRSFIR').Append;
          GetField('NFIRSFIR','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
        end;
        CommonConvertNfirsFir('INC','IGFACTOR');
        A('NFIRSFIR').Post;
      end;
    end;
    A('OLDNFIRSFIR').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSFIR');
  CloseApollo('OLDNFIRSFIR');
  CloseApollo('INC');
  Gauge.Progress := 0;
  AddStatusListBox(ListBox1,'Convert NFIRSSTR . . . . Done ');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.RolodexTypeButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert ROLODEXTYPE . . . .');
  Open_Query('ROLODEXTYPE',true,'SELECT * FROM ROLODEXTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DICTION\SYSCODE.DBF','S','SYSCODE');
  While Not A('SYSCODE').Eof do begin
    If tdbfield('SYSCODE','FIELD') = 'RSTYPE' then begin
      A('ROLODEXTYPE').UpdateSQL('SELECT * FROM ROLODEXTYPE WHERE CODE = ' + edbfield('SYSCODE','CODE'));
      If A('ROLODEXTYPE').RecordsExist then
        GetTable('ROLODEXTYPE').Edit
      else
        GetTable('ROLODEXTYPE').Append;
      GetField('ROLODEXTYPE','CODE').AsString  := GetField('SYSCODE','CODE').AsString;
      GetField('ROLODEXTYPE','DESCR').AsString := GetField('SYSCODE','DESC').AsString;
      GetTable('ROLODEXTYPE').Post;
    end;
    A('SYSCODE').Skip(1);
  end;
  CloseApollo('ROLODEXTYPE');
  CloseApollo('SYSCODE');

  if SqlLookup('Y','INVVENDOR','ROLODEXTYPE','INVVENDOR')<>'Y' then
    TableInsert('ROLODEXTYPE',['DESCR','INVVENDOR'],['Vendor','Y']);

  AddStatusListBox(ListBox1,'Convert ROLODEXTYPE . . . .Done');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.RolodexButtonClick(Sender: TObject);
var iRolodexTypeid : Integer;
    iRedNMXID      : Integer;
begin
  AddStatusListBox(ListBox1,'Convert ROLODEX . . . .');
  Net_Open(DirectoryField.Text + '\DICTION\RESOURCE.DBF','S','RESOURCE');
  Gauge.MaxValue := A('RESOURCE').QueryRecCount;
  Gauge.Progress := 0;

  Open_Query('ROLODEXTYPE',false,'SELECT CODE, ROLODEXTYPEID FROM ROLODEXTYPE');
  Open_Query('ROLODEX',true,'SELECT * FROM ROLODEX WHERE 1=2');

  While Not A('RESOURCE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.Processmessages;

    If tdbfield('RESOURCE','DBF') = 'GENERAL' then begin

      A('ROLODEX').UpdateSQL('SELECT * FROM ROLODEX WHERE ' +
                             'CODE = ' + edbfield('RESOURCE','CODE') + ' AND ' +
                             'NAME = ' + edbfield('RESOURCE','NAME') + ' AND ' +
                             'COMPANY = ' + edbfield('RESOURCE','COMPANY') + ' AND ' +
                             'ADDRESS = ' + edbfield('RESOURCE','ADDRESS') + ' AND ' +
                             'PHONE1 = ' + edbfield('RESOURCE','PHONE1'));

      PutInUpdateMode('ROLODEX');

      GetField('ROLODEX','NAME').AsString    := GetField('RESOURCE','NAME').AsString;
      GetField('ROLODEX','CODE').AsString    := GetField('RESOURCE','CODE').AsString;
      GetField('ROLODEX','COMPANY').AsString := GetField('RESOURCE','COMPANY').AsString;
      GetField('ROLODEX','PHONE1').AsString  := GetField('RESOURCE','PHONE1').AsString;
      GetField('ROLODEX','PHONE2').AsString  := GetField('RESOURCE','PHONE2').AsString;
      GetField('ROLODEX','PHONE3').AsString  := GetField('RESOURCE','PHONE3').AsString;
      GetField('ROLODEX','PHONE4').AsString  := GetField('RESOURCE','PHONE4').AsString;
      GetField('ROLODEX','PHONE5').AsString  := GetField('RESOURCE','PHONE5').AsString;
      GetField('ROLODEX','EXT1').AsString    := GetField('RESOURCE','EXT1').AsString;
      GetField('ROLODEX','EXT2').AsString    := GetField('RESOURCE','EXT2').AsString;
      GetField('ROLODEX','EXT3').AsString    := GetField('RESOURCE','EXT3').AsString;
      GetField('ROLODEX','EXT4').AsString    := GetField('RESOURCE','EXT4').AsString;
      GetField('ROLODEX','EXT5').AsString    := GetField('RESOURCE','EXT5').AsString;
      GetField('ROLODEX','ADDRESS').AsString := GetField('RESOURCE','ADDRESS').AsString;
      GetField('ROLODEX','CITY').AsString    := GetField('RESOURCE','CITY').AsString;
      GetField('ROLODEX','STATE').AsString   := GetField('RESOURCE','STATE').AsString;
      GetField('ROLODEX','ZIP').AsString     := GetField('RESOURCE','ZIP').AsString;
      GetField('ROLODEX','NARR').AsString    := GetField('RESOURCE','NARR').AsString;
      If A('ROLODEXTYPE').ExactQueryLocate('CODE',tdbfield('RESOURCE','TYPE')) then
        GetField('ROLODEX','ROLODEXTYPEID').AsString := GetField('ROLODEXTYPE','ROLODEXTYPEID').AsString;

      GetTable('ROLODEX').Post;
    end;
    A('RESOURCE').Skip(1);
  end;
  CloseApollo('ROLODEXTYPE');
  CloseApollo('ROLODEX');
  CloseApollo('RESOURCE');

  ShowMessage('Done');
  AddStatusListBox(ListBox1,'Convert ROLODEX . . . .Done');
end;

procedure TConvDbaseForm.TableDefaultButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\DICTION\TEXTKEYS.DBF','S','TEXTKEYS');
  Open_Query('SYSNARR',true,'SELECT * FROM SYSNARR WHERE 1=2');

  While Not A('TEXTKEYS').Eof do begin

    A('SYSNARR').UpdateSQL('SELECT * FROM SYSNARR WHERE 1=2');
    GetTable('SYSNARR').Append;
    GetField('SYSNARR','FIELDNAME').AsString  := 'NARR';
    GetField('SYSNARR','SYSTABLEID').AsString := '2015';
    GetField('SYSNARR','DESCR').AsString      := tdbfield('TEXTKEYS','DESC');
    GetField('SYSNARR','NARR').AsString       := GetField('TEXTKEYS','NARR').AsString;
    GetTable('SYSNARR').Post;
    A('TEXTKEYS').Skip(1);

  end;
  CloseApollo('TEXTKEYS');
  CloseApollo('SYSNARR');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TopicButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If tdbfield('TRCODE','FIELD') = 'TOPIC' then begin
      A('NITRAINCAT1').UpdateSql('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbField('TRCODE','CODE'));
      If Not A('NITRAINCAT1').RecordsExist then begin
        GetTable('NITRAINCAT1').Append;
        GetField('NITRAINCAT1','ACTIVE').AsString       := 'Y';
        GetField('NITRAINCAT1','CODE').AsString         := dbfield('TRCODE','CODE');
        GetField('NITRAINCAT1','DESCR').AsString        := dbfield('TRCODE','DESC');
        GetTable('NITRAINCAT1').Post;
      end;  
    end;

    A('TRCODE').Skip(1);
  end;

  CloseApollo('NITRAINCAT1');
  CloseApollo('TRCODE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.CityButtonClick(Sender: TObject);
Var Zip : String;
begin
  Net_Open(DirectoryField.Text + '\DICTION\FIREDEPT.DBF','S','FIREDEPT');
  Open_Query('CITY',true,'SELECT * FROM CITY WHERE 1=2');
  While Not A('FIREDEPT').Eof do begin
    Zip := substr(dbfield('FIREDEPT','ZIP'),1,5);
    A('CITY').UpdateSQL('SELECT * FROM CITY WHERE ZIP = ' + AddExpr(Zip));
    PutInUpdateMode('CITY');
    GetField('CITY','CITY').AsString  := GetField('FIREDEPT','CITY').AsString;
    GetField('CITY','STATE').AsString := GetField('FIREDEPT','STATE').AsString;
    GetField('CITY','ZIP').AsString   := GetField('FIREDEPT','ZIP').AsString;
    A('CITY').Post;
    A('FIREDEPT').Skip(1);
  end;
  CloseApollo('FIREDEPT');
  CloseApollo('CITY');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvButtonClick(Sender: TObject);
Var ConvCode   : String;
    TypeVar    : String;
    SubTypeVar : String;
begin
  Net_Open(DirectoryField.Text + '\INVENTOR\DBF\INVENTOR.DBF','S','OLDINV');
  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\INVCODE.DBF','S','INVCODE');
  A('INVCODE').Setorder(1);

  Open_Query('INVSUBTYPE',false,'SELECT * FROM INVSUBTYPE');
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');

  Open_Query('INVOWNER',false,'SELECT * FROM INVOWNER');

  Open_Query('HOSERATING',false,'SELECT * FROM HOSERATING');
  Open_Query('HOSECOUPLE',false,'SELECT * FROM HOSECOUPLE');
  Open_Query('INVDISPOSAL',false,'SELECT * FROM INVDISPOSAL');
  Open_Query('INVDEPRMETH',false,'SELECT * FROM INVDEPRMETH');
  Open_Query('INVLOC',false,'SELECT * FROM INVLOC ORDER BY MAINCODE, SUBCODE');
  Open_Query('ROLODEX',false,'SELECT VENDNUM, ROLODEXID FROM ROLODEX');

  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\LOCATION.DBF','S','LOCATION');
  A('LOCATION').SetOrder(1);
  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\SUBLOC.DBF','S','SUBLOC');
  A('SUBLOC').SetOrder(1);

  Gauge.MaxValue := A('OLDINV').RecordCount;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  While Not A('OLDINV').Eof do begin
//  If Not (tdbfield('OLDINV','INVNUM') = '') then begin

      A('INV').UpdateSQL('SELECT * FROM INV WHERE ' +
                         'INVNUM = '   + edbfield('OLDINV','INVNUM')   + ' AND ' +
                         'MAINCODE = ' + edbfield('OLDINV','MAINCODE') + ' AND ' +
                         'SUBCODE = '  + edbfield('OLDINV','SUBCODE')  + ' AND ' +
                         'DESCR = '    + edbfield('OLDINV','DESC')     + ' AND ' +
                         'MANUFACT = ' + edbfield('OLDINV','MANUFACT') + ' AND ' +
                         'MODEL = '    + edbfield('OLDINV','MODEL') );
                         
      If A('INV').RecordsExist then
        GetTable('INV').Edit
      else
        GetTable('INV').Append;

      GetField('INV','INVNUM').AsString      := GetField('OLDINV','INVNUM').AsString;
      GetField('INV','UNITNUM').AsString     := GetField('OLDINV','UNITNUM').AsString;
      GetField('INV','TYPE').AsString        := GetField('OLDINV','TYPE').AsString;
      GetField('INV','FDID').AsString        := IIf(tdbfield('OLDINV','FDID') = '',mFireID,tdbfield('OLDINV','FDID'));

      If tdbfield('OLDINV','TYPE') = 'TRUCK' then
        GetField('INV','INCLUDE').AsString     := IIf(tdbfield('OLDINV','INCLUDE') = 'Y','Y','N');

      GetField('INV','DESCR').AsString       := GetField('OLDINV','DESC').AsString;

      If tdbfield('OLDINV','TYPE') = 'TRUCK' then begin
        If dbseek('INVCODE','TRTYPE    ' + padr(tdbfield('OLDINV','SUBTYPE'),8,' '),false) then begin
          If tdbfield('INVCODE','NFIRS5') = 'OTH' then
            GetField('INV','N5AU').AsString := '0'
          else if tdbfield('INVCODE','NFIRS5') = 'SUPP' then
            GetField('INV','N5AU').AsString := '1'
          else if tdbfield('INVCODE','NFIRS5') = 'EMS' then
            GetField('INV','N5AU').AsString := '2'
          else
            GetField('INV','N5AU').AsString := '0';
        end else
          GetField('INV','N5AU').AsString := '0';
      end;

      If Not (tdbfield('OLDINV','MAINCODE') = '') and dbseek('LOCATION',dbfield('OLDINV','MAINCODE'),false) then begin
        If (tdbfield('OLDINV','SUBCODE') = '') then
          ConvCode := tdbfield('LOCATION','TYPE') + ',' + tdbfield('OLDINV','MAINCODE')
        else
          ConvCode := tdbfield('LOCATION','TYPE') + ',' + tdbfield('OLDINV','MAINCODE') + ',' + tdbfield('OLDINV','SUBCODE');
        If A('INVLOC').ExactQueryLocate('CONVCODE',ConvCode) then
          GetField('INV','INVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      end;

      GetField('INV','MAINCODE').AsString := GetField('OLDINV','MAINCODE').AsString;
      GetField('INV','SUBCODE').AsString  := GetField('OLDINV','SUBCODE').AsString;
      GetField('INV','YEAR').AsString     := GetField('OLDINV','YEAR').AsString;
      GetField('INV','SERVINT').AsString  := GetField('OLDINV','SERVINT').AsString;
      GetField('INV','QUANTITY').AsString := GetField('OLDINV','QUANTITY').AsString;

      TypeVar    := tdbfield('OLDINV','TYPE');
      SubTypeVar := tdbfield('OLDINV','SUBTYPE');
      If A('INVSUBTYPE').ExactQueryLocate(['TYPE','CODE'],[TypeVar,SubTypeVar]) then
        GetField('INV','INVSUBTYPEID').AsString := GetField('INVSUBTYPE','INVSUBTYPEID').AsString;

      If A('INVOWNER').ExactQueryLocate('CODE',tdbfield('OLDINV','OWNCODE')) then
        GetField('INV','INVOWNERID').AsString := GetField('INVOWNER','INVOWNERID').AsString;

      If A('ROLODEX').ExactQueryLocate('VENDNUM',tdbfield('OLDINV','VENDCODE')) then
        GetField('INV','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;

      If A('HOSERATING').ExactQueryLocate('CODE',tdbfield('OLDINV','CODE1')) then
        GetField('INV','HOSERATINGID').AsString := GetField('HOSERATING','HOSERATINGID').AsString;

      If A('HOSECOUPLE').ExactQueryLocate('CODE',tdbfield('OLDINV','CODE2')) then
        GetField('INV','HOSECOUPLEID').AsString := GetField('HOSECOUPLE','HOSECOUPLEID').AsString;

      If A('INVDISPOSAL').ExactQueryLocate('CODE',tdbfield('OLDINV','DISPOSAL')) then
        GetField('INV','INVDISPOSALID').AsString := GetField('INVDISPOSAL','INVDISPOSALID').AsString;

      If A('INVDEPRMETH').ExactQueryLocate('CODE',tdbfield('OLDINV','DEPRMETH')) then
        GetField('INV','INVDEPRMETHID').AsString := GetField('INVDEPRMETH','INVDEPRMETHID').AsString;

      GetField('INV','SHOPNUM').AsString          := GetField('OLDINV','CHAR5').AsString;
      GetField('INV','MANUFACT').AsString         := GetField('OLDINV','MANUFACT').AsString;
      GetField('INV','N5AORT').AsString           := GetField('OLDINV','CODE4').AsString;

      If tdbfield('INV','TYPE') = 'TRUCK' then 
        GetField('INV','LICENSENUM').AsString     := GetField('OLDINV','CHAR1').AsString
      else
        GetField('INV','ITEMSIZE').AsString       := GetField('OLDINV','CHAR1').AsString;

      GetField('INV','SERNUM').AsString           := GetField('OLDINV','SERNUM').AsString;
      GetField('INV','MODEL').AsString            := GetField('OLDINV','MODEL').AsString;
      GetField('INV','COLOR').AsString            := GetField('OLDINV','CHAR2').AsString;

      If tdbfield('INV','TYPE') = 'SCBA' then begin
        GetField('INV','INSERVICEDATE').AsString    := GetField('OLDINV','MANDATE').AsString;
      end else begin
        GetField('INV','MANDATE').AsString          := GetField('OLDINV','MANDATE').AsString;
        GetField('INV','INSERVICEDATE').AsString    := GetField('OLDINV','INDATE').AsString;
        GetField('INV','REFURBISHDATE').AsString    := GetField('OLDINV','DATE1').AsString;
      end;
      GetField('INV','PURCHASEDATE').AsString     := GetField('OLDINV','PURDATE').AsString;
      GetField('INV','OUTOFSERVICEDATE').AsString := GetField('OLDINV','RETDATE').AsString;
      GetField('INV','SOLDDATE').AsString         := GetField('OLDINV','SOLDDATE').AsString;

      GetField('INV','INSCOMPANY').AsString       := GetField('OLDINV','CHAR3').AsString;
      GetField('INV','INSPOLICY').AsString        := GetField('OLDINV','CHAR4').AsString;

      GetField('INV','INSAMOUNT').AsString        := GetField('OLDINV','NUM1').AsString;

      GetField('INV','ODOMETER').AsString         := GetField('OLDINV','NUMMILE').AsString;
      GetField('INV','HOURENGINE').AsString       := GetField('OLDINV','NUMHOUR').AsString;
      GetField('INV','HOURPUMP').AsString         := GetField('OLDINV','PUMPHOUR').AsString;
      GetField('INV','HOURAERIAL').AsString       := GetField('OLDINV','AERIALHOUR').AsString;

      GetField('INV','COST').AsString             := GetField('OLDINV','COST').AsString;
      GetField('INV','VALUESQL').AsString         := GetField('OLDINV','VALUE').AsString;
      GetField('INV','PROCEEDS').AsString         := GetField('OLDINV','PROCEEDS').AsString;
      GetField('INV','EXPLIFE').AsString          := GetField('OLDINV','EXPLIFE').AsString;

      If tdbfield('INV','TYPE') = 'SCBA' then begin
        GetField('INV','SCBADATE1').AsString        := GetField('OLDINV','DATE1').AsString;
        GetField('INV','SCBADATE2').AsString        := GetField('OLDINV','DATE2').AsString;
        GetField('INV','SCBANUM1').AsString         := GetField('OLDINV','NUM1').AsString;
        GetField('INV','SCBANUM2').AsString         := GetField('OLDINV','NUM2').AsString;
      end;

      GetField('INV','HLENGTH').AsFloat           := GetField('OLDINV','HLENGTH').AsFloat;
      GetField('INV','HSIZE').AsFloat             := GetField('OLDINV','HSIZE').AsFloat;
      GetField('INV','NARR').AsString             := GetField('OLDINV','NARR').AsString;
      try
        GetTable('INV').Post;
      except
        on e:exception do begin
          appendtolog('did not save inventory number:'+GetField('OLDINV','INVNUM').AsString+'; Error:'+e.message);
        end;
      end;
//  end;
    StatusLabel.Caption := GetField('INV','INVID').AsString;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    Application.ProcessMessages;
    A('OLDINV').Skip(1);

  end;

  CloseApollo('INV');
  CloseApollo('INVLOC');
  CloseApollo('OLDINV');
  CloseApollo('INVCODE');
  CloseApollo('INVSUBTYPE');
  CloseApollo('TRUCKTYPE');
  CloseApollo('INVOWNER');
  CloseApollo('ROLODEX');
  CloseApollo('HOSERATING');
  CloseApollo('HOSECOUPLE');
  CloseApollo('INVDISPOSAL');
  CloseApollo('INVDEPRMETH');

  CloseApollo('LOCATION');
  CloseApollo('SUBCODE');
  
  Gauge.Progress := 0;

  ShowMessage('Done');
end;

procedure TConvDbaseForm.StatCodeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Net_Open(DirectoryField.Text + '\STATION\SUPPORT\STATCODE.DBF','S','STATCODE');
  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('STATCODE','FIELD') = 'LOCATION') then begin
      A('LOCATION').UpdateSql('SELECT * FROM LOCATION WHERE CODE = '+edbField('STATCODE','CODE'));
      PutInUpdateMode('LOCATION');
      GetField('LOCATION','CODE').AsString       := tdbField('STATCODE','CODE');
      GetField('LOCATION','DESCR').AsString      := tdbField('STATCODE','DESC');
      GetField('LOCATION','SHORTDESCR').AsString := tdbField('STATCODE','DESC');
      GetField('LOCATION','FDID').AsString       := mFireID;
      GetTable('LOCATION').Post;
    end else if (tdbfield('STATCODE','FIELD') = 'DREVCODE') then begin
      A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('STATCODE','CODE'));
      PutInUpdateMode('NITRAINCAT1');
      GetField('NITRAINCAT1','FDID').AsString       := mFireId;
      GetField('NITRAINCAT1','ACTIVE').AsString     := 'Y';
      GetField('NITRAINCAT1','CODE').AsString       := dbfield('STATCODE','CODE');
      GetField('NITRAINCAT1','DESCR').AsString      := dbfield('STATCODE','DESC');
      GetField('NITRAINCAT1','SHORTDESCR').AsString := dbfield('STATCODE','DESC');
      GetField('NITRAINCAT1','POINT').AsFloat       := GetField('STATCODE','POINT').AsFloat;
      A('NITRAINCAT1').Post;
    end;
    
    A('STATCODE').Skip(1);
  end;

  CloseApollo('STATCODE');
  CloseApollo('LOCATION');
  CloseApollo('NITRAINCAT1');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.StreetButtonClick(Sender: TObject);
begin
  Open_Query('STREET',TRUE,'SELECT * FROM STREET WHERE 1=2');
  Net_Open(DirectoryField.Text + '\DICTION\SYSCODE.DBF','S','SYSCODE');
  Gauge.MaxValue := A('SYSCODE').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('SYSCODE').Eof do begin
    If (tdbfield('SYSCODE','FIELD') = 'STREET') and Not (tdbfield('SYSCODE','DESC') = '') then begin
      A('STREET').UpdateSQL('SELECT * FROM STREET WHERE STREET = ' + edbfield('SYSCODE','DESC'));
      If A('STREET').RecordsExist then
        GetTable('STREET').Edit
      else
        GetTable('STREET').Append;
      GetField('STREET','STREET').AsString := GetField('SYSCODE','DESC').AsString;
      GetTable('STREET').Post;
    end;
    Gauge.Progress := Gauge.Progress + 1;  
    Application.ProcessMessages;
    A('SYSCODE').Skip(1);
  end;
  CloseApollo('SYSCODE');
  CloseApollo('STREET');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.SACodeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PERSSTAT',true,'SELECT * FROM PERSSTAT WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'SERVCODE' then begin
      A('PERSSTAT').UpdateSQL('SELECT * FROM PERSSTAT WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSSTAT').RecordsExist then
        GetTable('PERSSTAT').Edit
      else
        GetTable('PERSSTAT').Append;
      GetField('PERSSTAT','FDID').AsString   := mFireID;
      GetField('PERSSTAT','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSSTAT','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSSTAT').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSSTAT');
  CloseApollo('MEMCODE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.SAExceptButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PERSSTATHIST',true,'SELECT * FROM PERSSTATHIST WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('PERSSTAT',true,'SELECT * FROM PERSSTAT');

  Net_Open(DirectoryField.Text + '\SERVICE\DBF\SAEXCEPT.DBF','S','SAEXCEPT');

  Gauge.MaxValue := A('SAEXCEPT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('SAEXCEPT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('PERS').ExactQueryLocate('PERSCODE',dbfield('SAEXCEPT','MEMCODE')) then begin

      If A('PERSSTAT').ExactQueryLocate('CODE',dbfield('SAEXCEPT','CODE')) then begin

        A('PERSSTATHIST').UpdateSQL('SELECT * FROM PERSSTATHIST WHERE PERSID = ' + GetField('PERS','PERSID').AsString +
                                    ' AND PERSSTATID = ' + GetField('PERSSTAT','PERSSTATID').AsString +
                                    ' AND DATETIMESTART = ' + AddExpr(FormatDateTime('YYYY-MM-DD',GetField('SAEXCEPT','INITDATE').AsDateTime)));

        If A('PERSSTATHIST').RecordsExist then
          A('PERSSTATHIST').edit
        else
          A('PERSSTATHIST').Append;
        GetField('PERSSTATHIST','PERSID').AsString        := GetField('PERS','PERSID').AsString;
        GetField('PERSSTATHIST','PERSSTATID').AsString    := GetField('PERSSTAT','PERSSTATID').AsString;
        GetField('PERSSTATHIST','DATETIMESTART').AsString := GetField('SAEXCEPT','INITDATE').AsString;
        GetField('PERSSTATHIST','DATETIMEEND').AsString   := GetField('SAEXCEPT','FINDATE').AsString;
        GetField('PERSSTATHIST','POINT').AsString         := GetField('SAEXCEPT','POINT').AsString;

        If (GetField('SAEXCEPT','INITDATE').AsDateTime > 0) and (GetField('SAEXCEPT','FINDATE').AsDateTime > 0) then
          GetField('PERSSTATHIST','DATETIMELOSAP').AsDateTime := GetField('SAEXCEPT','INITDATE').AsDateTime + (GetField('SAEXCEPT','FINDATE').AsDateTime - GetField('SAEXCEPT','INITDATE').AsDateTime) / 2
        else if (GetField('SAEXCEPT','INITDATE').AsDateTime > 0) then
          GetField('PERSSTATHIST','DATETIMELOSAP').AsDateTime := GetField('SAEXCEPT','INITDATE').AsDateTime + (Now - GetField('SAEXCEPT','INITDATE').AsDateTime) / 2;

        GetTable('PERSSTATHIST').Post;
      end;  
    end;

    A('SAEXCEPT').Skip(1);
  end;
  CloseApollo('PERSSTATHIST');
  CloseApollo('PERSSTAT');
  CloseApollo('PERS');
  CloseApollo('SAEXCEPT');

  ShowMessage('Done');

end;

procedure TConvDbaseForm.SCBACheckListButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INVSERVTYPEITEM',true,'SELECT * FROM INVSERVTYPEITEM WHERE 1=2');
  LoadCheckList('1','Inspect Hardware, regulator, mask, etc.',ScbaInspInvServTypeIDField.Value);
  LoadCheckList('2','Inspect harness, strap, rubber',         ScbaInspInvServTypeIDField.Value);
  LoadCheckList('3','Check pressure, full, replace if not.',  ScbaInspInvServTypeIDField.Value);
  LoadCheckList('4','Inspect cylinder',                       ScbaInspInvServTypeIDField.Value);
  LoadCheckList('5','Unexpired cylinder hydrostatic date?',   ScbaInspInvServTypeIDField.Value);
  LoadCheckList('6','Operate SCBA?',                          ScbaInspInvServTypeIDField.Value);
  LoadCheckList('7','Clean SCBA',                             ScbaInspInvServTypeIDField.Value);
  LoadCheckList('8','Verify PASS',                            ScbaInspInvServTypeIDField.Value);
  CloseApollo('INVSERVTYPEITEM');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.LoadCheckList(SortOrd, Descr, InvServTypeID: String);
begin
  A('INVSERVTYPEITEM').UpdateSQL('SELECT * FROM INVSERVTYPEITEM WHERE INVSERVTYPEID = ' + InvServTypeID + ' AND SORTORD = ' + SortOrd);
  If A('INVSERVTYPEITEM').RecordsExist then
    A('INVSERVTYPEITEM').Edit
  else
    A('INVSERVTYPEITEM').Append;
  GetField('INVSERVTYPEITEM','SORTORD').AsString       := SortOrd;
  GetField('INVSERVTYPEITEM','DESCR').AsString         := Descr;
  GetField('INVSERVTYPEITEM','INVSERVTYPEID').AsString := InvServTypeID;
  A('INVSERVTYPEITEM').Post;
end;


procedure TConvDbaseForm.SCBAInspButtonClick(Sender: TObject);
Var DateDone : String;
begin
  inherited;
  If Not FileExists(DirectoryField.Text + '\SCBA\DBF\SCBAINSP.DBF') then begin
    ShowMessage('SCBA not installed');
    exit;
  end;
  Net_Open(DirectoryField.Text + '\SCBA\DBF\SCBAINSP.DBF','S','SCBAINSP');

  Gauge.MaxValue := A('SCBAINSP').RecordCount;
  Gauge.Progress := 0;

  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');
  Open_Query('INVSERVTYPEHIST',True,'SELECT * FROM INVSERVTYPEHIST WHERE 1=2');

  while not A('SCBAINSP').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('INV').ExactQueryLocate('INVNUM',tdbfield('SCBAINSP','INVNUM')) then begin
      DateDone := FormatDateTime('YYYY-MM-DD',GetField('SCBAINSP','DATE').AsDateTime);

      A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE INVID = ' + GetField('INV','INVID').AsString + ' AND INVSERVFORM = ' + AddExpr('SCBAINSP') + ' AND DATEDONE = ' + AddExpr(DateDone));
      PutInUpdateMode('INVSERVHIST');

      GetField('INVSERVHIST','INVID').AsString            := GetField('INV','INVID').AsString;
      GetField('INVSERVHIST','INVSERVTYPEID').AsString    := ScbaInspInvServTypeIDField.Value;

      GetField('INVSERVHIST','INVSERVFORM').AsString      := 'SCBAINSP';
      GetField('INVSERVHIST','DATEDONE').AsString         := GetField('SCBAINSP','DATE').AsString;
      GetField('INVSERVHIST','DESCR').AsString            := GetField('SCBAINSP','MEMCODE').AsString;
      GetField('INVSERVHIST','NARR').AsString             := GetField('SCBAINSP','NARR').AsString;
      GetField('INVSERVHIST','REDNARR').AsString          := GetRedNarr;
      GetTable('INVSERVHIST').Post;
    end;
    A('SCBAINSP').Skip(1);
  end;

  CloseApollo('INV');
  CloseApollo('INVSERVHIST');
  CloseApollo('SCBAINSP');
  CloseApollo('INVSERVTYPEHIST');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.ScbaInspInvServTypeIDFieldExit(Sender: TObject);
begin
  inherited;
  SCBAInspButton.Enabled          := Not (ScbaInspInvServTypeIDField.Value = '');
  SCBACheckListButton.Enabled     := Not (ScbaInspInvServTypeIDField.Value = '');
  InvServTypeStatusButton.Enabled := Not (ScbaInspInvServTypeIDField.Value = '');
end;

procedure TConvDbaseForm.GeneralServiceButtonClick(Sender: TObject);
  procedure LoadInvServStatus(Code, Descr: String);
  begin
    A('INVSERVSTATUS').UpdateSQL('SELECT * FROM INVSERVSTATUS WHERE CODE = ' + AddExpr(Code));
    PutInUpdateMode('INVSERVSTATUS');
    GetField('INVSERVSTATUS','CODE').AsString        := Code;
    GetField('INVSERVSTATUS','DESCR').AsString       := Descr;
    GetTable('INVSERVSTATUS').Post;
  end;

  procedure LoadInvServType(InvServForm, Code, Descr: String);
  begin
    A('INVSERVTYPE').UpdateSQL('SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr(InvServForm) + ' AND CODE = ' + AddExpr(Code));
    PutInUpdateMode('INVSERVTYPE');
    GetField('INVSERVTYPE','INVSERVFORM').AsString := InvServForm;
    GetField('INVSERVTYPE','CODE').AsString        := Code;
    GetField('INVSERVTYPE','DESCR').AsString       := Descr;
    GetTable('INVSERVTYPE').Post;
  end;
  
begin
  inherited;
  Open_Query('INVSERVTYPE',true,'SELECT * FROM INVSERVTYPE WHERE 1=2');
  LoadInvServType('SCBASERV','SERVICE', 'Serviced' );
  LoadInvServType('SCBAINSP','INSPECT', 'Inspected');
  LoadInvServType('HOSETEST','HOSETEST','Hose Test');
  CloseApollo('INVSERVTYPE');

  Open_Query('INVSERVSTATUS',true,'SELECT * FROM INVSERVSTATUS WHERE 1=2');
  LoadInvServStatus('P','Passed');
  LoadInvServStatus('F','Failed');
  CloseApollo('INVSERVSTATUS');

  ShowMessage('Done');
end;

function TConvDbaseForm.GetRedNarr: String;
Var RedNarr : String;
begin
  RedNarr := '';
  If tdbfield('SCBAINSP','HARDWARE') = 'Y' then
    RedNarr := RedNarr + 'Done.  Inspect hardware, regulator, mask, etc.' + #13#10;
  If tdbfield('SCBAINSP','HARNESS') = 'Y' then
    RedNarr := RedNarr + 'Done.  Inspect harness, strap, rubber.' + #13#10;
  If tdbfield('SCBAINSP','FULL') = 'Y' then
    RedNarr := RedNarr + 'Done.  Check pressure, full, replace if not.' + #13#10;
  If tdbfield('SCBAINSP','CYLINDER') = 'Y' then
    RedNarr := RedNarr + 'Done.  Inspect cylinder for dents, slices.' + #13#10;
  If tdbfield('SCBAINSP','HYDDATE') = 'Y' then
    RedNarr := RedNarr + 'Done.  Undexpired cylinder hydrostatic date?' + #13#10;
  If tdbfield('SCBAINSP','OPERATE') = 'Y' then
    RedNarr := RedNarr + 'Done.  Operate SCBA?' + #13#10;
  If tdbfield('SCBAINSP','ALARM') = 'Y' then
    RedNarr := RedNarr + 'Done.  Verify PASS alarm by testing' + #13#10;
  If tdbfield('SCBAINSP','CLEANED') = 'Y' then
    RedNarr := RedNarr + 'Done.  Clean SCBA' + #13#10;
  GetRedNarr := RedNarr;
end;

procedure TConvDbaseForm.SCBAServButtonClick(Sender: TObject);
begin
  inherited;
  If Not FileExists(DirectoryField.Text + '\SCBA\DBF\SCBASERV.DBF') then begin
    ShowMessage('SCBA not installed');
    exit;
  end;
  Net_Open(DirectoryField.Text + '\SCBA\DBF\SCBASERV.DBF','S','SCBASERV');

  Gauge.MaxValue := A('SCBASERV').RecordCount;
  Gauge.Progress := 0;

  Open_Query('ROLODEX',false,'SELECT ROLODEXID, VENDNUM FROM ROLODEX');
  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');

  while not A('SCBASERV').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('INV').ExactQueryLocate('INVNUM',tdbfield('SCBASERV','INVNUM')) then begin

      A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE INVID = ' + GetField('INV','INVID').AsString + ' AND INVSERVFORM = ' + AddExpr('SCBASERV') + ' AND PRIMEKEY = ' + edbfield('SCBASERV','PRIMEKEY'));
      PutInUpdateMode('INVSERVHIST');

      GetField('INVSERVHIST','INVID').AsString            := GetField('INV','INVID').AsString;
      GetField('INVSERVHIST','INVSERVTYPEID').AsString    := ScbaServInvServTypeIDField.Value;
      
      If A('ROLODEX').ExactQueryLocate('VENDNUM',dbfield('SCBASERV','VENDNUM')) then
        GetField('INVSERVHIST','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;

      GetField('INVSERVHIST','INVSERVFORM').AsString      := 'SCBASERV';
      GetField('INVSERVHIST','DATEDONE').AsString         := GetField('SCBASERV','DATE').AsString;
      GetField('INVSERVHIST','DESCR').AsString            := GetField('SCBASERV','DESC').AsString;
      GetField('INVSERVHIST','NARR').AsString             := GetField('SCBASERV','NARR').AsString;
      GetField('INVSERVHIST','PRIMEKEY').AsString         := GetField('SCBASERV','PRIMEKEY').AsString;
      GetField('INVSERVHIST','LABORTOTAL').AsString       := GetField('SCBASERV','LABOR').AsString;
      GetField('INVSERVHIST','TOTALCOST').AsString        := GetField('SCBASERV','COST').AsString;
      GetTable('INVSERVHIST').Post;
    end;
    A('SCBASERV').Skip(1);
  end;

  CloseApollo('INV');
  CloseApollo('INVSERVHIST');
  CloseApollo('ROLODEX');
  CloseApollo('SCBASERV');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.ScbaServInvServTypeIDFieldExit(Sender: TObject);
begin
  inherited;
  SCBAServButton.Enabled := Not (ScbaServInvServTypeIDField.value = '');
end;

procedure TConvDbaseForm.SCReportButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NITRAINCATREQ',true,'SELECT * FROM NITRAINCATREQ WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('TRCODE','FIELD') = 'SCREPORT') then begin
      A('NITRAINCATREQ').UpdateSQL('SELECT * FROM NITRAINCATREQ WHERE CODE = ' + edbfield('TRCODE','CODE'));
      PutInUpdateMode('NITRAINCATREQ');
      GetField('NITRAINCATREQ','FDID').AsString         := mFireID;
      GetField('NITRAINCATREQ','CODE').AsString         := dbfield('TRCODE','CODE');
      GetField('NITRAINCATREQ','DESCR').AsString        := dbfield('TRCODE','DESC');
      GetTable('NITRAINCATREQ').Post;
    end;

    A('TRCODE').Skip(1);
  end;

  CloseApollo('TRCODE');
  CloseApollo('NITRAINCATREQ');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.SecButtonClick(Sender: TObject);
Var SecID     : String;
    FieldNum  : Integer;
    FieldName : String;
begin
  AddStatusListBox(ListBox1,'Convert SEC . . . .');
  Open_Query('SEC',true,'SELECT * FROM SEC WHERE 1=2');
  Open_Query('SECFIELDSET',true,'SELECT * FROM SECFIELDSET WHERE 1=2');

  Open_Query('NEWSEC',false,'SELECT SECID FROM SEC WHERE 1=2');
  Open_Query('SECFIELD',false,'SELECT * FROM SECFIELD');

  Net_Open(DirectoryField.Text + '\SECURITY\DBF\SECURITY.DBF','S','OLDSEC');

  Gauge.MaxValue := A('OLDSEC').RecordCount;
  Gauge.Progress := 0;

  While Not A('OLDSEC').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    
    A('SEC').UpdateSQL('SELECT * FROM SEC WHERE LOGINCODE = ' + edbfield('OLDSEC','MEMCODE') );
    If A('SEC').RecordsExist then
      GetTable('SEC').Edit
    else
      GetTable('SEC').Append;
    GetField('SEC','USERNAME').AsString        := GetField('OLDSEC','MEMCODE').AsString;
    GetField('SEC','DESCR').AsString           := GetField('OLDSEC','USERNAME').AsString;
    GetField('SEC','LOGINCODE').AsString       := GetField('OLDSEC','MEMCODE').AsString;
    GetField('SEC','EXPDATE').AsString         := GetField('OLDSEC','EXPDATE').AsString;
    GetField('SEC','LOGINPASSWORD').AsString   := GetField('OLDSEC','PASSWORD').AsString;
    A('NEWSEC').UpdateSQL('SELECT SECID FROM SEC WHERE LOGINCODE = ' + edbfield('OLDSEC','PROFILE'));
    If A('NEWSEC').RecordsExist then
      GetField('SEC','PROFILEID').AsString := GetField('NEWSEC','SECID').AsString;

    A('SEC').Post;

    If GetField('SEC','SECID').AsInteger > 0 then
      SecID := GetField('SEC','SECID').AsString
    else
      SecID := A('SECID').NewPk;

    If (tdbfield('OLDSEC','PROFILE') = '') then begin
      for FieldNum := 1 to A('OLDSEC').FieldCount do begin
        If (A('OLDSEC').FieldWidth(A('OLDSEC').FieldName(FieldNum)) = 1) then begin
          FieldName := A('OLDSEC').FieldName(FieldNum);
          If (tdbfield('OLDSEC',FieldName) = 'Y') then begin
            If A('SECFIELD').ExactQueryLocate('OLDSECFIELD',FieldName) then begin
              A('SECFIELDSET').UpdateSQL('SELECT * FROM SECFIELDSET WHERE SECID = ' + SecID + ' AND SECFIELDID = ' + GetField('SECFIELD','SECFIELDID').AsString);
              If Not A('SECFIELDSET').RecordsExist then begin
                A('SECFIELDSET').Append;
                GetField('SECFIELDSET','SECID').AsString      := SecID;
                GetField('SECFIELDSET','SECFIELDID').AsString := GetField('SECFIELD','SECFIELDID').AsString;
                A('SECFIELDSET').Post;
              end;
            end;
          end;
        end;
      end;
    end;

    A('OLDSEC').Skip(1);
  end;
  CloseApollo('SEC');
  CloseApollo('SECFIELDSET');
  CloseApollo('NEWSEC');
  CloseApollo('OLDSEC');
  CloseApollo('SECFIELD');
  Gauge.Progress := 0;
  AddStatusListBox(ListBox1,'Convert SEC . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersMedButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert PERSMED . . . . ');
  Open_Query('PERSMED',true,'SELECT * FROM PERSMED WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MHCFUTURE1' then begin
      A('PERSMED').UpdateSQL('SELECT * FROM PERSMED WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSMED').RecordsExist then
        GetTable('PERSMED').Edit
      else
        GetTable('PERSMED').Append;
      GetField('PERSMED','FDID').AsString   := mFireID;
      GetField('PERSMED','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSMED','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSMED').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSMED');
  CloseApollo('MEMCODE');
  AddStatusListBox(ListBox1,'Convert PERSMED . . . . Done');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersAccHistButtonClick(Sender: TObject);
Var DateTimeKey : TDateTime;
    PersID      : String;
begin
  inherited;
  if Net_Open(DirectoryField.Text + '\PERSONEL\DBF\ACCHIST.DBF','S','ACCHIST') then begin
    A('ACCHIST').SetOrder(1);

    If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
      A('ACCHIST').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

    Open_Query('PERSACCHIST',true,'SELECT * FROM PERSACCHIST WHERE 1=2');
    Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');

    Gauge.MaxValue := A('ACCHIST').QueryRecCount;
    Gauge.Visible  := true;
    Gauge.Progress := 0;

    While Not A('ACCHIST').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      DateTimeKey    := ConvertDateTime(GetField('ACCHIST','DATE').AsString,GetField('ACCHIST','DATE').AsString,tdbfield('ACCHIST','TIME'));

      If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('ACCHIST','MEMCODE')) then
        PersID := GetField('PERS','PERSID').AsString;

      If (DateTimeKey > 0) and (AnyStrToInt(PersID) > 0) then begin
        A('PERSACCHIST').UpdateSQL('SELECT * FROM PERSACCHIST WHERE DATETIMEKEY = ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',DateTimeKey)) + ' AND PERSID = ' + PersID);
        PutInUpdateMode('PERSACCHIST');
        GetField('PERSACCHIST','DATETIMEKEY').AsDateTime := DateTimeKey;
        GetField('PERSACCHIST','PERSID').AsString        := PersID;
        GetField('PERSACCHIST','CODE').AsString          := tdbfield('ACCHIST','COMPUTER');
        GetField('PERSACCHIST','COMPCODE').AsString      := tdbfield('ACCHIST','COMPUTER');
        GetField('PERSACCHIST','KEYCODE').AsString       := tdbfield('ACCHIST','KEYCODE');
        GetTable('PERSACCHIST').Post;
      end;
      A('ACCHIST').Skip(1);
    end;
    CloseApollo('PERS');
    CloseApollo('ACCHIST');
    CloseApollo('PERSACCHIST');
    Gauge.Visible := false;
    ShowMessage('Done');
  end else
    ShowMessage('\PERSONEL\DBF\ACCHIST.DBF Not found');
end;

procedure TConvDbaseForm.PersBloodTypeButtonClick(Sender: TObject);
begin
  AddStatusListBox(ListBox1,'Convert PERSBLOODTYPE . . . . ');

  Open_Query('PERSBLOODTYPE',true,'SELECT * FROM PERSBLOODTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PERSONEL\SUPPORT\MEMCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEBLDTYPE' then begin
      A('PERSBLOODTYPE').UpdateSQL('SELECT * FROM PERSBLOODTYPE WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSBLOODTYPE').RecordsExist then
        GetTable('PERSBLOODTYPE').Edit
      else
        GetTable('PERSBLOODTYPE').Append;
      GetField('PERSBLOODTYPE','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetTable('PERSBLOODTYPE').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSBLOODTYPE');
  CloseApollo('MEMCODE');

  AddStatusListBox(ListBox1,'Convert PERSBLOODTYPE . . . . Done');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PERSMEDHISTButtonClick(Sender: TObject);
Var PersMedID : String;
    PersID    : String;
    DateDone  : String;
begin
  Open_Query('PERSMEDHIST',true,'SELECT * FROM PERSMEDHIST WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('PERSMED',false,'SELECT CODE, PERSMEDID FROM PERSMED');

  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\MEDHIST.DBF','S','MEDHIST');
  Gauge.MaxValue := A('MEDHIST').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('MEDHIST').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('MEDHIST','MEMCODE'));
    If A('PERS').RecordsExist then begin
      PersID := GetField('PERS','PERSID').AsString;
      If A('PERSMED').ExactQueryLocate('CODE',tdbfield('MEDHIST','CFUTURE1')) then begin
        PersMedID := GetField('PERSMED','PERSMEDID').AsString;
        DateDone  := FormatDateTime('YYYY-MM-DD',GetField('MEDHIST','DATE').AsDateTime);
        A('PERSMEDHIST').UpdateSQL('SELECT * FROM PERSMEDHIST WHERE PERSID = ' + PersID + ' AND PERSMEDID = ' + PersMedID + ' AND DATEDONE = ' + AddExpr(DateDone));
        If A('PERSMEDHIST').RecordsExist then
          A('PERSMEDHIST').Edit
        else
          A('PERSMEDHIST').Append;
        GetField('PERSMEDHIST','PERSID').AsString    := PersID;
        GetField('PERSMEDHIST','PERSMEDID').AsString := PersMedID;
        GetField('PERSMEDHIST','DATEDONE').AsString  := GetField('MEDHIST','DATE').AsString;
        GetField('PERSMEDHIST','NARR').AsString      := GetField('MEDHIST','NARR').AsString;
        GetField('PERSMEDHIST','DESCR').AsString     := GetField('MEDHIST','COMMENT').AsString;
        GetField('PERSMEDHIST','DOCTOR').AsString    := GetField('MEDHIST','DOCTOR').AsString;
        GetTable('PERSMEDHIST').Post;
      end
    end;

    A('MEDHIST').Skip(1);
  end;
  CloseApollo('PERSMEDHIST');
  CloseApollo('PERSMED');
  CloseApollo('PERS');
  CloseApollo('MEDHIST');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.PersImageButtonClick(Sender: TObject);
var pictpath      : String;
    mFilename     : String;
    mFullFileName : String;
    ImageListID   : String;
    ImagePathID   : String;
    ext           : String;
    ImageName     : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\DOCUMENT\DBF\DOCFILE.DBF','S','DOCFILE');
  A('DOCFILE').SetOrder(1);
  A('DOCFILE').GoTop;
  Net_Open(DirectoryField.Text + '\DOCUMENT\DBF\DOCLINK.DBF','S','DOCLINK');

  Open_Query('IMAGEPATH',false,'SELECT IMAGEPATH.PATH, IMAGEPATH.IMAGEPATHID FROM IMAGESET LEFT JOIN IMAGEPATH ON (IMAGESET.PERSPICTPATHID = IMAGEPATH.IMAGEPATHID) WHERE FDID = ' + AddExpr(mFireID));
  Open_Query('PERS',False,'SELECT PERSCODE,PERSID FROM PERS');

  PictPath    := tdbfield('IMAGEPATH','PATH');
  ImagePathID := tdbfield('IMAGEPATH','IMAGEPATHID');
  CloseApollo('IMAGEPATH');

  Gauge.MaxValue := A('DOCLINK').QueryReccount;
  Gauge.Progress := 0;

  If PictPath = '' then
    ShowMessage('There is no defualt image path assigned for personnel image files.')
  else begin
    while not A('DOCLINK').eof do begin
      if A('PERS').ExactQueryLocate('PERSCODE',tdbField('DOCLINK','RECCODE')) then begin
        A('DOCFILE').SetScope(dbfield('DOCLINK','DOCCODE'),dbfield('DOCLINK','DOCCODE'));

        ImageName := tdbField('DOCFILE','DOCFILE');
        ext       := substr(ImageName,at('.',ImageName) + 1,3);
        If ext = 'bmp' then
          ImageName := substr(ImageName,1,at('.',ImageName)) + 'jpg';

        mFullFileName := PictPath +'\'+ImageName;

        if FileExists(mFullFileName) then begin
          try
            mFileName := ExtractFileName(mFullFileName);
           Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE FILENAME = ' + AddExpr(mFileName));
            If A('IMAGELIST').RecordsExist then
              GetTable('IMAGELIST').Edit
            else
              GetTable('IMAGELIST').Append;
            (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
            TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(mFullFileName);
            GetField('IMAGELIST','FILENAME').AsString       := mFileName;
            GetField('IMAGELIST','IMAGEPATHID').AsString    := ImagePathID;
            GetField('IMAGELIST','DATETIMEFILE').AsDateTime := FileDateToDateTime(FileAge(mFullFileName));
            GetField('IMAGELIST','DESCR').AsString          := SqlLookUp(tdbField('PERS','PERSID'),'PERSID','PERS','PERSCODE') + ' Member Picture';
            GetField('IMAGELIST','SYSTABLEID').AsString     := SqlLookUp('PERS','TABLENAME','SYSTABLE','SYSTABLEID');
            GetTable('IMAGELIST').Post;
            ImageListID := GetField('IMAGELIST','IMAGELISTID').AsString;

            CloseApollo('IMAGELIST');
            RunSQL('UPDATE PERS SET IMAGELISTID = ' + ImageListID + ' WHERE PERSID = ' + tdbField('PERS','PERSID'));
          except
            CloseApollo('IMAGELIST');
          end;
        end;
      end;

      A('DOCLINK').Skip(1);
      Gauge.Progress := Gauge.Progress + 1;
      application.processmessages;
    end;
  end;

  CloseApollo('DOCLINK');
  CloseApollo('DOCFILE');
  CloseApollo('PERS');

  ShowMessage('done');
end;

procedure TConvDbaseForm.PersInvQualButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PERSINVQUAL',true,'SELECT * FROM PERSINVQUAL WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('INV',false,'SELECT INVID, UNITNUM, INVNUM FROM INV WHERE TYPE = ' + AddExpr('TRUCK'));

  Net_Open(DirectoryField.Text + '\TRUCK\DBF\DRIVELST.DBF','S','DRIVELST');
  Gauge.MaxValue := A('DRIVELST').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('DRIVELST').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('DRIVELST','MEMCODE')) and A('INV').ExactQueryLocate('INVNUM',tdbfield('DRIVELST','INVNUM')) then begin
      A('PERSINVQUAL').UpdateSQL('SELECT * FROM PERSINVQUAL WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND INVID = ' + GetField('INV','INVID').AsString);
      If A('PERSINVQUAL').RecordsExist then
        A('PERSINVQUAL').Edit
      else
        A('PERSINVQUAL').Append;
      GetField('PERSINVQUAL','PERSID').AsString   := GetField('PERS','PERSID').AsString;
      GetField('PERSINVQUAL','INVID').AsString    := GetField('INV','INVID').AsString;
      GetField('PERSINVQUAL','DATEQUAL').AsString := GetField('DRIVELST','DATE').AsString;
      GetTable('PERSINVQUAL').Post;
    end;

    A('DRIVELST').Skip(1);
  end;
  CloseApollo('DRIVELST');
  CloseApollo('INV');
  CloseApollo('PERSINVQUAL');
  CloseApollo('PERS');

  ShowMessage('Done');
end;

procedure TConvDBaseForm.CheckSupportTable(mdBaseTable,mDBaseField,mRedNMXLookupTable,mRedNmxTable: String);
begin
  if tdbField(mDbaseTable,mDbaseField)<>'' then
    if A(mRedNMXLookupTable).ExactQueryLocate('CODE',tdbField(mDbaseTable,mDbaseField)) then
      GetField(mredNMXTable,mRedNMXLookupTable+'ID').AsString := GetField(mRedNMXLookupTable,mRedNMXLookupTable+'ID').AsString;
end;

function CullOutReal(mString: String): Real;
var
  i: Integer;
  mresult: String;
begin
  mresult := '';
  for i:=1 to length(mstring) do begin
    if mString[i] in ['0'..'9','.'] then
      mResult := mResult + mString[i];
  end;

  if mResult = '' then
    result := 0.0
  else
    result := strtofloat(mresult);
end;



procedure TConvDbaseForm.HydButtonClick(Sender: TObject);
Var Latitude  : Real;
    Longitude : Real;
begin
  Net_Open(DirectoryField.Text + '\HYDRANT\DBF\HYDRANT.DBF','S','HYDRANT');
  Open_Query('DISPBOX',False,'SELECT CODE,DISPBOXID FROM DISPBOX');
  Open_Query('HYDTYPE',False,'SELECT * FROM HYDTYPE');
  Open_Query('HYDSTATUS',False,'SELECT * FROM HYDSTATUS');
  Open_Query('HYDNFPACLASS',False,'SELECT * FROM HYDNFPACLASS');

  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');

  Gauge.MaxValue := A('HYDRANT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('HYDRANT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + edbfield('HYDRANT','HYDCODE'));
    If A('HYD').RecordsExist then
      GetTable('HYD').Edit
    else
      GetTable('HYD').Append;


    GetField('HYD','HYDCODE').AsString  := GetField('HYDRANT','HYDCODE').AsString;
    CheckSupportTable('HYDRANT','BOXCODE','DISPBOX','HYD');
    CheckSupportTable('HYDRANT','TYPE','HYDTYPE','HYD');

    if GetField('HYDRANT','NMAINSIZE').AsFloat <> 0 then
      GetField('HYD','MAINSIZE').AsFloat := GetField('HYDRANT','NMAINSIZE').AsFloat
    else
      GetField('HYD','MAINSIZE').AsFloat := CullOutReal(GetField('HYDRANT','SIZEMAIN').AsString);

    GetField('HYD','GATESIZE').AsFloat := CullOutReal(GetField('HYDRANT','SIZEOTH1').AsString);
    GetField('HYD','STEAMERSIZE').AsFloat := CullOutReal(GetField('HYDRANT','SIZEOTH2').AsString);
    CheckSupportTable('HYDRANT','NFPA','HYDNFPACLASS','HYD');
    if GetField('HYDRANT','NSTATPRESS').AsFloat <> 0 then
      GetField('HYD','STATICPRESSURE').AsFloat := GetField('HYDRANT','NSTATPRESS').AsFloat
    else
      GetField('HYD','STATICPRESSURE').AsFloat := CullOutReal(GetField('HYDRANT','STATPRS').AsString);

    If GetField('HYDRANT','NFLOW').AsFloat <> 0 then
      GetField('HYD','FLOWRATE').AsFloat := GetField('HYDRANT','NFLOW').AsFloat
    else
      GetField('HYD','FLOWRATE').AsFloat := CullOutReal(GetField('HYDRANT','FLOWRATE').AsString);

    CheckSupportTable('HYDRANT','ONLINE','HYDSTATUS','HYD');

    if GetField('HYDRANT','NRESPRESS').AsFloat <> 0 then
      GetField('HYD','RESIDUALPRESSURE').AsFloat := GetField('HYDRANT','NRESPRESS').AsFloat
    else
      GetField('HYD','RESIDUALPRESSURE').AsFloat := CullOutReal(GetField('HYDRANT','RESPRS').AsString);

    try
      Latitude  := anyStrToFloat(GetField('HYDRANT','LATITUDE').AsString);
      Longitude := anyStrToFloat(GetField('HYDRANT','LONGITUDE').AsString);
    except
    end;

    If (Latitude < 100) and (Longitude < 0) and (Longitude > -100) then begin
      GetField('HYD','LATITUDE').AsFloat  := Latitude;
      GetField('HYD','LONGITUDE').AsFloat := Longitude;
    end;  

    GetField('HYD','STREET').AsString := GetField('HYDRANT','STREET').AsString;
    GetField('HYD','STRNUM').AsString := alltrim(GetField('HYDRANT','ADDRESS').AsString);
    GetField('HYD','CROSSSTREET').AsString := GetField('HYDRANT','CROSS').AsString;
    GetField('HYD','INSPINT').AsInteger := GetField('HYDRANT','INSPINT').AsInteger;

    GetField('HYD','USERC1').AsString := GetField('HYDRANT','USERC1').AsString;
    GetField('HYD','USERC2').AsString := GetField('HYDRANT','USERC2').AsString;
    if GetField('HYDRANT','USERD1').AsDateTime<>0 then
      GetField('HYD','USERD1').AsDateTime := GetField('HYDRANT','USERD1').AsDateTime;
    if GetField('HYDRANT','USERD2').AsDateTime <> 0 then
      GetField('HYD','USERD2').AsDateTime := GetField('HYDRANT','USERD2').AsDateTime;

    if GetField('HYDRANT','NPITOTPRES').AsFloat <> 0 then
      GetField('HYD','PITOTPRESSURE').AsFloat := GetField('HYDRANT','NPITOTPRES').AsFloat
    else
      GetField('HYD','PITOTPRESSURE').AsFloat := CullOutReal(GetField('HYDRANT','PITOT').AsString);

    GetField('HYD','COEFFICIENT').AsFloat := GetField('HYDRANT','COEF').AsFloat;


    if GetField('HYDRANT','NOUTUSED').AsInteger <> 0 then
      GetField('HYD','OUTLETSIZE').AsInteger := GetField('HYDRANT','NOUTUSED').AsInteger
    else
      GetField('HYD','OUTLETSIZE').AsInteger := GetField('HYDRANT','NOUTSIZE').AsInteger;

    GetField('HYD','NUMOUTLETS').AsInteger := GetField('HYDRANT','NUMOUTLETS').AsInteger;

    if GetField('HYDRANT','NSTEAMSIZE').AsFloat <> 0 then
      GetField('HYD','STEAMERSIZE').AsFloat := GetField('HYDRANT','NSTEAMSIZE').AsFloat
    else
      GetField('HYD','STEAMERSIZE').AsFloat := CullOutReal(GetField('HYDRANT','SIZEOTH2').AsString);

    if GetField('HYDRANT','LASTFLOWDT').AsDateTime <>0 then
      GetField('HYD','LASTFLOWDATE').AsDateTime := GetField('HYDRANT','LASTFLOWDT').AsDateTime;

    GetField('HYD','FLOWRATE0').AsFloat := GetField('HYDRANT','NFLOWZERO').AsFloat;
    GetField('HYD','FLOWRATE20').AsFloat := GetField('HYDRANT','NFLOWOTH').AsFloat;
    GetField('HYD','LOCATION').AsString := alltrim(tdbfield('HYDRANT','LOCATION'));

    A('HYD').Post;
    A('HYDRANT').Skip(1);
  end;
  CloseApollo('HYD');
  CloseApollo('HYDRANT');
  CloseApollo('HYDTYPE');
  CloseApollo('HYDSTATUS');
  CloseApollo('HYDNFPACLASS');
  CloseApollo('DISPBOX');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvFuelButtonClick(Sender: TObject);
var DateTimeFilled: TDateTime;
begin
  Open_Query('INVFUELTYPE',False,'SELECT * FROM INVFUELTYPE');

  Net_Open(DirectoryField.Text + '\TRUCK\DBF\FUELUSE.DBF','S','FUELUSE');
  Open_Query('INVFUEL',true,'SELECT * FROM INVFUEL WHERE 1=2');
  Open_Query('INV',False,'SELECT INVNUM,INVID FROM INV WHERE TYPE = '+AddExpr('TRUCK'));
  Open_Query('PERS',False,'SELECT PERSCODE,PERSID FROM PERS');

  Gauge.MaxValue := A('FUELUSE').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('FUELUSE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('INV').ExactQueryLocate('INVNUM',tdbField('FUELUSE','INVNUM')) and (GetField('FUELUSE','DATE').AsString <> '') then begin
      DateTimeFilled := GetField('FUELUSE','DATE').AsDateTime;
      If CheckValidTime(tdbfield('FUELUSE','TIMEFILLED'),False) then begin
        try
          DateTimeFilled := GetField('FUELUSE','DATE').AsDateTime + GetRealTime(tdbfield('FUELUSE','TIMEFILLED'));
        except
        end;
      end;
      A('INVFUEL').UpdateSql('SELECT * FROM INVFUEL WHERE INVID = '+pkValue(tdbField('INV','INVID'))+' AND DATETIMEFILLED = ' + FormatDateTimeForSql(DateTimeFilled));
      If A('INVFUEL').RecordsExist then
        GetTable('INVFUEL').Edit
      else
        GetTable('INVFUEL').Insert;

      If A('INVFUELTYPE').ExactQueryLocate('CODE',tdbField('FUELUSE','CODE')) then
        GetField('INVFUEL','INVFUELTYPEID').AsString  := GetField('INVFUELTYPE','INVFUELTYPEID').AsString;

      If A('PERS').ExactQueryLocate('PERSCODE',tdbField('FUELUSE','MEMCODE')) then
        GetField('INVFUEL','PERSID').AsString  := GetField('PERS','PERSID').AsString;

      GetField('INVFUEL','INVID').AsString            := GetField('INV','INVID').AsString;
      GetField('INVFUEL','QUANTITY').AsFloat          := GetField('FUELUSE','AMOUNT').AsFloat;
      GetField('INVFUEL','COST').AsFloat              := GetField('FUELUSE','COST').AsFloat;
      GetField('INVFUEL','TICKETNUM').AsString        := GetField('FUELUSE','WORKNUM').AsString;
      GetField('INVFUEL','ODOMETER').AsFloat          := GetField('FUELUSE','MILE').AsFloat;
      GetField('INVFUEL','HOURENGINE').AsFloat        := GetField('FUELUSE','HOUR').AsFloat;
      GetField('INVFUEL','HOURAERIAL').AsFloat        := GetField('FUELUSE','AERIALHOUR').AsFloat;
      GetField('INVFUEL','HOURPUMP').AsFloat          := GetField('FUELUSE','PUMPHOUR').AsFloat;
      GetField('INVFUEL','DATETIMEFILLED').AsDateTime := DateTimeFilled;
      GetField('INVFUEL','DESCR').AsString            := GetField('FUELUSE','MEMDESC').AsString;
      A('INVFUEL').Post;
    end;

    A('FUELUSE').Skip(1);
  end;
  CloseApollo('INVFUEL');
  CloseApollo('FUELUSE');
  CloseApollo('INV');
  CloseApollo('PERS');
  CloseApollo('INVFUELTYPE');
  Gauge.Progress := 0;
  ShowMessage('Done');

end;

procedure TConvDbaseForm.InvFuelTypeClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\TRUCK\SUPPORT\TRCKCODE.DBF','S','TRCKCODE');
  Open_Query('INVFUELTYPE',True,'SELECT * FROM INVFUELTYPE WHERE 1=2');
  while not A('TRCKCODE').eof do begin
    If tdbfield('TRCKCODE','FIELD') = 'TFCODE' then begin
      A('INVFUELTYPE').UpdateSql('SELECT * FROM INVFUELTYPE WHERE CODE = ' + edbField('TRCKCODE','CODE'));
      if A('INVFUELTYPE').RecordsExist then
        GetTable('INVFUELTYPE').Edit
      else
        GetTable('INVFUELTYPE').Insert;
      GetField('INVFUELTYPE','CODE').AsString := tdbField('TRCKCODE','CODE');
      GetField('INVFUELTYPE','DESCR').AsString := tdbField('TRCKCODE','DESC');
      GetTable('INVFUELTYPE').Post;
    end;  
    A('TRCKCODE').Skip(1);
  end;
  CloseApollo('TRCKCODE');
  CloseApollo('INVFUELTYPE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.INVLOCAppButtonClick(Sender: TObject);
Var ConvCode : String;
begin
  inherited;
  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' ORDER BY INVID');
  Open_Query('INVLOC',false,'SELECT CONVCODE, INVLOCID FROM INVLOC');

  Gauge.MaxValue := A('INV').RecCount;
  Gauge.Progress := 0;
  While Not A('INV').Eof do begin
    ConvCode := 'TRUCK,' + tdbfield('INV','INVNUM');
    If A('INVLOC').ExactQueryLocate('CONVCODE',ConvCode) then
      RunSQL('UPDATE INV SET APPINVLOCID = ' + Getfield('INVLOC','INVLOCID').AsString + ' WHERE INVID =  ' + GetField('INV','INVID').AsString);
    A('INV').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;

  Gauge.Progress := 0;
  CloseApollo('INVLOC');
  CloseApollo('INV');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.INVLOCAUDITButtonClick(Sender: TObject);
Var DateVar : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\INVENTOR\DBF\INVAUDIT.DBF','S','INVAUDIT');
  Open_Query('INVLOCAUDIT',True,'SELECT * FROM INVLOCAUDIT WHERE 1=2');
  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVLOC',false,'SELECT * FROM INVLOC');

  Gauge.MaxValue := A('INVAUDIT').RecCount;
  Gauge.Progress := 0;

  While Not A('INVAUDIT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('INV').ExactQueryLocate('INVNUM',tdbfield('INVAUDIT','INVNUM')) then begin
      DateVar := FormatDateTime('YYYY-MM-DD',GetField('INVAUDIT','DATE').AsDateTime);
      A('INVLOCAUDIT').UpdateSQL('SELECT * FROM INVLOCAUDIT WHERE INVID = ' + GetField('INV','INVID').AsString + ' AND DATETIMEMOVE = ' + AddExpr(DateVar));
      If A('INVLOCAUDIT').RecordsExist then
        A('INVLOCAUDIT').Edit
      else
        A('INVLOCAUDIT').Append;
      GetField('INVLOCAUDIT','DATETIMEMOVE').AsDateTime := GetField('INVAUDIT','DATE').AsDateTime;
      GetField('INVLOCAUDIT','INVID').AsString          := GetField('INV','INVID').AsString;
      GetField('INVLOCAUDIT','FROMLOC').AsString        := GetField('INVAUDIT','FROMLOC').AsString;
      GetField('INVLOCAUDIT','FROMSUB').AsString        := GetField('INVAUDIT','FROMSUB').AsString;
      GetField('INVLOCAUDIT','TOLOC').AsString          := GetField('INVAUDIT','TOLOC').AsString;
      GetField('INVLOCAUDIT','TOSUB').AsString          := GetField('INVAUDIT','TOSUB').AsString;

      If tdbfield('INVAUDIT','FROMSUB') = '' then begin
        If A('INVLOC').ExactQueryLocate('MAINCODE',tdbfield('INVAUDIT','FROMLOC')) then
          GetField('INVLOCAUDIT','OLDINVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      end else begin
        If A('INVLOC').ExactQueryLocate(['MAINCODE','SUBCODE'],[tdbfield('INVAUDIT','FROMLOC'),tdbfield('INVAUDIT','FROMSUB')]) then
          GetField('INVLOCAUDIT','OLDINVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      end;

      If tdbfield('INVAUDIT','TOSUB') = '' then begin
        If A('INVLOC').ExactQueryLocate('MAINCODE',tdbfield('INVAUDIT','TOLOC')) then
          GetField('INVLOCAUDIT','NEWINVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      end else begin
        If A('INVLOC').ExactQueryLocate(['MAINCODE','SUBCODE'],[tdbfield('INVAUDIT','TOLOC'),tdbfield('INVAUDIT','TOSUB')]) then
          GetField('INVLOCAUDIT','NEWINVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
      end;

      A('INVLOCAUDIT').Post;
    end;

    A('INVAUDIT').Skip(1);
  end;

  CloseApollo('INVLOC');
  CloseApollo('INV');
  CloseApollo('INVLOCAUDIT');
  CloseApollo('INVAUDIT');
end;

procedure TConvDbaseForm.INVLOCPERSButtonClick(Sender: TObject);
Var ConvCode : String;
begin
  inherited;
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS ORDER BY PERSID');
  Open_Query('INVLOC',false,'SELECT CONVCODE, INVLOCID FROM INVLOC');

  Gauge.MaxValue := A('PERS').RecCount;
  Gauge.Progress := 0;
  While Not A('PERS').Eof do begin
    ConvCode := 'MEMBER,' + tdbfield('PERS','PERSCODE');
    If A('INVLOC').ExactQueryLocate('CONVCODE',ConvCode) then
      RunSQL('UPDATE PERS SET INVLOCID = ' + Getfield('INVLOC','INVLOCID').AsString + ' WHERE PERSID =  ' + GetField('PERS','PERSID').AsString);
    A('PERS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;

  Gauge.Progress := 0;
  CloseApollo('INVLOC');
  CloseApollo('PERS');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.nisptypebuttonClick(Sender: TObject);
Var NIPTypeID    : String;
    NILosapCatID : String;
begin
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\STATION\SUPPORT\STATCODE.DBF','S','STATCODE');

  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    NIPTypeID    := '0';

    If (tdbfield('STATCODE','FIELD') = 'DRILLTYPE') then begin
      NIPTypeID    := DrillIDfield.Value;
      NILosapCatID := DrillLosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'MEETTYPE') then begin
      NIPTypeID    := MeetIDField.Value;
      NILosapCatID := MeetLosapCatIDfield.Value;
    end else If (tdbfield('STATCODE','FIELD') = 'WORKTYPE') then begin
      NIPTypeID    := WorkIDField.Value;
      NILosapCatID := WorkLosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'STANDTYPE') then begin
      NIPTypeID    := StandIDField.Value;
      NILosapCatID := StandLosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'OTH1TYPE') then begin
      NIPTypeID    := Misc1IDField.Value;
      NILosapCatID := Misc1LosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'OTH2TYPE') then begin
      NIPTypeID    := Misc2IDField.Value;
      NILosapCatID := Misc2LosapCatIDfield.Value;
    end;

    If (AnyStrToInt(NIPTypeID) > 0) then begin
      A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE FDID = ' + AddExpr(mFireID) + ' AND NIPTYPEID = ' + NIPTypeID + ' AND CODE = ' + edbfield('STATCODE','CODE'));
      If A('NISTYPE').RecordsExist then
        A('NISTYPE').Edit
      else
        A('NISTYPE').Append;
      GetField('NISTYPE','NIPTYPEID').AsString    := NIPTypeID;
      GetField('NISTYPE','NILOSAPCATID').AsString := NILosapCatID;
      GetField('NISTYPE','ACTIVE').AsString       := 'Y';
      GetField('NISTYPE','FDID').AsString         := mFireID;
      GetField('NISTYPE','CODE').AsString         := dbfield('STATCODE','CODE');
      GetField('NISTYPE','DESCR').AsString        := dbfield('STATCODE','DESC');
      GetField('NISTYPE','POINT').AsFloat         := GetField('STATCODE','POINT').AsFloat;
      A('NISTYPE').Post;
    end;

    A('STATCODE').Skip(1);
  end;

  CloseApollo('STATCODE');
  CloseApollo('NISTYPE');
  CloseApollo('NIPTYPE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.LOCATIONClick(Sender: TObject);
begin
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');
  Net_Open(DirectoryField.Text + '\STATION\SUPPORT\STATCODE.DBF','S','STATCODE');
  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('STATCODE','FIELD') = 'LOCATION') then begin
      A('LOCATION').UpdateSql('SELECT * FROM LOCATION WHERE CODE = '+edbField('STATCODE','CODE'));
      PutInUpdateMode('LOCATION');
      GetField('LOCATION','CODE').AsString       := tdbField('STATCODE','CODE');
      GetField('LOCATION','DESCR').AsString      := tdbField('STATCODE','DESC');
      GetField('LOCATION','SHORTDESCR').AsString := tdbField('STATCODE','DESC');
      GetField('LOCATION','FDID').AsString       := mFireID;
      GetTable('LOCATION').Post;
    end;
    A('STATCODE').Skip(1);
  end;

  CloseApollo('STATCODE');
  CloseApollo('LOCATION');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;



procedure TConvDbaseForm.ConvertEvent(NIPTypeID, NILosapCATID, Event, Attend: String);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    NIID          : String;
    OffCode       : String;
    OffMisc       : String;
    NIEvID        : String;
    CompScopeVar  : String;

  function GetCompScopeVar: String;
  Var EventType : String;
  begin
    If Event = 'OTHER1' then
      EventType := 'OTH1'
    else if Event = 'OTHER2' then
      EventType := 'OTH2'
    else
      EventType := Event;  
    GetCompScopeVar := padr(Event,8,' ') + padr(dbfield('EVENT','CODE'),8,' ')
  end;  
    
begin


  If AnyStrToInt(NIPTypeID) = 0 then
    exit;

  Net_Open(DirectoryField.Text + '\STATION\DBF\' + Event + '.DBF','S','EVENT');
  A('EVENT').SetOrder(2);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('EVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Net_Open(DirectoryField.Text + '\STATION\DBF\' + Attend + '.DBF','S','ATTEND');
  A('ATTEND').SetOrder(2);

  Net_Open(DirectoryField.Text + '\STATION\DBF\DRILLEV.DBF','S','DRILLEV');
  A('DRILLEV').SetOrder(1);
  Net_Open(DirectoryField.Text + '\STATION\DBF\DREVATT.DBF','S','DREVATT');
  A('DREVATT').SetOrder(2);

  Net_Open(DirectoryField.Text + '\STATION\DBF\STATCOMP.DBF','S','STATCOMP');
  A('STATCOMP').SetOrder(2);
  

  Gauge.MaxValue := A('EVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('EVENT').Eof do begin
    NIButton.Caption := Event + ' ' + IntToStr(A('EVENT').RecNo);

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('EVENT','CODE') + ' AND NIPTYPEID = ' + NIPTypeID);
    If A('NI').RecordsExist then
      A('NI').Edit
    else
      A('NI').Append;

    DateTimeStart                             := GetField('EVENT','DATE').AsDateTime +  GetRealTime(tdbfield('EVENT','TIME'));
    DateTimeEnd                               := GetField('EVENT','DATE').AsDateTime +  GetRealTime(tdbfield('EVENT','FINTIME'));
    GetField('NI','FDID').AsString            := tdbfield('EVENT','FDID');
    GetField('NI','CODE').AsString            := tdbfield('EVENT','CODE');
    GetField('NI','DESCR').AsString           := tdbfield('EVENT','DESCR');
    GetField('NI','EVLENGTH').AsFloat         := GetField('EVENT','LENGTH').AsFloat;
    GetField('NI','POINT').AsFloat            := GetField('EVENT','POINT').AsFloat;
    if NIPTypeID <> '' then
      GetField('NI','NIPTYPEID').AsString       := NIPTypeID;
    GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
    GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
    GetField('NI','NARR').AsString            := GetField('EVENT','NARR').AsString;
    GetField('NI','LOCMISC').AsString         := GetField('EVENT',IIf(Event = 'DRILL','CFUTURE2','CFUTURE1')).AsString;
    If A('NISTYPE').ExactQueryLocate(['NIPTYPEID','CODE'],[NIPTypeID,GetField('EVENT','TYPE').AsString]) then
      GetField('NI','NISTYPEID').AsString     := GetField('NISTYPE','NISTYPEID').AsString;
    GetField('NI','NILOSAPCATID').AsString    := NILosapCATID;
    If A('LOCATION').ExactQueryLocate('CODE',tdbfield('EVENT','LOCATION')) then
      GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;
    If A('FDIDCOMP').ExactQueryLocate('CODE',tdbfield('EVENT','COMPANY')) then
      GetField('NI','FDIDCOMPID').AsString      := GetField('FDIDCOMP','FDIDCOMPID').AsString;

    OffCode                                   := tdbfield('EVENT','MEMCODE');
    If Event = 'DRILL' then
      OffMisc                                 := tdbfield('EVENT','CFUTURE1')
    else
      OffMisc                                 := tdbfield('EVENT','CFUTURE2');

    If tdbfield('EVENT','SERVICE') = 'Y' then
      Getfield('NI','NIUSER1ID').AsString := '1'
    else if tdbfield('EVENT','SERVICE') = 'N' then
      Getfield('NI','NIUSER1ID').AsString := '2';

    If tdbfield('EVENT','REQUIRED') = 'Y' then
      Getfield('NI','NIUSER2ID').AsString := '1'
    else if tdbfield('EVENT','REQUIRED') = 'N' then
      Getfield('NI','NIUSER2ID').AsString := '2';

    GetTable('NI').Post;

    If GetField('NI','NIID').AsInteger > 0 then
      NIID := GetField('NI','NIID').AsString
    else
      NIID := A('NI').NewPk;

    If Not (OffCode = '') then begin
      If A('PERS').ExactQueryLocate('PERSCODE',OffCode) then begin
        A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + NIID + ' AND NIPERSINVTYPEID = 1');
        PutInUpdateMode('NIPERSINV');
        GetField('NIPERSINV','NIID').AsString            := NIID;
        GetField('NIPERSINV','NIPERSINVTYPEID').AsString := '1';
        GetField('NIPERSINV','PERSID').AsString          := Getfield('PERS','PERSID').AsString;
        GetTable('NIPERSINV').Post;
      end
    end;

    If Not (OffMisc = '') then begin
      A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + NIID + ' AND NIPERSINVTYPEID = 2');
      PutInUpdateMode('NIPERSINV');
      GetField('NIPERSINV','NIID').AsString            := NIID;
      GetField('NIPERSINV','NIPERSINVTYPEID').AsString := '2';
      GetField('NIPERSINV','NAME').AsString            := OffMisc;
      GetTable('NIPERSINV').Post;
    end;

    A('ATTEND').SetScope(dbfield('EVENT','CODE'),dbfield('EVENT','CODE'));
    While Not A('ATTEND').Eof do begin
      If A('PERS').ExactQueryLocate('PERSCODE',dbfield('ATTEND','MEMCODE')) then begin
        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + PkValue(NIID));
        If A('NIATT').RecordsExist then
          A('NIATT').Edit
        else
          A('NIATT').Append;
        GetField('NIATT','NIID').AsString             := NIID;
        GetField('NIATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
        GetField('NIATT','PERSPOINTTYPEID').AsInteger := 1;
        GetField('NIATT','EVLENGTH').AsFloat          := GetField('ATTEND','LENGTH').AsFloat;
        GetField('NIATT','POINT').AsFloat             := GetField('ATTEND','POINTVAL').AsFloat;
        GetTable('NIATT').Post;
      end;
      A('ATTEND').Skip(1);
    end;

    CompScopeVar := GetCompScopeVar;
    A('STATCOMP').SetScope(CompScopeVar,CompScopeVar);
    While Not A('STATCOMP').Eof do begin
      If A('FDIDCOMP').ExactQueryLocate('CODE',tdbfield('STATCOMP','COMPANY')) then begin
        A('NIFDIDCOMP').UpdateSQL('SELECT * FROM NIFDIDCOMP WHERE NIID = ' + NIID + ' AND FDIDCOMPID = ' + GetField('FDIDCOMP','FDIDCOMPID').AsString);
        If Not A('NIFDIDCOMP').RecordsExist then begin
          A('NIFDIDCOMP').Append;
          GetField('NIFDIDCOMP','NIID').AsString       := NIID;
          GetField('NIFDIDCOMP','FDIDCOMPID').AsString := GetField('FDIDCOMP','FDIDCOMPID').AsString;
          A('NIFDIDCOMP').Post;
        end;
      end;
      A('STATCOMP').Skip(1);
    end;

    If (Event = 'DRILL') then begin
      A('DRILLEV').SetScope(padr(dbfield('EVENT','CODE'),8,' '),padr(dbfield('EVENT','CODE'),8,' '));
      While Not A('DRILLEV').Eof do begin
        If A('NITRAINCAT1').ExactQueryLocate('CODE',dbfield('DRILLEV','EVCODE')) then begin
          A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + NIID + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
          PutInUpdateMode('NIEV');
          GetField('NIEV','NIID').AsString          := NIID;
          GetField('NIEV','NITRAINCAT1ID').AsString := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
          GetField('NIEV','DESCR').AsString         := tdbfield('DRILLEV','DESC');
          GetField('NIEV','DATETIMESTART').AsString := GetField('NI','DATETIMESTART').AsString;
          GetField('NIEV','DATETIMEEND').AsString   := GetField('NI','DATETIMEEND').AsString;
          GetField('NIEV','EVLENGTH').AsString      := GetField('DRILLEV','TIME').AsString;
          If A('PERS').ExactQueryLocate('PERSCODE',dbfield('DRILLEV','OFFCHARGE')) then
            GetField('NIEV','OFFCHARGEID').AsString := GetField('PERS','PERSID').AsString;
          GetTable('NIEV').Post;
          If GetField('NIEV','NIEVID').AsInteger > 0 then
            NIEvID := GetField('NIEV','NIEVID').AsString
          else
            NIEvID := A('NIEV').NewPk;

          A('DREVATT').SetScope(padr(dbfield('EVENT','CODE'),8,' ') + padr(dbfield('DRILLEV','EVCODE'),8,' '),padr(dbfield('EVENT','CODE'),8,' ') + padr(dbfield('DRILLEV','EVCODE'),8,' '));
          While Not A('DREVATT').Eof do begin
            If A('PERS').ExactQueryLocate('PERSCODE',dbfield('DREVATT','MEMCODE')) then begin
              A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + pkValue(NIEVID) + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
              PutInUpdateMode('NIEVATT');
              GetField('NIEVATT','NIEVID').AsString := NIEVID;
              GetField('NIEVATT','NIID').AsString   := NIID;
              GetField('NIEVATT','PERSID').AsString := GetField('PERS','PERSID').AsString;
              GetTable('NIEVATT').Post;
            end;
            A('DREVATT').Skip(1);
          end;
          If IncNIEVAttButton.ButtonState = gbChecked then begin
            A('ATTEND').GoTop;
            While Not A('ATTEND').Eof do begin
              If A('PERS').ExactQueryLocate('PERSCODE',dbfield('ATTEND','MEMCODE')) then begin
                A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + pkValue(NIEVID) + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
                PutInUpdateMode('NIEVATT');
                GetField('NIEVATT','NIEVID').AsString := NIEVID;
                GetField('NIEVATT','NIID').AsString   := NIID;
                GetField('NIEVATT','PERSID').AsString := GetField('PERS','PERSID').AsString;
                GetTable('NIEVATT').Post;
              end;
              A('ATTEND').Skip(1);
            end;
          end;
        end;
        A('DRILLEV').Skip(1);
      end;
    end;

    A('EVENT').Skip(1);
  end;
  CloseApollo('EVENT');
  CloseApollo('ATTEND');
  CloseApollo('DRILLEV');
  CloseApollo('DREVATT');
  CloseApollo('STATCOMP');
  Gauge.Progress := 0;
end;

procedure TConvDbaseForm.NIButtonClick(Sender: TObject);
begin
  NIButton.Enabled := false;

  Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');
  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE');
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');
  Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP');
  Open_Query('NIPERSINV',true,'SELECT * FROM NIPERSINV WHERE 1=2');
  Open_Query('NIFDIDCOMP',true,'SELECT * FROM NIFDIDCOMP WHERE 1=2');

  AddStatusListBox(ListBox1,'Converting Drills');
  ConvertEvent(DrillIDField.Value,  DrillLosapCatIDField.Value, 'DRILL',  'DRILLATT');
  AddStatusListBox(ListBox1,'Converting Meetings');
  ConvertEvent(MeetIDField.Value,   MeetLosapCatIDField.Value,  'MEET',   'MEETATT');
  AddStatusListBox(ListBox1,'Converting Work Details');
  ConvertEvent(WorkIDField.Value,   WorkLosapCatIDField.Value,  'WORK',   'WORKATT');
  AddStatusListBox(ListBox1,'Converting Standbys');
  ConvertEvent(StandIDField.Value,  StandLosapCatIDField.Value, 'STAND',  'STANDATT');
  AddStatusListBox(ListBox1,'Converting Misc 1');
  ConvertEvent(Misc1IDField.Value,  Misc1LosapCatIDField.Value, 'OTHER1', 'OTHATT1');
  AddStatusListBox(ListBox1,'Converting Misc 2');
  ConvertEvent(Misc2IDField.Value,  Misc2LosapCatIDField.Value, 'OTHER2', 'OTHATT2');
  AddStatusListBox(ListBox1,'Converted Non Incidents');

  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NISTYPE');
  CloseApollo('NIPTYPE');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');
  CloseApollo('LOCATION');
  CloseApollo('FDIDCOMP');
  CloseApollo('NIPERSINV');
  CloseApollo('NIFDIDCOMP');

  NIButton.Enabled := true;

  ShowMessage('Done');
end;

procedure TConvDbaseForm.NFIRSSTRClick(Sender: TObject);
Var Fdid   : String;
    IncNum : String;
    ExpNum : String;
begin
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\NFIRSSTR.DBF','S','OLDNFIRSSTR');

  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSSTR',true,'SELECT * FROM NFIRSSTR WHERE 1=2');

  While Not A('OLDNFIRSSTR').Eof do begin
    Fdid   := tdbfield('OLDNFIRSSTR','FDID');
    IncNum := tdbfield('OLDNFIRSSTR','INCNUM');
    ExpNum := tdbfield('OLDNFIRSSTR','EXPNUM');

    If Not (Fdid = '') and Not (IncNum = '') and Not (ExpNum = '') then begin
      A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
      If A('NFIRSMAIN').RecordsExist then begin
        A('NFIRSSTR').UpdateSQL('SELECT * FROM NFIRSSTR WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        If A('NFIRSSTR').RecordsExist then
          GetTable('NFIRSSTR').Edit
        else begin
          GetTable('NFIRSSTR').Append;
          GetField('NFIRSSTR','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
        end;
        CommonConvertNfirsStr;
        GetField('NFIRSSTR','LENGTHSQL').AsString          := GetField('OLDNFIRSSTR' ,'LENGTH').AsString;
        A('NFIRSSTR').Post;
      end;
    end;
    A('OLDNFIRSSTR').Skip(1);
  end;

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSSTR');
  CloseApollo('OLDNFIRSSTR');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvCodeButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\INVCODE.DBF','S','INVCODE');

  Open_Query('INVSUBTYPE',True,'SELECT * FROM INVSUBTYPE WHERE 1=2');
  Open_Query('INVDISPOSAL',true,'SELECT * FROM INVDISPOSAL WHERE 1=2');
  Open_Query('INVDEPRMETH',true,'SELECT * FROM INVDEPRMETH WHERE 1=2');
  Open_Query('INVOWNER',true,'SELECT * FROM INVOWNER WHERE 1=2');
  Open_Query('INVSERVTYPE',true,'SELECT * FROM INVSERVTYPE WHERE 1=2');
  Open_Query('HOSERATING',true,'SELECT * FROM HOSERATING WHERE 1=2');
  Open_Query('HOSECOUPLE',true,'SELECT * FROM HOSECOUPLE WHERE 1=2');
  Open_Query('INVDESCR',true,'SELECT * FROM INVDESCR');

  Gauge.MaxValue := A('INVCODE').RecordCount;
  Gauge.Progress := 0;


  while not A('INVCODE').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('INVCODE','FIELD') = 'GETYPE') then begin
      A('INVSUBTYPE').UpdateSql('SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('GEN') + ' AND CODE = ' + edbField('INVCODE','CODE'));
      If A('INVSUBTYPE').RecordsExist then
        GetTable('INVSUBTYPE').Edit
      else
        GetTable('INVSUBTYPE').Insert;
      GetField('INVSUBTYPE','TYPE').AsString  := 'GEN';
      GetField('INVSUBTYPE','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVSUBTYPE','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVSUBTYPE').Post;

    end else if  (tdbfield('INVCODE','FIELD') = 'SCTYPE') then begin
      A('INVSUBTYPE').UpdateSql('SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('SCBA') + ' AND CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVSUBTYPE');
      GetField('INVSUBTYPE','TYPE').AsString  := 'SCBA';
      GetField('INVSUBTYPE','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVSUBTYPE','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVSUBTYPE').Post;

    end else if  (tdbfield('INVCODE','FIELD') = 'HORATING') then begin
      A('HOSERATING').UpdateSql('SELECT * FROM HOSERATING WHERE CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('HOSERATING');
      GetField('HOSERATING','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('HOSERATING','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('HOSERATING').Post;

    end else if  (tdbfield('INVCODE','FIELD') = 'HOCOUPLE') then begin
      A('HOSECOUPLE').UpdateSql('SELECT * FROM HOSECOUPLE WHERE CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('HOSECOUPLE');
      GetField('HOSECOUPLE','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('HOSECOUPLE','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('HOSECOUPLE').Post;
    end else if  (tdbfield('INVCODE','FIELD') = 'GENDESC') then begin
      A('INVDESCR').ExactQueryLocateAndPutInEditMode(['DESCR'],[tdbField('INVCODE','DESC')]);
      GetField('INVDESCR','TYPE').AsString := 'GEN';      
      GetField('INVDESCR','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVDESCR').Post;

    end else if  (tdbfield('INVCODE','FIELD') = 'TRTYPE') then begin
      A('INVSUBTYPE').UpdateSql('SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('TRUCK') + ' AND CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVSUBTYPE');
      GetField('INVSUBTYPE','TYPE').AsString  := 'TRUCK';
      GetField('INVSUBTYPE','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVSUBTYPE','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVSUBTYPE').Post;

    end else if  (tdbfield('INVCODE','FIELD') = 'HOTYPE') then begin
      A('INVSUBTYPE').UpdateSql('SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr('HOSE') + ' AND CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVSUBTYPE');
      GetField('INVSUBTYPE','TYPE').AsString  := 'HOSE';
      GetField('INVSUBTYPE','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVSUBTYPE','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVSUBTYPE').Post;

    end else if (tdbfield('INVCODE','FIELD') = 'DISPOSAL') then begin
      A('INVDISPOSAL').UpdateSql('SELECT * FROM INVDISPOSAL WHERE CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVDISPOSAL');
      GetField('INVDISPOSAL','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVDISPOSAL','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVDISPOSAL').Post;
      
    end else if (tdbfield('INVCODE','FIELD') = 'INVDEPRMETH') then begin
      A('INVDEPRMETH').UpdateSql('SELECT * FROM INVDEPRMETH WHERE CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVDEPRMETH');
      GetField('INVDEPRMETH','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVDEPRMETH','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVDEPRMETH').Post;

    end else if (tdbfield('INVCODE','FIELD') = 'IVOWNER') then begin
      A('INVOWNER').UpdateSql('SELECT * FROM INVOWNER WHERE CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVOWNER');
      GetField('INVOWNER','CODE').AsString  := tdbField('INVCODE','CODE');
      GetField('INVOWNER','DESCR').AsString := tdbField('INVCODE','DESC');
      GetTable('INVOWNER').Post;

    end else if (tdbfield('INVCODE','FIELD') = 'INSERVTYPE') then begin
      A('INVSERVTYPE').UpdateSql('SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('INVSERV') + ' AND CODE = ' + edbField('INVCODE','CODE'));
      PutInUpdateMode('INVSERVTYPE');
      GetField('INVSERVTYPE','INVSERVFORM').AsString := 'INVSERV';
      GetField('INVSERVTYPE','CODE').AsString        := tdbField('INVCODE','CODE');
      GetField('INVSERVTYPE','DESCR').AsString       := tdbField('INVCODE','DESC');
      GetTable('INVSERVTYPE').Post;

    end;
    A('INVCODE').Skip(1);
  end;
  CloseApollo('INVCODE');
  CloseApollo('INVSUBTYPE');
  CloseApollo('INVSERVTYPE');

  CloseApollo('INVDISPOSAL');
  CloseApollo('INVDEPRMETH');
  CloseApollo('INVOWNER');

  CloseApollo('HOSERATING');
  CloseApollo('HOSECOUPLE');
  CloseApollo('INVDESCR');


  ShowMessage('Done');
end;

procedure TConvDbaseForm.InspTypeButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\INSPTYPE.DBF','S','INSPTYPE');
  Open_Query('INVSERVTYPE',True,'SELECT * FROM INVSERVTYPE WHERE 1=2');
  while not A('INSPTYPE').eof do begin
    A('INVSERVTYPE').UpdateSql('SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPINSP') + ' AND CODE = ' + edbField('INSPTYPE','CODE'));
    if A('INVSERVTYPE').RecordsExist then
      GetTable('INVSERVTYPE').Edit
    else
      GetTable('INVSERVTYPE').Insert;
    GetField('INVSERVTYPE','INVSERVFORM').AsString := 'APPINSP';
    GetField('INVSERVTYPE','CODE').AsString        := tdbField('INSPTYPE','CODE');
    GetField('INVSERVTYPE','DESCR').AsString       := tdbField('INSPTYPE','DESC');
    GetTable('INVSERVTYPE').Post;
    A('INSPTYPE').Skip(1);
  end;
  CloseApollo('INSPTYPE');
  CloseApollo('INVSERVTYPE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.ServTypeButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\SERVTYPE.DBF','S','SERVTYPE');
  Open_Query('INVSERVTYPE',True,'SELECT * FROM INVSERVTYPE WHERE 1=2');
  while not A('SERVTYPE').eof do begin
    A('INVSERVTYPE').UpdateSql('SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPSERV') + ' AND CODE = ' + edbField('SERVTYPE','CODE'));
    if A('INVSERVTYPE').RecordsExist then
      GetTable('INVSERVTYPE').Edit
    else
      GetTable('INVSERVTYPE').Insert;
    GetField('INVSERVTYPE','INVSERVFORM').AsString := 'APPSERV';
    GetField('INVSERVTYPE','CODE').AsString        := tdbField('SERVTYPE','CODE');
    GetField('INVSERVTYPE','DESCR').AsString       := tdbField('SERVTYPE','DESC');
    GetTable('INVSERVTYPE').Post;
    A('SERVTYPE').Skip(1);
  end;
  CloseApollo('SERVTYPE');
  CloseApollo('INVSERVTYPE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InspSchdButtonClick(Sender: TObject);
Var InvID         : String;
    InvServTypeID : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\INSPSCHD.DBF','S','INSPSCHD');

  Gauge.MaxValue := A('INSPSCHD').RecordCount;
  Gauge.Progress := 0;

  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVSERVTYPE',false,'SELECT INVSERVTYPEID, CODE FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPINSP'));
  Open_Query('INVSERVSCHD',True,'SELECT * FROM INVSERVSCHD WHERE 1=2');

  while not A('INSPSCHD').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('INVSERVTYPE').ExactQueryLocate('CODE',tdbfield('INSPSCHD','CODE')) then begin
      InvServTypeID := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

      If A('INV').ExactQueryLocate('INVNUM',tdbfield('INSPSCHD','INVNUM')) then begin
        InvID := GetField('INV','INVID').AsString;
        A('INVSERVSCHD').UpdateSql('SELECT * FROM INVSERVSCHD WHERE INVID = ' + InvID + ' AND INVSERVTYPEID = ' + InvServTypeID + ' AND INVSERVFORM = ' + AddExpr('APPINSP'));
        PutInUpdateMode('INVSERVSCHD');
        GetField('INVSERVSCHD','INVSERVFORM').AsString   := 'APPINSP';
        GetField('INVSERVSCHD','INVSERVTYPEID').AsString := InvServTypeID;
        GetField('INVSERVSCHD','INVID').AsString         := InvID;
        GetField('INVSERVSCHD','DESCR').AsString         := tdbField('INSPSCHD','DESC');
        GetField('INVSERVSCHD','NARR').AsString          := Getfield('INSPSCHD','NARR').AsString;

        GetField('INVSERVSCHD','HOURMIN').AsString       := Getfield('INSPSCHD','HOURMIN').AsString;
        GetField('INVSERVSCHD','HOURMAX').AsString       := Getfield('INSPSCHD','HOURMAX').AsString;
        GetField('INVSERVSCHD','DAYMIN').AsString        := Getfield('INSPSCHD','DAYMIN').AsString;
        GetField('INVSERVSCHD','DAYMAX').AsString        := Getfield('INSPSCHD','DAYMAX').AsString;
        GetField('INVSERVSCHD','MILEMIN').AsString       := Getfield('INSPSCHD','MILEMIN').AsString;
        GetField('INVSERVSCHD','MILEMAX').AsString       := Getfield('INSPSCHD','MILEMAX').AsString;

        GetTable('INVSERVSCHD').Post;
      end;
    end;
    A('INSPSCHD').Skip(1);
  end;
  CloseApollo('INV');
  CloseApollo('INVSERVSCHD');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INSPSCHD');
  ShowMessage('Done');
end;

function GetTableName(TableNameVar: String): String;
begin
  If TableNameVar = 'INC' then
    GetTableName := 'NFIRSMAIN'
  else
    GetTableName := TableNameVar;
end;

function GetFieldName(FieldNameVar: String): String;
begin
  If FieldNameVar = 'SITFOUND' then
    GetFieldName := 'SITFOUND'

  else if FieldNameVar = 'TYPEACT' then
    GetFieldName := 'TYPEACT'

  else if FieldNameVar = 'PCITY' then
    GetFieldName := 'CITY'

  else if FieldNameVar = 'PSTATE' then
    GetFieldName := 'STATE'

  else if FieldNameVar = 'ADDREMARK' then
    GetFieldName := 'NARR'

  else if FieldNameVar = 'MAID' then
    GetFieldName := 'MAID'

  else if FieldNameVar = 'LOCTYPE' then
    GetFieldName := 'LOCTYPE'

  else if FieldNameVar = 'POINT' then
    GetFieldName := 'POINT'

  else if FieldNameVar = 'MEMASS' then
    GetFieldName := 'MEMASS'

  else if FieldNameVar = 'MEMRANK' then
    GetFieldName := 'MEMRANK'

  else if FieldNameVar = 'MEMREP' then
    GetFieldName := 'MEMRANK'

  else if FieldNameVar = 'NOTRESFLAG' then
    GetFieldName := 'NOTRESFLAG'

  else if FieldNameVar = 'DETECTOR' then
    GetFieldName := 'DETECTOR' 

  else if FieldNameVar = 'MOBTYPE' then
    GetFieldName := 'MOBTYPE'

  else if FieldNameVar = 'MRFIRST' then
    GetFieldName := 'MRFIRST'
    
  else if FieldNameVar = 'ACRENONE' then
    GetFieldName := 'ACRENONE'

  else if FieldNameVar = 'NOCAUSE' then
    GetFieldName := 'NOCAUSE'

  else if FieldNameVar = 'BUILDNOINV' then
    GetFieldName := 'BUILDNOINV'

  else
    GetFieldName := '';
    
end;


procedure TConvDbaseForm.IncTemplateButtonClick(Sender: TObject);
Var TableDefaultID : String;
    SysTableID     : String;
    TableName      : String;
    FieldName      : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCTEMP.DBF','S','INCTEMP');
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCTEMPL.DBF','S','INCTEMPL');
  A('INCTEMPL').SetOrder(1);

  Open_Query('TABLEDEFAULT',true,'SELECT * FROM TABLEDEFAULT WHERE 1=2');
  Open_Query('TABLEDEFAULTFIELD',true,'SELECT * FROM TABLEDEFAULTFIELD WHERE 1=2');

  Gauge.MaxValue := A('INCTEMP').RecordCount;
  Gauge.Progress := 0;

  while not A('INCTEMP').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('TABLEDEFAULT').UpdateSQL('SELECT * FROM TABLEDEFAULT WHERE PK = ' + edbfield('INCTEMP','PK'));
    PutInUpdateMode('TABLEDEFAULT');

    GetField('TABLEDEFAULT','PK').AsString      := tdbField('INCTEMP','PK');
    GetField('TABLEDEFAULT','DESCR').AsString   := tdbField('INCTEMP','SHORTDESC');
    GetField('TABLEDEFAULT','NARR').AsString    := GetField('INCTEMP','NARR').AsString;
    GetField('TABLEDEFAULT','MODCODE').AsString := 'INC';
    GetField('TABLEDEFAULT','FDID').AsString    := FireID;

    GetTable('TABLEDEFAULT').Post;

    If GetField('TABLEDEFAULT','TABLEDEFAULTID').AsInteger > 0 then
      TableDefaultID := GetField('TABLEDEFAULT','TABLEDEFAULTID').AsString
    else
      TableDefaultID := A('TABLEDEFAULTID').NewPk;

    A('INCTEMPL').SetScope(dbfield('INCTEMP','PK'),dbfield('INCTEMP','PK'));
    While Not A('INCTEMPL').Eof do begin
      If tdbfield('INCTEMPL','FIELDNAME') = 'IGFACTOR' then begin
        TableName := 'NFIRSFIR';
        FieldName := 'CAUSEIGN';
      end else begin
        TableName  := GetTableName(tdbfield('INCTEMPL','TABLENAME'));
        FieldName  := GetFieldName(tdbfield('INCTEMPL','FIELDNAME'));
      end;  
      SysTableID := SQLLookUp(TableName,'TABLENAME','SYSTABLE','SYSTABLEID');
      If Not (SysTableID = '') and Not (FieldName = '') then begin
        A('TABLEDEFAULTFIELD').UpdateSQL('SELECT * FROM TABLEDEFAULTFIELD WHERE TABLEDEFAULTID = ' + pkValue(TableDefaultID) + ' AND SYSTABLEID = ' + pkvalue(SysTableID) + ' AND FIELDNAME = ' + AddExpr(FieldName));
        PutInUpdateMode('TABLEDEFAULTFIELD');
        GetField('TABLEDEFAULTFIELD','FIELDNAME').AsString      := FieldName;
        GetField('TABLEDEFAULTFIELD','SYSTABLEID').AsString     := SysTableID;
        GetField('TABLEDEFAULTFIELD','TABLEDEFAULTID').AsString := TableDefaultID;
        GetField('TABLEDEFAULTFIELD','FIELDVALUE').AsString     := GetField('INCTEMPL','INCDEFAULT').AsString;
        GetTable('TABLEDEFAULTFIELD').Post;
      end;
      A('INCTEMPL').Skip(1);
    end;

    A('INCTEMP').Skip(1);
  end;

  CloseApollo('TABLEDEFAULT');
  CloseApollo('TABLEDEFAULTFIELD');
  CloseApollo('INCTEMP');
  CloseApollo('INCTEMPL');
  ShowMessage('Incident Templates Done')
end;


procedure TConvDbaseForm.InspHistButtonClick(Sender: TObject);
Var DateDone      : TDateTime;
    InvID         : String;
    InvServTypeID : String;
    Descr         : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\INSPHIST.DBF','S','INSPHIST');

  Gauge.MaxValue := A('INSPHIST').RecordCount;
  Gauge.Progress := 0;

  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('INV',false,'SELECT INVID FROM INV WHERE 1=2');
  Open_Query('INVSERVTYPE',false,'SELECT INVSERVTYPEID FROM INVSERVTYPE WHERE 1=2');
  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');
  while not A('INSPHIST').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    DateDone := Getfield('INSPHIST','DATE').AsDateTime;
    Descr    := tdbField('INSPHIST','DESC');
    A('INV').UpdateSQL('SELECT INVID FROM INV WHERE INVNUM = ' + edbfield('INSPHIST','INVNUM'));
    If A('INV').RecordsExist then
      InvID := GetField('INV','INVID').AsString;

    A('INVSERVTYPE').UpdateSQL('SELECT INVSERVTYPEID FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPINSP') + ' AND CODE = ' + edbfield('INSPHIST','CODE'));
    If A('INVSERVTYPE').RecordsExist then
      InvServTypeID := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

    If (AnyStrToInt(InvID) > 0) and ((AnyStrToInt(InvServTypeID) > 0) or (Descr <> '')) and (DateDone > 0) then begin
      A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE INVID = ' + InvID  + ' AND ((INVSERVTYPEID = ' + pkValue(InvServTypeID) + ') OR (DESCR = ' + AddExpr(Descr) + ')) AND INVSERVFORM = ' + AddExpr('APPINSP') + ' AND DATEDONE = ' + AddExpr(FormatDateTime('YYYY-MM-DD',DateDone)));
      PutInUpdateMode('INVSERVHIST');
      GetField('INVSERVHIST','INVSERVFORM').AsString      := 'APPINSP';
      GetField('INVSERVHIST','INVID').AsString            := InvID;
      If (AnyStrToInt(InvServTypeID) > 0) then
        GetField('INVSERVHIST','INVSERVTYPEID').AsString    := InvServTypeID;
      GetField('INVSERVHIST','DATEDONE').AsDateTime       := DateDone;
      A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('INSPHIST','MEMCODE'));
      If A('PERS').RecordsExist then
        GetField('INVSERVHIST','PERSID').AsString := GetField('PERS','PERSID').AsString;
      GetField('INVSERVHIST','DESCR').AsString            := Descr;
      GetField('INVSERVHIST','ODOMETER').AsString         := Getfield('INSPHIST','MILE').AsString;
      GetField('INVSERVHIST','TOTALCOST').AsString        := Getfield('INSPHIST','COST').AsString;
      GetField('INVSERVHIST','NARR').AsString             := Getfield('INSPHIST','NARR').AsString;
      GetField('INVSERVHIST','HOURENGINE').AsString       := Getfield('INSPHIST','HOUR').AsString;
      GetField('INVSERVHIST','HOURPUMP').AsString         := Getfield('INSPHIST','PUMPHOUR').AsString;
      GetField('INVSERVHIST','HOURAERIAL').AsString       := Getfield('INSPHIST','AERIALHOUR').AsString;
      GetField('INVSERVHIST','ROLODEXID').AsString        := SqlLookup(Getfield('INSPHIST','VENDNUM').AsString,'VENDNUM','ROLODEX','ROLODEXID');

      GetTable('INVSERVHIST').Post;
    end;  
    A('INSPHIST').Skip(1);
  end;
  CloseApollo('PERS');
  CloseApollo('INV');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INSPHIST');
  CloseApollo('INVSERVHIST');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.ServSchdButtonClick(Sender: TObject);
Var InvID         : String;
    InvServTypeID : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\SERVSCHD.DBF','S','SERVSCHD');

  Gauge.MaxValue := A('SERVSCHD').RecordCount;
  Gauge.Progress := 0;

  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVSERVTYPE',false,'SELECT INVSERVTYPEID, CODE FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPSERV'));
  Open_Query('INVSERVSCHD',True,'SELECT * FROM INVSERVSCHD WHERE 1=2');

  while not A('SERVSCHD').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('INVSERVTYPE').ExactQueryLocate('CODE',tdbfield('SERVSCHD','CODE')) then begin
      InvServTypeID := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

      If A('INV').ExactQueryLocate('INVNUM',tdbfield('SERVSCHD','INVNUM')) then begin
        InvID := GetField('INV','INVID').AsString;
        A('INVSERVSCHD').UpdateSql('SELECT * FROM INVSERVSCHD WHERE INVID = ' + InvID + ' AND INVSERVTYPEID = ' + InvServTypeID + ' AND INVSERVFORM = ' + AddExpr('APPSERV'));
        PutInUpdateMode('INVSERVSCHD');
        GetField('INVSERVSCHD','INVSERVFORM').AsString   := 'APPSERV';
        GetField('INVSERVSCHD','INVSERVTYPEID').AsString := InvServTypeID;
        GetField('INVSERVSCHD','INVID').AsString         := InvID;
        GetField('INVSERVSCHD','DESCR').AsString         := tdbField('SERVSCHD','DESC');
        GetField('INVSERVSCHD','NARR').AsString          := Getfield('SERVSCHD','NARR').AsString;

        GetField('INVSERVSCHD','HOURMIN').AsString       := Getfield('SERVSCHD','HOURMIN').AsString;
        GetField('INVSERVSCHD','HOURMAX').AsString       := Getfield('SERVSCHD','HOURMAX').AsString;
        GetField('INVSERVSCHD','DAYMIN').AsString        := Getfield('SERVSCHD','DAYMIN').AsString;
        GetField('INVSERVSCHD','DAYMAX').AsString        := Getfield('SERVSCHD','DAYMAX').AsString;
        GetField('INVSERVSCHD','MILEMIN').AsString       := Getfield('SERVSCHD','MILEMIN').AsString;
        GetField('INVSERVSCHD','MILEMAX').AsString       := Getfield('SERVSCHD','MILEMAX').AsString;

        GetTable('INVSERVSCHD').Post;
      end;
    end;
    A('SERVSCHD').Skip(1);
  end;
  CloseApollo('INV');
  CloseApollo('INVSERVSCHD');
  CloseApollo('INVSERVTYPE');
  CloseApollo('SERVSCHD');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.ServHistButtonClick(Sender: TObject);
Var InvServHistID : String;
begin
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\SERVHIST.DBF','S','SERVHIST');
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\SERVPART.DBF','S','SERVPART');
  A('SERVPART').SetOrder(2);

  Gauge.MaxValue := A('SERVHIST').RecordCount;
  Gauge.Progress := 0;

  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('INV',false,'SELECT INVID FROM INV WHERE 1=2');
  Open_Query('INVSERVTYPE',false,'SELECT INVSERVTYPEID FROM INVSERVTYPE WHERE 1=2');
  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');
  Open_Query('INVSERVPART',True,'SELECT * FROM INVSERVPART WHERE 1=2');
  Open_Query('ROLODEX',True,'SELECT * FROM ROLODEX WHERE 1=2');
  while not A('SERVHIST').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE PRIMEKEY = ' + edbfield('SERVHIST','PRIMEKEY'));
    if A('INVSERVHIST').RecordsExist then
      GetTable('INVSERVHIST').Edit
    else
      GetTable('INVSERVHIST').Insert;
    GetField('INVSERVHIST','INVSERVFORM').AsString   := 'APPSERV';

    A('INV').UpdateSQL('SELECT INVID FROM INV WHERE INVNUM = ' + edbfield('SERVHIST','INVNUM'));
    If A('INV').RecordsExist then
      GetField('INVSERVHIST','INVID').AsString := GetField('INV','INVID').AsString;

    A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('SERVHIST','MEMCODE'));
    If A('PERS').RecordsExist then
      GetField('INVSERVHIST','PERSID').AsString := GetField('PERS','PERSID').AsString;

    A('INVSERVTYPE').UpdateSQL('SELECT INVSERVTYPEID FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('APPSERV') + ' AND CODE = ' + edbfield('SERVHIST','CODE'));
    If A('INVSERVTYPE').RecordsExist then
      GetField('INVSERVHIST','INVSERVTYPEID').AsString := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

    A('ROLODEX').UpdateSQL('SELECT ROLODEXID FROM ROLODEX WHERE VENDNUM = ' + edbfield('SERVHIST','VENDNUM'));
    If A('ROLODEX').RecordsExist then
      GetField('INVSERVHIST','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;


    GetField('INVSERVHIST','PRIMEKEY').AsString         := tdbField('SERVHIST','PRIMEKEY');
    GetField('INVSERVHIST','DESCR').AsString            := tdbField('SERVHIST','DESC');
    GetField('INVSERVHIST','DATEDONE').AsString         := Getfield('SERVHIST','DATE').AsString;

    GetField('INVSERVHIST','ODOMETER').AsString         := Getfield('SERVHIST','MILE').AsString;
    GetField('INVSERVHIST','HOURENGINE').AsString       := Getfield('SERVHIST','HOUR').AsString;
    GetField('INVSERVHIST','HOURPUMP').AsString         := Getfield('SERVHIST','PUMPHOUR').AsString;
    GetField('INVSERVHIST','HOURAERIAL').AsString       := Getfield('SERVHIST','AERIALHOUR').AsString;

    GetField('INVSERVHIST','PARTTOTAL').AsString        := Getfield('SERVHIST','PARTCOST').AsString;
    GetField('INVSERVHIST','LABORLENGTHTOTAL').AsString := Getfield('SERVHIST','TIME').AsString;
    GetField('INVSERVHIST','LABORTOTAL').AsString       := Getfield('SERVHIST','LABORCOST').AsString;
    GetField('INVSERVHIST','TOTALCOST').AsString        := Getfield('SERVHIST','COST').AsString;

    GetField('INVSERVHIST','NARR').AsString             := Getfield('SERVHIST','NARR').AsString;
    GetField('INVSERVHIST','WORKNUM').AsString          := Getfield('SERVHIST','WORKNUM').AsString;
    GetTable('INVSERVHIST').Post;

    If GetField('INVSERVHIST','INVSERVHISTID').AsInteger > 0 then
      InvServHistID := GetField('INVSERVHIST','INVSERVHISTID').AsString
    else
      InvServHistID := A('INVSERVHISTID').NewPk;

    If Not (tdbfield('SERVHIST','PRIMEKEY') = '') then begin
      A('SERVPART').SetScope(dbfield('SERVHIST','PRIMEKEY'),dbfield('SERVHIST','PRIMEKEY'));
      While Not A('SERVPART').Eof do begin
        A('INVSERVPART').UpdateSQL('SELECT * FROM INVSERVPART WHERE INVSERVHISTID = ' + InvServHistID + ' AND PARTNUM = ' + edbfield('SERVPART','PARTNUM') + ' AND DESCR = ' + edbfield('SERVPART','DESC'));

        PutInUpdateMode('INVSERVPART');

        GetField('INVSERVPART','LABORLENGTH').AsFloat    := GetField('SERVPART','LENGTHSQL').AsFloat;
        GetField('INVSERVPART','PARTCOST').AsFloat       := GetField('SERVPART','COST').AsFloat;
        GetField('INVSERVPART','LABORSUBTOTAL').AsFloat  := GetField('SERVPART','LABORCOST').AsFloat;
        GetField('INVSERVPART','DESCR').AsString         := tdbfield('SERVPART','DESC');
        GetField('INVSERVPART','PARTNUM').AsString       := tdbfield('SERVPART','PARTNUM');
        GetField('INVSERVPART','INVSERVHISTID').AsString := InvServHistID;
        GetTable('INVSERVPART').Post;

        A('SERVPART').Skip(1);
      end;
    end;  

    A('SERVHIST').Skip(1);
  end;
  CloseApollo('PERS');
  CloseApollo('INV');
  CloseApollo('INVSERVTYPE');
  CloseApollo('SERVHIST');
  CloseApollo('SERVPART');
  CloseApollo('INVSERVHIST');
  CloseApollo('INVSERVPART');
  CloseApollo('ROLODEX');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvMastsButtonClick(Sender: TObject);
begin
  inherited;
  If Not FileExists(DirectoryField.Text + '\INVENTOR\DBF\INVMASTS.DBF') then begin
    ShowMessage('INVENTORY not installed');
    exit;
  end;
  Net_Open(DirectoryField.Text + '\INVENTOR\DBF\INVMASTS.DBF','S','INVMASTS');

  Gauge.MaxValue := A('INVMASTS').RecordCount;
  Gauge.Progress := 0;

  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('ROLODEX',false,'SELECT ROLODEXID, VENDNUM FROM ROLODEX');
  Open_Query('INVSERVTYPE',false,'SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('INVSERV'));
  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');

  while not A('INVMASTS').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If Not (tdbfield('INVMASTS','INVNUM') = '') and A('INV').ExactQueryLocate('INVNUM',tdbfield('INVMASTS','INVNUM')) then begin

      A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE INVID = ' + GetField('INV','INVID').AsString + ' AND INVSERVFORM = ' + AddExpr('INVSERV') + ' AND PRIMEKEY = ' + edbfield('INVMASTS','PRIMEKEY'));
      PutInUpdateMode('INVSERVHIST');

      GetField('INVSERVHIST','INVID').AsString := GetField('INV','INVID').AsString;

      If A('INVSERVTYPE').ExactQueryLocate('CODE',dbfield('INVMASTS','TYPE')) then
        GetField('INVSERVHIST','INVSERVTYPEID').AsString := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

      If A('ROLODEX').ExactQueryLocate('VENDNUM',dbfield('INVMASTS','VENDNUM')) then
        GetField('INVSERVHIST','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;

      GetField('INVSERVHIST','INVSERVFORM').AsString      := 'INVSERV';

      GetField('INVSERVHIST','PRIMEKEY').AsString         := GetField('INVMASTS','PRIMEKEY').AsString;
      GetField('INVSERVHIST','DATEDONE').AsString         := GetField('INVMASTS','DATE').AsString;
      GetField('INVSERVHIST','DESCR').AsString            := GetField('INVMASTS','DESC').AsString;
      GetField('INVSERVHIST','NARR').AsString             := GetField('INVMASTS','NARR').AsString;
      GetField('INVSERVHIST','TOTALCOST').AsString        := GetField('INVMASTS','COST').AsString;

      GetTable('INVSERVHIST').Post;
    end;
    A('INVMASTS').Skip(1);
  end;
  
  CloseApollo('INV');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INVSERVHIST');
  CloseApollo('ROLODEX');
  CloseApollo('INVMASTS');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvServStatusButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\TRUCK\SUPPORT\TRCKCODE.DBF','S','TRCKCODE');
  Open_Query('INVSERVSTATUS',True,'SELECT * FROM INVSERVSTATUS WHERE 1=2');
  while not A('TRCKCODE').eof do begin
    If tdbfield('TRCKCODE','FIELD') = 'IMSTATUS' then begin
      A('INVSERVSTATUS').UpdateSql('SELECT * FROM INVSERVSTATUS WHERE CODE = ' + edbField('TRCKCODE','CODE'));
      if A('INVSERVSTATUS').RecordsExist then
        GetTable('INVSERVSTATUS').Edit
      else
        GetTable('INVSERVSTATUS').Insert;
      GetField('INVSERVSTATUS','CODE').AsString  := tdbField('TRCKCODE','CODE');
      GetField('INVSERVSTATUS','DESCR').AsString := tdbField('TRCKCODE','DESC');
      GetTable('INVSERVSTATUS').Post;
    end;
    A('TRCKCODE').Skip(1);
  end;
  CloseApollo('TRCKCODE');
  CloseApollo('INVSERVSTATUS');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InvServTypeStatusButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INVSERVTYPESTATUS',true,'SELECT * FROM INVSERVTYPESTATUS WHERE 1=2');
  A('INVSERVTYPESTATUS').UpdateSQL('SELECT * FROM INVSERVTYPESTATUS WHERE CODE = ' + AddExpr('AOK'));
  If A('INVSERVTYPESTATUS').RecordsExist then
    A('INVSERVTYPESTATUS').Edit
  else
    A('INVSERVTYPESTATUS').Append;
  GetField('INVSERVTYPESTATUS','SORTORD').AsString := '1';
  GetField('INVSERVTYPESTATUS','CODE').AsString    := 'AOK';
  GetField('INVSERVTYPESTATUS','DESCR').AsString   := 'AOK';
  A('INVSERVTYPESTATUS').Post;
  CloseApollo('INVSERVTYPESTATUS');
end;

procedure TConvDbaseForm.HydTypeClick(Sender: TObject);
begin
  if not FileExists(DirectoryField.text+'\HYDRANT\DBF\HYDCODE.DBF') then begin
    ShowMessage('No Hydrant Files!');
    exit;
  end;    
  ConvertCodeTable('HYDTYPE','\HYDRANT\DBF\HYDCODE.DBF','HYTYPE');
  ConvertCodeTable('HYDSTATUS','\HYDRANT\DBF\HYDCODE.DBF','HYONLINE');
  ConvertCodeTable('HYDNFPACLASS','\HYDRANT\DBF\HYDCODE.DBF','HYNFPA');
  ConvertCodeTable('HYDINSPECTTYPE','\HYDRANT\DBF\HYDCODE.DBF','HYDINTYP');
  showmessage('Done');
end;

procedure TConvDbaseForm.HydInspectionsClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\HYDRANT\DBF\HYDINSP.DBF','S','HYDINSP');

  Open_Query('HYDINSPECT',true,'SELECT * FROM HYDINSPECT WHERE 1=2');
  Open_Query('HYD',False,'SELECT HYDCODE,HYDID FROM HYD');
  Open_Query('PERS',False,'SELECT PERSCODE,PERSID FROM PERS');
  Open_query('ROLODEX',False,'SELECT ROLODEX.VENDNUM,ROLODEX.ROLODEXID FROM ROLODEX LEFT OUTER JOIN ROLODEXTYPE ON (ROLODEX.ROLODEXTYPEID = ROLODEXTYPE.ROLODEXTYPEID) '+
                             'WHERE ROLODEXTYPE.INVVENDOR = '+AddExpr('Y'));
  Open_Query('HYDINSPECTTYPE',False,'SELECT * FROM HYDINSPECTTYPE');

  Gauge.MaxValue := A('HYDINSP').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('HYDINSP').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('HYD').ExactQueryLocate('HYDCODE',tdbField('HYDINSP','HYDCODE')) then begin
      A('HYDINSPECT').UpdateSQL('SELECT * FROM HYDINSPECT WHERE PRIMEKEY = ' + edbfield('HYDINSP','PRIMEKEY'));
      If A('HYDINSPECT').RecordsExist then
        GetTable('HYDINSPECT').Edit
      else
        GetTable('HYDINSPECT').Append;
      GetField('HYDINSPECT','PRIMEKEY').AsString := GetField('HYDINSP','PRIMEKEY').AsString;
      GetField('HYDINSPECT','HYDID').AsInteger := GetField('HYD','HYDID').AsInteger;
      GetField('HYDINSPECT','DATETIMEINSPECT').AsDateTime := GetField('HYDINSP','DATE').AsDateTime;
      if A('PERS').ExactQueryLocate('PERSCODE',tdbField('HYDINSP','MEMCODE')) then
        GetField('HYDINSPECT','PERSID').AsString := GetField('PERS','PERSID').AsString;
      GetField('HYDINSPECT','FLOWRATE').AsFloat :=  GetField('HYDINSP','FLOW').AsFloat;

      GetField('HYDINSPECT','DESCR').AsString := GetField('HYDINSP','DESC').AsString;
      GetField('HYDINSPECT','NARR').AsString := GetField('HYDINSP','NARR').AsString;
      GetField('HYDINSPECT','LABORCOST').AsFloat := GetField('HYDINSP','LABORCOST').AsFloat;
      GetField('HYDINSPECT','TOTALCOST').AsFloat := GetField('HYDINSP','TOTALCOST').AsFloat;

      if A('ROLODEX').ExactQueryLocate('VENDNUM',tdbField('HYDINSP','VENDOR')) then
        GetField('HYDINSPECT','ROLODEXID').AsInteger := GetField('ROLODEX','ROLODEXID').AsInteger;

      GetField('HYDINSPECT','COEF1').AsFloat := GetField('HYDINSP','FRICTCOEF').AsFloat;
      GetField('HYDINSPECT','COEF2').AsFloat := GetField('HYDINSP','COEF2').AsFloat;
      GetField('HYDINSPECT','COEF3').AsFloat := GetField('HYDINSP','COEF3').AsFloat;

      GetField('HYDINSPECT','OFLOW1').AsFloat := GetField('HYDINSP','OFLOW1').AsFloat;
      GetField('HYDINSPECT','OFLOW2').AsFloat := GetField('HYDINSP','OFLOW2').AsFloat;
      GetField('HYDINSPECT','OFLOW3').AsFloat := GetField('HYDINSP','OFLOW3').AsFloat;

      GetField('HYDINSPECT','PITOT1').AsFloat := GetField('HYDINSP','PITOTPRESS').AsFloat;
      GetField('HYDINSPECT','PITOT2').AsFloat := GetField('HYDINSP','PITOT2').AsFloat;
      GetField('HYDINSPECT','PITOT3').AsFloat := GetField('HYDINSP','PITOT3').AsFloat;

      GetField('HYDINSPECT','DIAM1').AsFloat := GetField('HYDINSP','DISDIAM').AsFloat;
      GetField('HYDINSPECT','DIAM2').AsFloat := GetField('HYDINSP','DIAM2').AsFloat;
      GetField('HYDINSPECT','DIAM3').AsFloat := GetField('HYDINSP','DIAM3').AsFloat;

      GetField('HYDINSPECT','TTF0').AsFloat := GetField('HYDINSP','TTF0').AsFloat;
      GetField('HYDINSPECT','TTF20').AsFloat := GetField('HYDINSP','TTF20').AsFloat;
      CheckSupportTable('HYDINSP','HYDINTYPE','HYDINSPECTTYPE','HYDINSPECT');
      GetField('HYDINSPECT','SPOUTNUM').AsInteger := GetField('HYDINSP','SPOUTNUM').AsInteger;

      GetField('HYDINSPECT','STATICPRESSURE').AsFloat := GetField('HYDINSP','STATPRES').AsFloat;
      GetField('HYDINSPECT','RESIDUALPRESSURE').AsFloat := GetField('HYDINSP','RESPRESS').AsFloat;
      A('HYDINSPECT').Post;      
    end;

    A('HYDINSP').Skip(1);
    Application.Processmessages;
  end;
  CloseApollo('HYDINSPECT');
  CloseApollo('HYDINSP');
  CloseApollo('HYD');
  CloseApollo('PERS');
  CloseApollo('ROLODEX');
  CloseApollo('HYDINSPECTTYPE');

  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.ConvertCodeTable(NMXTable,dBaseTable,dBaseFieldValue: String);
begin
  Open_Query('DEST',True,'SELECT * FROM '+NMXTable);
  Net_Open(DirectoryField.Text + dbaseTable,'S','SOURCE');
  While Not A('SOURCE').Eof do begin
    If (tdbfield('SOURCE','FIELD') = dBaseFieldValue) and Not (tdbfield('SOURCE','CODE') = '') then begin
      if A('DEST').ExactQueryLocate('CODE',tdbField('SOURCE','CODE')) then
        GetTable('DEST').Edit
      else
        GetTable('DEST').Append;
      GetField('DEST','CODE').AsString   := GetField('SOURCE','CODE').AsString;
      GetField('DEST','DESCR').AsString  := GetField('SOURCE','DESC').AsString;
      GetTable('DEST').Post;
    end;
    A('SOURCE').Skip(1);
  end;
  CloseApollo('DEST');
  CloseApollo('SOURCE');
end;


procedure TConvDbaseForm.PropButtonClick(Sender: TObject);
Var PropID  : String;
begin
  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');
  Open_Query('DISPBOX',false,'SELECT DISPBOXID FROM DISPBOX WHERE 1=2');
  Open_Query('PROPSUBTYPE',false,'SELECT PROPSUBTYPEID FROM PROPSUBTYPE WHERE 1=2');
  Open_Query('HYD',false,'SELECT HYDID, HYDCODE FROM HYD');
  Open_Query('PROPHYD',true,'SELECT * FROM PROPHYD WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PROPERTY\DBF\PROPERTY.DBF','S','PROPERTY');
  Gauge.MaxValue := A('PROPERTY').RecordCount;
  Gauge.Progress := 0;

  While Not A('PROPERTY').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;


    A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPCODE = ' + edbfield('PROPERTY','PROPCODE'));
    If A('PROP').RecordsExist then
      GetTable('PROP').Edit
    else
      GetTable('PROP').Append;

    A('DISPBOX').UpdateSQL('SELECT DISPBOXID FROM DISPBOX WHERE CODE = ' + edbfield('PROPERTY','BOXCODE'));
    If A('DISPBOX').RecordsExist then
      GetField('PROP','DISPBOXID').AsString := GetField('DISPBOX','DISPBOXID').AsString;

    A('PROPSUBTYPE').UpdateSQL('SELECT PROPSUBTYPEID FROM PROPSUBTYPE WHERE CODE = ' + edbfield('PROPERTY','PROPTYPE'));
    If A('PROPSUBTYPE').RecordsExist then
      GetField('PROP','PROPSUBTYPEID').AsString := GetField('PROPSUBTYPE','PROPSUBTYPEID').AsString;

    If (tdbfield('PROPERTY','PROPTYPE') = alltrim(PropIntField.Value)) then
      GetField('PROP','PROPTYPEID').AsString      := PropInt
    else
      GetField('PROP','PROPTYPEID').AsString      := PropAddr;

    GetField('PROP','CROSS1').AsString          := tdbfield('PROPERTY','CROSS');
    if mFireID <> '28035' then
      GetField('PROP','CROSS2').AsString          := tdbfield('PROPERTY','CROSS2');

    Try
      If Not (tdbfield('PROPERTY','LATITUDE') = '') and (AnyStrToFloat(tdbfield('PROPERTY','LATITUDE')) > 0) and (AnyStrToFloat(tdbfield('PROPERTY','LATITUDE')) < 100) then
        GetField('PROP','LATITUDE').AsFloat             := AnyStrToFloat(tdbfield('PROPERTY','LATITUDE'));
    except
    end;
    
    Try
      If Not (tdbfield('PROPERTY','LONGITUDE') = '') and (AnyStrToFloat(tdbfield('PROPERTY','LONGITUDE')) < 0) and (AnyStrToFloat(tdbfield('PROPERTY','LONGITUDE')) > -100) then
        GetField('PROP','LONGITUDE').AsFloat             := AnyStrToFloat(tdbfield('PROPERTY','LONGITUDE'));
    except
    end;

    try
      GetField('PROP','FDID').AsString            := IIf(tdbfield('PROPERTY','FIREID') = '',FireID,tdbfield('PROPERTY','FIREID'));
      GetField('PROP','PLASTNAME').AsString       := GetField('PROPERTY','PLASTNAME').AsString;
      GetField('PROP','PFIRSTNAME').AsString      := GetField('PROPERTY','PFIRSTNAME').AsString;
      GetField('PROP','COMPANY').AsString         := GetField('PROPERTY','COMPANY').AsString;
      GetField('PROP','PROPCODE').AsString        := GetField('PROPERTY','PROPCODE').AsString;
      GetField('PROP','ROOMAPT').AsString         := alltrim(dbfield('PROPERTY','PROOMAPT'));
      GetField('PROP','STRNUM').AsString          := alltrim(dbfield('PROPERTY','PSTRNUM'));
      GetField('PROP','STREET').AsString          := tdbfield('PROPERTY','PSTREET');
      GetField('PROP','CITY').AsString            := tdbfield('PROPERTY','PCITY');
      GetField('PROP','STATE').AsString           := tdbfield('PROPERTY','PSTATE');
      GetField('PROP','ZIP').AsString             := tdbfield('PROPERTY','PZIP');
      GetField('PROP','PHONE').AsString           := tdbfield('PROPERTY','PPHONE');
      GetField('PROP','PLASTNAME').AsString       := tdbfield('PROPERTY','PLASTNAME');
      GetField('PROP','PPOSTNET').AsString        := tdbfield('PROPERTY','PPOSTNET');
      GetField('PROP','OLASTNAME').AsString       := tdbfield('PROPERTY','OLASTNAME');
      GetField('PROP','OFIRSTNAME').AsString      := tdbfield('PROPERTY','OFIRSTNAME');
      GetField('PROP','OPHONE').AsString          := tdbfield('PROPERTY','OPHONE');
      GetField('PROP','OADDRESS').AsString        := tdbfield('PROPERTY','OADDRESS');
      GetField('PROP','OADDRESS2').AsString       := tdbfield('PROPERTY','OADDRESS2');
      GetField('PROP','OCITY').AsString           := tdbfield('PROPERTY','OCITY');
      GetField('PROP','OSTATE').AsString          := tdbfield('PROPERTY','OSTATE');
      GetField('PROP','OZIP').AsString            := tdbfield('PROPERTY','OZIP');
      GetField('PROP','NARR').AsString            := GetField('PROPERTY','PROPNAR').AsString;
      GetField('PROP','HANDICAP').AsString        := GetField('PROPERTY','HANDICAP').AsString;
      GetField('PROP','DIRECTION').AsString       := GetField('PROPERTY','DIRECTION').AsString;
      GetField('PROP','FIRSTPERS').AsString       := tdbfield('PROPERTY','FIRSTPERS');

      If mFireID = '52083' then begin
        //GetField('PROP','DISTRICTID').AsString     := alltrim(GetField('OLDPROP','DISTRICT').AsString);
        GetField('PROP','ZONEID').AsString         := alltrim(GetField('OLDPROP','CFUTURE3').AsString);
        GetField('PROP','SECTORID').AsString       := alltrim(GetField('OLDPROP','CFUTURE4').AsString);
        GetField('PROP','GRIDLETTERID').AsString   := alltrim(GetField('OLDPROP','CFUTURE5').AsString);
        GetField('PROP','GRIDNUMBERID').AsString   := alltrim(GetField('OLDPROP','CFUTURE6').AsString);
        GetField('PROP','HYD1DESC').AsString      := GetField('OLDPROP','CFUTURE1').AsString;
        GetField('PROP','HYD2DESC').AsString      := GetField('OLDPROP','CFUTURE2').AsString;
        GetField('PROP','PLASTNAME').AsString     := tdbfield('OLDPROP','PLASTNAME');
        GetField('PROP','PFIRSTNAME').AsString    := tdbfield('OLDPROP','PFIRSTNAME');
        GetField('PROP','COMPANY').AsString       := tdbfield('OLDPROP','COMPANY');
        GetField('PROP','COMPPHONE').AsString     := tdbfield('OLDPROP','OPHONE');
        GetField('PROP','CONTACTPHONE').AsString  := tdbfield('OLDPROP','PPHONE');
      end;
    except
   end;
    GetTable('PROP').Post;
    If Getfield('PROP','PROPID').AsInteger > 0 then
      PropID := Getfield('PROP','PROPID').AsString
    else
      PropID := A('PROP').NewPK;
    PROPButton.Caption := tdbfield('PROPERTY','PROPCODE');

    LoadHydrant(PropID,'1',tdbfield('PROPERTY','HYDRANT1'));
    LoadHydrant(PropID,'2',tdbfield('PROPERTY','HYDRANT2'));

    If FireID = '52008' then begin
      LoadHydrant(PropID,'3',tdbfield('PROPERTY','WATSOURCE'));
      LoadHydrant(PropID,'4',tdbfield('PROPERTY','HYDRANT4'));
    end;

    Application.ProcessMessages;
    A('PROPERTY').Skip(1);
  end;
  CloseApollo('PROPERTY');
  CloseApollo('PROP');
  CloseApollo('PROPSUBTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('HYD');
  CloseApollo('PROPHYD');
  Gauge.Progress := 0;
  PROPButton.Caption := 'PROP';
  ShowMessage('Done');
end;

procedure TConvDbaseForm.LoadHydrant(PropID, SortOrd, HydCode: String);
begin
  If Not (HydCode = '') then begin
    If A('HYD').ExactQueryLocate('HYDCODE',HydCode) then begin
      A('PROPHYD').UpdateSQL('SELECT * FROM PROPHYD WHERE PROPID = ' + PropID + ' AND HYDID = ' + GetField('HYD','HYDID').AsString);
      If Not A('PROPHYD').RecordsExist then begin
        A('PROPHYD').Append;
        GetField('PROPHYD','PROPID').AsString := PropID;
        GetField('PROPHYD','SORTORD').AsString := SortOrd;
        GetField('PROPHYD','HYDID').AsString  := GetField('HYD','HYDID').AsString;
        A('PROPHYD').Post;
      end;
    end;
  end;
end;

procedure TConvDbaseForm.NIPType2ButtonClick(Sender: TObject);
  procedure LoadNIPType(CodeVar, DescrVar: String);
  begin
    A('NIPTYPE').UpdateSQL('SELECT * FROM NIPTYPE WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NIPTYPE');
    GetField('NIPTYPE','FDID').AsString       := mFireID;
    GetField('NIPTYPE','CODE').AsString       := CodeVar;
    GetField('NIPTYPE','DESCR').AsString      := DescrVar;
    GetField('NIPTYPE','SHORTDESCR').AsString := DescrVar;
    GetTable('NIPTYPE').Post;
  end;

  procedure LoadNILosapCAT(CodeVar, DescrVar: String);
  begin
    A('NILOSAPCAT').UpdateSQL('SELECT * FROM NILOSAPCAT WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NILOSAPCAT');
    GetField('NILOSAPCAT','FDID').AsString       := mFireID;
    GetField('NILOSAPCAT','CODE').AsString       := CodeVar;
    GetField('NILOSAPCAT','DESCR').AsString      := DescrVar;
    GetField('NILOSAPCAT','SHORTDESCR').AsString := DescrVar;
    GetTable('NILOSAPCAT').Post;
  end;
begin
  Open_Query('NIPTYPE',true,'SELECT * FROM NIPTYPE WHERE 1=2');
  Open_Query('NILOSAPCAT',true,'SELECT * FROM NILOSAPCAT WHERE 1=2');

  Net_Open(DirectoryField.Text + '\STATION\DBF\STATSET.DBF','S','STATSET');

  LoadNIPType('TR','Trainings');
  LoadNILosapCAT('TR','Trainings');
  LoadNIPType('DR','Drills');
  LoadNILosapCAT('DR','Drills');
  LoadNIPType('MT','Meetings');
  LoadNILosapCAT('MT','Meetings');
  LoadNIPType('WD','Work Details');
  LoadNILosapCAT('MI','Miscellaneous');
  LoadNIPType('ST','Standbys');
  LoadNILosapCAT('ST','Standbys');
  LoadNIPType('MI1',tdbfield('STATSET','OTH1MENU'));
  LoadNILosapCAT('MI','Miscellaneous');
  LoadNIPType('MI2',tdbfield('STATSET','OTH2MENU'));
  LoadNILosapCAT('MI','Miscellaneous');

  CloseApollo('NIPTYPE');
  CloseApollo('NILOSAPCAT');
  CloseApollo('STATSET');

  DrillIDField.Value         := SQLLookUp('DR', 'CODE','NIPTYPE','NIPTYPEID');
  MeetIDField.Value          := SQLLookUp('MT', 'CODE','NIPTYPE','NIPTYPEID');
  StandIDField.Value         := SQLLookUp('ST', 'CODE','NIPTYPE','NIPTYPEID');
  Misc1IDField.Value         := SQLLookUp('MI1','CODE','NIPTYPE','NIPTYPEID');
  Misc2IDField.Value         := SQLLookUp('MI2','CODE','NIPTYPE','NIPTYPEID');
  WorkIDField.Value          := SQLLookUp('WD', 'CODE','NIPTYPE','NIPTYPEID');
  TrainIDField.Value         := SQLLookUp('TR', 'CODE','NIPTYPE','NIPTYPEID');

  DrillLosapCatIDField.Value := SQLLookUp('DR','CODE','NILOSAPCAT','NILOSAPCATID');
  MeetLosapCatIDField.Value  := SQLLookUp('MT','CODE','NILOSAPCAT','NILOSAPCATID');
  Misc1LosapCatIDField.Value := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  Misc2LosapCatIDField.Value := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  StandLosapCatIDField.Value := SQLLookUp('ST','CODE','NILOSAPCAT','NILOSAPCATID');
  WorkLosapCatIDField.Value  := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  TrainLosapCatIDField.Value := SQLLookUp('TR','CODE','NILOSAPCAT','NILOSAPCATID');

  LoadNIPersInvType('OIC','Officer in Charge');
  LoadNIPersInvType('TR','Trainer');

  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.NIPTYPEButtonClick(Sender: TObject);
  procedure LoadNIPType(CodeVar, DescrVar: String);
  begin
    A('NIPTYPE').UpdateSQL('SELECT * FROM NIPTYPE WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NIPTYPE');
    GetField('NIPTYPE','FDID').AsString       := mFireID;
    GetField('NIPTYPE','CODE').AsString       := CodeVar;
    GetField('NIPTYPE','DESCR').AsString      := DescrVar;
    GetField('NIPTYPE','SHORTDESCR').AsString := DescrVar;
    GetTable('NIPTYPE').Post;
  end;

  procedure LoadNILosapCAT(CodeVar, DescrVar: String);
  begin
    A('NILOSAPCAT').UpdateSQL('SELECT * FROM NILOSAPCAT WHERE CODE = ' + AddExpr(CodeVar));
    PutInUpdateMode('NILOSAPCAT');
    GetField('NILOSAPCAT','FDID').AsString       := mFireID;
    GetField('NILOSAPCAT','CODE').AsString       := CodeVar;
    GetField('NILOSAPCAT','DESCR').AsString      := DescrVar;
    GetField('NILOSAPCAT','SHORTDESCR').AsString := DescrVar;
    GetTable('NILOSAPCAT').Post;
  end;
begin
  Open_Query('NIPTYPE',true,'SELECT * FROM NIPTYPE WHERE 1=2');
  Open_Query('NILOSAPCAT',true,'SELECT * FROM NILOSAPCAT WHERE 1=2');

  Net_Open(DirectoryField.Text + '\STATION\SUPPORT\STATCODE.DBF','S','STATCODE');

  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Progress := 0;

  LoadNIPType('TR','Trainings');
  LoadNILosapCAT('TR','Trainings');

  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('STATCODE','FIELD') = 'DRILLTYPE') then begin
      LoadNIPType('DR','Drills');
      LoadNILosapCAT('DR','Drills');
    end else if (tdbfield('STATCODE','FIELD') = 'MEETTYPE') then begin
      LoadNIPType('MT','Meetings');
      LoadNILosapCAT('MT','Meetings');
    end else if (tdbfield('STATCODE','FIELD') = 'WORKTYPE') then begin
      LoadNIPType('WD','Work Details');
      LoadNILosapCAT('MI','Miscellaneous');
    end else if (tdbfield('STATCODE','FIELD') = 'STANDTYPE') then begin
      LoadNIPType('ST','Standbys');
      LoadNILosapCAT('ST','Standbys');
    end else if (tdbfield('STATCODE','FIELD') = 'OTH1TYPE') then begin
      LoadNIPType('MI1','Miscellaneous 1');
      LoadNILosapCAT('MI','Miscellaneous');
    end else if (tdbfield('STATCODE','FIELD') = 'OTH2TYPE') then begin
      LoadNIPType('MI2','Miscellaneous 2');
      LoadNILosapCAT('MI','Miscellaneous');
    end;

    A('STATCODE').Skip(1);
  end;

  CloseApollo('STATCODE');
  CloseApollo('NIPTYPE');
  CloseApollo('NILOSAPCAT');

  DrillIDField.Value         := SQLLookUp('DR', 'CODE','NIPTYPE','NIPTYPEID');
  MeetIDField.Value          := SQLLookUp('MT', 'CODE','NIPTYPE','NIPTYPEID');
  StandIDField.Value         := SQLLookUp('ST', 'CODE','NIPTYPE','NIPTYPEID');
  Misc1IDField.Value         := SQLLookUp('MI1','CODE','NIPTYPE','NIPTYPEID');
  Misc2IDField.Value         := SQLLookUp('MI2','CODE','NIPTYPE','NIPTYPEID');
  WorkIDField.Value          := SQLLookUp('WD', 'CODE','NIPTYPE','NIPTYPEID');
  TrainIDField.Value         := SQLLookUp('TR', 'CODE','NIPTYPE','NIPTYPEID');

  DrillLosapCatIDField.Value := SQLLookUp('DR','CODE','NILOSAPCAT','NILOSAPCATID');
  MeetLosapCatIDField.Value  := SQLLookUp('MT','CODE','NILOSAPCAT','NILOSAPCATID');
  Misc1LosapCatIDField.Value := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  Misc2LosapCatIDField.Value := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  StandLosapCatIDField.Value := SQLLookUp('ST','CODE','NILOSAPCAT','NILOSAPCATID');
  WorkLosapCatIDField.Value  := SQLLookUp('MI','CODE','NILOSAPCAT','NILOSAPCATID');
  TrainLosapCatIDField.Value := SQLLookUp('TR','CODE','NILOSAPCAT','NILOSAPCATID');

  LoadNIPersInvType('OIC','Officer in Charge');
  LoadNIPersInvType('TR','Trainer');

  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispCallButtonClick(Sender: TObject);
Var Fdid         : String;
    IncNum       : String;
    DateTimeRec  : TDateTime;
    DateTimeOut  : TDateTime;
    DateTimeArr  : TDateTime;
    DateTimeIn   : TDateTime;
    DateTimeCont : TDateTime;
    DispCallID   : String;
begin
  if not FileExists(DirectoryField.Text + '\DISPATCH\DBF\DISPCALL.DBF') then begin
    ShowMessage('No Dispatching Tables');
    DispHistButton.enabled := False;
    exit;
  end;
  Open_Query('DISPCALLTYPE',false,'SELECT * FROM DISPCALLTYPE');
  Open_Query('DISPCALLSOURCE',false,'SELECT * FROM DISPCALLSOURCE');
  Open_Query('DISPSUBTYPE',false,'SELECT * FROM DISPSUBTYPE');
  Open_Query('DISPBOX',false,'SELECT CODE, DISPBOXID FROM DISPBOX');
  Open_Query('DISPCALL',true,'SELECT * FROM DISPCALL WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');
  Open_Query('PROP',false,'SELECT PROPID FROM PROP WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\DISPCALL.DBF','S','OLDDISPCALL');
  A('OLDDISPCALL').SetOrder(3);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('OLDDISPCALL').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Gauge.MaxValue := A('OLDDISPCALL').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('OLDDISPCALL').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('DISPCALL').UpdateSQL('SELECT * FROM DISPCALL WHERE OLDDISPNUM = ' + edbfield('OLDDISPCALL','DISPNUM'));
    PutInUpdateMode('DISPCALL');
    GetField('DISPCALL','OLDDISPNUM').AsString    := tdbfield('OLDDISPCALL','DISPNUM');
    GetField('DISPCALL','FDID').AsString          := tdbfield('OLDDISPCALL','FDID');

    DateTimeRec := ConvertDateTime(GetField('OLDDISPCALL','DATE').AsString,GetField('OLDDISPCALL','DATE').AsString,tdbfield('OLDDISPCALL','TIMEALARM'));
    If DateTimeRec > 0 then
      GetField('DISPCALL','DATETIMEREC').AsDateTime := DateTimeRec;

    DateTimeOut := ConvertDateTime(GetField('OLDDISPCALL','DATE').AsString,GetField('OLDDISPCALL','DATE').AsString,tdbfield('OLDDISPCALL','TIMEOUT'));
    If DateTimeOut > 0 then
      GetField('DISPCALL','DATETIMEOUT').AsDateTime := DateTimeOut;

    DateTimeArr := ConvertDateTime(GetField('OLDDISPCALL','DATE').AsString,GetField('OLDDISPCALL','DATE').AsString,tdbfield('OLDDISPCALL','TIMEARR'));
    If DateTimeArr > 0 then
      GetField('DISPCALL','DATETIMEARR').AsDateTime := DateTimeArr;

    DateTimeIn  := ConvertDateTime(GetField('OLDDISPCALL','DATE').AsString,GetField('OLDDISPCALL','DATE').AsString,tdbfield('OLDDISPCALL','TIMEIN'));
    If DateTimeIn  > 0 then
      GetField('DISPCALL','DATETIMEIN').AsDateTime := DateTimeIn;

    DateTimeCont := ConvertDateTime(GetField('OLDDISPCALL','DATE').AsString,GetField('OLDDISPCALL','DATE').AsString,tdbfield('OLDDISPCALL','TIMECONT'));
    If DateTimeCont > 0 then
      GetField('DISPCALL','DATETIMECONT').AsDateTime := DateTimeCont;


    GetField('DISPCALL','ALARMNUM').AsInteger := GetField('OLDDISPCALL','ALARMNUM').AsInteger;
    GetField('DISPCALL','STRNUM').AsString    := alltrim(tdbfield('OLDDISPCALL','STRNUM'));
    GetField('DISPCALL','STREET').AsString    := alltrim(tdbfield('OLDDISPCALL','STREET'));
    GetField('DISPCALL','ROOMAPT').AsString   := alltrim(tdbfield('OLDDISPCALL','ROOMAPT'));
    GetField('DISPCALL','ADDRESS').AsString   := alltrim(tdbfield('OLDDISPCALL','STRNUM') + ' ' + tdbfield('OLDDISPCALL','STREET'));

    GetField('DISPCALL','CITY').AsString      := alltrim(tdbfield('OLDDISPCALL','CITY'));
    GetField('DISPCALL','STATE').AsString     := alltrim(tdbfield('OLDDISPCALL','STATE'));
    GetField('DISPCALL','ZIP').AsString       := alltrim(tdbfield('OLDDISPCALL','ZIP'));

    GetField('DISPCALL','SITENAME').AsString  := tdbfield('OLDDISPCALL','SITENAME');
    GetField('DISPCALL','CROSS1').AsString    := tdbfield('OLDDISPCALL','CROSS');
    GetField('DISPCALL','CROSS2').AsString    := tdbfield('OLDDISPCALL','CROSS2');
    GetField('DISPCALL','BOXNUM').AsString    := tdbfield('OLDDISPCALL','BOXNUM');

    GetField('DISPCALL','CALLINFO').AsString  := tdbfield('OLDDISPCALL','CALLINFO');

    GetField('DISPCALL','CALLNAME').AsString  := GetField('OLDDISPCALL','CALLNAME').AsString;
    GetField('DISPCALL','CALLPHONE').AsString := GetField('OLDDISPCALL','CALLPHONE').AsString;
    GetField('DISPCALL','CALLADDR').AsString  := GetField('OLDDISPCALL','CALLADDR').AsString;

    A('PROP').UpdateSQL('SELECT PROPID FROM PROP WHERE PROPCODE = ' + edbfield('OLDDISPCALL','PROPCODE'));
    If A('PROP').RecordsExist then
      GetField('DISPCALL','PROPID').AsString := GetField('PROP','PROPID').AsString;

    GetField('DISPCALL','NARR').AsString   := GetField('OLDDISPCALL','NARR').AsString;
    If A('DISPCALLTYPE').ExactQueryLocate('CODE',tdbfield('OLDDISPCALL','INCTYPE')) then
      GetField('DISPCALL','DISPCALLTYPEID').AsString  := GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString;

    If A('DISPSUBTYPE').ExactQueryLocate('CODE',tdbfield('OLDDISPCALL','CALLINFOCO')) then
      GetField('DISPCALL','DISPSUBTYPEID').AsString  := GetField('DISPSUBTYPE','DISPSUBTYPEID').AsString;

    If A('DISPBOX').ExactQueryLocate('CODE',tdbfield('OLDDISPCALL','BOXCODE')) then
      GetField('DISPCALL','DISPBOXID').AsString  := GetField('DISPBOX','DISPBOXID').AsString;

    If A('DISPCALLSOURCE').ExactQueryLocate('CODE',tdbfield('OLDDISPCALL','SOURCE')) then
      GetField('DISPCALL','DISPCALLSOURCEID').AsString := GetField('DISPCALLSOURCE','DISPCALLSOURCEID').AsString;

    GetField('DISPCALL','INCSTAT').AsString   := tdbfield('OLDDISPCALL','INCSTAT');

    try
      If Not (tdbfield('OLDDISPCALL','LATITUDE') = '') and (AnyStrToFloat(tdbfield('OLDDISPCALL','LATITUDE')) > 0) and (AnyStrToFloat(tdbfield('OLDDISPCALL','LATITUDE')) < 100) then
        GetField('DISPCALL','LATITUDE').AsString   := GetField('OLDDISPCALL','LATITUDE').AsString;
    except
    end;

    try
      If Not (tdbfield('OLDDISPCALL','LONGITUDE') = '') and (AnyStrToFloat(tdbfield('OLDDISPCALL','LONGITUDE')) < 0) and (AnyStrToFloat(tdbfield('OLDDISPCALL','LONGITUDE')) > -100) then
        GetField('DISPCALL','LONGITUDE').AsString   := GetField('OLDDISPCALL','LONGITUDE').AsString;
    except
    end;    

    GetTable('DISPCALL').Post;

    If GetField('DISPCALL','DISPCALLID').AsInteger > 0 then
      DispCallID := GetField('DISPCALL','DISPCALLID').AsString
    else
      DispCallID := A('DISPCALL').NewPk;

    A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + edbfield('OLDDISPCALL','FDID') + ' AND INCNUM = ' + edbfield('OLDDISPCALL','INCNUM'));
    If A('NFIRSMAIN').RecordsExist then
      RunSQL('UPDATE DISPCALL SET NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString + ' WHERE DISPCALLID = ' + DispCallID);

    If Not (tdbfield('OLDDISPCALL','DISPNUM') = '') then begin
      RunSQL('UPDATE NFIRSMAIN SET DISPCALLID = ' + DispCallID + ' WHERE OLDDISPNUM = ' + edbfield('OLDDISPCALL','DISPNUM'));
      RunSQL('UPDATE NFIRSAPP SET DISPCALLID = ' + DispCallID + ' WHERE OLDDISPNUM = ' + edbfield('OLDDISPCALL','DISPNUM'));
    end;  

    A('OLDDISPCALL').Skip(1);
  end;

  Gauge.Progress := 0;
  CloseApollo('DISPCALLTYPE');
  CloseApollo('DISPCALLSOURCE');
  CloseApollo('DISPSUBTYPE');
  CloseApollo('DISPBOX');
  CloseApollo('PROP');
  CloseApollo('DISPCALL');
  CloseApollo('OLDDISPCALL');
  CloseApollo('NFIRSMAIN');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.NfirsAttTaskButtonClick(Sender: TObject);
begin
  Open_Query('NFIRSATTTASK',true,'SELECT * FROM NFIRSATTTASK WHERE 1=2');
  Open_Query('SCHDSHIFTNAME',true,'SELECT * FROM SCHDSHIFTNAME WHERE 1=2');
  Open_Query('N5DISTRICT',true,'SELECT * FROM N5DISTRICT WHERE 1=2');
  Open_Query('NFIRSAPPFOCODE',true,'SELECT * FROM NFIRSAPPFOCODE WHERE 1=2');
  Open_Query('DISPBOX',true,'SELECT * FROM DISPBOX WHERE 1=2');

  Net_Open(DirectoryField.Text + '\INCIDENT\SUPPORT\INCCODE.DBF','S','INCCODE');
  While Not A('INCCODE').Eof do begin
    If (tdbfield('INCCODE','FIELD') = 'ATTEND') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('NFIRSATTTASK').UpdateSQL('SELECT * FROM NFIRSATTTASK WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('NFIRSATTTASK');
      GetField('NFIRSATTTASK','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('NFIRSATTTASK','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('NFIRSATTTASK').Post;
    end else if (tdbfield('INCCODE','FIELD') = 'SHIFT') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('SCHDSHIFTNAME').UpdateSQL('SELECT * FROM SCHDSHIFTNAME WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('SCHDSHIFTNAME');
      GetField('SCHDSHIFTNAME','FDID').AsString   := mFireID;
      GetField('SCHDSHIFTNAME','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('SCHDSHIFTNAME','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('SCHDSHIFTNAME').Post;
    end else if (tdbfield('INCCODE','FIELD') = 'DISTRICT') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('DISPBOX').UpdateSQL('SELECT * FROM DISPBOX WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('DISPBOX');
      GetField('DISPBOX','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('DISPBOX','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('DISPBOX').Post;
    end else if (tdbfield('INCCODE','FIELD') = 'DISTRICT2') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('N5DISTRICT').UpdateSQL('SELECT * FROM N5DISTRICT WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('N5DISTRICT');
      GetField('N5DISTRICT','FDID').AsString   := mFireID;
      GetField('N5DISTRICT','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('N5DISTRICT','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('N5DISTRICT').Post;
    end else if (tdbfield('INCCODE','FIELD') = 'TRUCK') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('NFIRSAPPFOCODE').UpdateSQL('SELECT * FROM NFIRSAPPFOCODE WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('NFIRSAPPFOCODE');
      GetField('NFIRSAPPFOCODE','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('NFIRSAPPFOCODE','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('NFIRSAPPFOCODE').Post;
    end;
    A('INCCODE').Skip(1);
  end;
  CloseApollo('NFIRSATTTASK');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('N5DISTRICT');
  CloseApollo('INCCODE');
  CloseApollo('NFIRSAPPFOCODE');
  CloseApollo('DISPBOX');
  
  ShowMessage('Done');
end;

procedure TConvDbaseForm.NfirsEMSButtonClick(Sender: TObject);
Var Fdid   : String;
    IncNum : String;
    ExpNum : String;
begin
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\NFIRSEMS.DBF','S','OLDNFIRSEMS');

  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSEMS',true,'SELECT * FROM NFIRSEMS WHERE 1=2');

  Gauge.MaxValue := A('OLDNFIRSEMS').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('OLDNFIRSEMS').Eof do begin
    Fdid   := tdbfield('OLDNFIRSEMS','FDID');
    IncNum := tdbfield('OLDNFIRSEMS','INCNUM');
    ExpNum := tdbfield('OLDNFIRSEMS','EXPNUM');

    If Not (Fdid = '') and Not (IncNum = '') and Not (ExpNum = '') then begin
      A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + AddExpr(Fdid) + ' AND INCNUM = ' + AddExpr(IncNum) + ' AND EXPNUM = ' + AddExpr(ExpNum));
      If A('NFIRSMAIN').RecordsExist then begin
        A('NFIRSEMS').UpdateSQL('SELECT * FROM NFIRSEMS WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
        If A('NFIRSEMS').RecordsExist then
          GetTable('NFIRSEMS').Edit
        else begin
          GetTable('NFIRSEMS').Append;
          GetField('NFIRSEMS','NFIRSMAINID').AsString := GetField('NFIRSMAIN','NFIRSMAINID').AsString;
        end;
        CommonConvertNfirsEMS;
        A('NFIRSEMS').Post;
      end;
    end;
    A('OLDNFIRSEMS').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('NFIRSMAIN');
  CloseApollo('NFIRSEMS');
  CloseApollo('OLDNFIRSEMS');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispHistButtonClick(Sender: TObject);
Var UnitNum        : String;
    DateTimeStat   : TDateTime;
    DispCallID     : String;
    NfirsMainID    : String;
    DispStatCodeID : String;
begin

  Open_Query('DISPSTATCODE',false,'SELECT CODE, DISPSTATCODEID FROM DISPSTATCODE');
  Open_Query('DISPHIST',true,'SELECT * FROM DISPHIST WHERE 1=2');
  Open_Query('DISPCALL',false,'SELECT DISPCALLID FROM DISPCALL WHERE 1=2');
  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\APPHIST.DBF','S','APPHIST');
  A('APPHIST').SetOrder(4);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('APPHIST').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Gauge.MaxValue := A('APPHIST').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('APPHIST').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('DISPSTATCODE').ExactQueryLocate('CODE',tdbfield('APPHIST','STATCODE')) and Not (tdbfield('APPHIST','DISPNUM') = '') then begin
      A('DISPCALL').UpdateSQL('SELECT DISPCALLID FROM DISPCALL WHERE OLDDISPNUM = ' + edbfield('APPHIST','DISPNUM'));
      If A('DISPCALL').RecordsExist then begin
        DispStatCodeID := GetField('DISPSTATCODE','DISPSTATCODEID').AsString;
        DispCallID     := GetField('DISPCALL','DISPCALLID').AsString;
        UnitNum        := tdbfield('APPHIST','INVNUM');
        DateTimeStat   := ConvertDateTime(GetField('APPHIST','DATE').AsString,
                                        GetField('APPHIST','DATE').AsString,
                                        tdbfield('APPHIST','TIME'));
        A('DISPHIST').UpdateSQL('SELECT * FROM DISPHIST WHERE DISPCALLID = ' + DispCallID +
                                                         ' AND UNITNUM = ' + AddExpr(UnitNum) +
                                                         ' AND DISPSTATCODEID = ' + DispStatCodeID +
                                                         ' AND DATETIMESTAT = ' + FormatDateTimeForSql(DateTimeStat) );
        If A('DISPHIST').RecordsExist then
          A('DISPHIST').Edit
        else
          A('DISPHIST').Append;

        GetField('DISPHIST','UNITNUM').AsString        := UnitNum;
        GetField('DISPHIST','DISPCALLID').AsString     := DispCallID;
        GetField('DISPHIST','DISPSTATCODEID').AsString := DispStatCodeID;
        GetField('DISPHIST','NARR').AsString           := GetField('APPHIST','NARR').AsString;

                                        
        If (DateTimeStat > 0) then
          GetField('DISPHIST','DATETIMESTAT').AsDateTime := DateTimeStat;

        A('NFIRSMAIN').UpdateSQL('SELECT NFIRSMAINID FROM NFIRSMAIN WHERE FDID = ' + edbfield('APPHIST','FDID') + ' AND INCNUM = ' + edbfield('APPHIST','INCNUM'));
        If A('NFIRSMAIN').RecordsExist then
          GetField('DISPHIST','NFIRSMAINID').AsString    := Getfield('NFIRSMAIN','NFIRSMAINID').AsString;

        A('DISPHIST').Post;
      end;
    end;

    A('APPHIST').Skip(1);
  end;

  Gauge.Progress := 0;
  CloseApollo('APPHIST');
  CloseApollo('DISPHIST');
  CloseApollo('DISPSTATCODE');
  CloseApollo('DISPCALL');
  CloseApollo('NFIRSMAIN');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.Hydrant2ButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + '\PROPERTY\SUPPORT\HYDRANT2.DBF','S','HYDRANT');
  Open_Query('HYD',true,'SELECT * FROM HYD WHERE 1=2');

  Gauge.MaxValue := A('HYDRANT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('HYDRANT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('HYD').UpdateSQL('SELECT * FROM HYD WHERE HYDCODE = ' + edbfield('HYDRANT','HYDCODE'));
    PutInUpdateMode('HYD');
    GetField('HYD','HYDCODE').AsString  := GetField('HYDRANT','HYDCODE').AsString;
    GetField('HYD','LOCATION').AsString := alltrim(tdbfield('HYDRANT','LOCATION'));
    A('HYD').Post;
    A('HYDRANT').Skip(1);
  end;
  CloseApollo('HYD');
  CloseApollo('HYDRANT');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TrainAttFieldClick(Sender: TObject);
Var DateTimeAttend : String;
begin
  inherited;
  If FileExists(DirectoryField.Text + '\TRAINING\DBF\TRAINATT.DBF') then begin
    Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRAINATT.DBF','S','TRAINATT');
    A('TRAINATT').SetOrder(0);
    Gauge.MaxValue := A('TRAINATT').RecCount;

    Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
    Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');
    Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');

    While Not A('TRAINATT').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      If (tdbfield('TRAINATT','CODE') = '') and A('PERS').ExactQueryLocate('PERSCODE',tdbfield('TRAINATT','MEMCODE')) and A('NITRAINCAT1').ExactQueryLocate('CODE',tdbfield('TRAINATT','COURSECODE')) then begin
        DateTimeAttend := AddExpr(FormatDateTime('YYYY-MM-DD',GetField('TRAINATT','DATE').AsDateTime));
        A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString + ' AND DATETIMEATTEND = ' + DateTimeAttend);
        PutInUpdateMode('NIEVATT');
        GetField('NIEVATT','PERSID').AsString         := GetField('PERS','PERSID').AsString;
        GetField('NIEVATT','NITRAINCAT1ID').AsString  := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
        GetField('NIEVATT','DATETIMEATTEND').AsString := GetField('TRAINATT','DATE').AsString;
        GetField('NIEVATT','CERTNUM').AsString        := GetField('TRAINATT','CERTNUM').AsString;
        GetField('NIEVATT','EVLENGTH').AsString       := GetField('TRAINATT','LENGTH').AsString;
        GetField('NIEVATT','POINT').AsString          := GetField('TRAINATT','POINTVAL').AsString;
        GetField('NIEVATT','DATETIMEEXP').AsString    := GetField('TRAINATT','CERTDATE').AsString;
        GetField('NIEVATT','NILOSAPCATID').AsString   := TrainLosapCatIDField.Value;
        GetTable('NIEVATT').Post;
      end;
      A('TRAINATT').Skip(1);
    end;

    CloseApollo('NIEVATT');
    CloseApollo('TRAINATT');
    CloseApollo('NITRAINCAT1');
    CloseApollo('PERS');
    Gauge.Progress := 0;
    ShowMessage('Done');
  end else begin
    ShowMessage('No Training Module');
  end;
end;

procedure TConvDbaseForm.TrainLocationButtonClick(Sender: TObject);
begin
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');

  If FileExists(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF') then begin
    Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

    Gauge.MaxValue := A('TRCODE').RecCount;
    Gauge.Progress := 0;

    While Not A('TRCODE').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;

      If (tdbfield('TRCODE','FIELD') = 'SCLOCATION') then begin
        A('LOCATION').UpdateSQL('SELECT * FROM LOCATION WHERE CODE = ' + edbfield('TRCODE','CODE'));
        PutInUpdateMode('LOCATION');
        GetField('LOCATION','FDID').AsString       := mFireID;
        GetField('LOCATION','CODE').AsString       := dbfield('TRCODE','CODE');
        GetField('LOCATION','SHORTDESCR').AsString := tdbField('STATCODE','DESC');
        GetField('LOCATION','DESCR').AsString      := dbfield('TRCODE','DESC');
        A('LOCATION').Post;
      end;
      A('TRCODE').Skip(1);
    end;

    CloseApollo('TRCODE');
    CloseApollo('LOCATION');
    Gauge.Progress := 0;
    ShowMessage('Done');
  end else begin
    ShowMessage('No Training Module');
  end;  
end;

procedure TConvDbaseForm.TRCode2ButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('TRCODE','FIELD') = 'SCLOCATION') then begin
      A('LOCATION').UpdateSQL('SELECT * FROM LOCATION WHERE CODE = ' + edbfield('TRCODE','CODE'));
      PutInUpdateMode('LOCATION');
      GetField('LOCATION','CODE').AsString         := dbfield('TRCODE','CODE');
      GetField('LOCATION','DESCR').AsString        := dbfield('TRCODE','DESC');
      GetTable('LOCATION').Post;
    end;

    A('TRCODE').Skip(1);
  end;

  CloseApollo('TRCODE');
  CloseApollo('LOCATION');
  CloseApollo('NITRAINCATTYPE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TRCode3ButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If tdbfield('TRCODE','FIELD') = 'SCTYPE' then begin
      A('NISTYPE').UpdateSql('SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + TrainIDField.Value + ' AND CODE = ' + edbField('TRCODE','CODE'));
      PutInUpdateMode('NISTYPE');
      GetField('NISTYPE','CODE').AsString      := tdbField('TRCODE','CODE');
      GetField('NISTYPE','DESCR').AsString     := tdbField('TRCODE','DESC');
      GetField('NISTYPE','NIPTYPEID').AsString    := TrainIDField.Value;
      GetField('NISTYPE','NILOSAPCATID').AsString := TrainLosapCatIDField.Value;
      GetField('NISTYPE','ACTIVE').AsString       := 'Y';
      GetField('NISTYPE','FDID').AsString         := mFireID;
      GetField('NISTYPE','CODE').AsString         := dbfield('TRCODE','CODE');
      GetField('NISTYPE','DESCR').AsString        := dbfield('TRCODE','DESC');
      GetTable('NISTYPE').Post;
    end;

    A('TRCODE').Skip(1);
  end;

  CloseApollo('NISTYPE');
  CloseApollo('TRCODE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TRCodeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NITRAINCATTYPE',true,'SELECT * FROM NITRAINCATTYPE WHERE 1=2');
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE');

  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('TRCODE','FIELD') = 'SCLOCATION') then begin
      A('LOCATION').UpdateSQL('SELECT * FROM LOCATION WHERE CODE = ' + edbfield('TRCODE','CODE'));
      PutInUpdateMode('LOCATION');
      GetField('LOCATION','CODE').AsString         := dbfield('TRCODE','CODE');
      GetField('LOCATION','DESCR').AsString        := dbfield('TRCODE','DESC');
      GetTable('LOCATION').Post;
    end else if tdbfield('TRCODE','FIELD') = 'SCTYPE' then begin
      A('NITRAINCATTYPE').UpdateSql('SELECT * FROM NITRAINCATTYPE WHERE CODE = ' + edbField('TRCODE','CODE'));
      PutInUpdateMode('NITRAINCATTYPE');
      GetField('NITRAINCATTYPE','CODE').AsString      := tdbField('TRCODE','CODE');
      GetField('NITRAINCATTYPE','DESCR').AsString     := tdbField('TRCODE','DESC');
      GetTable('NITRAINCATTYPE').Post;
    end;

    A('TRCODE').Skip(1);
  end;

  CloseApollo('TRCODE');
  CloseApollo('LOCATION');
  CloseApollo('NITRAINCATTYPE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TRCourse2ButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRCOURSE.DBF','S','TRCOURSE');

  Gauge.MaxValue := A('TRCOURSE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCOURSE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('TRCOURSE','COURSECODE'));
    PutInUpdateMode('NITRAINCAT1');
    GetField('NITRAINCAT1','FDID').AsString         := mFireID;
    GetField('NITRAINCAT1','ACTIVE').AsString       := 'Y';
    GetField('NITRAINCAT1','CODE').AsString         := dbfield('TRCOURSE','COURSECODE');
    GetField('NITRAINCAT1','DESCR').AsString        := dbfield('TRCOURSE','DESC');
    GetField('NITRAINCAT1','QUALPERIOD').AsFloat    := GetField('TRCOURSE','REFRPER').AsFloat;
    GetField('NITRAINCAT1','EVLENGTH').AsFloat      := GetField('TRCOURSE','HOURS').AsFloat;
    GetField('NITRAINCAT1','POINT').AsFloat         := GetField('TRCOURSE','POINT').AsFloat;
    A('NITRAINCAT1').Post;
    A('TRCOURSE').Skip(1);
  end;
  CloseApollo('TRCOURSE');
  CloseApollo('NITRAINCAT1');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TrCourseButtonClick(Sender: TObject);
begin
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRCOURSE.DBF','S','TRCOURSE');

  Gauge.MaxValue := A('TRCOURSE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCOURSE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + PKValue(TrainIDField.Value) + ' AND CODE = ' + edbfield('TRCOURSE','COURSECODE'));
    PutInUpdateMode('NISTYPE');
    GetField('NISTYPE','FDID').AsString         := mFireID;
    GetField('NISTYPE','NIPTYPEID').AsString    := TrainIDField.Value;
    GetField('NISTYPE','CODE').AsString         := dbfield('TRCOURSE','COURSECODE');
    GetField('NISTYPE','DESCR').AsString        := dbfield('TRCOURSE','DESC');
    GetField('NISTYPE','EVLENGTH').AsFloat      := GetField('TRCOURSE','HOURS').AsFloat;
    GetField('NISTYPE','POINT').AsFloat         := GetField('TRCOURSE','POINT').AsFloat;
    GetField('NISTYPE','NILOSAPCATID').AsString := TrainLosapCatIDField.Value;
    A('NISTYPE').Post;
    A('TRCOURSE').Skip(1);
  end;
  CloseApollo('TRCOURSE');
  CloseApollo('NISTYPE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TrEvent2ButtonClick(Sender: TObject);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    NIID          : String;
    NIEvID        : String;
begin
  TreventButton.Enabled := false;
  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TREVENT.DBF','S','TREVENT');
  A('TREVENT').SetOrder(2);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('TREVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value+1));

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRAINATT.DBF','S','TRAINATT');
  A('TRAINATT').SetOrder(2);

  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');

  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');
  Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');

  Gauge.MaxValue := A('TREVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('TREVENT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    NIButton.Caption := IntToStr(A('TREVENT').RecNo);
    Application.ProcessMessages;

    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('TREVENT','CODE') + ' AND NIPTYPEID = ' + TrainIDField.Value);
    If A('NI').RecordsExist then
      A('NI').Edit
    else
      A('NI').Append;

    DateTimeStart                             := GetField('TREVENT','DATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','TIME'));
    DateTimeEnd                               := GetField('TREVENT','FINDATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','FINTIME'));
    GetField('NI','FDID').AsString            := tdbfield('TREVENT','FDID');
    GetField('NI','CODE').AsString            := tdbfield('TREVENT','CODE');
    GetField('NI','DESCR').AsString           := tdbfield('TREVENT','DESCR');
    GetField('NI','EVLENGTH').AsFloat         := GetField('TREVENT','HOURS').AsFloat;
    GetField('NI','POINT').AsFloat            := GetField('TREVENT','POINT').AsFloat;
    GetField('NI','NIPTYPEID').AsString       := TrainIDField.Value;
    GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
    GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
    GetField('NI','NARR').AsString            := GetField('TREVENT','NARRATIVE').AsString;
    GetField('NI','LOCMISC').AsString         := GetField('TREVENT','OTHLOC').AsString;
    GetField('NI','NILOSAPCATID').AsString    := TrainLosapCatIDField.Value;

    If A('NISTYPE').ExactQueryLocate(['NIPTYPEID','CODE'],[TrainIDField.Value,GetField('TREVENT','TYPE').AsString]) then
      GetField('NI','NISTYPEID').AsString     := GetField('NISTYPE','NISTYPEID').AsString;
    If A('LOCATION').ExactQueryLocate('CODE',tdbfield('TREVENT','LOCATION')) then
      GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;

//  If A('NITRAINCAT1').ExactQueryLocate('CODE',dbfield('TREVENT','COURSECODE')) then
//    Getfield('NI','DESCR').AsString := tdbfield('NITRAINCAT1','DESCR');

    GetTable('NI').Post;
    If GetField('NI','NIID').AsInteger > 0 then
      NIID := GetField('NI','NIID').AsString
    else
      NIID := A('NI').NewPk;

    If A('NITRAINCAT1').ExactQueryLocate('CODE',dbfield('TREVENT','COURSECODE')) then begin
      A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + NIID + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
      PutInUpdateMode('NIEV');
      GetField('NIEV','NIID').AsString          := NIID;
      GetField('NIEV','NITRAINCAT1ID').AsString := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
      GetField('NIEV','DATETIMESTART').AsString := GetField('NI','DATETIMESTART').AsString;
      GetField('NIEV','DATETIMEEND').AsString   := GetField('NI','DATETIMEEND').AsString;
      GetField('NIEV','EVLENGTH').AsString      := GetField('NI','EVLENGTH').AsString;
      GetTable('NIEV').Post;
      If GetField('NIEV','NIEVID').AsInteger > 0 then
        NIEvID := GetField('NIEV','NIEVID').AsString
      else
        NIEvID := A('NIEV').NewPk;
    end;

    A('TRAINATT').SetScope(dbfield('TREVENT','CODE'),dbfield('TREVENT','CODE'));
    While Not A('TRAINATT').Eof do begin
      A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('TRAINATT','MEMCODE'));
      If GetField('PERS','PERSID').AsInteger > 0 then begin
        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + NIID);
        If A('NIATT').RecordsExist then
          A('NIATT').Edit
        else
          A('NIATT').Append;
        GetField('NIATT','NIID').AsString             := NIID;
        GetField('NIATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
        GetField('NIATT','PERSPOINTTYPEID').AsInteger := 1;
        GetField('NIATT','EVLENGTH').AsFloat          := GetField('TRAINATT','LENGTH').AsFloat;
        GetField('NIATT','POINT').AsFloat             := GetField('TRAINATT','POINTVAL').AsFloat;
        GetTable('NIATT').Post;

        If Not (NIEvID = '') then begin
          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIEVID = ' + NIEvID);
          PutInUpdateMode('NIEVATT');
          GetField('NIEVATT','NIID').AsString             := NIID;
          GetField('NIEVATT','NIEVID').AsString           := NIEvID;
          GetField('NIEVATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
          GetTable('NIEVATT').Post;
        end;
      end;
      A('TRAINATT').Skip(1);
    end;
    A('TREVENT').Skip(1);
  end;

  CloseApollo('LOCATION');
  CloseApollo('NISTYPE');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');

  CloseApollo('TREVENT');
  CloseApollo('TRAINATT');
  TreventButton.Enabled := true;
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TrEventButtonClick(Sender: TObject);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    NIID          : String;
begin
  TreventButton.Enabled := false;
  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TREVENT.DBF','S','TREVENT');
  A('TREVENT').SetOrder(2);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('TREVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRAINATT.DBF','S','TRAINATT');
  A('TRAINATT').SetOrder(2);

  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');

  Gauge.MaxValue := A('TREVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('TREVENT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    NIButton.Caption := IntToStr(A('TREVENT').RecNo);
    Application.ProcessMessages;

    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('TREVENT','CODE') + ' AND NIPTYPEID = ' + TrainIDField.Value);
    If A('NI').RecordsExist then
      A('NI').Edit
    else
      A('NI').Append;

    DateTimeStart                             := GetField('TREVENT','DATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','TIME'));
    DateTimeEnd                               := GetField('TREVENT','FINDATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','FINTIME'));
    GetField('NI','FDID').AsString            := tdbfield('TREVENT','FDID');
    GetField('NI','CODE').AsString            := tdbfield('TREVENT','CODE');
    GetField('NI','DESCR').AsString           := tdbfield('TREVENT','DESCR');
    GetField('NI','EVLENGTH').AsFloat         := GetField('TREVENT','HOURS').AsFloat;
    GetField('NI','POINT').AsFloat            := GetField('TREVENT','POINT').AsFloat;
    GetField('NI','NIPTYPEID').AsString       := TrainIDField.Value;
    GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
    GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
    GetField('NI','NARR').AsString            := GetField('TREVENT','NARRATIVE').AsString;
    GetField('NI','LOCMISC').AsString         := GetField('TREVENT','OTHLOC').AsString;
    GetField('NI','NILOSAPCATID').AsString    := TrainLosapCatIDField.Value;

    If A('NISTYPE').ExactQueryLocate(['NIPTYPEID','CODE'],[TrainIDField.Value,GetField('TREVENT','COURSECODE').AsString]) then
      GetField('NI','NISTYPEID').AsString     := GetField('NISTYPE','NISTYPEID').AsString;
    If A('LOCATION').ExactQueryLocate('CODE',tdbfield('TREVENT','LOCATION')) then
      GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;

    GetTable('NI').Post;
    If GetField('NI','NIID').AsInteger > 0 then
      NIID := GetField('NI','NIID').AsString
    else
      NIID := A('NI').NewPk;


    A('TRAINATT').SetScope(dbfield('TREVENT','CODE'),dbfield('TREVENT','CODE'));
    While Not A('TRAINATT').Eof do begin
      A('PERS').UpdateSQL('SELECT PERSID FROM PERS WHERE PERSCODE = ' + edbfield('TRAINATT','MEMCODE'));
      If GetField('PERS','PERSID').AsInteger > 0 then begin
        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + NIID);
        If A('NIATT').RecordsExist then
          A('NIATT').Edit
        else
          A('NIATT').Append;
        GetField('NIATT','NIID').AsString             := NIID;
        GetField('NIATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
        GetField('NIATT','PERSPOINTTYPEID').AsInteger := 1;
        GetField('NIATT','EVLENGTH').AsFloat          := GetField('TRAINATT','LENGTH').AsFloat;
        GetField('NIATT','POINT').AsFloat             := GetField('TRAINATT','POINTVAL').AsFloat;
        GetTable('NIATT').Post;
      end;
      A('TRAINATT').Skip(1);
    end;
    A('TREVENT').Skip(1);
  end;

  CloseApollo('LOCATION');
  CloseApollo('NISTYPE');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');

  CloseApollo('TREVENT');
  CloseApollo('TRAINATT');
  TreventButton.Enabled := true;
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.TREventTRCLButtonClick(Sender: TObject);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    NIID          : String;
    NIEvID        : String;
begin
  TreventButton.Enabled := false;
  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TREVENT.DBF','S','TREVENT');
  A('TREVENT').SetOrder(2);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('TREVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value+1));

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRAINATT.DBF','S','TRAINATT');
  A('TRAINATT').SetOrder(2);

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRCLATT.DBF','S','TRCLATT');
  A('TRCLATT').SetOrder(1);

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRCL.DBF','S','TRCL');
  A('TRCL').SetOrder(1);

  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');

  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');
  Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');

  Gauge.MaxValue := A('TREVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('TREVENT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    NIButton.Caption := IntToStr(A('TREVENT').RecNo);
    Application.ProcessMessages;

    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('TREVENT','CODE') + ' AND NIPTYPEID = ' + TrainIDField.Value);
    If A('NI').RecordsExist then
      A('NI').Edit
    else
      A('NI').Append;

    DateTimeStart                             := GetField('TREVENT','DATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','TIME'));
    DateTimeEnd                               := GetField('TREVENT','FINDATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','FINTIME'));
    GetField('NI','FDID').AsString            := tdbfield('TREVENT','FDID');
    GetField('NI','CODE').AsString            := tdbfield('TREVENT','CODE');
    GetField('NI','DESCR').AsString           := tdbfield('TREVENT','DESCR');
    GetField('NI','EVLENGTH').AsFloat         := GetField('TREVENT','HOURS').AsFloat;
    GetField('NI','POINT').AsFloat            := GetField('TREVENT','POINT').AsFloat;
    GetField('NI','NIPTYPEID').AsString       := TrainIDField.Value;
    GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
    GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
    GetField('NI','NARR').AsString            := GetField('TREVENT','NARRATIVE').AsString;
    GetField('NI','LOCMISC').AsString         := GetField('TREVENT','OTHLOC').AsString;

    If A('NISTYPE').ExactQueryLocate(['NIPTYPEID','CODE'],[TrainIDField.Value,GetField('TREVENT','TYPE').AsString]) then
      GetField('NI','NISTYPEID').AsString     := GetField('NISTYPE','NISTYPEID').AsString;
    If A('LOCATION').ExactQueryLocate('CODE',tdbfield('TREVENT','LOCATION')) then
      GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;

    If A('NITRAINCAT1').ExactQueryLocate('CODE',dbfield('TREVENT','COURSECODE')) then
      Getfield('NI','DESCR').AsString := tdbfield('NITRAINCAT1','DESCR');

    GetTable('NI').Post;
    If GetField('NI','NIID').AsInteger > 0 then
      NIID := GetField('NI','NIID').AsString
    else
      NIID := A('NI').NewPk;

    A('TRCL').SetScope(dbfield('TREVENT','CODE'),dbfield('TREVENT','CODE'));

    While Not A('TRCL').Eof do begin

      A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND OLDCLCODE = ' + edbfield('TRCL','CLCODE'));
      If A('NIEV').RecordsExist then
        A('NIEV').Edit
      else
        A('NIEV').Append;
      GetField('NIEV','NIID').AsString          := GetField('NI','NIID').AsString;
      GetField('NIEV','OLDCLCODE').AsString     := GetField('TRCL','CLCODE').AsString;

      If A('LOCATION').ExactQueryLocate('CODE',tdbfield('TRCL','LOCATION')) then
        GetField('NIEV','LOCATIONID').AsString := GetField('LOCATION','LOCATIONID').AsString;

      If (alltrim(substr(tdbfield('TRCL','STARTTIME'),1,2)) = '') then
        GetField('NIEV','DATETIMESTART').AsDateTime := GetField('TRCL','DATE').AsDateTime
      else begin
        DateTimeStart := ConvertDateTime(GetField('TRCL','DATE').AsString,
                                         GetField('TRCL','DATE').AsString,
                                         tdbfield('TRCL','STARTTIME'));
        If DateTimeStart > 0 then
          GetField('NIEV','DATETIMESTART').AsDateTime := DateTimeStart;
      end;

      If (alltrim(substr(tdbfield('TRCL','ENDTIME'),1,2)) = '') then
        GetField('NIEV','DATETIMEEND').AsDateTime := GetField('TRCL','DATE').AsDateTime
      else begin
        DateTimeEnd   := ConvertDateTime(GetField('TRCL','DATE').AsString,
                                         GetField('TRCL','DATE').AsString,
                                         tdbfield('TRCL','ENDTIME'));
        If DateTimeEnd > 0 then
          GetField('NIEV','DATETIMEEND').AsDateTime := DateTimeEnd;
      end;

      If A('NITRAINCAT1').ExactQueryLocate('CODE',dbfield('TRCL','TOPIC')) then
        Getfield('NIEV','NITRAINCAT1ID').AsString := tdbfield('NITRAINCAT1','NITRAINCAT1ID');

      GetField('NIEV','EVLENGTH').AsFloat  := GetField('TRCL','LENGTH').AsFloat;
      GetField('NIEV','DESCR').AsString    := 'Training Class';
      GetField('NIEV','NARR').AsString     := GetField('TRCL','NARRATIVE').AsString;
      A('NIEV').Post;

      If GetField('NIEV','NIEVID').AsInteger > 0 then
        NIEvID := GetField('NIEV','NIEVID').AsString
      else
        NIEvID := A('NIEV').NewPk;


      A('TRCLATT').SetScope(dbfield('TRCL','CODE') + dbfield('TRCL','CLCODE'),dbfield('TRCL','CODE') + dbfield('TRCL','CLCODE'));
      While Not A('TRCLATT').Eof do begin
        If A('PERS').ExactQueryLocate('PERSCODE',dbfield('TRCLATT','MEMCODE')) then begin
          A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + NIID);
          If A('NIATT').RecordsExist then
            A('NIATT').Edit
          else
            A('NIATT').Append;
          GetField('NIATT','NIID').AsString             := NIID;
          GetField('NIATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
          GetField('NIATT','PERSPOINTTYPEID').AsInteger := 1;
          GetField('NIATT','EVLENGTH').AsFloat          := GetField('TRAINATT','LENGTH').AsFloat;
          GetField('NIATT','POINT').AsFloat             := GetField('TRAINATT','POINTVAL').AsFloat;
          GetTable('NIATT').Post;

          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + NIEvID + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
          If A('NIEVATT').RecordsExist then
            A('NIEVATT').Edit
          else
            A('NIEVATT').Append;
          GetField('NIEVATT','PERSID').AsString := GetField('PERS','PERSID').AsString;
          GetField('NIEVATT','NIID').AsString   := GetField('NI','NIID').AsString;
          GetField('NIEVATT','NIEVID').AsString := NIEvID;
          A('NIEVATT').Post;
        end;
        A('TRCLATT').Skip(1);
      end;

      A('TRCL').Skip(1);
    end;

    A('TREVENT').Skip(1);
  end;

  CloseApollo('LOCATION');
  CloseApollo('NISTYPE');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('PERS');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');

  CloseApollo('TREVENT');
  CloseApollo('TRAINATT');

  CloseApollo('TRCLATT');
  CloseApollo('TRCL');


  TreventButton.Enabled := true;
  Gauge.Progress := 0;
  ShowMessage('Done');

end;

procedure TConvDbaseForm.TRNREQRPButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NITRAINCATREQ',false,'SELECT * FROM NITRAINCATREQ');
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');

  Open_Query('NITRAINCATREQSET',true,'SELECT * FROM NITRAINCATREQSET WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRAINING\DBF\TRNREQRP.DBF','S','TRNREQRP');

  Gauge.MaxValue := A('TRNREQRP').RecCount;
  Gauge.Progress := 0;

  While Not A('TRNREQRP').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('NITRAINCAT1').ExactQueryLocate('CODE',tdbfield('TRNREQRP','COURSECODE')) and A('NITRAINCATREQ').ExactQueryLocate('CODE',tdbfield('TRNREQRP','REPCODE')) then begin
      A('NITRAINCATREQSET').UpdateSQL('SELECT * FROM NITRAINCATREQSET WHERE NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString + ' AND NITRAINCATREQID = ' + GetField('NITRAINCATREQ','NITRAINCATREQID').AsString);
      If Not A('NITRAINCATREQSET').RecordsExist then begin
        GetTable('NITRAINCATREQSET').Append;
        GetField('NITRAINCATREQSET','NITRAINCAT1ID').AsString   := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
        GetField('NITRAINCATREQSET','NITRAINCATREQID').AsString := GetField('NITRAINCATREQ','NITRAINCATREQID').AsString;
        GetTable('NITRAINCATREQSET').Post;
      end;
    end;

    A('TRNREQRP').Skip(1);
  end;

  CloseApollo('TRNREQRP');
  CloseApollo('NITRAINCATREQ');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NITRAINCATREQSET');
  Gauge.Progress := 0;
  ShowMessage('Done');

end;

procedure TConvDbaseForm.TRTaskButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('NIAPPTASK',true,'SELECT * FROM NIAPPTASK WHERE 1=2');

  Net_Open(DirectoryField.Text + '\TRUCK\SUPPORT\TRCKCODE.DBF','S','TRCKCODE');

  Gauge.MaxValue := A('TRCKCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCKCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('TRCKCODE','FIELD') = 'TRTASK') then begin
      A('NIAPPTASK').UpdateSQL('SELECT * FROM NIAPPTASK WHERE CODE = ' + edbfield('TRCKCODE','CODE'));
      PutInUpdateMode('NIAPPTASK');
      GetField('NIAPPTASK','FDID').AsString         := mFireID;
      GetField('NIAPPTASK','CODE').AsString         := dbfield('TRCKCODE','CODE');
      GetField('NIAPPTASK','DESCR').AsString        := dbfield('TRCKCODE','DESC');
      GetTable('NIAPPTASK').Post;
    end;

    A('TRCKCODE').Skip(1);
  end;

  CloseApollo('NIAPPTASK');
  CloseApollo('TRCKCODE');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PAGECOMPClick(Sender: TObject);
begin
  Open_Query('PAGECOMP',true,'SELECT * FROM PAGECOMP WHERE 1=2');
  
  Net_Open(DirectoryField.Text + '\PAGING\PAGECOMP.DBF','S','OLDPAGECOMP');
  While Not A('OLDPAGECOMP').Eof do begin
    A('PAGECOMP').UpdateSQL('SELECT * FROM PAGECOMP WHERE CODE = ' + edbfield('OLDPAGECOMP','CODE') );
    If A('PAGECOMP').RecordsExist then
      GetTable('PAGECOMP').Edit
    else
      GetTable('PAGECOMP').Append;

    If Not (tdbfield('OLDPAGECOMP','SMTPPORT') = '') then
      GetField('PAGECOMP','PAGECOMPTYPEID').AsString   := '2'
    else if Not (tdbfield('OLDPAGECOMP','SNPPPORT') = '') then
      GetField('PAGECOMP','PAGECOMPTYPEID').AsString   := '3';

    GetField('PAGECOMP','BAUDRATE').AsString   := GetField('OLDPAGECOMP','BAUDRATE').AsString;
    GetField('PAGECOMP','CMPEMAIL').AsString   := GetField('OLDPAGECOMP','CMPEMAIL').AsString;
    GetField('PAGECOMP','CODE').AsString       := GetField('OLDPAGECOMP','CODE').AsString;
    GetField('PAGECOMP','COMPANY').AsString    := GetField('OLDPAGECOMP','COMPANY').AsString;
    GetField('PAGECOMP','DATABIT').AsString    := GetField('OLDPAGECOMP','DATABIT').AsString;
    GetField('PAGECOMP','FLOWCONT').AsString   := GetField('OLDPAGECOMP','FLOWCONT').AsString;
    GetField('PAGECOMP','PARITY').AsString     := GetField('OLDPAGECOMP','PARITY').AsString;
    GetField('PAGECOMP','PHONE').AsString      := GetField('OLDPAGECOMP','PHONENUM').AsString;
    GetField('PAGECOMP','SMTPADDR').AsString   := GetField('OLDPAGECOMP','SMTPADDR').AsString;
    GetField('PAGECOMP','SMTPNAME').AsString   := GetField('OLDPAGECOMP','SMTPNAME').AsString;
    GetField('PAGECOMP','SMTPPASS').AsString   := GetField('OLDPAGECOMP','SMTPPASS').AsString;
    GetField('PAGECOMP','SMTPPORT').AsString   := GetField('OLDPAGECOMP','SMTPPORT').AsString;
    GetField('PAGECOMP','SNPPADDR').AsString   := GetField('OLDPAGECOMP','SNPPADDR').AsString;
    GetField('PAGECOMP','SNPPPORT').AsString   := GetField('OLDPAGECOMP','SNPPPORT').AsString;
    GetField('PAGECOMP','STOPBIT').AsString    := GetField('OLDPAGECOMP','STOPBIT').AsString;

    GetTable('PAGECOMP').Post;
    A('OLDPAGECOMP').Skip(1);
  end;
  CloseApollo('PAGECOMP');
  CloseApollo('OLDPAGECOMP');
  ShowMessage('Done');

end;

procedure TConvDbaseForm.PageListButtonClick(Sender: TObject);
begin
  Open_Query('PAGECOMP',false,'SELECT PAGECOMPID FROM PAGECOMP WHERE 1=2');
  Open_Query('PAGELIST',true,'SELECT * FROM PAGELIST WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PAGING\PAGELIST.DBF','S','OLDPAGELIST');
  Gauge.MaxValue := A('OLDPAGELIST').RecCount;
  Gauge.Progress := 0;
  While Not A('OLDPAGELIST').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PAGELIST').UpdateSQL('SELECT * FROM PAGELIST WHERE CODE = ' + edbfield('OLDPAGELIST','CODE') );
    If A('PAGELIST').RecordsExist then
      GetTable('PAGELIST').Edit
    else
      GetTable('PAGELIST').Append;

    A('PAGECOMP').UpdateSQL('SELECT PAGECOMPID FROM PAGECOMP WHERE CODE = ' + edbfield('OLDPAGELIST','PAGETYPE'));

    If A('PAGECOMP').RecordsExist then
      GetField('PAGELIST','PAGECOMPID').AsString   := GetField('PAGECOMP','PAGECOMPID').AsString;

    GetField('PAGELIST','PHONEPIN').AsString := GetField('OLDPAGELIST','PHONEPIN').AsString;
    GetField('PAGELIST','CODE').AsString     := GetField('OLDPAGELIST','CODE').AsString;
    GetField('PAGELIST','DESCR').AsString    := GetField('OLDPAGELIST','DESC').AsString;

    GetTable('PAGELIST').Post;
    A('OLDPAGELIST').Skip(1);
  end;
  CloseApollo('PAGECOMP');
  CloseApollo('PAGELIST');
  CloseApollo('OLDPAGELIST');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PageGroupButtonClick(Sender: TObject);
begin
  Open_Query('FDID',false,'SELECT FDID FROM FDID WHERE 1=2');
  Open_Query('PAGEGROUP',true,'SELECT * FROM PAGEGROUP WHERE 1=2');
  Net_Open(DirectoryField.Text + '\PAGING\PAGEGRP.DBF','S','PAGEGRP');
  Gauge.MaxValue := A('PAGEGRP').RecCount;
  Gauge.Progress := 0;
  While Not A('PAGEGRP').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PAGEGROUP').UpdateSQL('SELECT * FROM PAGEGROUP WHERE CODE = ' + edbfield('PAGEGRP','CODE') );
    If A('PAGEGROUP').RecordsExist then
      GetTable('PAGEGROUP').Edit
    else
      GetTable('PAGEGROUP').Append;

    A('FDID').UpdateSQL('SELECT FDID FROM FDID WHERE FDID = ' + edbfield('PAGEGRP','FDID'));
    If A('FDID').RecordsExist then
      GetField('PAGEGROUP','FDID').AsString  := GetField('PAGEGRP','FDID').AsString;

    If (tdbfield('PAGEGRP','FDID') = '') then
      GetField('PAGEGROUP','FDID').AsString  := mFireID;
    GetField('PAGEGROUP','CODE').AsString       := GetField('PAGEGRP','CODE').AsString;
    GetField('PAGEGROUP','SHORTDESCR').AsString := substr(GetField('PAGEGRP','DESC').AsString,1,15);
    GetField('PAGEGROUP','DESCR').AsString      := GetField('PAGEGRP','DESC').AsString;

    GetTable('PAGEGROUP').Post;
    A('PAGEGRP').Skip(1);
  end;
  CloseApollo('PAGEGROUP');
  CloseApollo('PAGEGRP');
  CloseApollo('FDID');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PageLinkButtonClick(Sender: TObject);
Var PageGroupID : String;
    PageListID  : String;
begin
  Open_Query('PAGELIST', false,'SELECT * FROM PAGELIST WHERE  1=2');
  Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP WHERE 1=2');
  Open_Query('PAGELINK', true, 'SELECT * FROM PAGELINK WHERE  1=2');
  Net_Open(DirectoryField.Text + '\PAGING\PAGELINK.DBF','S','OLDPAGELINK');
  Gauge.MaxValue := A('OLDPAGELINK').RecCount;
  Gauge.Progress := 0;
  While Not A('OLDPAGELINK').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PAGELIST').UpdateSQL('SELECT PAGELISTID FROM PAGELIST WHERE CODE = ' + edbfield('OLDPAGELINK','USERCODE') );
    If A('PAGELIST').RecordsExist then begin
      PageListID := GetField('PAGELIST','PAGELISTID').AsString;
      A('PAGEGROUP').UpdateSQL('SELECT PAGEGROUPID FROM PAGEGROUP WHERE CODE = ' + edbfield('OLDPAGELINK','CODE') );
      If A('PAGEGROUP').RecordsExist then begin
        PageGroupID := GetField('PAGEGROUP','PAGEGROUPID').AsString;

        A('PAGELINK').UpdateSQL('SELECT * FROM PAGELINK WHERE PAGELISTID = ' + PageListID + ' AND PAGEGROUPID = ' + PageGroupID);
        If A('PAGELINK').RecordsExist then
          A('PAGELINK').Edit
        else
          A('PAGELINK').Append;
        GetField('PAGELINK','PAGEGROUPID').AsString := PageGroupID;
        GetField('PAGELINK','PAGELISTID').AsString  := PageListID;
        GetTable('PAGELINK').Post;

      end;
    end;
    A('OLDPAGELINK').Skip(1);
  end;
  CloseApollo('PAGEGROUP');
  CloseApollo('PAGELIST');
  CloseApollo('PAGELINK');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.PageDispButtonClick(Sender: TObject);
Var PageGroupID    : String;
    DispCallTypeID : String;
begin
  Open_Query('DISPCALLTYPE', false,'SELECT DISPCALLTYPEID FROM DISPCALLTYPE WHERE  1=2');
  Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP WHERE 1=2');
  Open_Query('PAGEDISP',true,'SELECT * FROM PAGEDISP WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PAGING\PAGEDISP.DBF','S','OLDPAGEDISP');
  Gauge.MaxValue := A('OLDPAGEDISP').RecCount;
  Gauge.Progress := 0;
  While Not A('OLDPAGEDISP').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('DISPCALLTYPE').UpdateSQL('SELECT DISPCALLTYPEID FROM DISPCALLTYPE WHERE CODE = ' + edbfield('OLDPAGEDISP','CALLTYPE') );
    If A('DISPCALLTYPE').RecordsExist then begin
      DispCallTypeID := GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString;
      A('PAGEGROUP').UpdateSQL('SELECT PAGEGROUPID FROM PAGEGROUP WHERE CODE = ' + edbfield('OLDPAGEDISP','PAGEGRP') );
      If A('PAGEGROUP').RecordsExist then begin
        PageGroupID := GetField('PAGEGROUP','PAGEGROUPID').AsString;

        A('PAGEDISP').UpdateSQL('SELECT * FROM PAGEDISP WHERE DISPCALLTYPEID = ' + DispCallTypeID + ' AND PAGEGROUPID = ' + PageGroupID);
        If A('PAGEDISP').RecordsExist then
          A('PAGEDISP').Edit
        else
          A('PAGEDISP').Append;
        GetField('PAGEDISP','PAGEGROUPID').AsString    := PageGroupID;
        GetField('PAGEDISP','DISPCALLTYPEID').AsString := DispCallTypeID;
        GetTable('PAGEDISP').Post;
      end;
    end;
    A('OLDPAGEDISP').Skip(1);
  end;
  CloseApollo('OLDPAGEDISP');
  CloseApollo('PAGEDISP');
  CloseApollo('DISPCALLTYPE');
  CloseApollo('PAGEGROUP');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.NonIncButtonClick(Sender: TObject);
begin
  inherited;
  ConvertNI;
end;

procedure TConvDbaseForm.LoadNIPType(CodeVar, DescrVar: String);
begin
  Open_Query('NIPTYPE',true,'SELECT * FROM NIPTYPE WHERE CODE = ' + AddExpr(CodeVar));
  PutInUpdateMode('NIPTYPE');
  GetField('NIPTYPE','FDID').AsString  := mFireID;
  GetField('NIPTYPE','CODE').AsString  := CodeVar;
  GetField('NIPTYPE','DESCR').AsString := DescrVar;
  GetTable('NIPTYPE').Post;
  CloseApollo('NIPTYPE');
end;

procedure TConvDbaseForm.LoadNISType;
Var NIPTypeID    : String;
    NILosapCatID : String;
begin
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  Net_Open(DirectoryField.Text + 'STATION\SUPPORT\STATCODE.DBF','S','STATCODE');
  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Progress := 0;
  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    NIPTypeID    := '0';

    If (tdbfield('STATCODE','FIELD') = 'MEETTYPE') then begin
      NIPTypeID    := MeetIDField.Value;
      NILosapCatID := MeetLosapCatIDfield.Value;
    end else If (tdbfield('STATCODE','FIELD') = 'WORKTYPE') then begin
      NIPTypeID    := WorkIDField.Value;
      NILosapCatID := WorkLosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'STANDTYPE') then begin
      NIPTypeID    := StandIDField.Value;
      NILosapCatID := StandLosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'OTH1TYPE') then begin
      NIPTypeID    := Misc1IDField.Value;
      NILosapCatID := Misc1LosapCatIDfield.Value;
    end else if (tdbfield('STATCODE','FIELD') = 'OTH2TYPE') then begin
      NIPTypeID    := Misc2IDField.Value;
      NILosapCatID := Misc2LosapCatIDfield.Value;
    end;

    If (AnyStrToInt(NIPTypeID) > 0) then begin
      A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE FDID = ' + AddExpr(mFireID) + ' AND NIPTYPEID = ' + NIPTypeID + ' AND CODE = ' + edbfield('STATCODE','CODE'));
      If A('NISTYPE').RecordsExist then
        A('NISTYPE').Edit
      else
        A('NISTYPE').Append;
      GetField('NISTYPE','NIPTYPEID').AsString    := NIPTypeID;
      GetField('NISTYPE','NILOSAPCATID').AsString := NILosapCatID;
      GetField('NISTYPE','ACTIVE').AsString       := 'Y';
      GetField('NISTYPE','FDID').AsString         := mFireID;
      GetField('NISTYPE','CODE').AsString         := dbfield('STATCODE','CODE');
      GetField('NISTYPE','DESCR').AsString        := dbfield('STATCODE','DESC');
      GetField('NISTYPE','POINT').AsFloat         := GetField('STATCODE','POINT').AsFloat;
      A('NISTYPE').Post;
    end;

    A('STATCODE').Skip(1);
  end;

  CloseApollo('STATCODE');
  CloseApollo('NISTYPE');
  CloseApollo('NIPTYPE');
  Gauge.Progress := 0;
end;


procedure TConvDbaseForm.LoadNITrainCat1;
begin
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');
  Open_Query('NITRAINCATTYPE',false,'SELECT * FROM NITRAINCATTYPE');

  Net_Open(DirectoryField.Text + '\STATION\SUPPORT\STATCODE.DBF','S','STATCODE');

  Gauge.MaxValue := A('STATCODE').RecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;
  While Not A('STATCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If (tdbfield('STATCODE','FIELD') = 'DRILLTYPE') or (tdbfield('STATCODE','FIELD') = 'DREVCODE') then begin
      A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('STATCODE','CODE'));
      PutInUpdateMode('NITRAINCAT1');
      GetField('NITRAINCAT1','CODE').AsString   := dbfield('STATCODE','CODE');
      GetField('NITRAINCAT1','ACTIVE').AsString := 'Y';
      GetField('NITRAINCAT1','DESCR').AsString  := dbfield('STATCODE','DESC');
      GetField('NITRAINCAT1','POINT').AsFloat   := GetField('STATCODE','POINT').AsFloat;
      A('NITRAINCAT1').Post;
    end;
    A('STATCODE').Skip(1);
  end;
  CloseApollo('STATCODE');

  If FileExists(DirectoryField.Text + 'TRAINING\DBF\TRCOURSE.DBF') then begin
    Net_Open(DirectoryField.Text + 'TRAINING\DBF\TRCOURSE.DBF','S','TRCOURSE');
    Gauge.MaxValue := A('TRCOURSE').RecCount;
    Gauge.Visible  := true;
    Gauge.Progress := 0;
    While Not A('TRCOURSE').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('TRCOURSE','COURSECODE'));
      PutInUpdateMode('NITRAINCAT1');
      GetField('NITRAINCAT1','ACTIVE').AsString     := 'Y';
      GetField('NITRAINCAT1','CODE').AsString       := dbfield('TRCOURSE','COURSECODE');
      GetField('NITRAINCAT1','DESCR').AsString      := dbfield('TRCOURSE','DESC');
      GetField('NITRAINCAT1','POINT').AsFloat       := GetField('TRCOURSE','POINT').AsFloat;
      GetField('NITRAINCAT1','EVLENGTH').AsFloat    := GetField('TRCOURSE','HOURS').AsFloat;
      GetField('NITRAINCAT1','QUALPERIOD').AsString := GetField('TRCOURSE','REFRPER').AsString;
      GetField('NITRAINCAT1','NARR').AsString       := GetField('TRCOURSE','NARR').AsString;
      A('NITRAINCAT1').Post;
      A('TRCOURSE').Skip(1);
    end;
    CloseApollo('TRCOURSE');
  end;
  CloseApollo('NITRAINCAT1');
  CloseApollo('NITRAINCATTYPE');
  Gauge.Progress := 0;
end;

procedure TConvDbaseForm.ConvertNI;
begin
  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('NIPTYPE',false,'SELECT * FROM NIPTYPE');
  Open_Query('NI',true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NIEV',true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
  Open_Query('NIPERSINV',true,'SELECT * FROM NIPERSINV WHERE 1=2');
  Open_Query('NIFDIDCOMP',true,'SELECT * FROM NIFDIDCOMP WHERE 1=2');

  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('PERSPOINTTYPE',false,'SELECT * FROM PERSPOINTTYPE');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');
  Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP');
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');
  Open_Query('NIUSER1',false,'SELECT * FROM NIUSER1');


  If FileExists(DirectoryField.Text + '\TRAINING\DBF\TREVENT.DBF') then
    ConvertNIEvent('TRAIN',TrainIDField.Value, '2', TrainLosapCatIDField.Value, '\TRAINING\DBF\TREVENT.DBF',  '\TRAINING\DBF\TRAINATT.DBF');
    
  ConvertNIEvent('DRILL',DrillIDField.Value, '1', DrillLosapCatIDField.Value, '\STATION\DBF\DRILL.DBF',     '\STATION\DBF\DRILLATT.DBF');
  ConvertNIEvent('MEET',MeetIDField.Value,  '',  MeetLosapCatIDField.Value,  '\STATION\DBF\MEET.DBF',      '\STATION\DBF\MEETATT.DBF');

  ConvertNIEvent('MISC1',Misc1IDField.Value, '',  Misc1LosapCatIDField.Value, '\STATION\DBF\OTHER1.DBF',    '\STATION\DBF\OTHATT1.DBF');
  ConvertNIEvent('MISC2',Misc2IDField.Value, '',  Misc2LosapCatIDField.Value, '\STATION\DBF\OTHER2.DBF',    '\STATION\DBF\OTHATT2.DBF');
  ConvertNIEvent('STAND',StandIDField.Value, '',  StandLosapCatIDField.Value, '\STATION\DBF\STAND.DBF',     '\STATION\DBF\STANDATT.DBF');
  ConvertNIEvent('WORK',WorkIDField.Value,  '',  WorkLosapCatIDField.Value,  '\STATION\DBF\WORK.DBF',      '\STATION\DBF\WORKATT.DBF');

  CloseApollo('LOCATION');
  CloseApollo('NIPTYPE');
  CloseApollo('NISTYPE');
  CloseApollo('NI');
  CloseApollo('NIATT');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  CloseApollo('NIPERSINV');
  CloseApollo('NIFDIDCOMP');
  CloseApollo('PERS');
  CloseApollo('PERSPOINTTYPE');
  CloseApollo('FDIDCOMP');
  CloseApollo('NITRAINCAT1');
  CloseApollo('NIUSER1');
end;

procedure TConvDbaseForm.ConvertNIEvent(EventType,NIPTypeID, NISTypeID, NILosapCATID, EventDbf, AttendDbf: String);
Var DateTimeStart : TDateTime;
    DateTimeEnd   : TDateTime;
    NIID          : String;
    NIEvID        : String;
    EventCode     : String;
    OffCode       : String;
    OffMisc       : String;
begin
  AddStatusListBox(ListBox1,'Converting ' + EventType + ' . . . . Started');

  If AnyStrToInt(NIPTypeID) = 0 then
    exit;

  Net_Open(DirectoryField.Text + '\STATION\DBF\STATCOMP.DBF','S','STATCOMP');

  Net_Open(DirectoryField.Text + EventDbf,'S','EVENT');
  A('EVENT').SetOrder(2);
  If (InitialDateField.Value > 0) and (FinalDateField.Value > 0) then
    A('EVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Net_Open(DirectoryField.Text + AttendDbf,'S','ATTEND');
  A('ATTEND').SetOrder(2);

  Gauge.MaxValue := A('EVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('EVENT').Eof do begin
    Statuslabel.Caption := 'Event Type ' + EventType + ' ' + NIID;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If Not (tdbfield('EVENT','CODE') = '') and (GetField('EVENT','DATE').AsDateTime > 0) then begin
      AddStatusListBox(ListBox1,'Converting ' + EventType + ' Code ' + tdbfield('EVENT','CODE')  + ' . . . . ');

      A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('EVENT','CODE') + ' AND EVENTTYPE = ' + AddExpr(EventType));
      PutInUpdateMode('NI');

      DateTimeStart                             := GetField('EVENT','DATE').AsDateTime +  GetRealTime(tdbfield('EVENT','TIME'));

      If Not (alltrim(substr(tdbfield('EVENT','FINTIME'),1,2)) = '') and (tdbfield('EVENT','FINTIME') < tdbfield('EVENT','TIME')) then
        DateTimeEnd                               := GetField('EVENT','DATE').AsDateTime + 1 + GetRealTime(tdbfield('EVENT','FINTIME'))
      else
        DateTimeEnd                               := GetField('EVENT','DATE').AsDateTime +  GetRealTime(tdbfield('EVENT','FINTIME'));

      GetField('NI','FDID').AsString            := tdbfield('EVENT','FDID');
      GetField('NI','CODE').AsString            := tdbfield('EVENT','CODE');
      GetField('NI','DESCR').AsString           := tdbfield('EVENT','DESCR');
      GetField('NI','EVENTTYPE').AsString       := EventType;
      DateField.Caption                         := tdbfield('EVENT','CODE') + ' ' + GetField('EVENT','DATE').AsString;
      OffCode                                   := '';
      OffMisc                                   := '';

      If (EventType = 'TRAIN') then begin
        GetField('NI','EVLENGTH').AsFloat         := GetField('EVENT','HOURS').AsFloat;
        GetField('NI','NARR').AsString            := GetField('EVENT','NARRATIVE').AsString;
        OffCode                                   := tdbfield('EVENT','COORDCODE');
        OffMisc                                   := tdbfield('EVENT','CFUTURE1');
      end else begin
        GetField('NI','EVLENGTH').AsFloat         := GetField('EVENT','LENGTH').AsFloat;
        GetField('NI','NARR').AsString            := GetField('EVENT','NARR').AsString;
        OffCode                                   := tdbfield('EVENT','MEMCODE');
        If EventType = 'DRILL' then
          OffMisc                                 := tdbfield('EVENT','CFUTURE1')
        else
          OffMisc                                 := tdbfield('EVENT','CFUTURE2');
      end;

      GetField('NI','POINT').AsFloat            := GetField('EVENT','POINT').AsFloat;
      GetField('NI','NIPTYPEID').AsString       := NIPTypeID;
      GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
      GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
      GetField('NI','LOCMISC').AsString         := GetField('EVENT',IIf(EventType = 'DRILL','CFUTURE2','CFUTURE1')).AsString;

      If NISTypeID = '' then begin
        If A('NISTYPE').ExactQueryLocate(['NIPTYPEID','CODE'],[NIPTypeID,GetField('EVENT','TYPE').AsString]) then
          GetField('NI','NISTYPEID').AsString     := GetField('NISTYPE','NISTYPEID').AsString;
      end else
        GetField('NI','NISTYPEID').AsString     := NISTypeID;

      GetField('NI','NILOSAPCATID').AsString    := NILosapCATID;

      If A('LOCATION').ExactQueryLocate('CODE',tdbfield('EVENT','LOCATION')) then
        GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;

      If A('FDIDCOMP').ExactQueryLocate('CODE',tdbfield('EVENT','COMPANY')) then
        GetField('NI','FDIDCOMPID').AsString      := GetField('FDIDCOMP','FDIDCOMPID').AsString;

      If (EventType = 'TRAIN') or (EventType = 'DRILL') then begin
        If A('NITRAINCAT1').ExactQueryLocate('CODE',tdbfield('EVENT',IIf(EventType = 'DRILL','TYPE','COURSECODE'))) then
          GetField('NI','NITRAINCAT1ID').AsString := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
      end;

      If A('NIUSER1').ExactQueryLocate('CODE',tdbfield('EVENT','SERVICE')) then
        GetField('NI','NIUSER1ID').AsString      := GetField('NIUSER1','NIUSER1ID').AsString;

      GetTable('NI').Post;

      If GetField('NI','NIID').AsInteger > 0 then
        NIID := GetField('NI','NIID').AsString
      else
        NIID := A('NI').NewPk;

      If Not (OffCode = '') then begin
        If A('PERS').ExactQueryLocate('PERSCODE',OffCode) then begin
          A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + NIID + ' AND NIPERSINVTYPEID = 1');
          PutInUpdateMode('NIPERSINV');
          GetField('NIPERSINV','NIID').AsString            := NIID;
          GetField('NIPERSINV','NIPERSINVTYPEID').AsString := '1';
          GetField('NIPERSINV','PERSID').AsString          := Getfield('PERS','PERSID').AsString;
          GetTable('NIPERSINV').Post;
        end
      end;

      If Not (OffMisc = '') then begin
        A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + NIID + ' AND NIPERSINVTYPEID = 2');
        PutInUpdateMode('NIPERSINV');
        GetField('NIPERSINV','NIID').AsString            := NIID;
        GetField('NIPERSINV','NIPERSINVTYPEID').AsString := '2';
        GetField('NIPERSINV','NAME').AsString            := OffMisc;
        GetTable('NIPERSINV').Post;
      end;

      NIEvID := '';

      If (EventType = 'TRAIN') or (EventType = 'DRILL') then begin
        EventCode := tdbfield('EVENT',IIf(EventType = 'DRILL','TYPE','COURSECODE'));
        If (tdbfield('NITRAINCAT1','CODE') = EventCode) then begin
          A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + AddExpr(NIID) + ' AND NITRAINCAT1ID = ' + AddExpr(GetField('NITRAINCAT1','NITRAINCAT1ID').AsString));
          PutInUpdateMode('NIEV');
          GetField('NIEV','NIID').AsString          := NIID;
          GetField('NIEV','NITRAINCAT1ID').AsString := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
          GetField('NIEV','DATETIMESTART').AsString := GetField('NI','DATETIMESTART').AsString;
          GetField('NIEV','DATETIMEEND').AsString   := GetField('NI','DATETIMEEND').AsString;
          GetField('NIEV','EVLENGTH').AsString      := GetField('NI','EVLENGTH').AsString;
          GetTable('NIEV').Post;
          If GetField('NIEV','NIEVID').AsInteger > 0 then
            NIEvID := GetField('NIEV','NIEVID').AsString
          else
            NIEvID := A('NIEV').NewPk;
        end;
      end;

      A('ATTEND').SetScope(padr(dbfield('EVENT','CODE'),8,' '),padr(dbfield('EVENT','CODE'),8,' '));
      While Not A('ATTEND').Eof do begin
        Application.ProcessMessages;
        If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('ATTEND','MEMCODE')) then begin
          A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + GetField('NI','NIID').AsString);
          PutInUpdateMode('NIATT');
          GetField('NIATT','NIID').AsString             := GetField('NI','NIID').AsString;
          GetField('NIATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
          If A('PERSPOINTTYPE').ExactQueryLocate('CODE',tdbfield('ATTEND','POINT')) then
            GetField('NIATT','PERSPOINTTYPEID').AsString  := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
          GetField('NIATT','EVLENGTH').AsFloat          := GetField('ATTEND','LENGTH').AsFloat;

          GetField('NIATT','POINT').AsFloat             := GetField('ATTEND','POINTVAL').AsFloat;

          GetField('NIATT','NIPTYPEID').AsString        := GetField('NI','NIPTYPEID').AsString;
          GetField('NIATT','NISTYPEID').AsString        := GetField('NI','NISTYPEID').AsString;
          GetTable('NIATT').Post;
          If Not (NIEvID = '') then begin
            A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIEVID = ' + NIEvID);
            PutInUpdateMode('NIEVATT');
            GetField('NIEVATT','NIID').AsString             := GetField('NI','NIID').AsString;
            GetField('NIEVATT','NIEVID').AsString           := NIEvID;
            GetField('NIEVATT','PERSID').AsString           := GetField('PERS','PERSID').AsString;
            GetTable('NIEVATT').Post;
          end;
        end;
        A('ATTEND').Skip(1);
      end;
    end;
    StatusLabel.Caption := inttostr( Gauge.Progress );
    A('EVENT').Skip(1);
  end;
  CloseApollo('EVENT');
  CloseApollo('ATTEND');
  CloseApollo('STATCOMP');
  Gauge.Progress := 0;
  AddStatusListBox(ListBox1,'Converting ' + EventType + ' . . . . Completed');
end;



procedure TConvDbaseForm.NITRAINCATTYPEButtonClick(Sender: TObject);
begin
  inherited;
  if not Net_Open(DirectoryField.Text + '\TRAINING\SUPPORT\TRCODE.DBF','S','TRCODE') then begin
    ShowMessage('TRAINING\SUPPORT\TRCODE.DBF does not exist - they probably don''t have this module');
    exit;
  end;
  Open_Query('NITRAINCATTYPE',true,'SELECT * FROM NITRAINCATTYPE WHERE 1=2');


  Gauge.MaxValue := A('TRCODE').RecCount;
  Gauge.Progress := 0;

  While Not A('TRCODE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If tdbfield('TRCODE','FIELD') = 'SCTYPE' then begin
      A('NITRAINCATTYPE').UpdateSql('SELECT * FROM NITRAINCATTYPE WHERE CODE = ' + edbField('TRCODE','CODE'));
      PutInUpdateMode('NITRAINCATTYPE');
      GetField('NITRAINCATTYPE','CODE').AsString      := tdbField('TRCODE','CODE');
      GetField('NITRAINCATTYPE','DESCR').AsString     := tdbField('TRCODE','DESC');
      GetTable('NITRAINCATTYPE').Post;
    end;
    A('TRCODE').Skip(1);
  end;

  CloseApollo('TRCODE');
  CloseApollo('NITRAINCATTYPE');
  Gauge.Progress := 0;
end;

procedure TConvDbaseForm.GISSetButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\WINMAP\MAPSET.DBF','S','MAPSET');
  Open_Query('GISSET',true,'SELECT * FROM GISSET WHERE FDID = ' + AddExpr(FireID));
  If A('GISSET').RecordsExist then
    A('GISSET').Edit
  else
    A('GISSET').Append;
  Getfield('GISSET','FDID').AsString        := FireID;
  Getfield('GISSET','GISCODE').AsString     := FireID;
  Getfield('GISSET','METERFEET').AsFloat    := Getfield('MAPSET','METERFEET').AsFloat;
  Getfield('GISSET','MAPTYPE').AsString     := Getfield('MAPSET','MAPTYPE').AsString;
  Getfield('GISSET','STREETLAYER').AsString := Getfield('MAPSET','STREETLAYE').AsString;
  GetTable('GISSET').Post;
  CloseApollo('GISSET');
  CloseApollo('MAPSET');
  ShowMessage('Finished');
end;

procedure TConvDbaseForm.GISLayerButtonClick(Sender: TObject);
begin
  inherited;
{ Net_Open(DirectoryField.Text + '\WINMAP\LAYERS.DBF','S','LAYERS');
  RunSQL('TRUNCATE TABLE GISLAYER');

  Open_Query('GISLAYER',true,'SELECT * FROM GISLAYER WHERE 1=2');

  While Not A('LAYERS').Eof do begin
    A('GISLAYER').Append;
    Getfield('GISLAYER','GISSETID').AsString    := '1';
    Getfield('GISLAYER','DESCR').AsString       := Getfield('LAYERS','DESC').AsString;
    Getfield('GISLAYER','SHAPEFILE').AsString   := Getfield('LAYERS','CODE').AsString;
    Getfield('GISLAYER','SHAPECOLOR').AsString  := Getfield('LAYERS','COLOR').AsString;
    Getfield('GISLAYER','SORTORD').AsString     := Getfield('LAYERS','ORDER').AsString;
    Getfield('GISLAYER','SHAPEEXTENT').AsFloat  := Getfield('LAYERS','EXTENT').AsFloat;
    Getfield('GISLAYER','SHAPEALIAS').AsString  := Getfield('LAYERS','ADD_NAME').AsString;
    Getfield('GISLAYER','SHAPEWIDTH').AsFloat   := Getfield('LAYERS','SHPWIDTH').AsFloat;
    Getfield('GISLAYER','LABELFIELD').AsString  := Getfield('LAYERS','LABELFIELD').AsString;
    Getfield('GISLAYER','LABELEXTENT').AsFloat  := Getfield('LAYERS','LABELEXT').AsFloat;
    Getfield('GISLAYER','LABELFONT').AsString   := Getfield('LAYERS','LABELFONT').AsString;
    GetTable('GISLAYER').Post;
    A('LAYERS').Skip(1);
  end;
  CloseApollo('LAYERS');
  CloseApollo('GISLAYER');
  ShowMessage('Finished');
}
end;

procedure TConvDbaseForm.DispSeqButtonClick(Sender: TObject);
Var BoxCode  : String;
    FieldNum : Integer;
    StaVar   : String;
    AliasVar : String;
begin
  inherited;
 If Not BooleanMessageDlg('Are you sure?') then
    exit;

  RunSQL('TRUNCATE TABLE DISPSEQ');

  Open_Query('DISPBOX',false,'SELECT CODE, DISPBOXID FROM DISPBOX');
  Open_Query('DISPCALLTYPE',false,'SELECT CODE, DISPCALLTYPEID FROM DISPCALLTYPE');
  Open_Query('DISPAPP',false,'SELECT CODE, DISPAPPID FROM DISPAPP');
  Open_Query('DISPLOC',false,'SELECT CODE, DISPLOCID FROM DISPLOC');
  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\DISPSEQ.DBF','S','OLDDISPSEQ');

  Gauge.MaxValue := A('OLDDISPSEQ').RecCount;
  Gauge.Visible  := true;

  Open_Query('DISPSEQ',true,'SELECT * FROM DISPSEQ WHERE 1=2');
  While Not A('OLDDISPSEQ').Eof do begin
    If (GetField('OLDDISPSEQ','ALARM1').AsInteger > 0) and Not (tdbfield('OLDDISPSEQ','ST1') = '') then begin
      GetTable('DISPSEQ').Append;
      BoxCode := tdbfield('OLDDISPSEQ','BOXCODE');
      If A('DISPBOX').ExactQueryLocate('CODE',BoxCode) then
        GetField('DISPSEQ','DISPBOXID').AsString := GetField('DISPBOX','DISPBOXID').AsString;
      If A('DISPCALLTYPE').ExactQueryLocate('CODE',tdbfield('OLDDISPSEQ','CALLTYPE')) then
        GetField('DISPSEQ','DISPCALLTYPEID').AsString := GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString;
      If A('DISPAPP').ExactQueryLocate('CODE',tdbfield('OLDDISPSEQ','APPTYPE')) then
        GetField('DISPSEQ','DISPAPPID').AsString := GetField('DISPAPP','DISPAPPID').AsString;
      For FieldNum := 1 to 10 do begin
        GetField('DISPSEQ','ALARM' + IntToStr(FieldNum)).AsString := GetField('OLDDISPSEQ','ALARM' + IntToStr(FieldNum)).AsString;
        StaVar := tdbfield('OLDDISPSEQ','ST' + IntToStr(FieldNum));
        If Not (StaVar = '') then begin
          If A('DISPLOC').ExactQueryLocate('CODE',StaVar) then
            GetField('DISPSEQ','DISPLOCID' + IntToStr(FieldNum)).AsString := GetField('DISPLOC','DISPLOCID').AsString;
        end;

        AliasVar := tdbfield('OLDDISPSEQ','ALIAS' + IntToStr(FieldNum));
        If Not (AliasVar = '') then begin
          If A('DISPAPP').ExactQueryLocate('CODE',AliasVar) then
            GetField('DISPSEQ','APPALIAS' + IntToStr(FieldNum)).AsString := GetField('DISPAPP','DISPAPPID').AsString;
        end;
      end;
      GetField('DISPSEQ','SEARCHORD').AsString := 'S';
      GetField('DISPSEQ','DAYSTART').AsString  := GetField('OLDDISPSEQ','DAYSTART').AsString;
      GetField('DISPSEQ','DAYFIN').AsString    := GetField('OLDDISPSEQ','DAYFIN').AsString;
      GetField('DISPSEQ','TIMESTART').AsString := GetField('OLDDISPSEQ','TIMESTART').AsString;
      GetField('DISPSEQ','TIMEFIN').AsString   := GetField('OLDDISPSEQ','TIMEFIN').AsString;
      GetTable('DISPSEQ').Post;
    end;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('OLDDISPSEQ').Skip(1);
  end;
  CloseApollo('DISPSEQ');
  CloseApollo('DISPBOX');
  CloseApollo('DISPAPP');
  CloseApollo('DISPLOC');
  CloseApollo('DISPCALLTYPE');
  CloseApollo('OLDDISPSEQ');

  Gauge.Progress := 0;
  Gauge.Visible  := false;

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DispSetButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\DISPSET.DBF','S','OLDDISPSET');
  Open_Query('DISPSET',true,'SELECT * FROM DISPSET WHERE FDID = ' + AddExpr(FireID));
  If A('DISPSET').RecordsExist then
    A('DISPSET').Edit
  else
    A('DISPSET').Append;
  GetField('DISPSET','FDID').AsString        := FireID;
  GetField('DISPSET','TIMEINID').AsString    := SQLLookup(tdbfield('OLDDISPSET','TIMECLEAR'),'CODE','DISPSTATCODE','DISPSTATCODEID');
  GetField('DISPSET','TIMEOUTID').AsString   := SQLLookup(tdbfield('OLDDISPSET','TIMEOUT'),'CODE','DISPSTATCODE','DISPSTATCODEID');
  GetField('DISPSET','TIMECONTID').AsString  := SQLLookup(tdbfield('OLDDISPSET','TIMECONT'),'CODE','DISPSTATCODE','DISPSTATCODEID');
  GetField('DISPSET','TIMEARRID').AsString   := SQLLookup(tdbfield('OLDDISPSET','TIMEARR'),'CODE','DISPSTATCODE','DISPSTATCODEID');
  GetField('DISPSET','EOACODEID').AsString   := SQLLookup(tdbfield('OLDDISPSET','EOACODE'),'CODE','DISPSTATCODE','DISPSTATCODEID');
  GetTable('DISPSET').Post;

  RunSQL('UPDATE DISPSTATCODE SET INSERVICE = ' + AddExpr('Y') + ' WHERE CODE = ' + edbfield('OLDDISPSET','INSERVCODE'));

  CloseApollo('DISPSET');
  CloseApollo('OLDDISPSET');
  ShowMessage('Finished');
end;

procedure TConvDbaseForm.PersCommHistButtonClick(Sender: TObject);
Var SQLVar : String;
begin
  Open_Query('PERSCOMMHIST',true,'SELECT * FROM PERSCOMMHIST WHERE 1=2');

  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('PERSCOMMPOS',false,'SELECT CODE, PERSCOMMPOSID FROM PERSCOMMPOS');
  Open_Query('PERSCOMMTYPE',false,'SELECT CODE, PERSCOMMTYPEID FROM PERSCOMMTYPE');

  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\COMMHIST.DBF','S','COMMHIST');
  Gauge.MaxValue := A('COMMHIST').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('COMMHIST').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('COMMHIST','MEMCODE')) then begin
      If A('PERSCOMMTYPE').ExactQueryLocate('CODE',tdbfield('COMMHIST','CODE')) then begin

        SQLVar := 'SELECT * FROM PERSCOMMHIST ' +
                  'WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND ' +
                  'PERSCOMMTYPEID = ' + GetField('PERSCOMMTYPE','PERSCOMMTYPEID').AsString + ' AND ' +
                  'DATETIMESTART = ' + AddExpr(FormatDateTime('YYYY-MM-DD',GetField('COMMHIST','START').AsDateTime));

        A('PERSCOMMHIST').UpdateSQL(SQLVar);
        If A('PERSCOMMHIST').RecordsExist then
          A('PERSCOMMHIST').Edit
        else
          A('PERSCOMMHIST').Append;
        GetField('PERSCOMMHIST','PERSID').AsString         := GetField('PERS','PERSID').AsString;
        GetField('PERSCOMMHIST','PERSCOMMTYPEID').AsString := GetField('PERSCOMMTYPE','PERSCOMMTYPEID').AsString;
        GetField('PERSCOMMHIST','DATETIMESTART').AsString  := GetField('COMMHIST','START').AsString;
        GetField('PERSCOMMHIST','DATETIMEEND').AsString    := GetField('COMMHIST','FINISH').AsString;
        GetField('PERSCOMMHIST','POINT').AsString          := GetField('COMMHIST','POINT').AsString;
        GetField('PERSCOMMHIST','DESCR').AsString          := GetField('COMMHIST','DESC').AsString;
        If (GetField('COMMHIST','START').AsDateTime > 0) and (GetField('COMMHIST','FINISH').AsDateTime > 0) then
          GetField('PERSCOMMHIST','DATETIMELOSAP').AsDateTime := GetField('COMMHIST','START').AsDateTime + (GetField('COMMHIST','FINISH').AsDateTime - GetField('COMMHIST','START').AsDateTime) / 2;
        If A('PERSCOMMPOS').ExactQueryLocate('CODE',tdbfield('COMMHIST','POSITION')) then
          GetField('PERSCOMMHIST','PERSCOMMPOSID').AsString := GetField('PERSCOMMPOS','PERSCOMMPOSID').AsString;
        GetTable('PERSCOMMHIST').Post;
      end
    end;
    A('COMMHIST').Skip(1);
  end;
  CloseApollo('PERSCOMMHIST');
  CloseApollo('PERSCOMMTYPE');
  CloseApollo('PERS');
  CloseApollo('PERSCOMMPOS');
  CloseApollo('COMMHIST');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.NIResetButtonClick(Sender: TObject);
begin
  inherited;
  LoadNIPType('DRTR','Drills and Trainings');
  LoadNIPType('MT','Meetings');
  LoadNIPType('ST','Standby');
  LoadNIPType('MI','Miscellaneous');
  If (mFireID = '14011') or (mfireID = '34012') then
    LoadNIPType('WD','Work Details');

  DrillIDField.Value := '1';
  TrainIDField.Value := '1';
  MeetIDField.Value  := '2';
  StandIDField.Value := '3';
  Misc1IDField.Value := '4';
  Misc2IDField.Value := '4';

  If (mFireID = '14011') or (mfireID = '34012') then
    WorkIDField.Value  := '5'
  else
    WorkIDField.Value  := '4';

  AddNILosapCAT('DR','Drills');
  AddNILosapCAT('MT','Meetings');
  AddNILosapCAT('MI','Miscellaneous');
  AddNILosapCAT('ST','Standbys');
  AddNILosapCAT('TR','Trainings');

  DrillLosapCatIDField.Value := '1';
  MeetLosapCatIDField.Value  := '2';
  Misc1LosapCatIDField.Value := '3';
  Misc2LosapCatIDField.Value := '3';
  StandLosapCatIDField.Value := '4';
  WorkLosapCatIDField.Value  := '3';
  TrainLosapCatIDField.Value := '5';
  SaveButtonClick(self);

  AddNISType(DrillIDField.Value,'DR','Drills',DrillLosapCatIDField.Value);
  AddNISType(TrainIDField.Value,'TR','Trainings',TrainLosapCatIDField.Value);
  LoadNISType;
  LoadNITrainCat1;
  LoadNIPersInvType('OIC','Officer in Charge');
  LoadNIPersInvType('TR','Trainer');
end;

procedure TConvDbaseForm.NITrainCAT1ButtonClick(Sender: TObject);
begin
  inherited;
  LoadNITrainCat1;
end;


procedure TConvDbaseForm.AddNILosapCat(Code, Descr: String);
begin
  Open_Query('NILOSAPCAT',true,'SELECT * FROM NILOSAPCAT WHERE CODE = ' + AddExpr(Code));
  PutInUpdateMode('NILOSAPCAT');
  GetField('NILOSAPCAT','FDID').AsString         := mFireID;
  GetField('NILOSAPCAT','CODE').AsString         := Code;
  GetField('NILOSAPCAT','DESCR').AsString        := Descr;
  A('NILOSAPCAT').Post;
  CloseApollo('NILOSAPCAT');
end;

procedure TConvDbaseForm.LoadNIPersInvType(Code, Descr: String);
begin
  Open_Query('NIPERSINVTYPE',true,'SELECT * FROM NIPERSINVTYPE WHERE CODE = ' + AddExpr(Code));
  PutInUpdateMode('NIPERSINVTYPE');
  GetField('NIPERSINVTYPE','FDID').AsString         := mFireID;
  GetField('NIPERSINVTYPE','CODE').AsString         := Code;
  GetField('NIPERSINVTYPE','DESCR').AsString        := Descr;
  A('NIPERSINVTYPE').Post;
  CloseApollo('NIPERSINVTYPE');
end;


procedure TConvDbaseForm.AddNISType(NIPTypeID, CodeVar, DescrVar, NILosapCatID: String);
begin
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + NIPTypeID + ' AND CODE = ' + AddExpr(CodeVar) );
  PutInUpdateMode('NISTYPE');
  GetField('NISTYPE','NIPTYPEID').AsString    := NIPTypeID;
  GetField('NISTYPE','NILOSAPCATID').AsString := NILosapCatID;
  GetField('NISTYPE','ACTIVE').AsString       := 'Y';
  GetField('NISTYPE','FDID').AsString         := mFireID;
  GetField('NISTYPE','CODE').AsString         := CodeVar;
  GetField('NISTYPE','DESCR').AsString        := DescrVar;
  GetField('NISTYPE','POINT').AsFloat         := 1;
  A('NISTYPE').Post;
  CloseApollo('NISTYPE');
end;

procedure TConvDbaseForm.NIZapButtonClick(Sender: TObject);
Var PassWord: String;
begin
  inherited;
  PassWord := 'COLBY';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE NIEVATT');
    RunSQL('TRUNCATE TABLE NIEV');
    RunSQL('TRUNCATE TABLE NIATT');
    RunSQL('TRUNCATE TABLE NI');
    RunSQL('TRUNCATE TABLE NISTYPE');
    RunSQL('TRUNCATE TABLE NIPTYPE');
    RunSQL('TRUNCATE TABLE NILOSAPCAT');
    RunSQL('TRUNCATE TABLE NITRAINCAT1');
    RunSQL('TRUNCATE TABLE NIPERSINVTYPE');
    ShowMessage('Done');
  end else
    ShowMessage('Wrong Password. Hint: Ricks Son');
end;

procedure TConvDbaseForm.AddSpecsButtonClick(Sender: TObject);
Var InvNum : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\ADDSPECS.DBF','S','ADDSPECS');
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');

  Gauge.MaxValue := A('ADDSPECS').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('ADDSPECS').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    InvNum := tdbfield('ADDSPECS','INVNUM');
    A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(InvNum) + ' AND TYPE = ' + AddExpr('TRUCK'));
    If A('INV').RecordsExist then begin
      GetTable('INV').Edit;
      GetField('INV','CHSER').AsString      := GetField('ADDSPECS','CHSER').AsString;
      GetField('INV','RRAKEF').AsString     := GetField('ADDSPECS','RRAKEF').AsString;
      GetField('INV','BRAKER').AsString     := GetField('ADDSPECS','BRAKER').AsString;
      GetField('INV','LENGTHSQL').AsString  := GetField('ADDSPECS','LENGTH').AsString;
      GetField('INV','WHEELB').AsString     := GetField('ADDSPECS','WHEELB').AsString;
      GetField('INV','SUSPENS').AsString    := GetField('ADDSPECS','SUSPENS').AsString;

      GetField('INV','CHASWARR').AsString   := GetField('ADDSPECS','CHASWARR').AsString;
      GetField('INV','BODYWARR').AsString   := GetField('ADDSPECS','BODYWARR').AsString;
      GetField('INV','ENGWARR').AsString    := GetField('ADDSPECS','ENGWARR').AsString;
      GetField('INV','TRANSWARR').AsString  := GetField('ADDSPECS','TRANSWARR').AsString;
      GetField('INV','PUMPWARR').AsString   := GetField('ADDSPECS','PUMPWARR').AsString;

      GetField('INV','PRESSF').AsString     := GetField('ADDSPECS','PRESSF').AsString;
      GetField('INV','PRESSR').AsString     := GetField('ADDSPECS','PRESSR').AsString;
      GetField('INV','TIREFRONT').AsString  := GetField('ADDSPECS','TIREFRONT').AsString;
      GetField('INV','TIREBACK').AsString   := GetField('ADDSPECS','TIREBACK').AsString;
      GetField('INV','TCOUNTF').AsString    := GetField('ADDSPECS','TCOUNTF').AsString;
      GetField('INV','TCOUNTB').AsString    := GetField('ADDSPECS','TCOUNTB').AsString;
      GetField('INV','NUMAXLER').AsString   := GetField('ADDSPECS','NUMAXLER').AsString;
      GetField('INV','AXLE').AsString       := GetField('ADDSPECS','AXLE').AsString;
      GetField('INV','TIREAXLEF').AsString  := GetField('ADDSPECS','TIREAXLEF').AsString;
      GetField('INV','TIREAXLEB').AsString  := GetField('ADDSPECS','TIREAXLEB').AsString;
      GetField('INV','GVW').AsString        := GetField('ADDSPECS','GVW').AsString;
      GetField('INV','CHASFRONT').AsString  := GetField('ADDSPECS','CHASFRONT').AsString;
      GetField('INV','CHASBACK').AsString   := GetField('ADDSPECS','CHASBACK').AsString;
      GetField('INV','CHASRATING').AsString := GetField('ADDSPECS','CHASRATING').AsString;
      GetField('INV','WEIGHTF').AsString    := GetField('ADDSPECS','WEIGHTF').AsString;
      GetField('INV','WEIGHTB').AsString    := GetField('ADDSPECS','WEIGHTB').AsString;
      GetField('INV','WEIGHTG').AsString    := GetField('ADDSPECS','WEIGHTG').AsString;
      GetField('INV','TFRONTS').AsString    := GetField('ADDSPECS','TFRONTS').AsString;
      GetField('INV','TBACKS').AsString     := GetField('ADDSPECS','TBACKS').AsString;

      GetField('INV','ESER').AsString       := GetField('ADDSPECS','ESER').AsString;
      GetField('INV','EMAKE').AsString      := GetField('ADDSPECS','EMAKE').AsString;
      GetField('INV','EHP').AsString        := GetField('ADDSPECS','EHP').AsString;
      GetField('INV','CYLINDER').AsString   := GetField('ADDSPECS','CYLINDER').AsString;
      GetField('INV','TORQUE').AsString     := GetField('ADDSPECS','TORQUE').AsString;
      GetField('INV','RPM').AsString        := GetField('ADDSPECS','RPM').AsString;
      GetField('INV','DISP').AsString       := GetField('ADDSPECS','DISP').AsString;
      GetField('INV','BORESTR').AsString    := GetField('ADDSPECS','BORESTR').AsString;
      GetField('INV','COMPRESSOR').AsString := GetField('ADDSPECS','COMPRESS').AsString;

      GetField('INV','TSER').AsString       := GetField('ADDSPECS','TSER').AsString;
      GetField('INV','TMAKE').AsString      := GetField('ADDSPECS','TMAKE').AsString;
      GetField('INV','TTYPE').AsString      := GetField('ADDSPECS','TTYPE').AsString;
      GetField('INV','CLMAKE').AsString     := GetField('ADDSPECS','CLMAKE').AsString;
      GetField('INV','CLTYPE').AsString     := GetField('ADDSPECS','CLTYPE').AsString;

      GetField('INV','CMAKE').AsString      := GetField('ADDSPECS','CMAKE').AsString;
      GetField('INV','CTYPE').AsString      := GetField('ADDSPECS','CTYPE').AsString;

      GetField('INV','BMAKE').AsString      := GetField('ADDSPECS','BMAKE').AsString;
      GetField('INV','BAMPVOLT').AsString   := GetField('ADDSPECS','BAMPVOLT').AsString;

      GetField('INV','ALTMAKE').AsString    := GetField('ADDSPECS','ALTMAKE').AsString;
      GetField('INV','ALTTYPE').AsString    := GetField('ADDSPECS','ALTTYPE').AsString;
      GetField('INV','BEALT').AsString      := GetField('ADDSPECS','BEALT').AsString;

      GetField('INV','BEMAIN').AsString     := GetField('ADDSPECS','BEMAIN').AsString;
      GetField('INV','BEOTHER').AsString    := GetField('ADDSPECS','BEOTHER').AsString;
      GetField('INV','BEAIR').AsString      := GetField('ADDSPECS','BEAIR').AsString;

      GetField('INV','FAIR').AsString       := GetField('ADDSPECS','FAIR').AsString;
      GetField('INV','FOIL').AsString       := GetField('ADDSPECS','FOIL').AsString;
      
      GetField('INV','FGAS').AsString       := GetField('ADDSPECS','FGAS').AsString;
      GetField('INV','FCOOLANT').AsString   := GetField('ADDSPECS','FCOOLANT').AsString;
      GetField('INV','FTRANSMISS').AsString := GetField('ADDSPECS','FTRANSMISS').AsString;
      GetField('INV','OTHER').AsString      := GetField('ADDSPECS','OTHER').AsString;
      GetField('INV','CAPOIL').AsString     := GetField('ADDSPECS','CAPOIL').AsString;
      GetField('INV','CAPGAS').AsString     := GetField('ADDSPECS','CAPGAS').AsString;
      GetField('INV','CAPCOOL').AsString    := GetField('ADDSPECS','CAPCOOL').AsString;
      GetField('INV','CAPTRAN').AsString    := GetField('ADDSPECS','CAPTRAN').AsString;

      GetField('INV','PUMPMAKE').AsString   := GetField('ADDSPECS','PUMPMAKE').AsString;
      GetField('INV','PUMPMOD').AsString    := GetField('ADDSPECS','PUMPMOD').AsString;
      GetField('INV','PUMPSER').AsString    := GetField('ADDSPECS','PUMPSER').AsString;
      GetField('INV','PUMPCAP').AsString    := GetField('ADDSPECS','PUMPCAP').AsString;
      GetField('INV','PUMPGEAR').AsString   := GetField('ADDSPECS','PUMPGEAR').AsString;

      GetField('INV','TANKMAKE').AsString   := GetField('ADDSPECS','TANKMAKE').AsString;
      GetField('INV','TANKMOD').AsString    := GetField('ADDSPECS','TANKMOD').AsString;
      GetField('INV','TANKSER').AsString    := GetField('ADDSPECS','TANKSER').AsString;
      GetField('INV','TANKCAP').AsString    := GetField('ADDSPECS','TANKCAP').AsString;

      GetField('INV','GENMAKE').AsString    := GetField('ADDSPECS','GENMAKE').AsString;
      GetField('INV','GENMOD').AsString     := GetField('ADDSPECS','GENMOD').AsString;
      GetField('INV','GENSERIAL').AsString  := GetField('ADDSPECS','GENSERIAL').AsString;
      GetField('INV','GENCAP').AsString     := GetField('ADDSPECS','GENCAP').AsString;

      GetField('INV','MECHNARR').AsString   := GetField('ADDSPECS','COMMENT').AsString;
      GetTable('INV').Post;
    end;
    A('ADDSPECS').Skip(1);
  end;
  CloseApollo('INV');
  CloseApollo('ADDSPECS');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.AppNoIncButtonClick(Sender: TObject);
Var NIPTypeID   : String;
    InvNum      : String;
    PersID      : String;
    NIAppTaskID : String;
    Code        : String;
    NIID        : String;
    InvID       : String;

  function GetNIPTypeID: String;
  begin
    If tdbfield('APPNOINC','TYPE') = 'DRILL' then
      GetNIPTypeID := DrillIDField.Value
    else if tdbfield('APPNOINC','TYPE') = 'OTH1' then
      GetNIPTypeID := Misc1IDField.Value
    else if tdbfield('APPNOINC','TYPE') = 'OTH2' then
      GetNIPTypeID := Misc2IDField.Value
    else if tdbfield('APPNOINC','TYPE') = 'STAND' then
      GetNIPTypeID := StandIDField.Value
    else if tdbfield('APPNOINC','TYPE') = 'TRAIN' then
      GetNIPTypeID := TrainIDField.Value
    else if tdbfield('APPNOINC','TYPE') = 'WORK' then
      GetNIPTypeID := WorkIDField.Value
    else
      GetNIPTypeID := '';
  end;

begin
  inherited;
  Net_Open(DirectoryField.Text + '\TRUCK\DBF\APPNOINC.DBF','S','APPNOINC');
  Open_Query('NI',false,'SELECT NIID FROM NI WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('INV',false,'SELECT INVID, UNITNUM FROM INV WHERE TYPE = ' + AddExpr('TRUCK'));
  Open_Query('NIAPPTASK',false,'SELECT * FROM NIAPPTASK');
  Open_Query('NIAPP',true,'SELECT * FROM NIAPP WHERE 1=2');

  Gauge.MaxValue := A('APPNOINC').QueryRecCount;


  While Not A('APPNOINC').Eof do begin
    InvNum      := '';
    PersID      := '';
    NIAppTaskID := '';
    Code        := '';
    NIID        := '';
    InvID       := '';

    NIPTypeID   := GetNIPTypeID;
    InvNum      := tdbfield('APPNOINC','INVNUM');
    Code        := tdbfield('APPNOINC','CODE');
    If A('INV').ExactQueryLocate('UNITNUM',tdbfield('APPNOINC','INVNUM')) then
      InvID := Getfield('INV','INVID').AsString;
    If A('NIAPPTASK').ExactQueryLocate('CODE',tdbfield('APPNOINC','TASK')) then
      NIAppTaskID := Getfield('NIAPPTASK','NIAPPTASKID').AsString;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('APPNOINC','MEMCODE')) then
      PersID      := Getfield('PERS','PERSID').AsString;
    A('NI').UpdateSQL('SELECT NIID FROM NI WHERE NIPTYPEID = ' + pkValue(NIPTypeID) + ' AND CODE = ' + edbfield('APPNOINC','CODE'));
    If A('NI').RecordsExist then
      NIID := Getfield('NI','NIID').AsString;


    If Not (NIID = '') and Not (PersID = '') and Not (InvID = '') then begin

      A('NIAPP').UpdateSQL('SELECT * FROM NIAPP WHERE NIID = ' + pkValue(NIID) + ' AND INVID = ' + pkvalue(InvID) + ' AND PERSID = ' + pkValue(PersID));
      If A('NIAPP').RecordsExist then
        A('NIAPP').Edit
      else
        A('NIAPP').Append;

      GetField('NIAPP','NIID').AsString        := NIID;
      GetField('NIAPP','INVID').AsString       := InvID;
      GetField('NIAPP','PERSID').AsString      := PersID;
      GetField('NIAPP','NIAPPTASKID').AsString := NIAppTaskID;
      GetField('NIAPP','EVLENGTH').AsFloat     := GetField('APPNOINC','LENGTH').AsFloat;
      A('NIAPP').Post;
    end;
    A('APPNOINC').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;

  CloseApollo('APPNOINC');
  CloseApollo('NI');
  CloseApollo('INV');
  CloseApollo('PERS');
  CloseApollo('NIAPPTASK');
  CloseApollo('NIAPP');
end;

procedure TConvDbaseForm.NFIRSMainButtonClick(Sender: TObject);
var nRecPerPage : Integer;
    iCount      : Integer;
    PageList    : TStringList;
    iPage       : Integer;
    mDate       : TDateTime;
begin
  inherited;
  nRecPerPage := iMax(strtoint(PaginationRecField.Value),10);
  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCIDENT.DBF','S','INC');
  A('INC').SetOrder(4);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('INC').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  iCount :=  A('INC').QueryRecCount;
  CloseApollo('INC');

  AddStatusListBox(ListBox1,GetTimeAsString + ' Converting Incidents.');

  PageList := CommonMakePageList(InitialDateField.Value,FinalDateField.Value,iCount,nRecPerPage);
  for iPage := 0 to PageList.Count-1 do begin
    if iPage=0 then
      mDate := InitialDateField.Value
    else
      mDate := strtoint(pagelist[iPage-1])+1;
    AddStatusListBox(ListBox1,GetTimeAsString + ' Importing NFIRS Section '+inttostr(iPage+1)+' of '+inttostr(PageList.Count));
    ImportNfirs(mDate,strtoint(pagelist[iPage]))
  end;
  PageList.Free;

  ShowMessage(GetTimeAsString + ' Done');
end;

procedure TConvDbaseForm.ImportNfirs(mInitDate,mFinalDate: TDateTime);
Var Fdid        : String;
    IncNum      : String;
    ExpNum      : String;
    NfirsMainID : String;
    StartTime   : TDatetime;
    EndTime     : TDatetime;
begin

  AddStatusListBox(ListBox1,' - Importing for Date Range '+DateTimeToStr(mInitDate)+' to '+ DateTimeToStr(mFinalDate));

  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCIDENT.DBF','S','INC');
  A('INC').SetOrder(4);
  If (mInitDate > 0) and (mFinalDate > 0) then
    A('INC').SetScope(FormatDateTime('YYYYMMDD',mInitDate),FormatDateTime('YYYYMMDD',mFinalDate));

  If FileExists(DirectoryField.Text + '\TRUCK\DBF\APPINC.DBF') then begin
    Net_Open(DirectoryField.Text + '\TRUCK\DBF\APPINC.DBF','S','APPINC');
    A('APPINC').SetOrder(2);
  end;  

  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCATT.DBF','S','INCATT');
  A('INCATT').SetOrder(2);

  Net_Open(DirectoryField.Text + '\INCIDENT\DBF\INCCOMP.DBF','S','INCCOMP');
  A('INCCOMP').SetOrder(2);
  

  Gauge.MaxValue := A('INC').QueryRecCount;
  Gauge.Progress := 0;

  CommonOpenNfirsMain(mInitDate,mFinalDate);

  TimeField.Caption := FormatDateTime('MM/DD/YYYY HH:NN',Now);
  StartTime         := Now;

  While Not A('INC').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;

    If Gauge.Progress = 10 then
      Time10.Caption := 'Time per 10:  ' + FormatDateTime('HH:NN:SS',StartTime - Now);
    If Gauge.Progress = 100 then
      Time100.Caption := 'Time per 100:  ' + FormatDateTime('HH:NN:SS',StartTime - Now);
    If Gauge.Progress = 1000 then
      Time1000.Caption := 'Time per 1000:  ' + FormatDateTime('HH:NN:SS',StartTime - Now);

    Fdid   := tdbfield('INC','FDID');
    IncNum := tdbfield('INC','INCNUM');
    ExpNum := tdbfield('INC','EXPNUM');

    If Not (Fdid = '') and Not (IncNum = '') and Not (ExpNum = '') and A('FDID').ExactQueryLocate('FDID',Fdid) then begin
      A('NFIRSMAIN').ExactQueryLocateAndPutInEditMode(['FDID','INCNUM','EXPNUM'],[Fdid,IncNum,ExpNum]);

      ConvertNfirsMain;
      CommonConvertNfirsMain;

      A('NFIRSMAIN').Post;
      If GetField('NFIRSMAIN','NFIRSMAINID').AsInteger > 0 then
        NFIRSMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString
      else
        NFIRSMainID := A('NFIRSMAIN').NewPk;

      If FileExists(DirectoryField.Text + '\TRUCK\DBF\APPINC.DBF') then
        ConvertNfirsApp(Fdid, IncNum, NfirsMainID);
      ConvertNfirsAtt(Fdid, IncNum, NfirsMainID);
      ConvertNfirsFdidComp(Fdid, IncNum, NfirsMainID);
    end;
    A('INC').Skip(1);
    Application.processmessages;
  end;

  CommonCloseNfirsMain;

  CloseApollo('APPHIST');
  CloseApollo('INC');
  CloseApollo('INCATT');
  CloseApollo('INCCOMP');
  CloseApollo('APPINC');
end;

procedure TConvDbaseForm.DLTypeButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\SCHEDULE\DBF\PAIDCODE.DBF','S','PAIDCODE');
  A('PAIDCODE').SetOrder(1);
  A('PAIDCODE').GoTop;

  Open_Query('SCHDSHIFTNAME',true,'SELECT * FROM SCHDSHIFTNAME WHERE 1=2');
  Open_Query('SCHDLOC',true,'SELECT * FROM SCHDSHIFTNAME WHERE 1=2');
  Open_Query('DLDESCR',true,'SELECT * FROM DLDESCR WHERE 1=2');

  While Not A('PAIDCODE').Eof do begin
    If tdbfield('PAIDCODE','FIELD') = 'STEAM' then begin
      A('SCHDSHIFTNAME').UpdateSQL('SELECT * FROM SCHDSHIFTNAME WHERE CODE = ' + edbfield('PAIDCODE','CODE'));
      PutInUpdateMode('SCHDSHIFTNAME');
      GetField('SCHDSHIFTNAME','FDID').AsString   := mFireID;
      GetField('SCHDSHIFTNAME','CODE').AsString   := GetField('PAIDCODE','CODE').AsString;
      GetField('SCHDSHIFTNAME','DESCR').AsString  := GetField('PAIDCODE','DESC').AsString;
      GetTable('SCHDSHIFTNAME').Post;
    end else if tdbfield('PAIDCODE','FIELD') = 'SLOCATION' then begin
      A('SCHDLOC').UpdateSQL('SELECT * FROM SCHDLOC WHERE CODE = ' + edbfield('PAIDCODE','CODE'));
      PutInUpdateMode('SCHDLOC');
      GetField('SCHDLOC','FDID').AsString       := mFireID;
      GetField('SCHDLOC','CODE').AsString       := GetField('PAIDCODE','CODE').AsString;
      GetField('SCHDLOC','DESCR').AsString      := GetField('PAIDCODE','DESC').AsString;
      GetField('SCHDLOC','SHORTDESCR').AsString := GetField('PAIDCODE','DESC').AsString;
      GetField('SCHDLOC','SCHEDULE').AsString   := GetField('PAIDCODE','SCHEDULE').AsString;
      GetField('SCHDLOC','DL').AsString         := GetField('PAIDCODE','DAILYLOG').AsString;
      GetTable('SCHDLOC').Post;
    end else if tdbfield('PAIDCODE','FIELD') = 'LOGTYPE' then begin
      A('DLDESCR').UpdateSQL('SELECT * FROM DLDESCR WHERE CODE = ' + edbfield('PAIDCODE','CODE'));
      PutInUpdateMode('DLDESCR');
      GetField('DLDESCR','CODE').AsString       := GetField('PAIDCODE','CODE').AsString;
      GetField('DLDESCR','DESCR').AsString      := GetField('PAIDCODE','DESC').AsString;
      GetTable('DLDESCR').Post;
    end;

    A('PAIDCODE').Skip(1);
  end;
  CloseApollo('PAIDCODE');
  CloseApollo('SCHDLOC');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('DLDESCR');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.DLButtonClick(Sender: TObject);
Var DateTimeEv  : TDateTime;
    DateTimeEnt : TDateTime;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\SCHEDULE\DBF\DAILYLOG.DBF','S','PDDL');
  A('PDDL').SetOrder(1);

  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('PDDL').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Open_Query('SCHDSHIFTNAME',false,'SELECT * FROM SCHDSHIFTNAME');
  Open_Query('PERS',false,'SELECT PERSID, PERSCODE FROM PERS');
  Open_Query('SEC',false,'SELECT * FROM SEC');
  Open_Query('DLDESCR',false,'SELECT * FROM DLDESCR');
  Open_Query('DL',true,'SELECT * FROM DL WHERE 1=2');

  Gauge.MaxValue := A('PDDL').QueryRecCount;
  Gauge.Visible  := true;
  Gauge.Progress := 0;

  While Not A('PDDL').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    DateTimeEv  := ConvertDateTime(GetField('PDDL','DATE').AsString,GetField('PDDL','DATE').AsString,tdbfield('PDDL','TIME'));
    DateTimeEnt := ConvertDateTime(GetField('PDDL','ENTDATE').AsString,GetField('PDDL','ENTDATE').AsString,tdbfield('PDDL','ENTTIME'));

    A('DL').UpdateSQL('SELECT * FROM DL WHERE PRIMEKEY = ' + edbfield('PDDL','CODE'));
    PutInUpdateMode('DL');
    GetField('DL','DATETIMEEV').AsDateTime  := DateTimeEv;
    GetField('DL','DATETIMEENT').AsDateTime := DateTimeEnt;
    GetField('DL','PRIMEKEY').AsString      := GetField('PDDL','CODE').AsString;
    GetField('DL','NARR').AsString          := GetField('PDDL','NARR').AsString;
    GetField('DL','DESCR').AsString         := GetField('PDDL','DESC').AsString;
    GetField('DL','TYPE').AsString          := GetField('PDDL','TYPE').AsString;

    If A('SEC').ExactQueryLocate('USERNAME',tdbfield('PDDL','MEMCODE')) then
      GetField('DL','SECID').AsString := GetField('SEC','SECID').AsString;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('PDDL','MEMCODE')) then
      GetField('DL','PERSID').AsString := GetField('PERS','PERSID').AsString;

    If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('PDDL','TEAM')) then
      GetField('DL','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

    GetTable('DL').Post;
    A('PDDL').Skip(1);
  end;
  CloseApollo('PERS');
  CloseApollo('PDDL');
  CloseApollo('DL');
  CloseApollo('DLDESCR');
  CloseApollo('SEC');
  CloseApollo('SCHDSHIFTNAME');
  Gauge.Visible := false;
  ShowMessage('Done');

end;

procedure TConvDbaseForm.MainCodeButtonClick(Sender: TObject);
Var ConvCode        : String;
    InvLocID        : String;
    StationParentID : String;
    PersParentID    : String;
    AppParentID     : String;
    RolodexParentID : String;
begin
  inherited;
  AddStatusListBox(ListBox1,'Convert LOCATION->INVLOC. . . . Started');
  Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE 1=2');

  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\INVCODE.DBF','S','INVCODE');
  A('INVCODE').SetOrder(1);
  A('INVCODE').GoTop;

  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\LOCATION.DBF','S','LOCATION');
  A('LOCATION').SetOrder(2);
  A('LOCATION').GoTop;

  Gauge.Visible  := true;
  Gauge.MaxValue := A('LOCATION').QueryRecCount;
  Gauge.Progress := 0;


  Net_Open(DirectoryField.Text + '\INVENTOR\SUPPORT\SUBLOC.DBF','S','SUBLOC');
  A('SUBLOC').SetOrder(1);


  StationParentID := '';
  PersParentID    := '';
  AppParentID     := '';
  RolodexParentID := '';

  While Not A('INVCODE').Eof do begin
    If (tdbfield('INVCODE','FIELD') = 'LOTYPE') then begin
      A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE CONVCODE = ' + edbfield('INVCODE','CODE'));
      PutInUpdateMode('INVLOC');
      Getfield('INVLOC','MAINCODE').AsString  := tdbfield('INVCODE','CODE');
      Getfield('INVLOC','BARCODE').AsString   := tdbfield('INVCODE','CODE');
      Getfield('INVLOC','CONVCODE').AsString  := tdbfield('INVCODE','CODE');
      Getfield('INVLOC','DESCR').AsString     := tdbfield('INVCODE','DESC');
      Getfield('INVLOC','FULLDESCR').AsString := tdbfield('INVCODE','DESC');
      GetTable('INVLOC').Post;


      If GetField('INVLOC','INVLOCID').AsInteger > 0 then
        InvLocID := GetField('INVLOC','INVLOCID').AsString
      else
        InvLocID := A('INVLOCID').NewPk;

      If tdbfield('INVCODE','CODE') = 'MEMBER' then
        PersParentID := InvLocID
      else if tdbfield('INVCODE','CODE') = 'STATION' then
        StationParentID := InvLocID
      else if tdbfield('INVCODE','CODE') = 'TRUCK' then
        AppParentID := InvLocID
      else if tdbfield('INVCODE','CODE') = 'VENDOR' then
        RolodexParentID := InvLocID;

    end;
    A('INVCODE').Skip(1);
  end;
  CloseApollo('INVCODE');


  Gauge.MaxValue := A('LOCATION').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('LOCATION').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    ConvCode := tdbfield('LOCATION','TYPE') + ',' + tdbfield('LOCATION','MAINCODE');
    A('INVLOC').UpdateSql('SELECT * FROM INVLOC WHERE CONVCODE = ' + AddExpr(ConvCode));
    If A('INVLOC').RecordsExist then
      A('INVLOC').Edit
    else
      A('INVLOC').Append;

    GetField('INVLOC','CONVCODE').AsString := tdbfield('LOCATION','TYPE') + ',' + tdbfield('LOCATION','MAINCODE');
    GetField('INVLOC','MAINCODE').AsString := tdbfield('LOCATION','MAINCODE');
    GetField('INVLOC','BARCODE').AsString  := tdbfield('LOCATION','MAINCODE');
    GetField('INVLOC','DESCR').AsString    := tdbfield('LOCATION','DESC');
    GetField('INVLOC','PARENTID').AsString := SqlLookUp(tdbfield('LOCATION','TYPE'),'CONVCODE','INVLOC','INVLOCID');
    GetTable('INVLOC').Post;
    A('LOCATION').Skip(1);
  end;

  A('LOCATION').SetOrder(1);

  Gauge.MaxValue := A('SUBLOC').QueryRecCount;
  Gauge.Progress := 0;

  A('SUBLOC').GoTop;
  While Not A('SUBLOC').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If dbseek('LOCATION',dbfield('SUBLOC','MAINCODE'),false) then begin
      ConvCode := tdbfield('LOCATION','TYPE') + ',' + tdbfield('LOCATION','MAINCODE') + ',' + tdbfield('SUBLOC','SUBCODE');
      A('INVLOC').UpdateSql('SELECT * FROM INVLOC WHERE CONVCODE = ' + AddExpr(ConvCode));
      If A('INVLOC').RecordsExist then
        A('INVLOC').Edit
      else
        A('INVLOC').Append;

      GetField('INVLOC','CONVCODE').AsString := ConvCode;
      GetField('INVLOC','MAINCODE').AsString := tdbfield('SUBLOC','MAINCODE');
      GetField('INVLOC','SUBCODE').AsString  := tdbfield('SUBLOC','SUBCODE');
      GetField('INVLOC','DESCR').AsString    := tdbfield('SUBLOC','DESC');
      GetField('INVLOC','PARENTID').AsString := SqlLookUp(tdbfield('LOCATION','TYPE') + ',' + tdbfield('LOCATION','MAINCODE'),'CONVCODE','INVLOC','INVLOCID');
      GetTable('INVLOC').Post;
    end;
    A('SUBLOC').Skip(1);
  end;

  CloseApollo('LOCATION');
  CloseApollo('INVLOC');
  CloseApollo('SUBLOC');

  Open_Query('INVSET',true,'SELECT * FROM INVSET WHERE FDID = ' + AddExpr(FireID));
  If A('INVSET').RecordsExist then
    GetTable('INVSET').Edit
  else
    GetTable('INVSET').Append;
  GetField('INVSET','FDID').AsString            := FireID;
  GetField('INVSET','PERSPARENTID').AsString    := PersParentID;
  GetField('INVSET','STATIONPARENTID').AsString := StationParentID;
  GetField('INVSET','APPPARENTID').AsString     := AppParentID;
  GetField('INVSET','ROLODEXPARENTID').AsString := RolodexParentID;
  GetTable('INVSET').Post;
  CloseApollo('INVSET');

  TTreeSetupForm.LoadFullDescr(Gauge);
  ShowMessage('Done');
  AddStatusListBox(ListBox1,'Convert LOCATION->INVLOC. . . . Completed');

end;


procedure TConvDbaseForm.MCIButtonClick(Sender: TObject);
Var Phone : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\DISPATCH\DBF\MCILIST.DBF','S','MCILISTSOURCE');
  Gauge.MaxValue := A('MCILISTSOURCE').RecordCount;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  Open_Query('PERS',       false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('MCILISTTYPE',false,'SELECT * FROM MCILISTTYPE');
  Open_Query('MCILIST',    true,'SELECT * FROM MCILIST WHERE 1=2');

  While Not A('MCILISTSOURCE').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('MCILISTSOURCE','MEMCODE')) and Not (tdbfield('MCILISTSOURCE','PHONE') = '') then begin
      Phone := substr(dbfield('MCILISTSOURCE','PHONE'),1,3) + substr(dbfield('MCILISTSOURCE','PHONE'),5,3) + substr(dbfield('MCILISTSOURCE','PHONE'),9,4);

      A('MCILIST').UpdateSQL('SELECT * FROM MCILIST WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND PHONE = ' + AddExpr(Phone));
      If A('MCILIST').RecordsExist then
        A('MCILIST').Edit
      else
        A('MCILIST').Append;
      GetField('MCILIST','PERSID').AsString    := GetField('PERS','PERSID').AsString;
      GetField('MCILIST','PHONE').AsString     := Phone;
      If A('MCILISTTYPE').ExactQueryLocate('DESCR',tdbfield('MCILISTSOURCE','PHONETYPE')) then
        GetField('MCILIST','MCILISTTYPEID').AsString    := GetField('MCILISTTYPE','MCILISTTYPEID').AsString;

      A('MCILIST').Post;
    end;

    A('MCILISTSOURCE').Skip(1);
  end;
  CloseApollo('MCILIST');
  CloseApollo('MCILISTSOURCE');
  CloseApollo('MCILISTTYPE');
  CloseApollo('PERS');

  ShowMessage('Done');

end;

procedure TConvDbaseForm.HandReadButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\HANDREAD.DBF','S','OLDHANDREAD');
  Open_Query('HANDREAD',true,'SELECT * FROM HANDREAD WHERE 1=2');
  While Not A('OLDHANDREAD').Eof do begin
    A('HANDREAD').UpdateSQL('SELECT * FROM HANDREAD WHERE CODE = ' + edbfield('OLDHANDREAD','CODE'));
    If A('HANDREAD').RecordsExist then
      GetTable('HANDREAD').Edit
    else
      GetTable('HANDREAD').Append;
    GetField('HANDREAD','CODE').AsString  := GetField('OLDHANDREAD','CODE').AsString;
    GetField('HANDREAD','IP').AsString    := GetField('OLDHANDREAD','IP').AsString;
    GetField('HANDREAD','DESCR').AsString := GetField('OLDHANDREAD','CODE').AsString;
    A('HANDREAD').Post;
    A('OLDHANDREAD').Skip(1);
  end;
  CloseApollo('OLDHANDREAD');
  CloseApollo('HANDREAD');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.HoseTestButtonClick(Sender: TObject);
begin
  inherited;
  If Not FileExists(DirectoryField.Text + '\HOSE\DBF\HOSETEST.DBF') then begin
    ShowMessage('Hose not installed');
    exit;
  end;
  Net_Open(DirectoryField.Text + '\HOSE\DBF\HOSETEST.DBF','S','HOSETEST');

  Gauge.MaxValue := A('HOSETEST').RecordCount;
  Gauge.Progress := 0;

  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('INVSERVSTATUS',false,'SELECT * FROM INVSERVSTATUS');

  Open_Query('INVSERVHIST',True,'SELECT * FROM INVSERVHIST WHERE 1=2');
  while not A('HOSETEST').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE PRIMEKEY = ' + AddExpr('HOSETEST' + tdbfield('HOSETEST','PRIMEKEY')) );
    PutInUpdateMode('INVSERVHIST');

    GetField('INVSERVHIST','PRIMEKEY').AsString := 'HOSETEST' + tdbfield('HOSETEST','PRIMEKEY');

    If A('INV').ExactQueryLocate('INVNUM',tdbfield('HOSETEST','INVNUM')) then
      GetField('INVSERVHIST','INVID').AsString := GetField('INV','INVID').AsString;

    GetField('INVSERVHIST','INVSERVTYPEID').AsString := HoseTestInvServTypeIDField.Value;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbField('HOSETEST','INCHARGE')) then
      GetField('INVSERVHIST','PERSID').AsString  := GetField('PERS','PERSID').AsString;

    If A('INVSERVSTATUS').ExactQueryLocate('CODE',tdbfield('HOSETEST','PASSFAIL')) then
      GetField('INVSERVHIST','INVSERVSTATUSID').AsString := GetField('INVSERVSTATUS','INVSERVSTATUSID').AsString;

    GetField('INVSERVHIST','INVSERVFORM').AsString      := 'HOSETEST';
    GetField('INVSERVHIST','DATEDONE').AsString         := GetField('HOSETEST','DATE').AsString;
    GetField('INVSERVHIST','DESCR').AsString            := tdbField('HOSETEST','DESC');
    GetField('INVSERVHIST','DURATION').AsString         := GetField('HOSETEST','DURATION').AsString;
    GetField('INVSERVHIST','PRESSURE').AsString         := GetField('HOSETEST','PRESSURE').AsString;

    GetTable('INVSERVHIST').Post;
    A('HOSETEST').Skip(1);
  end;
  CloseApollo('PERS');
  CloseApollo('INV');
  CloseApollo('INVSERVHIST');
  CloseApollo('INVSERVSTATUS');
  CloseApollo('HOSETEST');
  ShowMessage('Done');

end;

procedure TConvDbaseForm.HoseTestInvServTypeIDFieldExit(Sender: TObject);
begin
  inherited;
  HoseTestButton.Enabled := Not (HoseTestInvServTypeIDField.Value = '');
end;

procedure TConvDbaseForm.HourLogButtonClick(Sender: TObject);
Var DateTimeStart : TDateTime;
    PersID        : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\SCHEDULE\DBF\HOURLOG.DBF','S','HOURLOG');
  A('HOURLOG').SetOrder(3);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('HOURLOG').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Gauge.MaxValue :=  A('HOURLOG').QueryRecCount;

  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('SCHDHIST',true,'SELECT * FROM SCHDHIST WHERE 1=2');
  Open_Query('SCHDSHIFTNAME',false,'SELECT CODE, SCHDSHIFTNAMEID FROM SCHDSHIFTNAME');
  Open_Query('EMSATTTASK',false,'SELECT CODE, EMSATTTASKID FROM EMSATTTASK');

  While Not A('HOURLOG').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('HOURLOG','MEMCODE')) then begin
      PersID        := GetField('PERS','PERSID').AsString;
      DateTimeStart := ConvertDateTime(GetField('HOURLOG','STARTDATE').AsString,GetField('HOURLOG','STARTDATE').AsString,tdbfield('HOURLOG','STARTTIME'));

      A('SCHDHIST').UpdateSQL('SELECT * FROM SCHDHIST WHERE PERSID = ' + pkValue(PersID) + ' AND DATETIMESTART = ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',DateTimeStart)) );
      PutInUpdateMode('SCHDHIST');
      GetField('SCHDHIST','DATETIMESTART').AsDateTime := DateTimeStart;
      GetField('SCHDHIST','PERSID').AsString          := PersID;
      GetField('SCHDHIST','SHIFTLENGTH').AsFloat      := GetField('HOURLOG','LENGTH').AsFloat;
      GetField('SCHDHIST','DATETIMEEND').AsDateTime   := DateTimeStart + (GetField('HOURLOG','LENGTH').AsFloat / 24);
      GetField('SCHDHIST','DESCR').AsString           := tdbfield('HOURLOG','DESC');

      If A('SCHDSHIFTNAME').ExactQueryLocate('CODE',tdbfield('HOURLOG','TEAM')) then
        GetField('SCHDHIST','SCHDSHIFTNAMEID').AsString := GetField('SCHDSHIFTNAME','SCHDSHIFTNAMEID').AsString;

      If A('EMSATTTASK').ExactQueryLocate('CODE',tdbfield('HOURLOG','ASSCODE')) then
        GetField('SCHDHIST','EMSATTTASKID').AsString := GetField('EMSATTTASK','EMSATTTASKID').AsString;

      GetTable('SCHDHIST').Post;
    end;

    A('HOURLOG').Skip(1);
  end;


  CloseApollo('PERS');
  CloseApollo('SCHDHIST');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('EMSATTTASK');
  CloseApollo('HOURLOG');
  ShowMessage('Finished');
end;

procedure TConvDbaseForm.ResetButtonClick(Sender: TObject);
Var PassWord : String;
begin
  inherited;
  PassWord := 'COLBY';
  If GetPassword1(Password) then begin
    RunSQL('TRUNCATE TABLE INVSERVPART');
    RunSQL('TRUNCATE TABLE INVSERVTYPEHIST');
    RunSQL('TRUNCATE TABLE INVSERVHIST');
    RunSQL('TRUNCATE TABLE INVSERVSCHD');
    RunSQL('TRUNCATE TABLE INVSERVTYPEITEM');
    RunSQL('TRUNCATE TABLE INVSERVTYPE');
    RunSQL('TRUNCATE TABLE INVSUBTYPE');
    RunSQL('TRUNCATE TABLE INV');
    RunSQL('TRUNCATE TABLE INVLOC');
    ShowMessage('Finished');
  end else
    ShowMessage('Wrong Password');
end;

procedure TConvDbaseForm.InvTypeButtonClick(Sender: TObject);
  procedure LoadInvType(Process: Boolean; Code, Descr: String);
  begin
    If Process then begin
      A('INVTYPE').UpdateSQL('SELECT * FROM INVTYPE WHERE CODE = ' + AddExpr(Code));
      PutInUpdateMode('INVTYPE');
      GetField('INVTYPE','CODE').AsString        := Code;
      GetField('INVTYPE','DESCR').AsString       := Descr;
      GetTable('INVTYPE').Post;
    end;
  end;
begin
  inherited;
  Open_Query('INVTYPE',true,'SELECT * FROM INVTYPE WHERE 1=2');
  LoadInvType(CheckModule('APP'),  'TRUCK',  'Apparatus');
  LoadInvType(CheckModule('INV'),  'GEN',    'General Inventory');
  LoadInvType(CheckModule('HOSE'), 'HOSE',   'Hose');
  LoadInvType(CheckModule('SCBA'), 'SCBA',   'Self Contain Breathing Apparatus');
  LoadInvType(true,                'STATION','Station');
  CloseApollo('INVTYPE');
  ShowMessage('Done');

end;

procedure TConvDbaseForm.KeyCodeButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\PERSONEL\DBF\MEMBER.DBF','S','MEMBER');
  Gauge.MaxValue := A('MEMBER').RecordCount;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  Open_Query('PERS',true,'SELECT * FROM PERS WHERE 1=2');
  
  While Not A('MEMBER').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    PersButton.Caption := IntToStr(A('MEMBER').RecNo);

    If Not (tdbfield('MEMBER','TEMPLATE') = '') then begin
      A('PERS').UpdateSQL('SELECT * FROM PERS WHERE PERSCODE = ' + edbfield('MEMBER','MEMCODE'));
      If A('PERS').RecordsExist then begin
        GetTable('PERS').Edit;
        GetField('PERS','KEYCODE').AsString    := IntToStr(AnyStrToInt(tdbfield('MEMBER','MEMCODE')));
        A('PERS').Post;
      end;
    end;    

    A('MEMBER').Skip(1);
    Application.processmessages;
  end;
  CloseApollo('MEMBER');
  CloseApollo('PERS');
  
  ShowMessage('Done');
end;

procedure TConvDbaseForm.VendorButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\INVENTOR\DBF\VENDOR.DBF','S','VEND');

  Open_Query('ROLODEX',true,'SELECT * FROM ROLODEX WHERE 1=2');

  Gauge.MaxValue := A('VEND').RecCount;
  Gauge.Visible  := true;
  Gauge.progress := 0;

  While Not A('VEND').Eof do begin
    A('ROLODEX').UpdateSQL('SELECT * FROM ROLODEX WHERE VENDNUM = ' + edbfield('VEND','VENDNUM'));
    PutInUpdateMode('ROLODEX');

    GetField('ROLODEX','VENDNUM').AsString   := GetField('VEND','VENDNUM').AsString;
    GetField('ROLODEX','CODE').AsString      := GetField('VEND','VENDNUM').AsString;
    GetField('ROLODEX','NAME').AsString      := GetField('VEND','CONTACT1').AsString;
    GetField('ROLODEX','NAME2').AsString     := GetField('VEND','CONTACT2').AsString;
    GetField('ROLODEX','COMPANY').AsString   := GetField('VEND','COMPANY').AsString;
    GetField('ROLODEX','NARR').AsString      := GetField('VEND','NARR').AsString;
    GetField('ROLODEX','DESCR').AsString     := GetField('VEND','TYPE').AsString;

    GetField('ROLODEX','ADDRESS').AsString   := GetField('VEND','ADDR1').AsString;
    GetField('ROLODEX','ADDRESS2').AsString  := GetField('VEND','ADDR2').AsString;
    GetField('ROLODEX','CITY').AsString      := GetField('VEND','CITY').AsString;
    GetField('ROLODEX','STATE').AsString     := GetField('VEND','STATE').AsString;
    GetField('ROLODEX','ZIP').AsString       := GetField('VEND','ZIP').AsString;

    GetField('ROLODEX','PHONE1').AsString    := GetField('VEND','PHONE1').AsString;
    GetField('ROLODEX','PHONE2').AsString    := GetField('VEND','PHONE2').AsString;
    GetField('ROLODEX','EXT1').AsString      := GetField('VEND','EXT1').AsString;
    GetField('ROLODEX','EXT2').AsString      := GetField('VEND','EXT2').AsString;

    GetField('ROLODEX','INVENTORY').AsString := 'Y';

    A('ROLODEX').Post;
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    Application.ProcessMessages;
    A('VEND').Skip(1);
  end;
  CloseApollo('VEND');
  CloseApollo('ROLODEX');
  Gauge.Progress := 0;
  Gauge.Visible  := false;
  ShowMessage('Done');
end;


procedure TConvDbaseForm.VOTEADDRButtonClick(Sender: TObject);
var RegNum : String;
begin
  inherited;
  Open_Query('VOTEADDR',true,'SELECT * FROM VOTEADDR WHERE 1=2');

  Net_Open(DirectoryField.Text + '\VOTE\DBF\VOTEADDR.DBF','S','VOTEADDROLD');
  Gauge.MaxValue := A('VOTEADDROLD').RecordCount;
  Gauge.Progress := 0;

  While Not A('VOTEADDROLD').Eof do begin
    RegNum := tdbfield('VOTEADDROLD','REGNUMBER');

    A('VOTEADDR').UpdateSQL('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + AddExpr(RegNum));
    If A('VOTEADDR').RecordsExist then
      GetTable('VOTEADDR').Edit
    else
      GetTable('VOTEADDR').Append;

    GetField('VOTEADDR','REGNUMBER').AsString    :=  GetField('VOTEADDROLD','REGNUMBER').AsString;
    GetField('VOTEADDR','LASTNAME').AsString     :=  GetField('VOTEADDROLD','LASTNAME').AsString;
    GetField('VOTEADDR','FIRSTNAME').AsString    :=  GetField('VOTEADDROLD','FIRSTNAME').AsString;
    GetField('VOTEADDR','MIDDLENAME').AsString   :=  GetField('VOTEADDROLD','MIDDLENAME').AsString;
    GetField('VOTEADDR','NAMESUFFIX').AsString   :=  GetField('VOTEADDROLD','NAMESUFFIX').AsString;
    GetField('VOTEADDR','SEX').AsString          :=  GetField('VOTEADDROLD','SEX').AsString;
    GetField('VOTEADDR','DOB').AsString          :=  GetField('VOTEADDROLD','DOB').AsString;
    GetField('VOTEADDR','DOR').AsString          :=  GetField('VOTEADDROLD','DOR').AsString;
    GetField('VOTEADDR','TOWNCODE').AsString     :=  GetField('VOTEADDROLD','TOWNCODE').AsString;
    GetField('VOTEADDR','ELECTDIST').AsString    :=  GetField('VOTEADDROLD','ELECTDIST').AsString;
    GetField('VOTEADDR','CONGDIST').AsString     :=  GetField('VOTEADDROLD','CONGDIST').AsString;
    GetField('VOTEADDR','STSENDIST').AsString    :=  GetField('VOTEADDROLD','STSENDIST').AsString;
    GetField('VOTEADDR','LOCALDIST').AsString    :=  GetField('VOTEADDROLD','LOCALDIST').AsString;
    GetField('VOTEADDR','RESADDR1').AsString     :=  GetField('VOTEADDROLD','RESADDR1').AsString;
    GetField('VOTEADDR','RESADDR2').AsString     :=  GetField('VOTEADDROLD','RESADDR2').AsString;
    GetField('VOTEADDR','RESCITY').AsString      :=  GetField('VOTEADDROLD','RESCITY').AsString;
    GetField('VOTEADDR','RESSTATE').AsString     :=  GetField('VOTEADDROLD','RESSTATE').AsString;
    GetField('VOTEADDR','RESZIP').AsString       :=  GetField('VOTEADDROLD','RESZIP').AsString;
    GetField('VOTEADDR','MAILADDR1').AsString    :=  GetField('VOTEADDROLD','MAILADDR1').AsString;
    GetField('VOTEADDR','MAILADDR2').AsString    :=  GetField('VOTEADDROLD','MAILADDR2').AsString;
    GetField('VOTEADDR','MAILCITY').AsString     :=  GetField('VOTEADDROLD','MAILCITY').AsString;
    GetField('VOTEADDR','MAILSTATE').AsString    :=  GetField('VOTEADDROLD','MAILSTATE').AsString;
    GetField('VOTEADDR','MAILZIP').AsString      :=  GetField('VOTEADDROLD','MAILZIP').AsString;
    GetField('VOTEADDR','PARTY').AsString        :=  GetField('VOTEADDROLD','PARTY').AsString;
    GetField('VOTEADDR','DATEUPDATE').AsString   :=  GetField('VOTEADDROLD','DATEUPDATE').AsString;
    GetField('VOTEADDR','PSTREET').AsString      :=  GetField('VOTEADDROLD','PSTREET').AsString;
    GetField('VOTEADDR','PSTRNUM').AsString      :=  GetField('VOTEADDROLD','PSTRNUM').AsString;
    GetField('VOTEADDR','EXCLUDE').AsString      :=  GetField('VOTEADDROLD','EXCLUDE').AsString;

    A('VOTEADDR').Post;

    Application.ProcessMessages();
    Gauge.Progress := Gauge.Progress + 1;
    A('VOTEADDROLD').Skip(1);
  end;

  CloseApollo('VOTEADDROLD');
  CloseApollo('VOTEADDR');

  Gauge.Progress := 0;
  ShowMessage('DONE');
end;

procedure TConvDbaseForm.VOTEELECTButtonClick(Sender: TObject);
var Code : String;
begin
  inherited;
  Open_Query('VOTEELECT',true,'SELECT * FROM VOTEELECT WHERE 1=2');

  Net_Open(DirectoryField.Text + '\VOTE\DBF\VOTEELEC.DBF','S','VOTEELEC');
  Gauge.MaxValue := A('VOTEELEC').RecordCount;
  Gauge.Progress := 0;

  While Not A('VOTEELEC').Eof do begin
    Code  := tdbfield('VOTEELEC','ELECTNUM');

    A('VOTEELECT').UpdateSQL('SELECT * FROM VOTEELECT WHERE CODE = ' + AddExpr(Code));
    If A('VOTEELECT').RecordsExist then
      GetTable('VOTEELECT').Edit
    else
      GetTable('VOTEELECT').Append;

    GetField('VOTEELECT','CODE').AsString           := Code;
    GetField('VOTEELECT','DESCR').AsString          := GetField('VOTEELEC','DESCR').AsString;
    GetField('VOTEELECT','DATETIMEELECT').AsString  := GetField('VOTEELEC','DATE').AsString;

    A('VOTEELECT').Post;

    Application.ProcessMessages();
    Gauge.Progress := Gauge.Progress + 1;
    A('VOTEELEC').Skip(1);
  end;

  CloseApollo('VOTEELECT');
  CloseApollo('VOTEELEC');

  Gauge.Progress := 0;
  ShowMessage('DONE');
end;

procedure TConvDbaseForm.VOTEEXCLButtonClick(Sender: TObject);
begin
  inherited;

  If BooleanMessageDlg('Reset VOTEEXCL Table?') then
    RunSql('TRUNCATE TABLE VOTEEXCL')
  else
    Exit;

  Open_Query('VOTEEXCL',true,'SELECT * FROM VOTEEXCL');

  Net_Open(DirectoryField.Text + '\VOTE\DBF\VOTEEXCL.DBF','S','VOTEEXCLOLD');
  Gauge.MaxValue := A('VOTEEXCLOLD').RecordCount;
  Gauge.Progress := 0;

  While Not A('VOTEEXCLOLD').Eof do begin
    GetTable('VOTEEXCL').Append;
    
    GetField('VOTEEXCL','ELECTDIST').AsString     := GetField('VOTEEXCLOLD','ELECTDIST').AsString;
    GetField('VOTEEXCL','LOWERSTRNUM').AsString   := GetField('VOTEEXCLOLD','LOWERSTR').AsString;
    GetField('VOTEEXCL','ODDEVEN').AsString       := GetField('VOTEEXCLOLD','ODDEVEN').AsString;
    GetField('VOTEEXCL','STREET').AsString        := GetField('VOTEEXCLOLD','STREET').AsString;
    GetField('VOTEEXCL','UPPERSTRNUM').AsString   := GetField('VOTEEXCLOLD','UPPERSTR').AsString;
    GetField('VOTEEXCL','ZIP').AsString           := GetField('VOTEEXCLOLD','ZIP').AsString;

    A('VOTEEXCL').Post;

    Application.ProcessMessages();
    Gauge.Progress := Gauge.Progress + 1;
    A('VOTEEXCLOLD').Skip(1);
  end;

  CloseApollo('VOTEEXCLOLD');
  CloseApollo('VOTEEXCL');

  Gauge.Progress := 0;
  ShowMessage('DONE');
end;

procedure TConvDbaseForm.VOTEHISTButtonClick(Sender: TObject);
var VoteElectID : String;
    VoteAddrID  : String;
begin
  inherited;
  Open_Query('VOTEHIST',true,'SELECT * FROM VOTEHIST WHERE 1=2');

  Net_Open(DirectoryField.Text + '\VOTE\DBF\VOTEHIST.DBF','S','VOTEHISTOLD');
  Gauge.MaxValue := A('VOTEHISTOLD').RecordCount;
  Gauge.Progress := 0;

  While Not A('VOTEHISTOLD').Eof do begin
    VoteElectID := SqlLookup(tdbfield('VOTEHISTOLD','ELECTNUM'),'CODE','VOTEELECT','VOTEELECTID');
    VoteAddrID  := SqlLookup(tdbfield('VOTEHISTOLD','REGNUMBER'),'REGNUMBER','VOTEADDR','VOTEADDRID');

    A('VOTEHIST').UpdateSQL('SELECT * FROM VOTEHIST WHERE VOTEELECTID = ' + AddExpr(VoteElectID) +
                              ' AND VOTEADDRID = ' + AddExpr(VoteAddrID));
    If A('VOTEHIST').RecordsExist then
      GetTable('VOTEHIST').Edit
    else
      GetTable('VOTEHIST').Append;

    GetField('VOTEHIST','VOTEELECTID').AsString     := VoteElectID;
    GetField('VOTEHIST','VOTEADDRID').AsString      := VoteAddrID;
    GetField('VOTEHIST','DATETIMEVOTE').AsDateTime  := ConvertDateTime(GetField('VOTEHISTOLD','VOTEDATE').AsString,GetField('VOTEHISTOLD','VOTEDATE').AsString,tdbfield('VOTEHISTOLD','VOTETIME'));
    GetField('VOTEHIST','VOTESIG').AsString         := GetField('VOTEHISTOLD','VOTESIG').AsString;

    A('VOTEHIST').Post;

    Application.ProcessMessages();
    Gauge.Progress := Gauge.Progress + 1;
    A('VOTEHISTOLD').Skip(1);
  end;

  CloseApollo('VOTEHIST');
  CloseApollo('VOTEHISTOLD');

  Gauge.Progress := 0;
  ShowMessage('DONE');
end;

procedure TConvDbaseForm.DirectButtonClick(Sender: TObject);
Var PropCode    : String;
    LowerStrNum : Integer;
    UpperStrNum : Integer;
begin
  inherited;
  Open_Query('PROP',true,'SELECT * FROM PROP WHERE 1=2');

  Net_Open(DirectoryField.Text + '\PROPERTY\DBF\DIRECT.DBF','S','DIRECT');
  Gauge.MaxValue := A('DIRECT').RecordCount;
  Gauge.Progress := 0;

  While Not A('DIRECT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    PropCode := 'D' + tdbfield('DIRECT','DIRCODE');

    A('PROP').UpdateSQL('SELECT * FROM PROP WHERE PROPCODE = ' + AddExpr(PropCode) + ' AND STREET = ' + edbfield('DIRECT','STREET'));
    If A('PROP').RecordsExist then
      GetTable('PROP').Edit
    else
      GetTable('PROP').Append;

    GetField('PROP','FDID').AsString            := IIf(tdbfield('PROPERTY','FIREID') = '',FireID,tdbfield('PROPERTY','FIREID'));
    GetField('PROP','PROPCODE').AsString        := PropCode;
    GetField('PROP','STREET').AsString          := tdbfield('DIRECT','STREET');
    GetField('PROP','DIRECTION').AsString       := GetField('DIRECT','NARR').AsString;
    GetField('PROP','PROPTYPEID').AsString      := PropRange;

    LowerStrNum := AnyStrToInt(tdbfield('DIRECT','LOWER'));
    UpperStrNum := AnyStrToInt(tdbfield('DIRECT','UPPER'));

    If (LowerStrNum > 0) and (UpperStrNum > 0) then begin
      GetField('PROP','LOWERSTRNUM').AsInteger := LowerStrNum;
      GetField('PROP','UPPERSTRNUM').AsInteger := UpperStrNum;
    end;

    GetTable('PROP').Post;
    DirectButton.Caption := IntToStr(GetField('PROP','PROPID').AsInteger);

    Application.ProcessMessages;
    A('DIRECT').Skip(1);
  end;
  CloseApollo('DIRECT');
  CloseApollo('PROP');
  Gauge.Progress := 0;
  DirectButton.Caption := 'PROP';
  ShowMessage('Done');
end;

procedure TConvDbaseForm.LosapCreditButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('LOSAPCREDIT',true,'SELECT * FROM LOSAPCREDIT WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('LOSAPCREDITTYPE',false,'SELECT CODE, LOSAPCREDITTYPEID FROM LOSAPCREDITTYPE');

  Net_Open(DirectoryField.Text + '\SERVICE\DBF\SAEXCEPT.DBF','S','SAEXCEPT');

  Gauge.MaxValue := A('SAEXCEPT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('SAEXCEPT').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('SAEXCEPT','MEMCODE')) then begin
      A('LOSAPCREDIT').UpdateSQL('SELECT * FROM LOSAPCREDIT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND ' + 
                                  'DATESTART = ' + AddExpr(FormatDateTime('YYYY-MM-DD',GetField('SAEXCEPT','INITDATE').AsDateTime)));

      If A('LOSAPCREDIT').RecordsExist then
        A('LOSAPCREDIT').Edit
      else
        A('LOSAPCREDIT').Append;

      GetField('LOSAPCREDIT','PERSID').AsString    := GetField('PERS','PERSID').AsString;
      GetField('LOSAPCREDIT','DATESTART').AsString := GetField('SAEXCEPT','INITDATE').AsString;
      GetField('LOSAPCREDIT','DATEEND').AsString   := GetField('SAEXCEPT','FINDATE').AsString;
      GetField('LOSAPCREDIT','POINT').AsString     := GetField('SAEXCEPT','POINT').AsString;
      GetField('LOSAPCREDIT','DESCR').AsString     := GetField('SAEXCEPT','DESC').AsString;
      
      If (GetField('SAEXCEPT','INITDATE').AsDateTime > 0) and (GetField('SAEXCEPT','FINDATE').AsDateTime > 0) then
        GetField('LOSAPCREDIT','DATELOSAP').AsDateTime := GetField('SAEXCEPT','INITDATE').AsDateTime + (GetField('SAEXCEPT','FINDATE').AsDateTime - GetField('SAEXCEPT','INITDATE').AsDateTime) / 2;
        
      GetTable('LOSAPCREDIT').Post;
    end;
    A('SAEXCEPT').Skip(1);
  end;

  CloseApollo('SAEXCEPT');
  CloseApollo('PERS');
  CloseApollo('LOSAPCREDIT');
  CloseApollo('LOSAPCREDITTYPE');

  ShowMessage('Done');

end;

procedure TConvDbaseForm.WOCodeButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + '\DICTION\SYSCODE.DBF','S','SYSCODE');

  Open_Query('WOSTATUS',True,'SELECT * FROM WOSTATUS WHERE 1=2');
  Open_Query('WOREQTYPE',True,'SELECT * FROM WOREQTYPE WHERE 1=2');
  Open_Query('WOSOURCE',True,'SELECT * FROM WOSOURCE WHERE 1=2');
  Open_Query('WOASSTYPE',True,'SELECT * FROM WOASSTYPE WHERE 1=2');

  Gauge.MaxValue := A('SYSCODE').RecordCount;
  Gauge.Progress := 0;

  while not A('SYSCODE').eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    If (tdbfield('SYSCODE','FIELD') = 'REQSTATUS') then begin
      A('WOSTATUS').UpdateSql('SELECT * FROM WOSTATUS WHERE CODE = ' + edbField('SYSCODE','CODE'));
      If A('WOSTATUS').RecordsExist then
        GetTable('WOSTATUS').Edit
      else
        GetTable('WOSTATUS').Insert;
      GetField('WOSTATUS','FDID').AsString  := FireID;
      GetField('WOSTATUS','CODE').AsString  := tdbField('SYSCODE','CODE');
      GetField('WOSTATUS','DESCR').AsString := tdbField('SYSCODE','DESC');
      GetTable('WOSTATUS').Post;

    end else if (tdbfield('SYSCODE','FIELD') = 'WOGENSERV') then begin
      A('WOREQTYPE').UpdateSQL('SELECT * FROM WOREQTYPE WHERE INVTYPE = ' + AddExpr('GEN') + ' AND CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOREQTYPE').RecordsExist then
        GetTable('WOREQTYPE').Edit
      else
        GetTable('WOREQTYPE').Append;

      GetField('WOREQTYPE','FDID').AsString       := FireID;
      GetField('WOREQTYPE','INVTYPE').AsString    := 'GEN';
      GetField('WOREQTYPE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOREQTYPE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOREQTYPE').Post;
      
    end else if (tdbfield('SYSCODE','FIELD') = 'WOHOSETEST') then begin
      A('WOREQTYPE').UpdateSQL('SELECT * FROM WOREQTYPE WHERE INVTYPE = ' + AddExpr('HOSE') + ' AND CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOREQTYPE').RecordsExist then
        GetTable('WOREQTYPE').Edit
      else
        GetTable('WOREQTYPE').Append;

      GetField('WOREQTYPE','FDID').AsString       := FireID;
      GetField('WOREQTYPE','INVTYPE').AsString    := 'HOSE';
      GetField('WOREQTYPE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOREQTYPE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOREQTYPE').Post;

    end else if (tdbfield('SYSCODE','FIELD') = 'WOSERVHIST') then begin
      A('WOREQTYPE').UpdateSQL('SELECT * FROM WOREQTYPE WHERE INVTYPE = ' + AddExpr('TRUCK') + ' AND CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOREQTYPE').RecordsExist then
        GetTable('WOREQTYPE').Edit
      else
        GetTable('WOREQTYPE').Append;

      GetField('WOREQTYPE','FDID').AsString       := FireID;
      GetField('WOREQTYPE','INVTYPE').AsString    := 'TRUCK';
      GetField('WOREQTYPE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOREQTYPE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOREQTYPE').Post;

    end else if (tdbfield('SYSCODE','FIELD') = 'WOSTATION') then begin
      A('WOREQTYPE').UpdateSQL('SELECT * FROM WOREQTYPE WHERE INVTYPE = ' + AddExpr('STATION') + ' AND CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOREQTYPE').RecordsExist then
        GetTable('WOREQTYPE').Edit
      else
        GetTable('WOREQTYPE').Append;

      GetField('WOREQTYPE','FDID').AsString       := FireID;
      GetField('WOREQTYPE','INVTYPE').AsString    := 'STATION';
      GetField('WOREQTYPE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOREQTYPE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOREQTYPE').Post;

    end else if (tdbfield('SYSCODE','FIELD') = 'WOSOURCE') then begin
      A('WOSOURCE').UpdateSQL('SELECT * FROM WOSOURCE WHERE CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOSOURCE').RecordsExist then
        GetTable('WOSOURCE').Edit
      else
        GetTable('WOSOURCE').Append;

      GetField('WOSOURCE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOSOURCE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOSOURCE').Post;

    end else if (tdbfield('SYSCODE','FIELD') = 'ASSACTION') then begin
      A('WOASSTYPE').UpdateSQL('SELECT * FROM WOASSTYPE WHERE CODE = ' + edbfield('SYSCODE','CODE'));
      If A('WOASSTYPE').RecordsExist then
        GetTable('WOASSTYPE').Edit
      else
        GetTable('WOASSTYPE').Append;

      GetField('WOASSTYPE','CODE').AsString       := GetField('SYSCODE','CODE').AsString;
      GetField('WOASSTYPE','DESCR').AsString      := GetField('SYSCODE','DESC').AsString;
      GetTable('WOASSTYPE').Post;

    end;
    A('SYSCODE').Skip(1);
  end;
  CloseApollo('SYSCODE');
  CloseApollo('WOSTATUS');
  CloseApollo('WOREQTYPE');
  CloseApollo('WOSOURCE');
  CloseApollo('WOASSTYPE');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.WorkOrdButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INV',false,'SELECT INVNUM, INVID FROM INV');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');

  Open_Query('WOSTATUS',false,'SELECT WOSTATUSID, CODE FROM WOSTATUS');
  Open_Query('WOREQTYPE',false,'SELECT * FROM WOREQTYPE');
  Open_Query('WOASSTYPE',false,'SELECT * FROM WOASSTYPE');

  Open_Query('WORKORD',true,'SELECT * FROM WORKORD WHERE 1=2');

  Net_Open(DirectoryField.Text + '\DICTION\WORKORD.DBF','S','OLDWORKORD');

  Gauge.MaxValue := A('OLDWORKORD').RecordCount;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  While Not A('OLDWORKORD').Eof do begin
    A('WORKORD').UpdateSQL('SELECT * FROM WORKORD WHERE PK = ' + edbfield('OLDWORKORD','PK'));
    If A('WORKORD').RecordsExist then
      GetTable('WORKORD').Edit
    else
      GetTable('WORKORD').Append;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    GetField('WORKORD','PK').AsString            := tdbfield('OLDWORKORD','PK');
    GetField('WORKORD','WORKORDNUM').AsString    := tdbfield('OLDWORKORD','WORKNUM');
    GetField('WORKORD','INVTYPE').AsString       := tdbfield('OLDWORKORD','TABLETYPE');

    If Not (tdbfield('OLDWORKORD','REQMEMCODE') = '') and A('PERS').ExactQueryLocate('PERSCODE',tdbfield('OLDWORKORD','REQMEMCODE')) then
      GetField('WORKORD','REQPERSID').AsString       := tdbfield('PERS','PERSID');

    If Not (tdbfield('OLDWORKORD','ASSMEMCODE') = '') and A('PERS').ExactQueryLocate('PERSCODE',tdbfield('OLDWORKORD','ASSMEMCODE')) then
      GetField('WORKORD','ASSPERSID').AsString       := tdbfield('PERS','PERSID');
    GetField('WORKORD','ASSDATE').AsDateTime     := GetField('OLDWORKORD','ASSDATE').AsDateTime;

    If (tdbfield('OLDWORKORD','TABLETYPE') = 'TRUCK')  then begin
      If A('INV').ExactQueryLocate('INVNUM',tdbfield('OLDWORKORD','INVNUM')) then
        GetField('WORKORD','INVID').AsString       := tdbfield('INV','INVID');
      If A('WOREQTYPE').ExactQueryLocate(['CODE','INVTYPE'],[tdbfield('OLDWORKORD','REQTYPE'),'TRUCK']) then
        GetField('WORKORD','WOREQTYPEID').AsString       := GetField('WOREQTYPE','WOREQTYPEID').AsString;
    end else if (tdbfield('OLDWORKORD','TABLETYPE') = 'STATION')  then begin
      If A('INV').ExactQueryLocate('INVNUM',tdbfield('OLDWORKORD','INVNUM')) then
        GetField('WORKORD','INVID').AsString       := tdbfield('INV','INVID');
      If A('WOREQTYPE').ExactQueryLocate(['CODE','INVTYPE'],[tdbfield('OLDWORKORD','REQTYPE'),'STATION']) then
        GetField('WORKORD','WOREQTYPEID').AsString       := GetField('WOREQTYPE','WOREQTYPEID').AsString;
    end else if (tdbfield('OLDWORKORD','TABLETYPE') = 'MEM')  then begin
//    If A('INV').ExactQueryLocate('INVNUM',tdbfield('OLDWORKORD','INVNUM')) then
//      GetField('WORKORD','INVID').AsString       := tdbfield('INV','INVID');
      If Not (tdbfield('OLDWORKORD','INVNUM') = '') then
        GetField('WORKORD','DESCR').AsString := 'RE Member: ' + tdbfield('OLDWORKORD','INVNUM');
      If A('WOREQTYPE').ExactQueryLocate(['CODE','INVTYPE'],[tdbfield('OLDWORKORD','REQTYPE'),'PERS']) then
        GetField('WORKORD','WOREQTYPEID').AsString       := GetField('WOREQTYPE','WOREQTYPEID').AsString;
    end;

    If A('WOSTATUS').ExactQueryLocate('CODE',tdbfield('OLDWORKORD','REQSTATUS')) then
      GetField('WORKORD','WOSTATUSID').AsString       := tdbfield('WOSTATUS','WOSTATUSID');
    If A('WOASSTYPE').ExactQueryLocate('CODE',tdbfield('OLDWORKORD','ASSACTION')) then
      GetField('WORKORD','WOASSTYPEID').AsString       := tdbfield('WOASSTYPE','WOASSTYPEID');

    GetField('WORKORD','REQNARR').AsString       := GetField('OLDWORKORD','REQNARR').AsString;
    GetField('WORKORD','REQDATE').AsDateTime     := GetField('OLDWORKORD','REQDATE').AsDateTime + GetRealTime(tdbfield('OLDWORKORD','REQTIME'));

    If Not (tdbfield('OLDWORKORD','CLOSEMEM') = '') and A('PERS').ExactQueryLocate('PERSCODE',tdbfield('OLDWORKORD','CLOSEMEM')) then
      GetField('WORKORD','CLOSEPERSID').AsString       := tdbfield('PERS','PERSID');
    GetField('WORKORD','CLOSENARR').AsString     := GetField('OLDWORKORD','CLOSENARR').AsString;
    GetField('WORKORD','CLOSEDATE').AsDateTime     := GetField('OLDWORKORD','CLOSEDATE').AsDateTime;
    GetTable('WORKORD').Post;
    A('OLDWORKORD').Skip(1);
  end;
  CloseApollo('OLDWORKORD');
  CloseApollo('WORKORD');
  CloseApollo('INV');
  CloseApollo('PERS');
  CloseApollo('WOSTATUS');
  CloseApollo('WOREQTYPE');
  CloseApollo('WOASSTYPE');
  ShowMessage('Done');
end;

procedure TConvDbaseForm.InsCodeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INSPTYPE',  true,'SELECT * FROM INSPTYPE WHERE 1=2');
  Open_Query('INSPSTAT',  true,'SELECT * FROM INSPSTAT WHERE 1=2');
  Open_Query('VIOSTAT',   true,'SELECT * FROM VIOSTAT  WHERE 1=2');
  Open_Query('VIOCODESET',true,'SELECT * FROM VIOCODESET WHERE 1=2');

  Net_Open(DirectoryField.Text + '\INSPECT\DBF\INSCODE.DBF','S','INSCODE');
  While Not A('INSCODE').Eof do begin
    If tdbfield('INSCODE','FIELD') = 'IINSPTYPE' then begin
      A('INSPTYPE').UpdateSQL('SELECT * FROM INSPTYPE WHERE CODE = ' + edbfield('INSCODE','CODE'));
      If A('INSPTYPE').RecordsExist then
        GetTable('INSPTYPE').Edit
      else
        GetTable('INSPTYPE').Append;
      GetField('INSPTYPE','CODE').AsString   := GetField('INSCODE','CODE').AsString;
      GetField('INSPTYPE','DESCR').AsString  := GetField('INSCODE','DESC').AsString;
      GetTable('INSPTYPE').Post;
      
    end else if tdbfield('INSCODE','FIELD') = 'IINSPRES' then begin
      A('INSPSTAT').UpdateSQL('SELECT * FROM INSPSTAT WHERE CODE = ' + edbfield('INSCODE','CODE'));
      If A('INSPSTAT').RecordsExist then
        GetTable('INSPSTAT').Edit
      else
        GetTable('INSPSTAT').Append;
      GetField('INSPSTAT','CODE').AsString   := GetField('INSCODE','CODE').AsString;
      GetField('INSPSTAT','DESCR').AsString  := GetField('INSCODE','DESC').AsString;
      GetTable('INSPSTAT').Post;

    end else if tdbfield('INSCODE','FIELD') = 'VSTATUS' then begin
      A('VIOSTAT').UpdateSQL('SELECT * FROM VIOSTAT WHERE CODE = ' + edbfield('INSCODE','CODE'));
      If A('VIOSTAT').RecordsExist then
        GetTable('VIOSTAT').Edit
      else
        GetTable('VIOSTAT').Append;
      GetField('VIOSTAT','CODE').AsString   := GetField('INSCODE','CODE').AsString;
      GetField('VIOSTAT','DESCR').AsString  := GetField('INSCODE','DESC').AsString;
      GetTable('VIOSTAT').Post;
      
    end else if tdbfield('INSCODE','FIELD') = 'CODE' then begin
      A('VIOCODESET').UpdateSQL('SELECT * FROM VIOCODESET WHERE CODE = ' + edbfield('INSCODE','CODE'));
      If A('VIOCODESET').RecordsExist then
        GetTable('VIOCODESET').Edit
      else
        GetTable('VIOCODESET').Append;
      GetField('VIOCODESET','CODE').AsString   := GetField('INSCODE','CODE').AsString;
      GetField('VIOCODESET','DESCR').AsString  := GetField('INSCODE','DESC').AsString;
      GetTable('VIOCODESET').Post;

    end;
    A('INSCODE').Skip(1);
  end;
  CloseApollo('INSPTYPE');
  CloseApollo('INSPSTAT');
  CloseApollo('VIOSTAT');
  CloseApollo('VIOCODESET');
  CloseApollo('INSCODE');
  ShowMessage('Done');
end;


procedure TConvDbaseForm.InspButtonClick(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  Open_Query('INSP',    true, 'SELECT * FROM INSP WHERE 1=2');
  Open_Query('VIO',     true, 'SELECT * FROM VIO WHERE 1=2');
  Open_Query('PROP',    false,'SELECT PROPCODE, PROPID FROM PROP');
  Open_Query('INSPTYPE',false,'SELECT * FROM INSPTYPE');
  Open_Query('INSPSTAT',false,'SELECT * FROM INSPSTAT');
  Open_Query('VIOSTAT', false,'SELECT * FROM VIOSTAT');
  Open_Query('PERS',    false,'SELECT PERSCODE, PERSID FROM PERS');

  Net_Open(DirectoryField.Text + '\INSPECT\DBF\INSHIST.DBF','S','INSHIST');
  A('INSHIST').SetOrder(3);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('INSHIST').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Net_Open(DirectoryField.Text + '\INSPECT\DBF\VIOHIST.DBF','S','VIOHIST');
  A('VIOHIST').SetOrder(1);

  Gauge.MaxValue := A('INSHIST').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('INSHIST').Eof do begin
    A('INSP').UpdateSQL('SELECT * FROM INSP WHERE INSPCODE = ' + edbfield('INSHIST','INSPCODE') + ' AND STRNUM = ' + AddExpr(AllTrim(dbfield('INSHIST','PSTRNUM'))) + ' AND STREET = ' + edbfield('INSHIST','PSTREET'));
    If A('INSP').RecordsExist then
      GetTable('INSP').Edit
    else
      GetTable('INSP').Append;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;

    GetField('INSP','INSPCODE').AsString            := tdbfield('INSHIST','INSPCODE');

    If A('PROP').ExactQueryLocate('PROPCODE',tdbfield('INSHIST','PROPCODE')) then
      GetField('INSP','PROPID').AsString       := GetField('PROP','PROPID').AsString;

    If A('INSPTYPE').ExactQueryLocate('CODE',tdbfield('INSHIST','INSPTYPE')) then
      GetField('INSP','INSPTYPEID').AsString   := GetField('INSPTYPE','INSPTYPEID').AsString;

    If A('INSPSTAT').ExactQueryLocate('CODE',tdbfield('INSHIST','RESCODE')) then
      GetField('INSP','INSPSTATID').AsString   := GetField('INSPSTAT','INSPSTATID').AsString;

    If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('INSHIST','MEMCODE')) then
      GetField('INSP','PERSID').AsString   := GetField('PERS','PERSID').AsString;

    GetField('INSP','INSPSTATDESCR').AsString    := GetField('INSHIST','RESDESC').AsString;
    GetField('INSP','INSPTYPEDESCR').AsString    := GetField('INSHIST','INSPDESC').AsString;
    GetField('INSP','INSPNAME').AsString         := GetField('INSHIST','MEMNAME').AsString;

    GetField('INSP','SCHDNAME').AsString         := GetField('INSHIST','USERC1').AsString;

    GetField('INSP','NAME').AsString             := GetField('INSHIST','PNAME').AsString;
    GetField('INSP','BUILDING').AsString         := GetField('INSHIST','PBUILDING').AsString;
    GetField('INSP','STREET').AsString           := GetField('INSHIST','PSTREET').AsString;
    GetField('INSP','STRNUM').AsString           := alltrim(GetField('INSHIST','PSTRNUM').AsString);
    GetField('INSP','CITY').AsString             := GetField('INSHIST','PCITY').AsString;
    GetField('INSP','STATE').AsString            := GetField('INSHIST','PSTATE').AsString;
    GetField('INSP','ZIP').AsString              := GetField('INSHIST','PZIP').AsString;
    GetField('INSP','PHONE').AsString            := GetField('INSHIST','PPHONE').AsString;
    GetField('INSP','ROOMAPT').AsString          := GetField('INSHIST','PROOMAPT').AsString;

    GetField('INSP','ONAME').AsString            := GetField('INSHIST','ONAME').AsString;
    GetField('INSP','OCONTACT').AsString         := GetField('INSHIST','OCONTACT').AsString;
    GetField('INSP','OADDRESS').AsString         := GetField('INSHIST','OADDRESS').AsString;
    GetField('INSP','OCITY').AsString            := GetField('INSHIST','OCITY').AsString;
    GetField('INSP','OZIP').AsString             := GetField('INSHIST','OZIP').AsString;
    GetField('INSP','OSTATE').AsString           := GetField('INSHIST','OSTATE').AsString;
    GetField('INSP','OPHONE').AsString           := GetField('INSHIST','OPHONE').AsString;

    GetField('INSP','NARR').AsString             := GetField('INSHIST','NARR').AsString;

    If GetField('INSHIST','DATE').AsDateTime > 0 then
      GetField('INSP','DATETIMESTART').AsDateTime := GetField('INSHIST','DATE').AsDateTime + GetRealTime(tdbfield('INSHIST','STARTTIME'));

    If (Length(tdbfield('INSHIST','FINTIME')) = 5) then
      GetField('INSP','DATETIMEEND').AsDateTime := GetField('INSHIST','DATE').AsDateTime + GetRealTime(tdbfield('INSHIST','FINTIME'));

    GetField('INSP','AMOUNTBILLED').AsFloat      := GetField('INSHIST','USERN1').AsFloat;
    GetField('INSP','AMOUNTPAID').AsFloat        := GetField('INSHIST','USERN2').AsFloat;
    GetField('INSP','DATECOLLECT').AsDateTime    := GetField('INSHIST','USERD1').AsDateTime;
    GetField('INSP','DATEBILLED').AsDateTime     := GetField('INSHIST','USERD2').AsDateTime;
    GetField('INSP','DATETIMESCHD').AsDateTime   := GetField('INSHIST','DATESCHD').AsDateTime;
    GetField('INSP','DATETIMERETURN').AsDateTime := GetField('INSHIST','RETDATE').AsDateTime;
    GetField('INSP','EVLENGTH').AsFloat          := GetField('INSHIST','LENGTH').AsFloat;

    GetTable('INSP').Post;

    A('VIOHIST').SetScope(padr(tdbfield('INSPHIST','CODE'),8,' '),padr(tdbfield('INSPHIST','CODE'),8,' '));
    While Not A('VIOHIST').Eof do begin
      SQLVar := 'SELECT * FROM VIO WHERE INSPID = ' + GetField('INSP','INSPID').AsString + ' AND CODE = ' + edbfield('VIOHIST','CODE') + ' AND ' +
                'DESCR = ' + edbfield('VIOHIST','DESC') + ' AND LOCATION = ' + edbfield('VIOHIST','LOCATION');
      A('VIO').UpdateSQL(SQLVar);
      If A('VIO').RecordsExist then
        A('VIO').Edit
      else
        A('VIO').Append;
      GetField('VIO','INSPID').AsString         := GetField('INSP','INSPID').AsString;
      GetField('VIO','CODE').AsString           := tdbfield('VIOHIST','CODE');
      GetField('VIO','DESCR').AsString          := tdbfield('VIOHIST','DESC');
      GetField('VIO','LOCATION').AsString       := tdbfield('VIOHIST','LOCATION');
      GetField('VIO','VIONARR').AsString        := GetField('VIOHIST','VIONARR').AsString;
      GetField('VIO','DATEFOUND').AsDateTime    := GetField('VIOHIST','DATEFOUND').AsDateTime;
      GetField('VIO','DATECORR').AsDateTime     := GetField('VIOHIST','DATECORR').AsDateTime;
      GetField('VIO','NUMVIOLATIONS').AsInteger := 1;
      If A('VIOSTAT').ExactQueryLocate('CODE',tdbfield('VIOHIST','STATUS')) then
        GetField('VIO','VIOSTATID').AsString   := GetField('VIOSTAT','VIOSTATID').AsString;
      A('VIO').Post;

      A('VIOHIST').Skip(1);
    end;

    A('INSHIST').Skip(1);
  end;

  CloseApollo('INSP');
  CloseApollo('VIO');
  CloseApollo('PROP');
  CloseApollo('INSPTYPE');
  CloseApollo('INSPSTAT');
  CloseApollo('VIOSTAT');
  CloseApollo('PERS');

  CloseApollo('INSHIST');
  CloseApollo('VIOHIST');

  ShowMessage('Done');
end;

procedure TConvDbaseForm.DocLinkButtonClick(Sender: TObject);
Var PictPath      : String;
    ImagePathID   : String;
    Ext           : String;
    mFullFileName : String;
    mFileName     : String;
    ImageListID   : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + '\DOCUMENT\DBF\DOCFILE.DBF','S','DOCFILE');
  A('DOCFILE').SetOrder(1);
  A('DOCFILE').GoTop;
  Net_Open(DirectoryField.Text + '\DOCUMENT\DBF\DOCLINK.DBF','S','DOCLINK');
  Net_Open(DirectoryField.Text + '\DICTION\SYSCODE.DBF','S','SYSCODE');
  A('SYSCODE').SetOrder(1);

  Open_Query('IMAGEPATH',false,'SELECT IMAGEPATH.PATH, IMAGEPATH.IMAGEPATHID FROM IMAGESET LEFT JOIN IMAGEPATH ON (IMAGESET.PERSPICTPATHID = IMAGEPATH.IMAGEPATHID) WHERE FDID = ' + AddExpr(mFireID));
  PictPath    := tdbfield('IMAGEPATH','PATH');
  PictPath    := DirectoryField.Text + '\PROPERTY\SITEPLAN\';
  ImagePathID := tdbfield('IMAGEPATH','IMAGEPATHID');
  CloseApollo('IMAGEPATH');

  Open_Query('PROP',false,'SELECT PROPCODE, PROPID FROM PROP');
  Open_Query('IMAGEPROP',true,'SELECT * FROM IMAGEPROP WHERE 1=2');



  Gauge.MaxValue := A('DOCLINK').QueryReccount;
  Gauge.Progress := 0;


  while not A('DOCLINK').eof do begin
    If A('PROP').ExactQueryLocate('PROPCODE',tdbField('DOCLINK','RECCODE')) then begin
      A('DOCFILE').SetScope(dbfield('DOCLINK','DOCCODE'),dbfield('DOCLINK','DOCCODE'));


      ImageListID := '';
      ImageName   := tdbField('DOCFILE','DOCFILE');
      ext         := lowercase(substr(ImageName,at('.',ImageName) + 1,3));

//      If ext = 'bmp' then
//        ImageName := substr(ImageName,1,at('.',ImageName)) + 'jpg';

      mFullFileName := PictPath +'\'+ImageName;
      if not FileExists(mFullFileName) then begin
        if dbseek('SYSCODE',padr('DOCPATH',10,' ')+tdbfield('DOCFILE','DOCPATH'),False) then
          mFullFileName := tdbfield('SYSCODE','DESC')+'\'+imagename;
      end;

      If FileExists(mFullFileName) then begin
        try
          mFileName := ExtractFileName(mFullFileName);
          Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE FILENAME = ' + AddExpr(mFileName));
          If A('IMAGELIST').RecordsExist then begin
            GetTable('IMAGELIST').Edit;
            AddStatusListBox(ListBox1,'Updated ' + mFullFileName);
          end else begin
            GetTable('IMAGELIST').Append;
            AddStatusListBox(ListBox1,'Add in ' + mFullFileName);
          end;
          (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
          TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(mFullFileName);
          GetField('IMAGELIST','FILENAME').AsString       := mFileName;
          GetField('IMAGELIST','IMAGEPATHID').AsString    := ImagePathID;
          GetField('IMAGELIST','DATETIMEFILE').AsDateTime := FileDateToDateTime(FileAge(mFullFileName));
          GetField('IMAGELIST','DESCR').AsString          := tdbField('DOCLINK','DESC');
          GetField('IMAGELIST','SYSTABLEID').AsString     := SqlLookUp('PROP','TABLENAME','SYSTABLE','SYSTABLEID');
          GetTable('IMAGELIST').Post;
          ImageListID := GetField('IMAGELIST','IMAGELISTID').AsString;

          CloseApollo('IMAGELIST');
        except
          CloseApollo('IMAGELIST');
        end;


        If Not (ImageListID = '') then begin
          A('IMAGEPROP').UpdateSQL('SELECT * FROM IMAGEPROP WHERE IMAGELISTID = ' + ImageListID + ' AND PROPID = ' + GetField('PROP','PROPID').AsString);
          If A('IMAGEPROP').RecordsExist then begin
            GetTable('IMAGEPROP').Edit;
            AddStatusListBox(ListBox1,'Updated IMAGELISTID = ' + ImageListID + ' and PROPID = ' + GetField('PROP','PROPID').AsString);
          end else begin
            GetTable('IMAGEPROP').Append;
            AddStatusListBox(ListBox1,'Added IMAGELISTID = ' + ImageListID + ' and PROPID = ' + GetField('PROP','PROPID').AsString);
          end;
          GetField('IMAGEPROP','IMAGELISTID').AsString := ImageListID;
          GetField('IMAGEPROP','PROPID').AsString      := GetField('PROP','PROPID').AsString;
          GetField('IMAGEPROP','DESCR').AsString       := tdbField('DOCLINK','DESC');
          GetField('IMAGEPROP','CHKFIT').AsString      := 'Y';
          GetTable('IMAGEPROP').Post;
        end;
      end else
        appendtolog('did not convert '+mFullFileName);
    end;
    A('DOCLINK').Skip(1);
    Gauge.Progress := Gauge.Progress + 1;
    application.processmessages;
  end;

  CloseApollo('DOCLINK');
  CloseApollo('DOCFILE');
  CloseApollo('SYSCODE');  
  CloseApollo('PROP');
  CloseApollo('IMAGEPROP');
  ShowMessage('done');
end;

end.
