unit NEMSIS3Export;

interface

uses Windows,
     Messages,
     SysUtils,
     Classes,
     Graphics,
     Controls,
     Forms,
     Dialogs,
     OvcBase,
     StdCtrls,
     ExtCtrls,
     AlpineBase,
     AppLst,
     Db,
     jpeg,
     CommonFunc,
     CommonVar,
     FormFunc,
     GenFunc,
     AdvGrid,
     StdConvs;

type TCustomEntry = class
  fieldname,national_code,code: String;
  constructor Create(mfieldname,mnational_code,mcode: String);
end;

type
  // Dummy class to hold event json handlers:
  TXMLwEventHandlers = class
    // Event handlers:
    class procedure ipwXMLwError(Sender: TObject; ErrorCode: Integer; const Description: String);

  end;

  function ExportNemsis3XMLString(mDatabase: TAlpineAdoConnection; bSoap: Boolean; _pk : string; var _error: String; DoHeaderFooter : Boolean = True): String;
  function ExportNemsis3DemographicXMLString(mDatabase: TAlpineAdoConnection): String;
  procedure ParseNem3XSDCodes(fn: String);
  function Nem3ConvertTZDate(dt: TDateTime) : TDateTime;
  function GetNem3Header(mDatabase: TAlpineAdoConnection; FDIDVar : string) : string;
  function GetdConfiguration(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
  function GetdContact(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
  function GetdPersonnel(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
  function GetdFacility(mDatabase: TAlpineAdoConnection): String;
  function ConvertRedNMXFieldToNem3Field(fld: String): String;
var
  GlobalNemsis3TimeZone: String;

implementation

uses XmlDoc,
     XmlIntf,
     XmlDom,
     //IPWXMLw,IPWXMLp,
     ipwXML,
     Nemsis3Validate,
     TZDB,
     DateUtils,
     IdCoderMIME;

class procedure TXMLwEventHandlers.ipwXMLwError(Sender: TObject; ErrorCode: Integer; const Description: String);
begin
  AppendToLog('NEMSIS3 XML CREATE ERROR: ' + IntToStr(ErrorCode)+' '+Description);
    //_error := _error + #13#10 + IntToStr(ErrorCode)+' - '+Description;
end;

function WriteCustomEntries(mcustomentries: TStringList): String;
var
  i: Integer;
begin
  result := '';
  for i := 0 to mCustomEntries.count -1 do
    with TCustomEntry(mCustomEntries.Objects[i]) do begin
      result := result + fieldname+':'+National_Code+':'+code+crlf;
    end;
end;



function Nem3ConvertTZDate(dt: TDateTime) : TDateTime;
  var
    LZone: TBundledTimeZone;
    LUniversalTime : TDateTime;
    sZone :string;
    iOffset : Integer;
  begin
  try
    Result := dt;
    // needs TZDB.inc and TZDB.pas in fd dir
    // src: https://github.com/pavkam/tzdb , was http://code.google.com/p/delphi-tzdb/
    sZone := 'US/Eastern'; //trim(GlobalNemsisTimeZone);  // ** Change to use D01_19
    LZone := TBundledTimeZone.GetTimeZone(sZone);
    LUniversalTime := LZone.ToUniversalTime(dt);
    Result := LUniversalTime;
  except
    on e: exception do begin  // ** Change to use NEM3SET.DAGENCY23
      if (sZone = 'US/Eastern') then iOffset := 4
      else if (sZone = 'US/Central') then iOffset := 5
      else if (sZone = 'US/Mountain') then iOffset := 6
      else if (sZone = 'US/Pacific') then iOffset := 7
      else if (sZone = 'US/Alaska') then iOffset := 8
      else if (sZone = 'US/Hawaii') then iOffset := 9;

      if (iOffset > 0) then begin
          // hard coded daylight savings periods
          if InDaylightSavings(dt) then
            Result := IncHour(dt,iOffset)
          else
            Result := IncHour(dt,iOffset+1);
          end;
      end else begin
        Result := dt;  // unknown timezone, using default time
      end;
  end;
end;

function ConvertNem3FieldToRedNMXField(fld: String): String;
begin
  result:= UpperCase(alltrim(StringReplace(fld,'.','',[rfIgnoreCase])));
end;

function ConvertRedNMXFieldToNem3Field(fld: String): String;
begin
  result := lowercase(fld);
  result := substr(result,1,length(result)-2)+'.'+substr(result,length(result)-1,2);
end;


function GetNem3Header(mDatabase: TAlpineAdoConnection; FDIDVar : string) : string;
var demo   : TApolloData;
    header : string;
begin
  try
    // this will need to be edited to handle nemsis versions other than 3.4.0 !! We don't currently track this


    header := '<EMSDataSet xsi:schemaLocation="http://www.nemsis.org http://nemsis.org/media/nemsis_v3/release-3.4.0/XSDs/NEMSIS_XSDs/EMSDataSet_v3.xsd" '+
        'xmlns="http://www.nemsis.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">';
    header := header+#13#10+'<Header>'+#13#10+'<DemographicGroup>';

    // TODO: multi agency support for nem3set
    demo := open_query(mDatabase,false,'select * from nem3set where FDID = '+AddExpr(mFireID));

    header := header + #13#10 + '<dAgency.01>'+tdbfield(demo,'DAGENCY01')+'</dAgency.01>';
		header := header + #13#10 + '<dAgency.02>'+tdbfield(demo,'DAGENCY02')+'</dAgency.02>';
		header := header + #13#10 + '<dAgency.04>'+tdbfield(demo,'DAGENCY04')+'</dAgency.04>';
    header := header + #13#10 + '</DemographicGroup>';

  finally
    Result := header;
    demo.Free;
  end;
end;

function GetdDevice(mDatabase: TAlpineAdoConnection): String;
var Nem3dDevice   : TApolloData;
    Nem3dDeviceSub: TApolloData;
begin
  result :='';
  nem3dDevice := open_query(mDatabase,'select * from NEM3DDEVICE ');
  while not nem3dDevice.eof  do begin
    result := result + '<dDevice.DeviceGroup>'+crlf;
    result := result + '<dDevice.01>'+tdbfield(nem3ddevice,'ddevice01')+'</dDevice.01>'+crlf;
    result := result + '<dDevice.02>'+tdbfield(nem3ddevice,'ddevice02')+'</dDevice.02>'+crlf;
    Nem3dDeviceSub := open_query(mDatabase,'select * from NEM3DDEVICESUB WHERE NEM3DDEVICEID='+TDBFIELD(NEM3dDEVICE,'nem3ddeviceid')+
      ' AND FIELDNAME = '+AddExpr('DDEVICE03'));
    while not Nem3dDeviceSub.eof do begin
      result := result + '<dDevice.03>'+tdbfield(nem3ddevicesub,'code')+'</dDevice.03>'+crlf;
      nem3dDeviceSub.Next;
    end;
    Nem3dDeviceSub.Free;
    result := result + '<dDevice.04>'+tdbfield(nem3ddevice,'ddevice04')+'</dDevice.04>'+crlf;
    result := result + '<dDevice.05>'+tdbfield(nem3ddevice,'ddevice05')+'</dDevice.05>'+crlf;
    if getfield(nem3ddevice,'ddevice06').AsDateTime>0 then
      result := result + '<dDevice.06>'+FormatDateTime('YYYY-MM-DD',getfield(nem3ddevice,'ddevice06').AsDateTime)+'</dDevice.06>'+crlf;
    result := result + '</dDevice.DeviceGroup>'+crlf;

    nem3dDevice.next;
  end;
  nem3dDevice.free;
end;

function GetdVehicle(mDatabase: TAlpineAdoConnection): String;
var
  nem3dvehicleyear,inv,nem3dVehicleCert: TApolloData;
  j: Integer;

  function SayVeh(mField,mValue: String): String;
  var
    bContinue: Boolean;
  begin
    if alltrim(mValue)<>'' then begin
      if anystrtoint(mfield)>=6 then
        bContinue := anystrtofloat(mValue)>0
      else
        bContinue := True;
      if bContinue then
        result := '<dVehicle.'+mField+'>'+mValue+'</dVehicle.'+mField+'>'+crlf;
    end;
  end;
begin
  inv := open_query(mDatabase,'select * from inv where '+WhereNotNullorBlank('dvehicle04'));
  result := '';
  while not inv.eof do begin
    result := result + '<dVehicle.VehicleGroup>'+crlf;
    result := result + SayVeh('01',tdbfield(inv,'unitnum'));
    if length(tdbfield(inv,'sernum'))=17 then
      result := result + SayVeh('02',tdbfield(inv,'sernum'));
    result := result + SayVeh('03',tdbfield(inv,'dvehicle03'));
    result := result + SayVeh('04',tdbfield(inv,'dvehicle04'));
    nem3dVehicleCert := open_query(mDatabase,'select * from nem3dVehicleCert where invid = '+tdbfield(inv,'invid'));
    while not nem3dVehicleCert.eof do begin
      result := result + '<dVehicle.VehicleCertificationLevelsGroup>'+crlf;
      if tdbfield(nem3dVehicleCert,'dvehicle05')<>'' then
        result := result + SayVeh('05',tdbfield(nem3dVehicleCert,'dvehicle05'));
        If GetField(nem3dVehicleCert,'dvehicle06').AsInteger > 0 then
          result := result + SayVeh('06',tdbfield(nem3dVehicleCert,'dvehicle06'));
        If GetField(nem3dVehicleCert,'dvehicle07').AsInteger > 0 then
          result := result + SayVeh('07',tdbfield(nem3dVehicleCert,'dvehicle07'));
        If GetField(nem3dVehicleCert,'dvehicle08').AsInteger > 0 then
          result := result + SayVeh('08',tdbfield(nem3dVehicleCert,'dvehicle08'));

//      for j := 6 to 8 do
//        result := result + SayVeh('0'+inttostr(j),tdbfield(nem3dVehicleCert,'dvehicle0'+inttostr(j)));
      result := result + '</dVehicle.VehicleCertificationLevelsGroup>'+crlf;
      nem3dVehicleCert.next;
    end;
    nem3dVehicleCert.free;
    if getfield(inv,'COST').AsFloat>0 then
      result := result + SayVeh('09',formatfloat('########0',getfield(inv,'COST').AsFloat));

    if tdbfield(inv,'dvehicle10nv')<>'' then
      result := result +'<dVehicle.10 xsi:nil="true" NV="'+ tdbfield(inv,'dvehicle10nv')+'"/>'+crlf
    else
      result  := result + SayVeh('10',tdbfield(inv,'year'));

    nem3dvehicleyear := open_query(mDatabase,'select * from nem3dvehicleyear where invid = '+tdbfield(inv,'invid'));
    while not nem3dvehicleyear.eof do begin
      result := result + '<dVehicle.YearGroup>'+crlf;
      result := result + SayVeh('11',tdbfield(nem3dvehicleyear,'dvehicle11'));
      result := result + SayVeh('12',tdbfield(nem3dvehicleyear,'dvehicle12'));

      If Not (tdbfield(nem3dvehicleyear,'dvehicle13') = '') then 
        result := result + '<dVehicle.13 DistanceUnit="9929003">' + tdbfield(nem3dvehicleyear,'dvehicle13') + '</dVehicle.13>' + crlf;
//    result := result + SayVeh('13',tdbfield(nem3dvehicleyear,'dvehicle13'));
      result := result + '</dVehicle.YearGroup>'+crlf;
      nem3dvehicleyear.next;
    end;
    nem3dvehicleyear.Free;
    result := result + '</dVehicle.VehicleGroup>'+crlf;
    inv.next;
  end;
  inv.free;
end;


function GetdCustomConfiguration(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
var
  nem3ecustomgroup,nem3ecustomgroupSub: TApolloData;
begin
  result := '';
  nem3ecustomgroup := open_query(mDatabase,'select * from nem3ecustomgroup where nem3ecustomgroupid in (select nem3ecustomgroupid from nem3ecustomresults where nem3setid ='+inttostr(iNem3SetID)+')');
  nem3ecustomgroupSub := open_query(mDatabase,'select * from nem3ecustomgroupsub where nem3ecustomgroupid in '+
    '(select nem3ecustomgroupid from nem3ecustomresults where nem3setid ='+inttostr(iNem3setid) +') '+'order by nem3ecustomgroupid');
  while not nem3ecustomgroup.eof do begin
    result := result + '<dCustomConfiguration.CustomGroup CustomElementID="'+tdbfield(nem3ecustomgroup,'customelementid')+'">'+crlf+
      '<dCustomConfiguration.01>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration01')+'</dCustomConfiguration.01>'+crlf+
      '<dCustomConfiguration.02>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration02')+'</dCustomConfiguration.02>'+crlf+
      '<dCustomConfiguration.03>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration03')+'</dCustomConfiguration.03>'+crlf+
      '<dCustomConfiguration.04>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration04')+'</dCustomConfiguration.04>'+crlf+
      '<dCustomConfiguration.05>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration05')+'</dCustomConfiguration.05>'+crlf;
    while not nem3ecustomgroupSub.eof do begin
      result := result +'<dCustomConfiguration.07>'+tdbfield(nem3ecustomgroupSub,'code')+'</dCustomConfiguration.07>'+crlf;
      nem3ecustomgroupSub.next;
    end;
    result := result + '</dCustomConfiguration.CustomGroup>'+crlf;
    nem3ecustomgroup.next;
  end;
  nem3ecustomgroup.free;
  nem3ecustomgroupSub.Free;

end;

function GetdLocation(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
var
  nem3dlocation12,nem3dLocation: TApolloData;
  i: Integer;
  function SayLoc: String;
  var
    mMod,mNum,mFieldValue: String;
  begin
    mNum:= padl(inttostr(i),2,'0');
    mFieldValue := tdbfield(nem3dLocation,'dlocation'+mNum);
    if (i = 6) and (tdbfield(nem3dlocation,'dlocation06StreetAddress2')<>'') then
      mMod := ' StreetAddress2="'+tdbfield(nem3dlocation,'dlocation06StreetAddress2')+'"'
    else
      mMod := '';
    if mFieldValue<> '' then
      result := '<dLocation.'+mNum+mMod+'>'+mFieldValue+'</dLocation.'+mNum+'>'+crlf;
  end;
begin
  result := '';
  nem3dLocation := open_query(mDatabase,'select * from nem3dlocation where nem3setid = '+inttostr(iNem3SetID));
  while not nem3dLocation.eof do begin
    result := result +'<dLocation.LocationGroup>'+crlf;
    for i := 1 to 11 do
      result := result + SayLoc;
    nem3dlocation12 := open_query(mDatabase,'select * from nem3dlocation12 where nem3dlocationid = '+tdbfield(nem3dlocation,'nem3dlocationid'));
    while not nem3dlocation12.eof do begin
      result := result + '<dLocation.12 PhoneNumberType="'+tdbfield(nem3dlocation12,'dlocation12phonetype')+'">'+
        tdbfield(nem3dlocation12,'dlocation12')+'</dLocation.12>'+crlf;
      nem3dlocation12.next;
    end;
    nem3dlocation12.free;
    result := result +'</dLocation.LocationGroup>'+crlf;
    nem3dLocation.next;
  end;
  nem3dLocation.Free;
end;

function GetdCustomResults(mDatabase:TAlpineAdoConnection; iNem3Setid: Integer): String;
var
  nem3ecustomresultssub,nem3ecustomresults: TApolloData;
begin
  result := '';
  nem3ecustomresults := open_query(mDatabase,'select * from nem3ecustomresults where nem3setid  = '+inttostr(iNem3Setid));
  while not nem3ecustomresults.eof do begin
    result := result + '<dCustomResults.ResultsGroup>'+crlf;
    nem3ecustomresultssub := open_query(mDatabase,'select * from nem3ecustomresultssub where nem3ecustomresultsid = '+tdbfield(nem3ecustomresults,'nem3ecustomresultsid'));
    while not nem3ecustomresultssub.eof do begin
      result := result + '<dCustomResults.01>'+TDBfield(nem3ecustomresultssub,'ecustomresults01')+'</dCustomResults.01>'+crlf+
          '<dCustomResults.02>'+TDBfield(nem3ecustomresults,'ecustomresults02')+'</dCustomResults.02>'+crlf+
          '<dCustomResults.03>'+TDBfield(nem3ecustomresults,'ecustomresults03')+'</dCustomResults.03>'+crlf;
      nem3ecustomresultssub.next;
    end;
    nem3ecustomresultssub.Free;
    result := result + '</dCustomResults.ResultsGroup>'+crlf;
    nem3ecustomresults.next;
  end;
  nem3ecustomresults.Free;
end;

{
<dCustomResults.ResultsGroup>
<dCustomResults.01>157.45</dCustomResults.01>
<dCustomResults.02>Cd101</dCustomResults.02>
</dCustomResults.ResultsGroup>

dCustomResults - Custom Data Element Results
dCustomResults.ResultsGroup - Group Tag to hold custom result information
dCustomResults.01 - Custom Data Element Result	302
dCustomResults.02 - Custom Element ID Referenced	ALdAgency.001 - Canceled Calls per Year
dCustomResults.03 - CorrelationID of DemographicReport Element or Group	refid_1
dCustomResults.ResultsGroup - Group Tag to hold custom result information
dCustomResults.01 - Custom Data Element Result	341
dCustomResults.02 - Custom Element ID Referenced	ALdAgency.001 - Canceled Calls per Year
dCustomResults.03 - CorrelationID of DemographicReport Element or Group	refid_2

}

function ExportNemsis3DemographicXMLString(mDatabase: TAlpineAdoConnection): String;
var
  m1,mNem3YearGroup,mAgencyServiceGroup,m,mCorrelation: String;
  i                        : Integer;
  mCensus                  : TStringList;
  nem3yeargroup            : TApolloData;
  nem3set                  : TApolloData;
  NEM3SETSUB               : TApolloData;
  nem3code                 : TApolloData;
  nem3dagencyservice       : TApolloData;
  nem3dagencyservicecensus : TApolloData;
  nem3dagencyservicezip    : TApolloData;
  nem3dagencynatprov       : TApolloData;
  mnem3dagencynatprov      : String;

  procedure rp(mTable: TApolloData; mField: String);
  begin
    m := SearchAndReplace(m,'@@'+mField,tdbfield(mTable,mField));
  end;

  function SayNem3Code(mField: String): String;
  Var FieldName : String;
  begin
    FieldName := mField;
    Nem3Code.UpdateSql('select * from nem3code where fieldname = '+AddExpr(mField)+ ' and active = '+AddExpr('Y')+' order by code');
    Nem3SetSub.UpdateSQL('SELECT * FROM NEM3SETSUB WHERE NEM3SETID = ' + pkValue(GetField(Nem3Set,'NEM3SETID').AsString) + ' AND FIELDNAME = ' + AddExpr(mField));
    result := '';
    mField := lowercase(mField);
    mField := substr(mfield,1,length(mfield)-2)+'.'+substr(mfield,length(mfield)-1,2);
    mField := substr(mField,1,1)+uppercase(substr(mField,2,1))+substr(mfield,3,length(mField)-2);
    while not nem3code.eof do begin
      If Nem3SetSub.ExactQueryLocate('CODE',tdbfield(nem3code,'code')) then
        result := result + '<'+mField+'>'+tdbfield(nem3code,'code')+'</'+mField+'>';
      nem3code.next;
    end;
  end;


begin

  nem3set    := open_query(mDatabase,'select * from nem3set where fdid = '+AddExpr(mfireid));
  nem3code   := open_query(mDatabase,'select * from nem3code where 1=2');
  nem3setSub := open_query(mDatabase,'select * from nem3setsub where 1=2');

  m := alltrim(FileToString('C:\RedNMX\nemsis3\demographic.xml'));
  m := SearchAndReplace(m,'@@dcustomconfiguration',GetdCustomConfiguration(mDatabase,getfield(nem3set,'nem3setid').AsInteger));

  rp(nem3set,'dagency01');
  rp(nem3set,'dagency02');
  rp(nem3set,'dagency03');
  rp(nem3set,'dagency04');

  mAgencyServiceGroup := '';

  If nem3set.queryreccount>0 then begin
    nem3dagencyservice := open_query(mDatabase,'select * from nem3dagencyservice where nem3setid = '+tdbfield(nem3set,'nem3setid'));
    while not nem3dagencyservice.eof do begin
      mAgencyServiceGroup := mAgencyServiceGroup + '<dAgency.AgencyServiceGroup>'+crlf+
            '<dAgency.05>'+tdbfield(nem3dagencyservice,'dagency05')+'</dAgency.05>'+crlf;

      nem3dagencyservicecensus := open_query(mDatabase,'select * from nem3dagencyservicecensus where nem3dagencyserviceid = '+tdbfield(nem3dagencyservice,'nem3dagencyserviceid'));
      mCensus:= TStringList.create;
      while not nem3dagencyservicecensus.eof do begin
        m1 := substr(tdbfield(nem3dagencyservicecensus,'dagency07'),1,5);
        if mCensus.IndexOf(m1)=-1 then begin
          mCensus.Add(m1);
          mAgencyServiceGroup := mAgencyServiceGroup +
             '<dAgency.06>'+m1+'</dAgency.06>'+crlf;
        end;
        nem3dagencyservicecensus.next;
      end;
      mCensus.Free;

      nem3dagencyservicecensus.gotop;
      while not nem3dagencyservicecensus.eof do begin
        mAgencyServiceGroup := mAgencyServiceGroup +
           '<dAgency.07>'+tdbfield(nem3dagencyservicecensus,'dagency07')+'</dAgency.07>'+crlf;
        nem3dagencyservicecensus.next;
      end;
      nem3dagencyservicecensus.free;

      nem3dagencyservicezip := Open_query(mDatabase,'select * from nem3dagencyservicezip where nem3dagencyserviceid = '+tdbfield(nem3dagencyservice,'nem3dagencyserviceid'));
      while not nem3dagencyservicezip.eof do begin
        mAgencyServiceGroup := mAgencyServiceGroup + '<dAgency.08>'+tdbfield(nem3dagencyservicezip,'dagency08')+ '</dAgency.08>'+crlf;
        nem3dagencyservicezip.next;
      end;
      nem3dagencyservicezip.free;
      mAgencyServiceGroup := mAgencyServiceGroup + '</dAgency.AgencyServiceGroup>';
      nem3dagencyservice.next;
    end;
    nem3dagencyservice.free;

    m := SearchAndReplace(m,'@@AgencyServiceGroup',mAgencyServiceGroup);

    rp(nem3set,'dagency09');

    m := SearchAndReplace(m,'@@dagency10',sayNem3Code('DAGENCY10'));
    rp(nem3set,'dagency11');
    rp(nem3set,'dagency12');
    rp(nem3set,'dagency13');
    rp(nem3set,'dagency14');

    nem3yeargroup := open_query('select  * from nem3yeargroup where nem3setid = '+tdbfield(nem3set,'nem3setid'));
    mNem3YearGroup := '';
    while not nem3yeargroup.eof do begin
      if getfield(nem3yeargroup,'correlationid').AsInteger>0 then
        mCorrelation := ' CorrelationID="'+sqllookup(mDatabase,getfield(nem3yeargroup,'correlationid').AsString,'correlationid','nem3ecustomresults','ecustomresults03')+'"'
      else
        mcorrelation := '';
      mNem3YearGroup := mNem3YearGroup + '<dAgency.AgencyYearGroup'+mcorrelation+'>'+crlf;
      mNem3YearGroup := mNem3YearGroup + '<dAgency.15>'+tdbfield(nem3yeargroup,'dagency15')+'</dAgency.15>'+crlf;      
      for i := 16 to 22 do
        mNem3YearGroup := mNem3YearGroup + '<dAgency.'+inttostr(i)+'>'+tdbfield(nem3yeargroup,'dagency'+inttostr(i))+'</dAgency.'+inttostr(i)+'>'+crlf;

      mNem3YearGroup := mNem3YearGroup+'</dAgency.AgencyYearGroup>'+crlf;
      nem3yeargroup.next;
    end;
    m := SearchAndReplace(m,'@@AgencyYearGroup',mNem3YearGroup);
    nem3yeargroup.Free;
    rp(nem3set,'dagency23');
    rp(nem3set,'dagency24');

    nem3dagencynatprov:= open_query(mDatabase,'select * from NEM3DAGENCYNATPROV where nem3setid = '+tdbfield(nem3set,'nem3setid'));
    mnem3dagencynatprov := '';
    while not nem3dagencynatprov.eof do begin
      mnem3dagencynatprov := mnem3dagencynatprov + '<dAgency.25>'+tdbfield(nem3dagencynatprov,'dagency25')+'</dAgency.25>'+crlf;
      nem3dagencynatprov.next;
    end;
    nem3dagencynatprov.free;
    m := SearchAndReplace(m,'@@dagency25',mnem3dagencynatprov);

    m := SearchAndReplace(m,'@@dlocation',GetdLocation(mDatabase,getfield(nem3set,'nem3setid').AsInteger));
    m := SearchAndReplace(m,'@@dConfiguration',GetdConfiguration(mDatabase,getfield(nem3set,'nem3setid').AsInteger));
    m := SearchAndReplace(m,'@@dContact',GetdContact(mDatabase,getfield(nem3set,'nem3setid').AsInteger));
    m := SearchAndReplace(m,'@@dPersonnel',GetdPersonnel(mDatabase,getfield(nem3set,'nem3setid').AsInteger));

    m := SearchAndReplace(m,'@@dvehicle',GetdVehicle(mDatabase));
    m := SearchAndReplace(m,'@@dFacility',GetdFacility(mDatabase));
    m := SearchAndReplace(m,'@@dCustomResults',GetdCustomResults(mDatabase,getfield(nem3set,'nem3setid').AsInteger));
    m := SearchAndReplace(m,'@@dDevice',GetdDevice(mDatabase));
  end;

  nem3set.free;
  nem3code.Free;
  nem3setSub.Free;


  result := m;
end;




function GetCustomConfiguration(mDatabase: TAlpineAdoConnection;mNem3pcrID: String;nem3ecustomgroup,vwnem3ecustomgroupSub: TApolloData): String;
  function SF(mField: String): String;
  begin
    result := '<eCustomConfiguration.'+mField+'>'+tdbfield(nem3ecustomgroup,'ecustomconfiguration'+mField)+'</eCustomConfiguration.'+mField+'>'+crlf;
  end;
begin

  if nem3ecustomgroup.QueryRecCount >0 then begin
    result  := '<eCustomConfiguration>'+crlf;
    while not nem3ecustomgroup.eof do begin
      result := result + '<eCustomConfiguration.CustomGroup CustomElementID="'+tdbfield(nem3ecustomgroup,'customelementid')+'">'+crlf;
      result := result + '<eCustomConfiguration.01 nemsisElement="'+tdbfield(nem3ecustomgroup,'ecustomconfiguration01nemsiselement')+'">'+tdbfield(nem3ecustomgroup,'ecustomconfiguration01')+'</eCustomConfiguration.01>'+crlf;
      result := result + SF('02');
      result := result + SF('03');
      result := result + SF('04');
      result := result + SF('05');


      vwnem3ecustomgroupSub.ExactQueryLocate('nem3ecustomgroupid',tdbfield(nem3ecustomgroup,'nem3ecustomgroupid'));
      while not vwnem3ecustomgroupSub.eof and (tdbfield(nem3ecustomgroup,'nem3ecustomgroupid')=tdbfield(vwnem3ecustomgroupSub,'nem3ecustomgroupid')) do begin
        result := result + '<eCustomConfiguration.06 ';
        if tdbfield(vwnem3ecustomgroupSub,'nemsiscode')='' then
          result := result + '>'+tdbfield(vwnem3ecustomgroupSub,'descr')
        else
          result:= result + 'customValueDescription="'+tdbfield(vwnem3ecustomgroupSub,'descr')+'" '+
          'nemsisCode="'+tdbfield(vwnem3ecustomgroupSub,'nemsiscode')+'">'+
          tdbfield(vwnem3ecustomgroupSub,'code');
        result := result +
          '</eCustomConfiguration.06>'+crlf;
        vwnem3ecustomgroupSub.next;
      end;

      result := result + '</eCustomConfiguration.CustomGroup>'+crlf;
      nem3ecustomgroup.next;
    end;
    result := result + '</eCustomConfiguration>'+crlf;
  end;


end;

procedure CheckAndAddToCustomEntry(x : TipwXML;vwnem3ecustomgroupSub: TApolloData; mValue: String; customentries: TStringList);
begin
  if vwnem3ecustomgroupSub.Exactquerylocate('code',mValue) and (mfireid = '52280') then begin
    x.PutString(tdbfield(vwnem3ecustomgroupSub,'nemsiscode'));
    customentries.AddObject(tdbfield(vwnem3ecustomgroupSub,'NEMSISCODE'),
      TCustomEntry.Create(tdbfield(vwnem3ecustomgroupSub,'customelementid'),tdbfield(vwnem3ecustomgroupSub,'nemsiscode'),mValue));
  end else
    x.PutString(mValue);
end;

function ExportNemsis3XMLString(mDatabase: TAlpineAdoConnection; bSoap: Boolean;_pk : string; var _error: String; DoHeaderFooter : Boolean = True): String;
var mCustomConfiguration: String;
    mWhere,sXML: String;
    mCorrelationid : String;
  x : TipwXML; //TipwXMLw;
  nem3ecustomgroup,vwnem3ecustomgroupSub,vwNem3eCustomResultsSubGroup,vwNem3eCustomResultsSub,pcr, pcrsub, qry1, qry2, qry3, qry4 : TApolloData;
  customentries: TStringList;
  icustomentries: Integer;

  eCrew01,ecrew02: String;
  eProcedures09  : String;
  eMedications09 : String;
  bFoundEOther05 : Boolean;

  //function ValField(fieldname : string; section : string; value : string; default : string = '123') : string;
  function ValField(value : string; default : string = '999') : string;
  begin
    try
      if (alltrim(value) = '') then
        Result := default
      else begin
        Result := alltrim(value)
      end;
    except
      on e: exception do begin
        Result := alltrim(default);
      end;
    end;
  end;

  procedure xWriteStr(fldName : string; fldData : string; fldNV : string = ''; fldPN : string = ''; fldAttr1Name : string = ''; fldAttr1Val : string = '');
  var
    _Found : Boolean;
  begin
    _Found := False;
    try
      if not(trim(fldNV) = '') then begin
        x.StartElement(fldName,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('NV','',trim(fldNV));
        x.EndElement;
      end else begin
        if not(trim(fldData)='') then begin
          _Found := true;
          x.StartElement(fldName,'');
          if not(trim(fldPN) ='') then
            x.PutAttr('PN','',trim(fldPN));

          // custom attribute?
          if not(fldAttr1Name = '') and not(fldAttr1Val = '') then
            x.PutAttr(fldAttr1Name,'',fldAttr1Val);

          x.PutString(trim(fldData));
          x.EndElement;
        end;
      end;

      // if PN and no data found, write nil + PN
      if not(_Found) and not(trim(fldPN) ='') then begin
        x.StartElement(fldName,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('PN','',fldPN);
        x.EndElement;
      end;

    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWriteStr - Field('+fldName+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;
  end;

  procedure xWrite(dbqry : TApolloData; fld : string; hasNV : string = ''; hasPN : string = ''; defaultval : string = '123'; dbfield : string = ''; isReq : Boolean = True; Attr1Name : string = ''; Attr1Field : string = ''); overload;
  var
    _dbfield, _NV, _PN : string;
    addedIt, _Found, _hasNV : Boolean;
  begin
    try
      _dbfield := alltrim(dbfield);
      if (_dbfield = '') then begin
        _dbfield := StringReplace(fld,'.0','',[rfIgnoreCase]);
        _dbfield := UpperCase(alltrim(StringReplace(fld,'.','',[rfIgnoreCase])));
      end;

      _Found := False;

      // check if exists first
      if (dbqry.FindField(_dbfield+'PN')<>nil) then
        if not(tdbfield(dbqry,_dbfield+'PN') = '') then
          _PN := tdbfield(dbqry,_dbfield+'PN');

      _hasNV := False;
      if (dbqry.FindField(_dbfield+'NV')<>nil) then begin
        if not(tdbfield(dbqry,_dbfield+'NV') = '') then
          _hasNV := True;
      end;

      //if not(tdbfield(dbqry,_dbfield+'NV') = '') then begin
      if (_hasNV) then begin
        _NV := tdbfield(dbqry,_dbfield+'NV');
        x.StartElement(fld,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('NV','',_NV);
        x.EndElement;
      end else begin
        if not(tdbfield(dbqry,_dbfield)='') then begin
          _Found := true;
          x.StartElement(fld,'');
          if not(trim(_PN) ='') then
            x.PutAttr('PN','',_PN);

          // custom attribute?
          if not(Attr1Name = '') and not(Attr1Field = '') then begin
            if not(tdbfield(dbqry,Attr1Field)='') then
              x.PutAttr(Attr1Name,'',tdbfield(dbqry,Attr1Field));
          end;
          if (length(tdbfield(dbqry,_dbfield))>15) and (uppercase(tdbfield(dbqry,_dbfield))<> 'EDISPOSITION.19.100') then
            x.PutString(tdbfield(dbqry,_dbfield))
          else
            CheckAndAddToCustomEntry(x,vwnem3ecustomgroupsub,tdbfield(dbqry,_dbfield),customentries);

          x.EndElement;
        end;
      end;

      // if PN and no data found, write nil + PN
      if not(_Found) and not(trim(_PN) ='') then begin
        x.StartElement(fld,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('PN','',_PN);
        x.EndElement;
      end;

      // TODO: isReq?  -- add defaults if exporting for submission or will these be created on rednmx app OnNewRecord or Save func?
      // how to handle hidden fields? fields optionally hidden in GUI and are required

    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWrite - Field('+fld+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;
  end;

  procedure xWrite(fld : string; hasNV : string = ''; hasPN : string = ''; defaultval : string = '123'; dbfield : string = ''; isReq : Boolean = True; Attr1Name : string = ''; Attr1Field : string = ''); overload;
  begin
    xWrite(pcr,fld, hasNV, hasPN, defaultval, dbfield, isReq, Attr1Name, Attr1Field);
  end;

  procedure xWriteBase64Binary(dbqry : TApolloData; fld : string);
  var
    Stream  : TMemoryStream;
    _dbfield : string;
    Base64String: String;
    Encoder: TIdEncoderMIME;  //ipwNetCode1
  begin
    try
      _dbfield := StringReplace(fld,'.0','',[rfIgnoreCase]);
      _dbfield := UpperCase(alltrim(StringReplace(fld,'.','',[rfIgnoreCase])));

      if not(tdbfield(dbqry,_dbfield)='') then begin

        try
          Stream    := TMemoryStream.create;

          TBlobField(dbqry.FieldByName(_dbfield)).SaveToStream(Stream);
          Stream.position := 0;
          Encoder := TIdEncoderMIME.Create;

          Base64String := Encoder.Encode(Stream);
          x.StartElement(fld,'');
          x.PutRaw(Base64String);
          x.EndElement;

        finally
          Stream.free;
          Encoder.Free;
        end;
      end;
    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWriteBase64Binary - Field('+fld+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;


  end;

  procedure xWriteGPSLoc(fldName : string; LatData,LongData : Real);
  var
    _Found : Boolean;
    sLat, sLong : string;
  begin
    try
      sLat := '';
      sLong := '';
        if not(LatData = 0) and not(LongData = 0) then begin
          try
            sLat := FormatFloat('#00.000000',LatData);
          except
            on e:exception do begin
              sLat := '';
            end;
          end;
          try
            sLong := FormatFloat('#00.000000',LongData);
          except
            on e:exception do begin
              sLong := '';
            end;
          end;
          if not(sLat = '') and not(sLat = '0') and not(sLat = '00.000000') and
            not(sLong = '') and not(sLong = '0') and not(sLong = '00.000000') then begin
            x.StartElement(fldName,'');
            x.PutString(trim(sLat+','+sLong));
            x.EndElement;
          end;
        end;
    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWriteGPSLoc - Field('+fldName+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;
  end;

  procedure xWriteSubPN(baseqry, subqry : TApolloData; nem3fldname :string; dbfield : string = ''; isReq : Boolean = True);
   var
    _dbfield, _NV, _PN : string;
    _Found, addedIt, _hasNV : Boolean;
  begin
    try
      _Found := False;

      _dbfield := alltrim(dbfield);
      if (_dbfield = '') then begin
        _dbfield := StringReplace(nem3fldname,'.0','',[rfIgnoreCase]);
        _dbfield := UpperCase(alltrim(StringReplace(nem3fldname,'.','',[rfIgnoreCase])));
      end;

        subqry.GoTop;
        while not subqry.eof do begin
          try
            if (UpperCase(alltrim(tdbfield(subqry,'FIELDNAME'))) = _dbfield) then begin
              //
              if not(tdbfield(subqry,'CODE')='') then begin
                _Found := true;
                x.StartElement(nem3fldname,'');
                if not(tdbfield(subqry,'PN')='') then
                  x.PutAttr('PN','',tdbfield(subqry,'PN'));
                //if not(trim(_PN) ='') then
                //  x.PutAttr('PN','',_PN); // we don't support multiple PNs for now, just repeat the one in base query for each sub value
                //x.PutString(ValField(tdbfield(subqry,'CODE'),defaultval));
                x.PutString(tdbfield(subqry,'CODE'));
                x.EndElement;
              end;
            end;
          finally
            subqry.next;
          end;
        end; //end while

    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWriteSubPN - Field('+nem3fldname+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;
  end;


  procedure xWriteSub(baseqry, subqry : TApolloData; nem3fldname :string; dbfield : string = ''; isReq : Boolean = True); overload;
    // baseqry = record that has this fields NV and PV values
    // subqry = child subquery table that may have actual field value(s), writing 1x per record found
    // nem3fldname = nemsis 3 xml fieldname as defined in xsd's
    // dbfield = how we named the field in RedNMX db. (optional) - leaving black assumes default method of nemsis 3 name minus the ".", with the NV/PN attached at end of name for those fields
    // isReq = required field? If exporting for submission, will need to know to fill out with defaults.
  var
    _dbfield, _NV, _PN : string;
    _Found, addedIt, _hasNV : Boolean;
  begin
    try
      _Found := False;

      _dbfield := alltrim(dbfield);
      if (_dbfield = '') then begin
        _dbfield := StringReplace(nem3fldname,'.0','',[rfIgnoreCase]);
        _dbfield := UpperCase(alltrim(StringReplace(nem3fldname,'.','',[rfIgnoreCase])));
      end;

      if (baseqry.FindField(_dbfield+'PN')<>nil) then
        if not(tdbfield(baseqry,_dbfield+'PN') = '') then
          _PN := tdbfield(baseqry,_dbfield+'PN');

      _hasNV := False;
      if (baseqry.FindField(_dbfield+'NV')<>nil) then begin
        if not(tdbfield(baseqry,_dbfield+'NV') = '') then
          _hasNV := True;
      end;

      //if it has a NV, we assume no sub records
      if (_hasNV) then begin
        _NV := tdbfield(baseqry,_dbfield+'NV');
        x.StartElement(nem3fldname,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('NV','',_NV);
        x.EndElement;
      end else begin
        // blank NV, so we query sub table

        subqry.GoTop;
        while not subqry.eof do begin
          try
            if (UpperCase(alltrim(tdbfield(subqry,'FIELDNAME'))) = _dbfield) then begin
              //
              if not(tdbfield(subqry,'CODE')='') then begin
                _Found := true;
                x.StartElement(nem3fldname,'');

                if vwNem3eCustomResultsSub.ExactQueryLocate('ecustomconfiguration01nemsiselement',nem3FldName) then begin
                  if vwnem3ecustomgroupSub.ExactQueryLocate(['nem3ecustomgroupid','code','nemsiscode'],
                    [tdbfield(vwNem3eCustomResultsSub,'nem3ecustomgroupid'),tdbfield(vwNem3eCustomResultsSub,'ecustomresults01'),tdbfield(subqry,'CODE')]) then begin
                    x.PutAttr('CorrelationID','',tdbfield(vwNem3eCustomResultsSub,'ecustomresults03'));
                  end;
                end;

                if not(trim(_PN) ='') then
                  x.PutAttr('PN','',_PN); // we don't support multiple PNs for now, just repeat the one in base query for each sub value
                //x.PutString(ValField(tdbfield(subqry,'CODE'),defaultval));
                CheckAndAddToCustomEntry(x,vwnem3ecustomgroupsub,tdbfield(subqry,'CODE'),customentries);
                x.EndElement;
              end;
            end;
          finally
            subqry.next;
          end;
        end; //end while


        // if PN and no subs found, write nil + PN
        if not(_Found) and not(trim(_PN) ='') then begin
          x.StartElement(nem3fldname,'');
          x.PutAttr('xsi:nil','','true');
          x.PutAttr('PN','',_PN);
          x.EndElement;
        end;

        // TODO: isReq?  -- add defaults if exporting to base

        // are there required fields that can be Nilled without a NV?.. ie, no data in any of our db fields, but should output
        // a nil even if just checking and not in "file submission" mode???

      end;


    except
      on e:exception do begin
        AppendToLog('ERROR in NEMSIS3Export.ExportNemsis3XMLString.xWriteSub - Field('+nem3fldname+') Nem3pcrid('+_pk+') Err Msg: '+e.Message);
      end;
    end;
  end;


  procedure xWriteSub(fld :string; dbfield : string = ''; isReq : Boolean = True); overload;
  begin
    xWriteSub(pcr,pcrsub,fld,dbfield,isReq);
  end;

  function GetTimeZoneOld: string;
  var
    TimeZone: TTimeZoneInformation;
    iTZResult : Integer;
  begin
    // This gets the timezone and offset based on your workstations current timezone and offset.. problem occurs when generating
    // for an old pcr that call time was not in/out of daylight savings or when on a computer not in same timezone as the data
    
  //TIME_ZONE_ID_STANDARD , TIME_ZONE_ID_DAYLIGHT, TIME_ZONE_ID_UNKNOWN
    try
      iTZResult := GetTimeZoneInformation(TimeZone);
      if (iTZResult = TIME_ZONE_ID_DAYLIGHT) then
        Result := FormatFloat('00',((TimeZone.Bias + TimeZone.DaylightBias) div -60))+':00'
      else
        Result := FormatFloat('00',(TimeZone.Bias div -60))+':00';
    except
      on e: exception do begin
        Result := FormatFloat('00',(TimeZone.Bias div -60))+':00';
      end;
    end;
  end;

  function GetTimeZone(dt : TDateTime) : string;
  var
    sZone : string;
    iOffset : integer;
  begin
    //ex. EDT (Spring - Fall) is -04:00 and EST is -05:00

    iOffset := -5;
    if not(GlobalNemsis3TimeZone = '') then
      sZone := GlobalNemsis3TimeZone  // pulled from NEM3SET.DAGENCY23 for FDID
    else
      sZone := 'GMT-05:00 Eastern Time';

    if (sZone = 'GMT-04:00 Atlantic Time') then iOffset := -4  // use daylight savings offsets as base
      else if (sZone = 'GMT-05:00 Eastern Time') then iOffset := -5
      else if (sZone = 'GMT-06:00 Central Time') then iOffset := -6
      else if (sZone = 'GMT-07:00 Mountain Time') then iOffset := -7
      else if (sZone = 'GMT-08:00 Pacific Time') then iOffset := -8
      else if (sZone = 'GMT-09:00 Alaska') then iOffset := -9
      else if (sZone = 'GMT-10:00 Hawaii') then iOffset := -10
      else if (sZone = 'GMT-11:00 Midway Island, Samoa') then iOffset := -11;

    try
      //if not(iOffset = 0) then begin
          // hard coded daylight savings periods
          if InDaylightSavings(dt) then begin
            //Result := IncHour(dt,iOffset)
            //System.Inc(iOffset,1);
            Result := FormatFloat('00',iOffset+1)+':00';
          end else begin
            Result := FormatFloat('00',iOffset)+':00';
          end;
      //end else begin
      //  Result := '-05:00';  // unknown timezone, using est default time
      //end;
    except
      on e: exception do begin
        Result := '-05:00';  // unknown timezone, using est default time
      end;  
    end;
  end;


  procedure GetNem3DT(dbqry : TApolloData; FieldName: String; isNillable : Boolean = True; hasPN : Boolean = False; showTime: Boolean = True; showSeconds: Boolean = True); overload;
  var
    _DT, xDT : TDateTime;
    iOffset : Integer;
    _NV, _PN : string;
    _dbfield : string;
    _Found, _hasNV : Boolean;
  begin
     _dbfield := StringReplace(FieldName,'.0','',[rfIgnoreCase]);
     _dbfield := UpperCase(alltrim(StringReplace(FieldName,'.','',[rfIgnoreCase])));

      _Found := False;


      if (dbqry.FindField(_dbfield+'PN')<>nil) then
        if not(tdbfield(dbqry,_dbfield+'PN') = '') then
          _PN := tdbfield(dbqry,_dbfield+'PN');

      _hasNV := False;
      if (dbqry.FindField(_dbfield+'NV')<>nil) then begin
        if not(tdbfield(dbqry,_dbfield+'NV') = '') then
          _hasNV := True;
      end;

      if (_hasNV)  then begin
        _NV := tdbfield(dbqry,_dbfield+'NV');
        x.StartElement(FieldName,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('NV','',_NV);
        x.EndElement;
      end else begin

        try
          _DT := GetField(dbqry,_dbfield).AsDateTime;
        except
          on e: exception do begin
            _DT := 0;
          end;
        end;

        if _DT > 0 then begin

          _Found := true;
          x.StartElement(FieldName,'');
          if not(trim(_PN) ='') then
            x.PutAttr('PN','',_PN);

          if not showTime then begin
            x.PutString(FormatDateTime('YYYY-MM-DD',_DT));
          end else begin
            if showSeconds then
              x.PutString(FormatDateTime('YYYY-MM-DD',_DT) + 'T' + FormatDateTime('HH:NN:SS',_DT)+GetTimeZone(_DT))
            else
              x.PutString(FormatDateTime('YYYY-MM-DD',_DT) + 'T' + FormatDateTime('HH:NN',_DT) + ':00'+GetTimeZone(_DT));
          end;
          x.EndElement;

        end;
      end;

      // if PN and no data found, write nil + PN
      if not(_Found) and not(trim(_PN) ='') then begin
        x.StartElement(FieldName,'');
        x.PutAttr('xsi:nil','','true');
        x.PutAttr('PN','',_PN);
        x.EndElement;
      end;
  end;

  procedure GetNem3DT(FieldName: String; isNillable : Boolean = True; hasPN : Boolean = False; showTime: Boolean = True; showSeconds: Boolean = True); overload;
  begin
    GetNem3DT(pcr,FieldName,isNillable,hasPN,showTime,showSeconds);
  end;

  function GetNemCelcius(farTemp : string) : string;
  var myTemp : Double;
      sTemp : string;
  begin
    sTemp := '';
    try
      if not((trim(farTemp) = '') or (copy(trim(farTemp),1,1) = '0')) then begin
        myTemp  := StrToFloat(trim(farTemp));
        myTemp  := FahrenheitToCelsius(myTemp);
        if ((myTemp >= 0) and (myTemp <= 50)) then
          sTemp   := FormatFloat('#0.0',myTemp);
      end;
    except
      sTemp := '';
    end;
    Result := sTemp;
  end;

  procedure SetGlobalTimeZone;
  var
    qNS : TApolloData;
    tzCode, tzDescr : string;
  begin
    GlobalNemsis3TimeZone := 'GMT-05:00 Eastern Time'; //default to EST
    try
      if not(alltrim(tdbfield(pcr,'FDID'))='') then begin
        tzCode := alltrim(SQLLookup(mDatabase,alltrim(tdbfield(pcr,'FDID')),'FDID','NEM3SET','DAGENCY23'));
        if not(tzCode = '') then begin
          try
            qNS := Open_Query(false,'select DESCR from nem3code where FIELDNAME = '+AddExpr('DAGENCY23')+
              ' AND CODE = '+AddExpr(tzCode));
            if qNS.RecordsExist then begin
              if not(tdbfield(qNS,'DESCR') = '') then
                GlobalNemsis3TimeZone := tdbfield(qNS,'DESCR');
            end;
          finally
            qNS.Free;
          end;
        end;
      end;
    except
      on e: exception do begin
        GlobalNemsis3TimeZone := 'GMT-05:00 Eastern Time';
      end;
    end;
  end;


begin
    sXML    := '';
    _error  := '';
    try
      mCustomConfiguration := '';
      pcr := open_query(mDatabase,false,'select * from nem3pcr where NEM3PCRID = '+pkValue(_pk));

      SetGlobalTimeZone;

      vwNem3eCustomResultsSub := open_query(mDatabase,False,'select * from vwNem3eCustomResultsSub where  NEM3PCRID = '+pkValue(_pk)+' order by Nem3eCustomResultsid');
      vwNem3eCustomResultsSubGroup := open_query(mDatabase,False,'select Nem3eCustomResultsid from vwNem3eCustomResultsSub where  NEM3PCRID = '+pkValue(_pk)+' group by Nem3eCustomResultsid');

      if mfireid = '52280' then
        mWhere := ''
      else
        mWhere := ' where nem3ecustomgroupid in (select nem3ecustomgroupid from nem3ecustomresults where nem3pcrid ='+pkValue(_pk) +')';
      nem3ecustomgroup := open_query(mDatabase,'select * from nem3ecustomgroup '+mWhere);

      vwnem3ecustomgroupSub := open_query(mDatabase,'select * from vwnem3ecustomgroupsub '+mWhere+' order by nem3ecustomgroupid');

      customentries := TStringList.Create;




      pcrsub := open_query(mDatabase,false,'select * from nem3pcrsub where NEM3PCRID = '+pkValue(_pk)+' order by fieldname,code');
      qry1 := open_query(mDatabase,false,'select * from nem3crew where 1 = 2');
      qry2 := open_query(mDatabase,false,'select * from nem3crewsub where 1 = 2');
      qry3 := open_query(mDatabase,false,'select * from nem3crewsub where 1 = 2');
      qry4 := open_query(mDatabase,false,'select * from nem3crewsub where 1 = 2');

      x := TipwXML.Create(nil); //TipwXMLw.Create(nil);
      x.Config('IncludeXMLDeclaration=False');
      x.Config('INDENT='+#9);  //x.Indent := #9;
      //x.Config('EOL='+#13#10);//x.EOL := #13#10;
      x.OnError := TXMLwEventHandlers.ipwXMLwError;

      try

      if (DoHeaderFooter) then begin

        if not(alltrim(tdbfield(pcr,'FDID'))='') then begin

          qry1.UpdateSql('select * from nem3set where FDID = '+AddExpr(tdbfield(pcr,'FDID')));
          if qry1.RecordsExist then begin
            x.StartElement('EMSDataSet','http://www.nemsis.org');
            if bSoap then begin
               x.PutAttr('xmlns:xsi','','http://www.w3.org/2001/XMLSchema-instance');
            end else begin
              x.PutAttr('xsi:schemaLocation','http://www.w3.org/2001/XMLSchema-instance',
               'http://www.nemsis.org http://nemsis.org/media/nemsis_v3/release-3.4.0/XSDs/NEMSIS_XSDs/EMSDataSet_v3.xsd');
            end;

            x.StartElement('Header','');
            x.StartElement('DemographicGroup','');
            x.PutElement('dAgency.01','',tdbfield(qry1,'DAGENCY01')); //EMS Agency Unique State ID
            x.PutElement('dAgency.02','',tdbfield(qry1,'DAGENCY02'));     //EMS Agency Number, typically the same as above
            x.PutElement('dAgency.04','',tdbfield(qry1,'DAGENCY04'));  // State - GNIS Codes
            x.EndElement;
          end else begin
            // abort?
          end;
        end else begin
          // abort?
        end;

      end;
      // each PCR record
      x.PutString('@@customconfigurationgroup');

      x.StartElement('PatientCareReport','');
      x.StartElement('eRecord','');
      if mfireid = '52280' then begin
          x.StartElement('eRecord.01','');
          x.PutString(tdbfield(pcr,'nem3pcrid'));
          x.EndElement;          
      end else
        xWrite('eRecord.01');
      x.StartElement('eRecord.SoftwareApplicationGroup','');
      xWrite('eRecord.02');
      xWrite('eRecord.03');
      xWrite('eRecord.04');
      x.EndElement;
      x.EndElement;

      x.StartElement('eResponse','');
      x.StartElement('eResponse.AgencyGroup','');
      xWrite('eResponse.01');
      xWrite('eResponse.02','Y','','');
      x.EndElement;
      if mfireid = '52280' then begin
        x.StartElement('eResponse.03','');
        x.PutString(tdbfield(pcr,'ERECORD01'));
        x.EndElement;
      end else if ((alltrim(tdbfield(pcr,'ERESPONSE03'))='') and not(alltrim(tdbfield(pcr,'ERECORD01'))='')) then begin
        x.StartElement('eResponse.03','');
        x.PutString(tdbfield(pcr,'ERECORD01'));
        x.EndElement;
      end else begin
        // seeing alot of illegal records with both a code and a NV, so use code only if it exists
        if (alltrim(tdbfield(pcr,'ERESPONSE03'))='') then
          xWrite('eResponse.03','Y','','')
        else begin
          x.StartElement('eResponse.03','');
          x.PutString(tdbfield(pcr,'ERESPONSE03'));
          x.EndElement;
        end;
      end;
      xWrite('eResponse.04','Y','',''); // TODO: eResponse.03 + "_" + eResponse.13 -> in Nemsis2 this was pcr+unitnum -> tdbfield(ems,'NEMSISID')+'_'+tdbField(ems,'E02_11')
      x.StartElement('eResponse.ServiceGroup','');
      xWrite('eResponse.05');
      xWrite('eResponse.06','','','','',False);
      x.EndElement;
      xWrite('eResponse.07');

      xWriteSub('eResponse.08');
      xWriteSub('eResponse.09');
      xWriteSub('eResponse.10');
      xWriteSub('eResponse.11');
      xWriteSub('eResponse.12');

      xWrite('eResponse.13');
      xWrite('eResponse.14');
      xWrite('eResponse.15');
      xWrite('eResponse.16','','','','',False);
      xWriteGPSLoc('eResponse.17',GetField(pcr,'ERESPONSE17LAT').AsFloat,Getfield(pcr,'ERESPONSE17LONG').AsFloat);
      xWrite('eResponse.18','','','','',False);
      // TODO: REMOVE HACK to AUTO PUT 0 for Odomoter Start if blank and End has data
      //xWrite('eResponse.19','','','','',False);
      if (tdbfield(pcr,'ERESPONSE19') = '') and not(tdbfield(pcr,'ERESPONSE20') = '') then
        xWriteStr('eResponse.19','0')
      else
        xWrite('eResponse.19','','','','',False);
      xWrite('eResponse.20','','','','',False);
      xWrite('eResponse.21','','','','',False);
      xWrite('eResponse.22','','','','',False);
      xWrite('eResponse.23');
      xWriteSub('eResponse.24');
      x.EndElement;

      x.StartElement('eDispatch','');
      xWrite('eDispatch.01');
      xWrite('eDispatch.02','Y','','','',True);
      xWrite('eDispatch.03','','','','',False);
      xWrite('eDispatch.04','','','','',False);
      xWrite('eDispatch.05','','','','',False);
      xWrite('eDispatch.06','','','','',False);
      x.EndElement;

      qry1.UpdateSql('select * from nem3crew where NEM3PCRID = '+pkValue(_pk));

      if qry1.RecordsExist then begin
        x.StartElement('eCrew','');
        while not qry1.eof do begin
          try
            x.StartElement('eCrew.CrewGroup','');
            eCrew01 := sqllookup(tdbfield(qry1,'PERSID'),'PERSID','NEM3DPERSONNELLICENSURE','DPERSONNEL23');
            if mfireid = '52280' then
              eCrew01 := substr(eCrew01,1,5);

            xWriteStr('eCrew.01',eCrew01);
            ecrew02 := tdbfield(qry1,'ecrew02');
            if ecrew02 = '' then
              eCrew02 := sqllookup(tdbfield(qry1,'persid'),'persid','pers','ecrew02');
            xWriteStr('eCrew.02',ecrew02);
            qry2.UpdateSql('select * from nem3crewsub where NEM3CREWID = '+pkValue(tdbfield(qry1,'NEM3CREWID')));
            xWriteSub(qry1,qry2,'eCrew.03');
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
        x.EndElement;
      end;

      x.StartElement('eTimes','');
      GetNem3DT('eTimes.01');
      GetNem3DT('eTimes.02',False);
      GetNem3DT('eTimes.03',False);
      GetNem3DT('eTimes.04',False);
      GetNem3DT('eTimes.05');
      GetNem3DT('eTimes.06');
      GetNem3DT('eTimes.07');
      GetNem3DT('eTimes.08');
      GetNem3DT('eTimes.09');
      GetNem3DT('eTimes.10',False);
      GetNem3DT('eTimes.11');
      GetNem3DT('eTimes.12');
      GetNem3DT('eTimes.13',False);
      GetNem3DT('eTimes.14',False);
      GetNem3DT('eTimes.15',False);
      GetNem3DT('eTimes.16',False);
      x.EndElement;

      x.StartElement('ePatient','');
      xWrite('ePatient.01','','','','',False);
      if (tdbfield(pcr,'EPATIENT02')<>'') or (tdbfield(pcr,'EPATIENT02NV')<>'') or (tdbfield(pcr,'EPATIENT03')<>'') or (tdbfield(pcr,'EPATIENT03NV')<>'') or (tdbfield(pcr,'EPATIENT04')<>'') then begin
        x.StartElement('ePatient.PatientNameGroup','');
        xWrite('ePatient.02','Y','','','',False);
        xWrite('ePatient.03','Y','','','',False);
        xWrite('ePatient.04','','','','',False);
        x.EndElement;
      end;  
      xWrite('ePatient.05','','','','',False,'StreetAddress2','EPATIENT05STREETADDRESS2');
      xWrite('ePatient.06','','','','',False);
      xWrite('ePatient.07','Y','','','',True);
      xWrite('ePatient.08','Y','','','',True);
      xWrite('ePatient.09','Y','','','',True);
      xWrite('ePatient.10','','','','',False);
      xWrite('ePatient.11','','','','',False);

      // SSN, requires no dashes
      if not(tdbfield(pcr,'EPATIENT12') = '') then
        x.PutElement('ePatient.12','',alltrim(StringReplace(tdbfield(pcr,'EPATIENT12'),'-','',[rfReplaceAll])));

      xWrite('ePatient.13','Y','','','',True);
      xWriteSub('ePatient.14');

      x.StartElement('ePatient.AgeGroup','');
      xWrite('ePatient.15','Y','','','',True);
      xWrite('ePatient.16','Y','','','',True);
      x.EndElement;

      GetNem3DT('ePatient.17',True,True,False,False); 

      qry1.UpdateSql('select * from nem3patphone where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EPATIENT18') = '') then begin
              x.StartElement('ePatient.18','');
              if not(tdbfield(qry1,'EPATIENT18TYPE') = '') then
                x.PutAttr('PhoneNumberType','',tdbfield(qry1,'EPATIENT18TYPE'));
              x.PutString(tdbfield(qry1,'EPATIENT18'));
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      qry1.UpdateSql('select * from nem3patemail where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EPATIENT19') = '') then begin
              x.StartElement('ePatient.19','');
              if not(tdbfield(qry1,'EPATIENT19EMAILADDRESSTYPE') = '') then
                x.PutAttr('EmailAddressType','',tdbfield(qry1,'EPATIENT19EMAILADDRESSTYPE'));
              x.PutString(tdbfield(qry1,'EPATIENT19'));
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('ePatient.20','','','','',False);
      xWrite('ePatient.21','','','','',False);
      x.EndElement;


      x.StartElement('ePayment','');
      xWrite('ePayment.01','Y','','','',True);

      x.StartElement('ePayment.CertificateGroup','');
      xWrite('ePayment.02','','','','',False);
      GetNem3DT('ePayment.03',False);
      xWriteSub('ePayment.04');
      xWrite('ePayment.05','','','','',False);
      xWrite('ePayment.06','','','','',False);
      xWrite('ePayment.07','','','','',False);
      x.EndElement; 

      xWrite('ePayment.08','','','','',False);

      qry1.UpdateSql('select * from nem3insgroup where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('ePayment.InsuranceGroup','');
            xWrite(qry1,'ePayment.09','','','','',False);
            xWrite(qry1,'ePayment.10','','','','',False);
            xWrite(qry1,'ePayment.11','','','','',False);
            xWrite(qry1,'ePayment.12','','','','',False,'StreetAddress2','EPAYMENT12STREETADDRESS2');
            xWrite(qry1,'ePayment.13','','','','',False);
            xWrite(qry1,'ePayment.14','','','','',False);
            xWrite(qry1,'ePayment.15','','','','',False);
            xWrite(qry1,'ePayment.16','','','','',False);
            xWrite(qry1,'ePayment.17','','','','',False);
            xWrite(qry1,'ePayment.18','','','','',False);
            xWrite(qry1,'ePayment.19','','','','',False);
            xWrite(qry1,'ePayment.20','','','','',False);
            xWrite(qry1,'ePayment.21','','','','',False);
            xWrite(qry1,'ePayment.22','','','','',False);
            xWrite(qry1,'ePayment.58','','','','',False);
            x.EndElement; 
          finally
            qry1.next;
          end;
        end;

      end;

      x.StartElement('ePayment.ClosestRelativeGroup','');
      xWrite('ePayment.23','','','','',False);
      xWrite('ePayment.24','','','','',False);
      xWrite('ePayment.25','','','','',False);
      xWrite('ePayment.26','','','','',False,'StreetAddress2','EPAYMENT26STREETADDRESS2');
      xWrite('ePayment.27','','','','',False);
      xWrite('ePayment.28','','','','',False);
      xWrite('ePayment.29','','','','',False);
      xWrite('ePayment.30','','','','',False);

      qry1.UpdateSql('select * from NEM3PATCLOSERELPHONE where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EPAYMENT31') = '') then begin
              x.StartElement('ePayment.31','');
              if not(tdbfield(qry1,'EPAYMENT31TYPE') = '') then
                x.PutAttr('PhoneNumberType','',tdbfield(qry1,'EPAYMENT31TYPE'));
              x.PutString(tdbfield(qry1,'EPAYMENT31'));
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;



      xWrite('ePayment.32','','','','',False);
      x.EndElement;

      x.StartElement('ePayment.EmployerGroup','');
      xWrite('ePayment.33','','','','',False);
      xWrite('ePayment.34','','','','',False,'StreetAddress2','EPAYMENT34STREETADDRESS2');
      xWrite('ePayment.35','','','','',False);
      xWrite('ePayment.36','','','','',False);
      xWrite('ePayment.37','','','','',False);
      xWrite('ePayment.38','','','','',False);
      xWrite('ePayment.39','','','','',False,'PhoneNumberType','EPAYMENT39PHONENUMBERTYPE');
      x.EndElement;

      xWrite('ePayment.40','','','','',False);
      xWriteSub('ePayment.41');
      xWriteSub('ePayment.42');

      xWriteSub('ePayment.44');
      xWrite('ePayment.45','','','','',False);
      xWrite('ePayment.46','','','','',False);
      xWriteSub('ePayment.47');
      xWrite('ePayment.48','','','','',False);
      xWrite('ePayment.49','','','','',False);
      xWrite('ePayment.50','Y','','','',True);
      xWriteSub('ePayment.51');
      xWriteSub('ePayment.52');
      xWrite('ePayment.53','','','','',False);
      xWrite('ePayment.54','','','','',False);

      qry1.UpdateSql('select * from NEM3SUPPLYITEMGROUP where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EPAYMENT55') = '') then begin
              x.StartElement('ePayment.SupplyItemGroup','');
              xWrite(qry1,'ePayment.55','','','','',False);
              xWrite(qry1,'ePayment.56','','','','',False);
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('ePayment.57','','','','',False);
      x.EndElement;

      x.StartElement('eScene','');
      xWrite('eScene.01','Y','','','',True);

      qry1.UpdateSql('select * from nem3respgroup where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eScene.ResponderGroup','');
            xWrite(qry1,'eScene.02','','','','',False);
            xWrite(qry1,'eScene.03','','','','',False);
            xWrite(qry1,'eScene.04','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      GetNem3DT('eScene.05',False);
      xWrite('eScene.06','Y','','','',True);
      xWrite('eScene.07','Y','','','',True);
      xWrite('eScene.08','Y','','','',True);
      xWrite('eScene.09','Y','','','',True);
      xWrite('eScene.10','Y','','','',False);
      xWriteGPSLoc('eScene.11',GetField(pcr,'ESCENE11LAT').AsFloat,Getfield(pcr,'ESCENE11LONG').AsFloat);
      xWrite('eScene.12','','','','',False);
      xWrite('eScene.13','','','','',False);
      xWrite('eScene.14','Y','','','',False);
      xWrite('eScene.15','Y','','','',False,'StreetAddress2','ESCENE15STREETADDRESS2');
      xWrite('eScene.16','Y','','','',False);
      xWrite('eScene.17','Y','','','',False);
      xWrite('eScene.18','Y','','','',False);
      xWrite('eScene.19','Y','','','',True);
      xWrite('eScene.20','Y','','','',False);
      xWrite('eScene.21','Y','','','',True);
      xWrite('eScene.22','','','','',False);
      xWrite('eScene.23','','','','',False); // TOD0: should be 11 digit number of 2 digit state code then 3 digit county code then 6 digit census number
      x.EndElement;

      x.StartElement('eSituation','');
      GetNem3DT('eSituation.01');
      xWrite('eSituation.02','Y','','','',True);

      qry1.UpdateSql('select * from nem3complaint where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eSituation.PatientComplaintGroup','');
            xWrite(qry1,'eSituation.03','Y','','','',False);
            xWrite(qry1,'eSituation.04','Y','','','',False);
            xWrite(qry1,'eSituation.05','Y','','','',False);
            xWrite(qry1,'eSituation.06','Y','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('eSituation.07','Y','','','',True);
      xWrite('eSituation.08','Y','','','',True);
      xWrite('eSituation.09','Y','','','',True);
      xWriteSub('eSituation.10');
      xWrite('eSituation.11','Y','','','',True);
      xWriteSub('eSituation.12');
      xWrite('eSituation.13','Y','','','',True);
      x.StartElement('eSituation.WorkRelatedGroup','');
      xWrite('eSituation.14','','','','',False);
      xWrite('eSituation.15','','','','',False);
      xWrite('eSituation.16','','','','',False);
      x.EndElement;
      xWriteSub('eSituation.17');
      GetNem3DT('eSituation.18',False);
      x.EndElement;


      x.StartElement('eInjury','');

      xWriteSub('eInjury.01');
      xWriteSub('eInjury.02');
      xWriteSub('eInjury.03');


      xWriteSub('eInjury.04');
      xWrite('eInjury.05','','','','',False);
      xWrite('eInjury.06','','','','',False);
      xWriteSub('eInjury.07');
      xWriteSub('eInjury.08');
      xWrite('eInjury.09','','','','',False);
      xWriteSub('eInjury.10');
      x.StartElement('eInjury.CollisionGroup','');
      xWrite('eInjury.11','','','','',False);
      xWrite('eInjury.12','','','','',False);

      qry1.UpdateSql('select * from nem3acnphone where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EINJURY13') = '') then begin
              x.StartElement('eInjury.13','');
              if not(tdbfield(qry1,'EINJURY13TYPE') = '') then
                x.PutAttr('PhoneNumberType','',tdbfield(qry1,'EINJURY13TYPE'));
              x.PutString(tdbfield(qry1,'EINJURY13'));
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      GetNem3DT('eInjury.14',False);
      xWriteGPSLoc('eInjury.15',GetField(pcr,'EINJURY15LAT').AsFloat,Getfield(pcr,'EINJURY15LONG').AsFloat);
      xWrite('eInjury.16','','','','',False);
      xWrite('eInjury.17','','','','',False);
      xWrite('eInjury.18','','','','',False);
      xWrite('eInjury.19','','','','',False);
      xWrite('eInjury.20','','','','',False);
      xWrite('eInjury.21','','','','',False);


      qry1.UpdateSql('select * from nem3acndelta where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EINJURY22') = '') then begin
              x.StartElement('eInjury.22','');
              if not(tdbfield(qry1,'EINJURY22VELOCITYUNITS') = '') then
                x.PutAttr('VelocityUnit','',tdbfield(qry1,'EINJURY22VELOCITYUNITS'));
              if not(tdbfield(qry1,'EINJURY22ORDRANK') = '') then
                x.PutAttr('DeltaVelocityOrdinal','',tdbfield(qry1,'EINJURY22ORDRANK'));
              x.PutString(tdbfield(qry1,'EINJURY22'));
              x.EndElement;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('eInjury.23','','','','',False);
      xWrite('eInjury.24','','','','',False);
      xWrite('eInjury.25','','','','',False);

      qry1.UpdateSql('SELECT * FROM NEM3SEAT WHERE NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eInjury.SeatGroup','');
            xWrite(qry1,'eInjury.26','','','','',False);
            xWrite(qry1,'eInjury.27','','','','',False);
            xWrite(qry1,'eInjury.28','','','','',False);
            xWrite(qry1,'eInjury.29','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      x.EndElement;
      x.EndElement;


      x.StartElement('eArrest','');
      xWrite('eArrest.01','Y','','','',True);
      xWrite('eArrest.02','Y','','','',True);
      xWriteSub('eArrest.03');
      xWriteSub('eArrest.04');;
      xWrite('eArrest.05','Y','','','',True);
      xWriteSub('eArrest.06');
      xWrite('eArrest.07','Y','','','',True);
      xWriteSub('eArrest.08');
      xWriteSub('eArrest.09');
      xWrite('eArrest.11','Y','','','',True);
      xWriteSub('eArrest.12');
      xWrite('eArrest.13','','','','',False);
      GetNem3DT('eArrest.14');
      GetNem3DT('eArrest.15');
      xWrite('eArrest.16','Y','','','',True);
      xWriteSub('eArrest.17');
      xWrite('eArrest.18','Y','','','',True);
      GetNem3DT('eArrest.19',False);
      x.EndElement;


      x.StartElement('eHistory','');
      xWriteSub('eHistory.01');

      qry1.UpdateSql('select * from nem3practitioner where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eHistory.PractitionerGroup','');
            xWrite(qry1,'eHistory.02','','','','',False);
            xWrite(qry1,'eHistory.03','','','','',False);
            xWrite(qry1,'eHistory.04','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      xWriteSub('eHistory.05');

      qry1.UpdateSql('select * from nem3medallergies where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            if not(tdbfield(qry1,'EHISTORY06') = '') then begin
              x.StartElement('eHistory.06','');
              if not(tdbfield(qry1,'EHISTORY06CODETYPE') = '') then
                x.PutAttr('CodeType','',tdbfield(qry1,'EHISTORY06CODETYPE'));
              x.PutString(tdbfield(qry1,'EHISTORY06'));
              x.EndElement;
            end else begin
              // NV or PN
              if not(tdbfield(qry1,'EHISTORY06NV') = '') then begin
                x.StartElement('eHistory.06','');
                x.PutAttr('xsi:nil','','true');
                x.PutAttr('NV','',tdbfield(qry1,'EHISTORY06NV'));
                x.EndElement;
              end else if not(tdbfield(qry1,'EHISTORY06PN') = '') then begin
                x.StartElement('eHistory.06','');
                x.PutAttr('xsi:nil','','true');
                x.PutAttr('PN','',tdbfield(qry1,'EHISTORY06PN'));
                x.EndElement;
              end;
            end;
          finally
            qry1.next;
          end;
        end;
      end;

      xWriteSub('eHistory.07');
      xWriteSub('eHistory.08');
      xWriteSub('eHistory.09');

      qry1.UpdateSql('select * from NEM3IMMUNIZATION where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eHistory.ImmunizationsGroup','');
            xWrite(qry1,'eHistory.10','','','','',False);
            xWrite(qry1,'eHistory.11','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;
      qry1.UpdateSql('select * from NEM3CURRENTMED where NEM3PCRID = '+pkValue(_pk));
      if not(tdbfield(pcr,'EHISTORY12PN') = '') then begin
        x.StartElement('eHistory.CurrentMedsGroup','');
          x.StartElement('eHistory.12','');
          x.PutAttr('xsi:nil','','true');
          x.PutAttr('PN','',tdbfield(pcr,'EHISTORY12PN'));
          x.EndElement;
        x.EndElement;
          
      end else if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eHistory.CurrentMedsGroup','');
            xWrite(qry1,'eHistory.12','','','','',False);
            xWrite(qry1,'eHistory.13','','','','',False);
            xWrite(qry1,'eHistory.14','','','','',False);
            xWrite(qry1,'eHistory.15','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('eHistory.16','','','','',False);
      xWriteSub('eHistory.17');
      xWrite('eHistory.18','','Y','','',False); // preg .. nil +PN but no NV
      GetNem3DT('eHistory.19',False);
      x.EndElement;

      x.StartElement('eNarrative','');
      xWrite('eNarrative.01','Y','','','',False);
      x.EndElement;

      qry1.UpdateSql('select * from nem3vital where NEM3PCRID = '+pkValue(_pk));
      x.StartElement('eVitals','');
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            qry2.UpdateSql('select * from nem3vitalsub where NEM3VITALID = '+pkValue(tdbfield(qry1,'NEM3VITALID')));
            x.PutComment('NEM3VITALID=' + GetField(Qry1,'NEM3VITALID').AsString);
            x.StartElement('eVitals.VitalGroup','');
            GetNem3DT(qry1,'eVitals.01',True);
            xWrite(qry1,'eVitals.02','Y','','','',True);

            x.StartElement('eVitals.CardiacRhythmGroup','');
            xWriteSub(qry1,qry2,'eVitals.03');
            xWrite(qry1,'eVitals.04','Y','','','',True);
            xWriteSub(qry1,qry2,'eVitals.05');
            x.EndElement;

            x.StartElement('eVitals.BloodPressureGroup','');
            xWrite(qry1,'eVitals.06','Y','Y','','',True);
            xWrite(qry1,'eVitals.07','Y','Y','','',False);
            xWrite(qry1,'eVitals.08','Y','','','',True);
            xWrite(qry1,'eVitals.09','','','','',False);
            x.EndElement;

            x.StartElement('eVitals.HeartRateGroup','');
            xWrite(qry1,'eVitals.10','Y','Y','','',True);
            xWrite(qry1,'eVitals.11','','','','',False);
            x.EndElement;

            xWrite(qry1,'eVitals.12','Y','Y','','',True);
            xWrite(qry1,'eVitals.13','','','','',False);
            xWrite(qry1,'eVitals.14','Y','Y','','',True);
            xWrite(qry1,'eVitals.15','','','','',False);
            xWrite(qry1,'eVitals.16','Y','Y','','',True);
            xWrite(qry1,'eVitals.17','Y','Y','','',False);
            xWrite(qry1,'eVitals.18','Y','Y','','',True);

            x.StartElement('eVitals.GlasgowScoreGroup','');
            xWrite(qry1,'eVitals.19','Y','Y','','',True);
            xWrite(qry1,'eVitals.20','Y','Y','','',True);
            xWrite(qry1,'eVitals.21','Y','Y','','',True);
            xWriteSub(qry1,qry2,'eVitals.22');
            xWrite(qry1,'eVitals.23','Y','Y','','',False);
            x.EndElement;

            x.StartElement('eVitals.TemperatureGroup','');
            xWriteStr('eVitals.24',GetNemCelcius(tdbfield(qry1,'EVITALS24')),tdbfield(qry1,'EVITALS24NV'),tdbfield(qry1,'EVITALS24PN'));
            // TODO HACK: REMOVED FARH TO CELCIUS CONVERTER JUST FOR TEST, CONVERT BACK
            //xWriteStr('eVitals.24',tdbfield(qry1,'EVITALS24'),tdbfield(qry1,'EVITALS24NV'),tdbfield(qry1,'EVITALS24PN'));
            xWrite(qry1,'eVitals.25','','','','',False);
            x.EndElement;

            xWrite(qry1,'eVitals.26','Y','','','',True);

            x.StartElement('eVitals.PainScaleGroup','');
            xWrite(qry1,'eVitals.27','Y','Y','','',True);
            xWrite(qry1,'eVitals.28','Y','','','',False);
            x.EndElement;

            x.StartElement('eVitals.StrokeScaleGroup','');
            xWrite(qry1,'eVitals.29','Y','Y','','',True);
            xWrite(qry1,'eVitals.30','Y','','','',True);
            x.EndElement;

            xWrite(qry1,'eVitals.31','Y','Y','','',True);
            xWrite(qry1,'eVitals.32','Y','','','',False);
            xWrite(qry1,'eVitals.33','Y','','','',False);

            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin

        x.StartElement('eVitals.VitalGroup','');
        xWriteStr('eVitals.01','','7701001');
        xWriteStr('eVitals.02','','7701001');
        x.StartElement('eVitals.CardiacRhythmGroup','');
        xWriteStr('eVitals.03','','7701001');
        xWriteStr('eVitals.04','','7701001');
        xWriteStr('eVitals.05','','7701001');
        x.EndElement;

        x.StartElement('eVitals.BloodPressureGroup','');
        xWriteStr('eVitals.06','','7701001');
        xWriteStr('eVitals.07','','7701001');
        xWriteStr('eVitals.08','','7701001');
        xWriteStr('eVitals.09','','');
        x.EndElement;

        x.StartElement('eVitals.HeartRateGroup','');
        xWriteStr('eVitals.10','','7701001');
        xWriteStr('eVitals.11','','');
        x.EndElement;

        xWriteStr('eVitals.12','','7701001');
        xWriteStr('eVitals.13','','');
        xWriteStr('eVitals.14','','7701001');
        xWriteStr('eVitals.15','','');
        xWriteStr('eVitals.16','','7701001');
        xWriteStr('eVitals.17','','7701001');
        xWriteStr('eVitals.18','','7701001');

        x.StartElement('eVitals.GlasgowScoreGroup','');
        xWriteStr('eVitals.19','','7701001');
        xWriteStr('eVitals.20','','7701001');
        xWriteStr('eVitals.21','','7701001');
        xWriteStr('eVitals.22','','7701001');
        xWriteStr('eVitals.23','','7701001');
        x.EndElement;

        x.StartElement('eVitals.TemperatureGroup','');
        xWriteStr('eVitals.24','','7701001');
        xWriteStr('eVitals.25','','');
        x.EndElement;

        xWriteStr('eVitals.26','','7701001');

        x.StartElement('eVitals.PainScaleGroup','');
        xWriteStr('eVitals.27','','7701001');
        xWriteStr('eVitals.28','','7701001');
        x.EndElement;

        x.StartElement('eVitals.StrokeScaleGroup','');
        xWriteStr('eVitals.29','','7701001');
        xWriteStr('eVitals.30','','7701001');
        x.EndElement;

        xWriteStr('eVitals.31','','7701001');
        xWriteStr('eVitals.32','','');
        xWriteStr('eVitals.33','','');
        x.EndElement;

      end;
      x.EndElement;

      
      x.StartElement('eLabs','');
      qry1.UpdateSql('select * from nem3lab where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eLabs.LabGroup','');
            GetNem3DT(qry1,'eLabs.01',False);
            xWrite(qry1,'eLabs.02','','','','',False);

            qry2.UpdateSql('select * from nem3labresult where NEM3LABID = '+pkValue(tdbfield(qry1,'NEM3LABID')));
            if qry2.RecordsExist then begin
              while not qry2.eof do begin
                try
                  x.StartElement('eLabs.LabResultGroup','');
                  xWrite(qry2,'eLabs.03','','','','',False);
                  xWrite(qry2,'eLabs.04','','','','',False);
                  x.EndElement;
                finally
                  qry2.next;
                end;
              end;
            end;

            qry2.UpdateSql('select * from nem3labimage where NEM3LABID = '+pkValue(tdbfield(qry1,'NEM3LABID')));
            if qry2.RecordsExist then begin
              while not qry2.eof do begin
                try
                  x.StartElement('eLabs.LabImageGroup','');
                  xWrite(qry2,'eLabs.05','','','','',False);
                  xWrite(qry2,'eLabs.06','','','','',False);

                  qry3.UpdateSql('select * from NEM3LABWAVE where NEM3LABIMAGEID = '+pkValue(tdbfield(qry2,'NEM3LABIMAGEID')));
                  if qry3.RecordsExist then begin
                    while not qry3.eof do begin
                      try
                        x.StartElement('eLabs.WaveformGraphicGroup','');
                        xWrite(qry3,'eLabs.07','','','','',False);
                        xWriteBase64Binary(qry3,'eLabs.08'); // image data needs to be encoded in base64Binary format, untested
                        x.EndElement;
                      finally
                        qry3.next;
                      end;
                    end;
                  end;

                  x.EndElement;
                finally
                  qry2.next;
                end;
              end;
            end;

            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        // not required, omit
      end;
      x.EndElement;



      x.StartElement('eExam','');
      xWrite('eExam.01','Y','Y','','',False);
      xWrite('eExam.02','Y','Y','','',False);

      qry1.UpdateSql('select * from nem3exam where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            // get subtable
            qry2.UpdateSql('select * from nem3examsub where NEM3EXAMID = '+pkValue(tdbfield(qry1,'NEM3EXAMID')));

            x.StartElement('eExam.AssessmentGroup','');
            GetNem3DT(qry1,'eExam.03',False);

            // TODO: These have PN, but cannot be Nil. So need to be A) Omitted B) Just Data C) Data + PN. Database needs support for PN for these subtable fields like meds/procs
            xWriteSubPN(qry1,qry2,'eExam.04');
            xWriteSubPN(qry1,qry2,'eExam.05');
            xWriteSubPN(qry1,qry2,'eExam.06');
            xWriteSubPN(qry1,qry2,'eExam.07');
            xWriteSubPN(qry1,qry2,'eExam.08');
            xWriteSubPN(qry1,qry2,'eExam.09');

            // abdomen
            qry3.UpdateSql('select * from nem3examabd where NEM3EXAMID = '+pkValue(tdbfield(qry1,'NEM3EXAMID')));
            if qry3.RecordsExist then begin
              while not qry3.eof do begin
                try
                  x.StartElement('eExam.AbdomenGroup','');
                  xWrite(qry3,'eExam.10','','','','',False);
                  qry4.UpdateSql('select * from nem3examabdsub where NEM3EXAMABDID = '+pkValue(tdbfield(qry3,'NEM3EXAMABDID')));
                  xWriteSubPN(qry3,qry4,'eExam.11');
                  x.EndElement;
                finally
                  qry3.next;
                end;
              end;
            end;

            xWriteSub(qry1,qry2,'eExam.12');

            // spine
            qry3.UpdateSql('select * from nem3exambs where NEM3EXAMID = '+pkValue(tdbfield(qry1,'NEM3EXAMID')));
            if qry3.RecordsExist then begin
              while not qry3.eof do begin
                try
                  x.StartElement('eExam.SpineGroup','');
                  xWrite(qry3,'eExam.13','','','','',False);
                  qry4.UpdateSql('select * from nem3exambssub where NEM3EXAMBSID = '+pkValue(tdbfield(qry3,'NEM3EXAMBSID')));
                  xWriteSubPN(qry3,qry4,'eExam.14');
                  x.EndElement;
                finally
                  qry3.next;
                end;
              end;
            end;

            // extremity
            qry3.UpdateSql('select * from nem3examext where NEM3EXAMID = '+pkValue(tdbfield(qry1,'NEM3EXAMID')));
            if qry3.RecordsExist then begin
              while not qry3.eof do begin
                try
                  x.StartElement('eExam.ExtremityGroup','');
                  xWrite(qry3,'eExam.15','','','','',False);
                  qry4.UpdateSql('select * from nem3examextsub where NEM3EXAMEXTID = '+pkValue(tdbfield(qry3,'NEM3EXAMEXTID')));
                  xWriteSubPN(qry3,qry4,'eExam.16');
                  x.EndElement;
                finally
                  qry3.next;
                end;
              end;
            end;

            // eye
            qry3.UpdateSql('select * from nem3exameye where NEM3EXAMID = '+pkValue(tdbfield(qry1,'NEM3EXAMID')));
            if qry3.RecordsExist then begin
              while not qry3.eof do begin
                try
                  x.StartElement('eExam.EyeGroup','');
                  xWrite(qry3,'eExam.17','','','','',False);
                  qry4.UpdateSql('select * from nem3exameyesub where NEM3EXAMEYEID = '+pkValue(tdbfield(qry3,'NEM3EXAMEYEID')));
                  xWriteSubPN(qry3,qry4,'eExam.18');
                  x.EndElement;
                finally
                  qry3.next;
                end;
              end;
            end;

            xWriteSubPN(qry1,qry2,'eExam.19');
            xWriteSubPN(qry1,qry2,'eExam.20');
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;
      xWrite('eExam.21','Y','Y','','',False);
      x.EndElement;

      qry1.UpdateSql('select * from nem3protocol where NEM3PCRID = '+pkValue(_pk));
      x.StartElement('eProtocols','');
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eProtocols.ProtocolGroup','');
            xWrite(qry1,'eProtocols.01','Y','','','',True);
            xWrite(qry1,'eProtocols.02','Y','','','',True);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        x.StartElement('eProtocols.ProtocolGroup','');
        xWriteStr('eProtocols.01','','7701001');
        xWriteStr('eProtocols.02','','7701001');
        x.EndElement;
      end;
      x.EndElement;


      qry1.UpdateSql('SELECT NEM3MED.NEM3MEDID, NEM3MED.EMEDICATIONS01, NEM3MED.EMEDICATIONS01NV, '+
                      'NEM3MED.EMEDICATIONS02, NEM3MED.EMEDICATIONS02NV, '+
                      'NEM3CODE.CODE EMEDICATIONS03, NEM3MED.EMEDICATIONS03NV, NEM3MED.EMEDICATIONS03PN, ' +
                      'NEM3MED.EMEDICATIONS04, NEM3MED.EMEDICATIONS05, NEM3MED.EMEDICATIONS05NV, '+
                      'NEM3MED.EMEDICATIONS06, NEM3MED.EMEDICATIONS06NV, '+
                      'NEM3MED.EMEDICATIONS07, NEM3MED.EMEDICATIONS07NV, '+
                      'NEM3MED.EMEDICATIONS08NV, '+
                      'NEM3MED.EMEDICATIONS09, NEM3MED.EMEDICATIONS09NV, '+
                      'NEM3MED.EMEDICATIONS10, NEM3MED.EMEDICATIONS10NV, '+
                      'NEM3MED.EMEDICATIONS11, NEM3MED.EMEDICATIONS12, NEM3MED.PERSID ' +
                      'FROM NEM3MED ' +
                      'LEFT JOIN NEM3CODE ON (NEM3MED.NEM3CODEID = NEM3CODE.NEM3CODEID) ' +
                      'WHERE NEM3PCRID = ' + pkValue(_pk));

      x.StartElement('eMedications','');
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            qry2.UpdateSql('select * from nem3medsub where NEM3MEDID = '+pkValue(tdbfield(qry1,'NEM3MEDID')));
            x.StartElement('eMedications.MedicationGroup','');
            GetNem3DT(qry1,'eMedications.01',True);
            xWrite(qry1,'eMedications.02','Y','','','',True);
            if not(tdbfield(qry1,'EMEDICATIONS03') = '') AND not(tdbfield(qry1,'EMEDICATIONS03NV') = '') then begin
              // fix for both code and NV resulting in just NV issue - 5/23/19
              xWriteStr('eMedications.03',tdbfield(qry1,'EMEDICATIONS03'),'',tdbfield(qry1,'EMEDICATIONS03PN'),'','');
            end else begin
              xWrite(qry1,'eMedications.03','Y','Y','','',True);
            end;
            xWrite(qry1,'eMedications.04','','','','',False);
            x.StartElement('eMedications.DosageGroup','');
            xWrite(qry1,'eMedications.05','Y','','','',True);
            xWrite(qry1,'eMedications.06','Y','','','',True);
            x.EndElement;
            xWrite(qry1,'eMedications.07','Y','','','',True);
            xWriteSub(qry1,qry2,'eMedications.08');//,'Y','','','',True);

            eMedications09 := sqllookup(tdbfield(qry1,'PERSID'),'PERSID','NEM3DPERSONNELLICENSURE','DPERSONNEL23');
            xWriteStr('eMedications.09',eMedications09);

            xWrite(qry1,'eMedications.10','Y','','','',True);
            xWrite(qry1,'eMedications.11','','','','',False);
            xWrite(qry1,'eMedications.12','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        x.StartElement('eMedications.MedicationGroup','');
        xWriteStr('eMedications.01','','7701001');
        xWriteStr('eMedications.02','','7701001');
        xWriteStr('eMedications.03','','7701001');
        x.StartElement('eMedications.DosageGroup','');
        xWriteStr('eMedications.04','','');
        xWriteStr('eMedications.05','','7701001');
        xWriteStr('eMedications.06','','7701001');
        x.EndElement;
        xWriteStr('eMedications.07','','7701001');
        xWriteStr('eMedications.08','','7701001');
        xWriteStr('eMedications.09','','7701001');
        xWriteStr('eMedications.10','','7701001');
        xWriteStr('eMedications.11','','');
        xWriteStr('eMedications.12','','');
        x.EndElement;
      end;
      x.EndElement;

      qry1.UpdateSql('SELECT NEM3PROC.NEM3PROCID, NEM3PROC.EPROCEDURES01, NEM3PROC.EPROCEDURES01NV, '+
                      'NEM3PROC.EPROCEDURES02, NEM3PROC.EPROCEDURES02NV, '+
                      'NEM3CODE.CODE EPROCEDURES03, NEM3PROC.EPROCEDURES03NV, NEM3PROC.EPROCEDURES03PN, ' +
                      'NEM3PROC.EPROCEDURES04, NEM3PROC.EPROCEDURES05, NEM3PROC.EPROCEDURES05NV, '+
                      'NEM3PROC.EPROCEDURES06, NEM3PROC.EPROCEDURES06NV, NEM3PROC.EPROCEDURES07NV, '+
                      'NEM3PROC.EPROCEDURES08, NEM3PROC.EPROCEDURES08NV, '+
                      'NEM3PROC.EPROCEDURES09, NEM3PROC.EPROCEDURES09NV, '+
                      'NEM3PROC.EPROCEDURES10, NEM3PROC.EPROCEDURES10NV, '+
                      'NEM3PROC.EPROCEDURES11, NEM3PROC.EPROCEDURES12, NEM3PROC.EPROCEDURES13, NEM3PROC.EPROCEDURES13NV, NEM3PROC.PERSID ' +
                      'FROM NEM3PROC ' +
                      'LEFT JOIN NEM3CODE ON (NEM3PROC.NEM3CODEID = NEM3CODE.NEM3CODEID) ' +
                      'WHERE NEM3PCRID = ' + pkValue(_pk));

      x.StartElement('eProcedures','');
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            qry2.UpdateSql('select * from nem3procsub where NEM3PROCID = '+pkValue(tdbfield(qry1,'NEM3PROCID')));



            x.StartElement('eProcedures.ProcedureGroup','');
            if SqlTableRecCount('select count(*) from nem3airway where nem3procid = '+tdbfield(qry1,'nem3procid'))>0 then
              x.PutAttr('CorrelationID','','nem3airway_nem3proc_'+tdbfield(qry1,'nem3procid'));
            GetNem3DT(qry1,'eProcedures.01',True);
            xWrite(qry1,'eProcedures.02','Y','','','',True);
            if not(tdbfield(qry1,'EPROCEDURES03') = '') AND not(tdbfield(qry1,'EPROCEDURES03NV') = '') then begin
              // fix for both code and NV resulting in just NV issue - 5/23/19
              xWriteStr('eProcedures.03',tdbfield(qry1,'EPROCEDURES03'),'',tdbfield(qry1,'EPROCEDURES03PN'),'','');
            end else begin
              xWrite(qry1,'eProcedures.03','Y','Y','','',True);
            end;

            xWrite(qry1,'eProcedures.04','','','','',False);
            xWrite(qry1,'eProcedures.05','Y','','','',True);
            xWrite(qry1,'eProcedures.06','Y','','','',True);
            xWriteSub(qry1,qry2,'eProcedures.07');
            xWrite(qry1,'eProcedures.08','Y','','','',True);

            eProcedures09 := sqllookup(tdbfield(qry1,'PERSID'),'PERSID','NEM3DPERSONNELLICENSURE','DPERSONNEL23');
            xWriteStr('eProcedures.09',eProcedures09);
            xWrite(qry1,'eProcedures.10','Y','','','',True);
            xWrite(qry1,'eProcedures.11','','','','',False);
            xWrite(qry1,'eProcedures.12','','','','',False);
            xWrite(qry1,'eProcedures.13','Y','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        x.StartElement('eProcedures.ProcedureGroup','');
        xWriteStr('eProcedures.01','','7701001');
        xWriteStr('eProcedures.02','','7701001');
        xWriteStr('eProcedures.03','','7701001');
        xWriteStr('eProcedures.04','','');
        xWriteStr('eProcedures.05','','7701001');
        xWriteStr('eProcedures.06','','7701001');
        xWriteStr('eProcedures.07','','7701001');
        xWriteStr('eProcedures.08','','7701001');
        xWriteStr('eProcedures.09','','7701001');
        xWriteStr('eProcedures.10','','7701001');
        xWriteStr('eProcedures.11','','');
        xWriteStr('eProcedures.12','','');
        xWriteStr('eProcedures.13','','7701001');
        x.EndElement;

      end;
      x.EndElement;

      // AIRWAY
      x.StartElement('eAirway','');
      x.StartElement('eAirway.AirwayGroup','');
      xWriteSub('eAirway.01');

      qry1.UpdateSql('select * from nem3airway where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            qry2.UpdateSql('select * from nem3airwaysub where NEM3AIRWAYID = '+pkValue(tdbfield(qry1,'NEM3AIRWAYID')));

            x.StartElement('eAirway.ConfirmationGroup','');
            if getfield(qry1,'nem3procid').AsInteger > 0 then
              x.PutAttr('CorrelationID','','nem3airway_nem3proc_'+tdbfield(qry1,'nem3procid'));



            GetNem3DT(qry1,'eAirway.02',True);
            xWrite(qry1,'eAirway.03','Y','','','',False);
            xWriteSub(qry1,qry2,'eAirway.04');
            xWrite(qry1,'eAirway.05','','','','',False);
            xWrite(qry1,'eAirway.06','Y','','','',False);
            xWrite(qry1,'eAirway.07','Y','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;
      xWriteSub('eAirway.08');
      xWriteSub('eAirway.09');
      GetNem3DT('eAirway.10',False);
      GetNem3DT('eAirway.11',False);
      x.EndElement;
      x.EndElement;


      // DEVICE
      x.StartElement('eDevice','');

      qry1.UpdateSql('select * from nem3device where NEM3PCRID = '+pkValue(_pk));

      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try

            qry2.UpdateSql('select * from nem3devicesub where NEM3DEVICEID = '+pkValue(tdbfield(qry1,'NEM3DEVICEID')));

            x.StartElement('eDevice.DeviceGroup','');
            xWrite(qry1,'eDevice.01','','','','',False);
            GetNem3DT(qry1,'eDevice.02',False);
            xWriteSub(qry1,qry2,'eDevice.03');

            x.StartElement('eDevice.WaveformGroup','');
            xWrite(qry1,'eDevice.04','','','','',False);
            xWriteBase64Binary(qry1,'eDevice.05'); 
            xWrite(qry1,'eDevice.06','','','','',False);
            x.EndElement;

            xWriteSub(qry1,qry2,'eDevice.07');
            xWrite(qry1,'eDevice.08','','','','',False);

            x.StartElement('eDevice.ShockGroup','');
            xWrite(qry1,'eDevice.09','','','','',False);
            xWrite(qry1,'eDevice.10','','','','',False);
            xWrite(qry1,'eDevice.11','','','','',False);
            xWrite(qry1,'eDevice.12','','','','',False);
            x.EndElement;

            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        // no records, omit
      end;

      x.EndElement;


      x.StartElement('eDisposition','');
      x.StartElement('eDisposition.DestinationGroup','');
      xWrite('eDisposition.01','Y','','','',False);
      xWrite('eDisposition.02','Y','','','',False);
      xWrite('eDisposition.03','','','','',False,'StreetAddress2','EDISPOSITION03STREETADDRESS2');  // TODO: Street 2 Attribute needed
      xWrite('eDisposition.04','','','','',False);
      xWrite('eDisposition.05','Y','','','',True);
      xWrite('eDisposition.06','Y','','','',True);
      xWrite('eDisposition.07','Y','','','',True);
      xWrite('eDisposition.08','','','','',False);
      xWriteGPSLoc('eDisposition.09',GetField(pcr,'EDISPOSITION09LAT').AsFloat,Getfield(pcr,'EDISPOSITION09LONG').AsFloat);
      xWrite('eDisposition.10','','','','',False);
      x.EndElement;

      xWrite('eDisposition.11','Y','','','',False);
      xWrite('eDisposition.12','','','','',True);  
      xWriteSub('eDisposition.13');
      xWriteSub('eDisposition.14');
//      xWrite('eDisposition.15','','','','',False);
      xWriteSub('eDisposition.15');

      xWrite('eDisposition.16','Y','','','',True);
      xWrite('eDisposition.17','Y','','','',True);
      xWriteSub('eDisposition.18');
      xWrite('eDisposition.19','Y','','','',True);
      xWriteSub('eDisposition.20');
      xWrite('eDisposition.21','Y','','','',True);
      xWrite('eDisposition.22','Y','','','',True);
      xWrite('eDisposition.23','Y','','','',True);

      qry1.UpdateSql('select * from nem3hospteam where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eDisposition.HospitalTeamActivationGroup','');
            xWrite(qry1,'eDisposition.24','Y','','','',False);
            GetNem3DT(qry1,'eDisposition.25',True);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end else begin
        x.StartElement('eDisposition.HospitalTeamActivationGroup','');
        xWriteStr('eDisposition.24','','7701001');
        xWriteStr('eDisposition.25','','7701001');
        x.EndElement;
      end;

      xWriteSub('eDisposition.26');
      x.EndElement;

      // OUTCOME
      x.StartElement('eOutcome','');
      xWrite('eOutcome.01','Y','','','',True);
      xWrite('eOutcome.02','Y','','','',True);

      qry1.UpdateSql('select * from nem3outcomeextdatagroup where NEM3PCRID = '+pkValue(_pk));
      if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eOutcome.ExternalDataGroup','');
            xWrite(qry1,'eOutcome.03','','','','',False);
            xWrite(qry1,'eOutcome.04','','','','',False);
            xWrite(qry1,'eOutcome.05','','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
      end;

      xWrite('eOutcome.06','','','','',False);
      xWrite('eOutcome.07','','','','',False);
      xWriteSub('eOutcome.08');
      xWriteSub('eOutcome.09');
      xWriteSub('eOutcome.10');
      GetNem3DT('eOutcome.11',False);
      xWriteSub('eOutcome.12');
      xWriteSub('eOutcome.13');
      xWrite('eOutcome.14','','','','',False);
      xWrite('eOutcome.15','','','','',False);
      GetNem3DT('eOutcome.16',False);
      xWrite('eOutcome.17','','','','',False);
      x.EndElement;

     // CUSTOM RESULTS SECTION???

     if mFireid='52280' then begin
       mCustomConfiguration := GetCustomConfiguration(mDatabase,_pk,nem3ecustomgroup,vwnem3ecustomgroupSub);
       x.StartElement('eCustomResults','');
       for iCustomEntries := 0 to customentries.count-1 do begin

         with TCustomEntry(customentries.objects[iCustomEntries]) do begin
          if Nem3eCustomGroup.ExactQueryLocate('ecustomconfiguration01nemsiselement',fieldname) then begin
             x.StartElement('eCustomResults.ResultsGroup','');
             xWriteStr('eCustomResults.01',code); // muskegon 42
             xWriteStr('eCustomResults.02',tdbfield(Nem3eCustomGroup,'customelementid'));
             x.EndElement;
          end;

         end;

      end;
      if tdbfield(pcr,'itDisposition034')<>'' then begin
        x.StartElement('eCustomResults.ResultsGroup','');
        xWriteStr('eCustomResults.01',SqlMultiFieldLookUp([tdbfield(pcr,'itDisposition034'),'itDisposition034'],
          ['code','fieldname'],'nem3code','descr'));
        xWriteStr('eCustomResults.02','itDisposition.034');
        x.EndElement;
      end;
      x.EndElement;

     end else if (mFireID = 'EGELS') then begin
       x.StartElement('eCustomResults','');
       x.StartElement('eCustomResults.ResultsGroup','');
       xWriteStr('eCustomResults.01','42'); // muskegon 42
       xWriteStr('eCustomResults.02','itScene.026');
       x.EndElement;
       x.EndElement;

       mCustomConfiguration := CRLF+'<eCustomConfiguration>'+CRLF+
        '<eCustomConfiguration.CustomGroup CustomElementID="itScene.026">'+CRLF+
        '<eCustomConfiguration.01>itScene.026</eCustomConfiguration.01>'+CRLF+
        '<eCustomConfiguration.02>The Area of Operation for the current Incident.</eCustomConfiguration.02>'+CRLF+
        '<eCustomConfiguration.03>9902009</eCustomConfiguration.03>'+CRLF+
        '<eCustomConfiguration.04>9923001</eCustomConfiguration.04>'+CRLF+
        '<eCustomConfiguration.05>9903007</eCustomConfiguration.05>'+CRLF+
        '</eCustomConfiguration.CustomGroup>'+CRLF+
        '</eCustomConfiguration>'+CRLF;
     end else if (mFireID = '01315') then begin
       x.StartElement('eCustomResults','');
       x.StartElement('eCustomResults.ResultsGroup','');
       xWriteStr('eCustomResults.01','10'); // Pennfield 10
       xWriteStr('eCustomResults.02','itScene.026');
       x.EndElement;
       x.EndElement;

       mCustomConfiguration := CRLF+'<eCustomConfiguration>'+CRLF+
        '<eCustomConfiguration.CustomGroup CustomElementID="itScene.026">'+CRLF+
        '<eCustomConfiguration.01>itScene.026</eCustomConfiguration.01>'+CRLF+
        '<eCustomConfiguration.02>The Area of Operation for the current Incident.</eCustomConfiguration.02>'+CRLF+
        '<eCustomConfiguration.03>9902009</eCustomConfiguration.03>'+CRLF+
        '<eCustomConfiguration.04>9923001</eCustomConfiguration.04>'+CRLF+
        '<eCustomConfiguration.05>9903007</eCustomConfiguration.05>'+CRLF+
        '</eCustomConfiguration.CustomGroup>'+CRLF+
        '</eCustomConfiguration>'+CRLF;
     end else if (mFireID = '04700') then begin
       x.StartElement('eCustomResults','');
       x.StartElement('eCustomResults.ResultsGroup','');
       xWriteStr('eCustomResults.01','61'); // Washtenaw/Livingston MCA
       xWriteStr('eCustomResults.02','itScene.026');
       x.EndElement;
       x.EndElement;

       mCustomConfiguration := CRLF+'<eCustomConfiguration>'+CRLF+
        '<eCustomConfiguration.CustomGroup CustomElementID="itScene.026">'+CRLF+
        '<eCustomConfiguration.01>itScene.026</eCustomConfiguration.01>'+CRLF+
        '<eCustomConfiguration.02>The Area of Operation for the current Incident.</eCustomConfiguration.02>'+CRLF+
        '<eCustomConfiguration.03>9902009</eCustomConfiguration.03>'+CRLF+
        '<eCustomConfiguration.04>9923001</eCustomConfiguration.04>'+CRLF+
        '<eCustomConfiguration.05>9903007</eCustomConfiguration.05>'+CRLF+
        '</eCustomConfiguration.CustomGroup>'+CRLF+
        '</eCustomConfiguration>'+CRLF;
     end else begin


      mCustomConfiguration := GetCustomConfiguration(mDatabase,_pk,nem3ecustomgroup,vwnem3ecustomgroupSub);

      if vwNem3eCustomResultsSub.QueryRecCount>0 then begin
        x.StartElement('eCustomResults','');
        vwNem3eCustomResultsSubGroup.GoTop;
        while not vwNem3eCustomResultsSubGroup.eof do begin



          vwNem3eCustomResultsSub.ExactQueryLocate('Nem3eCustomResultsid',tdbfield(vwNem3eCustomResultsSubGroup,'Nem3eCustomResultsid'));
          while not vwNem3eCustomResultsSub.eof and (tdbfield(vwNem3eCustomResultsSub,'Nem3eCustomResultsid')=tdbfield(vwNem3eCustomResultsSubGroup,'Nem3eCustomResultsid')) do begin
            x.StartElement('eCustomResults.ResultsGroup','');
            xWrite(vwNem3eCustomResultsSub,'eCustomResults.01');
            xWrite(vwNem3eCustomResultsSub,'eCustomResults.02');
            xWrite(vwNem3eCustomResultsSub,'eCustomResults.03');
            x.EndElement;


{  // mjs 01/03/2019 ... done this way to get it to work with case 4
            x.StartElement('eCustomResults.ResultsGroup','');
            if nem3ecustomgroup.ExactQueryLocate('ecustomconfiguration01nemsiselement',tdbfield(vwNem3eCustomResultsSub,'ecustomresults02')) then
              x.PutAttr('CorrelationID','','key'+tdbfield(nem3ecustomgroup,'nem3ecustomgroupid')+'_'+tdbfield(vwNem3eCustomResultsSub,'nem3ecustomgroupid'));
            xWrite(vwNem3eCustomResultsSub,'eCustomResults.01');
            xWrite(vwNem3eCustomResultsSub,'eCustomResults.02');
            if nem3ecustomgroup.ExactQueryLocate('customelementid',tdbfield(vwNem3eCustomResultsSub,'ecustomresults02')) then begin
              if tdbfield(nem3ecustomgroup,'ecustomconfiguration01nemsiselement')<>'' then begin
                if nem3ecustomgroup.ExactQueryLocate('customelementid',tdbfield(nem3ecustomgroup,'ecustomconfiguration01nemsiselement')) then
                  xWriteStr('eCustomResults.03','key'+tdbfield(vwNem3eCustomResultsSub,'nem3ecustomgroupid')+'_'+tdbfield(nem3ecustomgroup,'nem3ecustomgroupid'));
              end;
            end;
            x.EndElement;
 }

            vwNem3eCustomResultsSub.next;
          end;
          vwNem3eCustomResultsSubGroup.next;
        end;

        x.EndElement;

      end;

     end;
     // OTHER
     bFoundEOther05 := False;
     x.StartElement('eOther','');
     xWrite('eOther.01','','','','',False);
     xWriteSub('eOther.02');//,'','','','',False);

     // Add default empty with eOther.05 only set to NO when no records found???
     qry1.UpdateSql('select * from nem3crew where NEM3PCRID = '+pkValue(_pk));
     if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            qry2.UpdateSql('select * from nem3crewsub where NEM3CREWID = '+pkValue(tdbfield(qry1,'NEM3CREWID')));
            // only required field is eOther.05, so only writing info if this is provided.
            if (not(tdbfield(qry1,'EOTHER05')='') OR not(tdbfield(qry1,'EOTHER05NV')='')) then begin
              x.StartElement('eOther.EMSCrewMemberGroup','');
              xWriteSub(qry1,qry2,'eOther.03');
              //xWriteStr('eOther.04',sqllookup(tdbfield(qry1,'persid'),'persid','pers','perscode'));
              xWrite(qry1,'eOther.04','','','','',False);
              xWrite(qry1,'eOther.05','Y','','','',True);
              xWriteSub(qry1,qry2,'eOther.06');
              x.EndElement;
              bFoundEOther05 := True;
            end;
          finally
            qry1.next;
          end;
        end;
     end;
     
     // 06/10/2019 - eOther05 required at least 1x. Should be made default value for ecrew.eother05NV = '7701001',
     //   but this now will handle improper setup/missing default by adding it once if none found above
     if not(bFoundEOther05) then begin
      x.StartElement('eOther.EMSCrewMemberGroup','');
      xWriteStr('eOther.05','','7701001','','','');
      x.EndElement;
     end;

     xWriteSub('eOther.07');//,'','','','',False);
     xWrite('eOther.08','Y','','','',False);

     qry1.UpdateSql('select * from nem3filegroup where NEM3PCRID = '+pkValue(_pk));
      while not qry1.eof do begin
        try
          x.StartElement('eOther.FileGroup','');
          xWrite(qry1,'eOther.09','Y','','','',False);
          xWrite(qry1,'eOther.10','Y','','','',False);
          xWriteBase64Binary(qry1,'eOther.11');
          x.EndElement;
        finally
          qry1.next;
        end;
     end;

     qry1.UpdateSql('select * from nem3signaturegroup where NEM3PCRID = '+pkValue(_pk));
     if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eOther.SignatureGroup','');
            xWrite(qry1,'eOther.12','Y','','','',False);
            qry2.UpdateSql('select * from nem3signaturegroupsub where nem3signaturegroupid = '+pkValue(tdbfield(qry1,'nem3signaturegroupid')));
            xWriteSub(qry1,qry2,'eOther.13');
            xWrite(qry1,'eOther.14','Y','','','',False);
            xWrite(qry1,'eOther.15','Y','','','',False);
            xWrite(qry1,'eOther.16','Y','','','',False);
            xWrite(qry1,'eOther.17','Y','','','',False);
            xWriteBase64Binary(qry1,'eOther.18');
            GetNem3DT(qry1,'eOther.19',False);
            xWrite(qry1,'eOther.20','Y','','','',False);
            xWrite(qry1,'eOther.21','Y','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
     end;

     qry1.UpdateSql('select * from nem3signaturegroup where NEM3PCRID = '+pkValue(_pk));
     if qry1.RecordsExist then begin
        while not qry1.eof do begin
          try
            x.StartElement('eOther.SignatureGroup','');
            xWrite(qry1,'eOther.12','Y','','','',False);
            qry2.UpdateSql('select * from nem3signaturegroupsub where nem3signaturegroupid = '+pkValue(tdbfield(qry1,'nem3signaturegroupid')));
            xWriteSub(qry1,qry2,'eOther.13');
            xWrite(qry1,'eOther.14','Y','','','',False);
            xWrite(qry1,'eOther.15','Y','','','',False);
            xWrite(qry1,'eOther.16','Y','','','',False);
            xWrite(qry1,'eOther.17','Y','','','',False);
            xWriteBase64Binary(qry1,'eOther.18');
            GetNem3DT(qry1,'eOther.19',False);
            xWrite(qry1,'eOther.20','Y','','','',False);
            xWrite(qry1,'eOther.21','Y','','','',False);
            x.EndElement;
          finally
            qry1.next;
          end;
        end;
     end;
     x.EndElement; //  END OTHER SECTION
     
     x.EndElement; // PatientCareReport
     if (DoHeaderFooter) then begin
       x.EndElement; // Header
     end;
     x.Save; //x.Close;

      sXML := x.OutputData;
      if (DoHeaderFooter) then begin
        sXML := StringReplace(sXML,'<Header xmlns="">','<Header>',[rfIgnoreCase]);
      end;
      sXML := StringReplace(sXML,'xmlns:xsi=""','',[rfReplaceAll]); // from adding attributes like in nil NV
      except
        on e: exception do begin
          sXML := 'ERROR';
          _error := e.message;
        end;
      end;
    finally
      Result := sXML;

      Result := SearchAndReplace(Result,'@@customconfigurationgroup',mCustomConfiguration);
      FreeAndNil(x);
      pcr.Free;
      vwNem3eCustomResultsSub.Free;
      vwNem3eCustomResultsSubGroup.Free;
      nem3ecustomgroup.Free;
      vwnem3ecustomgroupSub.Free;
      pcrsub.Free;
      if CustomEntries.count>0 then
        WriteErrorFile('custom',_pk,WriteCustomEntries(customentries));
      customentries.free;
      qry1.Free;
      qry2.Free;
      qry3.Free;
      qry4.Free;




    end;
end;

procedure ParseNem3XSDCodes(fn: String);
var
  xmlp : TipwXML; //TipwXMLp;
   mResult, root,buff, buff2 : string;
  i,k : Integer;
begin

// TAKES A XSD FILE AND EXPORTS OUT ALL CODES INTO TXT. Each line is 1 lookup with all codes and descriptions

//   FORMAT:
//
//   FieldName*Code|Descr^Code|Descr^Code|Descr, etc.. parse by * to get field name + data set. Then parse by ^ to get each code/desc pair (parsing by | to get code , descr )
//   *, ^, | used as they will unlikely be part of any descr text

//   Needs an update to take initial XSD folder then either load EMSDataSet.xsd & Parse out all the included xsds, or just hard code loading each of the subsequent xsd's normall part of the spec to get all the codes
//   possible rewrite to direct database import vs text output file


// complextype -> sequence -> element (iterate)
// each element could be group or single item

// SINGLE: element -> annotation & complexType -> simpleContent (single)
// GROUP : element -> annotation & complexType -> sequence -> complexType -> simpleContent
// if sequence after complexType, then in a new group

{
			<xs:element name="eResponse.03" nillable="true" id="eResponse.IncidentNumber">
				<xs:annotation>
					<xs:documentation>
						<nemsisTacDoc>
							<number>eResponse.03</number>
							<name>Incident Number</name>
							<national>Yes</national>
							<state>Yes</state>
							<definition>The incident number assigned by the 911 Dispatch System</definition>
							<v2Number>E02_02</v2Number>
							<usage>Required</usage>
							<comment>This number can be used to associate multiple EMS responses, dispatch information, and other information to the same EMS event or patient.</comment>
						</nemsisTacDoc>
					</xs:documentation>
				</xs:annotation>
				<xs:complexType>
					<xs:simpleContent>
						<xs:extension base="EMSIncidentNumber">
							<xs:attribute name="NV" use="optional">
								<xs:simpleType>
									<xs:union memberTypes="NV.NotApplicable NV.NotRecorded"/>
								</xs:simpleType>
							</xs:attribute>
						</xs:extension>
					</xs:simpleContent>
				</xs:complexType>
			</xs:element>


}
  try
    xmlp := TipwXML.Create(nil); //TipwXMLp.Create(nil);
    xmlp.Reset;
    try
      xmlp.Validate := true;
     // xmlp.Input(fn+'\eResponse_v3.xsd');
      xmlp.InputFile := fn+'\eResponse_v3.xsd';
      xmlp.Parse;
      xmlp.BuildDOM := true;
      xmlp.XPath := '/';
      root := xmlp.XElement;
      xmlp.XPath := '/' + root;
      //mResult := 'Total Nodes: '+IntToStr(xmlp.XChildren.Count)+#13#10;

      if xmlp.HasXPath('/' + root + '/xs:simpleType') then begin
        for i := 1 to xmlp.XChildren.Count do begin
          buff := '';
          buff2 := '';
          if xmlp.HasXPath('/' + root + '/xs:simpleType[' + inttostr(i) + ']') then begin
            xmlp.XPath := '/' + root + '/xs:simpleType[' + inttostr(i) + ']';
            if xmlp.XChildren.Count = 2 then begin
              if xmlp.HasXPath('/' + root + '/xs:simpleType[' + inttostr(i) + ']/xs:restriction/xs:enumeration') then begin
                buff := xmlp.GetAttr('name')+'*';
                xmlp.XPath := '/' + root + '/xs:simpleType[' + inttostr(i) + ']/xs:restriction';
                buff2 := '';
                for k := 1 to xmlp.XChildren.Count do begin
                  xmlp.XPath := '/' + root + '/xs:simpleType[' + inttostr(i) + ']/xs:restriction/xs:enumeration[' + inttostr(k) + ']';
                  buff2 := buff2+'^'+trim(xmlp.GetAttr('value'))+'|';
                  if xmlp.HasXPath('/' + root + '/xs:simpleType[' + inttostr(i) + ']/xs:restriction/xs:enumeration[' + inttostr(k) + ']/xs:annotation/xs:documentation/') then begin
                    xmlp.XPath := '/' + root + '/xs:simpleType[' + inttostr(i) + ']/xs:restriction/xs:enumeration[' + inttostr(k) + ']/xs:annotation/xs:documentation/';
                    buff2 := buff2+alltrim(xmlp.XText);
                  end;
                end;
                if (copy(buff2,1,1)='^') then
                  buff2 := StringReplace(buff2,'^','',[]); // remove 1st comma
                mResult := mResult + #13#10 + buff+buff2;
              end;
            end;

          end;

        end;
      end;


      {
      <xs:simpleType name="EMSVehicleNumber">
	    	<xs:annotation>
	    		<xs:documentation>The unique physical vehicle number of the responding unit.</xs:documentation>
	    	</xs:annotation>
	    	<xs:restriction base="xs:string">
	    		<xs:minLength value="1"/>
	    		<xs:maxLength value="25"/>
	    	</xs:restriction>
	    </xs:simpleType>
	    
	    <xs:simpleType name="UnitLevelOfCare">
	    	<xs:annotation>
	    		<xs:documentation>The Primary role of the EMS Unit which responded to this specific EMS incident.</xs:documentation>
	    	</xs:annotation>
	    	<xs:restriction base="xs:string">
	    		<xs:enumeration value="2215001">
	    			<xs:annotation>
	    				<xs:documentation>BLS-First Responder/EMR</xs:documentation>
	    			</xs:annotation>
	    		</xs:enumeration>
	    		<xs:enumeration value="2215003">
	    			<xs:annotation>
	    				<xs:documentation>BLS-Basic /EMT</xs:documentation>
	    			</xs:annotation>
	    		</xs:enumeration> 
	    	</xs:restriction>
	    </xs:simpleType>

}


    except
      on e: exception do begin

      end;
    end;
  finally
    xmlp.Free;
    if alltrim(mResult) = '' then mResult := 'No Results';
    StringToFile('c:\rednmx\nemsis3\xsdcodes.txt',alltrim(mResult));
  end;
end;


function SayCommonField(mTable: TApolloData;mSection,mField: String): String;
var mValue: String;
begin
  if mTable.FindField(mSection+mField)=nil then
    result := ''
  else if tdbfield(mTable,mSection+mField)<>'' then begin
    if getfield(mtable,mSection+mField).datatype=ftDateTime then
      mValue := formatdatetime('YYYYY-MM-DD',getfield(mtable,mSection+mField).AsDateTime)
    else
      mValue := tdbfield(mTable,mSection+mField);
    result := '<'+mSection+'.'+mField+'>' + mValue+'</'+mSection+'.'+mField+'>'+crlf
  end else
    result := '';
end;

function SayCommonNVField(mTable: TApolloData;mSection,mField: String): String;
begin
  if tdbfield(mTable,mSection+mField+'nv')<>'' then
    result := '<'+mSection+'.'+mField+' xsi:nil="true" NV="'+ tdbfield(mTable,mSection+mField+'nv')+'"/>'+crlf
  else
    result := SayCommonField(mTable,mSection,mField);
end;

function GetdContact(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
var nem3dContactSub   : TApolloData;
    nem3dContact      : TApolloData;
    nem3dContactPhone : TApolloData;
    nem3dContactEmail : TApolloData;
    Nem3DcontactVar   : String;

  function SayField(mField: String): String;
  begin
    result := SayCommonField(nem3dcontact,'dContact',mField);
  end;

  function SayNVField(mField: String): String;
  begin
    result := SayCommonNVField(nem3dcontact,'dContact',mField);
  end;
begin
  nem3dContact := open_query(mDatabase,'select * from nem3dContact where nem3setid = '+inttostr(iNem3setid));
  result := '';
  while not nem3dContact.eof do begin
    result := result + '<dContact.ContactInfoGroup>'+crlf;
    result := result + SayNVField('01');
    result := result + SayNVField('02');
    result := result + SayNVField('03');
    result := result + SayField('04');

    If Not (tdbfield(Nem3DContact,'DCONTACT05') = '') and Not (tdbfield(Nem3DContact,'DCONTACT05STREETADDRESS2') = '') then
      result := result + '<dContact.05 StreetAddress2="' + tdbfield(Nem3DContact,'DCONTACT05STREETADDRESS2') + '">' + tdbfield(Nem3DContact,'DCONTACT05') + '</dContact.05>' + crlf
    else
      result := result + SayNVField('05');

    result := result + SayNVField('06');
    result := result + SayNVField('07');
    result := result + SayNVField('08');
    result := result + SayField('09');

    nem3dContactPhone := open_query(mDataBase,'select * from nem3dContactPhone where nem3dContactid = '+tdbfield(nem3dcontact,'nem3dcontactid'));
    while not nem3dContactPhone.eof do begin
      result := result + '<dContact.10 PhoneNumberType="'+tdbfield(nem3dContactPhone,'dcontact10type')+'">'+
        tdbfield(nem3dContactPhone,'dcontact10')+'</dContact.10>'+crlf;
      nem3dContactPhone.next;
    end;
    nem3dContactPhone.Free;

    nem3dContactEmail := open_query(mDataBase,'select * from nem3dContactEmail where nem3dContactid = '+tdbfield(nem3dcontact,'nem3dcontactid'));
    while not nem3dContactEmail.eof do begin
      result := result + '<dContact.11 EmailAddressType="'+tdbfield(nem3dContactEmail,'dcontact11type')+'">'+
        tdbfield(nem3dContactEmail,'dcontact11')+'</dContact.11>'+crlf;
      nem3dContactEmail.next;
    end;
    nem3dContactEmail.Free;
    result := result + SayNVField('12');

    nem3dContactSub := open_query(mDatabase,'select * from NEM3DCONTACTSUB where  nem3dContactid = ' + pkValue(GetField(nem3dcontact,'nem3dcontactid').AsString) + ' and FIELDNAME = '+AddExpr('DCONTACT14'));
    Nem3DcontactVar := tdbfield(nem3dcontact,'DCONTACT13') + tdbfield(nem3dcontact,'DCONTACT13NV') + tdbfield(nem3dcontact,'DCONTACT14NV') + tdbfield(nem3dcontact,'DCONTACT15') + tdbfield(nem3dcontact,'DCONTACT16');
    If Not (Nem3DcontactVar = '') or (nem3dContactSub.RecCount > 0) then begin
      result := result + '<dContact.EMSMedicalDirectorGroup>' + crlf;
      result := result + SayNVField('13');
      if tdbfield(nem3dcontact,'dcontact14nv')<>'' then
        result := result + SayNVField('14')
      else begin
        while not nem3dContactSub.eof do begin
          result := result + '<dContact.14>'+tdbfield(nem3dcontactsub,'code')+'</dContact.14>'+crlf;
          nem3dContactSub.next;
        end;
      end;
      result := result + SayNVField('15');
      result := result + SayNVField('16');
      result := result + '</dContact.EMSMedicalDirectorGroup>'+crlf;
    end;
    nem3dContactSub.free;

    result := result + '</dContact.ContactInfoGroup>'+crlf;
    nem3dContact.next;
  end;
  nem3dContact.Free;
end;

function SayNemsisZip(mValue: String): String;
begin
  mValue := alltrim(mValue);
  if length(mValue)=5 then
    result:= mValue
  else if length(mvalue)=6 then
    result := substr(mvalue,1,5)
  else
    result := '';
end;

function CommonSaySubSection(Nem3dSub: TApolloData;mSection,mField: String): String;
begin
  result := '';
  Nem3dSub.ExactQueryLocate('fieldname',uppercase(mSection)+mField);
  while not Nem3dSub.eof and (tdbfield(Nem3dSub,'fieldname')=uppercase(mSection)+mField) do begin
    result := result + '<'+mSection+'.'+mField+'>'+tdbfield(Nem3dSub,'code')+'</'+mSection+'.'+mField+'>'+crlf;
    Nem3dSub.next;
  end;
end;

function CommonSayNVOrSubSection(Nem3d,Nem3dSub: TApolloData; mSection,mField: String): String;
begin
  result := '';
  if tdbfield(Nem3d,mSection+mField+'nv')<>'' then
    result := '<'+mSection+'.'+mField+' xsi:nil="true" NV="'+tdbfield(Nem3d,mSection+mField+'nv')+'"/>'+crlf
  else
    result := CommonSaySubSection(Nem3dSub,mSection,mField);
end;



function GetdPersonnel(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
var
  Nem3dPersonnelCert,Nem3dPersonnellicensure,Nem3dPersonnelImm,Nem3dPersonnelSub,pers,nem3persphone,nem3dPersEmail: TApolloData;
  mFdid: String;
  function sf(mField,mValue: String): String;
  begin
    if alltrim(mValue)='' then
      result := ''
    else
      result :='<dPersonnel.'+mField+'>'+mValue+'</dPersonnel.'+mField+'>'+crlf;
  end;

  function sfd(mField: String; mDateTime: TDateTime): String;
  begin
    if mDateTime > 0 then
      result := sf(mField,formatdatetime('YYYYY-MM-DD',mDateTime))
    else
      result := '';
  end;
begin
  mFdid := sqllookup(mDatabase,inttostr(iNem3Setid),'nem3setid','nem3set','fdid');
  pers := open_query(mDatabase,'select * from pers where pers.fdid = '+AddExpr(mFdid)+' AND PERS.ATTEND = ' + AddExpr('Y'));

  while not pers.eof do begin
    Nem3dPersonnelSub := open_query(mDatabase,'select * from Nem3dPersonnelSub where persid='+tdbfield(pers,'persid')+' order by fieldname');
    if (tdbfield(pers,'lname')<>'') and (tdbfield(pers,'fname')<>'') then begin
      result := result + '<dPersonnel.PersonnelGroup>'+crlf+'<dPersonnel.NameGroup>'+crlf+
        '<dPersonnel.01>'+tdbfield(pers,'lname')+'</dPersonnel.01>'+crlf+
        '<dPersonnel.02>'+tdbfield(pers,'fname')+'</dPersonnel.02>'+crlf+
        SF('03',tdbfield(pers,'mname'))+'</dPersonnel.NameGroup>';
      result := result + '<dPersonnel.AddressGroup>'+crlf+
        sf('04',tdbfield(pers,'add1'))+
        sf('05',tdbfield(pers,'DPERSONNEL05'))+
        sf('06',tdbfield(pers,'DPERSONNEL06'))+
        sf('07',SayNemsisZip(tdbfield(pers,'zip')))+
        sf('08',tdbfield(pers,'DPERSONNEL08'))+'</dPersonnel.AddressGroup>';

      nem3persphone := open_query(mDatabase,'select * from nem3persphone where persid = '+tdbfield(pers,'persid'));
      while not nem3persphone.eof do begin
        result := result + '<dPersonnel.09 PhoneNumberType="'+tdbfield(nem3persphone,'dpersonnel09type')+'">'+
          tdbfield(nem3persphone,'dpersonnel09')+'</dPersonnel.09>'+crlf;
        nem3persphone.next;
      end;
      nem3persphone.free;

      nem3dPersEmail := open_query(mDataBase,'select * from nem3persemail where Persid = '+tdbfield(pers,'Persid'));
      while not nem3dPersEmail.eof do begin
        result := result + '<dPersonnel.10 EmailAddressType="'+tdbfield(nem3dPersEmail,'dPersonnel10type')+'">'+
          tdbfield(nem3dPersEmail,'dpersonnel10')+'</dPersonnel.10>'+crlf;
        nem3dPersEmail.next;
      end;
      if getfield(pers,'DOB').AsDateTime > 0 then
        result := result + sf('11',formatdatetime('YYYYY-MM-DD',getfield(pers,'DOB').AsDateTime))
      else
        result := result + '<dPersonnel.11 xsi:nil="true" NV="7701001"/>';
      result := result + sf('12',tdbfield(pers,'DPERSONNEL12'));
      result := result + CommonSayNVOrSubSection(pers,nem3dPersonnelSub,'dPersonnel','13')+
      sf('14',tdbfield(pers,'DPERSONNEL14'))+sf('15',tdbfield(pers,'DPERSONNEL15'));
      result := result + CommonSaySubSection(nem3dPersonnelSub,'dPersonnel','16');
      result := result + CommonSaySubSection(nem3dPersonnelSub,'dPersonnel','17');
      Nem3dPersonnelImm := open_query(mDatabase,'select * from Nem3dPersonnelImm where persid = '+tdbfield(pers,'persid'));

      while not Nem3dPersonnelImm.eof do begin
        result := result + '<dPersonnel.ImmunizationsGroup>'+crlf+
          '<dPersonnel.18>'+tdbfield(Nem3dPersonnelImm,'dpersonnel18')+'</dPersonnel.18>'+crlf+
          '<dPersonnel.19>'+tdbfield(Nem3dPersonnelImm,'dpersonnel19')+'</dPersonnel.19>'+crlf+
          '</dPersonnel.ImmunizationsGroup>'+crlf;
        Nem3dPersonnelImm.next;
      end;
      Nem3dPersonnelImm.free;

      result := result + CommonSaySubSection(nem3dPersonnelSub,'dPersonnel','20');
      result := result + sf('21',tdbfield(pers,'perscode'));
      Nem3dPersonnellicensure := open_query(mDatabase,'select * from Nem3dPersonnellicensure where persid = '+tdbfield(pers,'persid'));

      while not Nem3dPersonnellicensure.eof do begin
        result := result + '<dPersonnel.LicensureGroup>'+crlf+
          SayCommonNVField(Nem3dPersonnellicensure,'dPersonnel','22')+
          SayCommonNVField(Nem3dPersonnellicensure,'dPersonnel','23')+
          SayCommonNVField(Nem3dPersonnellicensure,'dPersonnel','24');
        if getfield(Nem3dPersonnellicensure,'dpersonnel25').AsDateTime > 0 then
          result := result + '<dPersonnel.25>'+formatdatetime('YYYYY-MM-DD',getfield(Nem3dPersonnellicensure,'dpersonnel25').AsDateTime)+'</dPersonnel.25>'+crlf;

        if getfield(Nem3dPersonnellicensure,'dpersonnel26').AsDateTime > 0 then
          result := result + '<dPersonnel.26>'+formatdatetime('YYYYY-MM-DD',getfield(Nem3dPersonnellicensure,'dpersonnel26').AsDateTime)+'</dPersonnel.26>'+crlf;

        if getfield(Nem3dPersonnellicensure,'dpersonnel27').AsDateTime > 0 then
          result := result + '<dPersonnel.27>'+formatdatetime('YYYYY-MM-DD',getfield(Nem3dPersonnellicensure,'dpersonnel27').AsDateTime)+'</dPersonnel.27>'+crlf;
        result := result + '</dPersonnel.LicensureGroup>'+crlf;
        Nem3dPersonnellicensure.next;
      end;
      Nem3dPersonnellicensure.Free;
      result := result + sf('28',tdbfield(pers,'DPERSONNEL28'));
      result := result + sf('29',tdbfield(pers,'DPERSONNEL29'));



      result := result + sfd('30',getfield(pers,'DPERSONNEL30').AsDateTime);
      result := result + SayCommonNVField(pers,'dPersonnel','31');
      result := result + SayCommonNVField(pers,'dPersonnel','32');
      result := result + sfd('33',getfield(pers,'DPERSONNEL33').AsDateTime);
      result := result + SayCommonNVField(pers,'dPersonnel','34');
      result := result + CommonSayNVOrSubSection(pers,nem3dPersonnelSub,'dPersonnel','35');

      if getfield(pers,'yos').Asfloat>0 then
        result := result + '<dPersonnel.36>'+formatfloat('##0',getfield(pers,'yos').AsFloat)+'</dPersonnel.36>'+crlf;


      result := result + sfd('37',getfield(pers,'DPERSONNEL37').AsDateTime);

      Nem3dPersonnelCert := open_query(mDatabase,'select * from Nem3dPersonnelCert where persid = '+tdbfield(pers,'persid'));

      while not Nem3dPersonnelCert.eof do begin
        result := result + '<dPersonnel.CertificationLevelGroup>'+crlf+
          '<dPersonnel.38>'+tdbfield(Nem3dPersonnelCert,'dpersonnel38')+'</dPersonnel.38>'+crlf;
          if getfield(Nem3dPersonnelCert,'dpersonnel39').AsDateTime>0 then
            result  := result + '<dPersonnel.39>'+formatdatetime('YYYYY-MM-DD',getfield(Nem3dPersonnelCert,'dpersonnel39').AsDateTime)+'</dPersonnel.39>'+crlf+
          '</dPersonnel.CertificationLevelGroup>'+crlf;
        Nem3dPersonnelCert.next;
      end;
      Nem3dPersonnelCert.free;

      result := result + '</dPersonnel.PersonnelGroup>'+crlf;
    end;

    pers.next;
  end;
  pers.free;

end;






function SayConfigurationSubGroup(mDatabase: TAlpineAdoConnection; mTableName,mSectionName,mnem3dConfigurationid,m1,m2: String): String;
var
  Nem3dConfigurationSubTableSUB,Nem3dConfigurationSubTable: TApolloData;
begin
  result := '';
    Nem3dConfigurationSubTable := open_query(mDatabase,'select * from NEM3DCONFIGURATION'+mTableName+' where NEM3DCONFIGURATIONID = '+mnem3dConfigurationid);

    while not Nem3dConfigurationSubTable.eof do begin
      Nem3dConfigurationSubTableSUB := open_query(mDatabase,'select * from NEM3DCONFIGURATION'+mTableName+'SUB where fieldname = '+
        AddExpr('DCONFIGURATION'+m2)+' and NEM3DCONFIGURATION'+mTableName+'ID = '+tdbfield(Nem3dConfigurationSubTable,'NEM3DCONFIGURATION'+mTableName+'id'));
      if Nem3dConfigurationSubTableSUB.queryreccount>0 then begin
        result := result + '<dConfiguration.'+mSectionName+'Group>'+crlf;
        result := result + '<dConfiguration.'+m1+'>'+tdbfield(Nem3dConfigurationSubTable,'dconfiguration'+m1)+'</dConfiguration.'+m1+'>'+crlf;



        while not Nem3dConfigurationSubTableSUB.eof do begin
          result  := result + '<dConfiguration.'+m2+'>'+tdbfield(Nem3dConfigurationSubTableSUB,'code')+'</dConfiguration.'+m2+'>'+crlf;
          Nem3dConfigurationSubTableSUB.next;
        end;
        result := result + '</dConfiguration.'+mSectionName+'Group>'+crlf;
        Nem3dConfigurationSubTableSUB.free;
      end;  
      Nem3dConfigurationSubTable.next;
    end;
    Nem3dConfigurationSubTable.Free;
end;

function GetdConfiguration(mDatabase: TAlpineAdoConnection; iNem3SetID: Integer): String;
var
  Nem3dConfigurationSub,nem3dConfiguration: TApolloData;

  procedure SayConfigSubTable(mTable,mField: String);
  var
    configSubTable: TApolloData;
  begin
    ConfigSubTable := open_query(mDatabase,'select * from '+mTable+' where NEM3DCONFIGURATIONID = '+tdbfield(nem3dConfiguration,'nem3dConfigurationid'));
    while not ConfigSubTable.eof do begin
      result := result + '<dConfiguration.'+mField+'>'+tdbfield(ConfigSubTable,'dconfiguration'+mField)+'</dConfiguration.'+mField+'>'+crlf;
      ConfigSubTable.next;
    end;
    ConfigSubTable.free;
  end;

  procedure SaySubSection(mField: String);
  begin
    result := result + CommonSaySubSection(Nem3dConfigurationSub,'dConfiguration',mField);
  end;
  procedure SayNVOrSubSection(mField: String);
  begin
    result := result + CommonSayNVOrSubSection(Nem3dConfiguration,Nem3dConfigurationSub,'dConfiguration',mField);
  end;

begin
  result := '';
  nem3dConfiguration := open_query(mDatabase,'select * from nem3dConfiguration where nem3setid = '+inttostr(iNem3Setid));
  while not nem3dConfiguration.eof do begin
    Nem3dConfigurationSub := open_query(mDatabase,'select * from NEM3DCONFIGURATIONSUB where NEM3DCONFIGURATIONID = '+tdbfield(nem3dConfiguration,'nem3dConfigurationid')+' order by fieldname');
    result := result + '<dConfiguration.ConfigurationGroup>'+crlf;
    result := result + '<dConfiguration.01>'+tdbfield(nem3dconfiguration,'dconfiguration01')+'</dConfiguration.01>'+crlf;

    SaySubSection('02');
    SayNVOrSubSection('03');
    SayNVOrSubSection('04');
    SayNVOrSubSection('05');

    result := result + SayConfigurationSubGroup(mDatabase,'PROC','Procedure',tdbfield(nem3dConfiguration,'nem3dConfigurationid'),'06','07');
    result := result + SayConfigurationSubGroup(mDatabase,'MED','Medication',tdbfield(nem3dConfiguration,'nem3dConfigurationid'),'08','09');
    SaySubSection('10');
    SaySubSection('11');
    result := result + '<dConfiguration.12>'+tdbfield(nem3dconfiguration,'dconfiguration12')+'</dConfiguration.12>'+crlf;
    result := result + '<dConfiguration.13>'+tdbfield(nem3dconfiguration,'dconfiguration13')+'</dConfiguration.13>'+crlf;

    if SqlTableRecCount(mDatabase,'select count(*) from nem3dconfigurationemd where NEM3DCONFIGURATIONID = '+GetField(nem3dConfiguration,'nem3dConfigurationid').AsString)= 0 then
      result := result + '<dConfiguration.14 xsi:nil="true" NV="7701003"/>'+crlf
    else
      SayConfigSubTable('nem3dconfigurationemd','14');

    SaySubSection('15');

    SayConfigSubTable('nem3dconfigurationcrew','16');
    SayConfigSubTable('nem3dconfigurationcad','17');


    result := result + '</dConfiguration.ConfigurationGroup>'+crlf;
    Nem3dConfigurationSub.Free;
    nem3dConfiguration.next;
  end;
  nem3dConfiguration.free;
end;

function GetdFacility(mDatabase:TAlpineAdoConnection): String;
var
  nem3dFacilityNPI,nem3dFacilitySub,emshosp,emshospgroup,nem3dfacilityphone: TApolloData;
begin
  emshospgroup := open_query(mDataBase,'select dfacility01 from emshosp group by dfacility01');
  result := '';
  while not emshospgroup.eof do begin
    if tdbfield(emshospgroup,'dfacility01')<> '' then begin
      result := result + '<dFacilityGroup>'+crlf+'<dFacility.01>'+tdbfield(emshospgroup,'dfacility01')+'</dFacility.01>'+crlf;
      emshosp := open_query(mDatabase,'select * from emshosp where dfacility01 = '+edbfield(emshospgroup,'dfacility01'));

      while not emshosp.eof do begin
        result := result + '<dFacility.FacilityGroup>'+crlf;
        result := result + '<dFacility.02>'+tdbfield(emshosp,'descr')+'</dFacility.02>'+crlf;
        result := result + '<dFacility.03>'+tdbfield(emshosp,'code')+'</dFacility.03>'+crlf;

        nem3dFacilitySub := open_query(mDatabase,'select * from NEM3DFACILITYSUB where emshospid = '+tdbfield(emshosp,'emshospid')+' and fieldname = '+AddExpr('DFACILITY04'));
        while not nem3dFacilitySub.eof do begin
          result := result + '<dFacility.04>'+tdbfield(nem3dFacilitySub,'code')+'</dFacility.04>'+crlf;
          nem3dFacilitySub.next;
        end;
        nem3dFacilitySub.Free;
        nem3dFacilityNPI := open_query(mDatabase,'select * from NEM3DFACILITYNPI where emshospid = '+tdbfield(emshosp,'emshospid'));
        while not nem3dFacilityNPI.eof do begin
          result := result + '<dFacility.05>'+tdbfield(nem3dFacilityNPI,'DFACILITY05')+'</dFacility.05>'+crlf;
          nem3dFacilityNPI.next;
        end;
        nem3dFacilityNPI.Free;;
        if  tdbfield(emshosp,'DFACILITY06')<>'' then
          result := result + '<dFacility.06>'+tdbfield(emshosp,'DFACILITY06')+'</dFacility.06>'+crlf;
        result := result + '<dFacility.07'+
          iif(tdbfield(emshosp,'DFACILITY07STREETADDRESS2')='','',' StreetAddress2="'+tdbfield(emshosp,'DFACILITY07STREETADDRESS2')+'"')+'>'+
        tdbfield(emshosp,'address')+'</dFacility.07>'+crlf;

        result := result + '<dFacility.08>'+tdbfield(emshosp,'GNIS')+'</dFacility.08>'+crlf;
        result := result + '<dFacility.09>'+tdbfield(emshosp,'STATEFIPS')+'</dFacility.09>'+crlf;
        result := result + '<dFacility.10>'+tdbfield(emshosp,'ZIP')+'</dFacility.10>'+crlf;
        if  tdbfield(emshosp,'COUNTYFIPS')<>'' then
          result := result + '<dFacility.11>'+tdbfield(emshosp,'COUNTYFIPS')+'</dFacility.11>'+crlf;
        if  tdbfield(emshosp,'DFACILITY12')<>'' then
          result := result + '<dFacility.12>'+tdbfield(emshosp,'DFACILITY12')+'</dFacility.12>'+crlf;
        if  (getfield(emshosp,'LATITUDE').AsFloat<>0) and (getfield(emshosp,'LONGITUDE').AsFloat<>0) then
          result := result + '<dFacility.13>'+formatfloat('##0.000000',getfield(emshosp,'latitude').AsFloat)+','+
            formatfloat('##0.000000',getfield(emshosp,'longitude').AsFloat)+'</dFacility.13>'+crlf;
        if tdbfield(emshosp,'dfacility14')<> '' then
          result := result + '<dFacility.14>'+tdbfield(emshosp,'dfacility14')+'</dFacility.14>'+crlf;

        nem3dFacilityPhone := open_query(mDatabase,'select * from NEM3DFACILITYPhone where emshospid = '+tdbfield(emshosp,'emshospid'));
        while not nem3dFacilityPhone.eof do begin
          result := result + '<dFacility.15'+iif(tdbfield(nem3dFacilityPhone,'DFACILITY15TYPE')='','',' PhoneNumberType="'+tdbfield(nem3dFacilityPhone,'DFACILITY15TYPE')+'"')+'>'+tdbfield(nem3dFacilityPhone,'DFACILITY15')+'</dFacility.15>'+crlf;
          nem3dFacilityPhone.next;
        end;
        nem3dFacilityPhone.Free;;
        result := result + '</dFacility.FacilityGroup>'+crlf;
        emshosp.next;
      end;
      emshosp.free;
      result := result + '</dFacilityGroup>'+crlf;
    end;
    emshospgroup.next;
  end;
  emshospgroup.free;
end;

constructor TCustomEntry.Create(mfieldname,mnational_code,mcode: String);
begin
  fieldname := mFieldName;
  national_code := mnational_code;
  code := mCode;
end;
end.

//https://nemsis.org/media/nemsis_v3/3.4.0.160713CP2/XSDs/NEMSIS_XSDs/dVehicle_v3.xsd
//https://nemsis.org/media/nemsis_v3/3.4.0.160713CP2/XSDs/NEMSIS_XSDs/EMSDataSet_v3.xsd
