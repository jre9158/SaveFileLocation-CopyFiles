unit FingerSet;

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
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,                        
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  db,
  AlpineLookup,
  Blink,
  Buttons,
  cusbtn,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  AdvGroupBox, Menus;

type
  TFingerSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    FingerSetControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    AdvTabSheet1: TAdvTabSheet;
    ComputerBrowse: TAlpineBlockBrowse;
    AlpinePanel2: TAlpinePanel;
    GriauleCheck: TRadioButton;
    TargusCheck: TRadioButton;
    FingerVersionField: TAlpineEdit;
    AlpinePanel1: TAlpinePanel;
    Label1: TLabel;
    AlpineEdit6: TAlpineEdit;
    RedNMXButton: TAlpineGlowButton;
    LogTab: TAdvTabSheet;
    FingerKioskVersionBrowse: TAlpineBlockBrowse;
    PopupMenu1: TPopupMenu;
    AlpinePanel3: TAlpinePanel;
    AlpineCheckBox27: TAlpineCheckBox;
    Label9: TLabel;
    SecIDField: TAlpineLookup;
    SetupTab: TAdvTabSheet;
    DeviceSettingsPanel: TAlpinePanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Label10: TLabel;
    AlpineEdit1: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    GISESRICheck: TAlpineCheckBox;
    AlpineCheckBox1: TAlpineCheckBox;
    AlpineCheckBox2: TAlpineCheckBox;
    AlpineCheckBox3: TAlpineCheckBox;
    AlpineCheckBox4: TAlpineCheckBox;
    AlpineCheckBox5: TAlpineCheckBox;
    AlpineCheckBox6: TAlpineCheckBox;
    AlpineEdit4: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    AlpineCheckBox7: TAlpineCheckBox;
    AlpineCheckBox8: TAlpineCheckBox;
    AlpineCheckBox9: TAlpineCheckBox;
    AlpineCheckBox10: TAlpineCheckBox;
    AlpineCheckBox11: TAlpineCheckBox;
    AlpineCheckBox12: TAlpineCheckBox;
    AlpineCheckBox13: TAlpineCheckBox;
    AlpineCheckBox14: TAlpineCheckBox;
    AlpineCheckBox15: TAlpineCheckBox;
    AlpineCheckBox16: TAlpineCheckBox;
    AlpineCheckBox17: TAlpineCheckBox;
    AlpineEdit5: TAlpineEdit;
    AlpineCheckBox18: TAlpineCheckBox;
    AlpineCheckBox19: TAlpineCheckBox;
    AlpineCheckBox20: TAlpineCheckBox;
    AlpineCheckBox21: TAlpineCheckBox;
    AlpineCheckBox22: TAlpineCheckBox;
    AlpineCheckBox23: TAlpineCheckBox;
    AlpineCheckBox24: TAlpineCheckBox;
    AlpineEdit7: TAlpineEdit;
    AlpineCheckBox25: TAlpineCheckBox;
    EnableIncRepField: TAlpineCheckBox;
    EnablePersParent: TAlpineCheckBox;
    Label11: TLabel;
    Label12: TLabel;
    AlpineCheckBox28: TAlpineCheckBox;
    AlpineCheckBox29: TAlpineCheckBox;
    EnableTrainStatCheck: TAlpineCheckBox;
    OPENWHILEOPENCheckBox: TAlpineCheckBox;
    AlpineCheckBox26: TAlpineCheckBox;
    AlpineCheckBox30: TAlpineCheckBox;
    AlpineCheckBox31: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure TargusCheckClick(Sender: TObject);
    procedure GriauleCheckClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RedNMXButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
  end;

var
  FingerSetForm  : TFingerSetForm;

implementation
uses GenFunc,
     SortGridView,
     SysDemoPictView,
     FormFunc,
     Computer,
     FingerVersion,
     CommonSec,
     CommonVar;

{$R *.DFM}

procedure TFingerSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  FingerSetControl.ActivePage   := GenTab;
  LogTab.TabVisible             := AlpineLogin;
  SetupTab.TabVisible           := AlpineLogin;
  
  ComputerBrowse.Setup('COMPUTER',TComputerForm,TComputerForm.NewRecord);

  If (mFireID = '12345') and AlpineLogin then begin
    FingerKioskVersionBrowse.Setup('FINGERVERSION',TFingerVersionForm,TFingerVersionForm.NewRecord);
  end;
end;

procedure TFingerSetForm.FormShow(Sender: TObject);
begin
  inherited;
  TargusCheck.Checked  := (FingerVersionField.Value = 'T');
  GriauleCheck.Checked := (FingerVersionField.Value = 'G');

  TargusCheck.OnClick  := TargusCheckClick;
  GriauleCheck.OnClick := TargusCheckClick;
  RedNMXButton.Visible := (mFireID = '12345');
end;

procedure TFingerSetForm.GriauleCheckClick(Sender: TObject);
begin
  inherited;
  SaveButton.Enabled := true;
end;

class procedure TFingerSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TFingerSetForm.RedNMXButtonClick(Sender: TObject);
begin
  inherited;
  If Not FormExists('SysDemoPictViewForm') then
    SysDemoPictViewForm := TSysDemoPictViewForm.Create(Application,'FINGER');
  SysDemoPictViewForm.Show;
end;

procedure TFingerSetForm.TargusCheckClick(Sender: TObject);
begin
  inherited;
  SaveButton.Enabled := true;
end;

procedure TFingerSetForm.DoBeforePost(Sender: TObject);
begin
  If TargusCheck.Checked then
    FingerVersionField.Value := 'T'
  else if GriauleCheck.Checked then
    FingerVersionField.Value := 'G';
end;

end.
