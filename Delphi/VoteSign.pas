unit votesign;

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
  extctrls,
  stdctrls,
  db,
  dbtables,
  ovcbase,
  ovcef,
  ovcpb,
  ovcpf,
  ovcdbpf,
  olectrls,
  buttons,
  AlpineBase,
  sigpluslib_tlb,
  AdvGlowButton,
  AlpineGlowButton;


type
  TVoteSignForm = class(TAlpineBaseForm)
    sigpanel: TPanel;
    Panel2: TPanel;
    CancelButton: TAlpineGlowButton;
    AcceptButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure AcceptButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    SigPlus1    : TSigPlus;
  public
    { Public declarations }
  end;
var
  VoteSignForm: TVoteSignForm;

implementation
uses Vote,
     GenFunc,
     applst,
     CommonFunc;
     
{$R *.DFM}

procedure TVoteSignForm.FormCreate(Sender: TObject);
begin
  SigPlus1                    := TSigPlus.Create(SigPanel);
  SigPlus1.Parent             := SigPanel;
  SigPlus1.SigCompressionMode := 0;
  SigPlus1.EncryptionMode     := 0;
  SigPlus1.ClearTablet;
  SigPlus1.TabletState        := 1;
  sigplus1.align              := alClient;
end;

procedure TVoteSignForm.AcceptButtonClick(Sender: TObject);
var VoteAddr: TApolloData;
begin
  Open_query('VOTEHIST',True,'SELECT * FROM VOTEHIST WHERE 1=2');
  A('VOTEHIST').Append;
  GetField('VOTEHIST','REGNUMBER').AsString      := VoteForm.VoteAddrBrowse.GetValue('REGNUMBER');
  GetField('VOTEHIST','VOTEELECTID').AsString    := VoteForm.VoteElectID;
  GetField('VOTEHIST','DATETIMEVOTE').AsDateTime := Now;
  GetField('VOTEHIST','VOTESIG').AsString        := SigPlus1.SigString;
 
  try
    VoteAddr := Open_Query('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + AddExpr(VoteForm.VoteAddrBrowse.GetValue('REGNUMBER')));
    CopyVoteAddrFieldsToVoteHist(VoteAddr,A('VOTEHIST'));
  finally
    VoteAddr.Free;
  end;
  try
    GetTable('VOTEHIST').Post;
  except
    GetTable('VOTEHIST').Cancel;
    ShowMessage('An Error occured posting the signature!');
  end;
  CloseApollo('VOTEHIST');
  Close;
end;

procedure TVoteSignForm.CancelButtonClick(Sender: TObject);
begin
  close;
end;

end.
