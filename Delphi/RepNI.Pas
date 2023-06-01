unit RepNI;

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
  HtmlBtns,
  AlpineCheck,
  AlpineDateTime;

type
  TRepNIForm = class(TAlpineBaseForm)
    BottomPanel: TAdvPanel;
    CancelButton: TAlpineGlowButton;
    ReplicateButton: TAlpineGlowButton;
    TopPanel: TPanel;
    NfirsAttLabel: TLabel;
    NIAttCheck: TAlpineCheckBox;
    OvcController1: TOvcController;
    Label1: TLabel;
    nievcheck: TAlpineCheckBox;
    DateTimeStartField: TAlpineDateTime;
    DateStartLabel: TLabel;
    DateEndLabel: TLabel;
    DateTimeEndField: TAlpineDateTime;
    EvLengthLabel: TLabel;
    EvLengthField: TAlpineEdit;
    EVLengthButton: TAlpineGlowButton;
    procedure ReplicateButtonClick(Sender: TObject);
    procedure CancelButtonClick(Sender: TObject);
    procedure EVLengthButtonClick(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    NIID : String;
    NewNIID : String;
    constructor Create(AOwner: TComponent; VNIID: String); 
  end;

var
  RepNIForm: TRepNIForm;

implementation
uses GenFunc,
     CommonDispVar,
     CommonFunc,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TRepNIForm.CancelButtonClick(Sender: TObject);
begin
  Close;
end;

constructor TRepNIForm.Create(AOwner: TComponent; VNIID : String);
begin
  NIID := VNIID;
  inherited Create (AOwner);
end;

procedure TRepNIForm.EVLengthButtonClick(Sender: TObject);
begin
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then
    EvLengthField.Value := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );
end;

procedure TRepNIForm.EvLengthFieldEnter(Sender: TObject);
begin
  If StrToFloat(EvLengthField.Value) = 0 then
    EVLengthButtonClick(self);
end;

procedure TRepNIForm.ReplicateButtonClick(Sender: TObject);
Var FieldName : String;
    FieldNum  : Integer;

  procedure ReplicateNIDetailTable(mTable: String);
  var i  : Integer;
  begin
    try
      Open_Query('EXISTING',false,'SELECT * FROM ' + mTable + ' WHERE NIID = ' + NIID);
      Open_Query('NEW',true,'SELECT * FROM '+mTable+' WHERE 1=2');
      While Not A('EXISTING').Eof do begin
        A('NEW').Append;
        for i := 0 to GetTable('EXISTING').FieldCount - 1 do begin
          FieldName := A('EXISTING').FieldName(i);
          If (FieldName <> mTable+'ID') and (FieldName <> 'NIID') then
            GetField('NEW',FieldName).AsString := GetField('EXISTING',FieldName).AsString;
        end;
        GetField('NEW','NIID').AsString     := NewNIID;

        If mTable = 'NIEV' then begin
          If DateTimeStartField.value > 0 then
            GetField('NEW','DATETIMESTART').AsDateTime := DateTimeStartField.value;
          If DateTimeEndField.value > 0 then
            GetField('NEW','DATETIMEEND').AsDateTime   := DateTimeEndField.value;
        end;

        A('NEW').Post;
        A('EXISTING').Skip(1);
      end;
    finally
      CloseApollo('EXISTING');
      CloseApollo('NEW');
    end;
  end;

  procedure ReplicationFingerStat();
  var fingerstat    : TApolloData;
      fingerstatnew : TApolloData;
      i       : Integer;
      mField  : String;
  begin
    try
      fingerstat := Open_Query('SELECT * FROM FINGERSTAT WHERE EVENTTYPE = ' + AddExpr('NI') +
                                   ' AND EVENTID = ' + pkValue(NIID));
      fingerstatnew := Open_Query(true,'SELECT * FROM FINGERSTAT WHERE 1=2');

      while not fingerstat.eof do begin
        fingerstatnew.Insert;
        for i:= 0 to fingerstat.Fields.Count-1 do begin
          mField := fingerstat.Fields[i].FieldName;
          if uppercase(mField)='EVENTID' then
            GetField(fingerstatnew,'EVENTID').AsString := NewNIID
          else if uppercase(mField)<>'FINGERSTATID' then begin
            try
              GetField(fingerstatnew,mField).AsString   := GetField(fingerstat,mField).AsString;
            except
            end;
          end;
        end;

        fingerstatnew.Post;
        fingerstat.next;
      end;
    finally
      fingerstatnew.free;
      fingerstat.free;
    end;
  end;

begin
  NewNIID := '';
  TRY
    Open_Query('NI',false,'SELECT * FROM NI WHERE NIID = ' + NIID);
    Open_Query('NEWNI',True,'SELECT * FROM NI WHERE 1=2');
    GetTable('NEWNI').Insert;

    for FieldNum := 0 to GetTable('NI').FieldCount - 1 do begin
      FieldName := A('NI').FieldName(FieldNum);
      If FieldName <> 'NIID' then
        GetField('NEWNI',FieldName).AsString := GetField('NI',FieldName).AsString;
    end;

    If DateTimeStartField.value > 0 then
      GetField('NEWNI','DATETIMESTART').AsDateTime := DateTimeStartField.value;
    If DateTimeEndField.value > 0 then
      GetField('NEWNI','DATETIMEEND').AsDateTime   := DateTimeEndField.value;
    GetField('NEWNI','EVLENGTH').AsString := EvLengthField.Value;

    If GetField('NI','DATETIMEREADEROPEN').AsDateTime > 0   then begin
      GetField('NEWNI','DATETIMEREADEROPEN').AsString   := FormatDateTime('MM/DD/YYYY',DateTimeStartField.value) + ' ' + FormatDateTime('HH:NN',GetField('NI','DATETIMEREADEROPEN').AsDateTime);
      GetField('NEWNI','DATETIMEREADERCLOSED').AsString := FormatDateTime('MM/DD/YYYY',DateTimeStartField.value) + ' ' + FormatDateTime('HH:NN',GetField('NI','DATETIMEREADERCLOSED').AsDateTime);
    end;

    GetTable('NEWNI').Post;
    NewNIID := GetField('NEWNI','NIID').AsString;

    If GetField('NI','DATETIMEREADEROPEN').AsDateTime > 0 then begin
      ReplicationFingerStat;
    end;
  finally
    CloseApollo('NEWNI');
    CloseApollo('NI');
  end;

  If nievcheck.State = cbChecked then
    ReplicateNIDetailTable('NIEV');

  If NIAttCheck.State = cbChecked then
    ReplicateNIDetailTable('NIATT');
  Close;
end;

end.
