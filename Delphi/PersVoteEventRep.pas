unit PersVoteEventRep;

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
  TPersVoteEventRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    ChildBand1: TQRChildBand;
    ChildBand2: TQRChildBand;
    QRLabel3: TQRLabel;
    PersVoteBallotBand: TQRSubDetail;
    QRLabel4: TQRLabel;
    persvoteballotdescrfield: TQRLabel;
    PERSVOTEBALLOTPERSBand: TQRSubDetail;
    PERSVOTEBALLOTPERSName: TQRLabel;
    TotalPersVotesField: TQRLabel;
    PERSVOTEBALLOTPERSWriteInBand: TQRSubDetail;
    PERSVOTEBALLOTPERSWIName: TQRLabel;
    TotalPersVotesWIField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    ChildBand4: TQRChildBand;
    QRLabel9: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel6: TQRLabel;
    PersVoteHistBand: TQRSubDetail;
    QRBand1: TQRBand;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    PageHeaderBand1: TQRBand;
    QRLabel15: TQRLabel;
    FireDeptField: TQRLabel;
    DescrField: TQRLabel;
    DateTimeEndField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimeStartField: TQRLabel;
    QRLabel1: TQRLabel;
    TotalVotersField: TQRLabel;
    QRLabel2: TQRLabel;
    CurrentDateField: TQRLabel;
    QRLabel5: TQRLabel;
    SecIDField: TQRLabel;
    PVHPersCodeField: TQRLabel;
    PVHNameField: TQRLabel;
    PVHEntryCompField: TQRLabel;
    PVHEntryDateField: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    VoteNumField: TQRLabel;
    TestEventBand: TQRChildBand;
    QRLabel23: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersVoteBallotBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PERSVOTEBALLOTPERSBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PERSVOTEBALLOTPERSWriteInBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersVoteHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    VoteNum                 : Integer;
    CanPrint                : Boolean;
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
  PersVoteEventRepForm: TPersVoteEventRepForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     FormFunc,
     SecSet,
     SortGridView;

{$R *.DFM}

procedure TPersVoteEventRepForm.FormCreate(Sender: TObject);
begin
  CanPrint                   := True;
  FireDeptField.Caption      := mFireDept;
  PersVoteEventTable         := Open_Query(sql);

  BaseReport.DataSet         := PersVoteEventTable.DataSource.DataSet;

  PersVoteBallotTable         := Open_Query('SELECT * FROM PERSVOTEBALLOT WHERE 1=2');
  PersVoteBallotPersTable     := Open_Query('SELECT * FROM PERSVOTEBALLOTPERS WHERE 1=2');
  PersVoteBallotPersWITable   := Open_Query('SELECT * FROM PERSVOTEBALLOTPERS WHERE 1=2');
  PersVoteHistTable           := Open_Query('SELECT * FROM PERSVOTEHIST WHERE 1=2');
  PersVoteHistDetailTable     := Open_Query('SELECT * FROM PERSVOTEHIST WHERE 1=2');

  if GetField(PersVoteEventTable,'TESTEVENT').AsString = 'Y' then
    TestEventBand.Enabled := True
  else begin
    if GetField(PersVoteEventTable,'DATETIMEEND').AsDateTime > Now then begin
      CanPrint := False;
      ShowMessage('Can not print results before end date and time');
      Exit;
    end;
  end;

  PersVoteBallotBand.DataSet            := PersVoteBallotTable.DataSource.DataSet;
  PERSVOTEBALLOTPERSBand.DataSet        := PersVoteBallotPersTable.DataSource.DataSet;
  PERSVOTEBALLOTPERSWriteInBand.DataSet := PersVoteBallotPersWITable.DataSource.DataSet;
  PersVoteHistBand.DataSet              := PersVoteHistTable.DataSource.DataSet;
end;

procedure TPersVoteEventRepForm.FormDestroy(Sender: TObject);
begin
  PersVoteEventTable.Free;
  PersVoteBallotTable.Free;
  PersVoteBallotPersTable.Free;
  PersVoteBallotPersWITable.Free;
  PersVoteHistTable.Free;
  PersVoteHistDetailTable.Free;
end;

procedure TPersVoteEventRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var TotalVoters: Integer;
begin
  inherited;
  PrintBand := CanPrint;
  TotalVoters := 0;
  VoteNum     := 0;
  DESCRField.Caption             := GetField(PersVoteEventTable,'DESCR').AsString;

  DateTimeStartField.Caption     := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(PersVoteEventTable,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption       := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(PersVoteEventTable,'DATETIMEEND').AsDateTime);
  CurrentDateField.Caption       := AlpineFormatDateTime('MM/DD/YYYY HH:NN',Now);
  SecIDField.Caption             := SQLLookup(SecIDVar,'SECID','SEC','LOGINCODE') + ' - ' + SQLLookup(SecIDVar,'SECID','SEC','DESCR');

  TotalVoters := SqlTableRecCount('SELECT COUNT(DISTINCT PERSID) FROM PERSVOTEHIST WHERE PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString));
  TotalVotersField.Caption       := IntToStr(TotalVoters);

  PersVoteBallotTable.UpdateSQL('SELECT * FROM PERSVOTEBALLOT WHERE PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                           ' ORDER BY SORTORD');

  If mfireID = '52115' then
    PersVoteHistTable.UpdateSQL('SELECT DISTINCT PERSVOTEHIST.PERSID, PERS.FNAME, PERS.LNAME, PERS.PERSCODE  FROM PERSVOTEHIST ' +
                                ' LEFT JOIN PERS ON (PERSVOTEHIST.PERSID = PERS.PERSID) ' +
                                ' WHERE PERSVOTEHIST.PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                                ' ORDER BY PERS.PERSCODE')
  else
    PersVoteHistTable.UpdateSQL('SELECT DISTINCT PERSVOTEHIST.PERSID, PERS.FNAME, PERS.LNAME, PERS.PERSCODE  FROM PERSVOTEHIST ' +
                                ' LEFT JOIN PERS ON (PERSVOTEHIST.PERSID = PERS.PERSID) ' +
                                ' WHERE PERSVOTEHIST.PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                                ' ORDER BY PERS.LNAME, PERS.FNAME' );
  {PersVoteHistTable.UpdateSQL('SELECT MAX(PERSVOTEHIST.DATETIMEENTRY) ENTRYDATE, PERSVOTEHIST.ENTRYCOMP, PERSVOTEHIST.PERSID, PERS.FNAME, PERS.LNAME, PERS.PERSCODE ' +
                              ' FROM PERSVOTEHIST ' +
                              ' LEFT JOIN PERS ON (PERSVOTEHIST.PERSID = PERS.PERSID) ' +
                              ' WHERE PERSVOTEHIST.PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                              ' AND PERSVOTEHIST.PERSID IN (SELECT DISTINCT PERSID FROM PERSVOTEHIST ' +
                                                            ' WHERE PERSVOTEHIST.PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) + ') ' +
                              ' GROUP BY PERSVOTEHIST.PERSID, PERSVOTEHIST.ENTRYCOMP, PERS.FNAME, PERS.LNAME, PERS.PERSCODE  ' +
                              ' ORDER BY ENTRYDATE '); }
end;

procedure TPersVoteEventRepForm.PersVoteBallotBandBeforePrint( Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := CanPrint;
  persvoteballotdescrfield.Caption := GetField(PersVoteBallotTable,'DESCR').AsString;

  PersVoteBallotPersTable.UpdateSQL('SELECT PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE, COUNT(PERSVOTEHIST.PERSID) TOTALVOTES ' +
                                    ' FROM PERSVOTEBALLOTPERS ' +
                                    ' LEFT JOIN PERS ON (PERS.PERSID = PERSVOTEBALLOTPERS.PERSID) ' +
                                    ' LEFT JOIN PERSVOTEHIST ON (PERSVOTEHIST.PERSVOTEBALLOTPERSID = PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID) ' +
                                    ' WHERE PERSVOTEBALLOTID = ' + AddExpr(GetField(PersVoteBallotTable,'PERSVOTEBALLOTID').AsString) +
                                    ' AND (PERSVOTEBALLOTPERS.WRITEIN <> ' + AddExpr('Y') + ' OR PERSVOTEBALLOTPERS.WRITEIN IS NULL)  ' +
                                    ' GROUP BY PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE ' +
                                    ' ORDER BY TOTALVOTES DESC');

  PersVoteBallotPersWITable.UpdateSQL('SELECT PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID, PERS.PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE, COUNT(PERSVOTEHIST.PERSID) TOTALVOTES ' +
                                    ' FROM PERSVOTEBALLOTPERS ' +
                                    ' LEFT JOIN PERSVOTEHIST ON (PERSVOTEHIST.PERSVOTEBALLOTPERSID = PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID) ' +
                                    ' LEFT JOIN PERS ON (PERS.PERSID = PERSVOTEHIST.WRITEINPERSID) ' +
                                    ' WHERE PERSVOTEBALLOTID = ' + AddExpr(GetField(PersVoteBallotTable,'PERSVOTEBALLOTID').AsString) +
                                    ' AND PERSVOTEBALLOTPERS.WRITEIN = ' + AddExpr('Y') +
                                    ' GROUP BY PERSVOTEHIST.WRITEINPERSID, PERSVOTEBALLOTPERS.PERSVOTEBALLOTPERSID, PERS.PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE ' +
                                    ' ORDER BY TOTALVOTES DESC');


end;

procedure TPersVoteEventRepForm.PERSVOTEBALLOTPERSBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := CanPrint;
  PERSVOTEBALLOTPERSName.Caption  := GetField(PersVoteBallotPersTable,'FNAME').AsString + ' ' +
                                     GetField(PersVoteBallotPersTable,'LNAME').AsString + ' (' +
                                     GetField(PersVoteBallotPersTable,'PERSCODE').AsString + ')';

  TotalPersVotesField.Caption     := GetField(PersVoteBallotPersTable,'TOTALVOTES').AsString;
end;

procedure TPersVoteEventRepForm.PERSVOTEBALLOTPERSWriteInBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if GetField(PersVoteBallotPersWITable,'PERSID').AsString <> '' then begin
    PrintBand := CanPrint;
    PERSVOTEBALLOTPERSWIName.Caption  := GetField(PersVoteBallotPersWITable,'FNAME').AsString + ' ' +
                                         GetField(PersVoteBallotPersWITable,'LNAME').AsString + ' (' +
                                         GetField(PersVoteBallotPersWITable,'PERSCODE').AsString + ')';
    TotalPersVotesWIField.Caption     := GetField(PersVoteBallotPersWITable,'TOTALVOTES').AsString;
  end else
    PrintBand := False;
end;



procedure TPersVoteEventRepForm.PersVoteHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand := CanPrint;
  VoteNum := VoteNum + 1;
  VoteNumField.Caption        := IntToStr(VoteNum);
  PVHPersCodeField.Caption    := GetField(PersVoteHistTable,'PERSCODE').AsString;
  PVHNameField.Caption        := GetField(PersVoteHistTable,'FNAME').AsString + ' ' + GetField(PersVoteHistTable,'LNAME').AsString;

  PersVoteHistDetailTable.UpdateSQL('SELECT DATETIMEENTRY, ENTRYCOMP FROM PERSVOTEHIST ' +
                                    ' WHERE PERSID = ' + AddExpr(GetField(PersVoteHistTable,'PERSID').AsString) +
                                    ' AND PERSVOTEHIST.PERSVOTEEVENTID = ' + AddExpr(GetField(PersVoteEventTable,'PERSVOTEEVENTID').AsString) +
                                    ' ORDER BY DATETIMEENTRY DESC ');

  while NOt PersVoteHistDetailTable.Eof do begin
    PVHEntryCompField.Caption   := GetField(PersVoteHistDetailTable,'ENTRYCOMP').AsString;
    PVHEntryDateField.Caption   := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(PersVoteHistDetailTable,'DATETIMEENTRY').AsDateTime);

    break;
  end;
end;

function TPersVoteEventRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PERSVOTEEVENT';
end;

end.
