unit SocketLabs;

interface

uses
  SysUtils,
  Classes,
  Controls,
  Dialogs,
  OvcBase,
  ExtCtrls,
  StdCtrls,
  AppLst,
  AdvPanel,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  htmlbtns,
  alpinecheck,
  AdvGlowButton,
  AlpineGlowButton,
  AlpinePanel,
  AlpineBase,
  Gauges,
  AdvObj,
  AdvOfficeImage,
  commonsocketlabs, AdvUtil;

type
  TSocketLabsForm = class(TAlpineBaseForm)
    Panel1: TPanel;
    TargetPanel: TAlpinePanel;
    OnBrowse: TAlpineTMSStringGrid;
    Label2: TLabel;
    AlpinePanel1: TAlpinePanel;
    StatusBox: TListBox;
    OvcController1: TOvcController;
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    QueryButton: TAlpineGlowButton;
    RemoveButton: TAlpineGlowButton;
    BaseStatusPanel: TPanel;
    SecRecLockLabel: TLabel;
    Gauge: TGauge;
    AdvOfficeImage1: TAdvOfficeImage;
    Status911Splitter: TSplitter;
    ActiveCheck: TAlpineCheckBox;
    SupResultOnlyCheck: TAlpineCheckBox;
    Label4: TLabel;
    CancelButton: TAlpineGlowButton;
    procedure RemoveButtonClick(Sender: TObject);
    procedure QueryButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure LoadData;
  public
    { Public declarations }
    TotalText : WideString;
    procedure ResetOnBrowse;
  end;

var
  SocketLabsForm  : TSocketLabsForm;
  CancelBool      : Boolean;
  SafeToClose     : Boolean;
implementation
uses GenFunc,
     CommonFunc,
     SortGridView,
     InvServType,
     FormFunc,
     InvSubType,
     InvInspType,
     InvDescr,
     CommonVar,
     CommonCloud;

{$R *.DFM}

procedure TSocketLabsForm.QueryButtonClick(Sender: TObject);
begin
  inherited;
  ResetOnBrowse;
  AddStatusListBox(StatusBox,'Loading all paging records. Please wait.');
  LoadData;
  AddStatusListBox(StatusBox,'DONE LOADING.');
  AddStatusListBox(StatusBox,'A record that says "404 Not Found" indicates it was not found in the suppression list.');
end;

procedure TSocketLabsForm.ResetOnBrowse;
begin
  OnBrowse.Clear;
  OnBrowse.ColCount       := 0;
  OnBrowse.RowCount       := 0;
  OnBrowse.ClearColumns;

  OnBrowse.FixedRowAlways := true;
  OnBrowse.RowCount       := OnBrowse.FixedRows;

  OnBrowse.SetColumn('SPACE',       '',                0001);
  OnBrowse.SetColumn('CHECKBOX',    '',                0020);
  OnBrowse.SetColumn('NAME',        'Name',            0200);
  OnBrowse.SetColumn('PHONE',       'Phone',           0120);
  OnBrowse.SetColumn('CARRIER',     'Carrier',         0120);
  OnBrowse.SetColumn('EMAIL',       'Email',           0200);
  OnBrowse.SetColumn('SERVER',      'Server',          0060);
  OnBrowse.SetColumn('STATUS',      'Status',          0450);
  OnBrowse.SetColumn('SOCKETEMAIL', 'SocketLab Email', 0150);
  OnBrowse.SetColumn('REQUEST',     'Remove Result',   0150);

  OnBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;

procedure TSocketLabsForm.LoadData;
Var i                : Integer;
    totalPageRecords : Integer;
    serverCursor     : Integer;
    emailArray       : TStrings;
    PageTable        : TApolloData;
    GETResponseArray, serversList : TArray;
    SQLCountVar      : String;
    SQLSelectVar     : String;
    errorLog         : String;

    function setCheckbox(status : string) : Boolean;
      begin
        Result := True;

        if trim(status) = '404 Not Found In Suppression List.' then
          result := False
        else if trim(status) = 'PARSING ERROR' then
          result := False
        else if trim(status) = 'HTTP ERROR' then
          result := False;
      end;
begin
   CancelBool := True;
   CloseButton.Visible := False;
   CancelButton.Visible := True;
   try
    try
      //Builds SQL Statement and opens query
      errorLog := ', SocketLabs.pas, LoadData()';
      SQLSelectVar := 'SELECT PAGECOMP.COMPANY CARRIER, PAGELIST.PHONEPIN PHONE, PAGELIST.DESCR NAME, PAGECOMP.CMPEMAIL DOMAIN FROM PAGELIST ' +
                      'LEFT JOIN PAGECOMP ON (PAGECOMP.PAGECOMPID = PAGELIST.PAGECOMPID) ';

      SQLCountVar := 'SELECT COUNT(*) FROM PAGELIST ';


      if ActiveCheck.Checked then
        begin
          SQLSelectVar := SQLSelectVar + 'WHERE ACTIVE = ' + AddExpr('Y') + 'AND PHONEPIN IS NOT NULL ';
          SQLCountVar  := SQLCountVar + 'WHERE ACTIVE = ' + AddExpr('Y') + 'AND PHONEPIN IS NOT NULL ';
        end
      else
        begin
          SQLSelectVar := SQLSelectVar + 'WHERE PHONEPIN IS NOT NULL ';
          SQLCountVar  := SQLCountVar + 'WHERE PHONEPIN IS NOT NULL ';
        end;

      SQLSelectVar := SQLSelectVar + 'ORDER BY DESCR';

      PageTable := Open_Query(SQLSelectVar);

      totalPageRecords := SqlTableRecCount(SQLCountVar);
    except
      on e: exception do begin
        appendtolog('DATABASE ERROR: ' + e.Message + errorLog);
        PageTable.Free;
        exit;
      end;
    end;
    //reset gauge
    gauge.MaxValue := totalPageRecords*6;
    gauge.Progress := 0;

    //set servers
    SetLength(serversList, 2);
    serversList[0] :='5131';
    serversList[1] :='4162';
    i := 0;
    //loop through Page records
    While (Not PageTable.Eof) and CancelBool do
      begin
        try
          if (trim(GetField(PageTable,'PHONE').AsString) <> '') and (trim(GetField(PageTable,'DOMAIN').AsString) <> '') then
            begin
              for serverCursor := 0 to (Length(serversList)-1) do
                begin
                  AddStatusListBox(StatusBox,'Requesting SocketLabs API for '+GetField(PageTable,'NAME').AsString+' On server '+serversList[serverCursor]);
                  gauge.Progress := gauge.progress + 1;
                  //Sends GET Request
                  GETResponseArray := GetSingleRequest(serversList[serverCursor], trim(GetField(PageTable,'PHONE').AsString)+'@'+trim(GetField(PageTable,'DOMAIN').AsString));
                  //Checks for a 404 Not Found
                  if GETResponseArray[2] = 'HTTP/1.1 404 Not Found' then
                    begin
                      GETResponseArray[2] := '404 Not Found In Suppression List.';
                      GETResponseArray[3] := 'N/A';
                    end;
                      gauge.Progress := gauge.progress + 1;
                      //Displays results on screen
                      if SupResultOnlyCheck.checked then
                        begin
                          if GETResponseArray[2] <> '404 Not Found In Suppression List.' then
                            begin
                              OnBrowse.SetValue('SPACE',       '');
                              OnBrowse.AddCheckBox(1,i+1, setCheckbox(GETResponseArray[2]), setCheckbox(GETResponseArray[2]));
                              OnBrowse.SetValue('NAME',        GetField(PageTable,'NAME').AsString);
                              OnBrowse.SetValue('PHONE',       trim(GetField(PageTable,'PHONE').AsString));
                              OnBrowse.SetValue('CARRIER',     GetField(PageTable,'CARRIER').AsString);
                              OnBrowse.SetValue('EMAIL',       GETResponseArray[0]);
                              OnBrowse.SetValue('SERVER',      GETResponseArray[1]);
                              OnBrowse.SetValue('STATUS',      GETResponseArray[2]);
                              OnBrowse.SetValue('SOCKETEMAIL', GETResponseArray[3]);
                              OnBrowse.SetValue('REQUEST',     '');
                              i := i + 1;
                            end;
                        end
                      else
                        begin
                              OnBrowse.SetValue('SPACE',          '');
                              OnBrowse.AddCheckBox(1,i+1, setCheckbox(GETResponseArray[2]), setCheckbox(GETResponseArray[2]));
                              OnBrowse.SetValue('NAME',        GetField(PageTable,'NAME').AsString);
                              OnBrowse.SetValue('PHONE',       trim(GetField(PageTable,'PHONE').AsString));
                              OnBrowse.SetValue('CARRIER',     GetField(PageTable,'CARRIER').AsString);
                              OnBrowse.SetValue('EMAIL',       GETResponseArray[0]);
                              OnBrowse.SetValue('SERVER',      GETResponseArray[1]);
                              OnBrowse.SetValue('STATUS',      GETResponseArray[2]);
                              OnBrowse.SetValue('SOCKETEMAIL', GETResponseArray[3]);
                              OnBrowse.SetValue('REQUEST',     '');
                              i := i + 1;
                        end;//else
                    gauge.Progress := gauge.progress + 1;
                end;//for server loop
            end//if phone is empty
          else
            gauge.Progress := gauge.progress + 6;
      finally
        PageTable.Skip(1);
      end;
    end;
  finally
    PageTable.Free;
    SafeToClose := True;
    CancelButton.Visible := False;
    //if they didnt cancel then show close button..otherwise cancelclick handles it
    if CancelBool then
      CloseButton.Visible := True;
  end;
end;


procedure TSocketLabsForm.CancelButtonClick(Sender: TObject);
begin
  //set Safe Bool Var to not safe yet
  SafeToClose := False;
  //Reset cancel var
  CancelBool := False;
  //Remove Cancel Button
  CloseButton.Visible  := False;
  //Wait for program to finish current task
  while SafeToClose do
    CloseButton.Visible := False;
  //Show close button again
  CloseButton.Visible := True;
end;

procedure TSocketLabsForm.CloseButtonClick(Sender: TObject);
begin
   close;
end;

procedure TSocketLabsForm.FormShow(Sender: TObject);
begin
  inherited;
  ResetOnBrowse;
end;

procedure TSocketLabsForm.RemoveButtonClick(Sender: TObject);
Var
    CheckValue : Boolean;
    RowNum     : integer;
    count : Integer;
    resultStatus : String;
    email : String;
    server : string;
begin
  CancelBool := True;
  CloseButton.Visible := False;
  CancelButton.Visible := True;
  count :=0;
  try
    //Gets total number of requests for gauge progress
    for RowNum := 1 to OnBrowse.RowCount do
      begin
        OnBrowse.GetCheckBoxState(1,RowNum,CheckValue);
        If CheckValue then
          count := count + 1;
      end;
    //Reset gauge
    gauge.MaxValue := count;
    gauge.Progress := 0;
    //Loop through list on screen
    for RowNum := 1 to OnBrowse.RowCount do
      begin
        if CancelBool then
          begin
            //Check if its checked
            OnBrowse.GetCheckBoxState(1,RowNum,CheckValue);
            If CheckValue then
            begin
              email  := trim(OnBrowse.GetValue('EMAIL',RowNum));
              server := trim(OnBrowse.GetValue('SERVER',RowNum));
              AddStatusListBox(StatusBox,'Attempting removal of ' + email + ' from server '+ server);
              //Request the delete
              resultStatus := DeleteRequest(server, email);
              gauge.Progress := gauge.progress + 1;
              OnBrowse.SetValue('REQUEST', RowNum, resultStatus);
              AddStatusListBox(StatusBox, email + ' complete, result: ' + resultStatus + ' on server '+server);
          end;
        end;
      end;
    ShowMessage('Completed ' + IntToStr(count) + ' API Delete Requests.');
  finally
    SafeToClose := True;
    CancelButton.Visible := False;
    //if they didnt cancel then show close button..otherwise cancelclick handles it
    if CancelBool then
      CloseButton.Visible := True;
  end;
end;

end.
