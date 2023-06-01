unit ftp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AlpineBase, StdCtrls, ipwcore, ipwftp, ComCtrls, AdvListV,
  AdvGlowButton, AlpineGlowButton, ExtCtrls, AdvPanel, OvcBase, OvcEF,
  OvcPB, OvcPF, BasePictureField, AlpineEdit, ipwtypes;

type
  TFTPForm = class(TAlpineBaseForm)
    Button1: TButton;
    Label1: TLabel;
    OpenDialog1: TOpenDialog;
    ListBox1: TListBox;
    UploadButton: TAlpineGlowButton;
    DirList: TAdvListView;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    FileField: TAlpineEdit;
    ConnectButton: TAlpineGlowButton;
    OvcController: TOvcController;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ipwFTP1Error(Sender: TObject; ErrorCode: Integer; const Description: String);
    procedure ipwFTP1PITrail(Sender: TObject; Direction: Integer; const Message: String);
    procedure FormDestroy(Sender: TObject);
    procedure ipwFTP1DirList(Sender: TObject; const DirEntry, FileName: String; IsDir: Boolean; FileSize: Int64; const FileTime: String);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ConnectButtonClick(Sender: TObject);
    procedure UploadButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    ipwFTP1 : TipwFTP;
    procedure AddNotes(m : string);
  public
    { Public declarations }
  end;

var
  FTPForm: TFTPForm;

implementation

{$R *.dfm}

procedure TFTPForm.AddNotes(m : string);
begin
  Listbox1.Items.Add(m);
  SendMessage(Listbox1.Handle, WM_VSCROLL, SB_BOTTOM, 0);
end;

procedure TFTPForm.Button1Click(Sender: TObject);
begin
  If OpenDialog1.Execute then 
    FileField.Text := OpenDialog1.FileName;
end;

procedure TFTPForm.FormCreate(Sender: TObject);
begin
  ipwFTP1               := TipwFTP.Create(Application);
  ipwFTP1.TransferMode  := tmBinary;
  ipwFTP1.Passive       := True;
  ipwFTP1.OnError       := ipwFTP1Error;
  ipwFTP1.OnPITrail     := ipwFTP1PITrail;
  ipwFTP1.OnDirList     := ipwFTP1DirList;

  UploadButton.Enabled  := False;
  ConnectButton.Caption := 'Connect';
end;

procedure TFTPForm.ipwFTP1Error(Sender: TObject; ErrorCode: Integer; const Description: String);
begin
  AddNotes('FTP Error '+IntToStr(ErrorCode)+': '+Description);
end;

procedure TFTPForm.ipwFTP1PITrail(Sender: TObject; Direction: Integer; const Message: String);
begin
  If not(copy(message,1,4) = 'PASS') then  // hide password from showing
    AddNotes(message);
end;

procedure TFTPForm.FormDestroy(Sender: TObject);
begin
  If UploadButton.Enabled then
    try
      ipwFTP1.Logoff;
    except
    end;
end;

procedure TFTPForm.ipwFTP1DirList(Sender: TObject; const DirEntry, FileName: String; IsDir: Boolean; FileSize: Int64; const FileTime: String);
begin
  with DirList do begin
    SortColumn := 1;
    with Items.Add do begin
      if IsDir then begin
        Caption := '<DIR>'+FileName;
        SubItems.Add('Directory');
      end else begin
        Caption := FileName;
        SubItems.Add('File');
      end;
      SubItems.Add(IntToStr(FileSize));
      SubItems.Add(FileTime);
    end;
  end;
end;

procedure TFTPForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if UploadButton.Enabled then
    try
      ipwFTP1.Logoff;
    except
    end;
end;

procedure TFTPForm.ConnectButtonClick(Sender: TObject);
begin
  if (ConnectButton.Caption = 'Connect') then begin
    ipwFTP1.RemotePath  := '';
    ipwFTP1.RemoteFile  := '';
    ipwFTP1.RemoteHost  := 'rednmx.com';
    ipwFTP1.User        := 'Anonymous';
    ipwFTP1.Password    := 'nmxclient@rednmx.com';

    try
      ipwFTP1.Logon;
    except
      on e: exception do begin
        AddNotes('Error connecting: '+e.message);
        ipwFTP1.Logoff;
        exit;
      end;
    end;

    UploadButton.Enabled  := True;
    ConnectButton.Caption := 'Disconnect';

    DirList.Items.Clear;
    ipwFTP1.ListDirectoryLong;

  end else begin
    ipwFTP1.Logoff;
    UploadButton.Enabled  := False;
    ConnectButton.Caption := 'Connect';
    DirList.Items.Clear;
  end;
end;

procedure TFTPForm.UploadButtonClick(Sender: TObject);
begin
  ipwFTP1.LocalFile   := FileField.Text;
  ipwFTP1.RemoteFile  := ExtractFileName(FileField.Text);

  try
    ipwFTP1.Upload;
  except
    on e: exception do begin
      AddNotes('Error uploading file: '+e.message);
      ipwFTP1.Logoff;
      UploadButton.Enabled  := False;
      ConnectButton.Caption := 'Connect';
      ConnectButton.Enabled := True;
      exit;
    end;
  end;
end;

procedure TFTPForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

end.
