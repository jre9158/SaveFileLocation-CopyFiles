unit RedNMXInitialize;

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
  TRedNMXInitializeForm = class(TAlpineBaseForm)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RedNMXInitializeForm: TRedNMXInitializeForm;

implementation
uses GenFunc,
     FormFunc,
     CommonNfirs,
     CommonFunc,
     CommonVar,
     AlpineTMSStringGrid,
     AdvGrid,
     ToolBar,
     AlpineBaseSummaryReport;

{$R *.DFM}

initialization

end.
