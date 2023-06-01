unit SchdRoster;

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
  applst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TSchdRosterForm = class(TAlpineBaseSummaryReportForm)
    QRSysData1: TQRSysData;
    SchdLocBand: TQRBand;
    SchdLocDescrField: TQRLabel;
    SchdHistBand: TQRSubDetail;
    NameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    UnitNumField: TQRLabel;
    DateField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    SchdRankCodeField: TQRLabel;
    QRLabel5: TQRLabel;
    SchdTypeDescrField: TQRLabel;
    QRLabel6: TQRLabel;
    ShiftLengthField: TQRLabel;
    QRLabel7: TQRLabel;
    StartTimeField: TQRLabel;
    DLBand: TQRBand;
    QRLabel4: TQRLabel;
    DLNameField: TQRLabel;
    DLSchdRankCodeField: TQRLabel;
    DLSchdTypeDescrField: TQRLabel;
    SchdShiftNameDescrField: TQRLabel;
    DLShiftLengthField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SchdLocBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure DLBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    SchdLoc     : TApolloData;
    SchdHist    : TApolloData;
    DateTimeVar : String;
  public
    { Public declarations }
  end;

var
  SchdRosterForm: TSchdRosterForm;

implementation
uses GenFunc,
     CommonVar,
     SchdMenu;

{$R *.DFM}

procedure TSchdRosterForm.FormCreate(Sender: TObject);
begin
  If SchdMenuForm.FdidField.Value = '' then
    SchdLoc               := Open_Query('SELECT * FROM SCHDLOC ORDER BY DESCR')
  else 
    SchdLoc               := Open_Query('SELECT * FROM SCHDLOC WHERE FDID = ' + AddExpr(SchdMenuForm.FdidField.Value) + ' ORDER BY DESCR');

  SchdHist              := Open_Query('SELECT PERS.LNAME, PERS.FNAME, PERS.MNAME, SCHDHIST.UNITNUM ' +
                                      'FROM SCHDHIST ' +
                                      'LEFT JOIN PERS ON (SCHDHIST.PERSID = PERS.PERSID) ' +
                                      'WHERE 1=2');

  BaseReport.DataSet    := SchdLoc.DataSource.DataSet;
  SchdHistBand.DataSet  := SchdHist.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;

  DateTimeVar           := AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',SchdMenuForm.InitDate.Value));
  DateField.Caption     := 'Roster at ' + FormatDateTime('MM/DD/YYYY HH:NN',SchdMenuForm.InitDate.Value);

  Open_Query('SCHDSHIFTTEMP',false,'SELECT SCHDSHIFTNAME.DESCR SCHDSHIFTNAMEDESCR FROM SCHDSHIFTTEMP ' +
                                   'LEFT JOIN SCHDSHIFT ON (SCHDSHIFTTEMP.SCHDSHIFTID = SCHDSHIFT.SCHDSHIFTID) ' +
                                   'LEFT JOIN SCHDSHIFTNAME ON (SCHDSHIFTTEMP.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
                                   'WHERE DATETIMESTART <= ' + DateTimeVar + ' AND DATETIMEEND >= ' + DateTimeVar + ' AND SCHDSHIFT.DEFAULTDATE = ' + AddExpr('Y'));
  SchdShiftNameDescrField.Caption := 'Current Rotation: ' + tdbfield('SCHDSHIFTTEMP','SCHDSHIFTNAMEDESCR');
  CloseApollo('SCHDSHIFTTEMP');

end;

procedure TSchdRosterForm.FormDestroy(Sender: TObject);
begin
  inherited;
  SchdLoc.Free;
  SchdHist.Free;
end;

procedure TSchdRosterForm.SchdLocBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var mWhere: String;
begin
  inherited;
  SchdLocDescrField.Caption      := tdbfield(SchdLoc,'DESCR');
  if (mFireid = 'PLTFR') and MultiFdid and (Not (secFDID = '')) then
    mWhere := ' AND VWSCHDHIST.PERSFDID = '+AddExpr(SecFDID)+' '
  else
    mWhere := ' ';

  SchdHist.UpdateSQL('SELECT * FROM VWSCHDHIST ' +
                     'WHERE VWSCHDHIST.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',SchdMenuForm.InitDate.Value)) + ' AND ' +
                     'VWSCHDHIST.DATETIMEEND >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',SchdMenuForm.InitDate.Value)) + ' AND ' +
                     'VWSCHDHIST.SCHDLOCID = ' + Getfield(SchdLoc,'SCHDLOCID').AsString + ' AND VWSCHDHIST.ROSTER = ' + AddExpr('Y') + ' ' +
                     mWhere+' '+
                     'ORDER BY VWSCHDHIST.UNITNUM, VWSCHDHIST.RANKORD');

  PrintBand            := (SchdHist.QueryRecCount > 0);
  SchdHistBand.Enabled := (SchdHist.QueryRecCount > 0);
end;

procedure TSchdRosterForm.SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  SchdRankCodeField.Caption  := tdbfield(SchdHist,'SCHDRANKCODE');
  NameField.Caption          := tdbfield(SchdHist,'PERSCODE') + ' - ' + tdbfield(SchdHist,'LNAME') + ', ' + tdbfield(SchdHist,'FNAME');
  UnitNumField.Caption       := tdbfield(SchdHist,'UNITNUM') + ' ' + tdbfield(SchdHist,'NFIRSATTTASKDESCR') ;
  SchdTypeDescrField.Caption := tdbfield(SchdHist,'SCHDTYPEDESCR');
  ShiftLengthField.Caption   := FormatFloat('#0.00',Getfield(SchdHist,'SHIFTLENGTH').AsFloat);
  StartTimeField.Caption     := FormatDateTime('HH:NN',GetField(SchdHist,'DATETIMESTART').AsDateTime);
end;


procedure TSchdRosterForm.DLBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var   mFdidWhere: String;
begin
  inherited;
  if secFDID<>'' then
    mFdidWhere := ' AND VWSCHDHIST.PERSFDID = '+AddExpr(SecFdid)+' '
  else
    mFdidWhere := '';

  SchdHist.UpdateSQL('SELECT * FROM VWSCHDHIST ' +
                     'WHERE VWSCHDHIST.DATETIMESTART <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',SchdMenuForm.InitDate.Value)) + ' AND ' +
                     'VWSCHDHIST.DATETIMEEND >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN',SchdMenuForm.InitDate.Value)) + ' AND ' +
                     '(VWSCHDHIST.ROSTER = ' + AddExpr('N') + ' OR VWSCHDHIST.ROSTER IS NULL) ' + mFdidWhere +
                     'ORDER BY VWSCHDHIST.RANKORD');

  DLNameField         .Caption := '';
  DLSchdRankCodeField .Caption := '';
  DLSchdTypeDescrField.Caption := '';
  DLShiftLengthField  .Caption := '';

  While Not SchdHist.Eof do begin
    DLSchdRankCodeField .Caption := DLSchdRankCodeField .Caption + tdbfield(SchdHist,'SCHDRANKCODE') + #10#13;
    DLNameField         .Caption := DLNameField         .Caption + tdbfield(SchdHist,'LNAME') + ', ' + tdbfield(SchdHist,'FNAME') + #10#13;
    DLSchdTypeDescrField.Caption := DLSchdTypeDescrField.Caption + tdbfield(SchdHist,'SCHDTYPEDESCR') + #10#13;
    DLShiftLengthField  .Caption := DLShiftLengthField  .Caption + FormatFloat('##0.00',GetField(SchdHist,'SHIFTLENGTH').AsFloat) + #10#13;
    SchdHist.Skip(1);
  end;
end;

end. 
