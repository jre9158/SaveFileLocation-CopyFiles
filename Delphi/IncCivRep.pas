unit IncCivRep;
 
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
  db, QRExport, QRXMLSFilt, QRXLSXFilt, QRWebFilt, QRPDFFilt;

type
  TIncCivRepForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    TimeAlarmField: TQRLabel;
    SummaryBand: TQRBand;
    TotIncField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    PeriodLabel: TQRLabel;
    SitFoundDescrField: TQRLabel;
    QRLabel1: TQRLabel;
    ExpNumField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    FixPropField: TQRLabel;
    CasSevField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    AgeField: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    CauseInjField: TQRLabel;
    PrimSymField: TQRLabel;
    PartInjField: TQRLabel;
    ActInjField: TQRLabel;
    DispositField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    TotIncVar     : Integer;
    NFIRSCivilian : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;
{$I rednmx.inc}

var
  IncCivRepForm: TIncCivRepForm;

implementation
uses GenFunc,
     IncCond,
     CommonFunc,
     SysRepMan;
{$R *.DFM}

procedure TIncCivRepForm.FormCreate(Sender: TObject);
Var SortOrder : String;
    Form      : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  SortOrder             := TIncCondForm(Form).SelectOrder;
  NFIRSCivilian         := Open_Query(Sql + ' ORDER BY NFIRSMAIN.INCNUM');
  BaseReport.DataSet    := NFIRSCivilian.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TotIncVar             := 0;
  PeriodLabel.caption   := GetAlpineDateLabel(InitialDate,FinalDate);
end;

procedure TIncCivRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  TotIncField.Caption := 'Total Incidents: ' + FormatFloat('###,##0',TotIncVar);
end;

procedure TIncCivRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  TotIncVar := 0;
end;

procedure TIncCivRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NFIRSCivilian.Free;
end;

function TIncCivRepForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSCIVILIAN.CASSEV, NFIRSMAIN.FDID FDID, NFIRSMAIN.FIXPROP, N5INCTYPE.DESCR SITFOUNDDESCR, ' +
            'NFIRSCIVILIAN.DATETIMEINJ, NFIRSMAIN.INCNUM, NFIRSMAIN.EXPNUM, NFIRSCIVILIAN.AGE, ' +
            'NFIRSCIVILIAN.CAUSEINJ, NFIRSCIVILIAN.PRIMSYM, NFIRSCIVILIAN.PARTINJ, NFIRSCIVILIAN.ACTINJ, ' +
            'NFIRSCIVILIAN.DISPOSIT, NFIRSMAIN.FATFIRE FATFIRE, NFIRSMAIN.FATCIV FATCIV, NFIRSMAIN.INJFIRE, NFIRSMAIN.INJCIV ' +
            'FROM NFIRSCIVILIAN ' ;
end;

function TIncCivRepForm.ReportJoins: String;
begin
  result := 'LEFT JOIN NFIRSMAIN ON (NFIRSCIVILIAN.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
            'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE) '; 
end;

procedure TIncCivRepForm.NFIRSMainBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var
FirefighterDeathNum  : Integer;
FirefighterInjuryNum : Integer;
CivilianDeathNum     : Integer;
CivilianInjuryNum    : Integer;
begin
  inherited;

  If NFIRSMainBand.color = clwhite then
    NFIRSMainBand.Color := $00EBEBEB
  else
    NFIRSMainBand.Color := clwhite;

  FirefighterDeathNum  := GetField(NFIRSCivilian,'FATFIRE').AsInteger;
  CivilianDeathNum     := GetField(NFIRSCivilian,'FATCIV').AsInteger;
  FirefighterInjuryNum := GetField(NFIRSCivilian,'INJFIRE').AsInteger;
  CivilianInjuryNum    := GetField(NFIRSCivilian,'INJCIV').AsInteger;

  if (GetField(NFIRSCivilian,'FDID').AsString = '08700') then begin
    If (FirefighterDeathNum <> 0)  OR (CivilianDeathNum <> 0)  OR
     (FirefighterInjuryNum <> 0) OR (CivilianInjuryNum <> 0) then begin

      If GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime > 0 then begin
        DateAlarmField.Caption     := FormatDateTime('MM/DD/YYYY',GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime);
        TimeAlarmField.Caption     := FormatDateTime('HH:NN',GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime);
      end else begin
        DateAlarmField.Caption     := 'N/E';
        TimeAlarmField.Caption     := 'N/E';
      end;

      IncNumField.Caption        := substr(dbfield(NFIRSCivilian,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSCivilian,'INCNUM'),5,6);
      ExpNumField.Caption        := dbField(NFIRSCivilian,'EXPNUM');
      SitFoundDescrField.Caption := dbField(NFIRSCivilian,'SITFOUNDDESCR');
      FixPropField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'FIXPROP'),'CODE','N5PROPUSE','DESCR');
      CasSevField.Caption        := SQLLookUp(dbfield(NFIRSCivilian,'CASSEV'),'CODE','N5SEVERITEY','DESCR');
      AgeField.Caption           := GetField(NFIRSCivilian,'AGE').AsString;
      CauseInjField.Caption      := SQLLookUp(dbfield(NFIRSCivilian,'CAUSEINJ'),'CODE','N5CAUSEINJ','DESCR');
      PrimSymField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'PRIMSYM'),'CODE','N5PRIMSYM','DESCR');
      PartInjField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'PARTINJ'),'CODE','N5PRIMBODY','DESCR');
      ActInjField.Caption        := SQLLookUp(dbfield(NFIRSCivilian,'ACTINJ'),'CODE','N5AWI','DESCR');
      DispositField.Caption      := IIf(tdbfield(NFIRSCivilian,'DISPOSIT') = '1','Transport','');

      TotIncVar                  := TotIncVar + 1;
    end else begin
      DateAlarmField.Caption     := 'N/E';
      TimeAlarmField.Caption     := 'N/E';
      IncNumField.Caption        := '';
      ExpNumField.Caption        := '';
      SitFoundDescrField.Caption := '';
      FixPropField.Caption       := '';
      CasSevField.Caption        := '';
      AgeField.Caption           := '';
      CauseInjField.Caption      := '';
      PrimSymField.Caption       := '';
      PartInjField.Caption       := '';
      ActInjField.Caption        := '';
      DispositField.Caption      := '';
    end;
  end else begin

    If GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime > 0 then begin
        DateAlarmField.Caption     := FormatDateTime('MM/DD/YYYY',GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime);
        TimeAlarmField.Caption     := FormatDateTime('HH:NN',GetField(NFIRSCivilian,'DATETIMEINJ').AsDateTime);
      end else begin
        DateAlarmField.Caption     := 'N/E';
        TimeAlarmField.Caption     := 'N/E';
      end;

      IncNumField.Caption        := substr(dbfield(NFIRSCivilian,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSCivilian,'INCNUM'),5,6);
      ExpNumField.Caption        := dbField(NFIRSCivilian,'EXPNUM');
      SitFoundDescrField.Caption := dbField(NFIRSCivilian,'SITFOUNDDESCR');
      FixPropField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'FIXPROP'),'CODE','N5PROPUSE','DESCR');
      CasSevField.Caption        := SQLLookUp(dbfield(NFIRSCivilian,'CASSEV'),'CODE','N5SEVERITEY','DESCR');
      AgeField.Caption           := GetField(NFIRSCivilian,'AGE').AsString;
      CauseInjField.Caption      := SQLLookUp(dbfield(NFIRSCivilian,'CAUSEINJ'),'CODE','N5CAUSEINJ','DESCR');
      PrimSymField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'PRIMSYM'),'CODE','N5PRIMSYM','DESCR');
      PartInjField.Caption       := SQLLookUp(dbfield(NFIRSCivilian,'PARTINJ'),'CODE','N5PRIMBODY','DESCR');
      ActInjField.Caption        := SQLLookUp(dbfield(NFIRSCivilian,'ACTINJ'),'CODE','N5AWI','DESCR');
      DispositField.Caption      := IIf(tdbfield(NFIRSCivilian,'DISPOSIT') = '1','Transport','');

      TotIncVar                  := TotIncVar + 1;
  end;
end;

end.
