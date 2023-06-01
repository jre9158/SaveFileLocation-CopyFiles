unit WorkOrdRep;
 
interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AlpineBaseSummaryReport,
  AppLst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TWorkOrdRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    InvIDField: TQRLabel;
    InvNumLabel: TQRLabel;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    REQDATEField: TQRLabel;
    DescrLabel: TQRLabel;
    WOREQTYPEIDField: TQRLabel;
    QRLabel2: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel1: TQRLabel;
    DESCRField: TQRLabel;
    QRLabel4: TQRLabel;
    REQNARRField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    PrimeInvTypeLabel: TQRLabel;
    WOASSTYPEIDField: TQRLabel;
    QRLabel10: TQRLabel;
    ASSPERSIDField: TQRLabel;
    QRLabel12: TQRLabel;
    ASSDATEField: TQRLabel;
    tqrlabel120: TQRLabel;
    QRLabel15: TQRLabel;
    ASSNARRField: TQRLabel;
    QRLabel19: TQRLabel;
    REQPERSIDField: TQRLabel;
    ChildBand2: TQRChildBand;
    WOSTATUSIDField: TQRLabel;
    QRLabel5: TQRLabel;
    CLOSEPERSIDField: TQRLabel;
    QRLabel16: TQRLabel;
    CLOSEDATEField: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    CLOSENARRField: TQRLabel;
    QRLabel23: TQRLabel;
    PagingBand: TQRChildBand;
    UnitNumLabel: TQRLabel;
    UnitNumField: TQRLabel;
    WorkOrdIDField: TQRLabel;
    WorkOrdNumField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    RolodexDescrField: TQRLabel;
    QRLabel13: TQRLabel;
    InvLocIDField: TQRLabel;
    InvLocIDLabel: TQRLabel;
    NarrBand: TQRChildBand;
    NARRField: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimePageField: TQRLabel;
    QRLabel17: TQRLabel;
    UserNameField: TQRLabel;
    QRLabel22: TQRLabel;
    CompCodeField: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    PageQueueListField: TQRLabel;
    QRLabel29: TQRLabel;
    PageQueueNarrField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PagingBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
    WorkOrd : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override; 
  end;

var
  WorkOrdRepForm: TWorkOrdRepForm;

implementation
uses GenFunc,
     CommonFunc,
//     InvCond,
//     SecSet,
//     SysRepMan,
     CommonVar;

     
{$R *.DFM}

procedure TWorkOrdRepForm.FormCreate(Sender: TObject);
begin
  WorkOrd            := Open_Query(sql);
  BaseReport.DataSet := WorkOrd.DataSource.DataSet;
end;

procedure TWorkOrdRepForm.FormDestroy(Sender: TObject);
begin
  WorkOrd.Free;
end;

procedure TWorkOrdRepForm.PagingBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var PageQueueListVar : String;
begin
  inherited;
  Open_Query('GETPAGEQUEUE',false,'SELECT * FROM PAGEQUEUE WHERE PAGEQUEUEID = ' + pkvalue(GetField(WorkOrd,'PAGEQUEUEID').AsString));
  DateTimePageField.Caption  := FormatDateTime('MM/DD/YYYY  HH:NN',GetField('GETPAGEQUEUE','DATETIMEENT').AsDateTime);
  PageQueueNarrField.Caption := GetField('GETPAGEQUEUE','NARR').AsString;
  CompCodeField.Caption      := GetField('GETPAGEQUEUE','COMPCODE').AsString;
  UserNameField.Caption      := SqlLookup(GetField('GETPAGEQUEUE','SECID').AsString,'SECID','SEC','USERNAME');
  CloseApollo('GETPAGEQUEUE');

  Open_Query('PAGEQUEUELIST',false,'SELECT PAGELIST.DESCR FROM PAGEQUEUELIST ' +
                                   'LEFT JOIN PAGELIST ON (PAGEQUEUELIST.PAGELISTID = PAGELIST.PAGELISTID) ' +
                                   'WHERE PAGEQUEUELIST.PAGEQUEUEID = ' + pkvalue(GetField(WorkOrd,'PAGEQUEUEID').AsString));
  PageQueueListVar := '';
  While Not A('PAGEQUEUELIST').Eof do begin
    PageQueueListVar := PageQueueListVar + tdbfield('PAGEQUEUELIST','DESCR') + ', ';
    A('PAGEQUEUELIST').Skip(1);
  end;
  CloseApollo('PAGEQUEUELIST');
  PageQueueListField.Caption := substr(PageQueueListVar,1,Length(PageQueueListVar) - 2);
end;

procedure TWorkOrdRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FireDeptField.Caption   := mFireDept;
  WorkOrdIDField.Caption  := GetField(WorkOrd,'WORKORDID').AsString;
  WorkOrdNumField.Caption := GetField(WorkOrd,'WORKORDNUM').AsString;
  InvLocIDField.Enabled   := false;
  InvLocIDLabel.Enabled   := false;
  InvLocIDField.Caption   := SqlLookup(GetField(WorkOrd,'INVLOCID').AsString,'INVLOCID','INVLOC','FULLDESCR');

  If not( AllTrim( GetField(WorkOrd,'INVTYPE').AsString ) = '') then
    PrimeInvTypeLabel.Caption :=  GetField(WorkOrd,'INVTYPE').AsString
  else
    PrimeInvTypeLabel.Caption := 'N / A';

  If tdbfield(WorkOrd,'INVTYPE') = 'HYD' then begin
    InvNumLabel.Caption   := 'Hydrant #:';
    InvLocIDField.Enabled := true;
    InvLocIDLabel.Enabled := true;
    Open_Query('HYD',false,'SELECT HYDCODE, LOCATION, STRNUM, STREET, CROSSSTREET, CITY, STATE, ZIP FROM HYD WHERE HYDID = ' + pkValue(GetField(WorkOrd,'HYDID').AsString));
    If A('HYD').RecordsExist then begin
      InvIDField.Caption    := tdbfield('HYD','HYDCODE') + ' - ' + tdbfield('HYD','LOCATION');
      InvLocIDField.Caption := tdbfield('HYD','STRNUM') + ' ' + tdbfield('HYD','STREET');
    end else begin
      InvIDField.Caption    := 'N/A';
      InvLocIDField.Caption := 'N/A';
    end;
    CloseApollo('HYD');

  end else if tdbfield(WorkOrd,'INVTYPE') = 'STATION' then begin
    InvNumLabel.Caption   := 'Station:';
    InvIdField.Caption    := SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','INVNUM')+' - '+SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','DESCR');
    InvLocIDField.Enabled := true;
    InvLocIDLabel.Enabled := true;
  end else if tdbfield(WorkOrd,'INVTYPE') = 'PERS' then begin
    InvNumLabel.Caption   := 'Staff:';
    InvIdField.Caption    := SqlLookup(GetField(WorkOrd,'PERSID').AsString,'PERSID','PERS','PERSCODE')+' - ' + SqlLookup(GetField(WorkOrd,'PERSID').AsString,'PERSID','PERS','FNAME') + ' ' + SqlLookup(GetField(WorkOrd,'PERSID').AsString,'PERSID','PERS','LNAME');
    InvLocIDField.Enabled := false;
    InvLocIDLabel.Enabled := false;
  end else begin
    InvNumLabel.Caption   := 'Inventory #:';
    InvIdField.Caption    := SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','INVNUM')+' - '+SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','DESCR');

    InvLocIDField.Enabled := true;
    InvLocIDLabel.Enabled := true;
    InvLocIDField.Caption := SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','VWINV','INVLOCFULLDESCR');
  end;

  If GetField(WorkOrd,'INVTYPE').AsString = 'TRUCK' then begin
    UnitNumField.Caption := SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','UNITNUM');
    UnitNumField.Enabled := True;
    UnitNumLabel.Enabled := True;
  end else begin
    UnitNumField.Caption := SqlLookup(GetField(WorkOrd,'INVID').AsString,'INVID','INV','UNITNUM');
    UnitNumField.Enabled := false;
    UnitNumLabel.Enabled := false;
  end;

  ReqDateField.Caption        := FormatDateTime('MM/DD/YYYY  HH:NN',GetField(WorkOrd,'REQDATE').AsDateTime);

  If not( AllTrim( GetField(WorkOrd,'WOREQTYPEID').AsString ) = '' ) then
    WOReqTypeIDField.Caption    := SqlLookup( GetField(WorkOrd,'WOREQTYPEID').AsString,'WOREQTYPEID','WOREQTYPE','CODE')+' - '+SqlLookup( GetField(WorkOrd,'WOREQTYPEID').AsString,'WOREQTYPEID','WOREQTYPE','DESCR');
  DescrField.Caption          := GetField(WorkOrd,'DESCR').AsString;
  ReqNarrField.Caption        := GetField(WorkOrd,'REQNARR').AsString;
  If not( AllTrim( GetField(WorkOrd,'REQPERSID').AsString ) = '' ) then
    ReqPersIDField.Caption      := SqlLookup( GetField(WorkOrd,'REQPERSID').AsString,'PERSID','PERS','PERSCODE')+' - '+SqlLookup( GetField(WorkOrd,'REQPERSID').AsString,'PERSID','PERS','FNAME')+' '+SqlLookup( GetField(WorkOrd,'REQPERSID').AsString,'PERSID','PERS','LNAME');

  If not( AllTrim( GetField(WorkOrd,'ASSPERSID').AsString ) = '' ) then
    AssPersIDField.Caption      := SqlLookup( GetField(WorkOrd,'ASSPERSID').AsString,'PERSID','PERS','PERSCODE')+' - '+SqlLookup( GetField(WorkOrd,'ASSPERSID').AsString,'PERSID','PERS','FNAME')+' '+SqlLookup( GetField(WorkOrd,'ASSPERSID').AsString,'PERSID','PERS','LNAME');
  If not( AllTrim( GetField(WorkOrd,'WOASSTYPEID').AsString ) = '' ) then
    WOAssTypeIDField.Caption    := SqlLookup( GetField(WorkOrd,'WOASSTYPEID').AsString,'WOASSTYPEID','WOASSTYPE','CODE')+' - '+SqlLookup( GetField(WorkOrd,'WOASSTYPEID').AsString,'WOASSTYPEID','WOASSTYPE','DESCR');
  AssDateField.Caption        :=  AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'ASSDATE').AsDateTime);

  AssNarrField.Caption        := GetField(WorkOrd,'ASSNARR').AsString;

  If not( AllTrim( GetField(WorkOrd,'WOSTATUSID').AsString ) = '' ) then
    WOStatusIDField.Caption     := SqlLookup( GetField(WorkOrd,'WOSTATUSID').AsString,'WOSTATUSID','WOSTATUS','CODE')+' - '+SqlLookup( GetField(WorkOrd,'WOSTATUSID').AsString,'WOSTATUSID','WOSTATUS','DESCR');
  If not( AllTrim( GetField(WorkOrd,'CLOSEPERSID').AsString ) = '' ) then
    ClosePersIDField.Caption    := SqlLookup( GetField(WorkOrd,'CLOSEPERSID').AsString,'PERSID','PERS','PERSCODE')+' - '+SqlLookup( GetField(WorkOrd,'CLOSEPERSID').AsString,'PERSID','PERS','FNAME')+' '+SqlLookup( GetField(WorkOrd,'CLOSEPERSID').AsString,'PERSID','PERS','LNAME');

  CloseDateField.Caption      := AlpineFormatDateTime(DisplayDateFormat,GetField(WorkOrd,'CLOSEDATE').AsDateTime);
  CloseNarrField.Caption      := GetField(WorkOrd,'CLOSENARR').AsString;
  RolodexDescrField.Caption   := SqlLookUp(GetField(WorkOrd,'ROLODEXID').AsString,'ROLODEXID','ROLODEX','COMPANY');
  NarrField.Caption           := GetField(WorkOrd,'NARR').AsString;
  PagingBand.Enabled          := (GetField(WorkOrd,'PAGEQUEUEID').AsInteger > 0);
end;

function TWorkOrdRepForm.SelectStatement: string;
begin
  result := 'SELECT WORKORD.PERSID, WORKORD.ROLODEXID, WORKORD.WORKORDNUM, WORKORD.WORKORDID, WORKORD.REQDATE, ' +
            'WORKORD.INVID, WORKORD.DESCR, WORKORD.REQNARR, WORKORD.ASSDATE, WORKORD.PAGEQUEUEID, ' +
            'WORKORD.ASSNARR, WORKORD.CLOSEDATE, WORKORD.CLOSENARR, WORKORD.NARR, WORKORD.HYDID, WORKORD.INVLOCID, ' +
            'WORKORD.INVTYPE, WORKORD.WOASSTYPEID,WORKORD.WOREQTYPEID, WORKORD.WOSTATUSID, ' +
            'WORKORD.ASSPERSID, WORKORD.REQPERSID, WORKORD.CLOSEPERSID FROM WORKORD';
end;

function TWorkOrdRepForm.ReportJoins: String;
begin
  result := 'LEFT OUTER JOIN INV          ON (WORKORD.INVID       = INV.INVID) '             +
            'LEFT OUTER JOIN PERS REQPERS ON (WORKORD.REQPERSID   = REQPERS.PERSID) '        +
            'LEFT OUTER JOIN PERS ASSPERS ON (WORKORD.ASSPERSID   = ASSPERS.PERSID) '        +
            'LEFT OUTER JOIN WOREQTYPE    ON (WORKORD.WOREQTYPEID = WOREQTYPE.WOREQTYPEID) ' +
            'LEFT OUTER JOIN ROLODEX      ON (WORKORD.ROLODEXID   = ROLODEX.ROLODEXID) '     +
            'LEFT OUTER JOIN WOSTATUS     ON (WORKORD.WOSTATUSID  = WOSTATUS.WOSTATUSID) ';
end;

end. 
