unit PersHistType;

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
  AdvGroupBox,
  Htmlbtns,
  AlpineCheck,
  AlpinePanel;

type
  TPersHistTypeForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    FdidLabel: TLabel;
    MyDBEdit2: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    FdidField: TAlpineLookup;
    Label15: TLabel;
    ActiveField: TAlpineCheckBox;
    Label3: TLabel;
    TableNameField: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  PersHistTypeForm: TPersHistTypeForm;

implementation
uses GenFunc,
     Fdid,
     CommonFunc,
     Main;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TPersHistTypeForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TPersHistTypeForm(GetFormOfType(TPersHistTypeForm)),GenPanel);
end;

class procedure TPersHistTypeForm.NewRecord(DataSet: TDataSet);                                          
begin
  DataSet.FieldByname('DESCR').AsString := ' ';;
end;

end.
