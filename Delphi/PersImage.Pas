unit PersImage;

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
  AppLst,
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
  TPersImageForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel1: TPanel;
    RightPanel: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    NarrPanel: TPanel;
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
    PersImageTypeTab: TTabControl;
    PersImageBrowse: TAlpineBlockBrowse;
    Panel4: TPanel;
    Label1: TLabel;
    Timer1: TTimer;
    AdobePanel: TPanel;
    WebBrowser1: TWebBrowser;
    QueryDirectoryButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure PersImageBrowseClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PersImageBrowseAfterDelete(Sender: TObject);
    procedure PersImageBrowsePrint(Sender: TObject);
    procedure ImageFullPageChoiceClick(Sender: TObject);
    procedure ImageFitWidthChoiceClick(Sender: TObject);
    procedure FitHeightChoiceClick(Sender: TObject);
    procedure FitPageChoiceClick(Sender: TObject);
    procedure RotateChoiceClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure PDFChoiceRotateClick(Sender: TObject);
    procedure ShowActualSize1Click(Sender: TObject);
    procedure PersImageTypeTabChange(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure PersImageBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
    procedure QueryDirectoryButtonClick(Sender: TObject);
  private
    { Private declarations }
    PersImageTypeList : TStringList;
    mPdfFile: String;
    procedure ShowImage(PersImageID, FileName: String);
    procedure LoadImage(PersImageID : String);
    procedure LoadPDF(PersImageID : String);
  public
    { Public declarations }
    procedure ImageListNewRecord(DataSet: TDataSet);
    procedure Createwnd; override;
    procedure WMDROPFILE(var message:TMessage); message WM_DROPFILES;
    procedure AddPersImage(FileName: String);
    class function CheckImageFile(FileName: String): Boolean;
  end;

var
  PersImageForm: TPersImageForm;

implementation
uses GenFunc,
     ShellApi,
     CommonFunc,
     CommonVar,
     ImageSet,
     SecSet,
     EnPrint,
     PersImageBatch,
     PersImageEntry;

{$R *.dfm}

procedure TPersImageForm.FitHeightChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitHeight;
end;

procedure TPersImageForm.FitPageChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitToPage;
end;

procedure TPersImageForm.ImageFitWidthChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFitWidth;
end;

procedure TPersImageForm.FormCreate(Sender: TObject);
begin
  // if you get a compile time error on the following line, then you do not have the most recent version.
  pdfimage.status := pdfimage.status;
  If FindDibGraphicClass('*.JPG') = nil then
    RegisterDibGraphic('JPG', 'JPEG file', TJpegGraphic);

  PersImageTypeList := TStringList.Create;

  Open_Query('PERSIMAGETYPE',false,'SELECT * FROM PERSIMAGETYPE ORDER BY DESCR');
  If A('PERSIMAGETYPE').RecordsExist then begin
    PersImageTypeTab.Tabs.Add('All');
    PersImageTypeList.Add('');

    While Not A('PERSIMAGETYPE').Eof do begin
      PersImageTypeTab.Tabs.Add(tdbfield('PERSIMAGETYPE','DESCR'));
      PersImageTypeList.Add(GetField('PERSIMAGETYPE','PERSIMAGETYPEID').AsString);
      A('PERSIMAGETYPE').Skip(1);
    end;
  end;
  CloseApollo('PERSIMAGETYPE');

  PersImageBrowse.Setup('PERSIMAGE','PERSID',pk,TPersImageEntryForm,ImageListNewRecord);
  PersImageBrowse.Grid.OnClick          := PersImageBrowseClick;
  PersImageBrowse.Grid.FixedRowHeight   := 25;
  PersImageBrowse.Grid.DefaultRowHeight := 25;
  PersImageBrowseClick(self);
  Timer1.Enabled := False;
  QueryDirectoryButton.Parent           := PersImageBrowse.FButtonPanel;
  QueryDirectoryButton.Align            := alclient;
end;

procedure TPersImageForm.FormShow(Sender: TObject);
begin                                             
  PersImageBrowse.FButtonPanel.Visible  := CheckSecVar('PERSEDIT');
  PersImageBrowse.FEditButton.Enabled   := CheckSecVar('IMAGEEDIT');
  PersImageBrowse.FDeleteButton.Enabled := CheckSecVar('IMAGEDEL');
  If mFireId = '25150' then begin
    if not PersImageBrowse.FButtonPanel.Visible  then
      PersImageBrowse.FButtonPanel.Visible  := CheckSecVar('MSFDIMAGEPRINT');
    PersImageBrowse.FPrintButton.Enabled  := CheckSecVar('MSFDIMAGEPRINT');
  end;
    PersImageBrowse.FPrintButton.Position    := bpmiddle;
  ScaleButtonsOnPanelUsingTags('H',PersImageBrowse.FButtonPanel);
end;

procedure TPersImageForm.ImageFullPageChoiceClick(Sender: TObject);
begin
  ImageScrollBox1.ZoomMode := zmFullPage;
end;

procedure TPersImageForm.ImageListNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString  := ' ';
  DataSet.FieldbyName('PERSID').AsString := pk;
end;

procedure TPersImageForm.PersImageBrowseAfterDelete(Sender: TObject);
Var PersImageID : String;
    FileName    : String;
begin
  PersImageID             := PersImageBrowse.Grid.GetValue('PERSIMAGEID');
  FileName                := PersImageBrowse.Grid.GetValue('FILENAME');
  NarrField.Caption       := PersImageBrowse.Grid.GetValue('NARR');

  If AnyStrToInt(PersImageID) > 0 then
    RightPanel.Caption.Text := PersImageBrowse.Grid.GetValue('DESCR') + ', File Type: ' + PersImageBrowse.Grid.GetValue('FILEEXT')
  else
    RightPanel.Caption.Text := 'No image';

  If (PersImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ConfidentialPanel.Visible := true;
    MainPanel.Visible         := false;
    NarrField.Visible         := false;
    RightPanel.Caption.Text   := 'Confidential Document.  Requires Security Setting';
  end else begin
    ConfidentialPanel.Visible := false;
    MainPanel.Visible         := true;
    NarrField.Visible         := true;
    ShowImage(PersImageID, FileName);
  end;  
end;

procedure TPersImageForm.PersImageBrowseClick(Sender: TObject);
Var PersImageID : String;
    FileName    : String;
begin
  PersImageID             := PersImageBrowse.Grid.GetValue('PERSIMAGEID');
  FileName                := PersImageBrowse.Grid.GetValue('FILENAME');
  NarrField.Caption       := PersImageBrowse.Grid.GetValue('NARR');

  If AnyStrToInt(PersImageID) > 0 then
    RightPanel.Caption.Text := PersImageBrowse.Grid.GetValue('DESCR') + ', File Type: ' + PersImageBrowse.Grid.GetValue('FILEEXT')
  else
    RightPanel.Caption.Text := 'No image';

  If (PersImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ConfidentialPanel.Visible := true;
    MainPanel.Visible         := false;
    NarrField.Visible         := false;
    RightPanel.Caption.Text   := 'Confidential Document.  Requires Security Setting';
  end else begin
    ConfidentialPanel.Visible := false;
    MainPanel.Visible         := true;
    NarrField.Visible         := true;
    ShowImage(PersImageID, FileName);
  end;
end;

procedure TPersImageForm.PersImageBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: string; var Value: string);
begin
  If AlpineQuery.FieldByName('CONFIDENTIAL').AsString = 'Y' then begin
    If FieldName = 'DESCR' then begin
      If Not CheckSecVar('PERSCONF') then begin
        Value := '**  Confidential  **';
      end;
    end;
  end;
end;

procedure TPersImageForm.PersImageBrowsePrint(Sender: TObject);
Var GraphicPrinter : TDibGraphicPrinter;
    Dialog         : TPrinterSetupDialog;
    PrintVar       : Boolean;
begin
  If (PersImageBrowse.Grid.GetValue('CONFIDENTIAL') = 'Y') and Not CheckSecVar('PERSCONF') then begin
    ShowMessage('Confidential document.  You need security access to print it.')
  end else begin
    If AdobePanel.Visible then begin
      ShowMessage('To print using Embedded Adobe, click on the Adobe Print Option within the PDF')
    end else If PDFImage.Visible then
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

procedure TPersImageForm.PersImageTypeTabChange(Sender: TObject);
Var PersImageTypeID : String;
begin
  PersImageTypeID := PersImageTypeList[PersImageTypeTab.TabIndex];
  If PersImageTypeTab.TabIndex = 0 then begin
    PersImageBrowse.ExplicitWhereClause := ' WHERE PERSID = ' + pk;
  end else begin
    PersImageBrowse.ExplicitWhereClause := ' WHERE PERSID = ' + pk + ' AND PERSIMAGE.PERSIMAGETYPEID = ' + PersImageTypeID;
  end;

  PersImageBrowse.Setup('PERSIMAGE',TPersImageEntryForm,ImageListNewRecord);
  PersImageBrowse.Grid.OnClick          := PersImageBrowseClick;
  PersImageBrowse.Grid.FixedRowHeight   := 25;
  PersImageBrowse.Grid.DefaultRowHeight := 25;
  PersImageBrowseClick(self);
end;

procedure TPersImageForm.QueryDirectoryButtonClick(Sender: TObject);
begin
  PersImageBatchForm := TPersImageBatchForm.Create(application,'PERS',PK,'');
  PersImageBatchForm.ShowModal;
  If PersImageBatchForm.bImportedFiles then
    PersImageBrowse.RefreshGrid(-1);
  PersImageBatchForm.Free;
end;

procedure TPersImageForm.RotateChoiceClick(Sender: TObject);
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

procedure TPersImageForm.ShowActualSize1Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztActualSize);
end;

procedure TPersImageForm.ShowImage(PersImageID, FileName: String);
begin
  WebBrowser1.Navigate('');
  PDFImage.Visible        := false;
  AdobePanel.Visible      := False;
  ImageScrollBox1.Visible := False;
  FileName := UpperCase(FileName);
  If at('.JPG',FileName) > 0 then begin
    LoadImage(PersImageID);
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
    ImageScrollBox1.ZoomMode := zmFullPage;
  end else If at('.TIF',FileName) > 0 then begin
    LoadImage(PersImageID);
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
    ImageScrollBox1.ZoomMode := zmFullPage;
  end else If at('.PNG',FileName) > 0 then begin
    LoadImage(PersImageID);
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
    ImageScrollBox1.ZoomMode := zmFullPage;
  end else If at('.GIF',FileName) > 0 then begin
    LoadImage(PersImageID);
    ImageScrollBox1.Visible := true;
    ImageScrollBox1.Align   := alclient;
    ImageScrollBox1.ZoomMode := zmFullPage;
  end else if at('.PDF',FileName) > 0 then begin
    LoadPDF(PersImageID);
  end;


end;

procedure TPersImageForm.Timer1Timer(Sender: TObject);
begin
  // exit - mjs , not sure what this purpose is.  It probpably can be removed.  
  try
//    PersImageBrowseClick(self);
  finally
    timer1.enabled := False;
  end;  
end;

procedure TPersImageForm.LoadPDF(PersImageID : String);
var Stream             : TMemoryStream;
    ImageName          : TJPegImage;
    TempHeight         : Real;
    mTempPDFFile       : String;
    mGraphicsDirectory : String;
begin
  inherited;
  if UseAdobeForPDF then begin
    mGraphicsDirectory := ExtractFileDir(ParamStr(0))+'\graphics\';

    if CreateGraphicsDirectory(mGraphicsDirectory) then begin
      mTempPDFFile := mGraphicsDirectory + 'pers_'+persimageid+'.pdf';
      if mPdfFile <> SearchAndReplace(mTempPDFFile,'\','/') then begin
        WebBrowser1.Align := alClient;
        AdobePanel.Align := alClient;
        try
          mPdfFile := mTempPDFFile;
          Open_Query('PERSIMAGE',false,'SELECT * FROM PERSIMAGE WHERE PERSIMAGEID = ' + PersImageID);
          TBlobField(A('PERSIMAGE').FieldByName('IMAGEBLOB')).SaveToFile(mPdfFile);
        finally
          CloseApollo('PERSIMAGE');
        end;
        AdobePanel.Visible := True;
        mpdfFile  := SearchAndReplace(mPdfFile,'\','/');
        WebBrowser1.Navigate('file:///'+mPdfFile);
        AdobePanel.BringToFront;
      end else
        AdobePanel.Visible := True;
    end;
  end else begin
    PDFImage.Align          := alclient;
    PDFImage.Visible        := true;  
    Stream    := TMemoryStream.create;
    ImageName := TJpegImage.create;
    try
      Open_Query('PERSIMAGE',false,'SELECT * FROM PERSIMAGE WHERE PERSIMAGEID = ' + PersImageID);
      TBlobField(A('PERSIMAGE').FieldByName('IMAGEBLOB')).SaveToStream(Stream);
      Stream.position := 0;
      gtPDFDocument1.LoadFromStream(stream);
      CloseApollo('PERSIMAGE');
    except
      CloseApollo('PERSIMAGE');
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
    try
      PDFImage.visible := False;
      application.processmessages;
      PDFImage.visible := True;
      application.processmessages;
    except

    end;

  end;
end;

procedure TPersImageForm.MenuItem1Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztFitPage);
end;

procedure TPersImageForm.MenuItem2Click(Sender: TObject);
begin
  PDFImage.Zoom := PDFImage.GetStandardZoomValue(sztFitWidth);
end;

procedure TPersImageForm.PDFChoiceRotateClick(Sender: TObject);
begin
  PDFImage.RotateClockwise90;
end;

procedure TPersImageForm.LoadImage(PersImageID : String);
var stream     : TMemoryStream;
begin
  Stream    := TMemoryStream.create;
  try
    Open_Query('PERSIMAGE2',false,'SELECT * FROM PERSIMAGE WHERE PERSIMAGEID = ' + pkValue(PersImageID));
    TBlobField(A('PERSIMAGE2').FieldByName('IMAGEBLOB')).SaveToStream(Stream);

    Stream.Position := 0;
    ImageScrollBox1.Clear;
    ImageScrollBox1.LoadFromStream(Stream,tdbfield('PERSIMAGE2','FILEEXT'),1);
    ImageScrollBox1.ZoomMode  := zmFitWidth;
    ImageScrollBox1.MouseMode := mmDrag;
  finally
    CloseApollo('PERSIMAGE2');
  end;
  Stream.free;

end;

procedure TPersImageForm.Createwnd;
begin
  inherited;
  DragAcceptFiles(Handle,True);
end;

procedure TPersImageForm.WMDropFile(var message:TMessage);
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
    If TPersImageForm.CheckImageFile(FileName) then
      AddPersImage(FileName);
    StrDispose(FileName);
  end;
  DragFinish(Message.wParam);
end;

class function TPersImageForm.CheckImageFile(FileName: String): Boolean;
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

procedure TPersImageForm.AddPersImage(FileName: String);
Var PersImageID  : String;
    Narr         : String;
    Descr        : String;
    FileSize     : Real;
    DateTimeFile : TDateTime;
begin
  try
    FileSize     := GetFileSize(FileName);
    DateTimeFile := FileDateToDateTime(FileAge(FileName));

    Open_Query('PERSIMAGE',True,'SELECT * FROM PERSIMAGE WHERE 1=2');
    GetTable('PERSIMAGE').Append;
    (A('PERSIMAGE').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
    TBlobField(A('PERSIMAGE').FieldByName('IMAGEBLOB')).LoadFromFile(FileName);
    GetField('PERSIMAGE','FILENAME').AsString       := UpperCase(FileName);
    GetField('PERSIMAGE','FILEEXT').AsString        := Substr(ExtractFileExt(UpperCase(FileName)),2,10);
    GetField('PERSIMAGE','PERSID').AsString         := pk;
    GetField('PERSIMAGE','FILESIZE').AsFloat        := FileSize;
    GetField('PERSIMAGE','COMPUTER').AsString       := AlpineGetComputerName;
    GetField('PERSIMAGE','DATETIMEFILE').AsDateTime := DateTimeFile;
    GetTable('PERSIMAGE').Post;
    PersImageID                               := GetField('PERSIMAGE','PERSIMAGEID').AsString;
  finally
    CloseApollo('PERSIMAGE');
  end;

  Application.BringToFront;

  ShowImage(PersImageID, FileName);

  RunAlpineFormShowModal(TPersImageEntryForm,PersImageID,'PERSIMAGE',ImageListNewRecord);

  Open_Query('PERSIMAGE',false,'SELECT NARR, DESCR FROM PERSIMAGE WHERE PERSIMAGEID = ' + pkValue(PersImageID));
  Descr := tdbfield('PERSIMAGE','DESCR');
  Narr  := GetField('PERSIMAGE','NARR').AsString;
  CloseApollo('PERSIMAGE');

  PersImageBrowse.Grid.SetValue('PERSIMAGEID',PersImageID);
  PersImageBrowse.Grid.SetValue('DESCR',Descr);
  PersImageBrowse.Grid.SetValue('FILENAME',UpperCase(FileName));
  PersImageBrowse.Grid.SetValue('NARR',Narr);
  PersImageBrowse.Grid.Row                   := PersImageBrowse.Grid.RowCount-1;

  PersImageBrowse.FEditButton.Enabled      := true;
  PersImageBrowse.FDeleteButton.Enabled    := CheckSecVar('IMAGEDEL');
end;

end.
 
