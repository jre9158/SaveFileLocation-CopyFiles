unit PersCancerRep;
 
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
  AppLst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  jpeg,
  EnJpgGr;

type
  TPersCancerRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    LNameField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    QRLabel3: TQRLabel;
    JoinDateField: TQRLabel;
    ResDateField: TQRLabel;
    EntitleDateField: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape3: TQRShape;
    FNameField: TQRLabel;
    QRShape4: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
    QRShape10: TQRShape;
    InteriorYField: TQRLabel;
    InteriorNField: TQRLabel;
    QRShape12: TQRShape;
    SummaryBand1: TQRBand;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRLabel26: TQRLabel;
    QualField: TQRLabel;
    FitTestHistBand: TQRChildBand;
    FitTestDatesField: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    FitTestYFIeld: TQRLabel;
    FitTestNFIeld: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    PhysicalYField: TQRLabel;
    PhysicalNField: TQRLabel;
    QRShape5: TQRShape;
    QRLabel23: TQRLabel;
    QRShape13: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel19: TQRLabel;
    QRShape14: TQRShape;
    QRLabel20: TQRLabel;
    QRShape15: TQRShape;
    QRLabel21: TQRLabel;
    QRShape16: TQRShape;
    QRLabel22: TQRLabel;
    YearField: TQRLabel;
    LogoImage: TQRImage;
    QRLabel25: TQRLabel;
    QualTotField: TQRLabel;
    QRShape8: TQRShape;
    ChildBand1: TQRChildBand;
    QRLabel24: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    DateField: TQRLabel;
    QRShape6: TQRShape;
    QRLabel44: TQRLabel;
    DOBField: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    QRShape9: TQRShape;
    QRLabel47: TQRLabel;
    YOSField: TQRLabel;
    FdidField: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape11: TQRShape;
    QRShape19: TQRShape;
    QRLabel48: TQRLabel;
    NYSIDField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    PersTable        : TApolloData;
    PersMedHistTable : TApolloData;
    NIEvAttTable     : TApolloData;
    PersStatHistTable: TApolloData;
    Qual             : Boolean;
    PrintFitTests    : Boolean;
    PrintAll         : Boolean;
    QualCntVar       : Integer;
    FitNiTrainCatID  : String;
    FitPersMedID     : String;
    PhysPersMedID    : String;
    CensusDaysVar    : Real;
    function GetFitTestHistory(PersID: String): String;
    function CheckQual: Boolean;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

implementation
uses GenFunc,
     SysRepMan,
     LookupDialog,
     FormFunc,
     DateUtils,
     CommonFunc,
     CommonVar,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersCancerRepForm.FormCreate(Sender: TObject);
begin
  inherited;
  PrintAll               := True;
  PersMedHistTable       := Open_Query('SELECT * FROM PERSMEDHIST WHERE 1=2');
  PersTable              := Open_Query(Sql);
  NIEvAttTable           := Open_Query('SELECT * FROM NIEVATT WHERE 1=2');
  PersStatHistTable      := Open_Query('SELECT * FROM PERSSTATHIST WHERE 1=2');
  
  BaseReport.DataSet     := PersTable.DataSource.DataSet;
  PersBand.PKField       := 'PERSID';
  FireDeptField.Caption  := mFireDept;
  LogoImage.enabled      := (mFireID = '12345');
  FdidField.caption      := mFireID;
  
  Open_Query('PERSSET',false,'SELECT * FROM PERSSET');
  If A('PERSSET').RecordsExist then begin
    FitNiTrainCatID   := tdbfield('PERSSET','FITNITRAINCATID');
    FitPersMedID      := tdbfield('PERSSET','FITPERSMEDID');
    PhysPersMedID     := tdbfield('PERSSET','PHYSPERSMEDID');
    if GetField('PERSSET','NYCENSUSYEARS').AsInteger > 0 then
      CensusDaysVar   :=  (GetField('PERSSET','NYCENSUSYEARS').AsInteger * 365)
    else
      CensusDaysVar   := 1825;
  end else begin
    FitNiTrainCatID   := '-1';
    FitPersMedID      := '-1';
    PhysPersMedID     := '-1';
    CensusDaysVar     := 1825;
  end;
  CloseApollo('PERSSET');
  QualCntVar               := 0;
  if BooleanMessageDlg('Display Fit Test History?') then begin
    PrintFitTests := True;
    FitTestHistBand.Enabled := True;
  end;
  if BooleanMessageDlg('Print Only Qualified Personnel?') then begin
    PrintAll := False;
  end;
end;

procedure TPersCancerRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
var PhysicalCount     : Integer;
    FitTestCount      : Integer;
    InteriorStartDate : TDateTime;
    InteriorEndDate   : TDateTime;
    InteriorTimeFrame : Real;
    Qualified         : Boolean;
begin    
  inherited;
  InteriorStartDate               := 0;
  InteriorEndDate                 := 0;
  InteriorTimeFrame               := 0;
  PhysicalCount                   := 0;
  FitTestCount                    := 0;

  LNameField.Caption              := tdbfield(PersTable,'LNAME');
  FNameField.Caption              := tdbfield(PersTable,'FNAME');
  NYSIDField.Caption              := tdbfield(PersTable,'NYSID');

  DOBField.Caption                := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersTable,'DOB').AsDateTime);
  YOSField.Caption                := FormatFloat('##',Int(GetField(PersTable,'YOS').AsFloat));

  JoinDateField.Caption           := AlpineFormatDateTime('MM/DD/YYYY',GetField(PersTable,'JOINDATE').AsDateTime);
  ResDateField.Caption            := IIf(GetField(PersTable,'RESDATE').AsDateTime > 0,AlpineFormatDateTime('MM/DD/YYYY',GetField(PersTable,'RESDATE').AsDateTime),'-');

  If tdbfield(PersTable,'INTERIORYN') = 'Y' then begin
    InteriorYField.Caption          := 'X';
    InteriorNField.Caption          := '';
  end else begin
    InteriorYField.Caption          := '';
    InteriorNField.Caption          := 'X';
  end;

  PhysicalCount                   := SqlTableRecCount('SELECT COUNT(*) FROM PERSMEDHIST WHERE PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND PERSMEDID = ' + PkValue(PhysPersMedID));

  PhysicalYField.Caption          := IIF(PhysicalCount > 0,'X','');
  PhysicalNField.Caption          := IIF(PhysicalCount = 0,'X','');

  If tdbfield(PersTable,'PHYSICALOVERRIDEYN') = 'Y' then begin
    PhysicalYField.Caption        := 'X';
    PhysicalNField.Caption        := '';
  end;

  FitTestCount                    := SqlTableRecCount('SELECT COUNT(*) FROM PERSMEDHIST WHERE PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND PERSMEDID = ' + pkValue(FitPersMedID)) +
                                     SqlTableRecCount('SELECT COUNT(*) FROM VWNIEVATT   WHERE PERSID = ' + PkValue(GetField(PersTable,'PERSID').AsString) + ' AND NIEVNITRAINCAT1ID = ' + PkValue(FitNiTrainCatID));

  FitTestYFIeld.Caption           := IIF(FitTestCount >= 5,'X','');
  FitTestNFIeld.Caption           := IIF(FitTestCount <  5,'X','');

  If tdbfield(PersTable,'FITTESTOVERRIDEYN') = 'Y' then begin
    FitTestYFIeld.Caption        := 'X';
    FitTestNFIeld.Caption        := '';
  end;

  If PrintFitTests then
    FitTestDatesField.Caption     := GetFitTestHistory(GetField(PersTable,'PERSID').AsString);


  PersStatHistTable.UpdateSql('SELECT * FROM PERSSTATHIST WHERE PERSID = ' +  AddExpr(GetField(PersTable,'PERSID').AsString) +
                              ' AND PERSSTATHIST.INTERIORYN = ' + AddExpr('Y') +
                              ' ORDER BY DATETIMESTART');

  while Not PersStatHistTable.eof do begin
    If (GetField(PersStatHistTable,'DATETIMEEND').AsDateTime = 0) then begin
      InteriorTimeFrame := InteriorTimeFrame + (Now - GetField(PersStatHistTable,'DATETIMESTART').AsDateTime);
    end else begin
      InteriorTimeFrame := InteriorTimeFrame + (GetField(PersStatHistTable,'DATETIMEEND').AsDateTime - GetField(PersStatHistTable,'DATETIMESTART').AsDateTime);
      InteriorEndDate   := GetField(PersStatHistTable,'DATETIMEEND').AsDateTime;
    end;

    If InteriorStartDate = 0 then
      InteriorStartDate := GetField(PersStatHistTable,'DATETIMESTART').AsDateTime;

    PersStatHistTable.Skip(1);
  end;

  If (InteriorTimeFrame = 0) and (tdbfield(PersTable,'INTERIORYN') = 'Y') then begin
    InteriorTimeFrame := Now - GetField(PersTable,'JOINDATE').AsDateTime;
    InteriorStartDate := GetField(PersTable,'JOINDATE').AsDateTime;
  end;

  If (tdbfield(PersTable,'INTERIORYN') = 'Y') then begin
    If InteriorStartDate <= StrToDate('01/01/2014') then begin
      EntitleDateField.Caption    := '01/01/2019';
      EntitleDateField.Font.Color := clLime;
    end else begin
      EntitleDateField.Caption    := AlpineFormatDateTime('MM/DD/YYYY',InteriorStartDate+(CensusDaysVar));

      If (InteriorTimeFrame >= CensusDaysVar) then begin
        EntitleDateField.Font.Color := clLime;
      end else begin
        EntitleDateField.Font.Color := clRed;
      end;
    end;
  end else begin
    If InteriorEndDate = 0 then begin
      InteriorEndDate := GetField(PersTable,'RESDATE').AsDateTime;
      InteriorTimeFrame := InteriorEndDate - InteriorStartDate;
    end;

    If (InteriorTimeFrame >= 1825) and (Now-InteriorEndDate <= CensusDaysVar) then begin
      EntitleDateField.Caption    := AlpineFormatDateTime('MM/DD/YYYY',InteriorEndDate);
      EntitleDateField.Font.Color := clLime;
    end else if InteriorTimeFrame = 0 then begin
      EntitleDateField.Caption    := 'N/A';
      EntitleDateField.Font.Color := clRed;
    end else begin
      If InteriorTimeFrame < 1825 then
        EntitleDateField.Caption    := '< 5 Years'
      else
        EntitleDateField.Caption    := 'Ended: ' + AlpineFormatDateTime('MM/DD/YYYY',InteriorEndDate+CensusDaysVar);

      EntitleDateField.Font.Color := clRed;
    end;

  end;

  Qualified   := CheckQual;
  If not PrintAll then begin
    PrintBand := Qualified;
    If PrintFitTests then
      FitTestHistBand.Enabled  := Qualified;
  end;
end;

function TPersCancerRepForm.GetFitTestHistory(PersID: String): String;
Var FitTestDates: String;
    FitTestCount: Integer;
begin
  FitTestCount := 0;
  FitTestDates := '';
  If FitNiTrainCatID <> '-1' then begin
    try
      NIEvAttTable.UpdateSQL('SELECT NIEVDATETIMESTART FROM VWNIEVATT WHERE PERSID = ' + AddExpr(PersID) +
                             ' AND NIEVNITRAINCAT1ID = ' + AddExpr(FitNiTrainCatID) +
                             ' ORDER BY NIEVDATETIMESTART DESC ');

      while not NIEvAttTable.eof do begin
        If FitTestCount < 5 then
          FitTestDates := FitTestDates + AlpineFormatDateTime('MM/DD/YYYY',GetField(NIEvAttTable,'NIEVDATETIMESTART').AsDateTime) + '; ';

        FitTestCount := FitTestCount + 1;
        NIEvAttTable.Skip(1);
      end;
    except
    end;
  end;

  If FitPersMedID <> '-1' then begin
    try
      PersMedHistTable.UpdateSQL('SELECT DATEDONE FROM PERSMEDHIST WHERE PERSID = ' + AddExpr(PersID) +
                                 ' AND PERSMEDID = ' + AddExpr(FitPersMedID) +
                                 ' ORDER BY DATEDONE DESC ');

      while not PersMedHistTable.eof do begin
        If FitTestCount < 5 then
          FitTestDates := FitTestDates + AlpineFormatDateTime('MM/DD/YYYY',GetField(PersMedHistTable,'DATEDONE').AsDateTime) + '; ';

        FitTestCount := FitTestCount + 1;
        PersMedHistTable.Skip(1);
      end;
    except
    end;
  end;
  If Length(FitTestDates) > 0 then
    GetFitTestHistory := substr(FitTestDates,1,Length(FitTestDates)-2)
  else
    GetFitTestHistory := '';
end;

procedure TPersCancerRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  QualCntVar  := 0;
end;

function TPersCancerRepForm.CheckQual: Boolean;
var QualYN : Boolean;
begin
  inherited;
  If ((EntitleDateField.Font.Color = clLime) and (FitTestYField.Caption = 'X') and (PhysicalYField.Caption = 'X')) then begin
    QualField.Color   := clLime;
    QualField.Caption := 'Yes';
    QualCntVar        := QualCntVar + 1;
    QualYN            := True;
  end else begin
    QualField.color   := clRed;
    QualField.Caption := 'No';
    QualYN            := False;
  end;
  result := QualYN;
end;

function TPersCancerRepForm.SelectStatement: string;
begin
  result := 'SELECT * FROM PERS ';
end;

procedure TPersCancerRepForm.SummaryBand1BeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  YearField.Caption         := AlpineFormatDateTime('YYYY',Now);
  DateField.Caption         := AlpineFormatDateTime('MM/DD/YYYY',Now);
  QualTotField.Caption      := IntToStr(QualCntVar);
end;

procedure TPersCancerRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
  PersMedHistTable.Free;
  NIEvAttTable.Free;
  PersStatHistTable.Free;
end; 

end.
