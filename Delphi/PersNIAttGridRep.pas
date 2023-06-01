unit PersNIAttGridRep;

interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  commonvar,
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
  TPersNIAttGridRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    NameField: TQRLabel;
    PageHeaderBand1: TQRBand;
    FireDeptField: TQRLabel;
    TitleField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    PersTypeLabel: TQRLabel;
    PersOrderLabel: TQRLabel;
    PersStatLabel: TQRLabel;
    HeaderBand: TQRBand;
    NameLabel: TQRLabel;
    SubTotalLabel: TQRLabel;
    SubTotalField: TQRLabel;
    PersCodeLabel: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel5: TQRLabel;
    DateLabel: TQRLabel;
    SummaryBand: TQRBand;
    EventLabel: TQRLabel;
    procedure PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Pers             : TApolloData;
    PersPointColList : TList;
    NIWhere          : String;
  public
    { Public declarations }
    function SelectStatement: string; override;
    class function OkToRun: Boolean; override;
    function GetFdidWhere: String;
  end;

var
  PersNIAttGridRepForm: TPersNIAttGridRepForm;

implementation
uses GenFunc,
     SysRepMan,
     CommonFunc,
     Printers,
     PersCond;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersNIAttGridRepForm.FormCreate(Sender: TObject);
var TopHeading         : TQRLabel;
    I                  : Integer;
    ColumnWidth        : Integer;
    ColumnCount        : Integer;
    AttendField        : TQRLabel;
    SQLVar             : String;
    Form               : TForm;
begin
  inherited;
  Pers                        := Open_Query(Sql);
  BaseReport.DataSet          := Pers.DataSource.DataSet;
  FireDeptField.Caption       := mFireDept;
  PersBand.PkField            := 'PERSID';
  Form                        := GetFormOfType(TPersCondForm);
  PersTypeLabel.Caption       := TPersCondForm(Form).GetPersTypeList;
  PersStatLabel.Caption       := TPersCondForm(Form).GetPersStatList;
  PersOrderLabel.Caption      := TPersCondForm(Form).GetPersOrder;
  DateLabel.caption           := GetAlpineDateLabel(InitialDate,FinalDate);
  EventLabel.Caption          := TPersCondForm(Form).GetNISTypeString;
  NIWhere                     := TPersCondForm(Form).GetNISTypeWhere + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDate,FinalDate) + GetFdidWhere;
  SQLVar                      := 'SELECT NIID, DATETIMESTART FROM NI WHERE ' + NIWhere + ' ORDER BY NI.DATETIMESTART';

  Open_Query('NIATT',false,'SELECT * FROM NIATT WHERE 1=2');
  Open_Query('NI',False,SQLVar);

  I                           := 0;
  ColumnCount                 := A('NI').QueryRecCount;

  If ColumnCount > 5 then begin
    BaseReport.Page.Orientation := poLandscape;
    SubTotalField.Left          := HeaderBand.Width - SubTotalField.Width - 2;
    SubTotalLabel.Left          := HeaderBand.Width - SubTotalField.Width - 2;
  end else
    BaseReport.Page.Orientation := poPortrait;

  If ColumnCount > 0 then
    ColumnWidth := Round( (PersBand.Width - NameField.Width - NameField.Left - SubTotalField.Width) / ColumnCount)
  else
    ColumnWidth := 1;

  While Not A('NI').Eof do begin
    TopHeading := TQRLabel.Create(self);

    with TopHeading do begin
      Name      := 'TopHeading' + GetField('NI','NIID').AsString;
      parent    := HeaderBand;
      Width     := ColumnWidth-2;
      AutoSize  := false;
      Alignment := tacenter;
      Caption   := FormatDateTime('MM/DD',GetField('NI','DATETIMESTART').AsDateTime);
      left      := NameLabel.Width + 40 + (ColumnWidth * I);
      Top       := NameLabel.Top;
    end;

    AttendField := TQRLabel.Create(self);

    with AttendField do begin
      Name       := 'Attend' + GetField('NI','NIID').AsString + 'Field';
      parent     := PersBand;
      Width      := ColumnWidth-2;
      AutoSize   := false;
      Alignment  := tacenter;
      Caption    := '-';
      AutoSize   := false;
      left       := NameField.Width + 40 + (ColumnWidth * I);
      Top        := NameField.Top;
      Tag        := GetField('NI','NIID').AsInteger;
      transparent:= true;
    end;
 
    I := I + 1;
    A('NI').Skip(1);
  end;
end;

procedure TPersNIAttGridRepForm.PersBandPrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var FieldName   : String;
    SQL         : String;
    FieldVar    : Real;
    SubTotalVar : Real;
    i           : Integer;
    SQLVar      : String;
begin
  SubTotalVar := 0;
  SQLVar   := 'SELECT NIATT.NIID FROM NIATT LEFT JOIN NI ON (NIATT.NIID = NI.NIID) WHERE NIATT.PERSID = ' + GetField(Pers,'PERSID').AsString + ' AND ' +  NIWhere;
  if MFireID = '28020' then
     SQLVar   := 'SELECT NIATT.NIID, NIATT.PERSPOINTTYPEID FROM NIATT LEFT JOIN NI ON (NIATT.NIID = NI.NIID) WHERE NIATT.PERSID = ' + GetField(Pers,'PERSID').AsString + ' AND ' +  NIWhere;
  A('NIATT').UpdateSQL(SQLVar);

  A('NI').GoTop;
  While Not A('NI').Eof do begin
    FieldName := 'Attend' + GetField('NI','NIID').AsString + 'Field'; 
    If A('NIATT').ExactQueryLocate('NIID',GetField('NI','NIID').AsString) then begin
      TQRLabel(FindComponent(FieldName)).Caption := 'Yes';
      if ((MFireID = '28020') and (TDBfield('NIATT','PERSPOINTTYPEID') ='1')) then
        TQRLabel(FindComponent(FieldName)).Font.Color := clRed;
      SubTotalVar                                := SubTotalVar + 1;
    end else
      TQRLabel(FindComponent(FieldName)).Caption := '-';

    A('NI').Skip(1);
  end;

  PersCodeField.Caption := tdbfield(Pers,'PERSCODE');
  NameField.Caption     := tdbfield(Pers,'LNAME') + ', ' + tdbfield(Pers,'FNAME');

  If SubTotalVar > 0 then 
    SubTotalField.Caption := FormatFloat('##0',SubTotalVar)
  else
    SubTotalField.Caption := '-';

  If PersBand.color = clwhite then
    PersBand.Color := clActiveBorder
  else
    PersBand.Color := clwhite;
end;

function TPersNIAttGridRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERSSTAT.DESCR PERSSTATDESCR, PERSTYPE.DESCR PERSTYPEDESCR, PERS.LNAME,PERS.FNAME, PERS.PERSCODE FROM PERS ' +
            'LEFT JOIN PERSSTAT ON (PERSSTAT.PERSSTATID = PERS.PERSSTATID) ' +
            'LEFT JOIN PERSTYPE ON (PERSTYPE.PERSTYPEID = PERS.PERSTYPEID) ';
end;

procedure TPersNIAttGridRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Pers.Free;
  CloseApollo('NI');
  CloseApollo('NIATT');
end;

class function TPersNIAttGridRepForm.OkToRun: Boolean;
Var Form    : TForm;
    SQLVar  : String;
    NIWhere : String;
    NICount : Integer;
begin
  Form := GetFormOfType(TPersCondForm);
  If Not (TPersCondform(Form).StartDateField.Value > 0) then begin
    ShowMessage('You must enter the initial date.');
    result := False;
  end else if Not (TPersCondform(Form).EndDateField.Value > 0) then begin
    ShowMessage('You must enter the final date.');
    result := False;
  end else if TPersCondForm(Form).GetNISTypeWhere = '' then begin
    ShowMessage('You must select one or more subtypes');
    result := False;
  end else begin
    NIWhere                     := TPersCondForm(Form).GetNISTypeWhere + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',TPersCondForm(Form).StartDateField.Value,TPersCondForm(Form).EndDateField.Value);
    SQLVar                      := 'SELECT NIID, DATETIMESTART FROM NI WHERE ' + NIWhere + ' ORDER BY NI.DATETIMESTART';
    Open_Query('NI',False,SQLVar);
    NICount := A('NI').QueryRecCount;
    CloseApollo('NI');
    If NICount = 0 then begin
      ShowMessage('There are no events that meet the selection');
      result := False;
    end else if (NICount > 33) then begin
      ShowMessage('There are ' + IntToStr(NICount) + ' events.' + #10#13 +
                  'This is way too many events for this report.' + #10#13 +
                  'Please narrow your date range or pick less events.');
      result := False;
    end;
  end;  
end;

function TPersNIAttGridRepForm.GetFdidWhere: String;
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
    Form        : TForm;
begin
  Form := GetFormOfType(TPersCondForm);
  If MultiFdid and TPersCondform(Form).FdidPanel.Visible then begin
    WhereString := '';
    For RowVar := 0 to TPersCondform(Form).FdidBrowse.RowCount-1 do begin
      TPersCondform(Form).FdidBrowse.GetCheckBoxState(1,RowVar,CheckValue);
      If CheckValue then begin
        WhereString := WhereString + ' OR NI.FDID = ' + AddExpr(TPersCondform(Form).FdidBrowse.Cells[0,RowVar]);
      end;
    end;
    If Not (WhereString = '') then
      WhereString := ' AND (' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
    GetFdidWhere := WhereString;
  end else
    GetFdidWhere := '';
end;


end. 
