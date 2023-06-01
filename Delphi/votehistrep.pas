unit VoteHistRep;

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
  sigpluslib_tlb,
  db,
  jpeg,
  QRPDFFilt,
  QRExport,
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt;

type
  TVoteHistRepForm = class(TAlpineBaseSummaryReportForm)
    DetailData: TQRBand;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    SortLabel: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    OccupantLabel: TQRLabel;
    qrlabelsignature: TQRLabel;
    RegNumberField: TQRLabel;
    VoteTimeField: TQRLabel;
    VoteDateField: TQRLabel;
    NameField: TQRLabel;
    AddressField: TQRLabel;
    signature: TQRImage;
    CSZField: TQRLabel;
    SummaryBand1: TQRBand;
    CountLabel: TQRSysData;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    VoteElectIDLabel: TQRLabel;
    DateLabel: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DetailDataBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    VoteHistTable : TApolloData;
    VoteSigTable  : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  VoteHistRepForm: TVoteHistRepForm;

implementation
uses GenFunc,
     VoteHistCond,
     VoteSet,
     CommonFunc,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TVoteHistRepForm.FormCreate(Sender: TObject);
var Form: TForm;
begin
  VoteHistTable            := Open_Query(Sql);
  VoteSigTable             := Open_Query('SELECT VOTESIG FROM VOTEHIST WHERE 1=2');
  BaseReport.DataSet       := VoteHistTable.DataSource.DataSet;
  FireDeptField.Caption    := FireDept;
  Form                     := GetFormOfType(TVoteHistCondForm);
  VoteElectIDLabel.Caption := SqlLookup(TVoteHistCondForm(Form).VoteElectIDField.Value,'VOTEELECTID','VOTEELECT','DESCR');
  DateLabel.Caption        := GetAlpineDateLabel(TVoteHistCondForm(Form).StartDateField.Value,TVoteHistCondForm(Form).EndDateField.Value);
  If TVoteHistCondForm(Form).DateTimeVoteCheck.Checked then
    SortLabel.Caption := 'Voter History Sorted by Date and Time'
  else if TVoteHistCondForm(Form).LastNameCheck.Checked then
    SortLabel.Caption := 'Voter History Sorted by Last Name, First'
  else if TVoteHistCondForm(Form).RegNumberCheck.Checked then
    SortLabel.Caption := 'Voter History Sorted by Voter Number';
end;

procedure TVoteHistRepForm.FormDestroy(Sender: TObject);
begin
  VoteHistTable.Free;
  VoteSigTable.Free;
end;

procedure TVoteHistRepForm.DetailDataBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var SigPlus  : TSigPlus;
    FileName : String;
begin
  Inherited;
  RegNumberField.Caption := GetField(VoteHistTable,'REGNUMBER').AsString;
  VoteDateField.Caption  := GetField(VoteHistTable,'DATETIMEVOTE').AsString;
  VoteTimeField.Caption  := FormatDateTime('HH:NN',GetField(VoteHistTable,'DATETIMEVOTE').AsDateTime);
  NameField.Caption      := tdbfield(VoteHistTable,'LASTNAME') + ', ' + tdbfield(VoteHistTable,'FIRSTNAME');
  AddressField.Caption   := tdbfield(VoteHistTable,'RESADDR1');
  CSZField.Caption       := tdbfield(VoteHistTable,'RESCITY') + ', ' + tdbfield(VoteHistTable,'RESSTATE') + '  ' + tdbfield(VoteHistTable,'RESZIP');
  VoteSigTable.UpdateSQL('SELECT VOTESIG FROM VOTEHIST WHERE VOTEHISTID = ' + pkValue(GetField(VoteHistTable,'VOTEHISTID').AsString));
 try
    SigPlus                 := TSigPlus.Create(self);
    SigPlus.SigString       := GetField(VoteSigTable,'VOTESIG').AsString;
    SigPlus.TabletState     := 0;
    SigPlus.ImageFileFormat := 4;
    SigPlus.ImageySize      := round(SigPlus.ImageySize * 0.25);
    SigPlus.ImagexSize      := round(SigPlus.ImagexSize * 0.33);
    SigPlus.ImagePenWidth   := 25;
    FileName                := ExtractFileDir(ParamStr(0))+'\signature.jpg';
    SigPlus.WriteImageFile(FileName);
    Signature.Picture.LoadFromFile(FileName);
  finally
    SigPlus.free;
  end;
end;

function TVoteHistRepForm.SelectStatement: string;
begin
  result := 'SELECT VOTEHIST.DATETIMEVOTE, VOTEHIST.VOTEHISTID, VOTEHIST.REGNUMBER, VOTEHIST.LASTNAME, VOTEHIST.FIRSTNAME, VOTEHIST.RESADDR1, VOTEHIST.RESCITY, VOTEHIST.RESSTATE, VOTEHIST.RESZIP FROM VOTEHIST ';
end;

end. 
