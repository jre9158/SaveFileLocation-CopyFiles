unit VoteHistCond;

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
  AlpineLookup,
  AdvGroupBox;

type
  TVoteHistCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    Label1: TLabel;
    ElectPanel: TAdvPanel;
    Label4: TLabel;
    VoteElectIDField: TAlpineLookup;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    FinalDateLabel: TLabel;
    StartDateField: TAlpineDateTime;
    EndDateField: TAlpineDateTime;
    SortPanel: TAdvPanel;
    LastNameCheck: TRadioButton;
    RegNumberCheck: TRadioButton;
    DateTimeVoteCheck: TRadioButton;
    procedure EnableSave(Sender: TObject);
  private
    { Private declarations }
  public
    function InitialDate: TDateTime; override;
    function FinalDate: TDateTime; override;
    function SqlWhereClause: String; override;
    function OrderClause: String; override;
  end;
var
  VoteHistCondForm: TVoteHistCondForm;

implementation

{$R *.DFM}

uses SysRepMan,
     GenFunc,
     VoteHistRep,
     CommonFunc;

procedure TVoteHistCondForm.EnableSave(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

function TVoteHistCondForm.InitialDate: TDateTime;
begin
  Result := StartDateField.Value;
end;

function TVoteHistCondForm.FinalDate: TDateTime;
begin
  Result := EndDateField.Value;
end;

function TVoteHistCondForm.SqlWhereClause: String;
begin
  result := '';
  If BuildSQLAlpineDate('VOTEHIST.DATETIMEVOTE',StartDateField.Value,EndDateField.Value) <> '' then
    result := ' WHERE ' + BuildSQLAlpineDate('VOTEHIST.DATETIMEVOTE',StartDateField.Value,EndDateField.Value);
  If (AnyStrToInt(VoteElectIDField.Value) > 0) then
    result := result + IIf(result = '',' WHERE ',' AND ') + ' VOTEHIST.VOTEELECTID = ' + VoteElectIDField.Value;
end;

function TVoteHistCondForm.OrderClause: String;
Begin
  If DateTimeVoteCheck.Checked then
    result := ' ORDER BY VOTEHIST.DATETIMEVOTE'
  else if LastNameCheck.Checked then
    result := ' ORDER BY VOTEHIST.LASTNAME,VOTEHIST.FIRSTNAME'
  else if RegNumberCheck.Checked then
    result := ' ORDER BY VOTEHIST.REGNUMBER';
end;

initialization
  RegisterReport(TVoteHistRepForm,'VOTEHISTREP','Voter History Report',              'REDNMX','VOTEHISTCOND',   'Alpine Software Corporation',['ELECTPANEL','DATEPANEL','SORTPANEL']);

end.
