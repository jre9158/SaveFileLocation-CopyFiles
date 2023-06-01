unit GISLayerIcon;

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
  AdvGlowButton,
  AlpineGlowButton;

type
  TGISLayerIconForm = class(TNormalBaseForm)
    RenPanel: TPanel;
    IconSizeField: TAlpineEdit;
    Label3: TLabel;
    Label4: TLabel;
    RenColorField: TAlpineEdit;
    RenColorButton: TAlpineGlowButton;
    AlpineEdit1: TAlpineEdit;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  GISLayerIconForm: TGISLayerIconForm;

implementation
uses GenFunc,
     GisLayer,
     Main;
{$R *.DFM}

class procedure TGISLayerIconForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end; 


end.
