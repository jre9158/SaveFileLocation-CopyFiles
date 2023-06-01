unit VioCodeSet;

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
  AppLst,
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
  htmlbtns,
  AlpineCheck,
  Gauges;

type
  TVioCodeSetForm = class(TNormalBaseForm)
    CodeButton: TAlpineGlowButton;
    Panel1: TPanel;
    Label2: TLabel;
    Label1: TLabel;
    MyDBEdit2: TAlpineEdit;
    CodeField: TAlpineEdit;
    AlpineCheckBox5: TAlpineCheckBox;
    Label3: TLabel;
    Panel2: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Gauge: TGauge;
    DatabaseField: TAlpineEdit;
    TableField: TAlpineEdit;
    VioCodeSetIDField: TAlpineEdit;
    ImportButton: TAlpineGlowButton;
    procedure CodeButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure PrintButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  VioCodeSetForm: TVioCodeSetForm;

implementation
uses GenFunc,
     Main,
     CommonFunc,
     VioCodeRep,
     VioCode;
     
{$R *.DFM}
{$I rednmx.inc}

procedure TVioCodeSetForm.CodeButtonClick(Sender: TObject);
begin
  inherited;
  Screen.Cursor := crHourGlass;
  VioCodeForm   := TVioCodeForm.Create(Self,CodeField.Value,PK,False);
  VioCodeForm.ShowModal;
  Screen.Cursor := crDefault;
  VioCodeForm.Free;
end;

procedure TVioCodeSetForm.FormShow(Sender: TObject);
begin
  inherited;
  ScaleButtonsOnPanel('H',BaseBottomPanel);

  DatabaseField    .Value   := 'C:\REDNMX\APP\INSPCODES.MDB';
  TableField       .Value   := 'VIOCODE';
  VioCodeSetIDField.Value   := '';

  DatabaseField    .Enabled := AlpineLogin;
  TableField       .Enabled := AlpineLogin;
  VioCodeSetIDField.Enabled := AlpineLogin;
  ImportButton     .Enabled := AlpineLogin;

  Caption                   := 'Violation Code Set: ' + PK;
end;

procedure TVioCodeSetForm.ImportButtonClick(Sender: TObject);
var AccessTable  : TAlpineAdoConnection;
    ErrorString  : String;
begin
  inherited;
  AccessTable := TAlpineAdoConnection.Create(self,DatabaseField.Value,'','',AccessTableType);
  if not AccessTable.Connect(ErrorString) then begin
    showmessage('Could not connect to Access Database: '+ ErrorString);
    AccessTable.Free;
    exit;
  end;
  try
    try
      Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
      Open_Query(AccessTable,'ACCVIOCODE',false,'SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + pkValue(VioCodeSetIDField.Value));

      Gauge.MaxValue := A('ACCVIOCODE').RecCount;
      Gauge.Progress := 0;

      A('ACCVIOCODE').Gotop;
      try
        While Not A('ACCVIOCODE').Eof do begin
          Gauge.Progress := Gauge.Progress + 1;
          Application.ProcessMessages;

          A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + pk + ' AND ACCESSVIOCODEID = ' + GetField('ACCVIOCODE','VIOCODEID').AsString);
          If A('VIOCODE').RecordsExist then
            A('VIOCODE').Edit
          else
            A('VIOCODE').Append;
          GetField('VIOCODE','CODE').AsString            := tdbfield('ACCVIOCODE','CODE');
          GetField('VIOCODE','DESCR').AsString           := tdbfield('ACCVIOCODE','DESCR');
          GetField('VIOCODE','NARR').AsString            := GetField('ACCVIOCODE','NARR').AsString;
          GetField('VIOCODE','VIOCODESETID').AsString    := pk;
          GetField('VIOCODE','ACCESSVIOCODEID').AsString := GetField('ACCVIOCODE','VIOCODEID').AsString;
          GetField('VIOCODE','ACCESSPARENTID').AsString  := GetField('ACCVIOCODE','PARENTID').AsString;
          GetField('VIOCODE','SORTORD').AsString         := GetField('ACCVIOCODE','SORTORD').AsString;
          A('VIOCODE').Post;
          application.processmessages;


        end;
      finally
         A('ACCVIOCODE').Skip(1);
      end;

      CloseApollo('VIOCODE');

      Gauge.Progress := 0;

      Open_Query('VIOCODE',true,'SELECT * FROM VIOCODE WHERE 1=2');
      Open_Query('VIOCODEPARENT',false,'SELECT * FROM VIOCODE WHERE 1=2');

      A('ACCVIOCODE').Gotop;
      While Not A('ACCVIOCODE').Eof do begin
      try
        Gauge.Progress := Gauge.Progress + 1;
        Application.ProcessMessages;

        A('VIOCODE').UpdateSQL('SELECT * FROM VIOCODE WHERE VIOCODESETID = ' + pk + ' AND ACCESSVIOCODEID = ' + GetField('ACCVIOCODE','VIOCODEID').AsString);
        If A('VIOCODE').RecordsExist then begin

          A('VIOCODEPARENT').UpdateSQL('SELECT VIOCODEID FROM VIOCODE WHERE ACCESSVIOCODEID = ' + pkValue(GetField('VIOCODE','ACCESSPARENTID').AsString));
          If A('VIOCODEPARENT').RecordsExist then begin
            A('VIOCODE').Edit;
            Getfield('VIOCODE','PARENTID').AsString := Getfield('VIOCODEPARENT','VIOCODEID').AsString;
            A('VIOCODE').Post;
          end;
        end;
        application.processmessages;
      finally
         A('ACCVIOCODE').Skip(1);
      end;
      end;
      ShowMessage('Done');
      Gauge.Progress := 0;
    Except
       on E: Exception do
       begin
         ShowMessage('Failed to import! - Exception: '+E.Message);
         AppendToLog('Failed to import Violation set codes! Exception in VioCodeSet.pas ImportButtonClick(): '+E.Message);
       end;
    end;

  finally
    CloseApollo('VIOCODE');
    CloseApollo('VIOCODEPARENT');
    CloseApollo('ACCVIOCODE');
  end;



end;

class procedure TVioCodeSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TVioCodeSetForm.PrintButtonClick(Sender: TObject);
begin
  VioCodeRepForm :=TVioCodeRepForm.Create(Application,'',0,0);
  VioCodeRepForm.BaseReport.Preview;
  VioCodeRepForm.Free;
end;

end.
