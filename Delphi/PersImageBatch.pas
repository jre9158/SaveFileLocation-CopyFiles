unit PersImageBatch;

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
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,                                                    
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AppLst,
  ADODB,
  AlpineLookup,
  Blink,
  Buttons,
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  AdvGroupBox,
  AlpineBase,
  jpeg,
  Gauges,
  AdvObj,
  EnJpgGr,
  AdvMemo,
  AdvOfficeImage,
  FileCtrl;

type
  TPersImageBatchForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    ImportButton: TAlpineGlowButton;
    TagButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    BaseStatusPanel: TPanel;
    SecRecLockLabel: TLabel;
    AlpinePanel3: TAlpinePanel;
    Image1: TImage;
    Image3: TImage;
    Label5: TLabel;
    FileList: TFileListBox;
    QueryDirectoryButton: TAlpineGlowButton;
    AlpinePanel4: TAlpinePanel;
    Panel1: TPanel;
    AlpinePanel2: TAlpinePanel;
    Gauge: TGauge;
    AlpinePanel8: TAlpinePanel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    ErrorLabel: TBlinkLabel;
    pdf: TAlpineCheckBox;
    PersImageDirField: TAlpineEdit;
    png: TAlpineCheckBox;
    jpg: TAlpineCheckBox;
    LowerAmountField: TAlpineEdit;
    UpperSizeField: TAlpineEdit;
    TargetPanel: TAlpinePanel;
    FileBrowse: TAlpineTMSStringGrid;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure BaseBottomPanelResize(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure QueryDirectoryButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ModCode        : String;
    FirstRecordID  : String;
    SecondRecordID : String;
  public
    { Public declarations }
    bImportedFiles: Boolean;
    constructor Create(AOwner: TComponent; mModCode, mFirstRecordID, mSecondRecordID : String); overload;

  procedure ResetFileBrowse;
end;

var
  PersImageBatchForm  : TPersImageBatchForm;

implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     FormFunc,
     CommonVar,
     CommonCloud;

{$R *.DFM}

constructor TPersImageBatchForm.Create(AOwner: TComponent; mModCode,  mFirstRecordID, mSecondRecordID: String);
begin
  inherited Create(AOwner);
  ModCode        := mModCode;
  FirstRecordID  := mFirstRecordID;
  SecondRecordID := mSecondRecordID;
end;

procedure TPersImageBatchForm.BaseBottomPanelResize(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanelUsingTags('H',BaseBottomPanel);
end;

procedure TPersImageBatchForm.CloseButtonClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TPersImageBatchForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If ModCode = 'PERS' then begin
    Open_query('IMAGESET',true,'SELECT * FROM IMAGESET WHERE FDID = ' + AddExpr(mFireID));
    If A('IMAGESET').RecordsExist then begin
      GetTable('IMAGESET').Edit;
      GetField('IMAGESET','PERSIMAGEDIR').AsString := PersImageDirField.Text;
      GetTable('IMAGESET').Post;
    end;
    CloseApollo('IMAGESET');
  end;  
end;

procedure TPersImageBatchForm.FormCreate(Sender: TObject);
Var PersimageDir : String;
begin
  bImportedFiles         := False;
  PersImageDir           := SQLLookUp(mFireID,'FDID','IMAGESET','PERSIMAGEDIR');
  PersImageDirField.Text := IIf(PersImageDir = '',ExtractFilePath(ParamStr(0)),PersImageDir);
  ErrorLabel.Enabled     := false;
  If not DirectoryExists(PersImageDirField.Value) then begin
    ErrorLabel.Enabled     := true;
  end else begin
    try
      FileList.Directory     := PersImageDirField.Text;
      FileList.Mask          := '*.pdf';
    except
    end;
  end;
  UpperSizeField.Value   := '1000000';
  If mfireid = '28024' then
    PersImageDirField.Text   := 'C:\Users\LFD\Documents\Firefighter Information\';
  ResetFileBrowse;
end;

procedure TPersImageBatchForm.ImportButtonClick(Sender: TObject);
var i               : Integer;
    CheckValue      : Boolean;
    FileName        : String;
    FileSize        : Real;
    DateTimeFile    : TDateTime;
    iImport         : Integer;
    TableName       : String;
    FirstFieldName  : String;
    SecondFieldName : String;
begin
  iImport        := 0;
  Gauge.MaxValue := FileBrowse.RowCount;
  Gauge.progress := 0;

  If ModCode = 'PERS' then begin
    TableName       := 'PERSIMAGE';
    FirstFieldName  := 'PERSID';
    SecondFieldName := '';

  end else if ModCode = 'ARSON' then begin
    TableName       := 'ARSONIMAGE';
    FirstFieldName  := 'ARSONHISTID';
    SecondFieldName := 'NFIRSARSONID';
  end;

  For i := FileBrowse.FixedRows to FileBrowse.RowCount-1 do begin
    FileBrowse.GetCheckBoxState(1,i,CheckValue);
    If CheckValue then begin
      bImportedFiles := True;
      iImport        := iImport + 1;
      FileName       := PersImageDirField.Text+ '\' +FileBrowse.GetValue('FILENAME',I);
      FileSize       := GetFileSize(FileName);
      DateTimeFile   := FileDateToDateTime(FileAge(FileName));
      Open_Query(TableName,True,'SELECT * FROM ' + TableName + '  WHERE 1=2');                                                
      GetTable(TableName).Insert;
      (A(TableName).FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
      TBlobField(A(TableName).FieldByName('IMAGEBLOB')).LoadFromFile(FileName);
      If Not (FirstFieldName = '') then
        GetField(TableName,FirstFieldName).AsString   := FirstRecordID;
      If Not (SecondFieldName = '') then
        GetField(TableName,SecondFieldName).AsString  := SecondRecordID;
      GetField(TableName,'FILENAME').AsString       := UpperCase(FileName);
      GetField(TableName,'DESCR').AsString          := FileBrowse.GetValue('FILENAME',I);
      GetField(TableName,'FILEEXT').AsString        := Substr(ExtractFileExt(UpperCase(FileName)),2,100);
      GetField(TableName,'FILESIZE').AsFloat        := FileSize;
      GetField(TableName,'COMPUTER').AsString       := AlpineGetComputerName;
      GetField(TableName,'DATETIMEFILE').AsDateTime := DateTimeFile;
      GetTable(TableName).Post;
      CloseApollo(TableName);
    end;
    Gauge.progress  := Gauge.progress + 1;
    Application.ProcessMessages;
  end;
  Gauge.progress  := 0;
  ShowMessage('Imported ' + inttostr(iImport) + ' documents from directory ' + PersImageDirField.value);
end;

procedure TPersImageBatchForm.QueryDirectoryButtonClick(Sender: TObject);
Var FileNum  : Integer;
    RowNum   : Integer;
    FileSize : Real;
begin
  if not DirectoryExists(PersImageDirField.Value) then begin
    showmessage('Folder ' + PersImageDirField.Value + ' Does not exist.  Please enter a valid folder');
    exit;
  end;

  FileList.Directory   := PersImageDirField.Value;

  FileList.Mask := '';
  if pdf.checked then
    FileList.Mask := FileList.Mask + '*.pdf;';
  if jpg.checked then
    FileList.Mask := FileList.Mask + '*.jpg;';
  if png.checked then
    FileList.Mask := FileList.Mask + '*.png;';

  ResetFileBrowse;
  RowNum               := 1;

  For FileNum := 0 to FileList.Count-1 do begin
    FileSize             := GetFileSize(FileList.Directory + '\' + FileList.Items[FileNum]);
    tagbutton.Enabled    := True;
    untagbutton.enabled  := True;
    importbutton.enabled := True;

    If (FileSize <= AnyStrToFloat(UpperSizeField.Value)) then begin
      FileBrowse.SetValue('SPACE','');
      FileBrowse.AddCheckBox(1,RowNum,False,False);
      FileBrowse.SetValue('DIRECTORY',FileList.Directory);
      FileBrowse.SetValue('FILENAME',FileList.Items[FileNum]);
      FileBrowse.SetValue('FILETYPE',UpperCase(ExtractFileExt(FileList.Items[FileNum])));
      FileBrowse.SetValue('FILESIZE',FormatFloat('##,###,##0',FileSize));
      RowNum := RowNum + 1;
      Application.ProcessMessages;
    end;  
  end;
end;

procedure TPersImageBatchForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to FileBrowse.RowCount do begin
    FileBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure TPersImageBatchForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to FileBrowse.RowCount do begin
    FileBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure TPersImageBatchForm.ResetFileBrowse;
begin
  FileBrowse.Clear;
  FileBrowse.ColCount := 0;
  FileBrowse.RowCount := 0;
  FileBrowse.ClearColumns;

  FileBrowse.FixedRowAlways := true;
  FileBrowse.RowCount       := FileBrowse.FixedRows;

  FileBrowse.SetColumn('SPACE',         '',           001);
  FileBrowse.SetColumn('CHECKBOX',      '',           020);
  FileBrowse.SetColumn('DIRECTORY',     'Directory',  300);
  FileBrowse.SetColumn('FILENAME',      'File Name',  400);
  FileBrowse.SetColumn('FILETYPE',      'Type',       100);
  FileBrowse.SetColumn('FILESIZE',      'File Size',  500);

  FileBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  TagButton.Enabled                               := False;
  UnTagButton.enabled                             := False;
  ImportButton.enabled                            := False;
end;


end.
