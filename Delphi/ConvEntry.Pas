unit ConvEntry;
 
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
  AdvGroupBox, AlpineBlockBrowse, AdvSplitter, htmlbtns, alpinecheck;

type
  TConvEntryForm = class(TNormalBaseForm)
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
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    NFIRSMainButton: TAlpineGlowButton;
    NFIRSSTR: TAlpineGlowButton;
    NFIRSFIRButton: TAlpineGlowButton;
    NfirsAttTaskButton: TAlpineGlowButton;
    Statuslabel: TLabel;
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
    TabSheet9: TTabSheet;
    FDIDButton: TAlpineGlowButton;
    CityButton: TAlpineGlowButton;
    StreetButton: TAlpineGlowButton;
    Label24: TLabel;
    PaginationRecField: TAlpineEdit;
    SecButton: TAlpineGlowButton;
    InvTab: TTabSheet;
    NITab: TTabSheet;
    N5DistrictButton: TAlpineGlowButton;
    TruckButton: TAlpineGlowButton;
    InvTypeButton: TAlpineGlowButton;
    InvSubTypeBrowse: TAlpineBlockBrowse;
    InvButton: TAlpineGlowButton;
    ConvBox: TListBox;
    Panel2: TPanel;
    LocationButton: TAlpineGlowButton;
    ElsEventTypeButton: TAlpineGlowButton;
    ElsTrainTypeButton: TAlpineGlowButton;
    NISTYPEButton: TAlpineGlowButton;
    NITRAINCAT1Button: TAlpineGlowButton;
    NIButton: TAlpineGlowButton;
    ELSTrainTypeBrowse: TAlpineBlockBrowse;
    AdvSplitter1: TAdvSplitter;
    ELSEventTypeBrowse: TAlpineBlockBrowse;
    DispBoxButtosn: TAlpineGlowButton;
    SingleDateCheck: TAlpineCheckBox;
    Label3: TLabel;
    MainCodeButton: TAlpineGlowButton;
    INVLOCPERSButton: TAlpineGlowButton;
    TrainAtt2Button: TAlpineGlowButton;
    CourseButton: TAlpineGlowButton;
    InvServHistButton: TAlpineGlowButton;
    procedure FDIDButtonClick(Sender: TObject);
    procedure PersButtonClick(Sender: TObject);
    procedure PersTypeButtonClick(Sender: TObject);
    procedure PersRankButtonClick(Sender: TObject);
    procedure PersRankHistButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure PersDriverButtonClick(Sender: TObject);
    procedure CityButtonClick(Sender: TObject);
    procedure StreetButtonClick(Sender: TObject);
    procedure PersMedButtonClick(Sender: TObject);
    procedure PersBloodTypeButtonClick(Sender: TObject);
    procedure PERSMEDHISTButtonClick(Sender: TObject);
    procedure NFIRSSTRClick(Sender: TObject);
    procedure NFIRSFIRButtonClick(Sender: TObject);
    procedure NfirsAttTaskButtonClick(Sender: TObject);
    procedure PersDLClassButtonClick(Sender: TObject);
    procedure PersInvQualButtonClick(Sender: TObject);
    procedure NFIRSMainButtonClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
    procedure N5DistrictButtonClick(Sender: TObject);
    procedure LocationButtonClick(Sender: TObject);
    procedure TruckButtonClick(Sender: TObject);
    procedure ElsEventTypeButtonClick(Sender: TObject);
    procedure ElsTrainTypeButtonClick(Sender: TObject);
    procedure NISTYPEButtonClick(Sender: TObject);
    procedure NITRAINCAT1ButtonClick(Sender: TObject);
    procedure NIButtonClick(Sender: TObject);
    procedure InvTypeButtonClick(Sender: TObject);
    procedure InvTabShow(Sender: TObject);
    procedure InvButtonClick(Sender: TObject);
    procedure NITabShow(Sender: TObject);
    procedure DispBoxButtosnClick(Sender: TObject);
    procedure MainCodeButtonClick(Sender: TObject);
    procedure INVLOCPERSButtonClick(Sender: TObject);
    procedure TrainAtt2ButtonClick(Sender: TObject);
    procedure CourseButtonClick(Sender: TObject);
    procedure InvServHistButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure ConvertNfirsMain;
    procedure ConvertSingleDateNfirsMain;
    procedure ConvertNfirsAtt(Fdid, IncNum, NfirsMainID: String);
    procedure ConvertNfirsApp(Fdid, IncNum, NfirsMainID: String);
    procedure ImportNfirs(mInitDate,mFinalDate: TDateTime);
    procedure ELSEventTypeNewRecord(DataSet: TDataSet);
    procedure ELSTrainTypeNewRecord(DataSet: TDataSet);
    procedure ELSInvSubTypeNewRecord(DataSet: TDataSet);

  public
    { Public declarations }
  end;

var
  ConvEntryForm: TConvEntryForm;

implementation
uses GenFunc,
     SDE61,
     SortGridView,
     FormFunc,
     ExitPass,
     SecSet,
     TreeSetup,
     ELSEventType,
     ELSTrainType,
     ELSInvSubType,
     CommonConv,
     commonpassword,
     CommonFunc,
     CommonVar;

{$R *.DFM}


procedure TConvEntryForm.FDIDButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + 'FIREDEPT.DBF','S','FIREDEPT');
  Open_Query('FDID',true,'SELECT * FROM FDID WHERE 1=2');
  While Not A('FIREDEPT').Eof do begin
    A('FDID').UpdateSQL('SELECT * FROM FDID WHERE FDID = ' + edbfield('FIREDEPT','FDID'));
    PutInUpdateMode('FDID');
    GetField('FDID','FDID').AsString       := GetField('FIREDEPT','FDID').AsString;
    GetField('FDID','DEPTNAME').AsString   := GetField('FIREDEPT','DEPTNAME').AsString;
    GetField('FDID','ADDRESS').AsString    := GetField('FIREDEPT','ADDRESS').AsString;
    A('FDID').Post(false);
    A('FIREDEPT').Skip(1);
  end;
  CloseApollo('FIREDEPT');
  CloseApollo('FDID');

  ShowMessage('Done');
end;

procedure TConvEntryForm.PersButtonClick(Sender: TObject);
begin
  Net_Open(DirectoryField.Text + 'MEMBER.DBF','S','MEMBER');
  Net_Open(DirectoryField.Text + 'MEMATT.DBF','S','MEMATT');
  A('MEMATT').SetOrder(1);
  
  Gauge.MaxValue := A('MEMBER').RecordCount;
  Gauge.Progress := 0;

  Open_Query('PERS',true,'SELECT * FROM PERS WHERE 1=2');
  Open_Query('PERSTYPE',true,'SELECT * FROM PERSTYPE WHERE 1=2');
  Open_Query('PERSBLOODTYPE',true,'SELECT * FROM PERSBLOODTYPE');
  Open_Query('PERSDRIVER',true,'SELECT * FROM PERSDRIVER');
  Open_Query('PERSDLCLASS',true,'SELECT * FROM PERSDLCLASS');

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

    If dbseek('MEMATT',dbfield('MEMBER','MEMCODE'),false) then
      GetField('PERS','ATTEND').AsString        := 'Y'
    else
      GetField('PERS','ATTEND').AsString        := 'N';
      
    GetField('PERS','FDID').AsString          := mFireID;
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
    GetField('PERS','INSCODE').AsString       := GetField('MEMBER','INSCODE').AsString;
    GetField('PERS','BENEFIT').AsString       := GetField('MEMBER','BENEFIT').AsString;
    GetField('PERS','DEPEND').AsString        := GetField('MEMBER','DEPEND').AsString;

    GetField('PERS','ALLERGY').AsString    := GetField('MEMBER','ALLERGY').AsString;
    GetField('PERS','HEIGHT').AsString     := GetField('MEMBER','HEIGHT').AsString;
    GetField('PERS','WEIGHT').AsString     := GetField('MEMBER','WEIGHT').AsString;
    GetField('PERS','HAIR').AsString       := GetField('MEMBER','HAIR').AsString;
    GetField('PERS','EYES').AsString       := GetField('MEMBER','EYES').AsString;
    If A('PERSBLOODTYPE').ExactQueryLocate('CODE',tdbfield('MEMBER','BLDTYPE')) then
      GetField('PERS','PERSBLOODTYPEID').AsString  := GetField('PERSBLOODTYPE','PERSBLOODTYPEID').AsString;

    If Not (alltrim(substr(tdbfield('MEMBER','EMERG'),1,3)) = '') then
      GetField('PERS','EMERGPHONE').AsString := GetField('MEMBER','EMERG').AsString;
    GetField('PERS','EMERGNAME').AsString  := GetField('MEMBER','NOTE_NAME').AsString;

    If Not (alltrim(substr(tdbfield('MEMBER','SOCSEC'),1,2)) = '') then
      GetField('PERS','SOCSEC').AsString    := tdbfield('MEMBER','SOCSEC');

    GetField('PERS','PHONE').AsString    := GetField('MEMBER','PHONE').AsString;
    GetField('PERS','OCCPHONE').AsString := GetField('MEMBER','OCCPHONE').AsString;

    GetField('PERS','DLEXP').AsString    := GetField('MEMBER','DLEXP').AsString;
    GetField('PERS','DLNUM').AsString    := GetField('MEMBER','DLNUM').AsString;
    GetField('PERS','DLSTATE').AsString  := GetField('MEMBER','DLSTATE').AsString;
    If A('PERSDRIVER').ExactQueryLocate('CODE',tdbfield('MEMBER','DRIVER')) then
      GetField('PERS','PERSDRIVERID').AsString  := GetField('PERSDRIVER','PERSDRIVERID').AsString;

    If A('PERSDLCLASS').ExactQueryLocate('CODE',tdbfield('MEMBER','DLCLASS')) then
      GetField('PERS','PERSDLCLASSID').AsString  := GetField('PERSDLCLASS','PERSDLCLASSID').AsString;

    GetField('PERS','JOINDATE').AsString := GetField('MEMBER','JOINDATE').AsString;
    GetField('PERS','RESDATE').AsString  := GetField('MEMBER','ACTDATE').AsString;
    GetField('PERS','ACTDATE').AsString  := GetField('MEMBER','RESDATE').AsString;
    GetField('PERS','LIFEDATE').AsString := GetField('MEMBER','LIFEDATE').AsString;

    GetField('PERS','NARR').AsString           := GetField('MEMBER','NARRATIVE').AsString;

    A('PERSTYPE').UpdateSQL('SELECT PERSTYPEID FROM PERSTYPE WHERE CODE = ' + edbfield('MEMBER','MEMTYPE'));
    If A('PERSTYPE').RecordsExist then
      GetField('PERS','PERSTYPEID').AsInteger := GetField('PERSTYPE','PERSTYPEID').AsInteger;

    A('PERS').Post;
    A('MEMBER').Skip(1);
    Application.processmessages;
  end;
  CloseApollo('MEMBER');
  CloseApollo('MEMATT');
  
  CloseApollo('PERS');
  CloseApollo('PERSTYPE');
  CloseApollo('PERSBLOODTYPE');
  CloseApollo('PERSDRIVER');
  CloseApollo('PERSDLCLASS');

  ShowMessage('Done');
end;

procedure TConvEntryForm.PersTypeButtonClick(Sender: TObject);
begin
  Open_Query('PERSTYPE',true,'SELECT * FROM PERSTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','MEMCODE');
  
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
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSTYPE');
  CloseApollo('MEMCODE');
  ShowMessage('Done');
end;

procedure TConvEntryForm.PersRankButtonClick(Sender: TObject);
begin
  Open_Query('PERSRANK',true,'SELECT * FROM PERSRANK WHERE 1=2');

  Net_Open(DirectoryField.Text + 'OFFICE.DBF','S','OFFICE');
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

  ShowMessage('Done');
end;

procedure TConvEntryForm.PersRankHistButtonClick(Sender: TObject);
begin
  Open_Query('PERSRANKHIST',true,'SELECT * FROM PERSRANKHIST WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('PERSRANK',false,'SELECT CODE, PERSRANKID FROM PERSRANK');

  Net_Open(DirectoryField.Text + 'TERM.DBF','S','TERM');

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
        If A('PERSRANK').RecordsExist then
          A('PERSRANKHIST').edit
        else  
          A('PERSRANKHIST').Append;
        GetField('PERSRANKHIST','PERSID').AsString        := GetField('PERS','PERSID').AsString;
        GetField('PERSRANKHIST','PERSRANKID').AsString    := GetField('PERSRANK','PERSRANKID').AsString;
        GetField('PERSRANKHIST','DATETIMESTART').AsString := GetField('TERM','START').AsString;
        GetField('PERSRANKHIST','DATETIMEEND').AsString   := GetField('TERM','FINISH').AsString;
        GetField('PERSRANKHIST','POINT').AsString         := GetField('TERM','SERVICE').AsString;
        If (GetField('TERM','START').AsDateTime > 0) and (GetField('TERM','FINISH').AsDateTime > 0) then
          GetField('PERSRANKHIST','DATETIMELOSAP').AsDateTime := GetField('TERM','START').AsDateTime + (GetField('TERM','FINISH').AsDateTime - GetField('TERM','START').AsDateTime) / 2;
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

procedure TConvEntryForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TConvEntryForm.PersDriverButtonClick(Sender: TObject);
begin
  Open_Query('PERSDRIVER',true,'SELECT * FROM PERSDRIVER WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEDLCLASS' then begin
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
  ShowMessage('Done');
end;

procedure TConvEntryForm.PersDLClassButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PERSDLCLASS',true,'SELECT * FROM PERSDLCLASS WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEDLCLASS' then begin
      A('PERSDLCLASS').UpdateSQL('SELECT * FROM PERSDLCLASS WHERE CODE = ' + edbfield('MEMCODE','CODE'));
      If A('PERSDLCLASS').RecordsExist then
        GetTable('PERSDLCLASS').Edit
      else
        GetTable('PERSDLCLASS').Append;
      GetField('PERSDLCLASS','CODE').AsString   := GetField('MEMCODE','CODE').AsString;
      GetField('PERSDLCLASS','DESCR').AsString  := GetField('MEMCODE','DESC').AsString;
      GetTable('PERSDLCLASS').Post;
    end;
    A('MEMCODE').Skip(1);
  end;
  CloseApollo('PERSDLCLASS');
  CloseApollo('MEMCODE');
  ShowMessage('Done');
end;


procedure TConvEntryForm.ConvertSingleDateNfirsMain;
Var DateTimeAlarm  : TDateTime;
    DateTimeOut    : TDateTime;
    DateTimeArr    : TDateTime;
    DateTimeCont   : TDateTime;
    DateTimeIn     : TDateTime;
begin
  DateTimeAlarm := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEALARM'));
  If DateTimeAlarm > 0 then
    GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime := DateTimeAlarm;

  DateTimeOut   := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEOUT'));
  If DateTimeAlarm > 0 then
    GetField('NFIRSMAIN','DATETIMEOUT').AsDateTime := DateTimeOut;

  DateTimeArr   := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEARR'));
  If DateTimeArr > 0 then
    GetField('NFIRSMAIN','DATETIMEARR').AsDateTime := DateTimeArr;

  DateTimeCont  := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMECONT'));
  If DateTimeCont > 0 then
    GetField('NFIRSMAIN','DATETIMECONT').AsDateTime := DateTimeCont;

  DateTimeIn    := ConvertDateTime(GetField('INC','DATE').AsString,GetField('INC','DATE').AsString,tdbfield('INC','TIMEIN'));
  If DateTimeIn > 0 then
    GetField('NFIRSMAIN','DATETIMEIN').AsDateTime := DateTimeIn;

  GetField('NFIRSMAIN','EVLENGTH').AsFloat         := GetField('INC','LENGTH').AsFloat;
  GetField('NFIRSMAIN','NARR').AsString            := A('INC').GetMemo('ADDREMARK',1000);
end;

procedure TConvEntryForm.CourseButtonClick(Sender: TObject);
Var SQLVar : String;
begin
  inherited;
  SQLVar := 'UPDATE ELSTRAINTYPE SET COURSE = ' + AddExpr('Y');
  RunSQL(SQLVar);
  ELSTrainTypeBrowse.Setup('ELSTRAINTYPE',TELSTrainTypeForm,ELSTrainTypeNewRecord);
  ShowMessage('Done');
end;

procedure TConvEntryForm.ConvertNfirsMain;
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


procedure TConvEntryForm.DispBoxButtosnClick(Sender: TObject);
begin
  inherited;
  Open_Query('DISPBOX',true,'SELECT * FROM DISPBOX WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','INCCODE');

  While Not A('INCCODE').Eof do begin
    If (tdbfield('INCCODE','FIELD') = 'DISTRICT') then begin
      A('DISPBOX').UpdateSQL('SELECT * FROM DISPBOX WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('DISPBOX');
      GetField('DISPBOX','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('DISPBOX','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('DISPBOX').Post;
    end;
    A('INCCODE').Skip(1);
  end;
  CloseApollo('DISPBOX');
  CloseApollo('INCCODE');

  ShowMessage('Done');
end;

procedure TConvEntryForm.ConvertNfirsApp(Fdid, IncNum, NfirsMainID: String);
Var UnitNum : String;
begin
  A('APPINC').SetOrder(2);
  A('APPINC').SetScope(Fdid + IncNum,Fdid + IncNum);
  While Not A('APPINC').Eof do begin
    UnitNum := tdbfield('APPINC','INVNUM');
    A('NFIRSAPP').ExactQueryLocateAndPutInEditMode(['NFIRSMAINID','UNITNUM'],[NfirsMainID,UnitNum]);

    GetField('NFIRSAPP','NFIRSMAINID').AsString := NfirsMainID;
    GetField('NFIRSAPP','UNITNUM').AsString     := UnitNum;

    If A('INV').ExactQueryLocate('UNITNUM',UnitNum) then
      GetField('NFIRSAPP','N5AU').AsString := tdbfield('INV','N5AU');

    A('NFIRSAPP').Post;
    A('APPINC').Skip(1);
  end;
end;

procedure TConvEntryForm.ConvertNfirsAtt(Fdid, IncNum, NfirsMainID: String);
Var MemCode       : String;
    PersID        : String;
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

      If Not (tdbfield('INCATT','INVNUM') = '') then begin
        if A('NFIRSAPP').ExactQueryLocate(['NFIRSMAINID','UNITNUM'],[NfirsMainID,tdbfield('INCATT','INVNUM')]) then
          Getfield('NFIRSATT','NFIRSAPPID').AsString := GetField('NFIRSAPP','NFIRSAPPID').AsString;
      end;

      A('NFIRSATT').Post;
    end;
    A('INCATT').Skip(1);
  end;
end;

procedure TConvEntryForm.NFIRSFIRButtonClick(Sender: TObject);
Var Fdid   : String;
    IncNum : String;
    ExpNum : String;
begin
  Net_Open(DirectoryField.Text + 'NFIRSFIR.DBF','S','OLDNFIRSFIR');
  Net_Open(DirectoryField.Text + 'INCIDENT.DBF','S','INC');
  A('INC').SetOrder(1);

  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSFIR',true,'SELECT * FROM NFIRSFIR WHERE 1=2');

  While Not A('OLDNFIRSFIR').Eof do begin
    Fdid   := tdbfield('OLDNFIRSFIR','FDID');
    IncNum := tdbfield('OLDNFIRSFIR','INCNUM');
    ExpNum := tdbfield('OLDNFIRSFIR','EXPNUM');

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
  ShowMessage('Done');
end;

procedure TConvEntryForm.ElsEventTypeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('ELSEVENTTYPE',true,'SELECT * FROM ELSEVENTTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','SYSCODE');

  While Not A('SYSCODE').Eof do begin
    If (tdbfield('SYSCODE','FIELD') = 'SCTYPE') then begin
      A('ELSEVENTTYPE').UpdateSQL('SELECT * FROM ELSEVENTTYPE WHERE CODE = ' + edbfield('SYSCODE','CODE'));
      PutInUpdateMode('ELSEVENTTYPE');
      GetField('ELSEVENTTYPE','CODE').AsString   := GetField('SYSCODE','CODE').AsString;
      GetField('ELSEVENTTYPE','DESCR').AsString  := GetField('SYSCODE','DESC').AsString;
      GetTable('ELSEVENTTYPE').Post;
    end;
    A('SYSCODE').Skip(1);
  end;
  CloseApollo('ELSEVENTTYPE');
  CloseApollo('SYSCODE');

  ShowMessage('Done');
  ELSEventTypeBrowse.Setup('ELSEVENTTYPE',TELSEventTypeForm,ELSEventTypeNewRecord);
end;

procedure TConvEntryForm.CityButtonClick(Sender: TObject);
Var Zip : String;
begin
  Net_Open(DirectoryField.Text + 'FIREDEPT.DBF','S','FIREDEPT');
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

procedure TConvEntryForm.SecButtonClick(Sender: TObject);
Var SecID     : String;
    FieldNum  : Integer;
    FieldName : String;
begin
  Open_Query('SEC',true,'SELECT * FROM SEC WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SECURITY.DBF','S','OLDSEC');

  While Not A('OLDSEC').Eof do begin
    A('SEC').UpdateSQL('SELECT * FROM SEC WHERE LOGINCODE = ' + edbfield('OLDSEC','MEMCODE') );
    If A('SEC').RecordsExist then
      GetTable('SEC').Edit
    else
      GetTable('SEC').Append;
    GetField('SEC','USERNAME').AsString        := GetField('OLDSEC','MEMCODE').AsString;
    GetField('SEC','DESCR').AsString           := GetField('OLDSEC','USERNAME').AsString;
    GetField('SEC','LOGINCODE').AsString       := GetField('OLDSEC','MEMCODE').AsString;
    GetField('SEC','EXPDATE').AsString         := GetField('OLDSEC','EXPDATE').AsString;
    SetPasswordToValue(A('SEC'),GetField('OLDSEC','PASSWORD').AsString);
    A('SEC').Post;
    A('OLDSEC').Skip(1);
  end;
  CloseApollo('SEC');
  CloseApollo('OLDSEC');
  ShowMessage('Done');
end;

procedure TConvEntryForm.StreetButtonClick(Sender: TObject);
begin
  Open_Query('STREET',TRUE,'SELECT * FROM STREET WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','SYSCODE');
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

function GetN5AU: String;
begin
  If tdbfield('TRUCK','INCLINK') = 'OTHER' then
    GetN5AU := '0'
  else if tdbfield('TRUCK','INCLINK') = 'SUPP' then
    GetN5AU := '1'
  else if tdbfield('TRUCK','INCLINK') = 'EMS' then
    GetN5AU := '2'
  else
    GetN5AU := '';
end;

procedure TConvEntryForm.InvButtonClick(Sender: TObject);
var
  mRecordNum: String;
begin
  inherited;
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('INVSUBTYPE',false,'SELECT * FROM INVSUBTYPE');
  Open_Query('INVOWNER',false,'SELECT * FROM INVOWNER');
  Open_Query('INVSERVTYPE',False,'SELECT * FROM INVSERVTYPE');
  Open_Query('INVSERVHIST',true,'SELECT * FROM INVSERVHIST WHERE 1=2');
  Open_Query('ROLODEX',false,'SELECT * FROM ROLODEX');
  Open_Query('INVLOC',false,'SELECT * FROM INVLOC');
  Net_Open(DirectoryField.Text + 'INVENTOR.DBF','S','INVENTOR');
  Net_Open(DirectoryField.Text + 'INVMASTS.DBF','S','INVMASTS');
  Gauge.MaxValue := A('INVENTOR').QueryRecCount;
  Gauge.Progress := 0;


  While Not A('INVENTOR').Eof do begin
    mRecordNum := tdbfield('INVENTOR','INVNUM');
    if mRecordNum ='' then begin
      mRecordNum := 'REC'+inttostr(A('INVENTOR').recno);
      GetTable('INVENTOR').Edit;
      getfield('INVENTOR','INVNUM').AsString := mRecordNum;
      GetTable('INVENTOR').Post;
    end;        
    A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(mRecordNum));
    If A('INV').RecordsExist then
      GetTable('INV').Edit
    else
      GetTable('INV').Append;
    GetField('INV','FDID').AsString         := mFireID;
    GetField('INV','INVNUM').AsString       := mRecordNum;
    GetField('INV','DESCR').AsString        := GetField('INVENTOR','DESC').AsString;
    GetField('INV','SERNUM').AsString       := GetField('INVENTOR','SERNUM').AsString;
    GetField('INV','MANUFACT').AsString     := GetField('INVENTOR','MANUFACT').AsString;
    GetField('INV','MODEL').AsString        := GetField('INVENTOR','MODEL').AsString;
    GetField('INV','PURCHASEDATE').AsString := GetField('INVENTOR','PURDATE').AsString;
    GetField('INV','QUANTITY').AsString     := GetField('INVENTOR','QUANTITY').AsString;

    GetField('INV','ITEMSIZE').AsString     := GetField('INVENTOR','CHAR1').AsString;
    GetField('INV','COST').AsString         := GetField('INVENTOR','COST').AsString;
    GetField('INV','VALUESQL').AsString     := GetField('INVENTOR','VALUE').AsString;
    GetField('INV','EXPLIFE').AsString      := GetField('INVENTOR','EXPLIFE').AsString;

    If A('INVSUBTYPE').ExactQueryLocate('CODE',tdbfield('INVENTOR','SUBTYPE')) then begin
      if tdbfield('INVSUBTYPE','TYPE') = '' then
        GetField('INV','TYPE').AsString         := 'GEN'
      else
        GetField('INV','TYPE').AsString         := tdbfield('INVSUBTYPE','TYPE');
      GetField('INV','INVSUBTYPEID').AsString := GetField('INVSUBTYPE','INVSUBTYPEID').AsString;
    end else
      GetField('INV','TYPE').AsString         := 'GEN';

    If A('INVOWNER').ExactQueryLocate('CODE',tdbfield('INVENTOR','OWNCODE')) then
      GetField('INV','INVOWNERID').AsString := GetField('INVOWNER','INVOWNERID').AsString;
    If A('ROLODEX').ExactQueryLocate('CODE',tdbfield('INVENTOR','VENDCODE')) then
      GetField('INV','ROLODEXID').AsString := GetField('ROLODEX','ROLODEXID').AsString;
    If A('INVLOC').ExactQueryLocate('MAINCODE',tdbfield('INVENTOR','MAINCODE')) then
      GetField('INV','INVLOCID').AsString := GetField('INVLOC','INVLOCID').AsString;
    GetTable('INV').Post;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('INVENTOR').Skip(1);
  end;
  CloseApollo('INVENTOR');
  CloseApollo('INV');
  CloseApollo('INVSUBTYPE');
  CloseApollo('INVOWNER');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INVSERVHIST');
  CloseApollo('ROLODEX');
  ShowMessage('Done');

end;

procedure TConvEntryForm.INVLOCPERSButtonClick(Sender: TObject);
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

procedure TConvEntryForm.InvServHistButtonClick(Sender: TObject);
begin
  inherited;
  Net_Open(DirectoryField.Text + 'INVMASTS.DBF','S','INVMASTS');
  A('INVMASTS').SetOrder(0);
  Gauge.MaxValue := A('INVMASTS').RecCount;

  Open_Query('INVSERVTYPE',False,'SELECT * FROM INVSERVTYPE');
  Open_Query('INVSERVHIST',true,'SELECT * FROM INVSERVHIST WHERE 1=2');
  Open_Query('INV',False,'SELECT INVNUM, INVID FROM INV');
  Open_Query('PERS',False,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('ROLODEX',False,'SELECT VENDNUM, ROLODEXID FROM ROLODEX');

  While Not A('INVMASTS').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    If Not (tdbField('INVMASTS','INVNUM') = '') and A('INV').ExactQueryLocate('INVNUM',tdbField('INVMASTS','INVNUM')) then begin
      A('INVSERVHIST').UpdateSql('SELECT * FROM INVSERVHIST WHERE INVID = ' + AddExpr(tdbfield('INV','INVID')) +
                               ' AND DATEDONE = ' +  FormatDateTimeForSql(GetField('INVMASTS','DATE').AsDateTime,'3') +
                               ' AND DESCR =' + AddExpr(tdbfield('INVMASTS','DESC')));
      A('INVSERVHIST').Edit;
    end else
      A('INVSERVHIST').Append;

      GetField('INVSERVHIST','INVSERVFORM').AsString := 'INVSERV';

    If Not (tdbField('INVMASTS','INVNUM') = '') and A('INV').ExactQueryLocate('INVNUM',tdbField('INVMASTS','INVNUM')) then
      GetField('INVSERVHIST','INVID').AsString            := GetField('INV','INVID').AsString;

      If Not (tdbField('INVMASTS','TYPE') = '') and A('INVSERVTYPE').ExactQueryLocate(['INVSERVFORM','CODE'],['INVSERV',tdbField('INVMASTS','TYPE')]) then
        GetField('INVSERVHIST','INVSERVTYPEID').AsString := GetField('INVSERVTYPE','INVSERVTYPEID').AsString;

      If Not (tdbField('INVMASTS','VENDNUM') = '') and A('ROLODEX').ExactQueryLocate('VENDNUM',tdbField('INVMASTS','VENDNUM')) then
        GetField('INVSERVHIST','ROLODEXID').AsString  := GetField('ROLODEX','ROLODEXID').AsString;

      GetField('INVSERVHIST','DATEDONE').AsString := GetField('INVMASTS','DATE').AsString;
      GetField('INVSERVHIST','TOTALCOST').AsFloat := GetField('INVMASTS','COST').AsFloat;
      GetField('INVSERVHIST','NARR').AsString     := GetField('INVMASTS','NARR').AsString;
      GetField('INVSERVHIST','DESCR').AsString    := GetField('INVMASTS','DESC').AsString;

      A('INVSERVHIST').Post;

    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('INVMASTS').Skip(1);
  end;

  CloseApollo('INVMASTS');
  CloseApollo('ROLODEX');
  CloseApollo('INV');
  CloseApollo('PERS');
  CloseApollo('INVSERVTYPE');
  CloseApollo('INVSERVHIST');
  Gauge.Progress := 0;
  ShowMessage('Done');
end;

procedure TConvEntryForm.InvTabShow(Sender: TObject);
begin
  inherited;
  InvSubTypeBrowse.Setup('INVSUBTYPE',TELSInvSubTypeForm,ELSInvSubTypeNewRecord);
end;

procedure TConvEntryForm.ELSInvSubTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;


procedure TConvEntryForm.TrainAtt2ButtonClick(Sender: TObject);
Var DateTimeAttend : String;
begin
  inherited;
  Net_Open(DirectoryField.Text + 'TRAINATT.DBF','S','TRAINATT');
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

end;

procedure TConvEntryForm.TruckButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');

  Net_Open(DirectoryField.Text + 'TRUCK.DBF','S','TRUCK');
  While Not A('TRUCK').Eof do begin
    A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + edbfield('TRUCK','INVNUM'));
    If A('INV').RecordsExist then
      GetTable('INV').Edit
    else
      GetTable('INV').Append;
    GetField('INV','FDID').AsString      := mFireID;
    GetField('INV','TYPE').AsString      := 'TRUCK';
    GetField('INV','INVNUM').AsString    := tdbfield('TRUCK','INVNUM');
    GetField('INV','UNITNUM').AsString   := tdbfield('TRUCK','UNITNUM');
    GetField('INV','DESCR').AsString     := tdbfield('TRUCK','DESC');
    GetField('INV','N5AU').AsString      := GetN5AU;
    GetField('INV','N5AORT').AsString    := tdbfield('TRUCK','NFIRSTYPE');
    GetField('INV','INCLUDE').AsString   := 'Y';
    GetTable('INV').Post;
    A('TRUCK').Skip(1);
  end;
  CloseApollo('TRUCK');
  CloseApollo('INV');

  ShowMessage('Done');
end;

procedure TConvEntryForm.PersMedButtonClick(Sender: TObject);
begin
  Open_Query('PERSMED',true,'SELECT * FROM PERSMED WHERE 1=2');

  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','MEMCODE');
  While Not A('MEMCODE').Eof do begin
    If tdbfield('MEMCODE','FIELD') = 'MEDTYPE' then begin
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

  ShowMessage('Done');
end;

procedure TConvEntryForm.PersBloodTypeButtonClick(Sender: TObject);
begin
  Open_Query('PERSBLOODTYPE',true,'SELECT * FROM PERSBLOODTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','MEMCODE');
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

  ShowMessage('Done');
end;

procedure TConvEntryForm.PERSMEDHISTButtonClick(Sender: TObject);
Var PersMedID : String;
    PersID    : String;
    DateDone  : String;
begin
  Open_Query('PERSMEDHIST',true,'SELECT * FROM PERSMEDHIST WHERE 1=2');
  Open_Query('PERS',false,'SELECT PERSID FROM PERS WHERE 1=2');
  Open_Query('PERSMED',false,'SELECT CODE, PERSMEDID FROM PERSMED');

  Net_Open(DirectoryField.Text + 'MEDHIST.DBF','S','MEDHIST');
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

procedure TConvEntryForm.PersInvQualButtonClick(Sender: TObject);
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


procedure TConvEntryForm.NFIRSSTRClick(Sender: TObject);
Var Fdid   : String;
    IncNum : String;
    ExpNum : String;
begin
  Net_Open(DirectoryField.Text + 'NFIRSSTR.DBF','S','OLDNFIRSSTR');

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


procedure TConvEntryForm.NISTYPEButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('ELSTRAINTYPE',false,'SELECT * FROM ELSTRAINTYPE');
  Open_Query('NISTYPE',true,'SELECT * FROM NISTYPE WHERE 1=2');

  While Not A('ELSTRAINTYPE').Eof do begin
    If (tdbfield('ELSTRAINTYPE','COURSE') = '') and (GetField('ELSTRAINTYPE','NIPTYPEID').AsInteger > 0) then begin
      A('NISTYPE').UpdateSQL('SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + GetField('ELSTRAINTYPE','NIPTYPEID').AsString + ' AND CODE = ' + edbfield('ELSTRAINTYPE','CODE'));
      PutInUpdateMode('NISTYPE');
      GetField('NISTYPE','FDID').AsString      := mFireID;
      GetField('NISTYPE','CODE').AsString      := GetField('ELSTRAINTYPE','CODE').AsString;
      GetField('NISTYPE','NIPTYPEID').AsString := GetField('ELSTRAINTYPE','NIPTYPEID').AsString;
      GetField('NISTYPE','DESCR').AsString     := GetField('ELSTRAINTYPE','DESCR').AsString;
      GetTable('NISTYPE').Post;
    end;
    A('ELSTRAINTYPE').Skip(1);
  end;
  CloseApollo('ELSTRAINTYPE');
  CloseApollo('NISTYPE');

  ShowMessage('Done');
  ELSTrainTypeBrowse.Setup('ELSTRAINTYPE',TELSTrainTypeForm,ELSTrainTypeNewRecord);
end;

procedure TConvEntryForm.NITabShow(Sender: TObject);
begin
  inherited;
  ELSEventTypeBrowse.Setup('ELSEVENTTYPE',TELSEventTypeForm,ELSEventTypeNewRecord);
  ELSTrainTypeBrowse.Setup('ELSTRAINTYPE',TELSTrainTypeForm,ELSTrainTypeNewRecord);
end;

procedure TConvEntryForm.NITRAINCAT1ButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('ELSTRAINTYPE',false,'SELECT * FROM ELSTRAINTYPE WHERE 1=2');
  Open_Query('NITRAINCAT1',true,'SELECT * FROM NITRAINCAT1 WHERE 1=2');

  Net_Open(DirectoryField.Text + 'TRCOURSE.DBF','S','TRCOURSE');

  While Not A('TRCOURSE').Eof do begin
    A('ELSTRAINTYPE').UpdateSQL('SELECT * FROM ELSTRAINTYPE WHERE CODE = ' + edbfield('TRCOURSE','COURSECODE'));
    If A('ELSTRAINTYPE').RecordsExist then begin
      If (tdbfield('ELSTRAINTYPE','COURSE') = 'Y') then begin
        A('NITRAINCAT1').UpdateSQL('SELECT * FROM NITRAINCAT1 WHERE CODE = ' + edbfield('TRCOURSE','COURSECODE'));
        PutInUpdateMode('NITRAINCAT1');
        GetField('NITRAINCAT1','CODE').AsString       := GetField('TRCOURSE','COURSECODE').AsString;
        GetField('NITRAINCAT1','DESCR').AsString      := GetField('TRCOURSE','DESC').AsString;
        GetField('NITRAINCAT1','QUALPERIOD').AsString := GetField('TRCOURSE','REFRPER').AsString;
        GetField('NITRAINCAT1','POINT').AsString      := GetField('TRCOURSE','POINT').AsString;
        GetField('NITRAINCAT1','EVLENGTH').AsString   := GetField('TRCOURSE','HOURS').AsString;
        GetTable('NITRAINCAT1').Post;
      end;
    end;
    A('TRCOURSE').Skip(1);
  end;
  CloseApollo('TRCOURSE');
  CloseApollo('ELSTRAINTYPE');
  CloseApollo('NISTYPE');

  ShowMessage('Done');
end;

procedure TConvEntryForm.ELSEventTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TConvEntryForm.ElsTrainTypeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('ELSTRAINTYPE',true,'SELECT * FROM ELSTRAINTYPE WHERE 1=2');
  Net_Open(DirectoryField.Text + 'TRCOURSE.DBF','S','TRCOURSE');

  While Not A('TRCOURSE').Eof do begin
    A('ELSTRAINTYPE').UpdateSQL('SELECT * FROM ELSTRAINTYPE WHERE CODE = ' + edbfield('TRCOURSE','COURSECODE'));
    PutInUpdateMode('ELSTRAINTYPE');
    GetField('ELSTRAINTYPE','CODE').AsString    := GetField('TRCOURSE','COURSECODE').AsString;
    GetField('ELSTRAINTYPE','OLDTYPE').AsString := GetField('TRCOURSE','TYPE').AsString;
    GetField('ELSTRAINTYPE','DESCR').AsString   := GetField('TRCOURSE','DESC').AsString;
    GetTable('ELSTRAINTYPE').Post;
    A('TRCOURSE').Skip(1);
  end;
  CloseApollo('ELSTRAINTYPE');
  CloseApollo('TRCOURSE');

  ShowMessage('Done');
  ELSTrainTypeBrowse.Setup('ELSTRAINTYPE',TELSTrainTypeForm,ELSTrainTypeNewRecord);
end;

procedure TConvEntryForm.ELSTrainTypeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

function GetTableName(TableNameVar: String): String;
begin
  If TableNameVar = 'INC' then
    GetTableName := 'NFIRSMAIN'
  else
    GetTableName := TableNameVar;
end;

procedure TConvEntryForm.NIButtonClick(Sender: TObject);
Var DateTimeStart   : TDateTime;
    DateTimeEnd     : TDateTime;
    NIPersInvTypeID : String;
    NITrainCat1Code : String;
    NIEVID          : String;
    NIID            : String;
begin
  inherited;
  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE');
  Open_Query('ELSTRAINTYPE',false,'SELECT * FROM ELSTRAINTYPE');
  Open_Query('LOCATION',false,'SELECT * FROM LOCATION');
  Open_Query('PERS',false,'SELECT PERSCODE, PERSID FROM PERS');
  Open_Query('NITRAINCAT1',false,'SELECT * FROM NITRAINCAT1');

  Open_Query('NI',       true,'SELECT * FROM NI WHERE 1=2');
  Open_Query('NIATT',    true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NIPERSINV',true,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NIEV',     true,'SELECT * FROM NIEV WHERE 1=2');
  Open_Query('NIEVATT',  true,'SELECT * FROM NIEVATT WHERE 1=2');

  Net_Open(DirectoryField.Text + 'TRAINATT.DBF','S','TRAINATT');
  A('TRAINATT').SetOrder(2);

  Net_Open(DirectoryField.Text + 'TREVENT.DBF','S','TREVENT');
  A('TREVENT').SetOrder(2);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('TREVENT').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  Gauge.MaxValue := A('TREVENT').QueryRecCount;
  Gauge.Progress := 0;

  While Not A('TREVENT').Eof do begin
    NITrainCat1Code := '';
    NIEVID          := '';

    Gauge.Progress  := Gauge.Progress + 1;
    Application.ProcessMessages;

    AddStatusListBox(ConvBox,'Converting code ' + dbfield('TREVENT','CODE'));


    A('NI').UpdateSQL('SELECT * FROM NI WHERE CODE = ' + edbfield('TREVENT','CODE'));
    PutInUpdateMode('NI');

    GetField('NI','CODE').AsString := dbfield('TREVENT','CODE');
    DateTimeStart                             := GetField('TREVENT','DATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','TIME'));
    If Not (alltrim(substr(tdbfield('TREVENT','FINTIME'),1,2)) = '') and (tdbfield('TREVENT','FINTIME') < tdbfield('TREVENT','TIME')) then
      DateTimeEnd                               := GetField('TREVENT','DATE').AsDateTime + 1 + GetRealTime(tdbfield('TREVENT','FINTIME'))
    else
      DateTimeEnd                               := GetField('TREVENT','DATE').AsDateTime +  GetRealTime(tdbfield('TREVENT','FINTIME'));

    GetField('NI','FDID').AsString            := mFireID;
    GetField('NI','POINT').AsFloat            := GetField('TREVENT','POINT').AsFloat;
    GetField('NI','EVLENGTH').AsFloat         := GetField('TREVENT','HOURS').AsFloat;
    GetField('NI','NARR').AsString            := GetField('TREVENT','NARRATIVE').AsString; 
    GetField('NI','DATETIMESTART').AsDateTime := DateTimeStart;
    GetField('NI','DATETIMEEND').AsDateTime   := DateTimeEnd;
    GetField('NI','LOCMISC').AsString         := GetField('TREVENT','OTHLOC').AsString;

    If A('LOCATION').ExactQueryLocate('CODE',tdbfield('TREVENT','LOCATION')) then
      GetField('NI','LOCATIONID').AsString      := GetField('LOCATION','LOCATIONID').AsString;

    If A('ELSTRAINTYPE').ExactQueryLocate('CODE',tdbfield('TREVENT','COURSECODE')) then begin
      Getfield('NI','NIPTYPEID').AsString := Getfield('ELSTRAINTYPE','NIPTYPEID').AsString;
      Getfield('NI','NISTYPEID').AsString := Getfield('ELSTRAINTYPE','NISTYPEID').AsString;
      GetField('NI','DESCR').AsString     := Getfield('ELSTRAINTYPE','DESCR').AsString;
      If tdbfield('ELSTRAINTYPE','COURSE') = 'Y' then
        NITrainCat1Code := tdbfield('TREVENT','COURSECODE');
    end;

    If A('NISTYPE').ExactQueryLocate('CODE',tdbfield('TREVENT','COURSECODE')) then
      Getfield('NI','NISTYPEID').AsString := Getfield('NISTYPE','NISTYPEID').AsString;

    GetTable('NI').Post;

    NIID := GetField('NI','NIID').AsString;

    If Not (tdbfield('TREVENT','COORDCODE') = '') then begin
      If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('TREVENT','COORDCODE')) then begin
        NIPersInvTypeID := SQLLookUp('OIC','CODE','NIPERSINVTYPE','NIPERSINVTYPEID');
        A('NIPERSINV').UpdateSQL('SELECT * FROM NIPERSINV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND NIPERSINVTYPEID = ' + pkValue(NIPersInvTypeID));
        PutInUpdateMode('NIPERSINV');
        GetField('NIPERSINV','NIID').AsString            := GetField('NI','NIID').AsString;
        GetField('NIPERSINV','NIPERSINVTYPEID').AsString := NIPersInvTypeID;
        GetField('NIPERSINV','PERSID').AsString          := Getfield('PERS','PERSID').AsString;
        GetTable('NIPERSINV').Post;
      end
    end;
    
    If Not (NITrainCat1Code = '') then begin
      If A('NITRAINCAT1').ExactQueryLocate('CODE',NITrainCat1Code) then begin
        RunSQL('UPDATE NI SET DESCR = ' + edbfield('NITRAINCAT1','DESCR') + ' WHERE NIID = ' + NIID);
        A('NIEV').UpdateSQL('SELECT * FROM NIEV WHERE NIID = ' + GetField('NI','NIID').AsString + ' AND NITRAINCAT1ID = ' + GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
        PutInUpdateMode('NIEV');
        GetField('NIEV','NIID').AsString          := GetField('NI','NIID').AsString;
        GetField('NIEV','NITRAINCAT1ID').AsString := GetField('NITRAINCAT1','NITRAINCAT1ID').AsString;
        GetField('NIEV','DATETIMESTART').AsString := GetField('NI','DATETIMESTART').AsString;
        GetField('NIEV','DATETIMEEND').AsString   := GetField('NI','DATETIMEEND').AsString;
        GetField('NIEV','EVLENGTH').AsString      := GetField('NI','EVLENGTH').AsString;;
        GetTable('NIEV').Post;
        NIEVID := GetField('NIEV','NIEVID').AsString;
      end;
    end;

    A('TRAINATT').SetScope(dbfield('TREVENT','CODE'),dbfield('TREVENT','CODE'));
    While Not A('TRAINATT').Eof do begin
      If A('PERS').ExactQueryLocate('PERSCODE',tdbfield('TRAINATT','MEMCODE')) then begin
        A('NIATT').UpdateSQL('SELECT * FROM NIATT WHERE PERSID = ' + GetField('PERS','PERSID').AsString + ' AND NIID = ' + GetField('NI','NIID').AsString);
        PutInUpdateMode('NIATT');
        GetField('NIATT','NIID').AsString     := GetField('NI','NIID').AsString;
        GetField('NIATT','PERSID').AsString   := GetField('PERS','PERSID').AsString;
        GetField('NIATT','EVLENGTH').AsString := GetField('TRAINATT','LENGTH').AsString;;
        GetField('NIATT','POINT').AsString    := GetField('TREVENT','POINT').AsString;
        GetTable('NIATT').Post;

        If Not (NIEVID = '') then begin
          A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIEVID = ' + GetField('NIEV','NIEVID').AsString + ' AND PERSID = ' + GetField('PERS','PERSID').AsString);
          PutInUpdateMode('NIEVATT');
          GetField('NIEVATT','NIID').AsString     := GetField('NI','NIID').AsString;
          GetField('NIEVATT','NIEVID').AsString   := NIEVID;
          GetField('NIEVATT','PERSID').AsString   := GetField('PERS','PERSID').AsString;
          GetTable('NIEVATT').Post;
        end;
        
      end;
      A('TRAINATT').Skip(1);
    end;

    A('TREVENT').Skip(1);
  end;

  CloseApollo('NISTYPE');
  CloseApollo('ELSTRAINTYPE');
  CloseApollo('NI');
  CloseApollo('TREVENT');
  CloseApollo('TRAINATT');

  CloseApollo('LOCATION');
  CloseApollo('NITRAINCAT1');
  CloseApollo('PERS');
  CloseApollo('NIATT');
  CloseApollo('NIPERSINV');
  CloseApollo('NIEV');
  CloseApollo('NIEVATT');
  ShowMessage('Finished');
end;

procedure TConvEntryForm.N5DistrictButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('N5DISTRICT',true,'SELECT * FROM N5DISTRICT WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','INCCODE');

  While Not A('INCCODE').Eof do begin
    If (tdbfield('INCCODE','FIELD') = 'DISTRICT2') then begin
      A('N5DISTRICT').UpdateSQL('SELECT * FROM N5DISTRICT WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('N5DISTRICT');
      GetField('N5DISTRICT','FDID').AsString   := mFireID;
      GetField('N5DISTRICT','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('N5DISTRICT','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('N5DISTRICT').Post;
    end;
    A('INCCODE').Skip(1);
  end;
  CloseApollo('N5DISTRICT');
  CloseApollo('INCCODE');

  ShowMessage('Done');
end;

procedure TConvEntryForm.NfirsAttTaskButtonClick(Sender: TObject);
begin
  Open_Query('NFIRSATTTASK',true,'SELECT * FROM NFIRSATTTASK WHERE 1=2');
  Open_Query('SCHDSHIFTNAME',true,'SELECT * FROM SCHDSHIFTNAME WHERE 1=2');
  Open_Query('N5DISTRICT',true,'SELECT * FROM N5DISTRICT WHERE 1=2');
  Open_Query('NFIRSAPPFOCODE',true,'SELECT * FROM NFIRSAPPFOCODE WHERE 1=2');

  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','INCCODE');
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
    end else if (tdbfield('INCCODE','FIELD') = 'DISTRICT2') and Not (tdbfield('INCCODE','CODE') = '') then begin
      A('N5DISTRICT').UpdateSQL('SELECT * FROM N5DISTRICT WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('N5DISTRICT');
      GetField('N5DISTRICT','FDID').AsString   := mFireID;
      GetField('N5DISTRICT','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('N5DISTRICT','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('N5DISTRICT').Post;
    end;
    A('INCCODE').Skip(1);
  end;
  CloseApollo('NFIRSATTTASK');
  CloseApollo('SCHDSHIFTNAME');
  CloseApollo('N5DISTRICT');
  CloseApollo('INCCODE');
  CloseApollo('NFIRSAPPFOCODE');

  ShowMessage('Done');
end;

procedure TConvEntryForm.NFIRSMainButtonClick(Sender: TObject);
var nRecPerPage : Integer;
    iCount      : Integer;
    PageList    : TStringList;
    iPage       : Integer;
    mDate       : TDateTime;
begin
  inherited;
  nRecPerPage := iMax(strtoint(PaginationRecField.Value),100);
  Net_Open(DirectoryField.Text + 'INCIDENT.DBF','S','INC');
  A('INC').SetOrder(4);
  If (InitialDateField.value > 0) and (FinaldateField.Value > 0) then
    A('INC').SetScope(FormatDateTime('YYYYMMDD',InitialDateField.Value),FormatDateTime('YYYYMMDD',FinalDateField.Value));

  iCount :=  A('INC').QueryRecCount;
  CloseApollo('INC');

  PageList := CommonMakePageList(InitialDateField.Value,FinalDateField.Value,iCount,nRecPerPage);
  for iPage := 0 to PageList.Count-1 do begin
    AddStatusListBox(ConvBox,'Converting NFIRS Group ' + IntToStr(IPage+1) + ' of ' + IntToStr(PageList.Count-1));
    If iPage=0 then
      mDate := InitialDateField.Value
    else
      mDate := strtoint(pagelist[iPage-1])+1;
    ImportNfirs(mDate,strtoint(pagelist[iPage]))
  end;
  PageList.Free;
  ShowMessage(GetTimeAsString + ' Done');
end;

procedure TConvEntryForm.ImportNfirs(mInitDate,mFinalDate: TDateTime);
Var Fdid        : String;
    IncNum      : String;
    ExpNum      : String;
    NfirsMainID : String;
    StartTime   : TDatetime;
    EndTime     : TDatetime;
begin
  Net_Open(DirectoryField.Text + 'INCIDENT.DBF','S','INC');
  A('INC').SetOrder(4);
  If (mInitDate > 0) and (mFinalDate > 0) then
    A('INC').SetScope(FormatDateTime('YYYYMMDD',mInitDate),FormatDateTime('YYYYMMDD',mFinalDate));

  Net_Open(DirectoryField.Text + 'APPINC.DBF','S','APPINC');
  A('APPINC').SetOrder(2);

  Net_Open(DirectoryField.Text + 'INCATT.DBF','S','INCATT');
  A('INCATT').SetOrder(2);


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

      If SingleDateCheck.Checked then
        ConvertSingleDateNfirsMain
      else
        ConvertNfirsMain;

      CommonConvertNfirsMain;

      A('NFIRSMAIN').Post;
      If GetField('NFIRSMAIN','NFIRSMAINID').AsInteger > 0 then
        NFIRSMainID := GetField('NFIRSMAIN','NFIRSMAINID').AsString
      else
        NFIRSMainID := A('NFIRSMAIN').NewPk;

      ConvertNfirsApp(Fdid, IncNum, NfirsMainID);
      ConvertNfirsAtt(Fdid, IncNum, NfirsMainID);
    end;
    A('INC').Skip(1);
    Application.processmessages;
  end;

  CommonCloseNfirsMain;

  CloseApollo('INC');
  CloseApollo('INCATT');
  CloseApollo('APPINC');
end;

procedure TConvEntryForm.InvTypeButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('INVSUBTYPE',true,'SELECT * FROM INVSUBTYPE WHERE 1=2');
  Open_Query('INVOWNER',  true,'SELECT * FROM INVOWNER WHERE 1=2');
  Open_Query('ROLODEX',  true,'SELECT * FROM ROLODEX WHERE 1=2');

  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','INVCODE');
  While Not A('INVCODE').Eof do begin

    If (tdbfield('INVCODE','FIELD') = 'INVTYPE') and Not (tdbfield('INVCODE','CODE') = '') then begin
      A('INVSUBTYPE').UpdateSQL('SELECT * FROM INVSUBTYPE WHERE CODE = ' + edbfield('INVCODE','CODE'));
      PutInUpdateMode('INVSUBTYPE');
      GetField('INVSUBTYPE','CODE').AsString   := GetField('INVCODE','CODE').AsString;
      GetField('INVSUBTYPE','DESCR').AsString  := GetField('INVCODE','DESC').AsString;
      GetTable('INVSUBTYPE').Post;

    end else if (tdbfield('INVCODE','FIELD') = 'OWNER') and Not (tdbfield('INVCODE','CODE') = '') then begin
      A('INVOWNER').UpdateSQL('SELECT * FROM INVOWNER WHERE CODE = ' + edbfield('INVCODE','CODE'));
      PutInUpdateMode('INVOWNER');
      GetField('INVOWNER','CODE').AsString     := GetField('INVCODE','CODE').AsString;
      GetField('INVOWNER','DESCR').AsString    := GetField('INVCODE','DESC').AsString;
      GetTable('INVOWNER').Post;

    end else if (tdbfield('INVCODE','FIELD') = 'VENDOR') and Not (tdbfield('INVCODE','CODE') = '') then begin
      A('ROLODEX').UpdateSQL('SELECT * FROM ROLODEX WHERE CODE = ' + edbfield('INVCODE','CODE'));
      PutInUpdateMode('ROLODEX');
      GetField('ROLODEX','CODE').AsString      := GetField('INVCODE','CODE').AsString;
      GetField('ROLODEX','COMPANY').AsString   := GetField('INVCODE','DESC').AsString;
      GetField('ROLODEX','INVENTORY').AsString := 'Y';
      GetTable('ROLODEX').Post;
      
    end;
    
    A('INVCODE').Skip(1);
  end;
  CloseApollo('INVSUBTYPE');
  CloseApollo('INVCODE');
  CloseApollo('INVOWNER');
  CloseApollo('ROLODEX');
  ShowMessage('Done');
end;

procedure TConvEntryForm.LocationButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('LOCATION',true,'SELECT * FROM LOCATION WHERE 1=2');
  Net_Open(DirectoryField.Text + 'SYSCODE.DBF','S','INCCODE');

  While Not A('INCCODE').Eof do begin
    If (tdbfield('INCCODE','FIELD') = 'LOCATION') then begin
      A('LOCATION').UpdateSQL('SELECT * FROM LOCATION WHERE CODE = ' + edbfield('INCCODE','CODE'));
      PutInUpdateMode('LOCATION');
      GetField('LOCATION','FDID').AsString   := mFireID;
      GetField('LOCATION','CODE').AsString   := GetField('INCCODE','CODE').AsString;
      GetField('LOCATION','DESCR').AsString  := GetField('INCCODE','DESC').AsString;
      GetTable('LOCATION').Post;
    end;
    A('INCCODE').Skip(1);
  end;
  CloseApollo('LOCATION');
  CloseApollo('INCCODE');

  ShowMessage('Done');
end;

procedure TConvEntryForm.MainCodeButtonClick(Sender: TObject);
Var ConvCode        : String;
    InvLocID        : String;
    StationParentID : String;
    PersParentID    : String;
    AppParentID     : String;
    RolodexParentID : String;
begin
  inherited;

  Net_Open(DirectoryField.Text + '\LOCATION.DBF','S','LOCATION');
  A('LOCATION').SetOrder(2);
  A('LOCATION').GoTop;

  Gauge.Visible  := true;
  Gauge.MaxValue := A('LOCATION').QueryRecCount;
  Gauge.Progress := 0;

  Net_Open(DirectoryField.Text + '\SUBLOC.DBF','S','SUBLOC');
  A('SUBLOC').SetOrder(1);


  StationParentID := '';
  PersParentID    := '';
  AppParentID     := '';
  RolodexParentID := '';

  Open_Query('INVLOC',true,'SELECT * FROM INVLOC WHERE 1=2');

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('PERS'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Personnel';
  GetField('INVLOC','FDID').AsString      := mFireID;
  GetField('INVLOC','MAINCODE').AsString  := 'PERS';
  GetField('INVLOC','FULLDESCR').AsString := 'Personnel';
  GetField('INVLOC','CONVCODE').AsString  := 'MEMBER';
  A('INVLOC').Post;
  PersParentID:= GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('APP'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Apparatus';
  GetField('INVLOC','FDID').AsString      := mFireID;
  GetField('INVLOC','MAINCODE').AsString  := 'APP';
  GetField('INVLOC','FULLDESCR').AsString := 'Apparatus';
  A('INVLOC').Post;
  AppParentID := GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('VEND'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Vendors';
  GetField('INVLOC','FDID').AsString      := mFireID;
  GetField('INVLOC','MAINCODE').AsString  := 'VEND';
  GetField('INVLOC','FULLDESCR').AsString := 'Vendors';
  A('INVLOC').Post;
  RolodexParentID := GetField('INVLOC','INVLOCID').AsString;

  A('INVLOC').UpdateSQL('SELECT * FROM INVLOC WHERE MAINCODE = ' + AddExpr('FS'));
  If A('INVLOC').RecordsExist then
    A('INVLOC').Edit
  else
    A('INVLOC').Append;
  GetField('INVLOC','DESCR').AsString     := 'Fire Stations';
  GetField('INVLOC','FDID').AsString      := mFireID;
  GetField('INVLOC','MAINCODE').AsString  := 'FS';
  GetField('INVLOC','FULLDESCR').AsString := 'Fire Stations';
  A('INVLOC').Post;
  StationParentID := GetField('INVLOC','INVLOCID').AsString;


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
end;


end.
