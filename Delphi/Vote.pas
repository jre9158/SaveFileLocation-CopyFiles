unit Vote;

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
  AlpineBase,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AdvGlowButton,
  AlpineGlowButton,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  Db,
  Blink,
  Buttons,
  OvcBase,
  OvcDbPF,
  OrpheusWrapper,
  OvcEF,
  OvcPB,
  OvcPF,
  sigpluslib_tlb,
  BasePictureField,
  FormFunc,
  AlpineEdit,
  AppLst,
  AdvObj,
  AlpineCheck,
  htmlbtns;

type
  TVoteForm = class(TAlpineBaseForm)
    AdvPanel2: TAdvPanel;
    AdvPanel5: TAdvPanel;
    Image3: TImage;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    DescrField: TLabel;
    CloseButton: TAlpineGlowButton;
    AddressPanel: TPanel;
    Label7: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    OvcController1: TOvcController;
    OvcController2: TOvcController;
    Panel1: TPanel;
    Panel2: TPanel;
    SearchPanel: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    RegNumLabel: TLabel;
    Panel3: TPanel;
    VoteAddrBrowse: TAlpineTMSStringGrid;
    LastNameField: TLabel;
    Label5: TLabel;
    FirstNameField: TLabel;
    Label3: TLabel;
    MiddleNameField: TLabel;
    Label9: TLabel;
    NameSuffixField: TLabel;
    Label10: TLabel;
    ResAddrField: TLabel;
    Label11: TLabel;
    MailAddrField: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    SexField: TLabel;
    Label12: TLabel;
    RegNumberField: TLabel;
    Label13: TLabel;
    DobField: TLabel;
    Label14: TLabel;
    NameButton: TAlpineGlowButton;
    AlpineGlowButton1: TAlpineGlowButton;
    RegNumberButton: TAlpineGlowButton;
    AddressButton: TAlpineGlowButton;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    DorField: TLabel;
    PartyField: TLabel;
    CongDistField: TLabel;
    ElectDistField: TLabel;
    TownCodeField: TLabel;
    StSenDistField: TLabel;
    StAssDistField: TLabel;
    LocalDistField: TLabel;
    Panel4: TPanel;
    VotePanel: TPanel;
    VoteButton: TPanel;
    VoteBlink: TBlinkShape;
    VoterLabel: TLabel;
    sigpanel: TPanel;
    AdvPanel1: TAdvPanel;
    DeleteButton: TAlpineGlowButton;
    VoteHistButton: TAlpineGlowButton;
    TownPanel: TPanel;
    BlinkLabel1: TBlinkLabel;
    CloseTownButton: TAlpineGlowButton;
    ClearButton: TAlpineGlowButton;
    LastNameSearch: TAlpineEdit;
    FirstNameSearch: TAlpineEdit;
    RegNumberSearch: TAlpineEdit;
    AddressSearch: TAlpineEdit;
    AlpineGlowButton2: TAlpineGlowButton;
    AddressCheck: TAlpineCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure VoterLabelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure VoteAddrBrowseClick(Sender: TObject);
    procedure LastNameSearchChange(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure VoteHistButtonClick(Sender: TObject);
    procedure CloseTownButtonClick(Sender: TObject);
    procedure RegNumberButtonClick(Sender: TObject);
    procedure RegNumberSearchChange(Sender: TObject);
    procedure NameButtonClick(Sender: TObject);
    procedure AddressSearchChange(Sender: TObject);
    procedure AddressButtonClick(Sender: TObject);
    procedure ClearButtonClick(Sender: TObject);
    procedure AlpineGlowButton2Click(Sender: TObject);
  private
    VoteExclList : TStringList;
    bCreatedSigPlus: Boolean;
    procedure LoadVoteAddrBrowse(Mode : String);
    procedure SetElection;
    function  CheckPassword: Boolean;
    procedure SetVotePanel(ShowVotePanel: Boolean);
    procedure ResetVoteAddrBrowse;
  public
    SigPlus1    : TSigPlus;
    VoteElectID : String;
    AutoLength  : Integer;
    DelPass     : String;
  end;
  procedure CopyVoteAddrFieldsToVoteHist(voteaddr,votehist: TApolloData);
var
  VoteForm: TVoteForm;
{$I rednmx.inc}

implementation

{$R *.DFM}
uses GenFunc,
     VoteSign,
     CommonVar,
     Search,
     VoteHist,
     VoteSet,
     CommonFunc;

procedure TVoteForm.FormCreate(Sender: TObject);
begin
  TitleImage.Picture.Icon := GetGlowImageIcon('VOTE32');
  VoteElectID             := '1';

  TownPanel.Left  := Votebutton.Left;
  try
    bCreatedSigPlus := True;
    SigPlus1        := TSigPlus.Create(SigPanel);
    SigPlus1.Parent := SigPanel;
    sigplus1.left   := 0;
    sigplus1.top    := 0;
    sigplus1.width  := sigpanel.width;
    sigplus1.height := sigpanel.height;
  except
    bCreatedSigPlus := False;
  end;
  VoteBlink.Brush.Color                 := clgreen;
  VoteBlink.NonBlinkColor               := clgreen;
  VoteBlink.Blink                       := false;

  SetElection;

  VoteExclList := TStringList.Create;
  VoteExclList.Clear;
  TVoteSetForm.SetVoteExclList(VoteExclList);
  ResetVoteAddrBrowse;  
end;


procedure TVoteForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TVoteForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TVoteForm.VoterLabelMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
Var RegNumber : String;
begin
  RegNumber := alltrim(VoteAddrBrowse.GetValue('REGNUMBER'));
  If Not (RegNumber = '') then begin
    VoteButton.BevelInner := bvlowered;
    VoteButton.BevelOuter := bvlowered;

    If (VoteBlink.Blink = true) then begin
      Open_Query('VOTEHIST',False,'SELECT * FROM VOTEHIST WHERE VOTEELECTID = ' + VoteElectID +' AND REGNUMBER = ' + AddExpr(RegNumber));
      If A('VOTEHIST').RecordsExist and bCreatedSigPlus then
        SigPlus1.SigString      := GetField('VOTEHIST','VOTESIG').AsString;
      CloseApollo('VOTEHIST');
    end else begin
      VoteSignForm := TVoteSignForm.Create(Application);
      VoteSignForm.ShowModal;
      VoteSignForm.Free;
      VoteAddrBrowseClick(self);
    end;

    VoteButton.BevelInner := bvRaised;
    VoteButton.BevelOuter := bvRaised;

  end else begin
    ShowMessage('No voter highlighted');
  end;
  LastNameSearch .Value := '';
  RegNumberSearch.Value := '';
  AddressSearch  .Value := '';
  FirstNameSearch.Value := '';
  LastnameSearch.Setfocus;
end;

procedure TVoteForm.SetElection;
begin
  Open_Query('VOTESET',false,'SELECT * FROM VOTESET WHERE FDID = ' + AddExpr(FireID));
  VoteElectID := GetField('VOTESET','VOTEELECTID').AsString;
  DelPass     := tdbfield('VOTESET','DELPASS');
  AutoLength  := IIfI(GetField('VOTESET','AUTOLENGTH').AsInteger = 0,4,GetField('VOTESET','AUTOLENGTH').AsInteger);
  CloseApollo('VOTESET');
  
  Open_Query('VOTEELECT',False,'SELECT * FROM VOTEELECT WHERE VOTEELECTID = ' + pkValue(VoteElectID));
  DescrField.Caption  := rtrim(tdbField('VOTEELECT','DESCR') + ': ' + GetField('VOTEELECT','DATETIMEELECT').AsString);
  CloseApollo('VOTEELECT');
end;


procedure TVoteForm.VoteAddrBrowseClick(Sender: TObject);
begin
  If (alltrim(VoteAddrBrowse.GetValue('REGNUMBER')) = '') then
    exit;
  Open_Query('VOTEADDR',false,'SELECT * FROM VOTEADDR WHERE REGNUMBER = ' + AddExpr(VoteAddrBrowse.GetValue('REGNUMBER')));
  LastNameField.Caption   := tdbfield('VOTEADDR','LASTNAME');
  FirstNameField.Caption  := tdbfield('VOTEADDR','FIRSTNAME');
  MiddleNameField.Caption := tdbfield('VOTEADDR','MIDDLENAME');
  NameSuffixField.Caption := tdbfield('VOTEADDR','NAMESUFFIX');
  ResAddrField.Caption    := tdbfield('VOTEADDR','RESADDR1') + IIf(tdbfield('VOTEADDR','RESADDR2') = '','',#10 + #13 + tdbfield('VOTEADDR','RESADDR2')) + #10 + #13 + tdbfield('VOTEADDR','RESCITY') + '  ' + tdbfield('VOTEADDR','RESSTATE') + '  ' + tdbfield('VOTEADDR','RESZIP');
  MailAddrField.Caption   := tdbfield('VOTEADDR','MAILADDR1') + IIf(tdbfield('VOTEADDR','MAILADDR2') = '','',#10 + #13 + tdbfield('VOTEADDR','MAILADDR2')) + #10 + #13 + tdbfield('VOTEADDR','MAILCITY') + '  ' + tdbfield('VOTEADDR','MAILSTATE') + '  ' + tdbfield('VOTEADDR','MAILZIP');
  SexField.Caption        := GetField('VOTEADDR','SEX').AsString;
  RegNumberField.Caption  := GetField('VOTEADDR','REGNUMBER').AsString;

  DobField.Caption        := GetField('VOTEADDR','DOB').AsString;
  DorField.Caption        := GetField('VOTEADDR','DOR').AsString;
  PartyField.Caption      := GetField('VOTEADDR','PARTY').AsString;
  CongDistField.Caption   := GetField('VOTEADDR','CONGDIST').AsString;
  ElectDistField.Caption  := GetField('VOTEADDR','ELECTDIST').AsString;

  TownCodeField.Caption   := GetField('VOTEADDR','TOWNCODE').AsString;
  StSenDistField.Caption  := GetField('VOTEADDR','STSENDIST').AsString;
  StAssDistField.Caption  := GetField('VOTEADDR','STASSDIST').AsString;
  LocalDistField.Caption  := GetField('VOTEADDR','LOCALDIST').AsString;

  SetVotePanel(TVoteSetForm.CheckVoteExcl(VoteExclList, tdbfield('VOTEADDR','RESZIP'), tdbfield('VOTEADDR','PSTREET'), tdbfield('VOTEADDR','PSTRNUM'), tdbfield('VOTEADDR','ELECTDIST')));

  CloseApollo('VOTEADDR');
  Open_Query('VOTEHIST',false,'SELECT VOTESIG, DATETIMEVOTE FROM VOTEHIST WHERE REGNUMBER = ' + AddExpr(VoteAddrBrowse.GetValue('REGNUMBER')) + ' AND VOTEELECTID = ' + pkValue(VoteElectID));
  If A('VOTEHIST').RecordsExist then begin
    VoteBlink.Brush.Color   := clsilver;
    VoteBlink.NonBlinkColor := clsilver;
    VoteBlink.Blink         := true;
    VoterLabel.Caption      := 'Voted ' + FormatDateTime('MM/DD/YYYY',GetField('VOTEHIST','DATETIMEVOTE').AsDateTime) + ' at ' + FormatDateTime('HH:NN',GetField('VOTEHIST','DATETIMEVOTE').AsDateTime);
    if bCreatedSigPlus then
      SigPlus1.SigString      := GetField('VOTEHIST','VOTESIG').AsString;
    DeleteButton.Enabled    := true;
  end else begin
    VoteBlink.Brush.Color   := clgreen;
    VoteBlink.NonBlinkColor := clgreen;
    VoteBlink.Blink         := false;
    VoterLabel.Caption      := 'Press to Sign';
    if bCreatedSigPlus then
      SigPlus1.ClearTablet;
    DeleteButton.Enabled    := false;
  end;
    appendtolog('x4');
  CloseApollo('VOTEHIST');
end;


function TVoteForm.CheckPassword: Boolean;
Var PassVar : String;
begin
  CheckPassword := false;
  If DelPass = '' then
    CheckPassword := BooleanMessageDlg('Delete vote from history ?')
  else begin
    CheckPassword := true;
    InputDlg('Password Entry','Enter Password: ',PassVar,'!!!!!');
    If (PassVar = DelPass) then
      CheckPassword := true
    else begin
      ShowMessage('Incorrect Password');
      CheckPassword := false
    end;
  end;
end;

procedure TVoteForm.DeleteButtonClick(Sender: TObject);
begin
  If CheckPassword then begin
    RunSql('DELETE FROM VOTEHIST WHERE VOTEELECTID = ' + VoteElectID + ' AND REGNUMBER = ' + AddExpr(VoteAddrBrowse.GetValue('REGNUMBER')));
    VoteAddrBrowseClick(self);
  end;
end;

procedure TVoteForm.VoteHistButtonClick(Sender: TObject);
begin
  VoteHistForm := TVoteHistForm.Create(Application);
  VoteHistForm.ShowModal;
  VoteHistForm.Free;
end;

procedure TVoteForm.CloseTownButtonClick(Sender: TObject);
begin
  SetVotePanel(true);
end;

procedure TVoteForm.SetVotePanel(ShowVotePanel: Boolean);
begin
  If ShowVotePanel then begin
    VotePanel.Visible := true;
    TownPanel.Visible := false;
    TownPanel.Align   := alNone;
    VotePanel.Align   := alclient;
  end else begin
    VotePanel.Visible := false;
    TownPanel.Visible := true;
    VotePanel.Align   := alnone;
    TownPanel.Align   := alclient;
  end;
end;

procedure TVoteForm.RegNumberButtonClick(Sender: TObject);
begin
  If (Length(RegNumberSearch.Value) < 5) and Not BooleanMessageDlg('This is a broad search, continue?') then
    LoadVoteAddrBrowse('REGNUMBER');
end;

procedure TVoteForm.RegNumberSearchChange(Sender: TObject);
begin
  If Length(rtrim(RegNumberSearch.Value)) <= 5 then
    Exit;
  LoadVoteAddrBrowse('REGNUMBER');
end;

procedure TVoteForm.LastNameSearchChange(Sender: TObject);
begin
  AddressCheck.Caption := LastNameSearch.Value + ' exists in Last Name';
  If Length(rtrim(LastNameSearch.Value)) >= AutoLength then begin
    LoadVoteAddrBrowse('NAME');
  end;
end;

procedure TVoteForm.NameButtonClick(Sender: TObject);
begin

  If ((Length(LastNameSearch.Value) >= 0) and (Length(LastNameSearch.Value) < 4)) then begin
    BooleanMessageDlg('This is a broad search, continue?');
    LoadVoteAddrBrowse('NAME');
  end;

  If (Length(LastNameSearch.Value) >= 4) then
  LoadVoteAddrBrowse('NAME');
end;


procedure TVoteForm.AddressSearchChange(Sender: TObject);
begin
  If Length(rtrim(AddressSearch.Value)) >= 6 then
    LoadVoteAddrBrowse('ADDRESS');
end;

procedure TVoteForm.AlpineGlowButton2Click(Sender: TObject);
var NumVotes : Integer;
begin
  NumVotes := SqlTableRecCount('SELECT COUNT(*) FROM VOTEHIST WHERE VOTEELECTID = ' + pkValue(VoteElectID));

  ShowMessage('Total Number of Votes For Current Election: ' + IntToStr(NumVotes));
end;

procedure TVoteForm.AddressButtonClick(Sender: TObject);
begin
  If (Length(AddressSearch.Value) < 5) and Not BooleanMessageDlg('This is a broad search, continue?') then
    LoadVoteAddrBrowse('ADDRESS');
end;

procedure TVoteForm.ResetVoteAddrBrowse;
begin
  VoteAddrBrowse.Visible    := true;
  VoteAddrBrowse.clear;
  VoteAddrBrowse.ColCount   := 0;
  VoteAddrBrowse.RowCount   := 0;
  VoteAddrBrowse.ClearColumns;
  VoteAddrBrowse.RowCount   := VoteAddrBrowse.FixedRows;
  VoteAddrBrowse.SetColumn('VOTEADDRID','VOTEADDRID',000);
  VoteAddrBrowse.SetColumn('REGNUMBER', 'Voter #',   065);
  VoteAddrBrowse.SetColumn('NAME',      'Name',      165);
  VoteAddrBrowse.SetColumn('SEX',       'Gender',    055);
  VoteAddrBrowse.SetColumn('DOB',       'Birth Date',070);
  VoteAddrBrowse.SetColumn('RESADDR1',  'Address',   999);
end;

procedure TVoteForm.LoadVoteAddrBrowse(Mode : String);
begin
  ResetVoteAddrBrowse;
  If Mode = 'NAME' then begin
    If rtrim(FirstNameSearch.Value) = '' then begin
      If AddressCheck.Checked then
        Open_Query('VOTEADDR',false,'SELECT VOTEADDRID, FIRSTNAME, LASTNAME, SEX, DOB, REGNUMBER, RESADDR1, RESCITY FROM VOTEADDR WHERE LASTNAME LIKE ' + AddExpr('%' + LastNameSearch.Value + '%') + ' ORDER BY LASTNAME, FIRSTNAME, MIDDLENAME')
      else
        Open_Query('VOTEADDR',false,'SELECT VOTEADDRID, FIRSTNAME, LASTNAME, SEX, DOB, REGNUMBER, RESADDR1, RESCITY FROM VOTEADDR WHERE LASTNAME LIKE ' + AddExpr(LastNameSearch.Value + '%') + ' ORDER BY LASTNAME, FIRSTNAME, MIDDLENAME');
    end else
      Open_Query('VOTEADDR',false,'SELECT VOTEADDRID, FIRSTNAME, LASTNAME, SEX, DOB, REGNUMBER, RESADDR1, RESCITY FROM VOTEADDR WHERE LASTNAME LIKE ' + AddExpr(LastNameSearch.Value + '%') + ' AND FIRSTNAME LIKE ' + AddExpr(FirstNameSearch.Value + '%') + ' ORDER BY LASTNAME, FIRSTNAME, MIDDLENAME');

  end else if Mode = 'REGNUMBER' then begin
    Open_Query('VOTEADDR',false,'SELECT VOTEADDRID, FIRSTNAME, LASTNAME, SEX, DOB, REGNUMBER, RESADDR1, RESCITY FROM VOTEADDR WHERE REGNUMBER LIKE ' + AddExpr('%' + RegNumberSearch.Value + '%') + ' ORDER BY REGNUMBER');
  end else if Mode = 'ADDRESS' then begin
    Open_Query('VOTEADDR',false,'SELECT VOTEADDRID, FIRSTNAME, LASTNAME, SEX, DOB, REGNUMBER, RESADDR1, RESCITY FROM VOTEADDR WHERE RESADDR1 LIKE ' + AddExpr(AddressSearch.Value + '%') + ' ORDER BY REGNUMBER');
  end;

  While Not A('VOTEADDR').Eof do begin
    VoteAddrBrowse.SetValue('VOTEADDRID',GetField('VOTEADDR','VOTEADDRID').AsString);
    VoteAddrBrowse.SetValue('REGNUMBER', tdbfield('VOTEADDR','REGNUMBER'));
    VoteAddrBrowse.SetValue('NAME',      tdbfield('VOTEADDR','LASTNAME') + ', ' + tdbfield('VOTEADDR','FIRSTNAME'));
    VoteAddrBrowse.SetValue('SEX',       GetField('VOTEADDR','SEX').AsString);
    VoteAddrBrowse.SetValue('DOB',       GetField('VOTEADDR','DOB').AsString);
    VoteAddrBrowse.SetValue('RESADDR1',  tdbfield('VOTEADDR','RESADDR1') + ', ' + tdbfield('VOTEADDR','RESCITY'));
    A('VOTEADDR').Skip(1);
  end;
  CloseApollo('VOTEADDR');
  VoteAddrBrowseClick(self);
end;

procedure TVoteForm.ClearButtonClick(Sender: TObject);
begin
  LastNameSearch .Value := '';
  FirstNameSearch.Value := '';
  RegNumberSearch.Value := '';
  AddressSearch  .Value := '';
  LastNameSearch.SetFocus;
end;


procedure CopyVoteAddrFieldsToVoteHist(voteaddr,votehist: TApolloData);
  procedure ConvertField(mField: String);
  begin
    GetField(votehist,mField).AsString := GetField(voteaddr,mField).AsString;
  end;
begin
  ConvertField('REGNUMBER');
  ConvertField('CONGDIST');
  ConvertField('DOB');
  ConvertField('DOR');
  ConvertField('ELECTDIST');
  ConvertField('FIRSTNAME');
  ConvertField('LASTNAME');
  ConvertField('LOCALDIST');
  ConvertField('MAILADDR1');
  ConvertField('MAILADDR2');
  ConvertField('MAILCITY');
  ConvertField('MAILSTATE');
  ConvertField('MAILZIP');
  ConvertField('MIDDLENAME');
  ConvertField('NAMESUFFIX');
  ConvertField('PARTY');
  ConvertField('PSTREET');
  ConvertField('PSTRNUM');
  ConvertField('RESADDR1');
  ConvertField('RESADDR2');
  ConvertField('RESCITY');
  ConvertField('RESSTATE');
  ConvertField('RESZIP');
  ConvertField('SEX');
  ConvertField('STASSDIST');
  ConvertField('STSENDIST');
  ConvertField('TOWNCODE');
end;

end. 
