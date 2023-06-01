unit PersCallIn;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  OvcBase,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  AlpinePanel,
  Grids,
  BaseGrid,
  AdvGrid,
  htmlbtns,
  alpinecheck,
  ALPINEDATETIME,
  AlpineLookGrid,
  Pers,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  NormalBase,
  AlpineMemo,
  AdvGroupBox,
  AdvSplitter,
  AdvObj,
  AlpineTMSStringGrid,Search;

type
  TPersonCallInForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    AdvSplitter1: TAdvSplitter;
    FRDSPanel: TAdvPanel;
    FRDSTopPanel: TAlpinePanel;
    Label40: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    MCIQualField: TAlpineLookup;
    MCIResponseField: TAlpineLookup;
    MCIEtaField: TAlpineEdit;
    MCIButton: TAlpineGlowButton;
    PersMCIListBrowse: TAlpineBlockBrowse;
    RespAppPanel: TPanel;
    PersFdidBrowse: TAlpineBlockBrowse;
    PersDevicePanel: TAlpinePanel;
    RespAppTopPanel: TAlpinePanel;
    Label3: TLabel;
    EmailAppLinkButton: TAlpineGlowButton;
    RespEMailField: TAlpineEdit;
    ResetAppPasswordButton: TAlpineGlowButton;
    ResponderField: TAlpineCheckBox;
    PersDeviceBrowse: TAlpineTMSStringGrid;
    SelfOnlyField: TAlpineCheckBox;
    NoDispHistField: TAlpineCheckBox;
    PersDeviceButtonPanel: TAdvPanel;
    SendPushButton: TAlpineGlowButton;
    DateTimeGPSField: TAlpineDateTime;
    LatitudeField: TAlpineEdit;
    LongitudeField: TAlpineEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    MapButton: TAlpineGlowButton;
    RespStatHistBrowse: TAlpineBlockBrowse;
    AlpinePanel1: TAlpinePanel;
    Label7: TLabel;
    Label9: TLabel;
    RespLengthField: TAlpineEdit;
    RespStatDateField: TAlpineDateTime;
    Label8: TLabel;
    Label10: TLabel;
    RespStatIDField: TAlpineLookup;
    SendPushToAll: TAlpineGlowButton;
    DeletePersDeviceButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure MCIButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EmailAppLinkButtonClick(Sender: TObject);
    procedure ResetAppPasswordButtonClick(Sender: TObject);
    procedure SendPushButtonClick(Sender: TObject);
    procedure MapButtonClick(Sender: TObject);
    procedure SendPushToAllClick(Sender: TObject);
    procedure DeletePersDeviceButtonClick(Sender: TObject);
  private
    { Private declarations }
    mIsLaw : String;
    procedure MCIListFormNewRecord(DataSet: TDataSet);
    procedure LoadPersDeviceBrowse;
  public
    { Public declarations }
    class procedure LoadMCIHist(PersID: String; Var PersLatitude, PersLongitude: String);

  end;

var
  PersonCallInForm: TPersonCallInForm;

implementation
uses GenFunc,
     AppLst,
     CommonFunc,
     FormFunc,
     CommonVar,
     SecSet,
     MCIList,
     CommonPage,
     CommonCloud,
     GisSys,
     CommonDisp,
     CommonDispVar,
     GisFunc,
     WinMapDef,
     RespStatHist,
     PersFdid;

{$R *.dfm}
{$I rednmx.inc}


procedure TPersonCallInForm.DeletePersDeviceButtonClick(Sender: TObject);
begin
  if not(PersDeviceBrowse.GetValue('PERSDEVICEID') = '') then begin
    If not(BooleanMessageDlg('Delete this device?'+#13#10#13#10+PersDeviceBrowse.GetValue('DEVICE')+' - '+PersDeviceBrowse.GetValue('OS')+#13#10+'Last Access: '+PersDeviceBrowse.GetValue('DATETIMEUPDATE')+#13#10)) then
      exit;
    try
      RunSQL('DELETE FROM PERSDEVICE WHERE PERSDEVICEID = '+pkValue(PersDeviceBrowse.GetValue('PERSDEVICEID')));
    finally
      LoadPersDeviceBrowse;
    end;
  end;
end;

procedure TPersonCallInForm.EmailAppLinkButtonClick(Sender: TObject);
var myPersCode, myFDID : string;
    myEmail,mError   : string;
    pers       : TApolloData;

begin
  If not(BooleanMessageDlg('Send Responder App email to '+RespEmailField.Text+'?')) then
    exit;

  try
    pers := Open_Query(true,'SELECT * FROM PERS WHERE PERSID = '+pkValue(pk));
    myPersCode  := tdbfield(pers,'PERSCODE');
    myEmail     := tdbfield(pers,'EMAIL');

    If not(tdbfield(pers,'RESPONDER') = 'Y') then begin
      pers.Edit;
      GetField(pers,'RESPONDER').AsString := 'Y';
      pers.Post;
      ResponderField.Checked := True;
    end;
  finally
    pers.free;
  end;

  If (myEmail = '') then begin
    MessageDlg('Email address is missing.'+#13+#10+''+#13+#10+'Please add and save a valid email address.', mtWarning, [mbOK], 0);
    exit;
  end;

  If (myPersCode = '') then begin
    MessageDlg('ID / Badge Number is missing.'+#13+#10+''+#13+#10+'Please add and save a personnel id number on the General Tab.', mtWarning, [mbOK], 0);
    exit;
  end;

  myFDID := mFireID; // registration code typcially same as compiled FDID
  if ((mIsLaw = 'Y') and (mFireID = 'HARFO')) then myFDID := 'HARSO';

  If SendResponderUpdateEmail(GlobalAdoConnection,myFDID,RespEmailField.Text,mError) then
    MessageDlg('Responder App email sent to: '+myEmail, mtInformation, [mbOK], 0)
  else
    MessageDlg('Email not sent.'+#13+#10+''+#13+#10+'There was an error sending the email. Please try again.'+crlf+'Error:'+mError, mtWarning, [mbOK], 0);
end;

procedure TPersonCallInForm.FormCreate(Sender: TObject);
begin
  PersMCIListBrowse.Setup('PERSMCILIST','PERSID',PK,TMCIListForm,MCIListFormNewRecord);
  mIsLaw := '';
  if (mFireID = 'HARFO') then begin
    PersFDIDBrowse.Setup('HARFOPERSFDID','PERSID',PK,TPersFDIDForm,MCIListFormNewRecord);
    try
      mIsLaw := SQLLookup(mFireID,'FDID','MOBSET','LAWSYSTEM');
    except
    end;
  end else begin
    PersFDIDBrowse.Setup('PERSFDID','PERSID',PK,TPersFDIDForm,MCIListFormNewRecord);
  end;

end;

procedure TPersonCallInForm.MCIListFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('PERSID').AsString := pk;
end;

procedure TPersonCallInForm.ResetAppPasswordButtonClick(Sender: TObject);
begin
  try
    If BooleanMessageDlg('Reset Responder password to default?') then begin
      RunSql('UPDATE PERS SET RESPONDERPASSWORD = NULL WHERE PERSID = ' + PK);
      If not(RespEmailField.Text = '') then
        SendSMTPEmail(REDNMXEMAIL_SERVER,REDNMXEMAIL_USER,REDNMXEMAIL_PW,'RedNMX Mobile Services <noreply@alpinesoftware.com>','RedNMX Mobile Services <noreply@alpinesoftware.com>',RespEmailField.Text,'','','Password Reset for Responder App','This email was created because your Responder App password has been reset to the default. Please contact your RedNMX System administrator for any questions.',25,nil);
      MessageDlg('Responder App Password has been reset to the default.', mtInformation, [mbOK], 0)
    end;
  except
  end;
end;

procedure TPersonCallInForm.SendPushButtonClick(Sender: TObject);
var xErrMsg,xMsg,xDev,xKey : string; IsResp2 : Boolean; RespVersion : Double;
begin
  if (trim(PersDeviceBrowse.GetValue('PERSDEVICEID')) = '') then
    exit;

  If not(BooleanMessageDlg('Send a test push message to highlighted device ('+PersDeviceBrowse.GetValue('DEVICE')+') ?')) then
    exit;
  try
    If (PersDeviceBrowse.GetValue('DEVICETOKEN')='') then begin
      MessageDlg('Device is missing identification. Unable to send an alert.', mtWarning, [mbOK], 0);
      exit;
    end;

    IsResp2 := False;
    if (mIsLaw = 'Y') then IsResp2 := True;

    xMsg := 'Test alert from the RedNMX System';

    xDev := trim(PersDeviceBrowse.GetValue('DEVICETOKEN'));

    try
      RespVersion := 0;
      if not(trim(PersDeviceBrowse.GetValue('FRDSAPPVERSION')) = '') then begin
        RespVersion := AnyStrToFloat(trim(PersDeviceBrowse.GetValue('FRDSAPPVERSION')));
      end;
    except
      on e: exception do begin
        RespVersion := 0;
      end;
    end;

    if InputDlg('Sending Push Notification','Enter Message',xMsg,'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') then begin
      // check Responder app version to determine which push api to use

      if (RespVersion < 2) then begin
        // FCM - Enterprise - through 12/2022

        if (IsResp2) then
          xKey := FCM_PUSH_LAWRESPONDER_KEY
        else
          xKey := FCM_PUSH_RESPONDER_KEY;

      end else begin
        // FCM 01/2023
        if (IsResp2) then
          xKey := FCM_PUSH_LAWRESP
        else
          xKey := FCM_PUSH_RESP;
      end;

      if not(xDev = '') then
        if not(copy(xDev,1,1)='"') then
          xDev := '"' + xDev + '"';

      if SendFCMPush(xKey,'',xDev,'Responder',xMsg,'msg01.wav',xErrMsg,'',True) then
        MessageDlg(trim('Notification Success!'+#13#10#13#10+xErrMsg), mtInformation, [mbOK], 0)
      else
        MessageDlg(trim('Notification Failed.'+#13#10#13#10+'Error:'+#13#10+xErrMsg), mtWarning, [mbOK], 0);


      {// OLD ACS PUSH   - (RespVersion < 1.199)
        If SendDevicePushNotif(trim(PersDeviceBrowse.GetValue('PUSHCHANNEL')),xMsg,xDev,xErrMsg,'msg01.mp3',False,IsResp2) then
          MessageDlg(trim('Push Notification Sent!'+#13#10#13#10+xErrMsg), mtInformation, [mbOK], 0)
        else
          MessageDlg(trim('Push Notification Failed.'+#13#10#13#10+'Error:'+#13#10+xErrMsg), mtWarning, [mbOK], 0);
      }
    end;
  except
    on e: exception do begin
      MessageDlg(trim('Error attempting to send push notification.'+#13#10#13#10+'Error:'+#13#10+e.Message), mtError, [mbOK], 0);
    end;
  end;
end;

procedure TPersonCallInForm.SendPushToAllClick(Sender: TObject);
var xErrMsg, myFDID, xKey, xMsg : string; IsResp2 : Boolean;
begin
  If not(BooleanMessageDlg('Send a test push message to EVERYONE?'+#13#10#13#10+'This function will send a push alert to every registered user of the app in your RedNMX system.')) then
    exit;

  myFDID  := mFireID;
  IsResp2 := False;
  if (mIsLaw = 'Y') then begin
    IsResp2 := True;
    if (mFireID = 'HARFO') then myFDID := 'HARSO';
  end;

  // sunset send all to ACS
  {
  try
    if SendAllChannelPushNotif(myFDID,'Test Alert',xErrMsg,'msg01.mp3',IsResp2) then
      MessageDlg(trim('Push Notification Sent!'+#13#10#13#10+xErrMsg), mtInformation, [mbOK], 0)
    else
      MessageDlg(trim('Push Notification Failed.'+#13#10#13#10+'Error:'+#13#10+xErrMsg), mtWarning, [mbOK], 0);
  except
    on e: exception do begin
      MessageDlg(trim('Error attempting to send push notification.'+#13#10#13#10+'Error:'+#13#10+e.Message), mtError, [mbOK], 0);
    end;
  end;
  }


  xMsg := 'Test message from RedNMX System';
  // send all to FCM
  if InputDlg('Sending Push Notification to All','Enter Message',xMsg,'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX') then begin
    if (IsResp2) then
      xKey := FCM_PUSH_LAWRESP
    else
      xKey := FCM_PUSH_RESP;

    if SendFCMPush(xKey,'fdid_'+myFDID+'_MSG','','Responder',xMsg,'msg01.wav',xErrMsg,'',True) then
      MessageDlg(trim('Notification Success!'+#13#10#13#10+xErrMsg), mtInformation, [mbOK], 0)
    else
      MessageDlg(trim('Notification Failed.'+#13#10#13#10+'Error:'+#13#10+xErrMsg), mtWarning, [mbOK], 0);
  end;
end;

procedure TPersonCallInForm.MapButtonClick(Sender: TObject);
Var DispCall : TDispCall;
begin
  inherited;
  If Not FormExists('GisSysForm') then
    GisSysForm := TGisSysform.Create(Application);
  GisSysForm.Show;

  DispCall           := TDispCall.Create;
  DispCall.Latitude  := AnyStrToFloat(LatitudeField.Value);
  DispCall.Longitude := AnyStrToFloat(LongitudeField.Value);
  DispCall.Address   := SQLLookUp(pk,'PERSID','PERS','FNAME') + ' ' + SQLLookUp(pk,'PERSID','PERS','LNAME') + ' Location';

  If DispCall.Latitude > 0 then
    DisplayProperty(GisSysForm.GisSetVar, GisSysForm.Map,DispCall);
  DispCall.Free;
end;

procedure TPersonCallInForm.MCIButtonClick(Sender: TObject);
Var Latitude : String;
    Longitude: String;
begin
  LoadMCIHist(PK,Latitude,Longitude);
  DateTimeGPSField.Value := Now;
  LatitudeField.Value    := Latitude; 
  LongitudeField.Value   := Longitude;
  ShowMessage('FRDS test has been posted');
end;

class procedure TPersonCallInForm.LoadMCIHist(PersID: String; Var PersLatitude, PersLongitude: String);
Var DispCallID  : String;
    Latitude    : String;
    Longitude   : String;
    StrNum      : String;
    Street      : String;
    City        : String;
    State       : String;
    Zip         : String;
    MCIResponse : String;
    MCIETA      : String;
begin
  Open_Query('DISPCALL',false,'SELECT DISPCALLID FROM DISPCALL WHERE INCSTAT = ' + AddExpr('OPEN') + ' ORDER BY DATETIMEREC DESC');
  DispCallID := GetField('DISPCALL','DISPCALLID').AsString;
  CloseApollo('DISPCALL');

  Open_Query('PERS',false,'SELECT ADD1, CITY, STATE, ZIP, MCIETA, MCIRESPONSE FROM PERS WHERE PERSID = ' + PkValue(PersID));
  StrNum      := alltrim(substr(tdbfield('PERS','ADD1'),1,at(' ',tdbfield('PERS','ADD1'))));
  Street      := alltrim(substr(tdbfield('PERS','ADD1'),at(' ',tdbfield('PERS','ADD1')),60));
  City        := tdbfield('PERS','CITY');
  State       := tdbfield('PERS','STATE');
  Zip         := tdbfield('PERS','ZIP');
  MCIETA      := GetField('PERS','MCIETA').AsString;
  MCIResponse := GetField('PERS','MCIRESPONSE').AsString;
  CloseApollo('PERS');

  SetMapLatLong(StrNum,Street,'',City,State,Zip,Latitude, Longitude);
  PersLatitude  := Latitude;
  PersLongitude := Longitude;

  Open_Query('MCIHIST',true,'SELECT * FROM MCIHIST WHERE DISPCALLID = ' + PkValue(DispCallID) + ' AND PERSID = ' + PkValue(PersID));
  If A('MCIHIST').RecordsExist then
    A('MCIHIST').Edit
  else
    A('MCIHIST').Append; 
  GetField('MCIHIST','PERSID').AsString         := PersID;
  GetField('MCIHIST','DISPCALLID').AsString     := DispCallID;
  GetField('MCIHIST','DATETIMECALL').AsDateTime := Now;
  GetField('MCIHIST','DISPREV').AsString        := 'N';
  GetField('MCIHIST','PHONE').AsString          := 'TEST';
  GetField('MCIHIST','RESPONSE').AsString       := MCIResponse;
  GetField('MCIHIST','DATETIMEENT').AsDateTime  := Now;
  GetField('MCIHIST','DATETIMEETA').AsDateTime  := Now;
  GetField('MCIHIST','ETA').AsDateTime          := Now + AnyStrToFloat(MCIETA) / (24 * 60);
  GetField('MCIHIST','ETAMINUTES').AsString     := IIf(MCIETA = '','7.3',MCIETA);
  A('MCIHIST').Post;
  CloseApollo('MCIHIST');
end;

procedure TPersonCallInForm.LoadPersDeviceBrowse;
var PersDevice : TApolloData;
begin
  PersDeviceBrowse.Clear;
  PersDeviceBrowse.ColCount       := 0;
  PersDeviceBrowse.RowCount       := 0;
  PersDeviceBrowse.ClearColumns;
  PersDeviceBrowse.FixedRowAlways := true;
  PersDeviceBrowse.RowCount       := PersDeviceBrowse.FixedRows;

  PersDeviceBrowse.SetColumn('PERSDEVICEID','PERSDEVICEID',000);
  PersDeviceBrowse.SetColumn('FRDSAPPVERSION','Version',60);
  PersDeviceBrowse.SetColumn('DATETIMEUPDATE','Last Access',105,'','D');
  PersDeviceBrowse.SetColumn('DATETIMECREATE','Installed',105,'','D');

  PersDeviceBrowse.SetColumn('OS','OS',80);
  PersDeviceBrowse.SetColumn('DEVICE','Device',110);
  PersDeviceBrowse.SetColumn('SPECS','Specs',110);
  PersDeviceBrowse.SetColumn('PUSH','Push?',60);
  PersDeviceBrowse.SetColumn('GPS','GPS?',360);
  PersDeviceBrowse.SetColumn('DEVICETOKEN','DEVICETOKEN',000);
  PersDeviceBrowse.SetColumn('PUSHCHANNEL','PUSHCHANNEL',000);
  try
    PersDevice := Open_Query(false,'select * from persdevice where persid = '+pkValue(pk));
    while not PersDevice.eof do begin

      try
        PersDeviceBrowse.SetValue('PERSDEVICEID',GetField(persdevice,'PERSDEVICEID').AsString);
        PersDeviceBrowse.SetValue('FRDSAPPVERSION',GetField(persdevice,'FRDSAPPVERSION').AsString);
        PersDeviceBrowse.SetValue('DATETIMEUPDATE',iif(GetField(persdevice,'DATETIMEUPDATE').AsDateTime > 0,FormatDateTime('MM/DD/YYYY HH:NN',GetField(persdevice,'DATETIMEUPDATE').AsDateTime),' '));
        PersDeviceBrowse.SetValue('DATETIMECREATE',iif(GetField(persdevice,'DATETIMECREATE').AsDateTime > 0,FormatDateTime('MM/DD/YYYY HH:NN',GetField(persdevice,'DATETIMECREATE').AsDateTime),' '));
        PersDeviceBrowse.SetValue('OS',tdbfield(persdevice,'OSNAME')+ ' ' + tdbfield(persdevice,'OSVERSION'));
        PersDeviceBrowse.SetValue('DEVICE',tdbfield(persdevice,'MANUFACTURER')+ ' ' + tdbfield(persdevice,'MODEL'));
        PersDeviceBrowse.SetValue('SPECS',tdbfield(persdevice,'WIDTH')+ 'x' + tdbfield(persdevice,'HEIGHT')+' '+tdbfield(persdevice,'DPI')+'dpi');
        PersDeviceBrowse.SetValue('PUSH',GetField(persdevice,'PUSHENABLED').AsString);
        PersDeviceBrowse.SetValue('GPS',GetField(persdevice,'GPSENABLED').AsString);
        PersDeviceBrowse.SetValue('DEVICETOKEN',trim(GetField(persdevice,'DEVICETOKEN').AsString));
        PersDeviceBrowse.SetValue('PUSHCHANNEL',tdbfield(persdevice,'PUSHCHANNEL'));
      finally
        persdevice.next;
      end;
    end;
  finally
    persdevice.free;
  end;

  PersDeviceBrowse.Invalidate;

  PersDeviceBrowse.SortSettings.Column    := 3;
  PersDeviceBrowse.SortSettings.Direction := sdDescending;
  PersDeviceBrowse.QSort;
end;

procedure TPersonCallInForm.FormShow(Sender: TObject);
begin
  MCIButton.Visible               := AlpineLogin or (FireID = '12345');

  DateTimeGPSField.Enabled        := false;
  LatitudeField   .Enabled        := false;
  LongitudeField  .Enabled        := false;
  MapButton.Visible               := AlpineLogIn or (FireID = '12345');

  RespAppPanel.Visible            := CheckModule('RESPAPP');
  AdvSplitter1.Visible            := RespAppPanel.Visible;
  RespEmailField.Enabled          := Not ViewOnly;

  ResponderField.Enabled          := Not ViewOnly and CheckSecVar('MCISETUP');
  EmailAppLinkButton.Enabled      := Not ViewOnly and CheckSecVar('MCISETUP');
  ResetAppPasswordButton.Enabled  := Not ViewOnly and CheckSecVar('MCISETUP');
  SelfOnlyField.Enabled           := Not ViewOnly and CheckSecVar('MCISETUP');
  NoDispHistField.Enabled         := Not ViewOnly and CheckSecVar('MCISETUP');

  RespStatHistBrowse.Setup('RESPSTATHIST','PERSID',PK,TRespStatHistForm,MCIListFormNewRecord);

  If RespAppPanel.Visible then begin
    {PersDeviceButtonPanel.Visible  := AlpineLogin or
                                     ((FireID = 'HARFO') AND ((SqlLookUp(SecidVar,'SECID','SEC','LOGINCODE')='SYSADMIN') OR CheckSecVar('HARFOPERSDEVICEEDIT'))) or
                                     ((FireID = '26017')) or
                                     ((substr(FireID,1,2) = '30') AND (CheckSecVar('SYSSETUP'))) or
                                     ((substr(FireID,1,2) = '28') AND (CheckSecVar('SYSSETUP')));}

    PersDeviceButtonPanel.Visible     := Not ViewOnly and CheckSecVar('MCISETUP');

    if (substr(FireID,1,2) = '30') or (substr(FireID,1,2) = '28') then
      PersDeviceButtonPanel.Visible := CheckSecVar('SYSSETUP');

    if (FireID = '26017') then
      PersDeviceButtonPanel.Visible := True;

    SendPushToAll.Visible             := AlpineLogin;
    DeletePersDeviceButton.Enabled    := Not ViewOnly and CheckSecVar('SYSSETUP');

    if (FireID = 'HARFO') then begin
      PersDeviceButtonPanel.Visible   := ((SqlLookUp(SecidVar,'SECID','SEC','LOGINCODE')='SYSADMIN') OR CheckSecVar('HARFOPERSDEVICEEDIT'));
      ResponderField.Enabled          := Not ViewOnly and (CheckSecVar('MCISETUP') OR CheckSecVar('HARFOPERSDEVICEEDIT'));
      EmailAppLinkButton.Enabled      := PersDeviceButtonPanel.Visible;
      ResetAppPasswordButton.Enabled  := PersDeviceButtonPanel.Visible;
      SelfOnlyField.Enabled           := Not ViewOnly and (CheckSecVar('MCISETUP') OR CheckSecVar('HARFOPERSDEVICEEDIT'));
      NoDispHistField.Enabled         := Not ViewOnly and (CheckSecVar('MCISETUP') OR CheckSecVar('HARFOPERSDEVICEEDIT'));
      //SendPushToAll.Visible           := PersDeviceButtonPanel.Visible;
    end;

    LoadPersDeviceBrowse;
  end;
  MCIQualField.LookupFormWidth := 250;
end;

end.
