unit VoteSet;

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
  OvcBase,
  ExtCtrls,
  NormalBtnPanel,
  AlpineDateTime,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  AdoDb,
  db,
  AlpineLookup,
  Blink,
  Buttons,
  ImgList,
  AdvToolBtn,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvPageControl,
  ComCtrls,
  htmlbtns,
  OvcDbPF,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  Gauges,
  AdvGroupBox;

type
  TVoteExclObject = class
  public
    Street      : String;
    LowerStrNum : String;
    UpperStrNum : String;
    Zip         : String;
    ElectDist   : String;
    OddEven     : String;
  end;

type
  TVoteSetForm = class(TNormalBaseForm)
    Panel1: TPanel;
    ResourceControl: TAdvPageControl;
    VoteElectTab: TAdvTabSheet;
    VoteElectBrowse: TAlpineBlockBrowse;
    VoteExclTab: TAdvTabSheet;
    ImportButton: TAlpineGlowButton;
    OpenDocFile: TOpenDialog;
    Gauge: TGauge;
    GenTab: TAdvTabSheet;
    VoteExclBrowse: TAlpineBlockBrowse;
    Panel0A: TAlpinePanel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    VoteElectIDField: TAlpineLookup;
    MyDBEdit2: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    ConvBox: TListBox;
    procedure VoteElectTabShow(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure VoteExclTabShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    VoteExclList : TStringList;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure VoteElectNewRecord(DataSet: TDataSet);
    procedure VoteExclNewRecord(DataSet: TDataSet);
    Class function CheckVoteExcl(VoteExclList : TStringList; Zip, Street, StrNum, ElectDist: String): Boolean;
    class procedure SetVoteExclList(Var VoteExclList: TStringList);
    procedure LoadBroomeCounty(FileName: String);
    procedure LoadWestchesterCounty(FileName: String);
    procedure LoadNassauCountyDBF(FileName: String);
    procedure LoadNassauCountyXLSX(FileName: String);
    procedure LoadSuffolkCounty(FileName: String);
  end;

var
  VoteSetForm  : TVoteSetForm;

implementation
uses GenFunc,
     VoteElect,
     VoteExcl,
     CommonFunc,
     FormFunc,
     CommonVar;

{$I rednmx.inc}
{$R *.DFM}

class procedure TVoteSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TVoteSetForm.VoteElectTabShow(Sender: TObject);
begin
  inherited;
  VoteElectBrowse.Setup('VOTEELECT',TVoteElectForm,VoteElectNewRecord);
end;

procedure TVoteSetForm.VoteElectNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('DESCR').AsString := ' ';
end;

procedure TVoteSetForm.VoteExclTabShow(Sender: TObject);
begin
  inherited;
  VoteExclBrowse.Setup('VOTEEXCL',TVoteExclForm,VoteExclNewRecord);
end;

procedure TVoteSetForm.VoteExclNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('STREET').AsString := ' ';
end;

procedure TVoteSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  VoteExclList := TStringList.Create;
  VoteExclList.Clear;
  TVoteSetForm.SetVoteExclList(VoteExclList);
end;

procedure TVoteSetForm.FormDestroy(Sender: TObject);
begin
  inherited;
  ClearAndFreeStringList(VoteExclList);
end;

procedure TVoteSetForm.ImportButtonClick(Sender: TObject);
var FileName       : String;
    DeleteVoteAddr : Boolean;
begin
  If OpenDocFile.Execute then begin
    DeleteVoteAddr := True;
    If tableRecCount('VOTEHIST')=0 THEN
      DeleteVoteAddr := True
    else if mFireID = '52005' then
      DeleteVoteAddr := True
    else if SqlTableRecCount('SELECT COUNT(*) FROM VOTEHIST WHERE REGNUMBER IS NULL')/TableRecCount('VOTEHIST')>0.1 then begin
      DeleteVoteAddr := False;
      ShowMessage('Prior Update Not Fully Completed' + crlf + 'Open SIMPLEVIEW and do this: ALTER TABLE VOTEHIST DROP MAILADDR1' + crlf + 'Run a FULL Update' + crlf + 'Then Re Import the Voter Address Data.  Should NOT prompt "NOTE: Table VOTEADDR not purged....');
    end else
      DeleteVoteAddr := True;
    If DeleteVoteAddr then begin
      CommonProcessFK('VOTEADDR',nil,True,nil);
      If not RunSql('TRUNCATE TABLE VOTEADDR') then
        ShowMessage('Could not delete records from VOTEADDR table!');
    end;
    FileName := UpperCase(rtrim(OpenDocFile.Files[0]));

    Open_Query('VOTEADDR',true,'SELECT * FROM VOTEADDR WHERE 1=2');
    If (Substr(FireID,1,2) = '04') then
      LoadBroomeCounty(FileName)
    else if (Substr(FireID,1,2) = '60') then
      LoadWestchesterCounty(FileName)
    else if (Substr(FireID,1,2) = '30') and (at('.DBF',FileName) > 0) then
      LoadNassauCountyDBF(FileName)
    else if (Substr(FireID,1,2) = '30') and (at('.XLSX',FileName) > 0) then
      LoadNassauCountyXLSX(FileName)
    else if (Substr(FireID,1,2) = '52') then
      LoadSuffolkCounty(FileName)
    else
      ShowMessage('Vote processing has not been set up for your department yet, please contact Alpine Software.');
    CloseApollo('VOTEADDR');
  end;
  ImportButton.Caption := '&Import';
end;

procedure TVoteSetForm.LoadBroomeCounty(FileName: String);
Var FieldList      : TStringList;
    TxtFile        : System.Text;
    LineString     : String;
    RegNumber      : String;
    DOB            : String;
    FirstName      : String;
    MiddleName     : String;
    LastName       : String;
    SQLVar         : String;
begin
  FieldList    := TStringList.Create;
  FileName     := 'C:\TEMP\VESTAL-VOTERLIST.CSV';
  AssignFile(TxtFile,FileName);
  Reset(TxtFile);

  Gauge.MaxValue := 18008;
  Gauge.Progress := 0;
  Gauge.Visible  := true;

  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    ParseBasedOnDelimiter(LineString,',',FieldList);
    RegNumber  := alltrim(substr(FieldList[0],1,200));
    DOB        := alltrim(substr(FieldList[16],1,200));
    DOB        := substr(Dob,1,4) + '-' + substr(Dob,5,2) + '-' + substr(Dob,7,2);
    FirstName  := alltrim(substr(FieldList[1],1,200));
    MiddleName := alltrim(substr(FieldList[2],1,200));
    LastName   := alltrim(substr(FieldList[3],1,200));
    SQLVar     := 'SELECT * FROM VOTEADDR WHERE LASTNAME = ' + AddExpr(LastName) + ' AND FIRSTNAME = ' + AddExpr(FirstName) + ' AND DOB = ' + AddExpr(DOB);
    A('VOTEADDR').UpdateSQL(SQLVar);
    If A('VOTEADDR').RecordsExist then
      A('VOTEADDR').Edit
    else
      GetTable('VOTEADDR').Insert;

    GetField('VOTEADDR','REGNUMBER').AsString      := RegNumber;
    GetField('VOTEADDR','FIRSTNAME').AsString      := alltrim(substr(FieldList[1],1,200));
    GetField('VOTEADDR','MIDDLENAME').AsString     := alltrim(substr(FieldList[2],1,200));
    GetField('VOTEADDR','LASTNAME').AsString       := alltrim(substr(FieldList[3],1,200));
    GetField('VOTEADDR','NAMESUFFIX').AsString     := alltrim(substr(FieldList[4],1,200));
    GetField('VOTEADDR','RESADDR1').AsString       := alltrim(alltrim(substr(FieldList[5],1,200)) + ' ' + alltrim(substr(FieldList[7],1,200)));
//  GetField('VOTEADDR','RESADDR2').AsString       := alltrim(substr(FieldList[10],1,200));
    GetField('VOTEADDR','RESCITY').AsString        := alltrim(substr(FieldList[11],1,200));
    GetField('VOTEADDR','RESSTATE').AsString       := alltrim(substr(FieldList[12],1,200));
    GetField('VOTEADDR','RESZIP').AsString         := alltrim(substr(FieldList[13],1,200));

    GetField('VOTEADDR','DOB').AsString            := stoc(alltrim(substr(FieldList[16],1,200)));
    GetField('VOTEADDR','SEX').AsString            := alltrim(substr(FieldList[17],1,200));
    GetField('VOTEADDR','PARTY').AsString          := alltrim(substr(FieldList[26],1,200));
{
    GetField('VOTEADDR','TOWNCODE').AsString       := alltrim(substr(FieldList[19],1,200));
    GetField('VOTEADDR','ELECTDIST').AsString      := alltrim(substr(FieldList[21],1,200));
    GetField('VOTEADDR','CONGDIST').AsString       := alltrim(substr(FieldList[22],1,200));
    GetField('VOTEADDR','STSENDIST').AsString      := alltrim(substr(FieldList[23],1,200));
    GetField('VOTEADDR','STASSDIST').AsString      := alltrim(substr(FieldList[24],1,200));
    GetField('VOTEADDR','LOCALDIST').AsString      := alltrim(substr(FieldList[27],1,200));
    GetField('VOTEADDR','MAILADDR1').AsString      := alltrim(substr(FieldList[31],1,200));
    GetField('VOTEADDR','MAILADDR2').AsString      := alltrim(substr(FieldList[33],1,200));
    GetField('VOTEADDR','MAILCITY').AsString       := alltrim(substr(FieldList[35],1,200));
    GetField('VOTEADDR','MAILSTATE').AsString      := alltrim(substr(FieldList[36],1,200));
    GetField('VOTEADDR','MAILZIP').AsString        := alltrim(substr(FieldList[37],1,200));
}    
    GetField('VOTEADDR','DATETIMELOAD').AsDateTime := Now;
    GetTable('VOTEADDR').Post;

    AddStatusListBoxNoTime(ConvBox,'Adding Voter ID = ' + tdbfield('VOTEADDR','REGNUMBER'));
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
  end;
  Gauge.Visible  := false;
  ShowMessage('Done');
  FreeAndNil(FieldList);
  CloseFile(TxtFile);
end;

procedure TVoteSetForm.LoadWestchesterCounty(FileName: String);
Var Street : String;
begin
  Net_Open(FileName,'S','SOURCE');
  Gauge.Visible  := true;
  Gauge.maxvalue := A('SOURCE').RecordCount;
  while not A('SOURCE').eof do begin
    A('VOTEADDR').UpdateSQL('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + edbfield('SOURCE','VOTERID'));
    If A('VOTEADDR').RecordsExist then
      A('VOTEADDR').Edit
    else
      GetTable('VOTEADDR').Insert;

    If (mfireid = '60053')then begin
      Street                                         := alltrim(tdbfield('SOURCE','ADDR_NUM')) + ' ' + alltrim(tdbfield('SOURCE','ADDR_STR')) + ' ' + alltrim(tdbfield('SOURCE','ADDR_TYPE')) + ' ' + alltrim(tdbfield('SOURCE','ADDR_PDIR'));
      GetField('VOTEADDR','REGNUMBER').AsString      := GetField('SOURCE','VOTERID').AsString;
      GetField('VOTEADDR','FIRSTNAME').AsString      := GetField('SOURCE','FIRSTNAME').AsString;
      GetField('VOTEADDR','LASTNAME').AsString       := GetField('SOURCE','LASTNAME').AsString;
      GetField('VOTEADDR','PARTY').AsString          := GetField('SOURCE','PARTY').AsString;
      GetField('VOTEADDR','PSTREET').AsString        := alltrim(tdbfield('SOURCE','ADDR_STR'));
      GetField('VOTEADDR','RESADDR1').AsString       := Street;
      GetField('VOTEADDR','RESCITY').AsString        := substr(GetField('SOURCE','ADDR_CITY').AsString,0,8) + ',';
      GetField('VOTEADDR','RESSTATE').AsString       := 'NY';
      GetField('VOTEADDR','RESZIP').AsString         := '10595';
      GetField('VOTEADDR','MAILADDR1').AsString      := Street;
      GetField('VOTEADDR','MAILCITY').AsString       := substr(GetField('SOURCE','ADDR_CITY').AsString,0,8) + ',';
      GetField('VOTEADDR','MAILSTATE').AsString      := 'NY';
      GetField('VOTEADDR','MAILZIP').AsString        := '10595';
      try
        If GetField('SOURCE','BIRTHDATE').AsDateTime > 0 then
          GetField('VOTEADDR','DOB').AsDateTime          := GetField('SOURCE','BIRTHDATE').AsDateTime;
      except
      end;
    end else begin
      GetField('VOTEADDR','REGNUMBER').AsString      := GetField('SOURCE','VOTERID').AsString;
      GetField('VOTEADDR','FIRSTNAME').AsString      := GetField('SOURCE','FIRSTNAME').AsString;
      GetField('VOTEADDR','LASTNAME').AsString       := GetField('SOURCE','LASTNAME').AsString;
      GetField('VOTEADDR','PSTRNUM').AsString        := GetField('SOURCE','ADDR_NUM').AsString;
      GetField('VOTEADDR','PSTREET').AsString        := alltrim(tdbfield('SOURCE','ADDR_STR') + ' ' + tdbfield('SOURCE','ADDR_TYPE'));
      GetField('VOTEADDR','SEX').AsString            := GetField('SOURCE','GENDER').AsString;
      try
        If GetField('SOURCE','BIRTHDATE').AsDateTime > 0 then
          GetField('VOTEADDR','DOB').AsDateTime          := GetField('SOURCE','BIRTHDATE').AsDateTime;
        except
        end;
      GetField('VOTEADDR','RESADDR1').AsString       := alltrim(alltrim(GetField('VOTEADDR','PSTRNUM').AsString) + ' ' + GetField('VOTEADDR','PSTREET').AsString);
      GetField('VOTEADDR','RESCITY').AsString        := GetField('SOURCE','ADDR_CITY').AsString;
      GetField('VOTEADDR','RESSTATE').AsString       := GetField('SOURCE','STATE').AsString;
      GetField('VOTEADDR','RESZIP').AsString         := GetField('SOURCE','ADDR_ZIP').AsString;
    end;
    GetField('VOTEADDR','DATETIMELOAD').AsDateTime := Now;
    GetTable('VOTEADDR').Post;

    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
    AddStatusListBoxNoTime(ConvBox,'Adding Voter ID = ' + tdbfield('SOURCE','VOTERID'));
    A('SOURCE').Skip(1);
  end;
  CloseApollo('SOURCE');
  Gauge.Visible  := false;
end;

procedure TVoteSetForm.LoadNassauCountyDBF(FileName : String);
begin
  Net_Open(FileName,'S','SOURCE');
  Gauge.Visible  := true;
  Gauge.maxvalue := A('SOURCE').RecordCount;
  while not A('SOURCE').eof do begin
    A('VOTEADDR').UpdateSQL('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + edbfield('SOURCE','VOTERID'));
    If A('VOTEADDR').RecordsExist then
      A('VOTEADDR').Edit
    else
      GetTable('VOTEADDR').Insert;
    GetField('VOTEADDR','REGNUMBER').AsString      := GetField('SOURCE','VOTERID').AsString;
    GetField('VOTEADDR','FIRSTNAME').AsString      := GetField('SOURCE','FIRSTNAME').AsString;
    GetField('VOTEADDR','LASTNAME').AsString       := GetField('SOURCE','LASTNAME').AsString;
    GetField('VOTEADDR','PARTY').AsString          := GetField('SOURCE','PARTY').AsString;
    GetField('VOTEADDR','NAMESUFFIX').AsString     := GetField('SOURCE','SUFFIX').AsString;
    GetField('VOTEADDR','SEX').AsString            := GetField('SOURCE','GENDER').AsString;
    GetField('VOTEADDR','PSTRNUM').AsString        := GetField('SOURCE','ADDR_NUM').AsString;
    GetField('VOTEADDR','PSTREET').AsString        := alltrim(tdbfield('SOURCE','ADDR_DIR') + ' ' + tdbfield('SOURCE','ADDR_STR') + ' ' + tdbfield('SOURCE','ADDR_TYPE') + ' ' + tdbfield('SOURCE','ADDR_PDIR'));
    GetField('VOTEADDR','RESADDR1').AsString       := alltrim(alltrim(GetField('VOTEADDR','PSTRNUM').AsString) + ' ' + GetField('VOTEADDR','PSTREET').AsString);
    GetField('VOTEADDR','RESCITY').AsString        := GetField('SOURCE','ADDR_CITY').AsString;
    GetField('VOTEADDR','RESZIP').AsString         := GetField('SOURCE','ADDR_ZIP').AsString;
    GetField('VOTEADDR','MAILADDR1').AsString      := GetField('SOURCE','MAIL1').AsString;
    GetField('VOTEADDR','MAILADDR2').AsString      := GetField('SOURCE','MAIL2').AsString;
    GetField('VOTEADDR','MAILCITY').AsString       := GetField('SOURCE','MAIL3').AsString;
    GetField('VOTEADDR','MAILZIP').AsString        := GetField('SOURCE','ZIP_MAIL').AsString;
    GetField('VOTEADDR','RESSTATE').AsString       := GetField('SOURCE','STATE').AsString;
    try
      If GetField('SOURCE','BIRTHDATE').AsDateTime > 0 then
        GetField('VOTEADDR','DOB').AsDateTime          := GetField('SOURCE','BIRTHDATE').AsDateTime;
    except
    end;
    GetField('VOTEADDR','RESADDR2').AsString       := GetField('SOURCE','ADDR_OTHER').AsString;
    GetField('VOTEADDR','TOWNCODE').AsString       := GetField('SOURCE','TD').AsString;
    GetField('VOTEADDR','ELECTDIST').AsString      := GetField('SOURCE','ED').AsString;
    GetField('VOTEADDR','CONGDIST').AsString       := GetField('SOURCE','CD').AsString;
    GetField('VOTEADDR','STSENDIST').AsString      := GetField('SOURCE','SD').AsString;
    GetField('VOTEADDR','STASSDIST').AsString      := GetField('SOURCE','AD').AsString;
    GetField('VOTEADDR','LOCALDIST').AsString      := GetField('SOURCE','LD').AsString;
    GetField('VOTEADDR','DATETIMELOAD').AsDateTime := Now;

    If mFireid = '30064' then begin
      If TVoteSetForm.CheckVoteExcl(VoteExclList,GetField('VOTEADDR','RESZIP').AsString, GetField('VOTEADDR','PSTREET').AsString, GetField('VOTEADDR','PSTRNUM').AsString, GetField('VOTEADDR','ELECTDIST').AsString) then
        GetTable('VOTEADDR').Post
      else begin
        AppendToLog('Excluded ' + tdbfield('VOTEADDR','PSTRNUM')+' '+tdbfield('VOTEADDR','PSTREET')+ ' '+tdbfield('VOTEADDR','RESZIP'));
        If Gettable('VOTEADDR').state in [dsedit] then
          RunSql('delete from voteaddr where voteaddrid = '+tdbfield('voteaddr','voteaddrid'));
        GetTable('VOTEADDR').Cancel;
      end;
    end else
    GetTable('VOTEADDR').Post;
    Gauge.progress := Gauge.progress + 1;
    Application.ProcessMessages;
    AddStatusListBoxNoTime(ConvBox,'Adding Voter ID = ' + tdbfield('SOURCE','VOTERID'));    
    A('SOURCE').Skip(1);
  end;
  CloseApollo('SOURCE');
  Gauge.Visible := false;
end;

procedure TVoteSetForm.LoadNassauCountyXLSX(FileName : String);
Var SheetName : String;
    MainQuery : TADOQuery;
begin
  SheetName                  := InputBox('Sheet Name', 'Spreadsheet sheet name?','sheet1') + '$';
  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  MainQuery.SQL.Text         := 'select * from [' + SheetName + ']';
  MainQuery.Active           := true;
  Gauge.Progress             := 0;
  Gauge.MaxValue             := MainQuery.RecordCount;

  While not MainQuery.Eof do begin
    Gauge.Progress  := Gauge.Progress + 1;
    Application.ProcessMessages;
    A('VOTEADDR').UpdateSQL('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + alltrim(Mainquery.FieldByName('VOTERID').AsString));
    If A('VOTEADDR').RecordsExist then
      A('VOTEADDR').Edit
    else
      GetTable('VOTEADDR').Insert;
    GetField('VOTEADDR','REGNUMBER').AsString      := alltrim(Mainquery.FieldByName('VOTERID').AsString);
    GetField('VOTEADDR','FIRSTNAME').AsString      := alltrim(Mainquery.FieldByName('FIRSTNAME').AsString);
    GetField('VOTEADDR','LASTNAME').AsString       := alltrim(Mainquery.FieldByName('LASTNAME').AsString);
    GetField('VOTEADDR','PARTY').AsString          := alltrim(Mainquery.FieldByName('PARTY').AsString);
    GetField('VOTEADDR','NAMESUFFIX').AsString     := alltrim(Mainquery.FieldByName('SUFFIX').AsString);
    GetField('VOTEADDR','SEX').AsString            := alltrim(Mainquery.FieldByName('GENDER').AsString);
    GetField('VOTEADDR','PSTRNUM').AsString        := alltrim(Mainquery.FieldByName('ADDR_NUM').AsString);
    GetField('VOTEADDR','PSTREET').AsString        := alltrim(alltrim(Mainquery.FieldByName('ADDR_DIR').AsString) + ' ' + alltrim(Mainquery.FieldByName('ADDR_STR').AsString) + ' ' + alltrim(Mainquery.FieldByName('ADDR_TYPE').AsString) + ' ' + alltrim(Mainquery.FieldByName('ADDR_PDIR').AsString));
    GetField('VOTEADDR','RESADDR1').AsString       := alltrim(alltrim(GetField('VOTEADDR','PSTRNUM').AsString) + ' ' + GetField('VOTEADDR','PSTREET').AsString);
    GetField('VOTEADDR','RESCITY').AsString        := alltrim(Mainquery.FieldByName('ADDR_CITY').AsString);
    GetField('VOTEADDR','RESZIP').AsString         := alltrim(Mainquery.FieldByName('ADDR_ZIP').AsString);
    GetField('VOTEADDR','MAILADDR1').AsString      := alltrim(Mainquery.FieldByName('MAIL1').AsString);
    GetField('VOTEADDR','MAILADDR2').AsString      := alltrim(Mainquery.FieldByName('MAIL2').AsString);
    GetField('VOTEADDR','MAILCITY').AsString       := alltrim(Mainquery.FieldByName('MAIL3').AsString);
    GetField('VOTEADDR','MAILZIP').AsString        := alltrim(Mainquery.FieldByName('ZIP_MAIL').AsString);
    GetField('VOTEADDR','RESSTATE').AsString       := alltrim(Mainquery.FieldByName('STATE').AsString);
    try
      If Mainquery.FieldByName('BIRTHDATE').AsDateTime > 0 then
        GetField('VOTEADDR','DOB').AsDateTime          := Mainquery.FieldByName('BIRTHDATE').AsDateTime;
    except
    end;
    GetField('VOTEADDR','RESADDR2').AsString       := alltrim(Mainquery.FieldByName('ADDR_OTHER').AsString);
    GetField('VOTEADDR','TOWNCODE').AsString       := alltrim(Mainquery.FieldByName('TD').AsString);
    GetField('VOTEADDR','ELECTDIST').AsString      := alltrim(Mainquery.FieldByName('ED').AsString);
    GetField('VOTEADDR','CONGDIST').AsString       := alltrim(Mainquery.FieldByName('CD').AsString);
    GetField('VOTEADDR','STSENDIST').AsString      := alltrim(Mainquery.FieldByName('SD').AsString);
    GetField('VOTEADDR','STASSDIST').AsString      := alltrim(Mainquery.FieldByName('AD').AsString);
    GetField('VOTEADDR','LOCALDIST').AsString      := alltrim(Mainquery.FieldByName('LD').AsString);
    GetField('VOTEADDR','DATETIMELOAD').AsDateTime := Now;
    GetTable('VOTEADDR').Post;
    MainQuery.Next;
  end;
  MainQuery.Free;
  Gauge.Visible  := false;
  ShowMessage('Import Complete');
end;

procedure TVoteSetForm.LoadSuffolkCounty(FileName : String);
Var TxtFile    : System.Text;
    LineString : String;
    RegNumber  : String;
    RecNum     : Integer;
begin
  try
    try
      ImportButton.Enabled := False;
      AssignFile(TxtFile,rtrim(FileName));
      Reset(TxtFile);
      RecNum := 0;
      While (not Eof(TxtFile)) do
        begin
          Readln(TxtFile,LineString);
          RegNumber := alltrim(substr(LineString,67,08));
          A('VOTEADDR').UpdateSQL('SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + AddExpr(RegNumber));
          If A('VOTEADDR').RecordsExist then
            GetTable('VOTEADDR').Edit
          else
            GetTable('VOTEADDR').Append;
          GetField('VOTEADDR','REGNUMBER').AsString      := RegNumber;
          GetField('VOTEADDR','LASTNAME').AsString       := substr(LineString,02,20);
          GetField('VOTEADDR','FIRSTNAME').AsString      := substr(LineString,22,20);
          GetField('VOTEADDR','SEX').AsString            := substr(LineString,50,01);
          GetField('VOTEADDR','DOB').AsString            := stoc(substr(LineString,51,08));
          GetField('VOTEADDR','RESADDR1').AsString       := substr(LineString,137,30);
          GetField('VOTEADDR','RESCITY').AsString        := substr(LineString,167,20);
          GetField('VOTEADDR','RESSTATE').AsString       := substr(LineString,279,2);
          GetField('VOTEADDR','RESZIP').AsString         := substr(LineString,281,5);
          GetField('VOTEADDR','PARTY').AsString          := substr(LineString,290,1);
//        GetField('VOTEADDR','ELECTDIST').AsString      := substr(LineString,78,3);
          GetField('VOTEADDR','DATETIMELOAD').AsDateTime := Now;
          GetTable('VOTEADDR').Post;
          RecNum  := RecNum + 1;
          ImportButton.Caption := IntToStr(RecNum);
          Application.ProcessMessages;
          AddStatusListBoxNoTime(ConvBox,'Adding Voter ID = ' + tdbfield('VOTEADDR','REGNUMBER'));
        end;

      ShowMessage('Done');
    except
      on e: exception do
        begin
          ShowMessage('Error with parsing data in text file. Please ensure the file and format is correct.');
          AppendToLog('ERROR IN Voteset.LoadSuffolkCounty: ' + e.message);
        end;
    end;

  finally
    CloseFile(txtFile);
    ImportButton.Enabled := True;

  end;
end;


class procedure TVoteSetForm.SetVoteExclList(Var VoteExclList: TStringList);
Var VoteExclObject : TVoteExclObject;
begin
  Open_Query('VOTEEXCL',False,'SELECT * FROM VOTEEXCL');
  while not A('VOTEEXCL').eof do begin
    VoteExclObject             := TVoteExclObject.create;
    VoteExclObject.Street      := tdbField('VOTEEXCL','STREET');
    VoteExclObject.LowerStrNum := tdbField('VOTEEXCL','LOWERSTRNUM');
    VoteExclObject.UpperStrNum := tdbField('VOTEEXCL','UPPERSTRNUM');
    VoteExclObject.Zip         := tdbField('VOTEEXCL','ZIP');
    VoteExclObject.ElectDist   := tdbField('VOTEEXCL','ELECTDIST');
    VoteExclObject.OddEven     := tdbField('VOTEEXCL','ODDEVEN');
    VoteExclList.AddObject('',VoteExclObject);
    A('VOTEEXCL').Skip(1);
  end;
  CloseApollo('VOTEEXCL');
end;


Class function TVoteSetForm.CheckVoteExcl(VoteExclList : TStringList; Zip, Street, StrNum, ElectDist: String): Boolean;
Var vStrNumVar     : Integer;
    vUpperStrVar   : Integer;
    vLowerStrVar   : Integer;
    VoteExclObject : TVoteExclObject;
    i              : Integer;
begin
  CheckVoteExcl := true;
  for i:=0 to VoteExclList.Count-1 do begin
    VoteExclObject := TVoteExclObject(VoteExclList.Objects[i]);

    If (VoteExclObject.ElectDist<>'') and (VoteExclObject.Zip='') and (VoteExclObject.Street='') then begin
      If VoteExclObject.ElectDist = ElectDist then begin
        result := False;
        exit;
      end;

    end else if (VoteExclObject.Zip<>'') and (VoteExclObject.ElectDist='') and (VoteExclObject.Street='') then begin
      If VoteExclObject.Zip= Zip then begin
        result := False;
        exit;
      end;
    end else begin
      If VoteExclObject.Street<>'' then begin
        If Street = VoteExclObject.Street then begin
          If (Zip=VoteExclObject.Zip) or (VoteExclObject.Zip='') then begin
            vStrNumVar  := AnyStrToInt(StrNum);
            If VoteExclObject.UpperStrNum='' then
              vUpperStrVar := 99999999
            else
              vUpperStrVar := AnyStrToInt(VoteExclObject.UpperStrNum);

            if VoteExclObject.LowerStrNum='' then
              vLowerStrVar := 0
            else
              vLowerStrVar := AnyStrToInt(VoteExclObject.LowerStrNum);

            If (vStrNumVar >= vLowerStrVar) and (vStrNumVar <= vUpperStrVar) then begin
              if VoteExclObject.OddEven = 'E' then begin
                if (vStrNumVar mod 2) = 0 then begin
                  result := False;
                  exit;
                end;
              end else if VoteExclObject.OddEven = 'O' then begin
                if (vStrNumVar mod 2)=1 then begin
                  result := False;
                  exit;
                end;
              end else
                result := False;
            end;
          end;
        end;
      end;
    end;
  end;
end;

end. 
