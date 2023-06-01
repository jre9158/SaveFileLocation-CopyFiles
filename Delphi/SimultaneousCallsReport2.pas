unit SimultaneousCallsReport2;

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
  AlpineBaseSummaryReport,
  applst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TSimultaneousCalls2Form = class(TAlpineBaseSummaryReportForm)
    IncidentHeader: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    PeriodLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    FdidFieldLabel: TQRLabel;
    QRLabel4: TQRLabel;
    NFIRSMainBand: TQRSubDetail;
    IncNumField: TQRLabel;
    StreetField: TQRLabel;
    TimeAlarmField: TQRLabel;
    MutualAidReceived: TQRLabel;
    timeinfield: TQRLabel;
    calltypefield: TQRLabel;
    OtherIncNum: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    simdata: TQRLabel;
    summaryband: TQRBand;
    QRLabel7: TQRLabel;
    SITFOUNDDESCRField: TQRLabel;
    topline: TQRShape;
    UnitNumField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    FFdid          : String;
    iSim           : Integer;  
    TotIncVar      : Integer;
    iMutual        : Integer;
    NfirsMainTable : TApolloData;
    NfirsAppTable  : TApolloData;
    bPrintAddress  : Boolean;
    SimCall        : Boolean;
    SimCountArray  : TStringList;
  public
    { Public declarations }
    procedure AddSimCountToArray(iSimCount: Integer);    
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    constructor Create(AOwner: TComponent; mSql: String; mInitialDate,mFinalDate: TDateTime); override;
    class function OKToRun: Boolean; override;
    class function GetFdid(var bOkToRun: boolean): String;
    function GetUnitNum(NfirsMainID: String): String;
end;

  {$I rednmx.inc}

var
  SimultaneousCalls2Form: TSimultaneousCalls2Form;

implementation
uses GenFunc,
     IncCond,
     CommonVar,
     CommonFunc,
     SecSet,
     FormFunc,
     SysRepMan;
     
{$R *.DFM}

procedure TSimultaneousCalls2Form.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
    SQLVar    : String;
begin
  SimCountArray         := TStringList.Create;
  SimCall               := False;
  Form                  := GetFormOfType(TIncCondForm);
  SortOrder             := TIncCondForm(Form).SelectOrder;
  NfirsMainTable        := Open_Query(Sql + SortOrder);
  NFIRSMainBand.DataSet := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption := FireDept;
  TotIncVar             := 0;
  iMutual               := 0;
  PeriodLabel.caption   := GetAlpineDateLabel(InitialDate,FinalDate);
  Open_query('NFIRSMAINOTHER',False,'SELECT INCNUM, FDID, NFIRSMAIN.NFIRSMAINID, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE 1=2');

  FdidFieldLabel.Caption :=FFdid;
  If mFireid = '06090' then
    bPrintAddress := BooleanMessageDlg('Print Address?')
  else
    bPrintAddress := true;
end;

procedure TSimultaneousCalls2Form.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotIncVar := 0;
  iMutual   := 0;
  simcountarray.Clear;
  iSim      := 0;
end;

procedure TSimultaneousCalls2Form.FormDestroy(Sender: TObject);
begin
  inherited;
  CloseApollo('NFIRSMAINOTHER');
  NfirsMainTable.Free;
end;

function TSimultaneousCalls2Form.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.SITFOUND, MDEPT, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR,N5INCTYPE.DESCR SITFOUNDDESCR, NFIRSMAIN.FDID, NFIRSMAIN.DATETIMEIN,'+
            'NFIRSMAIN.MAID,NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.INCNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET,NFIRSMAIN.ROOMAPT FROM NFIRSMAIN ' ;
end;

function TSimultaneousCalls2Form.ReportJoins: String;
begin
  result := 'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE) '+
            'LEFT JOIN DISPCALL ON (NFIRSMAIN.DISPCALLID = DISPCALL.DISPCALLID) '+
            'LEFT JOIN DISPCALLTYPE ON (DISPCALLTYPE.DISPCALLTYPEID = DISPCALL.DISPCALLTYPEID) ';
end;

procedure TSimultaneousCalls2Form.AddSimCountToArray(iSimCount: Integer);
var i: Integer;
begin
  for i := SimCountArray.count to iSimCount-1 do
    SimCountArray.Add('0');
  for i:= 0 to isimCount -1 do
    SimCountArray[i] := inttostr(strtoint(SimCountArray[i])+1);
end;

function TSimultaneousCalls2Form.GetUnitNum(NfirsMainID: String): String;
Var UnitNum : String;
begin
  UnitNum := '';
  If A('NFIRSAPP').ExactQueryLocate('NFIRSMAINID',NfirsMainID) then begin
    While (GetField('NFIRSAPP','NFIRSMAINID').AsString = NfirsMainID) and Not A('NFIRSAPP').Eof do begin
      UnitNum := UnitNum + ' ' + tdbfield('NFIRSAPP','UNITNUM');
      A('NFIRSAPP').Skip(1);
    end;
  end;
  GetUnitNum := alltrim(UnitNum);
end;

procedure TSimultaneousCalls2Form.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var DateTimeAlarm   : String;
    bAdd            : Boolean;
    bFoundFirst     : Boolean;
    NfirsMainID     : String;
    iSimCount       : Integer;
begin
  inherited;
  A('NFIRSMAINOTHER').GoTop;
  SimCall              := false;
  NfirsMainID          := GetField(NfirsMainTable,'NFIRSMAINID').AsString;
  PrintBand            := False;
  NFIRSMainBand.Color  := clwhite;
  OtherIncNum.Caption  := '';
  topline.enabled      := False;
  iSimCount            := 0;
  bFoundFirst          := False;

  If GetField(NfirsMainTable,'DATETIMEIN').AsdateTime > 0 then begin
    A('NFIRSMAINOTHER').UpdateSQL('SELECT INCNUM, FDID, NFIRSMAIN.NFIRSMAINID, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('DATETIMEALARM',GetField(NfirsMainTable,'DATETIMEALARM').AsdateTime-1,GetField(NfirsMainTable,'DATETIMEIN').AsdateTime+1) + ' AND FDID = ' + Addexpr(FFdid));
    While not A('NFIRSMAINOTHER').eof do begin
      If (GetField('NFIRSMAINOTHER','NFIRSMAINID').AsString <> NfirsMainID) then begin
        bAdd    := (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime > GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime < GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
        bAdd    := bAdd or (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    > GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    <= GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
        bAdd    := bAdd or (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime <= GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    > GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
        SimCall := SimCall or bAdd;
        If bAdd then begin
          If not bFoundFirst then
            topline.enabled := GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime < GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime;
          bFoundFirst         := True;
          iSimCount           := iSimCount + 1;
          OtherIncNum.Caption := OtherIncNum.Caption + FormatIncNum(GetField('NFIRSMAINOTHER','INCNUM').AsString) + #10#13;
        end;
      end;
      A('NFIRSMAINOTHER').skip(1);
    end;
  end;

  If SimCall then begin
    If iSimCount > 0 then
      AddSimCountToArray(iSimCount);
    PrintBand                  := true;
    TimeAlarmField.Caption     := FormatDateTime('MM/DD/YY HH:NN',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
    TimeInField.Caption        := FormatDateTime('MM/DD/YY HH:NN',GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
    IncNumField.Caption        := substr(dbfield(NfirsMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NfirsMainTable,'INCNUM'),5,6);
    If bPrintAddress then
      StreetField.Caption      := alltrim(alltrim(dbField(NfirsMainTable,'STRNUM')) + ' ' + dbField(NfirsMainTable,'STREET'))
    else
      StreetField.Caption      := '';  
    calltypefield.Caption      := tdbField(NfirsMainTable,'DISPCALLTYPEDESCR');
    SITFOUNDDESCRField.Caption := tdbField(NfirsMainTable,'SITFOUNDDESCR');

    TotIncVar                  := TotIncVar + 1;

    If (tdbField(NfirsMainTable,'MAID')='1') or (tdbField(NfirsMainTable,'MAID')='2') then begin
      iMutual                   := iMutual + 1;
      MutualAidReceived.Caption := 'Yes';
      if tdbField(NfirsMainTable,'MDEPT')<>'' then
        MutualAidReceived.Caption := MutualAidReceived.Caption+' - '+ tdbField(NfirsMainTable,'MDEPT');
    end else
      MutualAidReceived.Caption := 'No';
  end else
    PrintBand                  := false;
end;

constructor TSimultaneousCalls2Form.Create(AOwner: TComponent; mSql: String; mInitialDate,mFinalDate: TDateTime);
var bOkToRun: Boolean;
begin
  FFdid := TSimultaneousCalls2Form.GetFDID(bOkToRun);
  inherited Create(AOwner, mSql,mInitialDate,mFinalDate)
end;

class function TSimultaneousCalls2Form.GetFdid(var bOkToRun: boolean): String;
var IncCondForm  : TIncCondForm;
    RowVar       : Integer;
    iChecked     : Integer;
    CheckValue   : Boolean;
begin
  IncCondForm := TIncCondForm(GetFormOfType(TIncCondform));
  iChecked    := 0;
  RowVar      := 0;
  with IncCondForm do begin
    if FDIDPanel.Visible then begin
      For RowVar := 0 to FdidBrowse.RowCount-1 do begin
        FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
        If CheckValue then begin
          if FdidBrowse.Cells[0,RowVar] <> '' then begin                              //added to fix the indexing issue by Doug on 9-30-15
            result   := FdidBrowse.Cells[0,RowVar];
            iChecked := iChecked + 1;
          end;
        end;
      end;
      bOkToRun := iChecked = 1;
    end else begin
      bOkToRun := True;
      result   := mFireID;
    end;
  end;
end;


class function TSimultaneousCalls2Form.OKToRun: Boolean;
Var Form     : TForm;
    bOkToRun : Boolean;
begin
  TSimultaneousCalls2Form.GetFDID(bOkToRun);
  OkToRun := bOkToRun;
  If not bOkToRun then
    ShowMessage('You must check one and only');
end;

procedure TSimultaneousCalls2Form.QRSubDetail1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  simdata.Caption := 'Number of times '+inttostr(iSim+2)+' or more calls simultaneous:'+inttostr(strtoint(simcountarray[iSim]));
  iSim            := iSim + 1;
end;

procedure TSimultaneousCalls2Form.QRSubDetail1NeedData(Sender: TObject; var MoreData: Boolean);
begin
  inherited;
//  simdata.Caption := 'Number of times '+inttostr(iSim+2)+' or more calls simultaneous:'+inttostr(strtoint(simcountarray[iSim])+iTotal);
  MoreData := iSim <= simcountarray.count -1 ;
end;

end.
