unit PersVoteBallotRep;

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
  jpeg,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPersVoteBallotRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    PersVoteBallotBand: TQRSubDetail;
    QRLabel4: TQRLabel;
    persvoteballotdescrfield: TQRLabel;
    PERSVOTEBALLOTPERSBand: TQRSubDetail;
    PERSVOTEBALLOTPERSName: TQRLabel;
    PERSVOTEBALLOTPERSWriteInBand: TQRSubDetail;
    PERSVOTEBALLOTPERSWIName: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel9: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    FireDeptField: TQRLabel;
    DescrField: TQRLabel;
    DateTimeEndField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimeStartField: TQRLabel;
    ChildBand1: TQRChildBand;
    TestEventBand: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersVoteBallotBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PERSVOTEBALLOTPERSBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PERSVOTEBALLOTPERSWriteInBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure PersBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
    VoteNum                 : Integer;
    PersVoteEventTable      : TApolloData;
    PersVoteBallotTable     : TApolloData;
    PersVoteBallotPersTable : TApolloData;
    PersVoteBallotPersWITable : TApolloData;
    PersVoteHistTable       : TApolloData;
    PersVoteHistDetailTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  PersVoteBallotRepForm: TPersVoteBallotRepForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     FormFunc,
     SecSet,
     SortGridView;

{$R *.DFM}

procedure TPersVoteBallotRepForm.FormCreate(Sender: TObject);
begin
  FireDeptField.Caption      := mFireDept;
  PersVoteEventTable         := Open_Query(sql);

  BaseReport.DataSet         := PersVoteEventTable.DataSource.DataSet;

  PersVoteBallotTable         := Open_Query('SELECT * FROM PERSVOTEBALLOT WHERE 1=2');
  PersVoteBallotPersTable     := Open_Query('SELECT * FROM PERSVOTEBALLOTPERS WHERE 1=2');
  PersVoteBallotPersWITable   := Open_Query('SELECT * FROM PERSVOTEBALLOTPERS WHERE 1=2');

  if GetField(PersVoteEventTable,'TESTEVENT').AsString = 'Y' then
    TestEventBand.Enabled := True
  else begin
    {if GetField(PersVoteEventTable,'DATETIMESTART').AsDateTime < Now then begin
      ShowMessage('Can not print ballot after election started.');
      PersBand.Enabled := False;
      Exit;
    end;}
  end;

  PersVoteBallotBand.DataSet            := PersVoteBallotTable.DataSource.DataSet;
  PERSVOTEBALLOTPERSBand.DataSet        := PersVoteBallotPersTable.DataSource.DataSet;
  PERSVOTEBALLOTPERSWriteInBand.DataSet := PersVoteBallotPersWITable.DataSource.DataSet;

end;

procedure TPersVoteBallotRepForm.FormDestroy(Sender: TObject);
begin
  PersVoteEventTable.Free;
  PersVoteBallotTable.Free;
  PersVoteBallotPersTable.Free;
  PersVoteBallotPersWITable.Free;
end;

procedure TPersVoteBallotRepForm.PersBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var TotalVoters: Integer;
begin
  inherited;
  PrintBand := True;
  TotalVoters := 0;
  VoteNum     := 0;
  DESCRField.Caption             := GetField(PersVoteEventTable,'DESCR').AsString;

  DateTimeStartField.Caption     := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(PersVoteEventTable,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption       := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(PersVoteEventTable,'DATETIMEEND').AsDateTime);

  PersVoteBallotTable.UpdateSQL('SELECT * FROM PERSVOTEBALLOT WHERE PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                           ' ORDER BY SORTORD');

end;

procedure TPersVoteBallotRepForm.PersVoteBallotBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  persvoteballotdescrfield.Caption := GetField(PersVoteBallotTable,'DESCR').AsString;

  PersVoteBallotPersTable.UpdateSQL('SELECT PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE ' +
                                    ' FROM PERSVOTEBALLOTPERS ' +
                                    ' LEFT JOIN PERS ON (PERS.PERSID = PERSVOTEBALLOTPERS.PERSID) ' +
                                    ' WHERE PERSVOTEBALLOTID = ' + AddExpr(GetField(PersVoteBallotTable,'PERSVOTEBALLOTID').AsString) +
                                    ' AND (PERSVOTEBALLOTPERS.WRITEIN <> ' + AddExpr('Y') + ' OR PERSVOTEBALLOTPERS.WRITEIN IS NULL)  ' +
                                    ' ORDER BY PERS.LNAME, PERS.FNAME');

  PersVoteBallotPersWITable.UpdateSQL('SELECT PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID ' +
                                    ' FROM PERSVOTEBALLOTPERS ' +
                                    ' WHERE PERSVOTEBALLOTID = ' + AddExpr(GetField(PersVoteBallotTable,'PERSVOTEBALLOTID').AsString) +
                                    ' AND PERSVOTEBALLOTPERS.WRITEIN = ' + AddExpr('Y'));


end;

procedure TPersVoteBallotRepForm.PERSVOTEBALLOTPERSBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PERSVOTEBALLOTPERSName.Caption  := GetField(PersVoteBallotPersTable,'FNAME').AsString + ' ' +
                                     GetField(PersVoteBallotPersTable,'LNAME').AsString + ' (' +
                                     GetField(PersVoteBallotPersTable,'PERSCODE').AsString + ')';
end;

procedure TPersVoteBallotRepForm.PERSVOTEBALLOTPERSWriteInBandBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if GetField(PersVoteBallotPersWITable,'PERSVOTEBALLOTPERSID').AsString <> '' then begin
    PrintBand := True;
  end else
    PrintBand := False;
end;



function TPersVoteBallotRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PERSVOTEEVENT';
end;

end.
