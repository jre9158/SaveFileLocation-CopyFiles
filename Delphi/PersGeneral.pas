unit persGeneral;

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
  AppLst,
  Db,
  Pers,
  AlpineLookGrid,
  NormalBase,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox,
  AdvObj,
  AlpineBlockBrowse;

type
  TPersonGeneralForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    Panel0B: TAlpinePanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    PhoneField: TAlpineEdit;
    OccPhoneField: TAlpineEdit;
    CellField: TAlpineEdit;
    PagerField: TAlpineEdit;
    Panel6: TPanel;
    Panel0C: TAlpinePanel;
    JoinDateLabel: TLabel;
    ActDateLabel: TLabel;
    ResDateLabel: TLabel;
    LifeDateLabel: TLabel;
    FdidLabel: TLabel;
    KeyCodeLabel: TLabel;
    Label1: TLabel;
    PersTypeIDLabel: TLabel;
    Label6: TLabel;
    FdidDesc: TLabel;
    PersTypeDesc: TLabel;
    PersStatDesc: TLabel;
    Label21: TLabel;
    JoinDateField: TAlpineDateTime;
    ActDateField: TAlpineDateTime;
    ResDateField: TAlpineDateTime;
    LifeDateField: TAlpineDateTime;
    FdidField: TAlpineLookup;
    KeyCodeField: TAlpineEdit;
    PersCodeField: TAlpineEdit;
    PersTypeIDField: TAlpineLookup;
    AttendField: TAlpineCheckBox;
    PersStatIDField: TAlpineLookup;
    PersRankIDField: TAlpineLookup;
    ResourceField: TAlpineCheckBox;
    ImageListIDField: TAlpineLookup;
    ImageListIDLabel: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EmergPhone: TAlpineEdit;
    EmergNameField: TAlpineEdit;
    YOSField: TAlpineEdit;
    Label10: TLabel;
    CalculateButton: TAlpineGlowButton;
    EMSQualIDLabel: TLabel;
    EMSQualIDField: TAlpineLookup;
    EMSQualIDDescr: TLabel;
    PersRankIDDescr: TLabel;
    FingerCodeLabel: TLabel;
    FingerCodeField: TAlpineEdit;
    FdidCompTeamPanel: TPanel;
    NYSIDLabel: TLabel;
    NYSIDField: TAlpineEdit;
    ProbStartLabel: TLabel;
    ProbEndLabel: TLabel;
    ProbStartDateField: TAlpineDateTime;
    ProbEndDateField: TAlpineDateTime;
    FdidCompPanel: TAlpinePanel;
    FdidCompBrowse: TAdvStringGrid;
    PersFdidPanel: TAlpinePanel;
    FdidBrowse: TAdvStringGrid;
    PersTeamTypePanel: TAlpinePanel;
    PersTeamTypeBrowse: TAdvStringGrid;
    TeamSplitter: TSplitter;
    FdidSplitter: TSplitter;
    Panel1: TPanel;
    Panel0A: TAlpinePanel;
    Label2: TLabel;
    Label3: TLabel;
    Label9: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    LNameField: TAlpineEdit;
    FNameField: TAlpineEdit;
    MNameField: TAlpineEdit;
    Add1Field: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    EMailField: TAlpineEdit;
    CityField: TAlpineLookup;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    PageListBrowse: TAlpineBlockBrowse;
    TotYOSLabel: TLabel;
    TotYOSField: TAlpineEdit;
    TotYOSButton: TAlpineGlowButton;
    CrewSenseIDLabel: TLabel;
    CrewSenseIDField: TAlpineEdit;
    BadgeNumLabel: TLabel;
    BadgeNumField: TAlpineEdit;
    DistResField: TAlpineCheckBox;
    DistResLabel: TLabel;
    Label4: TLabel;
    CellCarrierField: TAlpineEdit;
    procedure FormShow(Sender: TObject);
    procedure FdidCompBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure CityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LNameFieldChange(Sender: TObject);
    procedure CalculateButtonClick(Sender: TObject);
    procedure PersCodeFieldExit(Sender: TObject);
    procedure KeyCodeFieldExit(Sender: TObject);
    procedure PersTeamTypeBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure ResourceFieldClick(Sender: TObject);
    procedure FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure FdidCompPanelCaptionDBlClick(Sender: TObject);
    procedure FingerCodeFieldExit(Sender: TObject);
    procedure TotYOSButtonClick(Sender: TObject);
    procedure PersTypeIDFieldEnter(Sender: TObject);
    procedure FdidFieldEnter(Sender: TObject);
    procedure PersStatIDFieldEnter(Sender: TObject);
    procedure PersRankIDFieldEnter(Sender: TObject);
    procedure EMSQualIDFieldEnter(Sender: TObject);
    procedure YOSFieldClick(Sender: TObject);
    procedure PersTypeIDFieldChange(Sender: TObject);
    procedure DistResFieldClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadFDIDCompBrowse;
    procedure LoadPersTeamTypeBrowse;
    Procedure LoadFdidBrowse;
  public
    { Public declarations }
    procedure PageListNewRecord(DataSet: TDataSet);
  end;

var
  PersonGeneralForm: TPersonGeneralForm;

implementation
uses GenFunc,
     CommonFunc,
     PersCust,
     StrUtils,
     CommonPers,
     FormFunc,
     SecField,
     CommonVar,
     Rolodex,
     PageList,
     SecSet;
     
{$R *.dfm}

procedure TPersonGeneralForm.LoadFDIDCompBrowse;
Var RowNum      : Integer;
    mActiveCond : String;
  function CheckPersComp: Boolean;
  begin
    If A('PERSCOMP').ExactQueryLocate(['FDIDCOMPID'],[GetField('FDIDCOMP','FDIDCOMPID').AsString]) then
      CheckPersComp := true
    else
      CheckPersComp := false;
  end;
begin
  FdidCompBrowse.clear;
  FdidCompBrowse.ColCount := 3;
  FdidCompBrowse.RowCount := 3;

  FdidCompBrowse.ColWidths[00] := 000;
  FdidCompBrowse.ColWidths[01] := 020;
  FdidCompBrowse.ColWidths[02] := 200;

  FdidCompBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                                              := 0;
  If mfireid = '34027' then
    mActiveCond := ' AND ACTIVE = '+AddExpr('Y')+' '
  else
    mActiveCond := '';


  Open_Query('PERSCOMP',false,'SELECT * FROM PERSCOMP WHERE PERSID = ' + PK);
  If MultiFDID then
    Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP WHERE FDID = ' + AddExpr(FdidField.Value) + mActiveCond + ' ORDER BY CODE')
  else
    Open_Query('FDIDCOMP',false,'SELECT * FROM FDIDCOMP WHERE FDID = ' + AddExpr(MFireID) + mActiveCond + ' ORDER BY CODE');
  While Not A('FDIDCOMP').Eof do begin
    FdidCompBrowse.Cells[0,RowNum] := Getfield('FDIDCOMP','FDIDCOMPID').AsString;
    FdidCompBrowse.AddCheckBox(1,RowNum,CheckPersComp,false);
    FdidCompBrowse.Cells[2,RowNum] := iif(tdbField('FDIDCOMP','DESCR')='',tdbField('FDIDCOMP','CODE'),Getfield('FDIDCOMP','DESCR').AsString);
    If (RowNum > 1) then
      FdidCompBrowse.RowCount := FdidCompBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDIDCOMP').Skip(1);
  end;
  CloseApollo('FDIDCOMP');
  CloseApollo('PERSCOMP');
end;

procedure TPersonGeneralForm.FormShow(Sender: TObject);
var PersForm: TPersForm;
begin
  PersForm                  := TPersForm(GetFormOfType(TPersForm));
  FdidCompBrowse.Enabled    := CheckSecVar('PERSEDIT');
  PersTeamTypeBrowse.Enabled:= CheckSecVar('PERSEDIT');
  FdidBrowse.Enabled        := CheckSecVar('PERSEDIT');

  FdidField.Visible         := MultiFdid;
  FdidLabel.Visible         := MultiFdid;
  FdidDesc.Visible          := MultiFdid;

  If MultiFdid then begin
    FdidCompPanel.Visible     := (SqlTableRecCount('SELECT COUNT(*) FROM FDIDCOMP WHERE FDID =' + AddExpr(FdidField.Text)) > 0);
    PersTeamTypePanel.Visible := (SqlTableRecCount('SELECT COUNT(*) FROM PERSTEAMTYPE WHERE FDID =' + AddExpr(FdidField.Text)) > 0);
  end else begin
    FdidCompPanel.Visible     := (SqlTableRecCount('SELECT COUNT(*) FROM FDIDCOMP WHERE FDID =' + AddExpr(MFireID)) > 0);
    PersTeamTypePanel.Visible := (SqlTableRecCount('SELECT COUNT(*) FROM PERSTEAMTYPE WHERE FDID =' + AddExpr(MFireID)) > 0);
  end;

  If FdidCompPanel.Visible then
    LoadFDIDCompBrowse;
  If PersTeamTypePanel.Visible then
    LoadPersTeamTypeBrowse;

  KeyCodeField.Visible          := CheckModule('KEY') or CheckModule('HAND') or (mFireid = '14353');
  KeyCodeLabel.Visible          := KeyCodeField.Visible;
  NYSIDLabel.Visible            := (substr(ASCFdid,1,2) = 'NY');
  NYSIDField.Visible            := (substr(ASCFdid,1,2) = 'NY');
  CrewSenseIDLabel.Visible      := (mFireID = '28008') or (mFireID = '28001');
  CrewSenseIDField.Visible      := (mFireID = '28008') or (mFireID = '28001');

  BadgeNumField.Visible         := (mFireID = 'EGELS');
  BadgeNumLabel.Visible         := (mFireID = 'EGELS');

  If (mFireID = '60032') then begin
    FingerCodeField.Visible := CheckSecVar('PERSCONF');
    FingerCodeLabel.Visible := CheckSecVar('PERSCONF');
  end else begin
    FingerCodeField.Visible := CheckModule('FINGER') and CheckSecVar('FINGERADMIN');
    FingerCodeLabel.Visible := CheckModule('FINGER') and CheckSecVar('FINGERADMIN');;
  end;

  If (MFireID= '60024') then
    PersTypeIDLabel.Caption  := 'Class';

  If (MFireID= '30020') then
    AttendField.Caption  := 'Check this box for Active';
  

  If (mFireID = '40070') then begin
    TotYOSLabel.Visible  := true;
    TotYOSField.Visible  := true;
    TotYOSButton.Visible := True;
  end else begin
    TotYOSLabel.Visible  := false;
    TotYOSField.Visible  := false;
    TotYOSButton.Visible := False;
  end;
  If mFireID = '46006' then begin
    ProbStartLabel.Visible      := True;
    ProbEndLabel.Visible        := True;
    ProbEndDateField.Visible    := True;
    ProbStartDateField.Visible  := True;
  end;
  If mFireID = '13191' then begin
    NYSIDLabel.Visible          := True;
    NYSIDField.Visible          := True;
    NYSIDLabel.Caption          := 'State ID #';
  end;

  If mFireID = '30032' then begin
    NYSIDLabel.Visible          := True;
    NYSIDField.Visible          := True;
    NYSIDLabel.Caption          := 'FSA Number';
  end;

  If (mFireID = '32014') then begin
    PersTypeIDLabel.Visible     := false;
    PersTypeIDField.Visible     := false;
    PersTypeDesc   .Visible     := false;
    JoinDateLabel  .Caption     := 'Hire Date';
    ResDateLabel   .Caption     := 'Retire Date';
  end;

  If (mFireID = '89011') then begin
    JoinDateLabel  .Caption     := 'Hire Date';
    ResDateLabel   .Caption     := 'Retire Date';
  end;

  If (mFireID = '07130') then begin
    ActDateLabel.Caption     := 'Status Date';
    JoinDateLabel  .Caption     := 'Hire Date';
    ResDateLabel   .Caption     := 'Retire Date';
    LifeDateLabel  .Caption     := 'Rank Date';
  end;

  If mFireID = '15047' then begin
    JoinDateLabel  .Caption     := 'Obligated';
    ResDateLabel   .Caption     := 'Life Active';
    ActDateLabel.Caption        := 'Life Inactive';
    LifeDateLabel  .Caption     := 'Resigned';
  end;

  If mFireID = '52095' then begin
    PersTypeIDLabel.Visible     := false;
    PersTypeIDField.Visible     := false;
    PersTypeIDField.ENABLED     := false;
  end;

  If (SqlTableRecCount('SELECT COUNT(*) FROM EMSQUAL') > 0) then begin
    EMSQualIDLabel.Visible := true;
    EMSQualIDField.Visible := true;
    EMSQualIDDescr.Visible := true;
  end;

  CalculateButton.Enabled       := Not ViewOnly;

  If (mFireID = '12345') or (mFireID='10700') then begin
    PersFdidPanel.Visible   := true;
    LoadFdidBrowse;
  end else begin
    PersFdidPanel.Visible   := false;
  end;

  If CheckModule('PAGE') and CheckSecVar('PAGESETUP') and CheckSecVar('PERSSETUP') then begin
    PageListBrowse.Visible             := true;
    PageListBrowse.ExplicitWhereClause := ' WHERE PAGELIST.PERSID = ' + pkValue(pk);
    PageListBrowse.Setup('PERSPAGELIST',TPageListForm,PageListNewRecord);
  end;
 
  If (mFireID = '34037')then begin
    JoinDateLabel.Visible   := False;
    ResDateLabel.Visible    := False;
    ActDateLabel.Visible    := False;
    LifeDateLabel.Visible   := False;
    Label10.Visible         := False;
    JoinDateField.Visible   := False;
    ResDateField.Visible    := False;
    YOSField.Visible        := False;
    CalculateButton.Visible := False;
    ActDateField.Visible    := False;
    LifeDateField.Visible   := False;
  end;
  
  If (mFireID = '30054') then begin
    If (PersTypeIDField.Value = '13') and (not CheckSecVar('RCFDPERSREST')) then
      PersTypeIDField.Enabled := False;
  end;

  If (mFireID = '01920') or (mFireID = '15039') then begin
    CalculateButtonClick(self);
    RunSQL('UPDATE PERS SET YOS = ' + YOSField.Value + ' WHERE PERSID = ' + pkValue(pk));
    PersForm.SaveButton.Enabled := false;
  end;  

  If Not FdidCompPanel.Visible and Not PersFdidPanel.Visible and PersTeamTypePanel.Visible then begin
    PersTeamTypePanel.Align := alclient;
    TeamSplitter.Visible    := true;
    FdidSplitter.Visible    := true;
  end;
  FdidCompTeamPanel.Visible := FdidCompPanel.Visible or PersTeamTypePanel.Visible or PersFdidPanel.Visible;
  DistResField.Visible      := (substr(ASCVAR,1,2) = 'NY');
  DistResLabel.Visible      := (substr(ASCVAR,1,2) = 'NY');

end;

procedure TPersonGeneralForm.KeyCodeFieldExit(Sender: TObject);
begin
  If KeyCodeField.Modified and (KeyCodeField.Value<>'') then begin
    try
      Open_Query('CHECKKEY',False,'SELECT LNAME,FNAME,KEYCODE FROM PERS WHERE FDID = '+AddExpr(FDidField.Text)+' AND KEYCODE = '+AddExpr(KeyCodeField.Text)+' AND PERSID <> '+pkValue(pk));
      if A('CHECKKEY').RecordsExist then begin
        ShowMessage('This key is already assigned to '+tdbField('CHECKKEY','LNAME')+','+tdbField('CHECKKEY','FNAME'));
        KeyCodeField.Value := '';
        KeyCodeField.SetFocus;        
      end;
    finally
      CloseApollo('CHECKKEY');
    end;    
  end;
end;


procedure TPersonGeneralForm.FingerCodeFieldExit(Sender: TObject);
begin
  If FingerCodeField.Modified and (FingerCodeField.Value<>'') then begin
    try
      Open_Query('CHECKKEY',False,'SELECT LNAME,FNAME,KEYCODE FROM PERS WHERE FDID = '+AddExpr(FDidField.Text)+' AND FINGERCODE = '+AddExpr(FingerCodeField.Text)+' AND PERSID <> '+pkValue(pk));
      if A('CHECKKEY').RecordsExist then begin
        ShowMessage('This finger override code is already assigned to '+tdbField('CHECKKEY','LNAME')+','+tdbField('CHECKKEY','FNAME'));
        FingerCodeField.Value := '';
        FingerCodeField.SetFocus;
      end;
    finally
      CloseApollo('CHECKKEY6822');
    end;
  end;
end;

procedure TPersonGeneralForm.FdidBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var CheckValue : Boolean;
    Fdid       : String;
begin
  inherited;
  FdidBrowse.GetCheckBoxState(0,FdidBrowse.Row,CheckValue);
  Fdid := FdidBrowse.Cells[1,FdidBrowse.Row];
  If CheckValue then begin
    Open_Query('PERSFDID',true,'SELECT * FROM PERSFDID WHERE PERSID = ' + pk + ' AND FDID = ' + AddExpr(Fdid));
    If Not A('PERSFDID').RecordsExist then begin
      GetTable('PERSFDID').Append;
      GetField('PERSFDID','PERSID').AsString := pk;
      GetField('PERSFDID','FDID').AsString   := Fdid;
      GetTable('PERSFDID').Post
    end;
    CloseApollo('PERSFDID');
  end else
    RunSQL('DELETE FROM PERSFDID WHERE PERSID = ' + PK + ' AND FDID = ' + AddExpr(Fdid));
end;

procedure TPersonGeneralForm.FdidCompBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var CheckValue : Boolean;
    FdidCompID : String;
begin
  inherited;
  FdidCompBrowse.GetCheckBoxState(1,FdidCompBrowse.Row,CheckValue);
  If CheckValue then begin
    FdidCompID := FdidCompBrowse.Cells[0,FdidCompBrowse.Row];
    Open_Query('PERSCOMP',true,'SELECT * FROM PERSCOMP WHERE PERSID = ' + pk + ' AND FDIDCOMPID = ' + FdidCompID);
    If Not A('PERSCOMP').RecordsExist then begin
      GetTable('PERSCOMP').Append;
      GetField('PERSCOMP','PERSID').AsString     := pk;
      GetField('PERSCOMP','FDIDCOMPID').AsString := FdidCompID;
      GetTable('PERSCOMP').Post
    end;
    CloseApollo('PERSCOMP');
  end else
    RunSQL('DELETE FROM PERSCOMP WHERE PERSID = ' + PK + ' AND FDIDCOMPID = ' + FdidCompBrowse.Cells[0,FdidCompBrowse.Row]);
end;

procedure TPersonGeneralForm.FdidCompPanelCaptionDBlClick(Sender: TObject);
begin
  (Sender as TAlpinePanel).Collaps := Not (Sender as TAlpinePanel).Collaps;
end;



procedure TPersonGeneralForm.FdidFieldEnter(Sender: TObject);
begin
  FdidField.LookupFormWidth := 320;
  FdidField.SQLExpr         := 'SELECT FDID, DEPTNAME FROM FDID WHERE ' + GetFdidSQL('FDID.FDID') + ' AND MULTIINC = ' + AddExpr('Y');
end;

procedure TPersonGeneralForm.CityFieldAfterLookup(  Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Text  := GetField('CITY','STATE').AsString;
  ZipField.Text    := GetField('CITY','ZIP').AsString;
  CloseApollo('CITY');
end;                                                                                  


procedure TPersonGeneralForm.DistResFieldClick(Sender: TObject);
var
  Address, StrNum,mType, Street, PropID, Lname, Fname : String;
  AddCnt  : Integer;
  Found   : Boolean;
begin
  PropID := '';
  AddCnt := 0;
  Found  := False;
  mType  := '';
  if MFireID = '52067' then begin
    if DistResField.Checked then begin
      TRY
        Address   := SQLLookup(PK,'PERSID','PERS','ADD1');
        Lname     := SQLLookup(PK,'PERSID','PERS','LNAME');
        Fname     := SQLLookup(PK,'PERSID','PERS','FNAME');
        mType     := SQLLookup(SQLLookup(PK,'PERSID','PERS','PERSTYPEID'),'PERSTYPEID','PERSTYPE','DESCR');
        StrNum    := LeftStr(Address,POS(' ',Address) -1);
        Street    := RightStr(Address,Length(Address)-POS(' ',Address));
        Open_Query('PROP',false,'SELECT PROPID,STRNUM,STREET,IMPORTANT,WARNNARR,ROOMAPT,PLASTNAME FROM PROP WHERE STRNUM = ' + AddExpr(StrNum) + ' AND STREET =' + AddExpr(Street));
        While Not A('PROP').Eof and (not Found) do begin
          AddCnt    := AddCnt +1;
          Address   := GetField('PROP','STRNUM').AsString + ' ' + GetField('PROP','STREET').AsString + ' ' + GetField('PROP','ROOMAPT').AsString;
          if BooleanMessageDlg(Address + '. Should we make this the address for ' + FNAME + ' ' + LNAME + '?') then begin
            PropID   := GetField('PROP','PROPID').AsString;
            Found    := True;
            RunSQL('UPDATE PERS SET PROPID =' + AddExpr(PropID) + ' WHERE PERSID = ' + AddExpr(Pk));
            RunSQL('UPDATE PERS SET DISTRES =' + AddExpr('Y') + ' WHERE PERSID = ' + AddExpr(Pk));
            RunSQL('UPDATE PROP SET PLASTNAME =' + AddExpr(FNAME  + ' ' + LNAME) + ' WHERE PROPID = ' + AddExpr(PropID));
            RunSQL('UPDATE PROP SET IMPORTANT =' + AddExpr('MFD ' + mType + ' MEMBER ' + FName + ' ' + LName + ' RESIDENCE') + ' WHERE PROPID = ' + AddExpr(PropID));
            RunSQL('UPDATE PROP SET WARNNARR =' + AddExpr('MFD '+ mType + ' MEMBER ' + FName + ' ' + LName + ' RESIDENCE') + ' WHERE PROPID = ' + AddExpr(PropID));
            RunSQL('UPDATE PROP SET WARNDATE =' + AddExpr(DateTimeToStr(Now)) + ' WHERE PROPID = ' + AddExpr(PropID));
            AppendToLog('Added PropID for ' + AddExpr(FNAME  + ' ' + LNAME));
          end;
          A('PROP').Skip(1);
        end;
        if AddCnt = 0 then
          ShowMessage('No Address Found')
        else
          ShowMessage('Address Found and updated');
      FINALLY
        CloseApollo('PROP');
      END;
    end else begin
      try

        RunSQL('UPDATE PERS SET PROPID =null WHERE PERSID = ' + AddExpr(Pk));
        RunSQL('UPDATE PERS SET DISTRES =' + AddExpr('N') + ' WHERE PERSID = ' + AddExpr(Pk));
        RunSQL('UPDATE PROP SET IMPORTANT =' + AddExpr('') + ' WHERE PROPID = ' + AddExpr(PropID));
        RunSQL('UPDATE PROP SET WARNNARR =null WHERE PROPID = ' + AddExpr(PropID));
        RunSQL('UPDATE PROP SET WARNDATE =' + AddExpr('') + ' WHERE PROPID = ' + AddExpr(PropID));
        ShowMessage('Not an District Member anymore, narratives cleared');
      finally
        AppendToLog('Cleared PropID from ' + AddExpr(FNAME  + ' ' + LNAME));
      end;

    end;
  end;
end;

procedure TPersonGeneralForm.EMSQualIDFieldEnter(Sender: TObject);
begin
  EMSQualIDField.LookupFormWidth := 320;
  EMSQualIDField.SQLExpr         := 'SELECT * FROM EMSQUAL WHERE ' + GetFdidSQL('EMSQUAL.FDID');
end;

procedure TPersonGeneralForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  If GetFormOfType(TPersForm)<>nil then
    TPersForm(GetFormOfType(TPersForm)).Fdid := FdidField.Value;
end;

procedure TPersonGeneralForm.LNameFieldChange(Sender: TObject);
var PersForm: TPersForm;
begin
  PersForm := TPersForm(GetFormOfType(TPersForm));
  If PersForm <> nil then
    PersForm.Header.Caption := alltrim(alltrim(PersCodeField.Value) + '  ' + alltrim(alltrim(FNameField.Value) + ' ' + alltrim(LNameField.Value)));
end;

procedure TPersonGeneralForm.CalculateButtonClick(Sender: TObject);
begin
  YOSField.Value := FormatFloat('##0.00',CalculateYOS(PK));
end;

procedure TPersonGeneralForm.PersCodeFieldExit(Sender: TObject);
var bAbort: Boolean;
begin
  bAbort := False;
  If PersCodeField.ModifiedSinceEntered then begin
    If (mFireID = '30006') or (mFireID = '30041') then begin
      Open_Query('PERS',false,'SELECT LNAME, FDID,FNAME FROM PERS WHERE PERSCODE = ' + AddExpr(PersCodeField.Value) +
                              ' AND ATTEND = ' + AddExpr('Y') +
                              ' AND PERSID <> ' + PK);
    end else begin
      Open_Query('PERS',false,'SELECT LNAME,FDID, FNAME FROM PERS WHERE PERSCODE = ' + AddExpr(PersCodeField.Value) + ' AND PERSID <> ' + PK);
    end;
    //THIS WILL ALLOW MUTLITFDID AGENCIES TO HAVE SAME NUMBERS BETWEEN AGENCIES
    If A('PERS').RecordsExist then begin
      if not Multifdid then
        ShowMessage('Badge# ' + PersCodeField.Value + ' is used by ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME') + '.  It is recommended that you use another number.');
      if (SqlLookup(mFireID,'FDID','PERSSET','UNIQUEBADGENUM')='Y') and (not MultiFDID) then begin
        bAbort := True;
        PersCodeField.Value := '';
        PersCodeField.SetFocus;
      end else if SqlLookup(mFireID,'FDID','PERSSET','UNIQUEBADGENUM')='Y' then begin
        if Fdidfield.Value = tdbfield('PERS','FDID') then begin
          ShowMessage('Badge# ' + PersCodeField.Value + ' is used by ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME') + ' from your department. Select another one please');
          bAbort := True;
          PersCodeField.Value := '';
          PersCodeField.SetFocus;
        end else begin
          ShowMessage('Badge# ' + PersCodeField.Value + ' is used by ' + tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME') + ' from ' + SqlLookup(tdbfield('PERS','FDID'),'FDID','FDID','DESCR') + '.');
        end;

      end;
    end;
    CloseApollo('PERS');
  end;
  If bAbort then
    Abort;
end;


procedure TPersonGeneralForm.PersRankIDFieldEnter(Sender: TObject);
begin
  PersRankIDField.LookupFormWidth := 320;
  PersRankIDField.SQLExpr         := 'SELECT * FROM PERSRANK WHERE ' + GetFdidSQL('PERSRANK.FDID');
end;

procedure TPersonGeneralForm.PersTeamTypeBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var CheckValue     : Boolean;
    PersTeamTypeID : String;
begin
  inherited;
  PersTeamTypeBrowse.GetCheckBoxState(1,PersTeamTypeBrowse.Row,CheckValue);
  If CheckValue then begin
    PersTeamTypeID := PersTeamTypeBrowse.Cells[0,PersTeamTypeBrowse.Row];
    Open_Query('PERSTEAM',true,'SELECT * FROM PERSTEAM WHERE PERSID = ' + pk + ' AND PERSTEAMTYPEID = ' + PersTeamTypeID);
    If Not A('PERSTEAM').RecordsExist then begin
      GetTable('PERSTEAM').Append;
      GetField('PERSTEAM','PERSID').AsString         := pk;
      GetField('PERSTEAM','PERSTEAMTYPEID').AsString := PersTeamTypeID;
      GetTable('PERSTEAM').Post
    end;
    CloseApollo('PERSTEAM');
  end else
    RunSQL('DELETE FROM PERSTEAM WHERE PERSID = ' + PK + ' AND PERSTEAMTYPEID = ' + pkValue(PersTeamTypeBrowse.Cells[0,PersTeamTypeBrowse.Row]));
end;

procedure TPersonGeneralForm.PersTypeIDFieldChange(Sender: TObject);
var
  PropID : String;
begin
  PropID := '';
  if (PersTypeIDField.Value = '6') and (MFireID = '52067') then begin
      PropID := SQLLookup(pk,'PERSID','PERS','PROPID');
      if PropID <> '' then begin
        DistResField.State  := cbUnchecked;
        RunSQL('UPDATE PERS SET DISTRES =' + AddExpr('N') + ' WHERE PERSID = ' + AddExpr(Pk));
        RunSQL('UPDATE PROP SET IMPORTANT =' + AddExpr('') + ' WHERE PROPID = ' + AddExpr(PropID));
        RunSQL('UPDATE PROP SET WARNNARR =' + AddExpr('') + ' WHERE PROPID = ' + AddExpr(PropID));
        RunSQL('UPDATE PROP SET WARNDATE =null WHERE PROPID = ' + AddExpr(PropID));
        RunSQL('UPDATE PERS SET PROPID = null WHERE PERSID = ' + AddExpr(Pk));
        ShowMessage('Not an District Member anymore, narratives cleared');
      end;
  end;
end;

procedure TPersonGeneralForm.PersTypeIDFieldEnter(Sender: TObject);
begin
  PersTypeIDField.LookupFormWidth := 320;
  PersTypeIDField.SQLExpr         := 'SELECT * FROM PERSTYPE WHERE ' + GetFdidSQL('PERSTYPE.FDID');
end;

procedure TPersonGeneralForm.PersStatIDFieldEnter(Sender: TObject);
begin
  PersStatIDField.LookupFormWidth := 320;
  PersStatIDField.SQLExpr         := 'SELECT * FROM PERSSTAT WHERE ' + GetFdidSQL('PERSSTAT.FDID');
end;

procedure TPersonGeneralForm.ResourceFieldClick(Sender: TObject);
var PersRolodexTypeID : String;
    RolodexID         : String;
begin
  if ResourceField.Checked = False then begin
    If BooleanMessageDlg('Remove member from Rolodex?') then begin
       RunSql('DELETE FROM ROLODEX WHERE PERSID = ' + PK);
    end;
  end else begin
    Open_Query('ROLODEXSET',false,'SELECT PERSROLODEXTYPEID FROM ROLODEXSET');
    PersRolodexTypeID := GetField('ROLODEXSET','PERSROLODEXTYPEID').AsString;
    CloseApollo('ROLODEXSET');

    if PersRolodexTypeID <> '' then begin
      If BooleanMessageDlg('Transfer member to Rolodex?') then begin
        Open_Query('GETPERS',false,'SELECT PERSID, LNAME, FNAME, MNAME, ADD1, ADD2, CITY, STATE, ZIP, PHONE, OCCPHONE, CELL, PAGER, EMAIL FROM PERS WHERE PERSID = ' + AddExpr(PK));
        Open_Query('ROLODEX',true,'SELECT * FROM ROLODEX WHERE 1=2');

        if A('GETPERS').RecordsExist then begin
          A('ROLODEX').UpdateSQL('SELECT * FROM ROLODEX WHERE PERSID = ' + GetField('GETPERS','PERSID').AsString);
          If A('ROLODEX').RecordsExist then
            A('ROLODEX').Edit
          else
            A('ROLODEX').Append;
          GetField('ROLODEX','ROLODEXTYPEID').AsString  := PersRolodexTypeID;
          GetField('ROLODEX','PERSID').AsString         := tdbfield('GETPERS','PERSID');
          GetField('ROLODEX','NAME').AsString           := tdbfield('GETPERS','LNAME') + ', ' + tdbfield('GETPERS','FNAME') + ' ' + tdbfield('GETPERS','MNAME');
          GetField('ROLODEX','ADDRESS').AsString        := alltrim(tdbfield('GETPERS','ADD1') + ' ' + tdbfield('GETPERS','ADD2'));
          GetField('ROLODEX','CITY').AsString           := tdbfield('GETPERS','CITY');
          GetField('ROLODEX','STATE').AsString          := tdbfield('GETPERS','STATE');
          GetField('ROLODEX','ZIP').AsString            := tdbfield('GETPERS','ZIP');
          GetField('ROLODEX','PHONE1').AsString         := tdbfield('GETPERS','PHONE');
          GetField('ROLODEX','PHONE2').AsString         := tdbfield('GETPERS','OCCPHONE');
          GetField('ROLODEX','PHONE3').AsString         := tdbfield('GETPERS','CELL');
          GetField('ROLODEX','PHONE4').AsString         := tdbfield('GETPERS','PAGER');
          GetField('ROLODEX','EMAIL').AsString          := tdbfield('GETPERS','EMAIL');
          GetTable('ROLODEX').Post;

          RolodexID  := A('ROLODEX').NewPK;
        end;

        CloseApollo('GETPERS');
        CloseApollo('ROLODEX');
        If BooleanMessageDlg('Finished - Member added to Rolodex. Select Yes to edit/view the rolodex entry?') then begin
          if RolodexID <> '' then
            RunAlpineFormWithOwner(self,TRolodexForm,RolodexID ,'ROLODEX',TRolodexForm.NewRecord,False);
        end;
      end;
    end else begin
      ShowMessage('Please set Rolodex Personnel Type in the Rolodex setup window.');
      ResourceField.Checked := False;
    end;
  end;
end;

procedure TPersonGeneralForm.TotYOSButtonClick(Sender: TObject);
begin
  TotYOSField.Value := FormatFloat('##0.00',Calculate40070YOS(PK));
end;

procedure TPersonGeneralForm.YOSFieldClick(Sender: TObject);
begin
  ShowMessage(FormatFloat('##0.00',(Now - ActDateField.Value)/365.25));
end;

procedure TPersonGeneralForm.LoadPersTeamTypeBrowse;
Var RowNum : Integer;
  function CheckPersTeam : Boolean;
  begin
    If A('PERSTEAM').ExactQueryLocate(['PERSTEAMTYPEID'],[GetField('PERSTEAMTYPE','PERSTEAMTYPEID').AsString]) then
      CheckPersTeam := true
    else
      CheckPersTeam := false;
  end;
begin
  PersTeamTypeBrowse.clear;
  PersTeamTypeBrowse.ColCount := 3;
  PersTeamTypeBrowse.RowCount := 3;

  PersTeamTypeBrowse.ColWidths[00] := 000;
  PersTeamTypeBrowse.ColWidths[01] := 020;
  PersTeamTypeBrowse.ColWidths[02] := 200;

  PersTeamTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('PERSTEAM',false,'SELECT * FROM PERSTEAM WHERE PERSID = ' + PK);
  Open_Query('PERSTEAMTYPE',false,'SELECT * FROM PERSTEAMTYPE WHERE FDID = ' + AddExpr(FdidField.Value) + ' ORDER BY SORTORD');
  While Not A('PERSTEAMTYPE').Eof do begin
    PersTeamTypeBrowse.Cells[0,RowNum] := Getfield('PERSTEAMTYPE','PERSTEAMTYPEID').AsString;
    PersTeamTypeBrowse.AddCheckBox(1,RowNum,CheckPersTeam,false);
    PersTeamTypeBrowse.Cells[2,RowNum] := tdbfield('PERSTEAMTYPE','DESCR');
    If (RowNum > 1) then
      PersTeamTypeBrowse.RowCount := PersTeamTypeBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('PERSTEAMTYPE').Skip(1);
  end;
  CloseApollo('PERSTEAMTYPE');
  CloseApollo('PERSTEAM');
end;

Procedure TPersonGeneralForm.LoadFdidBrowse;
Var RowNum : Integer;
  function CheckPersFdid : Boolean;
  begin
    If A('PERSFDID').ExactQueryLocate(['FDID'],[tdbfield('FDID','FDID')]) then
      CheckPersFdid := true
    else
      CheckPersFdid := false;
  end;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 4;
  FdidBrowse.RowCount      := 3;
  FdidBrowse.ColWidths[00] := 020;
  FdidBrowse.ColWidths[01] := 040;
  FdidBrowse.ColWidths[02] := 250;
  FdidBrowse.ColWidths[03] := 200;

  FdidBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum                     := 0;

  Open_Query('FDID',false,'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  Open_Query('PERSFDID',false,'SELECT * FROM PERSFDID WHERE PERSID = ' + pkValue(pk)); 
  While Not A('FDID').Eof do begin
    FdidBrowse.AddCheckBox(0,RowNum,CheckPersFdid,false);
    FdidBrowse.Cells[1,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.Cells[2,RowNum] := tdbfield('FDID','DEPTNAME');
    FdidBrowse.Cells[3,RowNum] := tdbfield('FDID','SHORTDESCR');
    If (RowNum > 0) then
      FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');
  CloseApollo('PERSFDID');
end;

procedure TPersonGeneralForm.PageListNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('PERSID').AsString := PK;
  DataSet.FieldByname('ACTIVE').AsString := 'Y';
end;
 
end. 
