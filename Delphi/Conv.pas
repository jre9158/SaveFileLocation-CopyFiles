unit Conv;

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
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineBase,
  Gauges;

type
  TConvForm = class(TAlpineBaseForm)
    BottomPanel: TAdvPanel;
    Gauge: TGauge;
    CloseButton: TAlpineGlowButton;
    procedure CloseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  ConvForm: TConvForm;

implementation
uses GenFunc,
     FormFunc,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TConvForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

initialization


end.
