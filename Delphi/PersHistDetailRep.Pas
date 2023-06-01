unit PersHistDetailRep;
 
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
  AppLst,
  AlpineBaseSummaryReport,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt,
  QRXMLSFilt,
  QRXLSXFilt,
  jpeg;

type
  TPersHistDetailRepForm = class(TAlpineBaseSummaryReportForm)
    PersBand: TQRBand;
    PersHistDetailRepBand: TQRSubDetail;
    EventTypeField: TQRLabel;
    DateTimeStartField: TQRLabel;
    NFIRSAttHeader: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    DescrField: TQRLabel;
    QRLabel14: TQRLabel;
    NfirsAttFooter: TQRBand;
    QRLabel17: TQRLabel;
    QRLabel23: TQRLabel;
    FireDeptField: TQRLabel;
    QRLabel12: TQRLabel;
    InitialDateField: TQRLabel;
    PersCodeField: TQRLabel;
    QRLabel8: TQRLabel;
    LNameField: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    FinalDateField: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimeEndField: TQRLabel;
    PointField: TQRLabel;
    EvLengthField: TQRLabel;
    FdidField: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel5: TQRLabel;
    DateTimeLosapField: TQRLabel;
    QRLabel3: TQRLabel;
    EventNumberField: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel18: TQRLabel;
    PointAttField: TQRLabel;
    EvLengthAttField: TQRLabel;
    PointTotalField: TQRLabel;
    EvLengthTotalField: TQRLabel;
    AttPointTotalField: TQRLabel;
    AttEvLengthTotalField: TQRLabel;
    QRLabel19: TQRLabel;
    NfirsMainPointTotalField: TQRLabel;
    NfirsMainEvLengthTotalField: TQRLabel;
    NfirsAttPointTotalField: TQRLabel;
    NfirsAttEvLengthTotalField: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel20: TQRLabel;
    NIPointTotalField: TQRLabel;
    NIEvLengthTotalField: TQRLabel;
    NIAttPointTotalField: TQRLabel;
    NIAttEvLengthTotalField: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel31: TQRLabel;
    SchdHistShiftLengthTotalField: TQRLabel;
    PageHeaderBand: TQRBand;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    NIPersInvPointTotalField: TQRLabel;
    NIPersInvEvLengthTotalField: TQRLabel;
    NIPersInvPointAttTotalField: TQRLabel;
    NIPersInvEvLengthAttTotalField: TQRLabel;
    QRLabel46: TQRLabel;
    PersRankHistPointTotalField: TQRLabel;
    PersRankHistEvLengthTotalField: TQRLabel;
    PersRankHistPointAttTotalField: TQRLabel;
    PersRankHistEvLengthAttTotalField: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    TotalField: TQRLabel;
    NfirsAttTotalField: TQRLabel;
    NIAttTotalField: TQRLabel;
    SchdHistTotalField: TQRLabel;
    NIPersInvTotalField: TQRLabel;
    PersRankHistTotalField: TQRLabel;
    QRLabel47: TQRLabel;
    NIEVAttPointTotalField: TQRLabel;
    NIEvAttAttEvLengthTotalField: TQRLabel;
    NIEVAttPointAttTotalField: TQRLabel;
    NIEVAttEvLengthAttTotalField: TQRLabel;
    NIEVAttTotalField: TQRLabel;
    QRLabel48: TQRLabel;
    PersCommHistPointTotalField: TQRLabel;
    PersCommHistEvLengthTotalField: TQRLabel;
    PersCommHistPointAttTotalField: TQRLabel;
    PersCommHistEvLengthAttTotalField: TQRLabel;
    PersCommHistTotalField: TQRLabel;
    QRShape36: TQRShape;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape10: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    LogoImage: TQRImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersHistDetailRepBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NfirsAttFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
  private
    { Private declarations }
    PersTable                       : TApolloData;
    NFIRSAttTable                   : TApolloData;
    NIAttTable                      : TApolloData;
    SchdHistTable                   : TApolloData;
    NIPersInvTable                  : TApolloData;
    PersRankHistTable               : TApolloData;
    NIEVAttTable                    : TApolloData;
    PersCommHistTable               : TApolloData;
    PersHistDetailRepTable          : TApolloData;
    CompCode                        : String;

    NfirsAttTotalVar                : Real;
    NfirsAttPointTotalVar           : Real;
    NfirsAttEvLengthTotalVar        : Real;
    NfirsMainPointTotalVar          : Real;
    NfirsMainEvLengthTotalVar       : Real;

    NIAttTotalVar                   : Real;
    NIAttPointTotalVar              : Real;
    NIAttEvLengthTotalVar           : Real;
    NIPointTotalVar                 : Real;
    NIEvLengthTotalVar              : Real;

    NIPersInvTotalVar               : Real;
    NIPersInvPointAttTotalVar       : Real;
    NIPersInvAttEvLengthTotalVar    : Real;
    NIPersInvPointTotalVar          : Real;
    NIPersInvEvLengthTotalVar       : Real;

    PersRankHistTotalVar            : Real;
    PersRankHistPointAttTotalVar    : Real;
    PersRankHistEvLengthAttTotalVar : Real;
    PersRankHistPointTotalVar       : Real;
    PersRankHistEvLengthTotalVar    : Real;

    NIEVAttTotalVar                 : Real;
    NIEVAttPointAttTotalVar         : Real;
    NIEVAttEvLengthAttTotalVar      : Real;

    PersCommHistTotalVar            : Real;
    PersCommHistPointAttTotalVar    : Real;
    PersCommHistEvLengthAttTotalVar : Real;
    PersCommHistPointTotalVar       : Real;
    PersCommHistEvLengthTotalVar    : Real;

    SchdHistTotalVar                : Real;
    SchdHistShiftLengthTotalVar     : Real;

    procedure LoadPersHistDetailRep;
  public
    { Public declarations }
    function SelectStatement: string; override;
    function ReportJoins: String; override;
  end;

var
  PersHistDetailRepForm: TPersHistDetailRepForm;

implementation
uses GenFunc,
     SecSet,
     PersCond,
     Commonfunc,
     NormalBase,
     Progress,
     SysSet,
     SysRepMan;

{$R *.DFM}
{$I rednmx.inc}

procedure TPersHistDetailRepForm.FormCreate(Sender: TObject);
begin
  PersTable                      := Open_Query(Sql);
  PersBand.PkField               := 'PERSID';
  NFIRSAttTable                  := Open_Query('SELECT * FROM NFIRSATT WHERE PERSID = -1');
  NIAttTable                     := Open_Query('SELECT * FROM NIATT WHERE PERSID = -1');
  SchdHistTable                  := Open_Query('SELECT * FROM SCHDHIST WHERE PERSID = -1');
  NIPersInvTable                 := Open_Query('SELECT * FROM NIPERSINV WHERE PERSID = -1');
  PersRankHistTable              := Open_Query('SELECT * FROM PERSRANKHIST WHERE PERSID = -1');
  NIEVAttTable                   := Open_Query('SELECT * FROM NIEVATT WHERE PERSID = -1');
  PersCommHistTable              := Open_Query('SELECT * FROM PERSCOMMHIST WHERE PERSID = -1');
  PersHistDetailRepTable         := Open_Query('SELECT * FROM PERSHISTDETAILREP WHERE PERSID = -1');
  PersHistDetailRepBand.DataSet  := PersHistDetailRepTable.DataSource.DataSet;
  BaseReport.DataSet             := PersTable.DataSource.DataSet;
  InitialDateField.Caption       := AlpineFormatDateTime('MM/DD/YYYY',InitialDate);
  FinalDateField.Caption         := AlpineFormatDateTime('MM/DD/YYYY',FinalDate);
  FireDeptField.Caption          := mFireDept;
  CompCode                       := AlpineGetComputerName;
end;

procedure TPersHistDetailRepForm.FormDestroy(Sender: TObject);
begin
  PersTable.Free;
  NFIRSAttTable.Free;
  NIAttTable.Free;
  SchdHistTable.Free;
  NIPersInvTable.Free;
  PersRankHistTable.Free;
  NIEVAttTable.Free;
  PersCommHistTable.Free;
  PersHistDetailRepTable.Free;
end;

procedure TPersHistDetailRepForm.PersBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NfirsAttTotalVar                := 0;
  NfirsMainEvLengthTotalVar       := 0;
  NfirsAttEvLengthTotalVar        := 0;
  NIEvLengthTotalVar              := 0;
  NIAttEvLengthTotalVar           := 0;

  NIAttTotalVar                   := 0;
  NfirsMainPointTotalVar          := 0;
  NfirsAttPointTotalVar           := 0;
  NIPointTotalVar                 := 0;
  NIAttPointTotalVar              := 0;

  SchdHistTotalVar                := 0;
  SchdHistShiftLengthTotalVar     := 0;

  NIPersInvTotalVar               := 0;
  NIPersInvPointAttTotalVar       := 0;
  NIPersInvAttEvLengthTotalVar    := 0;
  NIPersInvPointTotalVar          := 0;
  NIPersInvEvLengthTotalVar       := 0;

  PersRankHistTotalVar            := 0;
  PersRankHistPointAttTotalVar    := 0;
  PersRankHistEvLengthAttTotalVar := 0;
  PersRankHistPointTotalVar       := 0;
  PersRankHistEvLengthTotalVar    := 0;

  NIEVAttTotalVar                 := 0;
  NIEVAttPointAttTotalVar         := 0;
  NIEVAttEvLengthAttTotalVar      := 0;

  PersCommHistTotalVar            := 0;
  PersCommHistPointAttTotalVar    := 0;
  PersCommHistEvLengthAttTotalVar := 0;
  PersCommHistPointTotalVar       := 0;
  PersCommHistEvLengthTotalVar    := 0;

  RunSQL('DELETE FROM PERSHISTDETAILREP WHERE SECID = ' + pkValue(SecIDVar) + ' AND PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND COMPCODE = ' + AddExpr(AlpineGetComputerName) + ' AND REPORTCODE = ' + AddExpr('PERSHISTDETAILREP'));
  LoadPersHistDetailRep;
  PersHistDetailRepTable.UpdateSQL('SELECT * FROM PERSHISTDETAILREP WHERE SECID = ' + pkValue(SecIDVar) + ' AND PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND COMPCODE = ' + AddExpr(AlpineGetComputerName) + ' AND REPORTCODE = ' + AddExpr('PERSHISTDETAILREP') + ' ORDER BY DATETIMELOSAP');

  LNameField.Caption    := tdbfield(PersTable,'LNAME') + ', ' + tdbfield(PersTable,'FNAME');
  PersCodeField.Caption := tdbfield(PersTable,'PERSCODE');
end;

procedure TPersHistDetailRepForm.PersHistDetailRepBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  PersHistDetailRepBand.Color    := IIfI(PersHistDetailRepBand.color = clwhite,$00EBEBEB,clwhite);

  If (Getfield(PersHistDetailRepTable,'EVLENGTHATT').AsFloat <> Getfield(PersHistDetailRepTable,'EVLENGTH').AsFloat) then 
    PersHistDetailRepBand.Color := $008080FF;

  FdidField.Caption              := tdbfield(PersHistDetailRepTable,'FDID');
  EventTypeField.Caption         := tdbfield(PersHistDetailRepTable,'EVENTTYPE');
  EventNumberField.Caption       := tdbfield(PersHistDetailRepTable,'EVENTNUMBER');
  DateTimeStartField.Caption     := AlpineFormatDateTime('MM/DD/YYYY HH:NN', GetField(PersHistDetailRepTable,'DATETIMESTART').AsDateTime);
  DateTimeEndField.Caption       := AlpineFormatDateTime('MM/DD/YYYY HH:NN', GetField(PersHistDetailRepTable,'DATETIMEEND').AsDateTime);
  DateTimeLosapField.Caption     := AlpineFormatDateTime('MM/DD/YYYY HH:NN', GetField(PersHistDetailRepTable,'DATETIMELOSAP').AsDateTime);
  DescrField.Caption             := tdbfield(PersHistDetailRepTable,'DESCR');

  PointAttField.Caption          := FormatFloat('##0.00',Getfield(PersHistDetailRepTable,'POINTATT').AsFloat);
  EvLengthAttField.Caption       := FormatFloat('##0.00',Getfield(PersHistDetailRepTable,'EVLENGTHATT').AsFloat);
  PointField.Caption             := FormatFloat('##0.00',Getfield(PersHistDetailRepTable,'POINT').AsFloat);
  EvLengthField.Caption          := FormatFloat('##0.00',Getfield(PersHistDetailRepTable,'EVLENGTH').AsFloat);

  If      (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'NFIRSATT')     then
    PersHistDetailRepBand.Font.Color := clred
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'NIATT')        then
    PersHistDetailRepBand.Font.Color := clblue
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'SCHDHIST')     then
    PersHistDetailRepBand.Font.Color := clgreen
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'NIPERSINV')    then
    PersHistDetailRepBand.Font.Color := $00BFBF00
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'PERSRANKHIST') then
    PersHistDetailRepBand.Font.Color := clolive
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'NIEVATT')      then
    PersHistDetailRepBand.Font.Color := $004080FF
  else if (tdbfield(PersHistDetailRepTable,'TABLENAME') = 'PERSCOMMHIST') then
    PersHistDetailRepBand.Font.Color := clMaroon
  else
    PersHistDetailRepBand.Font.Color := clblack;
end;

function TPersHistDetailRepForm.SelectStatement: string;
begin
  result := 'SELECT PERS.FDID, PERS.PERSID, PERSTYPE.DESCR PERSTYPEDESCR, PERS.LNAME, PERS.FNAME, PERS.PERSCODE FROM PERS ';
end;

function TPersHistDetailRepForm.ReportJoins: String;
begin
  result := ' LEFT OUTER JOIN PERSTYPE ON (PERS.PERSTYPEID = PERSTYPE.PERSTYPEID) ';
end;

procedure TPersHistDetailRepForm.LoadPersHistDetailRep;
Var SQLVar    : String;
begin
  Open_Query('PERSHISTDETAILREP',true,'SELECT * FROM PERSHISTDETAILREP WHERE 1=2');

  SQLVar := 'SELECT NFIRSMAIN.FDID, NFIRSMAIN.POINT NFIRSMAINPOINT, NFIRSATT.POINT NFIRSATTPOINT, NFIRSMAIN.EVLENGTH NFIRSMAINEVLENGTH, NFIRSATT.EVLENGTH NFIRSATTEVLENGTH, ' +
            'NFIRSMAIN.DATETIMEALARM, NFIRSMAIN.DATETIMEIN, NFIRSMAIN.STRNUM, NFIRSMAIN.STREET, NFIRSMAIN.INCNUM ' +
            'FROM NFIRSATT LEFT JOIN NFIRSMAIN ON (NFIRSMAIN.NFIRSMAINID = NFIRSATT.NFIRSMAINID) ' +
            'WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) + ' AND ' +
            'NFIRSATT.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' ' +
            'ORDER BY NFIRSMAIN.DATETIMEALARM';

  NFIRSAttTable.UpdateSQL(SQLVar);
  ProgressForm := TProgressForm.Create(self);
  ProgressForm.Initialize('Counting NFIRS Calls . . ',NFIRSAttTable.QueryRecCount);

  While Not NfirsAttTable.eof do begin
    ProgressForm.Increment;

    TableInsert('PERSHISTDETAILREP',['SECID','COMPCODE','REPORTCODE','TABLENAME','FDID','PERSID','EVENTTYPE','EVENTNUMBER','DATETIMESTART','DATETIMEEND','DATETIMELOSAP','DESCR','EVLENGTH','POINT','EVLENGTHATT','POINTATT'],
                                    [SecIDVar, CompCode,  'PERSHISTDETAILREP','NFIRSATT',tdbfield(NFIRSAttTable,'FDID'),GetField(PersTable,'PERSID').AsString,'NFIRS Attendance',tdbfield(NFIRSAttTable,'INCNUM'),
                                    GetField(NFIRSAttTable,'DATETIMEALARM').AsDateTime,
                                    GetField(NFIRSAttTable,'DATETIMEIN').AsDateTime,
                                    GetField(NFIRSAttTable,'DATETIMEALARM').AsDateTime,
                                    alltrim(tdbfield(NFIRSAttTable,'STRNUM') + ' ' + tdbfield(NFIRSAttTable,'STREET')),
                                    GetField(NFIRSAttTable,'NFIRSMAINEVLENGTH').AsFloat,
                                    GetField(NFIRSAttTable,'NFIRSMAINPOINT').AsFloat,
                                    GetField(NFIRSAttTable,'NFIRSATTEVLENGTH').AsFloat,
                                    GetField(NFIRSAttTable,'NFIRSATTPOINT').AsFloat
                                    ]);

    NfirsAttTotalVar            := NfirsAttTotalVar          + 1;
    NfirsMainEvLengthTotalVar   := NfirsMainEvLengthTotalVar + GetField(NFIRSAttTable,'NFIRSMAINEVLENGTH').AsFloat;
    NfirsAttEvLengthTotalVar    := NfirsAttEvLengthTotalVar  + GetField(NFIRSAttTable,'NFIRSATTEVLENGTH').AsFloat;
    NfirsMainPointTotalVar      := NfirsMainPointTotalVar    + GetField(NFIRSAttTable,'NFIRSMAINPOINT').AsFloat;
    NfirsAttPointTotalVar       := NfirsAttPointTotalVar     + GetField(NFIRSAttTable,'NFIRSATTPOINT').AsFloat;
    NfirsAttTable.Skip(1);
  end;

  NIAttTable.UpdateSQL('SELECT NI.NIID, NI.FDID, NI.POINT NIPOINT, NIATT.POINT NIATTPOINT, NI.EVLENGTH NIEVLENGTH, NIATT.EVLENGTH NIATTEVLENGTH, NI.DESCR, NIATT.NIATTID NIATTID, ' + 
                       'NI.DATETIMESTART, NI.DATETIMEEND, NILOSAPCAT.DESCR NILOSAPCATDESCR, NILOSAPCAT.CODE NILOSAPCATCODE FROM NIATT ' +
                       'LEFT JOIN NI ON (NI.NIID = NIATT.NIID) ' +
                       'LEFT JOIN NILOSAPCAT ON (NILOSAPCAT.NILOSAPCATID = NI.NILOSAPCATID) ' +
                       'WHERE NIATT.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                       BuildSQLAlpineDate('NI.DATETIMESTART',InitialDate,FinalDate) + ' ORDER BY NI.DATETIMESTART');

  ProgressForm.Initialize('Counting Event Attendance . . ',NIAttTable.QueryRecCount);

  While Not NIAttTable.eof do begin
    ProgressForm.Increment;

    TableInsert('PERSHISTDETAILREP',['SECID','COMPCODE','REPORTCODE','TABLENAME','FDID','PERSID','EVENTTYPE','EVENTNUMBER','DATETIMESTART','DATETIMEEND','DATETIMELOSAP','DESCR','EVLENGTH','POINT','EVLENGTHATT','POINTATT'],
                                    [SecIDVar, CompCode,  'PERSHISTDETAILREP','NIATT',tdbfield(NIAttTable,'FDID'),GetField(PersTable,'PERSID').AsString,'Non Incident Attendance',GetField(NIAttTable,'NIID').AsString,
                                    GetField(NIAttTable,'DATETIMESTART').AsDateTime,
                                    GetField(NIAttTable,'DATETIMEEND').AsDateTime,
                                    GetField(NIAttTable,'DATETIMESTART').AsDateTime,
                                    tdbfield(NIAttTable,'NILOSAPCATCODE') + '-' + tdbfield(NIAttTable,'NILOSAPCATDESCR'),
                                    GetField(NIAttTable,'NIEVLENGTH').AsFloat,
                                    GetField(NIAttTable,'NIPOINT').AsFloat,
                                    GetField(NIAttTable,'NIATTEVLENGTH').AsFloat,
                                    GetField(NIAttTable,'NIATTPOINT').AsFloat
                                    ]);

    NIAttTotalVar            := NIAttTotalVar         + 1;
    NIEvLengthTotalVar       := NIEvLengthTotalVar    + GetField(NIAttTable,'NIEVLENGTH').AsFloat;
    NIATTEvLengthTotalVar    := NIATTEvLengthTotalVar + GetField(NIAttTable,'NIATTEVLENGTH').AsFloat;
    NIPointTotalVar          := NIPointTotalVar       + GetField(NIAttTable,'NIPOINT').AsFloat;
    NIAttPointTotalVar       := NIAttPointTotalVar    + GetField(NIAttTable,'NIATTPOINT').AsFloat;

    NIAttTable.Skip(1);
  end;

  SchdHistTable.UpdateSQL('SELECT SCHDHISTID, PERSID, PERSFDID, SHIFTLENGTH, SCHDTYPEDESCR, DATETIMESTART, DATETIMEEND, UNITNUM FROM VWSCHDHIST ' +
                          'WHERE VWSCHDHIST.PERSID = ' + pkValue(GetField(PersTable,'PERSID').AsString) + ' AND ' +
                          BuildSQLAlpineDate('VWSCHDHIST.DATETIMESTART',InitialDate,FinalDate) + ' ORDER BY VWSCHDHIST.DATETIMESTART');

  ProgressForm.Initialize('Counting Schedule History . . ',SchdHistTable.QueryRecCount);
  While Not SchdHistTable.eof do begin
    ProgressForm.Increment;

    TableInsert('PERSHISTDETAILREP',['SECID','COMPCODE','REPORTCODE','TABLENAME','FDID','PERSID','EVENTTYPE','EVENTNUMBER','DATETIMESTART','DATETIMEEND','DATETIMELOSAP','DESCR','EVLENGTH','POINT','EVLENGTHATT','POINTATT'],
                                    [SecIDVar, CompCode,  'PERSHISTDETAILREP','SCHDHIST',tdbfield(SchdHistTable,'PERSFDID'),GetField(PersTable,'PERSID').AsString,tdbfield(SchdHistTable,'SCHDTYPEDESCR'),GetField(SchdHistTable,'SCHDHISTID').AsString,
                                    GetField(SchdHistTable,'DATETIMESTART').AsDateTime,
                                    GetField(SchdHistTable,'DATETIMEEND').AsDateTime,
                                    GetField(SchdHistTable,'DATETIMESTART').AsDateTime,
                                    tdbfield(SchdHistTable,'UNITNUM'),
                                    0,
                                    0,
                                    GetField(SchdHistTable,'SHIFTLENGTH').AsFloat,
                                    0
                                    ]);

    SchdHistTotalVar            := SchdHistTotalVar + 1;
    SchdHistShiftLengthTotalVar := SchdHistShiftLengthTotalVar + GetField(SchdHistTable,'SHIFTLENGTH').AsFloat;
    SchdHistTable.Skip(1);
  end;

  NIPersInvTable.UpdateSQL('SELECT NI.NIID, NI.FDID, NIPERSINV.EVLENGTH NIPERSINVEVLENGTH, NI.EVLENGTH NIEVLENGTH, NIPERSINV.POINT NIPERSINVPOINT, NI.POINT NIPOINT, NI.DATETIMESTART, NI.DATETIMEEND, NILOSAPCAT.DESCR NILOSAPCATDESCR, NILOSAPCAT.CODE NILOSAPCATCODE ' +
                           'FROM NIPERSINV ' +
                           'LEFT JOIN NI ON (NI.NIID = NIPERSINV.NIID) ' +
                           'LEFT JOIN NILOSAPCAT ON (NI.NILOSAPCATID = NILOSAPCAT.NILOSAPCATID) ' +
                           'WHERE NIPERSINV.PERSID = ' + pkvalue(GetField(PersTable,'PERSID').AsString) + ' AND ' + BuildSQLAlpineDate('NI.DATETIMESTART',InitialDate,FinalDate));

  ProgressForm.Initialize('Counting Event Persons Involved . . ',NIPersInvTable.QueryRecCount);
  While Not NIPersInvTable.eof do begin
    ProgressForm.Increment;

    TableInsert('PERSHISTDETAILREP',['SECID','COMPCODE','REPORTCODE','TABLENAME','FDID','PERSID','EVENTTYPE','EVENTNUMBER','DATETIMESTART','DATETIMEEND','DATETIMELOSAP','DESCR','EVLENGTH','POINT','EVLENGTHATT','POINTATT'],
                                    [SecIDVar, CompCode,  'PERSHISTDETAILREP','NIPERSINV',tdbfield(NIPersInvTable,'FDID'),GetField(PersTable,'PERSID').AsString,'Training Instructor',GetField(NIPersInvTable,'NIID').AsString,
                                    GetField(NIPersInvTable,'DATETIMESTART').AsDateTime,
                                    GetField(NIPersInvTable,'DATETIMEEND').AsDateTime,
                                    GetField(NIPersInvTable,'DATETIMESTART').AsDateTime,
                                    tdbfield(NIPersInvTable,'NILOSAPCATCODE') + '-' + tdbfield(NIAttTable,'NILOSAPCATDESCR'),
                                    GetField(NIPersInvTable,'NIEVLENGTH').AsFloat,
                                    GetField(NIPersInvTable,'NIPOINT').AsFloat,
                                    GetField(NIPersInvTable,'NIPERSINVEVLENGTH').AsFloat,
                                    GetField(NIPersInvTable,'NIPERSINVPOINT').AsFloat
                                    ]);

    NIPersInvTotalVar            := NIPersInvTotalVar            + 1;
    NIPersInvPointAttTotalVar    := NIPersInvPointAttTotalVar    + GetField(NIPersInvTable,'NIPERSINVPOINT').AsFloat;
    NIPersInvAttEvLengthTotalVar := NIPersInvAttEvLengthTotalVar + GetField(NIPersInvTable,'NIPERSINVEVLENGTH').AsFloat;
    NIPersInvPointTotalVar       := NIPersInvPointTotalVar       + GetField(NIPersInvTable,'NIPOINT').AsFloat;
    NIPersInvEvLengthTotalVar    := NIPersInvEvLengthTotalVar    + GetField(NIPersInvTable,'NIEVLENGTH').AsFloat;
    NIPersInvTable.Skip(1);
  end;

  PersRankHistTable.UpdateSQL('SELECT PERSRANKHIST.PERSRANKHISTID, PERSRANKHIST.FDID, PERSRANKHIST.DATETIMESTART, PERSRANKHIST.DATETIMEEND, PERSRANKHIST.POINT, PERSRANKHIST.DATETIMELOSAP, PERSRANK.CODE PERSRANKCODE, PERSRANK.DESCR PERSRANKDESCR FROM PERSRANKHIST ' +
                              'LEFT JOIN PERSRANK ON (PERSRANKHIST.PERSRANKID = PERSRANK.PERSRANKID) ' +
                              'WHERE PERSRANKHIST.PERSID = ' + pkvalue(GetField(PersTable,'PERSID').AsString)  + ' AND ' + BuildSQLAlpineDate('PERSRANKHIST.DATETIMELOSAP',InitialDate,FinalDate));

  ProgressForm.Initialize('Counting Rank History . . ',PersRankHistTable.QueryRecCount);
  While Not PersRankHistTable.Eof do begin
    ProgressForm.Increment;
    A('PERSHISTDETAILREP').Append;
    GetField('PERSHISTDETAILREP','SECID').AsString           := SecIDVar;
    GetField('PERSHISTDETAILREP','COMPCODE').AsString        := CompCode;
    GetField('PERSHISTDETAILREP','REPORTCODE').AsString      := 'PERSHISTDETAILREP';
    GetField('PERSHISTDETAILREP','TABLENAME').AsString       := 'PERSRANKHIST';
    GetField('PERSHISTDETAILREP','FDID').AsString            := tdbfield(PersRankHistTable,'FDID');
    GetField('PERSHISTDETAILREP','PERSID').AsString          := GetField(PersTable,'PERSID').AsString;
    GetField('PERSHISTDETAILREP','EVENTTYPE').AsString       := 'Rank History';
    GetField('PERSHISTDETAILREP','EVENTNUMBER').AsString     := GetField(PersRankHistTable,'PERSRANKHISTID').AsString;;
    GetField('PERSHISTDETAILREP','DATETIMESTART').AsDateTime := GetField(PersRankHistTable,'DATETIMESTART').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMEEND').AsDateTime   := GetField(PersRankHistTable,'DATETIMEEND').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMELOSAP').AsDateTime := GetField(PersRankHistTable,'DATETIMELOSAP').AsDateTime;
    GetField('PERSHISTDETAILREP','DESCR').AsString           := tdbfield(PersRankHistTable,'PERSRANKCODE') + '-' + tdbfield(PersRankHistTable,'PERSRANKDESCR');
    GetField('PERSHISTDETAILREP','EVLENGTHATT').AsFloat      := 0;
    GetField('PERSHISTDETAILREP','POINTATT').AsFloat         := GetField(PersRankHistTable,'POINT').AsFloat;
    A('PERSHISTDETAILREP').Post;

    PersRankHistTotalVar            := PersRankHistTotalVar            + 1;
    PersRankHistPointAttTotalVar    := PersRankHistPointAttTotalVar    + GetField(PersRankHistTable,'POINT').AsFloat;
    PersRankHistEvLengthAttTotalVar := PersRankHistEvLengthAttTotalVar + 0;
    PersRankHistPointTotalVar       := PersRankHistPointTotalVar       + 0;
    PersRankHistEvLengthTotalVar    := PersRankHistEvLengthTotalVar    + 0;
    
    PersRankHistTable.Skip(1);
  end;

  NIEVAttTable.UpdateSql('SELECT NIEVATT.POINT, NIEVATT.NIEVATTID, NIEVATT.PERSID, NILOSAPCAT.CODE NILOSAPCATCODE, NILOSAPCAT.DESCR NILOSAPCATDESCR, NIEVATT.DATETIMEATTEND, NIEVATT.EVLENGTH FROM NIEVATT ' +
                         'LEFT JOIN NITRAINCAT1 ON (NIEVATT.NITRAINCAT1ID = NITRAINCAT1.NITRAINCAT1ID) ' +
                         'LEFT JOIN NILOSAPCAT ON (NIEVATT.NILOSAPCATID = NILOSAPCAT.NILOSAPCATID) ' +
                         'WHERE PERSID = ' + pkvalue(GetField(PersTable,'PERSID').AsString) +
                         ' AND ' + BuildSQLAlpineDate('NIEVATT.DATETIMEATTEND',InitialDate,FinalDate)  +
                         ' AND NIID IS NULL AND NIEVID IS NULL');

  ProgressForm.Initialize('Counting Training Certifications . . ',NIEVAttTable.QueryRecCount);
  while Not NIEVAttTable.eof do begin
    ProgressForm.Increment;
    A('PERSHISTDETAILREP').Append;
    GetField('PERSHISTDETAILREP','SECID').AsString           := SecIDVar;
    GetField('PERSHISTDETAILREP','COMPCODE').AsString        := CompCode;
    GetField('PERSHISTDETAILREP','REPORTCODE').AsString      := 'PERSHISTDETAILREP';
    GetField('PERSHISTDETAILREP','TABLENAME').AsString       := 'NIEVATT';
    GetField('PERSHISTDETAILREP','FDID').AsString            := tdbfield(PersTable,'FDID');
    GetField('PERSHISTDETAILREP','PERSID').AsString          := GetField(PersTable,'PERSID').AsString;
    GetField('PERSHISTDETAILREP','EVENTTYPE').AsString       := 'Training Certifications';
    GetField('PERSHISTDETAILREP','EVENTNUMBER').AsString     := GetField(NIEVAttTable,'NIEVATTID').AsString;
    GetField('PERSHISTDETAILREP','DATETIMESTART').AsDateTime := GetField(NIEVAttTable,'DATETIMEATTEND').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMEEND').AsDateTime   := GetField(NIEVAttTable,'DATETIMEATTEND').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMELOSAP').AsDateTime := GetField(NIEVAttTable,'DATETIMEATTEND').AsDateTime;
    GetField('PERSHISTDETAILREP','DESCR').AsString           := tdbfield(NIEVAttTable,'NILOSAPCATCODE') + '-' + tdbfield(NIEVAttTable,'NILOSAPCATDESCR');
    GetField('PERSHISTDETAILREP','EVLENGTHATT').AsFloat      := GetField(NIEVAttTable,'EVLENGTH').AsFloat;
    GetField('PERSHISTDETAILREP','POINTATT').AsFloat         := GetField(NIEVAttTable,'POINT').AsFloat;
    A('PERSHISTDETAILREP').Post;

    NIEVAttTotalVar                 := NIEVAttTotalVar            + 1;
    NIEVAttPointAttTotalVar         := NIEVAttPointAttTotalVar    + GetField(NIEVAttTable,'POINT').AsFloat;
    NIEVAttEvLengthAttTotalVar      := NIEVAttEvLengthAttTotalVar + GetField(NIEVAttTable,'EVLENGTH').AsFloat;
    
    NIEVAttTable.Skip(1);
  end;

  PersCommHistTable.UpdateSQL('SELECT PERSCOMMHIST.PERSCOMMHISTID, PERSCOMMHIST.FDID, PERSCOMMHIST.POINT, PERSCOMMHIST.DATETIMESTART, PERSCOMMHIST.DATETIMEEND, PERSCOMMHIST.DATETIMELOSAP, PERSCOMMTYPE.CODE PERSCOMMTYPECODE, PERSCOMMTYPE.DESCR PERSCOMMTYPEDESCR ' +
                              'FROM PERSCOMMHIST ' +
                              'LEFT JOIN PERS ON (PERSCOMMHIST.PERSID = PERS.PERSID) ' +
                              'LEFT JOIN PERSCOMMTYPE ON (PERSCOMMHIST.PERSCOMMTYPEID = PERSCOMMTYPE.PERSCOMMTYPEID) ' +
                              'WHERE PERSCOMMHIST.PERSID = ' + PKValue(GetField(PersTable,'PERSID').AsString) + ' AND ' + BuildSQLAlpineDate('PERSCOMMHIST.DATETIMELOSAP',InitialDate,FinalDate));

  ProgressForm.Initialize('Counting Committee History . . ',PersCommHistTable.QueryRecCount);
  While Not PersCommHistTable.Eof do begin
    ProgressForm.Increment;
    A('PERSHISTDETAILREP').Append;
    GetField('PERSHISTDETAILREP','SECID').AsString           := SecIDVar;
    GetField('PERSHISTDETAILREP','COMPCODE').AsString        := CompCode;
    GetField('PERSHISTDETAILREP','REPORTCODE').AsString      := 'PERSHISTDETAILREP';
    GetField('PERSHISTDETAILREP','TABLENAME').AsString       := 'PERSCOMMHIST';
    GetField('PERSHISTDETAILREP','FDID').AsString            := tdbfield(PersCommHistTable,'FDID');
    GetField('PERSHISTDETAILREP','PERSID').AsString          := GetField(PersTable,'PERSID').AsString;
    GetField('PERSHISTDETAILREP','EVENTTYPE').AsString       := 'Committee History';
    GetField('PERSHISTDETAILREP','EVENTNUMBER').AsString     := GetField(PersCommHistTable,'PERSCOMMHISTID').AsString;
    GetField('PERSHISTDETAILREP','DATETIMESTART').AsDateTime := GetField(PersCommHistTable,'DATETIMESTART').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMEEND').AsDateTime   := GetField(PersCommHistTable,'DATETIMEEND').AsDateTime;
    GetField('PERSHISTDETAILREP','DATETIMELOSAP').AsDateTime := GetField(PersCommHistTable,'DATETIMELOSAP').AsDateTime;                       
    GetField('PERSHISTDETAILREP','DESCR').AsString           := tdbfield(PersCommHistTable,'PERSCOMMTYPECODE') + '-' + tdbfield(PersCommHistTable,'PERSCOMMTYPEDESCR');
    GetField('PERSHISTDETAILREP','EVLENGTHATT').AsFloat         := 0;
    GetField('PERSHISTDETAILREP','POINTATT').AsFloat            := GetField(PersCommHistTable,'POINT').AsFloat;
    A('PERSHISTDETAILREP').Post;

    PersCommHistTotalVar            := PersCommHistTotalVar            + 1;
    PersCommHistPointAttTotalVar    := PersCommHistPointAttTotalVar    + GetField(PersCommHistTable,'POINT').AsFloat;
    PersCommHistEvLengthAttTotalVar := PersCommHistEvLengthAttTotalVar + 0;
    PersCommHistPointTotalVar       := PersCommHistPointTotalVar       + 0;
    PersCommHistEvLengthTotalVar    := PersCommHistEvLengthTotalVar    + 0;
    
    PersCommHistTable.Skip(1);
  end;

  CloseApollo('PERSHISTDETAILREP');
  ProgressForm.free;
end;

procedure TPersHistDetailRepForm.NfirsAttFooterBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NfirsAttTotalField               .Caption := FormatFloat('##,##0',   NfirsAttTotalVar);
  NfirsAttPointTotalField          .Caption := FormatFloat('##,##0.00',NfirsAttPointTotalVar);
  NfirsAttEvLengthTotalField       .Caption := FormatFloat('##,##0.00',NfirsAttEvLengthTotalVar);
  NfirsMainPointTotalField         .Caption := FormatFloat('##,##0.00',NfirsMainPointTotalVar);
  NfirsMainEvLengthTotalField      .Caption := FormatFloat('##,##0.00',NfirsMainEvLengthTotalVar);

  NIAttTotalField                  .Caption := FormatFloat('##,##0',   NIAttTotalVar);
  NIAttPointTotalField             .Caption := FormatFloat('##,##0.00',NIAttPointTotalVar);
  NIAttEvLengthTotalField          .Caption := FormatFloat('##,##0.00',NIAttEvLengthTotalVar);
  NIPointTotalField                .Caption := FormatFloat('##,##0.00',NIPointTotalVar);
  NIEvLengthTotalField             .Caption := FormatFloat('##,##0.00',NIEvLengthTotalVar);

  SchdHistTotalField               .Caption := FormatFloat('##,##0',   SchdHistTotalVar);
  SchdHistShiftLengthTotalField    .Caption := FormatFloat('##,##0.00',SchdHistShiftLengthTotalVar);

  NIPersInvTotalField              .Caption := FormatFloat('##,##0',   NIPersInvTotalVar);
  NIPersInvPointAttTotalField      .Caption := FormatFloat('##,##0.00',NIPersInvPointAttTotalVar);
  NIPersInvEvLengthAttTotalField   .Caption := FormatFloat('##,##0.00',NIPersInvAttEvLengthTotalVar);
  NIPersInvPointTotalField         .Caption := FormatFloat('##,##0.00',NIPersInvPointTotalVar);
  NIPersInvEvLengthTotalField      .Caption := FormatFloat('##,##0.00',NIPersInvEvLengthTotalVar);

  PersRankHistTotalField           .Caption := FormatFloat('##,##0',   PersRankHistTotalVar);
  PersRankHistPointAttTotalField   .Caption := FormatFloat('##,##0.00',PersRankHistPointAttTotalVar);
  PersRankHistEvLengthAttTotalField.Caption := FormatFloat('##,##0.00',PersRankHistEvLengthAttTotalVar);
  PersRankHistPointTotalField      .Caption := FormatFloat('##,##0.00',PersRankHistPointTotalVar);
  PersRankHistEvLengthTotalField   .Caption := FormatFloat('##,##0.00',PersRankHistEvLengthTotalVar);

  NIEVAttTotalField                .Caption := FormatFloat('##,##0',   NIEVAttTotalVar);
  NIEVAttPointAttTotalField        .Caption := FormatFloat('##,##0.00',NIEVAttPointAttTotalVar);
  NIEVAttEvLengthAttTotalField     .Caption := FormatFloat('##,##0.00',NIEVAttEvLengthAttTotalVar);

  PersCommHistTotalField           .Caption := FormatFloat('##,##0',   PersCommHistTotalVar);
  PersCommHistPointAttTotalField   .Caption := FormatFloat('##,##0.00',PersCommHistPointAttTotalVar);
  PersCommHistEvLengthAttTotalField.Caption := FormatFloat('##,##0.00',PersCommHistEvLengthAttTotalVar);
  PersCommHistPointTotalField      .Caption := FormatFloat('##,##0.00',PersCommHistPointTotalVar);
  PersCommHistEvLengthTotalField   .Caption := FormatFloat('##,##0.00',PersCommHistEvLengthTotalVar);

  TotalField                       .Caption := FormatFloat('##,##0',   NfirsAttTotalVar          + NIAttTotalVar         + SchdHistTotalVar             + NIPersInvTotalVar            + PersRankHistTotalVar            + NIEVAttTotalVar            + PersCommHistTotalVar);
  AttPointTotalField               .Caption := FormatFloat('##,##0.00',NfirsAttPointTotalVar     + NIAttPointTotalVar    + 0                            + NIPersInvPointAttTotalVar    + PersRankHistPointAttTotalVar    + NIEVAttPointAttTotalVar    + PersCommHistPointAttTotalVar);
  AttEvLengthTotalField            .Caption := FormatFloat('##,##0.00',NfirsAttEvLengthTotalVar  + NIAttEvLengthTotalVar + SchdHistShiftLengthTotalVar  + NIPersInvAttEvLengthTotalVar + PersRankHistEvLengthAttTotalVar + NIEVAttEvLengthAttTotalVar + 0);
  PointTotalField                  .Caption := FormatFloat('##,##0.00',NfirsMainPointTotalVar    + NIPointTotalVar       + 0                            + NIPersInvPointTotalVar       + PersRankHistPointTotalVar       + 0                          + 0);
  EvLengthTotalField               .Caption := FormatFloat('##,##0.00',NfirsMainEvLengthTotalVar + NIEvLengthTotalVar    + 0                            + NIPersInvEvLengthTotalVar    + PersRankHistEvLengthTotalVar    + 0                          + 0);
end;

end.
