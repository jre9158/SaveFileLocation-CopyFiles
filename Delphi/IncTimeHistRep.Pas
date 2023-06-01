unit IncTimeHistRep;

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
  grimgctrl,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TIncTimeHistRepForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    IncNumField: TQRLabel;
    DateTimeAlarmField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TitleBand: TQRBand;
    QRSysData1: TQRSysData;
    SummaryBand: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel3: TQRLabel;
    DateTimeOutField: TQRLabel;
    QRLabel6: TQRLabel;
    DateTimeArrField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    DateTimeContField: TQRLabel;
    DateTimeInField: TQRLabel;
    InAlarmField: TQRLabel;
    InContField: TQRLabel;
    ContAlarmField: TQRLabel;
    ContArrField: TQRLabel;
    ArrAlarmField: TQRLabel;
    ArrOutField: TQRLabel;
    OutAlarmField: TQRLabel;
    QRLabel5: TQRLabel;
    OutAlarmAveField: TQRLabel;
    QRLabel16: TQRLabel;
    ArrOutAveField: TQRLabel;
    ArrAlarmAveField: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel22: TQRLabel;
    ContArrAveField: TQRLabel;
    ContAlarmAveField: TQRLabel;
    InContAveField: TQRLabel;
    InAlarmAveField: TQRLabel;
    QRLabel7: TQRLabel;
    DateAlarmField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    NfirsMainTable: TApolloData;

  public
    { Public declarations }
    OutAlarmCntVar : Real;
    OutAlarmTotVar : Real;
    ArrOutCntVar   : Real;
    ArrOutTotVar   : Real;
    ArrAlarmCntVar : Real;
    ArrAlarmTotVar : Real;

    ContArrCntVar  : Real;
    ContArrTotVar  : Real;
    ContAlarmCntVar: Real;
    ContAlarmTotVar: Real;
    InContCntVar   : Real;
    InContTotVar   : Real;
    InAlarmCntVar  : Real;
    InAlarmTotVar  : Real;


    function  SelectStatement: string; override;
    function  ReportJoins: String; override;
  end;
{$I rednmx.inc}

var
  IncTimeHistRepForm: TIncTimeHistRepForm;

implementation
uses GenFunc,
     IncCond,
     CommonFunc,
     SysRepMan;

{$R *.DFM}

procedure TIncTimeHistRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  OutAlarmCntVar         := 0;
  OutAlarmTotVar         := 0;
  ArrOutCntVar           := 0;
  ArrOutTotVar           := 0;
  ArrAlarmCntVar         := 0;
  ArrAlarmTotVar         := 0;
  ContArrCntVar          := 0;
  ContArrTotVar          := 0;
  ContAlarmCntVar        := 0;
  ContAlarmTotVar        := 0;
  InContCntVar           := 0;
  InContTotVar           := 0;
  InAlarmCntVar          := 0;
  InAlarmTotVar          := 0;
end;

procedure TIncTimeHistRepForm.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
begin
  Form                   := GetFormOfType(TIncCondForm);
  SortOrder              := TIncCondForm(Form).SelectOrder;
  NfirsMainTable         := Open_Query(Sql + SortOrder);
  BaseReport.DataSet     := NfirsMainTable.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;

  TIncCondForm.PrintTitles(TitleBand);
  NFIRSMainBand.PKField  := 'NFIRSMAINID';

  OutAlarmCntVar         := 0;
  OutAlarmTotVar         := 0;
  ArrOutCntVar           := 0;
  ArrOutTotVar           := 0;
  ArrAlarmCntVar         := 0;
  ArrAlarmTotVar         := 0;
  ContArrCntVar          := 0;
  ContArrTotVar          := 0;
  ContAlarmCntVar        := 0;
  ContAlarmTotVar        := 0;
  InContCntVar           := 0;
  InContTotVar           := 0;
  InAlarmCntVar          := 0;
  InAlarmTotVar          := 0;
end;

procedure TIncTimeHistRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NfirsMainTable.Free;
end;

function TIncTimeHistRepForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEOUT, NFIRSMAIN.DATETIMEARR, NFIRSMAIN.DATETIMECONT, NFIRSMAIN.DATETIMEIN, NFIRSMAIN.INCNUM FROM NFIRSMAIN ' ;
end;

function TIncTimeHistRepForm.ReportJoins: String;
Var Form  : TForm;
begin
  Form   := GetFormOfType(TIncCondForm);
  result := 'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE) LEFT JOIN NFIRSAPP ON(NFIRSMAIN.NFIRSMAINID = NFIRSAPP.NFIRSMAINID)';

  If Not (TIncCondForm(Form).GetFdidCompIDWhere = '') then
    result := result + ' INNER JOIN NFIRSFDIDCOMP ON (NFIRSFDIDCOMP.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ';
end;

procedure TIncTimeHistRepForm.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  OutAlarmField .Caption := '';
  ArrOutField   .Caption := '';
  ArrAlarmField .Caption := '';
  ContArrField  .Caption := '';
  ContAlarmField.Caption := '';
  InContField   .Caption := '';
  InAlarmField  .Caption := '';

  If (GetField(NfirsMainTable,'NFIRSMAINID').AsInteger > 0) then begin
    IncNumField.Caption        := substr(dbfield(NfirsMainTable,'INCNUM'),1,4) + '-' + substr(dbfield(NfirsMainTable,'INCNUM'),5,6);
    DateAlarmField.Caption     := AlpineFormatDateTime('MM/DD/YYYY',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
    DateTimeAlarmField.Caption := AlpineFormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
    DateTimeOutField.Caption   := AlpineFormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime);
    DateTimeArrField.Caption   := AlpineFormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEARR').AsDateTime);
    DateTimeContField.Caption  := AlpineFormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMECONT').AsDateTime);
    DateTimeInField.Caption    := AlpineFormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEIN').AsDateTime);

    If (GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime > 0) then begin
      OutAlarmField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
      OutAlarmCntVar        := OutAlarmCntVar + 1;
      OutAlarmTotVar        := OutAlarmTotVar + GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMEARR').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime > 0) then begin
      ArrOutField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEARR').AsDateTime-GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime);
      ArrOutCntVar        := ArrOutCntVar + 1;
      ArrOutTotVar        := ArrOutTotVar + GetField(NfirsMainTable,'DATETIMEARR').AsDateTime-GetField(NfirsMainTable,'DATETIMEOUT').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMEARR').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime > 0) then begin
      ArrAlarmField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEARR').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
      ArrAlarmCntVar        := ArrAlarmCntVar + 1;
      ArrAlarmTotVar        := ArrAlarmTotVar + GetField(NfirsMainTable,'DATETIMEARR').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMECONT').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEARR').AsDateTime > 0) then begin
      ContArrField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMECONT').AsDateTime-GetField(NfirsMainTable,'DATETIMEARR').AsDateTime);
      ContArrCntVar        := ContArrCntVar + 1;
      ContArrTotVar        := ContArrTotVar + GetField(NfirsMainTable,'DATETIMECONT').AsDateTime-GetField(NfirsMainTable,'DATETIMEARR').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMECONT').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime > 0) then begin
      ContAlarmField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMECONT').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
      ContAlarmCntVar        := ContAlarmCntVar + 1;
      ContAlarmTotVar        := ContAlarmTotVar + GetField(NfirsMainTable,'DATETIMECONT').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMEIN').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMECONT').AsDateTime > 0) then begin
      InContField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEIN').AsDateTime-GetField(NfirsMainTable,'DATETIMECONT').AsDateTime);
      InContCntVar        := InContCntVar + 1;
      InContTotVar        := InContTotVar + GetField(NfirsMainTable,'DATETIMEIN').AsDateTime-GetField(NfirsMainTable,'DATETIMECONT').AsDateTime;
    end;

    If (GetField(NfirsMainTable,'DATETIMEIN').AsDateTime > 0) and (GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime > 0) then begin
      InAlarmField.Caption := FormatDateTime('HH:NN:SS',GetField(NfirsMainTable,'DATETIMEIN').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime);
      InAlarmCntVar        := InAlarmCntVar + 1;
      InAlarmTotVar        := InAlarmTotVar + GetField(NfirsMainTable,'DATETIMEIN').AsDateTime-GetField(NfirsMainTable,'DATETIMEALARM').AsDateTime;
    end;
    NFIRSMainBand.Color := IIfI(NFIRSMainBand.Color = clwhite, $00EBEBEB, clwhite);
  end else
    PrintBand := false;
end;

procedure TIncTimeHistRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;

  OutAlarmAveField.Caption  := AlpineFormatDateTime('HH:NN:SS', SayFrac(OutAlarmTotVar  , OutAlarmCntVar));
  ArrOutAveField.Caption    := AlpineFormatDateTime('HH:NN:SS', SayFrac( ArrOutTotVar    , ArrOutCntVar));
  ArrAlarmAveField.Caption  := AlpineFormatDateTime('HH:NN:SS', SayFrac( ArrAlarmTotVar  , ArrAlarmCntVar));
  ContArrAveField.Caption   := AlpineFormatDateTime('HH:NN:SS', SayFrac( ContArrTotVar   , ContArrCntVar));
  ContAlarmAveField.Caption := AlpineFormatDateTime('HH:NN:SS', SayFrac( ContAlarmTotVar , ContAlarmCntVar));
  InContAveField.Caption    := AlpineFormatDateTime('HH:NN:SS', SayFrac( InContTotVar    , InContCntVar));
  InAlarmAveField.Caption   := AlpineFormatDateTime('HH:NN:SS', SayFrac( InAlarmTotVar   , InAlarmCntVar));
end;

end.
