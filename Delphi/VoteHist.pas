unit VoteHist;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  StdCtrls,
  Buttons,
  ExtCtrls,
  MySBox,
  AlpineBase,
  AdvGlowButton,
  AlpineGlowButton;

type
  TVoteHistForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    MyScrollBox1: TMyScrollBox;
    NoSigsOnFile: TPanel;
    CloseButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  VoteHistForm: TVoteHistForm;

implementation
uses genfunc,
     sigpluslib_tlb,
     Vote,
     jpeg;
     
{$R *.DFM}

procedure TVoteHistForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TVoteHistForm.FormCreate(Sender: TObject);
var Panel     : TGroupBox;
    sigplus2  : TSigPlus;
    mFileName : String;
    mDesc     : String;
begin

  Caption := 'Signatures on file for ' + VoteForm.VoteAddrBrowse.GetValue('NAME');
  Open_Query('VOTEHIST',False,'SELECT DATETIMEVOTE, VOTESIG, VOTEELECT.DESCR DESCR FROM VOTEHIST ' +
                              'LEFT JOIN VOTEELECT ON (VOTEELECT.VOTEELECTID = VOTEHIST.VOTEELECTID) ' + 
                              'WHERE REGNUMBER = ' + AddExpr(VoteForm.VoteAddrBrowse.GetValue('REGNUMBER')) + ' ORDER BY DATETIMEVOTE DESC');

  NoSigsOnFile.Visible := A('VOTEHIST').QueryRecCount = 0;
  while not A('VOTEHIST').eof do begin
    Panel         := TGroupBox.Create(self);
    Panel.Align   := alTop;
    Panel.Parent  := MyScrollBox1;
    mDesc         := tdbField('VOTEHIST','DESCR');
    Panel.Caption := mDesc + ' at ' + GetField('VOTEHIST','DATETIMEVOTE').AsString;
    Panel.Height  := 100;
    Panel.Width   := MyScrollBox1.Width;

    try
      AppendToLog(GetField('VOTEHIST','VOTESIG').AsString);
      sigplus2                 := TSigPlus.Create(self);
      SigPlus2.Parent          := Panel;
      SigPlus2.SigString       := GetField('VOTEHIST','VOTESIG').AsString;
      sigplus2.TabletState     := 0;
      sigplus2.ImageFileFormat := 1;
      sigplus2.ImagePenWidth   := 7;
      mFileName                := ExtractFileDir(ParamStr(0))+'\signature.bmp';
      sigplus2.WriteImageFile(mFileName);
    except
      on E: Exception do begin
        ShowMessage('Error: ' + E.Message);
      end;
    end;
    sigplus2.Align := alClient;

    A('VOTEHIST').Skip(1);
  end;
  CloseApollo('VOTEHIST');
end;

end.
