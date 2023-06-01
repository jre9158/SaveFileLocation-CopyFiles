unit DispCallSummRep;
 
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
  QRXLSXFilt;

type
  TDispCallSummRepForm = class(TAlpineBaseSummaryReportForm)
    DispCallBand: TQRBand;
    IncNumField: TQRLabel;
    TitleBox: TQRLabel;
    IncNumLabel: TQRLabel;
    DeptNameField: TQRLabel;
    QRShape1: TQRShape;
    FdidLabel: TQRLabel;
    FdidField: TQRLabel;
    BodyBand: TQRChildBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel12: TQRLabel;
    DateTimeRecField: TQRLabel;
    AddressField: TQRLabel;
    SitenameField: TQRLabel;
    QRLabel14: TQRLabel;
    DispCallTypeField: TQRLabel;
    QRLabel15: TQRLabel;
    DispSubTypeField: TQRLabel;
    QRLabel16: TQRLabel;
    CrossField: TQRLabel;
    QRLabel17: TQRLabel;
    UserNameField: TQRLabel;
    QRLabel3: TQRLabel;
    CallField: TQRLabel;
    QRLabel6: TQRLabel;
    DispBoxCodeField: TQRLabel;
    LocNarrBand: TQRChildBand;
    LocNarrField: TQRLabel;
    QRLabel5: TQRLabel;
    NarrBand: TQRChildBand;
    NarrField: TQRLabel;
    QRLabel1: TQRLabel;
    DispHistHeader: TQRBand;
    QRLabel13: TQRLabel;
    DispHistBand: TQRSubDetail;
    NoteNarrBand: TQRChildBand;
    NoteNarrField: TQRLabel;
    NFIRSAppHeader: TQRBand;
    InvNumLabel: TQRLabel;
    QRLabel2: TQRLabel;
    headerhorzline: TQRShape;
    LeftLineHeader: TQRShape;
    NFIRSAppBand: TQRSubDetail;
    LeftLine: TQRShape;
    UnitNumField: TQRLabel;
    DispDescrBand: TQRChildBand;
    DispDescrField: TQRLabel;
    ApparatusTimeFooter: TQRBand;
    QRLabel4: TQRLabel;
    FootNoteBand: TQRSubDetail;
    FootNoteNarr: TQRLabel;
    FootNoteNumberField: TQRLabel;
    DispcallDispositionField: TQRLabel;
    QRLabel20: TQRLabel;
    mainlabel: TQRLabel;
    CodeLabel: TQRLabel;
    LocationLabel: TQRLabel;
    TQRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    DateTimeStatField: TQRLabel;
    UnitNum2Field: TQRLabel;
    DescrField: TQRLabel;
    TimeAddressField: TQRLabel;
    secidfield: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DispCallBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure DispHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure NFIRSAppBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FootNoteBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
    procedure FootNoteBandNeedData(Sender: TObject; var MoreData: Boolean);
  private
    { Private declarations }
    FootNoteList   : TStringList;
    FootNoteCount  : Integer;
    DispCallTable  : TApolloData;
    DispHistTable  : TApolloData;
    NfirsMainTable : TApolloData;
    function CheckRespFdid: Boolean;
  public
    { Public declarations }
    function SelectStatement: string; override;
    procedure CreateTimeColumn;
    procedure DispTimePrint(Sender: TObject; var Value: string);
    procedure FootNotePrint(sender: TObject; var Value: string);
  end;

var
  DispCallSummRepForm: TDispCallSummRepForm;

implementation
uses GenFunc,
     SecSet,
     FormFunc,
     CommonFunc,
     DispCond,
     SysSet,
     SysRepMan,
     CommonDispVar,
     CommonDisp;

{$R *.DFM}

procedure TDispCallSummRepForm.FormCreate(Sender: TObject);
Var Form   : TForm;
    SQLVar : String;
begin
  CreateTimeColumn;
  FootNoteList   := TStringList.Create;
  FootNoteCount  := 0;

  Form           := GetFormOfType(TDispCondForm);
  appendtolog(sql);
  DispCallTable  := Open_Query(Sql);
  DispHistTable  := Open_Query('SELECT * FROM DISPHIST WHERE 1=2');
  SQLVar         := 'SELECT NFIRSMAINID, DISPCALLID, FDID FROM NFIRSMAIN WHERE ' + BuildSQLAlpineDate('NFIRSMAIN.DATETIMEALARM',InitialDate,FinalDate) + ' ORDER BY NFIRSMAIN.DISPCALLID';
  NfirsMainTable := Open_Query(SQLVar);

  Open_Query('DISPHISTUNITTIME',false,'SELECT DISPHIST.DISPSTATCODEID DISPSTATCODEID, DISPHIST.NARR NARR, DISPHIST.UNITNUM UNITNUM, DISPHIST.DATETIMESTAT DATETIMESTAT FROM DISPHIST ' +
                                      'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                                      'WHERE 1=2');

  Open_Query('NFIRSAPPREP2',false,'SELECT NFIRSAPP.UNITNUM UNITNUM, NFIRSAPPDISP.DESCR DISPDESCR FROM NFIRSAPP ' +
                                 'LEFT JOIN NFIRSAPPDISP ON (NFIRSAPP.NFIRSAPPDISPID = NFIRSAPPDISP.NFIRSAPPDISPID) ' +
                                 'WHERE 1=2');

  Open_Query('NFIRSAPPREP',false,'SELECT DISTINCT UNITNUM FROM DISPHIST WHERE 1=2');

  BaseReport.DataSet   := DispCallTable.DataSource.DataSet;
  DispHistBand.DataSet := DispHistTable.DataSource.DataSet;
  NFIRSAppBand.DataSet := A('NFIRSAPPREP').DataSource.DataSet;
end;

procedure TDispCallSummRepForm.DispHistBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  NoteNarrBand.Enabled := false;
  If (GetField(DispHistTable,'SORTORD').AsInteger > 0) and Not (tdbfield(DispHistTable,'UNITNUM') = '') then
    PrintBand := false
  else begin
    DateTimeStatField.Caption := FormatDateTime('HH:NN:SS',GetField(DispHistTable,'DATETIMESTAT').AsDateTime);
    DescrField.Caption        := tdbfield(DispHistTable,'DESCR');
    UnitNum2Field.Caption     := tdbfield(DispHistTable,'UNITNUM');
    NoteNarrField.Caption     := GetField(DispHistTable,'NARR').AsString;
    TimeAddressField.Caption  := GetField(DispHistTable,'ADDRESS').AsString;
    NoteNarrBand.Enabled      := Not (GetField(DispHistTable,'NARR').AsString = '');

    if tdbfield(DispHistTable,'USERNAME')='' then
      SecidField.Caption      := tdbField(DispHistTable,'LOGINCODE')
    else
      SecidField.Caption      := tdbField(DispHistTable,'USERNAME');

  end;
end;


function TDispCallSummRepForm.CheckRespFdid: Boolean;
begin
  result := True;
end;

procedure TDispCallSummRepForm.DispCallBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
Var PrintBandVar : Boolean;
begin
  inherited;
  PrintBandVar                := CheckRespFdid;
  PrintBand                   := PrintBandVar;
  DispCallBand.ForceNewPage   := PrintBandVar;
  BodyBand.Enabled            := PrintBandVar;
  LocNarrBand.Enabled         := PrintBandVar;
  NarrBand.Enabled            := PrintBandVar;
  DispHistHeader.Enabled      := PrintBandVar;
  DispHistBand.Enabled        := PrintBandVar;
  NoteNarrBand.Enabled        := PrintBandVar;

  NFIRSAppHeader.Enabled      := PrintBandVar;
  NFIRSAppBand.Enabled        := PrintBandVar;
  DispDescrBand.Enabled       := PrintBandVar;
  ApparatusTimeFooter.Enabled := PrintBandVar;
  FootNoteBand.Enabled        := PrintBandVar;
  AlpineBaseFooter.Enabled    := PrintBandVar;

  FootNoteCount               := 0;
  FootNoteList.Clear;


  If PrintBandVar then begin
  TitleBox.Caption            := SqlLookUp(tdbfield(DispCallTable,'NFIRSMAINFDID'),'FDID','FDID','DEPTNAME') + ': Dispatch Summary';
  DeptNameField.Caption       := FireDept;

  If MultiFdid then begin
    IncNumLabel.Caption       := 'Primary Incident';
    IncNumField.Caption       := substr(dbfield(DispCallTable,'INCNUM'),1,4) + '-' + substr(dbfield(DispCallTable,'INCNUM'),5,6);
    FdidLabel.Caption         := 'Primary Agency';
    FdidField.Caption         := tdbfield(DispCallTable,'FDID');
    Open_Query('NFIRSMAIN',false,'SELECT INCNUM, FDID FROM NFIRSMAIN WHERE NFIRSMAIN.DISPCALLID = ' + PkValue(GetField(DispCallTable,'DISPCALLID').AsString));
    If (A('NFIRSMAIN').QueryRecCount > 1) then begin
      IncNumLabel.Caption       := 'Primary Incident' + #10#13 + 'Other Incidents';
      FdidLabel.Caption         := 'Primary Agency' + #10#13 + 'Secondary Agencies';
    end;
    While Not A('NFIRSMAIN').Eof do begin
      If tdbfield(DispCallTable,'FDID') <> tdbfield('NFIRSMAIN','FDID') then begin
        IncNumField.Caption       := IncNumField.Caption + #10#13 + substr(dbfield('NFIRSMAIN','INCNUM'),1,4) + '-' + substr(dbfield('NFIRSMAIN','INCNUM'),5,6);
        FdidField.Caption         := FdidField.Caption   + #10#13 + tdbfield('NFIRSMAIN','FDID');
      end;
      A('NFIRSMAIN').Skip(1);
    end;
    CloseApollo('NFIRSMAIN');

  end else begin
    IncNumLabel.Caption       := 'Incident #';
    IncNumField.Caption       := substr(dbfield(DispCallTable,'INCNUM'),1,4) + '-' + substr(dbfield(DispCallTable,'INCNUM'),5,6);
    FdidLabel.Enabled         := false;
    FdidField.Enabled         := false;
  end;

  DateTimeRecField.Caption  := FormatDateTime('MM/DD/YYYY  HH:NN:SS',GetField(DispCallTable,'DATETIMEREC').AsDateTime);
  NarrField.Caption         := GetField(DispCallTable,'NARR').AsString;
  LocNarrField.Caption      := GetField(DispCallTable,'LOCNARR').AsString;
  AddressField.Caption      := GetField(DispCallTable,'ADDRESS').AsString;
  CrossField.Caption        := tdbfield(DispCallTable,'CROSS1') + IIf(tdbfield(DispCallTable,'CROSS2') = '','',' and ' + tdbfield(DispCallTable,'CROSS2'));
  SitenameField.Caption     := GetField(DispCallTable,'SITENAME').AsString;
  DispCallTypeField.Caption := GetField(DispCallTable,'DISPCALLTYPE').AsString;
  DispSubTypeField.Caption  := GetField(DispCallTable,'DISPSUBTYPE').AsString;
  DispcallDispositionField.Caption  := SqlLookup(GetField(DispCallTable,'DISPCALLDISPOSITIONID').AsString,'DISPCALLDISPOSITIONID','DISPCALLDISPOSITION','DESCR');

  UserNameField.Caption     := GetField(DispCallTable,'USERNAME').AsString;
  CallField.Caption         := tdbfield(DispCallTable,'CALLNAME') + ' ' + tdbfield(DispCallTable,'CALLPHONE') + IIf(tdbfield(DispCallTable,'CALLADDR') = '','',#10#13 + tdbfield(DispCallTable,'CALLADDR'));
  DispBoxCodeField.Caption  := tdbfield(DispCallTable,'DISPBOXCODE');


  DispHistTable.UpdateSQL('SELECT SEC.LOGINCODE,SEC.USERNAME,DISPHIST.ADDRESS ADDRESS, DISPHIST.NARR NARR, DISPHIST.UNITNUM UNITNUM, DISPHIST.DATETIMESTAT DATETIMESTAT, DISPSTATCODE.SORTORD SORTORD, DISPSTATCODE.DESCR DESCR FROM DISPHIST ' +
                          'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                          'LEFT JOIN SEC ON (DISPHIST.SECID = SEC.SECID) '+
                          'WHERE DISPCALLID = ' + PkValue(GetField(DispCallTable,'DISPCALLID').AsString) + ' ORDER BY DATETIMESTAT');

  A('DISPHISTUNITTIME').UpdateSQL('SELECT DISPHIST.DISPSTATCODEID DISPSTATCODEID, DISPHIST.NARR NARR, DISPHIST.UNITNUM UNITNUM, DISPHIST.DATETIMESTAT DATETIMESTAT FROM DISPHIST ' +
                                  'LEFT JOIN DISPSTATCODE ON (DISPHIST.DISPSTATCODEID = DISPSTATCODE.DISPSTATCODEID) ' +
                                  'WHERE DISPCALLID = ' + PkValue(GetField(DispCallTable,'DISPCALLID').AsString) + ' AND DISPSTATCODE.SORTORD > 0 ORDER BY DATETIMESTAT');

  A('NFIRSAPPREP2').UpdateSQL('SELECT NFIRSAPP.UNITNUM UNITNUM, NFIRSAPPDISP.DESCR DISPDESCR FROM NFIRSAPP ' +
                                 'LEFT JOIN NFIRSAPPDISP ON (NFIRSAPP.NFIRSAPPDISPID = NFIRSAPPDISP.NFIRSAPPDISPID) ' +
                                 'WHERE DISPCALLID = ' + PkValue(GetField(DispCallTable,'DISPCALLID').AsString) + ' ORDER BY UNITNUM');

  A('NFIRSAPPREP').UpdateSQL('SELECT DISTINCT UNITNUM FROM DISPHIST WHERE DISPCALLID = '+ PkValue(GetField(DispCallTable,'DISPCALLID').AsString) +
                             ' AND UNITNUM <> '''' AND UNITNUM IS NOT NULL ORDER BY UNITNUM');

  end;                           
end;

procedure TDispCallSummRepForm.FormDestroy(Sender: TObject);
begin
  DispCallTable.Free;
  DispHistTable.Free;
  NfirsMainTable.Free;
  CloseApollo('DISPHISTUNITTIME');
  CloseApollo('NFIRSAPPREP');
  CloseApollo('NFIRSAPPREP2');
end;

procedure TDispCallSummRepForm.NFIRSAppBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  UnitNumField.Caption   := tdbfield('NFIRSAPPREP','UNITNUM');
  DispDescrBand.Enabled  := False;
  if A('NFIRSAPPREP2').ExactQueryLocate(['UNITNUM'],[tdbfield('NFIRSAPPREP','UNITNUM')]) then begin
    DispDescrBand.Enabled  := Not (tdbfield('NFIRSAPPREP2','DISPDESCR') = '');
    DispDescrField.Caption := 'Disposition: ' + tdbfield('NFIRSAPPREP2','DISPDESCR');
  end;
end;

function TDispCallSummRepForm.SelectStatement: string;
begin
  result := 'SELECT DISPCALL.DISPCALLID, DISPCALL.DATETIMEREC DATETIMEREC, DISPCALL.NARR NARR, DISPCALL.ADDRESS ADDRESS, DISPCALL.SITENAME SITENAME, ' +
            'DISPCALL.LOCNARR, DISPCALL.CROSS1 CROSS1, DISPCALL.CROSS2 CROSS2, DISPCALL.FDID FDID, ' +
            'DISPCALL.CALLNAME CALLNAME, DISPCALL.CALLPHONE CALLPHONE, DISPCALL.CALLADDR CALLADDR, ' +
            'DISPCALLTYPE.DESCR DISPCALLTYPE, DISPSUBTYPE.DESCR DISPSUBTYPE, DISPCALLDISPOSITIONID, ' +
            'SEC.USERNAME USERNAME, ' +
            'DISPBOX.CODE DISPBOXCODE, ' +
            'NFIRSMAIN.INCNUM INCNUM, NFIRSMAIN.FDID NFIRSMAINFDID FROM DISPCALL ' +
            'LEFT JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
            'LEFT JOIN DISPSUBTYPE ON (DISPCALL.DISPSUBTYPEID = DISPSUBTYPE.DISPSUBTYPEID) ' +
            'LEFT JOIN SEC ON (DISPCALL.SECID = SEC.SECID) ' +
            'LEFT JOIN DISPBOX ON (DISPBOX.DISPBOXID = DISPCALL.DISPBOXID) ' +
            'LEFT JOIN NFIRSMAIN ON (DISPCALL.FDID = NFIRSMAIN.FDID AND DISPCALL.DISPCALLID = NFIRSMAIN.DISPCALLID) ';
end;

procedure TDispCallSummRepForm.CreateTimeColumn;
var DispTimeLabel : TQRLabel;
    FootNoteField : TQRLabel;
    DispTimeField : TQRLabel;
    RepStatWidth  : Integer;
    i             : Integer;
    BandShape     : TQRShape;
    LineShape     : TQRShape;
    StatCount     : Integer;
begin
  StatCount := 0;

  For i := 0 to DispStatCodeList.Count - 1 do
    If TDispStatCode(DispStatCodeList[i]).SortOrd > 0 then
      StatCount := StatCount + 1;

  if StatCount > 0 then  
    RepStatWidth := round((NFIRSAppHeader.Width-LeftLine.Left) / StatCount) - 1
  else
    RepStatWidth := 0;

  For i := 0 to DispStatCodeList.Count - 1 do begin
    If TDispStatCode(DispStatCodeList[i]).SortOrd > 0 then begin
      DispTimeLabel            := TQRLabel.Create(self);
      DispTimeLabel.Caption    := alltrim(TDispStatCode(DispStatCodeList[i]).Descr);
      DispTimeLabel.parent     := NFIRSAppHeader;
      DispTimeLabel.top        := HeaderHorzLine.Top + 2;
      DispTimeLabel.left       := LeftLine.Left +i*RepStatWidth-10;
      DispTimeLabel.font.Name  := 'Arial';
      DispTimeLabel.Font.Size  := 8;
      DispTimeLabel.Autosize   := false;
      DispTimeLabel.Width      := RepStatWidth-2;
      DispTimeLabel.Height     := NFIRSAppHeader.height - headerhorzline.Top;
      DispTimeLabel.WordWrap   := true;
      DispTimeLabel.Alignment  := tacenter;
      DispTimeLabel.transparent:= true;
      DispTimeLabel.font.style := [];

      DispTimeField             := TQRLabel.Create(self);
      DispTimeField.Name        := 'DispTimeField' + IntToStr(i);
      DispTimeField.parent      := NFIRSAppBand;
      DispTimeField.top         := UnitNumField.Top;
      DispTimeField.tag         := StrToInt(TDispStatCode(DispStatCodeList[i]).DispStatCodeID);
      DispTimeField.left        := DispTimeLabel.Left;
      DispTimeField.Autosize    := false;
      DispTimeField.Width       := RepStatWidth-2;
      DispTimeField.font.Name   := 'Arial';
      DispTimeField.Font.Size   := 8;
      DispTimeField.transparent := true;
      DispTimeField.OnPrint     := DispTimePrint;
      DispTimeField.Alignment   := tacenter;

      FootNoteField             := TQRLabel.Create(self);
      FootNoteField.Name        := 'FootNoteField' + IntToStr(i);
      FootNoteField.parent      := NFIRSAppBand;
      FootNoteField.top         := UnitNumField.Top - 3;
      FootNoteField.tag         := StrToInt(TDispStatCode(DispStatCodeList[i]).DispStatCodeID);
      FootNoteField.left        := 75 + i * RepStatWidth - 8;
      FootNoteField.font.Name   := 'Arial';
      FootNoteField.Font.Size   := 8;
      FootNoteField.OnPrint     := FootNotePrint;
      FootNoteField.transparent := true;
      FootNoteField.alignment   := tarightjustify;
      FootNoteField.width       := 9;

      If (i > 0) then begin
        LineShape             := TQRShape.Create(self);
        LineShape.parent      := NFIRSAppHeader;
        LineShape.top         := LeftLineHeader.Top;
        LineShape.left        := LeftLine.Left+i*RepStatWidth-12;
        LineShape.height      := LeftLineHeader.Height;
        LineShape.Width       := LeftLineHeader.Width;
        LineShape.brush.color := clblack;

        BandShape             := TQRShape.Create(self);
        BandShape.parent      := NFIRSAppBand;
        BandShape.top         := LeftLine.Top;
        BandShape.left        := LeftLine.Left+i*RepStatWidth-12;
        BandShape.height      := LeftLine.Height;
        BandShape.Width       := LeftLine.Width;
        BandShape.brush.color := clblack;
      end;
    end;
  end;
end;

procedure TDispCallSummRepForm.DispTimePrint(Sender: TObject; var Value: string);
Var DispStatCodeID : String;
begin
  DispStatCodeID := IntToStr((Sender as TQRLabel).Tag);
  If A('DISPHISTUNITTIME').ExactQueryLocate(['UNITNUM','DISPSTATCODEID'],[UnitNumField.Caption,DispStatCodeID]) then begin
    Value := FormatDateTime('HH:NN:SS',GetField('DISPHISTUNITTIME','DATETIMESTAT').AsDateTime)
  end else
    Value := '';
end;

procedure TDispCallSummRepForm.FootNoteBandBeforePrint(Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  inherited;
  FootNoteNarr.Caption        := FootNoteList.Strings[FootNoteCount];
  FootNoteCount               := FootNoteCount + 1;
  FootNoteNumberField.Caption := IntToStr(FootNoteCount);
end;

procedure TDispCallSummRepForm.FootNoteBandNeedData(Sender: TObject; var MoreData: Boolean);
begin
  inherited;
  MoreData := FootNoteCount < FootNoteList.Count;
end;

procedure TDispCallSummRepForm.FootNotePrint(sender: TObject; var Value: string);
Var DispStatCodeID : String;                          
begin
  Value          := '';
  DispStatCodeID := IntToStr((Sender as TQRLabel).Tag);
  If A('DISPHISTUNITTIME').ExactQueryLocate(['UNITNUM','DISPSTATCODEID'],[UnitNumField.Caption,DispStatCodeID]) and Not (rtrim(GetField('DISPHISTUNITTIME','NARR').AsString) = '') then begin
    FootNoteList.Add(GetField('DISPHISTUNITTIME','NARR').AsString);
    Value := IntToStr(FootNoteList.Count);
  end;
end;

end.
