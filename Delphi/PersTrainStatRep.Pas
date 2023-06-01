unit PersTrainStatRep;
 
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
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  EnJpgGr;

type
  TPersTrainStatRepForm = class(TAlpineBaseSummaryReportForm)
    DetailData: TQRBand;
    LNameField: TQRLabel;
    TitleBand: TQRBand;
    FireDeptField: TQRLabel;
    TrainDescrField: TQRLabel;
    PersCodeField: TQRLabel;
    PersTypeDescrField: TQRLabel;
    PersStatDescrField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    DateTimeDoneField: TQRLabel;
    QRLabel7: TQRLabel;
    StatusField: TQRLabel;
    QRLabel10: TQRLabel;
    DateTimeExpField: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    Go32Image: TQRImage;
    Stop32Image: TQRImage;
    QRLabel2: TQRLabel;
    StatusImage: TQRImage;
    Error32Image: TQRImage;
    procedure PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    PersTable      : TApolloData;
    VWNIEVAttTable : TApolloData;
    NITrainCat1ID  : String;
    DateCompare    : TDateTime;
    QualPeriod     : Real;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  PersTrainStatRepForm: TPersTrainStatRepForm;

implementation
uses GenFunc,
     SysRepMan,
     AlpineGlowButton,
     CommonFunc,
     PersTrainCond;

{$R *.DFM}

procedure TPersTrainStatRepForm.FormCreate(Sender: TObject);
Var Form : TForm;
begin
  inherited;
  PersTable                 := Open_Query(Sql);
  VWNIEVAttTable            := Open_Query('SELECT * FROM VWNIEVATT WHERE 1=2');
  BaseReport.DataSet        := PersTable.DataSource.DataSet;
  DetailData.PKField        := 'PERSID';
  FireDeptField.Caption     := mFireDept;
  Form                      := GetFormOfType(TPersTrainCondForm);
  NITrainCat1ID             := TPersTrainCondForm(Form).NITrainCat1IDField.Value;
  QualPeriod                := AnyStrToFloat(SqlLookUp(NITrainCat1ID,'NITRAINCAT1ID','NITRAINCAT1','QUALPERIOD'));
  DateCompare               := IIfR(TPersTrainCondForm(Form).TestDateField.Value > 0,TPersTrainCondForm(Form).TestDateField.Value,Now);
  Go32Image.Picture.Icon    := GetGlowImageIcon('GO');
  Error32Image.Picture.Icon := GetGlowImageIcon('ERROR16');
  Stop32Image.Picture.Icon  := GetGlowImageIcon('STOP');
  TPersTrainCondForm.PrintTitles(TitleBand);
end;

procedure TPersTrainStatRepForm.PrtData(Sender: TQRCustomBand; var PrintBand: Boolean);
Var DateTimeDone : TDateTime;
    SQLVar       : String;
    DateExpired  : TDateTime;
    Form         : TForm;
begin
  Form                       := GetFormOfType(TPersTrainCondForm);
  PersCodeField.Caption      := tdbfield(PersTable,'PERSCODE');
  LNameField.Caption         := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  PersTypeDescrField.Caption := tdbfield(PersTable,'PERSTYPEDESCR');
  PersStatDescrField.Caption := tdbfield(PersTable,'PERSSTATDESCR');

  DateTimeDone               := 0;
  DateExpired                := 0;
  SQLVar                     := 'SELECT DATETIMEEXP, NIEVDATETIMESTART, NIEVATTDATETIMEATTEND FROM VWNIEVATT WHERE PERSID = ' + GetField(PersTable,'PERSID').AsString +  ' AND (NIEVNITRAINCAT1ID = ' + pkValue(NITrainCat1ID) + ' OR NITRAINCAT1ID = ' + pkValue(NITrainCat1ID) + ')';

  VWNIEvAttTable.UpdateSQL(SQLVar);
  While Not VWNIEvAttTable.Eof do begin
    Try
      If (GetField(VWNIEvAttTable,'NIEVDATETIMESTART').AsDateTime > 0) and (GetField(VWNIEvAttTable,'NIEVDATETIMESTART').AsDateTime > DateTimeDone) then
        DateTimeDone := GetField(VWNIEvAttTable,'NIEVDATETIMESTART').AsDateTime;
      If (GetField(VWNIEvAttTable,'NIEVATTDATETIMEATTEND').AsDateTime > 0) and (GetField(VWNIEvAttTable,'NIEVATTDATETIMEATTEND').AsDateTime > DateTimeDone) then
        DateTimeDone := GetField(VWNIEvAttTable,'NIEVATTDATETIMEATTEND').AsDateTime;
      If (GetField(VWNIEvAttTable,'DATETIMEEXP').AsDateTime > 0) and (GetField(VWNIEvAttTable,'DATETIMEEXP').AsDateTime > DateExpired) then
        DateExpired  := GetField(VWNIEvAttTable,'DATETIMEEXP').AsDateTime;
    except
    end;
    VWNIEvAttTable.Skip(1);
  end;

  If (DateTimeDone > 0) then begin
    DateTimeDoneField.Caption  := AlpineFormatDateTime('MM/DD/YYYY',DateTimeDone);
    If (QualPeriod > 0) then begin
      DateExpired                := DateTimeDone + QualPeriod;
      DateTimeExpField.Caption   := AlpineFormatDateTime('MM/DD/YYYY',DateExpired);
    end else begin
      DateExpired                := DateCompare;
      DateTimeExpField.Caption   := 'N/A';
    end;

    If DateExpired < DateCompare then begin
      StatusImage.Picture.Icon   := GetGlowImageIcon('ERROR16');
      StatusField.Font.Color   := $000080FF;
      StatusField.Caption      := 'Course has expired';
      PrintBand                := TPersTrainCondForm(Form).AllPersField.Checked or TPersTrainCondForm(Form).ExpPersField.Checked;

    end else begin
      StatusImage.Picture.Icon := GetGlowImageIcon('GO');
      StatusField.Font.Color   := clgreen;
      StatusField.Caption      := 'Certified.  Expires in ' + FormatFloat('##0',DateExpired - DateCompare) + ' days';
      PrintBand                := TPersTrainCondForm(Form).AllPersField.Checked or TPersTrainCondForm(Form).CertPersField.Checked;
    end;
  end else begin
    StatusImage.Picture.Icon   := GetGlowImageIcon('STOP');
    StatusField.Font.Color     := clred;
    DateTimeDoneField.Caption  := '-';
    StatusField.Caption        := 'Never taken';
    DateTimeExpField.Caption   := '-';
    PrintBand                  := TPersTrainCondForm(Form).AllPersField.Checked or TPersTrainCondForm(Form).NeverPersField.Checked;
  end;
  If PrintBand then
    DetailData.Color              := IIfI(DetailData.color = clwhite,$00EBEBEB,clwhite);
end;

function TPersTrainStatRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID,PERSSTAT.DESCR PERSSTATDESCR, PERSTYPE.DESCR PERSTYPEDESCR, PERS.LNAME,PERS.FNAME,PERS.ADD1,PERS.CITY,PERS.STATE,PERS.ZIP,PERS.PERSCODE,PERS.PHONE FROM PERS ' +
            'LEFT JOIN PERSSTAT ON (PERSSTAT.PERSSTATID = PERS.PERSSTATID) ' +
            'LEFT JOIN PERSTYPE ON (PERSTYPE.PERSTYPEID = PERS.PERSTYPEID) ';
end;

procedure TPersTrainStatRepForm.FormDestroy(Sender: TObject);
begin
  inherited;
  PersTable.Free;
  VWNIEVAttTable.Free;
end;

end.
