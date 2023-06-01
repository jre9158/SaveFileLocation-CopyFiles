unit IncReNum;

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
  AlpineBase,
  AlpineBlockBrowse,
  AlpineDateTime,
  AdvGroupBox,
  Gauges;

type
  TIncReNumForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    Panel1: TPanel;
    FDIDField: TAlpineLookup;
    StartDateField: TAlpineDateTime;
    Label34: TLabel;
    Label1: TLabel;
    IncNumField: TAlpineEdit;
    Label2: TLabel;
    Panel2: TPanel;
    IncidentButton: TAlpineGlowButton;
    Gauge: TGauge;
    Label3: TLabel;
    EndDateField: TAlpineDateTime;
    Label4: TLabel;
    Label5: TLabel;
    procedure IncidentButtonClick(Sender: TObject);
    procedure FDIDFieldChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncReNumForm: TIncReNumForm;

implementation
uses GenFunc,
     CommonFunc;
{$R *.DFM}


procedure TIncReNumForm.FDIDFieldChange(Sender: TObject);
begin
  IncidentButton.Enabled := (StartDateField.Value > 0) and (EndDateField.Value > 0) and (Length(IncNumField.Text) = 10) and Not (FdidField.Value = '');
end;

procedure TIncReNumForm.IncidentButtonClick(Sender: TObject);
Var IncNum : Integer;
begin
  Open_Query('NFIRSMAIN',false,'SELECT NFIRSMAINID,EXPNUM FROM NFIRSMAIN WHERE ' +
                               'DATETIMEALARM >= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',StartDateField.Value)) + ' AND ' +
                               'DATETIMEALARM <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',EndDateField.Value)) + ' AND ' +
                               'FDID = ' + AddExpr(FdidField.Value) + ' ORDER BY DATETIMEALARM');

  Gauge.MaxValue := A('NFIRSMAIN').QueryRecCount;
  Gauge.Progress := 0;
  IncNum         := AnyStrToInt(IncNumField.Value);

  While Not A('NFIRSMAIN').Eof do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.processmessages;
    if GetField('NFIRSMAIN','EXPNUM').AsFloat > 0.0 then begin
      RunSQL('UPDATE NFIRSMAIN SET INCNUM = ' + AddExpr(IntToStr(IncNum -1)) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      A('NFIRSMAIN').Skip(1);
    end else begin
      RunSQL('UPDATE NFIRSMAIN SET INCNUM = ' + AddExpr(IntToStr(IncNum)) + ' WHERE NFIRSMAINID = ' + GetField('NFIRSMAIN','NFIRSMAINID').AsString);
      A('NFIRSMAIN').Skip(1);
      IncNum := IncNum + 1;
    end;
  end;
  CloseApollo('NFIRSMAIN');
  Close;
end;

end.
