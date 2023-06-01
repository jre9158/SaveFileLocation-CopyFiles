unit PersSchdFPPayRollRep;
 
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
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt,
  QRPDFFilt,
  jpeg;

type
  TPersSchdFPPayRollRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    SchdHistBand: TQRSubDetail;
    SchdHistHeader: TQRBand;
    SchdHistFooter: TQRBand;
    SchdShiftNameCodeField: TQRLabel;
    SchdLocDescrField: TQRLabel;
    DateTimeStartField: TQRLabel;
    ShiftLengthField: TQRLabel;
    SchdRankDescrField: TQRLabel;
    UnitNumField: TQRLabel;
    DateTimeEndField: TQRLabel;
    DescrField: TQRLabel;
    QRLabel3: TQRLabel;
    ShiftLengthTotalField: TQRLabel;
    TitleBand: TQRBand;
    QRLabel23: TQRLabel;
    FireDeptField: TQRLabel;
    LogoImage: TQRImage;
    LNameField: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel24: TQRLabel;
    QRShape1: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SchdHistFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    Pers                : TApolloData;
    SchdHist            : TApolloData;
    ShiftLengthTotalVar : Real;
    SchdTypeNewID       : String;
    SchdTypeWhere       : String;
    function GetColor   : TColor;

  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  PersSchdFPPayRollRepForm: TPersSchdFPPayRollRepForm;

implementation
uses GenFunc,
     SecSet,
     PersCond,
     Commonfunc,
     CommonVar,
     FormFunc,
     SysSet,
     SysRepMan;
     
{$R *.DFM}

procedure TPersSchdFPPayRollRepForm.FormCreate(Sender: TObject);
Var Form : TForm;
begin
  Pers                        := Open_Query(Sql);
//PersBand.PkField            := 'PERSID';
  SchdHist                    := Open_Query('SELECT * FROM SCHDHIST WHERE 1=2');
  BaseReport.DataSet          := Pers.DataSource.DataSet;
  FireDeptField.Caption       := mFireDept;
  SchdTypeNewID               := SQLLookUp(mFireID,'FDID','SCHDSET','SCHDTYPENEWID');
  PrintLogo(LogoImage);
  TPersCondForm.PrintTitles(TitleBand);
  Form                        := GetFormOfType(TPersCondForm);
  SchdTypeWhere               := TPersCondForm(Form).GetSchdTypeWhere;
  SchdTypeWhere               := IIf(SchdTypeWhere = '',' (1=1)',SchdTypeWhere);
end;

procedure TPersSchdFPPayRollRepForm.FormDestroy(Sender: TObject);
begin
  Pers.Free;
  SchdHist.Free;
end;

procedure TPersSchdFPPayRollRepForm.PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  LNameField.Caption         := 'Name:  ' + tdbfield(Pers,'LNAME') + ', ' + tdbfield(Pers,'FNAME');
  ShiftLengthTotalVar        := 0;
  if mFireID = '09259' then begin
    SQLVar                     := 'SELECT SCHDHIST.DATETIMESTART, SCHDHIST.DATETIMEEND, SCHDHIST.SHIFTLENGTH, SCHDRANK.DESCR SCHDRANKDESCR, ' +
                                  'SCHDLOC.DESCR SCHDLOCDESCR, UNITNUM, SCHDSHIFTNAME.CODE SCHDSHIFTNAMECODE, SCHDHIST.SCHDTYPEID, ' +
                                  'SCHDSHIFTNAME.COLOR, SCHDHIST.DESCR, SCHDTYPE.ROSTER, SCHDTYPE.DESCR SCHDTYPEDESCR, ' +
                                  'SCHDSUBTYPE.DESCR SCHDSUBTYPEDESCR ' +
                                  'FROM SCHDHIST ' +
                                  'LEFT JOIN SCHDRANK ON (SCHDHIST.SCHDRANKID = SCHDRANK.SCHDRANKID) ' +
                                  'LEFT JOIN SCHDLOC ON (SCHDHIST.SCHDLOCID = SCHDLOC.SCHDLOCID) ' +
                                  'LEFT JOIN SCHDTYPE ON (SCHDHIST.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                                  'LEFT JOIN SCHDSUBTYPE ON (SCHDHIST.SCHDSUBTYPEID = SCHDSUBTYPE.SCHDSUBTYPEID) ' +
                                  'LEFT JOIN SCHDSHIFTNAME ON (SCHDHIST.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
                                  'LEFT JOIN SCHDSTATUS ON (SCHDHIST.SCHDSTATUSID = SCHDSTATUS.SCHDSTATUSID) ' +
                                  'WHERE SCHDHIST.PERSID = ' + PkValue(GetField(Pers,'PERSID').AsString) + ' AND ' +
                                  '(( SCHDHIST.DATETIMESTART >= ' + FormatDateTimeForSql(InitialDate+(18/24),3) + ') AND ( SCHDHIST.DATETIMESTART < '+ FormatDateTimeForSql(FinalDate+(18/24),3)+'))' +
                                  ' ORDER BY SCHDHIST.DATETIMESTART';
  end else begin
    SQLVar                     := 'SELECT SCHDHIST.DATETIMESTART, SCHDHIST.DATETIMEEND, SCHDHIST.SHIFTLENGTH, SCHDRANK.DESCR SCHDRANKDESCR, ' +
                                  'SCHDLOC.DESCR SCHDLOCDESCR,SCHDSTATUS.CODE STATUSCODE, UNITNUM, SCHDSHIFTNAME.CODE SCHDSHIFTNAMECODE, SCHDHIST.SCHDTYPEID, ' +
                                  'SCHDSHIFTNAME.COLOR, SCHDHIST.DESCR, SCHDTYPE.ROSTER, SCHDTYPE.DESCR SCHDTYPEDESCR, ' +
                                  'SCHDSUBTYPE.DESCR SCHDSUBTYPEDESCR ' +
                                  'FROM SCHDHIST ' +
                                  'LEFT JOIN SCHDRANK ON (SCHDHIST.SCHDRANKID = SCHDRANK.SCHDRANKID) ' +
                                  'LEFT JOIN SCHDLOC ON (SCHDHIST.SCHDLOCID = SCHDLOC.SCHDLOCID) ' +
                                  'LEFT JOIN SCHDTYPE ON (SCHDHIST.SCHDTYPEID = SCHDTYPE.SCHDTYPEID) ' +
                                  'LEFT JOIN SCHDSUBTYPE ON (SCHDHIST.SCHDSUBTYPEID = SCHDSUBTYPE.SCHDSUBTYPEID) ' +
                                  'LEFT JOIN SCHDSHIFTNAME ON (SCHDHIST.SCHDSHIFTNAMEID = SCHDSHIFTNAME.SCHDSHIFTNAMEID) ' +
                                  'LEFT JOIN SCHDSTATUS ON (SCHDHIST.SCHDSTATUSID = SCHDSTATUS.SCHDSTATUSID) ' +
                                  'WHERE SCHDHIST.PERSID = ' + PkValue(GetField(Pers,'PERSID').AsString) + ' AND ' + SchdTypeWhere + ' AND ' +
                                  BuildSQLAlpineDate('SCHDHIST.DATETIMESTART',InitialDate,FinalDate) +
                                  ' ORDER BY SCHDHIST.DATETIMESTART';
  end;

  AppendToLog(sqlvar);
  SchdHist.UpdateSQL(SQLVar);
  SchdHistBand.DataSet        := SchdHist.DataSource.DataSet;
end;

function TPersSchdFPPayRollRepForm.GetColor: TColor;
begin
  if tdbfield(SchdHist,'COLOR') = '' then begin
    GetColor := clwhite;
  end else begin
    try
      GetColor := StringToColor(tdbfield(SchdHist,'COLOR'));
    except
      GetColor := clwhite;
    end;
  end;
end;


procedure TPersSchdFPPayRollRepForm.SchdHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintBand                         := true;
  SchdShiftNameCodeField.Color      := GetColor;
  SchdShiftNameCodeField.Font.Color := clwhite;
  SchdShiftNameCodeField.Caption    := tdbfield(SchdHist,'SCHDSHIFTNAMECODE');
  DateTimeStartField.Caption        := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(SchdHist,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption          := AlpineFormatDateTime('MM/DD/YYYY HH:NN',GetField(SchdHist,'DATETIMEEND').AsDateTime);
  SchdRankDescrField.Caption        := tdbfield(SchdHist,'SCHDRANKDESCR');
  SchdLocDescrField.Caption         := tdbfield(SchdHist,'SCHDLOCDESCR');
  DescrField.Caption                := alltrim(tdbfield(SchdHist,'DESCR') + ' ' + tdbfield(SchdHist,'SCHDSUBTYPEDESCR'));
  UnitNumField.Caption              := tdbfield(SchdHist,'UNITNUM');
  If ((tdbfield(SchdHist,'STATUSCODE') = 'PEN') AND (mFireID = '07140')) then
    PrintBand                     := False
  else begin
    If (mFireID = '10021') then begin
      ShiftLengthField.Color          := clwhite;
      ShiftLengthField.Font.Color     := clblack;
      ShiftLengthField.Caption        := tdbfield(SchdHist,'SCHDTYPEDESCR') + ' ' + FormatFloat('#,##0.00',GetField(SchdHist,'SHIFTLENGTH').AsFloat);
      ShiftLengthTotalVar             := ShiftLengthTotalVar + GetField(SchdHist,'SHIFTLENGTH').AsFloat;
    end else if SchdTypeNewID = GetField(SchdHist,'SCHDTYPEID').AsString then begin
      ShiftLengthField.Color          := clwhite;
      ShiftLengthField.Font.Color     := clblack;
      ShiftLengthField.Caption        := FormatFloat('#,##0.00',GetField(SchdHist,'SHIFTLENGTH').AsFloat);
      ShiftLengthTotalVar             := ShiftLengthTotalVar + GetField(SchdHist,'SHIFTLENGTH').AsFloat;
    end else if tdbfield(SchdHist,'ROSTER') = 'Y' then begin
      ShiftLengthField.Color          := clnavy;
      ShiftLengthField.Font.Color     := clwhite;
      ShiftLengthField.Caption        := tdbfield(SchdHist,'SCHDTYPEDESCR') + ' ' + FormatFloat('#,##0.00',GetField(SchdHist,'SHIFTLENGTH').AsFloat);
      ShiftLengthTotalVar             := ShiftLengthTotalVar + GetField(SchdHist,'SHIFTLENGTH').AsFloat;
    end else begin
      ShiftLengthField.Color          := IIfI(tdbfield(SchdHist,'SCHDTYPEDESCR') = '',clwhite,clPurple);
      ShiftLengthField.Font.Color     := clwhite;
      ShiftLengthField.Caption        := IIf(tdbfield(SchdHist,'SCHDTYPEDESCR') = '','','Off for ') + tdbfield(SchdHist,'SCHDTYPEDESCR');
      ShiftLengthTotalVar             := ShiftLengthTotalVar + 0;
    end;
  end;

end;

function TPersSchdFPPayRollRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID,PERSTYPE.DESCR PERSTYPEDESCR,PERSTYPE.DESCR PERSSTATDESCR,PERS.LNAME,PERS.FNAME,PERS.PERSCODE FROM PERS ';
end;

function TPersSchdFPPayRollRepForm.ReportJoins: String;
begin
  result := ' LEFT OUTER JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ' +
            ' LEFT OUTER JOIN PERSSTAT ON (PERS.PERSSTATID = PERSSTAT.PERSSTATID) ';
end;

procedure TPersSchdFPPayRollRepForm.SchdHistFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  ShiftLengthTotalField.Caption        := FormatFloat('#,##0.00',ShiftLengthTotalVar); 
end;


end.
