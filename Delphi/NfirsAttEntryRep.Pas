unit NfirsAttEntryRep;
 
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
  TNfirsAttEntryRepForm = class(TAlpineBaseSummaryReportForm)
    DetailData: TQRBand;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    AddressField: TQRLabel;
    TimeAlarmField: TQRLabel;
    QRLabel1: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel2: TQRLabel;
    LocTypeField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    ExpNumField: TQRLabel;
    QRShape1: TQRShape;
    CensusField: TQRLabel;
    QRLabel57: TQRLabel;
    QRShape12: TQRShape;
    QRImage1: TQRImage;
    QRLabel92: TQRLabel;
    IncNumFooter: TQRLabel;
    NFIRSAttBand: TQRSubDetail;
    ChildBand1: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel24: TQRLabel;
    PersCodeField: TQRLabel;
    NameField: TQRLabel;
    QRLabel9: TQRLabel;
    EntryMethField: TQRLabel;
    QRLabel10: TQRLabel;
    EntryCompField: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimeEntryField: TQRLabel;
    QRLabel12: TQRLabel;
    SecNameField: TQRLabel;
    QRLabel13: TQRLabel;
    frdscaption: TQRLabel;
    frdsfield: TQRLabel;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    IncTypeField: TQRLabel;
    TimeInField: TQRLabel;
    QRLabel17: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NFIRSMainIDTable : TApolloData;
    NFIRSMainTable   : TApolloData;
    NFIRSAttTable    : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;
{$I rednmx.inc}

var
  NfirsAttEntryRepForm: TNfirsAttEntryRepForm;

implementation
uses GenFunc,
     SecSet,
     CommonFunc;

{$R *.DFM}

procedure TNfirsAttEntryRepForm.FormCreate(Sender: TObject);
begin
  NFIRSMainIDTable      := Open_Query(Sql);
  BaseReport.DataSet    := NFIRSMainIDTable.DataSource.DataSet;
  NFIRSMainTable        := Open_Query('SELECT * FROM NFIRSMAIN WHERE 1=2');
  NFIRSAttTable         := Open_Query('SELECT * FROM NFIRSATT WHERE 1=2');
  NFIRSAttBand.DataSet  := NFIRSAttTable.DataSource.DataSet;
  IncNumFooter.Caption  := mFireDept;
  frdsfield.Enabled     := CheckModule('MCI');
  frdscaption.Enabled   := frdsfield.Enabled;
end;

procedure TNfirsAttEntryRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  NFIRSMainTable.UpdateSQL('SELECT * FROM NFIRSMAIN WHERE NFIRSMAINID = ' + GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString);
  NFIRSAttTable.UpdateSQL('SELECT MCIHIST.PERSID MCIHIST_PERSID,NFIRSATT.PERSID PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE,PERSACCHIST.DATETIMEKEY, ' +
                          'NFIRSATT.ENTRYMETH, NFIRSATT.ENTRYCOMP, NFIRSATT.DATETIMEENTRY, ' +
                          'SEC.USERNAME, SEC.DESCR, SEC.LOGINCODE ' +
                          'FROM NFIRSATT ' +
                          'LEFT JOIN NFIRSAPP ON (NFIRSATT.NFIRSAPPID = NFIRSAPP.NFIRSAPPID) ' +
                          'LEFT OUTER JOIN NFIRSMAIN ON (NFIRSMAIN.NFIRSMAINID = NFIRSATT.NFIRSMAINID) '+
                          'LEFT JOIN DISPCALL ON (DISPCALL.DISPCALLID=NFIRSMAIN.DISPCALLID) ' +
                          'LEFT JOIN PERSACCHIST ON (NFIRSATT.PERSACCHISTID=PERSACCHIST.PERSACCHISTID) '+
                          'LEFT JOIN PERS ON (NFIRSATT.PERSID = PERS.PERSID) ' +
                          'LEFT JOIN SEC ON (NFIRSATT.ENTRYSECID = SEC.SECID) ' +
                          'LEFT OUTER JOIN MCIHIST ON (DISPCALL.DISPCALLID=MCIHIST.DISPCALLID AND PERS.PERSID=MCIHIST.PERSID) '+
                          'WHERE NFIRSATT.NFIRSMAINID = ' + GetField(NFIRSMainIDTable,'NFIRSMAINID').AsString + ' ORDER BY PERS.LNAME, PERS.FNAME');

  FireDeptField.Caption        := SqlLookUp(tdbfield(NFIRSMainTable,'FDID'),'FDID','FDID','DEPTNAME');
  DateAlarmField.Caption       := FormatDateTime('MM/DD/YYYY',GetField(NFIRSMainTable,'DATETIMEALARM').AsDateTime);
  TimeAlarmField.Caption       := FormatDateTime('HH:NN:SS',GetField(NFIRSMainTable,'DATETIMEALARM').AsDateTime);
  TimeInField.Caption          := FormatDateTime('HH:NN:SS',GetField(NFIRSMainTable,'DATETIMEIN').AsDateTime);
  IncNumField.Caption          := substr(dbfield(NFIRSMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSMainTable,'INCNUM'),5,6);
  ExpNumField.Caption          := dbfield(NFIRSMainTable,'EXPNUM');
  CensusField.Caption          := dbfield(NFIRSMainTable,'CENSUS');
  IncTypeField.Caption         := SQLLookUp(dbfield(NFIRSMainTable,'SITFOUND'),'CODE','N5INCTYPE','DESCR');

  LocTypeField.Caption         := SQLLookUp(dbfield(NFIRSMainTable,'LOCTYPE'),'CODE','N5LOCTYPE','DESCR');

  AddressField.Caption         := alltrim(alltrim(dbField(NFIRSMainTable,'STRNUM')) + ' ' + tdbField(NFIRSMainTable,'STREET')) + #10 + #13 +
                                  tdbField(NFIRSMainTable,'CITY') + ', ' + dbField(NFIRSMainTable,'STATE') + '  ' + substr(dbField(NFIRSMainTable,'ZIP'),1,5) + #10 + #13 +
                                  IIf(tdbfield(NFIRSMainTable,'CROSS1') = '','','Cross Street: ' + tdbfield(NFIRSMainTable,'CROSS1'));
end;

procedure TNfirsAttEntryRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NFIRSMainIDTable.Free;
  NFIRSMainTable.Free;
  NFIRSAttTable.Free;
end;

function TNfirsAttEntryRepForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAINID FROM NFIRSMAIN ' ;
end;

function TNfirsAttEntryRepForm.ReportJoins: String;
begin
  result := '';
end;

procedure TNfirsAttEntryRepForm.NFIRSAttBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var DateTimeVar : TDateTime;
    SecNameVar  : String;
begin
  inherited;
  PrintBand                  := (GetField(NfirsAttTable,'PERSID').AsInteger > 0);
  PersCodeField.Caption      := GetField(NfirsAttTable,'PERSCODE').AsString;
  NameField.Caption          := tdbfield(NfirsAttTable,'LNAME') + ', ' + tdbfield(NfirsAttTable,'FNAME');
  EntryMethField.Caption     := tdbfield(NfirsAttTable,'ENTRYMETH');
  EntryCompField.Caption     := tdbfield(NfirsAttTable,'ENTRYCOMP');
  If GetField(nfirsattTable,'MCIHIST_PERSID').AsInteger > 0 then
    frdsfield.Caption        := 'Yes'
  else
    frdsfield.Caption        := 'No';

  If GetField(NfirsAttTable,'DATETIMEKEY').AsDateTime>0 then
    DateTimeVar := GetField(NfirsAttTable,'DATETIMEKEY').AsDateTime
  else
    DateTimeVar := GetField(NfirsAttTable,'DATETIMEENTRY').AsDateTime;
  DateTimeEntryField.Caption := AlpineFormatDateTime('MM/DD/YYYY HH:NN',DateTimeVar) + IIf(GetField(NfirsAttTable,'DATETIMEKEY').AsDateTime > 0,'*','');

  SecNameVar := '';
  If Not (tdbfield(NfirsAttTable,'LOGINCODE') = '') then
    SecNameVar := tdbfield(NfirsAttTable,'LOGINCODE');
  If Not (tdbfield(NfirsAttTable,'DESCR') = '') and Not (SecNameVar = tdbfield(NfirsAttTable,'DESCR')) then
    SecNameVar := SecNameVar + ' ' + tdbfield(NfirsAttTable,'DESCR');
  SecNameField.Caption       := SecNameVar;
end;

end.
