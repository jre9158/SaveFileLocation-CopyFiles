unit FDID;
 
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
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineBlockBrowse,
  AdvPageControl,
  ComCtrls,
  AdvGlowButton,
  AlpineCheck,
  HtmlBtns,
  AdvGroupBox,
  Jpeg,
  ColCombo,
  AlpineEdit,
  AlpineLookup,
  AlpineGlowButton,
  AlpineDateTime,
  AlpinePanel,
  AdvOfficeImage;

type
  TFdidForm = class(TNormalBaseForm)
    PersControl: TAdvPageControl;
    MainTab: TAdvTabSheet;
    FdidCompTab: TAdvTabSheet;
    FDIDCompBrowse: TAlpineBlockBrowse;
    GISPanel: TPanel;
    Label17: TLabel;
    Label28: TLabel;
    AlpineEdit1: TAlpineEdit;
    AlpineEdit15: TAlpineEdit;
    DispPanel: TPanel;
    MultiFdidPanel: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DispatchField: TAlpineCheckBox;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    FDIDField: TAlpineEdit;
    DeptNameField: TAlpineEdit;
    AbbreviateField: TAlpineEdit;
    ShortDescrField: TAlpineEdit;
    Label59: TLabel;
    AlpineEdit11: TAlpineEdit;
    Label4: TLabel;
    Label10: TLabel;
    MultiIncField: TAlpineCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    NFIRSField: TAlpineCheckBox;
    EMSField: TAlpineCheckBox;
    Label11: TLabel;
    cityField: TAlpineLookup;
    StateField: TAlpineLookup;
    zipfield: TAlpineEdit;
    Label12: TLabel;
    AddressField: TAlpineEdit;
    EmsNumLabel: TLabel;
    EmsNumField: TAlpineEdit;
    ConvTab: TAdvTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ServerField: TAlpineEdit;
    DatabaseField: TAlpineEdit;
    UserNameField: TAlpineEdit;
    PasswordField: TAlpineEdit;
    TableTypeField: TAlpineEdit;
    Label20: TLabel;
    DatabaseUpdateField: TAlpineDateTime;
    Label21: TLabel;
    CADNumField: TAlpineEdit;
    LogoTab: TAdvTabSheet;
    AlpinePanel2: TAlpinePanel;
    LogoButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    Panel3: TPanel;
    LogoImage: TImage;
    LogoPngImage: TAdvOfficeImage;
    FileDialog: TOpenDialog;
    Label22: TLabel;
    AlpineEdit2: TAlpineEdit;
    procedure FdidCompTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LogoButtonClick(Sender: TObject);
    procedure LogoTabShow(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure FDIDCompBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure FDIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure FdidCompNewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
    procedure ShowImage();
    class procedure MultiFdidShift(FdidField : TAlpineLookUp; FdidLabel : TLabel; MainForm: TForm; GenPanel : TAlpinePanel);
  end;

var
  FdidForm: TFdidForm;

implementation
uses GenFunc,
     SecSet,
     CommonVar,
     CommonFunc,
     FormFunc,
     FdidComp;
     
{$R *.DFM}

class procedure TFdidForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DEPTNAME').AsString := ' ';
  DataSet.FieldbyName('FDID').AsString     := ' ';  
end;


procedure TFdidForm.FdidCompTabShow(Sender: TObject);
begin
  inherited;
  FdidCompBrowse.Setup('FDIDCOMP','FDID',PK,TFdidCompForm,FdidCompNewRecord);
end;

procedure TFdidForm.FDIDFieldExit(Sender: TObject);
var bAbort: Boolean;
begin
  bAbort := False;
  If FdidField.ModifiedSinceEntered then begin
    Open_Query('FDID',false,'SELECT FDID, DEPTNAME FROM FDID WHERE FDID = ' + AddExpr(FdidField.Value));
    If A('FDID').RecordsExist then begin
      ShowMessage('FDID # ' + FdidField.Value + ' is used by ' + tdbfield('FDID','DEPTNAME') + '.  You cannot enter the same number twice.');
      bAbort          := True;
      FdidField.Value := '';
      FdidField.SetFocus;
    end;
    CloseApollo('FDID');
  end;
  If bAbort then
    Abort;
end;

procedure TFdidForm.FDIDCompBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var CountVar         : Integer;
    PersFdidCompCnt  : Integer;
    Descr            : String;
    NfirsFdidCompCnt : Integer;
    FdidCompID       : String;
begin
  inherited;
  FDIDCompID       := FDIDCompBrowse.Grid.GetValue('FDIDCOMPID');
  Descr            := FDIDCompBrowse.Grid.GetValue('DESCR');
  PersFdidCompCnt  := SqlTableRecCount('SELECT COUNT(*) FROM PERSCOMP      WHERE FDIDCOMPID = ' + pkValue(FdidCompID));
  NfirsFdidCompCnt := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSFDIDCOMP WHERE FDIDCOMPID = ' + pkValue(FdidCompID));
  If (PersFdidCompCnt > 0) or (NfirsFdidCompCnt > 0) then begin
    If BooleanMessageDlg('There are ' + IntToStr(PersFdidCompCnt)  + ' personnel company records entered with the ' + Descr + ' company.' + #10#13 +
                         'There are ' + IntToStr(NfirsFdidCompCnt) + ' incident company records entered with the ' + Descr + ' company.' + #10#13 +
                         'Deleting this record will blank out the company ID.  Delete anyway?') then
      CanDelete := true
    else
      CanDelete := false
  end else begin
    If BooleanMessageDlg('Delete ' + Descr + '?') then
      CanDelete := true
    else
      CanDelete := false
  end;
end;

procedure TFdidForm.FdidCompNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := PK;
end;

procedure TFdidForm.FormCreate(Sender: TObject);
begin
  UseRecordLocking := False;
  inherited;
  UseRecordLocking := False;  
  MultiFdidPanel.Visible := MultiFdid or AlpineLogin;
  CADNumField.Enabled    := AlpineLogin or (mfireid='WORCC');
  ConvTab.TabVisible     := MultiFdid or AlpineLogin;
  GISPanel.Visible       := CheckModule('GIS') or AlpineLogin;
end;

procedure TFdidForm.FormShow(Sender: TObject);
begin
  inherited;
  FdidField.Enabled := AlpineLogIn or (FdidField.Value = '');
end;

procedure TFdidForm.LogoButtonClick(Sender: TObject);
Var FileName : String;
begin
  inherited;
  If not FileDialog.execute then
    exit;
  FileName     := UpperCase(FileDialog.FileName);
  try
    Open_Query('GETFDID',true,'SELECT * FROM FDID WHERE FDID = ' + AddExpr(PK));
    A('GETFDID').Edit;
    if At('.PNG',FileName) > 0 then
      GetField('GETFDID','LOGOEXT').AsString := 'PNG';

    (A('GETFDID').FieldByName('LOGO') as TBlobField).BlobType := ftBlob;
    TBlobField(A('GETFDID').FieldByName('LOGO')).LoadFromFile(FileName);
    A('GETFDID').Post;
  finally
    CloseApollo('GETFDID');
  end;
  ShowImage;

end;

procedure TFdidForm.LogoTabShow(Sender: TObject);
begin
  inherited;
  ShowImage;
end;

procedure TFdidForm.ShowImage();
var Stream    : TMemoryStream;
    UsePNG    : Boolean;
    ImageName : TJPegImage;
    Ratio     : Real;
begin
  Stream    := TMemoryStream.create;

  try
    Open_Query('GETFDID',false,'SELECT LOGO, LOGOEXT FROM FDID WHERE FDID = ' + AddExpr(PK));
    If Not (GetField('GETFDID','LOGO').AsString = '') then begin
      if tdbfield('GETFDID','LOGOEXT') = 'PNG' then begin
        UsePNG       := True;
      end else begin
        UsePNG       := False;
        ImageName    := TJpegImage.create;
      end;

      TBlobField(A('GETFDID').FieldByName('LOGO')).SaveToStream(Stream);
      Stream.position := 0;

      if UsePNG then begin
        LogoPngImage.Align := alClient;
        LogoImage.Visible  := false;
        LogoPngImage.Picture.LoadFromStream(stream);
      end else begin
        ImageName.LoadFromStream(stream);
        LogoImage.Align       := alClient;
        LogoPngImage.Visible  := false;
        LogoImage.Picture.bitmap.assign(ImageName);
      end;
    end;
  finally
    CloseApollo('GETFDID');
  end;
  ImageName.Free;
  Stream.free;
end;


procedure TFdidForm.ClearButtonClick(Sender: TObject);
begin
  inherited;
  Open_Query('FDID',True,'SELECT * FROM FDID WHERE FDID = ' + PK);
  GetTable('FDID').Edit;
  GetField('FDID','LOGO').AsString := '';
  GetTable('FDID').Post;
  CloseApollo('FDID');
  LogoImage.Picture.Icon := GetGlowImageIcon('CLEAR');
end;

procedure TFdidForm.DoBeforePost(Sender: TObject);
begin
  If FDIDField.Value = '' then
    Raise Exception.Create('The FDID Field cannot be blank!');
end;

class procedure TFdidForm.MultiFdidShift(FdidField : TAlpineLookUp; FdidLabel : TLabel; MainForm: TForm; GenPanel : TAlpinePanel);
Var i : Integer;
begin
  FdidField.SQLExpr         := GetFdidSQLExpr;
  FdidField.LookupFormWidth := 320;

  If MultiFdid and (At('ASCCRM',UpperCase(ExtractFileName(ParamStr(0)))) = 0)  then begin
    FdidField.Visible := true;
    FdidLabel.Visible := true;
  end else begin
    FdidField.Visible := false;
    FdidLabel.Visible := false;

    for i := 0 to MainForm.ComponentCount-1 do begin
      If MainForm.Components[i] is TAlpineEdit then begin
        If TAlpineEdit(MainForm.Components[i]).Parent = GenPanel then
          TAlpineEdit(MainForm.Components[i]).Top := TAlpineEdit(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TAlpineDateTime then begin
        If TAlpineDateTime(MainForm.Components[i]).Parent = GenPanel then
          TAlpineDateTime(MainForm.Components[i]).Top := TAlpineDateTime(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TLabel then begin
        If TLabel(MainForm.Components[i]).Parent = GenPanel then
          TLabel(MainForm.Components[i]).Top := TLabel(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TLabel then begin
        If TAlpineDateTime(MainForm.Components[i]).Parent = GenPanel then
          TAlpineDateTime(MainForm.Components[i]).Top := TAlpineDateTime(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TAlpineLookup then begin
        If TAlpineLookup(MainForm.Components[i]).Parent = GenPanel then
          TAlpineLookup(MainForm.Components[i]).Top := TAlpineLookup(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TAlpineCheckBox then begin
        If TAlpineCheckBox(MainForm.Components[i]).Parent = GenPanel then
          TAlpineCheckBox(MainForm.Components[i]).Top := TAlpineCheckBox(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TAlpineGlowButton then begin
        If TAlpineGlowButton(MainForm.Components[i]).Parent = GenPanel then
          TAlpineGlowButton(MainForm.Components[i]).Top := TAlpineGlowButton(MainForm.Components[i]).Top - 26
      end else if MainForm.Components[i] is TColumnComboBox then begin
        If TColumnComboBox(MainForm.Components[i]).Parent = GenPanel then
          TColumnComboBox(MainForm.Components[i]).Top := TColumnComboBox(MainForm.Components[i]).Top - 26
      end;
    end;
  end;
end;

end.
