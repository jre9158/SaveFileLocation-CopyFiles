unit Pict;

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
  FormFunc,
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
  AlpineDateTime,
  AdvPageControl,
  ComCtrls,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  ComObj,
  SortGridView,
  ImageControl30Lib_TLB,
  AlpineBase,
  Gauges,
  Menus,
  Jpeg;

type
  TPictForm = class(TAlpineBaseForm)
    ImageControlPanel: TPanel;
    Panel1: TPanel;
    ZoomInButton: TAlpineGlowButton;
    ZoomOutButton: TAlpineGlowButton;
    Panel2: TPanel;
    NorthButton: TButton;
    SouthButton: TButton;
    EastButton: TButton;
    WestButton: TButton;
    OverheadButton: TButton;
    AdvPanel5: TAdvPanel;
    TitleImage: TImage;
    CenterButton: TAlpineGlowButton;
    Panel3: TPanel;
    PictometryStatus: TLabel;
    Panel4: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    SelectBox: TComboBox;
    ZoomFactor: TAlpineEdit;
    OvcController1: TOvcController;
    procedure FormCreate(Sender: TObject);
    procedure ZoomInButtonClick(Sender: TObject);
    procedure ZoomOutButtonClick(Sender: TObject);
    procedure Navigate(Sender: TObject);
    procedure SelectBoxClick(Sender: TObject);
    procedure ZoomFactorExit(Sender: TObject);
    procedure CenterButtonClick(Sender: TObject);

  private
    { Private declarations }
    FLicenseKey      : String;
    FPictPath        : String;
    PictImageControl : TImageControl30;
    procedure PictometryDistance(ASender: TObject; Distance: Double);
    procedure PictometryBearing(ASender: TObject; Bearing: Double);
    procedure PictometryElevation(ASender: TObject; Elevation: Double);
    procedure PictometryHeight(ASender: TObject; Height: Double);
    procedure PictometryWalkingMan(ASender: TObject; Distance: Double);
    procedure PictometryArea(ASender: TObject; Area: Double);
  protected

  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;
  procedure DisplayPictometry(Lat,Long: Real);
var
  PictForm: TPictForm;

implementation
uses GenFunc,
     SecSet,
     search,
     GisFunc,
     GisHierarchy,
     GisSys,
     CommonVar,
     Update,
     Commonfunc,
     SelectFile,
     TableDefinitions,
     AppLst,
     PictSet,
     Main;

{$R *.DFM}

procedure TPictForm.FormCreate(Sender: TObject);
var bPict : Boolean;
begin
  inherited;
  PictometryStatus.caption       := '';
  ImageControlPanel.Caption      := '';
  ImageControlPanel.ParentColor  := True;
  bPict                          := False;

  If CheckModule('PICT') then begin
    FLicenseKey      := SQLLookUp(AlpineGetComputerName,'COMPUTERNAME','COMPUTER','PICTLICENSEKEY');
    Open_Query('PICTSET',False,'SELECT * FROM PICTSET WHERE FDID = '+AddExpr(mFireID));
    FPictPath := sqllookup(AlpineGetComputerName,'COMPUTERNAME','COMPUTER','PIWFILE');
    if FPictPath = '' then
      FPictPath        := tdbField('PICTSET','PIWFILE'); 
    ZoomFactor.value := GetField('PICTSET','DEFZOOMFACT').AsString;
    if FLicenseKey = '' then
      FLicenseKey    := GetField('PICTSET','LICENSEKEY').AsString;
    CloseApollo('PICTSET');
    bPict            := FPictPath <> '';

  end else
    bPict            := False;
  ImageControlPanel.Visible      := bPict;
  if not FileExists(FPictPath) then
    showmessage('Error - Pictometry PIW file does not exist!');

  If bPict then begin
    PictImageControl              := TImageControl30.create(nil);
    PictImageControl.Parent       := ImageControlPanel;
    PictImageControl.Align        := alClient;
    PictImageControl.UserLicense  := FLicenseKey;
    PictImageControl.ResizeToCurrentSize;
    PictImageControl.Ondistance   := PictometryDistance;
    PictImageControl.OnBearing    := PictometryBearing;
    PictImageControl.OnElevation  := PictometryElevation;
    PictImageControl.OnHeight     := PictometryHeight;
    PictImageControl.OnWalkingMan := PictometryWalkingMan;
    PictImageControl.OnArea       := PictometryArea;
  end;
end;

constructor TPictForm.create(AOwner: TComponent);
begin
  Set8087CW($133f);
  inherited;
end;

procedure TPictForm.PictometryDistance(ASender: TObject; Distance: Double);
begin
  PictometryStatus.caption := 'Distance' + #10#13 + FormatFloat('##0.00',3.2808399 * Distance)+ #10#13 + 'Feet';
end;

procedure TPictForm.PictometryBearing(ASender: TObject; Bearing: Double);
begin
  PictometryStatus.caption := 'Bearing' + #10#13 + FormatFloat('##0.00',Bearing) + #10#13 + 'Degrees';
end;

procedure TPictForm.PictometryElevation(ASender: TObject; Elevation: Double);
begin
  PictometryStatus.caption := 'Elevation' + #10#13 + FormatFloat('##0.00',3.2808399 * Elevation) + #10#13 + 'Feet';
end;

procedure TPictForm.PictometryWalkingMan(ASender: TObject; Distance: Double);
begin
  PictometryStatus.caption := 'Distance' + #10#13 + FormatFloat('##0.00',3.2808399 * Distance) + #10#13 + 'Feet';
end;

procedure TPictForm.PictometryArea(ASender: TObject; Area: Double);
begin
  PictometryStatus.caption := 'Area' + #10#13 + FormatFloat('###0.00',3.2808399 * 3.2808399 * Area) + #10#13 + 'Sqare Feet';
end;

procedure TPictForm.PictometryHeight(ASender: TObject; Height: Double);
begin
  PictometryStatus.caption := 'Height' + #10#13 + FormatFloat('##0.00',3.2808399 * Height) + #10#13 + 'Feet';
end;

procedure TPictForm.ZoomInButtonClick(Sender: TObject);
begin
  PictImageControl.ZoomIn;
end;

procedure TPictForm.ZoomOutButtonClick(Sender: TObject);
begin
  inherited;
  PictImageControl.ZoomOut;
end;

procedure TPictForm.Navigate(Sender: TObject);
begin
  inherited;
  PictImageControl.NavigateViewFrom(tbutton(sender).Caption);
  PictImageControl.align := alClient;
end;

procedure DisplayPictometry(Lat,Long: Real);
var rLong : Real;
    rLat  : Real;
    f     : TPictForm;
    iRet  : Integer;
begin
  f := TPictForm(GetFormOfType(TPictForm));
  if f = nil then
    f := TPictForm.Create(application);
  with f do begin
    try
      rLong                        := Trunc(Long)- 10/6 * ((ABS(Long)-Trunc(ABS(Long))));
      rLat                         := Trunc(Lat)+ 10/6 * ((ABS(Lat)-Trunc(ABS(Lat))));
      rlong                        := rLong * 3.1415926/180;
      rlat                         := rLat * 3.1415926/180;

      iRet := PictImageControl.SearchAndLoad(FPictPath,rLat,rLong);
      if iRet <> 0 then
        showmessage('Error: '+PictImageControl.GetLastErrorString)

      else begin
        PictImageControl.ViewCrosshair;
        PictImageControl.ViewCenter;
        PictImageControl.DoSetCrosshairLocation(rLat,rLong);
        PictImageControl.NavigateViewFrom('S');
        PictImageControl.ResizeToCurrentSize;
        PictImageControl.ZoomFactor := strtofloat(ZoomFactor.value);
      end;  
      Show;
    except
    end;
  end;
end;

procedure TPictForm.SelectBoxClick(Sender: TObject);
begin
  inherited;
  PictometryStatus.Caption := '';
  PictImageControl.Tool    := SelectBox.ItemIndex;
end;

procedure TPictForm.ZoomFactorExit(Sender: TObject);
begin
  inherited;
  If ZoomFactor.ModifiedSinceEntered then
    PictImageControl.ZoomFactor := strtofloat(ZoomFactor.Value);
end;

procedure TPictForm.CenterButtonClick(Sender: TObject);
begin
  PictImageControl.ViewCenter;
end;

end.
