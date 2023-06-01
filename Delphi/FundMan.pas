unit FundMan;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  NormalBase,
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  Gauges,
  Grids,
  BaseGrid,
  AdvGrid,
  AdvGroupBox,
  HtmlBtns,
  AlpineCheck,
  AdvObj;

type
  TFundManForm = class(TForm)
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    Panel1: TPanel;
    PropSubTypePanel: TAdvPanel;
    PropSubTypeBrowse: TAdvStringGrid;
    ZipPanel: TAdvPanel;
    ZipBrowse: TAdvStringGrid;
    DispBoxPanel: TAdvPanel;
    DispBoxBrowse: TAdvStringGrid;
    Gauge: TGauge;
    AdvPanel1: TAdvPanel;
    FundFullFileCheck: TRadioButton;
    SortPanel: TAdvPanel;
    MailingButton: TAlpineGlowButton;
    OvcController1: TOvcController;
    Fund3x10Check: TRadioButton;
    Fund2x10Check: TRadioButton;
    AdvPanel3: TAdvPanel;
    FileNameField: TAlpineEdit;
    SortOrdField: TAlpineEdit;
    AdvPanel4: TAdvPanel;
    ExcludeFundCheck: TRadioButton;
    IncludeFundCheck: TRadioButton;
    AllFundCheck: TRadioButton;
    OpenDialog1: TOpenDialog;
    ImportListCleanupCASS: TAlpineGlowButton;
    FundWalkRepButton: TRadioButton;
    OddEvenPanel: TAdvPanel;
    BothCheck: TRadioButton;
    OddCheck: TRadioButton;
    EvenCheck: TRadioButton;
    FundASCIIFileCheck: TRadioButton;
    OverridePanel: TAdvPanel;
    NameOverrideChecked: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure MailingButtonClick(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure ImportListCleanupCASSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Procedure LoadPropSubTypeBrowse;
    Procedure LoadZipBrowse;
    Procedure LoadDispBoxBrowse;
    function  GetWhere(FieldName: String; Browse: TAdvStringGrid): String;
    function  GetSQLVar: String;
    procedure ParseExcelCSV( Data, Delimiter: string; List: TStringList );
  public
    { Public declarations }
    FundEventID : String;
    procedure GenerateFile(FileFormat: String);
    procedure GenerateReport(ReportFormat: String);
    function  SqlWhereClause: String;
    procedure GenerateASCIIFile(FileFormat: String);
  end;

var
  FundManForm: TFundManForm;

implementation
uses GenFunc,
     Commonfunc,
     Fund3x10,
     Fund2x10,
     FundWalkRep,
     CommonVar,
     formfunc,
     SortGridView;
     
{$R *.DFM}

procedure TFundManForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TFundManForm.FormCreate(Sender: TObject);
begin
  TitleImage.Picture.Icon     := GetGlowImageIcon('MAIL32');
  LoadPropSubTypeBrowse;
  LoadZipBrowse;
  LoadDispBoxBrowse;
  If mFireid='52098' then
    SortOrdField.Text  := 'PROP.PPOSTNET'
  else
    SortOrdField.Text  := 'PROP.ZIP, PROP.STREET';
  FileNameField.Text    := 'C:\PROP.TXT';
  OddEvenPanel.Visible  := (mFireID = '52049');
  Fund2x10Check.Caption := IIf(mFireID = '15030','Ellwood Custom Cards','R2 - Report:  2 x 10 Labels');
end;

procedure TFundManForm.FormShow(Sender: TObject);
begin
  If (mFireID = '15030') then begin
    FundFullFileCheck.Caption  := 'Ellwood CSV Export';
    FundASCIIFileCheck.Visible := false;
    Fund2x10Check.Visible      := false;
    Fund3x10Check.Visible      := false;
    FundFullFileCheck.Checked  := true;
    ZipPanel.Visible           := false;
    DispBoxPanel.Visible       := false;
    OddEvenPanel.Visible       := false;
    SortPanel.Visible          := false;
    OverridePanel.Visible      := false;
    Height                     := 540;
    FileNameField.Text         := 'C:\REDNMX\ELLWOOD-FUNDDRIVE-2023.CSV';
  end;  
end;

function TFundManForm.GetSQLVar: String;
Var FieldList      : String;
    SQLVar         : String;
    JoinVar        : String;
    FundCheckWhere : String;
begin
  If IncludeFundCheck.Checked then
    FundCheckWhere := ' AND FUNDCHECK.FUNDCHECKID IS NOT NULL'
  else if ExcludeFundCheck.Checked then
    FundCheckWhere := ' AND FUNDCHECK.FUNDCHECKID IS NULL'
  else
    FundCheckWhere := '';

  if MFireID = '21012' then
    FundCheckWhere  := FundCheckWhere + ' AND PROP.FDID = ' + AddExpr('21012') + ' AND PROP.ACTIVE = ' + AddExpr('Y');

  FieldList      := 'FUNDCHECK.FUNDCHECKID, FUNDCHECK.AMOUNT, PROPSUBTYPE.CODE PROPSUBTYPECODE, PROP.PPOSTNET, PROP.PFIRSTNAME, PROP.PLASTNAME, ' +
                    'PROP.PROPID, PROP.STRNUM, PROP.STREET, PROP.ROOMAPT, PROP.CITY, PROP.STATE, PROP.ZIP, ' +
                    'PROP.SENDTOOWNER, PROP.OLASTNAME, PROP.OADDRESS, PROP.OCITY, PROP.OSTATE, PROP.OZIP ';
  JoinVar        := 'LEFT JOIN FUNDCHECK ON (PROP.PROPID = FUNDCHECK.PROPID AND FUNDCHECK.FUNDEVENTID = ' + FundEventID + ') ' +
                    'LEFT JOIN PROPSUBTYPE ON (PROP.PROPSUBTYPEID = PROPSUBTYPE.PROPSUBTYPEID) ' ;
  SQLVar         := 'SELECT ' + FieldList + ' FROM PROP ' + JoinVar + SqlWhereClause + FundCheckWhere + ' ORDER BY ' + SortOrdField.Text;
  GetSQLVar      := SQLVar;
end;

function GetZip(ZipVar: String): String;
begin
  If Length(alltrim(ZipVar)) > 6 then
    GetZip := ZipVar
  else
    GetZip := substr(ZipVar,1,5);
end;

procedure TFundManForm.GenerateReport(ReportFormat: String);
Var SQLVar : String;
begin
  SQLVar := GetSQLVar;
  Open_Query('PROP',false,SQLVar);
  If Reportformat = 'FUND3X10' then begin
    Fund3x10Form := TFund3x10Form.Create(Application,'',0,0);
    Fund3x10Form.BaseReport.previewmodal;
    Fund3x10Form.Free;
  end else  If Reportformat = 'FUND2X10' then begin
    Fund2x10Form := TFund2x10Form.Create(Application,'',0,0);
    Fund2x10Form.BaseReport.previewmodal;
    Fund2x10Form.Free;
  end else  If Reportformat = 'FUNDWALKREP' then begin
    FundWalkRepForm := TFundWalkRepForm.Create(Application);
    FundWalkRepForm.PreviewModal := False;
    FundWalkRepForm.BaseReport.Preview;
    FundWalkRepForm.Free;
  end;

  CloseApollo('PROP');
end;

procedure TFundManForm.GenerateFile(FileFormat: String);
Var TxtFile       : TextFile;
    LineString    : String;
    FundCheck2022 : Real;
    FundCheck2021 : Real;
    FundCheck2020 : Real;
    FundCheck2019 : Real;
begin
  AssignFile(TxtFile,FileNameField.Text);
  Rewrite(TxtFile);

  If (mFireID = '15030') then begin
    LineString :=   '"Property Code","Address","Apt Number","Street","Type","City","State","Zip","Name","Bar Code","Donation 2022","Donation 2021","Donation 2020","Donation 2019"';
    WriteLn(txtfile,LineString);

  end;

  Open_Query('PROP',false,GetSQLVar);
  Open_Query('FUNDCHECK',false,'SELECT FUNDCHECK.DATEREC, FUNDCHECK.AMOUNT, FUNDCHECK.PROPID, FUNDEVENT.CODE FROM FUNDCHECK ' +
                               'LEFT JOIN FUNDEVENT ON (FUNDCHECK.FUNDEVENTID = FUNDEVENT.FUNDEVENTID) ' +
                               'WHERE FUNDCHECK.DATEREC >= ' + AddExpr('2018-01-01') + ' ORDER BY FUNDCHECK.PROPID, FUNDCHECK.DATEREC');
  A('PROP').GoTop;
  Gauge.MinValue   := 0;
  Gauge.Progress   := 0;
  Gauge.MaxValue   := A('PROP').RecordCount - 1;
  Gauge.Visible    := true;
  While Not A('PROP').Eof do begin
    If mFireID = '52098' then
      LineString := '"' + alltrim(dbfield('PROP','PROPID'))  + '"' + ',' +
                    '"' + FormatAddress(A('PROP'))           + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','CITY'))    + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','STATE'))   + '"' + ',' +
                    '"' + GetZip(dbfield('PROP','ZIP'))      + '"' + ',' +
                    '"' + dbfield('PROP','PLASTNAME')        + '"' + ',' +
                    '"' + GetZip(dbfield('PROP','PPOSTNET')) + '"'
    else if (mFireID = '28005') then
      LineString := '"' + alltrim(dbfield('PROP','PROPID'))    + '"' + ',' +
                      '"' + FormatAddress(A('PROP'))             + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','CITY'))      + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','STATE'))     + '"' + ',' +
                      '"' + GetZip(dbfield('PROP','ZIP'))        + '"' + ',' +
                      '"' + IIF(NameOverrideChecked.Checked,'',alltrim(dbfield('PROP','PFIRSTNAME')))  + '"' +
                      '"' + IIF(NameOverrideChecked.Checked,'TO OUR NEIGHBORS AT',alltrim(dbfield('PROP','PLASTNAME'))) + '"'
    else if (mFireID = '21012') then
      LineString := '"' + alltrim(dbfield('PROP','PROPID'))    + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','PLASTNAME'))      + '"' + ',' +
                      '"' + 'OR OUR CURRENT NEIGHBOR AT ' + '"' + ',' +
                      '"' + FormatAddress(A('PROP'))             + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','CITY'))      + '"' + ',' +
                      '"' + GetZip(dbfield('PROP','ZIP'))        + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','STATE'))     + '"'

    else if (mFireID = '30053') then
      LineString   := '"' + alltrim(dbfield('PROP','PROPID'))    + '"' + ',' +
                      '"' + FormatAddress(A('PROP'))             + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','CITY'))      + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','STATE'))     + '"' + ',' +
                      '"' + GetZip(dbfield('PROP','ZIP'))        + '"' + ',' +
                      '"' + alltrim(tdbfield('PROP','PFIRSTNAME') + ' ' + tdbfield('PROP','PLASTNAME')) + '"'
    else if (mFireID = '28030') then begin
      if tdbfield('PROP','SENDTOOWNER') = 'Y' then
        LineString := '"' + alltrim(dbfield('PROP','PROPID'))    + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','OADDRESS'))  + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','OCITY'))     + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','OSTATE'))    + '"' + ',' +
                      '"' + GetZip(dbfield('PROP','OZIP'))       + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','OLASTNAME')) + '"'
      else
        LineString := '"' + alltrim(dbfield('PROP','PROPID'))    + '"' + ',' +
                      '"' + FormatAddress(A('PROP'))             + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','CITY'))      + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','STATE'))     + '"' + ',' +
                      '"' + GetZip(dbfield('PROP','ZIP'))        + '"' + ',' +
                      '"' + IIF(NameOverrideChecked.Checked,'',alltrim(dbfield('PROP','PFIRSTNAME')))  + '",' +
                      '"' + IIF(NameOverrideChecked.Checked,'TO OUR NEIGHBORS AT',alltrim(dbfield('PROP','PLASTNAME'))) + '"';
    end else if (mFireID = '15030') then begin
      FundCheck2022 := 0;
      FundCheck2021 := 0;
      FundCheck2020 := 0;
      FundCheck2019 := 0;
      If A('FUNDCHECK').ExactQueryLocate('PROPID',GetField('PROP','PROPID').AsString) then begin
        While (GetField('PROP','PROPID').AsString = GetField('FUNDCHECK','PROPID').AsString) and Not A('FUNDCHECK').Eof do begin
          If tdbfield('FUNDCHECK','CODE') = 'FUND2019' then
            FundCheck2019 := GetField('FUNDCHECK','AMOUNT').AsFloat
          else if tdbfield('FUNDCHECK','CODE') = 'FUND2020' then
            FundCheck2020 := GetField('FUNDCHECK','AMOUNT').AsFloat
          else if tdbfield('FUNDCHECK','CODE') = 'FUND2021' then
            FundCheck2021 := GetField('FUNDCHECK','AMOUNT').AsFloat
          else if tdbfield('FUNDCHECK','CODE') = 'FUND2022' then
            FundCheck2022 := GetField('FUNDCHECK','AMOUNT').AsFloat;
          A('FUNDCHECK').Skip(1);
        end;
      end;

      LineString :=   '"' + GetField('PROP','PROPID').AsString     + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','STRNUM'))      + '"' + ',' +
                      '"' + alltrim(dbfield('PROP','ROOMAPT'))     + '"' + ',' +
                      '"' + tdbfield('PROP','STREET')              + '"' + ',' +
                      '"' + tdbfield('PROP','PROPSUBTYPECODE')     + '"' + ',' +
                      '"' + tdbfield('PROP','CITY')                + '"' + ',' +
                      '"' + tdbfield('PROP','STATE')               + '"' + ',' +
                      '"' + substr(tdbfield('PROP','ZIP'),1,5)     + '"' + ',' +
                      '"' + tdbfield('PROP','PLASTNAME')           + '"' + ',' +
                      '"' + GetField('PROP','PROPID').AsString     + '"' + ',' +
                      '"' + FormatFloat('##,##0.00',FundCheck2022) + '"' + ',' +
                      '"' + FormatFloat('##,##0.00',FundCheck2021) + '"' + ',' +
                      '"' + FormatFloat('##,##0.00',FundCheck2020) + '"' + ',' +
                      '"' + FormatFloat('##,##0.00',FundCheck2019) + '"';
    end else begin
      LineString := '"' + alltrim(dbfield('PROP','PROPID'))  + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','STRNUM'))   + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','STREET'))   + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','ROOMAPT'))  + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','CITY'))     + '"' + ',' +
                    '"' + alltrim(dbfield('PROP','STATE'))    + '"' + ',' +
                    '"' + GetZip(dbfield('PROP','ZIP'))   + '"' + ',' +
                    '"' + IIF(NameOverrideChecked.Checked,'TO OUR NEIGHBORS AT',alltrim(dbfield('PROP','PLASTNAME')))   + '"' + ',' +
                    '"' + GetZip(dbfield('PROP','PPOSTNET'))   + '"' + ',' +
                    '"' + FormatFloat('##,##0.00',GetField('PROP','AMOUNT').AsFloat)   + '"';
    end;
    WriteLn(txtfile,LineString);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PROP').Skip(1);
  end;
  CloseApollo('FUNDCHECK');
  CloseApollo('PROP');
  System.Close(TxtFile);
  Gauge.Visible    := false;
  MessageDlg('Fund drive export data has sucessfully been written to file:' + #13#10 + #13#10 + UpperCase(FileNameField.Text), mtInformation, [mbOK], 0);
end;

procedure TFundManForm.GenerateASCIIFile(FileFormat: String);
Var TxtFile    : TextFile;
    LineString : String;
begin
  AssignFile(TxtFile,FileNameField.Text);
  Rewrite(TxtFile);

  Open_Query('PROP',false,GetSQLVar);
  A('PROP').GoTop;
  Gauge.MinValue   := 0;
  Gauge.Progress   := 0;
  Gauge.MaxValue   := A('PROP').RecordCount - 1;
  Gauge.Visible    := true;
  While Not A('PROP').Eof do begin

    if mFireID = '15037' then
      LineString := UpperCase(
                  padl(alltrim(GetField('PROP','PROPID').AsString),08,'0') +
                  padr(alltrim(GetField('PROP','PLASTNAME').AsString),40,' ') +
                  padl(alltrim(tdbfield('PROP','STRNUM')) ,        08,' ') +
                  padr(alltrim(tdbfield('PROP','STREET')) ,        40,' ') +
                  padr(alltrim(tdbfield('PROP','ROOMAPT')),        05,' ') +
                  padr(alltrim(tdbfield('PROP','CITY'))   ,        20,' ') +
                  padr(alltrim(tdbfield('PROP','STATE'))  ,        02,' ') +
                  substr(tdbfield('PROP','ZIP'),1,5)
                  )
    else
      LineString := UpperCase(
                  padl(alltrim(GetField('PROP','PROPID').AsString),08,'0') +
                  padl(alltrim(tdbfield('PROP','STRNUM')) ,        08,' ') +
                  padr(alltrim(tdbfield('PROP','STREET')) ,        30,' ') +
                  padr(alltrim(tdbfield('PROP','ROOMAPT')),        05,' ') +
                  padr(alltrim(tdbfield('PROP','CITY'))   ,        20,' ') +
                  padr(alltrim(tdbfield('PROP','STATE'))  ,        02,' ') +
                  substr(tdbfield('PROP','ZIP'),1,5)
                  );

    WriteLn(txtfile,LineString);
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('PROP').Skip(1);
  end;
  CloseApollo('PROP');
  System.Close(TxtFile);
  Gauge.Visible    := false;
  MessageDlg('Fund drive export data has sucessfully been written to file:' + #13#10 + #13#10 + UpperCase(FileNameField.Text), mtInformation, [mbOK], 0);
end;


Procedure TFundManForm.LoadPropSubTypeBrowse;
Var RowNum : Integer;
begin
  PropSubTypeBrowse.clear;
  PropSubTypeBrowse.ColCount := 3;
  PropSubTypeBrowse.RowCount := 0;

  PropSubTypeBrowse.ColWidths[00] := 000;
  PropSubTypeBrowse.ColWidths[01] := 020;
  PropSubTypeBrowse.ColWidths[02] := 200;

  PropSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;
  Open_Query('PROPSUBTYPE',false,'SELECT * FROM PROPSUBTYPE ORDER BY CODE');
  While Not A('PROPSUBTYPE').Eof do begin
    PropSubTypeBrowse.RowCount := PropSubTypeBrowse.RowCount + 1;  
    PropSubTypeBrowse.Cells[0,RowNum] := Getfield('PROPSUBTYPE','PROPSUBTYPEID').AsString;
    PropSubTypeBrowse.AddCheckBox(1,RowNum,false,false);
    PropSubTypeBrowse.Cells[2,RowNum] := Getfield('PROPSUBTYPE','DESCR').AsString;
    RowNum := RowNum + 1;
    A('PROPSUBTYPE').Skip(1);
  end;
  CloseApollo('PROPSUBTYPE');
end;

Procedure TFundManForm.LoadZipBrowse;
Var RowNum : Integer;
begin
  ZipBrowse.clear;
  ZipBrowse.ColCount := 4;
  ZipBrowse.RowCount := 0;

  ZipBrowse.ColWidths[00] := 000;
  ZipBrowse.ColWidths[01] := 020;
  ZipBrowse.ColWidths[02] := 075;
  ZipBrowse.ColWidths[03] := 200;

  PropSubTypeBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('CITY',false,'SELECT * FROM CITY ORDER BY ZIP');
  While Not A('CITY').Eof do begin
    ZipBrowse.RowCount := ZipBrowse.RowCount + 1;  
    ZipBrowse.Cells[0,RowNum] := Getfield('CITY','ZIP').AsString;
    ZipBrowse.AddCheckBox(1,RowNum,false,false);
    ZipBrowse.Cells[2,RowNum] := Getfield('CITY','ZIP').AsString;
    ZipBrowse.Cells[3,RowNum] := Getfield('CITY','CITY').AsString;

    RowNum := RowNum + 1;
    A('CITY').Skip(1);
  end;
  CloseApollo('CITY');
end;

procedure TFundManForm.MailingButtonClick(Sender: TObject);
begin
  MailingButton.Enabled := false;
  If Fund3x10Check.Checked then
    GenerateReport('FUND3X10')
  else if Fund2x10Check.Checked then
    GenerateReport('FUND2X10')
  else if FundFullFileCheck.Checked then
    GenerateFile('FUNDFULLFILE')
  else if FundASCIIFileCheck.Checked then
    GenerateASCIIFile('')
  else if FundWalkRepButton.Checked then
    GenerateReport('FUNDWALKREP')
  else
    ShowMessage('Nothing is checked off in the Select Mailing Type.');
  MailingButton.Enabled := true;
end;

Procedure TFundManForm.LoadDispBoxBrowse;
Var RowNum : Integer;
begin
  DispBoxBrowse.clear;
  DispBoxBrowse.ColCount := 4;
  DispBoxBrowse.RowCount := 0;

  DispBoxBrowse.ColWidths[00] := 000;
  DispBoxBrowse.ColWidths[01] := 020;
  DispBoxBrowse.ColWidths[02] := 075;
  DispBoxBrowse.ColWidths[03] := 200;

  DispBoxBrowse.ControlLook.NoDisabledCheckRadioLook := True;
  RowNum := 0;

  Open_Query('DISPBOX',false,'SELECT * FROM DISPBOX ORDER BY CODE');
  While Not A('DISPBOX').Eof do begin
    DispBoxBrowse.RowCount := DispBoxBrowse.RowCount + 1;  
    DispBoxBrowse.Cells[0,RowNum] := Getfield('DISPBOX','DISPBOXID').AsString;
    DispBoxBrowse.AddCheckBox(1,RowNum,false,false);
    DispBoxBrowse.Cells[2,RowNum] := Getfield('DISPBOX','CODE').AsString;
    DispBoxBrowse.Cells[3,RowNum] := Getfield('DISPBOX','DESCR').AsString;

    RowNum := RowNum + 1;
    A('DispBox').Skip(1);
  end;
  CloseApollo('DispBox');
end;


function TFundManForm.SqlWhereClause: String;
Var PropSubTypeString : String;
    DispBoxString     : String;
    ZipString         : String;
    WhereString       : String;
begin
  PropSubTypeString := GetWhere('PROP.PROPSUBTYPEID',PropSubTypeBrowse);
  DispBoxString     := GetWhere('PROP.DISPBOXID',DispBoxBrowse);
  ZipString         := GetWhere('PROP.ZIP',DispBoxBrowse);

  If PropAddr = '' then
    WhereString := ' WHERE 1=1 '
  else
    WhereString := ' WHERE PROPTYPEID = ' + PropAddr;
  
  If Not (PropSubTypeString = '') then
    WhereString := WhereString + ' AND ' + PropSubTypeString;
  If Not (DispBoxString = '') then
    WhereString := WhereString + ' AND ' + DispBoxString;
  If Not (ZipString = '') then
    WhereString := WhereString + ' AND ' + ZipString;

  result := WhereString;
end;

function TFundManForm.GetWhere(FieldName: String; Browse: TAdvStringGrid): String; 
Var RowVar      : Integer;
    CheckValue  : Boolean;
    WhereString : String;
begin
  WhereString := '';
  For RowVar := 0 to Browse.RowCount-1 do begin
    Browse.GetCheckBoxState(1,RowVar,CheckValue);
    If CheckValue then begin
      If FieldName = 'PROP.ZIP' then 
        WhereString := WhereString + ' OR ' + FieldName + ' LIKE ' + AddExpr(Browse.Cells[0,RowVar] + '%')
      else  
        WhereString := WhereString + ' OR ' + FieldName + ' = ' + AddExpr(Browse.Cells[0,RowVar]);
    end;
  end;
  If Not (WhereString = '') then
    WhereString := '(' + alltrim(substr(WhereString,5,Length(WhereString))) + ')';
  GetWhere := WhereString;
end;

procedure TFundManform.ParseExcelCSV( Data, Delimiter: string; List: TStringList );
var i  : integer;
    i2 : integer;
begin
  List.Clear;
  i := Pos( Delimiter, Data );
  while i > 0 do begin
    if not(Copy(Data, 1, 1) = '"') then begin
      List.Add( Copy( Data, 1, i - 1 ));
      Delete( Data, 1, i -1 + Length(Delimiter) ); // remove the data and the delimiter.
      i := Pos( Delimiter, Data );
    end else begin
      Delete(Data, 1, 1);
      i2 := Pos('"', Data);
      List.Add(Copy(Data,1,i2-1));
      Delete( Data, 1, i2 + Length('"') );
      i := Pos( Delimiter, Data );
    end;
  end;
  List.Add( Data );
end;


procedure TFundManForm.ImportListCleanupCASSClick(Sender: TObject);
var filestringlist : TStringList;
    parseddata     : TStringList;
    i              : Integer;
    mPropId        : String;
    mZipPlus4      : String;
  function RemoveQuotes(mString: String): String;
  begin
    result  := mString;
    exit;
    mString := alltrim(mString);
    result  := substr(mString,2,length(mString)-2);
  end;
begin
  Gauge.Visible    := true;
  If not BooleanMessageDlg('This routine assumes the data is in csv format, with PROPID in 1st column, and POSTNET in column 8') then
    exit;

  If opendialog1.execute then begin
    RunSql('UPDATE PROP SET PPOSTNET = NULL');
    filestringlist:=TStringList.Create;

    parseddata := TStringList.Create;
    filetostringlist(opendialog1.filename,filestringlist);
    Gauge.MaxValue := filestringlist.count;
    Gauge.Progress := 0;
    for i := 0 to filestringlist.count-1 do begin
      Gauge.Progress := Gauge.Progress + 1;
      application.processmessages;
      ParseExcelCSV(filestringlist[i],',',parseddata);
      mZipPlus4      := RemoveQuotes(parseddata[8]);
      mPropID        := RemoveQuotes(parseddata[0]);
      If mZipPlus4 <> '' then
        RunSql('UPDATE PROP SET PPOSTNET = '+AddExpr(RemoveQuotes(parseddata[4])+RemoveQuotes(parseddata[8])+RemoveQuotes(parseddata[9])+RemoveQuotes(parseddata[10]))+' WHERE PROPID = '+pkValue(mPropId));
    end;
    parseddata.Free;
    Filestringlist.free;
  end;
  ShowMessage('Done');
end;

end.
