unit DispRespRep;
 
interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AppLst,
  AlpineBaseSummaryReport,
  db,
  QRExport,
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TDispRespRepForm = class(TAlpineBaseSummaryReportForm)
    DispCallBand: TQRBand;
    NFIRSAppBand: TQRSubDetail;
    QRBand1: TQRBand;
    reportlabel: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel12: TQRLabel;
    datelabel: TQRLabel;
    DISPCALLID: TQRLabel;
    DATETIMEALARM: TQRLabel;
    ADDRESS: TQRLabel;
    CALLTYPE: TQRLabel;
    UnitHeaderBand: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel19: TQRLabel;
    UnitNumField: TQRLabel;
    EnrouteTime: TQRLabel;
    ArrivalTime: TQRLabel;
    ClearedTime: TQRLabel;
    QRBand3: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    FirstUnitNumField: TQRLabel;
    ResponseField: TQRLabel;
    SummaryBand1: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    CallField: TQRLabel;
    NoCallField: TQRLabel;
    AveRespField: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    TimeOutRespField: TQRLabel;
    TimeArrRespField: TQRLabel;
    TimeInRespField: TQRLabel;
    QRLabel18: TQRLabel;
    AppRespField: TQRLabel;
    QRLabel20: TQRLabel;
    DispStatField: TQRLabel;
    QRLabel21: TQRLabel;
    dispatchtime: TQRLabel;
    QRLabel22: TQRLabel;
    processtimeField: TQRLabel;
    FdidLabel: TQRLabel;
    FDIDField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSAppBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    DispCall        : TApolloData;
    NFIRSApp        : TApolloData;
    DispHist        : TApolloData;

    CallVar         : Real;
    NoCallVar       : Real;

    TotRespVar      : Real;
    TimeOutRespVar  : Real;
    TimeArrRespVar  : Real;
    TimeInRespVar   : Real;
    DispStatWhere   : String;
    function ApparatusMeetShootTime(DispTimeLocal: TDateTime;NfirsApp,DispHist: TApolloData): Boolean;
  public
    { Public declarations }
    ShootTimeThreshold: Integer;
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    function AdditionalWhere: String; override;
  end;

var
  DispRespRepForm: TDispRespRepForm;

implementation
uses GenFunc,
     CommonVar,
     Search,
     SecSet,
     Commonfunc,
     SysSet,
     SysRepMan,
     CommonDispVar,
     DispCallCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TDispRespRepForm.FormCreate(Sender: TObject);
var Form: TForm;
  mShootTimeThreshold: String;
begin
   ShootTimeThreshold := 0;

  if mFireid = '06090' then begin
    mShootTimeThreshold := '120';  
    InputDlg('Shoot Time Threshold','Shoot Time Threshold (Seconds)',mShootTimeThreshold,'999');
    ShootTimeThreshold := anystrtoint(mShootTimeThreshold);
  end else
    reportlabel.Caption :='Dispatch Response Times';
  Open_Query('DISPSET',False,'SELECT * FROM DISPSET WHERE FDID = ' + AddExpr(mFireID));
  TimeOutID := GetField('DISPSET','TIMEOUTID').AsString;
  TimeArrID := GetField('DISPSET','TIMEARRID').AsString;
  TimeInID  := GetField('DISPSET','TIMEINID').AsString;
  CloseApollo('DISPSET');

  DispCall              := Open_Query(Sql);
  NFIRSApp              := Open_Query('SELECT UNITNUM FROM NFIRSAPP WHERE 1=2');
  NFIRSAppBand.DataSet  := NFIRSApp.DataSource.DataSet;
  DispHist              := Open_Query('SELECT * FROM DISPHIST WHERE DISPCALLID = ' + pkValue('-1'));
  BaseReport.DataSet    := DispCall.DataSource.DataSet;
  DateLabel.Caption     := GetAlpineDateLabel(initialdate,finaldate);
  Form                  := GetFormOfType(TDispCallCondForm);

  DispStatWhere         := TDispCallCondForm(Form).GetDispStatWhere;
  DispStatField.Caption := TDispCallCondForm(Form).GetDispStatString;

  FdidField.Caption     := TDispCallCondForm(Form).GetFdidString;
  FdidLabel.Enabled     := Not (FdidField.Caption = '');

  If mFireID = '52115' then begin
    unitnumfield.width := 63;
    dispatchtime.left  := 64;
    dispatchtime.width := 103;
  end;

  If DispStatWhere = '' then
    DispStatWhere := ' AND 1=1 ';

  FireDeptField.Caption := mFireDept;
end;



function TDispRespRepForm.ApparatusMeetShootTime(DispTimeLocal: TDateTime;NfirsApp,DispHist: TApolloData): Boolean;
var EnrouteTimeLocal:TDateTime;
  function GetTheTime(iDispStatCodeId: String): TDateTime;
  begin
    If DispHist.ExactQueryLocate(['UNITNUM','DISPSTATCODEID'],[tdbfield(nfirsapp,'unitnum'), iDispStatCodeid]) then
      result := GetField(DispHist,'DATETIMESTAT').AsDateTime
    else
      result := 0;
  end;
begin
  result := False;
  nfirsapp.gotop;
  while not nfirsapp.eof do begin

    EnrouteTimeLocal := GetTheTime(TimeOutID);
    if (DispTimeLocal>0) and (EnrouteTimeLocal>0) then
      result := result or (TimeDifferenceInRealSeconds(DispTimeLocal,EnrouteTimeLocal)>ShootTimeThreshold);
    nfirsapp.next;
  end;
  nfirsapp.gotop;

end;

procedure TDispRespRepForm.FormDestroy(Sender: TObject);
begin
  DispCall.Free;
  NfirsApp.Free;
  DispHist.Free;
end;

procedure TDispRespRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar      : String;
    NfirsAppCnt : Integer;
begin
  DispCallID.Caption := tdbField(DispCall,'dispcallid');
  if mFireid='06090' then
    DateTimeAlarm.Caption := formatdatetime('MM/DD/YYYY HH:NN:SS',GetField(DispCall,'DATETIMEREC').AsDateTime)
  else
    DateTimeAlarm.Caption := GetField(DispCall,'DATETIMEREC').AsString;

  If (GetField(DispCall,'STRNUM').AsString <> '') AND (GetField(DispCall,'STREET').AsString <> '') then
    Address.caption       := FormatAddress(DispCall)
  else
    Address.caption       := (GetField(DispCall,'ADDRESS').AsString);
  CallType.Caption      := GetField(DispCall,'DISPCALLTYPEDESCR').AsString;

  NFIRSApp.UpdateSQL('SELECT UNITNUM FROM NFIRSAPP WHERE DISPCALLID = ' + pkValue(GetField(DispCall,'DISPCALLID').AsString) + ' ' + DispStatWhere );
  if DispStatWhere = '' then
    DispHist.UpdateSql('SELECT DISPSTATCODEID,UNITNUM,DATETIMESTAT FROM DISPHIST WHERE DISPCALLID = ' +
                      pkValue(GetField(DispCall,'DISPCALLID').AsString)+
                      ' ORDER BY DATETIMESTAT')

  else
    DispHist.UpdateSql('SELECT DISPHIST.DISPSTATCODEID, DISPHIST.UNITNUM, DISPHIST.DATETIMESTAT FROM DISPHIST ' +
                       ' LEFT JOIN NFIRSAPP ON (DISPHIST.UNITNUM = NFIRSAPP.UNITNUM) ' +
                       ' WHERE DISPHIST.DISPCALLID = ' + pkValue(GetField(DispCall,'DISPCALLID').AsString) +
                       ' AND NFIRSAPP.DISPCALLID = ' + pkValue(GetField(DispCall,'DISPCALLID').AsString) + DispStatWhere +
                       ' ORDER BY DISPHIST.DATETIMESTAT');


  NfirsAppCnt := NfirsApp.QueryRecCount;
  PrintBand := NfirsAppCnt > 0;
  if mFireid='06090' then
    PrintBand := PrintBand and ApparatusMeetShootTime(GetField(DispCall,'DATETIMEDISP').AsDateTime,NfirsApp,DispHist);

  If PrintBand then begin
    UnitHeaderBand.Enabled := true;
    If DispHist.ExactQueryLocate(['DISPSTATCODEID'],[TimeArrID]) then begin
      FirstUnitNumField.Caption := tdbfield(DispHist,'UNITNUM');
      ResponseField.Caption     := FormatDateTime('HH:NN:SS',GetField(DispHist,'DATETIMESTAT').AsDateTime - GetField(DispCall,'DATETIMEREC').AsDateTime);
      CallVar                   := CallVar + 1;
      TotRespVar                := TotRespVar + ( (GetField(DispHist,'DATETIMESTAT').AsDateTime - GetField(DispCall,'DATETIMEREC').AsDateTime) * 24 * 60 );
    end else begin
      FirstUnitNumField.Caption := 'N/A';
      ResponseField.Caption     := 'N/A';
      NoCallVar                 := NoCallVar + 1;
    end;
  end else
    UnitHeaderBand.Enabled := false;

end;

procedure TDispRespRepForm.NFIRSAppBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var ArrivalTimeVar : TDateTime;
    EnrouteTimeVar : TDateTime;
    ClearedTimeVar : TDateTime;
    DispatchTimeVar: TDateTime;

  function SetIt(UnitNum: String; QRLabel: TQRLabel; DispStatCodeID: String): TDateTime;
  begin
    SetIt            := 0;
    QrLabel.Caption  := '';
    If DispHist.ExactQueryLocate(['UNITNUM','DISPSTATCODEID'],[UnitNum, DispStatCodeID]) then begin
      if GetField(DispHist,'DATETIMESTAT').AsDateTime>0 then
        QrLabel.Caption := formatdatetime('mm/dd hh:nn:ss',GetField(DispHist,'DATETIMESTAT').AsDateTime)
      else
        QrLabel.Caption := '';      
      SetIt           := GetField(DispHist,'DATETIMESTAT').AsDateTime;
    end;
  end;
begin
  inherited;
//  DispHist.UpdateSql('SELECT DISPSTATCODEID,UNITNUM,DATETIMESTAT FROM DISPHIST WHERE DISPCALLID = ' + pkValue(GetField(DispCall,'DISPCALLID').AsString) + ' AND UNITNUM = ' + edbfield(NFIRSApp,'UNITNUM') + ' ORDER BY DATETIMESTAT');

  UnitNumField.Caption     := tdbfield(NFIRSApp,'UNITNUM');
  DispatchTimeVar          := SetIt(tdbfield(NFIRSApp,'UNITNUM'), dispatchtime, TimeDispID);
  EnrouteTimeVar           := SetIt(tdbfield(NFIRSApp,'UNITNUM'), EnrouteTime, TimeOutid);
  ArrivalTimeVar           := SetIt(tdbfield(NFIRSApp,'UNITNUM'), ArrivalTime, TimeArrID);
  ClearedTimeVar           := SetIt(tdbfield(NFIRSApp,'UNITNUM'), ClearedTime, TimeInID );
  PrintBand                := ArrivalTimeVar > 0;
  processtimeField.Caption := FormatDateTime('HH:NN:SS',DispatchTimeVar - GetField(DispCall,'DATETIMEREC').AsDateTime);
  if mFireId='06090' then begin
    TimeOutRespField.Caption := FormatDateTime('HH:NN:SS',EnrouteTimeVar - GetField(DispCall,'DATETIMEDISP').AsDateTime); //added for guilford
    Dispatchtime.caption     := FormatDateTime('HH:NN:SS',GetField(DispCall,'DATETIMEDISP').AsDateTime);
    PrintBand := False;
    if (GetField(DispCall,'DATETIMEDISP').AsDateTime>0) and (EnrouteTimeVar>0) then
      PrintBand := TimeDifferenceInRealSeconds(GetField(DispCall,'DATETIMEDISP').AsDateTime,EnrouteTimeVar)>ShootTimeThreshold;

  end else begin
    TimeOutRespField.Caption := FormatDateTime('HH:NN:SS',EnrouteTimeVar - GetField(DispCall,iif(mfireid='TARRA','DATETIMEDISP','DATETIMEREC')).AsDateTime);
    //PrintBand := true;
  end;
  TimeArrRespField.Caption := FormatDateTime('HH:NN:SS',ArrivalTimeVar - EnrouteTimeVar);
  AppRespField.Caption     := FormatDateTime('HH:NN:SS',ArrivalTimeVar - GetField(DispCall,'DATETIMEREC').AsDateTime);
  TimeInRespField.Caption  := FormatDateTime('HH:NN:SS',ClearedTimeVar - GetField(DispCall,'DATETIMEREC').AsDateTime);

end;

function TDispRespRepForm.SelectStatement: string;
begin
  result := 'SELECT DISPCALLID,ROOMAPT,DATETIMEREC,DATETIMEDISP, STRNUM, STREET, CROSS1, CROSS2, STATE, CITY, ZIP, ADDRESS, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR FROM DISPCALL ' ;
end;

function TDispRespRepForm.ReportJoins: String;
begin
  result := ' LEFT JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ';
end;

procedure TDispRespRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  CallField.Caption   := FormatFloat('##,##0',CallVar);
  NoCallField.Caption := FormatFloat('##,##0',NoCallVar);
  if CallVar > 0  then
    AveRespField.Caption := FormatFloat('##,##0.00',TotRespVar/CallVar)
  else
    AveRespField.Caption := '0';
end;

procedure TDispRespRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  CallVar         := 0;
  NoCallVar       := 0;
  TotRespVar      := 0;
  TimeOutRespVar  := 0;
  TimeArrRespVar  := 0;
  TimeInRespVar   := 0;
end;
function TDispRespRepForm.AdditionalWhere: String;
var Form: TForm;
begin
  Form  := GetFormOfType(TDispCallCondForm);
  if Form <> nil then
    result := TDispCallCondForm(Form).GetFdidWhere
  else
    result := '';  
end;

end.

