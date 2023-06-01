unit nfirs50download;
 
interface
uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  stdctrls,
  StrUtils,
  forms,
  dialogs,
  PrintSupport;

  procedure Write1000(NoRecordsSubmitted: Boolean = False);
  procedure Write1005;
  procedure Write1010;
  procedure Write1020;
  procedure Write1030;
  procedure Write1035;
  procedure Write1040;
  procedure Write1050;
  procedure Write1055;
  procedure Write1060;
  procedure Write1100;
  procedure Write1110;
  procedure Write1120;
  procedure Write1130;
  procedure Write1200;
  procedure Write1300;
  procedure Write1400;
  procedure Write1500;
  procedure Write1510;
  procedure Write1600;
  procedure Write1700;
  procedure Write1710;
  procedure Write1720;
  procedure Write1730;
  procedure Write1800;
  procedure Write1810;
  procedure Write1900;
  procedure Write1910;
  procedure Write1920;
  procedure Write2000;
  procedure Write2010;
  procedure Write2020;
  procedure Write8000;
  procedure CreateN5FireFile(mFdid: String);
  procedure DownLoadNFirs50Incidents(FFireID: String; mLabel: TLabel);

implementation
uses DiskCond,
     GenFunc,
     CommonNfirs,
     applst,
     commondispvar,
     CommonFunc,
     FormFunc,
     CommonVar;

var mRevisedValue          : String;
    IncBaseString          : String;
    Nfirs50IncState        : String;
    Include8000Records     : Boolean;
    downloadmutualaidGiven : Boolean;

function nfirs50dateTime(date: TDateTime): String;
begin
  try
    If DateToStr(Date) = '12/30/1899' then
      nfirs50DateTime := ''
    else if date = 0 then
      nfirs50DateTime := ''
    else begin
      If NfirsShowSecond then
        nfirs50dateTime := formatdatetime('yyyymmddhhnnss',Date)
      else
        nfirs50dateTime := formatdatetime('yyyymmddhhnn',Date) + '00';
    end;
  except
    result := '';
  end;  
end;

function nfirs50date(date: TDateTime): String;
var Year  : Word;
    Month : Word;
    Day   : Word;
begin
  try
    If DateToStr(Date) = '12/30/1899' then
      nfirs50Date := ''
    else begin
      DecodeDate(date, Year, Month, Day);
      nfirs50date := IntToStr(Year)+padl(IntToStr(Month),2,'0')+padl(IntToStr(Day),2,'0');
    end;
  except
    result := '';
  end;  
end;

procedure WriteVendor;
Var LineString: String;
begin
  LineString:='^';
  writeln(txtfile,LineString);
  LineString:='WCTRWQWOVG^UGGKI^';
  writeln(txtfile,LineString);
end;

function WriteZero(Field1: String): String;
begin
  WriteZero := '';
  If (alltrim(Field1) <> '0') then
    WriteZero := Field1;
end;

function IncludeZero(Field1: String): String;
begin
  IncludeZero := '0';
  If (alltrim(Field1) <> '') and (alltrim(Field1) <> '0') then
    IncludeZero := Field1;
end;

procedure DownLoadNfirs50Incidents(FFireID: String; mLabel: TLabel);
Var nPrint                : Integer;
    FireCondition         : Boolean;
    StructureCondition    : Boolean;
    WildlandCondition     : Boolean;
    FireCasCondition      : Boolean;
    CivCasCondition       : Boolean;
    EmsCondition          : Boolean;
    HazMatCondition       : Boolean;
    ArsonCondition        : Boolean;
    SpecialStudyCondition : Boolean;
    mSql                  : String;
begin
  Nfirs50IncState := mSupportstate;
  NfirsShowSecond := SqlLookUp(mFireID,'FDID','NFIRSSET','SHOWSECOND') = 'Y';
//FdidZip         := SqlLookUp(mFireID,'FDID','FDID','ZIP');

  if mFireID = '52004' then
     NfirsResForm := 'R';

  Open_Query('NFIRSMAIN',false,'SELECT * FROM NFIRSMAIN WHERE 1=2');
  Open_Query('NFIRSFIR',false,'SELECT * FROM NFIRSFIR WHERE 1=2');
  Open_Query('NFIRSSTR',false,'SELECT * FROM NFIRSSTR WHERE 1=2');
  Open_Query('NFIRSWILDLAND',false,'SELECT * FROM NFIRSWILDLAND WHERE 1=2');
  Open_Query('NFIRSARSON',false,'SELECT * FROM NFIRSARSON WHERE 1=2');
  Open_Query('NFIRSEMS',false,'SELECT * FROM NFIRSEMS WHERE 1=2');
  Open_Query('NFIRSSSSETUP',false,'SELECT * FROM NFIRSSSSETUP ORDER BY SORTORD');

  If mFireID = '40070' then
  mSql := 'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE ' +
                               BuildSQLAlpineDate('DATETIMEALARM',DiskCondForm.Startdate.Value,DiskCondForm.FinalDate.Value) + ' AND ' +
                               'FDID = ' + AddExpr(DiskCondForm.Fdid.Text) + ' AND ' +
                               'SITFOUND NOT LIKE ' + AddExpr('3%') + ' AND ' +
                               'DONE = ' + AddExpr('Y') + ' ORDER BY FDID, INCNUM'
  else
  mSql := 'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE ' +
                               BuildSQLAlpineDate('DATETIMEALARM',DiskCondForm.Startdate.Value,DiskCondForm.FinalDate.Value) + ' AND ' +
                               'FDID = ' + AddExpr(DiskCondForm.Fdid.Text) + ' AND ' +
                               'DONE = ' + AddExpr('Y') + ' ORDER BY FDID, INCNUM';
  if IsMark then begin
//    if BooleanMessageDlg('Use Hardcoded Value?') then
//      mSql := 'SELECT NFIRSMAINID FROM NFIRSMAIN WHERE NFIRSMAINID = 164930';
  end;                               
  Open_Query('NFIRSHIST',false,mSql);

  DiskCondForm.ProgressBar1.MaxValue := A('NFIRSHIST').QueryRecCount;
  WriteVendor;

  IncBaseString := '';
  IncBaseString := mFireID + '^' ;
  IncBaseString := IncBaseString + Nfirs50IncState + '^';
  IncBaseString := IncBaseString + nfirs50dateTime(DiskCondForm.Startdate.Value)   + '^';
  IncBaseString := IncBaseString + '0' + '999001' + '^';
  IncBaseString := IncBaseString + '0' + '00' + '^';

  mRevisedValue := '';

  while Not A('NFIRSHIST').eof do begin
    try


      mLabel.Caption :=  'NFIRSMAINID: '+tdbField('NFIRSMAIN','NFIRSMAINID')+'  Date: '+FormatDateTime('MM/DD/YYYY',GetField('NFIRSMAIN','DATETIMEALARM').Asdatetime);
      DiskCondForm.ProgressBar1.Progress := DiskCondForm.ProgressBar1.Progress+1;
      DiskCondForm.TotalPrinted.Caption   := 'Total Printed '+inttostr(nprint);

      A('NFIRSMAIN').        UpdateSQL('SELECT * FROM NFIRSMAIN         WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
      A('NFIRSEMS').         UpdateSQL('SELECT * FROM NFIRSEMS          WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
      A('NFIRSFIR').         UpdateSQL('SELECT * FROM NFIRSFIR          WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
      A('NFIRSSTR').         UpdateSQL('SELECT * FROM NFIRSSTR          WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
      A('NFIRSWILDLAND').    UpdateSQL('SELECT * FROM NFIRSWILDLAND     WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
      A('NFIRSARSON').       UpdateSQL('SELECT * FROM NFIRSARSON        WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);

      DownLoadMutualAidGiven := GetMutualAid(tdbField('NFIRSMAIN','MAID'));
      FireCondition          := FireModuleUsed(dbfield('NFIRSMAIN','FIRORWILD'),tdbfield('NFIRSMAIN','SITFOUND'),GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime) and not downloadMutualAidGiven;
      WildLandCondition      := GetWildLandCondition(tdbfield('NFIRSMAIN','FIRORWILD'),tdbfield('NFIRSMAIN','SITFOUND'),tdbfield('NFIRSMAIN','WILDADDR'));

      StructureCondition     := GetStructureCondition(tdbfield('NFIRSMAIN','SITFOUND'));

      ArsonCondition         := FireCondition and GetArsonCondition(tdbfield('NFIRSMAIN','FIRORWILD'),tdbfield('NFIRSMAIN','SITFOUND'),tdbfield('NFIRSFIR','CAUSEIGN'),tdbfield('NFIRSFIR','CAUSEIGN'),tdbField('NFIRSMAIN','WILDADDR'));
      CivCasCondition        := (substr(tdbfield('NFIRSMAIN','SITFOUND'),1,1) = '1');
      FireCasCondition       := (GetField('NFIRSMAIN','FATFIRE').AsInteger + GetField('NFIRSMAIN','INJFIRE').AsInteger > 0);
      EmsCondition           := GetEmsCondition(tdbfield('NFIRSMAIN','SITFOUND'),false) and (A('NFIRSEMS').QueryReccount > 0);
      HazMatCondition        := GetHazMatCondition(tdbfield('NFIRSMAIN','SITFOUND'),tdbfield('NFIRSMAIN','HAZMAT'));
      SpecialStudyCondition  := DiskCondForm.SSField.Checked;

      IncBaseString := '';
      IncBaseString := tdbfield('NFIRSMAIN','FDID') + '^' ;
      IncBaseString := IncBaseString + Nfirs50IncState + '^';
      IncBaseString := IncBaseString + nfirs50date(Getfield('NFIRSMAIN','DATETIMEALARM').AsDateTime)   + '^';

      If mFireID = '22006' then
        IncBaseString := IncBaseString + alltrim(substr(dbfield('NFIRSMAIN','INCNUM'),3,2) + substr(dbfield('NFIRSMAIN','INCNUM'),6,5)) + '^'
      else
        IncBaseString := IncBaseString + '0' + alltrim(substr(dbfield('NFIRSMAIN','INCNUM'),5,6)) + '^';
      IncBaseString := IncBaseString + '0' + tdbfield('NFIRSMAIN','EXPNUM')             + '^';

      Write1000;
      Write1005;
      Write1010;
      If ((tdbfield('NFIRSMAIN','MAID') = '3') or (tdbfield('NFIRSMAIN','MAID') = '4'))  then //October 2020 change
        Write1020;
      Write1030;
      Write1035;
      Write1040;
      if mfireid = '22006' then begin
        if tdbfield('NFIRSMAIN','PLASTNAME') <> '' then Write1050;
        if tdbfield('NFIRSMAIN','OLASTNAME') <> '' then Write1055;
      end else begin
        Write1050;
        Write1055;
      end;

      If SpecialStudyCondition then
        Write1060;

      If FireCondition and (not downloadMutualAidGiven) then begin
        Write1100;
        If tdbfield('NFIRSFIR','PREPLAN') = 'Y' then
          Write1110;
        If (tdbfield('NFIRSFIR','MOBINV') = '2') or (tdbfield('NFIRSFIR','MOBINV') = '3') then
          Write1120;
        If Not (tdbfield('NFIRSFIR','EQUINV') = 'NNN') and Not (tdbfield('NFIRSFIR','EQUINV') = '') then
          Write1130;
        If StructureCondition then
          Write1200;
      end else if WildLandCondition then
        Write1300;
      If CivCasCondition then
        Write1400;
      If FireCasCondition then
        Write1500;
      If EMSCondition and Not (mFireID = '23239') then
        Write1600;

      If HazMatCondition then begin
        Open_Query('HAZMAT',false,'SELECT * FROM NFIRSHAZMAT WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
        If (A('HAZMAT').QueryRecCount > 0) then
          Write1700;
        CloseApollo('HAZMAT');
      end;

      {
      If (NfirsResForm = 'Y') and Not (mFireID = '11540') then begin
        Write1800;
        Write1810;
      end;
      }

      If ArsonCondition and (not downloadMutualAidGiven) then
        Write1900;

      {If (Nfirs50IncState = 'MA') and (substr(tdbfield('NFIRSMAIN','SITFOUND'),1,1) = '1') then begin
        Open_Query('NFIRSMA',false,'SELECT * FROM NFIRSMA WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
        If Include8000Records then
          Write8000;
        CloseApollo('NFIRSMA');
      end;} // REMOVED BY MATT ON 9/12/2012.  TABLE NFIRSMA DOES NOT EXIST YET.  NO FORM ENTRY IN THE PROGRAM FOR THIS.

      Application.ProcessMessages;
      RunSql('UPDATE NFIRSMAIN SET SUBMIT = ' + AddExpr('Y') + ' WHERE NFIRSMAINID = ' + edbField('NFIRSMAIN','NFIRSMAINID'));
      RunSql('UPDATE NFIRSMAIN SET SUBDATE = ' + FormatDateTimeForSQL(Date) + ' WHERE NFIRSMAINID = ' + edbField('NFIRSMAIN','NFIRSMAINID'));
    except
      on e:Exception do begin
        AppendToLog('Exception Raised in DownLoadNfirs50Incidents for NFIRSMAINID '+tdbField('NFIRSHIST','NFIRSMAINID') + ': ' + e.message);
      end;

    end;
    A('NFIRSHIST').skip(1);
  end;
  CloseApollo('NFIRSHIST');
  CloseApollo('NFIRSFIR');
  CloseApollo('NFIRSSTR');
  CloseApollo('NFIRSWILDLAND');
  CloseApollo('NFIRSARSON');
  CloseApollo('NFIRSEMS');
  CloseApollo('NFIRSSSSETUP');
  CloseApollo('NFIRSMAIN');

  if mFireID = '52004' then
     NfirsResForm := 'Y';
end;

procedure Write1000(NoRecordsSubmitted: Boolean);
Var LineString,mStation: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1000' + '^';
  if NoRecordsSubmitted then
    LineString := LineString +  '3^'
  else
    LineString := LineString + mRevisedValue + '^';
  if mfireid='70814' then
    mStation := SqlLookup(tdbfield('NFIRSMAIN','N5DISTRICTID'),'N5DISTRICTID','N5DISTRICT','CODE')
  else
    mStation := tdbfield('NFIRSMAIN','UNITNUM');

  LineString := LineString + mStation + '^' + '5.0' + '^';
  writeln(txtfile,LineString);
end;

function SayZero(mString: String): string;
begin
  if mString='' then
    result := '0'
  else
    result := mString;
end;

procedure Write1005;
Var LineString: String;
  function checkRequired(Value: String): String;
  begin
    //Fields like arrival time, actions taken, and property use are coming back as critcal errors when submitted with
    //the conditions below.  They are optional fields so users can record them, but we will not submit them.

    If (substr(tdbfield('NFIRSMAIN','SITFOUND'),1,3) = '571') and ((tdbfield('NFIRSMAIN','MAID') = '3') or (tdbfield('NFIRSMAIN','MAID') = '4')) then
      checkRequired := ''
    else
      checkRequired := Value;
  end;
begin
  try
    LineString := IncBaseString;
    LineString := LineString + '1005' + '^';
    LineString := LineString + mRevisedValue + '^';
    LineString := LineString + substr(tdbfield('NFIRSMAIN','SITFOUND'),1,3) + '^';
    LineString := LineString + tdbfield('NFIRSMAIN','WILDADDR') + '^';
    LineString := LineString + IIF(tdbfield('NFIRSMAIN','MAID')='','N',tdbfield('NFIRSMAIN','MAID')) + '^';
    LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime )  + '^';
    LineString := LineString + checkRequired(nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEARR').AsDateTime ))  + '^';
    LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMECONT').AsDateTime )  + '^';
    LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEIN').AsDateTime )  + '^';
    LineString := LineString + SqlLookUp(tdbfield('NFIRSMAIN','SCHDSHIFTNAMEID'),'SCHDSHIFTNAMEID','SCHDSHIFTNAME','CODE') + '^';
    LineString := LineString + tdbfield('NFIRSMAIN','ALARMNUM') + '^';
    LineString := LineString + SqlLookUp(tdbfield('NFIRSMAIN','N5DISTRICTID'),'N5DISTRICTID','N5DISTRICT','CODE') + '^';

    
    LineString := LineString + checkRequired(WriteStringArray([alltrim(substr(tdbfield('NFIRSMAIN','TYPEACT'),1,2)), alltrim(substr(tdbfield('NFIRSMAIN','ACTION2'),1,2)), alltrim(substr(tdbfield('NFIRSMAIN','ACTION3'),1,2))] )) + '^';
    If (mFireID = '11540') then begin
//    LineString := LineString + checkRequired(WriteStringArray([alltrim(substr(tdbfield('NFIRSMAIN','TYPEACT'),1,2)), alltrim(substr(tdbfield('NFIRSMAIN','ACTION2'),1,2)), alltrim(substr(tdbfield('NFIRSMAIN','ACTION3'),1,2))] )) + '^';
      LineString := LineString + '^';
    end else begin
//    LineString := LineString + checkRequired(WriteStringArray([tdbfield('NFIRSMAIN','TYPEACT'), tdbfield('NFIRSMAIN','ACTION2'), tdbfield('NFIRSMAIN','ACTION3')] )) + '^';
//    LineString := LineString + IIf(NFIRSResForm = 'Y','Y','') + '^';
      LineString := LineString + '^';
    end;

    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','APPSUPP').AsFloat)+ '^';
    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','APPEMS').AsFloat)+ '^';
    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','APPOTH').AsFloat)+ '^';
    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','PERSSUPP').AsFloat)+ '^';
    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','PERSEMS').AsFloat)+ '^';
    LineString := LineString + FormatFloat('##0',GetField('NFIRSMAIN','PERSOTH').AsFloat)+ '^';
    LineString := LineString + '' + '^'; //tdbfield('NFIRSMAIN','RESCOUNTIN') + '^';
    LineString := LineString + SayZero(GetField('NFIRSMAIN','LOSSPROP').AsString )+ '^';
    LineString := LineString + SayZero(GetField('NFIRSMAIN','LOSSCONT').AsString )+ '^';
    LineString := LineString + GetField('NFIRSMAIN','VALPROP').AsString + '^';
    LineString := LineString + GetField('NFIRSMAIN','VALCONT').AsString + '^';
    LineString := LineString + IncludeZero(tdbfield('NFIRSMAIN','FATFIRE')) + '^';
    LineString := LineString + IncludeZero(tdbfield('NFIRSMAIN','FATCIV')) + '^';
    LineString := LineString + IncludeZero(tdbfield('NFIRSMAIN','INJFIRE')) + '^';
    LineString := LineString + IncludeZero(tdbfield('NFIRSMAIN','INJCIV')) + '^';
    LineString := LineString + checkRequired(tdbfield('NFIRSMAIN','DETECTOR')) + '^';
    LineString := LineString + checkRequired(tdbfield('NFIRSMAIN','HAZMAT')) + '^';
    LineString := LineString + checkRequired(tdbfield('NFIRSMAIN','COMPLEX')) + '^';
    LineString := LineString + checkRequired(alltrim(substr(tdbfield('NFIRSMAIN','FIXPROP'),1,3))) + '^';
    writeln(txtfile,LineString);
  except
    on e: Exception do begin
      appendtolog('Error on NFIRSMAINID: '+tdbfield('NFIRSMAIN','NFIRSMAINID')+CRLF+e.Message);
    end;
  end;
end;

procedure Write1010;
Var LineString : String;
    Zip        : String;
begin
  Zip        := RemoveCharacter(alltrim(substr(tdbfield('NFIRSMAIN','ZIP'),1,5) + substr(tdbfield('NFIRSMAIN','ZIP'),7,4)),'-'); 
  LineString := IncBaseString;
  LineString := LineString + '1010' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','CENSUS') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','LOCTYPE') + '^';
  LineString := LineString + alltrim(dbfield('NFIRSMAIN','STRNUM')) + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','STREETPRE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','STREET') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','STREETTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','STREETSUFF') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','ROOMAPT') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','CITY') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','STATE') + '^';
  LineString := LineString + Zip + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','CROSS1') + '^';
  writeln(txtfile,LineString);
end;

procedure Write1020;
Var LineString   : String;
    IncNumLength : Integer;
begin
  IncNumLength := Length(tdbfield('NFIRSMAIN','MUTINCNUM'));
  LineString   := IncBaseString;
  LineString   := LineString + '1020' + '^';
  LineString   := LineString + mRevisedValue + '^';
  LineString   := LineString + tdbfield('NFIRSMAIN','MDEPT') + '^';
  LineString   := LineString + tdbfield('NFIRSMAIN','MUTSTATE') + '^';

  If IncNumLength > 7 then
    LineString   := LineString + Substr(tdbfield('NFIRSMAIN','MUTINCNUM'),IncNumLength-7,7) + '^'
  else
    LineString   := LineString + tdbfield('NFIRSMAIN','MUTINCNUM') + '^';
  writeln(txtfile,LineString);
end;

procedure Write1030;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1030' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OFFCODE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OFFCHARGE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OCFIRST') + '^';
  LineString := LineString + substr(tdbfield('NFIRSMAIN','OCMI'),1,1) + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OFFRANK') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OFFASS') + '^';
  If (GetField('NFIRSMAIN','OFFDATE').AsDateTime = 0) or (GetField('NFIRSMAIN','OFFDATE').AsDateTime < GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime) then
    LineString := LineString + nfirs50date(GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime + 1/24 ) + '^'
  else
    LineString := LineString + nfirs50date(GetField('NFIRSMAIN','OFFDATE').AsDateTime) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1035;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1035' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OMEMCODE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','MEMREP') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','MRFIRST') + '^';
  LineString := LineString + substr(tdbfield('NFIRSMAIN','MRMI'),1,1) + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','MEMRANK') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','MEMASS') + '^';
  If (GetField('NFIRSMAIN','MEMDATE').AsDateTime = 0) or (GetField('NFIRSMAIN','MEMDATE').AsDateTime < GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime) then
    LineString := LineString + nfirs50date(GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime + 1/24 ) + '^'
  else
    LineString := LineString + nfirs50date(GetField('NFIRSMAIN','MEMDATE').AsDateTime) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1040;
Var s              : String;
    LineString     : String;
    bUnlimitedNarr : Boolean;
begin
  LineString := IncBaseString;
  LineString := LineString + '1040' + '^';
  LineString := LineString + mRevisedValue + '^';
  bUnlimitedNarr := (mfireid='25150') or (mfireid='81000') or (mfireid='89011');
  if bUnlimitedNarr then
    s := getfield('NFIRSMAIN','NARR').AsString
  else
    s := tdbfield('NFIRSMAIN','NARR');
  Strip(s,[#13,#10]);
  Strip(s,[#10,#13]);
  Strip(s,['^']);
  if bUnLimitedNarr then
    LineString := LineString + s + '^'
  else
    LineString := LineString + alltrim(substr(s,1,250)) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1050;
Var LineString : String;
    Phone      : String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1050' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + '1'+ '^';
  LineString := LineString + tdbfield('NFIRSMAIN','NAMEPRE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PFIRSTNAME') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','MI') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PLASTNAME') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','NAMESUF') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','BUSNAME') + '^';
  Phone      := alltrim(AnsiReplaceStr(substr(tdbfield('NFIRSMAIN','PHONE'),1,3) + substr(tdbfield('NFIRSMAIN','PHONE'),5,3) + substr(tdbfield('NFIRSMAIN','PHONE'),9,4),'-',''));
  If AnyStrToInt(Phone) = 0 then
    Phone := '';
  LineString := LineString + Phone + '^';;    
  LineString := LineString + tdbfield('NFIRSMAIN','PESTRNUM') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PEPRE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PESTREET') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PETYPE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PESUFF') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PEPOBOX') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PEROOMAPT') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PECITY') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','PESTATE') + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(tdbfield('NFIRSMAIN','PEZIP'),1,5) + substr(tdbfield('NFIRSMAIN','PEZIP'),7,4),'-','')) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1055;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1055' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OPRE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OFIRSTNAME') + '^';              
  LineString := LineString + tdbfield('NFIRSMAIN','OMI') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OLASTNAME') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSUFF') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OBUSINESS') + '^';
  LineString := LineString + alltrim(substr(StringWithOnlyIntegers(tdbfield('NFIRSMAIN','OPHONE')),1,10)) + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSTRNUM') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSTREETPRE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSTREET') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSTREETSUF') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OPOBOX') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OROOMAPT') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OCITY') + '^';
  LineString := LineString + tdbfield('NFIRSMAIN','OSTATE') + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(tdbfield('NFIRSMAIN','OZIP'),1,5) + substr(tdbfield('NFIRSMAIN','OZIP'),7,4),'-','')) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1060;
Var LineString: String;
    i: Integer;
begin
  i := 0;
  A('NFIRSSSSETUP').GoTop;
  While Not A('NFIRSSSSETUP').Eof do begin
    if tdbfield('NFIRSSSSETUP','IDNUMBER') <> '' then begin
      i          := i+1;
      LineString := IncBaseString;
      LineString := LineString + '1060' + '^';
      LineString := LineString + mRevisedValue + '^';
      LineString := LineString + inttostr(i) + '^';
      LineString := LineString + tdbfield('NFIRSSSSETUP','IDNUMBER') + '^';
      LineString := LineString + tdbfield('NFIRSMAIN',tdbfield('NFIRSSSSETUP','FIELDNAME')) + '^';
      writeln(txtfile,LineString);
    end;
    A('NFIRSSSSETUP').Skip(1);
  end;
end;

//12003^MD^20130428^0000662^000^1060^^001^ALARM^^
//It is missing the Special Study Code which should be in the 10th (last)
//field AND the 9th field which should be the Special Study ID Number is not in the proper format this field should be a 5 digit number. See the table below.

procedure Write1100;
Var LineString,mAcresBurn : String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1100' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSFIR','NUMRESUNIT') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','NOTRESFLAG') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','NUMBUILD')   + '^';
  if (tdbField('NFIRSFIR','LESSONEACR') = 'Y') or (tdbField('NFIRSFIR','ACRENONE') = 'Y') then
    mAcresBurn := ''
  else
    mAcresBurn := formatfloat('#######0',anystrtofloat(tdbfield('NFIRSFIR','ACREBURN')));

  LineString := LineString + mAcresBurn   + '^';
  if mFireID = '25150' then //If ACRENONE OR >1 ACRE PASS NULL VALUE
    LineString := LineString + IIf(tdbField('NFIRSFIR','LESSONEACR') = 'Y','Y','') + '^'
  else
    LineString := LineString + IIf((tdbField('NFIRSFIR','LESSONEACR') = 'Y') or (tdbField('NFIRSFIR','ACRENONE') = 'Y'),'Y','') + '^';
  LineString := LineString + tdbField('NFIRSFIR','ONSITENONE') + WriteArray('NFIRSFIR',['ONSITE1','ONSITE2','ONSITE3']) + '^';
  LineString := LineString + WriteArray('NFIRSFIR',['STORAGE1','STORAGE2','STORAGE3']) + '^';
  LineString := LineString + tdbfield('NFIRSFIR','AREAORIGIN') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','HEATSOURCE') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','ITEMFIRST') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','CONFINEDTO') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','TYPEMAT') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSFIR','CAUSEIGN') = '0','U',tdbfield('NFIRSFIR','CAUSEIGN')) + '^';

  If (tdbfield('NFIRSMAIN','EXPNUM') = '00') then begin
    LineString := LineString + WriteStringArray([tdbField('NFIRSFIR','CONTIGN1'),tdbField('NFIRSFIR','CONTIGN2')]) + '^';
    LineString := LineString + WriteArray('NFIRSFIR',['NOCAUSE','HUMAN1','HUMAN2','HUMAN3','HUMAN4', 'HUMAN5','HUMAN6','HUMAN7']) + '^';
  end else begin
    LineString := LineString + tdbField('NFIRSFIR','CONTIGN1') + ';' + '^';
    LineString := LineString + '^';
  end;  

  LineString := LineString + IIF(tdbfield('NFIRSFIR','CAUSEAGE')='0','',tdbfield('NFIRSFIR','CAUSEAGE')) + '^';
  LineString := LineString + tdbfield('NFIRSFIR','HUMANSEX') + '^';
  LineString := LineString + tdbField('NFIRSFIR','EQUINV')   + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBINV')   + '^';
  LineString := LineString + WriteArray('NFIRSFIR',['FIRESUPP1','FIRESUPP2','FIRESUPP3']) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1110;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1110' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSFIR','PREPLAN') + '^';
  LineString := LineString + WriteArray('NFIRSFIR',['ARSON','POLICE','CORONER','OTHER']) + '^';
  writeln(txtfile,LineString);
end;

procedure Write1120;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1120' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBMAKE') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBMODEL') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBYEAR') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBLIC') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBSTATE') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','MOBSER') + '^';
  writeln(txtfile,LineString);
end;

procedure Write1130;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1130' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUBRAND') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUMODEL') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUSERIAL') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUYEAR') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUPOWER') + '^';
  LineString := LineString + tdbfield('NFIRSFIR','EQUPORT') + '^';
  writeln(txtfile,LineString);
end;

procedure Write1200;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1200' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('NFIRSSTR','STRTYPE') + '^';
  LineString := LineString + alltrim(substr(tdbfield('NFIRSSTR','BUILDSTAT'),1,1)) + '^';
  LineString := LineString + FormatFloat('#0',GetField('NFIRSSTR','BLDHEIGHT').AsFloat)+ '^';
  LineString := LineString + FormatFloat('#0',GetField('NFIRSSTR','BELOWGRADE').AsFloat)+ '^';
  LineString := LineString + WriteZero(tdbfield('NFIRSSTR','LENGTHSQL')) + '^';
  LineString := LineString + WriteZero(tdbfield('NFIRSSTR','WIDTH')) + '^';
  LineString := LineString + WriteZero(tdbfield('NFIRSSTR','SQUAREFEET')) + '^';
  LineString := LineString + tdbfield('NFIRSSTR','FIREORIGIN') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','FIRESPREAD') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','STORYMINOR') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','STORYSIGN') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','STORYHEAVY') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','STORYEXT') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','NOFLAMESPR') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','ITEMCONTR') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','TYPEMAT') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','DETPRES') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSSTR','DETPRES') = '1',tdbfield('NFIRSSTR','DETTYPE'), '') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSSTR','DETPRES') = '1',tdbfield('NFIRSSTR','DETPOWER'),'') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSSTR','DETPRES') = '1',tdbfield('NFIRSSTR','DETOP'),   '') + '^';
  LineString := LineString + IIf((tdbfield('NFIRSSTR','DETPRES') = '1') and (tdbfield('NFIRSSTR','DETOP') = '2'),tdbfield('NFIRSSTR','DETEFF'),'') + '^';
  //REMOVED and (tdbfield('NFIRSSTR','DETEFF') = '4' in line below - MFP 9/24/21
  LineString := LineString + IIf((tdbfield('NFIRSSTR','DETPRES') = '1') and (tdbfield('NFIRSSTR','DETOP') = '3'),tdbfield('NFIRSSTR','DETFAIL'),'') + '^';
  LineString := LineString + tdbfield('NFIRSSTR','AUTOPRES') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSSTR','AUTOPRES') = '1', tdbfield('NFIRSSTR','AUTOTYPE'),'') + '^';
  LineString := LineString + IIf(tdbfield('NFIRSSTR','AUTOPRES') = '1', tdbfield('NFIRSSTR','AUTOOP'),  '') + '^';

  If tdbfield('NFIRSSTR','AUTOPRES') = '1' then
    LineString := LineString + IIf(tdbfield('NFIRSSTR','NUMSPR') = '0','',tdbfield('NFIRSSTR','NUMSPR')) + '^'
  else
    LineString := LineString + '^';

  If (tdbfield('NFIRSSTR','AUTOPRES') = '1') and (tdbfield('NFIRSSTR','AUTOOP') = '2') THEN 
    LineString := LineString + tdbfield('NFIRSSTR','AUTOFAIL') + '^'
  else  
    LineString := LineString + '' + '^';
  writeln(txtfile,LineString);
end;

procedure Write1300;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1300' + '^';
  LineString := LineString + mRevisedValue + '^';
  If GetField('NFIRSWILDLAND','LATITUDE').AsFloat=0 then
    LineString := LineString + '' + '^'
  else
    LineString := LineString + tdbfield('NFIRSWILDLAND','LATITUDE') + '^';
  If GetField('NFIRSWILDLAND','LONGITUDE').AsFloat=0 then
    LineString := LineString + '' + '^'
  else
    LineString := LineString + tdbfield('NFIRSWILDLAND','LONGITUDE') + '^';

  If Not (tdbfield('NFIRSMAIN','WILDADDR') = '') then begin  
    LineString := LineString + tdbfield('NFIRSWILDLAND','TOWNSHIP') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','TOWNNS') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','RANGE') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','RANGEEW') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','SECTION') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','SUBSECTION') + '^';
    LineString := LineString + tdbfield('NFIRSWILDLAND','MERIDIAN') + '^';
  end else
    LineString := LineString + '^^^^^^^';

  LineString := LineString + tdbfield('NFIRSWILDLAND','AREATYPE') + '^';

//Not sure why tdbfield('NFIRSMAIN','CAUSEIGN') was here.  Rick.  3/31/2011.
  LineString := LineString + tdbfield('NFIRSWILDLAND','FIRECAUSE') + '^';
//LineString := LineString + tdbfield('NFIRSMAIN','CAUSEIGN') + '^';

  LineString := LineString + WriteArray('NFIRSWILDLAND',['HUMANNONE','HUMAN1','HUMAN2','HUMAN3','HUMAN4','HUMAN5','HUMAN6','HUMAN7']) + '^';
  LineString := LineString +WriteArray('NFIRSWILDLAND',['FACTCONT1','FACTCONT2']) + '^';
  LineString := LineString + WriteArray('NFIRSWILDLAND',['FIRESUPP1','FIRESUPP2','FIRESUPP3']) + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','HEATSOURCE') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','MOBTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','EQUINV') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','WEATHID') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','WEATHTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','WINDDIRECT') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','WINDSPEED') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','AIRTEMP') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','RELHUM') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','FUELMOIST') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','FIREDANGER') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','NUMBUILDI') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','NUMBUILDT') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','ACREBURNED') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','PRIMECROP1') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','PRIMECROP2') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','PRIMECROP3') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURNU') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN1') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN2') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN3') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN4') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN5') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN6') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN7') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN8') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','BURN0') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','PROPMANOWN') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','FAC') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','NFDRSFUEL') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','PERSRESP') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','GENDER') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','AGE') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','ACTPERS') + '^';
  LineString := LineString + GetField('NFIRSWILDLAND','HORZDIST').AsString + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','ROWTYPE') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','ELEVATION') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','RELPOS') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','ASPECT') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','FLAMELGTH') + '^';
  LineString := LineString + tdbfield('NFIRSWILDLAND','RATESPREAD') + '^';
  writeln(txtfile,LineString);
end;

procedure Write1400;
Var LineString : String;
    mAge       : Real;
begin
  Open_Query('NFIRSCIVILIAN',false,'SELECT * FROM NFIRSCIVILIAN WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
  While Not A('NFIRSCIVILIAN').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1400' + '^';
    LineString := LineString + mRevisedValue   + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','CASNUM')    + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','FIRSTNAME') + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','MI')        + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','NAME')      + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','SUFFIX')    + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','SEX')       + '^';

    mAge := GetField('NFIRSCIVILIAN','AGE').AsFloat;
    try
      If GetField('NFIRSCIVILIAN','DOB').AsDateTime<>0 then
        mAge := (GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime-GetField('NFIRSCIVILIAN','DOB').AsDateTime)/365;
    except
    end;
    LineString := LineString + Formatfloat('##0.00',rMax(0,mAge))+'^';

    LineString := LineString + tdbfield('NFIRSCIVILIAN','RACE')      + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','ETHNICITY') + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','AFFILIAT')  + '^';
    LineString := LineString + nfirs50dateTime(GetField('NFIRSCIVILIAN','DATETIMEINJ').AsDatetime) + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','CASSEV')    + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','CAUSEINJ')  + '^';
    LineString := LineString + WriteArray('NFIRSCIVILIAN',['HUMANNONE','HUMAN1','HUMAN2','HUMAN3','HUMAN4',
                                                 'HUMAN5','HUMAN6','HUMAN7','HUMAN8']) + '^';
    LineString := LineString + WriteArray('NFIRSCIVILIAN',['FACTOR1','FACTOR2','FACTOR3']) + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','ACTINJ')     + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','LOCATION')   + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','GENLOC')     + '^';
    
    If tdbfield('NFIRSCIVILIAN','GENLOC') = '2' then begin
      LineString := LineString + IIf(tdbfield('NFIRSCIVILIAN','STARTBELOW') = 'Y','-','') + alltrim(inttostr(anystrtoint(tdbfield('NFIRSCIVILIAN','STORYSTART')))) + '^';
      LineString := LineString + IIf(tdbfield('NFIRSCIVILIAN','INJBELOW') = 'Y','-','')   + alltrim(inttostr(anystrtoint(tdbfield('NFIRSCIVILIAN','STORYINJ'))))   + '^';
      LineString := LineString + tdbfield('NFIRSCIVILIAN','SPECLOC')    + '^';
    end else If tdbfield('NFIRSCIVILIAN','GENLOC') = '3' then begin
      LineString := LineString + '^';
      LineString := LineString + '^';
      LineString := LineString + tdbfield('NFIRSCIVILIAN','SPECLOC')    + '^';
    end else begin
      LineString := LineString + '^';
      LineString := LineString + '^';
      LineString := LineString + '^';
    end;

    LineString := LineString + tdbfield('NFIRSCIVILIAN','PRIMSYM')    + '^';
    LineString := LineString + tdbfield('NFIRSCIVILIAN','PARTINJ')    + '^';
    if tdbfield('NFIRSCIVILIAN','DISPOSIT') = 'Y' then
      LineString := LineString + '1'   + '^'  //Y in Disposition
    else
      LineString := LineString + '^';         //Nothing in Disposition
      
    writeln(txtfile,LineString);
    A('NFIRSCIVILIAN').Skip(1);
  end;
  CloseApollo('NFIRSCIVILIAN');
end;


procedure Write1500;
Var LineString : String;
    mAge       : Real;
begin
  Open_Query('NFIRSFIRECASUALTY',false,'SELECT * FROM NFIRSFIRECASUALTY WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
  While Not A('NFIRSFIRECASUALTY').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1500' + '^';
    LineString := LineString + mRevisedValue    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','CASNUM') + '^';
    LineString := LineString + sqllookup(tdbfield('NFIRSFIRECASUALTY','PERSID'),'PERSID','PERS','PERSCODE')   + '^'; 
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','FIRSTNAME') + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','MI')        + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','NAME')      + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','SUFFIX')    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','SEX')       + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','CARVOL')    + '^';
    mAge       := GetField('NFIRSFIRECASUALTY','AGE').AsFloat;
    try
      If GetField('NFIRSFIRECASUALTY','DOB').AsDateTime > 0 then
        mAge := (GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime-GetField('NFIRSFIRECASUALTY','DOB').AsDateTime)/365;
    except
    end;
    LineString := LineString + Formatfloat('##0',rMax(0,mAge))+'^';    
    LineString := LineString + Nfirs50dateTime(Getfield('NFIRSFIRECASUALTY','DATETIMEINJ').AsDateTime) + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','NUMRESP')   + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','ASSIGN')    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','COND')      + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','SEV')       + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','TAKENTO')   + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','ACTINJ')    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','PRIMSYMP')  + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','PRIMINJ')   + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','CAUSEINJ')  + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','FACTCONT')  + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','OBJINV')    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','WHEREINJ')  + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','INJREL')    + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','STORYINJ')  + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','SPECLOC')   + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','VEHTYPE')   + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','PROTEQUF')  + '^';
    If (tdbfield('NFIRSFIRECASUALTY','PROTEQUF') = 'Y') then
      Write1510;

    Writeln(txtfile,LineString);
    A('NFIRSFIRECASUALTY').Skip(1);
  end;
  CloseApollo('NFIRSFIRECASUALTY');
end;

procedure Write1510;
Var LineString: String;
begin
  Open_Query('NFIRSEQUIPMENTFAILURE',false,'SELECT * FROM NFIRSEQUIPMENTFAILURE WHERE NFIRSFIRECASUALTYID = ' + edbField('NFIRSFIRECASUALTY','NFIRSFIRECASUALTYID'));
  While Not A('NFIRSEQUIPMENTFAILURE').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1510' + '^';
    LineString := LineString + mRevisedValue       + '^';
    LineString := LineString + tdbfield('NFIRSFIRECASUALTY','CASNUM')    + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUSEQ')   + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUITEM')  + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUPROB')  + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUMAN')   + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUMODEL') + '^';
    LineString := LineString + tdbfield('NFIRSEQUIPMENTFAILURE','EQUSER')   + '^';
    writeln(txtfile,LineString);
    A('NFIRSEQUIPMENTFAILURE').Skip(1);
  end;
  CloseApollo('NFIRSEQUIPMENTFAILURE');
end;

procedure Write1600;
Var LineString : String;
    mAge       : Real;
    ProcList   : String;
begin
  While Not A('NFIRSEMS').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1600' + '^';
    LineString := LineString + mRevisedValue        + '^';
    LineString := LineString + tdbfield('NFIRSEMS','PATNUM')    + '^';

    If (GetField('NFIRSEMS','DATETIMEARR').AsDateTime > 0) and (GetField('NFIRSEMS','DATETIMEARR').AsDateTime < GetField('NFIRSBAS','DATETIMEARR').AsDateTime) then
      LineString := LineString + Nfirs50DateTime(GetField('NFIRSMAIN','DATETIMEARR').AsDatetime) + '^'
    else
      LineString := LineString + Nfirs50DateTime(GetField('NFIRSEMS','DATETIMEARR').AsDatetime) + '^';

    If (GetField('NFIRSEMS','DATETIMETRANS').AsDateTime > 0) and (GetField('NFIRSEMS','DATETIMETRANS').AsDateTime > GetField('NFIRSBAS','DATETIMEIN').AsDateTime) then
      LineString := LineString + nfirs50dateTime(GetField('NFIRSMAIN','DATETIMEIN').AsDatetime) + '^'
    else
      LineString := LineString + nfirs50dateTime(GetField('NFIRSEMS','DATETIMETRANS').AsDatetime) + '^';

    LineString := LineString + IIf(tdbfield('NFIRSEMS','PROVIDER') = '','00',tdbfield('NFIRSEMS','PROVIDER'))  + '^';
    mAge:=GetField('NFIRSEMS','AGE').AsFloat;
    try
      if GetField('NFIRSEMS','DOB').AsDateTime<>0 then
        mAge:=(GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime-GetField('NFIRSEMS','DOB').AsDateTime)/365;
    except
    end;
    LineString := LineString + Formatfloat('##0.00',rMax(0,mAge))+'^';
    LineString := LineString + tdbfield('NFIRSEMS','GENDER')    + '^';
    LineString := LineString + tdbfield('NFIRSEMS','RACE')      + '^';
    LineString := LineString + tdbfield('NFIRSEMS','ETHNICITY') + '^';
    If tdbfield('NFIRSEMS','HUMANN') = 'N' then
      LineString := LineString + 'N;^'
    else
      LineString := LineString + WriteArray('NFIRSEMS',['HUMAN1','HUMAN2','HUMAN3','HUMAN4','HUMAN5','HUMAN6','HUMAN7','HUMAN8']) + '^';
    LineString := LineString + tdbfield('NFIRSEMS','OTHERFACT') + '^';
    LineString := LineString + WriteArray('NFIRSEMS',['BODYSITE1','BODYSITE2','BODYSITE3','BODYSITE4','BODYSITE5']) + '^';
    LineString := LineString + WriteArray('NFIRSEMS',['INJTYPE1','INJTYPE2','INJTYPE3','INJTYPE4','INJTYPE5']) + '^';
    LineString := LineString + IIf(Length(tdbfield('NFIRSEMS','CAUSEINJ')) < 2,'',tdbfield('NFIRSEMS','CAUSEINJ')) + '^';
    ProcList   := WriteArray('NFIRSEMS',['PROC1', 'PROC2', 'PROC3', 'PROC4', 'PROC5', 'PROC6', 'PROC7', 'PROC8', 'PROC9', 'PROC10','PROC11','PROC12','PROC13',
                                         'PROC14','PROC15','PROC16','PROC17','PROC18','PROC19','PROC20','PROC21','PROC22','PROC23','PROC24','PROCOO']);

    If tdbfield('NFIRSEMS','PROCNN') = 'NN' then
      LineString := LineString + 'NN;^'
    else if ProcList = '' then
      LineString := LineString + '00;^'
    else
      LineString := LineString + ProcList + '^';

    If (tdbfield('NFIRSEMS','SAFEN') = 'N') then
      LineString := LineString + 'N;^'
    else if (tdbfield('NFIRSEMS','SAFEU') = 'U') then
      LineString := LineString + 'U;^'
    else
      LineString := LineString + WriteArray('NFIRSEMS',['SAFE1','SAFE2','SAFE3','SAFE4','SAFE5','SAFE6','SAFE0','SAFEU']) + '^';
    LineString := LineString + tdbfield('NFIRSEMS','PREARREST')       + '^';
    LineString := LineString + WriteArray('NFIRSEMS',['PRE1','PRE2']) + '^';
    LineString := LineString + tdbfield('NFIRSEMS','INITIALARR')      + '^';
    LineString := LineString + tdbfield('NFIRSEMS','HIGHLEV')         + '^';
    LineString := LineString + tdbfield('NFIRSEMS','HIGHLEVON')       + '^';
    LineString := LineString + tdbfield('NFIRSEMS','PATSTATUS')       + '^';
    LineString := LineString + tdbfield('NFIRSEMS','PULSETRANS')      + '^';
    LineString := LineString + tdbfield('NFIRSEMS','DISP')            + '^';
    writeln(txtfile,LineString);
    A('NFIRSEMS').Skip(1);
  end;
end;

procedure Write1700;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1700' + '^';
  LineString := LineString + mRevisedValue       + '^';
  LineString := LineString + tdbfield('HAZMAT','RELFROM')    + '^';
  LineString := LineString + tdbfield('HAZMAT','RELSTORY')   + '^';
  LineString := LineString + tdbfield('HAZMAT','POPDENSITY') + '^';
  LineString := LineString + tdbfield('HAZMAT','AREAAMEAS')  + '^';
  LineString := LineString + tdbfield('HAZMAT','AREAAFFECT') + '^';
  LineString := LineString + tdbfield('HAZMAT','AREAEMEAS')  + '^';
  LineString := LineString + tdbfield('HAZMAT','AREAEVAC')   + '^';
  LineString := LineString + tdbfield('HAZMAT','ESTEVAC')    + '^';
  LineString := LineString + tdbfield('HAZMAT','ESTBUILDEV') + '^';
  LineString := LineString + WriteArray('HAZMAT',['ACTION1','ACTION2','ACTION3']) + '^';
  LineString := LineString + tdbfield('HAZMAT','OCCFIRST')   + '^';
  LineString := LineString + tdbfield('HAZMAT','CAUSEREL')   + '^';
  LineString := LineString + WriteArray('HAZMAT',['FACTCONT1','FACTCONT2','FACTCONT3']) + '^';
  LineString := LineString + WriteArray('HAZMAT',['FACTIMP1','FACTIMP2','FACTIMP3']) + '^';
  LineString := LineString + tdbfield('HAZMAT','EQUINV')     + '^';
  LineString := LineString + tdbfield('HAZMAT','HAZMATDISP') + '^';
  LineString := LineString + tdbfield('HAZMAT','DEATH')      + '^';
  LineString := LineString + tdbfield('HAZMAT','INJURY')     + '^';
  writeln(txtfile,LineString);

  Write1710;

  If Not (tdbfield('HAZMAT','MOBTYPE') = '') then
    Write1720;
  If Not (tdbfield('HAZMAT','EQUINV') = 'NNN') and Not (tdbfield('HAZMAT','EQUINV') = '') then
    Write1730;
end;

procedure Write1710;
Var LineString: String;
    HazNum    : Integer;
begin
  HazNum := 1;                        
  Open_Query('NFIRSHAZMATCHEM',false,'SELECT * FROM NFIRSHAZMATCHEM WHERE NFIRSHAZMATID = ' + Getfield('HAZMAT','NFIRSHAZMATID').AsString);
  While Not A('NFIRSHAZMATCHEM').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1710' + '^';
    LineString := LineString + mRevisedValue       + '^';
    LineString := LineString + IntToStr(HazNum) + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','HAZMATID')   + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','DOTHAZ')     + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','CASNUM')     + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','CHEMNAME')   + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','CONTTYPE')   + '^';
    LineString := LineString + writezero(tdbfield('NFIRSHAZMATCHEM','ESTCONTCAP')) + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','UNITCAP')    + '^';
    LineString := LineString + writezero(tdbfield('NFIRSHAZMATCHEM','ESTAMTREL'))  + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','UNITREL')    + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','PHYSSTATE')  + '^';
    LineString := LineString + tdbfield('NFIRSHAZMATCHEM','RELINTO')    + '^';
    writeln(TxtFile,LineString);
    HazNum := HazNum + 1;
    A('NFIRSHAZMATCHEM').Skip(1);
  end;
  CloseApollo('NFIRSHAZMATCHEM');
end;

procedure Write1720;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1720' + '^';
  LineString := LineString + mRevisedValue       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBTYPE')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBMAKE')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBMODEL')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBYEAR')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBLIC')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBSTATE')       + '^';
  LineString := LineString + tdbfield('HAZMAT','MOBDOT')       + '^';
  writeln(txtfile,LineString);
end;

procedure Write1730;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1730' + '^';
  LineString := LineString + mRevisedValue + '^';
  LineString := LineString + tdbfield('HAZMAT','EQUBRAND')   + '^';
  LineString := LineString + tdbfield('HAZMAT','EQUMODEL')   + '^';
  LineString := LineString + tdbfield('HAZMAT','EQUSERIAL')  + '^';
  LineString := LineString + tdbfield('HAZMAT','EQUYEAR')    + '^';
  writeln(txtfile,LineString);
end;

procedure Write1800;
Var LineString   : String;
    NumberPerson : Integer;
    SeqNum       : Integer;
    DateTimeDisp,DateTimeArr,DateTimeIn: TDateTime;
    mDispCallid: String;

begin
  Open_Query('NFIRSAPP',false,'SELECT * FROM NFIRSAPP WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);
  SeqNum  := 1;
  AppList := TStringList.Create;
  While Not A('NFIRSAPP').Eof do begin
    NumberPerson := SqlTableRecCount('SELECT COUNT(*) FROM NFIRSATT WHERE NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString + ' AND NFIRSAPPID = ' + edbfield('NFIRSAPP','NFIRSAPPID'));
    If (NumberPerson > 0) then begin
      AppList.Add(padr(dbfield('NFIRSAPP','UNITNUM'),16,' ') + padr(IntToStr(SeqNum),2,' '));
      LineString := IncBaseString;
      LineString := LineString + '1800' + '^';
      LineString := LineString + mRevisedValue       + '^';
      LineString := LineString + IntToStr(SeqNum)                + '^';
      LineString := LineString + tdbfield('NFIRSAPP','UNITNUM')     + '^';
      LineString := LineString + IIf(tdbfield('NFIRSAPP','N5AORT') = '','UU',tdbfield('NFIRSAPP','N5AORT')) + '^';
      if NfirsExportUseNfirsAppTimes then begin
        mDispcallid := sqllookup(GetField('NFIRSHIST','NFIRSMAINID').AsString,'nfirsmainid','nfirsmain','dispcallid');
        GetTimesNfirsAppTimesFromDispHist(GlobalAdoConnection,mDispCallid,tdbfield('nfirsapp','unitnum'),DateTimeDisp,DateTimeArr,DateTimeIn);

        LineString := LineString + nfirs50dateTime( DateTimeDisp )  + '^';
        LineString := LineString + nfirs50dateTime( DateTimeArr )  + '^';
        LineString := LineString + nfirs50dateTime( DateTimeIn )  + '^';

      end else begin
        LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime )  + '^';
        LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEARR').AsDateTime )  + '^';
        LineString := LineString + nfirs50dateTime( GetField('NFIRSMAIN','DATETIMEIN').AsDateTime )  + '^';
      end;
      LineString := LineString + IntToStr(NumberPerson) + '^';
      LineString := LineString + tdbfield('NFIRSAPP','N5AU') + '^'; 
      LineString := LineString + WriteArray('NFIRSAPP',['N5ACT1','N5ACT2','N5ACT3','N5ACT4']) + '^';
      SeqNum     := SeqNum + 1;
      writeln(txtfile,LineString);
    end;
    A('NFIRSAPP').Skip(1);
  end;
  CloseApollo('NFIRSAPP');
end;

function FindAppSeq(UnitNum: String): String;
Var AppCnt : Integer;
begin
  FindAppSeq := '';
  For AppCnt := 0 to AppList.Count-1 do begin
    If UnitNum = substr(AppList[AppCnt],1,16) then
      FindAppSeq := alltrim(substr(AppList[AppCnt],17,2));
  end;
end;

procedure Write1810;
Var AppSeq     : String;
    LineString : String;
    SeqNum     : Integer;
begin
  Open_Query('NFIRSATT',false,'SELECT NFIRSATT.N5ACT1, NFIRSATT.N5ACT2, NFIRSATT.N5ACT3, ' +
                              'NFIRSATT.N5ACT4, PERS.PERSCODE PERSCODE, PERS.FNAME, PERS.LNAME, PERS.MNAME, ' +
                              'PERSRANK.CODE PERSRANKCODE, NFIRSAPP.UNITNUM FROM NFIRSATT ' +
                              'LEFT JOIN PERS ON (NFIRSATT.PERSID = PERS.PERSID) ' +
                              'LEFT JOIN NFIRSAPP ON (NFIRSATT.NFIRSAPPID = NFIRSAPP.NFIRSAPPID) ' +
                              'LEFT JOIN PERSRANK ON (PERS.PERSRANKID = PERSRANK.PERSRANKID) ' +
                              'WHERE NFIRSATT.NFIRSMAINID = ' + GetField('NFIRSHIST','NFIRSMAINID').AsString);

  SeqNum := 1;
  While Not A('NFIRSATT').Eof do begin
    AppSeq       := FindAppSeq(padr(dbfield('NFIRSATT','UNITNUM'),16,' ') );
    If Not (AppSeq = '') then begin
      LineString := IncBaseString;
      LineString := LineString + '1810'                              + '^';
      LineString := LineString + mRevisedValue                       + '^';
      LineString := LineString + AppSeq                              + '^';
      LineString := LineString + IntToStr(SeqNum)                    + '^';
      LineString := LineString + tdbfield('NFIRSATT','PERSCODE')     + '^';
      LineString := LineString + tdbfield('NFIRSATT','FNAME')        + '^';
      LineString := LineString + tdbfield('NFIRSATT','MNAME')        + '^';
      LineString := LineString + tdbfield('NFIRSATT','LNAME')        + '^';
      LineString := LineString + tdbfield('NFIRSATT','PERSRANKCODE') + '^';
      LineString := LineString + WriteArray('NFIRSATT',['N5ACT1','N5ACT2','N5ACT3','N5ACT4']) + '^';
      SeqNum     := SeqNum + 1;
      writeln(txtfile,LineString);
    end;
    A('NFIRSATT').Skip(1);
  end;
  CloseApollo('NFIRSATT');
end;

procedure Write1900;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1900' + '^';
  LineString := LineString + mRevisedValue         + '^';
  LineString := LineString + tdbfield('NFIRSARSON','CASESTATUS') + '^';
  LineString := LineString + tdbfield('NFIRSARSON','AVALMFI')    + '^';
  LineString := LineString + WriteArray('NFIRSARSON',['SUSPMOT11','SUSPMOT12','SUSPMOT13','SUSPMOT14',
                                                      'SUSPMOT15','SUSPMOT21','SUSPMOT22','SUSPMOT23',
                                                      'SUSPMOT24','SUSPMOT31','SUSPMOT32','SUSPMOT41',
                                                      'SUSPMOT42','SUSPMOT43','SUSPMOT44','SUSPMOT45',
                                                      'SUSPMOT51','SUSPMOT52','SUSPMOT53','SUSPMOT54',
                                                      'SUSPMOT61','SUSPMOT62','SUSPMOT63','SUSPMOT64',
                                                      'SUSPMOT00','SUSPMOTUU']) + '^';
  LineString := LineString + WriteArray('NFIRSARSON',['AGI1','AGI2','AGI3','AGI4','AGI5','AGI6','AGI7','AGI8','AGI0','AGIN','AGIU']) + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ENTMETH')    + '^';
  LineString := LineString + tdbfield('NFIRSARSON','EXINVOLV')   + '^';
  LineString := LineString + tdbfield('NFIRSARSON','IDCON')      + '^';
  LineString := LineString + tdbfield('NFIRSARSON','IDIDELAY')   + '^';
  LineString := LineString + tdbfield('NFIRSARSON','IDFUEL')     + '^';
  LineString := LineString + WriteArray('NFIRSARSON',['INVINF1','INVINF2','INVINF3','INVINF4', 'INVINF5','INVINF6','INVINF7','INVINF8']) + '^';
  LineString := LineString + tdbfield('NFIRSARSON','PROPOWN')    + '^';
  LineString := LineString + WriteArray('NFIRSARSON',['INIOBS1','INIOBS2','INIOBS3','INIOBS4','INIOBS5','INIOBS6','INIOBS7','INIOBS8']) + '^';
  LineString := LineString + WriteArray('NFIRSARSON',['LAB1','LAB2','LAB3','LAB4','LAB5','LAB6','LABN']) + '^';
  writeln(txtfile,LineString);  
  If (tdbfield('NFIRSARSON','ARNONE') = '') then
    Write1910;
end;

procedure Write1910;
Var LineString: String;
begin
  LineString := IncBaseString;
  LineString := LineString + '1910' + '^';
  LineString := LineString + mRevisedValue    + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARNAME')     + '^';
  LineString := LineString + ''                                + '^';
  LineString := LineString + ''                                + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARADDRESS')  + '^';
  LineString := LineString + ''                                + '^';
  LineString := LineString + ''                                + '^';
  LineString := LineString + ''                                + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARCITY')     + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARSTATE')    + '^';
  LineString := LineString + alltrim(substr(tdbfield('NFIRSARSON','ARZIP'),1,5) + substr(tdbfield('NFIRSARSON','ARZIP'),7,4)) + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(tdbfield('NFIRSARSON','ARPHONE'),1,3) + substr(tdbfield('NFIRSARSON','ARPHONE'),5,3) + substr(tdbfield('NFIRSARSON','ARPHONE'),9,4),'-','')) + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARCASENUMB') + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARORI')      + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARFID')      + '^';
  LineString := LineString + tdbfield('NFIRSARSON','ARFDID')     + '^';

  writeln(txtfile,LineString);
  Write1920;
end;

procedure Write1920;
Var LineString: String;
    mAge  : Real;
begin
  Open_Query('NFIRSJUVENILE',false,'SELECT * FROM NFIRSJUVENILE WHERE NFIRSARSONID = '+edbfield('NFIRSARSON','NFIRSARSONID'));
  While Not A('NFIRSJUVENILE').Eof do begin
    LineString := IncBaseString;
    LineString := LineString + '1920' + '^';
    LineString := LineString + mRevisedValue        + '^';
    LineString := LineString + tdbfield('NFIRSJUVENILE','SUBNUM')    + '^';

    mAge := GetField('NFIRSJUVENILE','AGE').AsFloat;
    try
      If GetField('NFIRSJUVENILE','DOB').AsDateTime >= 0 then
        mAge:=(GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime-GetField('NFIRSJUVENILE','DOB').AsDateTime)/365.25;
    except
    end;   
    LineString := LineString + Formatfloat('##0',rMax(0,mAge))+'^';  

    LineString := LineString + tdbfield('NFIRSJUVENILE','GENDER')    + '^';
    LineString := LineString + tdbfield('NFIRSJUVENILE','RACE')      + '^';
    LineString := LineString + tdbfield('NFIRSJUVENILE','ETHNICITY') + '^';
    LineString := LineString + tdbfield('NFIRSJUVENILE','FAMTYPE')   + '^';
    LineString := LineString + WriteArray('NFIRSJUVENILE',['MRF1','MRF2','MRF3',
                                                      'MRF4','MRF5','MRF6',
                                                      'MRF7','MRF8','MRF9',
                                                      'MRF0','MRFU']) + '^';
    LineString := LineString + '^';
    writeln(txtfile,LineString);
    A('NFIRSJUVENILE').Skip(1);
  end;
  CloseApollo('NFIRSJUVENILE');
end;

procedure Write2000;
Var LineString: String;
begin
  LineString := '';
  LineString := LineString + tdbfield('FD','FDID')     + '^';
  LineString := LineString + tdbfield('FD','STATE')    + '^';
  LineString := LineString + '2000'                   + '^';
  LineString := LineString + ''                       + '^';
  LineString := LineString + tdbfield('FD','DEPTNAME') + '^';
  LineString := LineString + ''                       + '^';
  LineString := LineString + ''                       + '^';
  LineString := LineString + tdbfield('FD','ADDRESS')  + '^';
  LineString := LineString + ''                       + '^';
  LineString := LineString + ''                       + '^';
  LineString := LineString + tdbfield('FD','CITY')     + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(dbfield('FD','ZIP'),1,5) + substr(dbfield('FD','ZIP'),7,4),'-','')) + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(dbfield('FD','PHONE1'),1,3) + substr(dbfield('FD','PHONE1'),5,3) + substr(dbfield('FD','PHONE1'),9,4),'-','')) + '^';
  LineString := LineString + alltrim(AnsiReplaceStr(substr(dbfield('FD','PHONE2'),1,3) + substr(dbfield('FD','PHONE2'),5,3) + substr(dbfield('FD','PHONE2'),9,4),'-','')) + '^';
  LineString := LineString + tdbfield('FD','EMAIL')    + '^';
  LineString := LineString + tdbfield('FD','FIPSCTY')  + '^';
  LineString := LineString + tdbfield('FD','STATION')  + '^';
  LineString := LineString + tdbfield('FD','PAID')     + '^';
  LineString := LineString + tdbfield('FD','VOL1')     + '^';
  LineString := LineString + tdbfield('FD','VOL2')     + '^';
  WriteLn(TxtFile,LineString);
end;

procedure Write2010;
Var SeqNum     : Integer;
    LineString : String;
begin
  SeqNum := 1;
  Open_Query('PERS',False,'SELECT PERSID,PERSCODE,FNAME,MNAME,LNAME,NFIRSRANK,PHONE FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' AND FDID = ' + AddExpr(DiskCondForm.Fdid.Text) + ' ORDER BY PERSCODE');
  While Not A('PERS').Eof do begin
    LineString := '';
    LineString := LineString + tdbfield('FD','FDID')       + '^';
    LineString := LineString + tdbfield('FD','STATE')      + '^';
    LineString := LineString + '2010'                      + '^';
    LineString := LineString + ''                          + '^';
    LineString := LineString + IntToStr(SeqNum)            + '^';
    LineString := LineString + tdbfield('PERS','PERSCODE')   + '^';
    LineString := LineString + tdbfield('PERS','FNAME')     + '^';
    LineString := LineString + tdbfield('PERS','MNAME')     + '^';
    LineString := LineString + tdbfield('PERS','LNAME')     + '^';
    LineString := LineString + ''                          + '^';
    LineString := LineString + tdbfield('PERS','NFIRSRANK') + '^';
    LineString := LineString + alltrim(AnsiReplaceStr(substr(tdbfield('PERS','PHONE'),1,3) + substr(tdbfield('PERS','PHONE'),5,3) + substr(tdbfield('PERS','PHONE'),9,4),'-','')) + '^';
    LineString := LineString + ''                          + '^';
    LineString := LineString + ''                          + '^';

    WriteLn(TxtFile,LineString);
    SeqNum := SeqNum + 1;
    A('PERS').Skip(1);
    end;
  CloseApollo('PERS');
end;

procedure Write2020;
Var SeqNum    : Integer;
    LineString: String;
begin
  SeqNum := 1;
  Open_Query('INV',False,'SELECT UNITNUM, N5AORT, DESCR, INDATE FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND  FDID = ' + AddExpr(DiskCondForm.Fdid.Text) + ' ORDER BY UNITNUM');
  While Not A('INV').Eof do begin
    If (tdbfield('INV','UNITNUM') <> '') and (tdbfield('INV','N5AORT') <> '') then begin
      LineString := '';
      LineString := LineString + tdbfield('FD','FDID')       + '^';
      LineString := LineString + tdbfield('FD','STATE')      + '^';
      LineString := LineString + '2020'                      + '^';
      LineString := LineString + ''                          + '^';
      LineString := LineString + IntToStr(SeqNum)            + '^';
      LineString := LineString + tdbfield('INV','UNITNUM')   + '^';
      LineString := LineString + tdbfield('INV','N5AORT') + '^';
      LineString := LineString + tdbfield('INV','DESCR')     + '^';
      If (substr(GetField('INV','INDATE').AsString,1,2) = '  ') then
        LineString := LineString + ''                        + '^'
      else
        LineString := LineString + nfirs50date(Getfield('INV','INDATE').AsDateTime) + '^';
      WriteLn(TxtFile,LineString);
      SeqNum := SeqNum + 1;
    end;
    A('INV').Skip(1);
  end;
  CloseApollo('INV');
end;

procedure Write8000;
Var LineString: String;
  function YN(mNum: String): String;
  begin
    If mNum='2' then
      YN:='Y'
    else
      YN:='N';
  end;
begin
  LineString := IncBaseString;
  LineString := LineString + '8000'                                  + '^';
  LineString := LineString + ''                                      + '^';
  LineString := LineString + YN(tdbfield('NFIRSMA','CRITINC'))       + '^';
  LineString := LineString + YN(tdbfield('NFIRSMA','TEAMMOB'))       + '^';
  LineString := LineString + WriteArray('NFIRSMA',['CIRCUM1','CIRCUM2','CIRCUM3']) + '^';
  LineString := LineString + tdbfield('NFIRSMA','INSCOMP')           + '^';
  LineString := LineString + tdbfield('NFIRSMA','TOTALINS')          + '^';
  LineString := LineString + YN(tdbfield('NFIRSMA','CARSTOLEN'))     + '^';
  LineString := LineString + tdbfield('NFIRSMA','TIERLEVEL')         + '^';
  LineString := LineString + tdbfield('NFIRSMA','NUMENTRIES')        + '^';
  LineString := LineString + tdbfield('NFIRSMA','SUITEPPE')          + '^';
  writeln(txtfile,LineString);
end;

procedure CreateN5FireFile(mFdid: String);
var LineString : String;
    mFileName  : String;
begin
  Open_Query('FD',False,'SELECT * FROM FDID WHERE FDID = '+AddExpr(DiskCondForm.Fdid.Text));
  mFileName := ExtractFileDir(ParamStr(0))+'\FireFile.Inc';
  AssignFile(txtFile,mFileName);
  ReWrite(TxtFile);

  LineString := '^';
  writeln(txtfile,LineString);
  LineString := 'WCTRWQWOVG^UGGKI^';
  writeln(txtfile,LineString);
  Write2000;
  Write2010;
  Write2020;
  System.Close(txtFile);
  CloseApollo('FD');
  ShowMessage(mFileName+' has been created.');
end;

end.
