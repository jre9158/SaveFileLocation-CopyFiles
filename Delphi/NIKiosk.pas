unit NIKiosk;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  OvcBase,
  AlpineLookup,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  StdCtrls,
  ExtCtrls,
  AdvPanel,
  AlpinePanel,
  Grids,
  BaseGrid,
  AdvGrid,
  htmlbtns,
  alpinecheck,
  ALPINEDATETIME,
  AlpineLookGrid,
  Pers,
  AdvGlowButton,
  AlpineGlowButton,
  PlannerCal,
  AlpineBlockBrowse,
  Db,
  AlpineMemo,
  NormalBase,
  AdvObj,
  AlpineTMSStringGrid;

type
  TNIKioskForm = class(TBaseSubTabForm)
    OvcController1: TOvcController;
    AlpinePanel6: TAlpinePanel;
    AlpinePanel7: TAlpinePanel;
    ButtonPanel: TAlpinePanel;
    CreditAllButton: TAlpineGlowButton;
    DateTimeOpenField: TAlpineDateTime;
    Label2: TLabel;
    DateTimeClosedField: TAlpineDateTime;
    Label3: TLabel;
    EventOpenDescr: TLabel;
    CompSelectBrowse: TAlpineTMSStringGrid;
    CloseAllButton: TAlpineGlowButton;
    KioskOpenButton: TAlpineGlowButton;
    procedure CompSelectBrowseDblClick(Sender: TObject);
    procedure CreditAllButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateTimeClosedFieldChange(Sender: TObject);
    procedure CompSelectBrowseClick(Sender: TObject);
    procedure CloseAllButtonClick(Sender: TObject);
    procedure CompSelectBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    class Function TabVisible: Boolean; override;
    procedure LoadCompSelectBrowse;
  end;

var
  NIKioskForm: TNIKioskForm;

implementation
uses GenFunc,
     NI,
     AppLst,
     CommonFunc;

{$R *.dfm}

class Function TNIKioskForm.TabVisible: Boolean;
var Form : TForm;
begin
  Form                            := GetFormofType(TNIForm);
  TNIForm(Form).custom.Caption    := 'Attendance Kiosks';
  TNIForm(Form).custom.ImageIndex := 30;
  result                          := True;
end;

procedure TNIKioskForm.FormShow(Sender: TObject);
var EventOpenTime   : TDateTime;
    EventCloseTime  : TDateTime;
    FingerOpenTime  : TDateTime;
    FingerCloseTime : TDateTime;
    NISTypeID       : String;
    DateTimeStart   : TDateTime;
    DateTimeEnd     : TDateTime;
begin
  Open_Query('GETNI',false,'SELECT FDID, NISTYPEID, DATETIMESTART, DATETIMEEND FROM NI WHERE NIID = ' + pk);
  NISTypeID              := GetField('GETNI','NISTYPEID').AsString;
  DateTimeStart          := GetField('GETNI','DATETIMESTART').AsDateTime;
  DateTimeEnd            := GetField('GETNI','DATETIMEEND').AsDateTime;
  CloseApollo('GETNI');
  
  EventOpenDescr.Caption := '';

  If (DateTimeStart > 0) then begin
    EventOpenTime    := DateTimeStart - (20/1440);
    EventCloseTime   := DateTimeEnd   + (20/1440);
    FingerOpenTime   := DateTimeOpenField.Value;
    FingerCloseTime  := DateTimeClosedField.Value;

    If FingerCloseTime = 0 then begin
      DateTimeOpenField.Value   := EventOpenTime;
      DateTimeClosedField.Value := EventCloseTime;
      FingerOpenTime            := EventOpenTime;
      FingerCloseTime           := EventCloseTime;
    end;

    If (FingerOpenTime > 0) and (FingerCloseTime > 0)  then begin
      EventOpenDescr.Caption := 'Event Will Open At: ' + FormatDateTime('MM/DD/YYYY HH:NN',FingerOpenTime) + ' and Close At: ' + FormatDateTime('MM/DD/YYYY HH:NN',FingerCloseTime) + ' on selected kiosks.';
    end else begin
      EventOpenDescr.Caption    := 'Kiosks will Not Open For this Event, Enter Open and Close Time.';
      CompSelectBrowse.Enabled  := False;
    end;
  end;
  LoadCompSelectBrowse;

  DateTimeOpenField.Enabled   := Not ViewOnly;
  DateTimeClosedField.Enabled := Not ViewOnly;
  KioskOpenButton.Enabled     := Not ViewOnly;
  CreditAllButton.Enabled     := Not ViewOnly;
  CloseAllButton .Enabled     := Not ViewOnly;

  ScaleButtonsOnPanelUsingTags('H',ButtonPanel);
end;

procedure TNIKioskForm.CloseAllButtonClick(Sender: TObject);
begin
  RunSQL('DELETE FROM FINGERSTAT WHERE EVENTTYPE = ' + AddExpr('NI') + ' AND EVENTID = ' + pk);
  LoadCompSelectBrowse;
end;

procedure TNIKioskForm.CompSelectBrowseClick(Sender: TObject);
begin
  KioskOpenButton.Caption := IIf(CompSelectBrowse.GetValue('OPEN',CompSelectBrowse.Row) = '','Open','Close') + ' ' + CompSelectBrowse.GetValue('DESCR',CompSelectBrowse.Row);
end;

procedure TNIKioskForm.CompSelectBrowseDblClick(Sender: TObject);
var ComputerID : String;
begin
  If Not ViewOnly then begin
    ComputerID := CompSelectBrowse.GetValue('COMPUTERID',CompSelectBrowse.Row);
    If ComputerID <> '' then begin
      try
        Open_Query('FINGERSTAT',true,'SELECT * FROM FINGERSTAT WHERE COMPUTERID = ' + computerid + ' AND EVENTTYPE = ' + AddExpr('NI') + ' AND EVENTID = ' + pk);
        If A('FINGERSTAT').RecordsExist then begin
          A('FINGERSTAT').Delete;
          CompSelectBrowse.SetValue('OPEN',CompSelectBrowse.Row,'');
        end else begin
          If A('FINGERSTAT').RecordsExist then
            A('FINGERSTAT').Edit
          else
            A('FINGERSTAT').Append;
          GetField('FINGERSTAT','COMPUTERID').AsString       := ComputerID;
          GetField('FINGERSTAT','EVENTID').AsString          := pk;
          GetField('FINGERSTAT','EVENTTYPE').AsString        := 'NI';
          GetField('FINGERSTAT','DATETIMEOPEN').AsDateTime   := DateTimeOpenField.Value;
          GetField('FINGERSTAT','DATETIMECLOSED').AsDateTime := DateTimeClosedField.Value;
          A('FINGERSTAT').Post;
          CompSelectBrowse.SetValue('OPEN',CompSelectBrowse.Row,'Yes');
        end;
      finally
        CloseApollo('FINGERSTAT');
      end;
    end;
    CompSelectBrowse.SetFocus;
    Application.ProcessMessages;
    CompSelectBrowseClick(self)
  end;  
end;

procedure TNIKioskForm.CompSelectBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_SPACE) then 
    CompSelectBrowseDblClick(self);
end;

procedure TNIKioskForm.CreditAllButtonClick(Sender: TObject);
var I          : Integer;
    ComputerID : String;
begin
  try
    Open_Query('FINGERSTAT',true,'SELECT * FROM FINGERSTAT WHERE 1=2');
    for I := 0 to CompSelectBrowse.RowCount - 1 do begin
      if I > 0 then begin
        ComputerID := CompSelectBrowse.GetValue('COMPUTERID',I);
        A('FINGERSTAT').UpdateSQL('SELECT * FROM FINGERSTAT WHERE COMPUTERID = ' + ComputerID + ' AND EVENTTYPE = ' + AddExpr('NI') + ' AND EVENTID = ' + pk);
        If Not A('FINGERSTAT').RecordsExist then begin
          A('FINGERSTAT').Append;
          GetField('FINGERSTAT','COMPUTERID').AsString       := ComputerID;
          GetField('FINGERSTAT','EVENTID').AsString          := pk;
          GetField('FINGERSTAT','EVENTTYPE').AsString        := 'NI';
          GetField('FINGERSTAT','DATETIMEOPEN').AsDateTime   := DateTimeOpenField.Value;
          GetField('FINGERSTAT','DATETIMECLOSED').AsDateTime := DateTimeClosedField.Value;
          A('FINGERSTAT').Post;
          CompSelectBrowse.SetValue('OPEN',I,'Yes');
        end;
      end;
    end;
  finally
    CloseApollo('FINGERSTAT');
  end;

  CompSelectBrowse.SetFocus;
  Application.ProcessMessages;
  CompSelectBrowseClick(self)
end;

procedure TNIKioskForm.DateTimeClosedFieldChange(Sender: TObject);
begin
  If (DateTimeClosedField.Value > 0) and (DateTimeOpenField.Value > 0) then begin
    EventOpenDescr.Caption   := 'Event will open at: ' + FormatDateTime('MM/DD/YYYY HH:NN',DateTimeOpenField.Value) + ' and close at: ' + FormatDateTime('MM/DD/YYYY HH:NN',DateTimeClosedField.Value) + ' on selected kiosks.';
    CompSelectBrowse.Enabled := True;
  end else begin
    EventOpenDescr.Caption   := 'Kiosks will not open for this event, enter open and close Time.';
    CompSelectBrowse.Enabled := False;
  end;
end;

procedure TNIKioskForm.LoadCompSelectBrowse;
begin
  CompSelectBrowse.Clear;
  CompSelectBrowse.ClearColumns;
  CompSelectBrowse.ColCount := 0;
  CompSelectBrowse.RowCount := 0;
  CompSelectBrowse.SetColumn('COMPUTERID',  '',           000);
  CompSelectBrowse.SetColumn('FDID',        'Agency',     IIf(MultiFdid,070,0));
  CompSelectBrowse.SetColumn('COMPUTERNAME','Kiosk Name', 200);
  CompSelectBrowse.SetColumn('DESCR',       'Description',350);
  CompSelectBrowse.SetColumn('OPEN',        'Open Kiosk?',150);
  CompSelectBrowse.SetColumn('SPACE1',      '',           800);

  Open_Query('COMPUTER',false,'SELECT * FROM COMPUTER WHERE FINGER = ' + AddExpr('Y') + ' ORDER BY DESCR');
  Open_Query('FINGERSTAT',false,'SELECT COMPUTERID FROM FINGERSTAT WHERE EVENTTYPE = ' + AddExpr('NI') + ' AND EVENTID = ' + pkValue(PK));

  While Not A('COMPUTER').Eof do begin
    CompSelectBrowse.SetValue('COMPUTERID',  GetField('COMPUTER','COMPUTERID').AsString);
    CompSelectBrowse.SetValue('FDID',        tdbfield('COMPUTER','FDID'));
    CompSelectBrowse.SetValue('COMPUTERNAME',tdbfield('COMPUTER','COMPUTERNAME'));
    CompSelectBrowse.SetValue('DESCR',       tdbfield('COMPUTER','DESCR'));
    If A('FINGERSTAT').ExactQueryLocate(['COMPUTERID'],[tdbfield('COMPUTER','COMPUTERID')]) then
      CompSelectBrowse.SetValue('OPEN','Yes')
    else
      CompSelectBrowse.SetValue('OPEN','');
    A('COMPUTER').Skip(1);
  end;

  CloseApollo('COMPUTER');
  CloseApollo('FINGERSTAT');
  CompSelectBrowseClick(self)
end;

end.
