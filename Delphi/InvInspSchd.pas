unit InvInspSchd;

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
  NormalBase,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  StdCtrls,
  ExtCtrls,
  AdvGlowButton,
  DB,
  AlpineGlowButton,
  AdvPanel,
  ALPINEDATETIME,
  AlpinePanel,
  AlpineMemo,
  AdvGroupBox,
  GisPngImage;

type
  TInvInspSchdForm = class(TNormalBaseForm)
    AlpinePanel4: TAlpinePanel;
    InvIDLabel: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DescrField: TAlpineEdit;
    InvIDField: TAlpineLookup;
    InvServTypeIDField: TAlpineLookup;
    AppPanel: TAlpinePanel;
    Label1: TLabel;
    HourMinField: TAlpineEdit;
    HourMaxField: TAlpineEdit;
    Label10: TLabel;
    Label2: TLabel;
    MileMinField: TAlpineEdit;
    MileMaxField: TAlpineEdit;
    Label4: TLabel;
    Label5: TLabel;
    DayMinField: TAlpineEdit;
    DayMaxField: TAlpineEdit;
    Label6: TLabel;
    AlpinePanel2: TAlpinePanel;
    NarrField: TAlpineMemo;
    DuplicateButton: TAlpineGlowButton;
    Label8: TLabel;
    Label11: TLabel;
    AlpineEdit1: TAlpineEdit;
    AlpineEdit2: TAlpineEdit;
    Label12: TLabel;
    Label13: TLabel;
    AlpineEdit3: TAlpineEdit;
    AlpineEdit4: TAlpineEdit;
    InvPanel: TAlpinePanel;
    Label18: TLabel;
    Label19: TLabel;
    AlpineEdit9: TAlpineEdit;
    AlpineEdit10: TAlpineEdit;
    InvServFormField: TAlpineEdit;
    InvSubTypeIDLabel: TLabel;
    InvSubTypeIDField: TAlpineLookup;
    BlankLabel: TLabel;
    Label3: TLabel;
    Label14: TLabel;
    AlpineEdit5: TAlpineEdit;
    AlpineEdit6: TAlpineEdit;
    Image1: TImage;
    Image2: TImage;
    procedure InvServTypeIDFieldEnter(Sender: TObject);
    procedure DuplicateButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    InvServForm : String;
    class procedure AppNewRecord(DataSet: TDataSet);
    class procedure SCBANewRecord(DataSet: TDataSet);
    function GetType: String;
  end;

var
  InvInspSchdForm: TInvInspSchdForm;

implementation
uses GenFunc,
     SecSet,
     Inv,
     CommonFunc;

{$R *.dfm}

class procedure TInvInspSchdForm.AppNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'APPINSP';
end;

class procedure TInvInspSchdForm.ScbaNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('INVSERVFORM').AsString := 'SCBAINSP';
end;

procedure TInvInspSchdForm.InvServTypeIDFieldEnter(Sender: TObject);
begin
  inherited;
  InvServTypeIDField.SqlExpr := 'SELECT * FROM INVSERVTYPE WHERE ' + GetFdidSQL('INVSERVTYPE.FDID') + ' AND INVSERVFORM = ' + AddExpr(InvServForm);
end;

procedure TInvInspSchdForm.DuplicateButtonClick(Sender: TObject);
begin
  inherited;
  SaveButtonClick(self);
  If AnyStrToInt(InvServTypeIDField.Value) > 0 then begin
    Open_Query('INV',false,'SELECT INVID FROM INV WHERE TYPE = ' + AddExpr('TRUCK') + ' AND INCLUDE = ' + AddExpr('Y'));
    Open_Query('INVSERVSCHD',true,'SELECT * FROM INVSERVSCHD WHERE 1=2');
    While Not A('INV').Eof do begin
      A('INVSERVSCHD').UpdateSQL('SELECT * FROM INVSERVSCHD WHERE INVID = ' + GetField('INV','INVID').AsString + ' AND INVSERVTYPEID = ' + InvServTypeIDField.Value);
      If Not A('INVSERVSCHD').RecordsExist then begin
        GetTable('INVSERVSCHD').Append;
        GetField('INVSERVSCHD','INVSERVFORM').AsString   := InvServForm;
        GetField('INVSERVSCHD','INVID').AsString         := GetField('INV','INVID').AsString;
        GetField('INVSERVSCHD','DESCR').AsString         := DescrField.Value;
        GetField('INVSERVSCHD','NARR').AsString          := NarrField.Value;
        GetField('INVSERVSCHD','INVSERVTYPEID').AsString := InvServTypeIDField.Value;
        GetField('INVSERVSCHD','HOURMIN').AsInteger      := AnyStrToInt(HourMinField.Value);
        GetField('INVSERVSCHD','HOURMAX').AsInteger      := AnyStrToInt(HourMaxField.Value);
        GetField('INVSERVSCHD','MILEMIN').AsInteger      := AnyStrToInt(MileMinField.Value);
        GetField('INVSERVSCHD','MILEMAX').AsInteger      := AnyStrToInt(MileMaxField.Value);
        GetField('INVSERVSCHD','DAYMIN').AsInteger       := AnyStrToInt(DayMinField.Value);
        GetField('INVSERVSCHD','DAYMAX').AsInteger       := AnyStrToInt(DayMaxField.Value);
        GetTable('INVSERVSCHD').Post;
      end;
      A('INV').Skip(1);
    end;
    CloseApollo('INV');
    CloseApollo('INVSERVSCHD');
  end else
    ShowMessage('You need to enter the inspection type');
end;

procedure TInvInspSchdForm.FormCreate(Sender: TObject);
begin
  inherited;
  InvServForm := SqlLookUp(pk,'INVSERVSCHDID','INVSERVSCHD','INVSERVFORM');

  If substr(InvServForm,1,3) = 'APP' then begin
    InvIDField.DisplayField     := 'UNITNUM';
    InvIDField.LookUpCode       := 'UNITNUM';
    InvIDField.ReferencingTable := 'VWTRUCK';
    AppPanel.Visible            := true;
    InvIDLabel.Caption          := 'Unit Number';
    InvSubTypeIDLabel.Caption   := 'Apparatus Type';
    BlankLabel.Caption          := 'Leave field blank to schedule in all vehicles of this type';
    InvIDField.SQLExpr          := 'SELECT * FROM VWTRUCK WHERE ' + GetFdidSQL('VWTRUCK.FDID') + ' ORDER BY UNITNUM';
  end else if substr(InvServForm,1,4) = 'SCBA' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    InvPanel.Visible            := true;
    InvIDLabel.Caption          := 'SCBA Number';
    InvSubTypeIDLabel.Caption   := 'SCBA Type';
    BlankLabel.Caption          := 'Leave field blank to schedule in all SCBAs of this type';
    InvIDField.SQLExpr          := 'SELECT * FROM VWINV WHERE TYPE = ' + AddExpr('SCBA') + ' AND ' + GetFdidSQL('VWINV.FDID') + ' ORDER BY INVNUM';
  end else if substr(InvServForm,1,4) = 'HOSE' then begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    InvPanel.Visible            := true;
    InvIDLabel.Caption          := 'HOSE Number';
    InvSubTypeIDLabel.Caption   := 'HOSE Type';
    BlankLabel.Caption          := 'Leave field blank to schedule in all Hoses of this type';
    InvIDField.SQLExpr          := 'SELECT * FROM VWINV WHERE TYPE = ' + AddExpr('HOSE') + ' AND ' + GetFdidSQL('VWINV.FDID') + ' ORDER BY INVNUM';
  end else begin
    InvIDField.DisplayField     := 'INVNUM';
    InvIDField.LookUpCode       := 'INV';
    InvIDField.ReferencingTable := 'VWINV';
    InvPanel.Visible            := true;
    InvIDLabel.Caption          := 'Inventory Number';
    InvSubTypeIDLabel.Caption   := 'Inventory Type';
    BlankLabel.Caption          := 'Leave field blank to schedule in all inventory of this type';
    InvIDField.SQLExpr          := 'SELECT * FROM VWINV WHERE TYPE = ' + AddExpr(GetType) + ' AND ' + GetFdidSQL('VWINV.FDID') + ' ORDER BY INVNUM';
  end;

  InvSubTypeIDField.SqlExpr := 'SELECT * FROM INVSUBTYPE WHERE ' + GetFdidSQL('INVSUBTYPE.FDID') + ' AND TYPE = ' + AddExpr(GetType) + ' ORDER BY CODE';
  ViewOnly                  := Not TInvForm.CheckInvSecurity(InvServForm);
end;

function TInvInspSchdForm.GetType: String;
begin
  If (InvServForm = 'APPSERV') or (InvServForm = 'APPINSP') then
    GetType := 'TRUCK'
  else if (InvServForm = 'HOSEINSP') or (InvServForm = 'HOSESERV') or (InvServForm = 'HOSETEST') then
    GetType := 'HOSE'
  else if (InvServForm = 'SCBAINSP') or (InvServForm = 'SCBASERV') then
    GetType := 'SCBA'
  else if (InvServForm = 'STAINSP') or (InvServForm = 'STASERV') then
    GetType := 'STATION'
  else
    GetType := 'GEN';
end;

end.
