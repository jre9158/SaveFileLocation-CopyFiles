unit PersNfirsAttPersPointTypeRep;

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
  TPersNfirsAttPersPointTypeRePForm = class(TAlpineBaseSummaryReportForm)
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
    PersPointTypeRepCodeField: TQRLabel;
    QRLabel2: TQRLabel;
    PersPointTypeDescrField: TQRLabel;
    QRLabel3: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable             : TApolloData;
    PersPointTypeTable    : TApolloData;
    PersPointTypeCount    : Integer;
    PersPointTypeIDMax    : Integer;
    PersPointTypeCntArray : Array of Real;
    NfirsAppCntArray  : Array of Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function GetDispCallTypeWhere: String;
  end;

var
  PersNfirsAttPersPointTypeRePForm: TPersNfirsAttPersPointTypeRePForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     Printers,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

function TPersNfirsAttPersPointTypeRePForm.GetDispCallTypeWhere: String;
Var RowVar       : Integer;
    CheckValue   : Boolean;
    WhereString  : String;
    PersCondForm : TPersCondForm;
begin
  WhereString  := '';
  PersCondForm := TPersCondForm(GetFormOfType(TPersCondForm));

  For RowVar := 0 to PersCondForm.DispCallTypeBrowse.RowCount-1 do begin
    PersCondForm.DispCallTypeBrowse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then
      WhereString := WhereString + ' OR NFIRSMAIN.DISPCALLTYPEID = ' + AddExpr(PersCondForm.DispCallTypeBrowse.Cells[0,RowVar]);
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ') ';
  GetDispCallTypeWhere := WhereString;
end;

procedure TPersNfirsAttPersPointTypeRePForm.FormCreate(Sender: TObject);
var PersPointTypeLabel : TQRLabel;
    PersPointTypeField : TQRLabel;
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
  Open_Query('PERSPOINTTYPE',False,'SELECT * FROM PERSPOINTTYPE ORDER BY CODE');
  PersPointTypeTable       := Open_Query('SELECT * FROM PERSPOINTTYPE ORDER BY CODE');
  CallTypeField.Caption    := 'Call Types: ' + PersCondForm.GetDispCallTypeString;

  I                  := 0;
  ColumnCount        := A('PERSPOINTTYPE').QueryRecCount;
  PersPointTypeCount := ColumnCount;

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

    While Not A('PERSPOINTTYPE').Eof do begin
      PersPointTypeLabel := TQRLabel.Create(self);
      with PersPointTypeLabel do begin
        Name        := 'PersPointTypeLabel' + GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
        Parent      := HeaderBand;
        Width       := ColumnWidth-2;
        AutoSize    := false;
        Alignment   := tacenter;
        Caption     := tdbfield('PERSPOINTTYPE','CODE');
        Left        := 3 + LeftLine.Left + ColumnWidth * I;
        Top         := NameLabel.Top;
        font.size   := 7;
        transparent := true;
      end;

      PersPointTypeField := TQRLabel.Create(self);
      with PersPointTypeField do begin
        Name        := 'PersPointTypeField' + GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
        parent      := PersBand;
        Width       := ColumnWidth-2;
        AutoSize    := false;
        Alignment   := tacenter;
        Caption     := '0.00';
        AutoSize    := false;
        Left        := 3 + LeftLine.Left + ColumnWidth * I;
        Top         := NameField.Top;
        Tag         := GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger;
        transparent := true;
      end;

      I := I + 1;
      A('PERSPOINTTYPE').Skip(1);
    end;
    PersPointTypeIDMax := AnyStrToInt(GetMaxValue('PERSPOINTTYPEID','PERSPOINTTYPE'));
    SetLength(PersPointTypeCntArray,PersPointTypeIDMax + 1);
    SetLength(NfirsAppCntArray,PersPointTypeIDMax + 1);
  end;

  Code  := '';
  Descr := '';
  While Not PersPointTypeTable.Eof do begin
    Code  := Code + tdbfield(PersPointTypeTable,'CODE') + #10#13;
    Descr := Descr + tdbfield(PersPointTypeTable,'DESCR') + #10#13;
    PersPointTypeTable.Skip(1);
  end;
  PersPointTypeRepCodeField.Caption := Code;
  PersPointTypeDescrField.Caption   := Descr;
end;

function TPersNfirsAttPersPointTypeRePForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSCODE, PERS.PERSID,PERS.LNAME,PERS.FNAME, PERS.MNAME FROM PERS ';
end;

procedure TPersNfirsAttPersPointTypeRePForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
  PersPointTypeTable.Free;
  CloseApollo('PERSPOINTTYPE');
  CloseApollo('NFIRSATT');
end;

procedure TPersNfirsAttPersPointTypeRePForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
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

  For ColVar := 1 to PersPointTypeIDMax do BEGIN
    PersPointTypeCntArray[ColVar] := 0;
    NfirsAppCntArray[ColVar] := 0;
  end;  

  SQLVar   :=  'SELECT NFIRSATT.NFIRSAPPID, NFIRSATT.PERSPOINTTYPEID FROM NFIRSATT LEFT JOIN NFIRSMAIN ON (NFIRSATT.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
               'WHERE NFIRSATT.PERSID = ' + pkValue(Getfield(PersTable,'PERSID').AsString) + ' AND ' +
               BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate);

  WhereString           := GetDispCallTypeWhere;
  If Not (WhereString = '') then
    SQLVar := SQLVar + ' AND ' + WhereString;

  A('NFIRSATT').UpdateSQL(SQLVar);
                                              
  While Not A('NFIRSATT').Eof do begin
    TotalVar := TotalVar + 1;
    If (Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger > 0) then begin
      PersPointTypeCntArray[Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger] := PersPointTypeCntArray[Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger] + 1;
      If (GetField('NFIRSATT','NFIRSAPPID').AsInteger > 0) then
        NfirsAppCntArray[Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger] := NfirsAppCntArray[Getfield('NFIRSATT','PERSPOINTTYPEID').AsInteger] + 1
    end else
      BlankCntVar  := BlankCntVar + 1;
    A('NFIRSATT').Skip(1);
  end;

  PersBand.Color        := IIfI(PersBand.color = clwhite,$00EBEBEB,clwhite);
  PersCodeField.Caption := GetField(PersTable,'PERSCODE').AsString;
  NameField.Caption     := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  BlankCntField.Caption := FormatFloat('##,##0',BlankCntVar);
  TotalField.Caption    := FormatFloat('##,##0',TotalVar);
  A('PERSPOINTTYPE').GoTop;
  While Not A('PERSPOINTTYPE').Eof do begin
    FieldName                                                 := 'PersPointTypeField' + GetField('PERSPOINTTYPE','PERSPOINTTYPEID').AsString;
    If PersPointTypeCntArray[Getfield('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger] > 0 then
      TQRLabel(FindComponent(FieldName)).Caption                := FormatFloat('##0',PersPointTypeCntArray[Getfield('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger]) + ' (' + FormatFloat('##0',NfirsAppCntArray[Getfield('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger]) + ')'
    else  
      TQRLabel(FindComponent(FieldName)).Caption                := FormatFloat('##0',PersPointTypeCntArray[Getfield('PERSPOINTTYPE','PERSPOINTTYPEID').AsInteger]);
    A('PERSPOINTTYPE').Skip(1);
  end;
end;

end.
