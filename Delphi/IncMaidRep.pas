unit IncMaidRep;
 
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
  TIncMaidRepForm = class(TAlpineBaseSummaryReportForm)
    NFIRSMainBand: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel8: TQRLabel;
    IncNumField: TQRLabel;
    DateAlarmField: TQRLabel;
    StreetField: TQRLabel;
    SitFoundDescrField: TQRLabel;
    StrNumField: TQRLabel;
    SummaryBand: TQRBand;
    TotIncField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    QRLabel1: TQRLabel;
    MaidDescrField: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    MaidRecCountField: TQRLabel;
    Maid1Field: TQRLabel;
    Maid2Field: TQRLabel;
    Maid3Field: TQRLabel;
    Maid4Field: TQRLabel;
    Maid5Field: TQRLabel;
    QRLabel12: TQRLabel;
    FdidField: TQRLabel;
    TitleBand: TQRBand;
    QRLabel13: TQRLabel;
    PLastNameField: TQRLabel;
    QRLabel14: TQRLabel;
    MDEPTField: TQRLabel;
    QRLabel15: TQRLabel;
    MaidGivCountField: TQRLabel;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    NfirsAppCntField: TQRLabel;
    NfirsMaidBand: TQRSubDetail;
    NfirsMaidN5MaidDescrField: TQRLabel;
    NfirsMaidFdidField: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure NFIRSMainBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure NfirsMaidBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    NFIRSMain      : TApolloData;
    NfirsMaidTable : TApolloData;
    MaidCountVar   : Integer;
    Maid1Var       : Integer;
    Maid2Var       : Integer;
    Maid3Var       : Integer;
    Maid4Var       : Integer;
    Maid5Var       : Integer;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
    function AdditionalWhere: String; override;
  end;
{$I rednmx.inc}

var
  IncMaidRepForm: TIncMaidRepForm;

implementation
uses GenFunc,
     IncCond,
     CommonFunc,
     SysRepMan;
     
{$R *.DFM}

procedure TIncMaidRepForm.FormCreate(Sender: TObject);
var SortOrder : String;
    Form      : TForm;
begin
  Form                  := GetFormOfType(TIncCondForm);
  if Form <> nil then
    SortOrder             := TIncCondForm(Form).SelectOrder
  else
    SortOrder := '';

  NFIRSMain             := Open_Query(Sql + SortOrder);
  NfirsMaidTable        := Open_Query('SELECT * FROM NFIRSMAID WHERE 1=2');
  BaseReport.DataSet    := NFIRSMain.DataSource.DataSet;
  NfirsMaidBand.DataSet := NfirsMaidTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TIncCondForm.PrintTitles(TitleBand);
  MaidCountVar          := 0;
  Maid1Var              := 0;
  Maid2Var              := 0;
  Maid3Var              := 0;
  Maid4Var              := 0;
  Maid5Var              := 0;
end;

procedure TIncMaidRepForm.NfirsMaidBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  if (NfirsMaidTable.QueryRecCount > 0) then
    begin
      NfirsMaidFdidField.Caption        := tdbField(NFIRSMaidTable,'DEPTNAME') + ' - ' + tdbField(NFIRSMaidTable,'FDID');
      NfirsMaidN5MaidDescrField.Caption := tdbField(NFIRSMaidTable,'NFIRSMAIDN5MAIDDESCR');
      NFIRSMaidBand.Color               := NFIRSMainBand.Color;

      //This should not be counting every agencies involvement in the total.
     { If tdbfield(NfirsMaidTable,'MAID') = '1' then
        Maid1Var := Maid1Var + 1
      else if tdbfield(NfirsMaidTable,'MAID') = '2' then
        Maid2Var := Maid2Var + 1
      else if tdbfield(NfirsMaidTable,'MAID') = '3' then
        Maid3Var := Maid3Var + 1
      else if tdbfield(NfirsMaidTable,'MAID') = '4' then
        Maid4Var := Maid4Var + 1
      else if tdbfield(NfirsMaidTable,'MAID') = '5' then
        Maid5Var := Maid5Var + 1;   }
    end
  else
    begin
      NfirsMaidFdidField.Caption := 'No agency was defined for this mutual aid.';
      NfirsMaidN5MaidDescrField.Caption := '';
    end;
end;

procedure TIncMaidRepForm.NFIRSMainBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQLVar : String;
begin
  FdidField.Caption          := dbfield(NFIRSMain,'FDID');
  DateAlarmField.Caption     := AlpineFormatDateTime('MM/DD/YYYY',GetField(NFIRSMain,'DATETIMEALARM').AsDateTime);
  IncNumField.Caption        := substr(dbfield(NFIRSMain,'INCNUM'),1,4) + '-' + substr(dbfield(NFIRSMain,'INCNUM'),5,6);
  StrNumField.Caption        := alltrim(dbField(NFIRSMain,'STRNUM'));
  StreetField.Caption        := tdbField(NFIRSMain,'STREET');
  PLastNameField.Caption     := tdbField(NFIRSMain,'PLASTNAME');
  SitFoundDescrField.Caption := dbField(NFIRSMain,'SITFOUNDDESCR');
  MDEPTField.Caption         := tdbField(NFIRSMain,'MDEPT');

  If tdbfield(NFIRSMain,'FDID') = tdbField(NFIRSMain,'MDEPT') then begin
    MDEPTField.Font.Style := [fsBold,fsItalic];
    MDEPTField.Font.color := clmaroon;
  end else begin
    MDEPTField.Font.Style := [];
    MDEPTField.Font.color := clblack;
  end;

  MaidDescrField.Caption     := dbField(NFIRSMain,'MAIDDESCR');
  NfirsAppCntField.Caption   := IntToStr(SqlTableRecCount('SELECT COUNT(*) FROM NFIRSAPP WHERE NFIRSMAINID = ' + pkValue(GetField(NfirsMain,'NFIRSMAINID').AsString)));
  MaidCountVar               := MaidCountVar + 1;

  If tdbfield(NfirsMain,'MAID') = '1' then
    Maid1Var := Maid1Var + 1
  else if tdbfield(NfirsMain,'MAID') = '2' then
    Maid2Var := Maid2Var + 1
  else if tdbfield(NfirsMain,'MAID') = '3' then
    Maid3Var := Maid3Var + 1
  else if tdbfield(NfirsMain,'MAID') = '4' then
    Maid4Var := Maid4Var + 1
  else if tdbfield(NfirsMain,'MAID') = '5' then
    Maid5Var := Maid5Var + 1;
                                                                                           
  If NFIRSMainBand.color = clwhite then
    NFIRSMainBand.Color := $00EBEBEB
  else
    NFIRSMainBand.Color := clwhite;

  SQLVar := 'SELECT FDID.DEPTNAME, NFIRSMAID.FDID, NFIRSMAID.NFIRSMAINID, NFIRSMAID.MAID, N5MAID.DESCR NFIRSMAIDN5MAIDDESCR FROM NFIRSMAID ' +
            'LEFT JOIN N5MAID ON (NFIRSMAID.MAID = N5MAID.CODE) ' +
            'LEFT JOIN FDID ON (NFIRSMAID.FDID = FDID.FDID) ' +
            'WHERE NFIRSMAID.NFIRSMAINID = ' + pkValue(GetField(NfirsMain,'NFIRSMAINID').AsString);
  NfirsMaidTable.UpdateSQL(SQLVar);
  //Prints Mutual aid if mutual aid was recived no matter what
  if (tdbfield(NfirsMain,'MAID') = '2') OR (tdbfield(NfirsMain,'MAID') = '1') then
    NfirsMaidBand.Enabled := True
  else
    //Only prints Mutual aid band if a record was found for aid given
    NfirsMaidBand.Enabled := (NfirsMaidTable.QueryRecCount > 0);
end;

procedure TIncMaidRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  inherited;
  MaidCountVar := 0;
  Maid1Var     := 0;
  Maid2Var     := 0;
  Maid3Var     := 0;
  Maid4Var     := 0;
  Maid5Var     := 0;
end;

procedure TIncMaidRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  NFIRSMain.Free;
  NfirsMaidTable.Free;
end;

function TIncMaidRepForm.SelectStatement: string;
begin
  result := 'SELECT NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.FDID, NFIRSMAIN.MAID, NFIRSMAIN.DATETIMEALARM, N5INCTYPE.DESCR SITFOUNDDESCR, NFIRSMAIN.PLASTNAME, ' +
            'N5MAID.DESCR MAIDDESCR, NFIRSMAIN.MDEPT, NFIRSMAIN.FDID, NFIRSMAIN.INCNUM, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET FROM NFIRSMAIN ' ;
end;

function TIncMaidRepForm.ReportJoins: String;
begin
  result := 'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND = N5INCTYPE.CODE) LEFT JOIN N5MAID ON (NFIRSMAIN.MAID = N5MAID.CODE) ';
end;

function TIncMaidRepForm.AdditionalWhere: String;
begin
  result := '(( NFIRSMAIN.MAID <> ' + AddExpr('N') + ') AND (NFIRSMAIN.MAID IS NOT NULL) AND ( NFIRSMAIN.MAID <> ' + AddExpr(' ') + '))';
end;

procedure TIncMaidRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  MaidGivCountField.Caption := FormatFloat('##,##0',Maid3Var + Maid4Var + Maid5Var);
  MaidRecCountField.Caption := FormatFloat('##,##0',Maid1Var + Maid2Var);
  Maid1Field.Caption        := FormatFloat('##,##0',Maid1Var) + ' ';
  Maid2Field.Caption        := FormatFloat('##,##0',Maid2Var) + ' ';
  Maid3Field.Caption        := FormatFloat('##,##0',Maid3Var) + ' ';
  Maid4Field.Caption        := FormatFloat('##,##0',Maid4Var) + ' ';
  Maid5Field.Caption        := FormatFloat('##,##0',Maid5Var) + ' ';
end;

end.
