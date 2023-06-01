unit InvServHist;

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
  NormalBase,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  StdCtrls,
  ExtCtrls,
  AdvGlowButton,
  DB,
  AlpineGlowButton,
  AdvPanel,
  ALPINEDATETIME,
  AlpinePanel,
  AlpineMemo,
  AlpineBlockBrowse,
  AlpineBaseSummaryReport,
  AdvGroupBox;

type
  TInvServHistForm = class(TNormalBaseForm)
    AlpinePanel2: TAlpinePanel;
    Panel1: TPanel;
    AlpinePanel1: TAlpinePanel;
    InvServPartBrowse: TAlpineBlockBrowse;
    AlpinePanel5: TAlpinePanel;
    NarrField: TAlpineMemo;
    Label8: TLabel;
    Label2: TLabel;
    TotalCostField: TAlpineEdit;
    PartTotalField: TAlpineEdit;
    RolodexIDField: TAlpineLookup;
    Label13: TLabel;
    Label4: TLabel;
    PersIDField: TAlpineLookup;
    Label6: TLabel;
    InvServStatusIDField: TAlpineLookup;
    Label5: TLabel;
    LaborLengthTotalField: TAlpineEdit;
    Label10: TLabel;
    LaborTotalField: TAlpineEdit;
    TotalCostButton: TAlpineGlowButton;
    Panel2: TPanel;
    AlpinePanel4: TAlpinePanel;
    InvIDLabel: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    DescrField: TAlpineEdit;
    InvIDField: TAlpineLookup;
    InvServTypeIDField: TAlpineLookup;
    DateDoneField: TAlpineDateTime;
    WorkOrdPanel: TAlpinePanel;
    Label11: TLabel;
    WorkOrdIDLabel: TLabel;
    Label12: TLabel;
    RequestLabel: TLabel;
    Label15: TLabel;
    CloseLabel: TLabel;
    InvServFormField: TAlpineEdit;
    Label3: TLabel;
    WorkNumField: TAlpineEdit;
    OOSLabel: TLabel;
    OOSField: TAlpineEdit;
    OtherTotalLabel: TLabel;
    OtherTotalField: TAlpineEdit;
    AdvPanel1: TAdvPanel;
    SpellCheckButton: TAlpineGlowButton;
    ReadingPanel: TPanel;
    MilePanel: TAlpinePanel;
    Label44: TLabel;
    Label45: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    OdometerField: TAlpineEdit;
    HourEngineField: TAlpineEdit;
    HourPumpField: TAlpineEdit;
    HourAerialField: TAlpineEdit;
    UpdateButton: TAlpineGlowButton;
    COdometerField: TAlpineEdit;
    CHourEngineField: TAlpineEdit;
    CHourPumpField: TAlpineEdit;
    CHourAerialField: TAlpineEdit;
    HourPanel: TAlpinePanel;
    Label19: TLabel;
    Label22: TLabel;
    HourField: TAlpineEdit;
    HourButton: TAlpineGlowButton;
    CHourField: TAlpineEdit;
    WorkOrdButton: TAlpineGlowButton;
    WorkOrdIDField: TAlpineLookup;
    procedure InvServTypeIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure TotalCostButtonClick(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure InvServPartBrowseAfterRefresh(Sender: TObject);
    procedure InvIDFieldSuccessfulValidate(Sender: TObject);
    procedure SpellCheckButtonClick(Sender: TObject);
    procedure InvServStatusIDFieldEnter(Sender: TObject);
    procedure WorkOrdButtonClick(Sender: TObject);
    procedure WorkOrdIDFieldChange(Sender: TObject);
  private
    { Private declarations }
    InvServForm : String;
    procedure ShowReadings;
    procedure SetWorkOrdPanel;
  public
    { Public declarations }
    class procedure AppNewRecord(DataSet: TDataSet);
    class procedure InvNewRecord(DataSet: TDataSet);
    class procedure SCBANewRecord(DataSet: TDataSet);
    class procedure StaNewRecord(DataSet: TDataSet);
    procedure InvServPartNewRecord(DataSet: TDataSet);
  end;

var
  InvServHistForm: TInvServHistForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     Inv,
     FormFunc,
     CommonSec,
     InvServPart;
     
{$R *.dfm}
{$I rednmx.inc}

Class procedure TInvServHistForm.AppNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'APPSERV';
  If mFireID = '23239' then
    DataSet.FieldByName('DATEDONE').AsString := FormatDateTime('MM/DD/YYYY HH:NN:SS',Now);
end;

procedure TInvServHistForm.InvIDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  ShowReadings;
end;

Class procedure TInvServHistForm.InvNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'INVSERV';
end;

Class procedure TInvServHistForm.SCBANewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'SCBASERV';
end;

Class procedure TInvServHistForm.StaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'STASERV';
end;

procedure TInvServHistForm.InvServTypeIDFieldEnter(Sender: TObject);
Var InvSubTypeID : String;
    SQLVar       : String;
begin
  inherited;
  InvSubTypeID               := SQLLookUp(InvIDField.Value,'INVID','INV','INVSUBTYPEID');
  SQLVar                     := 'SELECT * FROM INVSERVTYPE WHERE (ACTIVE = ' + AddExpr('Y') + ' OR ACTIVE IS NULL OR ACTIVE = ' + AddExpr('') + ') AND (INVSERVFORM = ' + AddExpr(InvServForm) + ') AND (INVSUBTYPEID = ' + pkValue(InvSubTypeID) + ' OR INVSUBTYPEID IS NULL) ORDER BY DESCR';
  InvServTypeIDField.SqlExpr := SQLVar;
end;

procedure TInvServHistForm.FormCreate(Sender: TObject);
begin
  inherited;
  InvServForm := SqlLookUp(pk,'INVSERVHISTID','INVSERVHIST','INVSERVFORM');
  If substr(InvServForm,1,3) = 'APP' then begin
    InvIDField.DisplayField     := 'UNITNUM';
    InvIDField.LookUpCode       := 'UNITNUM';
    InvIDField.ReferencingTable := 'VWTRUCK';
    ReadingPanel.Visible        := true;
    MilePanel.Visible           := true;
    MilePanel.Align             := alclient;
    InvIDLabel.Caption          := 'Unit#';
  end else if substr(InvServForm,1,4) = 'SCBA' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := false;
    HourPanel.Visible           := false;
    InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('SCBA') + ' ORDER BY INVNUM';
    InvIDLabel.Caption          := 'SCBA#';
  end else if substr(InvServForm,1,4) = 'HOSE' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := false;
    HourPanel.Visible           := false;
    InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('HOSE') + ' ORDER BY INVNUM';
    InvIDLabel.Caption          := 'Hose#';
  end else begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    ReadingPanel.Visible        := (substr(InvServForm,1,3) = 'INV');
    HourPanel.Visible           := (substr(InvServForm,1,3) = 'INV');
    If substr(InvServForm,1,3) = 'STA' then begin
      InvIDLabel.Caption          := 'Station#';
      InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('STATION') + ' ORDER BY INVNUM';
    end else begin
      InvIDField.SQLExpr          := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR, MANUFACT, MODEL FROM VWINV WHERE TYPE = ' + AddExpr('GEN') + ' ORDER BY INVNUM';
      InvIDLabel.Caption          := 'Inventory#';
    end;
  end;

  InvServPartBrowse.Setup('INVSERVPART','INVSERVHISTID',pk,TInvServPartForm,InvServPartNewRecord);

  SetWorkOrdPanel;

  If FIREID = 'MDAMB' then begin
    InvServTypeIDField.CanAddToLookup   := true;
    InvServStatusIDField.CanAddToLookup := true;
  end;

  ViewOnly                := Not TInvForm.CheckInvSecurity(InvServForm);
  TotalCostButton.Enabled := Not ViewOnly;
  UpdateButton   .Enabled := Not ViewOnly;

  If FIREID = '28019' then
    OtherTotalLabel.Caption := 'Shipping Costs';
  If (mFireID = '23239') and (substr(InvServForm,1,3) = 'APP') then

    DateDoneField.enabled  := CheckSecVar('INVSETUP');
  InvIDField          .LookupFormWidth := 350;
  InvServTypeIDField  .LookupFormWidth := 400;
  RolodexIDField      .LookupFormWidth := 350;
  PersIDField         .LookupFormWidth := 213;
  InvServStatusIDField.LookupFormWidth := 213;
  WorkOrdIDField.Width                 := 0;
end;

procedure TInvServHistForm.SetWorkOrdPanel;
begin
  TableInsert('WORKORDLINK',['INVSERVHISTID','WORKORDID'],
                            [pk,             WorkOrdIDField.Value]);

  Open_Query('WORKORDLINK',false,'SELECT WORKORD.REQPERSID, WORKORD.WORKORDID, WORKORD.REQDATE, ' +
                                 'WORKORD.CLOSEPERSID, WORKORD.CLOSEDATE ' +
                                 'FROM WORKORDLINK ' +
                                 'LEFT JOIN WORKORD ON (WORKORDLINK.WORKORDID = WORKORD.WORKORDID) ' +
                                 'WHERE WORKORDLINK.INVSERVHISTID = ' + pk);
  If A('WORKORDLINK').RecordsExist then begin
    WorkOrdIDLabel.Caption := GetField('WORKORDLINK','WORKORDID').AsString;
    RequestLabel.Caption   := SqlLookUp(GetField('WORKORDLINK','REQPERSID').AsString,'PERSID','PERS','LNAME') + #13#10 +
                              GetField('WORKORDLINK','REQDATE').AsString;
    CloseLabel.Caption     := SqlLookUp(GetField('WORKORDLINK','CLOSEPERSID').AsString,'PERSID','PERS','LNAME') + #13#10 +
                              GetField('WORKORDLINK','CLOSEDATE').AsString;
    WorkOrdButton.Visible := false;
    WorkOrdPanel.Visible  := true;
  end else begin
    WorkOrdPanel.Visible  := false;
    WorkOrdButton.Visible := CheckModule('WO');
  end;
  CloseApollo('WORKORDLINK');
end;

procedure TInvServHistForm.InvServPartNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVHISTID').AsString := pk;
  LoadSysFieldDef(mFireID,'INVSERVPART',DataSet);
end;

procedure TInvServHistForm.InvServStatusIDFieldEnter(Sender: TObject);
Var SQLStat : String;
begin
  inherited;
  SQLStat := SQLLookUp(InvServTypeIDField.Value,'INVSERVTYPEID','INVSERVTYPE','SQLSTAT');
  If SQLStat = '' then
    InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE INVSERVFORMLIST = ' + AddExpr('') + ' OR INVSERVFORMLIST IS NULL OR INVSERVFORMLIST LIKE ' + AddExpr('%' + InvServForm + '%')
  else
    InvServStatusIDField.SqlExpr := 'SELECT * FROM INVSERVSTATUS WHERE ' + SQLStat;
end;

procedure TInvServHistForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.LookupFormWidth := 400;
  PersIDField.LookUpCode      := IIf(at('PERSCODE',GlobalPersSort) > 0,'PERSBYPERSCODE','PERS');
  PersIDField.SqlExpr         := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + 'ORDER BY ' + GlobalPersSort;
end;

procedure TInvServHistForm.TotalCostButtonClick(Sender: TObject);
Var PartTotal        : Real;
    LaborLengthTotal : Real;
    LaborTotal       : Real;
    ShippingTotal    : Real;
begin
  inherited;
  PartTotal        := 0;
  LaborLengthTotal := 0;
  LaborTotal       := 0;
  ShippingTotal    := 0;

  Open_Query('INVSERVPART',false,'SELECT INVSERVPART.PARTSUBTOTAL, INVSERVPART.LABORLENGTH, INVSERVPART.LABORSUBTOTAL, INVSERVPART.SHIPPING ' +
             'FROM INVSERVPART LEFT JOIN INVSERVHIST ON (INVSERVPART.INVSERVHISTID=INVSERVHIST.INVSERVHISTID) ' +
             'WHERE INVSERVPART.INVSERVHISTID = ' + PkValue(PK));
  While Not A('INVSERVPART').Eof do begin
    PartTotal        := PartTotal        + GetField('INVSERVPART','PARTSUBTOTAL').AsFloat;
    LaborLengthTotal := LaborLengthTotal + GetField('INVSERVPART','LABORLENGTH').AsFloat;
    LaborTotal       := LaborTotal       + GetField('INVSERVPART','LABORSUBTOTAL').AsFloat;
    ShippingTotal    := ShippingTotal    + GetField('INVSERVPART','SHIPPING').AsFloat;
    A('INVSERVPART').Skip(1);
  end;
  CloseApollo('INVSERVPART');

  If BooleanMessageDlg('Update Total Cost in Service Entry Record?') then begin
    OtherTotalField.Value       := FormatFloat('#####0.00',ShippingTotal); 
    PartTotalField.Value        := FormatFloat('#####0.00',PartTotal);
    LaborLengthTotalField.Value := FormatFloat('#####0.00',LaborLengthTotal);
    LaborTotalField.Value       := FormatFloat('#####0.00',LaborTotal);

    TotalCostField.Value        := FormatFloat('#####0.00', PartTotal + LaborTotal + ShippingTotal);
    SaveButton.Enabled          := true;
  end;  
end;

procedure TInvServHistForm.UpdateButtonClick(Sender: TObject);
begin
  inherited;
  TInvForm.UpdateReader(InvIDField.Value, OdometerField.Value, HourPumpField.Value, HourEngineField.Value, HourAerialField.Value);
  ShowReadings;
end;

procedure TInvServHistForm.WorkOrdButtonClick(Sender: TObject);
begin
  inherited;
  WorkOrdIDField.SQLExpr := 'SELECT WORKORD.WORKORDID, WORKORD.REQDATE, INV.UNITNUM, WOREQTYPE.DESCR WOREQTYPEDESCR, WORKORD.DESCR ' +
                            'FROM WORKORD ' +
                            'LEFT JOIN INV       ON (WORKORD.INVID       = INV.INVID) ' +
                            'LEFT JOIN WOREQTYPE ON (WORKORD.WOREQTYPEID = WOREQTYPE.WOREQTYPEID) ' +
                            'WHERE WORKORD.INVID = ' + pkValue(InvIDField.Value) + ' AND ' + BuildSQLAlpineDate('WORKORD.REQDATE',DateDoneField.Value-180,Now + 1) + ' ' +
                            'ORDER BY WORKORD.REQDATE DESC';
  WorkOrdIDField.DoLookup(self,false);
end;

procedure TInvServHistForm.WorkOrdIDFieldChange(Sender: TObject);
begin
  inherited;
  SetWorkOrdPanel;
  ShowMessage('Service History has been attached to the Work Order'); 
end;

procedure TInvServHistForm.FormShow(Sender: TObject);
begin
  inherited;
  InvIDField.Enabled               := (InvIDField.Value = '') or CheckSecVar('INVSETUP');
  SaveButton.Enabled               := false;
  InvServPartBrowse.OnAfterRefresh := InvServPartBrowseAfterRefresh;
  ShowReadings;
end;

procedure TInvServHistForm.ShowReadings;
begin
  Open_Query('GETINV',false,'SELECT ODOMETER, HOURENGINE, HOURPUMP, HOURAERIAL FROM INV WHERE INVID = ' + pkValue(InvIDField.Value));
  COdometerField  .Value   := GetField('GETINV','ODOMETER').AsString;
  CHourEngineField.Value   := GetField('GETINV','HOURENGINE').AsString;
  CHourPumpField  .Value   := GetField('GETINV','HOURPUMP').AsString;
  CHourAerialField.Value   := GetField('GETINV','HOURAERIAL').AsString;
  CloseApollo('GETINV');

  COdometerField  .Enabled := false;
  CHourEngineField.Enabled := false;
  CHourPumpField  .Enabled := false;
  CHourAerialField.Enabled := false;
end;

procedure TInvServHistForm.SpellCheckButtonClick(Sender: TObject);
begin
  inherited;
  SpellCheck(NarrField); 
end;

procedure TInvServHistForm.InvServPartBrowseAfterRefresh(Sender: TObject);
begin
  inherited;
  TotalCostButtonClick(self);
end;
 
end. 
