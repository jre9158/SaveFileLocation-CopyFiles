unit FundEvent;

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
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineMemo,
  AdvGroupBox,
  AdvPageControl,
  ComCtrls, AlpinePanel;

type
  TFundEventForm = class(TNormalBaseForm)
    AdvPanel5: TAdvPanel;
    Image3: TImage;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    FundEventControl: TAdvPageControl;
    FundActionTab: TAdvTabSheet;
    FundActionBrowse: TAlpineBlockBrowse;
    FundEventCheckTab: TAdvTabSheet;
    FundEventCheckBrowse: TAlpineBlockBrowse;
    Panel0B: TAlpinePanel;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    DateStartField: TAlpineDateTime;
    CostField: TAlpineEdit;
    DateEndField: TAlpineDateTime;
    AmountField: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    TotalButton: TAlpineGlowButton;
    procedure FundEventCheckTabShow(Sender: TObject);
    procedure FundActionTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TotalButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure FundCheckNewRecord(DataSet: TDataSet);
    procedure FundActionNewRecord(DataSet: TDataSet);
  end;

var
  FundEventForm: TFundEventForm;

implementation
uses GenFunc,
     FundCheck,
     FundAction,
     Main;

{$R *.DFM}
{$I rednmx.inc}

class procedure TFundEventForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TFundEventForm.TotalButtonClick(Sender: TObject);
Var AmountVar : Real;
begin
  AmountVar         := SqlTableSum('SELECT SUM(FUNDCHECK.AMOUNT) FROM FUNDCHECK WHERE FUNDEVENTID = ' + PK);
  AmountField.Value := FormatFloat('#####0.00',AmountVar);
end;

procedure TFundEventForm.FundEventCheckTabShow(Sender: TObject);
begin
  inherited;
  FundEventCheckBrowse.Setup('FUNDEVENTCHECK','FUNDEVENTID',PK,TFundCheckForm,FundCheckNewRecord);
end;

procedure TFundEventForm.FundCheckNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FUNDEVENTID').AsString   := PK;
  DataSet.FieldbyName('DATEREC').AsDateTime    := Now;
  DataSet.FieldbyName('DATETIMEENT').AsDateTime := Now;
end;

procedure TFundEventForm.FundActionTabShow(Sender: TObject);
begin
  inherited;
  FundActionBrowse.Setup('FUNDACTION','FUNDEVENTID',PK,TFundActionForm,FundActionNewRecord);
end;

procedure TFundEventForm.FundActionNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FUNDEVENTID').AsString   := PK;
end;

procedure TFundEventForm.FormCreate(Sender: TObject);
begin
  inherited;
  FundEventControl.ActivePage := FundActionTab;
  TitleImage.Picture.Icon     := GetGlowImageIcon('FUND32');

end;

end.
