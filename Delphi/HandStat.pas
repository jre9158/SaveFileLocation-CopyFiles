unit HandStat;

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
  NormalBase,
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AlpineMemo,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox;

type
  THandStatForm = class(TNormalBaseForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    ComputerIDField: TAlpineLookup;
    DateTimeOpenField: TAlpineDateTime;
    Label2: TLabel;
    DateTimeCloseField: TAlpineDateTime;
    OpenReasonField: TAlpineEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    OldDateTimeStat : TDateTime;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    function CanAddNewRecord(Sender: TObject): Boolean; override;
    function CanDeleteRecord(Sender: TObject): Boolean; override;
  end;

var
  HandStatForm: THandStatForm;

implementation
uses GenFunc,
     CommonVar;
     
{$R *.DFM}

procedure THandStatForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly                   := Not AlpineLogIn;
  DateTimeOpenField.Enabled  := AlpineLogIn;
  DateTimeCloseField.Enabled := AlpineLogIn;
end;

procedure THandStatForm.FormShow(Sender: TObject);
begin
  inherited;
  ComputerIDField.Enabled := false;
end;

class procedure THandStatForm.NewRecord(DataSet: TDataSet);
begin
end;

function THandStatForm.CanAddNewRecord(Sender: TObject): Boolean;
begin
  CanAddNewRecord := AlpineLogIn;
end;

function THandStatForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := AlpineLogIn;
end;



end.
