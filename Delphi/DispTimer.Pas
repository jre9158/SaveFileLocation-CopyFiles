unit DispTimer;

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
  StdCtrls,
  Db,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OvcDbPF,
  OrpheusWrapper,
  ExtCtrls,
  AlpineEdit,
  NormalBtnPanel,
  BasePictureField,
  Blink,
  Buttons,
  ImgList,
  AppLst,
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBlockBrowse,
  AlpineBase,
  Gauges,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  Menus,
  AdvObj;

type
  TDispTimerForm = class(TAlpineBaseForm)
    DispCallBrowse: TAlpineTMSStringGrid;
    DispCallTimer: TTimer;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image7: TImage;
    Image8: TImage;
    Image6: TImage;
    Image5: TImage;
    Image9: TImage;
    Image10: TImage;
    deleteimage: TImage;
    AdvPanel1: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    BottomPanel: TAdvPanel;
    StarLabel: TLabel;
    ResetLabel: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DispCallTimerTimer(Sender: TObject);
    procedure DispCallBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    mFieldToUse: String;
    iRowCount,deletecolumn: Integer;
    procedure LoadDispCallBrowse(bRestoreIfMinimized: boolean);
    function UseTimeArrived: Boolean;

  public
    { Public declarations }
  end;

var
  DispTimerForm: TDispTimerForm;

implementation
uses GenFunc,
     CommonFunc,
     FormFunc,
     CommonVar,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TDispTimerForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TDispTimerForm.DispCallBrowseButtonClick(Sender: TObject; ACol, ARow: Integer);
Var DispCallID : String;
begin
  DispCallID := DispCallBrowse.GetValue('DISPCALLID',ARow);
  if ACol = DeleteColumn then begin
    if anystrtoint(dispcallid)> 0 then begin
      if BooleanMessageDlg('Remove Call from Timer?') then begin
        RunSQL('UPDATE DISPCALL SET DISPTIMER = 0 WHERE DISPCALLID = ' + pkValue(DispCallID));
        LoadDispCallBrowse(False);
      end;
    end;
  end else
    RunSQL('UPDATE DISPCALL SET DATETIMETIMER = ' + FormatDateTimeForSQL(Now) + ' WHERE DISPCALLID = ' + pkValue(DispCallID));

end;

procedure TDispTimerForm.DispCallTimerTimer(Sender: TObject);
begin
  LoadDispCallBrowse(True);
end;

procedure TDispTimerForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    If GlobalSysFormReset then Exit;
    Open_Query('SYSFORMSET',true,'SELECT * FROM SYSFORMSET WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName) + ' AND FORMNAME = ' + AddExpr('DISPTIMERFORM'));
    If A('SYSFORMSET').RecordsExist then
      A('SYSFORMSET').Edit
    else
      A('SYSFORMSET').Append;
    GetField('SYSFORMSET','COMPUTERNAME').AsString := AlpineGetComputerName;
    GetField('SYSFORMSET','FORMNAME').AsString     := 'DISPTIMERFORM';
    GetField('SYSFORMSET','FORMLEFT').AsInteger    := Left;
    GetField('SYSFORMSET','FORMTOP').AsInteger     := Top;
    GetField('SYSFORMSET','FORMWIDTH').AsInteger   := Width;
    GetField('SYSFORMSET','FORMHEIGHT').AsInteger  := Height;
    A('SYSFORMSET').Post;
  finally
    CloseApollo('SYSFORMSET');
    Action := caFree;
  end;
end;


function TDispTimerForm.UseTimeArrived: Boolean;
begin
  result := (mFireID = '20004') or IsMark;
end;

procedure TDispTimerForm.FormCreate(Sender: TObject);
begin
  if UsetimeArrived  then
    mFieldToUse := 'DATETIMEARR'
  else
    mFieldToUse := 'DATETIMEDISP';

  try
    Open_Query('SYSFORMSET',false,'SELECT * FROM SYSFORMSET WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName) + ' AND FORMNAME = ' + AddExpr('DISPTIMERFORM'));
    If A('SYSFORMSET').RecordsExist then begin
      If GetField('SYSFORMSET','FORMLEFT').AsInteger > Screen.Width then
         Left   := Screen.Width - GetField('SYSFORMSET','FORMWIDTH').AsInteger
      else
        Left := GetField('SYSFORMSET','FORMLEFT').AsInteger;

      If (GetField('SYSFORMSET','FORMTOP').AsInteger > Screen.Height - 40) then
        Top := Screen.Height - GetField('SYSFORMSET','FORMHEIGHT').AsInteger
      else
        Top    := GetField('SYSFORMSET','FORMTOP').AsInteger;
      Width  := GetField('SYSFORMSET','FORMWIDTH').AsInteger;
      Height := GetField('SYSFORMSET','FORMHEIGHT').AsInteger;
    end else
      position := poScreenCenter;
  finally
    CloseApollo('SYSFORMSET');
  end;
end;

procedure TDispTimerForm.FormShow(Sender: TObject);
begin
  LoadDispCallBrowse(False);
end;

procedure TDispTimerForm.LoadDispCallBrowse(bRestoreIfMinimized: boolean);
Var DispCallTable   : TApolloData;
    SQLVar          : String;
    mStar           : String;
    BeepVar         : Boolean;
    mTimeVar        : TDateTime;
    mTimeVarCompare : TDateTime;
    bFoundCallWithin30Seconds: Boolean;
    mLength: String;
    iSeconds: Integer;

  function GetImageName(): TBitMap;
  begin
    If  (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (9 * mTimeVar / 10) then
      GetImageName := Image10.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (8 * mTimeVar / 10) then
      GetImageName := Image9.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (7 * mTimeVar / 10) then
      GetImageName := Image8.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (6 * mTimeVar / 10)  then
      GetImageName := Image7.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (5 * mTimeVar / 10)  then
      GetImageName := Image6.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (4 * mTimeVar / 10)  then
      GetImageName := Image5.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (3 * mTimeVar / 10)  then
      GetImageName := Image4.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (2 * mTimeVar / 10)  then
      GetImageName := Image3.Picture.BitMap
    else if (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime) * (24*60) > (1 * mTimeVar / 10)  then
      GetImageName := Image2.Picture.BitMap
    else
      GetImageName := Image1.Picture.BitMap;
  end;
begin
  iRowCount := DispCallBrowse.RowCount;
  DispCallTimer.Enabled        := false;
  DispCallBrowse.Clear;
  DispCallBrowse.RowCount      := 1;
  DispCallBrowse.ColCount      := 0;
  DispCallBrowse.ClearColumns;

  DispCallBrowse.SetColumn('DISPCALLID','',        000);
  DispCallBrowse.SetColumn('BUTTON',    '',        030);
  DispCallBrowse.SetColumn('INCNUM',    'Incident',080);
  DispCallBrowse.SetColumn('TIME',      'Time',    065);
  DispCallBrowse.SetColumn('TIMEARRIVE','Arrive',  iifi(UsetimeArrived,065,0));
  DispCallBrowse.SetColumn('ADDRESS',   'Address', 200);
  DispCallBrowse.SetColumn('LENGTH',    'Length',  060);
  DispCallBrowse.SetColumn('RESET',     'Reset',   060);
  DispCallBrowse.SetColumn('DELETE',    '',        030);
  deletecolumn := DispCallBrowse.ColCount-1;

  DispCallBrowse.SetColumn('SPACE',     '',        400);

  SQLVar := 'SELECT DISPCALL.DISPTIMER,DISPCALL.DISPCALLID, DISPCALL.DATETIMEARR,DISPCALL.ADDRESS, DISPCALL.DATETIMEDISP, DISPCALL.DATETIMETIMER, NFIRSMAIN.INCNUM FROM DISPCALL ' +
            'LEFT JOIN NFIRSMAIN ON (DISPCALL.NFIRSMAINID = NFIRSMAIN.NFIRSMAINID) ' +
            'WHERE DISPCALL.INCSTAT = ' + AddExpr('OPEN')+' AND DISPCALL.DISPTIMER>0';

  try
    DispCallTable := Open_Query(SQLVar);
    BeepVar       := false;
    bFoundCallWithin30Seconds := False;
    While Not DispCallTable.Eof do begin
      mTimevar := getField(dispcalltable,'DISPTIMER').AsFloat;
      mTimeVarCompare := mTimeVar/(24*60);
      DispCallBrowse.SetValue('DISPCALLID',GetField(DispCallTable,'DISPCALLID').AsString);
      DispCallBrowse.AddBitButton(DispCallBrowse.ColumnNames.IndexOf('BUTTON'),DispCallBrowse.Rowcount-1,DispCallBrowse.DefaultRowHeight-3,DispCallBrowse.DefaultRowHeight-3,'',GetImageName,AdvGrid.haCenter,AdvGrid.vaCenter);
      DispCallBrowse.SetValue('INCNUM',    GetField(DispCallTable,'INCNUM').AsString);
      DispCallBrowse.SetValue('TIME',      FormatDateTime('HH:NN:SS',GetField(DispCallTable,'DATETIMEDISP').AsDateTime));
      DispCallBrowse.SetValue('TIMEARRIVE',FormatDateTime('HH:NN:SS',GetField(DispCallTable,'DATETIMEARR').AsDateTime));      
      DispCallBrowse.SetValue('ADDRESS',   GetField(DispCallTable,'ADDRESS').AsString);
      if GetField(DispCallTable,mFieldToUse).AsDateTime<>0 then
        mLength := FormatDateTime('HH:NN:SS',Now - GetField(DispCallTable,mFieldToUse).AsDateTime)
      else
        mLength := 'No Arr.';

      DispCallBrowse.SetValue('LENGTH',    mLength);

      iSeconds                  := TimeDifferenceInSeconds(Now,GetField(DispCallTable,'DATETIMETIMER').AsDateTime + mTimeVarCompare);
      bFoundCallWithin30Seconds := bFoundCallWithin30Seconds or ((iSeconds>=30) and (iSeconds<35));

      If (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime > mTimeVarCompare) then begin
        mStar   := '*';
        BeepVar := true;
      end else
        mStar   := '';

      DispCallBrowse.SetValue('RESET',     FormatDateTime('HH:NN:SS',mTimeVarCompare - (Now - GetField(DispCallTable,'DATETIMETIMER').AsDateTime)) + mStar);
      DispCallBrowse.AddBitButton(DispCallBrowse.ColumnNames.IndexOf('DELETE'),DispCallBrowse.Rowcount-1,DispCallBrowse.DefaultRowHeight-3,DispCallBrowse.DefaultRowHeight-3,'',deleteimage.Picture.Bitmap,AdvGrid.haCenter,AdvGrid.vaCenter);

      DispCallBrowse.SetValue('SPACE',     ' ');
      DispCallTable.Skip(1);
    end;
  finally
    DispCallTable.Free;
  end;
  DispCallBrowse.ControlLook.NoDisabledButtonLook := true;

  If BeepVar then
    Beep;

  StarLabel.Visible            := BeepVar;
  ResetLabel.Visible           := BeepVar;
  DispCallTimer.Enabled        := true;
  if bRestoreIfMinimized and ((mfireid='12345') or (mfireid='20004')) then begin  // only do this for Elizabeth - not sure if anyone else would want it.  Also restores if minimized and call gets within 30 seconds of expirining. 
    if (DispCallBrowse.RowCount > iRowCount) or bFoundCallWithin30Seconds then begin
      if WindowState = wsMinimized then
        WindowState := wsNormal;
    end;
  end;
end;

end.
