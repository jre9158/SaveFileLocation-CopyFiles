unit InvInspHistRep;
 
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
  QRXLSXFilt,
  jpeg;

type
  TInvInspHistRepForm = class(TAlpineBaseSummaryReportForm)
    HeaderBand: TQRBand;
    InvServTypeItemBand: TQRSubDetail;
    InvServTypeItemDescrField: TQRLabel;
    InvServTypeItemNarrField: TQRLabel;
    InvServTypeHistNarrField: TQRLabel;
    InvServTypeStatusDescrField: TQRLabel;
    IDNumField: TQRLabel;
    InvServTypeDescrField: TQRLabel;
    InvServPartBand: TQRSubDetail;
    PartNumField: TQRLabel;
    InvServPartHeader: TQRBand;
    InvServTypeItemHeader: TQRBand;
    QRLabel18: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel7: TQRLabel;
    SortOrdField: TQRLabel;
    InvServHistBand: TQRChildBand;
    InvServHistIDField: TQRLabel;
    QRLabel9: TQRLabel;
    InvPartNumDescrField: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    InvServPartNarrBand: TQRChildBand;
    InvServPartNarrField: TQRLabel;
    PartCostField: TQRLabel;
    PartQuantityField: TQRLabel;
    PartSubTotalField: TQRLabel;
    InvServPartLaborLengthField: TQRLabel;
    LaborRateField: TQRLabel;
    LaborSubTotalField: TQRLabel;
    InvServPartFooter: TQRBand;
    QRLabel21: TQRLabel;
    PartTotalField: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel27: TQRLabel;
    LaborLengthTotalField: TQRLabel;
    LaborTotalField: TQRLabel;
    TotalCostField: TQRLabel;
    InvServTypeItemFooter: TQRBand;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    InspLaborLengthTotalField: TQRLabel;
    InspLaborTotalField: TQRLabel;
    InspTotalCostField: TQRLabel;
    QRLabel28: TQRLabel;
    ShippingField: TQRLabel;
    QRLabel39: TQRLabel;
    OtherTotalField: TQRLabel;
    LogoImage: TQRImage;
    NarrBand: TQRChildBand;
    NarrField: TQRLabel;
    QRLabel8: TQRLabel;
    DescrField: TQRLabel;
    QRLabel6: TQRLabel;
    DateDoneField: TQRLabel;
    QRLabel4: TQRLabel;
    InvServStatusDescrField: TQRLabel;
    QRLabel5: TQRLabel;
    HourEngineField: TQRLabel;
    HourEngineLabel: TQRLabel;
    OdoMeterField: TQRLabel;
    OdoMeterLabel: TQRLabel;
    NameField: TQRLabel;
    QRLabel10: TQRLabel;
    CompanyField: TQRLabel;
    QRLabel11: TQRLabel;
    GeneralLabel: TQRLabel;
    WorkNumLabel: TQRLabel;
    WorkNumField: TQRLabel;
    HourAerialField: TQRLabel;
    HourAerialLabel: TQRLabel;
    HourPumpField: TQRLabel;
    HourPumpLabel: TQRLabel;
    OOSField: TQRLabel;
    OOSLabel: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HeaderBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure InvServTypeItemBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure InvServPartBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure InvServPartFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure InvServTypeItemFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    InvServHist     : TApolloData;
    InvServPart     : TApolloData;
    InvServTypeItem : TApolloData;
    InvServTypeHist : TApolloData;
  public
    { Public declarations }
    function SelectStatement: string; override;
  end;

var
  InvInspHistRepForm: TInvInspHistRepForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonVar,
     PersCond,
     SecSet,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TInvInspHistRepForm.FormCreate(Sender: TObject);
begin
  InvServHist                   := Open_Query(sql);
  BaseReport.DataSet            := InvServHist.DataSource.DataSet;
  InvServTypeItem               := Open_Query('SELECT * FROM INVSERVTYPEITEM WHERE 1=2');
  InvServTypeHist               := Open_Query('SELECT * FROM INVSERVTYPEHIST WHERE 1=2');
  InvServTypeItemBand.DataSet   := InvServTypeItem.DataSource.DataSet;
  InvServPart                   := Open_Query('SELECT * FROM INVSERVPART WHERE 1=2');
  InvServPartBand.DataSet       := InvServPart.DataSource.DataSet;
  InvServPartBand.Enabled       := At('SERV',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServPartHeader.Enabled     := At('SERV',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServPartFooter.Enabled     := At('SERV',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServPartNarrBand.Enabled   := At('SERV',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServTypeItemBand.Enabled   := At('INSP',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServTypeItemHeader.Enabled := At('INSP',tdbfield(InvServHist,'INVSERVFORM')) > 0;
  InvServTypeItemFooter.Enabled := At('INSP',tdbfield(InvServHist,'INVSERVFORM')) > 0;

  If FIREID = '30029' then
    InvServTypeItemFooter.Enabled := False;
end;

procedure TInvInspHistRepForm.FormDestroy(Sender: TObject);
begin
  InvServHist.Free;
  InvServTypeItem.Free;
  InvServTypeHist.Free;
  InvServPart.Free;
end;

procedure TInvInspHistRepForm.HeaderBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var SQL : String;
begin
  inherited;
  If (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP') then
    IDNumField.Caption              := 'Unit ' + tdbfield(InvServHist,'UNITNUM')
  else
    IDNumField.Caption              := 'Inventory ' + tdbfield(InvServHist,'INVNUM');

  HourEngineField.Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  HourEngineLabel.Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  OdoMeterField  .Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  OdoMeterLabel  .Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  HourPumpField.Enabled           := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  HourPumpLabel.Enabled           := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  HourAerialField.Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  HourAerialLabel.Enabled         := (substr(tdbfield(InvServHist,'INVSERVFORM'),1,3) = 'APP');
  GeneralLabel.Caption            := IIf(At('SERV',tdbfield(InvServHist,'INVSERVFORM')) > 0,'Service Information','Inspection Information'); 
  InvServHistIDField.Caption      := 'Action # ' + GetField(InvServHist,'INVSERVHISTID').AsString;
  InvServTypeDescrField.Caption   := tdbfield(InvServHist,'INVSERVTYPEDESCR');
  DateDoneField.Caption           := AlpineFormatDateTime(DisplayDateFormat,GetField(InvServHist,'DATEDONE').AsDateTime);
  OOSField.Caption                := FormatFloat('#,##0.0',anystrtofloat(GetField(InvServHist,'OOS').AsString)) + ' Hrs.';
  OOSField.Enabled                := (GetField(InvServHist,'OOS').AsFloat > 0);
  OOSLabel.Enabled                := (GetField(InvServHist,'OOS').AsFloat > 0);
  DescrField.Caption              := tdbfield(InvServHist,'DESCR');
  CompanyField.Caption            := tdbfield(InvServHist,'COMPANY');
  InvServStatusDescrField.Caption := tdbfield(InvServHist,'INVSERVSTATUSDESCR');
  NameField.Caption               := alltrim(tdbfield(InvServHist,'PERSCODE') + ' ' + tdbfield(InvServHist,'FNAME') + ' ' + tdbfield(InvServHist,'LNAME'));
  OdoMeterField.Caption           := FormatFloat('#,###,##0',GetField(InvServHist,'ODOMETER').AsFloat);
  HourEngineField.Caption         := FormatFloat('#,###,##0',GetField(InvServHist,'HOURENGINE').AsFloat);
  HourPumpField.Caption           := FormatFloat('#,###,##0',GetField(InvServHist,'HOURPUMP').AsFloat);
  HourAerialField.Caption         := FormatFloat('#,###,##0',GetField(InvServHist,'HOURAERIAL').AsFloat);
  NarrField.Caption               := GetField(InvServHist,'NARR').AsString;

  WorkNumField.Caption            := tdbfield(InvServHist,'WORKNUM');
  WorkNumField.Enabled            := Not (tdbfield(InvServHist,'WORKNUM') = '');
  WorkNumLabel.Enabled            := Not (tdbfield(InvServHist,'WORKNUM') = '');

  SQL                  := 'SELECT SORTORD, INVSERVTYPEITEMID, INVSERVTYPEITEM.DESCR INVSERVTYPEITEMDESCR, INVSERVTYPEITEM.NARR INVSERVTYPEITEMNARR FROM INVSERVTYPEITEM ' +
                          'WHERE INVSERVTYPEID = ' + pkValue(GetField(InvServHist,'INVSERVTYPEID').AsString) + ' ORDER BY SORTORD ';
  InvServTypeItem.UpdateSQL(SQL);

  SQL                  := 'SELECT INVSERVTYPEITEMID, INVSERVTYPESTATUS.DESCR INVSERVTYPESTATUSDESCR , INVSERVTYPEHIST.NARR INVSERVTYPEHISTNARR FROM INVSERVTYPEHIST ' +
                          'LEFT JOIN INVSERVTYPESTATUS ON (INVSERVTYPESTATUS.INVSERVTYPESTATUSID = INVSERVTYPEHIST.INVSERVTYPESTATUSID) ' +
                          'WHERE INVSERVTYPEHIST.INVSERVHISTID = ' + pkvalue(GetField(InvServHist,'INVSERVHISTID').AsString);
  InvServTypeHist.UpdateSQL(SQL);

  SQL                  := 'SELECT * FROM INVSERVPART WHERE INVSERVHISTID = ' + pkvalue(GetField(InvServHist,'INVSERVHISTID').AsString);
  InvServPart.UpdateSQL(SQL);  
end;

function TInvInspHistRepForm.SelectStatement: string;
begin
  result := 'SELECT INVSERVHIST.OOS, INVSERVHIST.OTHERTOTAL, INVSERVHIST.WORKNUM, INVSERVHIST.DATEDONE,INVSERVHIST.SHIPPING, ' +
            'INVSERVHIST.NARR, INVSERVHIST.INVSERVTYPEID, ' + 
            'ROLODEX.COMPANY, INVSERVHISTID, INVSERVHIST.DESCR, ' +
            'INVSERVHIST.PARTTOTAL, INVSERVHIST.LABORLENGTHTOTAL, INVSERVHIST.LABORTOTAL, INVSERVHIST.TOTALCOST, ' +
            'INVSERVTYPE.DESCR INVSERVTYPEDESCR, INVSERVSTATUS.DESCR INVSERVSTATUSDESCR, INV.UNITNUM, INV.INVNUM, ' +
            'INVSERVHIST.HOURENGINE, INVSERVHIST.HOURPUMP, INVSERVHIST.HOURAERIAL, INVSERVHIST.ODOMETER, ' +
            'INVSERVHIST.INVSERVFORM, PERS.PERSCODE, PERS.LNAME, PERS.FNAME ' +
            'FROM INVSERVHIST ' +
            'LEFT JOIN INV ON (INV.INVID = INVSERVHIST.INVID) ' +
            'LEFT JOIN PERS ON (PERS.PERSID = INVSERVHIST.PERSID) ' +
            'LEFT JOIN ROLODEX ON (ROLODEX.ROLODEXID = INVSERVHIST.ROLODEXID) ' +
            'LEFT JOIN INVSERVSTATUS ON (INVSERVSTATUS.INVSERVSTATUSID = INVSERVHIST.INVSERVSTATUSID) ' +
            'LEFT JOIN INVSERVTYPE ON (INVSERVTYPE.INVSERVTYPEID = INVSERVHIST.INVSERVTYPEID) ';
end;



procedure TInvInspHistRepForm.InvServTypeItemBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  SortOrdField.Caption                   := GetField(InvServTypeItem,'SORTORD').AsString;
  InvServTypeItemDescrField.Caption      := GetField(InvServTypeItem,'INVSERVTYPEITEMDESCR').AsString;
  InvServTypeItemNarrField.Caption       := GetField(InvServTypeItem,'INVSERVTYPEITEMNARR').AsString;

  If InvServTypeHist.ExactQueryLocate('INVSERVTYPEITEMID',GetField(InvServTypeItem,'INVSERVTYPEITEMID').AsString) then begin
    InvServTypeHistNarrField.Caption    := GetField(InvServTypeHist,'INVSERVTYPEHISTNARR').AsString;
    InvServTypeStatusDescrField.Caption := GetField(InvServTypeHist,'INVSERVTYPESTATUSDESCR').AsString;
  end else begin
    InvServTypeHistNarrField.Caption    := '';
    InvServTypeStatusDescrField.Caption := '';
  end;
end;

procedure TInvInspHistRepForm.InvServPartBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PartNumField.Caption         := GetField(InvServPart,'PARTNUM').AsString;
  InvPartNumDescrField.Caption := GetField(InvServPart,'DESCR').AsString;

  InvServPartNarrBand.Enabled  := Not (GetField(InvServPart,'NARR').AsString = '');
  InvServPartNarrField.Caption := GetField(InvServPart,'NARR').AsString;

  PartCostField.Caption        := FormatFloat('#,##0.00',GetField(InvServPart,'PARTCOST').AsFloat);
  PartQuantityField.Caption    := FormatFloat('#,##0',GetField(InvServPart,'PARTQUANTITY').AsFloat);
  PartSubTotalField.Caption    := FormatFloat('#,##0.00',GetField(InvServPart,'PARTSUBTOTAL').AsFloat);
  InvServPartLaborLengthField.Caption     := FormatFloat('#,##0.00',GetField(InvServPart,'LABORLENGTH').AsFloat);
  LaborRateField.Caption       := FormatFloat('#,##0.00',GetField(InvServPart,'LABORRATE').AsFloat);
  LaborSubTotalField.Caption   := FormatFloat('#,##0.00',GetField(InvServPart,'LABORSUBTOTAL').AsFloat);
  ShippingField.Caption        := FormatFloat('#,##0.00',GetField(InvServPart,'SHIPPING').AsFloat);
end;

procedure TInvInspHistRepForm.InvServPartFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  OtherTotalField.Caption       := FormatFloat('#,##0.00',GetField(InvServHist,'OTHERTOTAL').AsFloat);
  PartTotalField.Caption        := FormatFloat('#,##0.00',GetField(InvServHist,'PARTTOTAL').AsFloat);
  LaborLengthTotalField.Caption := FormatFloat('#,##0.00',GetField(InvServHist,'LABORLENGTHTOTAL').AsFloat);
  LaborTotalField.Caption       := FormatFloat('#,##0.00',GetField(InvServHist,'LABORTOTAL').AsFloat);
  TotalCostField.Caption        := FormatFloat('#,##0.00',GetField(InvServHist,'TOTALCOST').AsFloat);
end;

procedure TInvInspHistRepForm.InvServTypeItemFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  InspLaborLengthTotalField.Caption := FormatFloat('#,##0.00',GetField(InvServHist,'LABORLENGTHTOTAL').AsFloat);
  InspLaborTotalField.Caption       := FormatFloat('#,##0.00',GetField(InvServHist,'LABORTOTAL').AsFloat);
  InspTotalCostField.Caption        := FormatFloat('#,##0.00',GetField(InvServHist,'TOTALCOST').AsFloat);
end;

end.
