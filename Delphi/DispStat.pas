unit DispStat;
 
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
  htmlbtns,
  alpinecheck,
  AdvGroupBox,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  ComCtrls,
  AlpineMemo,
  AdvObj;

type
  TDispStatForm = class(TNormalBaseForm)
    PageControl: TPageControl;
    General: TTabSheet;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    FdidLabel: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    UnitNumField: TAlpineEdit;
    AlpineEdit3: TAlpineEdit;
    FdidField: TAlpineLookup;
    DispLocIDField: TAlpineLookup;
    DispStatCodeIDField: TAlpineLookup;
    DispAppIDField: TAlpineLookup;
    AlpineEdit1: TAlpineEdit;
    AlpineCheckBox1: TAlpineCheckBox;
    AlpineEdit2: TAlpineEdit;
    AttributesTab: TTabSheet;
    AttributesBrowse: TAlpineTMSStringGrid;
    Toggle: TAlpineGlowButton;
    DispPrintListIDLabel: TLabel;
    DispPrintListIDField: TAlpineLookup;
    LocNarrField: TAlpineMemo;
    Label9: TLabel;
    DispBulletinLabel: TLabel;
    DispBulletinField: TAlpineLookup;
    WavFileField: TAlpineEdit;
    WavFileLabel: TLabel;
    custDispStattab: TTabSheet;
    Label10: TLabel;
    AlpineEdit4: TAlpineEdit;
    Label11: TLabel;
    LatitudeTestLabel: TLabel;
    LongitudeTestLabel: TLabel;
    LatitudeTestField: TAlpineEdit;
    LongitudeTestField: TAlpineEdit;
    RunningOrderLabel: TLabel;
    RunningOrderField: TAlpineEdit;
    BulletinLabel: TLabel;
    BulletinField: TAlpineCheckBox;
    ShowAllCallsLabel: TLabel;
    ShowAllCallsField: TAlpineCheckBox;
    procedure DispStatCodeIDFieldEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ToggleClick(Sender: TObject);
  private
    { Private declarations }
    procedure RefreshAttributesBrowse;    
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
    procedure DoBeforePost(Sender: TObject); override;
    function CloseQuery: Boolean; override;    
end;

var
  DispStatForm: TDispStatForm;

implementation
uses GenFunc,
     CommonFunc,
     CommonSec,
     FormFunc,
     CustDispStat,
     CommonVar,
     AppLst,
     Main;
     
{$R *.DFM}

class procedure TDispStatForm.NewRecord(DataSet: TDataSet);
begin
  If SecFDID <> '' then
    DataSet.FieldByname('FDID').AsString := secFdid;
  DataSet.FieldByname('DESCR').AsString := ' ';
end;

procedure TDispStatForm.DispStatCodeIDFieldEnter(Sender: TObject);
begin
  inherited;
  DispStatCodeIDField.SQLExpr := 'SELECT * FROM DISPSTATCODE WHERE TRUCKALARM = ' + AddExpr('T') + ' ORDER BY CODE';
end;

procedure TDispStatForm.FormCreate(Sender: TObject);
begin
  inherited;
  ViewOnly                     := not (CheckSecVar('DISPSETUP') or CheckSecVar('CADINTSETUP'));
  Toggle.Enabled               := Not ViewOnly;
  DispPrintListIDField.Visible := TableRecCount('DISPPRINTLIST')>0;
  DispPrintListIDLabel.Visible := DispPrintListIDField.Visible;
  DispBulletinLabel.Visible    := TableRecCount('BULLETINNARR')>0;
  DispBulletinField.Visible    := DispBulletinLabel.Visible;
  AttributesTab.TabVisible := TableRecCount('DISPATTR')>0;
  If AttributesTab.TabVisible then
    RefreshAttributesBrowse;
  PageControl.ActivePage := General;
  WavFileField.Visible := CheckModule('MOBCAD');
  WavFileLabel.Visible := WavFileField.Visible;

  custDispStattab.TabVisible := TCustDispStatForm.IsVisible;
  if CustDispStatTab.TabVisible then begin
    CreateSubForm(TCustDispStatForm,CustDispStattab);
  end;
  LatitudeTestLabel .Visible := AlpineLogIn;
  LongitudeTestLabel.Visible := AlpineLogIn;
  LatitudeTestField .Visible := AlpineLogIn;
  LongitudeTestField.Visible := AlpineLogIn;

  ShowAllCallsField.Visible  := AlpineLogin or MultiFdid;
  ShowAllCallsField.Enabled  := Not ViewOnly;
  ShowAllCallsLabel.Visible  := ShowAllCallsField.Visible;
end;

procedure TDispStatForm.RefreshAttributesBrowse;
var mYesNo: String;
begin
  AttributesBrowse.ClearColumns;
  AttributesBrowse.RowCount       := 0;
  AttributesBrowse.FixedRowAlways := true;

  AttributesBrowse.SetColumn('DISPATTRID','',0);
  AttributesBrowse.SetColumn('YESNO','YES/NO',50);
  AttributesBrowse.SetColumn('DESCR','Description',999);
  try
    Open_Query('DISPATTR',False,'SELECT * FROM DISPATTR ORDER BY CODE');
    Open_Query('DISPSTATATTR',False,'SELECT * FROM DISPSTATATTR');
    while not A('DISPATTR').eof do begin
      AttributesBrowse.SetValue('DISPATTRID',GetField('DISPATTR','DISPATTRID').AsString);

      if A('DISPSTATATTR').ExactQueryLocate(['DISPATTRID','DISPSTATID'],[GetField('DISPATTR','DISPATTRID').AsString,PK]) then
        mYesNo := 'YES'
      else
        mYesNo := 'NO';
      AttributesBrowse.SetValue('YESNO',mYesNo);
      AttributesBrowse.SetValue('DESCR',tdbField('DISPATTR','CODE')+'-'+tdbField('DISPATTR','DESCR'));

      A('DISPATTR').Skip(1);
    end;
  finally
    CloseApollo('DISPATTR');
    CloseApollo('DISPSTATATTR');
  end;  
end;

procedure TDispStatForm.ToggleClick(Sender: TObject);
begin
  inherited;
  If AttributesBrowse.GetValue('YESNO')='YES' then begin
    AttributesBrowse.SetValue('YESNO',AttributesBrowse.Row,'NO');
    RunSql('DELETE FROM DISPSTATATTR WHERE DISPATTRID = '+pkvalue(AttributesBrowse.GetValue('DISPATTRID'))+' AND DISPSTATID = '+pk);
  end else begin
    AttributesBrowse.SetValue('YESNO',AttributesBrowse.Row,'YES');
    TableInsert('DISPSTATATTR',['DISPATTRID','DISPSTATID'],[AttributesBrowse.GetValue('DISPATTRID'),pk]);
  end;
end;

procedure TDispStatForm.DoBeforePost(Sender: TObject);
Var InvLocID : String;
begin
  If mFireID = 'KOCKW' then begin
    InvLocID := SQLLookUp(DispLocIDField.Value,'DISPLOCID','DISPLOC','INVLOCID');
    RunSQL('UPDATE INV SET INVLOCID = ' + pkValue(InvLocID) + ' WHERE UNITNUM = ' + AddExpr(UnitNumField.Text));
  end;
end;

function TDispStatForm.CloseQuery: Boolean;
var
  dispstat: TApolloData;
begin
  result    := True;
  if (FdidField.Value<>'') and (UnitNumField.value<>'') then begin
    try
      dispstat := open_query('select dispstatid from dispstat where fdid = '+AddExpr(fdidfield.value)+' and unitnum = '+Addexpr(unitnumfield.value)+
        ' and dispstatid <> '+pkvalue(pk));
      result := not dispstat.recordsexist;
    finally
      dispstat.free;
    end;
  end;
  if result then
    inherited CloseQuery
  else begin
    if BooleanMessageDlg('There is already a unit '+UnitNumField.Value+' for FDID '+fdidField.Value+'.  Would you like to Abort Save?') then
      result := True
    else
      result := False;
  end;
end;

end.
