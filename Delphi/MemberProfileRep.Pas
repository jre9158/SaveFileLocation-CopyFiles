unit MemberProfileRep;
 
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
  QrDsgn,
  QRWebFilt,
  jpeg,
  QRXMLSFilt,
  QRXLSXFilt,
  FormFunc,
  EnJpgGr;

type
  TMemberProfileRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    NameField: TQRLabel;
    FireDeptField: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel9: TQRLabel;
    AddressField: TQRLabel;
    QRImage2: TQRImage;
    QRImage3: TQRImage;
    QRLabel3: TQRLabel;
    FDIDCompField: TQRLabel;
    QRLabel5: TQRLabel;
    CellField: TQRLabel;
    QRLabel7: TQRLabel;
    CellCarrierField: TQRLabel;
    QRLabel10: TQRLabel;
    EmailField: TQRLabel;
    QRLabel12: TQRLabel;
    BloodTypeField: TQRLabel;
    QRLabel14: TQRLabel;
    HeightField: TQRLabel;
    QRLabel16: TQRLabel;
    WeightField: TQRLabel;
    QRLabel18: TQRLabel;
    EyesField: TQRLabel;
    QRLabel20: TQRLabel;
    HairField: TQRLabel;
    QRLabel22: TQRLabel;
    DOBField: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel26: TQRLabel;
    PersTypeField: TQRLabel;
    QRLabel28: TQRLabel;
    AllergyField: TQRLabel;
    QRLabel30: TQRLabel;
    EmergPhoneField: TQRLabel;
    QRLabel32: TQRLabel;
    HomeField: TQRLabel;
    QRLabel34: TQRLabel;
    DLNumField: TQRLabel;
    QRLabel36: TQRLabel;
    EmergNameField: TQRLabel;
    QRLabel40: TQRLabel;
    DLExpField: TQRLabel;
    QRLabel42: TQRLabel;
    PersDLClassIDField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel46: TQRLabel;
    PropContactHeader: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    PersBenBand: TQRSubDetail;
    QRShape1: TQRShape;
    NameBenField: TQRLabel;
    SSNumField: TQRLabel;
    DOBBenField: TQRLabel;
    DescrField: TQRLabel;
    AddressBenField: TQRLabel;
    JoinDateField: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersBenBandBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure ChildBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);

  private
    { Private declarations }
    PersTable       : TApolloData;
    PersBenTable    : TApolloData;

  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  MemberProfileRepForm: TMemberProfileRepForm;

implementation
uses GenFunc,
     CommonFunc,
     PersCond,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TMemberProfileRepForm.ChildBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  PersBenTable.UpdateSql('SELECT NAME, DOB, SOCSEC, DESCR, ADDRESS1, ADDRESS2, CITY, STATE, ZIP FROM PERSBEN WHERE PERSID = ' + GetField(PersTable,'PERSID').AsString);
end;

procedure TMemberProfileRepForm.FormCreate(Sender: TObject);
begin
  PersTable             := Open_Query(sql);
  BaseReport.DataSet    := PersTable.DataSource.DataSet;
  PersBand.PKField      := 'PERSID';

  PersBenTable          := Open_Query('SELECT NAME, DOB, SOCSEC, DESCR, ADDRESS1, ADDRESS2, CITY, STATE, ZIP FROM PERSBEN WHERE 1=2');
  PersBenBand.DataSet   := PersBenTable.DataSource.DataSet;

end;

procedure TMemberProfileRepForm.FormDestroy(Sender: TObject);
begin
  PersTable.Free;
  PersBenTable.Free;
end;

procedure TMemberProfileRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PrintLogo(QRImage1);
  FireDeptField.Caption       := mFireDept;
  NameField.Caption           := GetField(PersTable,'FNAME').AsString + ' ' + GetField(PersTable,'LNAME').AsString;
  AddressField.Caption        := GetField(PersTable,'ADD1').AsString;
  FDIDCompField.Caption       := GetField(PersTable,'DEPTNAME').AsString;
  CellField.Caption           := GetField(PersTable,'CELL').AsString;
  CellCarrierField.Caption    := GetField(PersTable,'COMPANY').AsString;
  EmailField.Caption          := GetField(PersTable,'EMAIL').AsString;
  BloodTypeField.Caption      := GetField(PersTable,'CODE').AsString;
  HeightField.Caption         := GetField(PersTable,'HEIGHT').AsString;
  WeightField.Caption         := GetField(PersTable,'WEIGHT').AsString;
  EyesField.Caption           := GetField(PersTable,'EYES').AsString;
  HairField.Caption           := GetField(PersTable,'HAIR').AsString;
  DOBField.Caption            := GetField(PersTable,'DOB').AsString;
  JoinDateField.Caption       := GetField(PersTable,'JOINDATE').AsString;
  AllergyField.Caption        := GetField(PersTable,'ALLERGY').AsString;
  EmergPhoneField.Caption     := GetField(PersTable,'EMERGPHONE').AsString;
  EmergNameField.Caption      := GetField(PersTable,'EMERGNAME').AsString;
  HomeField.Caption           := GetField(PersTable,'PHONE').AsString;
  DLNumField.Caption          := GetField(PersTable,'DLNUM').AsString;
  DLExpField.Caption          := GetField(PersTable,'DLEXP').AsString;
  PersDLClassIDField.Caption  := GetField(PersTable,'DESCR').AsString;
  PersTypeField.Caption       := GetField(PersTable,'TYPEDESCR').AsString;

end;

procedure TMemberProfileRepForm.PersBenBandBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  inherited;
  NameBenField.Caption        := GetField(PersBenTable,'NAME').AsString;
  DOBBenField.Caption         := GetField(PersBenTable,'DOB').AsString;
  SSNumField.Caption          := GetField(PersBenTable,'SOCSEC').AsString;
  DescrField.Caption          := GetField(PersBenTable,'DESCR').AsString;
  AddressBenField.Caption     := GetField(PersBenTable,'ADDRESS1').AsString + ' ' +
                                  iif(GetField(PersBenTable,'ADDRESS2').AsString <> '',
                                    GetField(PersBenTable,'ADDRESS2').AsString + ' ','') +
                              GetField(PersBenTable,'CITY').AsString + ', ' +
                              GetField(PersBenTable,'STATE').AsString + ' ' +
                              GetField(PersBenTable,'ZIP').AsString;
end;

function TMemberProfileRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.PERSID, PERS.FNAME, PERS.LNAME, PERS.ADD1, FDID.DEPTNAME, PERS.CELL, ' +
            'PERS.EMAIL, PERSBLOODTYPE.CODE, PERS.HEIGHT, PERS.WEIGHT, PERS.EYES, PERS.HAIR, PERS.DOB, PERS.JOINDATE, ' +
            'PERS.ALLERGY, PERS.EMERGPHONE, PERS.EMERGNAME, PERS.PHONE, PERS.DLNUM, PERS.DLEXP, PERSDLCLASS.DESCR, ' +
            'PERSTYPE.DESCR TYPEDESCR, PAGECOMP.COMPANY FROM PERS ' +
            'LEFT JOIN PAGELIST ON PAGELIST.PERSID = PERS.PERSID ' +
            'LEFT JOIN PAGECOMP ON PAGELIST.PAGECOMPID = PAGECOMP.PAGECOMPID ' +
            'LEFT JOIN PERSBLOODTYPE ON PERS.PERSBLOODTYPEID = PERSBLOODTYPE.PERSBLOODTYPEID ' +
            'LEFT JOIN PERSDLCLASS ON PERS.PERSDLCLASSID = PERSDLCLASS.PERSDLCLASSID ' +
            'LEFT JOIN PERSTYPE ON PERS.PERSTYPEID = PERSTYPE.PERSTYPEID ' +
            'LEFT JOIN FDID ON PERS.FDID = FDID.FDID' ;
end;

end.
