unit SimultaneousCallsReport;
 
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
  TSimultaneousCallsForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    IncNumField: TQRLabel;
    StreetField: TQRLabel;
    TimeAlarmField: TQRLabel;
    SummaryBand: TQRBand;
    TotIncField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    PeriodLabel: TQRLabel;
    QRLabel3: TQRLabel;
    MutualAidReceived: TQRLabel;
    totalmutualaid: TQRLabel;
    timeinfield: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel1: TQRLabel;
    FdidFieldLabel: TQRLabel;
    QRLabel4: TQRLabel;
    calltypefield: TQRLabel;
    QRLabel7: TQRLabel;
    SameIncNumField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    FFdid: String;
    TotIncVar      : Integer;
    MutualCntVar        : Integer;
    NfirsMainTable : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    constructor Create(AOwner: TComponent; mSql: String; mInitialDate,mFinalDate: TDateTime); override;
    class function OKToRun: Boolean; override;
    class function GetFdid(var bOkToRun: boolean): String;
  end;
{$I rednmx.inc}

var
  SimultaneousCallsForm: TSimultaneousCallsForm;

implementation
uses GenFunc,
     IncCond,
     CommonVar,
     CommonFunc,
     SecSet,
     SysRepMan;
{$R *.DFM}

procedure TSimultaneousCallsForm.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  SortOrder             := TIncCondForm(Form).SelectOrder;
  NfirsMainTable        := Open_Query(Sql + SortOrder);
  BaseReport.DataSet    := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption := FireDept;
  TotIncVar             := 0;
  MutualCntVar               := 0;
  PeriodLabel.caption   := GetAlpineDateLabel(InitialDate,FinalDate);
//Open_query('NFIRSMAINOTHER',False,'SELECT INCNUM, FDID, NFIRSMAIN.NFIRSMAINID, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE 1=2');
  Open_query('NFIRSMAINOTHER',False,'SELECT INCNUM, FDID, NFIRSMAIN.NFIRSMAINID, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('DATETIMEALARM',InitialDate,FinalDate)+' AND FDID = ' + Addexpr(FFdid));
  FdidFieldLabel.Caption :=FFdid;
end;

procedure TSimultaneousCallsForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotIncField.Caption    := 'Total Incidents: ' + FormatFloat('###,##0',TotIncVar);
  totalmutualaid.Caption := 'Total Receiving Aid: ' + FormatFloat('###,##0',MutualCntVar);
end;

procedure TSimultaneousCallsForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotIncVar := 0;
  MutualCntVar   := 0;
end;

procedure TSimultaneousCallsForm.FormDestroy(Sender: TObject);
begin
  inherited;
  CloseApollo('NFIRSMAINOTHER');  
  NfirsMainTable.Free;
end;

function TSimultaneousCallsForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAIN.NFIRSMAINID,NFIRSMAIN.SITFOUND, MDEPT, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR,N5INCTYPE.DESCR SITFOUNDDESCR, NFIRSMAIN.FDID, NFIRSMAIN.DATETIMEIN,'+
            'NFIRSMAIN.MAID,NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.INCNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET,NFIRSMAIN.ROOMAPT FROM NFIRSMAIN ' ;
end;

function TSimultaneousCallsForm.ReportJoins: String;
begin
  result := 'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE) '+
            'LEFT JOIN DISPCALL ON (NFIRSMAIN.DISPCALLID = DISPCALL.DISPCALLID) '+
            'LEFT JOIN DISPCALLTYPE ON (DISPCALLTYPE.DISPCALLTYPEID = DISPCALL.DISPCALLTYPEID) ';
end;

procedure TSimultaneousCallsForm.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var DateTimeAlarm : String;
    SimCall       : Boolean;
    NfirsMainID   : String;
begin
  inherited;
  A('NFIRSMAINOTHER').GoTop;
  NfirsMainID := GetField(NfirsMainTable,'NFIRSMAINID').AsString;
  PrintBand   := False;
  SimCall     := false;
  NFIRSMainBand.Color := clwhite;

  If GetField(NfirsMainTable,'DATETIMEIN').AsdateTime > 0 then begin
    A('NFIRSMAINOTHER').UpdateSQL('SELECT INCNUM, FDID, NFIRSMAIN.NFIRSMAINID, DATETIMEALARM, DATETIMEIN FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('DATETIMEALARM',GetField(NfirsMainTable,'DATETIMEALARM').AsdateTime-1,GetField(NfirsMainTable,'DATETIMEIN').AsdateTime+1) + ' AND FDID = ' + Addexpr(FFdid));
    While not A('NFIRSMAINOTHER').eof do begin
      If (GetField('NFIRSMAINOTHER','NFIRSMAINID').AsString <> NfirsMainID) then begin
        SimCall := SimCall or (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime > GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime < GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
        SimCall := SimCall or (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    > GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    <= GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
        SimCall := SimCall or (GetField('NFIRSMAINOTHER','DATETIMEALARM').AsDateTime <= GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime) and (GetField('NFIRSMAINOTHER','DATETIMEIN').AsDateTime    > GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);

        If SimCall then begin
          SameIncNumField.Caption := tdbfield('NFIRSMAINOTHER','INCNUM');
          Break;
        end;  
      end;
      A('NFIRSMAINOTHER').skip(1);
    end;
  end;

  If SimCall then begin
    PrintBand                  := true;
    TimeAlarmField.Caption     := FormatDateTime('MM/DD/YY HH:NN',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
    TimeInField.Caption        := FormatDateTime('MM/DD/YY HH:NN',GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);
    IncNumField.Caption        := substr(dbfield(NfirsMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NfirsMainTable,'INCNUM'),5,6);
    StreetField.Caption        := alltrim(alltrim(dbField(NfirsMainTable,'STRNUM')) + ' ' + dbField(NfirsMainTable,'STREET'));
    if CheckModule('DISP') then
      calltypefield.Caption    := tdbField(NfirsMainTable,'DISPCALLTYPEDESCR')
    else
      calltypefield.Caption    := tdbField(NfirsMainTable,'SITFOUNDDESCR');
      
    TotIncVar                  := TotIncVar + 1;

    If (tdbField(NfirsMainTable,'MAID')='1') or (tdbField(NfirsMainTable,'MAID')='2') then begin
      MutualCntVar              := MutualCntVar + 1;
      MutualAidReceived.Caption := 'Yes';
      if tdbField(NfirsMainTable,'MDEPT')<>'' then
        MutualAidReceived.Caption := MutualAidReceived.Caption+' - '+ tdbField(NfirsMainTable,'MDEPT');
    end else
      MutualAidReceived.Caption := 'No';
  end else
    PrintBand                  := false;
end;

constructor TSimultaneousCallsForm.Create(AOwner: TComponent; mSql: String; mInitialDate,mFinalDate: TDateTime);
var bOkToRun: Boolean;
begin
  FFdid := TSimultaneousCallsForm.GetFDID(bOkToRun);
  inherited Create(AOwner, mSql,mInitialDate,mFinalDate)
end;

class function TSimultaneousCallsForm.GetFdid(var bOkToRun: boolean): String;
var IncCondForm  : TIncCondForm;
    RowVar       : Integer;
    iChecked     : Integer;
    CheckValue   : Boolean;
begin
  IncCondForm := TIncCondForm(GetFormOfType(TIncCondform));
  iChecked := 0;
  RowVar := 0;
  with IncCondForm do begin
    if FDIDPanel.Visible then begin
      For RowVar := 0 to (FdidBrowse.RowCount-1) do begin
        FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
        If CheckValue then begin
          if FdidBrowse.Cells[0,RowVar] <> '' then begin                       //added to fix the indexing issue by Doug and Mathew on 6-9-15
            result := FdidBrowse.Cells[0,RowVar];
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


class function TSimultaneousCallsForm.OKToRun: Boolean;
Var Form     : TForm;
    bOkToRun : Boolean;
begin
  TSimultaneousCallsForm.GetFDID(bOkToRun);
  OkToRun := bOkToRun;
  If not bOkToRun then
    ShowMessage('You must check one and only one');
end;

end.
