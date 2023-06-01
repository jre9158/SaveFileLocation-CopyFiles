unit PersStatHist;
 
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
  AdvGlowButton,
  AlpineGlowButton,
  AlpineDateTime,
  AdvGroupBox,
  htmlbtns,
  alpinecheck,
  AlpinePanel;

type
  TPersStatHistForm = class(TNormalBaseForm)
    Panel1: TPanel;
    Label15: TLabel;
    DateTimeStartField: TAlpineDateTime;
    Label1: TLabel;
    DateTimeEndField: TAlpineDateTime;
    PersStatIDField: TAlpineLookup;
    Label2: TLabel;
    DeductTimeField: TAlpineEdit;
    Label5: TLabel;
    PersIDField: TAlpineLookup;
    Label6: TLabel;
    LosapPanel: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    PointField: TAlpineEdit;
    DateTimeLosapField: TAlpineDateTime;
    Label7: TLabel;
    DescrField: TAlpineEdit;
    NYSCensusPanel: TAlpinePanel;
    AlpineCheckBox1: TAlpineCheckBox;
    StartDate: TAlpineGlowButton;
    EndDate: TAlpineGlowButton;
    AddTimeLabel: TLabel;
    AddTimeField: TAlpineEdit;
    NYSCOVID19Panel: TAlpinePanel;
    AlpineCheckBox2: TAlpineCheckBox;
    Label9: TLabel;
    AlpineEdit2: TAlpineEdit;
    Label8: TLabel;
    TotalTimeField: TAlpineEdit;
    procedure PersIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure StartDateClick(Sender: TObject);
    procedure EndDateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TotalTimeFieldDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PersStatHistForm: TPersStatHistForm;

implementation
uses GenFunc,
     commonvar,
     SecSet,
     SysSet;
{$R *.DFM}
{$I rednmx.inc}

procedure TPersStatHistForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TPersStatHistForm.StartDateClick(Sender: TObject);
begin
  inherited;
  DateTimeStartField.Value  := StrToDateTime(SQLLookup(PersIDField.Value,'PERSID','PERS','JOINDATE'));
end;

procedure TPersStatHistForm.TotalTimeFieldDblClick(Sender: TObject);
begin
  inherited;
  TotalTimeField.Value := FormatFloat('##0.00',(DateTimeEndField.Value - DateTimeStartField.Value)/365.25);
end;

procedure TPersStatHistForm.EndDateClick(Sender: TObject);
begin
  inherited;
  DateTimeEndField.Value  := StrToDateTime(SQLLookup(PersIDField.Value,'PERSID','PERS','RESDATE'));
end;

procedure TPersStatHistForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly                := Not CheckSecVar('PERSEDIT');
  LosapPanel.Visible      := CheckModule('LOSAP');
  NYSCensusPanel.Visible  := (Substr(ASCVar,1,2) = 'NY');
  NYSCOVID19Panel.Visible := (Substr(ASCVar,1,2) = 'NY');
end;

procedure TPersStatHistForm.FormShow(Sender: TObject);
begin
  inherited;
  if ((mFireID = '21012') and (DateTimeToStr(DateTimeStartField.Value) = '12/30/1899')) then begin
    DateTimeStartField.Value := StrToDateTime('01/01/' + FormatDateTime('YYYY', Now));
    DateTimeLOSAPField.Value := StrToDateTime('01/01/' + FormatDateTime('YYYY', Now));
    DateTimeEndField.Value   := StrToDateTime('12/31/' + FormatDateTime('YYYY', Now));
  end;
end;

end.
