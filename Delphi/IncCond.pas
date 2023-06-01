unit IncCond;
 
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
  ImgList,
  AdvToolBar,
  StdCtrls,
  GradientLabel,
  ExtCtrls,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  MySBox,
  AlpineBase,
  htmlbtns,
  AlpineBaseCond,
  AdvPanel,
  AlpineDateTime,
  Grids,
  BaseGrid,
  AlpineBaseSummaryReport,
  AdvGrid,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  AdvGroupBox,
  QrCtrls,
  QuickRpt,
  AlpineTMSStringGrid,
  SysRepMan,
  AdvObj;


type
  TIncCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    SortPanel: TAdvPanel;
    IncNumSort: TRadioButton;
    AddressSort: TRadioButton;
    PLastNameSort: TRadioButton;
    DateTimeAlarmSort: TRadioButton;
    FilterPanel: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    StrNumField: TAlpineEdit;
    IncTypeField: TAlpineLookup;
    Label3: TLabel;
    streetfield: TAlpineLookup;
    FdidPanel: TAdvPanel;       
    FdidBrowse: TAdvStringGrid;
    Label4: TLabel;
    MaidField: TAlpineLookup;
    ResponsePanel: TAdvPanel;
    AdvPanel7: TAdvPanel;
    DateTimeAlarm1: TRadioButton;
    DateTimeOut1: TRadioButton;
    DateTimeArr1: TRadioButton;
    AdvPanel6: TAdvPanel;
    DateTimeOut2: TRadioButton;
    DateTimeArr2: TRadioButton;
    DateTimeCont2: TRadioButton;
    DateTimeIn2: TRadioButton;
    DateTimeCont1: TRadioButton;
    DispPanel: TAdvPanel;
    DispLocIDField: TAlpineLookup;
    Label5: TLabel;
    DispBoxIDField: TAlpineLookup;
    DispBoxIDLabel: TLabel;
    Label8: TLabel;
    DispCallTypeIDField: TAlpineLookup;
    TimePanel: TAdvPanel;
    Label9: TLabel;
    Label10: TLabel;
    EndTimeField: TAlpineEdit;
    StartTimeField: TAlpineEdit;
    Label11: TLabel;
    UnitNumField: TAlpineEdit;
    ExpNumPanel: TAdvPanel;
    Label12: TLabel;
    ExpNumField: TCheckBox;
    ValidatorPanel: TAdvPanel;
    NFIRSCheck: TCheckBox;
    DispCallTypePanel: TAdvPanel;
    DispCallTypeBrowse: TAdvStringGrid;
    UnitNum2Field: TAlpineEdit;
    FdidCompPanel: TAdvPanel;
    FdidCompBrowse: TAlpineTMSStringGrid;
    CommentsPanel: TAdvPanel;
    CommentsCheck: TCheckBox;
    MDEPTPanel: TAdvPanel;
    Label13: TLabel;
    MDeptField: TAlpineLookup;
    Label6: TLabel;
    SchdShiftNameIDField: TAlpineLookup;
    N5DISTRICTIDLabel: TLabel;
    N5DISTRICTIDField: TAlpineLookup;
    FdidCompIDPanel: TAdvPanel;
    Label16: TLabel;
    FdidCompIDField: TAlpineLookup;
    BoxNumPanel: TAdvPanel;
    Label18: TLabel;
    BoxNumField: TAlpineEdit;
    Label19: TLabel;
    cityField: TAlpineLookup;
    EmdCodeField: TAlpineLookup;
    EmdLabel: TLabel;
    Label20: TLabel;
    PLastNameField: TAlpineEdit;
    RespUnitNumPanel: TAdvPanel;
    Label17: TLabel;
    RespUnitNumField: TAlpineEdit;
    RespUnitNum2Field: TAlpineEdit;
    RespUnitNum3Field: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    PersonnelPanel: TAdvPanel;
    Label21: TLabel;
    NumofPersonnelField: TAlpineEdit;
    Maid2Field: TAlpineLookup;
    Label23: TLabel;
    DispResponsePanel: TAdvPanel;
    AdvPanel2: TAdvPanel;
    DateTimeAlarm3: TRadioButton;
    DateTimeOut3: TRadioButton;
    DateTimeArr3: TRadioButton;
    DateTimeCont3: TRadioButton;
    AdvPanel3: TAdvPanel;
    DateTimeOut4: TRadioButton;
    DateTimeArr4: TRadioButton;
    DateTimeCont4: TRadioButton;
    DateTimeIn4: TRadioButton;
    DateTimeRec3: TRadioButton;
    DateTimeAlarm4: TRadioButton;
    MinutesPanel: TAdvPanel;
    Label15: TLabel;
    Label22: TLabel;
    NumMinutesField: TAlpineEdit;
    NumSecondsField: TAlpineEdit;
    Label24: TLabel;
    FixPropField: TAlpineLookup;
    ElapsedTimeSort: TRadioButton;
    AlmRecSort: TRadioButton;
    OutAlmSort: TRadioButton;
    ArrOutSort: TRadioButton;
    FixPropPanel: TAdvPanel;
    FixPropBrowse: TAdvStringGrid;
    INCCUSTOMPANEL: TAdvPanel;
    F1CaptionLablel: TLabel;
    F1Lookup: TAlpineLookup;
    Label25: TLabel;
    nfirsappdispField: TAlpineLookup;
    Label26: TLabel;
    FireLabel: TLabel;
    FireCheckBox: TCheckBox;
    EmsCheckBox: TCheckBox;
    EMSLabel: TLabel;
    DistrictPanel: TAdvPanel;
    N5DistrictBrowse: TAdvStringGrid;
    Label7: TLabel;
    RoomAptField: TAlpineEdit;
    CadCountyLabel: TLabel;
    CadCountyField: TAlpineEdit;
    CadTownLabel: TLabel;
    CadTownField: TAlpineEdit;
    Label28: TLabel;
    IncNumField: TAlpineEdit;
    F2CaptionLablel: TLabel;
    F2Lookup: TAlpineLookup;
    Label14: TLabel;
    ExcludeYNField: TAlpineEdit;
    COVID19Panel: TAdvPanel;
    Label27: TLabel;
    NFIRSSS9244Field: TAlpineLookup;
    EQUUSEPANEL: TAdvPanel;
    NFIRSEQUTYPEBrowse: TAdvStringGrid;
    IncTypeField2: TAlpineLookup;
    IncTypeField3: TAlpineLookup;
    IncTypeField4: TAlpineLookup;
    IncTypeField5: TAlpineLookup;
    IncTypeField6: TAlpineLookup;
    ChiefPanel: TAdvPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Chief18Unitnum: TAlpineEdit;
    Chief28Unitnum: TAlpineEdit;
    Chief38Unitnum: TAlpineEdit;
    Label32: TLabel;
    ZipField: TAlpineEdit;
    InvPanel: TAdvPanel;
    InvBrowse: TAlpineTMSStringGrid;
    DateTimeRec1: TRadioButton;
    DateTimeAlarm2: TRadioButton;
    procedure StartDateFieldExit(Sender: TObject);
    procedure EndDateFieldExit(Sender: TObject);
    procedure StreetFieldChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DispCallTypeBrowseClick(Sender: TObject);
    procedure FixPropBrowseClick(Sender: TObject);
    procedure N5DistrictBrowseClick(Sender: TObject);
    procedure FdidCompBrowseClick(Sender: TObject);
    procedure NFIRSEQUTYPEBrowseClick(Sender: TObject);
  private
    { Private declarations }
    FSysRepManForm: TSysRepmanForm;
  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function GetFdidWhere: String;
    function GetFdidCompIDStringList: TStringList;    
    function GetInvFdidWhere: String;
    function GetFdidString: String;
    function SqlWhereClause: String; override;
    procedure LoadFdidBrowse;
    Procedure LoadFDIDCompBrowse;
    function SelectOrder: String;
    function SelectOrderString: String;
    function GetCondLabel: String;
    class procedure PrintTitles(BandName : TQRBand);
    Procedure LoadDispCallTypeBrowse;
    Procedure LoadDistrictBrowse;
    Procedure LoadNFIRSEQUTYPEBrowse;
    function GetDispCallTypeWhere: String;
    function GetN5DistrictWhere: String;
    function GetFixPropWhere: String;
    function GetDispCallTypeList: String;
    function GetFdidCompIDWhere: String;
    function GetFdidCompList: String;
    function GetPersCompIDWhere: String;
    function GetNFirsEquTypeWhere: String;
    function GetNfirsEquTypeList: String;
    procedure LoadFixPropBrowse;
    function GetFixPropList: String;
    procedure LoadCustomPanel;
    Procedure LoadInvBrowse;
    function  GetUnitNumWhere: String;
    function  GetUnitNumString: String;
  end;

var
  IncCondForm      : TIncCondForm;

implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     IncLog,
     IncLogFemaRep,
     applst,
     IncManRep,
     IncManAppRep,
     IncManDispBoxRep,
     IncNFPARep,
     IncNFPAGrantRep,
     IncDOWRep,
     IncInvUseRep,
     IncTimeRep,
     IncManTimeRep,
     IncMonthRep,
     IncAppUseRep,
     IncTypeRep,
     IncActTypeRep,
     IncFixPropRep,
     IncMaidRep,
     IncTypeDistRep,
     IncMissingRep,
     IncCivRep,
     IncFireRep,
     IncFireSpreadRep,
     IncReEval,
     IncMonthByIncident,
     IncAveAttRep,
     IncManMonthRep,
     IncTimeHistRep,
     NFIRSMainRep,
     NFIRSAttRep,
     NfirsContIgnRep,
     IncTimeRespRep,
     IncTimeResp10Rep,
     INCTimeResp6Rep,
     IncISOResponseRep,
     IncZipRep,
     IncCallTypeByMonth,
     IncLogAttRep,
     SimultaneousCallsReport,
     SimultaneousCallsReport2,
     SimCallWithUnitRep,     
     IncDamageRep,
     IncContIgnRep,
     NfirsMaidGridRep,
     NfirsEquUseRep,
     CommonFunc,
     HandStatNfirsMainRep,
     IncDelayedResp,
     FdidComp,
     NfirsAttEntryRep,
     IncCovidLogRep,
     IncCovidCustomRep,
     IncInvItemRep,
     CommonVar,
     IncDayChartRep,
     IncLossChartRep,
     IncManChartRep,
     IncMonthChartRep,
     IncTypeChartRep,
     IncYearChartRep,
     IncYearFireEmsRep,
     IncPropUseChartRep,
     IncYearTypeChartRep;

function TIncCondForm.InitialDate: TDateTime;
begin
  result := StartDateField.Value;
end;

procedure TIncCondForm.FdidCompBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TIncCondForm.FinalDate: TDateTime;
begin
  result := EndDateField.Value;
end;

procedure TIncCondForm.FixPropBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

function TIncCondForm.GetInvFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        WhereString := WhereString + ' OR INV.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If (WhereString = '') then
      WhereString := '1=1'
    else
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetInvFdidWhere := WhereString;
  end else
    GetInvFdidWhere := '1=1';
end;


function TIncCondForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  If MultiFdid then begin
    WhereString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue and (FdidBrowse.Cells[0,RowVar]<>'') then
        WhereString := WhereString + ' OR NFIRSMAIN.FDID = ' + AddExpr(FdidBrowse.Cells[0,RowVar]);
    end;
    If Not (WhereString = '') then
      WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;


function TIncCondForm.GetFdidString: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    FdidString : String;
begin
  If MultiFdid then begin
    FdidString := '';
    For RowVar := 0 to FdidBrowse.RowCount-1 do begin
      FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then
        FdidString := FdidString + SqlLookUp(FdidBrowse.Cells[0,RowVar],'FDID','FDID','DEPTNAME') + ', ';
    end;
    If (FdidString = '') then
      FdidString := 'All Agencies'
    else
      FdidString := Substr(FdidString,1,Length(FdidString)-2);
    GetFdidString := FdidString;
  end else
    GetFdidString := '';
end;


function TIncCondForm.SqlWhereClause: String;
Var FdidString         : String;
    DispCallTypeString : String;
    NfirsCompIDString  : String;
    N5DistrictString   : String;
    FixpropString      : String;
begin
  FdidString         := GetFdidWhere;
  DispCallTypeString := GetDispCallTypeWhere;
  N5DistrictString   := GetN5DistrictWhere;
  FixpropString      := GetFixPropWhere;
  NfirsCompIDString  := GetFdidCompIDWhere;
  Result             := ' WHERE 1=1';

  If Not (BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',StartDateField.Value,EndDateField.Value) = '') then
    Result := Result + ' AND ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',StartDateField.Value,EndDateField.Value);
  If Not ExpNumField.Checked then
    Result := Result + ' AND NFIRSMAIN.EXPNUM = ' + AddExpr('00');

  If mFireID = '40070' then begin
    If FireCheckBox.Checked then
      Result := Result + ' AND NFIRSMAIN.BBFDCADTYPE = ' + AddExpr('FIRE');
    If EmsCheckBox.Checked then
      Result := Result + ' AND NFIRSMAIN.BBFDCADTYPE = ' + AddExpr('EMS');
  end;
  Result := Result + ' AND (';
  If Not (alltrim(IncTypeField.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField.Text + '%') + ' OR';
  If Not (alltrim(IncTypeField2.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField2.Text + '%') + ' OR';
  If Not (alltrim(IncTypeField3.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField3.Text + '%') + ' OR';
  If Not (alltrim(IncTypeField4.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField4.Text + '%') + ' OR';
  If Not (alltrim(IncTypeField5.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField5.Text + '%') + ' OR';
  If Not (alltrim(IncTypeField6.Text) = '') then
    Result := Result + ' NFIRSMAIN.SITFOUND LIKE ' + AddExpr(IncTypeField6.Text + '%') + ' OR';
  if (SubString(Result,Length(Result)-5,6) = ' AND (') then
    Result := SubString(Result,0,Length(Result)-5)
  else begin
    Result := SubString(Result,0,Length(Result)-3);
    Result := Result + ') ';
  end;
  If Not (alltrim(FixPropField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.FIXPROP LIKE ' + AddExpr(FixPropField.Text + '%');
  If Not (alltrim(EmdCodeField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.EMDCODE LIKE ' + AddExpr(EmdCodeField.Text + '%');
  If Not (alltrim(StreetField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.STREET LIKE ' + AddExpr(StreetField.Text + '%');
  If Not (alltrim(StrNumField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.STRNUM = ' + AddExpr(StrNumField.Text);
  If Not (alltrim(RoomAptField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.ROOMAPT = ' + AddExpr(RoomAptField.Text);
  If Not (alltrim(ZipField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.ZIP = ' + AddExpr(ZipField.Text);
  If Not (alltrim(MaidField.Text) = '') then begin
    if Not (alltrim(Maid2Field.Text) = '') then begin
      Result := Result + ' AND (NFIRSMAIN.MAID = ' + AddExpr(MaidField.Text) + ' OR NFIRSMAIN.MAID = ' + AddExpr(Maid2Field.Text) + ')';
    end else
      Result := Result + ' AND NFIRSMAIN.MAID = ' + AddExpr(MaidField.Text);
  end;
  If Not (alltrim(MDeptField.Text) = '') then
    Result := Result + ' AND NFIRSMAIN.MDEPT = ' + AddExpr(MDeptField.Text);

  If      Not (alltrim(UnitNumField.Text) = '') and     (alltrim(UnitNum2Field.Text) = '') then
    Result := Result + ' AND (NFIRSMAIN.UNITNUM = ' + AddExpr(UnitNumField.Text) + ')'
  else if Not (alltrim(UnitNumField.Text) = '') and (alltrim(UnitNum2Field.Text) = '') then
    Result := Result + ' AND (NFIRSMAIN.UNITNUM = ' + AddExpr(UnitNumField.Text) + ' OR NFIRSMAIN.UNITNUM = ' + AddExpr(UnitNum2Field.Text) + ')';
    
  If      Not (alltrim(RespUnitNumField.Text) = '') and     (alltrim(RespUnitNum2Field.Text) = '') and     (alltrim(RespUnitNum3Field.Text) = '') then
    Result := Result + ' AND (NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNumField.Text) + ')'
  else if Not (alltrim(RespUnitNumField.Text) = '') and Not (alltrim(RespUnitNum2Field.Text) = '') and     (alltrim(RespUnitNum3Field.Text) = '') then
    Result := Result + ' AND (NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNumField.Text) + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNum2Field.Text) + ')'
  else if Not (alltrim(RespUnitNumField.Text) = '') and Not (alltrim(RespUnitNum2Field.Text) = '') and Not (alltrim(RespUnitNum3Field.Text) = '') then
    Result := Result + ' AND (NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNumField.Text) + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNum2Field.Text) + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(RespUnitNum3Field.Text) +')';

  If Not (alltrim(nfirsappdispField.Value) = '') then
    Result := Result + ' AND NFIRSAPP.NFIRSAPPDISPID = ' + nfirsappdispField.Value;

  If Not (alltrim(DispBoxIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.DISPBOXID = ' + DispBoxIDField.Value;

  If Not (alltrim(DispCallTypeIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.DISPCALLTYPEID = ' + DispCallTypeIDField.Value;
  If Not (alltrim(SchdShiftNameIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.SCHDSHIFTNAMEID = ' + SchdShiftNameIDField.Value;
  If Not (alltrim(N5DISTRICTIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.N5DISTRICTID = ' + N5DISTRICTIDField.Value;

  If Not (alltrim(CityField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.CITY = ' + AddExpr(CityField.Value);
  If Not (alltrim(PLastNameField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.PLASTNAME LIKE ' + AddExpr('%' + PLastNameField.Value + '%');

  If Not (alltrim(BoxNumField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.BOXNUM = ' + AddExpr(BoxNumField.Value);
    
  If Not (alltrim(FdidCompIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.FDIDCOMPID = ' + FdidCompIDField.Value;

  If Not (alltrim(NFIRSSS9244Field.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.NFIRSSS9244 = ' + AddExpr(NFIRSSS9244Field.Value);

  if mfireID = '28014' then begin
    If Not (alltrim(F1Lookup.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.GFDRESPONSE = ' + AddExpr(F1Lookup.Value);
  end;

   if mfireID = '35009' then begin
    If Not (alltrim(F1Lookup.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.NONEMERG = ' + AddExpr(F1Lookup.Value);
  end;


  if mfireID = '21012' then begin
    If Not (alltrim(CadCountyField.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.CAD_COUNTY = ' + AddExpr(CadCountyField.Value);
    If Not (alltrim(CadTownField.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.CAD_TOWN = ' + AddExpr(CadTownField.Value);
  end;

  if mfireID = '30050' then begin
    If Not (alltrim(F1Lookup.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.PFDINCTYPE = ' + AddExpr(F1Lookup.Value);
    If Not (alltrim(F2Lookup.Value) = '') then
      Result := Result + ' AND NFIRSMAIN.PFDSERVTYPE = ' + AddExpr(F2Lookup.Value);
    If (alltrim(ExcludeYNField.Value) = 'Y') then
      Result := Result + ' AND NFIRSMAIN.EXCLUDEYN = ' + AddExpr('Y');
    If (alltrim(ExcludeYNField.Value) = 'N') then
      Result := Result + ' AND NFIRSMAIN.EXCLUDEYN <> ' + AddExpr('Y');
  end;



  If Not (FdidString = '') then
    Result := Result + ' AND ' + FdidString;
  If Not (alltrim(DispLocIDField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.DISPLOCID = ' + PKValue(DispLocIDField.Value);
  If Not (alltrim(IncNumField.Value) = '') then
    Result := Result + ' AND NFIRSMAIN.INCNUM = ' + AddExpr(IncNumField.Value);
  If Not (alltrim(DispCallTypeString) = '') then
    Result := Result + DispCallTypeString;
  If Not (alltrim(N5DistrictString) = '') then
    Result := Result + N5DistrictString;
  If Not (alltrim(FixPropString) = '') then
    Result := Result + FixPropString;


  If Not (NfirsCompIDString = '') then
    Result := Result +  ' AND ' + NfirsCompIDString;
end;

function TIncCondForm.GetCondLabel: String;
begin
  If Not (alltrim(IncTypeField.Text) = '') then
    Result := Result + 'Incident Type: ' + IncTypeField.Text + #10#13;
  If Not (alltrim(FixPropField.Text) = '') then
    Result := Result + 'Fixed Property: ' + FixPropField.Text + #10#13;
  If Not (alltrim(EmdCodeField.Text) = '') then
    Result := Result + 'EMD Code: ' + EmdCodeField.Text + #10#13;
  If Not (alltrim(StreetField.Text) = '') then
    Result := Result + 'Street Name: ' + StreetField.Text + #10#13;
  If Not (alltrim(StrNumField.Text) = '') then
    Result := Result + 'Street Number: ' + StrNumField.Text + #10#13;
  If Not (alltrim(MaidField.Text) = '') then
    Result := Result + 'Mutual Aid: ' + MaidField.Text + #10#13;
  If Not (alltrim(MDeptField.Text) = '') then
    Result := Result + 'Mutual Aid Agency: ' + MDeptField.Text + #10#13;
end;

procedure TIncCondForm.StartDateFieldExit(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TIncCondForm.DispCallTypeBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TIncCondForm.NFIRSEQUTYPEBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;

procedure TIncCondForm.EndDateFieldExit(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

Procedure TIncCondForm.LoadFdidBrowse;
Var RowNum : Integer;
begin
  FdidBrowse.clear;
  FdidBrowse.ColCount      := 5;
  FdidBrowse.RowCount      := 0;
  FdidBrowse.ColWidths[00] := 001;
  FdidBrowse.ColWidths[01] := 020;
  FdidBrowse.ColWidths[02] := 100;
  FdidBrowse.ColWidths[03] := 100;
  FdidBrowse.ColWidths[04] := 400;
  RowNum                   := 0;

  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
  While Not A('FDID').Eof do begin
    FdidBrowse.RowCount := FdidBrowse.RowCount + 1;
    FdidBrowse.Cells[0,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.AddCheckBox(1,RowNum,secFdid = tdbfield('FDID','FDID'),false);
    FdidBrowse.Cells[2,RowNum] := Getfield('FDID','FDID').AsString;
    FdidBrowse.Cells[3,RowNum] := Getfield('FDID','ABBREVIATE').AsString;
    FdidBrowse.Cells[4,RowNum] := Getfield('FDID','DEPTNAME').AsString;
    RowNum := RowNum + 1;
    A('FDID').Skip(1);
  end;
  CloseApollo('FDID');

  If ((secFdid = '') or (mFireID = '13000')) then begin
    FdidBrowse.Enabled     := true;
    FdidPanel.Caption.Text := 'Agencies (Leave blank for all)';
  end else begin
    FdidBrowse.Enabled     := false;
    FdidPanel.Caption.Text := 'Agencies ' + '(' + secFdid + ' only)';
  end;
end;

function TIncCondForm.SelectOrder: String;
Begin
  If IncNumSort.Checked then
    result := ' ORDER BY NFIRSMAIN.FDID, NFIRSMAIN.INCNUM';
  If AddressSort.Checked then
    result := ' ORDER BY NFIRSMAIN.STREET, NFIRSMAIN.STRNUM';
  If PLastNameSort.Checked then
    result := ' ORDER BY NFIRSMAIN.PLASTNAME';
  If DateTimeAlarmSort.Checked then
    result := ' ORDER BY NFIRSMAIN.DATETIMEALARM';
  If ElapsedTimeSort.Checked then
    result := ' ORDER BY DISPCALL.DATETIMEREC-NFIRSMAIN.DATETIMEARR DESC';
  If AlmRecSort.Checked then
    result := ' ORDER BY DISPCALL.DATETIMEREC-NFIRSMAIN.DATETIMEALARM DESC';
  If OutAlmSort.Checked then
    result := ' ORDER BY NFIRSMAIN.DATETIMEOUT-NFIRSMAIN.DATETIMEALARM ASC';
  If ArrOutSort.Checked then
    result := ' ORDER BY NFIRSMAIN.DATETIMEARR-NFIRSMAIN.DATETIMEOUT ASC';
end;
function TIncCondForm.SelectOrderString: String;
Begin
  If IncNumSort.Checked then
    result := 'Incident Number'
  else if AddressSort.Checked then
    result := 'Street Name and Number'
  else if PLastNameSort.Checked then
    result := 'Occupant'
  else if DateTimeAlarmSort.Checked then
    result := 'Date of Incident'
  else if ElapsedTimeSort.Checked then
    result := 'Elapsed Time Rec-Arr'
  else if AlmRecSort.Checked then  // bowling green.
    result := 'Elapsed Time Rec-Alm'
  else if OutAlmSort.Checked then
    result := 'Elapsed Time Out-Alm'
  else if ArrOutSort.Checked then
    result := 'Elapsed Time Arr-Out'
  else
    result := IIf(SortPanel.Visible,'Not selected','');
end;


procedure TIncCondForm.StreetFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TIncCondForm.FormShow(Sender: TObject);
begin
  LoadFdidBrowse;
  LoadCustomPanel;
  If DispCallTypePanel.Visible then begin
    LoadDispCallTypeBrowse;
    DispCallTypePanel.Align := alclient;
  end;

  if EQUUSEPANEL.Visible then begin
    LoadNFIRSEQUTYPEBrowse;
    EQUUSEPANEL.Align := alclient;
  end;
  

  if DistrictPanel.Visible then begin
     if mfireID = '28017' then
       DistrictPanel.Caption.Text := 'Select Planning Zone (Leave Blank for All)'
     else
       DistrictPanel.Caption.Text := 'Select District (Leave Blank for All)';

     LoadDistrictBrowse;
  end;

  If FdidCompPanel.Visible then begin
    LoadFDIDCompBrowse;
    FdidCompBrowse.Align := alclient;
  end;
  If FixPropPanel.Visible then begin
    LoadFixPropBrowse;
    FixPropPanel.Align := alclient;
  end;
 
  If InvPanel.Visible then begin
    LoadInvBrowse;
    InvPanel.Align := alclient;
  end;

  If DispcallTypePanel.Visible then begin
    VertScrollBar.Range    := Height + 150;
  end;
 
  If FSysRepManForm<>nil then
    FSysRepManForm.ReLoadSettings;
  VertScrollBar.Position := 0;
end;

procedure TIncCondForm.FormCreate(Sender: TObject);
begin
  FSysRepManForm := TSysRepManForm(GetFormOfType(TSysRepManForm));
  FdidPanel.Visible := MultiFdid;

  if mfireID = '28019' then begin
    EmdCodeField.Visible := true;
    EmdLabel.Visible := true;
   end
  else begin
     EmdCodeField.Visible := false;
    EmdLabel.Visible := false;
  end;

  if mfireID = '28017' then begin
    N5DISTRICTIDLabel.Caption := 'Planning Zone';
    DispBoxIDField.Visible    := False;
    DispBoxIDLabel.Visible    := False;
  end;

  if mfireID = '40070' then begin
    FireLabel.Visible    := true;
    EmsLabel.Visible     := true;
    FireCheckBox.Visible := true;
    EmsCheckBox.Visible  := true;
   end else begin
    FireLabel.Visible    := false;
    EmsLabel.Visible     := false;
    FireCheckBox.Visible := false;
    EmsCheckBox.Visible  := false;
  end;

  if mfireID = '21012' then begin
    CadCountyLabel.Visible      := true;
    CadTownLabel.Visible      := true;
    CadCountyField.Visible    := true;
    CadTownField.Visible      := true;
  end;

  if mFireID = 'B3580' then begin
    ElapsedTimeSort.Visible := true;
    AlmRecSort.Visible := True;
    OutAlmSort.Visible := True;
    ArrOutSort.Visible := True;
  end;


  if mFireID = '21101' then begin
    DateTimeCont3.Visible := False;
    DateTimeCont4.Visible := False;
  end;  


end;

procedure TIncCondForm.LoadFixPropBrowse;
Var
  fixproptable: TApolloData;
begin
  FixPropBrowse.clear;
  fixpropbrowse.FixedRows := 0;
  fixpropbrowse.ColCount := 4;
  fixpropbrowse.RowCount := 0;

  fixpropbrowse.ColWidths[00] := 001;
  fixpropbrowse.ColWidths[01] := 020;
  fixpropbrowse.ColWidths[02] := 100;
  fixpropbrowse.ColWidths[03] := 175;

//  fixpropbrowse.ControlLook.NoDisabledCheckRadioLook := True;

  fixproptable := Open_query(false,'SELECT * FROM N5PROPUSE ORDER BY CODE');
  While Not fixproptable.Eof do begin
    fixpropbrowse.RowCount := fixpropbrowse.RowCount + 1;
    fixpropbrowse.Cells[0,fixpropbrowse.RowCount-1] := Getfield(fixproptable,'CODE').AsString;
    fixpropbrowse.AddCheckBox(1,fixpropbrowse.RowCount-1,false,false);
    fixpropbrowse.Cells[2,fixpropbrowse.RowCount-1] := Getfield(fixproptable,'CODE').AsString;
    fixpropbrowse.Cells[3,fixpropbrowse.RowCount-1] := Getfield(fixproptable,'DESCR').AsString;

    fixproptable.Skip(1);
  end;
  fixproptable.free;
end;

procedure TIncCondForm.N5DistrictBrowseClick(Sender: TObject);
begin
  if FSysRepManForm<>nil then
    FSysRepManForm.EnableSaveButton(Self);
end;



procedure TIncCondForm.LoadDistrictBrowse;
Var
  N5DistrictTable: TApolloData;
begin
  N5DistrictBrowse.clear;
  N5DistrictBrowse.FixedRows := 0;
  N5DistrictBrowse.ColCount := 4;
  N5DistrictBrowse.RowCount := 0;

  N5DistrictBrowse.ColWidths[00] := 001;
  N5DistrictBrowse.ColWidths[01] := 020;
  N5DistrictBrowse.ColWidths[02] := 100;
  N5DistrictBrowse.ColWidths[03] := 175;


  N5DistrictTable := Open_query(false,'SELECT * FROM N5DISTRICT ORDER BY CODE');
  While Not N5DistrictTable.Eof do begin
    N5DistrictBrowse.RowCount := N5DistrictBrowse.RowCount + 1;
    N5DistrictBrowse.Cells[0,N5DistrictBrowse.RowCount-1] := Getfield(N5DistrictTable,'N5DISTRICTID').AsString;
    N5DistrictBrowse.AddCheckBox(1,N5DistrictBrowse.RowCount-1,false,false);
    N5DistrictBrowse.Cells[2,N5DistrictBrowse.RowCount-1] := Getfield(N5DistrictTable,'CODE').AsString;
    N5DistrictBrowse.Cells[3,N5DistrictBrowse.RowCount-1] := Getfield(N5DistrictTable,'DESCR').AsString;

    N5DistrictTable.Skip(1);
  end;
  N5DistrictTable.free;
end;


Procedure TIncCondForm.LoadDispCallTypeBrowse;
Var RowNum : Integer;
begin
  DispCallTypeBrowse.clear;
  DispCallTypeBrowse.ColCount := 6;
  DispCallTypeBrowse.RowCount := 0;

  DispCallTypeBrowse.ColWidths[00] := 001;
  DispCallTypeBrowse.ColWidths[01] := 020;
  DispCallTypeBrowse.ColWidths[02] := 100;
  DispCallTypeBrowse.ColWidths[03] := 175;

  DispCallTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPCALLTYPE',false,'SELECT DISPCALLTYPE.DISPCALLTYPEID, DISPCALLTYPE.CODE, DISPCALLTYPE.DESCR FROM DISPCALLTYPE ' +
                                  'ORDER BY DISPCALLTYPE.DESCR');
  While Not A('DISPCALLTYPE').Eof do begin
    DispCallTypeBrowse.RowCount := DispCallTypeBrowse.RowCount + 1;
    DispCallTypeBrowse.Cells[0,RowNum] := Getfield('DISPCALLTYPE','DISPCALLTYPEID').AsString;
    DispCallTypeBrowse.AddCheckBox(1,RowNum,false,false);
    DispCallTypeBrowse.Cells[2,RowNum] := Getfield('DISPCALLTYPE','CODE').AsString;
    DispCallTypeBrowse.Cells[3,RowNum] := Getfield('DISPCALLTYPE','DESCR').AsString;

    RowNum := RowNum + 1;
    A('DISPCALLTYPE').Skip(1);
  end;
  CloseApollo('DISPCALLTYPE');
end;

Procedure TIncCondForm.LoadNFIRSEQUTYPEBrowse;
Var RowNum : Integer;
begin
  NFIRSEQUTYPEBrowse.clear;
  NFIRSEQUTYPEBrowse.ColCount := 6;
  NFIRSEQUTYPEBrowse.RowCount := 0;

  NFIRSEQUTYPEBrowse.ColWidths[00] := 001;
  NFIRSEQUTYPEBrowse.ColWidths[01] := 020;
  NFIRSEQUTYPEBrowse.ColWidths[02] := 100;
  NFIRSEQUTYPEBrowse.ColWidths[03] := 175;

  NFIRSEQUTYPEBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('NFIRSEQUTYPE',false,'SELECT NFIRSEQUTYPE.NFIRSEQUTYPEID, NFIRSEQUTYPE.CODE, NFIRSEQUTYPE.DESCR FROM NFIRSEQUTYPE ' +
                                  'ORDER BY NFIRSEQUTYPE.DESCR');
  While Not A('NFIRSEQUTYPE').Eof do begin
    NFIRSEQUTYPEBrowse.RowCount := NFIRSEQUTYPEBrowse.RowCount + 1;
    NFIRSEQUTYPEBrowse.Cells[0,RowNum] := Getfield('NFIRSEQUTYPE','NFIRSEQUTYPEID').AsString;
    NFIRSEQUTYPEBrowse.AddCheckBox(1,RowNum,false,false);
    NFIRSEQUTYPEBrowse.Cells[2,RowNum] := Getfield('NFIRSEQUTYPE','CODE').AsString;
    NFIRSEQUTYPEBrowse.Cells[3,RowNum] := Getfield('NFIRSEQUTYPE','DESCR').AsString;

    RowNum := RowNum + 1;
    A('NFIRSEQUTYPE').Skip(1);
  end;
  CloseApollo('NFIRSEQUTYPE');
end;


function TIncCondForm.GetFixPropWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;

begin
  result := '';
  For RowVar := 0 to FixPropBrowse.RowCount-1 do begin
    FixPropBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      result := result + ' OR NFIRSMAIN.FIXPROP = ' + AddExpr(FixPropBrowse.Cells[0,RowVar]);
  end;
  If Not (result = '') then
    result := ' AND (' + alltrim(substr(result,5,Length(result))) + ') ';

end;


function TIncCondForm.GetNFirsEquTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to NFIRSEQUTYPEBrowse.RowCount-1 do begin
    NFIRSEQUTYPEBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
        WhereString := WhereString + ' OR VWNFIRSEQUUSE.NFIRSEQUTYPEID = ' + AddExpr(NFIRSEQUTYPEBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetNFirsEquTypeWhere := WhereString;
end;

function TIncCondForm.GetDispCallTypeWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to DispCallTypeBrowse.RowCount-1 do begin
    DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      if MFireID = '28024' then
        WhereString := WhereString + ' OR NFIRSMAIN.DISPCALLTYPEID = ' + AddExpr(DispCallTypeBrowse.Cells[0,RowVar])
      else
        WhereString := WhereString + ' OR NFIRSMAIN.DISPCALLTYPEID = ' + AddExpr(DispCallTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispCallTypeWhere := WhereString;
end;

function TIncCondForm.GetN5DistrictWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to N5DistrictBrowse.RowCount-1 do begin
    N5DistrictBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSMAIN.N5DISTRICTID = ' + AddExpr(N5DistrictBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetN5DistrictWhere := WhereString;
end;

function TIncCondForm.GetFixPropList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;

begin
  Result := '';
  For RowVar := 0 to FixPropBrowse.RowCount-1 do begin
    FixPropBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      Result := Result + FixPropBrowse.Cells[0,RowVar] + ', ';
  end;
  If At(',',Result) > 0 then
    Result := substr(Result,1,Length(Result)-2)
  else if Result = '' then
    Result := ''
  else
    Result := Result;
end;

function TIncCondForm.GetNfirsEquTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to NFIRSEQUTYPEBrowse.RowCount-1 do begin
    NFIRSEQUTYPEBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + NFIRSEQUTYPEBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else
    Result := RetVal;
end;

function TIncCondForm.GetDispCallTypeList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to DispCallTypeBrowse.RowCount-1 do begin
    DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + DispCallTypeBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Dispatch Call Types'
  else
    Result := RetVal;
end;

function TIncCondForm.GetFdidCompIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  if not FdidCompPanel.Visible then exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSFDIDCOMP.FDIDCOMPID = ' + AddExpr(FdidCompBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetFdidCompIDWhere := WhereString;
end;

function TIncCondForm.GetFdidCompIDStringList: TStringList;
var
  mStringList: TStringList;
  RowVar: Integer;
  CheckValue: Boolean;
begin
  mStringList := TStringList.create;
  if not FdidCompPanel.Visible then exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      mStringList.Add(FdidCompBrowse.Cells[0,RowVar]);
  end;
  result := mStringList;
end;

Procedure TIncCondForm.LoadFDIDCompBrowse;
Var RowNum : Integer;
begin
  FdidCompBrowse.clear;
  FdidCompBrowse.ColCount := 4;
  FdidCompBrowse.RowCount := 0;

  FdidCompBrowse.ColWidths[00] := 001;
  FdidCompBrowse.ColWidths[01] := 020;
  FdidCompBrowse.ColWidths[02] := 100;
  FdidCompBrowse.ColWidths[03] := 200;

  FdidCompBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  If MultiFdid then
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, FDIDCOMP.CODE, FDIDCOMP.DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) ORDER BY FDID.ABBREVIATE, FDIDCOMP.CODE')
  else
    Open_Query('FDIDCOMP',false,'SELECT FDIDCOMPID, FDIDCOMP.CODE, FDIDCOMP.DESCR, FDID.ABBREVIATE FROM FDIDCOMP LEFT JOIN FDID ON (FDIDCOMP.FDID = FDID.FDID) ORDER BY FDIDCOMP.CODE');
    
  While Not A('FDIDCOMP').Eof do begin
    FdidCompBrowse.RowCount := FdidCompBrowse.RowCount + 1;
    FdidCompBrowse.Cells[0,RowNum] := Getfield('FDIDCOMP','FDIDCOMPID').AsString;
    FdidCompBrowse.AddCheckBox(1,RowNum,false,false);
    FdidCompBrowse.Cells[2,RowNum] := tdbfield('FDIDCOMP','CODE');
    If MultiFdid then
      FdidCompBrowse.Cells[3,RowNum] := tdbfield('FDIDCOMP','ABBREVIATE') + '-' + tdbfield('FDIDCOMP','DESCR')
    else
      FdidCompBrowse.Cells[3,RowNum] := tdbfield('FDIDCOMP','DESCR');
    RowNum := RowNum + 1;
    A('FDIDCOMP').Skip(1);
  end;
  CloseApollo('FDIDCOMP');
end;

function TIncCondForm.GetFdidCompList: String;
Var RowVar     : Integer;
    CheckValue : Boolean;
    RetVal     : String;
begin
  RetVal := '';
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      RetVal := RetVal + FdidCompBrowse.Cells[2,RowVar] + ', ';
  end;
  If At(',',RetVal) > 0 then
    Result := substr(RetVal,1,Length(RetVal)-2)
  else if RetVal = '' then
    Result := 'All Companies'
  else
    Result := RetVal;
end;

class procedure TIncCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList    : TStringList;
    ConditionFieldList    : TStringList;
    ConditionLabel        : TQRLabel;
    ConditionField        : TQRLabel;
    Form                  : TForm;
    RowNum                : Integer;
    FdidString            : String;
    StreetString          : String;
    StrNumString          : String;
    IncTypeString         : String;
    FixPropString         : String;
    EmdCodeString         : String;
    CityString            : String;
    DateString            : String;
    DispBoxIDString       : String;
    NfirsAppDispString    : String;
    SchdShiftNameIDString : String;
    MaidString            : String;
    MDeptString           : String;
    UnitNumString         : String;
    RespUnitNumString     : String;
    SortOrdString         : String;
    StartTime             : String;
    EndTime               : String;
    ExpNumString          : String;
    FireString            : String;
    EmsString             : String;
    DispCallTypeString    : String;
    DispCallTypeIDString  : String;
    NfirsCompIDString     : String;
    N5DISTRICTIDString    : String;
    FdidCompIDString      : String;
    NfirsEquTypeString    : String;
    LeftAdjust            : Integer;
begin
  Form                  := GetFormOfType(TIncCondForm);
  DateString            := GetAlpineDateLabel(TIncCondForm(Form).StartDateField.Value,TIncCondForm(Form).EndDateField.Value);
  StartTime             := TIncCondForm(Form).StartTimeField.Text;
  EndTime               := TIncCondForm(Form).EndTimeField.Text;
  FdidString            := TIncCondForm(Form).GetFdidString;
  StreetString          := TIncCondForm(Form).StreetField.Text;
  StrNumString          := TIncCondForm(Form).StrNumField.Text;
  IncTypeString         := TIncCondForm(Form).IncTypeField.Text;
  FixPropString         := TIncCondForm(Form).FixPropField.Text;
  EmdCodeString         := TIncCondForm(Form).EmdCodeField.Text;
  CityString            := TIncCondForm(Form).CityField.Text;
  MaidString            := TIncCondForm(Form).MaidField.Text;
  MDeptString           := TIncCondForm(Form).MDeptField.Text;
  DispBoxIDString       := TIncCondForm(Form).DispBoxIDField.Value;
  NfirsAppDispString    := TIncCondForm(Form).nfirsappdispField.Value; 
  DispCallTypeIDString  := TIncCondForm(Form).DispCallTypeIDField.Value;
  SchdShiftNameIDString := TIncCondForm(Form).SchdShiftNameIDField.Value;
  N5DISTRICTIDString    := TIncCondForm(Form).N5DISTRICTIDField.Value;
  FdidCompIDString      := TIncCondForm(Form).FdidCompIDField.Value;
  UnitNumString         := TIncCondForm(Form).UnitNumField.Text +
                           IIf(TIncCondForm(Form).UnitNum2Field.Text = '','',',') + TIncCondForm(Form).UnitNum2Field.Text;
  RespUnitNumString     := TIncCondForm(Form).RespUnitNumField.Text +
                           IIf(TIncCondForm(Form).RespUnitNum2Field.Text = '','',',') + TIncCondForm(Form).RespUnitNum2Field.Text +
                           IIf(TIncCondForm(Form).RespUnitNum3Field.Text = '','',',') + TIncCondForm(Form).RespUnitNum3Field.Text;
  SortOrdString         := TIncCondForm(Form).SelectOrderString;
  ExpNumString          := IIf(TIncCondForm(Form).ExpNumField.Checked,'Included','');

  If mFireID = '40070' then begin
    FireString            := IIf(TIncCondForm(Form).FireCheckBox.Checked,'Included','');
    EmsString             := IIf(TIncCondForm(Form).EmsCheckBox.Checked,'Included','');
  end;
  DispCallTypeString    := TIncCondForm(Form).GetDispCallTypeList;
  NfirsCompIDString     := TIncCondForm(Form).GetFdidCompList;
  FixPropString         := TIncCondForm(Form).GetFixPropList;
  NfirsEquTypeString    := TIncCondForm(Form).GetNfirsEquTypeList;

  ConditionLabelList    := TStringList.Create;
  ConditionFieldList    := TStringList.Create;

  If Not (DateString = '') then begin
    ConditionLabelList.Add('Date Range:');
    ConditionFieldList.Add(DateString);
  end;

  If (length(alltrim(StartTime)) = 5) and (length(alltrim(EndTime)) = 5) then begin
    ConditionLabelList.Add('Time Period:');
    ConditionFieldList.Add(StartTime + ' - ' + EndTime);
  end;

  If Not (FdidString = '') then begin
    ConditionLabelList.Add('Agency:');
    ConditionFieldList.Add(FdidString);
  end;

  If Not (ExpNumString = '') then begin
    ConditionLabelList.Add('Exposures:');
    ConditionFieldList.Add(ExpNumString);
  end;

  If Not (StreetString = '') then begin
    ConditionLabelList.Add('Street Name:');
    ConditionFieldList.Add(StreetString);
  end;

  If Not (StrNumString = '') then begin
    ConditionLabelList.Add('Street Number:');
    ConditionFieldList.Add(StrNumString);
  end;

  If Not (IncTypeString = '') then begin
    ConditionLabelList.Add('Incident Type:');
    ConditionFieldList.Add(SqlLookUp(IncTypeString,'CODE','N5INCTYPE','DESCR'));
  end;

  If Not (FixPropString = '') then begin
    ConditionLabelList.Add('Fixed Property:');
    ConditionFieldList.Add(SqlLookUp(FixPropString,'CODE','N5PROPUSE','DESCR'));
  end;

  If AnyStrToInt(EmdCodeString) > 0 then begin
    ConditionLabelList.Add('EMD Code:');
    ConditionFieldList.Add(SQLLookUp(EmdCodeString,'CODE','EMDCODE','DESCR'));
  end;

  If Not (DispCallTypeString = '') and TIncCondForm(Form).DispCallTypePanel.Visible then begin
    ConditionLabelList.Add('Dispatch Call Type:');
    ConditionFieldList.Add(DispCallTypeString);
  end;
  If Not (FixPropString = '') and TIncCondForm(Form).FixPropPanel.Visible then begin
    ConditionLabelList.Add('Fixed Property:');
    ConditionFieldList.Add(FixPropString);
  end;

  If Not (NfirsCompIDString = '') and TIncCondForm(Form).FdidCompPanel.Visible then begin
    ConditionLabelList.Add('Company:');
    ConditionFieldList.Add(NfirsCompIDString);
  end;

  If Not (CityString = '') and TIncCondForm(Form).CityField.Visible then begin
    ConditionLabelList.Add('City:');
    ConditionFieldList.Add(CityString);
  end;


  If Not (MaidString = '') then begin
    ConditionLabelList.Add('Mutual Aid:');
    ConditionFieldList.Add(SQLLookUp(MaidString,'CODE','N5MAID','DESCR'));
  end;

  If Not (MDeptString = '') then begin
    ConditionLabelList.Add('Mutual Aid Agency:');
    ConditionFieldList.Add(SQLLookUp(MDeptString,'FDID','FDID','DEPTNAME'));
  end;

  If AnyStrToInt(DispBoxIDString) > 0 then begin
    ConditionLabelList.Add('Box/Zone/Response Code:');
    ConditionFieldList.Add(SQLLookUp(DispBoxIDString,'DISPBOXID','DISPBOX','DESCR'));
  end;

  If AnyStrToInt(NfirsAppDispString) > 0 then begin
    ConditionLabelList.Add('Apparatus Disposition:');
    ConditionFieldList.Add(SQLLookUp(NfirsAppDispString,'NFIRSAPPDISPID','NFIRSAPPDISP','DESCR'));
  end;


  If AnyStrToInt(DispCallTypeIDString) > 0 then begin
    ConditionLabelList.Add('Dispatch Call Type:');
    ConditionFieldList.Add(SQLLookUp(DispCallTypeIDString,'DISPCALLTYPEID','DISPCALLTYPE','DESCR'));
  end;

  If AnyStrToInt(SchdShiftNameIDString) > 0 then begin
    ConditionLabelList.Add('Shift:');
    ConditionFieldList.Add(SQLLookUp(SchdShiftNameIDString,'SCHDSHIFTNAMEID','SCHDSHIFTNAME','DESCR'));
  end;

  If AnyStrToInt(N5DISTRICTIDString) > 0 then begin
    if mfireID = '28017' then
      ConditionLabelList.Add('Planning Zone:')
    else
      ConditionLabelList.Add('District:');
    ConditionFieldList.Add(SQLLookUp(N5DISTRICTIDString,'N5DISTRICTID','N5DISTRICT','DESCR'));
  end;

  If Not (TIncCondForm(Form).BoxNumField.Value = '') then begin
    ConditionLabelList.Add('Box Number:');
    ConditionFieldList.Add(TIncCondForm(Form).BoxNumField.Value);
  end;


  If AnyStrToInt(FdidCompIDString) > 0 then begin
    ConditionLabelList.Add('Station or Company:');
    ConditionFieldList.Add(SQLLookUp(FdidCompIDString,'FDIDCOMPID','FDIDCOMP','CODE'));
  end;

  If Not (UnitNumString = '') then begin
    ConditionLabelList.Add('Primary Unit:');
    ConditionFieldList.Add(UnitNumString);
  end;

  If Not (RespUnitNumString = '') then begin
    ConditionLabelList.Add('Responding Unit(s):');
    ConditionFieldList.Add(RespUnitNumString);
  end;

  If Not (NfirsEquTypeString = '') then begin
    ConditionLabelList.Add('Equipment Type(s):');
    ConditionFieldList.Add(NfirsEquTypeString);
  end;

  If Not (alltrim(TIncCondForm(Form).F1Lookup.Text) = '') then begin
    ConditionLabelList.Add(TIncCondForm(Form).F1CaptionLablel.Caption + ':');
    ConditionFieldList.Add(SQLLookUp(TIncCondForm(Form).F1Lookup.Text,TIncCondForm(Form).F1Lookup.ReferencingField,TIncCondForm(Form).F1Lookup.ReferencingTable,TIncCondForm(Form).F1Lookup.ReturnField));
  end;

  If Not (SortOrdString = '') then begin
    ConditionLabelList.Add('Sorted by:');
    ConditionFieldList.Add(SortOrdString);
  end;

  If BandName.Width > 800 then
    LeftAdjust := 150
  else
    LeftAdjust := 0;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel            := TQRLabel.Create(Application);
    ConditionLabel.AutoSize   := false;
    ConditionLabel.Top        := 2 + (RowNum * 16);
    ConditionLabel.Left       := 300 + LeftAdjust;
    ConditionLabel.Width      := 150;
    ConditionLabel.Parent     := BandName;
    ConditionLabel.Caption    := ConditionLabelList[RowNum];
    ConditionLabel.Alignment  := taRightJustify;
    ConditionLabel.Font.Size  := 8;
    ConditionLabel.Font.Name  := 'MS Sans Serif';
    ConditionLabel.Font.style := [fsbold];
    ConditionLabel.Transparent:= true;

    ConditionField            := TQRLabel.Create(Application);
    ConditionField.AutoSize   := false;
    ConditionField.Top        := 2 + (RowNum * 16);
    ConditionField.Left       := 454 + LeftAdjust;
    ConditionField.Width      := 250;
    ConditionField.Parent     := BandName;
    ConditionField.Caption    := ConditionFieldList[RowNum];
    ConditionField.Alignment  := taLeftJustify;
    ConditionField.Font.Size  := 8;
    ConditionField.Font.Name  := 'MS Sans Serif';
    ConditionField.Font.Style := [];
    ConditionField.Transparent:= true;
  end;
  BandName.Height := IMax(BandName.Height,17 * ConditionFieldList.Count);
end;

function TIncCondForm.GetPersCompIDWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;                          
    WhereString : String;
begin
  WhereString := '';
  if not FdidCompPanel.Visible then exit;
  For RowVar := 0 to FdidCompBrowse.RowCount-1 do begin
    FdidCompBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR PERSCOMP.FDIDCOMPID = ' + FdidCompBrowse.Cells[0,RowVar];
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetPersCompIDWhere := WhereString;
end;

procedure TIncCondForm.LoadCustomPanel();
begin
  if FIREID = '28014' then begin
    IncCustomPanel.Height   := 25;

    F1CaptionLablel.Visible     := true;
    F1CaptionLablel.Caption     := 'Response Type';

    F1Lookup.Visible            := true;
    F1Lookup.DataField          := 'GFDRESPONSE';
    F1Lookup.DisplayField       := 'CODE';
    F1Lookup.ReferencingField   := 'CODE';
    F1Lookup.ReferencingTable   := 'GFDRESPONSE';
    F1Lookup.ReturnField        := 'DESCR';
    F1Lookup.LookupCode         := 'CODEDESCR';

    F2CaptionLablel.Visible     := false;
    F2Lookup.Visible            := false;
  end else if FIREID = '30050' then begin
    IncCustomPanel.Height   := 75;

    F1CaptionLablel.Visible     := true;
    F1CaptionLablel.Caption     := 'PFD Alarm Type';

    F1Lookup.Visible            := true;
    F1Lookup.DataField          := 'PFDINCTYPE';
    F1Lookup.DisplayField       := 'CODE';
    F1Lookup.ReferencingField   := 'CODE';
    F1Lookup.ReferencingTable   := 'PFDINCTYPE';
    F1Lookup.ReturnField        := 'DESCR';
    F1Lookup.LookupCode         := 'CODEDESCR';

    F2CaptionLablel.Visible     := true;
    F2CaptionLablel.Caption     := 'PFD Service Type';

    F2Lookup.Visible            := true;
    F2Lookup.DataField          := 'PFDSERVTYPE';
    F2Lookup.DisplayField       := 'CODE';
    F2Lookup.ReferencingField   := 'CODE';
    F2Lookup.ReferencingTable   := 'PFDSERVTYPE';
    F2Lookup.ReturnField        := 'DESCR';
    F2Lookup.LookupCode         := 'CODEDESCR';
  end else if FIREID = '35009' then begin
    IncCustomPanel.Height   := 75;

    F1CaptionLablel.Visible     := true;
    F1CaptionLablel.Caption     := 'Response Mode';

    F1Lookup.Visible            := true;
    F1Lookup.DataField          := 'NONEMERG';
    F1Lookup.DisplayField       := 'CODE';
    F1Lookup.ReferencingField   := 'CODE';
    F1Lookup.ReferencingTable   := 'REDNMXCODE';
    F1Lookup.ReturnField        := 'DESCR';
    F1Lookup.LookupCode         := 'CODEDESCR';

    F2CaptionLablel.Visible     := false;
    F2Lookup.Visible            := false;
  end else if FIREID = '23082' then begin
    IncCustomPanel.Height   := 75;

    F1CaptionLablel.Visible     := true;
    F1CaptionLablel.Caption     := 'Squad Type';

    F1Lookup.Visible            := true;
    F1Lookup.DataField          := 'SQUAD';
    F1Lookup.DisplayField       := 'CODE';
    F1Lookup.ReferencingField   := 'CODE';
    F1Lookup.ReferencingTable   := 'REDNMXCODE';
    F1Lookup.ReturnField        := 'DESCR';
    F1Lookup.LookupCode         := 'CODEDESCR';

    F2CaptionLablel.Visible     := false;
    F2Lookup.Visible            := false;
  end else if FIREID = '21012' then begin
    IncCustomPanel.Height   := 25;
  end else begin
    IncCustomPanel.Height       := 0;
    F1CaptionLablel.Visible     := false;
    F1Lookup.Visible            := false;
    F2CaptionLablel.Visible     := false;
    F2Lookup.Visible            := false;
  end;
end;

Procedure TIncCondForm.LoadInvBrowse;
Var RowNum : Integer;
begin
  InvBrowse.clear;
  InvBrowse.ColCount := 6;
  InvBrowse.RowCount := 0;

  InvBrowse.ColWidths[00] := 000;
  InvBrowse.ColWidths[01] := 020;
  InvBrowse.ColWidths[02] := 060;
  InvBrowse.ColWidths[03] := 175;
  InvBrowse.ColWidths[04] := 175;
  InvBrowse.ColWidths[05] := 200;

  InvBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('INV',false,'SELECT INV.UNITNUM UNITNUM, INV.FDID FDID, INV.DESCR, INVSUBTYPE.DESCR INVSUBTYPEDESCR FROM INV ' +
                         'LEFT JOIN INVSUBTYPE ON (INV.INVSUBTYPEID = INVSUBTYPE.INVSUBTYPEID) ' +
                         'WHERE INV.INCLUDE = ' + AddExpr('Y') + ' ' +
                         'ORDER BY INV.FDID, INV.UNITNUM');
  While Not A('INV').Eof do begin
    InvBrowse.RowCount := InvBrowse.RowCount + 1;
    InvBrowse.Cells[0,RowNum] := Getfield('INV','UNITNUM').AsString;
    InvBrowse.AddCheckBox(1,RowNum,false,false);
    InvBrowse.Cells[2,RowNum] := Getfield('INV','FDID').AsString;
    InvBrowse.Cells[3,RowNum] := Getfield('INV','UNITNUM').AsString;
    InvBrowse.Cells[4,RowNum] := Getfield('INV','DESCR').AsString;
    InvBrowse.Cells[5,RowNum] := Getfield('INV','INVSUBTYPEDESCR').AsString;
    RowNum := RowNum + 1;
    A('INV').Skip(1);
  end;
  CloseApollo('INV');
end;

function TIncCondForm.GetUnitNumWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSAPP.UNITNUM = ' + AddExpr(alltrim(InvBrowse.Cells[0,RowVar]));
  end;
  If Not (WhereString = '') then
    WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetUnitNumWhere := WhereString;
end;

function TIncCondForm.GetUnitNumString: String;
Var RowVar        : Integer;
    CheckValue    : Boolean;
    UnitNumString : String;
begin
  UnitNumString := '';
  For RowVar := 0 to InvBrowse.RowCount-1 do begin
    InvBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      UnitNumString := UnitNumString + alltrim(InvBrowse.Cells[0,RowVar])+ ', ';
  end;
  If Not (UnitNumString = '') then
    UnitNumString := substr(UnitNumString,1,Length(UnitNumString)-2);
  GetUnitNumString := UnitNumString;
end;

initialization

  RegisterReport(TIncDayChartRepForm,     'INCDAYCHARTREP',     'Chart:  NFIRS by Day of Week',                   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncLossChartRepForm,    'INCLOSSCHARTREP',    'Chart:  NFIRS Losses by Year',                   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TIncManChartRepForm,     'INCMANCHARTREP',     'Chart:  Manpower by Incident Types',             'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncMonthChartRepForm,   'INCMONTHCHARTREP',   'Chart:  NFIRS by Month',                         'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncTypeChartRepForm,    'INCTYPECHARTREP',    'Chart:  Incident Types',                         'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncPropUseChartRepForm, 'INCPROPUSECHARTREP', 'Chart:  Property Use',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncYearChartRepForm,    'INCYEARCHARTREP',    'Chart:  NFIRS by Year',                          'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TIncYearFireEmsRepForm,  'INCYEARFIREEMSREP',  'Chart:  Fire, Rescue and Total by Year',         'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncYearTypeChartRepForm,'INCYEARTYPECHARTREP','Chart:  NFIRS by Type and Year',                 'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','DISPCALLTYPEPANEL']);

  RegisterReport(TIncLogForm,             'INCLOG',             'Incident Log',                                   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL','COMMENTSPANEL','RESPUNITNUMPANEL']);
  RegisterReport(TIncLogAttRepForm,       'INCLOGATTREP',       'Incident Log with Attendance Count',             'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL','COMMENTSPANEL']);
  RegisterReport(TIncLogFemaRepForm,      'INCLOGFEMAREP',      'Incident Log FEMA Friendly Version',             'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL','COMMENTSPANEL']);
  RegisterReport(TSimultaneousCallsForm,  'INCSIMULTANEOUS',    'Simultaneous Calls:  Simple Version',            'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','SORTPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TSimultaneousCalls2Form, 'INCSIMULTANEOUS2',   'Simultaneous Calls:  Complex Version',           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','SORTPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TSimCallWithUnitRepForm, 'SIMCALLWITHUNITREP', 'Simultaneous Calls:  Complex with Units',        'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','SORTPANEL','INVPANEL']);
  RegisterReport(TIncReEvalForm,          'INCREEVAL',          'Unfinished Incidents',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','EXPNUMPANEL','FILTERPANEL','VALIDATORPANEL']);
  RegisterReport(TNFIRSMainRepForm,       'NFIRSMAINREP',       'NFIRS Summary Report',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TNfirsAttRepForm,        'NFIRSATTREP',        'NFIRS Attending Firefighters',                   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TNfirsAttEntryRepForm,   'NFIRSENTRYMETHREP',  'NFIRS Attending Personnel Entry Method',         'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncManRepForm,          'INCMANREP',          'Manpower Analysis by Incident Type',             'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncManAppRepForm,       'INCMANAPPREP',       'Manpower Analysis on Apparatus by Incident Type','INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncManDispBoxRepForm,   'INCMANDISPBOXREP',   'Manpower Analysis by Box or Zone',               'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncNFPARepForm,         'INCNFPAREP',         'NFPA Analysis report',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncNFPAGrantRepForm,    'INCNFPAGRANTREP',    'NFPA Grant Report',                              'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncDOWRepForm,          'INCDOWREP',          'NFIRS by Day of Week',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncMonthRepForm,        'INCMONTHREP',        'NFIRS by Month',                                 'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL']);
  RegisterReport(TIncAppUseRepForm,       'INCAPPUSEREP',       'NFIRS Apparatus Response Count',                 'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncTypeRepForm,         'INCTYPEREP',         'NFIRS Incident Type Summary',                    'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncActTypeRepForm,      'INCACTTYPEREP',      'NFIRS Action Taken Summary',                     'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncFixPropRepForm,      'INCFIXPROPREP',      'NFIRS Fixed Property Summary',                   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncContIgnRepForm,      'INCCONTIGNREP',      'Factor Contributing to Ignition Summary',        'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncMaidRepForm,         'INCMAIDREP',         'NFIRS Mutual Aid Summary',                       'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL''MDEPTPANEL','SORTPANEL']);
  RegisterReport(TNfirsMaidGridRepForm,   'NFIRSMAIDGRIDREP',   'NFIRS Mutual Aid Grid Summary',                  'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncTypeDistRepForm,     'INCTYPEDISTREP',     'NFIRS Incident Type by District',                'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','DISTRICTPANEL']);
  RegisterReport(TIncTimeRepForm,         'INCTIMEREP',         'NFIRS by Time of Day',                           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncManTimeRepForm,      'INCMANTIMEREP',      'NFIRS Manpower by Time of Day',                  'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncMissingRepForm,      'INCMISSINGREP',      'NFIRS Report:  Missing Reports',                 'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncCivRepForm,          'INCCIVREP',          'NFIRS Civilian Reports',                         'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncFireRepForm,         'INCFIREREP',         'NFIRS Firefighter Reports',                      'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL']);
  RegisterReport(TIncFireSpreadRepForm,   'INCFIRESPREADREP',   'NFIRS Structure Fire Spread Summary',            'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FIXPROPPANEL']);
  RegisterReport(TIncTimeRespRepForm,     'INCTIMERESPREP',     'NFIRS Response Time Graph',                      'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','TIMEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL','RESPONSEPANEL']);
  RegisterReport(TIncTimeResp10RepForm,   'INCTIMERESP10REP',   'NFIRS Response Time Graph (10 Sec)',             'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','TIMEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL','DISPPANEL','RESPONSEPANEL']);
  RegisterReport(TIncTimeResp6RepForm,    'INCTIMERESP6REP',    'NFIRS Response Time Graph (6 Sec)',              'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','TIMEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL','DISPPANEL','RESPONSEPANEL','DISPCALLTYPEPANEL']);
  RegisterReport(TIncISOResponseRepForm,  'INCISORESPONSEREP',  'ISO Response Time Report by Selected Time',      'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','TIMEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL','DISPPANEL','RESPONSEPANEL','DISPCALLTYPEPANEL','MINUTESPANEL']);
  RegisterReport(TIncZipRepForm,          'INCZIPREP',          'NFIRS Incidents Zip Code Summary',               'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncCallTypeByMonthForm, 'INCCALLTYPEBYMONTH', 'Dispatch Call Type Summary by Month',            'DISP','INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','RESPUNITNUMPANEL']);
  RegisterReport(THandStatNfirsMainForm,  'INCHANDSTAT',        'Hand/Finger Reader Status',                      'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','SORTPANEL']);
  RegisterReport(TIncDamageRepForm,       'INCDAMAGEREP',       'NFIRS Fire Loss and Damage Report',              'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncTimeHistRepForm,     'INCTIMEHISTREP',     'NFIRS Incident Times Response Summary',          'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncMonthByIncidentForm, 'INCMONBYINC',        'Monthly Totals by Incident Type',                'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncAveAttRepForm,       'INCAVEATTREP',       'Chart:  Average Attendance Graph',               'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TIncDelayedRespForm,     'INCDELAYEDRESP',     'NFIRS Response Time Report by Arrival',          'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','MINUTESPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL']);
  RegisterReport(TIncManMonthRepForm,     'INCMANMONTHREP',     'Table:  Manpower by Month',                      'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL']);
  RegisterReport(TNfirsContIgnRepForm,    'NFIRSCONTIGNREP',    'Factor Contributing to Ignition Listing',        'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDPANEL']);
  RegisterReport(TIncInvUseRepForm,       'INCINVUSEREP',       'NFIRS Equipment Used Count',                     'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','EQUUSEPANEL']);
  RegisterReport(TNfirsEquUseRepForm,     'ALLNFIRSEQUUSEREP',  'NFIRS Equipment Used by NFIRS Report',           'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','SORTPANEL']);
  RegisterReport(TIncCovidLogRepForm,     'INCCOVIDLOG',        'COVID-19 Special Studies Incident Log',          'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL','COMMENTSPANEL','RESPUNITNUMPANEL','COVID19PANEL']);
  RegisterReport(TIncCovidCustomRepForm,  'INCCOVIDCUSTOMREP',  'COVID-19 Special Fields Report',                 'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','FILTERPANEL','INCCUSTOMPANEL','EXPNUMPANEL','SORTPANEL','FDIDCOMPPANEL','COMMENTSPANEL','RESPUNITNUMPANEL']);
  RegisterReport(TIncInvItemRepForm,      'INCINVITEMREP',      'NFIRS Equipment Used List for FEMA Reporting',   'INC', 'INCCOND',        'Alpine Software Corporation',['DATEPANEL','EQUUSEPANEL']);

end.
