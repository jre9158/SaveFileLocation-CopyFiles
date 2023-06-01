unit DispBox;

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
  AlpineMemo,
  AdvPageControl,
  ComCtrls,
  AlpinePanel;

type
  TDispBoxForm = class(TNormalBaseForm)
    DispBoxPageControl: TAdvPageControl;
    StandardPage: TAdvTabSheet;
    Standardpanel: TPanel;
    CustomFields: TAdvTabSheet;
    AlpinePanel10: TAlpinePanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Alarm1Field: TAlpineEdit;
    Alarm2Field: TAlpineEdit;
    Alarm3Field: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    Label7: TLabel;
    AlpineEdit2: TAlpineEdit;
    Label1: TLabel;
    MyDBEdit2: TAlpineEdit;
    AlpinePanel1: TAlpinePanel;
    NarrField: TAlpineMemo;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoAfterPost(Sender: TObject); override;
  end;

var
  DispBoxForm: TDispBoxForm;

implementation
uses GenFunc,
     DispBoxRep,
     DispatchObject,
     DispBoxCust,
     AlpineBaseSummaryReport,
     Main;

{$R *.DFM}

procedure TDispBoxForm.FormCreate(Sender: TObject);
var DispBoxcustomForm: TDispBoxcustomForm;
begin
  inherited;
  Standardpanel.Caption         := '';
  DispBoxcustomForm             := TDispBoxcustomForm.Create(self,pk);
  DispboxCustomForm.SetSubFormParent(CustomFields);
  DispBoxCustomForm.BorderStyle := bsNone;
  If not TDispBoxCustomForm.TabVisible then begin
    Standardpanel.Parent       := self;
    DispBoxPageControl.Visible := False;
  end;

  DispBoxPageControl.ActivePage := StandardPage;
end;

class procedure TDispBoxForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('CODE').AsString := ' ';
end;

procedure TDispBoxForm.DoAfterPost(Sender: TObject);
begin
  TDispatchObject.AfterRecordPost('DISPBOX',strtoint(pk));
end;

initialization
  RegisterIndividualReport(TDispBoxRepForm,'INDDISPBOXREP','Dispatch Response Report','DISPBOX','',False,1);

end. 
