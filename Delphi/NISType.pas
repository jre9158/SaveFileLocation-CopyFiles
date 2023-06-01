unit NISType;
  
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
  CusBtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  htmlbtns,
  AlpineCheck, AdvOfficeImage, AlpinePanel;

type
  TNISTypeForm = class(TNormalBaseForm)
    LosapCATPanel: TPanel;
    LosapCATLabel: TLabel;
    NILosapCatIDField: TAlpineLookup;
    EvLengthPanel: TPanel;
    EvLengthLabel: TLabel;
    EvLengthField: TAlpineEdit;
    PointPanel: TPanel;
    PointLabel: TLabel;
    PointField: TAlpineEdit;
    User1Panel: TPanel;
    User1Label: TLabel;
    NIUser1IDField: TAlpineLookup;
    User2Panel: TPanel;
    User2Label: TLabel;
    NIUser2IDField: TAlpineLookup;
    User3Panel: TPanel;
    User3Label: TLabel;
    NIUserN3IDField: TAlpineLookup;
    User4Panel: TPanel;
    User4Label: TLabel;
    NIUser4IDField: TAlpineLookup;
    User5Panel: TPanel;
    User5Label: TLabel;
    NIUser5IDField: TAlpineLookup;
    User6Panel: TPanel;
    User6Label: TLabel;
    NIUser6IDField: TAlpineLookup;
    CountButton: TAlpineGlowButton;
    HeaderPanel: TAdvPanel;
    PersTitleLabel: TLabel;
    TitleImage: TImage;
    AdvOfficeImage1: TAdvOfficeImage;
    GenPanel: TAlpinePanel;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    Label2: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    NewNIPTypeIDLabel: TLabel;
    NewNISTypeIDLabel: TLabel;
    LoadNITrainCat1Label: TLabel;
    Label3: TLabel;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    ShortDescrField: TAlpineEdit;
    NIPTypeIDField: TAlpineLookup;
    NewNIPTypeIDField: TAlpineLookup;
    NewNISTypeIDField: TAlpineLookup;
    LoadNITrainCat1Field: TAlpineCheckBox;
    ActiveField: TAlpineCheckBox;
    OpenKioskLabel: TLabel;
    OpenKioskCheckBox: TAlpineCheckBox;
    TriggerKioskOpenLabel: TLabel;
    UpdateButton: TAlpineGlowButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TotEvents: TLabel;
    TotEvtLOSAP: TLabel;
    procedure FormShow(Sender: TObject);
    procedure CountButtonClick(Sender: TObject);
    procedure NewNISTypeIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ShortDescrFieldExit(Sender: TObject);
    procedure NILosapCatIDFieldEnter(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure NILosapCatIDFieldChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  NISTypeForm: TNISTypeForm;

implementation
uses GenFunc,
     SecSet,
     Fdid,
     CommonFunc,
     Main;

{$R *.DFM}

procedure TNISTypeForm.ShortDescrFieldExit(Sender: TObject);
begin
  inherited;
  If AlpineLogin and (alltrim(ShortDescrField.Value) = '') then
    ShortDescrField.Value := DescrField.Value;
end;


procedure TNISTypeForm.UpdateButtonClick(Sender: TObject);
begin
  inherited;
  RunSQL('UPDATE NI SET NILOSAPCATID = ' + AddExpr(pkvalue(NILosapCatIDField.Value)) + ' WHERE NISTYPEID = ' + pk);
  NILosapCatIDFieldChange(Sender);
end;

procedure TNISTypeForm.CountButtonClick(Sender: TObject);
Var CountVar : Integer;
begin
  inherited;
  CountVar := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NISTYPEID = ' + pk);
  ShowMessage(IntToStr(CountVar));
end;

procedure TNISTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  TitleImage.Picture.Icon      := GetGlowImageIcon('TRAINING32');
  NewNIPTypeIDLabel.Visible    := AlpineLogin;
  NewNIPTypeIDField.Visible    := AlpineLogin;
  NewNISTypeIDLabel.Visible    := AlpineLogin;
  NewNISTypeIDField.Visible    := AlpineLogin;
  LoadNITrainCat1Label.Visible := AlpineLogin;
  LoadNITrainCat1Field.Visible := AlpineLogin;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TNISTypeForm(GetFormOfType(TNISTypeForm)),GenPanel);
end;

procedure TNISTypeForm.FormShow(Sender: TObject);
Var HeightVar : Integer;
begin
  inherited;
  try
    NIPTypeIDField.Enabled := AlpineLogIn;
    PointPanel.Visible     := CheckModule('LOSAP');
    LosapCATPanel.Visible  := CheckModule('LOSAP');

    Open_Query('NIFIELD',false,'SELECT NIFIELDLIST.COMPNAME, NIFIELDLIST.DESCR, NIFIELD.NEWLABEL ' +
                               'FROM NIFIELD ' +
                               'LEFT JOIN NIFIELDLIST ON (NIFIELDLIST.NIFIELDLISTID = NIFIELD.NIFIELDLISTID) ' +
                               'WHERE NIFIELD.NIPTYPEID = ' + pkValue(NIPTypeIDField.Value) + ' ORDER BY NIFIELDLIST.SORTORD');

    While Not A('NIFIELD').Eof do begin
      If (substr(tdbfield('NIFIELD','COMPNAME'),1,4) = 'USER') or
         (tdbfield('NIFIELD','COMPNAME') = 'LOSAPCAT')         or
         (tdbfield('NIFIELD','COMPNAME') = 'EVLENGTH')         or
         (tdbfield('NIFIELD','COMPNAME') = 'POINT')            then begin
        TPanel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Panel')).Visible := true;
        TLabel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Label')).Caption := IIf(tdbfield('NIFIELD','NEWLABEL') = '',TLabel(FindComponent(tdbfield('NIFIELD','COMPNAME') + 'Label')).Caption,tdbfield('NIFIELD','NEWLABEL'));
      end;
      A('NIFIELD').Skip(1);
    end;
  finally
    CloseApollo('NIFIELD');
  end;


  Height := GenPanel.Height +
            HeaderPanel.Height + 
            IIfI(LosapCatPanel.Visible,LosapCatPanel.Height,0) +
            IIfI(EvLengthPanel.Visible,EvLengthPanel.Height,0) +
            IIfI(PointPanel.Visible,PointPanel.Height,0) +
            IIfI(User1Panel.Visible,User1Panel.Height,0) +
            IIfI(User2Panel.Visible,User2Panel.Height,0) +
            IIfI(User3Panel.Visible,User3Panel.Height,0) +
            IIfI(User4Panel.Visible,User4Panel.Height,0) +
            IIfI(User5Panel.Visible,User5Panel.Height,0) +
            IIfI(User6Panel.Visible,User6Panel.Height,0) +
            BaseBottomPanel.Height + 50;

  NILosapCatIDFieldChange(Sender);

  try
    Open_Query('FINGERSET',false,'SELECT ENABLEALLNIEVENTYPES FROM FINGERSET');

    If A('FINGERSET').RecordsExist then
      begin
        if GetField('FINGERSET','ENABLEALLNIEVENTYPES').AsString <> 'Y' then
        begin
            TriggerKioskOpenLabel.Caption := '"<- Disabled. Kiosk currently set to open on any event type!'#13#10 +
                                             'To enable this feature, uncheck "Enable All Non-Incident Event Types to Open Kiosk" in Kiosk Configuration.';
            OpenKioskCheckBox.Enabled := False;
        end
        else
        begin
          TriggerKioskOpenLabel.Caption := 'Opens Kiosk for attendance on this event type.'#13#10 +
                                           'An event with this type will never open for attendance in the Kiosk unless this is checked. ';
          OpenKioskCheckBox.Enabled := True;
        end;
      end;

  finally
    CloseApollo('FINGERSET');
  end;
end;

procedure TNISTypeForm.NewNISTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  If (NewNIPTypeIDField.Value = '0') or (NewNIPTypeIDField.Value = '') then
    NewNISTypeIDField.SQLExpr := 'SELECT * FROM NISTYPE WHERE 1=2'
  else begin
    NewNISTypeIDField.SQLExpr := 'SELECT * FROM NISTYPE WHERE NIPTYPEID = ' + pkValue(NewNIPTypeIDField.Value) + ' AND (FDID = ' + AddExpr(FdidField.Value) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL) ORDER BY CODE';
  end;
end;

procedure TNISTypeForm.NILosapCatIDFieldChange(Sender: TObject);
var
TotEventsInt   : Integer;
TotEvtLOSAPInt : Integer;
begin
  inherited;
  TotEventsInt        := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NISTYPEID = ' + pk);
  TotEvents.Caption   := IntToStr(TotEventsInt);

  TotEvtLOSAPInt      := SqlTableRecCount('SELECT COUNT(*) FROM NI WHERE NISTYPEID = '+ pk + ' ' +
                                          'AND NILOSAPCATID = ' + AddExpr(pkvalue(NILosapCatIDField.Value)));
  TotEvtLOSAP.Caption := IntToStr(TotEvtLOSAPInt);

  UpdateButton.Enabled := (TotEvtLOSAPInt < TotEventsInt);
end;

procedure TNISTypeForm.NILosapCatIDFieldEnter(Sender: TObject);
begin
  inherited;
  NILosapCATIDField.SQLExpr := 'SELECT * FROM NILOSAPCAT WHERE ' + GetFdidSQL('NILOSAPCAT.FDID') + ' ORDER BY CODE';
end;

end.  
