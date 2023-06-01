unit HoseWaterWay;

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
  db,
  AppLst,
  ADODB,
  AlpineLookup,
  Blink,
  Buttons,
  cusbtn,
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
  AdvGroupBox,
  jpeg,
  Gauges,
  AdvObj,
  EnJpgGr;

type
  THoseWaterWayForm = class(TNormalBaseForm)
    ImportButton: TAlpineGlowButton;
    TagButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    LoadButton: TAlpineGlowButton;
    Panel1: TPanel;
    CrossImage: TImage;
    Panel2: TPanel;
    AlpinePanel8: TAlpinePanel;
    Label3: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    DateDoneField: TAlpineDateTime;
    InvServTypeIDField: TAlpineLookup;
    RolodexIDField: TAlpineLookup;
    FileNameField: TAlpineEdit;
    AlpinePanel2: TAlpinePanel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    FieldPanel: TAlpinePanel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    HoseField: TAlpineEdit;
    InvNumField: TAlpineEdit;
    DiameterField: TAlpineEdit;
    BrandField: TAlpineEdit;
    YearField: TAlpineEdit;
    LocationField: TAlpineEdit;
    PSIField: TAlpineEdit;
    PassField: TAlpineEdit;
    FailField: TAlpineEdit;
    NotesField: TAlpineEdit;
    HoseTestPanel: TAlpinePanel;
    HoseTestBrowse: TAlpineTMSStringGrid;
    DurationField: TAlpineEdit;
    Gauge: TGauge;
    AddHoseCheck: TAlpineCheckBox;
    ChangeLocationField: TAlpineCheckBox;
    OverwriteField: TAlpineCheckBox;
    Label20: TLabel;
    WWSheetNameField: TAlpineEdit;
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure ImportButtonClick(Sender: TObject);
    procedure InvServTypeIDFieldEnter(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure LoadHoseTestBrowse;
    procedure LoadExcellTestBrowse;
    procedure ResetHoseTestBrowse;
  end;

var
  HoseWaterWayForm  : THoseWaterWayForm;

implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     InvServType,
     FormFunc,
     InvSubType,
     InvInspType,
     InvDescr,
     CommonVar;

{$R *.DFM}

procedure THoseWaterWayForm.FormShow(Sender: TObject);
begin
  inherited;
  ResetHoseTestBrowse;
end;


procedure THoseWaterWayForm.ImportButtonClick(Sender: TObject);
begin
  inherited;
  If FileExists(FileNameField.Text) then
    LoadExcellTestBrowse
  else
    ShowMessage('Hose test file cannot be found');
end;

procedure THoseWaterWayForm.InvServTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  InvServTypeIDField.SqlExpr := 'SELECT * FROM INVSERVTYPE WHERE INVSERVFORM = ' + AddExpr('HOSETEST');
end;

class procedure THoseWaterWayForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure THoseWaterWayForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to HoseTestBrowse.RowCount do begin
    HoseTestBrowse.SetCheckBoxState(1,RowNum,true);
  end;
end;

procedure THoseWaterWayForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  for RowNum := 1 to HoseTestBrowse.RowCount do begin
    HoseTestBrowse.SetCheckBoxState(1,RowNum,false);
  end;
end;

procedure THoseWaterWayForm.LoadButtonClick(Sender: TObject);
Var CheckValue : Boolean;
    RowNum     : Integer;
    FileName   : String;
    InvNum     : String;
    DateDone   : String;
    SQLVar     : String;
    InvID      : String;
    PassID     : String;
    FailID     : String;
begin
  If DateDoneField.Value = 0 then begin
    ShowMessage('You must enter a test date');
    abort;
  end;

  PassID := SQLLookUp('PASS','CODE','INVSERVSTATUS','INVSERVSTATUSID');
  FailID := SQLLookUp('FAIL','CODE','INVSERVSTATUS','INVSERVSTATUSID');

  Open_Query('INV',true,'SELECT * FROM INV WHERE 1=2');
  Open_Query('INVSERVHIST',true,'SELECT * FROM INVSERVHIST WHERE 1=2');

  Gauge.MaxValue := HoseTestBrowse.RowCount;
  Gauge.Progress := 0;
  for RowNum := 1 to HoseTestBrowse.RowCount do begin
    Gauge.Progress := Gauge.Progress + 1;
    Application.ProcessMessages;
    HoseTestBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then begin
      InvNum := HoseTestBrowse.GetValue('INVNUM',RowNum);
      InvID  := '';
      A('INV').UpdateSQL('SELECT * FROM INV WHERE INVNUM = ' + AddExpr(InvNum) + ' AND TYPE = ' + AddExpr('HOSE'));
      If AddHoseCheck.Checked then begin
        If A('INV').RecordsExist then
          GetTable('INV').Edit
        else
          GetTable('INV').Append;
        GetField('INV','FDID').AsString       := mFireID;
        GetField('INV','INVNUM').AsString     := InvNum;
        GetField('INV','TYPE').AsString       := 'HOSE';
        GetField('INV','MANUFACT').AsString   := HoseTestBrowse.GetValue('BRAND',RowNum);
        GetField('INV','HLENGTH').AsString    := HoseTestBrowse.GetValue('LENGTH',RowNum);
        GetField('INV','HSIZE').AsString      := HoseTestBrowse.GetValue('DIA.',RowNum);
        GetField('INV','INVLOCCHAR').AsString := HoseTestBrowse.GetValue('LOCATION',RowNum);

        if (HoseTestBrowse.GetValue('YEAR',RowNum) <> '') and (mfireID = '04034') then begin
          GetField('INV','MANDATE').AsString := HoseTestBrowse.GetValue('YEAR',RowNum);
        end else
          If AnyStrToInt(HoseTestBrowse.GetValue('YEAR',RowNum)) > 1990 then
            GetField('INV','MANDATE').AsString := '01/01/' + HoseTestBrowse.GetValue('YEAR',RowNum);

        GetTable('INV').Post;
        InvID := GetField('INV','INVID').AsString;
      end else
        InvID := GetField('INV','INVID').AsString;

      If Not (InvID = '') then begin
        DateDone := AddExpr(FormatDateTime('YYYY-MM-DD',DateDoneField.Value));
        A('INVSERVHIST').UpdateSQL('SELECT * FROM INVSERVHIST WHERE INVID = ' + InvID + ' AND INVSERVTYPEID = ' + pkValue(InvServTypeIDField.Value) + ' AND DATEDONE = ' + DateDone);
        If A('INVSERVHIST').RecordsExist then
          GetTable('INVSERVHIST').Edit
        else
          GetTable('INVSERVHIST').Append;
        GetField('INVSERVHIST','INVSERVFORM').AsString   := 'HOSETEST';
        GetField('INVSERVHIST','INVID').AsString         := InvID;
        GetField('INVSERVHIST','INVSERVTYPEID').AsString := InvServTypeIDField.Value;
        GetField('INVSERVHIST','ROLODEXID').AsString     := RolodexIDField.Value;
        GetField('INVSERVHIST','DATEDONE').AsDateTime    := DateDoneField.Value;
        GetField('INVSERVHIST','PRESSURE').AsString      := HoseTestBrowse.GetValue('TEST PSI',RowNum);
        GetField('INVSERVHIST','DURATION').AsString      := DurationField.Value;

        If HoseTestBrowse.GetValue('PASS',RowNum) = 'X' then
          GetField('INVSERVHIST','INVSERVSTATUSID').AsString := PassID;
        If HoseTestBrowse.GetValue('FAIL',RowNum) = 'X' then
          GetField('INVSERVHIST','INVSERVSTATUSID').AsString := FailID;

        GetField('INVSERVHIST','DESCR').AsString        := HoseTestBrowse.GetValue('DESCR',RowNum);
        GetTable('INVSERVHIST').Post;
      end;
        
    end;
  end;
  Gauge.Progress := 0;

  CloseApollo('INVSERVHIST');
  CloseApollo('INV');
end;

procedure THoseWaterWayForm.ResetHoseTestBrowse;
begin
  HoseTestBrowse.Clear;
  HoseTestBrowse.ColCount := 0;
  HoseTestBrowse.RowCount := 0;
  HoseTestBrowse.ClearColumns;

  HoseTestBrowse.FixedRowAlways := true;
  HoseTestBrowse.RowCount       := HoseTestBrowse.FixedRows;

  HoseTestBrowse.SetColumn('SPACE',   '',          001);
  HoseTestBrowse.SetColumn('CHECKBOX','',          020);
  HoseTestBrowse.SetColumn('TAG #',  'Tag#',       060);
  HoseTestBrowse.SetColumn('INVNUM',  'Hose#',     080);
  HoseTestBrowse.SetColumn('DIA.',    'Dia.',      080);
  HoseTestBrowse.SetColumn('BRAND',   'Brand',     080);
  HoseTestBrowse.SetColumn('LENGTH',  'Length',    050);
  HoseTestBrowse.SetColumn('YEAR',    'Year',      040);
  HoseTestBrowse.SetColumn('LOCATION','Location',  060);
  HoseTestBrowse.SetColumn('TEST PSI','Test PSI',  060);
  HoseTestBrowse.SetColumn('PASS',    'Pass',      040);
  HoseTestBrowse.SetColumn('FAIL',    'Fail',      040);
  HoseTestBrowse.SetColumn('DESCR',   'Notes',     300);
  HoseTestBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;

procedure THoseWaterWayForm.LoadExcellTestBrowse;
Var FileName    : String;
    WWSheetName : String;
    RowNum      : Integer;
    MainQuery   : TADOQuery;
begin
  ResetHoseTestBrowse;
  FileName                   := FileNameField.Text;
  WWSheetName                := WWSheetNameField.Text;
  MainQuery                  := TADOQuery.Create(self);
  MainQuery.ConnectionString := 'Provider=Microsoft.ACE.OLEDB.12.0;Data Source='+FileName+';Extended Properties="Excel 12.0 Xml;HDR=YES"';
  MainQuery.SQL.Text         := 'select * from [' + WWSheetName + '$]';
  MainQuery.Active           := true;
  RowNum                     := 1;

  While not MainQuery.Eof do begin
    try
    If AnyStrToInt(MainQuery.FieldByName('TAG #').AsString) > 0 then begin
      HoseTestBrowse.SetValue('SPACE',   '');
      HoseTestBrowse.AddCheckBox(1,RowNum,false,false);
      HoseTestBrowse.SetValue('TAG #',  Mainquery.Fields[0].AsString);
      HoseTestBrowse.SetValue('INVNUM', Mainquery.Fields[0].AsString);
      HoseTestBrowse.SetValue('DIA.',MainQuery.Fields[1].AsString);
      HoseTestBrowse.SetValue('BRAND',   MainQuery.Fields[2].AsString);
      HoseTestBrowse.SetValue('LENGTH',  MainQuery.Fields[3].AsString);
      HoseTestBrowse.SetValue('YEAR',    MainQuery.Fields[4].AsString);
      HoseTestBrowse.SetValue('LOCATION',MainQuery.Fields[5].AsString);
      HoseTestBrowse.SetValue('TEST PSI',MainQuery.Fields[6].AsString);
      HoseTestBrowse.SetValue('PASS',    MainQuery.Fields[7].AsString);
      HoseTestBrowse.SetValue('FAIL',    MainQuery.Fields[8].AsString);
      HoseTestBrowse.SetValue('NOTES',   MainQuery.Fields[9].AsString);
      RowNum := RowNum + 1;
    end;
    except
    end;
    MainQuery.Next;
  end;
  MainQuery.Free;
end;


procedure THoseWaterWayForm.LoadHoseTestBrowse;
Var FileName   : String;
    HoseTest   : TStringList;
    TxtFile    : TextFile;
    LineString : String;
    RowNum     : Integer;
begin
  HoseTestBrowse.Clear;
  HoseTestBrowse.ColCount := 0;
  HoseTestBrowse.RowCount := 0;
  HoseTestBrowse.ClearColumns;

  HoseTestBrowse.FixedRowAlways := true;
  HoseTestBrowse.RowCount       := HoseTestBrowse.FixedRows;

  HoseTestBrowse.SetColumn('SPACE',   '',          001);
  HoseTestBrowse.SetColumn('CHECKBOX','',          020);
  HoseTestBrowse.SetColumn('INVNUM',  'Inventory#',080);
  HoseTestBrowse.SetColumn('DIAMETER','Diameter',  080);
  HoseTestBrowse.SetColumn('BRAND',   'Brand',     080);
  HoseTestBrowse.SetColumn('LENGTH',  'Length',    040);
  HoseTestBrowse.SetColumn('YEAR',    'Year',      040);
  HoseTestBrowse.SetColumn('LOCATION','Location',  060);
  HoseTestBrowse.SetColumn('PSI',     'Test PSI',  060);
  HoseTestBrowse.SetColumn('PASS',    'Pass',      040);
  HoseTestBrowse.SetColumn('FAIL',    'Fail',      040);
  HoseTestBrowse.SetColumn('DESCR',   'Notes',     300);
  HoseTestBrowse.ControlLook.NoDisabledCheckRadioLook := True;

  HoseTest := TStringList.Create;
  FileName := FileNameField.Text;
  RowNum   := 1;

  AssignFile(TxtFile,FileName);
  Reset(TxtFile);
  Readln(TxtFile,LineString);

  While not Eof(TxtFile) do begin
    Readln(TxtFile,LineString);
    ParseBasedOnDelimiter(LineString,#9,HoseTest);
    If Not (alltrim(HoseTest[0]) = '') then begin
      HoseTestBrowse.SetValue('SPACE',   '');
      HoseTestBrowse.AddCheckBox(1,RowNum,false,false);
      HoseTestBrowse.SetValue('INVNUM',  HoseTest[0]);
      HoseTestBrowse.SetValue('DIAMETER',HoseTest[1]);
      HoseTestBrowse.SetValue('BRAND',   HoseTest[2]);
      HoseTestBrowse.SetValue('LENGTH',  HoseTest[3]);
      HoseTestBrowse.SetValue('YEAR',    HoseTest[4]);
      HoseTestBrowse.SetValue('LOCATION',HoseTest[5]);
      HoseTestBrowse.SetValue('PSI',     HoseTest[6]);
      HoseTestBrowse.SetValue('PASS',    HoseTest[7]);
      HoseTestBrowse.SetValue('FAIL',    HoseTest[8]);
      HoseTestBrowse.SetValue('DESCR',   HoseTest[9]);
      RowNum := RowNum + 1;
    end;
  end;
  CloseFile(TxtFile);
end;

end.
