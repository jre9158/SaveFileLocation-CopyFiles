unit DispCallTake;
 
interface

uses
  apodset,
  sysutils,
  wintypes,
  winprocs,                              
  messages,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  db,
  dbtables,
  stdctrls,                                                    
  mask,
  genfunc,
  applst,
  extctrls,
  buttons,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  ComCtrls,
  AdvGrid,
  NativeXML,
  CommonDisp,
  CommonDispVar,
  AlpineTMSStringGrid,
  AlpineLookup,
  AdvPanel,
  ImgList,
  AdvToolBar,
  AlpineMemo,
  AdvGlowButton,
  ShellAPI,
  AlpineGlowButton,
  NormalBase,
  AlpineBase,
  Blink,
  htmlbtns,
  FormFunc,
  AlpineEdit,
  BasePictureField,
  BaseGrid,
  Grids,
  AdvGroupBox,
  CommonProQA,CommonProQAService,
  MySBox,
  AdvObj,
  AdvPageControl,
  EnPngGr;

type

  TDispCallTakeForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    SearchPanel: TAdvPanel;
    SearchBottom: TLabel;
    TownPanel: TPanel;
    Label1: TLabel;
    AddressPanel: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label7: TLabel;
    CrossPanel: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    LastNamePanel: TPanel;
    Label17: TLabel;
    OwnerPanel: TPanel;
    Label8: TLabel;
    PhoneBoxPanel: TPanel;
    DispCallPanel: TAdvPanel;
    DispCallBottom: TLabel;
    DispCallTypePanel: TPanel;
    Label13: TLabel;
    DispCallTypeIDField: TAlpineLookup;
    DispSubTypePanel: TPanel;
    Label5: TLabel;
    DispSubTypeIDField: TAlpineLookup;
    BoxCodePanel: TPanel;
    Label4: TLabel;
    DispBoxIDField: TAlpineLookup;
    CallerPanel: TAdvPanel;
    Label10: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    CallTypePanel: TAdvPanel;
    CallTypeBottom: TLabel;
    CallTypeGrid: TAlpineTMSStringGrid;
    SubTypePanel: TAdvPanel;
    SubTypeBottom: TLabel;
    SubTypeGrid: TAlpineTMSStringGrid;
    PropPanel: TAdvPanel;
    PropBottom: TLabel;
    PropBrowse: TAlpineTMSStringGrid;
    AppListPanel: TAdvPanel;
    AppList: TAlpineTMSStringGrid;
    FdidPanel: TAdvPanel;
    ProQAPanel: TAdvPanel;
    ProQABottom: TLabel;
    Label24: TLabel;
    DispWarnPanel: TAdvPanel;
    WarnNarrField: TAlpineMemo;
    WarnBlinkLabel: TBlinkLabel;
    StatusPanel: TPanel;
    PropCheck: THTMLCheckBox;
    ButtonPanel: TAdvPanel;
    PhonePanel: TPanel;
    BoxNumPanel: TPanel;
    Label9: TLabel;
    Label6: TLabel;
    Custom1Panel: TPanel;
    Custom1Label: TLabel;
    CityField: TAlpineEdit;
    StrNumField: TAlpineEdit;
    StreetField: TAlpineEdit;
    RoomAptField: TAlpineEdit;
    Cross1Field: TAlpineEdit;
    Cross2Field: TAlpineEdit;
    LastNameField: TAlpineEdit;
    OwnerName: TAlpineEdit;
    Custom1Field: TAlpineEdit;
    CallPhoneField: TAlpineEdit;
    CallAddrField: TAlpineEdit;
    CallNameField: TAlpineEdit;
    PQBreathField: TAlpineEdit;
    AddressButton: TAlpineGlowButton;
    IntersectionButton: TAlpineGlowButton;
    OccupantButton: TAlpineGlowButton;
    OwnerButton: TAlpineGlowButton;
    PhoneButton: TAlpineGlowButton;
    BoxNumButton: TAlpineGlowButton;
    Custom1Button: TAlpineGlowButton;
    SameButton: TAlpineGlowButton;
    DispCallSourceIDField: TAlpineLookup;
    Label20: TLabel;
    StateField: TAlpineEdit;
    Label26: TLabel;
    PropStatField: TBlinkLabel;
    PhoneField: TAlpineEdit;
    FdidScrollBar: TMyScrollBox;
    StreetCheckBox: THTMLCheckBox;
    applistbottom: TLabel;
    Custom1Check: THTMLCheckBox;
    zipfield: TAlpineEdit;
    Label12: TLabel;
    proQAPageControl: TAdvPageControl;
    LegacyPage: TAdvTabSheet;
    legacypanel: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    proqacodelabel: TLabel;
    ProQADescrLabel: TLabel;
    ProQACode: TAlpineEdit;
    ProQAdesc: TAlpineEdit;
    PQAgeField: TAlpineEdit;
    PQGenderField: TAlpineEdit;
    PQConcField: TAlpineEdit;
    DispPriorField: TAlpineEdit;
    PQSuffixField: TAlpineEdit;
    ParmountPage: TAdvTabSheet;
    ParmountPanel: TPanel;
    ProQAParmountNarr: TAlpineMemo;
    urgentmessagepanel: TPanel;
    urgenticon: TImage;
    urgentmessageLabel: TBlinkLabel;
    ProQATimer: TTimer;
    Button1: TButton;
    SetupButton: TAlpineGlowButton;
    StrNumExactCheck: THTMLCheckBox;
    SubButtonPanel: TAdvPanel;
    AddToQueueButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    DispatchButton: TAlpineGlowButton;
    GISButton: TAlpineGlowButton;
    PreplanButton: TAlpineGlowButton;
    proqaefd: TAlpineGlowButton;
    ProQAEMD: TAlpineGlowButton;
    SaveSettingButton: TAlpineGlowButton;
    SelectButton: TAlpineGlowButton;
    ButtonBottom: TLabel;
    SOPButton: TAlpineGlowButton;
    BoxNumField: TAlpineEdit;
    NarrPanel: TAdvPanel;
    NarrField: TAlpineMemo;
    procedure AddressButtonClick(Sender: TObject);
    procedure Dispatchbuttonclick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PreplanButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure OccupantButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DispBoxIDFieldExit(Sender: TObject);
    procedure GISButtonClick(Sender: TObject);
    procedure AddressKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LastNameFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PropBrowseDblClick(Sender: TObject);
    procedure IntersectionButtonClick(Sender: TObject);
    procedure DispSubTypeIDFieldEnter(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Cross1FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Cross2FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SaveSettingButtonClick(Sender: TObject);
    procedure ProQATimerTimer(Sender: TObject);
    procedure ProQAEMDClick(Sender: TObject);
    procedure DispCallTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure FieldChange(Sender: TObject);
    procedure OwnerButtonClick(Sender: TObject);
    procedure OwnerNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure StreetFieldChange(Sender: TObject);
    procedure LastNameFieldChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PanelEnter(Sender: TObject);
    procedure PanelExit(Sender: TObject);
    procedure BoxNumButtonClick(Sender: TObject);
    procedure BoxNumFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ButtonBottomClick(Sender: TObject);
    procedure SameButtonClick(Sender: TObject);
    procedure AppListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CallTypeGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure PhoneButtonClick(Sender: TObject);
    procedure PhoneFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DispBoxIDFieldSuccessfulValidate(Sender: TObject);
    procedure SubTypeGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
    procedure DispSubTypeIDFieldSuccessfulValidate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure proqaefdClick(Sender: TObject);
    procedure Custom1ButtonClick(Sender: TObject);
    procedure Custom1FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PhoneFieldChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SetupButtonClick(Sender: TObject);
    procedure BoxNumfieldChange(Sender: TObject);
    procedure AddToQueueButtonClick(Sender: TObject);
    procedure ButtonPanelResize(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SOPButtonClick(Sender: TObject);
  private
    { Private declarations }
    bNarrEnabled,bPromptedToDispatchCall: Boolean;

    LogCancelCall   : Boolean;
    phonefieldsToSearch: TStringList;
    UsePROQA        : Boolean;

    AutoSearch      : Boolean;
    FAllowDispatch  : Boolean;
    iCheckBoxColumn : Integer;
    Custom1FieldVar : String;
    procedure SetGuilfordDispBoxid;
    procedure DoProQA(mFire: Boolean);
    procedure ParseBasedOnDelimiter( Data, Delimiter: string; List: TStringList );

    procedure QuerySiteName;
    procedure QueryOwner;
    procedure QueryIntersection;
    procedure QueryAddress;
    procedure ResetPropBrowse;
    function  QueryAddressWithStrNum(StrNumVar: String): Boolean;
    procedure QueryBoxNum;
    procedure QueryPhone;
    procedure QueryCustom(FieldName: String);
    procedure LoadFdid;
    procedure UpdateFdid(ADispCall: TDispCall);
    procedure ResetFormCheck(Sender: TObject);


    procedure LoadAppList(ADispCall : TDispCall);
    procedure ShowApp;

    procedure ChangeAddressClick(Sender: TObject);
    procedure ChangeCallTypeClick(Sender: TObject);
    procedure ResizeButtons;
    procedure SetSubType(mDispSubTypeID: String);
    procedure SetCallType(mDispCallTypeID: String);
    procedure SetNewCallVariables;    
  public
    NewCall             : TDispCall;
    ActionType          : String;
    iAddrCount          : Integer;
    DispCallTakeProQAObject: TProQAObject;
    procedure Search(ModeVar: String);
    function AddNewCall : String;
    procedure SetDispatchButton(Mode: String);
    procedure AddCallClick(Sender: TObject);
    procedure LoadCurrentCall(DispCallID: String; AlarmNum: Integer);
    procedure SetDispCallType(mDispCallTypeID: String);
    constructor Create(AOwner: TComponent; mAllowDispatch: Boolean);
    procedure LoadCallTypeGrid;
    procedure LoadSubTypeGrid;
    class procedure ClassLoadSubTypeGrid(SubTypeGrid: TAlpineTMSStringGrid; mDispCallTypeID: String);
    class procedure ClassLoadCallTypeGrid(CallTypeGrid: TAlpineTMSStringGrid; FdidVar: String);
    class procedure ClassLoadAppList(AppList: TAlpineTMSStringGrid;ADispCall : TDispCall);
    class procedure ClassResetAppList(AppList: TAlpineTMSStringGrid);
    function GetSysColumn(ViewCode, ColCode: String; DefaultWidth: Integer): Integer;
    procedure AfterLoadCall;
  end;
  {$I rednmx.inc}
var
  DispCallTakeForm: TDispCallTakeForm;

const
  CRLF  = #13#10;

implementation
{$R *.DFM}

uses DispProp,
     GISFunc,
     DispatchObject,
     SortGridView,
     CommonVar,
     CommonRedNMX,
     GisSys,
     SecSet,
     SysSet,
     CommonFunc,
     BaseDispatch,
     DispCallTakeMove,
     DispWarnBox,
     AlpineLookGrid,
     WinMapDef,
     fdfunc,
     CommonProp,
     fdfuncbase,
     ShowMemo,
     E911Set,
     DispSOP,
     Disp;

function GetAddress(StrNumVar, StreetVar, Cross1Var, Cross2Var, RoomAptVar, Occupant: String): String;
Var TempAddress : String;
begin
  If Not (StrNumVar = '') then
    GetAddress := alltrim(alltrim(StrNumVar) + ' ' + StreetVar) + IIf(RoomAptVar = '','',' #' + RoomAptVar)
  else if Not (Cross2Var + Cross1Var = '') then begin
    if alltrim(StreetVar)='' then
      GetAddress := SayCrossStreets(Cross1Var,Cross2Var)
    else
      GetAddress := StreetVar + ' (X-Streets: '+SayCrossStreets(Cross1Var,Cross2Var)+')'  ;
  end else begin
    if mFireID = '72000' then begin
      if Not (StreetVar = '') then
        GetAddress := StreetVar
      else
        GetAddress := Occupant;
    end else begin
      if Not (Occupant = '') then
        GetAddress := Occupant
      else
        GetAddress := StreetVar;
    end;    
  end;    
end;


procedure TDispCallTakeForm.AddressButtonClick(Sender: TObject);
begin
  If (strnumfield.Text = '') and (StreetField.Text = '') then begin
    ShowMessage('There is nothing entered in the address search criteria');
    If AddressPanel.Visible then
      strnumfield.SetFocus;
  end else
    Search('ADDR');
end;

procedure TDispCallTakeForm.IntersectionButtonClick(Sender: TObject);
begin
  If (Cross1Field.Text = '') then
    ShowMessage('There is nothing entered in the primary street.')
  else
    Search('INT');
end;

procedure TDispCallTakeForm.OccupantButtonClick(Sender: TObject);
begin
  If (LastNameField.Text = '') then begin
    ShowMessage('There is nothing entered in the occupant search criteria');
    LastNameField.SetFocus;
  end else
    Search('OCCUPANT');
end;

procedure TDispCallTakeForm.OwnerButtonClick(Sender: TObject);
begin
  If (OwnerName.Text = '') then begin
    ShowMessage('There is nothing entered in the owner search criteria');
    OwnerName.SetFocus;
  end else
    Search('OWNER');
end;
procedure TDispCallTakeForm.ResetPropBrowse;
begin
  PropBrowse.Visible    := true;
  PreplanButton.Enabled := false;
  PropBrowse.clear;
  PropBrowse.ColCount   := 0;
  PropBrowse.ClearColumns;
  PropBrowse.RowCount   := PropBrowse.FixedRows;
end;  

procedure TDispCallTakeForm.Search(ModeVar: String);
begin
  ResetPropBrowse;

  If ModeVar = 'ADDR' then
    QueryAddress
  else if ModeVar = 'INT' then
    QueryIntersection
  else if ModeVar = 'OCCUPANT' then
    QuerySiteName
  else if ModeVar = 'OWNER' then
    QueryOwner
  else if ModeVar = 'BOXNUM' then
    QueryBoxNum
  else if ModeVar = 'PHONE' then
    QueryPhone
  else if ModeVar = 'CUSTOM1' then
    QueryCustom(Custom1FieldVar);

  If (AnyStrToInt(PropBrowse.GetValue('PROPID')) > 0) then begin
    StatusPanel.Caption   := ' Records found:  Press Select Address';
    SelectButton.Enabled  := true;
    PreplanButton.Enabled := true;
    PropBrowse.OnDblClick := PropBrowseDblClick;

  end else begin
    StatusPanel.Caption   := ' No records found.  Revise search criteria.';
    SelectButton.Enabled  := false;
    PreplanButton.Enabled := false;
    PropBrowse.OnDblClick := Nil;
  end;
end;

procedure TDispCallTakeForm.AddressKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    AddressButtonClick(self);
end;

procedure TDispCallTakeForm.LastNameFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    OccupantButtonClick(self);
end;

procedure TDispCallTakeForm.Cross1FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    IntersectionButtonClick(self);
end;

procedure TDispCallTakeForm.Cross2FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    IntersectionButtonClick(self);
end;

procedure TDispCallTakeForm.Custom1ButtonClick(Sender: TObject);
begin
  If (Custom1Field.Text = '') then begin
    ShowMessage('There is nothing entered in the ' + Custom1Label.Caption + ' search criteria');
    Custom1Field.SetFocus;
  end else
    Search('CUSTOM1');
end;

procedure TDispCallTakeForm.Custom1FieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    Custom1ButtonClick(self);
end;

procedure TDispCallTakeForm.OwnerNameKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    OwnerButtonClick(self);
end;

procedure TDispCallTakeForm.BoxNumFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    BoxNumButtonClick(self);
end;

function GetOddEven(OddEven: String): String;
begin
  If OddEven = '' then
    GetOddEven := ''
  else if OddEven = 'O' then
    GetOddEven := 'Odd'
  else if OddEven = 'E' then
    GetOddEven := 'Even'
  else
    GetOddEven := '';
end;

procedure TDispCallTakeForm.QueryAddress;
begin
  if not QueryAddressWithStrNum(strnumfield.text) then begin
    If PropRange='' then
      if (alltrim(strnumfield.text)<>'') then
        QueryAddressWithStrNum('')
  end;
end;



function TDispCallTakeForm.QueryAddressWithStrNum(StrNumVar: String): Boolean;
Var WhereClause,mSql   : String;
    qAddress           : TApolloData;
    bAdd               : Boolean;
    streetname         : String;
    AliasStreetNames   : TStringList;
    streetnames        : TStringList;
    i                  : Integer;
    bUseAliasSearching : Boolean;

  procedure LoadPropAddress;
  var iStreet      : Integer;
      mAliasStreet : String;
      mStreet      : String;
  begin
    While Not qAddress.Eof do begin

      bAdd := True;

      If PropRange<>'' then
        bAdd := bAdd and (GetField(qAddress,'PROPTYPEID').AsString<>PropRange);
      If PropInt<>'' then
        bAdd := bAdd and (GetField(qAddress,'PROPTYPEID').AsString<>PropInt);

      If bAdd then begin
        result := True;
        iAddrCount := iAddrCount + 1;
        PropBrowse.SetValue('FDID',          GetField(qAddress,'FDID').AsString);
        PropBrowse.SetValue('PROPID',        GetField(qAddress,'PROPID').AsString);
        PropBrowse.SetValue('STRNUM',        alltrim(GetField(qAddress,'STRNUM').AsString));
        mStreet := alltrim(GetField(qAddress,'STREET').AsString);
        if bUseAliasSearching then begin
          mAliasStreet := '';
          for iStreet := 1 to StreetNames.Count - 1 do begin
            if (ansicomparetext(substr(AliasStreetnames[iStreet],1,length(StreetField.Text)),substr(StreetField.Text,1,length(StreetField.Text))) = 0) and
              (ansicomparetext(substr(mStreet,1,length(StreetField.Text)),substr(StreetField.Text,1,length(StreetField.Text))) <> 0) then
              mAliasStreet := ' ('+AliasStreetnames[iStreet]+')';
          end;
          mStreet := mStreet + mAliasStreet;
        end;

        PropBrowse.SetValue('STREET',        mStreet);


        PropBrowse.SetValue('ROOMAPT',       alltrim(GetField(qAddress,'ROOMAPT').AsString));
        PropBrowse.SetValue('CITY',          alltrim(GetField(qAddress,'CITY').AsString));
        PropBrowse.SetValue('PLASTNAME',     GetField(qAddress,'PLASTNAME').AsString);
        PropBrowse.SetValue('PROPTYPEDESCR', GetField(qAddress,'PROPTYPEDESCR').AsString);
        PropBrowse.SetValue('FDIDSHORTDESCR',GetField(qAddress,'FDIDSHORTDESCR').AsString);
      end;
      qAddress.Skip(1);
    end;
  end;

  procedure LoadRange;
  begin
    While Not qAddress.Eof do begin
      PropBrowse.SetValue('FDID',          GetField(qAddress,'FDID').AsString);
      PropBrowse.SetValue('PROPID',        GetField(qAddress,'PROPID').AsString);
      PropBrowse.SetValue('STRNUM',        GetField(qAddress,'LOWERSTRNUM').AsString + '-' + GetField(qAddress,'UPPERSTRNUM').AsString + ' ' + GetOddEven(tdbfield(qAddress,'ODDEVEN')));
      PropBrowse.SetValue('STREET',        alltrim(GetField(qAddress,'STREET').AsString));
      PropBrowse.SetValue('CITY',          alltrim(GetField(qAddress,'CITY').AsString));
      PropBrowse.SetValue('PLASTNAME',     GetField(qAddress,'PLASTNAME').AsString);
      PropBrowse.SetValue('PROPTYPEDESCR', GetField(qAddress,'PROPTYPEDESCR').AsString);
      PropBrowse.SetValue('FDIDSHORTDESCR',GetField(qAddress,'FDIDSHORTDESCR').AsString);
      qAddress.Skip(1);
    end;
  end;
begin
  result             := False;
  ResetPropBrowse;
  streetnames        := TStringList.Create;
  AliasStreetNames   := TStringList.Create;
  StrNumVar          := alltrim(StrNumVar);
  bUseAliasSearching := (mFireid='52101') or (mFireid = '52005') or (mFireid = '01920') or (mFireid = 'X12345') or (mFireid = '23145') or (mFireid = '23239') or (mFireid = '02220') or (mFireId = '28014');
  If StreetCheckBox.Checked then
    StreetName := trim(StreetField.Text)
  else
    StreetName := CheckStreetAlias(trim(StreetField.Text));
  if bUseAliasSearching then begin
    WhereClause := GetPropWhereWithAliases(GlobalAdoConnection,trim(StreetField.Text),StreetCheckBox.checked, streetnames,AliasStreetNames);
  end else begin
    WhereClause := DoUpperWhere('PROP.STREET',GlobalAdoConnection) + ' LIKE ' + Addexpr(IIf(StreetCheckBox.Checked,'%','') + StreetName + '%');
  end;

  If not(StrNumVar = '') then begin
    If (mFireid = '07140') or (mFireid = '52280') then
      WhereClause := WhereClause + ' ' + ' AND PROP.STRNUM LIKE ' + AddExpr('%' + alltrim(StrNumVar) + '%' )
    else begin
      If StrNumExactCheck.Checked then
        WhereClause := WhereClause + ' ' + ' AND PROP.STRNUM = ' + AddExpr(alltrim(StrNumVar))
      else
        WhereClause := WhereClause + ' ' + ' AND PROP.STRNUM LIKE ' + AddExpr(alltrim(StrNumVar) + '%' );
    end;
  end;

  If Not (alltrim(CityField.Text) = '') and TownPanel.Visible then
    WhereClause := WhereClause + ' AND ' + DoUpperWhere('PROP.CITY',GlobalAdoConnection)+' LIKE ' + AddExpr(CityField.Text + '%');

  If (mFireID = '52280')  or (FireID = '12345') then
    WhereClause := WhereClause + ' AND (PROP.ACTIVE IS NULL OR PROP.ACTIVE = ' + AddExpr('') + ' OR PROP.ACTIVE = ' + AddExpr('Y') + ')';

  if bUseAliasSearching then
    WhereClause := WhereClause + ' OR ' + DoUpperWhere('PROPALIASADDR.STREET',GlobalAdoConnection)+' LIKE ' + AddExpr('%'+StreetField.Text + '%');

  PropBrowse.SetColumn('PROPID'   ,     'PROP',        001);
  PropBrowse.SetColumn('FDID',          'FDID',        001);
  PropBrowse.SetColumn('PROPTYPEID',    'PROPTYPEID',  001);
  PropBrowse.SetColumn('STRNUM',        'Address',     090,'','N');
  PropBrowse.SetColumn('STREET',        'Street Name', 180);
  PropBrowse.SetColumn('ROOMAPT',       'Apt',         060);
  PropBrowse.SetColumn('CITY',          'Town',        GetSysColumn('DCTADDRESS','CITY',090));
  PropBrowse.SetColumn('PLASTNAME',     'Occupant',    GetSysColumn('DCTADDRESS','OCCUPANT',175));
  PropBrowse.SetColumn('PROPTYPEDESCR', 'Address Type',135);
  PropBrowse.SetColumn('FDIDSHORTDESCR','Agency ',      300);

  try
    If (GlobalAdoConnection.TableType = MySqlTableType) then
      mSql := 'SELECT PROPTYPE.PROPTYPEID,PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID PROPID, PROP.PLASTNAME PLASTNAME, PROP.STRNUM STRNUM, PROP.STREET STREET, PROP.ROOMAPT ROOMAPT, PROP.CITY CITY, PROPTYPE.DESCR PROPTYPEDESCR FROM PROP ' +
                              'LEFT JOIN PROPTYPE ON (PROP.PROPTYPEID = PROPTYPE.PROPTYPEID) ' +
                              'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                              'LEFT JOIN PROPALIASADDR ON (PROP.PROPID = PROPALIASADDR.PROPID) '+
                              'WHERE ' + WhereClause + ' ORDER BY PROP.STREET, '+AlpinePadLeft('PROP.STRNUM',8)+',' +AlpinePadLeft('PROP.ROOMAPT',8)
    else If (GlobalAdoConnection.TableType = OracleTableType) then
      mSql := 'SELECT PROPTYPE.PROPTYPEID,PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID PROPID, PROP.PLASTNAME PLASTNAME, PROP.STRNUM STRNUM, PROP.STREET STREET, PROP.ROOMAPT ROOMAPT, PROP.CITY CITY, PROPTYPE.DESCR PROPTYPEDESCR FROM PROP ' +
                              'LEFT OUTER JOIN PROPTYPE ON (PROP.PROPTYPEID = PROPTYPE.PROPTYPEID) ' +
                              'LEFT OUTER JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                              'LEFT JOIN PROPALIASADDR ON (PROP.PROPID = PROPALIASADDR.PROPID) '+
                              'WHERE ' + WhereClause + ' ORDER BY PROP.STREET,PROP.STRNUM'

    else
      mSql := 'SELECT PROPTYPE.PROPTYPEID,PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID PROPID, PROP.PLASTNAME PLASTNAME, PROP.STRNUM STRNUM, PROP.STREET STREET, PROP.ROOMAPT ROOMAPT, PROP.CITY CITY, PROPTYPE.DESCR PROPTYPEDESCR FROM PROP ' +
                              'LEFT JOIN PROPTYPE ON (PROP.PROPTYPEID = PROPTYPE.PROPTYPEID) ' +
                              'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                              'LEFT JOIN PROPALIASADDR ON (PROP.PROPID = PROPALIASADDR.PROPID) '+
                              'WHERE ' + WhereClause + ' ORDER BY PROP.STREET, '+AlpinePadLeft('PROP.STRNUM',8);

    qAddress := Open_Query(False,mSql);


    LoadPropAddress;

    If FIREID = '06090' then
      Propbrowse.SortIndexes.AddIndex(PropBrowse.Columnnames.IndexOf('CITY'),True);
    Propbrowse.SortIndexes.AddIndex(PropBrowse.Columnnames.IndexOf('STREET'),True);
    Propbrowse.SortIndexes.AddIndex(PropBrowse.Columnnames.IndexOf('STRNUM'),True);
    Propbrowse.SortIndexes.AddIndex(PropBrowse.Columnnames.IndexOf('ROOMAPT'),True);
    if Propbrowse.SortIndexes.Count<>0 then begin
      Propbrowse.qSortIndexed;
      for i:= 0 to propbrowse.rowcount-1 do begin
        if alltrim(RoomAptField.Value)<>'' then begin
          if alltrim(RoomAptField.Value)=trim(propbrowse.GetValue('ROOMAPT',i)) then
            PropBrowse.Row:=i;
        end;    
      end;
    end;
  finally
    qAddress.Free;;
  end;

  If (anystrtoint(PropRange) > 0) then begin
    WhereClause := '';
    StrNumVar   := StringWithOnlyIntegers(alltrim(strnumfield.Text));
    If (StrNumVar = '')  then begin
      if bUseAliasSearching then begin
        WhereClause := GetPropWhereWithAliases(GlobalAdoConnection,trim(StreetField.Text),StreetCheckBox.checked, streetnames,AliasStreetNames);
      end else begin
        WhereClause := DoUpperWhere('PROP.STREET',GlobalAdoConnection) + ' LIKE ' + Addexpr(IIf(StreetCheckBox.Checked,'%','') + StreetName + '%');
      end;

      WhereClause := WhereClause + ' AND PROP.PROPTYPEID = ' + pkValue(PropRange);
    end else
      WhereClause := DoUpperWhere('PROP.STREET',GlobalAdoConnection)+' LIKE ' + Addexpr(StreetName + '%') + ' AND PROP.LOWERSTRNUM <= ' + StrNumVar + ' AND PROP.UPPERSTRNUM >= ' + StrNumVar + ' AND PROP.PROPTYPEID = ' + pkValue(PropRange);

    If Not (alltrim(CityField.Text) = '') and TownPanel.Visible then
      WhereClause := WhereClause + ' AND '+DoUpperWhere('PROP.CITY',GlobalAdoConnection)+' LIKE ' + AddExpr(alltrim(CityField.Text) + '%');
    try
      mSql := 'SELECT PROP.ODDEVEN, PROP.LOWERSTRNUM, PROP.UPPERSTRNUM, PROP.FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID, PROP.PLASTNAME, PROP.STREET, PROP.CITY, PROPTYPE.DESCR PROPTYPEDESCR FROM PROP ' +
                              'LEFT JOIN PROPTYPE ON (PROP.PROPTYPEID = PROPTYPE.PROPTYPEID) ' +
                              'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                              'WHERE ' + WhereClause + ' ORDER BY PROP.STREET, PROP.LOWERSTRNUM';
      qAddress := Open_Query(false,mSql);

       If FIREID <> '30033' then LoadRange;
    finally
      qAddress.Free;
    end;
  end;
  StreetNames.Free;
  AliasStreetNames.Free;
end;


procedure TDispCallTakeForm.QuerySiteName;
Var WhereClause : String;
  qSiteName     : TApolloData;
  procedure SetPropColumns(bAlias: Boolean);
  begin
    PropBrowse.SetValue('FDID',            GetField(qSiteName,'FDID').AsString);
    PropBrowse.SetValue('PROPID',          GetField(qSiteName,'PROPID').AsString);
    if bAlias then
      PropBrowse.SetValue('PLASTNAME',       'Alias: ' + tdbfield(qSiteName,'PROPALIASDESCR') + ', ' + tdbfield(qSiteName,'PLASTNAME'))
    else
      PropBrowse.SetValue('PLASTNAME',       GetField(qSiteName,'PLASTNAME').AsString);
    PropBrowse.SetValue('STRNUM',          alltrim(GetField(qSiteName,'STRNUM').AsString));
    PropBrowse.SetValue('STREET',          alltrim(GetField(qSiteName,'STREET').AsString));
    PropBrowse.SetValue('ROOMAPT',         alltrim(GetField(qSiteName,'ROOMAPT').AsString));
    PropBrowse.SetValue('CITY',            alltrim(GetField(qSiteName,'CITY').AsString));
    PropBrowse.SetValue('PROPSUBTYPEDESCR',alltrim(GetField(qSiteName,'PROPSUBTYPEDESCR').AsString));
    PropBrowse.SetValue('FDIDSHORTDESCR',  alltrim(GetField(qSiteName,'FDIDSHORTDESCR').AsString));
  end;
begin
  PropBrowse.SetColumn('FDID'   ,         'FDID',       000);
  PropBrowse.SetColumn('PROPID'   ,       'ID#',        000);
  PropBrowse.SetColumn('PLASTNAME',       'Last Name',  250);
  PropBrowse.SetColumn('STRNUM',          '#',          045);
  PropBrowse.SetColumn('STREET',          'Street Name',150);
  PropBrowse.SetColumn('ROOMAPT',         'Apt',        040);
  PropBrowse.SetColumn('CITY',            'Town',       110);
  PropBrowse.SetColumn('PROPSUBTYPEDESCR','Type',       110);
  PropBrowse.SetColumn('FDIDSHORTDESCR',  'Agency',     200);

  WhereClause := DoUpperWhere('PLASTNAME',GlobalAdoConnection)+' LIKE ' + Addexpr(IIf(PropCheck.Checked,'%','') + LastNameField.Text + '%');

  If (mFireID = '52280') or  (FireID = '12345') then
    WhereClause := WhereClause + ' AND (PROP.ACTIVE IS NULL OR PROP.ACTIVE = ' + AddExpr('') + ' OR PROP.ACTIVE = ' + AddExpr('Y') + ')';
  
  try
    qSiteName := Open_Query(false,'SELECT PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID, PROP.PLASTNAME, PROP.STRNUM, PROP.STREET, PROP.ROOMAPT, PROP.CITY, PROPSUBTYPE.DESCR PROPSUBTYPEDESCR FROM PROP ' +
                            'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
                            'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                            'WHERE ' + WhereClause + ' ORDER BY PLASTNAME');


    While Not qSiteName.Eof do begin
      SetPropColumns(False);
      qSiteName.Skip(1);
    end;


    WhereClause := 'PROPALIAS.DESCR LIKE ' + Addexpr(IIf(PropCheck.Checked,'%','') + LastNameField.Text + '%');
    qSiteName.UpdateSQL('SELECT PROPALIAS.DESCR PROPALIASDESCR, PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID, PROP.PLASTNAME, PROP.STRNUM, PROP.STREET, PROP.ROOMAPT, PROP.CITY, PROPSUBTYPE.DESCR PROPSUBTYPEDESCR ' +
                        'FROM PROPALIAS ' +
                        'LEFT JOIN PROP ON (PROPALIAS.PROPID = PROP.PROPID) ' +
                        'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
                        'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                        'WHERE ' + WhereClause + ' ORDER BY PROPALIAS.DESCR');

    While Not qSiteName.Eof do begin
      SetPropColumns(True);
      qSiteName.Skip(1);
    end;
  finally
    qSiteName.Free;
  end;
end;

procedure TDispCallTakeForm.QueryOwner;
Var WhereClause : String;
    qOwner      : TApolloData;
begin
  WhereClause := DoUpperWhere('OLASTNAME',GlobalAdoConnection)+' LIKE ' + Addexpr(OwnerName.Text + '%');
  try
    qOwner      := Open_Query(false,'SELECT PROPID, OLASTNAME, STRNUM, STREET, ROOMAPT, CITY, PROPSUBTYPE.DESCR PROPSUBTYPEDESCR FROM PROP ' +
                            'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
                            'WHERE ' + WhereClause + ' ORDER BY OLASTNAME');

    PropBrowse.SetColumn('PROPID'   ,       'ID#',        000);
    PropBrowse.SetColumn('OLASTNAME',       'Ower Name',  175);
    PropBrowse.SetColumn('STRNUM',          '#',          040);
    PropBrowse.SetColumn('STREET',          'Street Name',200);
    PropBrowse.SetColumn('ROOMAPT',         'Apt',        050);
    PropBrowse.SetColumn('CITY',            'Town',       150);
    PropBrowse.SetColumn('PROPSUBTYPEDESCR','Type',       200);

    While Not qOwner.Eof do begin
      PropBrowse.SetValue('PROPID',          GetField(qOwner,'PROPID').AsString);
      PropBrowse.SetValue('OLASTNAME',       GetField(qOwner,'OLASTNAME').AsString);
      PropBrowse.SetValue('STRNUM',          alltrim(GetField(qOwner,'STRNUM').AsString));
      PropBrowse.SetValue('STREET',          alltrim(GetField(qOwner,'STREET').AsString));
      PropBrowse.SetValue('ROOMAPT',         alltrim(GetField(qOwner,'ROOMAPT').AsString));
      PropBrowse.SetValue('CITY',            alltrim(GetField(qOwner,'CITY').AsString));
      PropBrowse.SetValue('PROPSUBTYPEDESCR',alltrim(GetField(qOwner,'PROPSUBTYPEDESCR').AsString));
      qOwner.Skip(1);
    end;
  finally
    qOwner.Free;
  end;  
end;

procedure TDispCallTakeForm.QueryIntersection;
Var WhereClause   : String;
    BaseClause    : String;
    qIntersection : TApolloData;
  procedure LoadPropIntersection;
  begin
    While Not qIntersection.Eof do begin
      PropBrowse.SetValue('FDID',          GetField(qIntersection,'FDID').AsString);
      PropBrowse.SetValue('PROPID',        GetField(qIntersection,'PROPID').AsString);
      PropBrowse.SetValue('STREET',        GetField(qIntersection,'STREET').AsString);
      PropBrowse.SetValue('CROSS1',        GetField(qIntersection,'CROSS1').AsString);
      PropBrowse.SetValue('CROSS2',        GetField(qIntersection,'CROSS2').AsString);
      PropBrowse.SetValue('CITY',          GetField(qIntersection,'CITY').AsString);
      PropBrowse.SetValue('PROPTYPEID',    'Intersection');
      PropBrowse.SetValue('FDIDSHORTDESCR',GetField(qIntersection,'FDIDSHORTDESCR').AsString);
      qIntersection.Skip(1);
    end;
  end;
begin
  PropBrowse.SetColumn('FDID',          'Agency',        000);
  PropBrowse.SetColumn('PROPID',        'ID#',           000);
  PropBrowse.SetColumn('STREET',        'Primary Street',150);
  PropBrowse.SetColumn('CROSS1',        'Cross Street',  150);
  PropBrowse.SetColumn('CROSS2',        'Second Street', 150);
  PropBrowse.SetColumn('CITY',          'Town',          100);
  PropBrowse.SetColumn('PROPTYPEID',    'Property Type', 100);
  PropBrowse.SetColumn('FDIDSHORTDESCR','Agency',        300);

  BaseClause := 'PROPTYPEID = ' + PkValue(PropInt);
  If Not (alltrim(CityField.Text) = '') then
    BaseClause := BaseClause + ' AND '+DoUpperWhere('PROP.CITY',GlobalAdoConnection)+' LIKE ' + AddExpr(CityField.Text + '%');

  WhereClause := '';
  If Not (alltrim(Cross1Field.Text) = '') then
    WhereClause := ' AND '+DoUpperWhere('STREET',GlobalAdoConnection)+' LIKE ' + Addexpr('%' + Cross1Field.Text + '%');

  If Not (alltrim(Cross1Field.Text) = '') then
    WhereClause := WhereClause + ' AND '+DoUpperWhere('CROSS1',GlobalAdoConnection)+' LIKE ' + Addexpr('%' + Cross2Field.Text + '%');

  try
    qIntersection := Open_Query(false,'SELECT PROP.FDID, PROP.PROPID, PROP.STREET, PROP.CROSS1, PROP.CROSS2, PROP.CITY, PROP.PROPTYPEID, ' +
                            'FDID.SHORTDESCR FDIDSHORTDESCR ' +
                            'FROM PROP ' +
                            'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                            'WHERE ' + BaseClause + WhereClause + ' ORDER BY STREET, CROSS1');
    LoadPropIntersection;

    WhereClause := '';
    If Not (alltrim(Cross1Field.Text) = '') then
      WhereClause := ' AND '+DoUpperWhere('PROP.CROSS1',GlobalAdoConnection)+' LIKE ' + Addexpr('%' + Cross1Field.Text + '%');

    If Not (alltrim(Cross1Field.Text) = '') then
      WhereClause := WhereClause + ' AND '+DoUpperWhere('PROP.STREET',GlobalAdoConnection)+' LIKE ' + Addexpr('%' + Cross2Field.Text + '%');

    qIntersection.UpdateSQL('SELECT PROP.FDID, PROP.PROPID, PROP.STREET, PROP.CROSS1, PROP.CROSS2, PROP.CITY, PROP.PROPTYPEID, ' +
                        'FDID.SHORTDESCR FDIDSHORTDESCR ' +
                        'FROM PROP ' +
                        'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' +
                        'WHERE ' + BaseClause + WhereClause + ' ORDER BY STREET, CROSS1');
    LoadPropIntersection;
  finally
    qIntersection.Free;
  end;
end;


procedure TDispCallTakeForm.QueryBoxNum;
Var qBoxNum : TApolloData;
    mQuery  : String;
    mSelect : String;
begin
  mSelect := ' PROP.PROPID, PROP.PLASTNAME, PROP.PLASTNAME, PROP.STRNUM, PROP.STREET, PROP.ROOMAPT, PROP.CITY, PROPSUBTYPE.DESCR PROPSUBTYPEDESCR ';

  If (mFireid = '03800') then begin
    mQuery := 'SELECT '+mSelect+', PROPBOX.BOXNUM FROM PROPBOX '+
              'LEFT OUTER JOIN PROP ON (PROPBOX.PROPID = PROP.PROPID) '+
              'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
              'WHERE PROPBOX.BOXNUM LIKE ' + Addexpr(BoxNumField.Text + '%') + ' ' + 
              'ORDER BY PROPBOX.BOXNUM, PROP.STREET, PROP.STRNUM';
    qBoxNum := Open_Query(false,mQuery);

    If  (qBoxNum.QueryRecCount=0) then begin
      mQuery := 'SELECT '+mSelect+',PROP.BOXNUM FROM PROP '+
                'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
                'WHERE PROP.BOXNUM LIKE ' + Addexpr(BoxNumField.Text + '%') + ' ' +
                'ORDER BY PROP.BOXNUM, PROP.STREET, PROP.STRNUM';
      qBoxNum.UpdateSql(mQuery);
    end;
  end else begin
    mQuery := 'SELECT '+mSelect+',PROP.BOXNUM FROM PROP '+
              'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
              'WHERE PROP.BOXNUM LIKE ' + Addexpr(BoxNumField.Text + '%') + ' ' +
              'ORDER BY BOXNUM, STREET, STRNUM';
    qBoxNum := Open_Query(false,mQuery);
  end;

  PropBrowse.SetColumn('PROPID'   ,       'ID#',        000);
  PropBrowse.SetColumn('BOXNUM',          'Box Number', 080);
  PropBrowse.SetColumn('PLASTNAME',       'Occupant',   250);
  PropBrowse.SetColumn('STRNUM',          '#',          050);
  PropBrowse.SetColumn('STREET',          'Street Name',220);
  PropBrowse.SetColumn('ROOMAPT',         'Apt',        050);
  PropBrowse.SetColumn('CITY',            'Town',       100);
  PropBrowse.SetColumn('PROPSUBTYPEDESCR','Type',       200);

  While Not qBoxNum.Eof do begin
    PropBrowse.SetValue('PROPID',          GetField(qBoxNum,'PROPID').AsString);
    PropBrowse.SetValue('BOXNUM',          GetField(qBoxNum,'BOXNUM').AsString);
    PropBrowse.SetValue('PLASTNAME',       GetField(qBoxNum,'PLASTNAME').AsString);
    PropBrowse.SetValue('STRNUM',          alltrim(GetField(qBoxNum,'STRNUM').AsString));
    PropBrowse.SetValue('STREET',          alltrim(GetField(qBoxNum,'STREET').AsString));
    PropBrowse.SetValue('ROOMAPT',         alltrim(GetField(qBoxNum,'ROOMAPT').AsString));
    PropBrowse.SetValue('CITY',            alltrim(GetField(qBoxNum,'CITY').AsString));
    PropBrowse.SetValue('PROPSUBTYPEDESCR',alltrim(GetField(qBoxNum,'PROPSUBTYPEDESCR').AsString));
    qBoxNum.Skip(1);
  end;
  qBoxNum.Free;
end;


procedure TDispCallTakeForm.QueryCustom(FieldName: String);
Var WhereClause : String;
    PropTable   : TApolloData;
begin
  WhereClause := DoUpperWhere(FieldName,GlobalAdoConnection)+' LIKE ' + Addexpr(IIf(Custom1Check.Checked,'%','') + Custom1Field.Text + '%');
  try
    PropTable   := Open_Query(false,'SELECT PROPID, ' + FieldName + ', STRNUM, STREET, ROOMAPT, CITY, PROPSUBTYPE.DESCR PROPSUBTYPEDESCR FROM PROP ' +
                                    'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' +
                                    'WHERE ' + WhereClause + ' ORDER BY ' + FieldName);

    PropBrowse.SetColumn('PROPID'   ,       'ID#',               000);
    PropBrowse.SetColumn(FieldName,         Custom1Label.Caption,175);
    PropBrowse.SetColumn('STRNUM',          '#',                 040);
    PropBrowse.SetColumn('STREET',          'Street Name',       200);
    PropBrowse.SetColumn('ROOMAPT',         'Apt',               050);
    PropBrowse.SetColumn('CITY',            'Town',              150);
    PropBrowse.SetColumn('PROPSUBTYPEDESCR','Type',              500);

    While Not PropTable.Eof do begin
      PropBrowse.SetValue('PROPID',          GetField(PropTable,'PROPID').AsString);
      PropBrowse.SetValue(FieldName,         GetField(PropTable,FieldName).AsString);
      PropBrowse.SetValue('STRNUM',          alltrim(GetField(PropTable,'STRNUM').AsString));
      PropBrowse.SetValue('STREET',          alltrim(GetField(PropTable,'STREET').AsString));
      PropBrowse.SetValue('ROOMAPT',         alltrim(GetField(PropTable,'ROOMAPT').AsString));
      PropBrowse.SetValue('CITY',            alltrim(GetField(PropTable,'CITY').AsString));
      PropBrowse.SetValue('PROPSUBTYPEDESCR',alltrim(GetField(PropTable,'PROPSUBTYPEDESCR').AsString));
      PropTable.Skip(1);
    end;
  finally
    PropTable.Free;
  end;
end;

procedure TDispCallTakeForm.SetNewCallVariables;
begin
  NewCall.Narr             := NarrField.Memo.Text;
  NewCall.DispCallSourceID := DispCallSourceIDField.Value;
  NewCall.CallName         := CallNameField.Text;
  NewCall.CallAddr         := CallAddrField.Text;
  NewCall.CallPhone        := CallPhoneField.Text;
  NewCall.Street           := DispCallTakeForm.StreetField.Text;
  NewCall.StrNum           := DispCallTakeForm.strnumfield.Text;
  NewCall.RoomApt          := DispCallTakeForm.RoomAptField.Text;
  NewCall.SiteName         := DispCallTakeForm.LastNameField.Text;
  NewCall.Cross1           := Cross1Field.Text;
  NewCall.Cross2           := Cross2Field.Text;
  NewCall.Address          := GetAddress(NewCall.StrNum, NewCall.Street, NewCall.Cross1, NewCall.Cross2, NewCall.RoomApt, NewCall.SiteName);
  NewCall.City             := CityField.Text;
  NewCall.State            := StateField.Text;

end;

procedure TDispCallTakeForm.AddToQueueButtonClick(Sender: TObject);
Var Latitude             : String;
    Longitude            : String;
begin
  ButtonPanel.SetFocus;
  appendtolog('');
  appendtolog('AddToQueueButtonClick');

  SetNewCallVariables;

  If AnyStrToInt(NewCall.DispCallTypeID) = 0 then begin
    MessageDlg('Must select call type to add call to queue.', mtError, [mbOK], 0);
    exit;
  end;

  if (mFireid = '52280') or (mFireid = '12345') then begin
    If AnyStrToInt(NewCall.DispSubTypeID) = 0 then begin
      MessageDlg('Must select call sub type to add call to queue.', mtError, [mbOK], 0);
      exit;
    end;
  end;

  If AnyStrToInt(NewCall.PropID) = 0 then begin
    If BooleanMessageDlg('You have not confirmed an address, dispatch to ' + NewCall.Address  + ' anyway?') then begin
      If GisEsri and (NewCall.Latitude = 0) then begin
        try
          If Not (alltrim(strnumfield.Text) = '') and Not (alltrim(StreetField.Text) = '') and Not (alltrim(CityField.Text) = '') then begin
            SetMapLatLong(strnumfield.Text, StreetField.Text, Cross1Field.Text, CityField.Text, StateField.Text, zipfield.text, Latitude,Longitude);
          end else if Not (alltrim(Cross1Field.Text) = '') and Not (alltrim(Cross2Field.Text) = '') and Not (alltrim(CityField.Text) = '') then
            SetMapLatLong('', Cross1Field.Text, Cross2Field.Text, CityField.Text, Statefield.Text, zipfield.text, Latitude, Longitude);
        except
        end;
        NewCall.Latitude  := AnyStrToFloat(Latitude);
        NewCall.Longitude := AnyStrToFloat(Longitude);
      end;
    end else
      exit;
  end;



  AddCallToQueue(GlobalAdoConnection,NewCall);


  If Not FormExists('DispForm') then begin
    DispForm := TDispForm.Create(Application);
  end;

  DispForm.Show;
  DispForm.DispCallGridClickProc(False);
  DispForm.UpDateGrids;

  DispForm.DispCallGrid.Row := DispForm.DispCallList.Count;
  DispForm.ChangeBevel('INCIDENT');
  
  NewCall.DispCallID := '0';
  close;
end;

procedure TDispCallTakeForm.DispatchButtonClick(Sender: TObject);
Var AFdid                : TFdid;
    FdidNum              : Integer;
    Latitude             : String;
    Longitude            : String;
    ZipCode              : String;
    FdidSet              : Boolean;
    NFIRSSet             : Boolean;
    EMSSet               : Boolean;
    i                    : Integer;
    mCheckState          : Boolean;
    mDispatchedApparatus : TDispatchedApparatus;
    mStart               : TDateTime;
begin
  ButtonPanel.SetFocus;
  appendtolog('');
  appendtolog('Dispatchbuttonclick');
  mStart := Now;
  If mfireid ='AMHER' then
    SetNewCallVariables;
  
  If not TFDFunc.CheckOkToDispatch(NewCall) then
    exit;

  If (mFireid = '52067') then begin
    If (SQLLookUp(NewCall.DispCallTypeID,'DISPCALLTYPEID','DISPCALLTYPE','MFDREQNARR') = 'Y') and (NarrField.Value = '') then begin
      MessageDlg('Must select call type to add call to queue.', mtError, [mbOK], 0);
      exit;
    end;
  end;

  If (mFireid = '52280') then begin
    If AnyStrToInt(NewCall.DispCallTypeID) = 0 then begin
      MessageDlg('Must select call type to add call to queue.', mtError, [mbOK], 0);
      exit;
    end;

    If AnyStrToInt(NewCall.DispSubTypeID) = 0 then begin
      MessageDlg('Must select call sub type to add call to queue.', mtError, [mbOK], 0);
      exit;
    end;
  end;

  If (AnyStrToInt(NewCall.DispCallTypeID) = 0)  then begin
    StatusPanel.Caption := 'You must select a call type . . . . . ';
    If DispCallPanel.Visible then begin
      If DispCallTypePanel.Visible then
        DispCallTypeIDField.SetFocus
    end else if CallTypePanel.Visible then
      CallTypePanel.SetFocus;
    exit;
  end;

  If MultiFdid and ( (FireID = '52077') or (FireID = '52114') or (FireID = '01920') or (FireID = '52009') or (FireID = '12345') or (FireID = '23145') or (FireID = '30021')  ) then begin
    FdidSet  := false;
    NFIRSSet := false;
    EMSSet := false;
    For FdidNum := 0 to FdidListx.Count-1 do begin
      AFdid := TFdid(FdidListx.Objects[FdidNum]);
      If TRadioButton(FindComponent('PRIME' + AFdid.Fdid + 'CHECK')).Checked then
        FdidSet := true;
      If TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked then
        NfirsSet := true;
      If TCheckBox(FindComponent('EMS' + AFdid.Fdid + 'CHECK')).Checked then
        EMSSet := true;
    end;
    If Not FdidSet then begin
      if  (FireID = '01920') then begin
        MessageDlg('You must select an agency!',mtWarning, [mbOK], 0);
        exit;
      end else If ((Not BooleanMessageDlg('You do not have a primary agency selected, dispatch anyway?'))) then begin
        exit;
      end;
    end;
    if (FireID = '30021') then begin
      if (Not NFirsSet) and (Not EMSSet) then
        If Not BooleanMessageDlg('You do not have a report selected, dispatch anyway?') then begin
          exit;
        end;
    end else begin
      If Not NFIRSSet then
        If Not BooleanMessageDlg('You do not have an NFIRS report selected, dispatch anyway?') then begin
          exit;
        end;
    end;
  end;

  SetNewCallVariables;
  freeAllStringListObjects(NewCall.AppArray);
  iCheckBoxColumn := Applist.ColumnNames.IndexOf('CHECKED');
  for i := AppList.FixedRows to AppList.RowCount-1 do begin
    AppList.GetCheckBoxState(iCheckBoxColumn,i,mCheckState);
    if mCheckState then begin
      mDispatchedApparatus := TDispatchedApparatus.Create(AppList.GetValue('DISPSTATID',i),AppList.GetValue('UNITNUM',i),AppList.GetValue('AGENCY',i),'');
      NewCall.AppArray.AddObject(AppList.GetValue('DISPSTATID',i),mDispatchedApparatus);
    end;
  end;

  If AnyStrToInt(NewCall.PropID) = 0 then begin
    If BooleanMessageDlg('You have not confirmed an address, dispatch to ' + NewCall.Address  + ' anyway?') then begin
      If GisEsri and (NewCall.Latitude = 0) then begin
        ZipCode := zipfield.text;

        if mfireID = '52280' then ZipCode := '';
        
        try
          If Not (alltrim(strnumfield.Text) = '') and Not (alltrim(StreetField.Text) = '') and Not (alltrim(CityField.Text) = '') then begin
            SetMapLatLong(strnumfield.Text, StreetField.Text, Cross1Field.Text, CityField.Text, StateField.Text, ZipCode, Latitude,Longitude);
          end else if Not (alltrim(Cross1Field.Text) = '') and Not (alltrim(Cross2Field.Text) = '') and Not (alltrim(CityField.Text) = '') then
            SetMapLatLong('', Cross1Field.Text, Cross2Field.Text, CityField.Text, Statefield.Text, ZipCode, Latitude, Longitude);
        except
        end;
        NewCall.Latitude  := AnyStrToFloat(Latitude);
        NewCall.Longitude := AnyStrToFloat(Longitude);
      end;
    end else
      exit;
  end;
  If MultiFdid then begin
    For FdidNum := 0 to FdidListx.Count-1 do begin
      AFdid := TFdid(FdidListx.Objects[FdidNum]);
      If TRadioButton(FindComponent('PRIME' + AFdid.Fdid + 'CHECK')).Checked then
        NewCall.FDID := AFdid.Fdid;
      If TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked then
        NewCall.ReportFormList.AddObject(AFdid.Fdid,TReportFormObject.Create(AFdid.Fdid,'NFIRS'));
      If TCheckBox(FindComponent('EMS' + AFdid.Fdid + 'CHECK')).Checked then
        NewCall.ReportFormList.AddObject(AFdid.Fdid,TReportFormObject.Create(AFdid.Fdid,'EMS'));

    end;
    if (NewCall.Fdid='') and not FDIDPanel.Visible then begin
      NewCall.Fdid := mFireID;
      NewCall.ReportFormList.AddObject(NewCall.Fdid,TReportFormObject.Create(NewCall.Fdid,'NFIRS'));
    end;

  end else begin
    NewCall.FDID := mFireID;
    If Pos('NFIRS',CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row))> 0 then
      NewCall.ReportFormList.AddObject(mFireID,TReportFormObject.Create(mFireID,'NFIRS'));
    If Pos('EMS',CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row))> 0 then
      NewCall.ReportFormList.AddObject(mFireID,TReportFormObject.Create(mFireID,'EMS'));
  end;
  If (NewCall.Fdid = '') then begin
    If not BooleanMessageDlg('No agency has been selected, dispatch to ' + NewCall.Address + ' anyway?') then
      exit;
  end;
  DispatchButton.enabled := False;
  If mFireid='60061' then begin
    If GetFormOfType(TDispForm)<>nil then
      GetFormOfType(TDispForm).BringToFront;
  end;
  If mFireid = '30046' then
    NewCall.DefaultPageGroup := True;
  If MFireid = 'EGELS' then
    NewCall.Zip := '';
                                                                      
  DispatchCall(GlobalAdoConnection,NewCall);

  If (NewCall.Latitude > 0) then begin
    If FormExists('GisSysForm') then begin
      DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, NewCall.Latitude,NewCall.Longitude,0,0);
      RefreshAVLEvents(GlobalAdoConnection,GisSysForm.GisSetVar, GisSysForm.Map,'','','');
    end else If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') and ProcessExists('REDNMXMAPBOX.EXE') then
      TDispForm.DisplayGoogleMap(NewCall, NewCall.DispCallID,'');
  end;

  if E911AutoRemove or UseDispQueue then
    RunSQL('UPDATE E911 SET DISPLAY = ' + AddExpr('N') + ', QUEUEDCALL = ' + AddExpr('T') + ' WHERE DISPCALLID = '+pkValue(NewCall.DispCallid));

  If Not FormExists('DispForm') then 
   DispForm := TDispForm.Create(Application);

  DispForm.Show;
  DispForm.DispCallGridClickProc(False);
  DispForm.UpDateGrids;

  DispForm.DispCallGrid.Row := DispForm.DispCallList.Count;
  DispForm.ChangeBevel('INCIDENT');
  RunSql('UPDATE DISPCALL SET SECONDSTODISPATCH = '+ formatfloat('##0.00',(Now-mStart)*60*60*24)+' WHERE DISPCALLID = '+pkValue(NewCall.DispCallid));
  AppendToLog('Done Dispatch Button Clicked - Time to Dispatch:'+formatfloat('##0.00',(Now-mStart)*60*60*24));

  NewCall.DispCallID := '0';
  close;
end;

procedure TDispCallTakeForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TDispCallTakeForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DispCallTakeProQAObject.Free;
  Action := cafree;
end;

procedure TDispCallTakeForm.PreplanButtonClick(Sender: TObject);
begin
  If Not FormExists('DispPropForm') then begin

    DispPropForm      := TDispPropForm.Create(Application,PropBrowse.GetValue('PROPID'),NewCall.DispCallid);
    If (Screen.MonitorCount > 1) then
      DispPropForm.left := DispPropForm.left + Screen.Monitors[1].left;
  end;
  DispPropForm.FPropID     := PropBrowse.GetValue('PROPID');
  DispPropForm.FDispCallID := NewCall.DispCallID;

  DispPropForm.Show;

  If (Screen.MonitorCount > 1) and Not (SqlLookUp(mFireID,'FDID','PROPSET','DISPPROPFOCUS') = 'Y') and not (MFireID ='15037') then
    DispCallTakeForm.BringtoFront;
end;

function TDispCallTakeForm.AddNewCall: string;
begin
  result := '-1';
  If AnyStrToInt(NewCall.DispCallID) = 0 then begin
    result := CommonAddNewCall(GlobalAdoconnection,NewCall);
    SetDispatchButton('DISP');
  end;
end;

procedure TDispCallTakeForm.AddCallClick(Sender: TObject);
begin
  AddNewCall;
end;


procedure TDispCallTakeForm.SetDispatchButton(Mode: String);
begin
  ActionType := Mode;
  If (Mode='QUEUE') or (Mode = 'DISP') or (Mode = 'NEXT') then begin
    DispCallSourceIDField.Enabled := true;
    CallPhoneField.Enabled        := true;
    CallNameField.Enabled         := true;
    CallAddrField.Enabled         := true;
    DispCallTypeIDField.Enabled   := true;
    DispSubTypeIDField.Enabled    := true;
    DispBoxIDField.Enabled        := true;
    NarrField.Enabled             := bNarrEnabled;

    CallTypeGrid.Visible          := true;
    SubTypeGrid.Visible           := true;
    SubTypeGrid.Enabled           := true;
    AppList.Visible               := true;
    DispCallTypeIDField.SQLExpr := 'SELECT * FROM DISPCALLTYPE WHERE HIDDEN = ' + AddExpr('N') + ' ORDER BY SORTORD, DESCR';
    LoadCallTypeGrid;
    DispatchButton.Onclick      := DispatchButtonClick;
    DispatchButton.Caption      := 'F8 &Dispatch Call';
    ProQAEMD.Enabled            := true;
    ProQAEFD.Enabled            := true;

    if (Mode = 'NEXT') then
      AddToQueueButton.Enabled  := False;

  end else if (Mode = 'QUEUE') then begin
    DispCallSourceIDField.Enabled := true;
    CallPhoneField.Enabled        := true;
    CallNameField.Enabled         := true;
    CallAddrField.Enabled         := true;

    DispCallTypeIDField.Enabled   := true;
    DispSubTypeIDField.Enabled    := true;
    DispBoxIDField.Enabled        := true;
    NarrField.Enabled             := bNarrEnabled;

    CallTypeGrid.Visible          := true;
    SubTypeGrid.Visible           := true;
    SubTypeGrid.Enabled           := true;
    AppList.Visible               := true;
    DispCallTypeIDField.SQLExpr := 'SELECT * FROM DISPCALLTYPE WHERE HIDDEN = ' + AddExpr('N') + ' ORDER BY SORTORD, DESCR';
    LoadCallTypeGrid;
    DispatchButton.Onclick      := DispatchButtonClick;
    DispatchButton.Caption      := 'F8 &Dispatch Call';
    AddToQueueButton.Caption    := 'F9 Edit &Queued Call';
    ProQAEMD.Enabled            := false;
    ProQAEFD.Enabled            := false;

  end else if Mode = 'CHANGE' then begin
    AddToQueueButton.Enabled    := False;
    DispCallTypeIDField.Enabled := false;
    DispSubTypeIDField.Enabled  := false;
    NarrField.Enabled           := false;
    DispatchButton.Onclick      := ChangeAddressClick;
    DispatchButton.Caption      := 'F8 Change &Address';

  end else if Mode = 'CALLTYPE' then begin
    AddToQueueButton.Enabled    := False;
    StateField.Enabled          := false;
    CityField.Enabled           := false;
    strnumfield.Enabled         := false;
    zipField.Enabled            := False;
    StreetField.Enabled         := false;
    RoomAptField.Enabled        := false;
    Cross1Field.Enabled         := false;
    Cross2Field.Enabled         := false;
    LastNameField.Enabled       := false;
    ClearButton.Enabled         := false;

    DispCallTypeIDField.Enabled := true;
    DispSubTypeIDField.Enabled  := true;
    CallTypeGrid.Enabled        := True;
    AppList.Visible             := true;

    CallTypeGrid.Visible        := true;
    SubTypeGrid.Visible         := true;
    SubTypeGrid.Enabled         := true;
    SetCallType('');    

    NarrField.Enabled           := bNarrEnabled; 

    DispCallTypeIDField.SQLExpr := 'SELECT * FROM DISPCALLTYPE WHERE HIDDEN = ' + AddExpr('N') + ' ORDER BY SORTORD, DESCR';
    DispatchButton.Onclick      := ChangeCallTypeClick;
    DispatchButton.Caption      := 'F8 Change C&all Type';
  end;

end;

procedure TDispCallTakeForm.ChangeAddressClick(Sender: TObject);
Var AddressVar    : String;
    Latitude      : String;
    Longitude     : String;
    LatLongUpdate : String;
    PropID        : String;
    PropIDUpdate  : String;
    PropTypeIDUpdate : String;
    ZipCode       : String;
begin
  Latitude         := '';
  Longitude        := '';
  LatLongUpdate    := '';
  PropIDUpdate     := '';
  ZipCode          := '';
  PropTypeIDUpdate := '';
  AddressVar       := GetAddress(strnumfield.Text, StreetField.Text, Cross1Field.Text, Cross2Field.Text, RoomAptField.Text,LastNameField.Text);

  If (AnyStrToInt(PropBrowse.GetValue('PROPID')) > 0) then begin
    PropIDUpdate   := 'PROPID = ' + AddExpr(NewCall.PropID) + ', ';
    if NewCall.Latitude > 0 then begin
      Latitude  := FloatToStr(NewCall.Latitude);
      Longitude := FloatToStr(NewCall.Longitude);

      LatLongUpdate := 'LATITUDE = ' + AddExpr(Latitude) + ', ' +
                     'LONGITUDE = ' + AddExpr(Longitude) + ', ';
    end;
  end;

  If (AnyStrToInt(NewCall.PropTypeID) > 0) then begin
     PropTypeIDUpdate   := 'PROPTYPEID = ' + AddExpr(NewCall.PropTypeID) + ', ';
  end;

  if Latitude = '' then begin
    try
      ZipCode := zipfield.text;

      if mfireid = '52280' then ZipCode := '';
      
      If Not (alltrim(strnumfield.Text) = '') and Not (alltrim(StreetField.Text) = '') and Not (alltrim(CityField.Text) = '') then begin
        SetMapLatLong(strnumfield.Text, StreetField.Text, Cross1Field.Text, CityField.Text, StateField.Text, ZipCode, Latitude,Longitude);
      end else if Not (alltrim(Cross1Field.Text) = '') and Not (alltrim(Cross2Field.Text) = '') and Not (alltrim(CityField.Text) = '') then
        SetMapLatLong('', Cross1Field.Text, Cross2Field.Text, CityField.Text, Statefield.Text, ZipCode, Latitude, Longitude);
    except
    end;

    if Latitude <> '' then
      LatLongUpdate := 'LATITUDE = ' + AddExpr(Latitude) + ', ' +
                       'LONGITUDE = ' + AddExpr(Longitude) + ', ';
  end;

  RunSQL('UPDATE DISPCALL SET ROOMAPT  = ' + AddExpr(RoomAptField.Text) + ', ' +
                             'STRNUM   = ' + AddExpr(strnumfield.Text) + ', ' +
                             'STREET   = ' + AddExpr(StreetField.Text) + ', ' +
                             'SITENAME = ' + AddExpr(LastNameField.Text) + ', ' +
                             'CROSS1   = ' + AddExpr(Cross1Field.Text) + ', ' +
                             'CROSS2   = ' + AddExpr(Cross2Field.Text) + ', ' +
                             'ZIP      = ' + AddExpr(zipfield.text) + ', ' +
                             LatLongUpdate +
                             PropIdUpdate +
                             PropTypeIDUpdate + 
                             'ADDRESS  = ' + AddExpr(AddressVar) + ' WHERE DISPCALLID = ' + NewCall.DispCallID);

  RunSQL('UPDATE DISPSTAT SET ADDRESS  = ' + AddExpr(AddressVar) + ' WHERE DISPCALLID = ' + NewCall.DispCallID);
  AddtoHistory(GlobalAdoConnection,'', '', 'Changed Address to ' + AddressVar, '0', NewCall.DispCallId, TimeChangeAddrID, '0', NewCall.AlarmNum, Now,NewCall);
  UpdateIncidentAddressForDispCallID(globaladoconnection,anystrtoint(NewCall.DispCallId));
  close;
end;



procedure TDispCallTakeForm.ChangeCallTypeClick(Sender: TObject);
Var DispCallTypeVar : String;
begin
  If (AnyStrToInt(NewCall.DispCallTypeID) > 0) then begin
    RunSQL('UPDATE DISPCALL SET DISPCALLTYPEID = ' + NewCall.DispCallTypeID + ' WHERE DISPCALLID = ' + NewCall.DispCallID);
    DispCallTypeVar := GetDispCallTypeObject(NewCall.DispCallTypeID).Descr;
  end;


  If (AnyStrToInt(NewCall.DispSubTypeID) > 0) then begin
    RunSQL('UPDATE DISPCALL SET DISPSUBTYPEID = ' + NewCall.DispSubTypeID + ' WHERE DISPCALLID = ' + NewCall.DispCallID);
    DispCallTypeVar := DispCallTypeVar + CRLF + GetDispSubTypeObject(NewCall.DispSubTypeID).Descr;
  end;

  If Not (alltrim(NarrField.Text) = '') then begin
    RunSQL('UPDATE DISPCALL SET NARR = ' + AddExpr(NarrField.Text) + ' WHERE DISPCALLID = ' + NewCall.DispCallID);
    DispCallTypeVar := DispCallTypeVar + CRLF + NarrField.Text
  end;

  AddtoHistory(GlobalAdoConnection,'', '', 'New Call Type: ' + DispCallTypeVar , '0', NewCall.DispCallId, TimeChangeCallID, '0', NewCall.AlarmNum, Now,NewCall);
  close;
end;


procedure TDispCallTakeForm.FormCreate(Sender: TObject);
  procedure Setpanel(mPanel: TAdvPanel; mBool: Boolean);
  begin
    mPanel.CanSize                := mBool;
    mPanel.CanMove                := mBool;
    mPanel.Caption.CloseButton    := mBool;
    mPanel.Caption.MinMaxButton   := mBool;
  end;
begin
  if mfireid = '01920' then
    StrNumExactCheck.Checked := False;
  if mFireid='07030' then
    bNarrEnabled := False   // transferred from proqa.
  else
    bNarrEnabled := True;

  narrfield.enabled := bNarrEnabled;
  if not bNarrEnabled then
    narrfield.readonly := True;

  GlobalProQAState        := '';
  bPromptedToDispatchCall := False;
  ProQATimer.Enabled := (CheckModule('PROQA') or CheckModule('PROQAF'));
  DispCallTakeProQAObject := TProQAObject.Create(GlobalAdoConnection);
  DispCallTakeProQAObject.InitializeToNull;
  iAddrCount := 0;
  legacypanel.Caption := '';
  proQAPageControl.Visible := false;

  if UseParamount then
    ParmountPanel.Parent := ProQAPanel
  else
    legacypanel.Parent := ProQAPanel;

  urgentmessagepanel.Visible := False;
  urgentmessagepanel.Caption := '';
  urgentmessageLabel.Caption := '';
  urgenticon.left            := 0;
  urgenticon.top             := 0;
  urgenticon.width           := 32;
  urgenticon.height          := 32;
  GotoNextControlOnReturn    := True;
  DispatchButton.Visible     := CheckModule('DISP');
  Dispatchbutton.Enabled     := FAllowDispatch;
  GisButton.Visible          := CheckModule('GIS');
  ProQAEMD.Visible           := CheckModule('PROQA');
  ProQAEFD.Visible           := CheckModule('PROQAF');
  AddToQueueButton.Visible   := CommonDispVar.UseDispQueue;
  SOPButton.Visible          := CheckModule('DISP') and ((mfireid='12345') or (mfireid='52280'));
  If GlobalAdoConnection.TableType = OracleTableType then begin
    CityField.PictureMask     := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    StreetField.PictureMask   := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    Cross1Field.PictureMask   := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    Cross2Field.PictureMask   := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    LastNameField.PictureMask := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    OwnerName.PictureMask     := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
    Custom1Field.PictureMask  := '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
  end;

  If AlpineLogin then begin
    SetupButton.Visible                := true;
    SaveSettingButton.Visible          := true;
    SearchPanel.CanSize                := true;
    SearchPanel.CanMove                := true;
    SearchBottom.Visible               := true;

    ButtonBottom.Visible               := true;
    SetPanel(ButtonPanel,True);
    SetPanel(CallerPanel,True);
    SetPanel(FdidPanel,True);

    Setpanel(DispCallPanel,True);
    DispCallBottom.Visible             := true;

    SetPanel(CallTypepanel,True);
    CallTypeBottom.Visible             := true;

    SetPanel(SubTypepanel,True);
    SubTypeBottom.Visible              := true;

    Setpanel(PropPanel,True);
    PropBottom.Visible                 := true;

    SetPanel(AppListpanel,True);
    applistbottom.Visible              := True;

    SetPanel(ProQAPanel,True);
    ProQAPanel.Visible                 := true;
    ProQABottom.Visible                := true;

    SetPanel(DispWarnPanel,True);

    BorderStyle                        := bsSizeable;
  end else begin
    SetupButton.Visible                := false;
    SaveSettingButton.Visible          := false;

    SearchPanel.CanSize                := false;
    SearchPanel.CanMove                := false;
    SearchBottom.Visible               := false;

    ButtonBottom.Visible               := false;
    Setpanel(Buttonpanel,False);
    Setpanel(Callerpanel,False);
    SetPanel(FdidPanel,False);

    SetPanel(DispCallPanel,False);
    DispCallBottom.Visible             := false;

    SetPanel(CallTypepanel,False);
    CallTypeBottom.Visible             := false;

    SetPanel(Subtypepanel,False);
    SubTypeBottom.Visible              := false;

    SetPanel(PropPanel,False);
    PropBottom.Visible                 := false;

    SetPanel(AppListpanel,False);
    AppListBottom.Visible              := False;

    SetPanel(ProQAPanel,False);

    ProQAPanel.Visible                 := false;
    ProQABottom.Visible                := false;

    Setpanel(DispWarnPanel,False);

    BorderStyle                        := bsdialog;
  end;

  NewCall                     := TDispCall.Create;
//
  If not MultiFdid then
    NewCall.FDID := mFireID;
  If MultiFdid then begin
    LoadFdid;
    FdidPanel.Visible    := true;
  end;
  AppListpanel.Visible  := RunCard;
  PhoneField.Text       := '';
  CallPhoneField.Text   := '';

  phonefieldsToSearch := TStringList.Create;
  phoneFieldsToSearch.Add('PHONE');
  try
    Open_Query('PROPPHONEFIELD',false,'SELECT FIELDNAME FROM PROPPHONEFIELD');
    while not A('PROPPHONEFIELD').Eof do begin
      if phonefieldsToSearch.IndexOf(tdbfield('PROPPHONEFIELD','FIELDNAME'))=-1 then
        phonefieldsToSearch.Add(tdbfield('PROPPHONEFIELD','FIELDNAME'));
      A('PROPPHONEFIELD').Skip(1);
    end;
  finally
    CloseApollo('PROPPHONEFIELD');
  end;

  if mfireid='AMHER' then begin
    PropCheck.state := cbUnchecked;
    Custom1Check.state := cbUnChecked;
    PropCheck.State := cbUnChecked;
  end;

end;

procedure TDispCallTakeForm.FormDestroy(Sender: TObject);
begin
  SetFormPositionInDB(DispCallTakeForm);
end;

procedure TDispCallTakeForm.LoadCallTypeGrid;
begin
  ClassLoadCallTypeGrid(CallTypeGrid,'');
  LoadSubTypeGrid;
end;

class procedure TDispCallTakeForm.ClassLoadCallTypeGrid(CallTypeGrid: TAlpineTMSStringGrid; FdidVar : String);
begin
  Open_Query('DISPCALLTYPE',False,'SELECT FDID, RESPONSE, HIDDEN, DISPCALLTYPEID, CODE, DESCR, TYPE, RESPCALLTYPEID FROM DISPCALLTYPE WHERE HIDDEN = ' + AddExpr('N') + ' ORDER BY SORTORD, CODE');
  CallTypeGrid.Clear;
  CallTypeGrid.ClearColumns;
  CallTypeGrid.ColCount       := 0;
  CallTypeGrid.RowCount       := 0;
  CallTypeGrid.FixedRowAlways := true;
  CallTypeGrid.RowCount       := CallTypeGrid.FixedRows;


  CallTypeGrid.SetColumn('DISPCALLTYPEID','DISPCALLTYPEID',1);
  CallTypeGrid.SetColumn('CODE','Type',70);
  CallTypeGrid.SetColumn('DESCR','Description',300);
  CallTypeGrid.SetColumn('TYPE','TYPE',1);
  CallTypeGrid.SetColumn('FDID','FDID',1);
  CallTypeGrid.SetColumn('RESPCODE','RESPCODE',1);

  While Not A('DISPCALLTYPE').Eof do begin
    If tdbField('DISPCALLTYPE','HIDDEN') = 'N' then begin
      CallTypeGrid.SetValue('DISPCALLTYPEID',GetField('DISPCALLTYPE','DISPCALLTYPEID').AsString);
      CallTypeGrid.SetValue('CODE',tdbfield('DISPCALLTYPE','CODE'));
      CallTypeGrid.SetValue('DESCR',tdbField('DISPCALLTYPE','DESCR'));
      CallTypeGrid.SetValue('TYPE',tdbfield('DISPCALLTYPE','TYPE'));
      CallTypeGrid.SetValue('FDID',tdbfield('DISPCALLTYPE','FDID'));
      CallTypeGrid.SetValue('RESPCODE',GetField('DISPCALLTYPE','RESPCALLTYPEID').AsString);
    end;
    A('DISPCALLTYPE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
end;

procedure TDispCallTakeForm.GISButtonClick(Sender: TObject);
var iy: Integer;
    ix: Integer;
begin
  If NewCall.Latitude > 0 then begin
    If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
      TDispForm.DisplayGoogleMap(NewCall, NewCall.DispCallID,'')
    end else begin
      If Not FormExists('GisSysForm') then
        GisSysForm :=TGisSysform.Create(Application);
      GisSysForm.Show;
      If NewCall.DispCallID = '0' then
        DisplayProperty(GisSysForm.GisSetVar, GisSysForm.Map,NewCall)
      else
        DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, NewCall.Latitude,NewCall.Longitude,0,0);
      RefreshAVLEvents(globaladoconnection,GisSysForm.GisSetVar, GisSysForm.Map,'','','');
    end;
    DispCallTakeForm.BringtoFront;
  end else
    ShowMessage('Address does not have latitude and longitude numbers');
end;


procedure TDispCallTakeForm.PropBrowseDblClick(Sender: TObject);
Var Latitude         : String;
    Longitude        : String;
    IncStat          : String;
    iRangePropid     : Integer;
    mRoomApt         : String;
    mAdditionalWhere : String;
    ZipCode          : String;
    EXECommand       : String;
begin
  appendtoLog('Start Select Address');

  try
    //Reset Coordinates
    NewCall.Latitude     := 0;
    NewCall.Longitude    := 0;

    NewCall.PropID      := PropBrowse.GetValue('PROPID');
    Open_Query('PROP',false,'SELECT DISPLOCID, RANGEPROPID, ZIP,ROOMAPT, WARNDATE, WARNDISP, WARNNARR, PHONE, FDID, CROSS1, CROSS2, BOXNUM,PLASTNAME, PROPTYPEID, LATITUDE, LONGITUDE, CITY, STATE, ZIP, DISPBOXID FROM PROP WHERE PROPID = ' + pkValue(NewCall.PropID));
    CityField.Text       := GetField('PROP','CITY').AsString;
    If tdbField('PROP','STATE')<>'' then
      StateField.Text    := GetField('PROP','STATE').AsString;
    If GetField('PROP','LATITUDE').AsFloat <> 0 then begin
      NewCall.Latitude     := GetField('PROP','LATITUDE').AsFloat;
      NewCall.Longitude    := GetField('PROP','LONGITUDE').AsFloat;
    end;
    LastNameField.Text   := GetField('PROP','PLASTNAME').AsString;
    NewCall.PropTypeID   := GetField('PROP','PROPTYPEID').AsString;
    NewCall.DispLocID    := GetField('PROP','DISPLOCID').AsString;
    NewCall.Zip          := tdbField('PROP','ZIP');

    If tdbfield('PROP','FDID') <> '' then
      NewCall.FDID         := GetField('PROP','FDID').AsString;
    NewCall.City         := GetField('PROP','CITY').AsString;
    NewCall.State        := GetField('PROP','STATE').AsString;
    NewCall.Zip          := GetField('PROP','ZIP').AsString;
    NewCall.WarnDate     := GetField('PROP','WARNDATE').AsDateTime;
    NewCall.WarnNarr     := GetField('PROP','WARNNARR').AsString;
    SetWarnDisp(NewCall,A('PROP'));

    NewCall.DispBoxID    := GetField('PROP','DISPBOXID').AsString;

    If not (GetField('PROP','ZIP').AsString = '') then
      zipfield.Value       := GetField('PROP','ZIP').AsString;

    If mFireID='03800' then begin
      if BoxNumField.Text='' then
        BoxNumField.Text     := GetField('PROP','BOXNUM').AsString;
    end else
      BoxNumField.Text     := GetField('PROP','BOXNUM').AsString;

    NewCall.BoxNum       := BoxNumField.Text;

    If (alltrim(substr(CallPhoneField.Text,1,3)) = '') then
      CallPhoneField.Text  := tdbfield('PROP','PHONE');

    If NewCall.PropTypeID = PropInt then begin
      Cross1Field.Text    := PropBrowse.GetValue('STREET');
      Cross2Field.Text    := PropBrowse.GetValue('CROSS1');
      NewCall.Street      := PropBrowse.GetValue('STREET');
      NewCall.Cross1      := PropBrowse.GetValue('CROSS1');
      NewCall.Cross2      := dbfield('PROP','CROSS2');
      NewCall.Address     := alltrim(PropBrowse.GetValue('STREET')) + ' / ' + alltrim(PropBrowse.GetValue('CROSS1'));
    end else if NewCall.PropTypeID = PropRange then begin
      StreetField.Text    := PropBrowse.GetValue('STREET');
      NewCall.Address     := alltrim(strnumfield.Text) + ' ' + PropBrowse.GetValue('STREET');
      NewCall.StrNum      := strnumfield.Text;
      NewCall.Street      := PropBrowse.GetValue('STREET');
      NewCall.Cross1      := dbfield('PROP','CROSS1');
      NewCall.Cross2      := dbfield('PROP','CROSS2');
      Cross1Field.Text    := dbfield('PROP','CROSS1');
      Cross2Field.Text    := dbfield('PROP','CROSS2');
    end else begin
      strnumfield.Text    := PropBrowse.GetValue('STRNUM');
      StreetField.Text    := PropBrowse.GetValue('STREET');
      if ((mFireid='20004') or (mFireid='30064') or (mFireid='AMHER')) and (RoomAptField.Text<>'') then
        mRoomApt := RoomAptField.Text   // mjs this is done because this data comes over from the 911 System.f
      else
        mRoomApt := dbfield('PROP','ROOMAPT');

      RoomAptField.Text   := mRoomApt;
      NewCall.RoomApt     := mRoomApt;
      NewCall.zip         := dbfield('PROP','ZIP');
      NewCall.StrNum      := PropBrowse.GetValue('STRNUM');
      NewCall.Street      := PropBrowse.GetValue('STREET');

      iRangePropid := GetField('PROP','RANGEPROPID').AsInteger;
      If FlyRange and (iRangePropid = 0) then
        iRangePropid := anystrtoint(GetRangePropID(strnumfield.Text,StreetField.Text,NewCall.City));
      NewCall.Cross1      := dbfield('PROP','CROSS1');
      NewCall.Cross2      := dbfield('PROP','CROSS2');
      If iRangePropid > 0 then begin
        SetRangeValues(GlobalAdoConnection,NewCall,inttostr(iRangePropID));
        Cross1Field.Text     := NewCall.Cross1;
        Cross2Field.Text     := NewCall.Cross2;
      end else begin
        Cross1Field.Text    := dbfield('PROP','CROSS1');
        Cross2Field.Text    := dbfield('PROP','CROSS2');
      end;

      NewCall.Address     := alltrim(PropBrowse.GetValue('STRNUM')) + ' ' + PropBrowse.GetValue('STREET') + IIf(alltrim(NewCall.RoomApt) = '','',' #' + NewCall.RoomApt) ;
    end;
  except
    on e:Exception do begin
      appendtolog('Exception in TDispCallTakeForm.PropBrowseDblClick.  Error:'+e.message);
    end;
  end;  
  CloseApollo('PROP');

  TDispatchObject.SelectAddressButton(NewCall);

  If (NarrField.Text = '') and (NewCall.Narr <> '') then
    NarrField.Text := NewCall.Narr;

  if mFireID = '73014' then
    NarrField.Text := NewCall.Narr;

  If NewCall.WarnDisp = 'Y' then begin
    if NewCall.WarnDate = 0 then
      DispWarnPanel.Caption.Text := 'No Entry Date for Warning'
    else begin
      DispWarnPanel.Caption.Text := 'Warning entered on ' + FormatDateTime('MM/DD/YYYY',NewCall.WarnDate);
      If (mFireID = '52008') then begin
        DispWarnBoxForm := TDispWarnBoxForm.Create(application);
        DispWarnBoxForm.WarnDateField.Caption := 'Warning entered on ' + FormatDateTime('MM/DD/YYYY',NewCall.WarnDate);
        DispWarnBoxForm.DispWarnField.Value  := NewCall.WarnNarr;
        DispWarnBoxForm.Show;
      end;
    end;
    WarnNarrField.Text         := NewCall.WarnNarr;
    if mFireID = '07140' then begin
      WarnBlinkLabel.BlinkColor := clRed;
      DispWarnPanel.Caption.Color    := clRed;
    end;
    WarnBlinkLabel.Visible     := true;
  end else begin
    DispWarnPanel.Caption.Text := 'No warnings';;
    WarnNarrField.Text         := '';
    WarnBlinkLabel.Visible     := false;
  end;

  If GisEsri and (NewCall.Latitude = 0) then begin
    ZipCode := ZipField.Text;
    If mfireID = '52280' then
      ZipCode := '';
    try
      If NewCall.PropTypeID = PropInt then
        SetMapLatLong('', Cross1Field.Text, Cross2Field.Text, CityField.Text, Statefield.Text, ZipCode, Latitude, Longitude)
      else
        SetMapLatLong(StrNumField.Text, StreetField.Text, Cross1Field.Text, CityField.Text, StateField.Text, ZipCode, Latitude, Longitude);
    except
    end;
    NewCall.Latitude  := AnyStrToFloat(Latitude);
    NewCall.Longitude := AnyStrToFloat(Longitude);
  end else if GisESRI and (NewCall.PropTypeID = PropRange) then begin
    SetMapLatLong(StrNumField.Text, StreetField.Text, Cross1Field.Text, CityField.Text, StateField.Text, ZipCode, Latitude, Longitude);
    If AnyStrToFloat(Latitude) <> 0 then begin
      NewCall.Latitude  := AnyStrToFloat(Latitude);
      NewCall.Longitude := AnyStrToFloat(Longitude);
    end;
  end;

  If NewCall.DispCallID > '0' then begin
    If not (DispatchButton.Caption = 'F8 Change &Address') then begin
      IncStat := SqlLookUp(NewCall.DispCallID,'DISPCALLID','DISPCALL','INCSTAT');
      If IncStat = 'OPEN' then
        CommonMapFields(GlobalAdoConnection,NewCall,'OPEN')
      else if IncStat = 'QUEUED' then
        CommonMapFields(GlobalAdoConnection,NewCall,'QUEUED')
      else
        CommonMapFields(GlobalAdoConnection,NewCall,'NEW');
    end;
    If MultiFdid and Not UpdateFDIDOff then
      UpdateFdid(NewCall);
  end;

  If (AnyStrToInt(NewCall.DispCallID) > 0) or (AnyStrToInt(NewCall.PropID) > 0) then begin
    If FormExists('GisSysForm') then begin
      DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, NewCall.Latitude,NewCall.Longitude,0,0);
      RefreshAVLEvents(GlobalAdoConnection,GisSysForm.GisSetVar, GisSysForm.Map,'','','');
    end else if FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
      EXECommand := ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
      If ProcessExists('REDNMXMAPBOX.EXE') then begin
        Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
        If A('GISD10COMPUTER').RecordsExist then
          GetTable('GISD10COMPUTER').Edit
        else
          GetTable('GISD10COMPUTER').Append;
        If (AnyStrToInt(NewCall.DispCallID) > 0) then
          GetField('GISD10COMPUTER','DISPCALLID').AsString   := NewCall.DispCallID;
        If (AnyStrToInt(NewCall.PropID) > 0) then
          GetField('GISD10COMPUTER','PROPID').AsString       := NewCall.PropID;
        GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
        GetTable('GISD10COMPUTER').Post;
        CloseApollo('GISD10COMPUTER');
      end;
    end;
  end;

  If FormExists('DispPropForm') or Not CheckModule('DISP') or (FireID = '28019') or (FireID='30033') then
    PreplanButtonClick(self);
  StatusPanel.Caption := ' Location Selected:  ' + NewCall.Address;
  GisButton.Enabled   := (NewCall.Latitude > 0);

  if (mFireid='12345') or (mfireid='AMHER') then
    mAdditionalWhere := ' AND (DATETIMEIN IS NULL OR DATETIMEIN > '+formatdatetimeForSql(Now)+')'
  else
    mAdditionalWhere := '';

  Open_Query('VWPROPSTAT',false,'SELECT DATETIMEOUT, DESCR FROM VWPROPSTAT WHERE PROPID = ' + pkValue(NewCall.PropID) + ' AND (OPENEVENT = ' + AddExpr('Y')+mAdditionalWhere+')');
  If A('VWPROPSTAT').RecordsExist then begin
    PropStatField.Caption := tdbfield('VWPROPSTAT','DESCR') + ' as of ' + FormatDateTime('MM/DD/YYYY HH:NN',GetField('VWPROPSTAT','DATETIMEOUT').AsDateTime);
    PropStatField.Visible := true;
  end else begin
    PropStatField.Visible := false;
  end;
  CloseApollo('VWPROPSTAT');
  DispBoxIDField.Value := NewCall.DispBoxID;
  ShowApp;
  Application.ProcessMessages;
  appendtoLog('End Select Address');
end;

procedure TDispCallTakeForm.proqaefdClick(Sender: TObject);
begin
  RunSql('UPDATE DISPCALL SET PROQAFIRE = '+AddExpr('Y')+', PROQASTATE = NULL WHERE DISPCALLID = '+pkValue(NewCall.DispCallID));
  DoProQA(True);
end;

procedure TDispCallTakeForm.DispSubTypeIDFieldEnter(Sender: TObject);
begin
  DispSubTypeIDField.SQLExpr := 'SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = ' + pkValue(DispCallTypeIDField.Value) + ' AND (HIDDEN <> ' + AddExpr('Y') + ' OR HIDDEN IS NULL) ' + ' ORDER BY SORTORD';
end;

procedure TDispCallTakeForm.SetGuilfordDispBoxid;
var idispboxid: Integer;
begin
  if anystrtoint(DispBoxIDField.Value)<=0 then begin
    idispboxid := anystrtoint(sqllookup(GlobalAdoConnection,'DEFAULT','code','dispbox','dispboxid'));
    if idispboxid > 0 then
      DispBoxIDField.Value := inttostr(idispboxid)
    else
      appendtolog('Could not set DEFAULT DISPBOXID...  make sure DEFAULT exists in DISPBOX table');
  end;
end;

procedure TDispCallTakeForm.ShowApp;
Var DispCallTypeTable  : TApolloData;
    msql               : String;
    DispcallTypeRespid : Integer;
begin
  If AppListpanel.Visible or (mFireid='06090') then begin
    If mFireid = '06090' then
      SetGuilfordDispBoxid;
    NewCall.DispBoxID  := DispBoxIDField.Value;
    DispcallTypeRespid := anystrtoint(NewCall.DispCallTypeID);
    If (AnyStrToInt(NewCall.DispBoxID) > 0) and  (AnyStrToInt(NewCall.DispCallTypeID) > 0) then begin
      If (mFireid = '01922') or (mFireid = '12345') then begin
        If RunCard then
          DispcallTypeRespid := CollAllApp(GlobalAdoConnection,NewCall,ActionType = 'CALLTYPE');
      end else
        DispcallTypeRespid := CollAllApp(GlobalAdoConnection,NewCall,ActionType = 'CALLTYPE');
      LoadAppList(NewCall);
    end;

    mSql := 'SELECT DISPCALLTYPE.DESCR DESCR,DISPCALLTYPERESP.CODE DISPCALLTYPERESPCODE, DISPCALLTYPERESP.VERBALDESCR, ' +
            'DISPCALLTYPERESP.DESCR DISPCALLTYPERESPDESCR ' +
            'FROM DISPCALLTYPE '+
            'LEFT OUTER JOIN DISPCALLTYPE DISPCALLTYPERESP ON (DISPCALLTYPE.RESPCALLTYPEID = DISPCALLTYPERESP.DISPCALLTYPEID) ' +
            'WHERE DISPCALLTYPE.DISPCALLTYPEID = ' + pkvalue(NewCall.DispCallTypeID);
    AppendToLog(msql);
    DispCallTypeTable := Open_Query(msql);
    If mFireid = '07030' then
      AppListPanel.Caption.Text := 'Response->' + SQLLookUp(inttostr(DispCallTypeRespID),'DISPCALLTYPEID','DISPCALLTYPE','CODE')
    else
      AppListPanel.Caption.Text := 'Response->' + tdbfield(DispCallTypeTable,'DISPCALLTYPERESPCODE') + '-' + tdbfield(DispCallTypeTable,'VERBALDESCR') + '->' + tdbfield(DispCallTypeTable,'DISPCALLTYPERESPDESCR');
    DispCallTypeTable.Free;
  end;
  If MultiFdid and Not UpdateFDIDOff then
    UpdateFdid(NewCall);
end;

procedure TDispCallTakeForm.SOPButtonClick(Sender: TObject);
var DispCallTypeID : String;
    DispSubTypeID  : String;
    DispBoxID      : String;
begin
   DispCallTypeID   := CallTypeGrid.GetValue('DISPCALLTYPEID',CallTypeGrid.Row);
   DispSubTypeID    := SubTypeGrid.GetValue('DISPSUBTYPEID',SubTypeGrid.Row);
   DispBoxID        := NewCall.DispBoxID;

   if (DispCallTypeID = '') and (DispSubTypeID = '') and (DispBoxID = '') then begin
     ShowMessage('Select address or call type to view SOPs');
     exit;
   end;

   If Not FormExists('DispSOPForm') then
      DispSOPForm := TDispSOPForm.Create(Application);
   DispSOPForm.DispCallID     := '';

   DispSOPForm.DispCallTypeId := DispCallTypeID;
   DispSOPForm.DispSubTypeID  := DispSubTypeID;
   DispSOPForm.DispBoxID      := DispBoxID;

   DispSOPForm.Show;
end;

procedure TDispCallTakeForm.LoadAppList(ADispCall : TDispCall);
begin
  ClassLoadAppList(AppList,ADispCall);
end;

class procedure TDispCallTakeForm.ClassResetAppList(AppList: TAlpineTMSStringGrid);
begin
  AppList.Clear;
  AppList.ColCount := 0;
  AppList.RowCount := 0;
  AppList.ClearColumns;

  AppList.FixedRowAlways := true;
  AppList.RowCount       := AppList.FixedRows;
  AppList.SetColumn('DISPSTATID','DISPSTATID',000);
  AppList.SetColumn('CHECKED',   '',          020);
  AppList.SetColumn('DISPAPP',   'Type',      060);
  AppList.SetColumn('UNITNUM',   'Apparatus', 060);
  AppList.SetColumn('DISPLOC',   'Location',  120);
  AppList.SetColumn('AGENCY',    'Agency',    500);
  AppList.ControlLook.NoDisabledCheckRadioLook := true;
end;

class procedure TDispCallTakeForm.ClassLoadAppList(AppList: TAlpineTMSStringGrid;ADispCall : TDispCall);
Var RowCnt              : Integer;
    I                   : Integer;
    FCheckBoxColumn     : Integer;
    LocalAppList        : TStringList;
    bShowApparatusAlreadyOnCall: Boolean;
begin
  LocalAppList            := TStringList.Create;

  TDispCallTakeForm.ClassResetAppList(AppList);
  Open_Query('SETAPPLIST',False,'SELECT * FROM DISPSTAT ORDER BY SORTORD');
  FCheckBoxColumn := Applist.ColumnNames.IndexOf('CHECKED');
  For I := 0 to ADispCall.AppArray.Count - 1 do
    LocalAppList.Add(TDispatchedApparatus(ADispCall.AppArray.Objects[i]).DispStatID);
  while not A('SETAPPLIST').eof do begin
    if LocalAppList.IndexOf(GetField('SETAPPLIST','DISPSTATID').AsString)= -1 then begin
      if (mFireID='12345') or (mFireid='09007') then   // mjs - this probably could hold for all depts.  Not sure why it should include apparatus already on call.
        bShowApparatusAlreadyOnCall := False
      else
        bShowApparatusAlreadyOnCall := (GetField('SETAPPLIST','DISPCALLID').AsString=ADispCall.DispCallID);

      if (InServiceList1.IndexOf(GetField('SETAPPLIST','DISPSTATCODEID').AsString)<>-1) or bShowApparatusAlreadyOnCall then begin
        LocalAppList.Add(tdbField('SETAPPLIST','DISPSTATID'));
      end;
    end;
    A('SETAPPLIST').Skip(1);
  end;

  for i := 0 to LocalAppList.Count -1 do begin

    A('SETAPPLIST').ExactQueryLocate('DISPSTATID',LocalAppList[i]);
    AppList.SetValue('DISPSTATID',LocalAppList[i]);

    AppList.AddCheckBox(FCheckBoxColumn,AppList.RowCount-1,(ADispCall.AppArray.IndexOf(LocalAppList[i])<>-1),False);


    If GetDispAppObject(GetField('SETAPPLIST','DISPAPPID').AsString)<>nil then
      AppList.SetValue('DISPAPP',GetDispAppObject(GetField('SETAPPLIST','DISPAPPID').AsString).Descr)
    else
      AppList.SetValue('DISPAPP','');
    AppList.SetValue('UNITNUM',tdbField('SETAPPLIST','UNITNUM'));

    If GetDispLocObject(GetField('SETAPPLIST','DISPLOCID').AsString)<> nil then
      AppList.SetValue('DISPLOC',GetDispLocObject(GetField('SETAPPLIST','DISPLOCID').AsString).Descr)
    else
      AppList.SetValue('DISPLOC','');

    AppList.SetValue('AGENCY',GetField('SETAPPLIST','FDID').AsString);
  end;

  LocalAppList.Free;
  CloseApollo('SETAPPLIST');
end;


procedure TDispCallTakeForm.LoadFdid;
Var RowCnt     : Integer;
    FDIDCheck  : TRadioButton;
    NFIRSCheck : TCheckBox;
    EMSCheck   : TCheckBox;
    RowShape   : TShape;
    FdidNum    : Integer;
    AFdid      : TFdid;
begin
  RowCnt := 0;
  for FdidNum := 0 to FdidListx.Count-1 do begin
    AFdid               := TFdid(FdidListx.Objects[FdidNum]);

    RowShape            := TShape.Create(self);
    RowShape.Parent     := FdidScrollBar;
    RowShape.Top        := RowCnt * 17;
    RowShape.Height     := 19;
    RowShape.Left       := 1;
    RowShape.Width      := 228;
    
    FdidCheck           := TRadioButton.Create(self);
    FdidCheck.Parent    := FdidScrollBar;
    FdidCheck.Caption   := IIf(AFdid.Abbreviate = '',AFdid.Fdid,AFdid.Abbreviate);
    FdidCheck.Left      := 5;
    FdidCheck.Top       := RowCnt * 17;
    FdidCheck.Width     := 60;
    FdidCheck.Name      := 'PRIME' + AFdid.Fdid + 'CHECK';
    FdidCheck.Enabled   := true;

    if mFireID = '23145' then
        FdidCheck.Checked   := true
    else
        FdidCheck.Checked   := (AFdid.Fdid = NewCall.FDID);
    FdidCheck.OnClick   := ResetFormCheck;

    NFIRSCheck          := TCheckBox.Create(self);
    NFIRSCheck.Parent   := FdidScrollBar;
    NFIRSCheck.Caption  := 'NFIRS';
    NFIRSCheck.Left     := 85;
    NFIRSCheck.Top      := RowCnt * 17;
    NFIRSCheck.Width    := 50;
    NFIRSCheck.Name     := SayFdidName(AFdid.Fdid);
    NFIRSCheck.Enabled  := AFdid.Nfirs = 'Y';

    If mFireID = '23145' then
       NFIRSCheck.Checked  := true
    else
       NFIRSCheck.Checked  := (AFdid.Fdid = NewCall.FDID) and (Pos('NFIRS',CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row))>0);

    EMSCheck            := TCheckBox.Create(self);
    EMSCheck.Parent     := FdidScrollBar;
    EMSCheck.Caption    := 'EMS';
    EMSCheck.Left       := 170;
    EMSCheck.Top        := RowCnt * 17;
    EMSCheck.Width      := 50;
    EMSCheck.Name       := 'EMS' + AFdid.Fdid + 'CHECK';
    EMSCheck.Enabled    := (AFdid.EMS = 'Y');
    EMSCheck.Checked    := (AFdid.Fdid = NewCall.FDID) and (AFdid.EMS = 'Y');

    If Odd(RowCnt) then begin
      RowShape.Brush.Color    := clsilver;
      RowShape.Pen.Color      := clsilver;
      FdidCheck.Color         := clsilver;
      NFIRSCheck.Color        := clsilver;
      EMSCheck.Color          := clsilver;
    end else begin
      RowShape.Brush.Color    := clBtnFace;
      RowShape.Pen.Color      := clBtnFace;
      FdidCheck.Color         := clBtnFace;
      NFIRSCheck.Color        := clBtnFace;
      EMSCheck.Color          := clBtnFace;
    end;
    
    FdidScrollBar.VertScrollBar.Range := (1*RowCnt) * 17;
    RowCnt                            := RowCnt + 1;
  end;
  FdidScrollBar.VertScrollBar.Range := FdidScrollBar.VertScrollBar.Range + 17;
end;

procedure TDispCallTakeForm.ResetFormCheck(Sender: TObject);
Var FdidNum : Integer;
    AFdid   : TFdid;
begin
  If Not (sender is TRadioButton) then
    exit;

  For FdidNum := 0 to FdidListx.Count - 1 do begin
    AFdid := TFdid(FdidListx.Objects[FdidNum]);
    If TRadioButton(FindComponent('PRIME' + AFdid.Fdid + 'CHECK')).Checked then begin
        TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked :=
        (Pos('NFIRS',CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row)) > 0) and (AFdid.NFIRS = 'Y');
      TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Checked :=
        (Pos('EMS',CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row)) > 0) and (AFdid.EMS = 'Y');
      If (FireID = '28006') or ((FireID='30021') or (AFdid.Fdid='GCEMS')) then begin
        TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Checked :=
          TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Enabled;
      end;
    end else begin
      TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked := false;
      TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Checked := false;
    end;
    TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Enabled := (AFdid.NFIRS = 'Y');
    TCheckBox(FindComponent('EMS'   + AFdid.Fdid + 'CHECK')).Enabled := (AFdid.EMS = 'Y');
  end;
end;

procedure TDispCallTakeForm.UpdateFdid(ADispCall: TDispCall);
var r1            : TRadioButton;
    r1OnClickSave : TNotifyEvent;
    AFdid         : TFdid;
    FdidNum       : Integer;
  function CheckForFDID: Boolean;
  Var I                   : Integer;
      DispatchedApparatus : TDispatchedApparatus;
  begin
    result := false;
    For I := 0 to ADispCall.AppArray.Count - 1 do begin
      DispatchedApparatus     := TDispatchedApparatus(ADispCall.AppArray.Objects[i]);
      If (AFdid.Fdid = DispatchedApparatus.Fdid) or (AFdid.Fdid = NewCall.FDID) then
        result := true;
    end;
  end;

begin
  for FdidNum := 0 to FdidListx.Count-1 do begin
    AFdid         := TFdid(FdidListx.Objects[FdidNum]);
    r1            := TRadioButton(FindComponent('PRIME' + AFdid.Fdid + 'CHECK'));
    r1OnClickSave := r1.OnClick;
    r1.OnClick    := nil;
    If Alltrim(CallTypeGrid.GetValue('FDID',CallTypeGrid.Row))='' then
      r1.Checked := (AFdid.Fdid = NewCall.FDID)
    else
      r1.Checked := (AFdid.Fdid = CallTypeGrid.GetValue('FDID',CallTypeGrid.Row));

    r1.OnClick := r1OnClickSave;
    If ((NewCall.FDID = AFdid.Fdid) or CheckForFDID) and (at('NFIRS',alltrim(CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row))) > 0) then
        TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked := (AFdid.NFIRS = 'Y')
    else begin
      If ((mFireID = '23145') and (DispCallTypeIDField.Value <> '30'))   then
        TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked := true
      else
        TCheckBox(FindComponent(SayFdidName(AFdid.Fdid))).Checked := false;
      end;
    If ((NewCall.FDID = AFdid.Fdid) or CheckForFDID) and (at('EMS',alltrim(CallTypeGrid.GetValue('TYPE',CallTypeGrid.Row))) > 0) then
      TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Checked := (AFdid.EMS = 'Y')
    else
      TCheckBox(FindComponent('EMS'      + AFdid.Fdid + 'CHECK')).Checked := false;
  end;
end;

procedure TDispCallTakeForm.FormShow(Sender: TObject);
begin
  SetLeftAndTop(DispCallTakeForm);  //added by Douglas Weber on 6-16-15 to clean up the code
  Open_Query('CALLTAKEDISPSET',false,'SELECT RUNCARD, LOGCANCELCALL,SHOWCALLTYPE, SHOWSUBTYPE, SHOWBOXCODE FROM DISPSET WHERE FDID = ' + AddExpr(mFireID));
  DispCallTypePanel.Visible := tdbfield('CALLTAKEDISPSET','SHOWCALLTYPE') = 'Y';
  DispSubTypePanel.Visible  := tdbfield('CALLTAKEDISPSET','SHOWSUBTYPE') = 'Y';
  BoxCodePanel.Visible      := tdbfield('CALLTAKEDISPSET','SHOWBOXCODE') = 'Y';
  LogCancelCall             := tdbfield('CALLTAKEDISPSET','LOGCANCELCALL') = 'Y';
  RunCard                   := tdbfield('CALLTAKEDISPSET','RUNCARD') = 'Y';
  CloseApollo('CALLTAKEDISPSET');

  Open_Query('DISPCALLTAKESET',false,'SELECT * FROM DISPCALLTAKESET WHERE FDID = ' + AddExpr(mFireID));
  While Not A('DISPCALLTAKESET').Eof do begin
    If (UpperCase(tdbfield('DISPCALLTAKESET','PANELNAME')) = 'DISPCALLTAKEFORM') then begin
      Height  := GetField('DISPCALLTAKESET','PANELHEIGHT').AsInteger;
      Width   := GetField('DISPCALLTAKESET','PANELWIDTH').AsInteger;
    end else begin
      try
        if FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))<>nil then begin
          TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).Visible := GetField('DISPCALLTAKESET','PANELVISIBLE').AsString = 'Y';
          TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).Left    := GetField('DISPCALLTAKESET','PANELLEFT').AsInteger;
          TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).Top     := GetField('DISPCALLTAKESET','PANELTOP').AsInteger;
          TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).Height  := GetField('DISPCALLTAKESET','PANELHEIGHT').AsInteger;
          TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).Width   := GetField('DISPCALLTAKESET','PANELWIDTH').AsInteger;
          If GetField('DISPCALLTAKESET','TABORDER').AsInteger > 0 then
            TADVPanel(FindComponent(tdbfield('DISPCALLTAKESET','PANELNAME'))).TabOrder:= GetField('DISPCALLTAKESET','TABORDER').AsInteger;
        end;
      except
        ShowMessage('Problem Setting Panel '+tdbfield('DISPCALLTAKESET','PANELNAME'));
      end;
    end;
    A('DISPCALLTAKESET').Skip(1);
  end;
  CloseApollo('DISPCALLTAKESET');
   AppendToLog('3. left:' + Inttostr(Left) + 'top:' + inttostr(Top));
  Open_Query('PROPSET',false,'SELECT * FROM PROPSET WHERE FDID = ' + AddExpr(mFireID));
  TownPanel.Visible     := tdbfield('PROPSET','SHOWTOWN') = 'Y';
  AddressPanel.Visible  := tdbfield('PROPSET','SHOWADDR') = 'Y';
  CrossPanel.Visible    := tdbfield('PROPSET','SHOWINT') = 'Y';
  LastNamePanel.Visible := tdbfield('PROPSET','SHOWOCC') = 'Y';
  OwnerPanel.Visible    := tdbfield('PROPSET','SHOWOWN') = 'Y';
  PhoneBoxPanel.Visible := (tdbfield('PROPSET','SHOWPHONE') = 'Y') or (tdbfield('PROPSET','SHOWBOX') = 'Y');
  BoxNumPanel.Visible   := tdbfield('PROPSET','SHOWBOX') = 'Y';
  PhonePanel.Visible    := tdbfield('PROPSET','SHOWPHONE') = 'Y';
  Custom1Panel.Visible  := tdbfield('PROPSET','SHOWCUSTOM1') = 'Y';
  Custom1Label.Caption  := tdbfield('PROPSET','CUSTOM1LABEL');
  Custom1FieldVar       := tdbfield('PROPSET','CUSTOM1FIELD');
  CityField.Text        := IIf(alltrim(CityField.Text) = '',tdbfield('PROPSET','CITY'),CityField.Text);
  StateField.Text       := IIf(alltrim(StateField.Text) = '',tdbfield('PROPSET','STATE'),StateField.Text);
  AutoSearch            := tdbfield('PROPSET','AUTOSEARCH') = 'Y';

  CloseApollo('PROPSET');

  If (AnyStrToInt(NewCall.DispCallTypeID) = 0) and DispCallPanel.Visible then
    DispCallTypeIDField.Value := ''
  else if CallTypePanel.Visible and (AnyStrToInt(NewCall.DispCallTypeID)<>0) then
    SetCallType(NewCall.DispCallTypeID);

  if SearchPanel.Visible then
    if AddressPanel.Visible then
      If strnumfield.Enabled then
        strnumfield.SetFocus;
  //ResizeButtons;
  ScaleButtonsOnPanelUsingTags('H',SubButtonPanel);
  AppendToLog('4. left:' + Inttostr(Left) + 'top:' + inttostr(Top));
  DispCallTypeIDField.Width := DispCallTypePanel.Width -6;
  DispSubTypeIDField.Width  := DispCallTypePanel.Width -6;

  TDispCallTakeForm.ClassResetAppList(AppList);
  PropBrowse.FixedRowHeight := 19;
  TFDFunc.AfterDispCallTakeFormShow(self);
  AppendToLog('5. left:' + Inttostr(Left) + 'top:' + inttostr(Top));

  PreplanButton.Caption := IIf(mFireID = 'AMHER','F6 Address Info','F6 &Preplan');

  If (Top + 200 > Screen.Height) then
    Top := 10;
  If (Left + 200 > Screen.Width) then
    Left := 10;
end;

procedure TDispCallTakeForm.DispBoxIDFieldExit(Sender: TObject);
begin
  ShowApp;
end;

procedure TDispCallTakeForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 If (ActionType = 'DISP') and (NewCall.DispCallID <> '0') then begin
    If BooleanMessageDlg('Cancel New Call?') then begin
      if LogCancelCall then
        RunSQL('UPDATE DISPCALL SET INCSTAT = ' + AddExpr('CANCEL') + ' WHERE DISPCALLID = ' + pkValue(NewCall.DispCallID))
      else
        RunSql('DELETE FROM DISPCALL WHERE DISPCALLID = '+pkValue(NewCall.DispCallID));
      CanClose := true;
    end else begin
      CanClose := false;
      BringToFront;
    end;
  end;
end;

procedure TDispCallTakeForm.SaveSettingButtonClick(Sender: TObject);
  procedure SavePanelSetting(PanelName : TAdvPanel);
  begin
    A('DISPCALLTAKESET').UpdateSQL('SELECT * FROM DISPCALLTAKESET WHERE FDID = ' + AddExpr(mFireID) + ' AND PANELNAME = ' + AddExpr(PanelName.Name));
    If A('DISPCALLTAKESET').RecordsExist then
      A('DISPCALLTAKESET').Edit
    else
      A('DISPCALLTAKESET').Append;
    GetField('DISPCALLTAKESET','PANELNAME').AsString    := PanelName.Name;
    GetField('DISPCALLTAKESET','FDID').AsString         := mFireID;
    GetField('DISPCALLTAKESET','PANELVISIBLE').AsString := IIf(PanelName.Visible,'Y','N');
    GetField('DISPCALLTAKESET','PANELTOP').AsInteger    := PanelName.Top;
    GetField('DISPCALLTAKESET','PANELLEFT').AsInteger   := PanelName.Left;
    GetField('DISPCALLTAKESET','PANELHEIGHT').AsInteger := PanelName.Height;
    GetField('DISPCALLTAKESET','PANELWIDTH').AsInteger  := PanelName.Width;
    GetTable('DISPCALLTAKESET').Post;
  end;
begin
  Open_Query('DISPCALLTAKESET',true,'SELECT * FROM DISPCALLTAKESET WHERE 1=2');
  SavePanelSetting(SEARCHPANEL);
  SavePanelSetting(CALLERPANEL);
  SavePanelSetting(DISPCALLPANEL);
  SavePanelSetting(CALLTYPEPANEL);
  SavePanelSetting(SUBTYPEPANEL);
  SavePanelSetting(PROPPANEL);
  SavePanelSetting(FDIDPANEL);
  SavePanelSetting(AppListpanel);
  SavePanelSetting(ProQAPanel);
  SavePanelSetting(DispWarnPanel);
  SavePanelSetting(ButtonPanel);

  A('DISPCALLTAKESET').UpdateSQL('SELECT * FROM DISPCALLTAKESET WHERE FDID = ' + AddExpr(mFireID )+ ' AND PANELNAME = ' + AddExpr('DISPCALLTAKEFORM'));
  If A('DISPCALLTAKESET').RecordsExist then
    A('DISPCALLTAKESET').Edit
  else
    A('DISPCALLTAKESET').Append;
  GetField('DISPCALLTAKESET','PANELNAME').AsString    := 'DISPCALLTAKEFORM';
  GetField('DISPCALLTAKESET','FDID').AsString         := mFireID;
  GetField('DISPCALLTAKESET','PANELVISIBLE').AsString := 'Y';
  GetField('DISPCALLTAKESET','PANELTOP').AsInteger    := Top;
  GetField('DISPCALLTAKESET','PANELLEFT').AsInteger   := Left;
  GetField('DISPCALLTAKESET','PANELHEIGHT').AsInteger := Height;
  GetField('DISPCALLTAKESET','PANELWIDTH').AsInteger  := Width;
  GetTable('DISPCALLTAKESET').Post;

  CloseApollo('DISPCALLTAKESET');
end;

procedure TDispCallTakeForm.ProQATimerTimer(Sender: TObject);
var bCallShowApp    : Boolean;
    mParamountNarr  : String;
    mAlertLabel     : String;
    bShowAlert      : Boolean;
    iDispCalltypeid :Integer;
    iDispSubTypeid  : Integer;
begin
  try
    ProQATimer.Enabled := false;
    UpdateProQAObjectFromDatabase(DispCallTakeProQAObject,mParamountNarr,mAlertLabel,bShowAlert,iDispCalltypeid,iDispSubTypeid,anystrtoint(NewCall.DispCallid),GlobalAdoConnection,True);
    ProQAParmountNarr.Text := mParamountNarr;
    if not UseParamount then begin
      if not bNarrEnabled then
        NarrField.Text := DispCallTakeProQAObject.NarrToShow;
    end;




    urgentmessagepanel.Visible := bShowAlert;
    urgentmessageLabel.Caption := mAlertLabel;

    DispPriorField.Text := DispCallTakeProQAObject.DispPrior;
    ProQACode.Text      := DispCallTakeProQAObject.EMDCode;
    ProQADesc.Text      := DispCallTakeProQAObject.EMDDesc;

    PQAgeField.Text     := DispCallTakeProQAObject.Age;
//    CallPhoneField.Text := DispCallTakeProQAObject.PhoneNum;
    PQConcField.Text    := DispCallTakeProQAObject.Conc;
    PQBreathField.Text  := DispCallTakeProQAObject.Breath;
    PQGenderField.Text  := DispCallTakeProQAObject.Gender;
    PQSuffixField.Text  := DispCallTakeProQAObject.Suffix;
    bCallShowApp := false;
    if (anystrtoint(NewCall.DispCallTypeID)=0) then begin  // needs to be reworked to update for a reconfigure.
      if  (iDispCalltypeid>0) and (inttostr(iDispCallTypeid)<>NewCall.DispCallTypeID)  then begin
        bCallShowApp := true;
        NewCall.DispCallTypeID := inttostr(iDispcalltypeid);
        SetCallType(NewCall.DispCallTypeID);
      end;
    end;
    if (anystrtoint(NewCall.DispSubTypeID) = 0) then begin // needs to be reworked to update for a reconfigure.
      if (iDispSubtypeid>0) and (inttostr(iDispsubTypeid)<>NewCall.DispSubTypeID) then begin
        bCallShowApp := true;
        NewCall.DispSubTypeID := inttostr(iDispSubTypeid);
        SetSubType(NewCall.DispSubTypeID);
      end;
    end;
    if bCallShowApp then
      ShowApp;
  finally
    ProQATimer.Enabled := true;
  end;

  if ((mFireID = '12345') or ((mFireID = '07030'))   or (mFireID = 'TARRA') )and (DispCallTakeProQAObject.State='DISPATCH') and (iDispCallTypeid<>0) and (not bPromptedToDispatchCall) then begin
    bPromptedToDispatchCall := True;
    if (mfireid = '07030') then begin
      if NewCall.IncStat <> 'QUEUED' then
       AddToQueueButton.click
    end else if mFireID='TARRA' then
      DispatchButton.click
    else if BooleanMessageDlg('Dispatch Call?') then
      DispatchButton.click

  end;
end;

procedure TDispCallTakeForm.ParseBasedOnDelimiter( Data, Delimiter: string; List: TStringList );
var i: integer;
begin
  List.Clear;
  i := Pos(Delimiter,Data);
  while i > 0 do begin
    List.Add(Copy(Data,1,i-1));
    Delete(Data,1,i-1+Length(Delimiter));
    i := Pos(Delimiter,Data);
  end;
  List.Add(Data);
end;

procedure TDispCallTakeForm.ProQAEMDClick(Sender: TObject);
begin
  RunSql('UPDATE DISPCALL SET PROQAFIRE = '+AddExpr('N')+', PROQASTATE = NULL WHERE DISPCALLID = '+pkValue(NewCall.DispCallID));
  DoProQA(False);
end;

procedure TDispCallTakeForm.DoProQA(mFire: Boolean);
var mNewState: String;
    mCallState: String;
begin
  mCallState := sqllookup(NewCall.DispCallid,'DISPCALLID','DISPCALL','PROQASTATE');
  if mCallState = '' then
    mCallState := GlobalProQAState;

  SetNewCallVariables;
  DispCallTakeProQAObject.SetVariables(mFire,NewCall,GetProQACallPhoneType(globaladoconnection,DispCallSourceIDField.Value),Now);

  if (not CanCallProQAInit(mCallState)) and UseParamount then begin
    ShowMessage('Please close active ProQA case, then relaunch ProQA from CAD.  State is:'+mCallState);
    ProQAWrite('MAXIMIZE',DispCallTakeProQAObject);
    ShowProQA(DispCallTakeProQAObject);
  end else begin
    if mCallState='PEND' then begin
      mNewState := 'UNPEND';
    end else if (sqllookup(NewCall.DispCallid,'dispcallid','dispcall','proqastate')<>'') and UseParamount then begin
      if BooleanMessageDlg('Open in Summary Mode (No --> Re-open case)?') then
        mNewState := 'SUMMARY'
      else
        mNewState := 'OPEN';
    end else
      mNewState := 'INIT';
    ProQAWrite(mNewState,DispCallTakeProQAObject);
    Sleep(500);
    ShowProQA(DispCallTakeProQAObject);
  end;
end;

procedure TDispCallTakeForm.DispCallTypeIDFieldSuccessfulValidate(Sender: TObject);
begin
  NewCall.DispCallTypeID   := DispCallTypeIDField.Value;
  DispSubTypeIDField.Value := '';
  NewCall.DispSubTypeID    := DispSubTypeIDField.Value;
  LoadSubTypeGrid;
  SetCallType(NewCall.DispCallTypeID);
  SetSubType(NewCall.DispSubTypeID);
  ShowApp;
end;

procedure TDispCallTAkeForm.LoadCurrentCall(DispCallID: String; AlarmNum: Integer);
var dispcall: TApolloData;
    mAdditionalWhere : String;
begin
  try
    DispCall                    := open_query(GlobalAdoConnection,GetOpenCallsQueryString(GlobalAdoConnection,' DISPCALL.DISPCALLID = ' + pkValue(DispCallid)));
    strnumfield.Text            := dbfield(dispcall,'STRNUM');
    StreetField.Text            := dbfield(dispcall,'STREET');
    RoomAptField.Text           := dbfield(dispcall,'ROOMAPT');
    Cross1Field.Text            := dbfield(dispcall,'CROSS1');
    ZipField.Text               := dbfield(dispcall,'ZIP');
    Cross2Field.Text            := dbfield(dispcall,'CROSS2');
    CityField.Text              := dbfield(dispcall,'CITY');
    BoxNumField.Text            := dbfield(dispcall,'BOXNUM');
    LastNameField.Text          := dbfield(dispcall,'SITENAME');
    DispBoxIDField.Text         := GetField(dispcall,'DISPBOXID').AsString;
    NarrField.Text              := alltrim(GetField(dispcall,'NARR').AsString);
    DispCallSourceIDField.Value := GetField(dispcall,'DISPCALLSOURCEID').AsString;
    CallNameField.Text          := tdbfield(dispcall,'CALLNAME');
    CallAddrField.Text          := tdbfield(dispcall,'CALLADDR');
    CallPhoneField.Text         := tdbfield(dispcall,'CALLPHONE');

    if (mFireid='12345') or (mfireid='AMHER') then
      mAdditionalWhere := ' AND (DATETIMEIN IS NULL OR DATETIMEIN > '+formatdatetimeForSql(Now)+')'
    else
      mAdditionalWhere := '';

    Open_Query('VWPROPSTAT',false,'SELECT DATETIMEOUT, DESCR FROM VWPROPSTAT WHERE PROPID = ' + pkValue(tdbfield(dispcall,'PROPID')) + ' AND (OPENEVENT = ' + AddExpr('Y')+mAdditionalWhere+')');
    If A('VWPROPSTAT').RecordsExist then begin
      PropStatField.Caption := tdbfield('VWPROPSTAT','DESCR') + ' as of ' + FormatDateTime('MM/DD/YYYY HH:NN',GetField('VWPROPSTAT','DATETIMEOUT').AsDateTime);
      PropStatField.Visible := true;
    end else begin
      PropStatField.Visible := false;
    end;
    CloseApollo('VWPROPSTAT');

    LoadDispCallFieldsFromQuery(NewCall,dispcall);

    SetCallType(NewCall.DispCallTypeID);
    if NewCall.DispCallTypeID <> '' then begin
      LoadSubTypeGrid;
      SetSubType(NewCall.DispSubTypeID);
    end;

    if NewCall.PropID <> '' then begin
      PreplanButton.Enabled := true;
      GISButton.Enabled     := true;
    end;

    If FormExists('GisSysForm') then begin
      DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, GetField(dispcall,'LATITUDE').AsFloat,GetField(dispcall,'LONGITUDE').AsFloat,0,0);
      RefreshAVLEvents(GlobalAdoConnection,GisSysForm.GisSetVar, GisSysForm.Map,'','','');
    end;

    ShowApp;
    SetWarnDisp(NewCall,dispcall);

    If NewCall.WarnDisp = 'Y' then begin
      if NewCall.WarnDate = 0 then
        DispWarnPanel.Caption.Text := 'No Entry Date for Warning'
      else begin
        DispWarnPanel.Caption.Text := 'Warning entered on ' + FormatDateTime('MM/DD/YYYY',NewCall.WarnDate);
      end;
      WarnNarrField.Text         := NewCall.WarnNarr;

      WarnBlinkLabel.Visible     := true;
    end;

    NewCall.AlarmNum            := AlarmNum;
  finally
    dispcall.free;
  end;
end;

procedure TDispCallTAkeForm.AfterLoadCall();
begin
  if NewCall.DispSubTypeID <> '' then begin
    SetSubType(NewCall.DispSubTypeID);
    ShowApp;
  end;
end;

procedure TDispCallTakeForm.ClearButtonClick(Sender: TObject);
begin
  CityField.Text      := '';
  strnumfield.Text    := '';
  StreetField.Text    := '';
  RoomAptField.Text   := '';
  Cross1Field.Text    := '';
  Cross2Field.Text    := '';
  LastNameField.Text  := '';
  BoxNumField.Text    := '';
  PhoneField.Text     := '';
  zipfield.Text       := '';
  Custom1Field.Text   := '';
  if mFireid = '03800' then begin    // mjs - I think this could apply for all fdid
    DispCallTypeIDField.Value := '';
    DispSubTypeIDField.Value  := '';
    DispBoxIDField.Value      := '';
    NarrField.Value           := '';
  end;
  If mFireid = '73014' then
    NarrField.Text := '';
  StatusPanel.Caption := ' Search Status: Enter search criteria.';  
  StrNumField.SetFocus;
end;

procedure TDispCallTakeForm.FieldChange(Sender: TObject);
begin
  If AutoSearch and (Length(alltrim(Cross1Field.Text)) > 2) then begin
    IntersectionButtonClick(self)
  end else
    StatusPanel.Caption := ' Press Ctrl-F or press Search Button to find intersection.';
end;

procedure TDispCallTakeForm.StreetFieldChange(Sender: TObject);
begin
  If AutoSearch then begin
    If Not (alltrim(strnumfield.text) = '') and (Length(alltrim(StreetField.Text)) > 0)then
      AddressButtonClick(self);
  end else
    StatusPanel.Caption := ' Press Ctrl-F or press Search Button to find location.';
end;

procedure TDispCallTakeForm.BoxNumfieldChange(Sender: TObject);
begin
  If AutoSearch then begin
    if (mfireid = '23239') then begin
      if length(BoxNumField.Value) <= 1 then
        Exit;
    end;
    If Not (alltrim(boxnumfield.text) = '') then
      BoxNumButtonClick(self);
  end else
    StatusPanel.Caption := ' Press Ctrl-F or press Search Button to find location by box.';
end;

procedure TDispCallTakeForm.LastNameFieldChange(Sender: TObject);
begin
  If AutoSearch then begin
    If (Length(alltrim(LastNameField.Text)) > 2) then
      OccupantButtonClick(self);
  end else
    StatusPanel.Caption := ' Press Ctrl-F or press Search Button to find location.';
end;

procedure TDispCallTakeForm.ResizeButtons;
Var ButtonNumber : Integer;
    ButtonList   : TStringList;
    ButtonWidth  : Integer;
begin
  exit;
  ButtonList := TStringList.Create;
  For ButtonNumber := 0 to ButtonPanel.ControlCount-1 do begin
    If (ButtonPanel.Controls[ButtonNumber] is TAlpineGlowButton) and TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Visible then begin
      ButtonList.Add( IntToStr( TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Tag ) + IntToStr(ButtonNumber) + TAlpineGlowButton(ButtonPanel.Controls[ButtonNumber]).Name);
    end;
  end;

  ButtonWidth := Round(ButtonPanel.Width / ButtonList.count);

  For ButtonNumber := 0 to ButtonList.Count-1 do
    TAlpineGlowButton(ButtonPanel.Controls[StrToInt( substr(ButtonList[ButtonNumber],2,1) ) ]).Width := ButtonWidth;
end;

procedure TDispCallTakeForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (Key=VK_F3) and SelectButton.Enabled then
    PropBrowseDblClick(Self)
  else if (Key=VK_F4) and ProQAEMD.Visible then
    ProQAEMDClick(self)
  else if (Key=VK_F5) and GisButton.Enabled then
    GisButtonClick(self)
  else if (Key=VK_F6) and PreplanButton.Enabled then
    PreplanButtonClick(self)
  else if (Key=VK_F7) then
    ClearButtonClick(self)
  else if (Key=VK_F9) and AddToQueueButton.Enabled then
    AddToQueueButton.Onclick(self)
  else if (Key=VK_F8) and DispatchButton.Enabled then
    DispatchButton.Onclick(self)
  else if (Key=VK_F12) and SOPButton.Enabled then
    SOPButtonClick(self)
end;

procedure TDispCallTakeForm.FormResize(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',SubButtonPanel);
end;

procedure TDispCallTakeForm.PanelEnter(Sender: TObject);
begin
  (Sender as TAdvPanel).Caption.Color   := clgreen;
  (Sender as TAdvPanel).Caption.Colorto := clblack;
end;

procedure TDispCallTakeForm.PanelExit(Sender: TObject);
begin
  (Sender as TAdvPanel).Caption.Color   := clBlue;
  (Sender as TAdvPanel).Caption.Colorto := clnavy;
end;

procedure TDispCallTakeForm.BoxNumButtonClick(Sender: TObject);
begin
  If (alltrim(BoxNumField.Text) = '') then begin
    ShowMessage('There is nothing entered in the box number search criteria');
    BoxNumField.SetFocus;
  end else
    Search('BOXNUM');
end;

procedure TDispCallTakeForm.Button1Click(Sender: TObject);
begin
  RunSql('UPDATE DISPCALL SET SHOWPROQAALERT = ''N'' WHERE DISPCALLID = '+pkValue(newcall.dispcallid));
  ShowMemoCreate(ProQAParmountNarr.Text,PROQANARRNAME);
end;

procedure TDispCallTakeForm.ButtonBottomClick(Sender: TObject);
begin
  If Not FormExists('DispCallTakeMoveForm') then
    DispCallTakeMoveForm := TDispCallTakeMoveForm.Create(application);
  DispCallTakeMoveForm.Show;
end;

procedure TDispCallTakeForm.ButtonPanelResize(Sender: TObject);
begin
  ScaleButtonsOnPanelUsingTags('H',SubButtonPanel);
end;

procedure TDispCallTakeForm.SameButtonClick(Sender: TObject);
begin
  CallAddrField.Value := alltrim(alltrim(StrNumField.Value) + ' ' + StreetField.Value);
  CallNameField.Value := LastNameField.Value;
end;

procedure TDispCallTakeForm.AppListKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var mCheckState         : Boolean;
begin
  if Key=VK_SPACE then begin
    AppList.GetCheckBoxState(iCheckBoxColumn,AppList.Row,mCheckState);
    AppList.SetCheckBoxState(iCheckBoxColumn,AppList.Row,not mCheckState);
  end;
end;

procedure TDispCallTakeForm.PhoneFieldChange(Sender: TObject);
begin
  If length(PhoneField.Value)=12 then
    PhoneButtonClick(self);
end;

procedure TDispCallTakeForm.PhoneFieldKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key = 70) and (ssCtrl in Shift) then
    PhoneButtonClick(self);
end;

procedure TDispCallTakeForm.PhoneButtonClick(Sender: TObject);
begin
  If (alltrim(substr(PhoneField.Text,1,3)) = '') then begin
    ShowMessage('There is nothing entered in the phone search criteria');
    PhoneField.SetFocus;
  end else
    Search('PHONE');
end;

procedure TDispCallTakeForm.QueryPhone;
Var mSelect     : String;
    mJoins      : String;
    mOrder      : String;
    WhereClause : String;
    qPhone      : TApolloData;
    PropIDList  : TStringList;
    i           : Integer;
  procedure LoadPropPhone;
  begin
    While Not qPhone.Eof do begin
      if PropIDList.IndexOf(GetField(qPhone,'PROPID').AsString)=-1 then begin
        PropIDList.Add(GetField(qPhone,'PROPID').AsString);
        PropBrowse.SetValue('FDID',          GetField(qPhone,'FDID').AsString);
        PropBrowse.SetValue('PROPID',        GetField(qPhone,'PROPID').AsString);
        PropBrowse.SetValue('STRNUM',        alltrim(GetField(qPhone,'STRNUM').AsString));
        PropBrowse.SetValue('STREET',        alltrim(GetField(qPhone,'STREET').AsString));
        PropBrowse.SetValue('ROOMAPT',       alltrim(GetField(qPhone,'ROOMAPT').AsString));
        PropBrowse.SetValue('CITY',          alltrim(GetField(qPhone,'CITY').AsString));
        PropBrowse.SetValue('PLASTNAME',     GetField(qPhone,'PLASTNAME').AsString);
        PropBrowse.SetValue('PROPTYPEDESCR', GetField(qPhone,'PROPTYPEDESCR').AsString);
        PropBrowse.SetValue('FDIDSHORTDESCR',GetField(qPhone,'FDIDSHORTDESCR').AsString);
      end;
      qPhone.Skip(1);
    end;
  end;
begin
  ResetPropBrowse;
  PropBrowse.SetColumn('PROPID'   ,     'PROP',        001);
  PropBrowse.SetColumn('FDID',          'FDID',        001);
  PropBrowse.SetColumn('STRNUM',        'Address',     080);
  PropBrowse.SetColumn('STREET',        'Street Name', 150);
  PropBrowse.SetColumn('ROOMAPT',       'Suite/Apt',   080);
  PropBrowse.SetColumn('CITY',          'Town',        100);
  PropBrowse.SetColumn('PLASTNAME',     'Occupant',    175);
  PropBrowse.SetColumn('PROPTYPEDESCR', 'Address Type',135);
  PropBrowse.SetColumn('FDIDSHORTDESCR','Agency',      300);
  PropIDList  :=  TStringList.Create;
  WhereClause := '';
  for i := 0 to phonefieldsToSearch.Count-1 do begin
    WhereClause := WhereClause + '(PROP.'+phonefieldsToSearch[i]+'='+AddExpr(PhoneField.Text)+')';
    if i < phonefieldsToSearch.Count-1 then
      WhereClause := WhereClause + ' OR ';
  end;

  mSelect := 'SELECT PROP.FDID FDID, FDID.SHORTDESCR FDIDSHORTDESCR, PROP.PROPID PROPID, PROP.PLASTNAME PLASTNAME, PROP.STRNUM STRNUM, PROP.STREET STREET, PROP.ROOMAPT ROOMAPT, PROP.CITY CITY, PROPTYPE.DESCR PROPTYPEDESCR ';
  mJoins  := 'LEFT JOIN PROPTYPE ON (PROP.PROPTYPEID = PROPTYPE.PROPTYPEID) ' +
             'LEFT JOIN FDID ON (PROP.FDID = FDID.FDID) ' ;
  mOrder  := ' ORDER BY PROP.STREET, '+AlpinePadLeft('PROP.STRNUM',8)+',' +AlpinePadLeft('PROP.ROOMAPT',8);
  qPhone  := Open_Query(false,mSelect+' FROM PROP ' + mJoins +' WHERE ' + WhereClause + mOrder);
  LoadPropPhone;

  qPhone.UpdateSql(mSelect+' FROM PROPPHONE LEFT JOIN PROP ON (PROPPHONE.PROPID = PROP.PROPID) '+ mJoins +' WHERE PROPPHONE.PHONE = '+AddExpr(PhoneField.Text)+' '+mOrder);
  LoadPropPhone;
  PropIDList.Free;
  qPhone.Free;
end;

procedure TDispCallTakeForm.DispBoxIDFieldSuccessfulValidate(Sender: TObject);
begin
  ShowApp;
end;

procedure TDispCallTakeForm.SetDispCallType(mDispCallTypeID: String);
begin
  NewCall.DispCallTypeID := mDispCallTypeID;
  SetCallType(mDispCallTypeID);
  LoadSubTypeGrid;
  ShowApp;
end;

procedure TDispCallTakeForm.SubTypeGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
begin
  NewCall.DispSubTypeID := SubTypeGrid.GetValue('DISPSUBTYPEID',NewRow);
  SetSubType(SubTypeGrid.GetValue('DISPSUBTYPEID',NewRow));
  ShowApp;
end;

procedure TDispCallTakeForm.DispSubTypeIDFieldSuccessfulValidate( Sender: TObject);
begin
  NewCall.DispSubTypeID := DispSubTypeIDField.Value;
  LoadSubTypeGrid;
  SetSubType(NewCall.DispSubTypeID);
  ShowApp;
end;

procedure TDispCallTakeForm.SetSubType(mDispSubTypeID: String);
var i: Integer;
begin
  try
    SubTypeGrid.OnRowUpdate                 := nil;
    DispSubTypeIDField.OnSuccessfulValidate := nil;
    DispSubTypeIDField.Value                := mDispSubTypeID;
    if mDispSubTypeID='' then begin
      SubTypeGrid.Row     := 0;
      SubTypeGrid.options := SubTypeGrid.options - [goRowSelect];
      LoadSubTypeGrid;
    end else begin
      SubTypeGrid.options := SubTypeGrid.options + [goRowSelect];    
      for i := 0 to SubTypeGrid.RowCount -1 do begin
        if SubTypeGrid.GetValue('DISPSUBTYPEID',i)=mDispSubTypeID then begin
          SubTypeGrid.Row := i;
          break;
        end;
      end;
    end;  
  finally
    SubTypeGrid.OnRowUpdate                 := SubTypeGridRowUpdate;
    if DispSubTypePanel.Visible then
      DispSubTypeIDField.OnSuccessfulValidate := DispSubTypeIDFieldSuccessfulValidate;
  end;
end;

procedure TDispCallTakeForm.SetupButtonClick(Sender: TObject);
begin
  ButtonBottomClick(self);
end;

procedure TDispCallTakeForm.SetCallType(mDispCallTypeID: String);
var i: Integer;
begin
  try
    CallTypeGrid.OnRowUpdate := nil;
    DispCallTypeIDField.OnSuccessfulValidate := nil;
    if mDispCallTypeID = '' then begin
      CallTypeGrid.Row := 0;
      CallTypeGrid.options := CallTypeGrid.options - [goRowSelect];
      LoadCallTypeGrid;
    end else begin
      CallTypeGrid.options := CallTypeGrid.options + [goRowSelect];
      DispCallTypeIDField.Value := mDispCallTypeID;
      for i := 0 to CallTypeGrid.RowCount -1 do begin
        if CallTypeGrid.GetValue('DISPCALLTYPEID',i)=mDispCallTypeID then begin
          CallTypeGrid.Row := i;
          break;
        end;
      end;
    end;
  finally
    CallTypeGrid.OnRowUpdate := CallTypeGridRowUpdate;
    if DispCallTypePanel.Visible then
      DispCallTypeIDField.OnSuccessfulValidate := DispCallTypeIDFieldSuccessfulValidate;
  end;
end;

procedure TDispCallTakeForm.CallTypeGridRowUpdate(Sender: TObject; OldRow, NewRow: Integer);
begin
  if NewRow >= CallTypeGrid.FixedRows then begin
    NewCall.DispCallTypeID := CallTypeGrid.GetValue('DISPCALLTYPEID',NewRow);
    SetCallType(NewCall.DispCallTypeID);
    NewCall.DispSubTypeID := '';
    LoadSubTypeGrid;
    ShowApp;
  end;
end;

procedure TDispCallTakeForm.LoadSubTypeGrid;
begin
  SubTypePanel.Caption.Text := 'Sub Types for ' + SQLLookUp(NewCall.DispCallTypeID,'DISPCALLTYPEID','DISPCALLTYPE','DESCR');
  ClassLoadSubTypeGrid(SubTypeGrid,NewCall.DispCallTypeID);
  SubTypeGrid.OnRowUpdate := SubTypeGridRowUpdate;
end;

class procedure TDispCallTakeForm.ClassLoadSubTypeGrid(SubTypeGrid: TAlpineTMSStringGrid; mDispCallTypeID: String);
var
  mOnRowUpdate: TRowChangedEvent;
begin
  mOnRowUpdate := SubTypeGrid.OnRowUpdate;
  SubTypeGrid.OnRowUpdate := nil;
  SubTypeGrid.Clear;
  SubTypeGrid.ClearColumns;
  SubTypeGrid.ColCount       := 0;
  SubTypeGrid.RowCount       := 0;
  SubTypeGrid.FixedRowAlways := true;
  SubTypeGrid.RowCount       := SubTypeGrid.FixedRows;

  subTypeGrid.SetColumn('DISPSUBTYPEID','',0);
  SubTypeGrid.SetColumn('CODE','Type',50);
  SubTypeGrid.SetColumn('DESCR','Desc',500);
  subTypeGrid.SetColumn('RESPCALLTYPEID','',0);
  If mDispCallTypeID <> '' then begin
    Open_Query('DISPSUBTYPE',false,'SELECT * FROM DISPSUBTYPE WHERE DISPCALLTYPEID = ' + pkValue(mDispCallTypeID) +
                                   ' AND (HIDDEN <> ' + AddExpr('Y') + ' OR HIDDEN IS NULL) ' +
                                   ' ORDER BY SORTORD, CODE');
    While Not A('DISPSUBTYPE').Eof do begin
      SubTypeGrid.SetValue('DISPSUBTYPEID',GetField('DISPSUBTYPE','DISPSUBTYPEID').AsString);
      SubTypeGrid.SetValue('CODE',GetField('DISPSUBTYPE','CODE').AsString);
      SubTypeGrid.SetValue('DESCR',GetField('DISPSUBTYPE','DESCR').AsString);
      SubTypeGrid.SetValue('RESPCALLTYPEID',GetField('DISPSUBTYPE','RESPCALLTYPEID').AsString);
      A('DISPSUBTYPE').Skip(1);
    end;
    CloseApollo('DISPSUBTYPE');
  end;
  SubTypeGrid.OnRowUpdate := mOnRowUpdate;
end;

function TDispCallTakeForm.GetSysColumn(ViewCode, ColCode: String; DefaultWidth: Integer): Integer;
Var SQLVar : String;
begin
  SQLVar := 'SELECT COLWIDTH FROM SYSCOLUMN WHERE VIEWCODE = ' + AddExpr(ViewCode) + ' AND COLCODE = ' + AddExpr(ColCode);
  Open_Query('SYSCOLUMN',false,SqlVar);
  If A('SYSCOLUMN').RecordsExist then
    Result := GetField('SYSCOLUMN','COLWIDTH').AsInteger
  else
    Result := DefaultWidth;
  CloseApollo('SYSCOLUMN');
end;

constructor TDispCallTakeForm.Create(AOwner: TComponent; mAllowDispatch: Boolean);
begin
  FAllowDispatch := CheckSecVar('DISPGEN');
  inherited Create(AOwner);
end;

end.  
