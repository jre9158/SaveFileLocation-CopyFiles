unit ArsonHist; 

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
  AlpineGlowButton,
  AlpineBlockBrowse,
  AdvGroupBox,
  ALPINEDATETIME,
  Jpeg,
  AlpineMemo,
  AdvPageControl,
  ComCtrls,
  ColorGrd,
  AlpinePanel;

type
  TArsonHistForm = class(TNormalBaseForm)
    SchdLocControl: TAdvPageControl;
    standardinfo: TAdvTabSheet;
    ScratchTab: TAdvTabSheet;
    BodyPanel: TPanel;
    BodyImage: TImage;
    cgDrawingColors: TColorGrid;
    AlpinePanel11: TAlpinePanel;
    Label15: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DescrField: TAlpineEdit;
    DateTimeDoneField: TAlpineDateTime;
    NarrField: TAlpineMemo;
    ArsonHistTypeIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    ArsonImagePanel: TAlpinePanel;
    NfirsArsonIDField: TAlpineEdit;
    procedure PersIDFieldEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BodyImageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BodyImageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure BodyImageMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
    procedure cgDrawingColorsChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    MouseOrg  : TPoint;
    NextPoint : TPoint;
    Drawing   : Boolean;
    LastDot   : TPoint;
    F         : TBaseSubTabForm;
    procedure DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
  public
    { Public declarations }
  end;

var
  ArsonHistForm: TArsonHistForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     ArsonImage,
     NfirsArsonInv,
     GetFile;

{$R *.DFM}

procedure TArsonHistForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ArsonHistID := '';
end;

procedure TArsonHistForm.FormShow(Sender: TObject);
begin
  inherited;
  ScratchTab.TabVisible := false;
  ArsonHistID           := pk;
  CreateSubForm(F,TArsonImageForm,ArsonImagePanel);
end;


procedure TArsonHistForm.BodyImageMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  Drawing   := True;
  MouseOrg  := Point(X, Y);
  NextPoint := MouseOrg;
  LastDot   := NextPoint;
  BodyImage.Canvas.MoveTo(X, Y);
end;

procedure TArsonHistForm.BodyImageMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  If Drawing then begin
    BodyImage.Canvas.MoveTo(LastDot.X, LastDot.Y);
    BodyImage.Canvas.LineTo(X, Y);
    LastDot := Point(X,Y);
  end;
end;                                                                       

procedure TArsonHistForm.BodyImageMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  If Drawing then
    DrawToImage(MouseOrg, Point(X, Y), pmCopy);
  Drawing := False;
end;

procedure TArsonHistForm.cgDrawingColorsChange(Sender: TObject);
begin
  inherited;
  BodyImage.Canvas.Pen.Color := cgDrawingColors.ForeGroundColor;
end;


procedure TArsonHistForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TArsonHistForm.DrawToImage(TL, BR: TPoint; PenMode: TPenMode);
begin
  with BodyImage.Canvas do begin
    Pen.Mode := PenMode;
    MoveTo(TL.X, TL.Y);
  end;
end;

end.  
