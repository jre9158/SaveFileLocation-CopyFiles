unit ImageList;

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
  AlpineDateTime,
  AdvGlowButton,
  ChadImage,
  Jpeg,
  AlpineGlowButton,
  MySBox,
  ComCtrls,
  ToolWin,
  AlpineMemo,
  AdvGroupBox;

type
  TImageListForm = class(TNormalBaseForm)
    Panel2: TPanel;
    Label2: TLabel;
    DescrField: TAlpineEdit;
    Label1: TLabel;
    FileNameField: TAlpineEdit;
    OpenDocFile: TOpenDialog;
    Panel3: TPanel;
    ImageScrollBox: TMyScrollBox;
    ImagePanel: TPanel;
    ToolBar1: TToolBar;
    ResizeButton: TToolButton;
    PanButton: TToolButton;
    StandardImages: TImageList;
    SelectFileButton: TAlpineGlowButton;
    EditButton: TAlpineGlowButton;
    SaveTempFileButton: TAlpineGlowButton;
    ShowButton: TAlpineGlowButton;
    Label3: TLabel;
    ImagePathIDField: TAlpineLookup;
    SysTableIDField: TAlpineLookup;
    Label4: TLabel;
    DateTimeFileField: TAlpineDateTime;
    Label5: TLabel;
    ReloadButton: TAlpineGlowButton;
    Label6: TLabel;
    NarrField: TAlpineMemo;
    ImageBlob: TImage;
    BulletinPhotoLabel: TLabel;
    BulletinPhotoField: TAlpineEdit;
    KioskLabel: TLabel;
    KioskField: TAlpineEdit;
    SaveFileButton: TAlpineGlowButton;
    procedure SelectFileButtonClick(Sender: TObject);
    procedure ShowButtonClick(Sender: TObject);
    procedure EditButtonClick(Sender: TObject);
    procedure SaveTempFileButtonClick(Sender: TObject);
    procedure ImageBlobMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ImageBlobMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ResizeButtonClick(Sender: TObject);
    procedure PanButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ReloadButtonClick(Sender: TObject);
    procedure SaveFileButtonClick(Sender: TObject);
  private
    { Private declarations }
    StartX   : Integer;
    StartY   : Integer;
    Multiple : Real;
    function GetImagePath(ImagePathID: String): String;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  ImageListForm: TImageListForm;

implementation
uses GenFunc,
     Commonfunc,
     FormFunc,
     Main;
{$R *.DFM}

class procedure TImageListForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

function TImageListForm.GetImagePath(ImagePathID: String): String;
begin
  Open_Query('IMAGEPATH',false,'SELECT PATH FROM IMAGEPATH WHERE IMAGEPATHID = ' + PKValue(ImagePathID));
  GetImagePath := tdbfield('IMAGEPATH','PATH');
  CloseApollo('IMAGEPATH');
end;

procedure TImageListForm.SelectFileButtonClick(Sender: TObject);
Var PathVar : String;
    FileName : String;
begin
  inherited;
  PathVar                := GetImagePath(ImagePathIDField.Value);
  OpenDocFile.InitialDir := PathVar;
  If OpenDocFile.Execute then
    FileNameField.Text := ExtractFileName(OpenDocFile.Files[0]);

  FileName := PathVar + '\' + FileNameField.Text;

  If FileExists(FileName) then begin
    try
      Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE IMAGELISTID = ' + pk);
      GetTable('IMAGELIST').Edit;
      (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
      TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);
      GetTable('IMAGELIST').Post;
      CloseApollo('IMAGELIST');
      DateTimeFileField.Value := FileDateToDateTime(FileAge(FileName));
      SaveButtonClick(self);
    except
      CloseApollo('IMAGELIST');
    end;
  end else
    ShowMessage('File does not exist: ' + FileName);
end;

procedure TImageListForm.ShowButtonClick(Sender: TObject);
var stream     : TMemoryStream;
    ImageName  : TJPegImage;
    TempHeight : Real;
begin
  inherited;
  Stream    := TMemoryStream.create;
  ImageName := TJpegImage.create;
  try
    Open_Query('IMAGELIST',false,'SELECT * FROM IMAGELIST WHERE IMAGELISTID = ' + pk);
    TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToStream(Stream);
    Stream.position := 0;
    ImageName.LoadFromStream(stream);
    ImageBlob.Picture.bitmap.assign(ImageName);
    CloseApollo('IMAGELIST');
  except
    CloseApollo('IMAGELIST');
  end;
  ImageName.Free;
  Stream.free;

  ImagePanel.Height := ImageBlob.Picture.Height;
  ImagePanel.Width  := ImageBlob.Picture.Width;
end;

procedure TImageListForm.EditButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  FileName := GetImagePath(ImagePathIDField.Value) + FileNameField.Text;
  WinExec(pChar('mspaint ' + FileName ),SW_SHOW);
end;

procedure TImageListForm.SaveFileButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  FileName := 'C:\HAMPTON\' + DescrField.Value;
  Open_Query('IMAGELIST',false,'SELECT IMAGEBLOB FROM IMAGELIST WHERE IMAGELISTID = ' + pk);
  TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToFile(FileName);
  CloseApollo('IMAGELIST');
end;

procedure TImageListForm.SaveTempFileButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  FileName := GetImagePath(ImagePathIDField.Value) + FileNameField.Text;
  If BooleanMessageDlg('Overwrite ' + FileName + '?') then begin
    Open_Query('IMAGELIST',false,'SELECT IMAGEBLOB FROM IMAGELIST WHERE IMAGELISTID = ' + pk);
    TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToFile(FileName);
    CloseApollo('IMAGELIST');
    DateTimeFileField.Value := FileDateToDateTime(FileAge(FileName));
    SaveButtonClick(self);
  end;
end;

procedure TImageListForm.ImageBlobMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  If ResizeButton.Down then begin
    ImagePanel.Align := alnone;

    If (Button=mbLeft) then begin
      ImagePanel.Width  := Round(ImagePanel.Width * 1.25);
      ImagePanel.Height := Round(ImagePanel.Height * 1.25);
    end else if (Button=mbright) then begin
      ImagePanel.Width  := Round(ImagePanel.Width * 0.8);
      ImagePanel.Height := Round(ImagePanel.Height * 0.8);
    end;

    If ImagePanel.Height > ImageScrollBox.Height then begin
      ImageScrollBox.VertScrollBar.Range := ImagePanel.Height
    end else
      ImageScrollBox.VertScrollBar.Range := 0;

    If ImagePanel.Width > ImageScrollBox.Width then begin
      ImageScrollBox.HorzScrollBar.Range := ImagePanel.Width
    end else
      ImageScrollBox.HorzScrollBar.Range := 0;
      
    If (ImagePanel.Height > ImageScrollBox.Height) and (ImagePanel.Width > ImageScrollBox.Width) then
      ImagePanel.Align := alclient
    else
      ImagePanel.Align := alnone;

    ImagePanel.Left := Round( (ImageScrollBox.Width - ImagePanel.Width)/2 );
    ImagePanel.Top  := Round( (ImageScrollBox.Height - ImagePanel.Height)/2 );

  end else begin
    StartX := X;
    StartY := Y;
  end;
end;

procedure TImageListForm.ImageBlobMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  If ResizeButton.Down then begin
  end else begin
    ImageScrollBox.HorzScrollBar.Position := ImageScrollBox.HorzScrollBar.Position - (X - StartX);
    ImageScrollBox.VertScrollBar.Position := ImageScrollBox.VertScrollBar.Position - (Y - StartY);
  end;
end;

procedure TImageListForm.ResizeButtonClick(Sender: TObject);
begin
  inherited;
  ImageBlob.Cursor := crSizeAll;
end;

procedure TImageListForm.PanButtonClick(Sender: TObject);
begin
  inherited;
  ImageBlob.Cursor := crHandPoint;
end;

procedure TImageListForm.FormShow(Sender: TObject);
begin
  inherited;
  SaveFileButton.Enabled    := AlpineLogIn;  
  DateTimeFileField.Enabled := false;
  KioskField.Visible        := false;
  KioskLabel.Visible        := false;
  ShowButtonClick(self);
  If FireID = '52102' then begin
    KioskField.Visible := True;
    KioskLabel.Visible := True;
  end;
end;

procedure TImageListForm.ReloadButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  FileName := GetImagePath(ImagePathIDField.Value) + FileNameField.Text;
  Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE IMAGELISTID = ' + pk);
  GetTable('IMAGELIST').Edit;
  (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
  TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);
  GetTable('IMAGELIST').Post;
  CloseApollo('IMAGELIST');
  DateTimeFileField.Value := FileDateToDateTime(FileAge(FileName));
  SaveButtonClick(self);
  ShowButtonClick(self);
end;

end.
