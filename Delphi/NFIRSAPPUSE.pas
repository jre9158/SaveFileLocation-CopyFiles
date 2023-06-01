unit NFIRSAppUse;

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
  ExtCtrls,
  AdvPanel,
  AlpineBlockBrowse,
  AdvGlowButton,
  AlpineGlowButton,
  db,
  StdCtrls,
  AppLst,
  GenFunc;

type
  TNFIRSAppUseForm = class(TAlpineBaseForm)
    NfirsAppBrowse: TAlpineBlockBrowse;
    AdvPanel5: TAdvPanel;
    Image2: TImage;
    TitleImage: TImage;
    Label3: TLabel;
    IncNumLabel: TLabel;
    CloseButton: TAlpineGlowButton;
    SchdHistBrowse: TAlpineBlockBrowse;
    IncNumField: TLabel;
    RemoveButton: TAlpineGlowButton;
    procedure FormCreate(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure NfirsAppBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: String; var Value: String);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NfirsAppBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
    procedure FormShow(Sender: TObject);
    procedure RemoveButtonClick(Sender: TObject);
  private
    { Private declarations }
    NfirsMainID   : String;
    DateTimeAlarm : TDateTime;
    DateTimeIn    : TDateTime;
    EvLength      : Real;
    procedure NFIRSAppFormNewRecord(DataSet: TDataSet);
    function Check81000: Boolean;
    procedure SchdHistNewRecord(DataSet: TDataSet);
    procedure LoadNfirsApp;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; FNfirsMainID: String);
  end;

var
  NFIRSAppUseForm: TNFIRSAppUseForm;

implementation
uses NfirsApp,
     NfirsAppRA,
     NfirsApp5,
     CommonVar,
     CommonFunc,
     NfirsAppDelete,
     FormFunc,
     SecSet,
     AlpineTMSStringGrid,
     SchdHist,
     NfirsSet;

{$R *.DFM}

constructor TNFIRSAppUseForm.Create(AOwner: TComponent; FNfirsMainID: String);
begin
  NfirsMainID := FNfirsMainID;
  inherited Create(AOwner);
end;

procedure TNFIRSAppUseForm.FormCreate(Sender: TObject);
begin
  If (mfireid='25127') OR (mfireid='25119') OR (mfireid='25115') OR (mfireid='25135') OR (mfireid='23123') then
    Width := 900;
  TitleImage.Picture.Icon := GetGlowImageIcon('APPARATUS32');
  Caption                 := 'Apparatus Usage';
  SchdHistBrowse.Visible  := SqlLookup(mFireID,'FDID','NFIRSSET','SCHDHISTCB') = 'Y';
  LoadNfirsApp;
  Open_Query('NFIRSMAIN',false,'SELECT DATETIMEALARM, DATETIMEIN, EVLENGTH, INCNUM, FDID FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkvalue(NfirsMainID));
  DateTimeAlarm       := GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime;
  DateTimeIn          := GetField('NFIRSMAIN','DATETIMEIN').AsDateTime;
  EvLength            := GetField('NFIRSMAIN','EVLENGTH').AsFloat;
  CloseApollo('NFIRSMAIN');
end;

procedure TNFIRSAppUseForm.LoadNfirsApp;
Var NfirsAppViewCode : String;
begin
  NfirsAppViewCode        := SqlLookup('NFIRSAPP','OLDVIEWCODE','SYSVIEWOVERRIDES','NEWVIEWCODE');
  NfirsAppViewCode        := IIf(NfirsAppViewCode = '','NFIRSAPP',NfirsAppViewCode);

  If (NfirsResForm = 'Y') then
    NfirsAppBrowse.Setup('NFIRSAPPRES','NFIRSMAINID',NfirsMainId,TNFIRSApp5Form,NFIRSAppFormNewRecord)
  else if (NfirsResForm = 'R') then
    NfirsAppBrowse.Setup(NfirsAppViewCode,'NFIRSMAINID',NfirsMainId,TNFIRSAppRAForm,NFIRSAppFormNewRecord)
  else
    NfirsAppBrowse.Setup(NfirsAppViewCode,'NFIRSMAINID',NfirsMainId,TNFIRSAppForm,NFIRSAppFormNewRecord);

  NfirsAppBrowse.Grid.MultiLineCells   := true;
  NfirsAppBrowse.Grid.DefaultRowHeight := 40;
  NfirsAppBrowse.Grid.FixedRowHeight   := 18;

  CloseButton.Parent                   := NfirsAppBrowse.FButtonPanel;
  CloseButton.Align                    := alRight;

  If (mFireID = 'EGELS') then begin
    RemoveButton.Parent                  := NfirsAppBrowse.FButtonPanel;
    RemoveButton.Align                   := alleft;
    RemoveButton.Visible                 := true;
    NfirsAppBrowse.FDeletebutton.visible := false;
  end;
end;

procedure TNFIRSAppUseForm.NFIRSAppFormNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString     := NfirsMainID;
  DataSet.FieldByName('DISPCALLID').AsString      := SQLLookUp(NfirsMainID,'NFIRSMAINID','NFIRSMAIN','DISPCALLID');
  Open_Query('GETNFIRSMAIN',false,'SELECT DATETIMEALARM, DATETIMEARR, DATETIMEIN, EVLENGTH FROM NFIRSMAIN WHERE NFIRSMAINID = ' + pkValue(NfirsMainID));
  DataSet.FieldByname('DATETIMEALARM').AsDateTime := GetField('GETNFIRSMAIN','DATETIMEALARM').AsDateTime;
  DataSet.FieldByname('DATETIMEARR').AsDateTime   := GetField('GETNFIRSMAIN','DATETIMEARR').AsDateTime;
  DataSet.FieldByname('DATETIMEIN').AsDateTime    := GetField('GETNFIRSMAIN','DATETIMEIN').AsDateTime;
  DataSet.FieldByname('EVLENGTH').AsFloat         := GetField('GETNFIRSMAIN','EVLENGTH').AsFloat;
  CloseApollo('GETNFIRSMAIN');
end;

procedure TNFIRSAppUseForm.RemoveButtonClick(Sender: TObject);
Var NfirsAppID : String;
begin
  If mFireID = 'EGELS' then begin
    NfirsAppID         := NfirsAppBrowse.FGrid.GetValue('NFIRSAPPID');
    RunSQL('UPDATE NFIRSAPP SET NFIRSMAINID = ' + AddExpr('') + ' WHERE NFIRSAPPID = ' + pkValue(NfirsAppID));
    LoadNfirsApp;
  end;
end;

procedure TNFIRSAppUseForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

function TNFIRSAppUseForm.Check81000: Boolean;
var mUnitNum: String;
begin
  mUnitNum := NfirsAppBrowse.GetValue('UNITNUM');
  if mUnitNum = '' then
    result := True
  else if mUnitNum = sqllookup(nfirsmainid,'nfirsmainid','nfirsmain','unitnum') then begin
    showmessage('You cannot delete the primary unit off the call!');
    result := False;
  end else
    result := True;
end;

procedure TNFIRSAppUseForm.NfirsAppBrowseBeforeDelete(Sender: TObject; var CanDelete: Boolean);
Var NfirsAppID : String;
    UnitNum    : String;
begin
  If mfireid = '81000' then
    CanDelete := Check81000
  else if (mfireid = '12345') or (mfireid = '25127') then begin
    NfirsAppID         := NfirsAppBrowse.FGrid.GetValue('NFIRSAPPID');
    UnitNum            := NfirsAppBrowse.FGrid.GetValue('UNITNUM');
    NfirsAppDeleteForm := TNfirsAppDeleteForm.Create(application,NfirsAppID);
    NfirsAppDeleteForm.ShowModal;
    If NfirsAppDeleteForm.DeleteNfirsApp then begin
      CanDelete := true;
      If NfirsAppDeleteForm.NIAttCheck.Checked then
        RunSQL('DELETE FROM NFIRSATT WHERE NFIRSAPPID = ' + pkValue(NfirsAppID));
      If NfirsAppDeleteForm.DispHistCheck.Checked then
        RunSQL('DELETE FROM DISPHIST WHERE NFIRSMAINID = ' + pkValue(NfirsMainID) + ' AND UNITNUM = ' + AddExpr(UnitNum));
    end else
      CanDelete := false;
    NfirsAppDeleteForm.Free;

  end else if (mFireID = 'EGELS') then begin
    If BooleanMessageDlg('Delete Apparatus?') then
      RemoveButtonClick(self);
    CanDelete := false;
  end else
    CanDelete := BooleanMessageDlg('Delete Apparatus?');
end;

procedure TNFIRSAppUseForm.NfirsAppBrowseGetFieldValue(Sender: TObject; AlpineQuery: TAlpineQuery; FieldName: String; var Value: String);
Var NFIRSAppID : String;
    RetVal     : String;
begin
  If (FieldName = 'N5AU') then begin
    NFIRSAppID := GetField(AlpineQuery,'NFIRSAPPID').AsString;
    RetVal     := '';
    If NFIRSAppID <> '' then begin
      if mfireid <> '01920' then begin
        Open_Query('GETNFIRSATT',false,'SELECT NFIRSATTTASK.DRIVER, PERS.FNAME, PERS.LNAME, NFIRSATT.PERSID, NFIRSAPPID, NFIRSATTID ' +
                                     'FROM NFIRSATT ' +
                                     'LEFT JOIN PERS ON (NFIRSATT.PERSID = PERS.PERSID) ' +
                                     'LEFT JOIN NFIRSATTTASK ON (NFIRSATT.NFIRSATTTASKID = NFIRSATTTASK.NFIRSATTTASKID) ' +
                                     'WHERE NFIRSATT.NFIRSAPPID = ' + NFIRSAppID + ' AND NFIRSATTTASK.DRIVER = ' + AddExpr('Y'));
      end else begin
        Open_Query('GETNFIRSATT',false,'SELECT NFIRSATTTASK.DRIVER, PERS.FNAME, PERS.LNAME, NFIRSATT.PERSID, NFIRSAPPID, NFIRSATTID ' +
                                     'FROM NFIRSATT ' +
                                     'LEFT JOIN PERS ON (NFIRSATT.PERSID = PERS.PERSID) ' +
                                     'LEFT JOIN NFIRSATTTASK ON (NFIRSATT.NFIRSATTTASKID = NFIRSATTTASK.NFIRSATTTASKID) ' +
                                     'WHERE NFIRSATT.NFIRSAPPID = ' + NFIRSAppID);
      end;

      while Not A('GETNFIRSATT').Eof do begin
        RetVal := IIf(RetVal = '','',RetVal + ', ') + tdbfield('GETNFIRSATT','FNAME') + ' ' + tdbfield('GETNFIRSATT','LNAME');
        A('GETNFIRSATT').Skip(1);
      end;
      CloseApollo('GETNFIRSATT');
    end;
    Value := RetVal;
  end else if (FieldName = 'N5AORT') then begin
    NFIRSAppID := GetField(AlpineQuery,'NFIRSAPPID').AsString;
    RetVal     := '';
    If NFIRSAppID <> '' then begin
      Open_Query('NFIRSAPPFOHIST',false,'SELECT NFIRSAPPFOCODE.DESCR NFIRSAPPFOCODEDESCR ' +
                                        'FROM NFIRSAPPFOHIST ' +
                                        'LEFT JOIN NFIRSAPPFOCODE ON (NFIRSAPPFOCODE.NFIRSAPPFOCODEID = NFIRSAPPFOHIST.NFIRSAPPFOCODEID) ' +
                                        'WHERE NFIRSAPPFOHIST.NFIRSAPPID = ' + NFIRSAppID);
      while Not A('NFIRSAPPFOHIST').Eof do begin
        RetVal := IIf(RetVal = '','',RetVal + ', ') + tdbfield('NFIRSAPPFOHIST','NFIRSAPPFOCODEDESCR');
        A('NFIRSAPPFOHIST').Skip(1);
      end;
      CloseApollo('NFIRSAPPFOHIST');
    end;
    Value := RetVal;
  end;
end;

procedure TNFIRSAppUseForm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = VK_ESCAPE then
    Close;
end;

procedure TNFIRSAppUseForm.FormShow(Sender: TObject);
begin
  If SchdHistBrowse.Visible then
    SchdHistBrowse.Setup('SCHDHIST','NFIRSMAINID',NfirsMainID,TSchdHistForm,SchdHistNewRecord);
end;

procedure TNFIRSAppUseForm.SchdHistNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('NFIRSMAINID').AsString     := NfirsMainID;
  DataSet.FieldByname('DATETIMESTART').AsDateTime := DateTimeAlarm;
  DataSet.FieldByname('DATETIMEEND').AsDateTime   := DateTimeIn;
  DataSet.FieldByname('SHIFTLENGTH').AsFloat      := EvLength;
  DataSet.FieldByname('DESCR').AsString           := ' ';
end;


end.
