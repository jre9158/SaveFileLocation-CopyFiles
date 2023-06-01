unit VoteAddrRep;

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
  QRXMLSFilt,
  QRXLSXFilt,
  QRExport,
  QRWebFilt,
  QRPDFFilt;

type
  TVoteAddrRepForm = class(TAlpineBaseSummaryReportForm)
    DetailData: TQRBand;
    NameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    ResAddr1Field: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    OccupantLabel: TQRLabel;
    CSZLabel: TQRLabel;
    QRLabel3: TQRLabel;
    SignatureLabel: TQRLabel;
    RegNumberField: TQRLabel;
    CSZField: TQRLabel;
    DOBField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    VoteExclList  : TStringList;
    VoteAddrTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function VoterStatus: Boolean;
  end;

var
  VoteAddrRepForm: TVoteAddrRepForm;

implementation
uses GenFunc,
     VoteAddrCond,
     VoteSet,
     CommonFunc,
     SysRepMan;
     
{$R *.DFM}
{$I rednmx.inc}
 
procedure TVoteAddrRepForm.FormCreate(Sender: TObject);
begin
  VoteAddrTable         := Open_Query(Sql);
  BaseReport.DataSet    := VoteAddrTable.DataSource.DataSet;
  FireDeptField.Caption := FireDept;
  VoteExclList          := TStringList.Create;
  TVoteSetForm.SetVoteExclList(VoteExclList);
end;

procedure TVoteAddrRepForm.FormDestroy(Sender: TObject);
begin
  VoteAddrTable.Free;
end;

function TVoteAddrRepForm.VoterStatus: Boolean;
var mForm: TForm;
begin
  mForm       := GetFormOfType(TVoteAddrCondForm);
  VoterStatus := true;
  If TVoteAddrCondForm(mForm).AllCheck.Checked then
    VoterStatus := true
  else if TVoteAddrCondForm(mForm).ValidCheck.Checked then
    VoterStatus := TVoteSetForm.CheckVoteExcl(VoteExclList,tdbfield(VoteAddrTable,'RESZIP'),tdbfield(VoteAddrTable,'PSTREET'),tdbfield(VoteAddrTable,'PSTRNUM'), tdbfield(VoteAddrTable,'ELECTDIST'))
  else if TVoteAddrCondForm(mForm).InValidCheck.Checked then
    VoterStatus := Not TVoteSetForm.CheckVoteExcl(VoteExclList,tdbfield(VoteAddrTable,'RESZIP'),tdbfield(VoteAddrTable,'PSTREET'),tdbfield(VoteAddrTable,'PSTRNUM'), tdbfield(VoteAddrTable,'ELECTDIST'));
end;

procedure TVoteAddrRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  If VoterStatus then begin
    RegNumberField.Caption := tdbfield(VoteAddrTable,'REGNUMBER');
    NameField.Caption      := tdbfield(VoteAddrTable,'LASTNAME') + ', ' + tdbfield(VoteAddrTable,'FIRSTNAME') + ' ' + tdbfield(VoteAddrTable,'MIDDLENAME');
    ResAddr1Field.Caption  := tdbfield(VoteAddrTable,'RESADDR1');
    CSZField.Caption       := tdbfield(VoteAddrTable,'RESCITY') + ', ' + tdbfield(VoteAddrTable,'RESSTATE') + '  ' + tdbfield(VoteAddrTable,'RESZIP');
    DobField.Caption       := GetField(VoteAddrTable,'DOB').AsString;
  end else
    PrintBand              := false;  
end;

function TVoteAddrRepForm.SelectStatement: string;
begin
  result := 'SELECT VOTEADDR.REGNUMBER, VOTEADDR.LASTNAME, VOTEADDR.FIRSTNAME, VOTEADDR.MIDDLENAME, VOTEADDR.RESADDR1, VOTEADDR.RESCITY, VOTEADDR.RESSTATE, VOTEADDR.RESZIP, VOTEADDR.PSTREET, VOTEADDR.PSTRNUM, VOTEADDR.ELECTDIST , VOTEADDR.DOB FROM VOTEADDR ';
end;
 
end. 
