unit SysFieldDef;

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
  HtmlBtns,
  AlpineCheck,
  AdvGroupBox,
  AlpinePanel;

type
  TSysFieldDefForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    Label2: TLabel;
    Label1: TLabel;
    FdidLabel: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    ComputerNameField: TAlpineEdit;
    AlpineEdit1: TAlpineEdit;
    FdidField: TAlpineLookup;
    AlpineEdit2: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    AlpineEdit4: TAlpineEdit;
    Label5: TLabel;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  SysFieldDefForm: TSysFieldDefForm;

implementation
uses GenFunc,
     CommonVar,
     Fdid,
     CommonFunc,
     Main;

{$R *.DFM}

procedure TSysFieldDefForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TSysFieldDefForm(GetFormOfType(TSysFieldDefForm)),GenPanel);
end;

class procedure TSysFieldDefForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('TABLENAME').AsString := ' ';
end;

end. 
