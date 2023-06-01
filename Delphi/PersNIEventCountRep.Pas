unit PersNIEventCountRep;

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
  Printers,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt;

type
  TNISTypeObject = class
    NISTypeID : String;
    Count     : Real;
    EvLength  : Real;
  end;

  TPersNIEventCountRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    HeaderBand: TQRBand;
    TitleBand: TQRBand;
    NameLabel: TQRLabel;
    NameField: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel65: TQRLabel;
    TotalLabel: TQRLabel;
    PersCodeLabel: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    RowTotalCountField: TQRLabel;
    RowTotalEvLengthField: TQRLabel;
    SummaryBand: TQRBand;
    TotalCountLabel: TQRLabel;
    TotalEvLengthLabel: TQRLabel;
    GrandTotalCountField: TQRLabel;
    GrandTotalEvLengthField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
  private
    { Private declarations }
    Pers          : TApolloData;
    NIAttTable    : TApolloData;
    FontSize      : Integer;
    FontName      : String;
    NISTypeList   : TStringList;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

{$I rednmx.inc}

var
  PersNIEventCountRepForm: TPersNIEventCountRepForm;

implementation
uses GenFunc,
     PersCond,
     CommonFunc,
     CommonVar,
     SysRepMan;

{$R *.DFM}

procedure TPersNIEventCountRepForm.BaseReportBeforePrint(Sender: TCustomQuickRep; var PrintReport: Boolean);
Var ColNum : Integer;
begin
  inherited;
  for ColNum := 0 to NISTypeList.Count-1 do begin
    TNISTypeObject(NISTypeList.Objects[ColNum]).EvLength := 0;
    TNISTypeObject(NISTypeList.Objects[ColNum]).Count    := 0;
  end;
end;

procedure TPersNIEventCountRepForm.FormCreate(Sender: TObject);
Var Form               : TForm;
    TopLabel           : TQRLabel;
    KeyLabel           : TQRLabel;
    SecondLabel        : TQRLabel;
    CountField         : TQRLabel;
    EvLengthField      : TQRLabel;
    TotalCountField    : TQRLabel;
    TotalEvLengthField : TQRLabel;
    ColCount           : Integer;
    NumofCheckedBoxes  : Integer;
    ColWidth           : Integer;
    i                  : Integer;
    NISTypeObject      : TNISTypeObject;
    allChecked         : Boolean;
begin
  Pers                   := Open_Query(Sql);
  NIAttTable             := Open_Query('SELECT * FROM NIATT WHERE 1=2');
  PersBand.PkField       := 'PERSID';
  BaseReport.DataSet     := Pers.DataSource.DataSet;
  FireDeptField.Caption  := mFireDept;
  Form                   := GetFormOfType(TPersCondForm);
  allChecked             := False; //flag for when all boxes are left blank
  NumofCheckedBoxes      := TPersCondForm(Form).CountNISTypeBrowse(allChecked);

  if NumofCheckedBoxes = 0 then
       allChecked := True;

  ColCount   := IMax(TPersCondForm(Form).CountNISTypeBrowse(allChecked),1);

  TPersCondForm.PrintTitles(TitleBand);

  If ColCount > 24 then begin
    BaseReport.Page.Orientation := poLandScape;
    FontName                    := 'Small Fonts';
    FontSize                    := 7;
  end else if ColCount > 19 then begin
    BaseReport.Page.Orientation := poLandScape;
    FontName                    := 'Arial';
    FontSize                    := 8;
  end else if ColCount > 14 then begin
    BaseReport.Page.Orientation := poLandScape;
    FontName                    := 'Arial';
    FontSize                    := 8;
  end else if ColCount > 10 then begin
    BaseReport.Page.Orientation := poPortrait;
    FontName                    := 'Arial';
    FontSize                    := 8;
  end else begin
    BaseReport.Page.Orientation := poPortrait;
    FontName                    := 'Arial';
    FontSize                    := 8;
  end;

  TotalLabel.Left              := PersBand.Width - TotalLabel.Width - 2;
  RowTotalCountField.Left      := PersBand.Width - TotalLabel.Width - 2;
  RowTotalEvLengthField.Left   := PersBand.Width - TotalLabel.Width - 2;
  GrandTotalCountField.Left    := PersBand.Width - TotalLabel.Width - 2;
  GrandTotalEvLengthField.Left := PersBand.Width - TotalLabel.Width - 2;

  ColWidth                     := Round((PersBand.Width - 215) / ColCount );
  i                            := 0;
  NISTypeList                  := TStringList.Create;

  Open_Query('NISTYPE',false,'SELECT * FROM NISTYPE ORDER BY CODE');
  while not A('NISTYPE').eof do begin
    If TPersCondForm(Form).CheckNIStypeBrowse(GetField('NISTYPE','NISTYPEID').AsString, allChecked) then begin

      NISTypeObject           := TNISTypeObject.create;
      NISTypeObject.NISTypeID := GetField('NISTYPE','NISTYPEID').AsString;
      NISTypeObject.Count     := 0;
      NISTypeObject.EvLength  := 0;

      NISTypeList.AddObject(GetField('NISTYPE','NISTYPEID').AsString,NISTypeObject);

      TopLabel := TQRLabel.Create(self);
      with TopLabel do begin                  
        AutoSize    := false;
        parent      := HeaderBand;
        Caption     := tdbfield('NISTYPE','CODE');
        left        := 180 + (ColWidth * i);
        Top         := PersCodeLabel.Top;
        Width       := ColWidth-5;
        Font.Name   := FontName;
        Font.Size   := FontSize;
        Alignment   := tacenter;
        Transparent := true;
      end;

      if TPersCondForm(Form).CodesKeyCheckBox.Checked then begin//Adds the description of each code type to the end of the form
        KeyLabel := TQRLabel.Create(self);
        with KeyLabel do begin
          AutoSize    := false;
          parent      := SummaryBand;
          Caption     := tdbfield('NISTYPE','CODE')+' : '+tdbfield('NISTYPE','DESCR');
          left        := 42;
          Top         := 40+(18 * i);
          Width       := 200;
          Font.Name   := FontName;
          Font.Size   := FontSize;
          Alignment   := taRightJustify;
          Transparent := true;
        end;
      end;

      SecondLabel := TQRLabel.Create(self);
      with SecondLabel do begin
        AutoSize    := false;
        parent      := HeaderBand;
        Caption     := tdbfield('NISTYPE','SHORTDESCR');
        left        := 180 + (ColWidth * i);
        Top         := NameField.Top;
        Width       := ColWidth-5;
        Font.Name   := FontName;
        Font.Size   := FontSize;
        Alignment   := tacenter;
        Transparent := true;
      end;

      CountField := TQRLabel.Create(self);
      with CountField do begin
        Name        := 'Count' + GetField('NISTYPE','NISTYPEID').AsString + 'Field';
        AutoSize    := false;
        parent      := PersBand;
        Caption     := ' ';
        left        := 180 + (ColWidth * i);
        Tag         := GetField('NISTYPE','NISTYPEID').AsInteger;
        Top         := NameField.Top;
        Width       := ColWidth-5;
        Font        := NameField.Font;
        Font.Size   := 8;
        Alignment   := tacenter;
        Transparent := true;
      end;

      EvLengthField := TQRLabel.Create(self);
      with EvLengthField do begin
        Name        := 'EvLength' + GetField('NISTYPE','NISTYPEID').AsString + 'Field';
        AutoSize    := false;
        parent      := PersBand;
        Caption     := ' ';
        left        := 180 + (ColWidth * i);
        Tag         := GetField('NISTYPE','NISTYPEID').AsInteger;
        Top         := PersCodeField.Top;
        Width       := ColWidth-5;
        Font        := PersCodeField.Font;
        Font.Size   := 8;
        Alignment   := tacenter;
        Transparent := true;
      end;

      TotalCountField := TQRLabel.Create(self);
      with TotalCountField do begin
        Name        := 'TotalCount' + GetField('NISTYPE','NISTYPEID').AsString + 'Field';
        AutoSize    := false;
        parent      := SummaryBand;
        Caption     := '-';
        left        := 180 + (ColWidth * i);
        Tag         := GetField('NISTYPE','NISTYPEID').AsInteger;
        Top         := TotalCountLabel.Top;
        Width       := ColWidth-5;
        Font        := NameField.Font;
        Font.Size   := 8;
        Alignment   := tacenter;
        Transparent := true;
      end;

      TotalEvLengthField := TQRLabel.Create(self);
      with TotalEvLengthField do begin
        Name        := 'TotalEvLength' + GetField('NISTYPE','NISTYPEID').AsString + 'Field';
        AutoSize    := false;
        parent      := SummaryBand;
        Caption     := '-';
        left        := 180 + (ColWidth * i);
        Tag         := GetField('NISTYPE','NISTYPEID').AsInteger;
        Top         := TotalEvLengthLabel.Top;
        Width       := ColWidth-5;
        Font        := PersCodeField.Font;
        Font.Size   := 8;
        Alignment   := tacenter;
        Transparent := true;
      end;
      i := i + 1;
    end;
    A('NISTYPE').Skip(1);
  end;
  CloseApollo('NISTYPE');
end;

procedure TPersNIEventCountRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Pers.Free;
  NIAttTable.Free;
end;

function TPersNIEventCountRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERS.LNAME, PERS.FNAME, PERS.PERSCODE FROM PERS ' ;
end;

function TPersNIEventCountRepForm.ReportJoins: String;
begin
  result := 'LEFT JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ';
end;

procedure TPersNIEventCountRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var NISTypeID           : String;
    CountLabel          : String;
    EvLengthLabel       : String;
    CountVar            : Real;
    RowTotalCountVar    : Real;
    EVLengthVar         : Real;
    RowTotalEvLengthVar : Real;
    ColNum              : Integer;
    SQLVar              : String;
begin
  inherited;
  RowTotalCountVar    := 0;
  RowTotalEvLengthVar := 0;

  for ColNum := 0 to NISTypeList.Count-1 do begin
    NISTypeID   := TNISTypeObject(NISTypeList.Objects[ColNum]).NISTypeID;
    CountVar    := 0;
    EvLengthVar := 0;

    SQLVar      := 'SELECT NIATT.EVLENGTH FROM NIATT ' +
                   'LEFT JOIN NI ON (NIATT.NIID = NI.NIID) ' +
                   'WHERE NIATT.PERSID = ' + PkValue(GetField(Pers,'PERSID').AsString) + ' AND ' +
                   'NI.NISTYPEID = ' + pkValue(NISTypeID) + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDate,FinalDate);

    NIAttTable.UpdateSQL(SQLVar);

    While Not NIAttTable.Eof do begin
      EvLengthVar         := EvLengthVar + GetField(NIAttTable,'EVLENGTH').AsFloat;
      CountVar            := CountVar + 1;
      RowTotalEvLengthVar := RowTotalEvLengthVar + GetField(NIAttTable,'EVLENGTH').AsFloat;
      RowTotalCountVar    := RowTotalCountVar + 1;
      NIAttTable.Skip(1);
    end;
    CountLabel                                           := 'Count' + NISTypeID + 'Field';
    TQRLabel(FindComponent(CountLabel)).Caption          := IIf(CountVar > 0,FormatFloat('##,##0',CountVar),'-');
    EvLengthLabel                                        := 'EvLength' + NISTypeID + 'Field';
    TQRLabel(FindComponent(EvLengthLabel)).Caption       := IIf(EvLengthVar > 0,FormatFloat('##,##0.0',EvLengthVar),'-');
    TNISTypeObject(NISTypeList.Objects[ColNum]).EvLength := TNISTypeObject(NISTypeList.Objects[ColNum]).EvLength + EvLengthVar;
    TNISTypeObject(NISTypeList.Objects[ColNum]).Count    := TNISTypeObject(NISTypeList.Objects[ColNum]).Count + CountVar ;
  end;

  NameField.Caption             := tdbfield(Pers,'LNAME') + ', ' + dbfield(Pers,'FNAME');
  PersCodeField.Caption         := tdbfield(Pers,'PERSCODE');
  RowTotalCountField.Caption    := FormatFloat('##,##0',RowTotalCountVar);
  RowTotalEvLengthField.Caption := FormatFloat('##,##0.0',RowTotalEvLengthVar);
  PersBand.Color                := IIfI(PersBand.color = clwhite,$00EBEBEB,clwhite);
end;

procedure TPersNIEventCountRepForm.SummaryBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var ColNum             : Integer;
    TotalCountLabel    : String;
    TotalEvLengthLabel : String;
    NISTypeID          : String;
    TotalCountVar      : Real;
    TotalEvLengthVar   : Real;
begin
  inherited;
  TotalCountVar    := 0;
  TotalEvLengthVar := 0;
  for ColNum := 0 to NISTypeList.Count-1 do begin
    NISTypeID                                           := TNISTypeObject(NISTypeList.Objects[ColNum]).NISTypeID;
    TotalCountLabel                                     := 'TotalCount' + NISTypeID + 'Field';
    TotalEvLengthLabel                                  := 'TotalEvLength' + NISTypeID + 'Field';
    TotalCountVar                                       := TotalCountVar + TNISTypeObject(NISTypeList.Objects[ColNum]).Count;
    TotalEvLengthVar                                    := TotalEvLengthVar + TNISTypeObject(NISTypeList.Objects[ColNum]).EvLength;
    TQRLabel(FindComponent(TotalCountLabel)).Caption    := FormatFloat('##,##0',TNISTypeObject(NISTypeList.Objects[ColNum]).Count);
    TQRLabel(FindComponent(TotalEvLengthLabel)).Caption := FormatFloat('##,##0.0',TNISTypeObject(NISTypeList.Objects[ColNum]).EvLength);
  end;

  GrandTotalCountField.Caption    := FormatFloat('##,##0',TotalCountVar);
  GrandTotalEvLengthField.Caption := FormatFloat('##,##0.0',TotalEvLengthVar);


end;

end.
