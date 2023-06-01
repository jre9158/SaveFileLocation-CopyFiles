unit VoteAddrCond;

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
  ImgList,
  AdvToolBar,
  StdCtrls,
  GradientLabel,
  ExtCtrls,
  BorderPanel,
  OrpheusWrapper,
  OvcBase,
  OvcEF, 
  OvcPB,
  OvcPF,
  MySBox,
  AdvPanel,
  htmlbtns,
  AlpineBase,
  HTMLChkList,
  Grids,
  BaseGrid,
  AdvGrid,
  alpinebaseCond,
  AlpineDateTime,
  AlpineBaseSummaryReport,
  AlpineLookup;

type
  TVoteAddrCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    ParamBox: TMyScrollBox;
    VotePanel: TAdvPanel;
    AllCheck: TRadioButton;
    ValidCheck: TRadioButton;
    InvalidCheck: TRadioButton;
    SortPanel: TAdvPanel;
    LastNameCheck: TRadioButton;
    RegNumberCheck: TRadioButton;
    procedure EnableSave(Sender: TObject);
  private
    { Private declarations }
  public
    function SqlWhereClause: String; override;
    function OrderClause: String; override;
  end;
var
  VoteAddrCondForm: TVoteAddrCondForm;

implementation

{$R *.DFM}

uses SysRepMan,
     GenFunc,
     VoteAddrRep,
     CommonFunc;

procedure TVoteAddrCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TVoteAddrCondForm.SqlWhereClause: String;
begin
  result := '';
end;

function TVoteAddrCondForm.OrderClause: String;
Begin
  If LastNameCheck.Checked then
    result := ' ORDER BY VOTEADDR.LASTNAME,VOTEADDR.FIRSTNAME'
  else if RegNumberCheck.Checked then
    result := ' ORDER BY VOTEADDR.REGNUMBER';
end;

initialization
  RegisterReport(TVoteAddrRepForm,'VOTEADDRREP','Voter Address Report','REDNMX','VOTEADDRCOND','Alpine Software Corporation',['SORTPANEL','VOTEPANEL']);
     
end.
