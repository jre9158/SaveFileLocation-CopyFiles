unit ArsonImage;

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
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  NormalBase,
  AlpineMemo,
  AdvGroupBox,
  jpeg,
  gtScrollingPanel,
  gtPDFViewer,
  gtPDFClasses,
  gtCstPDFDoc,
  gtExPDFDoc,
  gtExProPDFDoc,
  gtPDFDoc,
  gtPDFSearchPanel,
  gtViewerTypes,
  ATImageBox,
  ComCtrls,
  EnJpgGr,
  EnDiGrph,
  EnTransf,
  EnImgScr,
  Menus,
  Blink,
  OleCtrls,
  SHDocVw;

type
  TArsonImageForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel1: TPanel;
    RightPanel: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    Panel2: TPanel;
    NarrField: TLabel;
    gtPDFDocument1: TgtPDFDocument;
    MainPanel: TPanel;
    PDFImage: TgtPDFViewer;
    ImageScrollBox1: TImageScrollBox;
    ImageMenu: TPopupMenu;
    FullPageChoice: TMenuItem;
    FitWidthChoice: TMenuItem;
    FitHeightChoice: TMenuItem;
    FitPageChoice: TMenuItem;
    RotateChoice: TMenuItem;
    PDFMenu: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    PDFChoiceRotate: TMenuItem;
    ShowActualSize1: TMenuItem;
    ConfidentialPanel: TPanel;
    BlinkLabel1: TBlinkLabel;
    Panel3: TPanel;
    ArsonImageTypeTab: TTabControl;
    ArsonImageBrowse: TAlpineBlockBrowse;
    Panel4: TPanel;
    Label1: TLabel;
    AdobePanel: TPanel;
    WebBrowser1: TWebBrowser;
    QueryDirectoryButton: TAlpineGlowButton;
    NfirsArsonIDField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure ArsonImageBrowseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ArsonImageBrowseAfterDelete(Sender: TObject);
    procedure ArsonImageBrowsePrint(Sender: TObject);
    procedure ImageFullPageChoiceClick(Sender: TObject);
    procedure ImageFitWidthChoiceClick(Sender: TObject);
    procedure FitHeightChoiceClick(Sender: TObject);
    procedure FitPageChoiceClick(Sender: TObject);
    procedure RotateChoiceClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure PDFChoiceRotateClick(Sender: TObject);
    procedure ShowActualSize1Click(Sender: TObject);
    procedure ArsonImageTypeTabChange(Sender: TObject);
    procedure ArsonImageBrowseAfterRefresh(Sender: TObject);
    procedure QueryDirectoryButtonClick(Sender: TObject);
  private
    { Private declarations }
    ArsonImageTypeList : TStringList;
    mPdfFile           : String;    
    procedure ShowImage(ArsonImageID, FileName: String);
    procedure LoadImage(ArsonImageID : String);
    procedure LoadPDF(ArsonImageID : String);
  public
    { Public declarations }
    procedure ImageListNewRecord(DataSet: TDataSet);
    procedure Createwnd; override;
    procedure WMDROPFILE(var message:TMessage); message WM_DROPFILES;
    procedure AddArsonImage(FileName: String);
    class function CheckImageFile(FileName: String): Boolean;
  end;

var
  ArsonImageForm: TArsonImageForm;

implementation
uses GenFunc,
     AppLst,
     ShellApi,
     CommonFunc,
     ImageSet,
     CommonVar,
     SecSet,
     EnPrint,
     NfirsArsonInv,
     PersImageBatch,
     ArsonImageEntry;

{$R *.dfm}

procedure TArsonImageForm.FitHeightChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitHeight;
end;

procedure TArsonImageForm.FitPageChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitToPage;
end;

procedure TArsonImageForm.ImageFitWidthChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitWidth;
end;

procedure TArsonImageForm.FormCreate(Sender: TObject);
begin
  If FindDibGraphicClass('*.JPG') = nil then
    RegisterDibGraphic('JPG', 'JPEG file', TJpegGraphic);

  ArsonImageTypeList := TStringList.Create;

  Open_Query('ARSONIMAGETYPE',false,'SELECT * FROM ARSONIMAGETYPE ORDER BY DESCR');
  If A('ARSONIMAGETYPE').RecordsExist then begin
    ArsonImageTypeTab.Tabs.Add('All');
    ArsonImageTypeList.Add('');

    While Not A('ARSONIMAGETYPE').Eof do begin
      ArsonImageTypeTab.Tabs.Add(tdbfield('ARSONIMAGETYPE','DESCR'));
      ArsonImageTypeList.Add(GetField('ARSONIMAGETYPE','ARSONIMAGETYPEID').AsString);
      A('ARSONIMAGETYPE').Skip(1);
    end;
  end;
  CloseApollo('ARSONIMAGETYPE');

  If ArsonHistID <> '' then
    ArsonImageBrowse.Setup('ARSONIMAGE','ARSONHISTID',ArsonHistID,TArsonImageEntryForm,ImageListNewRecord)
  else if ArsonPersonID <> '' then
    ArsonImageBrowse.Setup('ARSONIMAGE','ARSONPERSONID',ArsonPersonID,TArsonImageEntryForm,ImageListNewRecord)
  else if ArsonEvidenceID <> '' then
    ArsonImageBrowse.Setup('ARSONIMAGE','ARSONEVIDENCEID',ArsonEvidenceID,TArsonImageEntryForm,ImageListNewRecord)
  else
    ArsonImageBrowse.Setup('ARSONIMAGE','NFIRSARSONID',pk,TArsonImageEntryForm,ImageListNewRecord);

  ArsonImageBrowse.Grid.OnClick          := ArsonImageBrowseClick;
  ArsonImageBrowse.Grid.FixedRowHeight   := 25;
  ArsonImageBrowse.Grid.DefaultRowHeight := 25;
  ArsonImageBrowseClick(self);
  QueryDirectoryButton.Parent           := ArsonImageBrowse.FButtonPanel;
  QueryDirectoryButton.Align            := alclient;
end;

procedure TArsonImageForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',ArsonImageBrowse.FButtonPanel);
end;

procedure TArsonImageForm.ImageFullPageChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFullPage;
end;

procedure TArsonImageForm.ImageListNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString           := ' ';
  DataSet.FieldbyName('NFIRSARSONID').AsString    := NfirsArsonID;
  DataSet.FieldbyName('ARSONHISTID').AsString     := ArsonHistID;
  DataSet.FieldbyName('ARSONPERSONID').AsString   := ArsonPersonID;
  DataSet.FieldbyName('ARSONEVIDENCEID').AsString := ArsonEvidenceID;
end;

procedure TArsonImageForm.ArsonImageBrowseAfterDelete(Sender: TObject);
Var ArsonImageID : String;
    FileName    : String;
begin
  ArsonImageID             := ArsonImageBrowse.Grid.GetValue('ArsonImageID');
  FileName                := ArsonImageBrowse.Grid.GetValue('FILENAME');
  NarrField.Caption       := ArsonImageBrowse.Grid.GetValue('NARR');

  If AnyStrToInt(ArsonImageID) > 0 then
    RightPanel.Caption.Text := ArsonImageBrowse.Grid.GetValue('DESCR') + ', File Type: ' + ArsonImageBrowse.Grid.GetValue('FILEEXT')
  else
    RightPanel.Caption.Text := 'No image';

  If (ArsonImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ConfidentialPanel.Visible := true;
    MainPanel.Visible         := false;
  end else begin
    ConfidentialPanel.Visible := false;
    MainPanel.Visible         := true;
    ShowImage(ArsonImageID, FileName);
  end;  
end;

procedure TArsonImageForm.ArsonImageBrowseAfterRefresh(Sender: TObject);
Var ArsonImageID : String;
    FileName    : String;
begin
  ArsonImageID            := ArsonImageBrowse.Grid.GetValue('ArsonImageID');
  FileName                := ArsonImageBrowse.Grid.GetValue('FILENAME');
  NarrField.Caption       := ArsonImageBrowse.Grid.GetValue('NARR');

  If AnyStrToInt(ArsonImageID) > 0 then
    RightPanel.Caption.Text := ArsonImageBrowse.Grid.GetValue('DESCR') + ', File Type: ' + ArsonImageBrowse.Grid.GetValue('FILEEXT')
  else
    RightPanel.Caption.Text := 'No image';

  If (ArsonImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ConfidentialPanel.Visible := true;
    MainPanel.Visible         := false;
  end else begin
    ConfidentialPanel.Visible := false;
    MainPanel.Visible         := true;
    ShowImage(ArsonImageID, FileName);
  end;
end;

procedure TArsonImageForm.ArsonImageBrowseClick(Sender: TObject);
Var ArsonImageID : String;
    FileName    : String;
begin
  ArsonImageID            := ArsonImageBrowse.Grid.GetValue('ArsonImageID');
  FileName                := ArsonImageBrowse.Grid.GetValue('FILENAME');
  NarrField.Caption       := ArsonImageBrowse.Grid.GetValue('NARR');

  If AnyStrToInt(ArsonImageID) > 0 then
    RightPanel.Caption.Text := ArsonImageBrowse.Grid.GetValue('DESCR') + ', File Type: ' + ArsonImageBrowse.Grid.GetValue('FILEEXT')
  else
    RightPanel.Caption.Text := 'No image';

  If (ArsonImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ConfidentialPanel.Visible := true;
    MainPanel.Visible         := false;
  end else begin
    ConfidentialPanel.Visible := false;
    MainPanel.Visible         := true;
    ShowImage(ArsonImageID, FileName);
  end;
end;

procedure TArsonImageForm.ArsonImageBrowsePrint(Sender: TObject);
Var GraphicPrinter : TDibGraphicPrinter;
    Dialog         : TPrinterSetupDialog;
    PrintVar       : Boolean;
begin
  If (ArsonImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and CheckSecVar('PERSCONF') then begin
    ShowMessage('Confidential')
  end else begin
    If AdobePanel.Visible then 
      ShowMessage('To print using Embedded Adobe, click on the Adobe Print Option within the PDF')

    else if PDFImage.Visible then
      PDFImage.PrintDoc
      
    else begin

      Dialog   := TPrinterSetupDialog.Create(nil);
      PrintVar := Dialog.Execute;
      Dialog.Free;

      If PrintVar then begin
        GraphicPrinter := TDibGraphicPrinter.Create;
        try
          GraphicPrinter.PrintMode   := pmFullPage;
          GraphicPrinter.Print(ImageScrollBox1.Graphic);
        finally
          GraphicPrinter.Free;
        end;
      end;
    end;
  end;  
end;

procedure TArsonImageForm.ArsonImageTypeTabChange(Sender: TObject);
Var ArsonImageTypeID : String;
begin
  ArsonImageTypeID := ArsonImageTypeList[ArsonImageTypeTab.TabIndex];
  If ArsonImageTypeTab.TabIndex = 0 then begin
    ArsonImageBrowse.ExplicitWhereClause := ' WHERE NFIRSARSONID = ' + pk;
  end else begin
    ArsonImageBrowse.ExplicitWhereClause := ' WHERE NFIRSARSONID = ' + pk + ' AND ARSONIMAGE.ARSONIMAGETYPEID = ' + ArsonImageTypeID;
  end;

  ArsonImageBrowse.Setup('ARSONIMAGE',TArsonImageEntryForm,ImageListNewRecord);
  ArsonImageBrowse.Grid.OnClick          := ArsonImageBrowseClick;
  ArsonImageBrowse.Grid.FixedRowHeight   := 25;
  ArsonImageBrowse.Grid.DefaultRowHeight := 25;
  ArsonImageBrowseClick(self);
end;

procedure TArsonImageForm.RotateChoiceClick(Sender: TObject);
var Transform    : TRotateTransform;
begin
  Transform := TRotateTransform.Create;
  try
    Transform.Angle           := 90;
    Transform.Apply(ImageScrollBox1.Graphic);
  finally
    Transform.Free;
  end;
  ImageScrollBox1.Redraw(True);
end;

procedure TArsonImageForm.ShowActualSize1Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztActualSize);
end;

procedure TArsonImageForm.ShowImage(ArsonImageID, FileName: String);
begin
  FileName := UpperCase(FileName);
  AdobePanel.Visible      := False;
  If at('JPG',FileName) > 0 then begin
    LoadImage(ArsonImageID);
    PDFImage.Visible         := false;
    ImageScrollBox1.Visible  := true;
    ImageScrollBox1.Align    := alclient;
    ImageScrollBox1.ZoomMode := zmFullPage;
  end else If at('TIF',FileName) > 0 then begin
    LoadImage(ArsonImageID);
    PDFImage.Visible        := false;
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
  end else If at('PNG',FileName) > 0 then begin
    LoadImage(ArsonImageID);
    PDFImage.Visible        := false;
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
  end else If at('GIF',FileName) > 0 then begin
    LoadImage(ArsonImageID);
    PDFImage.Visible        := false;
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
  end else if at('PDF',FileName) > 0 then begin
    LoadPDF(ArsonImageID);
    ImageScrollBox1.Visible := false;
    PDFImage.Align          := alclient;
    PDFImage.Visible        := true;
  end else begin
    PDFImage.Visible        := false;
    ImageScrollBox1.Visible := false;
  end;
end;

procedure TArsonImageForm.LoadPDF(ArsonImageID : String);
var Stream             : TMemoryStream;
    ImageName          : TJPegImage;
    TempHeight         : Real;
    mTempPDFFile       : String;
    mGraphicsDirectory : String;
begin
  inherited;
  If UseAdobeForPDF then begin
    mGraphicsDirectory := ExtractFileDir(ParamStr(0))+'\graphics\';

    if CreateGraphicsDirectory(mGraphicsDirectory) then begin
      mTempPDFFile := mGraphicsDirectory + 'Arson_' + ArsonImageID + '.pdf';
      if mPdfFile <> SearchAndReplace(mTempPDFFile,'\','/') then begin
        WebBrowser1.Align := alClient;
        AdobePanel.Align := alClient;
        try
          mPdfFile := mTempPDFFile;
          Open_Query('ARSONIMAGE',false,'SELECT * FROM ARSONIMAGE WHERE ARSONIMAGEID = ' + ArsonImageID);
          TBlobField(A('ARSONIMAGE').FieldByName('IMAGEBLOB')).SaveToFile(mPdfFile);
        finally
          CloseApollo('ARSONIMAGE');
        end;
        AdobePanel.Visible := True;
        mpdfFile           := SearchAndReplace(mPdfFile,'\','/');
        WebBrowser1.Navigate('file:///'+mPdfFile);
        AdobePanel.BringToFront;
      end else
        AdobePanel.Visible := True;
    end;
  end else begin

    Stream    := TMemoryStream.create;
    ImageName := TJpegImage.create;
    try
      Open_Query('ARSONIMAGE',false,'SELECT * FROM ARSONIMAGE WHERE ArsonImageID = ' + ArsonImageID);
      TBlobField(A('ARSONIMAGE').FieldByName('IMAGEBLOB')).SaveToStream(Stream);
      Stream.position := 0;
      gtPDFDocument1.LoadFromStream(stream);
      CloseApollo('ARSONIMAGE');
    except
      CloseApollo('ARSONIMAGE');
    end;
    ImageName.Free;
    Stream.free;

    Try
      PDFImage.PDFDocument := gtPDFDocument1;
      If gtPDFDocument1.IsLoaded then
        PDFImage.Active := True;
      PDFImage.Zoom        := PDFImage.GetStandardZoomValue(sztFitPage);
    except
    end;
  end;  
end;

procedure TArsonImageForm.MenuItem1Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztFitPage);
end;

procedure TArsonImageForm.MenuItem2Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztFitWidth);
end;

procedure TArsonImageForm.PDFChoiceRotateClick(Sender: TObject);
begin
  PDFImage.RotateClockwise90;
end;

procedure TArsonImageForm.QueryDirectoryButtonClick(Sender: TObject);
begin
  PersImageBatchForm := TPersImageBatchForm.Create(application,'ARSON',pk,NfirsArsonIDField.Value);
  PersImageBatchForm.ShowModal;
  If PersImageBatchForm.bImportedFiles then
    ArsonImageBrowse.RefreshGrid(-1);
  PersImageBatchForm.Free;
end;

procedure TArsonImageForm.LoadImage(ArsonImageID : String);
var stream     : TMemoryStream;
begin
  Stream    := TMemoryStream.create;
  try
    Open_Query('ARSONIMAGE',false,'SELECT * FROM ARSONIMAGE WHERE ARSONIMAGEID = ' + pkValue(ArsonImageID));
    TBlobField(A('ARSONIMAGE').FieldByName('IMAGEBLOB')).SaveToStream(Stream);

    Stream.Position := 0;
    ImageScrollBox1.Clear;
    ImageScrollBox1.LoadFromStream(Stream,tdbfield('ARSONIMAGE','FILEEXT'),1);
    CloseApollo('ARSONIMAGE');
    ImageScrollBox1.ZoomMode  := zmFitWidth;
    ImageScrollBox1.MouseMode := mmDrag;

  except
    CloseApollo('ARSONIMAGE');
  end;
  Stream.free;
end;

procedure TArsonImageForm.Createwnd;
begin
  inherited;
  DragAcceptFiles(Handle,True);
end;

procedure TArsonImageForm.WMDropFile(var message:TMessage);
var FileName    : PChar;
    i           : Integer;
    FileAllSize : Integer;
    FileCount   : Integer;
begin
  FileName := '';
  FileCount := DragQueryFile(Message.wParam, $FFFFFFFF, FileName, 255);
  for i := 0 to FileCount - 1 do begin
    FileAllSize := DragQueryFile(Message.wParam, i, nil, 0) + 1;
    FileName    := StrAlloc(FileAllSize);
    DragQueryFile(Message.wParam, i, FileName, FileAllSize);
    If TArsonImageForm.CheckImageFile(FileName) then
      AddArsonImage(FileName);
    StrDispose(FileName);
  end;
  DragFinish(Message.wParam);
end;

class function TArsonImageForm.CheckImageFile(FileName: String): Boolean;
Var FileSize : Real;
    RetVal   : Boolean;
    FileLimit: Integer;
    SizeLimt : String;
begin
  SizeLimt     := SQLLookup(mFireId,'FDID','IMAGESET','SIZELIMIT');
  if SizeLimt <> '' then
    FileLimit    := StrToInt(SizeLimt)
  else
    FileLimit    := 1;

  if mFireId = '15020' then FileLimit := 3;
  if mFireId = '28032' then FileLimit := 5;

  FileName    := UpperCase(FileName);
  FileSize    := GetFileSize(FileName);

  If FileSize > (FileLimit * 1000000) then begin
    ShowMessage('That file is greater than ' + IntToStr(FileLimit) + ' meg, it is to big.');
    RetVal := false;
  end else if (At('.PDF',FileName) = 0) and (At('.JPG',FileName) = 0) and (At('.TIF',FileName) = 0) and (At('.GIF',FileName) = 0) and (At('.PNG',FileName) = 0) then begin
    ShowMessage('The imaging system only supports .JPG, .TIF, .GIF and .PDF formats');
    RetVal := false;
  end else
    RetVal := true;
  CheckImageFile := RetVal;
end;

procedure TArsonImageForm.AddArsonImage(FileName: String);
Var ArsonImageID  : String;
    Narr         : String;
    Descr        : String;
    FileSize     : Real;
    DateTimeFile : TDateTime;
begin
  try
    FileSize     := GetFileSize(FileName);
    DateTimeFile := FileDateToDateTime(FileAge(FileName));

    Open_Query('ARSONIMAGE',True,'SELECT * FROM ARSONIMAGE WHERE 1=2');
    GetTable('ARSONIMAGE').Append;
    (A('ARSONIMAGE').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
    TBlobField(A('ARSONIMAGE').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);
    GetField('ARSONIMAGE','FILENAME').AsString        := UpperCase(FileName);
    GetField('ARSONIMAGE','FILEEXT').AsString         := Substr(ExtractFileExt(UpperCase(FileName)),2,10);
    GetField('ARSONIMAGE','NFIRSARSONID').AsString    := NfirsArsonID;
    GetField('ARSONIMAGE','ARSONHISTID').AsString     := ArsonHistID;
    GetField('ARSONIMAGE','ARSONPERSONID').AsString   := ArsonPersonID;
    GetField('ARSONIMAGE','ARSONEVIDENCEID').AsString := ArsonEvidenceID;
    GetField('ARSONIMAGE','FILESIZE').AsFloat         := FileSize;
    GetField('ARSONIMAGE','COMPUTER').AsString        := AlpineGetComputerName;
    GetField('ARSONIMAGE','DATETIMEFILE').AsDateTime  := DateTimeFile;
    GetTable('ARSONIMAGE').Post;
    ArsonImageID                               := GetField('ARSONIMAGE','ARSONIMAGEID').AsString;
  finally
    CloseApollo('ARSONIMAGE');
  end;

  Application.BringToFront;

  ShowImage(ArsonImageID, FileName);

  RunAlpineFormShowModal(TArsonImageEntryForm,ArsonImageID,'ARSONIMAGE',ImageListNewRecord);

  Open_Query('ARSONIMAGE',false,'SELECT NARR, DESCR FROM ARSONIMAGE WHERE ARSONIMAGEID = ' + pkValue(ArsonImageID));
  Descr := tdbfield('ARSONIMAGE','DESCR');
  Narr  := GetField('ARSONIMAGE','NARR').AsString;
  CloseApollo('ARSONIMAGE');

  ArsonImageBrowse.Grid.SetValue('ArsonImageID',ArsonImageID);
  ArsonImageBrowse.Grid.SetValue('DESCR',Descr);
  ArsonImageBrowse.Grid.SetValue('FILENAME',UpperCase(FileName));
  ArsonImageBrowse.Grid.SetValue('NARR',Narr);
  ArsonImageBrowse.Grid.Row                   := ArsonImageBrowse.Grid.RowCount-1;

  ArsonImageBrowse.FEditButton.Enabled   := true;
  ArsonImageBrowse.FDeleteButton.Enabled := CheckSecVar('IMAGEDEL');
end;

end. 
