unit DispPropNfirsMain;

interface

uses
  Windows,
  Messages,
  NormalBase,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  OvcBase,
  AlpineMemo,
  StdCtrls,
  AlpineDateTime,
  Blink,
  ExtCtrls,
  Buttons,
  BasePictureField,
  AlpineEdit,
  AlpineLookup,
  MySBox,
  AdvPanel,
  AlpinePanel,
  AdvGlowButton,
  AlpineGlowButton,
  AlpineBase,
  Nfirs,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  HtmlBtns,
  OrpheusWrapper,
  AdvObj;

type
  TDispPropNfirsMainForm = class(TAlpineBaseForm)
    BaseBottomPanel: TAdvPanel;
    CloseButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    BaseImage: TImage;
    TitleImage: TImage;
    TitlePanel: TLabel;
    NfirsMainBrowse: TAlpineTMSStringGrid;
    LocationField: TLabel;
    CompleteButton: TAlpineCheckBoxGlowButton;
    PartialButton: TAlpineCheckBoxGlowButton;
    matchpropid: TAlpineCheckBoxGlowButton;
    NFIRSMainButton: TAlpineGlowButton;
    procedure FormShow(Sender: TObject);
    procedure CloseButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NfirsMainBrowseDblClick(Sender: TObject);
    procedure CompleteButtonClick(Sender: TObject);
    procedure PartialButtonClick(Sender: TObject);
  private
    { Private declarations }
    procedure UnCheckAll;
  public
    { Public declarations }
    PropID  : String;
    StrNum  : String;
    Street  : String;
    RoomApt : String;
    procedure LoadNfirsMainBrowse;
  end;
  procedure ShowDispPropNfirsMain(PropID : String);

Var DispPropNfirsMainForm : TDispPropNfirsMainForm;

implementation
uses Commonfunc,
     GenFunc,
     CommonVar,
     SortGridView,
     Chem,
     SecSet,
     CommonDisp;

{$R *.DFM}

procedure ShowDispPropNfirsMain(PropID: String);
begin
  DispPropNfirsMainForm        := TDispPropNfirsMainForm.Create(Application);
  DispPropNfirsMainForm.PropID := PropID;
  DispPropNfirsMainForm.Show;
end;

procedure TDispPropNfirsMainForm.FormShow(Sender: TObject);
begin
  UnCheckAll;
  If mFireID = '71630' then
    matchpropid.ButtonState   := gbChecked
  else
    PartialButton.ButtonState := gbChecked;
  TitleImage.Picture.Icon   := GetGlowImageIcon('INCIDENT32');
  LoadNfirsMainBrowse;
  NFIRSMainButton.Enabled   := CheckSecVar('INCVIEW');
end;

procedure TDispPropNfirsMainForm.LoadNfirsMainBrowse;
Var SQLWhere : String;
    SQLVar   : String;
    mRoomapt : String;
begin
  Open_Query('GETPROP',false,'SELECT ROOMAPT, STRNUM, STREET, CITY, PLASTNAME FROM PROP WHERE PROPID = ' + PropID);
  LocationField.Caption := tdbfield('GETPROP','STRNUM') + ' ' + tdbfield('GETPROP','STREET') + IIf(tdbfield('GETPROP','ROOMAPT') = '','',', APT ' + tdbfield('GETPROP','ROOMAPT')) + ', ' + tdbfield('GETPROP','PLASTNAME');
  StrNum                := tdbfield('GETPROP','STRNUM');
  Street                := tdbfield('GETPROP','STREET');
  RoomApt               := tdbfield('GETPROP','ROOMAPT');
  CloseApollo('GETPROP');

  If matchpropid.ButtonState = gbChecked then
    SQLWhere := 'WHERE NFIRSMAIN.PROPID = '+pkValue(PropID)
  else If PartialButton.ButtonState = gbChecked then
    SQLWhere := 'WHERE (NFIRSMAIN.STRNUM = ' + AddExpr(StrNum) + ' AND NFIRSMAIN.STREET = ' + AddExpr(Street) + ')'
  else begin
    if roomapt = '' then
      mRoomApt := ' AND (NFIRSMAIN.ROOMAPT = ' + AddExpr(' ') +' OR NFIRSMAIN.ROOMAPT IS NULL) '
    else
      mRoomApt := ' AND NFIRSMAIN.ROOMAPT = ' + AddExpr(RoomApt);
    SQLWhere := 'WHERE (NFIRSMAIN.STRNUM = ' + AddExpr(StrNum) + ' AND NFIRSMAIN.STREET = ' + AddExpr(Street) + mRoomApt + ')';

  end;
  NfirsMainBrowse.Clear;
  NfirsMainBrowse.ColCount := 0;
  NfirsMainBrowse.RowCount := 0;
  NfirsMainBrowse.ClearColumns;

  NfirsMainBrowse.FixedRowAlways := true;
  NfirsMainBrowse.RowCount       := NfirsMainBrowse.FixedRows;
  NfirsMainBrowse.SetColumn('NFIRSMAINID',      'NFIRSMAINID',  000);
  NfirsMainBrowse.SetColumn('ADDRESS',          'Address',      250);
  NfirsMainBrowse.SetColumn('INCNUM',           'Incident',     110);
  NfirsMainBrowse.SetColumn('DATETIMEALARM',    'Date and Time',120);
  NfirsMainBrowse.SetColumn('N5INCTYPEDESCR',   'Incident Type',130);
  NfirsMainBrowse.SetColumn('DISPCALLTYPEDESCR','Dispatch Type',230);

  SQLVar := 'SELECT NFIRSMAIN.STRNUM, NFIRSMAIN.STREET, NFIRSMAIN.ROOMAPT, NFIRSMAIN.CITY, NFIRSMAIN.NFIRSMAINID, ' +
            'NFIRSMAIN.INCNUM, NFIRSMAIN.DATETIMEALARM, N5INCTYPE.DESCR N5INCTYPEDESCR, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR ' +
            'FROM NFIRSMAIN ' +
            'LEFT JOIN N5INCTYPE ON (NFIRSMAIN.SITFOUND  = N5INCTYPE.CODE) ' +
            'LEFT JOIN DISPCALLTYPE ON (NFIRSMAIN.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
            SQLWhere + ' ORDER BY NFIRSMAIN.DATETIMEALARM DESC';  

  Open_Query('NFIRSMAIN',false,SQLVar);
  While Not A('NFIRSMAIN').Eof do begin
    NfirsMainBrowse.SetValue('NFIRSMAINID',      GetField('NFIRSMAIN','NFIRSMAINID').AsString);
    NfirsMainBrowse.SetValue('ADDRESS',          UpperCase(tdbfield('NFIRSMAIN','STRNUM') + ' ' + tdbfield('NFIRSMAIN','STREET') +  ' ' + IIf(tdbfield('NFIRSMAIN','ROOMAPT') = '','','APT ' + tdbfield('NFIRSMAIN','ROOMAPT')) + ', ' + tdbfield('NFIRSMAIN','CITY')));
    NfirsMainBrowse.SetValue('INCNUM',           GetField('NFIRSMAIN','INCNUM').AsString);
    NfirsMainBrowse.SetValue('DATETIMEALARM',    FormatDateTime('MM/DD/YYYY HH:NN',GetField('NFIRSMAIN','DATETIMEALARM').AsDateTime) );
    NfirsMainBrowse.SetValue('N5INCTYPEDESCR',   GetField('NFIRSMAIN','N5INCTYPEDESCR').AsString);
    NfirsMainBrowse.SetValue('DISPCALLTYPEDESCR',GetField('NFIRSMAIN','DISPCALLTYPEDESCR').AsString);
    A('NFIRSMAIN').Skip(1);
  end;
  CloseApollo('NFIRSMAIN');
end;

procedure TDispPropNfirsMainForm.NfirsMainBrowseDblClick(Sender: TObject);
Var NfirsMainID : String;
begin
  If NFIRSMainButton.Enabled then begin
    NfirsMainID := NFIRSMainBrowse.GetValue('NFIRSMAINID');
    RunAlpineForm(TNfirsForm,NfirsMainID,'NFIRSMAIN',TNfirsForm.NewRecord);
  end;  
end;

procedure TDispPropNfirsMainForm.UnCheckAll;
begin
  PartialButton.ButtonState  := gbUnChecked;
  CompleteButton.ButtonState := gbUnChecked;
  matchpropid.ButtonState    := gbUnChecked;

end;

procedure TDispPropNfirsMainForm.PartialButtonClick(Sender: TObject);
begin
  UnCheckAll;
  TAlpineCheckBoxGlowButton(Sender).buttonState := gbChecked;
  LoadNfirsMainBrowse;
end;

procedure TDispPropNfirsMainForm.CompleteButtonClick(Sender: TObject);
begin
  UnCheckAll;
  TAlpineCheckBoxGlowButton(Sender).buttonState := gbChecked;
  LoadNfirsMainBrowse;
end;

procedure TDispPropNfirsMainForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TDispPropNfirsMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

end.
