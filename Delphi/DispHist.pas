unit DispHist;

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
  AlpineMemo,
  AdvGlowButton,
  AlpineGlowButton,
  AdvGroupBox;

type
  TDispHistForm = class(TNormalBaseForm)
    Panel1: TPanel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DispStatCodeIDField: TAlpineLookup;
    DateTimeStatField: TAlpineDateTime;
    NarrField: TAlpineMemo;
    Label3: TLabel;
    SecIDField: TAlpineLookup;
    UnitNumField: TAlpineLookup;
    Label4: TLabel;
    NfirsMainIDField: TAlpineLookup;
    Label5: TLabel;
    dispcallid: TAlpineEdit;
    sourceField: TAlpineEdit;
    datetimeenteredlabel: TLabel;
    datetimeentered: TAlpineDateTime;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    OldDateTimeStat : TDateTime;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    class procedure NewRecordFromDispCall(DataSet: TDataSet; iDispCallid: Integer);
    procedure DoAfterSetViewOnly; override;
    class function CanDeleteRecord(Sender: TObject): Boolean;
    class function CanAddRecord(Sender: TObject): Boolean;
    procedure DoAfterSetControls(Sender: TObject); override;
    procedure DoBeforePost(Sender: TObject); override;
    procedure DoAfterPost(Sender: TObject); override;
  end;

var
  DispHistForm: TDispHistForm;

implementation
uses GenFunc,
     CommonFunc,
     FormFunc,
     CommonDisp,
     CommonSec,
     DispCall,
     CommonVar;

{$R *.DFM}

procedure TDispHistForm.FormShow(Sender: TObject);
begin
  inherited;
  OldDateTimeStat := DateTimeStatField.Value;
end;

class procedure TDispHistForm.NewRecord(DataSet: TDataSet);
begin
  dataset.FieldByName('DATETIMESTAT').AsDateTime := Now;
  dataset.fieldByName('SOURCE').AsString := 'N';
end;

class procedure TDispHistForm.NewRecordFromDispCall(DataSet: TDataSet;iDispCallid: Integer);
begin
  TDispHistForm.NewRecord(DataSet);
  CommonNewRecordFromDispCall(GlobalAdoConnection,DataSet,iDispCallid);
end;

procedure TDispHistForm.DoAfterSetViewOnly;
begin
  SecIDField.Enabled := False;
  If mFireID='81000' then
    DispStatCodeIDField.Enabled := CheckSecVar('INCSETUP');
  If mFireID='52005' then
    SecIDField.Enabled := CheckSecVar('INCSETUP');
  datetimeentered.enabled := False;
end;

procedure TDispHistForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  If RecordEdit and (OldDateTimeStat <> DateTimeStatField.Value) then
    InsertSecRecAud('DISPHIST', 'CHANGE', pk, 'Changed Time from ' + FormatDateTime(DisplayDateFormat + ' HH:NN:SS',OldDateTimeStat) + ' to ' + FormatDateTime(DisplayDateFormat + ' HH:NN:SS',DateTimeStatField.Value)) ;
end;

procedure TDispHistForm.FormCreate(Sender: TObject);
Var DispCallForm : TDispCallForm;
begin
  inherited;
  If (mfireid = '81000') or (mfireid='42111') then
    ViewOnly := not CheckSecVar('INCEDIT')
  else begin
    If GetFormOfType(TDispCallForm) = Nil then begin
      ViewOnly := Not CheckSecVar('DISPGEN');
    end else begin
      DispCallForm := TDispCallForm(GetFormOfType(TDispCallForm));
      If (CheckSecVar('DISPEDITTIMEOPEN') and  DispCallform.IncStatField.Checked) or (CheckSecVar('DISPEDITTIMECLOSED') and  Not DispCallform.IncStatField.Checked) then
        ViewOnly := false
      else
        ViewOnly := true;
    end;
  end;

  If MFireID = '52280' then begin
    UnitNumField.ReferencingTable     := 'DISPSTAT';
    DispStatCodeIDField.LookupCode    := 'CODESORT';
  end;

  If MFireID = '52048' then
    UnitNumField.ReferencingTable := 'DISPSTAT';
  datetimeentered.Visible               := AlpineLogon;
  datetimeenteredlabel.Visible          := AlpineLogon;
  NarrField.BottomButtonClear           := true;
  NarrField.BottomButtonSelectNarrative := true;
  NarrField.BottomButtonkeyboard        := false;
  NarrField.BottomButtonTimeStamp       := true;
  NarrField.BottomButtonSpellCheck      := true;

  NarrField.SysNarrLookupTable          := 'DISPHIST';
  NarrField.SysNarrLookupField          := 'NARR';
end;

class function TDispHistForm.CanDeleteRecord(Sender: TObject): Boolean;
begin
  CanDeleteRecord := true;
end;

class function TDispHistForm.CanAddRecord(Sender: TObject): Boolean;
begin
  CanAddRecord := true;
end;

procedure TDispHistForm.DoAfterSetControls(Sender: TObject);
begin
  NfirsMainIDField.SqlExpr := 'SELECT NFIRSMAINID, FDID, INCNUM, DATETIMEALARM, STRNUM, STREET ' +
                              'FROM NFIRSMAIN WHERE DISPCALLID = '+pkValue(dispcallid.Value)+' '+
                              'ORDER BY DATETIMEALARM DESC';
end;

procedure TDispHistForm.DoAfterPost(Sender: TObject);
begin
  If (DateTimeStatField.Modified) and (anystrtoint(dispcallid.value)>0) then
    UpdateNfirsTimes(globaladoconnection,anystrtoint(dispcallid.Value),False);
  If InsertMode then
    AddToHistoryOtherFunc(GlobalAdoConnection,pk,DispStatCodeIDField.Value,dispcallid.Value,UnitNumField.Value,NarrField.Value);
  inherited;
end;

procedure TDispHistForm.DoBeforePost(Sender: TObject);
begin
  If SourceField.Value = 'N' then
    SourceField.Value := '';
end; 

end.
