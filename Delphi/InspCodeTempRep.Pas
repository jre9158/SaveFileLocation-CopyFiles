unit InspCodeTempRep;

interface

uses
  bde,
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  qrctrls,
  quickrpt,
  applst,
  AlpineBaseSummaryReport,
  extctrls,
  QRExport,
  QRWebFilt,
  AlpineBaseReport,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  JPeg;

type
  TInspCodeTempRepForm = class(TAlpineBaseSummaryReportForm)
    AFDCodeTempBand: TQRBand;
    TitleBand1: TQRBand;
    FireDeptName: TQRLabel;
    InspTypeDescrField: TQRLabel;
    QRLabel1: TQRLabel;
    DateTimeStartField: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel12: TQRLabel;
    SectionTitleBand: TQRChildBand;
    FieldBand: TQRChildBand;
    DescrField: TQRLabel;
    CodeField: TQRLabel;
    SectionTitleField: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRShape5: TQRShape;
    AddressField: TQRLabel;
    SummaryBand1: TQRBand;
    InspNarrBand: TQRChildBand;
    QRLabel10: TQRLabel;
    Inspector1Field: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel18: TQRLabel;
    DateTimeStart1Field: TQRLabel;
    QRLabel22: TQRLabel;
    CField: TQRLabel;
    NCField: TQRLabel;
    NAField: TQRLabel;
    VioBand: TQRChildBand;
    VioField: TQRLabel;
    NarrField: TQRLabel;
    SchdShiftNameDescrField: TQRLabel;
    QRLabel3: TQRLabel;
    NameField: TQRLabel;
    QRShape1: TQRShape;
    LogoImage: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AFDCodeTempBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    InspCodeTempTable : TApolloData;
    InspCodeHistTable : TApolloData;
    InspTable        : TApolloData;
    VioTable         : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  InspCodeTempRepForm: TInspCodeTempRepForm;

implementation
uses GenFunc,
     CommonFunc,
     FormFunc,
     CommonVar;

{$R *.DFM}
{$I rednmx.inc}

procedure TInspCodeTempRepForm.FormCreate(Sender: TObject);
begin
  InspTable                       := Open_Query(SQL);
  InspCodeTempTable               := Open_Query('SELECT * FROM INSPCODETEMP WHERE INSPTYPEID = ' + pkValue(GetField(InspTable,'INSPTYPEID').AsString) + ' ORDER BY SORTORD');
  InspCodeHistTable               := Open_Query('SELECT * FROM INSPCODEHIST WHERE INSPID = ' + pkValue(GetField(InspTable,'INSPID').AsString) );
  VioTable                        := Open_Query('SELECT * FROM VIO WHERE INSPID = ' + pkValue(GetField(InspTable,'INSPID').AsString) );

  FireDeptName.caption            := FireDept;
  InspTypeDescrField.Caption      := SqlLookUp(GetField(InspTable,'INSPTYPEID').AsString,'INSPTYPEID','INSPTYPE','DESCR');
  DateTimeStartField.Caption      := FormatDateTime('MM/DD/YYYY',GetField(InspTable,'DATETIMESTART').AsDateTime);
  AddressField.Caption            := tdbfield(InspTable,'STRNUM') + ' ' + tdbfield(InspTable,'STREET');
  NameField.Caption               := tdbfield(InspTable,'NAME');
  NarrField.Caption               := GetField(InspTable,'NARR').AsString;
  InspNarrBand.Enabled            := Not (alltrim(GetField(InspTable,'NARR').AsString) = '');
  SchdShiftNameDescrField.Caption := SQLLookUp(GetField(InspTable,'SCHDSHIFTNAMEID').AsString,'SCHDSHIFTNAMEID','SCHDSHIFTNAME','DESCR');

  Open_Query('PERS',false,'SELECT LNAME, FNAME FROM PERS WHERE PERSID = ' + pkValue(GetField(InspTable,'PERSID').AsString));
  Inspector1Field.Caption         := tdbfield('PERS','FNAME') + ' ' + tdbfield('PERS','LNAME');
  DateTimeStart1Field.Caption     := AlpineFormatDateTime('MM/DD/YYYY',GetField(InspTable,'DATETIMESTART').AsDateTime);
  CloseApollo('PERS');

  BaseReport.DataSet              := InspCodeTempTable.DataSet;
  PrintLogo(LogoImage);
end;

procedure TInspCodeTempRepForm.FormDestroy(Sender: TObject);
begin
  InspTable.Free;
  InspCodeTempTable.Free;
  InspCodeHistTable.Free;
  VioTable.Free;
end;

procedure TInspCodeTempRepForm.AFDCodeTempBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var VioVar : String;
begin
  SectionTitleField.Caption := tdbfield(InspCodeTempTable,'SECTIONTITLE');
  SectionTitleBand.Enabled  := Not (tdbfield(InspCodeTempTable,'SECTIONTITLE') = '');
  CodeField.Caption         := tdbfield(InspCodeTempTable,'CODE');
  DescrField.Caption        := tdbfield(InspCodeTempTable,'DESCR');
  VioVar                    := '';
  VioField.Caption          := '';

  If InspCodeHistTable.ExactQueryLocate('INSPCODETEMPID',GetField(InspCodeTempTable,'INSPCODETEMPID').AsString) then begin
    CField .Caption := IIf(tdbfield(InspCodeHistTable,'CODE') = 'C', 'X','');
    NCField.Caption := IIf(tdbfield(InspCodeHistTable,'CODE') = 'NC','X','');
    NAField.Caption := IIf(tdbfield(InspCodeHistTable,'CODE') = 'NA','X','');

    If (GetField(InspCodeHistTable,'VIOID').AsInteger > 0)  then begin
      If VioTable.ExactQueryLocate('VIOID',GetField(InspCodeHistTable,'VIOID').AsString) then begin
        VioBand.Enabled := true;
        VioVar          := '';
        If Not (GetField(VioTable,'LOCATION').AsString = '') then
          VioVar := VioVar + 'Location:  ' + GetField(VioTable,'LOCATION').AsString + #10#13;
        If Not (GetField(VioTable,'NARR').AsString = '') then
          VioVar := VioVar + 'Comments:  ' + GetField(VioTable,'NARR').AsString + #10#13;
        If Not (GetField(VioTable,'RECOMMEND').AsString = '') then
          VioVar := VioVar + 'Recommendation:  ' + GetField(VioTable,'RECOMMEND').AsString;
        VioField.Caption := VioVar;
      end else
        VioBand.Enabled  := false;
    end else begin
      VioBand.Enabled  := false;
      VioField.Caption := '';
    end;
    
  end else begin
    CField .Caption := '';
    NCField.Caption := '';
    NAField.Caption := '';
    VioBand.Enabled  := false;
    VioField.Caption := '';
  end;
end;

function TInspCodeTempRepForm.SelectStatement: string;
begin
  result                     := 'SELECT * FROM INSP ';
end;
     
end.
