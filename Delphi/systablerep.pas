unit SysTableRep;
 
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
  QRXMLSFilt,
  QRXLSXFilt,
  QRWebFilt,
  QRPDFFilt;

type
  TSysTableRepForm = class(TAlpineBaseSummaryReportForm)
    TitleBand: TQRBand;
    FireDept: TQRLabel;
    QRLabel4: TQRLabel;
    TableNameField: TQRLabel;
    QRLabel6: TQRLabel;
    DescrField: TQRLabel;
    QRLabel14: TQRLabel;
    ModCodeField: TQRLabel;
    SysFieldHeader: TQRBand;
    QRLabel24: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel12: TQRLabel;
    SysFieldBand: TQRSubDetail;
    SysFieldDescrField: TQRLabel;
    FieldNameField: TQRLabel;
    FieldTypeDescrField: TQRLabel;
    SizeField: TQRLabel;
    ReferencingTablesHeader: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel5: TQRLabel;
    ReferencingTablesLabel: TQRLabel;
    QRLabel7: TQRLabel;
    ReferencingTablesBand: TQRSubDetail;
    ReferencingTablesTableName: TQRLabel;
    ReferencingTablesKeyField: TQRLabel;
    ReferencingTablesDeleteAction: TQRLabel;
    ReferencedByHeader: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    ReferencedByLabel: TQRLabel;
    QRLabel8: TQRLabel;
    ReferencedByBand: TQRSubDetail;
    ReferencedByTableName: TQRLabel;
    ReferencedByKeyField: TQRLabel;
    ReferencedByDeleteAction: TQRLabel;
    QRLabel2: TQRLabel;
    OwnerField: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel15: TQRLabel;
    PrimaryKeyField: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    CustomLabel: TQRLabel;
    QRLabel19: TQRLabel;
    SysTableTypeDescrField: TQRLabel;
    SysTableIDField: TQRLabel;
    QRLabel20: TQRLabel;
    SysFieldIDField: TQRLabel;
    SizeTotalField: TQRLabel;
    QRLabel22: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TitleBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SysFieldBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ReferencingTablesBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ReferencedByBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure ReferencingTablesHeaderBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    SysTableIDQuery        : TApolloData;
    SysTableQuery          : TApolloData;
    SysFieldQuery          : TApolloData;
    ReferencingTablesQuery : TApolloData;
    ReferencedByquery      : TApolloData;
    SizeTotalVar           : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  SysTableRepForm: TSysTableRepForm;

implementation
uses GenFunc,
     CommonFunc,
     PersCond,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TSysTableRepForm.FormCreate(Sender: TObject);
begin
  SysTableIDQuery        := Open_Query(Sql);
  BaseReport.DataSet     := SysTableIDQuery.DataSource.DataSet;
  SysTableQuery          := Open_Query('SELECT * FROM SYSTABLE WHERE 1=2');

  SysFieldQuery          := Open_Query('SELECT SYSFIELD.FIELDTYPE FIELDTYPE, SYSFIELD.FIELDNUM FIELDNUM, SYSFIELD.FIELDLEN FIELDLEN, SYSFIELD.FIELDDEC FIELDDEC, SYSFIELD.DESCR DESCR, SYSFIELD.FIELDNAME FIELDNAME, ' +
                                       'SYSFIELD.OLDFIELD OLDFIELD, SYSFIELD.OWNER OWNER, ' +
                                       'SYSFIELDTYPE.DESCR FIELDTYPEDESCR ' +
                                       'FROM SYSFIELD LEFT JOIN SYSFIELDTYPE ON (SYSFIELD.FIELDTYPE = SYSFIELDTYPE.CODE) ' +
                                       'WHERE 1=2');

  ReferencingTablesQuery := Open_Query('SELECT SYSFOREIGNKEY.ONDELETESETNULL, SYSFOREIGNKEY.ONDELETECASCADE, SYSFOREIGNKEY.OWNER OWNER, REFERENCINGFIELD, SYSTABLE.TABLENAME TABLENAME FROM SYSFOREIGNKEY ' +
                                       'LEFT JOIN SYSTABLE ON (SYSFOREIGNKEY.REFSYSTABLEID = SYSTABLE.SYSTABLEID) ' +
                                       'WHERE 1=2');

  ReferencedByquery      := Open_Query('SELECT SYSFOREIGNKEY.ONDELETESETNULL, SYSFOREIGNKEY.ONDELETECASCADE, SYSFOREIGNKEY.OWNER OWNER, REFERENCINGFIELD, SYSTABLE.TABLENAME TABLENAME FROM SYSFOREIGNKEY ' +
                                       'LEFT JOIN SYSTABLE ON (SYSFOREIGNKEY.SYSTABLEID = SYSTABLE.SYSTABLEID) ' +
                                       'WHERE 1=2');
end;

procedure TSysTableRepForm.FormDestroy(Sender: TObject);
begin
  SysTableIDQuery       .Free;
  SysTableQuery         .Free;
  SysFieldQuery         .Free;
  ReferencingTablesQuery.Free;
  ReferencedByquery     .Free;
end;

procedure TSysTableRepForm.TitleBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  SizeTotalVar := 0;

  SysTableQuery.UpdateSQL('SELECT * FROM SYSTABLE WHERE SYSTABLEID = ' + GetField(SysTableIDQuery,'SYSTABLEID').AsString);

  SysFieldQuery.UpdateSQL('SELECT SYSFIELD.FIELDTYPE FIELDTYPE, SYSFIELD.FIELDNUM FIELDNUM, SYSFIELD.FIELDLEN FIELDLEN, SYSFIELD.FIELDDEC FIELDDEC, SYSFIELD.DESCR DESCR, SYSFIELD.FIELDNAME FIELDNAME, ' +
                          'SYSFIELD.OLDFIELD OLDFIELD, SYSFIELD.SYSFIELDID, SYSFIELD.OWNER OWNER, ' +
                          'SYSFIELDTYPE.DESCR FIELDTYPEDESCR ' +
                          'FROM SYSFIELD ' +
                          'LEFT JOIN SYSFIELDTYPE ON (SYSFIELD.FIELDTYPE = SYSFIELDTYPE.CODE) ' +
                          'WHERE SYSTABLEID = ' + GetField(SysTableIDQuery,'SYSTABLEID').AsString + ' AND ' +
                          '(SYSFIELD.OWNER = ' + AddExpr(ASCVAR) + ' OR SYSFIELD.OWNER = ' + AddExpr('ALPINE') + ') AND ' +
                          '(SYSFIELD.OLDFIELD = ' + AddExpr('N') + ' OR SYSFIELD.OLDFIELD = ' + AddExpr('') + ' OR SYSFIELD.OLDFIELD IS NULL) ' +
                          'ORDER BY SYSFIELD.FIELDNAME');

  ReferencingTablesQuery.UpdateSQL('SELECT SYSFOREIGNKEY.NONBINDING, SYSFOREIGNKEY.ONDELETESETNULL, SYSFOREIGNKEY.ONDELETECASCADE, SYSFOREIGNKEY.OWNER OWNER, REFERENCINGFIELD, SYSTABLE.TABLENAME TABLENAME FROM SYSFOREIGNKEY ' +
                                   'LEFT JOIN SYSTABLE ON (SYSFOREIGNKEY.REFSYSTABLEID = SYSTABLE.SYSTABLEID) ' +
                                   'WHERE SYSFOREIGNKEY.SYSTABLEID = ' + GetField(SysTableIDQuery,'SYSTABLEID').AsString);

  ReferencedByQuery.UpdateSQL('SELECT SYSFOREIGNKEY.NONBINDING, SYSFOREIGNKEY.ONDELETESETNULL, SYSFOREIGNKEY.ONDELETECASCADE, SYSFOREIGNKEY.OWNER OWNER, REFERENCINGFIELD, SYSTABLE.TABLENAME TABLENAME FROM SYSFOREIGNKEY ' +
                              'LEFT JOIN SYSTABLE ON (SYSFOREIGNKEY.SYSTABLEID = SYSTABLE.SYSTABLEID) ' +
                              'WHERE SYSFOREIGNKEY.REFSYSTABLEID = ' + GetField(SysTableIDQuery,'SYSTABLEID').AsString);

  SysFieldBand.DataSet           := SysFieldQuery.DataSet;
  ReferencingTablesBand.DataSet  := ReferencingTablesQuery.DataSet;
  ReferencedByBand.DataSet       := ReferencedByquery.DataSet;

  SysTableIDField.Caption        := 'Table Reference # ' + GetField(SysTableQuery,'SYSTABLEID').AsString;
  TableNameField.Caption         := tdbField(SysTableQuery,'TABLENAME');
  PrimaryKeyField.Caption        := tdbField(SysTableQuery,'TABLENAME') + 'ID';
  DescrField.Caption             := tdbField(SysTableQuery,'DESCR');
  ModCodeField.Caption           := tdbField(SysTableQuery,'MODCODE');
  SysTableTypeDescrField.Caption := SQLLookUp(GetField(SysTableQuery,'SYSTABLETYPEID').AsString,'SYSTABLETYPEID','SYSTABLETYPE','DESCR');
  ReferencingTablesLabel.Caption := 'Tables ' + tdbField(SysTableQuery,'TABLENAME')+' references';
  ReferencedByLabel.Caption      := 'Tables referenced by ' + tdbField(SysTableQuery,'TABLENAME');

  CustomLabel.Caption            := 'Fields with OWNER = ' + ASCVAR + ' are custom for that system only';
end;

function TSysTableRepForm.SelectStatement: string;
begin
  result := 'SELECT SYSTABLEID FROM SYSTABLE ' ;
end;

function TSysTableRepForm.ReportJoins: String;
begin
  result := 'LEFT JOIN SYSTABLETYPE ON (SYSTABLE.SYSTABLETYPEID = SYSTABLETYPE.SYSTABLETYPEID) ';
end;

procedure TSysTableRepForm.SysFieldBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  SysFieldIDField.Caption     := GetField(SysFieldQuery,'SYSFIELDID').AsString;
  OwnerField.Caption          := tdbField(SysFieldQuery,'OWNER');
  FieldNameField.Caption      := tdbField(SysFieldQuery,'FIELDNAME');

  SysFieldDescrField.Caption  := tdbField(SysFieldQuery,'DESCR');
  If (tdbField(SysFieldQuery,'FIELDTYPE') = 'D') then begin
    SizeField.Caption := '16';
    SizeTotalVar      := SizeTotalVar + 16;
  end else if (GetField(SysFieldQuery,'FIELDLEN').AsInteger = 0)  then
    SizeField.Caption := 'Unl'
  else if GetField(SysFieldQuery,'FIELDDEC').AsInteger > 0 then begin
    SizeField.Caption := FormatFloat('##0',GetField(SysFieldQuery,'FIELDLEN').AsInteger) + '.' + FormatFloat('##0',GetField(SysFieldQuery,'FIELDDEC').AsInteger)
  end else begin
    SizeField.Caption := FormatFloat('##0',GetField(SysFieldQuery,'FIELDLEN').AsInteger);
    SizeTotalVar      := SizeTotalVar + GetField(SysFieldQuery,'FIELDLEN').AsFloat;
  end;
  FieldTypeDescrField.Caption := tdbField(SysFieldQuery,'FIELDTYPEDESCR');


  OwnerField         .Font.Color      := clblack;
  FieldNameField     .Font.Color      := clblack;
  SysFieldDescrField .Font.Color      := clblack;
  SizeField          .Font.Color      := clblack;
  FieldTypeDescrField.Font.Color      := clblack;

  If (tdbField(SysFieldQuery,'FIELDNAME') = tdbField(SysTableQuery,'TABLENAME') + 'ID') then begin
    OwnerField         .Font.Color      := clred;
    FieldNameField     .Font.Color      := clred;
    SysFieldDescrField .Font.Color      := clred;
    SizeField          .Font.Color      := clred;
    FieldTypeDescrField.Font.Color      := clred;

  end else if At('ID ',padr(tdbField(SysFieldQuery,'FIELDNAME'),40,' ')) > 0 then begin
    OwnerField         .Font.Color      := clgreen;
    FieldNameField     .Font.Color      := clgreen;
    SysFieldDescrField .Font.Color      := clgreen;
    SizeField          .Font.Color      := clgreen;
    FieldTypeDescrField.Font.Color      := clgreen;
  end;  

  If SysFieldBand.color = clwhite then
    SysFieldBand.Color         := $00EBEBEB
  else
    SysFieldBand.Color         := clwhite;
end;

procedure TSysTableRepForm.ReferencingTablesBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  If (tdbField(ReferencingTablesQuery,'OWNER') = 'ALPINE') or (tdbfield(ReferencingTablesQuery,'OWNER') = ASCVAR) then begin
    ReferencingTablesTableName.Caption := tdbField(ReferencingTablesQuery,'TABLENAME');
    ReferencingTablesKeyField.Caption  := tdbField(ReferencingTablesQuery,'REFERENCINGFIELD');
    if tdbField(ReferencingTablesQuery,'ONDELETESETNULL')='Y' then
      ReferencingTablesDeleteAction.Caption := 'Delete record from ' + tdbfield(ReferencingTablesQuery,'TABLENAME') + ', set ' + tdbField(SysTableQuery,'TABLENAME') + '.' + tdbField(ReferencingTablesQuery,'REFERENCINGFIELD') + ' to blank.'
    else if tdbField(ReferencingTablesQuery,'NONBINDING') = 'Y' then 
      ReferencingTablesDeleteAction.Caption := 'Non Binding Link to ' + tdbfield(ReferencingTablesQuery,'TABLENAME');
  end else
    PrintBand := false;
end;

procedure TSysTableRepForm.ReferencingTablesHeaderBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  SizeTotalField.Caption := FormatFloat('##,##0',SizeTotalVar);
end;

procedure TSysTableRepForm.ReferencedByBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  If (tdbField(ReferencedByquery,'OWNER') = 'ALPINE') and Not (tdbField(ReferencedByquery,'REFERENCINGFIELD') = '') then begin
    ReferencedByTableName.Caption := tdbField(ReferencedByquery,'TABLENAME');
    ReferencedByKeyField.Caption  := tdbField(ReferencedByquery,'REFERENCINGFIELD');
    If tdbField(ReferencedByquery,'ONDELETESETNULL')='Y' then
      ReferencedByDeleteAction.Caption := 'Delete record from ' + tdbField(SysTableQuery,'TABLENAME') + ', set '  + tdbField(ReferencedByquery,'TABLENAME') + '.' + tdbField(ReferencedByquery,'REFERENCINGFIELD') + ' to blank.'
    else
      ReferencedByDeleteAction.Caption := 'Delete record from ' + tdbField(SysTableQuery,'TABLENAME') + ', delete linked records from ' + tdbField(ReferencedByquery,'TABLENAME');
  end else
    PrintBand := false;
end;

end. 
