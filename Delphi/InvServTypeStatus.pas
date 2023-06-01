unit InvServTypeStatus;
                              
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
  AlpineGlowButton,
  AdvGroupBox,
  HtmlBtns,
  AlpineCheck,
  AlpinePanel;

type
  TInvServTypeStatusForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DescrField: TAlpineEdit;
    CodeField: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    OpenStatField: TAlpineCheckBox;
    Label10: TLabel;
    ColorField: TAlpineEdit;
    BackColorButton: TAlpineGlowButton;
    ColorDialog: TColorDialog;
    KioskPanel: TAlpinePanel;
    Label7: TLabel;
    UnitNeeded2Label: TLabel;
    AlpineEdit1: TAlpineEdit;
    procedure FormCreate(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  InvServTypeStatusForm: TInvServTypeStatusForm;

implementation
uses GenFunc,
     CommonFunc,
     SecSet,
     Fdid,
     Main;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TInvServTypeStatusForm.FormCreate(Sender: TObject);
begin
  inherited;
  TFdidForm.MultiFdidShift(FdidField,FdidLabel,TInvServTypeStatusForm(GetFormOfType(TInvServTypeStatusForm)),GenPanel);
  KioskPanel.Visible  := CheckModule('FINGER');
end;

procedure TInvServTypeStatusForm.BackColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog.Execute then begin
    SaveButton.Enabled := true;
    ColorField.Text    := ColorToString(ColorDialog.Color);
  end;
end;

end. 
