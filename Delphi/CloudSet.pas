unit CloudSet;
 
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
  ADODB, 
  AppLst,
  Tabledefinitions,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineLookGrid,
  CommonFunc,
  Gauges,
  AdvGroupBox,
  UWebGMapsCommon,
  UWebGMapsGeocoding,
  UWebGMaps,
  AdvObj,
  AlpinePanel;

type
  TCloudSetForm = class(TNormalBaseForm)
    ASCSetControl: TPageControl;
    FdidOwnerTab: TTabSheet;
    NassauTab: TTabSheet;
    AdvPanel1: TAdvPanel;
    QueryButton: TAlpineGlowButton;
    FireComBrowse: TAlpineTMSStringGrid;
    StartField: TAlpineDateTime;
    EndField: TAlpineDateTime;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CountField: TLabel;
    suffolkCountySpreadsheet: TOpenDialog;
    SysServiceEMailTab: TTabSheet;
    sysserviceemailbrowse: TAlpineBlockBrowse;
    openaccess: TOpenDialog;
    Label15: TLabel;
    ErieTab: TTabSheet;
    RedNMXBridgeBrowse: TAlpineTMSStringGrid;
    AdvPanel3: TAdvPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    RedNMXBridgeCountField: TLabel;
    RedNMXBridgeButton: TAlpineGlowButton;
    RedNMXBridgeStartDateField: TAlpineDateTime;
    RedNMXBridgeEndDateField: TAlpineDateTime;
    AdvPanel4: TAdvPanel;
    BridgeLeftTitle: TLabel;
    Label24: TLabel;
    ErieImage: TImage;
    RedNMXBridgeField: TAlpineLookup;
    BridgeRightTitle: TLabel;
    FireComFdidField: TAlpineLookup;
    imgPers: TImageList;
    AdvPanel9: TAdvPanel;
    Label32: TLabel;
    Label36: TLabel;
    NassauImage: TImage;
    Label37: TLabel;
    Gauge: TGauge;
    RedNMXCodeBrowse: TAlpineBlockBrowse;
    Panel1: TPanel;
    Panel0B: TAlpinePanel;
    FdidOwnerButton: TAlpineGlowButton;
    SysServiceWebButton: TAlpineGlowButton;
    SysServiceWebCountButton: TAlpineGlowButton;
    AlpinePanel8: TAlpinePanel;
    BusSpecButton: TAlpineGlowButton;
    AlpineGlowButton1: TAlpineGlowButton;
    SysSpecItemButton: TAlpineGlowButton;
    WebNFButton: TAlpineGlowButton;
    AlpinePanel1: TAlpinePanel;
    Label2: TLabel;
    OwnerField: TAlpineLookup;
    MCIButton: TAlpineGlowButton;
    ErieCheckBox: TRadioButton;
    PutnamCheckBox: TRadioButton;
    AmherstCheckBox: TRadioButton;
    HowellCheckBox: TRadioButton;
    WebCustButton: TAlpineGlowButton;
    MonroeCountyCheck: TRadioButton;
    BBMainTab: TTabSheet;
    AdvPanel8: TAdvPanel;
    Label9: TLabel;
    Label10: TLabel;
    BB_MainButton: TAlpineGlowButton;
    BB_MainLowerDate: TAlpineDateTime;
    BB_MainUpperDate: TAlpineDateTime;
    AdvPanel10: TAdvPanel;
    Label12: TLabel;
    Label13: TLabel;
    WebImage: TImage;
    AlpinePanel2: TAlpinePanel;
    BB_MainNarrField: TMemo;
    AlpinePanel3: TAlpinePanel;
    BB_MainBrowse: TAlpineTMSStringGrid;
    BottomSplitter: TSplitter;
    SysRepDescrButton: TAlpineGlowButton;
    NassauCountyCheck: TRadioButton;
    SuffolkCountyCheck: TRadioButton;
    WestchesterCountyCheck: TRadioButton;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
    procedure FresTestButtonClick(Sender: TObject);
    procedure RedNMXBridgeButtonClick(Sender: TObject);
    procedure RedNMXBridgeFieldEnter(Sender: TObject);
    procedure FireComFdidFieldEnter(Sender: TObject);
    procedure SysServiceWebCountButtonClick(Sender: TObject);
    procedure FdidOwnerButtonClick(Sender: TObject);
    procedure SysServiceWebButtonClick(Sender: TObject);
    procedure BusSpecButtonClick(Sender: TObject);
    procedure AlpineGlowButton1Click(Sender: TObject);
    procedure SysSpecItemButtonClick(Sender: TObject);
    procedure WebNFButtonClick(Sender: TObject);
    procedure FdidOwnerTabShow(Sender: TObject);
    procedure MCIButtonClick(Sender: TObject);
    procedure SysServiceEMailTabShow(Sender: TObject);
    procedure OwnerFieldEnter(Sender: TObject);
    procedure ErieCheckBoxClick(Sender: TObject);
    procedure PutnamCheckBoxClick(Sender: TObject);
    procedure AmherstCheckBoxClick(Sender: TObject);
    procedure HowellCheckBoxClick(Sender: TObject);
    procedure WebCustButtonClick(Sender: TObject);
    procedure MonroeCountyCheckClick(Sender: TObject);
    procedure BB_MainButtonClick(Sender: TObject);
    procedure BBMainTabShow(Sender: TObject);
    procedure BB_MainBrowseClick(Sender: TObject);
    procedure BB_MainBrowseCanDeleteRow(Sender: TObject; ARow: Integer; var CanDelete: Boolean);
    procedure SysRepDescrButtonClick(Sender: TObject);
    procedure NassauCountyCheckClick(Sender: TObject);
    procedure RedNMXBridgeFieldExit(Sender: TObject);
    procedure SuffolkCountyCheckClick(Sender: TObject);
    procedure WestchesterCountyCheckClick(Sender: TObject);
    procedure ErieTabShow(Sender: TObject);
  private
    { Private declarations }
    procedure SysServiceWebNewRecord(DataSet: TDataSet);
    procedure sysservicewebpagelistNewRecord(DataSet: TDataSet);
    function GetBridgeFdid: String;
    procedure ResetBB_Main;
    procedure ResetRedNMXBridgeBrowse;
    procedure QueryBridge;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure RedNMXCodeNewRecord(DataSet: TDataSet);
  end;

var
  CloudSetForm: TCloudSetForm;

implementation
uses GenFunc,
     encryptstr,
     Update,
     FdidOwner,
     ExitPass,
     FormFunc,
     gisfunc,
     SysServiceWeb,
     UserManEdit,
     DataSync,
     Search,
     ConvertTable,
     Main,
     SortGridView,
     ReportConversionHelpGuide,
     RestoreRecord,
     SysServiceWebPageList,
     CommonVar,
     WebNF,
     WebCust,
     RedNMXCode,
     SysSpecItem,
     SysSpecHead,
     SysSpecTitle;

{$R *.DFM}


class procedure TCloudSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TCloudSetForm.OwnerFieldEnter(Sender: TObject);
begin
  inherited;
  OwnerField.SQLExpr := 'SELECT FDIDOWNERID, FDID, DESCR, CADSYSTEM, CADFDID FROM FDIDOWNER WHERE INACTIVECUST = ' + AddExpr('N');
end;

procedure TCloudSetForm.FormDestroy(Sender: TObject);
begin
  inherited;
  Open_Query('ASCSET',false,'SELECT FDIDOWNER FROM ASCSET WHERE ASCSETID = 1');
  ASCFdid := GetField('ASCSET','FDIDOWNER').AsString;
  CloseApollo('ASCSET');
end;

procedure TCloudSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  ErieImage.Picture.Icon          := GetGlowImageIcon('REDNMX32');
  NassauImage.Picture.Icon        := GetGlowImageIcon('REDNMX32');
  WebImage.Picture.Icon           := GetGlowImageIcon('HELP32');
  NassauTab.TabVisible            := false;
end;

procedure TCloudSetForm.SysServiceWebButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('SYSSERVICEWEB',TSysServiceWebForm,TSysServiceWebForm.NewRecord,Nil);
end;

procedure TCloudSetForm.SysServiceWebCountButtonClick(Sender: TObject);
Var SysServiceWebCount : Integer;
begin
  inherited;
  If BooleanMessageDlg('Update Service Count for all Systems?') then begin
    Open_Query('FDIDOWNER',false,'SELECT FDIDOWNERID FROM FDIDOWNER');
    Gauge.MaxValue := A('FDIDOWNER').QueryRecCount;
    While Not A('FDIDOWNER').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      SysServiceWebCount := SqlTableRecCount('SELECT COUNT(*) FROM SYSSERVICEWEB WHERE FDIDOWNERID = ' + pkValue(GetField('FDIDOWNER','FDIDOWNERID').AsString));
      RunSQL('UPDATE FDIDOWNER SET SYSSERVICEWEBCOUNT = ' + IntToStr(SysServiceWebCount) + ' WHERE FDIDOWNERID = ' + pkValue(GetField('FDIDOWNER','FDIDOWNERID').AsString));
      Application.ProcessMessages;
      A('FDIDOWNER').Skip(1);
    end;
    CloseApollo('FDIDOWNER');
    ShowMessage('Done');
  end;
end;

procedure TCloudSetForm.SysServiceWebNewRecord(DataSet: TDataSet);
begin
end;

procedure TCloudSetForm.FdidOwnerButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('FDIDOWNER',TFdidOwnerForm,TFdidOwnerForm.NewRecord,Nil);
end;

procedure TCloudSetForm.FdidOwnerTabShow(Sender: TObject);
begin
  inherited;
  RedNMXCodeBrowse.ExplicitWhereClause := ' WHERE FIELDNAME = ' + AddExpr('CADSYSTEM');
  RedNMXCodeBrowse.Setup('REDNMXCODE',TRedNMXCodeForm,RedNMXCodeNewRecord);
end;

procedure TCloudSetForm.RedNMXCodeNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('TABLENAME').AsString := 'FDIDOWNER';
  DataSet.FieldbyName('FIELDNAME').AsString := 'CADSYSTEM';
  DataSet.FieldByname('ACTIVE').AsString    := 'Y';
end;

procedure TCloudSetForm.sysservicewebpagelistNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('receiveall').AsString := 'N';
end;

procedure TCloudSetForm.SysSpecItemButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('SYSSPECITEM',TSysSpecItemForm,TSysSpecItemForm.NewRecord,Nil);
end;

procedure TCloudSetForm.SysRepDescrButtonClick(Sender: TObject);
begin
  inherited;
  If BooleanMessageDlg('Update SYSREPDESCR Table?') then begin
    RunSql('TRUNCATE TABLE SYSREPDESCR');
    Open_query('SYSREPDESCR',True,'SELECT * FROM SYSREPDESCR');
    Open_Query('SYSREP',False,'SELECT SYSREPID,REPORTCODE,NARR FROM SYSREP');
    while not A('SYSREP').eof do begin
      If tdbField('SYSREP','REPORTCODE') <> '' then begin
        GetTable('SYSREPDESCR').Insert;
        GetField('SYSREPDESCR','REPORTCODE').AsString := GetField('SYSREP','REPORTCODE').AsString;
        GetField('SYSREPDESCR','NARR').AsString       := GetField('SYSREP','NARR').AsString;
        GetField('SYSREPDESCR','SYSREPID').AsString   := GetField('SYSREP','SYSREPID').AsString;
        A('SYSREPDESCR').Post(False);
      end;
      A('SYSREP').Skip(1);
    end;
    CloseApollo('SYSREPDESCR');
    CloseApollo('SYSREP');
  end;  
end;

procedure TCloudSetForm.SysServiceEMailTabShow(Sender: TObject);
begin
  inherited;
  SysServiceEMailBrowse.Setup('SYSSERVICEWEBPAGELIST',TSysServiceWebPageListForm,sysservicewebpagelistNewRecord);
end;

procedure TCloudSetForm.SaveButtonClick(Sender: TObject);
Var SQLString           : String;
    RecNo               : Integer;
    NassauDatabase      : TAlpineAdoConnection;
    FireTrackerDatabase : TAlpineAdoConnection;
    ErrorString         : String;
    ShootTime           : TDateTime;
    DateTimeAlarm       : TDateTime;
begin
  inherited;

  NassauDatabase := TAlpineAdoConnection.Create(self,'REDNMXSERVICES.COM:ALPINE','redalert','Build2012',3);
  NassauDatabase.Connect(ErrorString);
  If FireComFdidField.Text = '' then
    SQLString := 'SELECT * FROM MYINC WHERE DATESQL >= ' + AddExpr(FormatDateTime('mm/dd/yyyy',StartField.Value)) + ' AND DATESQL <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',EndField.Value+0.99999)) + ' ORDER BY DATESQL DESC, TIMESQL DESC'
  else
    SQLString := 'SELECT * FROM MYINC WHERE DATESQL >= ' + AddExpr(FormatDateTime('mm/dd/yyyy',StartField.Value)) + ' AND DATESQL <= ' + AddExpr(FormatDateTime('YYYY-MM-DD HH:NN:SS',EndField.Value+0.99999)) + ' AND FDID = ' + AddExpr(FireComFdidField.Text) + ' ORDER BY DATESQL DESC, TIMESQL DESC';
  Open_Query(NassauDatabase,'MYINC',false,SQLString);

  FireComBrowse.Clear;
  FireComBrowse.ClearColumns;
  FireComBrowse.ColCount       := 0;
  FireComBrowse.RowCount       := 0;
  FireComBrowse.FixedRowAlways := true;
  FireComBrowse.RowCount       := FireComBrowse.FixedRows;
  RecNo                        := 1;

  FireComBrowse.SetColumn('SPACE',      ' ',           001);
  FireComBrowse.SetColumn('RECNO',      '#',           060 );
  FireComBrowse.SetColumn('FDID',       'FDID',        060 );
  FireComBrowse.SetColumn('DATESQL',    'Date',        090);
  FireComBrowse.SetColumn('TIMESQL',    'Time',        075);
  FireComBrowse.SetColumn('PSTRNUM',    '###',         050);
  FireComBrowse.SetColumn('PSTREET',    'Street Name', 150);
  FireComBrowse.SetColumn('TOWN',       'Town',        090);
  FireComBrowse.SetColumn('CALLTYPE',   'Call Type',   100);
  FireComBrowse.SetColumn('SUBTYPE',    'Sub Type',    090);
  FireComBrowse.SetColumn('DATETIMEENT','Date Entered',110);
  FireComBrowse.SetColumn('ADDRESS',    'Address',     242);
  FireComBrowse.SetColumn('SHOOTTIME',  'Entry',       100);
  FireComBrowse.SetColumn('COUNTYNUM',  'County#',     350);

  while not A('MYINC').Eof do begin
    FireComBrowse.SetValue('SPACE',      '');
    FireComBrowse.SetValue('RECNO',      IntToStr(RecNo));
    FireComBrowse.SetValue('FDID',       tdbfield('MYINC','FDID' ));
    FireComBrowse.SetValue('DATESQL',    GetField('MYINC','DATESQL' ).AsString);
    FireComBrowse.SetValue('TIMESQL',    tdbfield('MYINC','TIMESQL' ));
    FireComBrowse.SetValue('PSTRNUM',    tdbfield('MYINC','PSTRNUM' ));
    FireComBrowse.SetValue('PSTREET',    tdbfield('MYINC','PSTREET' ) + #13#10 + tdbfield('MYINC','CROSSSQL' ));
    FireComBrowse.SetValue('TOWN',       tdbfield('MYINC','TOWN' ));
    FireComBrowse.SetValue('CALLTYPE',   tdbfield('MYINC','CALLTYPE' ));
    FireComBrowse.SetValue('SUBTYPE',    tdbfield('MYINC','SUBTYPE' ));
    FireComBrowse.SetValue('DATETIMEENT',FormatDateTime('MM/DD/YYYY HH:NN:SS',GetField('MYINC','DATETIMEENTERED' ).AsDateTime));
    FireComBrowse.SetValue('ADDRESS',    tdbfield('MYINC','ADDRESS' ) );
    FireComBrowse.SetValue('COUNTYNUM',  tdbfield('MYINC','COUNTYNUM' ) );

    DateTimeAlarm := StrToDate(GetField('MYINC','DATESQL' ).AsString) + GetRealTime(tdbfield('MYINC','TIMESQL'));
    ShootTime     := GetField('MYINC','DATETIMEENTERED' ).AsDateTime - DateTimeAlarm;

    FireComBrowse.SetValue('SHOOTTIME',  FormatDateTime('HH:NN:SS',ShootTime));
    A('MYINC').Skip(1);
    RecNo := RecNo + 1;
  end;
  CloseApollo('MYINC');
  FireComBrowse.FixedCols := 0;
  NassauDatabase.Free;
  Countfield.Caption      := IntToStr(FireComBrowse.RowCount);
end;

procedure TCloudSetForm.WebCustButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('WEBCUST',TWebcustForm,TWEBCustForm.NewRecord,Nil);
end;

procedure TCloudSetForm.WebNFButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('WEBNF',TWebNFForm,TWEBNFForm.NewRecord,Nil);
end;

procedure TCloudSetForm.FireComFdidFieldEnter(Sender: TObject);
begin
  inherited;
  FireComFdidField.SQLExpr := 'SELECT FDIDOWNERID, FDID, DESCR, CADFDID, CADSYSTEM FROM FDIDOWNER WHERE CADSYSTEM = ' + AddExpr('NASSAU');
end;

procedure TCloudSetForm.AlpineGlowButton1Click(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('SYSSPECHEAD',TSysSpecHeadForm,TSysSpecHeadForm.NewRecord,Nil);
end;

procedure TCloudSetForm.BusSpecButtonClick(Sender: TObject);
begin
  inherited;
  SortGridViewDriver('SYSSPECTITLE',TSysSpecTitleForm,TSysSpecTitleForm.NewRecord,Nil);
end;

procedure TCloudSetForm.ErieCheckBoxClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Erie County System';
  BridgeRightTitle.Caption   := 'Charms Interface';
  RedNMXBridgeButton.Caption := 'Query Erie County Charmes';
end;

procedure TCloudSetForm.ErieTabShow(Sender: TObject);
begin
  inherited;
  ResetRedNMXBridgeBrowse;
end;

procedure TCloudSetForm.PutnamCheckBoxClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Putnam County System';
  BridgeRightTitle.Caption   := 'Putnam Bridge Interface';
  RedNMXBridgeButton.Caption := 'Query Putnam County Bridge';
end;

procedure TCloudSetForm.AmherstCheckBoxClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Amherst Town Dispatch System';
  BridgeRightTitle.Caption   := 'Amherst Town Bridge Interface';
  RedNMXBridgeButton.Caption := 'Query Amherst Town Bridge';
end;

procedure TCloudSetForm.HowellCheckBoxClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Howell Police Town Dispatch System';
  BridgeRightTitle.Caption   := 'Howell Police Bridge Interface';
  RedNMXBridgeButton.Caption := 'Query Howell Police Bridge';
end;

procedure TCloudSetForm.MonroeCountyCheckClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Monroe County Hexagon System';
  BridgeRightTitle.Caption   := 'Monroe County Hexagon Interface';
  RedNMXBridgeButton.Caption := 'Query Monroe County Bridge';
end;

procedure TCloudSetForm.NassauCountyCheckClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Nassau County FireCom';
  BridgeRightTitle.Caption   := 'Tyler New World Aegis Interface';
  RedNMXBridgeButton.Caption := 'Query Nassau County Bridge';
end;

procedure TCloudSetForm.SuffolkCountyCheckClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Suffolk County Hexagon System';
  BridgeRightTitle.Caption   := 'Suffolk County Hexagon Interface';
  RedNMXBridgeButton.Caption := 'Query Suffolk County Bridge';
end;

procedure TCloudSetForm.WestchesterCountyCheckClick(Sender: TObject);
begin
  inherited;
  BridgeLeftTitle.Caption    := 'Westchester County Hexagon System';
  BridgeRightTitle.Caption   := 'Westchester County Hexagon Interface';
  RedNMXBridgeButton.Caption := 'Query Westchester County Bridge';
end;

function TCloudSetForm.GetBridgeFdid: String;
begin
   If ErieCheckBox.Checked then
     GetBridgeFdid := 'ERIE'
   else if PutnamCheckBox.Checked then
     GetBridgeFdid := 'PUTNAM'
   else if AmherstCheckBox.Checked then
     GetBridgeFdid := 'AMHERST'
   else if HowellCheckBox.Checked then
     GetBridgeFdid := 'HOWELLPD'
   else if MonroeCountyCheck.Checked then
     GetBridgeFdid := 'MONROE'
   else if NassauCountyCheck.Checked then
     GetBridgeFdid := 'NASSAU'
   else if SuffolkCountyCheck.Checked then
     GetBridgeFdid := 'SUFFOLK'
   else if WestchesterCountyCheck.Checked then
     GetBridgeFdid := 'WESTCHESTER'
end;

procedure TCloudSetForm.RedNMXBridgeButtonClick(Sender: TObject);
begin
  inherited;
  If (RedNMXBridgeStartDateField.Value = 0) or (RedNMXBridgeEndDateField.Value = 0) then
    ShowMessage('Enter the start and end date')
  else 
    QueryBridge;
end;

procedure TCloudSetForm.QueryBridge;
Var RedNMXBridgeDatabase : TAlpineAdoConnection;
    ErrorString          : String;
begin
  If ErieCheckBox.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:ERIECOUNTYCAD','ErieCountyAdmin','3Ri32020&#',3)
  else if PutnamCheckBox.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'REDNMXSERVICES1.COM:PUTNAMNMX','ALPINE','A_S_C',3)
  else if AmherstCheckBox.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:AmherstBridgeNMX','AmherstNMX','AmherstA_S_C',3)
  else if HowellCheckBox.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'SVR02.REDNMXSERVICES.COM:HOWELLPD','HOWELLPD','HOWPD',3)
  else if MonroeCountyCheck.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:MonroeCountyCADNMX','MONROECOUNTYADMIN','MC@dmin!28000',3)
  else if NassauCountyCheck.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:NASSAUCOUNTYCADNMX','NassauAdmin','ASC@ny3000o',3)
  else if SuffolkCountyCheck.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:SUFFOLKCOUNTYCADNMX','SuffolkAdmin','Su$$olk!52000NY',3)
  else if WestChesterCountyCheck.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:WESTCHESTERNMX','WestchesterAdmin','2#2s@ZaktuAQj*yj',3);

  RedNMXBridgeDatabase.Connect(ErrorString);

  If RedNMXBridgeField.Text = '' then
    Open_Query(RedNMXBridgeDatabase,'DISPCALL',false,'SELECT DISPCALL.DISPCALLID, DISPCALL.FDID, NFIRSMAIN.INCNUM, DISPCALL.COUNTYNUM, DISPCALL.DATETIMEREC, DISPCALL.DATETIMEDISP, DISPCALL.DATETIMECREATE, ' +
                                             'DISPCALL.STRNUM, DISPCALL.STREET, DISPCALL.SITENAME, DISPCALL.CITY, DISPCALL.INCSTAT, DISPCALL.COUNTYNUM, ' +
                                             'DISPCALL.CROSS1, DISPCALL.CROSS2, DISPCALL.NARR ' +
                                             'FROM DISPCALL ' +
                                             'LEFT JOIN NFIRSMAIN ON (DISPCALL.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
                                             'WHERE ' + BuildSQLAlpineDate('DISPCALL.DATETIMEREC',RedNMXBridgeStartDateField.Value,RedNMXBridgeEndDateField.Value) + ' ORDER BY DISPCALL.DATETIMEREC DESC')
  else
    Open_Query(RedNMXBridgeDatabase,'DISPCALL',false,'SELECT DISPCALL.DISPCALLID, DISPCALL.FDID, NFIRSMAIN.INCNUM, DISPCALL.COUNTYNUM, DISPCALL.DATETIMEREC, DISPCALL.DATETIMEDISP, DISPCALL.DATETIMECREATE, ' +
                                             'DISPCALL.STRNUM, DISPCALL.STREET, DISPCALL.SITENAME, DISPCALL.CITY, DISPCALL.INCSTAT, DISPCALL.COUNTYNUM, ' +
                                             'DISPCALL.CROSS1, DISPCALL.CROSS2, DISPCALL.NARR ' +
                                             'FROM DISPCALL ' +
                                             'LEFT JOIN NFIRSMAIN ON (DISPCALL.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
                                             'WHERE DISPCALL.FDID = ' + AddExpr(RedNMXBridgeField.Text) + ' AND ' + BuildSQLAlpineDate('DISPCALL.DATETIMEREC',RedNMXBridgeStartDateField.Value,RedNMXBridgeEndDateField.Value) + ' ORDER BY DISPCALL.DATETIMEREC DESC');
  ResetRedNMXBridgeBrowse;

  while not A('DISPCALL').Eof do begin
    RedNMXBridgeBrowse.SetValue('DISPCALLID',    GetField('DISPCALL', 'DISPCALLID' ).AsString);
    RedNMXBridgeBrowse.SetValue('FDID',          tdbfield('DISPCALL', 'FDID' ));
    RedNMXBridgeBrowse.SetValue('INCNUM',        tdbfield('DISPCALL', 'INCNUM'));
    RedNMXBridgeBrowse.SetValue('CADNUM',        tdbfield('DISPCALL', 'COUNTYNUM'));
    RedNMXBridgeBrowse.SetValue('DATETIMEREC',   GetField('DISPCALL', 'DATETIMEREC').AsString);
    RedNMXBridgeBrowse.SetValue('DATETIMEDISP',  GetField('DISPCALL', 'DATETIMEDISP').AsString);
    RedNMXBridgeBrowse.SetValue('DATETIMECREATE',GetField('DISPCALL', 'DATETIMECREATE').AsString);
    RedNMXBridgeBrowse.SetValue('RESPONSELENGTH',FormatDateTime('HH:NN:SS',GetField('DISPCALL','DATETIMEREC').AsDateTime - GetField('DISPCALL','DATETIMECREATE').AsDateTime));
    RedNMXBridgeBrowse.SetValue('STRNUM',        tdbfield('DISPCALL', 'STRNUM' ));
    RedNMXBridgeBrowse.SetValue('STREET',        tdbfield('DISPCALL', 'STREET' ));
    RedNMXBridgeBrowse.SetValue('SITENAME',      tdbfield('DISPCALL', 'SITENAME' ));
    RedNMXBridgeBrowse.SetValue('CITY',          tdbfield('DISPCALL', 'CITY' ));
    RedNMXBridgeBrowse.SetValue('INCSTAT',       tdbfield('DISPCALL', 'INCSTAT' ));
    RedNMXBridgeBrowse.SetValue('COUNTYNUM',     tdbfield('DISPCALL', 'COUNTYNUM' ));
    RedNMXBridgeBrowse.SetValue('CROSS1',        tdbfield('DISPCALL', 'CROSS1' ));
    RedNMXBridgeBrowse.SetValue('CROSS2',        tdbfield('DISPCALL', 'CROSS2' ));
    RedNMXBridgeBrowse.SetValue('NARR',          GetField('DISPCALL', 'NARR' ).AsString);
    A('DISPCALL').Skip(1);
  end;
  CloseApollo('DISPCALL');
  RedNMXBridgeBrowse.FixedCols      := 0;

  RedNMXBridgeCountField.Caption := 'Total Calls in Query: ' + IntToStr(RedNMXBridgeBrowse.RowCount);
  RedNMXBridgeDatabase.Free;
end;

procedure TCloudSetForm.ResetRedNMXBridgeBrowse;
begin
  RedNMXBridgeBrowse.Clear;
  RedNMXBridgeBrowse.ClearColumns;
  RedNMXBridgeBrowse.ColCount       := 0;
  RedNMXBridgeBrowse.RowCount       := 0;
  RedNMXBridgeBrowse.FixedRowAlways := true;
  RedNMXBridgeBrowse.RowCount       := RedNMXBridgeBrowse.FixedRows;

  RedNMXBridgeBrowse.SetColumn('DISPCALLID',    'ID',                          050);
  RedNMXBridgeBrowse.SetColumn('FDID',          'Agency',                      050);
  RedNMXBridgeBrowse.SetColumn('INCNUM',        'Incident',                    IIF(MonroeCountyCheck.Checked,000,080));
  RedNMXBridgeBrowse.SetColumn('CADNUM',        'County #',                    080);
  RedNMXBridgeBrowse.SetColumn('DATETIMEREC',   'Call Received (on file)',     120);
  RedNMXBridgeBrowse.SetColumn('DATETIMEDISP',  'Call Dispatched',             120);
  RedNMXBridgeBrowse.SetColumn('DATETIMECREATE','Call Created',                120);
  RedNMXBridgeBrowse.SetColumn('RESPONSELENGTH','Transfer Length in Minutes',  100);
  RedNMXBridgeBrowse.SetColumn('STRNUM',        '###',                         050);
  RedNMXBridgeBrowse.SetColumn('STREET',        'Street Name',                 140);
  RedNMXBridgeBrowse.SetColumn('SITENAME',      'Occupant',                    100);
  RedNMXBridgeBrowse.SetColumn('CITY',          'City',                        100);
  RedNMXBridgeBrowse.SetColumn('INCSTAT',       'Status',                      100);
  RedNMXBridgeBrowse.SetColumn('COUNTYNUM',     'County#',                     120);
  RedNMXBridgeBrowse.SetColumn('CROSS1',        'Cross 1',                     120);
  RedNMXBridgeBrowse.SetColumn('CROSS2',        'Cross 2',                     120);
  RedNMXBridgeBrowse.SetColumn('NARR',          'Narrative',                   600);
end;

procedure TCloudSetForm.RedNMXBridgeFieldEnter(Sender: TObject);
begin
  inherited;
  RedNMXBridgeField.SQLExpr := 'SELECT FDIDOWNERID, FDID, DESCR, CADFDID, CADSYSTEM FROM FDIDOWNER WHERE CADSYSTEM = ' + AddExpr(GetBridgeFdid);
end;

procedure TCloudSetForm.RedNMXBridgeFieldExit(Sender: TObject);
begin
  inherited;
  Open_Query('FDIDOWNER',false,'SELECT FDID FROM FDIDOWNER WHERE CADFDID = ' + AddExpr(RedNMXBridgeField.Value));
  If Not (alltrim(RedNMXBridgeField.Value) = '') and A('FDIDOWNER').RecordsExist then
    RedNMXBridgeField.Value := substr(tdbfield('FDIDOWNER','FDID'),3,5);
  CloseApollo('FDIDOWNER');
end;

procedure TCloudSetForm.FresTestButtonClick(Sender: TObject);
Var FresDatabase  : TAlpineAdoConnection;
    ErrorString   : String;
    DispCallID    : String;
begin
  inherited;
  FresDatabase := TAlpineAdoConnection.Create(self,'alpinesoftware.database.windows.net:SUFFOLKCOUNTYCADNMX','SuffolkAdmin','Su$$olk!52000NY',3);
  FresDatabase.Connect(ErrorString);

  Open_Query(FresDatabase,'DISPCALL',true,'SELECT * FROM DISPCALL WHERE 1=2');

  A('DISPCALL').Append;
  Getfield('DISPCALL','FDID').AsString           := RedNMXBridgeField.Text;
  Getfield('DISPCALL','INCSTAT').AsString        := 'OPEN';
  Getfield('DISPCALL','DATETIMEDISP').AsDateTime := Now;
  Getfield('DISPCALL','STRNUM').AsString         := '100';
  Getfield('DISPCALL','STATE').AsString          := 'NY';
  Getfield('DISPCALL','ALARMNUM').AsString       := '1';
  Getfield('DISPCALL','COUNTYNUM').AsString      := 'CCTEST';
  Getfield('DISPCALL','BOXNUM').AsString         := 'TEST';
  Getfield('DISPCALL','STREET').AsString         := 'STREET NAME';
  Getfield('DISPCALL','DATETIMEREC').AsDateTime  := Now;

  Getfield('DISPCALL','CROSS1').AsString         := 'CROSS STREET 1';
  Getfield('DISPCALL','CROSS2').AsString         := 'CROSS STREET 2';
  Getfield('DISPCALL','SITENAME').AsString       := 'ALPINE OFFICE LOCATION';
  Getfield('DISPCALL','CITY').AsString           := 'ROCHESTER';
  Getfield('DISPCALL','CALLNAME').AsString       := 'ALPINE SOFTWARE CORP';
  Getfield('DISPCALL','CADCALLTYPEID').AsString  := '27';
  Getfield('DISPCALL','CADSUBTYPEID').AsString   := '896';
  A('DISPCALL').Post;

  CloseApollo('DISPCALL');
  FresDatabase.Free;

  RedNMXBridgeButtonClick(self);
  ShowMessage('Test Call Generated');
end;

procedure TCloudSetForm.MCIButtonClick(Sender: TObject);
begin
  inherited;
  MainForm.MCIServerChoiceClick(self);
end;

procedure TCloudSetForm.BBMainTabShow(Sender: TObject);
begin
  inherited;
  ResetBB_Main;
  BB_MainLowerDate.Value := Now - 30;
  BB_MainUpperDate.Value := Now + 1;
end;


procedure TCloudSetForm.BB_MainButtonClick(Sender: TObject);
Var AlpineWebDatabase : TAlpineAdoConnection;
    ErrorString       : String;
begin
  inherited;
  AlpineWebDatabase := TAlpineAdoConnection.Create(self,'REDNMX.COM:ALPINEWEB','ALPINE','A_S_C',4);
  AlpineWebDatabase.Connect(ErrorString);
  Open_Query(AlpineWebDatabase,'BB_MAIN',false,'SELECT * FROM BB_MAIN WHERE ' + 
                                               BuildSQLAlpineDate('BB_MAIN.DATECREATED',BB_MainLowerDate.Value,BB_MainUpperDate.Value) + ' ' +
                                               'ORDER BY DATECREATED DESC');
  ResetBB_Main;

  while not A('BB_MAIN').Eof do begin
    BB_MainBrowse.SetValue('MAIN_ID',    tdbfield('BB_MAIN', 'MAIN_ID' ));
    BB_MainBrowse.SetValue('FDID',       tdbfield('BB_MAIN', 'FDID' ));
    BB_MainBrowse.SetValue('DATECREATED',GetField('BB_MAIN', 'DATECREATED').AsString);
    BB_MainBrowse.SetValue('MAIN_TITLE', tdbfield('BB_MAIN', 'MAIN_TITLE' ));
    BB_MainBrowse.SetValue('AUTHOR',     tdbfield('BB_MAIN', 'AUTHOR' ));
    BB_MainBrowse.SetValue('EMAIL',      tdbfield('BB_MAIN', 'EMAIL' ));
    BB_MainBrowse.SetValue('NARR',       GetField('BB_MAIN', 'NARR').AsString);
    A('BB_MAIN').Skip(1);
  end;
  CloseApollo('BB_MAIN');
  AlpineWebDatabase.Free;
end;

procedure TCloudSetForm.ResetBB_Main;
begin
  BB_MainBrowse.Clear;
  BB_MainBrowse.ClearColumns;
  BB_MainBrowse.ColCount       := 0;
  BB_MainBrowse.RowCount       := 0;
  BB_MainBrowse.FixedRowAlways := true;
  BB_MainBrowse.RowCount       := BB_MainBrowse.FixedRows;

  BB_MainBrowse.SetColumn('MAIN_ID',    'MAIN_ID', 070);
  BB_MainBrowse.SetColumn('FDID',       'Agency',  050);
  BB_MainBrowse.SetColumn('DATECREATED','Entered', 100);
  BB_MainBrowse.SetColumn('MAIN_TITLE', 'Subject', 200);
  BB_MainBrowse.SetColumn('AUTHOR',     'Author',  150);
  BB_MainBrowse.SetColumn('EMAIL',      'Email',   150);
  BB_MainBrowse.SetColumn('NARR',       'Comments',300);
end;

procedure TCloudSetForm.BB_MainBrowseCanDeleteRow(Sender: TObject; ARow: Integer; var CanDelete: Boolean);
Var AlpineWebDatabase : TAlpineAdoConnection;
    ErrorString       : String;
    Main_ID           : String;
begin
  inherited;
  Main_ID := BB_MainBrowse.GetValue('MAIN_ID');
  If BooleanMessageDlg('Delete record ' + Main_ID) then begin
    AlpineWebDatabase := TAlpineAdoConnection.Create(self,'REDNMX.COM:ALPINEWEB','ALPINE','A_S_C',4);
    AlpineWebDatabase.Connect(ErrorString);
    RunSQL(AlpineWebDatabase,'DELETE FROM BB_MAIN WHERE MAIN_ID = ' + pkvalue(Main_ID));
    AlpineWebDatabase.Free;
    CanDelete := true;
  end else
    CanDelete := false;
end;

procedure TCloudSetForm.BB_MainBrowseClick(Sender: TObject);
begin
  inherited;
  BB_MainNarrField.Text := BB_MainBrowse.GetValue('NARR');
end;

end.
