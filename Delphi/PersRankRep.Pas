unit PersRankRep;

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
  grimgctrl,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPersRankRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    RankBand: TQRSubDetail;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    NameField: TQRLabel;
    PersCodeField: TQRLabel;
    RankHeader: TQRBand;
    QRLabel3: TQRLabel;
    PersRankField: TQRLabel;
    QRLabel4: TQRLabel;
    CommentsField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    StartDateField: TQRLabel;
    EndDateField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure RankBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure RankHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable         : TApolloData;
    PersRankHistTable : TApolloData;
    DateVar           : TDateTime;
  public
    { Public declarations }
    function  SelectStatement: string; override;
  end;
{$I rednmx.inc}

var
  PersRankRepForm: TPersRankRepForm;

implementation
uses GenFunc,
     PersCond,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TPersRankRepForm.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
begin

  Form                   := GetFormOfType(TPersCondForm);
  SortOrder              := TPersCondForm(Form).SelectOrder;
  PersTable              := Open_Query(Sql); 
  BaseReport.DataSet     := PersTable.DataSource.DataSet;

  PersRankHistTable      := Open_Query('SELECT * FROM PERSRANKHIST WHERE 1=2');
  RankBand.DataSet       := PersRankHistTable.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  DateVar                := TPersCondForm(Form).StartDateField.Value;

end;

procedure TPersRankRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
end;

function TPersRankRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSCODE PERSCODE, PERS.PERSID PERSID, PERS.LNAME LNAME, PERS.FNAME FNAME FROM PERS ' ;
end;

procedure TPersRankRepForm.RankBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
   If GetField(PersRankHistTable,'PERSRANKHISTID').AsInteger > 0 then begin
     If GetField(PersRankHistTable,'DATETIMESTART').AsDateTime > 0 then
       StartDateField.Caption     := FormatDateTime('MM/DD/YYYY',GetField(PersRankHistTable,'DATETIMESTART').AsDateTime)
     else
       StartDateField.Caption     := '';

     If GetField(PersRankHistTable,'DATETIMEEND').AsDateTime > 0 then
       EndDateField.Caption       := FormatDateTime('MM/DD/YYYY',GetField(PersRankHistTable,'DATETIMEEND').AsDateTime)
     else
       EndDateField.Caption       := '';
     PersRankField.Caption      := tdbfield(PersRankHistTable,'PERSRANKDESCR');
     CommentsField.Caption      := tdbfield(PersRankHistTable,'COMMENTS');
     PrintBand := True;
   end else begin
    PrintBand := False;
   end;
end;

procedure TPersRankRepForm.RankHeaderBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;

  If GetField(PersRankHistTable,'PERSRANKHISTPERSID').AsInteger > 0 then
    PrintBand := True
  else
    PrintBand := False;
end;

procedure TPersRankRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  If DateVar > 0 then begin
    PersRankHistTable.UpdateSQL('SELECT PERSRANKHIST.PERSRANKHISTID PERSRANKHISTID, PERSRANKHIST.PERSID PERSRANKHISTPERSID, PERSRANK.DESCR PERSRANKDESCR, PERSRANKHIST.DATETIMESTART DATETIMESTART, ' +
            'PERSRANKHIST.DATETIMEEND DATETIMEEND, PERSRANKHIST.DESCR COMMENTS, PERSRANKHIST.PERSID PERSRANKHISTPERSID FROM PERSRANKHIST ' +
            'LEFT JOIN PERSRANK ON (PERSRANKHIST.PERSRANKID = PERSRANK.PERSRANKID) ' +
            'WHERE PERSRANKHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString)+
            ' AND PERSRANKHIST.DATETIMESTART <= ' + FormatDateTimeForSQL(DateVar) +
            ' AND PERSRANKHIST.DATETIMEEND >= ' + FormatDateTimeForSQL(DateVar) +
            ' ORDER BY PERSRANKHISTID');
  end else
    PersRankHistTable.UpdateSQL('SELECT PERSRANKHIST.PERSRANKHISTID PERSRANKHISTID, PERSRANKHIST.PERSID PERSRANKHISTPERSID, PERSRANK.DESCR PERSRANKDESCR, PERSRANKHIST.DATETIMESTART DATETIMESTART, ' +
            'PERSRANKHIST.DATETIMEEND DATETIMEEND, PERSRANKHIST.DESCR COMMENTS, PERSRANKHIST.PERSID PERSRANKHISTPERSID FROM PERSRANKHIST ' +
            'LEFT JOIN PERSRANK ON (PERSRANKHIST.PERSRANKID = PERSRANK.PERSRANKID) ' +
            'WHERE PERSRANKHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString)+ ' ORDER BY PERSRANKHISTID');

   If PersRankHistTable.RecordsExist then begin
     PersCodeField.Caption      := alltrim(tdbField(PersTable,'PERSCODE'));
     NameField.Caption          := tdbfield(PersTable,'FNAME') + ' ' +  tdbfield(PersTable,'LNAME');
     printband := true;
   end else
     printband := false;


end;

end.
