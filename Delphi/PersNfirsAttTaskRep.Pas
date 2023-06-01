unit PersNfirsAttTaskRep;

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
  QRWebFilt,
  QRPDFFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TPersNfirsAttTaskRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    NameField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    HeaderBand: TQRBand;
    NameLabel: TQRLabel;
    Total1Label: TQRLabel;
    Total2Label: TQRLabel;
    TotalField: TQRLabel;
    QRLabel4: TQRLabel;
    PersCodeField: TQRLabel;
    SummaryBand: TQRBand;
    BlankCnt1Label: TQRLabel;
    BlankCnt2Label: TQRLabel;
    BlankCntField: TQRLabel;
    QRShape1: TQRShape;
    RightHeaderLine: TQRShape;
    RightDetailLine: TQRShape;
    LeftLine: TQRShape;
    CallTypeField: TQRLabel;
    QRLabel1: TQRLabel;
    NfirsAttTaskRepCodeField: TQRLabel;
    QRLabel2: TQRLabel;
    NfirsAttTaskDescrField: TQRLabel;
    QRLabel3: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable         : TApolloData;
    NfirsAttTaskTable : TApolloData;
    NfirsAttTaskCount : Integer;
    NfirsAttTaskIDMax : Integer;
    NfirsAttCntArray  : Array of Real;
    NfirsAppCntArray  : Array of Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function GetDispCallTypeWhere: String;
  end;

var
  PersNfirsAttTaskRepForm: TPersNfirsAttTaskRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     Printers,
     PersCond;

{$R *.DFM}

function TPersNfirsAttTaskRepForm.GetDispCallTypeWhere: String;
Var RowVar       : Integer;
    CheckValue   : Boolean;
    WhereString  : String;
    PersCondForm : TPersCondForm;
    SitFoundWhereHelperString:String;
begin
  WhereString := '';
  PersCondForm := TPersCondForm(GetFormOfType(TPersCondForm));

  For RowVar := 0 to PersCondForm.DispCallTypeBrowse.RowCount-1 do begin
    PersCondForm.DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSMAIN.DISPCALLTYPEID = ' + AddExpr(PersCondForm.DispCallTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';

  SitFoundWhereHelperString := '';

  if PersCondForm.SitFoundField1.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField1.Value);
  if PersCondForm.SitFoundField2.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' OR NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField2.Value);
  if PersCondForm.SitFoundField3.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' OR NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField3.Value);
  if PersCondForm.SitFoundField4.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' OR NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField4.Value);
  if PersCondForm.SitFoundField5.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' OR NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField5.Value);
  if PersCondForm.SitFoundField6.Value <> '' then
    SitFoundWhereHelperString := SitFoundWhereHelperString + ' OR NFIRSMAIN.SITFOUND = ' + AddExpr(PersCondForm.SitFoundField6.Value);

  if SitFoundWhereHelperString <> '' then
  begin
    SitFoundWhereHelperString := '(' + SitFoundWhereHelperString + ')';
    if WhereString <> '' then
      WhereString := WhereString + ' AND ';
  end;

  WhereString := WhereString + SitFoundWhereHelperString;

  if WhereString <> '' then
    WhereString := ' AND ' + WhereString;
    
  GetDispCallTypeWhere := WhereString;
end;

procedure TPersNfirsAttTaskRepForm.FormCreate(Sender: TObject);
var NfirsAttTaskLabel : TQRLabel;
    NfirsAttTaskField : TQRLabel;
    I                 : Integer;
    ColumnWidth       : Integer;
    ColumnCount       : Integer;
    Form              : TForm;
    ColVar            : Integer;
    PersCondForm      : TPersCondForm;
    Code              : String;
    Descr             : String;
begin
  inherited;
  Form                  := GetFormOfType(TPersCondForm);
  PersCondForm          := TPersCondForm(GetFormOfType(TPersCondForm));

  PersTable             := Open_Query(Sql);
  BaseReport.DataSet    := PersTable.DataSource.DataSet;
  FireDeptField.Caption := mFireDept;
  TPersCondForm.PrintTitles(TitleBand);

  Open_Query('NFIRSATT',False,    'SELECT * FROM NFIRSATT WHERE 1=2');
  Open_Query('NFIRSATTTASK',False,'SELECT * FROM NFIRSATTTASK ORDER BY CODE');
  NfirsAttTaskTable        := Open_Query('SELECT * FROM NFIRSATTTASK ORDER BY CODE');
  CallTypeField.Caption    := 'Call Types: ' + PersCondForm.GetDispCallTypeString;

  I                 := 0;
  ColumnCount       := A('NFIRSATTTASK').QueryRecCount;
  NfirsAttTaskCount := ColumnCount;

  If columncount >= 8 then begin
    BaseReport.Page.Orientation := poLandscape;
    RightHeaderLine.Left        := PersBand.Width - (BlankCnt1Label.Width * 2) - 10;
    RightDetailLine.Left        := PersBand.Width - (BlankCnt1Label.Width * 2) - 10;
    BlankCnt1Label.Left         := PersBand.Width - (BlankCnt1Label.Width * 2) - 6;
    BlankCnt2Label.Left         := PersBand.Width - (BlankCnt1Label.Width * 2) - 6;
    BlankCntField.Left          := PersBand.Width - (BlankCnt1Label.Width * 2) - 6;
    Total1Label.Left            := PersBand.Width - (BlankCnt1Label.Width * 1) - 6;
    Total2Label.Left            := PersBand.Width - (BlankCnt1Label.Width * 1) - 6;
    TotalField.Left             := PersBand.Width - (BlankCnt1Label.Width * 1) - 6;
    SysPageNumber.Left          := PersBand.Width - SysPageNumber.Width - 2;
  end;

  If ColumnCount > 0 then begin
    ColumnWidth     := Round( (RightDetailLine.Left - LeftLine.Left - 10) / ColumnCount );

    While Not A('NFIRSATTTASK').Eof do begin
      NfirsAttTaskLabel := TQRLabel.Create(self);
      with NfirsAttTaskLabel do begin
        Name        := 'NfirsAttTaskLabel' + GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;
        Parent      := HeaderBand;
        Width       := ColumnWidth-2;
        AutoSize    := false;
        Alignment   := tacenter;
        Caption     := tdbfield('NFIRSATTTASK','CODE');
        Left        := 3 + LeftLine.Left + ColumnWidth * I;
        Top         := NameLabel.Top;
        font.size   := 7;
        transparent := true;
      end;

      NfirsAttTaskField := TQRLabel.Create(self);
      with NfirsAttTaskField do begin
        Name        := 'NfirsAttTaskField' + GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;
        parent      := PersBand;
        Width       := ColumnWidth-2;
        AutoSize    := false;
        Alignment   := tacenter;
        Caption     := '0.00';
        AutoSize    := false;
        Left        := 3 + LeftLine.Left + ColumnWidth * I;
        Top         := NameField.Top;
        Tag         := GetField('NFIRSATTTASK','NFIRSATTTASKID').AsInteger;
        transparent := true;
      end;

      I := I + 1;
      A('NFIRSATTTASK').Skip(1);
    end;
    NfirsAttTaskIDMax := AnyStrToInt(GetMaxValue('NFIRSATTTASKID','NFIRSATTTASK'));
    SetLength(NfirsAttCntArray,NfirsAttTaskIDMax + 1);
    SetLength(NfirsAppCntArray,NfirsAttTaskIDMax + 1);
  end;

  Code  := '';
  Descr := '';
  While Not NfirsAttTaskTable.Eof do begin
    Code  := Code + tdbfield(NfirsAttTaskTable,'CODE') + #10#13;
    Descr := Descr + tdbfield(NfirsAttTaskTable,'DESCR') + #10#13;
    NfirsAttTaskTable.Skip(1);
  end;
  NfirsAttTaskRepCodeField.Caption := Code;
  NfirsAttTaskDescrField.Caption   := Descr;
end;

function TPersNfirsAttTaskRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSCODE, PERS.PERSID,PERS.LNAME,PERS.FNAME, PERS.MNAME FROM PERS ';
end;

procedure TPersNfirsAttTaskRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
  NfirsAttTaskTable.Free;
  CloseApollo('NFIRSATTTASK');
  CloseApollo('NFIRSATT');
end;

procedure TPersNfirsAttTaskRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var FieldName   : String;
    SQL         : String;
    TotalVar    : Real;
    CountVar    : Real;
    ColVar      : Integer;
    BlankCntVar : Integer;
    SQLVar      : String;
    WhereString : String;
begin
  inherited;
  TotalVar    := 0;
  BlankCntVar := 0;

  For ColVar := 1 to NfirsAttTaskIDMax do BEGIN
    NfirsAttCntArray[ColVar] := 0;
    NfirsAppCntArray[ColVar] := 0;
  end;  

  SQLVar   :=  'SELECT NFIRSATT.NFIRSAPPID, NFIRSATT.NFIRSATTTASKID FROM NFIRSATT LEFT JOIN NFIRSMAIN ON (NFIRSATT.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
               'WHERE NFIRSATT.PERSID = ' + pkValue(Getfield(PersTable,'PERSID').AsString) + ' AND ' +
               BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate);

  WhereString           := GetDispCallTypeWhere;
  If Not (WhereString = '') then
    SQLVar := SQLVar + WhereString;

  A('NFIRSATT').UpdateSQL(SQLVar);
                                              
  While Not A('NFIRSATT').Eof do begin
    TotalVar := TotalVar + 1;
    If (Getfield('NFIRSATT','NFIRSATTTASKID').AsInteger > 0) then begin
      NfirsAttCntArray[Getfield('NFIRSATT','NFIRSATTTASKID').AsInteger] := NfirsAttCntArray[Getfield('NFIRSATT','NFIRSATTTASKID').AsInteger] + 1;
      If (GetField('NFIRSATT','NFIRSAPPID').AsInteger > 0) then
        NfirsAppCntArray[Getfield('NFIRSATT','NFIRSATTTASKID').AsInteger] := NfirsAppCntArray[Getfield('NFIRSATT','NFIRSATTTASKID').AsInteger] + 1
    end else
      BlankCntVar  := BlankCntVar + 1;
    A('NFIRSATT').Skip(1);
  end;

  PersBand.Color        := IIfI(PersBand.color = clwhite,$00EBEBEB,clwhite);
  PersCodeField.Caption := GetField(PersTable,'PERSCODE').AsString;
  NameField.Caption     := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  BlankCntField.Caption := FormatFloat('##,##0',BlankCntVar);
  TotalField.Caption    := FormatFloat('##,##0',TotalVar);
  A('NFIRSATTTASK').GoTop;
  While Not A('NFIRSATTTASK').Eof do begin
    FieldName                                                 := 'NFIRSAttTaskField' + GetField('NFIRSATTTASK','NFIRSATTTASKID').AsString;
    If NfirsAttCntArray[Getfield('NFIRSATTTASK','NFIRSATTTASKID').AsInteger] > 0 then
      TQRLabel(FindComponent(FieldName)).Caption                := FormatFloat('##0',NfirsAttCntArray[Getfield('NFIRSATTTASK','NFIRSATTTASKID').AsInteger]) + ' (' + FormatFloat('##0',NfirsAppCntArray[Getfield('NFIRSATTTASK','NFIRSATTTASKID').AsInteger]) + ')'
    else  
      TQRLabel(FindComponent(FieldName)).Caption                := FormatFloat('##0',NfirsAttCntArray[Getfield('NFIRSATTTASK','NFIRSATTTASKID').AsInteger]);
    A('NFIRSATTTASK').Skip(1);
  end;
end;

end.
