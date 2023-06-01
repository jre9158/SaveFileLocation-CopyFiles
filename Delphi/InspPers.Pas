unit InspPers;

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
  Jpeg,
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
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AlpineMemo,
  AlpinePanel,
  EnJpgGr;

type
  TInspPersForm = class(TNormalBaseForm)
    AlpinePanel2: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    Label3: TLabel;
    OpenInspField: TAlpineEdit;
    LNameLabel: TLabel;
    PersCodeLabel: TLabel;
    MyDBEdit2: TAlpineEdit;
    PersCodeField: TAlpineEdit;
    FNameLabel: TLabel;
    AlpineEdit2: TAlpineEdit;
    SignatureImage: TImage;
    AssignButton: TAlpineGlowButton;
    SignatureSelect: TOpenDialog;
    Label1: TLabel;
    ClearButton: TAlpineGlowButton;
    procedure AssignButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure ShowImage(PerID : String);
  end;

var
  InspPersForm: TInspPersForm;

implementation
uses GenFunc,
     CommonFunc,
     Main;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TInspPersForm.FormShow(Sender: TObject);
begin
  inherited;
  SignatureSelect.InitialDir := ExtractFilePath(Paramstr(0));
  ShowImage(pk);
end;


procedure TInspPersForm.ClearButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('PERS',True,'SELECT * FROM PERS WHERE PERSID = ' + pkValue(pk));
  GetTable('PERS').Edit;
  GetField('PERS','SIGNATURE').AsString := '';
  GetTable('PERS').Post;
  CloseApollo('PERS');
  ShowImage(pk);
end;

procedure TInspPersForm.AssignButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  If not SignatureSelect.execute then
    exit;
  FileName     := UpperCase(SignatureSelect.FileName);

  If (GetFileSize(FileName) > 100000)  then
    ShowMessage('The signature file is too big.  It neees to be less than 100K')
  else if (at('JPG',UpperCase(FileName)) = 0) then
    ShowMessage('Save ' + FileName + ' as a JPG type file')
  else begin
    sleep(2000);
    try
      Open_Query('PERS',True,'SELECT * FROM PERS WHERE PERSID = ' + pkValue(pk));
      GetTable('PERS').Edit;
      (A('PERS').FieldByName('SIGNATURE') as TBlobField).BlobType := ftBlob;
      TBlobField(A('PERS').FieldByName('SIGNATURE')).LoadFromFile(FileName);
      GetTable('PERS').Post;
    finally
      CloseApollo('PERS');
    end;
    ShowImage(pk);
  end;
end;

procedure TInspPersForm.ShowImage(PerID : String);
var stream    : TMemoryStream;
    ImageName : TJPEGImage;
    Ratio     : Real;
begin
  Stream                        := TMemoryStream.Create;
  ImageName                     := TJpegImage.Create;
  SignatureImage.Picture.BitMap := nil;

  try
    Open_Query('GETPERS',false,'SELECT SIGNATURE FROM PERS WHERE PERSID = ' + pkValue(PerID));
    TBlobField(A('GETPERS').FieldByName('SIGNATURE')).SaveToStream(Stream);
    Stream.Position := 0;
    ImageName.LoadFromStream(Stream);
    SignatureImage.Picture.BitMap.Assign(ImageName);
    CloseApollo('GETPERS');
  except
    CloseApollo('GETPERS');
  end;
  ImageName.Free;
  Stream.free;
end;


end.
