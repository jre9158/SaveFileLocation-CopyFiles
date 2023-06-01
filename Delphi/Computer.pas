unit Computer;

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
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  htmlbtns,
  alpinecheck,
  AdvGroupBox,
  ComCtrls,
  AlpineMemo,
  OleCtrls,
  GrFingerXLib_TLB,
  AlpinePanel,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpineBlockBrowse,
  AdvPageControl;

type
  TComputerForm = class(TNormalBaseForm)
    PageControl: TPageControl;
    General: TTabSheet;
    FingerTab: TTabSheet;
    LogFileTab: TTabSheet;
    DeviceSettingsPanel: TAlpinePanel;
    VideoInputLabel: TLabel;
    VideoAfterLabel: TLabel;
    ENABLECAMERAField: TAlpineCheckBox;
    AlpineCheckBox2: TAlpineCheckBox;
    VIDEOINPUTField: TAlpineEdit;
    AlpineCheckBox3: TAlpineCheckBox;
    AlpineCheckBox14: TAlpineCheckBox;
    ENABLESIGNINField: TAlpineCheckBox;
    AlpineCheckBox4: TAlpineCheckBox;
    AlpineCheckBox5: TAlpineCheckBox;
    FdidCompIDField: TAlpineLookup;
    Label15: TLabel;
    AlpineCheckBox6: TAlpineCheckBox;
    Label16: TLabel;
    AlpineEdit7: TAlpineEdit;
    AlpineCheckBox7: TAlpineCheckBox;
    AlpinePanel1: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    SecIDLabel: TLabel;
    Label14: TLabel;
    ComputerName: TLabel;
    FdidLabel: TLabel;
    Label3: TLabel;
    ComputerNameField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    ComputerButton: TAlpineGlowButton;
    SecIDField: TAlpineLookup;
    FdidField: TAlpineLookup;
    AlpineEdit6: TAlpineEdit;
    SecLogTab: TTabSheet;
    SecLogBrowse: TAlpineBlockBrowse;
    AlpinePanel7: TAlpinePanel;
    Label17: TLabel;
    Label18: TLabel;
    SecLogLowerDateField: TAlpineDateTime;
    SecLogUpperDateField: TAlpineDateTime;
    SecLogButton: TAlpineGlowButton;
    LogFilePanel: TAlpinePanel;
    LogFileField: TAlpineMemo;
    AlpinePanel3: TAlpinePanel;
    Label11: TLabel;
    FingerLabel: TLabel;
    Label10: TLabel;
    GriauleProdKeyField: TAlpineEdit;
    FingerField: TAlpineCheckBox;
    RegGriauleButton: TAlpineGlowButton;
    AlpinePanel2: TAlpinePanel;
    MCILabel: TLabel;
    Label4: TLabel;
    MCIField: TAlpineCheckBox;
    AlpineCheckBox1: TAlpineCheckBox;
    GisCodeLabel: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    GisCodeField: TAlpineLookup;
    AlpineEdit3: TAlpineEdit;
    AlpineEdit4: TAlpineEdit;
    Label6: TLabel;
    AlpineEdit2: TAlpineEdit;
    Label9: TLabel;
    UnitNumLabel: TLabel;
    DispLocIDLabel: TLabel;
    Label19: TLabel;
    SchdLocIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    DispLocIDField: TAlpineLookup;
    PLAYALLDISPALERTSField: TAlpineCheckBox;
    ProgramNameLabel: TLabel;
    ProgramNameField: TAlpineEdit;
    DateTimeUpdatedField: TAlpineDateTime;
    DateTimeUpdatedLabel: TLabel;
    procedure ComputerButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RegGriauleButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SecLogTabShow(Sender: TObject);
    procedure SecLogButtonClick(Sender: TObject);
  private
    FingerControl: TGrFingerXCtrl;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  ComputerForm: TComputerForm;

implementation
uses GenFunc,
     CommonVar,
     CommonFunc,
     SecSet,
     CommonFingerGB,
     Main,
     FormFunc;

{$R *.DFM}

class procedure TComputerForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TComputerForm.RegGriauleButtonClick(Sender: TObject);
var Ret     : integer;
    prodkey : widestring;
begin
  inherited;
  If not(UpperCase(trim(ComputerNameField.Value)) = UpperCase(trim(AlpineGetComputerName))) then
    If not BooleanMessageDlg('This record doesn''t match this machine''s name. Proceed to register this device?') then
      exit;
  try
    FingerControl := TGrFingerXCtrl.Create(Application);
    try
      prodkey := trim(GriauleProdKeyField.Value);
      If not((prodkey = '') or (copy(prodkey,1,1) = '-')) then begin
        ret := FingerControl.InstallLicense(prodkey);
        If ret < 0 then
          MessageDlg('ERROR registering Grialue Fingerprint device:'+#13+#10+''+#13+#10+GetGriauleError(ret), mtWarning, [mbOK], 0)
        else
          MessageDlg('Registration complete.'+#13+#10+''+#13+#10+'This device, ' + ComputerNameField.Value + ', has been registered with a Griaule Fingerprint SDK 2009 license.', mtInformation, [mbOK], 0);
      end else begin
        MessageDlg('The given Griaule product key is improperly formatted. Please re-enter.', mtWarning, [mbOK], 0);
        GriauleProdKeyField.SetFocus;
      end;
    finally
      FreeAndNil(FingerControl);
    end;
  except
    on e : exception do begin
      MessageDlg('The required Fingerprint files are not properly installed or registered on this computer.'+#13+#10+''+#13+#10+'Please re-install the RedAlert NMX Griaule Fingerprint setup file and try again. '+#13+#10+''+#13+#10+'[InstallGrFinger]', mtWarning, [mbOK], 0);
    end;
  end;
end;

procedure TComputerForm.SecLogButtonClick(Sender: TObject);
begin
  inherited;
  SecLogBrowse.ExplicitwhereClause := ' WHERE DATETIMELOGIN >= ' + FormatDateTimeForSQL(SecLogLowerDateField.Value) + ' AND DATETIMELOGIN <= ' + FormatDateTimeForSQL(SecLogUpperDateField.Value) + ' AND COMPCODE = ' + AddExpr(ComputerNameField.Value);
  SecLogBrowse.Setup('SECLOG');
end;

procedure TComputerForm.SecLogTabShow(Sender: TObject);
begin
  inherited;
  SecLogLowerDateField.Value := Now - 5;
  SecLogUpperDateField.Value := Now + 1;
  SecLogButtonClick(self);
end;

procedure TComputerForm.ComputerButtonClick(Sender: TObject);
begin
  inherited;
  ComputerNameField.Value := AlpineGetComputerName;
  SaveButton.Enabled      := true;
end;

procedure TComputerForm.FormCreate(Sender: TObject);
begin
  inherited;
  ComputerName.Caption   := AlpineGetComputerName;
  LogFileTab.TabVisible  := AlpineLogin;
  UnitNumField.Visible   := mfireid='30064';
  UnitNumLabel.Visible   := mfireid='30064';

  PlayAllDispAlertsField.Visible := (mFireid = '12345') OR (mFireid = 'SEMRE');

  Open_Query('FINGERSET',false,'SELECT * FROM FINGERSET WHERE FDID = ' + AddExpr(mfireid));
  If A('FINGERSET').RecordsExist then begin
    If GetField('FINGERSET','ENABLECAMERA').AsBoolean then begin
      EnableCameraField.Visible := true;
      VideoInputLabel.Visible   := true;
      VideoInputField.Visible   := true;
      VideoAfterLabel.Visible   := true;
    end;
    If GetField('FINGERSET','ENABLESIGNIN').AsBoolean then begin
      EnableSignInField.Visible := true;
    end;
  end;
  CloseApollo('FINGERSET');
end;

procedure TComputerForm.FormShow(Sender: TObject);
begin
  inherited;
  GriauleProdKeyField.Enabled := AlpineLogin;
  RegGriauleButton.Enabled    := AlpineLogin;
  SecIDLabel.Visible          := CheckSecVar('SECSETUP');
  SecIDField.Visible          := CheckSecVar('SECSETUP');
  MCILabel.Visible            := CheckModule('MCI');
  MCIField.Visible            := CheckModule('MCI');
  PageControl.ActivePageIndex := 0;
  ComputerNameField.SetFocus;
end;

end.
