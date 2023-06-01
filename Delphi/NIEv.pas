unit NIEv;

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
  AdvToolBtn,
  AdvPanel,
  AlpineLookup,
  AlpineDateTime,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineMemo,
  AdvGroupBox,
  AlpineBlockBrowse,
  AlpinePanel;

type
  TNIEvForm = class(TNormalBaseForm)
    NIEvPersInvBrowse: TAlpineBlockBrowse;
    Panel0B: TAlpinePanel;
    DateEndLabel: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    LosapCatLabel: TLabel;
    EvLengthLabel: TLabel;
    EVLengthDescr: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    PersIDLabel: TLabel;
    NITrainCat1DescrField: TLabel;
    SecondLabelField: TLabel;
    DateTimeStartField: TAlpineDateTime;
    DateTimeEndField: TAlpineDateTime;
    DescrField: TAlpineEdit;
    EvLengthField: TAlpineEdit;
    StartButton: TAlpineGlowButton;
    EndButton: TAlpineGlowButton;
    EvLengthButton: TAlpineGlowButton;
    NITrainCat1IDField: TAlpineLookup;
    NarrField: TAlpineMemo;
    LocationIDField: TAlpineLookup;
    NITRAINCATTYPEIDField: TAlpineLookup;
    PersIDField: TAlpineLookup;
    LocationButton: TAlpineGlowButton;
    SearchCourseButton: TAlpineGlowButton;
    procedure NITrainCAT1IDFieldEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure StartButtonClick(Sender: TObject);
    procedure EndButtonClick(Sender: TObject);
    procedure EvLengthFieldEnter(Sender: TObject);
    procedure EvLengthButtonClick(Sender: TObject);
    procedure EvLengthFieldChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PersIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DateTimeEndFieldExit(Sender: TObject);
    procedure NITrainCat1IDFieldSetDescription(Sender: TObject);
    procedure LocationButtonClick(Sender: TObject);
    procedure LocationIDFieldEnter(Sender: TObject);
    procedure NITrainCat1IDFieldSuccessfulValidate(Sender: TObject);
    procedure SearchCourseButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
    procedure NIEvPersInvFormNewRecord(DataSet: TDataSet);
    procedure DoAfterSetControls(Sender: TObject); override;
  end;

var
  NIEvForm: TNIEvForm;

implementation
uses GenFunc,
     CommonVar,
     NI,
     NIEvPersInv,
     NITrainCATSearch,
     CommonFunc,
     FormFunc,
     Main;

{$R *.DFM}

class procedure TNIEvForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('DESCR').AsString           := ' ';
end;

procedure TNIEvForm.FormShow(Sender: TObject);
var NIForm            : TForm;
    FdidVar           : String;
    mTrainCatTypeCond : String;
begin
  inherited;
  NIForm := GetFormOfType(TNIForm);
  If NIForm <> nil then begin
    ViewOnly               := TNIForm(NIForm).ViewOnly; 
    NewButton.Enabled      := not ViewOnly;
    EvLengthButton.Enabled := not ViewOnly;
    LocationButton.Enabled := not ViewOnly;
  end;
  
  EvLengthFieldChange(self);
  StartButton.Enabled    := not ViewOnly;
  EndButton.Enabled      := not ViewOnly;
end;

procedure TNIEvForm.NITrainCAT1IDFieldEnter(Sender: TObject);
var Form              : TForm;
    FdidVar           : String;
    mTrainCatTypeCond : String;
begin
  inherited;
  Form := GetFormOfType(TNIForm);
  If Form <> nil then
    FdidVar := TNIForm(Form).FdidField.Value;
  If NITRAINCATTYPEIDField.Value <> '' then
    mTrainCatTypeCond := ' AND VWNITRAINCAT1.ACTIVE = ' + AddExpr('Y') + ' AND VWNITRAINCAT1.NITRAINCATTYPEID = '+ NITRAINCATTYPEIDField.Value+' '
  else
    mTrainCatTypeCond := ' AND VWNITRAINCAT1.ACTIVE = ' + AddExpr('Y');

  If mFireID = '28014' then
    mTrainCatTypeCond := mTrainCatTypeCond + ' AND (VWNITRAINCAT1.NITRAINCATTYPEID <> '+ AddExpr('4') + ' OR VWNITRAINCAT1.NITRAINCATTYPEID = ' + AddExpr('') + ' OR VWNITRAINCAT1.NITRAINCATTYPEID IS NULL) ';

  If mFireID = '25150' then
    mTrainCatTypeCond := mTrainCatTypeCond + ' AND (VWNITRAINCAT1.INACTIVEYN <> '+ AddExpr('Y') + ' OR VWNITRAINCAT1.INACTIVEYN = ' + AddExpr('') + ' OR VWNITRAINCAT1.INACTIVEYN IS NULL) ';

  NITrainCat1IDField.SQLExpr := 'SELECT * FROM VWNITRAINCAT1 WHERE (VWNITRAINCAT1.FDID = ' + AddExpr('') + ' OR ' +
                                'VWNITRAINCAT1.FDID IS NULL OR VWNITRAINCAT1.FDID = ' + AddExpr(FdidVar) + ') '+
                                mTrainCatTypeCond+' ORDER BY VWNITRAINCAT1.DESCR';
end;

procedure TNIEvForm.FormClose(Sender: TObject; var Action: TCloseAction);
var mForm: TForm;
begin
  inherited;
  mForm := GetFormOfType(TNIForm);
  If mForm<>nil then
    TNIForm(mForm).LoadNIEvAttBrowse;
end;

procedure TNIEvForm.FormCreate(Sender: TObject);
begin
  inherited;
  If (mFireID = '28014') then
    LosapCatLabel.Caption := 'Evolution';

  PersIDField.Visible := Not (mFireID = '00190');
  PersIDLabel.Visible := Not (mFireID = '00190');

  NIEvPersInvBrowse.Setup('NIEVPERSINV','NIEVID',PK,TNIEvPersInvForm,NIEvPersInvFormNewRecord);
end;

procedure TNIEvForm.NIEvPersInvFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NIEVID').AsString := PK;
  If mfireid = 'B3580' then
    GetField('NIEVPERSINV','HOURS').AsString     := EvLengthField.Value;
end;

procedure TNIEvForm.SearchCourseButtonClick(Sender: TObject);
Var NITrainCAT1ID: String;
begin
  inherited;
  If SelectNITrainCAT1ID(NITrainCAT1ID) then begin
    SaveButton.Enabled       := true;
    NITrainCAT1IDField.Value := NITrainCAT1ID;
  end;
  NITrainCat1IDFieldSuccessfulValidate(self);
  
end;

procedure TNIEvForm.StartButtonClick(Sender: TObject);
var mForm: TForm;
begin
  inherited;
  mForm := GetFormOfType(TNIForm);
  If mForm <> nil then
    DateTimeStartField.Value := TNiform(mForm).DateTimeStartField.Value;
end;

procedure TNIEvForm.DateTimeEndFieldExit(Sender: TObject);
begin
  inherited;
  If (DateTimeStartField.Value > 0) and (DateTimeEndField.Value > 0) then begin
    If DateTimeEndField.Value < DateTimeStartField.Value then begin
      ShowMessage('The finish date time cannot be before the start date time');
      DateTimeEndField.Value := 0;
      DateTimeEndField.Setfocus;
    end;
  end;
end;

procedure TNIEvForm.EndButtonClick(Sender: TObject);
var mForm: TForm;
begin
  inherited;
  mForm := GetFormOfType(TNIForm);
  If mForm <> nil then
    DateTimeEndField.Value := TNiform(mForm).DateTimeEndField.Value;
end;

procedure TNIEvForm.EvLengthFieldEnter(Sender: TObject);
begin
  inherited;
  If (AnyStrToFloat(EvLengthField.Value) = 0) and (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then
    EvLengthField.Value := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );
end;

procedure TNIEvForm.EvLengthButtonClick(Sender: TObject);
begin
  inherited;
  If (DateTimeEndField.Value > 0) and (DateTimeStartField.Value > 0) then
    EvLengthField.Value := FormatFloat('###.##',24 * (DateTimeEndField.Value - DateTimeStartField.Value) );
  EvLengthFieldChange(self);
end;

procedure TNIEvForm.EvLengthFieldChange(Sender: TObject);
Var EvLength : Real;
    Hour     : Real;
    Minute   : Real;
begin
  inherited;
  EvLength := AnyStrToFloat(EvLengthField.Value);
  Hour     := Trunc(EvLength);
  Minute   := 60*Frac(EvLength);
  If (Hour = 1) and (Minute = 0) then
    EvLengthDescr.Caption := '1 Hour'
  else if (Hour = 0) and (Minute = 0) then
    EvLengthDescr.Caption := 'N/A'
  else if (Hour = 1) and (Minute > 0) then
    EvLengthDescr.Caption := '1 Hour ' + IntToStr(Round(Minute)) + ' Minutes'
  else if (Hour > 1) and (Minute = 0) then
    EvLengthDescr.Caption := FloatToStr(Hour) + ' Hours '
  else if (Hour > 1) and (Minute > 0) then
    EvLengthDescr.Caption := FloatToStr(Hour) + ' Hours ' + IntToStr(Round(Minute)) + ' Minutes'
  else if (Hour < 1) and (Minute > 0) then
    EvLengthDescr.Caption := FloatToStr(60 * Frac(EvLength)) + ' Minutes'
  else
    EvLengthDescr.Caption := FloatToStr(Hour) + ' Hours ' + FloatToStr(Minute) + ' Minutes';
end;
 
procedure TNIEvForm.LocationButtonClick(Sender: TObject);
begin
  inherited;
  LocationIDField.Value := SQLLookUp(pk,'NIID','NI','LOCATIONID');
  SaveButton.Enabled    := true;
end;

procedure TNIEvForm.LocationIDFieldEnter(Sender: TObject);
var NIForm  : TForm;
    FdidVar : String;
begin
  inherited;
  NIForm := GetFormOfType(TNIForm);
  If NIForm <> nil then begin
    FdidVar := TNIForm(NIForm).FdidField.Value;
    LocationIDField.SQLExpr := 'SELECT * FROM LOCATION WHERE FDID = ' + AddExpr(FdidVar) + ' OR FDID = ' + AddExpr('') + ' OR FDID IS NULL ORDER BY CODE';
  end else
    LocationIDField.SQLExpr := 'SELECT * FROM LOCATION ORDER BY CODE';
end;

procedure TNIEvForm.FormDestroy(Sender: TObject);
var mForm: TForm;
begin
  inherited;
  mForm := GetFormOfType(TNIForm);
  If mForm <> nil then
    TNiform(mForm).LoadNIEVATTBrowse;
end;

procedure TNIEvForm.NITrainCat1IDFieldSetDescription(Sender: TObject);
Var SecondLabel : String;
begin
  inherited;
  NITrainCat1DescrField.Caption := SQLLookUp(NITrainCat1IDField.Value,'NITRAINCAT1ID','NITRAINCAT1','DESCR');
  SecondLabel                   := SQLLookUp(NITrainCat1IDField.Value,'NITRAINCAT1ID','NITRAINCAT1','SECONDLABEL');
  SecondLabelField.Caption      := IIf(SecondLabel = '','','Alt# ' + SecondLabel);
end;

procedure TNIEvForm.NITrainCat1IDFieldSuccessfulValidate(Sender: TObject);
begin
  inherited;
  If NITrainCat1IDField.Value <> '' then begin
    Open_Query('NITRAINCAT1',false,'SELECT NARR,NITRAINCATTYPEID FROM NITRAINCAT1 WHERE NITRAINCAT1ID = ' + pkvalue(NITrainCat1IDField.Value));
    if NITrainCatTypeIDField.Value = '' then
      NITrainCatTypeIDField.Value := GetField('NITRAINCAT1','NITRAINCATTYPEID').AsString;
    If alltrim(GetField('NITRAINCAT1','NARR').AsString) <> '' then begin
      If BooleanMessageDlg('Update Notes and Topics with Training Outline?') then
        NarrField.Value := GetField('NITRAINCAT1','NARR').AsString;
        Application.ProcessMessages;
    end;
    CloseApollo('NITRAINCAT1');
  end;
end;

procedure TNIEvForm.PersIDFieldEnter(Sender: TObject);
begin
  inherited;
  PersIDField.SqlExpr := 'SELECT PERSID, PERSCODE, LNAME, FNAME FROM PERS WHERE ' + GetFdidSQL('PERS.FDID') + ' AND ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TNIEvForm.DoBeforePost(Sender: TObject);
var NIForm  : TForm;
    NIID    : String;
    LoadAtt : Boolean;
begin
  inherited;
  LoadAtt := SQLLookUp(NITrainCat1IDField.Value,'NITRAINCAT1ID','NITRAINCAT1','LOADATT') = 'Y';
  If LoadAtt then begin
    NIForm := GetFormOfType(TNIForm);
    If NIForm <> nil then begin
      NIID := TNIform(NIForm).PK;
      Open_Query('NIATT',false,'SELECT PERSID FROM NIATT WHERE NIID = ' + pkvalue(NIID));
      Open_Query('NIEVATT',true,'SELECT * FROM NIEVATT WHERE 1=2');
      while Not A('NIATT').eof do begin
        A('NIEVATT').UpdateSQL('SELECT * FROM NIEVATT WHERE NIID = ' + pkValue(NIID) + ' AND NIEVID = ' + pk + ' AND PERSID = ' + GetField('NIATT','PERSID').AsString);
        If Not A('NIEVATT').RecordsExist then begin
          GetTable('NIEVATT').Append;
          GetField('NIEVATT','NIID').AsString   := NIID;
          GetField('NIEVATT','NIEVID').AsString := pk;
          GetField('NIEVATT','PERSID').AsString := GetField('NIATT','PERSID').AsString;
          GetTable('NIEVATT').Post;
        end;
        A('NIATT').Skip(1);
      end;
      CloseApollo('NIATT');
      CloseApollo('NIEVATT');
    end;
  end;
end;

procedure TNIEvForm.DoAfterSetControls(Sender: TObject);
begin
  NIEvPersInvBrowse.Setup('NIEVPERSINV','NIEVID',PK,TNIEvPersInvForm,NIEvPersInvFormNewRecord);
end;

end.
