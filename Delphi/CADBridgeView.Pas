unit CADBridgeView;

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
  OvcBase,
  AlpineMemo,
  StdCtrls,
  AlpineDateTime,
  Blink,
  ExtCtrls,
  Buttons,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  MySBox,
  NormalBase,
  AdvPanel,
  AlpinePanel,
  AdvGlowButton,
  AlpineGlowButton,
  Grids,
  db,
  AppLst,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  OrpheusWrapper,
  AlpineBase,
  htmlbtns,
  ImgList,
  AdvObj,
  AdvGroupBox;

type
  TCADBridgeViewForm = class(TAlpineBaseForm)
    OvcController1: TOvcController;
    img32: TImageList;
    AdvPanel3: TAdvPanel;
    Label20: TLabel;
    Label21: TLabel;
    RedNMXBridgeButton: TAlpineGlowButton;
    RedNMXBridgeStartDateField: TAlpineDateTime;
    RedNMXBridgeEndDateField: TAlpineDateTime;
    RedNMXBridgeBrowse: TAlpineTMSStringGrid;
    AdvPanel4: TAdvPanel;
    BridgeLeftTitle: TLabel;
    RedNMXBridgeCountField: TLabel;
    TitleImage: TImage;
    BridgeRightTitle: TLabel;
    AlpinePanel: TPanel;
    Label19: TLabel;
    RedNMXBridgeField: TAlpineLookup;
    ErieCheckBox: TRadioButton;
    PutnamCheckBox: TRadioButton;
    AmherstCheckBox: TRadioButton;
    HowellCheckBox: TRadioButton;
    MonroeCountyCheck: TRadioButton;
    NassauCountyCheck: TRadioButton;
    WestchesterCountyCheck: TRadioButton;
    procedure FormCreate(Sender: TObject);
    procedure RedNMXBridgeButtonClick(Sender: TObject);
  private
    { Pri vate declarations }
    procedure SetLabels;
    procedure ResetRedNMXBridgeBrowse;
  public
    { Public declarations }
  end;

Var
  CADBridgeViewForm : TCADBridgeViewForm;

implementation
uses Commonfunc,
     GenFunc,
     CommonVar,

     SortGridView;

{$R *.DFM}


procedure TCADBridgeViewForm.FormCreate(Sender: TObject);
begin
  TitleImage.Picture.Icon          := GetGlowImageIcon('REDNMX32');
  RedNMXBridgeField.Value          := mFireID;
  RedNMXBridgeStartDateField.Value := Now - 30;
  RedNMXBridgeEndDateField.Value   := Now;
  SetLabels;
  ResetRedNMXBridgeBrowse;
  AlpinePanel.Visible              := AlpineLogIn;
end;

procedure TCADBridgeViewForm.SetLabels;
begin
  If substr(mFireID,1,2) = '15' then
    ErieCheckBox.Checked := true
  else if substr(mFireID,1,2) = '13' then
    HowellCheckBox.Checked := true
  else if substr(mFireID,1,2) = '28' then
    MonroeCountyCheck.Checked := true
  else if substr(mFireID,1,2) = '30' then
    NassauCountyCheck.Checked := true
   else if substr(mFireID,1,2) = '60' then
    WestchesterCountyCheck.Checked := true;


  If ErieCheckBox.Checked then begin
    BridgeLeftTitle.Caption    := 'Erie County System';
    BridgeRightTitle.Caption   := 'Charms Interface';
    RedNMXBridgeButton.Caption := 'Query Erie County Charmes';
  end else if PutnamCheckBox.Checked then begin
    BridgeLeftTitle.Caption    := 'Putnam County System';
    BridgeRightTitle.Caption   := 'Putnam Bridge Interface';
    RedNMXBridgeButton.Caption := 'Query Putnam County Bridge';
  end else if AmherstCheckBox.Checked then begin
    BridgeLeftTitle.Caption    := 'Amherst Town Dispatch System';
    BridgeRightTitle.Caption   := 'Amherst Town Bridge Interface';
    RedNMXBridgeButton.Caption := 'Query Amherst Town Bridge';
  end else if HowellCheckBox.Checked then begin
    BridgeLeftTitle.Caption    := 'Howell Police Town Dispatch System';
    BridgeRightTitle.Caption   := 'Howell Police Bridge Interface';
    RedNMXBridgeButton.Caption := 'Query Howell Police Bridge';
  end else if MonroeCountyCheck.Checked then begin
    BridgeLeftTitle.Caption    := 'Monroe County Hexagon System';
    BridgeRightTitle.Caption   := 'Monroe County Hexagon Interface';
    RedNMXBridgeButton.Caption := 'Query Monroe County Bridge';
  end else if NassauCountyCheck.Checked then begin
    BridgeLeftTitle.Caption    := 'Nassau County FireCom';
    BridgeRightTitle.Caption   := 'Tyler New World Aegis Interface';
    RedNMXBridgeButton.Caption := 'Query Nassau County Bridge';
  end else if NassauCountyCheck.Checked then begin
    BridgeLeftTitle.Caption    := 'Westchester County System';
    BridgeRightTitle.Caption   := 'Westchester Brdige Interface';
    RedNMXBridgeButton.Caption := 'Query Westchester County Bridge';
  end;
end;

procedure TCADBridgeViewForm.RedNMXBridgeButtonClick(Sender: TObject);
Var RedNMXBridgeDatabase : TAlpineAdoConnection;
    ErrorString          : String;
begin
  inherited;
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
  else if WestchesterCountyCheck.Checked then
    RedNMXBridgeDatabase := TAlpineAdoConnection.Create(self,'ALPINESOFTWARE.DATABASE.WINDOWS.NET:WESTCHESTERNMX','WestchesterAdmin','2#2s@ZaktuAQj*yj',3);

  RedNMXBridgeDatabase.Connect(ErrorString);

  If RedNMXBridgeField.Text = '' then
    Open_Query(RedNMXBridgeDatabase,'DISPCALL',false,'SELECT DISPCALL.DISPCALLID, DISPCALL.FDID, NFIRSMAIN.INCNUM, DISPCALL.COUNTYNUM, DISPCALL.DATETIMEREC, DISPCALL.DATETIMEDISP, DISPCALL.DATETIMECREATE, ' +
                                             'DISPCALL.STRNUM, DISPCALL.STREET, DISPCALL.SITENAME, DISPCALL.CITY, DISPCALL.INCSTAT, DISPCALL.COUNTYNUM, ' +
                                             'DISPCALL.CROSS1, DISPCALL.CROSS2, DISPCALL.NARR ' +
                                             'FROM DISPCALL ' +
                                             'LEFT JOIN NFIRSMAIN ON (DISPCALL.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
                                             'WHERE DISPCALL.DATETIMEREC >= ' + AddExpr(FormatDateTime('mm/dd/yyyy',RedNMXBridgeStartDateField.Value)) + ' AND DISPCALL.DATETIMEREC <= ' + AddExpr(FormatDateTime('mm/dd/yyyy',RedNMXBridgeEndDateField.Value+1)) + ' ORDER BY DISPCALL.DATETIMEREC DESC')
  else
    Open_Query(RedNMXBridgeDatabase,'DISPCALL',false,'SELECT DISPCALL.DISPCALLID, DISPCALL.FDID, NFIRSMAIN.INCNUM, DISPCALL.COUNTYNUM, DISPCALL.DATETIMEREC, DISPCALL.DATETIMEDISP, DISPCALL.DATETIMECREATE, ' +
                                             'DISPCALL.STRNUM, DISPCALL.STREET, DISPCALL.SITENAME, DISPCALL.CITY, DISPCALL.INCSTAT, DISPCALL.COUNTYNUM, ' +
                                             'DISPCALL.CROSS1, DISPCALL.CROSS2, DISPCALL.NARR ' +
                                             'FROM DISPCALL ' +
                                             'LEFT JOIN NFIRSMAIN ON (DISPCALL.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
                                             'WHERE DISPCALL.DATETIMEREC >= ' + AddExpr(FormatDateTime('mm/dd/yyyy',RedNMXBridgeStartDateField.Value)) + ' AND DISPCALL.DATETIMEREC <= ' + AddExpr(FormatDateTime('mm/dd/yyyy',RedNMXBridgeEndDateField.Value+1)) + ' AND DISPCALL.FDID = ' + AddExpr(RedNMXBridgeField.Text) + ' ORDER BY DISPCALL.DATETIMEREC DESC');

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
  RedNMXBridgeBrowse.FixedCols   := 0;
  RedNMXBridgeCountField.Caption := 'CAD Interface Query.  Total Calls in Query: ' + IntToStr(RedNMXBridgeBrowse.RowCount);
  RedNMXBridgeDatabase.Free;
end;

procedure TCADBridgeViewForm.ResetRedNMXBridgeBrowse;
begin
  RedNMXBridgeBrowse.Clear;
  RedNMXBridgeBrowse.ClearColumns;
  RedNMXBridgeBrowse.ColCount       := 0;
  RedNMXBridgeBrowse.RowCount       := 0;
  RedNMXBridgeBrowse.FixedRowAlways := true;
  RedNMXBridgeBrowse.RowCount       := RedNMXBridgeBrowse.FixedRows;

  RedNMXBridgeBrowse.SetColumn('DISPCALLID',    'ID',                          050);
  RedNMXBridgeBrowse.SetColumn('FDID',          'Agency',                      050);
  RedNMXBridgeBrowse.SetColumn('INCNUM',        'Incident',                    080);
  RedNMXBridgeBrowse.SetColumn('CADNUM',        'County #',                    080);
  RedNMXBridgeBrowse.SetColumn('DATETIMEREC',   'Call Received on File',       120);
  RedNMXBridgeBrowse.SetColumn('DATETIMEDISP',  'Call Dispatched',             120);
  RedNMXBridgeBrowse.SetColumn('DATETIMECREATE','Call Created on Bridge',      120);
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

end.
