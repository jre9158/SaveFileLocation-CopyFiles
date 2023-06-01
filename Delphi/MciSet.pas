unit MciSet;

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
  AppLst,
  OrpheusWrapper,
  alpinecheck,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,              
  AlpinePanel,
  Gauges,
  AdvObj,
  Menus,
  AdvGDIPicture,
  AlpineMemo,
  AdvGroupBox;

type
  TMciSetForm = class(TNormalBaseForm)
    D: TPanel;
    ResourceControl: TAdvPageControl;
    GenTab: TAdvTabSheet;
    MCIResponseTab: TAdvTabSheet;
    MCIResponseBrowse: TAlpineBlockBrowse;
    Label3: TLabel;
    TimerIntervalField: TAlpineEdit;
    Label1: TLabel;
    AlpineEdit1: TAlpineEdit;
    MCIQualTab: TAdvTabSheet;
    MCIQualBrowse: TAlpineBlockBrowse;
    Label5: TLabel;
    AlpineCheckBox1: TAlpineCheckBox;
    Label2: TLabel;
    DisplayOnlyActiveCheck: TAlpineCheckBox;
    MCIListTypePanel: TAdvTabSheet;
    MCIListTypeBrowse: TAlpineBlockBrowse;
    UploadButton: TAlpineGlowButton;
    Gauge: TGauge;
    Label4: TLabel;
    PostFromMCIListCheck: TAlpineCheckBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    AlpineEdit2: TAlpineEdit;
    MCIServerLabel: TLabel;
    MCIServerField: TAlpineEdit;
    MCIServerDescr: TLabel;
    ResponderTab: TAdvTabSheet;
    ResponderServerPanel: TAdvPanel;
    Label11: TLabel;
    RespCodeField: TLabel;
    RespServField: TLabel;
    RefreshButton: TAlpineGlowButton;
    ResponderBrowse: TAlpineTMSStringGrid;
    BatchEmailButton: TAlpineGlowButton;
    chkRoster: TCheckBox;
    CancelProcessButton: TAlpineGlowButton;
    RespEmailBodyTab: TAdvTabSheet;
    AdvPanel1: TAdvPanel;
    EmailBodyMemo: TAlpineMemo;
    AdvPanel2: TAdvPanel;
    Label13: TLabel;
    MCIResponseField: TAlpineLookup;
    Label14: TLabel;
    AlpineEdit3: TAlpineEdit;
    Label15: TLabel;
    Label12: TLabel;
    lblAlertsOnly: TLabel;
    chkAlertsOnly: TAlpineCheckBox;
    RespStatTab: TAdvTabSheet;
    RespStatBrowse: TAlpineBlockBrowse;
    RESETRESPSTATUSLabel: TLabel;
    RESETRESPSTATUSCheck: TAlpineCheckBox;
    EnableMCIHistSyncLabel: TLabel;
    EnableMCIHistSyncField: TAlpineCheckBox;
    procedure MCIResponseTabShow(Sender: TObject);
    procedure MCIListTypePanelShow(Sender: TObject);
    procedure UploadButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ResponderTabShow(Sender: TObject);
    procedure RefreshButtonClick(Sender: TObject);
    procedure ResponderBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ResponderBrowseDblClick(Sender: TObject);
    procedure ResponderBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure BatchEmailButtonClick(Sender: TObject);
    procedure chkRosterClick(Sender: TObject);
    procedure ResponderBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure RespStatTabShow(Sender: TObject);
    procedure MCIQualTabShow(Sender: TObject);
  private
    { Private declarations }
    MCIDatabase     : TAlpineAdoConnection;
    procedure RefreshAppInfo;
    procedure LoadRespBrowse;
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;

var
  MciSetForm  : TMciSetForm;

implementation
uses GenFunc,
     MCIResponse,
     MCIQual,
     MCIListType,
     RespStat,
     CommonMCI,
     CommonVar,
     SecSet,
     CommonCloud,
     FormFunc,
     CommonFunc,
     PersFdid;

{$R *.DFM}

procedure TMciSetForm.BatchEmailButtonClick(Sender: TObject);
var mError, mIsLaw, myFDID : String;
begin
  inherited;
  If BooleanMessageDlg('Send an update/download email to all registered users?' + #13#10#13#10 +
                       'Users with no email address will be skipped.') then begin

    myFDID := mFireID;
    mIsLaw := '';

    if (mFireID = 'HARFO') then begin
      mIsLaw := SQLLookup(mFireID,'FDID','MOBSET','LAWSYSTEM');
      if (mIsLaw = 'Y') then myFDID := 'HARSO';
    end;

    If SendBatchResponderUpdateEmail(GlobalADOConnection,myFDID,mError) then
      MessageDlg('Responder App Install/Update Email(s) Sent!', mtInformation, [mbOK], 0)
    else
      MessageDlg('There was an error sending some or all the email(s). Please check your application log for more infomation.'+crlf+'Error:'+mError, mtWarning, [mbOK], 0);
  end;
end;

procedure TMciSetForm.RefreshButtonClick(Sender: TObject);
begin
  inherited;
  LoadRespBrowse;
  RefreshAppInfo;
end;

procedure TMciSetForm.chkRosterClick(Sender: TObject);
begin
  inherited;
  LoadRespBrowse;
end;

procedure TMciSetForm.FormCreate(Sender: TObject);
begin
  inherited;
  ResourceControl.ActivePage  := GenTab;
  UploadButton.Visible        := AlpineLogIn or (mFireid='52067');
  mciserverfield.Enabled      := AlpineLogIn;
  ResponderTab.TabVisible     := CheckModule('RESPAPP');
  RespEmailBodyTab.TabVisible := CheckModule('RESPAPP');
  RespStatTab.TabVisible      := CheckModule('RESPAPP');
  RESETRESPSTATUSCheck.Enabled:= CheckModule('RESPAPP');
  RESETRESPSTATUSLabel.Enabled:= CheckModule('RESPAPP');
  EmailBodyMemo.Enabled       := AlpineLogIn;
  MCIServerField.Visible      := AlpineLogIn;
  MCIServerLabel.Visible      := AlpineLogIn;
  MCIServerDescr.Visible      := AlpineLogIn;

  lblAlertsOnly.Visible       := AlpineLogin;
  chkAlertsOnly.Visible       := AlpineLogin;

  EnableMCIHistSyncField.Visible  := AlpineLogin;
  EnableMCIHistSyncLabel.Visible  := AlpineLogin;
end;

procedure TMciSetForm.MCIListTypePanelShow(Sender: TObject);
begin
  inherited;
  MCIListTypeBrowse.Setup('MCILISTTYPE',TMCIListTypeForm,TMCIListTypeForm.NewRecord);
end;

procedure TMciSetForm.MCIQualTabShow(Sender: TObject);
begin
  inherited;
  MCIQualBrowse.Setup('MCIQUAL',TMCIQualForm,TMCIQualForm.NewRecord);
end;

class procedure TMciSetForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('FDID').AsString := mFireID;
end;

procedure TMciSetForm.ResponderBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
var pfdid   : TApolloData;
    xPersid : string;
    xFDID   : string;
    pkVar   : string;
    xEmail  : string;
begin
  inherited;
  xPersID := trim(ResponderBrowse.GetValue('PERSID',ARow));
  xFDID   := trim(ResponderBrowse.ColumnNames[ACol]);

  If (xPersID = '') or (xFDID = '') then
    exit;

  If (xFDID = 'EMAIL') then begin

    xEmail := trim(ResponderBrowse.GetValue('EMAIL',ARow));
    If CheckSecVar('PERSEDIT') then begin
      If InputQuery('Email Address','Add/Update Personnel Record Email Address?',xEmail) then begin
        If not(trim(xEmail) = '') and not(UpperCase(trim(ResponderBrowse.GetValue('EMAIL',ARow))) = UpperCase(trim(xEmail))) then begin
          ResponderBrowse.SetValue('EMAIL',ARow,trim(xEmail));
          RunSQL('UPDATE PERS SET EMAIL = '+AddExpr(trim(xEmail))+' WHERE PERSID = '+pkValue(xPersID));
        end;
      end;
    end;
  end else if (xFDID = 'BUTTON')  then begin
    //ShowMessage(ResponderBrowse.ColumnNames[ACol]+' persid: '+ResponderBrowse.GetValue('PERSID',ARow));
  end else begin

    try
      pkVar := '-1';
      pfdid := Open_Query(true,'SELECT * FROM PERSFDID WHERE PERSID = '+pkValue(xPersid) +' AND FDID = ' + AddExpr(xFDID));
      If pfdid.RecordsExist then begin
        pkVar := tdbfield(pfdid,'PERSFDIDID');
      end else begin
        try
          pfdid.Insert;
          GetField(pfdid,'PERSID').AsString := xPersID;
          GetField(pfdid,'FDID').AsString := xFDID;
          pfdid.Post;
          pkVar := tdbfield(pfdid,'PERSFDIDID');
        except
          pfdid.Cancel;
          pkVar := '-1';
        end;
      end;
    finally
      pfdid.free;
    end;

    If not (pkVar = '') and not (pkVar = '-1') then
      RunAlpineForm(TPersFDIDForm,pkVar,'PERSFDID',TPersFDIDForm.NewRecord);
  end;
end;

procedure TMciSetForm.ResponderBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
var pID : string;
begin
  inherited;
  try
    If ACol = 1 then begin
      pID := ResponderBrowse.GetValue('PERSID',ARow);
      If not(pID = '') then begin
        If State then
          RunSQL('UPDATE PERS SET RESPONDER = '+AddExpr('Y')+' WHERE PERSID = ' + pID)
        else 
          RunSQL('UPDATE PERS SET RESPONDER = '+AddExpr('')+' WHERE PERSID = ' + pID);
      end;
    end;
  except
  end;
end;

procedure TMciSetForm.ResponderTabShow(Sender: TObject);
begin
  inherited;
  LoadRespBrowse;
  RefreshAppInfo;
end;

procedure TMciSetForm.RespStatTabShow(Sender: TObject);
begin
  inherited;
  RespStatBrowse.Setup('RESPSTAT',TRespStatForm,TRespStatForm.NewRecord);
end;

procedure TMciSetForm.UploadButtonClick(Sender: TObject);
Var ErrorString    : String;
    Phone          : String;
    mPersWhere     : String;
    mMciPhoneWhere : String;
    SqlVar         : String;
    perslocal,persmci: TApolloData;                                                                                                                                                                                      
begin
  If mFireid = 'HARFO' then begin
    mPersWhere     := ' PERS.FDID LIKE ' + AddExpr('120%');
    mMciPhoneWhere := ' AND FDID.MCIPHONE LIKE ' + AddExpr('410%');
  end else begin
    mPersWhere     := ' PERS.FDID = ' + AddExpr(mFireid);
    mMciPhoneWhere := ' AND NOT (FDID.MCIPHONE LIKE ' + AddExpr('410%')+')';
  end;

  MCIDatabase := TAlpineAdoConnection.Create(self,GlobalMCIServer+':REDNMX','ALPINE','A_S_C',4);
  If not MCIDatabase.Connect(ErrorString) then
    ShowMessage('Could not connect to FRDS database.  Error: '+ErrorString)
    
  else begin
    SQLVar := 'SELECT PERS.FDID,PERS.PERSCODE, PERS.LNAME, PERS.FNAME, MCILIST.PHONE FROM MCILIST LEFT JOIN PERS ON (MCILIST.PERSID = PERS.PERSID) ' +
              'LEFT JOIN FDID ON (PERS.FDID=FDID.FDID) WHERE '+mPersWhere;
    AppendToLog(SqlVar);
    Open_Query('SOURCEMCILIST',false,SQLVar);
    Open_Query(MCIDatabase,'MCIPERS',true,'SELECT * FROM PERS WHERE '+mPersWhere);
    Open_Query(MCIDatabase,'MCILIST',true,'SELECT * FROM MCILIST WHERE 1=2');

    Gauge.MaxValue := A('SOURCEMCILIST').RecCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;
    While Not A('SOURCEMCILIST').Eof do begin
      Gauge.Progress := Gauge.Progress + 1;
      Application.ProcessMessages;
      A('MCIPERS').ExactQueryLocateAndPutInEditMode(['PERSCODE'],[tdbfield('SOURCEMCILIST','PERSCODE')]);
      GetField('MCIPERS','PERSCODE').AsString := tdbfield('SOURCEMCILIST','PERSCODE');
      GetField('MCIPERS','LNAME').AsString    := tdbfield('SOURCEMCILIST','LNAME');
      GetField('MCIPERS','FNAME').AsString    := tdbfield('SOURCEMCILIST','FNAME');
      GetField('MCIPERS','FDID').AsString     := iif(mFireid='HARFO',tdbfield('SOURCEMCILIST','FDID'),mFireid);
      A('MCIPERS').Post;


      Phone := alltrim(StringReplace(tdbfield('SOURCEMCILIST','PHONE'),'-','',[rfReplaceAll]));

      If Not (Phone = '') then begin
        If mFireid = '52067'  then
          Phone := '+1' + substr(Phone,1,8);

        A('MCILIST').UpdateSQL('SELECT * FROM MCILIST WHERE PERSID = ' + GetField('MCIPERS','PERSID').AsString + ' AND PHONE = ' + AddExpr(Phone));
        If A('MCILIST').RecordsExist then
          A('MCILIST').Edit
        else
          A('MCILIST').Append;

        GetField('MCILIST','PERSID').AsString := GetField('MCIPERS','PERSID').AsString;
        GetField('MCILIST','PHONE').AsString  := Phone;

        A('MCILIST').Post;
      end;

      A('SOURCEMCILIST').Skip(1);
    end;
    Gauge.Visible  := false;

    Open_query('PERS',False,'SELECT * FROM PERS WHERE '+mPersWhere);
    A('MCIPERS').GoTop;
    while not A('MCIPERS').eof do begin
      If not A('PERS').ExactQueryLocate('PERSCODE',tdbfield('MCIPERS','PERSCODE')) then begin
        If BooleanMessageDlg('Found record for '+tdbfield('MCIPERS','PERSCODE')+':'+tdbfield('MCIPERS','LNAME')+','+tdbfield('MCIPERS','FNAME')+' on RedNMX Call-In Server.  But there is no copy on your database.  Delete record off of Call In Server?') then
          RunSql(MCIDatabase,'DELETE FROM PERS WHERE PERSID = '+pkValue(tdbfield('MCIPERS','PERSID')));
          appendtolog('delete record');
      end;
      A('MCIPERS').skip(1);
    end;
    CloseApollo('PERS');
    CloseApollo('MCIPERS');
    CloseApollo('PERS');
    CloseApollo('MCIPERS');
    CloseApollo('MCILIST');
    SqlVar := 'SELECT MCILIST.MCILISTID, PERS.PERSCODE, PERS.LNAME, PERS.FNAME, MCILIST.PHONE FROM MCILIST '+
              'LEFT JOIN PERS ON (MCILIST.PERSID = PERS.PERSID) ' + ' LEFT JOIN FDID ON (PERS.FDID=FDID.FDID) WHERE '+mPersWhere+mMciPhoneWhere;
              
    Open_Query(MCIDatabase,'MCILIST',false,SqlVar);
    appendtolog(SqlVar);
    Gauge.MaxValue := A('MCILIST').RecCount;
    Gauge.Progress := 0;
    Gauge.Visible  := true;

    If not (mFireid = 'HARFO') and not (mFireid = '52067') and  not (substr(mfireid,1,3)='120') then begin  // mjs - don't use this - confusion between Cortlandville and harford county departments
      While Not A('MCILIST').Eof do begin
        Gauge.Progress     := Gauge.Progress + 1;
        Application.ProcessMessages;
        If Length(tdbfield('MCILIST','PHONE'))=10 then begin
          Phone := tdbfield('MCILIST','PHONE');
          If Not A('SOURCEMCILIST').ExactQueryLocate(['PERSCODE','PHONE'],[tdbfield('MCILIST','PERSCODE'),Phone]) then begin
            If Not A('SOURCEMCILIST').ExactQueryLocate(['PERSCODE','PHONE'],[tdbfield('MCILIST','PERSCODE'),substr(phone,1,3)+'-'+substr(phone,4,3)+'-'+substr(phone,7,4)]) then
              RunSQL(MCIDatabase,'DELETE FROM MCILIST WHERE MCILISTID = ' + GetField('MCILIST','MCILISTID').AsString);
          end;
        end;
        A('MCILIST').Skip(1);
      end;
    end;
    Gauge.Visible  := false;

    CloseApollo('SOURCEMCILIST');
    CloseApollo('MCILIST');
  end;
  MCIDatabase.Free;
  ShowMessage('Done');
end;


procedure TMciSetForm.MCIResponseTabShow(Sender: TObject);
begin
  inherited;
  MCIResponseBrowse.ExplicitWhereClause := ' WHERE ' + GetFdidSQL('MCIRESPONSE.FDID');
  MCIResponseBrowse.Setup('MCIRESPONSE',TMCIResponseForm,TMCIResponseForm.NewRecord);
end;

procedure TMciSetForm.RefreshAppInfo;
var avlServ     : string;
    avlCode     : string;
    RespServ    : string;
    RespCode    : string;
    ErrorString : string;
begin
  try
    RespCodeField.Caption    := 'Loading...';
    RefreshButton.Enabled := False;
    If not(GetAppRegInfo(mFireID,AVLServ,AVLCode,RespServ,RespCode,ErrorString)) then begin
      MessageDlg('Error connecting to RedNMX Cloud Services: ' + #13#10#13#10 + ErrorString, mtWarning, [mbOK], 0);
    end else begin
      RespCodeField.Caption := RespCode;
      RespServField.Caption := RespServ;
    end;
  finally
    RefreshButton.Enabled := True;
  end;
end;

procedure TMciSetForm.LoadRespBrowse;
var iCol   : Integer;
    SQLVar : string;
begin
  try
    ResponderBrowse.Enabled                              := False;
    RefreshButton.Enabled                                := False;
    BatchEmailButton.Enabled                             := False;

    ResponderBrowse.Clear;
    ResponderBrowse.ColCount                             := 0;
    ResponderBrowse.RowCount                             := 0;
    ResponderBrowse.ClearColumns;
    ResponderBrowse.FixedRowAlways                       := true;
    ResponderBrowse.RowCount                             := ResponderBrowse.FixedRows;
    ResponderBrowse.ControlLook.NoDisabledCheckRadioLook := True;
    ResponderBrowse.ControlLook.NoDisabledButtonLook     := true;

    ResponderBrowse.SetColumn('PERSID','PERSID',001);
    ResponderBrowse.SetColumn('RESPONDER','',20);
    ResponderBrowse.SetColumn('PERSCODE','ID', 40);
    ResponderBrowse.SetColumn('NAME','Name',100);
    ResponderBrowse.SetColumn('EMAIL','Email',180);

    SQLVar := 'SELECT PERSID,FDID,PERSCODE,LNAME,FNAME,MNAME,EMAIL,RESPONDER,ATTEND FROM PERS ';
    If chkRoster.Checked then
      SQLVar := SQLVar + ' WHERE ATTEND = ' + AddExpr('Y');
    SQLVar := SQLVar + 'ORDER BY LNAME, FNAME';
    Open_Query('PERS',false,SQLVar);

    Gauge.MaxValue := A('PERS').RecCount;
    Gauge.Progress := 0;

    Open_Query('FDID',false,'SELECT * FROM FDID WHERE MULTIINC = ' + AddExpr('Y') + ' ORDER BY FDID, SHORTDESCR, DEPTNAME');
    Open_Query('PERSFDID',false,'SELECT * FROM PERSFDID');

    A('FDID').GoTop;
    While Not A('FDID').Eof do begin
      ResponderBrowse.SetColumn(GetField('FDID','FDID').AsString,GetField('FDID','FDID').AsString + ' '  + tdbfield('FDID','SHORTDESCR'),110);
      A('FDID').Skip(1);
    end;

    Gauge.Visible := true;
    While Not A('PERS').Eof do begin
      try
        Gauge.Progress := Gauge.Progress + 1;
        ResponderBrowse.SetValue('PERSID',GetField('PERS','PERSID').AsString);
        ResponderBrowse.SetCheckValue('RESPONDER',GetField('PERS','RESPONDER').AsString = 'Y');
        ResponderBrowse.SetValue('PERSCODE',GetField('PERS','PERSCODE').AsString);
        ResponderBrowse.SetValue('NAME',GetField('PERS','LNAME').AsString + ', '+trim(copy(tdbfield('PERS','FNAME'),1,1)+ ' '+copy(tdbfield('PERS','MNAME'),1,1)));
        ResponderBrowse.SetValue('EMAIL',GetField('PERS','EMAIL').AsString);
        If not (tdbField('PERS','EMAIL') = '') then
          ResponderBrowse.AddButton(4,ResponderBrowse.RowCount -1,16,16,'..',AdvGrid.haRight,AdvGrid.vaTop);
          for iCol := 5  to ResponderBrowse.ColCount - 1 do begin
            If A('PERSFDID').ExactQueryLocate(['PERSID','FDID'],[GetField('PERS','PERSID').AsString,ResponderBrowse.ColumnNames[icol] ]) then begin
              ResponderBrowse.SetValue(ResponderBrowse.ColumnNames[icol],'Yes');
              ResponderBrowse.AddButton(iCol,ResponderBrowse.RowCount -1,16,16,'..',AdvGrid.haRight,AdvGrid.vaTop);
            end else
             ResponderBrowse.SetValue(ResponderBrowse.ColumnNames[icol],'');
          end;
      finally
        A('PERS').Skip(1);
        Application.ProcessMessages;
      end;
    end;
    Gauge.Visible := false;

  finally
    ResponderBrowse.FixedCols   := 4;
    ResponderBrowse.Enabled     := True;
    RefreshButton.Enabled       := True;
    BatchEmailButton.Enabled    := True;
    CloseApollo('FDID');
    CloseApollo('PERS');
    CloseApollo('PERSFDID');
    ResponderBrowse.Invalidate;
  end;
end;

procedure TMciSetForm.ResponderBrowseDblClick(Sender: TObject);
var pfdid   : TApolloData;
    xPersid : string;
    xFDID   : string;
    pkVar   : string;
begin
  inherited;
  xPersID := trim(ResponderBrowse.GetValue('PERSID'));
  xFDID   := trim(ResponderBrowse.ColumnNames[ResponderBrowse.Col]);

  If (xPersID = '') or (xFDID = '') then
    exit;

  If (xFDID = 'EMAIL') then begin
    //ShowMessage('fdid: '+xFDID+' persid: '+xPersID);
  end else begin

    try
      pfdid := Open_Query(true,'SELECT * FROM PERSFDID WHERE PERSID = '+pkValue(xPersid) +' AND FDID = ' + AddExpr(xFDID));
      If pfdid.RecordsExist then begin
        pfdid.Delete;
        ResponderBrowse.Cells[ResponderBrowse.Col,ResponderBrowse.Row] := '';
        If ResponderBrowse.HasButton(ResponderBrowse.Col,ResponderBrowse.Row) then
          ResponderBrowse.RemoveButton(ResponderBrowse.Col,ResponderBrowse.Row);
      end else begin
        try
          pfdid.Insert;
          GetField(pfdid,'PERSID').AsString := xPersID;
          GetField(pfdid,'FDID').AsString   := xFDID;
          pfdid.Post;
          pkVar := tdbfield(pfdid,'PERSFDIDID');
          ResponderBrowse.Cells[ResponderBrowse.Col,ResponderBrowse.Row] := 'Yes';
          ResponderBrowse.AddButton(ResponderBrowse.Col,ResponderBrowse.Row,16,16,'..',AdvGrid.haRight,AdvGrid.vaTop);
        except
          pfdid.Cancel;
          pkVar := '-1';
        end;
      end;
    finally
      pfdid.free;
    end;
  end;
  ResponderBrowse.SetFocus;
end;

procedure TMciSetForm.ResponderBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (key = VK_RETURN) or (key = VK_SPACE) then
    ResponderBrowseDblClick(self);
end;

end. 
