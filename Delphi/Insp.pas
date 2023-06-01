unit Insp;

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
  StdCtrls,
  ExtCtrls,
  AdvGlowButton,
  AlpineGlowButton,
  AdvPanel,
  DB,
  Jpeg,
  AlpineDateTime,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AdvOfficePager,
  AdvOfficePagerStylers,
  ImgList,
  AlpineMemo,
  AlpineBlockBrowse,
  FormFunc,
  AlpineBaseSummaryReport,
  AdvGroupBox,
  AlpinePanel,
  MySBox,
  AdvSplitter,
  Grids,
  AdvObj,
  CommonNFIRS,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid;

type
  TInspForm = class(TNormalBaseForm)
    TitlePanel: TAdvPanel;
    Image1: TImage;
    DeptLabel: TLabel;
    AddressLabel: TLabel;
    Image2: TImage;
    Pager: TAdvOfficePager;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    InspVioTab: TAdvOfficePage;
    AdvOfficePage5: TAdvOfficePage;
    InspScratchTab: TAdvOfficePage;
    ImageList1: TImageList;
    InspIDLabel: TLabel;
    InspGenTab: TAdvOfficePage;
    InspSigTab: TAdvOfficePage;
    RedNMXButton: TAlpineGlowButton;
    RedNMX2Button: TAlpineGlowButton;
    InspImageTab: TAdvOfficePage;
    InspVioCheckTab: TAdvOfficePage;
    EMailButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    ValidatorPanel: TPanel;
    AdvPanel4: TAdvPanel;
    Label16: TLabel;
    ErrorGrid: TAlpineTMSStringGrid;
    ValidateButton: TAlpineGlowButton;
    ValidatePanel: TPanel;
    ErrorTypeField: TLabel;
    ErrorActionField: TLabel;
    SpellCheckButton: TAlpineGlowButton;
    FaxEmailStatusButton: TAlpineGlowButton;
    InspTickBrowse: TAlpineBlockBrowse;
    PageRemBrowse: TAlpineBlockBrowse;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvOfficePage1Show(Sender: TObject);
    procedure InspTickTabShow(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
    procedure RedNMX2ButtonClick(Sender: TObject);
    procedure InspImageTabShow(Sender: TObject);
    procedure InspVioCheckTabShow(Sender: TObject);
    procedure EMailButtonClick(Sender: TObject);
    procedure InspSigTabShow(Sender: TObject);
    procedure InspScratchTabShow(Sender: TObject);
    procedure InspGenTabShow(Sender: TObject);
    procedure InspVioTabShow(Sender: TObject);
    procedure PagerChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
    procedure ValidateButtonClick(Sender: TObject);
    procedure ErrorGridClick(Sender: TObject);
    procedure SpellCheckButtonClick(Sender: TObject);
    procedure FaxEmailStatusButtonClick(Sender: TObject);
    procedure ErrorGridDblClick(Sender: TObject);
    procedure AdvOfficePage5Show(Sender: TObject);
  private
    F : TBaseSubTabForm;
    function  ApproveInsp: Integer;
    procedure GotoComponent(mFieldName: String);
    procedure LoadErrorGridTitle;
  public
    class procedure NewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
    class procedure CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
    procedure InspTickNewRecord(DataSet: TDataSet);
    procedure DoAfterPost(Sender: TObject); override;
    procedure PageRemindInspNewRecord(DataSet: TDataSet);    
  end;

{$I rednmx.inc}

var
  InspForm : TInspForm;
  InspNum  : String;

implementation

{$R *.DFM}

uses GenFunc,
     CommonFunc,
     CommonInsp,
     SecSet,
     applst,
     CommonVar,
     SortGridView,
     SysDemoPictView,
     InspRep,
     InspCodeTempRep,
     Nfirs,
     InspTick,
     InspVioCheck,
     InspScratch,
     InspImage,
     InspSig,
     InspGen,
     InspVio,
     PageRemind,
     MobFaxEmailStatus,
     ReportEmail;

class procedure TInspForm.NewRecord(DataSet: TDataSet);
Var mNum,CurrentYear,Year  : String;
    maxinspnum : TApolloData;
    i          : Integer;
    iNext      : Integer;
begin
  inherited;
  If FireID = '02113' then begin
    try
      maxinspnum := open_query('SELECT MAX(convert(SUBSTR(INSPNUM,6),SIGNED)) AS INSPNUM FROM INSP WHERE INSPNUM LIKE '+AddExpr(substr(GetYear(Date),1,4)+'%'));
      if maxinspnum.recordsexist then begin
        i := pos('-',tdbfield(maxinspnum,'inspnum'));
        mNum := alltrim(substr(tdbfield(maxinspnum,'inspnum'),i+1,10));
        if anystrtoint(mNum) = 0 then
          ShowMessage('There was an error retrieving the next inspection number.  Please enter the inspection number in '+substr(GetYear(Date),1,4)+'-XXXX format')
        else begin
          iNext   := anystrtoint(mNum)+1;
          mNum    := inttostr(iNext);
          InspNum := substr(GetYear(Date),1,4)+'-'+mNum;
        end;
      end else
        InspNum := substr(GetYear(Date),1,4)+'-1';
    finally
      maxinspnum.free;
    end;
    DataSet.FieldByName('INSPNUM').AsString         := InspNum;
    DataSet.FieldByName('DATETIMESTART').AsDateTime := Now;
  end else if FireID = '52280' then begin
    InspNum     := IntToStr(StrToInt(SubStr(GetMaxValue(GlobalAdoConnection,'INSPNUM','INSP',''),5,4)) + 1);
    CurrentYear := SubStr(GetMaxValue('INSPNUM','INSP',''),1,4);
    Year        := FormatDateTime('YYYY',Now);

    If Year = CurrentYear then
      InspNum  := CurrentYear +  Padl(InspNum,4,'0')
    else
      InspNum  := Year + '0001';

    DataSet.FieldByName('INSPNUM').AsString         := InspNum;
    DataSet.FieldByName('DATETIMESTART').AsDateTime := Now;
  end else if MFireID <> '01920' then
    DataSet.FieldByName('DATETIMESTART').AsDateTime := Now
  else
    DataSet.FieldByName('FDID').AsString            := '01920';
end;

procedure TInspForm.PagerChanging(Sender: TObject; FromPage, ToPage: Integer; var AllowChange: Boolean);
begin
  inherited;
  AddressLabel.Caption       := SQLLookUp(pk,'INSPID','INSP','STRNUM') + ' ' + SQLLookUp(pk,'INSPID','INSP','STREET') + '  ' + SQLLookUp(pk,'INSPID','INSP','NAME');
  If SaveButton.Enabled then
    SaveButtonClick(self);
end;

procedure TInspForm.FaxEmailStatusButtonClick(Sender: TObject);
begin
  inherited;
  MobFaxEmailStatusForm := TMobFaxEmailStatusForm.Create(self,'INSP');
  MobFaxEmailStatusForm.ShowModal;
  MobFaxEmailStatusForm.Free;
end;

procedure TInspForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly := Not CheckSecVar('INSPEDIT');
  if (FireID = '02113') then begin
    InspNum             := GetField('INSP','INSPNUM').AsString;
    InspIDLabel.Caption := 'Inspection # '+ InspNum;
  end else if (FireID = '52280') then begin
    InspNum             := GetField('INSP','INSPNUM').AsString;
    InspIDLabel.Caption := 'Inspection # '+ substr(InspNum,1,4) + '-' + substr(InspNum,5,4)
  end else
    InspIDLabel.Caption := 'Inspection # ' + PK;

  NarrField.Font.Size   := 12;
end;

procedure TInspForm.FormShow(Sender: TObject);
Var InspTypeID : String;
begin
  inherited;

  if FireID = '23229' then begin
    InspSigTab.TabVisible      := (SqlTableRecCount('SELECT COUNT(*) FROM INSPIMAGETYPE WHERE SIGNATURE = ' + AddExpr('Y')) > 0);
  end else begin
    InspSigTab.TabVisible      := (SqlTableRecCount('SELECT COUNT(*) FROM INSPIMAGETYPE WHERE SIGNATURE = ' + AddExpr('Y')) > 0) and CheckModule('MOBINSP');
  end;
  InspImageTab.TabVisible    := (SQLLookUp(mFireID,'FDID','IMAGESET','INSP') = 'Y');

  InspTypeID                 := SQLLookUp(pk,'INSPID','INSP','INSPTYPEID');
  AddressLabel.Caption       := SQLLookUp(pk,'INSPID','INSP','STRNUM') + ' ' + SQLLookUp(pk,'INSPID','INSP','STREET');
  InspVioCheckTab.TabVisible := (SqlTableRecCount('SELECT COUNT(*) FROM INSPCODETEMP WHERE INSPTYPEID = ' + pkValue(InspTypeID)) > 0);
  EmailButton.Visible        := (SQLLookUp(mFireID,'FDID','INSPSET','EMAILFAX') = 'Y');
  InspScratchTab.TabVisible  := SqlTableRecCount('SELECT COUNT(*) FROM INSPIMAGETYPE WHERE CODE = ' + AddExpr('SCRATCH')) > 0;

  If mFireID = 'B3580' then
    CloseButton.Enabled := false
  else
    CloseButton.Enabled := True;

  Pager.ActivePage           := InspGenTab;
  CreateSubForm(F,TInspGenForm,InspGenTab);

  RedNMXButton.Visible       := (FireID = '12345');
  PageRemBrowse.Visible      := (FireID = '12345');
  RedNMX2Button.Visible      := (FireID = '12345');
  DeptLabel.Caption          := FireDept;
  ValidatorPanel.Visible     := ((FireID = '12345') OR (FireID = 'B3580'));

  LoadErrorGridTitle;
  if MFireID ='01920' then
    Height                     := 880
  else
    Height                     := IMin(800,Round(Screen.Height * 0.91));
end;

procedure TInspForm.AdvOfficePage1Show(Sender: TObject);
begin
  inherited;
  InspTickBrowse.Setup('INSPTICK','INSPID',pk,TInspTickForm,InspTickNewRecord);
end;

procedure TInspForm.InspVioCheckTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspVioCheckForm,InspVioCheckTab);
end;

procedure TInspForm.InspVioTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspVioForm,InspVioTab);
end;

procedure TInspForm.InspImageTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspImageForm,InspImageTab);
end;

procedure TInspForm.InspScratchTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspScratchForm,InspScratchTab);
end;

procedure TInspForm.InspSigTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspSigForm,InspSigTab);
end;

procedure TInspForm.InspTickNewRecord(DataSet: TDataSet);
begin
  inherited;
  if FireID = '02113' then
    DataSet.FieldByName('INSPID').AsString          := InspNum
  else
    DataSet.FieldByName('INSPID').AsString          := pk;
  DataSet.FieldByName('DATETIMESTART').AsDateTime := Now;
  DataSet.FieldByName('PERSID').AsString          := GlobalPersID;
  DataSet.FieldByName('LETTSENT').AsString        := 'N';
end;

procedure TInspForm.InspTickTabShow(Sender: TObject);
begin
  inherited;
  InspTickBrowse.Setup('INSPTICK','INSPID',pk,TInspTickForm,InspTickNewRecord);
  InspTickBrowse.FixedRowHeight := 22;

  PageRemBrowse.ExplicitWhereClause := ' WHERE PAGEREMIND.TABLENAME = ' + AddExpr('INSP') + ' AND PAGEREMIND.TABLERECID = ' + pkValue(PK);
  PageRemBrowse.Setup('PAGEREMIND',TPageRemindForm,PageRemindInspNewRecord);
end;

procedure TInspForm.InspGenTabShow(Sender: TObject);
begin
  inherited;
  CreateSubForm(F,TInspGenForm,InspGenTab);
end;

function TInspForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  if mFireID = '47000' then begin
    result := False;;
    if Sender is TAlpineBlockBrowse then
      result := (TAlpineBlockBrowse(Sender).ViewCode='PROPINSP') and (CheckSecVar('INSPADD'));
  end else
    result := CheckSecVar('INSPADD')
end;

function TInspForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := CheckSecVar('INSPDEL');
end;

procedure TInspForm.EMailButtonClick(Sender: TObject);
begin
  inherited;
  ReportEmailForm := TReportEmailForm.Create(self,Pk,'INSP');
  if MFireID = '01920' then begin
    ReportEmailForm.EmailSubjectField.Value := sqllookup(mfireid,'FDID','INSPSET','EMAILSUBJECT');
    ReportEmailForm.EmailMessageField.Value := sqllookup(mfireid,'FDID','INSPSET','EMAILMESSAGE');
    ReportEmailForm.EmailField.Text         := SqlLookUp(pk,'INSPID','INSP','AEMAIL');
    ReportEmailForm.ReplyEmailField.Text    := SqlLookUp(SqlLookUp(pk,'INSPID','INSP','PERSID'),'PERSID','PERS','EMAIL');
  end else if MFireID = 'EGELS' then begin        //USING A NEW TABLE I MADE FOR THEM
    ReportEmailForm.EmailSubjectField.Value := sqllookup(SqlLookUp(pk,'INSPID','INSP','FDID'),'FDID','INSPEMAILSUBJECT','EMAILSUBJECT');
    ReportEmailForm.EmailMessageField.Value := sqllookup(SqlLookUp(pk,'INSPID','INSP','FDID'),'FDID','INSPEMAILSUBJECT','EMAILMESSAGE');
    ReportEmailForm.EmailField.Text  := SqlLookUp(pk,'INSPID','INSP','EMAIL');
    ReportEmailForm.FaxNumField.Text := SqlLookUp(pk,'INSPID','INSP','FAX');
  end else begin
    ReportEmailForm.EmailSubjectField.Value := sqllookup(mfireid,'FDID','INSPSET','EMAILSUBJECT');
    ReportEmailForm.EmailMessageField.Value := sqllookup(mfireid,'FDID','INSPSET','EMAILMESSAGE');
    ReportEmailForm.EmailField.Text  := SqlLookUp(pk,'INSPID','INSP','EMAIL');
    ReportEmailForm.FaxNumField.Text := SqlLookUp(pk,'INSPID','INSP','FAX');
  end;


  ReportEmailForm.ShowModal;
  ReportEmailForm.Free;
end;

procedure TInspForm.ErrorGridClick(Sender: TObject);
begin
  inherited;
  ErrorTypeField.Caption   := IIf(ErrorGrid.GetValue('ERRORTYPE') = 'C','Critical Error: ','Warning: ') + ErrorGrid.GetValue('ERRORDESCR');
  ErrorActionField.Caption := 'Remedy: ' + ErrorGrid.GetValue('ERRORACTION');
end;

procedure TInspForm.ErrorGridDblClick(Sender: TObject);
begin                                                         
  inherited;
  If ErrorGrid.GetValue('FORMNAME') = 'INSPGEN' then begin
    If Not (Pager.ActivePage = InspGenTab) then begin
      Pager.ActivePage := InspGenTab;
      InspGenTabShow(self);
    end;
  end;
  if ErrorGrid.GetValue('FIELDNAME') <> '' then
    GotoComponent(ErrorGrid.GetValue('FIELDNAME'));
end;

procedure TInspForm.GotoComponent(mFieldName: String);
begin
  TNfirsForm.CommonGotoComponent(mFieldName,F,False);
end;

class procedure TInspForm.CommonGotoComponent(mFieldName: String; mSourceForm: TForm;mSetGreen: Boolean);
var i        : Integer;
    mControl : TWinControl;
    
  procedure FlashControl;
  begin
    if mControl.Enabled then begin
      if mControl is TAlpineEdit then begin
        if mSetGreen then
          TAlpineEdit(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineEdit(mControl).Flash
      end else if mControl is TAlpineLookup then begin
        if mSetGreen then
          TAlpineLookup(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineLookup(mControl).Flash;
      end else if mControl is TAlpineDatetime then begin
        if mSetGreen then
          TAlpineDateTime(mControl).AlpineColors.NonEditColor := clLime
        else
          TAlpineDateTime(mControl).Flash;
      end;
      if not mSetGreen then
        mControl.SetFocus;
    end;
  end;
begin
  If mSourceForm = nil then
    Exit;
  mControl := nil;
  for i:= 0 to mSourceForm.ComponentCount-1 do begin
    If mSourceForm.Components[i] is TAlpineLookup then begin
      If uppercase(TAlpineLookup(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineLookup(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineEdit then begin
      If uppercase(TAlpineEdit(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineEdit(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TAlpineDateTime then begin
      If uppercase(TAlpineDateTime(mSourceForm.Components[i]).DataField) = uppercase(mFieldname) then
        mControl := TAlpineDateTime(mSourceForm.Components[i]);
    end else if mSourceForm.Components[i] is TCheckBox then begin
      If uppercase(TCheckBox(mSourceForm.Components[i]).Name) = uppercase(mFieldname) then
        mControl := TCheckBox(mSourceForm.Components[i]);
    end;
  end;
  If mControl <> nil then
    FlashControl;
end;

procedure TInspForm.RedNMX2ButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'MOBINSP');
  SysDemoPictViewForm.Show;
end;

procedure TInspForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'INSP');
  SysDemoPictViewForm.Show;
end;


procedure TInspForm.SpellCheckButtonClick(Sender: TObject);
begin
  inherited;
  SpellCheck(NarrField);
end;

procedure TInspForm.ValidateButtonClick(Sender: TObject);
begin
  inherited;
  LoadErrorGridTitle;
  SaveButtonClick(self);
  If ValidateButton.Caption = 'Approve Inspection?' then begin
    SaveButtonClick(nil);
    close;
  end else begin
    ApproveInsp;
  end;
end;

procedure TInspForm.LoadErrorGridTitle;
begin
  ErrorGrid.Clear;
  ErrorGrid.RowCount      := 1;
  ErrorGrid.ColCount      := 0;
  ErrorGrid.ClearColumns;

  ErrorGrid.SetColumn('FORMNAME',   '',                 000);
  ErrorGrid.SetColumn('FIELDNAME',  '',                 000);
  ErrorGrid.SetColumn('FORMDESCR',  'Tab',              070);
  ErrorGrid.SetColumn('FIELDDESCR', 'Field',            133);
  ErrorGrid.SetColumn('ERRORTYPE',  'Type',             000);
  ErrorGrid.SetColumn('ERRORDESCR', 'Error Description',000);
  ErrorGrid.SetColumn('ERRORACTION','Error Action',     000);
end;

procedure TInspForm.AdvOfficePage5Show(Sender: TObject);
begin
  inherited;
  NarrField.ButtonPanel.visible         := true;
  NarrField.ButtonPanel.Height          := 33;
  NarrField.SysNarrLookupTable          := 'INSP';
  NarrField.SysNarrLookupField          := 'NARR';
  NarrField.BottomButtonClear           := true;
  NarrField.BottomButtonSelectNarrative := true;
  NarrField.BottomButtonkeyboard        := false;
  NarrField.BottomButtonTimeStamp       := true;
  NarrField.BottomButtonSpellCheck      := true;
  NarrField.ButtonFont                  := ValidateButton.Font;
end;

function TInspForm.ApproveInsp: Integer;
Var InspErrorList : TStringList;
    Row           : Integer;
begin
  InspErrorList := TStringList.Create;
  CheckOneInsp(PK, FireID, InspErrorList);

  LoadErrorGridTitle;

  for Row := 0 to InspErrorList.Count-1 do begin
    ErrorGrid.SetValue('FORMNAME',   TErrorObject(InspErrorList.Objects[Row]).DeskForm);
    ErrorGrid.SetValue('FIELDNAME',  TErrorObject(InspErrorList.Objects[Row]).FieldName);
    ErrorGrid.SetValue('FORMDESCR',  TErrorObject(InspErrorList.Objects[Row]).DeskFormDescr);
    ErrorGrid.SetValue('FIELDDESCR', TErrorObject(InspErrorList.Objects[Row]).FieldDescr);
    ErrorGrid.SetValue('ERRORTYPE',  TErrorObject(InspErrorList.Objects[Row]).ErrorType);
    ErrorGrid.SetValue('ERRORDESCR', TErrorObject(InspErrorList.Objects[Row]).ErrorDescr);
    ErrorGrid.SetValue('ERRORACTION',TErrorObject(InspErrorList.Objects[Row]).ErrorAction);
  end;

  ApproveInsp := InspErrorList.Count;
  ErrorGridClick(self);
  If InspErrorList.Count = 0 then begin
    ValidateButton.Caption   := 'Approve Inspection?';
    ErrorTypeField.Caption   := '';
    ErrorActionField.Caption := '';
  end;
end;

procedure TInspForm.DoAfterPost(Sender: TObject);
begin
end;

procedure TInspForm.PageRemindInspNewRecord(DataSet: TDataSet);
Var PageRemindTypeID : String;
begin
  PageRemindTypeID                                 := SqlMultiFieldLookUp(['INSP','DATETIMESTART'],['TABLENAME','FIELDNAME'],'PAGEREMINDTYPE','PAGEREMINDTYPEID');
  DataSet.FieldByname('PAGEREMINDTYPEID').AsString := PageRemindTypeID;
  DataSet.FieldByname('TABLENAME').AsString        := 'INSP';
  DataSet.FieldByname('TABLERECID').AsString       := pk;
  DataSet.FieldByname('SUBJECT').AsString          := 'Fire Inspection';
  DataSet.FieldByname('DATETIMEENT').AsDateTime    := Now;
  DataSet.FieldByname('CALENDARICONID').AsString   := '3';
  DataSet.FieldByname('NARR').AsString             := 'Remember, their is a re-inspection to take place on <Date Goes Here> at <Address goes Here>';
  DataSet.FieldByname('SECID').AsString            := SecIDVar;
  DataSet.FieldByname('COMPCODE').AsString         := AlpineGetComputerName;
end;

initialization
  RegisterIndividualReport(TInspRepForm,        'INDINSPREP',       'General Inspection Report','INSP','',False,1);
  RegisterIndividualReport(TinspCodeTempRepForm,'INDISPCODETEMPREP','Inspection Check List',    'INSP','',False,2);

end. 
