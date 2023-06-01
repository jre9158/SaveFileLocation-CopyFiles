unit Pers;

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
  AlpineLookup,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  HtmlBtns,
  AlpineMemo,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  RtfLabel,
  AdvToolBar,
  AdvToolBarStylers,
  Jpeg,
  AlpinePanel,
  AlpineCheck,
  AdvSelectors,
  PlannerCal,
  AlpineLookGrid,
  AlpineBase,
  HtmlTv,
  FDFuncBase,
  FDFunc,
  Menus;

type
  TPersForm = class(TNormalBaseForm)
    MainPanel: TAdvPanel;
    PersControl: TAdvPageControl;
    MainTab: TAdvTabSheet;
    imgPers: TImageList;
    LeftPanel: TAdvPanel;
    SchdTab: TAdvTabSheet;
    AdvPanel5: TAdvPanel;
    ImagePanel: TAdvPanel;
    MedTab: TAdvTabSheet;
    Image3: TImage;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    PersImage: TImage;
    ConfTab: TAdvTabSheet;
    NotesTab: TAdvTabSheet;
    EventTab: TAdvTabSheet;
    InvTab: TAdvTabSheet;
    TrainTab: TAdvTabSheet;
    Label31: TLabel;
    AttendLabel: TLabel;
    HistoryTab: TAdvTabSheet;
    Custom: TAdvTabSheet;
    MCITab: TAdvTabSheet;
    GeneralPanelxx: TPanel;
    PersIDMenu: TPopupMenu;
    AttachPictChoice: TMenuItem;
    DeletePictChoice: TMenuItem;
    YOSLabel: TLabel;
    YosField: TLabel;
    Label2: TLabel;
    Agelabel: TLabel;
    PersEMSQATab: TAdvTabSheet;
    HelpButton: TAlpineGlowButton;
    RedNMXButton: TAlpineGlowButton;
    PersImageTab: TAdvTabSheet;
    PersExpPanel: TAdvPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    BlinkLabel1: TBlinkLabel;
    BlinkLabel2: TBlinkLabel;
    BlinkLabel3: TBlinkLabel;
    BlinkLabel4: TBlinkLabel;
    PageRemTab: TAdvTabSheet;
    ImageDialog: TOpenDialog;
    AdvPanel1: TAdvPanel;
    Header: TLabel;
    TakePictChoice: TMenuItem;
    SavePictChoice: TMenuItem;
    SecButton: TAlpineGlowButton;
    ImageBlob: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FindButtonClick(Sender: TObject);
    procedure EventTabShow(Sender: TObject);
    procedure HistoryTabShow(Sender: TObject);
    procedure MedTabShow(Sender: TObject);
    procedure ConfTabShow(Sender: TObject);
    procedure InvTabShow(Sender: TObject);
    procedure MCITabShow(Sender: TObject);
    procedure MainTabShow(Sender: TObject);
    procedure NotesTabShow(Sender: TObject);
    procedure TrainTabShow(Sender: TObject);
    procedure SchdTabShow(Sender: TObject);
    procedure CustomShow(Sender: TObject);
    procedure PersControlChanging(Sender: TObject; var AllowChange: Boolean);
    procedure AttachPictChoiceClick(Sender: TObject);
    procedure DeletePictChoiceClick(Sender: TObject);
    procedure PersEMSQATabShow(Sender: TObject);
    procedure HelpButtonClick(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure PersImageTabShow(Sender: TObject);
    procedure PersExpPanelClick(Sender: TObject);
    procedure PageRemTabShow(Sender: TObject);
    procedure TakePictChoiceClick(Sender: TObject);
    procedure SavePictChoiceClick(Sender: TObject);
    procedure SecButtonClick(Sender: TObject);
  private
    F     : TBaseSubTabForm;
    FFdid : String;
  protected
    procedure DoAfterRecordAdded(Sender: TObject); override;
  public
    { Public declarations }
    property Fdid: String read FFdid write FFdid;
    class procedure NewRecord(DataSet: TDataSet);
    procedure SecNewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    procedure ShowImage(ImageListID: String);
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure DoAfterPost(Sender: TObject); override;
    procedure DoBeforePost(Sender: TObject); override;   
    class procedure SpecialClick(Sender: TObject); override;
    class procedure LoadMCIClick(Sender: TObject);
  end;

var
  PersForm: TPersForm;

implementation
uses GenFunc,
     PersCust,
     PersImage,
     SecSet,
     Sec,
     SysSet,
     SortGridView,
     PersHistRep,
     PersRep,
     PersMedSummRep,
     Commonfunc,
     AlpineRepGen,
     PersNIEvAtt,
     Inv,
     IDRep,
     PersGeneral,
     PersSchedule,
     PersMedical,
     PersConfidential,
     PersNotes,
     PersEvent,
     PersInventory,
     PersTraining,
     PersHistory,
     PersCallIn,
     SchdHistIndRep,
     PersEMSQA,
     PersNfirsAttRep,
     PersHistDetailRep,
     PersInvRep,
     PersPageRemind,
     PersImagePict,
     AlpineBaseSummaryReport,
     InvSet,
     ShellApi,
     SysDemoPictView,
     CommonVar,
     applst,
     CommonEncrypt;

{$R *.DFM}

class procedure TPersForm.NewRecord(DataSet: TDataSet);
var
  Perscode  : String;
begin
  DataSet.FieldbyName('LNAME').AsString  := ' ';
  DataSet.FieldbyName('FDID').AsString   := GetFdidVar;
  DataSet.FieldbyName('ATTEND').AsString := 'Y';

  LoadSysFieldDef(mFireID,'PERS',DataSet);
  if (mFireid = '15016') or (mFireid = 'HARFO') or (mFireid = '14011') then
    DataSet.FieldbyName('PERSCODE').AsString := GetNextCode('PERS','PERSCODE');

  //if (mFireid = '10700') then
  //  DataSet.FieldbyName('PERSCODE').AsString := GetNextVal(GlobalAdoConnection,'SELECT MAX(PERSCODE) FROM PERS WHERE ISNUMERIC(PERSCODE) = 1','');
  if MFireID = '13000' then begin
    PersCode := GetNextVal(GlobalAdoConnection,'SELECT MAX(CAST(PERSCODE AS INT)) FROM PERS','');
    if StrToInt(PersCode) >= 10000 then
      DataSet.FieldbyName('PERSCODE').AsString    := PersCode
    else
      DataSet.FieldbyName('PERSCODE').AsString    := '10000';
  end;
  if (mFireid = 'HARFO') then
    DataSet.FieldbyName('RESPONDER').AsString := 'Y';
end;

procedure TPersForm.FormCreate(Sender: TObject);
Var CustomLabel : String;
    SecFdid : TApolloData;
begin
  inherited;
  ImagePanel.Visible       := CheckModule('PERSPICT');
  ImageName                := 'PERSONNEL';
  Caption                  := 'Personnel Record Edit';
  ViewOnly                 := Not CheckSecVar('PERSEDIT');

  NewButton.Enabled        := CheckSecVar('PERSADD');
  DeleteButton.Enabled     := CheckSecVar('PERSDEL');
  MedTab.TabVisible        := CheckSecVar('PERSMED') OR ((CheckSecVar('PERSVWREC')) and (PK = GLOBALPERSID) and (mFireID = '01920'));
  SchdTab.TabVisible       := (CheckModule('SCHD') and CheckSecVar('SCHDCAL')) or (mFireid = '07130');
  If (mFireID = '10700') then begin
    YOSLabel.Visible := false;
    YOSField.Visible := false;
  end;
  InvTab.TabVisible        := CheckModule('INV');
  MCITab.TabVisible        := CheckModule('MCI') or CheckModule('RESPAPP');         //added by DW for all so we dont have to give access to 2 apps each time a customer buys responder
  ConfTab.TabVisible       := CheckSecVar('PERSCONF') OR ((CheckSecVar('PERSVWREC')) and (PK = GLOBALPERSID) and (mFireID = '01920'));
  If mFireid = '52008' then
    NotesTab.TabVisible   := CheckSecVar('PERSNOTESBFD');
  If ((SqlLookUp(pk,'PERSID','PERS','NARR') <> '') and (mFireid = '30006')) then            //added this for John on 10-23-15. DW
    PersControl.activepage.caption := 'Notes *';
  If mFireID = '30050' then
    HistoryTab.TabVisible  := CheckSecVar('PFDPERSHISTEDIT');
  TrainTab.TabVisible      := true;
  PersImageTab.TabVisible  := (SQLLookUp(mFireID,'FDID','IMAGESET','PERS') = 'Y');
  FFdid                    := SqlLookup(PK,'PERSID','PERS','FDID');
  Custom.TabVisible        := TPersonCustomForm.TabVisible;
  PersControl.ActivePage   := MainTab;
  FindButton.Enabled       := CheckSecVar('PERSVIEW');
  PersEMSQATab.TabVisible  := false;
  PageRemTab.TabVisible    := CheckModule('PAGEREM') and CheckSecVar('PAGEREMVIEW');

  CustomLabel              := SqlLookUp(mFireID,'FDID','PERSSET','CUSTOMLABEL');
  Custom.Caption           := IIf(CustomLabel = '','Custom',CustomLabel);
  If GetField('PERS','IMAGELISTID').AsInteger > 0 then
    ShowImage(GetField('PERS','IMAGELISTID').AsString);
  HelpButton.Visible       := mFireID = '12345';
  RedNMXButton.Visible     := mFireID = '12345';
  PersExpPanel.Visible     := ((mFireID = '12345') and AlpineLogin) or (mFireID = '44002');
  SecButton.Enabled        := (mFireID = '12345') and CheckSecVar('SECSETUP');

  AttachPictChoice.Enabled := Not ViewOnly;
  TakePictChoice.Enabled   := Not ViewOnly;
  DeletePictChoice.Enabled := Not ViewOnly;
  SavePictChoice.Enabled   := Not ViewOnly;
end;

procedure TPersForm.FindButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('PERS',TPersForm,TPersForm.NewRecord,nil);
end;

procedure TPersForm.MedTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonMedicalForm,MedTab);
end;

procedure TPersForm.TakePictChoiceClick(Sender: TObject);
begin
  inherited;
  PersImagePictForm := TPersImagePictForm.Create(application);
  PersImagePictForm.ShowModal;
  PersImagePictForm.Free;
end;

function TPersForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := CheckSecVar('PERSADD');
end;

function TPersForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('PERSDEL');
end;

procedure TPersForm.FormShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonGeneralForm,MainTab);
end;

procedure TPersForm.MainTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonGeneralForm,MainTab);
end;

procedure TPersForm.ConfTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonConfidentialForm,ConfTab);
end;

procedure TPersForm.NotesTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonNotesForm,NotesTab);
end;

procedure TPersForm.PersEMSQATabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersEMSQAForm,PersEMSQATab);
end;

procedure TPersForm.PersExpPanelClick(Sender: TObject);
begin
  inherited;
  PersExpPanel.Visible := false;
end;

procedure TPersForm.EventTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonEventForm,EventTab);
end;

procedure TPersForm.PersImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersImageForm,PersImageTab);
end;

procedure TPersForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'PERS');
  SysDemoPictViewForm.Show;
end;

procedure TPersForm.InvTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonInventoryForm,InvTab);
end;

procedure TPersForm.TrainTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonTrainingForm,TrainTab);
end;

procedure TPersForm.HelpButtonClick(Sender: TObject);
Var WebAddress : String;
begin
  inherited;
  WebAddress := 'http://rednmxmanuals.wikidot.com/personnel-setup';
  ShellExecute(Handle, 'open', pchar(WebAddress), nil, nil, SW_SHOWNORMAL);
end;

procedure TPersForm.HistoryTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonHistoryForm,HistoryTab);
end;

procedure TPersForm.MCITabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonCallInForm,MCITab);
end;

procedure TPersForm.SavePictChoiceClick(Sender: TObject);
Var ImageListID : String;
    FileExt     : String;
    FileName    : String;
    PersCode    : String;
begin
  ImageListID := SQLLookUp(pk,'PERSID','PERS','IMAGELISTID');
  PersCode    := SQLLookUp(pk,'PERSID','PERS','PERSCODE');

  If Not (ImageListID = '') then begin
    Open_Query('IMAGELIST',false,'SELECT * FROM IMAGELIST WHERE IMAGELISTID = ' + ImageListID);
    FileExt  := UpperCase(substr(tdbfield('IMAGELIST','FILENAME'),Rat('.',tdbfield('IMAGELIST','FILENAME'))+1,3));
    FileName := UpperCase(ExtractFilePath(ParamStr(0)) + PersCode + '-Picture.' + FileExt);
    TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToFile(FileName);
    CloseApollo('IMAGELIST');
    ShowMessage('Picture has been saved to ' + FileName);
  end;
end;

procedure TPersForm.SchdTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonScheduleForm,SchdTab);
end;

procedure TPersForm.CustomShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersonCustomForm,Custom);
end;

procedure TPersForm.ShowImage(ImageListID : String);
var stream    : TMemoryStream;
    ImageName : TJPEGImage;
    Ratio     : Real;
begin
  if GlobalAdoConnection.IsJsonTableType then begin
    appendtolog('Need to deal with TPersForm.ShowImage for jSon TableType');
    exit;
  end;  
  Stream    := TMemoryStream.create;
  ImageName := TJpegImage.create;
  ImageBlob.Picture.bitmap := nil;

  if ImageListID <> '' then begin
    try
      Open_Query('IMAGELIST',false,'SELECT IMAGEBLOB FROM IMAGELIST WHERE IMAGELISTID = ' + ImageListID);
      TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).SaveToStream(Stream);
      Stream.position := 0;
      ImageName.LoadFromStream(stream);
      ImageBlob.Picture.bitmap.assign(ImageName);
      CloseApollo('IMAGELIST');

      If (ImageBlob.Picture.Width > 0)  and (ImageBlob.Picture.Height > ImageBlob.Picture.Width) then begin
        Ratio            := ImageBlob.Picture.Width / ImageBlob.Picture.Height;
        ImageBlob.Height := ImageBlob.Height;
        ImageBlob.Width  := Round(ImageBlob.Height * Ratio);
      end else if (ImageBlob.Picture.Height > 0)  and (ImageBlob.Picture.Width > ImageBlob.Picture.Height) then begin
        Ratio            := ImageBlob.Picture.Height / ImageBlob.Picture.Width;
        ImageBlob.Width  := ImageBlob.Width;
        ImageBlob.Height := Round(ImageBlob.Width * Ratio);
      end;
      
    except
      CloseApollo('IMAGELIST');
    end;
  end;
  ImageName.Free;
  Stream.free;
  ImageBlob.Width  := ImagePanel.Width;
end;

procedure TPersForm.PageRemTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TPersPageRemindForm,PageRemTab);
end;

procedure TPersForm.PersControlChanging(Sender: TObject; var AllowChange: Boolean);
begin
  inherited;
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TPersForm.AttachPictChoiceClick(Sender: TObject);
Var FullFileName : String;
    FileName     : String;
    ImageListID  : String;
    PathName     : String;
    Ratio        : Real;
    FileSize     : Real;
begin
  inherited;
  FullFileName          := '';
  ImageListID           := '';
  Open_Query('IMAGEPATH',false,'SELECT IMAGEPATH.PATH FROM IMAGESET LEFT JOIN IMAGEPATH ON (IMAGESET.PERSPICTPATHID = IMAGEPATH.IMAGEPATHID) WHERE FDID = ' + AddExpr(mFireID));
  PathName              := tdbfield('IMAGEPATH','PATH');
  CloseApollo('IMAGEPATH');
  If (PathName = '') or Not DirectoryExists(PathName) then
    PathName := ExtractFileDir(ParamStr(0));

  If not ImageDialog.execute then
    exit;
  FullFileName     := UpperCase(ImageDialog.FileName);

  If (FullFileName = '') then begin
  end else if (ExtractFileExt(FullFileName) = '') then begin
    ShowMessage('There is no file extension associated with this file.  Make sure you have "Hide Extensions of Known File Types" unchecked in your Windows Options');
  end else If Not (FullFileName = '') then begin
    If FileExists(FullFileName) then begin
      FileSize    := GetFileSize(FullFileName);
      If (FileSize > 3000000) and (mFireID <> '15013') then begin
        ShowMessage('That file is greater than 3 meg, it is to big.  You must optimize the size to a lower density.')
      end else if (FileSize > 8000000) and (mFireID = '15013') then begin
        ShowMessage('That file is greater than 8 meg, it is to big.  You must optimize the size to a lower density.')   //thats what she said
      end else begin
        try
          FileName := ExtractFileName(FullFileName);
          ImageListid := sqllookup(pk,'persid','pers','imagelistid');
          Open_Query('IMAGELIST',true,'SELECT * FROM IMAGELIST WHERE IMAGELISTID = '+pkvalue(imagelistid));
          If A('IMAGELIST').RecordsExist then
            GetTable('IMAGELIST').Edit
          else begin
            GetTable('IMAGELIST').Append;
            GetField('IMAGELIST','SOURCECOMPUTER').AsString := AlpineGetComputerName;
            GetField('IMAGELIST','SOURCEFILE').AsString := FullFileName;
          end;

          (A('IMAGELIST').FieldByName('IMAGEBLOB') as TBlobField).BlobType := ftBlob;
          TBlobField(A('IMAGELIST').FieldByName('IMAGEBLOB')).LoadFromFile(FullFileName);
          GetField('IMAGELIST','FILENAME').AsString       := FileName;
          GetField('IMAGELIST','DATETIMEFILE').AsDateTime := FileDateToDateTime(FileAge(FullFileName));
          GetField('IMAGELIST','DESCR').AsString          := SqlLookUp(pk,'PERSID','PERS','PERSCODE') + ' Member Picture';
          GetField('IMAGELIST','SYSTABLEID').AsString     := SqlLookUp('PERS','TABLENAME','SYSTABLE','SYSTABLEID');
          GetTable('IMAGELIST').Post;

          If GetField('IMAGELIST','IMAGELISTID').AsInteger > 0 then
            ImageListID := GetField('IMAGELIST','IMAGELISTID').AsString
          else
            ImageListID := A('IMAGELIST').NewPk;

          CloseApollo('IMAGELIST');
          RunSQL('UPDATE PERS SET IMAGELISTID = ' + ImageListID + ' WHERE PERSID = ' + pk);
          ShowImage(ImageListID);
        except
          CloseApollo('IMAGELIST');
        end;
      end;
    end;
  end;
end;

procedure TPersForm.DeletePictChoiceClick(Sender: TObject);
Var ImageListID : String;
begin
  inherited;
  ImageListID := SQLLookUp(pk,'PERSID','PERS','IMAGELISTID');
  If Not (ImageListID = '') then begin
    RunSql('UPDATE PERS SET IMAGELISTID = NULL WHERE PERSID = '+pkValue(pk));
    RunSQL('DELETE FROM IMAGELIST WHERE IMAGELISTID = ' + pkValue(ImageListID));
    ImageBlob.Picture.bitmap := nil;
    ShowMessage('Picture has been deleted');
  end;
end;

procedure TPersForm.DoAfterSetControls(Sender: TObject);
begin
  Open_Query('GETPERS',false,'SELECT * FROM PERS WHERE PERSID = ' + PK);
  YOSField.Caption    := GetField('GETPERS','YOS').AsString;
  Attendlabel.Caption := IIf(tdbfield('GETPERS','ATTEND') = 'Y','Yes','No');
  Agelabel.Caption    := 'N/A';
  try
    If Getfield('GETPERS','DOB').AsDateTime > 0 then
      if Getfield('GETPERS','DECEASEDDATE').AsDateTime > 0 then
        Agelabel.Caption    := FormatFloat('##0',Int( (Getfield('GETPERS','DECEASEDDATE').AsDateTime - Getfield('GETPERS','DOB').AsDateTime) / 365.25))
      else
        Agelabel.Caption    := FormatFloat('##0',Int( (Now - Getfield('GETPERS','DOB').AsDateTime) / 365.25))
    else
      Agelabel.Caption    := 'N/A';
  except
  end;
  if (mFireID = '10700') AND (SQLLOOKUP(tdbfield('GETPERS','PERSSTATID'),'PERSSTATID','PERSSTAT','CODE') = 'DCSD') then
    AgeLabel.Caption := 'DCSD';
  Header.Caption         := alltrim(tdbfield('GETPERS','PERSCODE') + '  ' + alltrim(tdbfield('GETPERS','FNAME') + ' ' + tdbfield('GETPERS','MNAME'))+ ' ' + tdbfield('GETPERS','LNAME'));
  ShowImage(GetField('GETPERS','IMAGELISTID').AsString);
  CloseApollo('GETPERS');
end;

procedure TPersForm.DoAfterPost(Sender: TObject);
begin
  If InsertMode then begin
    Open_Query('INVPERS',False,'SELECT * FROM PERS WHERE PERSID = '+PkValue(PK));
    TInvSetForm.AppendRecordToInvLoc('PERS', 'PERSID', tdbfield('INVPERS','PERSCODE'), 'INVPERS', tdbfield('INVPERS','LNAME') + ', ' + tdbfield('INVPERS','FNAME') + ' ' + tdbfield('INVPERS','MNAME'), AnyStrToInt(SqlLookup(mFireID,'FDID','INVSET','PERSPARENTID')),tdbfield('INVPERS','FDID'));
    CloseApollo('INVPERS');

  end else begin
  end;
  if mFireid = 'HARFO' then begin
   try
    if F is TPersonGeneralForm then
      if TPersonGeneralForm(F).FDIDField.modified then
        RunSQL('UPDATE PERSFDID SET NOCALLS = '+AddExpr('')+', NOPUSH = '+AddExpr('')+' WHERE PERSID = '+pkValue(PK)+' AND FDID = '+AddExpr(trim(TPersonGeneralForm(F).FDIDField.Text)));
   except
   end;
  end;

  // Decrypt SSN after DB Post to display in field
  if GlobalEncryptPersSSN then begin
    try
      if F is TPersonConfidentialForm then begin
        TPersonConfidentialForm(F).SocSecField.options := [efoCaretToEnd];
        TPersonConfidentialForm(F).SocSecField.Text := DecryptAndHex(TPersonConfidentialForm(F).SocSecField.Value,ASCDeptSalt);
      end;
    except
    end;
  end;
end;

procedure TPersForm.DoBeforePost(Sender: TObject);
begin
//  if mFireid = '30039' then begin
//    if F is TPersonGeneralForm then
//      if TPersonGeneralForm(F).AttendField.modified then
//        InsertSecRecAud('PERS','CHGINCLUDE',pk,'Changed "Include"');
//  end;

  // Encrypt SSN before DB Post
  if GlobalEncryptPersSSN then begin
    try
      if F is TPersonConfidentialForm then begin
        if TPersonConfidentialForm(F).SocSecField.Modified then begin
          TPersonConfidentialForm(F).SocSecField.options := [efoCaretToEnd,efoPasswordMode]; // hides it before encoding
          TPersonConfidentialForm(F).SocSecField.Value := EncryptAndHex(TPersonConfidentialForm(F).SocSecField.Value,ASCDeptSalt);
        end;
      end;
    except
    end;
  end;
end;

class procedure TPersForm.SpecialClick(Sender: TObject);
var m : TMenuItem;
begin
  If (mFireID = '12345') and (Sender is TNewView) then begin
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := '-';
    TNewView(Sender).PopupMenu.Items.Add(m);
    m         := TMenuItem.Create(TNewView(Sender));
    m.Caption := 'FRDS Test';
    m.Onclick := LoadMCIClick;
    TNewView(Sender).PopupMenu.Items.Add(m);
  end;
end;

class procedure TPersForm.LoadMCIClick(Sender: TObject);
var PersID   : String;
    PersView : TNewView;
    Latitude : String;
    Longitude: String;
begin
  inherited;
  PersView := nil;
  If Sender is TMenuItem then begin
    If TMenuItem(Sender).Owner is TNewView then begin
      PersView := TNewView(TMenuItem(Sender).Owner);
      PersID   := PersView.ViewGrid.GetValue('PERSID');
      TPersonCallInForm.LoadMCIHist(PersID,Latitude,Longitude);
      Open_Query('PERS',true,'SELECT * FROM PERS WHERE PERSID = ' + pkValue(PersID));
      GetTable('PERS').Edit;
      GetField('PERS','DATETIMEGPS').AsDateTime := Now;
      GetField('PERS','LATITUDE').AsString      := Latitude;
      GetField('PERS','LONGITUDE').AsString     := Longitude;
      GetTable('PERS').Post;
      CloseApollo('PERS');
      PersView.RefreshGrid(PersID,'','',True);      
    end;
  end;
end;


procedure TPersForm.SecButtonClick(Sender: TObject);
Var SecID : String;
begin
  SecID := SQLLookUp(pk,'PERSID','SEC','SECID');
  SecID := IIf(SecID = '','-1',SecID);
  RunAlpineFormShowModal(TSecForm,SecID,'SEC',SecNewRecord);
end;

procedure TPersForm.SecNewRecord(DataSet: TDataSet);
var
  newpw : string;
begin
  try
    Open_query('GETPERS',false,'SELECT LNAME, FNAME, PERSCODE FROM PERS WHERE PERSID = ' + pk);
    DataSet.FieldbyName('PERSID').AsString        := pk;
    DataSet.FieldbyName('DESCR').AsString         := tdbfield('GETPERS','LNAME') + ', ' + tdbfield('GETPERS','FNAME');
    DataSet.FieldbyName('USERNAME').AsString      := tdbfield('GETPERS','PERSCODE');
    DataSet.FieldbyName('LOGINCODE').AsString     := tdbfield('GETPERS','PERSCODE');
    DataSet.FieldbyName('EXPDATE').AsDateTime     := Now + 730;
    DataSet.FieldbyName('PROFILEID').AsString     := '22';
    newpw := tdbfield('GETPERS','PERSCODE') + '!';
    DataSet.FieldbyName('LOGINPASSWORD').AsString := iif(GlobalEncryptSecPwd,GetAlpinePwdHash(newpw,''),newpw);
  finally
    CloseApollo('GETPERS');
  end;
end;

procedure TPersForm.DoAfterRecordAdded(Sender: TObject);
begin
  TFDFunc.AfterNewRecordAdded('PERS',anystrtoint(pk));
end;

initialization
  RegisterIndividualReport(TPersRepForm,          'INDPERSREP',          'Individual Summary',        'PERS','',False,1);
  RegisterIndividualReport(TPersHistRepForm,      'INDPERSEVENTREP',     'Individual Event History',  'PERS','',True, 2);
  RegisterIndividualReport(TIDRepForm,            'INDIDREP',            'ID Card',                   'PERS','',True, 3);
  RegisterIndividualReport(TPersMedSummRepForm,   'INDPERSMEDSUMMREP',   'Medical Summary',           'PERS','',true, 4);
  RegisterIndividualReport(TPERSNfirsAttRepForm,  'INDPERSNFIRSATTREP',  'NFIRS Attendance Only',     'PERS','',true, 5);
  RegisterIndividualReport(TPersInvRepForm,       'INDPERSINVREP',       'Assigned Inventory',        'PERS','',true, 6);
  RegisterIndividualReport(TPersHistDetailRepForm,'INDPERSHISTDETAILREP','Complete Personnel History','PERS','',true, 7);
  RegisterIndividualReport(TSchdHistIndRepForm,   'INDSCHDHISTINDREP',   'Schedule History',          'PERS','',true, 8);

end. 
