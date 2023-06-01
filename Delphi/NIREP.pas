unit NIRep;
 
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
  AppLst,
  AlpineBaseSummaryReport,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TNIRepForm = class(TAlpineBaseSummaryReportForm)
    NIBand: TQRBand;
    NIAttBand: TQRSubDetail;
    NIHeader: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel3: TQRLabel;
    NameField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel4: TQRLabel;
    DateTimeStartField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    DescrField: TQRLabel;
    DateTimeEndField: TQRLabel;
    QRLabel5: TQRLabel;
    QRShape1: TQRShape;
    QRLabel8: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel9: TQRLabel;
    NIAttEvLengthField: TQRLabel;
    QRLabel11: TQRLabel;
    PersPointTypeDescrField: TQRLabel;
    QRLabel12: TQRLabel;
    NIAttPointField: TQRLabel;
    QRLabel13: TQRLabel;
    LosapBand: TQRChildBand;
    QRLabel15: TQRLabel;
    TypeField: TQRLabel;
    QRLabel16: TQRLabel;
    EvLengthField: TQRLabel;
    NIIDField: TQRLabel;
    QRLabel17: TQRLabel;
    LocationDescrField: TQRLabel;
    NIFooter: TQRBand;
    QRLabel19: TQRLabel;
    NIAttEvLengthTotField: TQRLabel;
    NIAttEvTotField: TQRLabel;
    QRLabel18: TQRLabel;
    UserBand: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRLabel2: TQRLabel;
    NILosapCatField: TQRLabel;
    QRLabel7: TQRLabel;
    PointField: TQRLabel;
    User1Label: TQRLabel;
    User1Field: TQRLabel;
    User2Label: TQRLabel;
    User2Field: TQRLabel;
    User3Label: TQRLabel;
    User3Field: TQRLabel;
    User4Label: TQRLabel;
    User4Field: TQRLabel;
    QRLabel14: TQRLabel;
    NarrField: TQRLabel;
    NIPersInvHeader: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    NIPersInvBand: TQRSubDetail;
    NIPersInvNameField: TQRLabel;
    NIPersInvPersCodeField: TQRLabel;
    NIPersInvTypeDescrField: TQRLabel;
    QRLabel23: TQRLabel;
    NIEVHeader: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    NIEVBand: TQRSubDetail;
    NIEVDescrField: TQRLabel;
    NITrainCat1DescrField: TQRLabel;
    NIEVDateTimeStartField: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    NIEVDateTimeEndField: TQRLabel;
    NIEVEvLength: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    EntryLabel: TQRLabel;
    DateTimeEntryLabel: TQRLabel;
    entrymethlabel: TQRLabel;
    entrycomplabel: TQRLabel;
    DATETIMEENTRYField: TQRLabel;
    entrymethfield: TQRLabel;
    entrycompField: TQRLabel;
    QRLabel33: TQRLabel;
    LoginCodeField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NIATTBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure NIFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NIPersInvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NIEVBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NITable             : TApolloData;
    NIAttTable          : TApolloData;
    NIPersInvTAble      : TApolloData;
    NIEVTable           : TApolloData;
    VWNIFieldTable      : TApolloData;
    NIAttEvLengthTotVar : Real;
    NIAttEvTotVar       : Real;
    SortOrder           : String;
    function GetUserLabel(FdidVar, NIPTypeID, FieldName: String): String;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  NIRepForm: TNIRepForm;

implementation
uses GenFunc,secset,commonvar,commonfunc,formfunc;
{$R *.DFM}

procedure TNIRepForm.FormCreate(Sender: TObject);
begin
  NITable               := Open_Query(Sql);
  NIAttTable            := Open_Query('SELECT * FROM NIATT WHERE NIID = -1');
  NIPersInvTable        := Open_Query('SELECT * FROM NIPERSINV WHERE NIID = -1');
  NIEVTable             := Open_Query('SELECT * FROM NIEV WHERE NIID = -1');
  VWNIFieldTable        := Open_Query('SELECT * FROM VWNIFIELD WHERE 1=2');
  BaseReport.DataSet    := NITable.DataSource.DataSet;
  NIAttBand.DataSet     := NIAttTable.DataSource.DataSet;
  NIPersInvBand.DataSet := NIPersInvTable.DataSource.DataSet;
  NIEVBand.DataSet      := NIEVTable.DataSource.DataSet;
  LosapBand.Enabled     := CheckModule('LOSAP');

  {$ifdef REDNMX}
  If (mFireid<>'') and (BooleanMessageDlg('Sort by Personnel ID')) then
    SortOrder := ' ORDER BY PERS.PERSCODE'
  else
    SortOrder := ' ORDER BY PERS.LNAME, PERS.FNAME';
  {$else}
    SortOrder := ' ORDER BY PERS.LNAME, PERS.FNAME';
  {$endif}  

  EntryLabel.Enabled         := (CheckModule('FINGER') or CheckModule('KEY') or CheckModule('HAND'));
  DateTimeEntryLabel.Enabled := EntryLabel.Enabled;
  entrymethlabel.Enabled     := EntryLabel.Enabled;
  entrycomplabel.Enabled     := EntryLabel.Enabled;
  DATETIMEENTRYField.Enabled := EntryLabel.Enabled;
  entrymethfield.Enabled     := EntryLabel.Enabled;
  entrycompField.Enabled     := EntryLabel.Enabled;
end;

procedure TNIRepForm.FormDestroy(Sender: TObject);
begin
  NITable.Free;
  NIAttBand.Free;
  NIPersInvTable.Free;
  NIEVTable.Free;
  VWNIFieldTable.Free;
end;

function TNIRepForm.SelectStatement: string;
begin
  result := 'SELECT NI.NIPTYPEID, NI.NARR, NI.FDID, NI.NIID, NI.DATETIMESTART, NI.DATETIMEEND, NI.DESCR, NI.NILOSAPCATID, NI.POINT, NI.EVLENGTH, ' +
            'NIPTYPE.DESCR NIPTYPEDESCR, NISTYPE.DESCR NISTYPEDESCR, NILOSAPCAT.DESCR NILOSAPCATDESCR, LOCATION.DESCR LOCATIONDESCR, ' + 
            'NI.NIUSER1ID,  NI.NIUSER2ID, NI.NIUSER3ID, NI.NIUSER4ID ' +
            'FROM NI ' +
            'LEFT JOIN NIPTYPE    ON (NI.NIPTYPEID    = NIPTYPE.NIPTYPEID) ' +
            'LEFT JOIN LOCATION   ON (NI.LOCATIONID   = LOCATION.LOCATIONID) ' +
            'LEFT JOIN NILOSAPCAT ON (NI.NILOSAPCATID = NILOSAPCAT.NILOSAPCATID) ' +
            'LEFT JOIN NISTYPE    ON (NI.NISTYPEID    = NISTYPE.NISTYPEID) ';
end;

procedure TNIRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  FireDeptField.Caption      := SQLLookUp(GetField(NITable,'FDID').AsString,'FDID','FDID','DEPTNAME');
  NIIDField.Caption          := 'Reference# ' + GetField(NITable,'NIID').AsString;
  DateTimeStartField.Caption := GetField(NITable,'DATETIMESTART').AsString;
  DateTimeEndField.Caption   := GetField(NITable,'DATETIMEEND').AsString;
  EvLengthField.Caption      := FormatFloat('##0.00',GetField(NITable,'EVLENGTH').AsFloat);
  LocationDescrField.Caption := GetField(NITable,'LOCATIONDESCR').AsString;

  TypeField.Caption          := tdbfield(NITable,'NIPTYPEDESCR') + ', ' + tdbfield(NITable,'NISTYPEDESCR');
  DescrField.Caption         := GetField(NITable,'DESCR').AsString;
  NILosapCatField.Caption    := GetField(NITable,'NILOSAPCATDESCR').AsString;
  PointField.Caption         := FormatFloat('#,##0.00',GetField(NITable,'POINT').AsFloat);
  NarrField.Caption          := GetField(NITable,'NARR').AsString;

  VWNIFieldTable.UpdateSQL('SELECT * FROM VWNIFIELD WHERE NIPTYPEID = ' + pkValue(Getfield(NITable,'NIPTYPEID').AsString));

  
  NIAttTable.UpdateSQL('SELECT PERS.PERSCODE, PERS.LNAME, PERS.FNAME, SEC.USERNAME, SEC.LOGINCODE, ' +
                       'NIATT.POINT, NIATT.EVLENGTH, NIATT.DATETIMEENTRY,NIATT.ENTRYCOMP,NIATT.ENTRYMETH,PERSPOINTTYPE.DESCR PERSPOINTTYPEDESCR ' +
                       'FROM NIATT ' +
                       'LEFT JOIN PERS ON (NIATT.PERSID = PERS.PERSID) ' +
                       'LEFT JOIN PERSPOINTTYPE ON (NIATT.PERSPOINTTYPEID = PERSPOINTTYPE.PERSPOINTTYPEID) ' +
                       'LEFT JOIN SEC ON (NIATT.ENTRYSECID = SEC.SECID) ' +
                       'WHERE NIATT.NIID = ' + pkValue(GetField(NITable,'NIID').AsString) + SortOrder);

  NIPersInvTable.UpdateSQL('SELECT NIPERSINV.NAME, PERS.PERSCODE, PERS.LNAME, PERS.FNAME, NIPERSINVTYPE.DESCR  NIPERSINVTYPEDESCR ' +
                           'FROM NIPERSINV ' +
                           'LEFT JOIN PERS ON (NIPERSINV.PERSID = PERS.PERSID) ' +
                           'LEFT JOIN NIPERSINVTYPE ON (NIPERSINV.NIPERSINVTYPEID = NIPERSINVTYPE.NIPERSINVTYPEID) ' +
                           'WHERE NIPERSINV.NIID = ' + pkValue(GetField(NITable,'NIID').AsString) + ' ORDER BY PERS.LNAME');

  NIEvTable.UpdateSQL('SELECT NITRAINCAT1.DESCR NITRAINCAT1DESCR, NIEV.DATETIMESTART, NIEV.DATETIMEEND, NIEV.DESCR NIEVDESCR, NIEV.EVLENGTH ' +
                      'FROM NIEV ' +
                      'LEFT JOIN NITRAINCAT1 ON (NIEV.NITRAINCAT1ID = NITRAINCAT1.NITRAINCAT1ID) ' +
                      'WHERE NIEV.NIID = ' + pkValue(GetField(NITable,'NIID').AsString) + ' ORDER BY NIEV.DATETIMESTART');

  User1Label.Caption         := GetUserLabel(tdbfield(NITable,'FDID'), Getfield(NITable,'NIPTYPEID').AsString, 'USER1');
  User2Label.Caption         := GetUserLabel(tdbfield(NITable,'FDID'), Getfield(NITable,'NIPTYPEID').AsString, 'USER2');
  User3Label.Caption         := GetUserLabel(tdbfield(NITable,'FDID'), Getfield(NITable,'NIPTYPEID').AsString, 'USER3');
  User4Label.Caption         := GetUserLabel(tdbfield(NITable,'FDID'), Getfield(NITable,'NIPTYPEID').AsString, 'USER4');

  User1Field.Caption         := SQLLookUp(Getfield(NITable,'NIUSER1ID').AsString, 'NIUSER1ID', 'NIUSER1', 'DESCR');
  User2Field.Caption         := SQLLookUp(Getfield(NITable,'NIUSER2ID').AsString, 'NIUSER2ID', 'NIUSER2', 'DESCR');
  User3Field.Caption         := SQLLookUp(Getfield(NITable,'NIUSER3ID').AsString, 'NIUSER3ID', 'NIUSER3', 'DESCR');
  User4Field.Caption         := SQLLookUp(Getfield(NITable,'NIUSER4ID').AsString, 'NIUSER4ID', 'NIUSER4', 'DESCR');

  NIAttEvLengthTotVar        := 0;
  NIAttEvTotVar              := 0;  
end;

function TNIRepForm.GetUserLabel(FdidVar, NIPTypeID, FieldName: String): String;
begin
  If VWNIFieldTable.ExactQueryLocate(['FDID','NIPTYPEID','COMPNAME'],[FdidVar, NIPTypeID, FieldName]) then begin
    GetUserLabel     := tdbfield(VWNIFieldTable,'NEWLABEL');
    UserBand.Enabled := true;
  end else
    GetUserLabel     := '';
end;

procedure TNIRepForm.NIATTBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PersCodeField.Caption           := tdbfield(NIAttTable,'PERSCODE');
  NameField.Caption               := tdbfield(NIAttTable,'LNAME') + ', ' + tdbfield(NIAttTable,'FNAME');
  NIAttEvLengthField.Caption      := FormatFloat('##0.00',GetField(NIAttTable,'EVLENGTH').AsFloat);
  PersPointTypeDescrField.Caption := tdbfield(NIAttTable,'PERSPOINTTYPEDESCR');
  NIAttPointField.Caption         := FormatFloat('##0.00',GetField(NIAttTable,'POINT').AsFloat);
  NIAttEvLengthTotVar             := NIAttEvLengthTotVar + GetField(NIAttTable,'EVLENGTH').AsFloat;
  LoginCodeField.Caption          := tdbField(NIAttTable,'LOGINCODE');
  DateTimeEntryField.Caption      := AlpineFormatDateTime('mm/dd/yyyy hh:nn',GetField(NIAttTable,'DATETIMEENTRY').AsDateTime);
  entrymethfield.Caption          := tdbField(NIAttTable,'ENTRYMETH');
  entrycompfield.Caption          := tdbField(NIAttTable,'ENTRYCOMP');
  NIAttEvTotVar                   := NIAttEvTotvar       + 1;
end;

procedure TNIRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  NIAttEvLengthTotVar := 0;
  NIAttEvTotVar       := 0;
end;

procedure TNIRepForm.NIFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NIAttEvLengthTotField.Caption := FormatFloat('##0.00',NIAttEvLengthTotVar);
  NIAttEvTotField.Caption       := FormatFloat('##0',NIAttEvTotVar);
end;

procedure TNIRepForm.NIPersInvBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NIPersInvPersCodeField.Caption := tdbfield(NIPersInvTable,'PERSCODE');
  NIPersInvNameField.Caption     := alltrim(tdbfield(NIPersInvTable,'FNAME') + ' ' + tdbfield(NIPersInvTable,'LNAME') + ' ' + tdbfield(NIPersInvTable,'NAME'));
  NIPersInvTypeDescrField.Caption:= tdbfield(NIPersInvTable,'NIPERSINVTYPEDESCR');
end;

procedure TNIRepForm.NIEVBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NITrainCat1DescrField.Caption  := tdbfield(NIEVTable,'NITRAINCAT1DESCR');
  NIEVDescrField.Caption         := tdbfield(NIEVTable,'NIEVDESCR');
  NIEVDateTimeStartField.Caption := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(NIEVTable,'DATETIMESTART').AsDateTime);
  NIEVDateTimeEndField.Caption   := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(NIEVTable,'DATETIMEEND').AsDateTime);
  NIEVEvLength.Caption           := FormatFloat('##0.00',GetField(NIEVTable,'EVLENGTH').AsFloat);
end;

end.
