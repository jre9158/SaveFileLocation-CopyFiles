unit DispNote;

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
  AlpinePanel;

type
  TDispNoteForm = class(TNormalBaseForm)
    DateTimeStatPanel: TAlpinePanel;
    DateTimeStatLabel: TLabel;
    DateTimeStatField: TAlpineDateTime;
    NarrPanel: TAlpinePanel;
    NarrField: TAlpineMemo;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoAfterPost(Sender: TObject); override;
  end;

var
  DispNoteForm: TDispNoteForm;

implementation
uses GenFunc,
     Disp,
     CommonFunc,
     CommonPage,
     CommonDispVar,
     SecSet;

{$R *.DFM}

class procedure TDispNoteForm.NewRecord(DataSet: TDataSet);
begin
//DataSet.FieldByname('FDID').AsString := ' ';
end;

procedure TDispNoteForm.DoAfterPost(Sender: TObject);
Var ADispCall : TDispCall;
    DispStatCode: TDispStatCode;
begin
  If InsertMode then begin
    If CheckModule('PAGE') then begin
      DispStatCode := GetDispStatCodeObject(GetFieldValue('DISPSTATCODEID'));
      If DispStatCode <> nil then begin
        If DispStatCode.Page then begin
          ADispCall := CreateDispCallFromDispCallid(GlobalAdoConnection,StrToInt(GetFieldValue('DISPCALLID')));
          StatusPage(GlobalAdoConnection,ADispCall,alltrim(Narrfield.value),GetFieldValue('DISPSTATCODEID'),ADispCall.Fdid,'');
          ADispCall.Free;
        end;
      end;
//    DispStatCode.Free;
    end;
  end;
end;

procedure TDispNoteForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := cafree;
  if (UpdateControl is TDispForm) then begin
    if GetFormOfType(TDispForm)<> nil then begin
      TDispForm(GetFormOfType(TDispForm)).UpDateGrids;
    end;
  end;
end;

procedure TDispNoteForm.FormCreate(Sender: TObject);
begin
  inherited;
  NarrField.SysNarrLookupTable          := 'DISPHIST';
  NarrField.SysNarrLookupField          := 'NARR';
  NarrField.BottomButtonClear           := true;
  NarrField.BottomButtonSelectNarrative := true;
  NarrField.BottomButtonSpellCheck      := true;
end;

end.
