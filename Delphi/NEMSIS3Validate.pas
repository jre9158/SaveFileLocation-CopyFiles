unit Nemsis3Validate;

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
     StdCtrls,
     ExtCtrls,
     AlpineBase,
     AppLst,
     Db,
     jpeg,
     CommonFunc,
     CommonVar,
     Nem3EMS,
     NormalBase,
     FormFunc,
     GenFunc,
     AdvGrid,
     AlpineTMSStringGrid,
     TlHelp32,
    // ipscore,
    // ipssoaps,
   //  ipshttps,
   //  ipsrests,
      ipwcore, ipwsoap, ipwhttp, ipwrest, ipwtypes,
     ShellApi,WinSvc;

  procedure WriteErrorFile(mName,mpk,merror: String);
  function ValidateNemsis3XMLString(XML : String; var mError: String): Boolean;
  function ValidateNemsis3XSDFileWithXmlLint(mBinPath,mpath,mHeader,mppcrfilename,mpcrnum: String; var merror: String;bDataset: Boolean): Boolean;
  function ValidateNemsis3SchematronOld(xmlFile, schFileX: String; var merror: String) : String;
  function ValidateNemsis3SchematronLocal(xmlFile : String; var merror: String) : String;
  procedure SchExecNewProcess(ProgramName : String; Wait: Boolean);
  function ParseSVRL(svrl : string) : string;
  function ValidateNemsis3(bSoap,bDataSet: Boolean; mBinPath,mPath: String; mDatabase: TAlpineAdoConnection; pk : string; var xsdResults : String; var schResults : String; var ErrorMsg,xsderror : String; var ErrorList: TStringList) : Boolean;
  function processExists(exeFileName: string): Boolean;
  function ServiceIsPresent(sMachine, sService: PChar): Boolean;
  function ServiceStart(sMachine, sService : string) : Boolean;
  procedure GetNemsis3StateVars(state : string; var StateEndPointURL : String; var StateToken : String; var StateUserName : String; var StatePassword : String);
  procedure ProcessSubmitDataResponse(ServerResponse : string; var mStatusCode : string; var mHandleID : string; var mSVRLReport : string);
  function GetNemsis3SubStatusDescr(errcode : string) : string;
  function CheckNemsis3SubmissionStatus(mDatabase: TAlpineAdoConnection; pk : string; var mGeneralErrorMessage: String; var ErrorList: TStringList): Boolean;
  function RetrieveNemsis3StatusWithSoap(m: String; bDataset: Boolean; mEndPoint, mToken: String): String;
  procedure ProcessRetrieveStatusResponse(ServerResponse : string; var mStatusCode : string; var mHandleID : string; var mSVRLReport : string);
  function ParseSoapStatusSVRL(svrl : string; errorList: TStringList) : string;
  function GetSubmittedFromStatus(statuscode : string) : Boolean;

  type
  // Dummy class to hold event json handlers:
  TSoapEventHandlers = class
    ErrMsg : string;
    // Event handlers:
    class procedure SoapSSLServerAuthentication(Sender: TObject; CertEncoded: string; CertEncodedB: TBytes; const CertSubject, CertIssuer, Status: string; var Accept: Boolean);
  end;


  type
  TAnoPipe=record
    Input : THandle; // Handle to send data to the pipe
    Output: THandle; // Handle to read data from the pipe
  end;



  type
    // Dummy class to hold event json handlers:
    TXMLpValEventHandlers = class
      // Event handlers:
      class procedure ipwXMLpValError(Sender: TObject; ErrorCode: Integer; const Description: String);
  end;

implementation
uses xmldoc,xmlintf,xmldom,ipwXML,Nemsis3Export,Nemsis3XmlLintXSDValidate, NativeXML;

const
  nem3basedir = 'c:\rednmx\nemsis3';


class procedure TXMLpValEventHandlers.ipwXMLpValError(Sender: TObject; ErrorCode: Integer; const Description: String);
begin
  AppendToLog('NEMSIS 3 VALIDATE ERROR: ' + IntToStr(ErrorCode)+' '+Description);
  //_error := _error + #13#10 + IntToStr(ErrorCode)+' - '+Description;
end;

procedure GetNemsis3StateVars(state : string; var StateEndPointURL : String; var StateToken : String; var StateUserName : String; var StatePassword : String);
begin
  // takes in a state 2 digit code and returns the soap submission account info as provided by state health agency

  {
New Jersey
------------------------------------------------------
https://newjersey.imagetrendelite.com/elite/organizationnewjersey/Nemsis3WS
Account Name:  AlpineSoftware
Username:  AlpineNJ
Password:  Alpine1!
Token:  5f03c100-119a-4223-a03e-c1fcacc7d8f5
}
//mUser := 'AlpineNJ';
//mPass := 'Alpine1!';
//mEndPoint := 'https://newjersey.imagetrendelite.com/elite/organizationnewjersey/Nemsis3WS';

{
MI State Nemsis 3 Data Submission SOAP Web service
-----------------------------------------------------
Username: AlpineSoftwareWS
Password: T58cD63KqD49
Token: 372a2973-2c2b-4229-a478-be13a08f5374
Endpoint: https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws
WSDL Link: https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws?wsdl
}
  if (state = 'MI') then begin
    StateEndPointURL  := 'https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws';
    StateToken        := '372a2973-2c2b-4229-a478-be13a08f5374';
    StateUserName     := 'AlpineSoftwareWS';
    StatePassword     := 'T58cD63KqD49';
  end else if (state = 'NJ') then begin
    StateEndPointURL  := 'https://newjersey.imagetrendelite.com/elite/organizationnewjersey/Nemsis3WS';
    StateToken        := '5f03c100-119a-4223-a03e-c1fcacc7d8f5';
    StateUserName     := 'AlpineNJ';
    StatePassword     := 'Alpine1!';
  end else if (state = 'NH') then begin
    StateEndPointURL  := 'https://www.nhtemsis.org/Elite/Organizationnewhampshire/NEMSIS3ws';
    StateToken        := 'ea7b5110-997f-4f63-93a8-31e15ef4bcc9';
    StateUserName     := 'alpineimporttest';
    StatePassword     := '4pvt5MQb274W';
  end else begin
    StateEndPointURL  := '';
    StateToken        := '';
    StateUserName     := '';
    StatePassword     := '';
  end;
end;

function FixXMLError(m: String): String;
var
  mNewCode,m1,mOrgField,mField: String;
  i1, i2,i:  Integer;
  s: TStringList;
begin
  // what is this..? looks like an attempt to lookup/deliver better error code
  result := m;
  exit;
  if Pos('Invalid content was found starting with element '+'''',m)>0 then begin
    mOrgField := ExtractStringBetweenTwoStrings(m,'element '+'''',''''+'. One');
    mField := SearchAndReplace(mOrgField,'.','');
    mField := sqllookup(mField,'code','nem3codelist','descr');
    m := SearchAndReplace(m,mOrgField,mField);
  end;
  i1 := Pos('One of',m);
  i2 := Pos('is expected.',m);
  if (i1>0) and (i2>0) then begin
    m1 := ExtractStringBetweenTwoStrings(substr(m,i1,i2-i1+5),'{','}');
    m1 := SearchAndReplace(m1,'"http://www.nemsis.org":','');
    m1 := SearchAndReplace(m1,'.','');
    s := TStringList.Create;
    ParseBasedOnDelimiter( m1,',',s);
    for i := 0 to s.count -1 do begin
      mNewcode := sqllookup(alltrim(s[i]),'code','nem3codelist','descr');
      if mNewCode <>'' then
        s[i] := mNewCode;
    end;  
    m := substr(m,1,i1-1);
    m := m + 'One of ';
    for i := 0 to s.count-1 do begin
      m := m + '"'+ s[i]+'"';
      if i < s.count-1 then
        m := m+',';
    end;
    s.free;

    m := m+ ' is expected';
  end;
  m := SearchAndReplace(m,'cvc-complex-type.2.4.a:','');

  result := m;
end;


function ParseSoapSVRL(svrl : string; errorList: TStringList) : string;
var
  xml: TipwXML; //TipwXMLp;
  ms1,mNameSpace,m1,mPath: String;
  iError,iXMLErrors,iReportEntity,nReportCount,iReport,nReportEntities,nFailedAssertions: Integer;
begin
  if alltrim(svrl) = '' then begin
    result := 'No Data in ParseSoapSVRL';
    appendtolog('No Data in ParseSoapSVRL');
    exit;
  end;
  result := '';
 try
  xml := TipwXML.Create(nil);
  xml.Reset;
  xml.Validate := true;
  //xml.Input(svrl);
  xml.InputData := svrl;
  xml.Parse;
  xml.BuildDOM := true;

  xml.XPath := '/';
  iXMLErrors :=0;

  mNameSpace := 'SOAP-ENV';
  ms1 :=  'ns2:';

  try
    xml.xpath := '/'+mNameSpace+':Envelope/'+mNameSpace+':Body/SubmitDataResponse/reports/xmlValidationErrorReport/totalErrorCount';

    iXMLErrors := anystrtoint(xml.xText);
    for iError := 1 to iXMLErrors do begin
      try
        xml.xpath := '/'+mNameSpace+':Envelope/'+mNameSpace+':Body/SubmitDataResponse/reports/xmlValidationErrorReport/xmlError['+inttostr(iError)+']/desc';
        m1 := FixXMLError(xml.xtext);
        ErrorList.Add(m1);
      except
        on e: exception do begin
          AppendToLog('ParseSoapSVRL Error parsing XSD report error/warning: '+e.Message);
        end;
      end;
    end;

  except
    on e: exception do begin
      AppendToLog('ParseSoapSVRL XSD Error: '+e.Message);
    end;
  end;

  if iXMLErrors = 0 then begin // only do sch errors if no xsd?
    try
      mPath := '/'+mNameSpace+':Envelope/'+mNameSpace+':Body/'+ms1+'SubmitDataResponse/'+ms1+'reports/'+
          ms1+'schematronReport/'+ms1+'completeSchematronReport';
      xml.xpath := mPath;
      nReportCount := xml.XChildren.Count;

      for iReport := 1 to nReportCount do begin
        if xml.XChildName[iReport-1] =ms1+'completeReport' then begin
          nFailedAssertions := 0;
          mPath := xml.xPath;
          xml.xpath := mPath+'/'+ms1+'completeReport['+inttostr(iReport)+']/'+ms1+'payloadOfXmlElement/svrl:schematron-output';

          nReportEntities := xml.XChildren.Count;
          for iReportEntity := 1 to nReportEntities do begin
            if xml.XChildName[iReportEntity-1] ='svrl:failed-assert' then begin
              nFailedAssertions := nFailedAssertions+1;
              m1 := xml.xPath;
              xml.xPath := xml.xpath+'/svrl:failed-assert['+inttostr(nFailedAssertions)+']/svrl:text';
              ErrorList.Add(xml.xtext);
              xml.xPath := m1;
            end;
          end;
          xml.xPath := mPath;
        end;
      end;
    except
      on e: exception do begin
        AppendToLog('ParseSoapSVRL SCH Error: '+e.Message);
      end;
    end;
    if nFailedAssertions >0 then
      result := 'Found '+inttostr(nReportEntities)+' Schematron Errors';
  end else
    result := 'Found '+inttostr(iXmlErrors)+' XML errors';

 finally
  xml.free;
 end;
end;

function ParseSoapStatusSVRL(svrl : string; errorList: TStringList) : string;
var
  xml: TipwXML;//TipwXMLp;
  ms1,mNameSpace,m1,mPath, mDescr : String;
  iError,iXMLErrors,iReportEntity,nReportCount,iReport,nReportEntities,nFailedAssertions: Integer;
  bSkip : Boolean;
begin
  if alltrim(svrl) = '' then begin
    result := 'No Data in ParseSoapStatusSVRL';
    appendtolog('No Data in ParseSoapStatusSVRL');
    exit;
  end;
  result := '';
  bSkip := False;
 try
  xml := TipwXML.Create(nil);
  xml.Reset;
  xml.Validate := true;
  xml.InputData := svrl;
  xml.Parse;
  xml.BuildDOM := true;

  xml.XPath := '/';
  iXMLErrors := 0;

  mNameSpace := 's';
  ms1 :=  ''; //'ns2:';

  try
    if not (xml.HasXPath('/'+mNameSpace+':Envelope/'+mNameSpace+':Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus')) then begin
      result := 'No Report to Process';
      bSkip := True;
    end;
  except
  end;

  if not(bSkip) then begin

  try
    xml.xpath := '/'+mNameSpace+':Envelope/'+mNameSpace+':Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus/xmlValidationErrorReport/totalErrorCount';
    iXMLErrors := anystrtoint(xml.xText);
    for iError := 1 to iXMLErrors do begin
      try
        mPath :='/'+mNameSpace+':Envelope/'+mNameSpace+':Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus/xmlValidationErrorReport/xmlError/xmlGeneralErrorList/errorMessage['+inttostr(iError)+']';
        if xml.HasXPath(mPath+'/desc') then
          mPath := mPath + '/desc';
        xml.xpath := mPath;
        m1 := FixXMLError(xml.xtext);
        ErrorList.Add(m1);
      except
        on e: exception do begin
          AppendToLog('ParseSoapStatusSVRL Error parsing XSD report error/warning: '+e.Message);
        end;
      end;
    end;
  except
    on e: exception do begin
      AppendToLog('ParseSoapStatusSVRL XSD Error: '+e.Message);
    end;
  end;

  if iXMLErrors = 0 then begin // only do sch errors if no xsd?
    try

      ///s:Envelope/s:Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus/schematronReport
      mPath:= '/'+mNameSpace+':Envelope/'+mNameSpace+':Body/'+ms1+'RetrieveStatusResponse/'+ms1+'retrieveResult/'+ms1+'retrieveSubmitStatus/'+
          ms1+'schematronReport'; // /'+ms1+'completeSchematronReport';

      xml.xpath := mPath;
      nReportCount := xml.XChildren.Count;

      nFailedAssertions := 0;

      for iReport := 1 to nReportCount do begin
        try
          if xml.XChildName[iReport-1] =ms1+'completeSchematronReport' then begin
            mDescr := '';
            mPath := xml.xPath; // remember parent path, to switch back before next loop
            try
              if xml.HasXPath(mPath+'/'+ms1+'completeSchematronReport['+inttostr(iReport)+']/'+ms1+'payloadOfXmlElement/svrl:failed-assert') then begin
                nFailedAssertions := nFailedAssertions+1;
                xml.xPath := mPath+'/'+ms1+'completeSchematronReport['+inttostr(iReport)+']/'+ms1+'payloadOfXmlElement/svrl:failed-assert';
                mDescr := xml.GetAttr('role');
                xml.xPath := mPath+'/'+ms1+'completeSchematronReport['+inttostr(iReport)+']/'+ms1+'payloadOfXmlElement/svrl:failed-assert/svrl:text';
                mDescr := trim(mDescr + #13#10 + xml.xtext);
                ErrorList.Add(mDescr);
              end;
            finally
              xml.xPath := mPath; // set back to original path for next loop iteration
            end;
            {
            xml.xpath := mPath+'/'+ms1+'completeReport['+inttostr(iReport)+']/'+ms1+'payloadOfXmlElement';

            nReportEntities := xml.XChildren.Count;
            for iReportEntity := 1 to nReportEntities do begin
              if xml.XChildName[iReportEntity-1] ='svrl:failed-assert' then begin
                nFailedAssertions := nFailedAssertions+1;
                m1 := xml.xPath;
                xml.xPath := xml.xpath+'/svrl:failed-assert['+inttostr(nFailedAssertions)+']/svrl:text';
                ErrorList.Add(xml.xtext);
                xml.xPath := m1;
              end;
            end;
            xml.xPath := mPath;

            }
          end;
        except
          on e: exception do begin
            AppendToLog('ParseSoapStatusSVRL Error parsing Schematron report error/warning: '+e.Message);
          end;
        end;
      end;
    except
      on e: exception do begin
        AppendToLog('ParseSoapStatusSVRL SCH Error: '+e.Message);
      end;
    end;
    if nFailedAssertions >0 then
      result := 'Found '+inttostr(nFailedAssertions)+' Schematron Warnings/Errors';
  end else
    result := 'Found '+inttostr(iXmlErrors)+' XML errors';
    
  end; // end bSkip
 finally
  xml.free;
 end;
end;

function ValidateNemsis3XSDFileWithXmlLint(mBinPath,mPath,mHeader,mppcrfilename,mpcrnum: String; var merror: String;bDataset: Boolean): Boolean;
//var params : string;
var
  mXsdFile: String;
begin
  //params := mBinPath+'xmllint --schema '+mPath+'EMSDataSet_v3.xsd  '+mppcrfilename+' --noout --pretty 1';
  //if RunDosReturnString (params,merror) then

  if bDataSet then
    mXsdFile := 'EMSDataSet_v3.xsd'
  else
    mXsdFile := 'DEMDataSet_v3.xsd';
  CaptureConsoleOutput(mBinPath+'xmllint','--schema '+mPath+mXsdFile+'  '+mppcrfilename+' --noout --pretty 1',merror);
  if not(trim(merror) = '') then
    result := pos(mppcrfilename+' validates',mError)>0
  else
    result := False;
end;



function ValidateNemsis3WithSoapCall(m: String; bDataset: Boolean; mEndPoint, mToken: String): String;
var
  _packet : string;
  //SOAP1: TipwSOAP; //TipsSOAPS;
  HTTPS1  : TipwREST; // TipwHTTP; //TipsRESTS;
  m1: String;
begin
  try
    HTTPS1  := TipwREST.Create(nil);   //TipwHTTP.Create(nil);
    try
      HTTPS1.OnSSLServerAuthentication := TSoapEventHandlers.SoapSSLServerAuthentication;
      HTTPS1.Config('SSLEnabledProtocols=3072');

      HTTPS1.ContentType  := 'text/xml;charset=UTF-8';
      HTTPS1.AuthScheme := ipwtypes.authNone;
      HTTPS1.BuildDOM := False;
      HTTPS1.Validate := False;
      HTTPS1.OtherHeaders := 'SOAPAction: "http://ws.nemsis.org/SubmitData"';
      if not(mToken = '') then
        HTTPS1.OtherHeaders := HTTPS1.OtherHeaders + #13#10 + 'Authorization: Bearer '+mToken;

      {if pos('jersey',mEndPoint)>0 then begin
        HTTPS1.OtherHeaders := 'SOAPAction: "http://ws.nemsis.org/SubmitData"'+#13#10+'Authorization: Bearer 5f03c100-119a-4223-a03e-c1fcacc7d8f5';
      end else if pos('michigan',mEndPoint)>0 then begin
        HTTPS1.OtherHeaders := 'SOAPAction: "http://ws.nemsis.org/SubmitData"'+#13#10+'Authorization: Bearer 372a2973-2c2b-4229-a478-be13a08f5374';
      end else begin
        HTTPS1.OtherHeaders := 'SOAPAction: "http://ws.nemsis.org/SubmitData"';
      end;
       }
      if bDataset then
        m1 := 'EMS'
      else
        m1 := 'DEM';

      m := SearchAndReplace(m,'<'+m1+'DataSet xmlns="http://www.nemsis.org">',crlf+'<'+m1+'DataSet xmlns="http://www.nemsis.org" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">'+crlf);
      if fileexists('c:\rednmx\pers.pas') then
        StringToFile('c:\rednmx\nemsis3\soappacket.xml',m);
      HTTPS1.PostData := m;
      HTTPS1.Post(trim(mEndPoint));
      appendtolog('-- RESPONSE --'+#13#10+ HTTPS1.TransferredData);
      result := HTTPS1.TransferredData;
    except
      on e: exception do begin
        appendtolog('SubmitData Error: '+e.Message);
        AppendToLog( '-- SERVER RESPONSE --'+#13#10+ HTTPS1.TransferredData);
        if IsMark then begin
          deletefile('c:\rednmx\nemsis3\error.xml');
          stringtofile('c:\rednmx\nemsis3\error.xml',HTTPS1.TransferredData);
        end;
      end
    end;
  finally
    HTTPS1.Free;
  end;
end;


function RetrieveNemsis3StatusWithSoap(m: String; bDataset: Boolean; mEndPoint, mToken: String): String;
var
  _packet : string;
  HTTPS1  : TipwREST; //TipsRESTS;
  m1: String;
begin
  try
    HTTPS1  := TipwREST.Create(nil);
    try
      HTTPS1.OnSSLServerAuthentication := TSoapEventHandlers.SoapSSLServerAuthentication;
      HTTPS1.Config('SSLEnabledProtocols=3072');
      HTTPS1.ContentType  := 'text/xml;charset=UTF-8';
      HTTPS1.AuthScheme := ipwtypes.authNone;
      HTTPS1.OtherHeaders := 'SOAPAction: "http://ws.nemsis.org/RetrieveStatus"';
      if not(mToken = '') then
        HTTPS1.OtherHeaders := HTTPS1.OtherHeaders + #13#10 + 'Authorization: Bearer '+mToken;

      if fileexists('c:\rednmx\pers.pas') then
        StringToFile('c:\rednmx\nemsis3\status_soappacket.xml',m);
      HTTPS1.PostData := m;
      HTTPS1.Post(trim(mEndPoint));
      appendtolog('-- NEMSIS 3 STATUS RESPONSE --'+#13#10+ HTTPS1.TransferredData);
      result := HTTPS1.TransferredData;
    except
      on e: exception do begin
        appendtolog('RetrieveStatus Error: '+e.Message);
        AppendToLog( '-- NEMSIS 3 STATUS SERVER RESPONSE --'+#13#10+ HTTPS1.TransferredData);
        if fileexists('c:\rednmx\pers.pas') then begin
          deletefile('c:\rednmx\nemsis3\status_error.xml');
          stringtofile('c:\rednmx\nemsis3\status_error.xml',HTTPS1.TransferredData);
        end;
      end
    end;
  finally
    HTTPS1.Free;
  end;
end;


procedure ProcessSubmitDataResponse(ServerResponse : string; var mStatusCode : string; var mHandleID : string; var mSVRLReport : string);
var
  xml: TipwXML;//TipwXMLp;
  root : string;
begin
  mStatusCode := '';
  mHandleID   := '';
  mSVRLReport := '';

  if trim(ServerResponse) = '' then
    exit;

  try
    xml := TipwXML.Create(nil);
    xml.Reset;

    try
      xml.Validate := true;
      xml.InputData := ServerResponse;
      xml.Parse;
      xml.BuildDOM := true;
      xml.XPath := '/';
      root := xml.XElement;
      xml.XPath := '/' + root;

      if xml.HasXPath('/s:Envelope/s:Body/SubmitDataResponse/statusCode') then begin
        xml.XPath := '/s:Envelope/s:Body/SubmitDataResponse/statusCode';
        mStatusCode := trim(xml.XText);

        if xml.HasXPath('/s:Envelope/s:Body/SubmitDataResponse/requestHandle') then begin
          xml.XPath := '/s:Envelope/s:Body/SubmitDataResponse/requestHandle';
          mHandleID := trim(xml.XText);
        end;

        if xml.HasXPath('/s:Envelope/s:Body/SubmitDataResponse/reports') then begin
          xml.XPath := '/s:Envelope/s:Body/SubmitDataResponse/reports';
          mSVRLReport := 'Y';
        end;

      end;
    except
      on e: exception do begin
        AppendToLog('ProcessSubmitDataResponse Parse Error: '+e.Message);
      end;
    end;

  finally
    xml.Free;
  end;

end;

procedure ProcessRetrieveStatusResponse(ServerResponse : string; var mStatusCode : string; var mHandleID : string; var mSVRLReport : string);
var
  xml: TipwXML; //TipwXMLp;
  root : string;
begin
  mStatusCode := '';
  mHandleID   := '';
  mSVRLReport := '';

  if trim(ServerResponse) = '' then
    exit;

  try
    xml := TipwXML.Create(nil);
    xml.Reset;

    try
      xml.Validate := true;
      xml.InputData := ServerResponse;
      xml.Parse;
      xml.BuildDOM := true;
      xml.XPath := '/';
      root := xml.XElement;
      xml.XPath := '/' + root;

      if xml.HasXPath('/s:Envelope/s:Body/RetrieveStatusResponse/statusCode') then begin
        xml.XPath := '/s:Envelope/s:Body/RetrieveStatusResponse/statusCode';
        mStatusCode := trim(xml.XText);

        if xml.HasXPath('/s:Envelope/s:Body/RetrieveStatusResponse/requestHandle') then begin
          xml.XPath := '/s:Envelope/s:Body/RetrieveStatusResponse/requestHandle';
          mHandleID := trim(xml.XText);
        end;

        if xml.HasXPath('/s:Envelope/s:Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus') then begin
          xml.XPath := '/s:Envelope/s:Body/RetrieveStatusResponse/retrieveResult/retrieveSubmitStatus';
          mSVRLReport := 'Y';
        end;

      end;
    except
      on e: exception do begin
        AppendToLog('ProcessRetrieveStatusResponse Parse Error: '+e.Message);
      end;
    end;

  finally
    xml.Free;
  end;

end;

function GetSubmittedFromStatus(statuscode : string) : Boolean;
var
  iStat : integer;
begin
  Result := False;
  iStat := 0;
  if alltrim(statuscode) = '' then exit;
  try
    iStat   := AnyStrToInt(alltrim(statuscode));
    Result  := iStat > 0;
  except
    on e: exception do begin
      if ((statuscode = '1') or (statuscode = '2') or (statuscode = '3') or (statuscode = '4') or (statuscode = '5') or (statuscode = '6')) then
        Result := True
      else
        Result := False;
    end;
  end;
end;

function GetNemsis3SubStatusDescr(errcode : string) : string;
var errdescr : string;
begin
  if (errcode = '') then begin
    Result := '';
    exit;
  end;

  if (errcode = '0') then begin
    errdescr := 'Submission received and processing. Please check status later for results.';
    errdescr := 'The expected data processing is not yet complete';
  end else if (errcode = '-3') then begin
    errdescr := 'Permission denied to the client for that organization';
  end else if (errcode = '-2') then begin
    errdescr := 'Permission denied to the client for the operation';
  end else if (errcode = '-1') then begin
    errdescr := 'Invalid username and/or password';
  end else if (errcode = '-4') then begin
    errdescr := 'Invalid parameter value';
  end else if (errcode = '-5') then begin
    errdescr := 'Invalid parameter combination';
  end else if (errcode = '-20') then begin
    errdescr := 'Generic server error';
  end else if (errcode = '-21') then begin
    errdescr := 'Server error, because of database connection/operation issue';
  end else if (errcode = '-22') then begin
    errdescr := 'Server error, because of file system/network/IO issue';
  end else if (errcode = '-11') then begin
    errdescr := 'Failed to submit, because the same file is already on the server';
    //errdescr := 'Failed import of a file, because the same file is already on the server';
  end else if (errcode = '-12') then begin
    errdescr := 'Failed to submit, validation error(s)';
    //errdescr := 'Failed import of a file, because of failing XML validation';
  end else if (errcode = '-13') then begin
    errdescr := 'Failed to submit, fatal sch rule violation';
    //errdescr := 'Failed import of a file, because of [FATAL] level Schematron rule violation';
  end else if (errcode = '-14') then begin
    errdescr := 'Failed to submit, sch rule violation';
    //errdescr := 'Failed import of a file, because of [ERROR] level Schematron rule violation';
  end else if (errcode = '-15') then begin
    errdescr := 'Failed to submit, critical ETL rule violation';
    //errdescr := 'Failed import of a file, because of critical ETL rule violation';
  end else if (errcode = '-16') then begin
    errdescr := 'Failed to submit, critical Business Intelligence rule violation';
    //errdescr := 'Failed import of a file, because of critical Business Intelligence rule violation';
  end else if (errcode = '-30') then begin
    errdescr := 'Failed to submit, size of submission exceeds the limit';
    //errdescr := 'Failed import of a file, because the size of soap message exceeds the limit';
  end else if (errcode = '1') then begin
    errdescr := 'Submitted';
    //errdescr := 'Successful import of a file';
  end else if (errcode = '2') then begin
    errdescr := 'Submitted, with errors';
    //errdescr := 'Successful import of a file, with [ERROR] level Schematron rule violation reported';
  end else if (errcode = '3') then begin
    errdescr := 'Submitted, with warnings'
    //errdescr := 'Successful import of a file, with [WARNING] level Schematron rule violation reported';
  end else if (errcode = '4') then begin
    errdescr := 'Submitted, with ETL warning'
    //errdescr := 'Successful import of a file, with ETL rule warning';
  end else if (errcode = '5') then begin
    errdescr := 'Submitted, with Business Intelligence warning'
    //errdescr := 'Successful import of a file, with Business Intelligence warning';
  end else if (errcode = '6') then begin
    errdescr := 'Partially Submitted, with errors'
    //errdescr := 'Partially successful import of a file, with [ERROR] level Schematron rule violation reported';
  end else begin
    errdescr := 'Unknown Status Code: '+errcode;
  end;

  Result := errdescr;

end;
function SaySoapEnv(mRequest,mUser,mpass,mAgencyID: String): String;
begin
    result:='<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:ws="http://ws.nemsis.org/">'+crlf+
    '<soapenv:Header/>'+crlf+
    '	<soapenv:Body>'+crlf+
    ' <ws:'+mRequest+'>'+crlf+
    '	<ws:username>'+mUser+'</ws:username>'+crlf+
    '	<ws:password>'+mPass+'</ws:password>'+crlf+
    '	<ws:organization>'+mAgencyID+'</ws:organization>'+crlf;

 end;

function CheckNemsis3SubmissionStatus(mDatabase: TAlpineAdoConnection; pk : string; var mGeneralErrorMessage: String; var ErrorList: TStringList): Boolean;
var
  qpcr, qry1 : TApolloData;
  m, xResults, xStatus, xHandleID, xHasReport, oldStatus : string;
  bSubmitted : Boolean;
begin
  Result := False;
  mGeneralErrorMessage := '';
  bSubmitted := False;

  try
    qpcr := Open_Query(mDatabase,'select NEM3PCR.NEM3PCRID, NEM3PCR.SUBMITID, NEM3PCR.SUBMITRESPONSE, '+
      'NEM3PCR.SUBMITSTATUSCODE, NEM3PCR.SUBMITACCEPTED, NEM3PCR.SUBMITDATETIME, NEM3PCR.FDID, NEM3SET.DAGENCY02, NEM3SET.STATEUSERNAME, '+
      'NEM3SET.STATEPASSWORD, NEM3SET.STATEURL, NEM3SET.STATETOKEN '+
      ' from nem3pcr '+
      ' left outer join nem3set on (NEM3PCR.FDID = NEM3SET.FDID) '+
      ' where NEM3PCR.NEM3PCRID = '+pkValue(pk));

    if not(tdbfield(qpcr,'SUBMITID') = '') AND not(tdbfield(qpcr,'DAGENCY02') = '') AND not(tdbfield(qpcr,'STATEURL') = '') AND
       not(tdbfield(qpcr,'STATEUSERNAME') = '') AND not(tdbfield(qpcr,'STATEPASSWORD') = '') then begin

      oldStatus := tdbfield(qpcr,'SUBMITSTATUSCODE');


      m:= SaySoapEnv('RetrieveStatusRequest',tdbfield(qpcr,'stateusername'),tdbfield(qpcr,'statepassword'),tdbfield(qpcr,'dagency02'))+
      ' <ws:requestType>RetrieveStatus</ws:requestType>'+crlf+
      '	<ws:requestHandle>'+tdbfield(qpcr,'SUBMITID')+'</ws:requestHandle>'+crlf+
      '	</ws:RetrieveStatusRequest>'+crlf+
      '	</soapenv:Body>'+crlf+
      ' </soapenv:Envelope>'+crlf;






      xResults := RetrieveNemsis3StatusWithSoap(m,True,tdbfield(qpcr,'STATEURL'),tdbfield(qpcr,'STATETOKEN'));

      if fileexists('c:\rednmx\pers.pas') then
        stringtofile('c:\rednmx\nemsis3\status_soapresults.xml',xResults);

      // error/issue connecting to state web service
      if (xResults = '') then begin
        mGeneralErrorMessage := 'Unable to connect to status service';
        exit;
      end;

      // parse response for new status code, handler id, and report (if included)
      ProcessRetrieveStatusResponse(xResults,xStatus,xHandleID,xHasReport);

      if not(xStatus = '') then begin
        // check status code for error or submitted
        //if ((xStatus = '1') or (xStatus = '3') or (xStatus = '4') or (xStatus = '5')) then
        //  bSubmitted := true
        //else
         // bSubmitted  := False;

        bSubmitted := GetSubmittedFromStatus(xStatus);
        mGeneralErrorMessage := GetNemsis3SubStatusDescr(xStatus);

        try
          qry1 := Open_Query(mDatabase,True,'select nem3pcrid, SUBMITID, SUBMITRESPONSE, SUBMITSTATUSCODE, SUBMITACCEPTED, SUBMITDATETIME from nem3pcr where nem3pcrid = '+pkValue(pk));
          if qry1.RecordsExist then begin
            try
              qry1.Edit;
              GetField(qry1,'SUBMITSTATUSCODE').AsString  := xStatus;
              GetField(qry1,'SUBMITID').AsString  := xHandleID;
              GetField(qry1,'SUBMITRESPONSE').AsString  := xResults;
           
              if (bSubmitted) then begin
                GetField(qry1,'SUBMITACCEPTED').AsString  := 'Y';
                //if not(GetSubmittedFromStatus(oldStatus)) then  // went from not accepted to accepted, add datetime
                  GetField(qry1,'SUBMITDATETIME').AsDateTime := Now;
              end else begin
                GetField(qry1,'SUBMITACCEPTED').AsString  := 'N';
              end;
          
              qry1.Post;
            except
              on e: exception do begin
                qry1.Cancel;
                xHasReport := ''; // bypass processing
                AppendToLog('CheckNemsis3SubmissionStatus error posting to db: '+e.Message);
                mGeneralErrorMessage := 'System error saving status info, please try again.';
              end;
            end;
          end;
        finally
          qry1.Free;
        end;

        // need to feed in the ErrorList from nem3pcr for svrl parse output
        
        // process svrl report if included
        if (xHasReport = 'Y') then
          mGeneralErrorMessage := ParseSoapStatusSVRL(xResults,ErrorList); //this may fail as structure might be different for status fetch

      end else begin
        mGeneralErrorMessage := 'Unknown error during status check.';
      end;
    end else begin
      // missing handleID or state login info
      Result := False;
      if (tdbfield(qpcr,'SUBMITID') = '') then
        mGeneralErrorMessage := 'ePCR has not been previoulsy submitted'
      else
        mGeneralErrorMessage := 'Agency ('+tdbfield(qpcr,'FDID')+') has not been added or is missing state submission information in Nemsis 3 Setup';
    end;
    {
    mOldHandleID := tdbfield(qpcr,'SUBMITID');
    mOldStatus := tdbfield(qpcr,'SUBMITSTATUSCODE');
    mOldResponse := tdbfield(qpcr,'SUBMITRESPONSE');

    pcrAgencyID := tdbfield(qry1,'DAGENCY02');
          sUser := tdbfield(qry1,'STATEUSERNAME');
          sPass := tdbfield(qry1,'STATEPASSWORD');
          sURL  := tdbfield(qry1,'STATEURL');
          sToken := tdbfield(qry1,'STATETOKEN');}
  finally
    qpcr.Free;
  end;

end;

function ValidateNemsis3Soap(mData, mAgencyID, mUser,mPass,mEndPoint,mToken : String; mDatabase: TAlpineAdoConnection; pk : string; bDataSet: Boolean; ErrorList: TStringList; var mGeneralErrorMessage: String): Boolean;
var
  m, xsdresults,xStatus,xHandleID,xHasReport : String;
  qry1 : TApolloData;
  bSubmitted : Boolean;
begin

  xStatus     := '';
  xHandleID   := '';
  xHasReport  := '';
  bSubmitted  := False;

    //m := filetostring('C:\RedNMX\nemsis3\template.xml');

{

Nemsis Certification - National with Laureen
------------------------------------------------------
}

//mUser := 'mschenkel';
//mPass := 'GoUte$2018';
//mEndPoint := 'https://cta.nemsis.org/ComplianceTestingWs/endpoints/';

{
New Jersey
------------------------------------------------------
https://newjersey.imagetrendelite.com/elite/organizationnewjersey/Nemsis3WS
Account Name:  AlpineSoftware
Username:  AlpineNJ
Password:  Alpine1!
Token:  5f03c100-119a-4223-a03e-c1fcacc7d8f5
}
//mUser := 'AlpineNJ';
//mPass := 'Alpine1!';
//mEndPoint := 'https://newjersey.imagetrendelite.com/elite/organizationnewjersey/Nemsis3WS';

{
MI State Nemsis 3 Data Submission SOAP Web service
-----------------------------------------------------
Username: AlpineSoftwareWS
Password: T58cD63KqD49
Token: 372a2973-2c2b-4229-a478-be13a08f5374
Endpoint: https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws
WSDL Link: https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws?wsdl
}

//mUser := 'AlpineSoftwareWS';
//mPass := 'T58cD63KqD49';
//mEndPoint := 'https://www.mi-emsis.org/Elite/Organizationmichigan/NEMSIS3ws';

    // validate these aren't empty?
    m := SaySoapEnv('SubmitDataRequest',mUser,mpass,mAgencyID)+
    ' <ws:requestType>SubmitData</ws:requestType>'+crlf+
    '	<ws:submitPayload>'+crlf+
    '	<ws:payloadOfXmlElement>'+crlf+
    mData+crlf+

    '	</ws:payloadOfXmlElement>'+crlf+
    '	</ws:submitPayload>'+crlf+
    '	<ws:requestDataSchema>'+iif(bDataSet,'61','62')+'</ws:requestDataSchema>'+crlf+
    '	<ws:schemaVersion>3.4.0</ws:schemaVersion>'+crlf+
    '	<ws:additionalInfo>ASC</ws:additionalInfo>'+crlf+
    '	</ws:SubmitDataRequest>'+crlf+
    '	</soapenv:Body>'+crlf+
    ' </soapenv:Envelope>'+crlf;

    if FileExists('c:\temp\validatethis.xml') then begin
     if BooleanMessageDlg('Use c:\temp\validatethis.xml Instead ???') then
        m := FileToString('c:\temp\validatethis.xml');
    end;
    xsdResults := ValidateNemsis3WithSoapCall(m,bDataset,mEndPoint,mToken);
    if fileexists('c:\rednmx\pers.pas') then
      stringtofile('c:\rednmx\nemsis3\soapresults.xml',XSDResults);

    // error/issue connecting to state web service
    if (xsdResults = '') then begin
      mGeneralErrorMessage := 'Unable to connect to submission service';
      exit;
    end;

    // server returns status code, a handle id number, and a report/list of warnings/issues.
    // can be instant or can be a status of 0 for "processing and check back later"

    // parse response for status code, handler id, and report (if included)
    ProcessSubmitDataResponse(xsdResults,xStatus,xHandleID,xHasReport);

    if not(xStatus = '') then begin
      // check status code for error or submitted
      //if ((xStatus = '1') or (xStatus = '3') or (xStatus = '4') or (xStatus = '5')) then
      //  bSubmitted := true
      //else
      //  bSubmitted  := False;

      bSubmitted := GetSubmittedFromStatus(xStatus);
      mGeneralErrorMessage := GetNemsis3SubStatusDescr(xStatus);

      // if handle id, then post status and handleid to nem3pcr
      //if not(xHandleID = '') then begin

      //end;

      try
        qry1 := Open_Query(mDatabase,True,'select nem3pcrid, SUBMITID, SUBMITRESPONSE, SUBMITSTATUSCODE, SUBMITACCEPTED, SUBMITDATETIME from nem3pcr where nem3pcrid = '+pkValue(pk));
        if qry1.RecordsExist then begin
          try
            qry1.Edit;
            GetField(qry1,'SUBMITSTATUSCODE').AsString  := xStatus;
            GetField(qry1,'SUBMITID').AsString  := xHandleID;
            GetField(qry1,'SUBMITRESPONSE').AsString  := xsdResults;

            if (bSubmitted) then begin
              GetField(qry1,'SUBMITACCEPTED').AsString  := 'Y';
              GetField(qry1,'SUBMITDATETIME').AsDateTime := Now;
            end else
              GetField(qry1,'SUBMITACCEPTED').AsString  := 'N';
          
            qry1.Post;
          except
            on e: exception do begin
              qry1.Cancel;
              xHasReport := ''; // bypass processing
              AppendToLog('ValidateNemsis3Soap error posting to db: '+e.Message);
              mGeneralErrorMessage := 'System error saving process info, please try again.';
            end;
          end;
        end;
      finally
        qry1.Free;
      end;

      // process svrl report if included
      if (xHasReport = 'Y') then
        mGeneralErrorMessage := ParseSoapSVRL(xsdResults,ErrorList);
        
    end else begin
      mGeneralErrorMessage := 'Unknown error during submission.';
    end;


end;


procedure WriteErrorFile(mName,mpk,merror: String);
begin
  if IsMark then begin
    stringtofile('c:\temp\'+mname+'_'+sqllookup(mpk,'nem3pcrid','nem3pcr','erecord01')+'.txt',merror);
  end;
end;

function ValidateNemsis3(bSoap,bDataset: Boolean;mBinPath,mPath: String; mDatabase: TAlpineAdoConnection; pk : string; var xsdResults : String; var schResults : String; var ErrorMsg,XSDError : String; var errorList: TStringList) : Boolean;
Var m,datafile, xmlstring, xError, zError, sch, pcrfdid, pcrAgencyID : String;
    sUser, sPass, sURL, sToken : string;
    bXSDPass, xResult, bSCHPass : Boolean;
    NativeXML: TNativeXML;
    qry1 : TApolloData;
begin
  xResult   := False;
  bXSDPass  := False;
  bSCHPass  := False;
  xError    := '';
  XSDError  := '';
  zError    := '';
  pcrfdid   := '';
  pcrAgencyID := '';
  sUser   := '';
  sPass   := '';
  sURL    := '';
  sToken  := '';
  datafile := nem3basedir+'\nem3export.xml';
  deletefile(datafile);

  if bDataSet then
    xmlstring := ExportNemsis3XMLString(mDatabase,bSoap,Pk,xError)
  else
    xmlString := ExportNemsis3DemographicXMLString(mDatabase);


  If (xError = 'ERROR') or (xmlstring = '') then begin
    ErrorMsg := 'Error generating export from Nemsis 3 PCR ID# '+pk;
    exit;
  end;
  if IsMark then
    StringToFile('c:\temp\mjs.xml',xmlstring);


  if bSoap then
    StringToFile(datafile,xmlstring)
  else begin
    try
      // save xml string data to file, using UTF-8 encoding
      NativeXML := TNativeXML.Create;
      NativeXML.Utf8Encoded := True;
      NativeXML.ExternalEncoding := seUtf8;
      //if AlpineLogon then
      //  stringtofile(DataFile,xmlstring);
      NativeXML.ReadFromString(xmlstring);
      NativeXML.XmlFormat := xfReadable;
      NativeXML.SaveToFile(Datafile);
      //StringToFile(nem3basedir+'\nem3exportANSII.xml',xmlstring);
    except
      on e: exception do begin
        AppendToLog('ValidateNemsis3 Error in NativeXML string to file: '+e.Message);
      end;
    end;
  end;

  if isMark then begin
//     datafile := 'c:\temp\validatethis.xml';
    bSoap := BooleanMessageDlg('Use State Bridge / SOAP Call?');
//    bsoap := True;
//    bSoap := False;
  end;

  if bSoap then begin
    try
      qry1 := open_query(mDatabase,false,'select FDID from nem3pcr where NEM3PCRID = '+pkValue(pk));
      pcrfdid := tdbfield(qry1,'FDID');
      if not(pcrfdid = '') then begin
          qry1.UpdateSql('select * from nem3set where FDID = '+AddExpr(pcrfdid));
          pcrAgencyID := tdbfield(qry1,'DAGENCY02');
          sUser := tdbfield(qry1,'STATEUSERNAME');
          sPass := tdbfield(qry1,'STATEPASSWORD');
          sURL  := tdbfield(qry1,'STATEURL');
          sToken := tdbfield(qry1,'STATETOKEN');
{          if IsMark   then begin
            pcrAgencyID := 'Alpineimporttes';
            sUser := 'alpineimporttest';
            sPass := '4pvt5MQb274W';
            sURL  := 'https://www.nhtemsis.org/Elite/Organizationnewhampshire/NEMSIS3ws';
            sToken := 'ea7b5110-997f-4f63-93a8-31e15ef4bcc9';
          end;

 }


      end;
    finally
      qry1.Free;
    end;
    if (pcrAgencyID = '') then begin
      ErrorMsg := 'Error finding the State Agency ID number.'+#13#10#13#10+'This number is based on the FDID field in the pcr and linked in the Nemsis 3 Setup area. Please check to make sure this agency is setup.';
      exit;
    end else if ((sURL = '') or (sUser = '') or (sPass = '')) then begin
      ErrorMsg := 'Error finding state submssion info.'+#13#10#13#10+'The state submission information has not been entered in the Nemsis 3 Setup area. This information is required to connect and submit to the state.';
      exit;
    end else begin
      ValidateNemsis3Soap(xmlstring,pcrAgencyID,sUser,sPass,sURL,sToken,mDatabase,pk,bDataSet,ErrorList,xsdResults);
      //if not(xsdResults = '') then begin
      //  MessageDlg(xsdResults, mtInformation, [mbOK], 0);
      //end;

    end;
  end else if ValidateNemsis3XSDFileWithXmlLint(mBinpath,mPath,'',Datafile,Pk,XSDError,bDataset) then begin

    //ShowMessage('OK - Passed XSD Validation');
    xsdResults := 'OK';
    XSDError := '';
    bXSDPass  := True;
  end else begin
    //ShowMessage('XML FAIL - Failed XSD Validation'+crlf +crlf+yError);
    xsdResults := XSDError;
    WriteErrorFile('xsd',pk,xsderror);
  end;


  // bypassing schematron checks for now...
  //if (bXSDPass) then
  //  xResult := True;

  // next step is local schematron validation with .sch file and service

  If bXSDPass then begin
    // ??? What was Mark doing here.. overrides for national testing??? - removed 5/14/19 by steve
    //if bDataSet then
    //  CopyFile(nem3basedir+'\bin\Nemsis3Validator\schema\testing\EMSDataSet.sch',nem3basedir+'\bin\Nemsis3Validator\schema\EMSDataSet.sch',False)
    //else
    //  CopyFile(nem3basedir+'\bin\Nemsis3Validator\schema\testing\DEMDataSet.sch',nem3basedir+'\bin\Nemsis3Validator\schema\EMSDataSet.sch',False);

    // Again, not sure what mark was doing with the NOTUSEDWITHSERVICE folder version
    //sch := ValidateNemsis3Schematron(Datafile,nem3basedir+'\v3.4.0\schematron\NOTUSEDWITHSERVICE\EMSDataSet.sch',zError);

    sch := ValidateNemsis3SchematronLocal(Datafile,zError);

    if not(sch = '') then begin
      //ShowMessage('SCHEMATRON RESULTS'+crlf+'--------------------'+crlf+sch)
      schResults := sch;
      stringtofile('c:\rednmx\nemsis3\schresults.sch',sch);
      //bSCHPass := True;
    end else begin
      bSchPass := True;
      ErrorMsg := 'SCHEMATRON ERROR: '+zError;

      //ShowMessage('SCHEMATRON ERROR: '+zError);
    end;
  end;
  if (bXSDPass) AND (bSCHPass) then
    xResult := True;
  appendtolog('error:'+crlf+XSDError+crlf);
  Result := xResult;
end;

function ValidateNemsis3XMLString(XML : String; var mError: String): Boolean;
var xmlp : TipwXML; //TipwXMLp;
begin
  Result := True;
  if (trim(XML)='') then exit;
  try
    xmlp := TipwXML.Create(nil);
    xmlp.Reset;
    try
      xmlp.Validate := true;
      xmlp.InputData := XML;
      xmlp.Parse;
      xmlp.BuildDOM := true;
      Result := True;
    except
      on e: exception do begin
        Result := False;
        AppendToLog('ValidateNemsis3XMLString Error: '+e.Message);
      end;
    end;
  finally
    xmlp.Free;
  end;
end;

function ValidateNemsis3SchematronLocal(xmlFile : String; var merror: String) : String;
var
  svrl : string;
  sCount : integer;

begin
  Result := '';
  svrl := '';
  try

    // check for service
    if not ServiceIsPresent(Nil,'RedNMXNemsisValidator') then begin // now checking for service ...
      // exit without checking validation..
      svrl := '';
      Result := '';
      merror := 'The RedNMX Nemsis 3 Validator service has not been installed. [RedNMXNemsisValidator]';
      MessageDlg('Error: The RedNMX Nemsis 3 Validator service has not been installed. [RedNMXNemsisValidator]'+#13+#10+''+#13+#10+'Schematron validation will be skipped.', mtWarning, [mbOK], 0);
      exit;
    end;

    // try to remove old files
    try
      DeleteFile(nem3basedir+'\validator\out\emsResults.svrl');
      DeleteFile(nem3basedir+'\validator\out\emsResults_State.svrl');
      DeleteFile(nem3basedir+'\validator\in\'+ExtractFileName(xmlFile));
    except
    end;
    try
      DeleteFile(nem3basedir+'\validator\out\ems.xsl');
      DeleteFile(nem3basedir+'\validator\out\ems1.sch');
      DeleteFile(nem3basedir+'\validator\out\ems2.sch');
    except
    end;


    CopyFile(PChar(xmlFile),PChar(nem3basedir+'\validator\in\'+ExtractFileName(xmlFile)),true);

    sCount := 0;
    // emsResults.svrl for national
    // emsResults_State.svrl for state

    while not fileexists(nem3basedir+'\validator\out\emsResults.svrl') do begin
      try
        Inc(sCount);
        if (sCount >= 10) then break;
        sleep(1000);
      finally
        Application.ProcessMessages;
      end;
    end;

      if fileexists(nem3basedir+'\validator\out\emsResults.svrl') then begin
      try
        sleep(1000);
        try
          svrl := ParseSVRL(FileToString(nem3basedir+'\validator\out\emsResults.svrl'));
        except
          on e: exception do begin
            AppendToLog('ValidateNemsis3SchematronLocal Error Importing National SCH Results: '+e.message);
          end;
        end;
        sCount := 0;
        while not fileexists(nem3basedir+'\validator\out\emsResults_State.svrl') do begin
          try
            Inc(sCount);
            if (sCount >= 10) then break;
            sleep(1000);
          finally
            Application.ProcessMessages;
          end;
        end;

        if fileexists(nem3basedir+'\validator\out\emsResults_State.svrl') then begin
          sleep(1000);
          try
            svrl := trim(svrl + #13#10 + ParseSVRL(FileToString(nem3basedir+'\validator\out\emsResults_State.svrl')));
          except
            on e: exception do begin
              AppendToLog('ValidateNemsis3SchematronLocal Error Importing State SCH Results: '+e.message);
            end;
          end;
        end;
      except
        on e: exception do begin
          AppendToLog('ValidateNemsis3SchematronLocal Error: '+e.message);
        end;
      end;
    end else begin
      svrl := '';
      merror := 'Unable to find/load validation results file';
    end;

    try
      if not IsMark then begin
        DeleteFile(nem3basedir+'\validator\out\emsResults.svrl');
        DeleteFile(nem3basedir+'\validator\out\emsResults_State.svrl');
        DeleteFile(nem3basedir+'\validator\in\'+ExtractFileName(xmlFile));
      end;
    except
      on e: exception do begin
        AppendToLog('ValidateNemsis3SchematronLocal Error removing post process files: '+e.message);
      end;
    end;

  finally
    Result := svrl;
  end;
end;


function ValidateNemsis3SchematronOld(xmlFile, schFilex: String; var merror: String) : String;
var
  str1, str2, str3, str4, xsl, buff, svrl, schPath, outdir : string;
  iBytes : integer;
  javapath, str1s : string;
  sCount : integer;
begin
  Result := '';
  svrl := '';
  try
   try
    try
      DeleteFile(nem3basedir+'\bin\Nemsis3Validator\out\nem3out');
      DeleteFile(nem3basedir+'\bin\Nemsis3Validator\in\'+ExtractFileName(xmlFile));
    except
    end;
    try
      DeleteFile(nem3basedir+'\bin\Nemsis3Validator\query\ems.xsl');
      DeleteFile(nem3basedir+'\bin\Nemsis3Validator\schema\ems1.ech');
      DeleteFile(nem3basedir+'\bin\Nemsis3Validator\schema\ems2.ech');
      DeleteFile(nem3basedir+'\schema\ems1.ech');
      DeleteFile(nem3basedir+'\schema\ems2.ech');
      DeleteFile(nem3basedir+'\bin\ems1.sch');
      DeleteFile(nem3basedir+'\bin\ems2.sch');
      DeleteFile(nem3basedir+'\bin\ems.xsl');
      DeleteFile(nem3basedir+'\bin\emsResults.svrl');
    except
    end;

    if FileExists(nem3basedir+'\bin\Nemsis3Validator\Nemsis3Validator.jar') then begin

      //if not processExists('javaw.exe') then begin
      if not ServiceIsPresent(Nil,'Nemsis3Validator') then begin // now checking for service version...

        // CALLING JAVA file doesn't work for now.. KEEP THIS CODE TO TEST WITH MATT'S NEW FILE COMING SOON!
        //SchExecNewProcess('C:\RedNMX\nemsis3\bin\Nemsis3Validator\Nemsis3Validator.jar',true);
        //ShellExecute(application.Handle, 'open', pchar(nem3basedir+'\bin\Nemsis3Validator\Nemsis3Validator.jar'), nil, nil, SW_HIDE);
        {ShellExecute(
          0,
          nil,
          PChar('C:\Program Files\Java\jdk1.8.0_60\bin\'+'javaw.exe'),
          PChar('-jar '+nem3basedir+'\bin\Nemsis3Validator\Nemsis3Validator.jar'),
          nil,
          SW_HIDE
        );}
        //sleep(5000);

        // for now, just exit without checking validation..
        svrl := '';
        Result := '';
        merror := 'The RedNMX Nemsis 3 Java Schemetron Parser has not been installed. [RedNMXNemsis3]';
        MessageDlg('Error: The RedNMX Nemsis 3 Java Schemetron Parser has not been installed. [RedNMXNemsis3]'+#13+#10+''+#13+#10+'Schematron validation will be skipped.', mtWarning, [mbOK], 0);
        exit;
      end;

      {
      if Not ServiceStart('','Nemsis3Validator') then begin // checks if service is running and attempts to start it if not.
        svrl := '';
        Result := '';
        merror := 'The RedNMXNemsis3 validator service is not running.';
        MessageDlg('Error: The RedNMXNemsis3 validator service is not running.'+#13+#10+''+#13+#10+'Schematron validation will be skipped.', mtWarning, [mbOK], 0);
        exit;
      end;
      }

      CopyFile(PChar(xmlFile),PChar(nem3basedir+'\bin\Nemsis3Validator\in\'+ExtractFileName(xmlFile)),true);
      //RenameFile(xmlfile,nem3basedir+'\bin\Nemsis3Validator\in\'+ExtractFileName(xmlFile));
      sCount := 0;
      while not fileexists(nem3basedir+'\bin\Nemsis3Validator\out\nem3out') do begin
        Inc(sCount);
        if (sCount >= 10) then break;
        sleep(1000);
        Application.ProcessMessages;
      end;

      if fileexists(nem3basedir+'\bin\Nemsis3Validator\out\nem3out') then begin
        svrl := FileToString(nem3basedir+'\bin\Nemsis3Validator\out\nem3out');
      end else begin
        svrl := '';
        merror := 'Unable to find/load process file';
      end;

      try
        DeleteFile(nem3basedir+'\bin\Nemsis3Validator\out\nem3out');
        DeleteFile(nem3basedir+'\bin\Nemsis3Validator\in\'+ExtractFileName(xmlFile));
      except
      end;

    end else begin

      // *************************************************
      // OLD WAY -> DIRECT JAVA cmd line calls from DELPHI  -- KEEP FOR NOW TILL NEW PROCESS TESTED AND ACCEPTED
      // *************************************************
      // these strings have to be exact in spacing, as the pchar conversion creates
      // weird characters for the -s: and -o: , causing the saxon parser to barf on Unknown file name xxxx
      // javaw - hides command shell

      if FileExists('C:\Program Files (x86)\Java\jdk1.7.0_80\bin\javaw.exe') then
        javapath := 'C:\Program Files (x86)\Java\jdk1.7.0_80\bin\'  // THIS IS A PROBLEM!! NEEDS SPECIFIC VERSION OF JAVA: 1.7. Newest is 1.8 and causes error
      else
        javapath := ''; // use windows default java installation path




      str1 := javapath+'javaw -cp '+nem3basedir+'\bin\saxon9he.jar net.sf.saxon.Transform '+
        '-xsl:'+nem3basedir+'\bin\iso-schematron-xslt2\iso_dsdl_include.xsl '+
        ' -s:'+trim(schFilex)+'  -o:'+nem3basedir+'\bin\ems1.sch';
  
      str2 := javapath+'javaw -cp '+nem3basedir+'\bin\saxon9he.jar net.sf.saxon.Transform '+
        '-xsl:'+nem3basedir+'\bin\iso-schematron-xslt2\iso_abstract_expand.xsl '+
        ' -s:'+nem3basedir+'\bin\ems1.sch'+'  -o:'+nem3basedir+'\bin\ems2.sch';

      str3 := javapath+'javaw -cp '+nem3basedir+'\bin\saxon9he.jar net.sf.saxon.Transform '+
        '-xsl:'+nem3basedir+'\bin\iso-schematron-xslt2\iso_svrl_for_xslt2.xsl '+
        ' -s:'+nem3basedir+'\bin\ems2.sch'+'  -o:'+nem3basedir+'\bin\ems.xsl  allow-foreign=true generate-fired-rule=false  ';

      str4 := javapath+'javaw -cp '+nem3basedir+'\bin\saxon9he.jar net.sf.saxon.Transform '+
        '-xsl:'+nem3basedir+'\bin\ems.xsl '+
        ' -s:'+trim(xmlFile)+'  -o:'+nem3basedir+'\bin\emsResults.svrl';


      // this method captures console and outputs to string.. is slower than straight to file

      //CaptureConsoleOutput(javapath+'java','-cp '+nem3basedir+'\bin\saxon9he.jar net.sf.saxon.Transform '+
      //  '-xsl:'+nem3basedir+'\bin\iso-schematron-xslt2\iso_dsdl_include.xsl '+
      //  ' -s:'+trim(schFile)+' -versionmsg:off',str1s);
      //StringToFile(nem3basedir+'\bin\ems1test.sch',str1s);

      SchExecNewProcess(str1,true);

      if FileExists(nem3basedir+'\bin\ems1.sch') then begin
        SchExecNewProcess(str2,true);
        if FileExists(nem3basedir+'\bin\ems2.sch') then begin
          SchExecNewProcess(str3,true);
          if FileExists(nem3basedir+'\bin\ems.xsl') then begin
            SchExecNewProcess(str4,true);
            if FileExists(nem3basedir+'\bin\emsResults.svrl') then begin
              svrl := ParseSVRL(FileToString(nem3basedir+'\bin\emsResults.svrl'));
            end;
          end;
        end;
      end;

      try
        DeleteFile(nem3basedir+'\bin\ems1.sch');
        DeleteFile(nem3basedir+'\bin\ems2.sch');
        DeleteFile(nem3basedir+'\bin\ems.xsl');
        DeleteFile(nem3basedir+'\bin\emsResults.svrl');
      except
      end;

    end;
  except
    on e: Exception do begin
      svrl := '';
      merror := 'Error: '+ e.Message;
    end;
  end;
 finally
  Result := svrl;
 end;

end;

procedure SchExecNewProcess(ProgramName : String; Wait: Boolean);
var
  StartInfo : TStartupInfo;
  ProcInfo : TProcessInformation;
  CreateOK : Boolean;
begin
    { fill with known state }
  FillChar(StartInfo,SizeOf(TStartupInfo),#0);
  FillChar(ProcInfo,SizeOf(TProcessInformation),#0);
  StartInfo.cb := SizeOf(TStartupInfo);
  StartInfo.wShowWindow := SW_HIDE;    // still showing???
  CreateOK := CreateProcess(nil, PChar(ProgramName), nil, nil,False,
              CREATE_NEW_PROCESS_GROUP+NORMAL_PRIORITY_CLASS,
              nil, nil, StartInfo, ProcInfo);
    { check to see if successful }
  if CreateOK then
    begin
        //may or may not be needed. Usually wait for child processes
      if Wait then
        WaitForSingleObject(ProcInfo.hProcess, INFINITE);
    end
  else
    begin
      ShowMessage('Unable to run '+ProgramName);
     end;
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
end;



function ParseSVRL(svrl : string) : string;
var
  xmlp : TipwXML; //TipwXMLp;
  root,buff, xID, xRole, xLoc, xAgency, xErrMsg : string;
  k : Integer;

begin
  Result := '';


  if (trim(svrl)='') then exit;
  try
    xmlp := TipwXML.Create(nil);
    xmlp.Reset;
    try
      xmlp.Validate := true;
      xmlp.InputData := svrl;
      xmlp.Parse;
      xmlp.BuildDOM := true;
      xmlp.XPath := '/';
      root := xmlp.XElement;
      xmlp.XPath := '/' + root;

      // /svrl:schematron-output
      // /svrl:schematron-output/svrl:failed-assert
      // attributes --  test, id, role, location
      // /svrl:schematron-output/svrl:failed-assert/svrl:text

      // Nemsis record ID#
      // /svrl:schematron-output/svrl:failed-assert/svrl:diagnostic-reference/nemsisDiagnostic/record/eRecord.01

      // ERROR|FIELD|ERROR MSG|FULLPATH
      //Format: agency|role|text|pathToField1@valueInField^pathToField2@valueInField^...^pathToFieldN@valueInField

      for k := 1 to xmlp.XChildren.Count do begin
        buff := '';
        xID := '';
        xRole := '';
        xLoc := '';
        xAgency := '';
        xErrMsg := '';

        if xmlp.HasXPath('/' + root + '/svrl:failed-assert[' + inttostr(k) + ']') then begin
          xmlp.XPath := '/' + root + '/svrl:failed-assert[' + inttostr(k) + ']';
          xRole := trim(StringReplace(trim(xmlp.GetAttr('role')),'[','',[rfReplaceAll]));
          xRole := trim(StringReplace(trim(xRole),']','',[rfReplaceAll]));
          xLoc :=  StringReplace(trim(xmlp.GetAttr('location')),'[namespace-uri()=''http://www.nemsis.org'']','',[rfReplaceAll]);

          if xmlp.HasXPath('/' + root + '/svrl:failed-assert[' + inttostr(k) + ']/svrl:diagnostic-reference/nemsisDiagnostic/record/dAgency.01') then begin
            try
              xmlp.XPath := '/' + root + '/svrl:failed-assert[' + inttostr(k) + ']/svrl:diagnostic-reference/nemsisDiagnostic/record/dAgency.01';
              xAgency := trim(xmlp.XText);
            except
            end;
          end;

          if xmlp.HasXPath('/' + root + '/svrl:failed-assert[' + inttostr(k) + ']/svrl:text') then begin
            try
              xmlp.XPath := '/' + root + '/svrl:failed-assert[' + inttostr(k) + ']/svrl:text';
              xErrMsg := trim(StringReplace(trim(xmlp.XText),#13#10,' ',[rfReplaceAll]));
            except
            end;
          end;
          buff := xAgency + '|' + xRole + '|[' + xRole +'] ' + xErrMsg + '|' + xLoc;
          //buff := xRole +'  -  '+xLoc;
           //[namespace-uri()='http://www.nemsis.org']
          {
          if xmlp.AttrCount > 0 then begin

            //
           // for k2 := 0 to xmlp.AttrCount - 1 do begin
           //   if (LowerCase(trim(xmlp.AttrName[k2])) = 'role') then xID := trim(xmlp.Attr[k2]);

           // end;
          end;}
          //xmlp.XPath := '/' + root + '/svrl:failed-assert[' + inttostr(k) + ']/svrl:text';
          //buff := buff+#13#10+xmlp.XText;
        end;
        if not(buff = '') then Result := Result + #13#10 + buff;
      end;

    except
      on e: exception do begin

      end;
    end;
  finally
    xmlp.Free;
    //if Result = '' then Result := 'No Results';

  end;
end;

function processExists(exeFileName: string): Boolean;
var 
  ContinueLoop: BOOL; 
  FSnapshotHandle: THandle; 
  FProcessEntry32: TProcessEntry32; 
begin 
  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0); 
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32); 
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32); 
  Result := False; 
  while Integer(ContinueLoop) <> 0 do 
  begin 
    if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) = 
      UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = 
      UpperCase(ExeFileName))) then 
    begin 
      Result := True; 
    end; 
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32); 
  end; 
  CloseHandle(FSnapshotHandle); 
end;


function ServiceIsPresent(sMachine, sService: PChar): Boolean;
var
  SCManHandle, SvcHandle: SC_Handle;
begin
  // Open service manager handle.
  Result := False;
  SCManHandle := OpenSCManager(sMachine, nil, SC_MANAGER_CONNECT);
  if (SCManHandle > 0) then begin
    SvcHandle := OpenService(SCManHandle, sService, SERVICE_QUERY_STATUS);
    // if Service installed
    if (SvcHandle > 0) then begin
      Result := True;
      CloseServiceHandle(SvcHandle);
    end;
  end else begin
    Result := False;
    CloseServiceHandle(SCManHandle);
  end;
end;

function ServiceStart(sMachine, sService : string) : Boolean;
var
  schSCManager,
  schService : SC_HANDLE;
  ssStatus : TServiceStatus;
  dwWaitTime : Integer;
begin
  // Get a handle to the SCM database.

  schSCManager := OpenSCManager(PChar(sMachine), nil, SC_MANAGER_CONNECT);
  if (schSCManager = 0) then RaiseLastOSError; 
  try
    // Get a handle to the service.

    schService := OpenService(schSCManager, PChar(sService), SERVICE_START or SERVICE_QUERY_STATUS);
    if (schService = 0) then RaiseLastOSError;
    try
      // Check the status in case the service is not stopped.

      if not QueryServiceStatus(schService, ssStatus) then
      begin
        if (ERROR_SERVICE_NOT_ACTIVE <> GetLastError()) then RaiseLastOSError;
        ssStatus.dwCurrentState := SERVICE_STOPPED;
      end;

      // Check if the service is already running

      if (ssStatus.dwCurrentState <> SERVICE_STOPPED) and (ssStatus.dwCurrentState <> SERVICE_STOP_PENDING) then
      begin
        Result := True;
        Exit;
      end;

      // Wait for the service to stop before attempting to start it.

      while (ssStatus.dwCurrentState = SERVICE_STOP_PENDING) do
      begin
        // Do not wait longer than the wait hint. A good interval is
        // one-tenth of the wait hint but not less than 1 second
        // and not more than 10 seconds.

        dwWaitTime := ssStatus.dwWaitHint div 10;

        if (dwWaitTime < 1000) then
          dwWaitTime := 1000
        else if (dwWaitTime > 10000) then
          dwWaitTime := 10000;

        Sleep(dwWaitTime);

        // Check the status until the service is no longer stop pending.

        if not QueryServiceStatus(schService, ssStatus) then
        begin
          if (ERROR_SERVICE_NOT_ACTIVE <> GetLastError()) then RaiseLastOSError;
          Break;
        end;
      end;

      // Attempt to start the service.

      // NOTE: if you use a version of Delphi that incorrectly declares
      // StartService() with a 'var' lpServiceArgVectors parameter, you
      // can't pass a nil value directly in the 3rd parameter, you would
      // have to pass it indirectly as either PPChar(nil)^ or PChar(nil^)
      if not StartService(schService, 0, PPChar(nil)^) then RaiseLastOSError;

      // Check the status until the service is no longer start pending.

      if not QueryServiceStatus(schService, ssStatus) then
      begin
        if (ERROR_SERVICE_NOT_ACTIVE <> GetLastError()) then RaiseLastOSError;
        ssStatus.dwCurrentState := SERVICE_STOPPED;
      end;

      while (ssStatus.dwCurrentState = SERVICE_START_PENDING) do
      begin
        // Do not wait longer than the wait hint. A good interval is
        // one-tenth the wait hint, but no less than 1 second and no
        // more than 10 seconds.

        dwWaitTime := ssStatus.dwWaitHint div 10;

        if (dwWaitTime < 1000) then
          dwWaitTime := 1000
        else if (dwWaitTime > 10000) then
          dwWaitTime := 10000;

        Sleep(dwWaitTime);

        // Check the status again.

        if not QueryServiceStatus(schService, ssStatus) then
        begin
          if (ERROR_SERVICE_NOT_ACTIVE <> GetLastError()) then RaiseLastOSError;
          ssStatus.dwCurrentState := SERVICE_STOPPED;
          Break;
        end;
      end;

      // Determine whether the service is running.

      Result := (ssStatus.dwCurrentState = SERVICE_RUNNING);
    finally
      CloseServiceHandle(schService); 
    end;
  finally
    CloseServiceHandle(schSCManager);
  end;
end;

class procedure TSoapEventHandlers.SoapSSLServerAuthentication(Sender: TObject; CertEncoded: string; CertEncodedB: TBytes; const CertSubject, CertIssuer, Status: string; var Accept: Boolean);
begin
  if Not Accept then begin
    Accept := true;
  end;
end;


end.

 {
  https://nemsis.org/media/nemsis_v3/master/Schematron/rules/EMSDataSet.sch

  https://nemsis.org/NemsisV3ComplianceTest4R2

  https://nemsis.org/NemsisV3ComplianceTest4R2/NemsisWsService?wsdl\

  }
