unit MobileEyes;

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
  Gauges,
  jpeg,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineBase,
  AlpineTMSStringGrid,
  AdvGroupBox, AdvObj, EnJpgGr;

type
  TMobileEyesForm = class(TAlpineBaseForm)
    BottomPanel: TAdvPanel;
    Gauge: TGauge;
    CloseButton: TAlpineGlowButton;
    Panel1: TPanel;
    PropBrowse: TAlpineTMSStringGrid;
    TagButton: TAlpineGlowButton;
    LoadButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    TitleImage: TImage;
    StrNumField: TAlpineEdit;
    OvcController1: TOvcController;
    StreetField: TAlpineLookup;
    Label2: TLabel;
    StrNumLabel: TLabel;
    ProcessButton: TAlpineGlowButton;
    PropTypeIDField: TAlpineLookup;
    Label5: TLabel;
    PropSubTypeIDField: TAlpineLookup;
    Label4: TLabel;
    DispBoxIDLabel: TLabel;
    DispBoxIDField: TAlpineLookup;
    FdidField: TAlpineLookup;
    Label6: TLabel;
    Label7: TLabel;
    CityField: TAlpineLookup;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label1: TLabel;
    PropCntField: TLabel;
    procedure CloseButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure PropBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure FdidFieldEnter(Sender: TObject);
  private
    { Private declarations }
    procedure LoadPropBrowse;
    procedure ResetPropBrowse;
  public
    { Public declarations }
  end;

var
  MobileEyesForm: TMobileEyesForm;

implementation
uses GenFunc,
     ADODB,
     CommonFunc,
     FormFunc,
     CommonVar,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TMobileEyesForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TMobileEyesForm.FdidFieldEnter(Sender: TObject);
begin
  FdidField.SQLExpr := 'SELECT FDID, DEPTNAME FROM FDID WHERE MULTIINC = ' + AddExpr('Y');
end;

procedure TMobileEyesForm.FormShow(Sender: TObject);
begin
  ResetPropBrowse;
  If SecFdid = '' then begin
    FdidField.Value   := '';
    FdidField.Enabled := true;
  end else begin
    FdidField.Value   := secFdid;
    FdidField.Enabled := false;
  end;
end;

procedure TMobileEyesForm.LoadButtonClick(Sender: TObject);
begin
  ResetPropBrowse;
  LoadPropBrowse;
end;

procedure TMobileEyesForm.ResetPropBrowse;
begin
  PropBrowse.Clear;
  PropBrowse.ColCount := 0;
  PropBrowse.RowCount := 0;
  PropBrowse.ClearColumns;

  PropBrowse.FixedRowAlways := true;
  PropBrowse.RowCount       := PropBrowse.FixedRows;

  PropBrowse.SetColumn('PROPID',          '',                  001);
  PropBrowse.SetColumn('CHECKBOX',        '',                  020);
  PropBrowse.SetColumn('FDID',            'Fdid',              065);
  PropBrowse.SetColumn('STRNUM',          '#',                 070);
  PropBrowse.SetColumn('STREET',          'Street',            160);
  PropBrowse.SetColumn('ROOMAPT',         'Apt',               055);
  PropBrowse.SetColumn('CITYSTATEZIP',    'City, State, Zip',  145);
  PropBrowse.SetColumn('BOXNUM',          'Box Number',        085);
  PropBrowse.SetColumn('PLASTNAME',       'Occupant',          180);
  PropBrowse.SetColumn('PLID',            'PL ID',             085);
  PropBrowse.SetColumn('OID',             'OID',               085);
  PropBrowse.SetColumn('LID',             'LID',               085);
  PropBrowse.SetColumn('MOBILEEYESUPDATE','Last Updated',      120);
  PropBrowse.SetColumn('SPACE',           '',                  999);
  PropBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;

procedure TMobileEyesForm.LoadPropBrowse;
Var WhereString : String;
    CustSelect : String;
begin
  ResetPropBrowse;

  WhereString := 'WHERE (1=1)';
  CustSelect  := '';

  If Not (PropTypeIDField.Value = '') then
    WhereString := WhereString + ' AND PROPTYPEID = ' + pkvalue(PropTypeIDField.Value);
  If Not (PropSubTypeIDField.Value = '') then
    WhereString := WhereString + ' AND PROPSUBTYPEID = ' + pkvalue(PropSubTypeIDField.Value);
  If Not (DispBoxIDField.Value = '') then
    WhereString := WhereString + ' AND DISPBOXID = ' + pkvalue(DispBoxIDField.Value);
  If Not (StreetField.Value = '') then
    WhereString := WhereString + ' AND STREET LIKE ' + AddExpr(StreetField.Value + '%');
  If Not (StrNumField.Value = '') then
    WhereString := WhereString + ' AND STRNUM = ' + AddExpr(StrNumField.Value);
  If Not (FdidField.Value = '') then
    WhereString := WhereString + ' AND FDID = ' + AddExpr(FdidField.Value);
  If Not (CityField.Value = '') then
    WhereString := WhereString + ' AND CITY = ' + AddExpr(CityField.Value);
  Open_Query('PROP',false,'SELECT FDID, PROPID, STRNUM, PLASTNAME, LOWERSTRNUM, UPPERSTRNUM, ROOMAPT, STREET, CITY, STATE, ZIP, CROSS1, BOXNUM, PLID, OID, LID, MOBILEEYESUPDATE FROM PROP ' + WhereString + ' ORDER BY STREET, STRNUM');

  While not A('PROP').Eof do begin
    PropBrowse.SetValue('PROPID',          Getfield('PROP','PROPID').AsString);
    PropBrowse.AddCheckBox(1,propbrowse.rowcount-1,false,false);
    PropBrowse.SetValue('FDID',            tdbfield('PROP','FDID'));
    PropBrowse.SetValue('STRNUM',          Getfield('PROP','STRNUM').AsString);
    PropBrowse.SetValue('STREET',          Getfield('PROP','STREET').AsString);
    PropBrowse.SetValue('ROOMAPT',         Getfield('PROP','ROOMAPT').AsString);
    PropBrowse.SetValue('CITYSTATEZIP',    tdbfield('PROP','CITY') + ', ' + tdbfield('PROP','STATE') + ' ' + tdbfield('PROP','ZIP'));
    PropBrowse.SetValue('BOXNUM',          tdbfield('PROP','BOXNUM'));
    PropBrowse.SetValue('PLASTNAME',       Getfield('PROP','PLASTNAME').AsString);
    PropBrowse.SetValue('PLID',            tdbfield('PROP','PLID'));
    PropBrowse.SetValue('OID',             tdbfield('PROP','OID'));
    PropBrowse.SetValue('LID',             tdbfield('PROP','LID'));
    PropBrowse.SetValue('MOBILEEYESUPDATE',AlpineFormatDateTime('MM/DD/YYYY',GetField('PROP','MOBILEEYESUPDATE').AsDateTime));
    A('PROP').Skip(1);
  end;
  CloseApollo('PROP');
  PropCntField.Caption  := 'No Addresses Tagged.';
end;

procedure TMobileEyesForm.PropBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowNum     : Integer;
    CheckValue : Boolean;
    PropCntVar : Integer;
begin
  PropCntVar := 0;
  For RowNum := 1 to PropBrowse.RowCount-1 do begin
    PropBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then
      PropCntVar := PropCntVar + 1;
  end;
  
  If PropCntVar > 0 then begin
    PropCntField.Caption  := FormatFloat('##,##0',PropCntVar) + ' Addresses Tagged.';
    ProcessButton.Enabled := true;
  end else begin
    PropCntField.Caption  := 'No Addresses Tagged.';
    ProcessButton.Enabled := false;
  end;  
end;

procedure TMobileEyesForm.TagButtonClick(Sender: TObject);
Var RowNum     : Integer;
    PropCntVar : Integer;
begin
  PropCntVar := 0;
  For RowNum := 1 to PropBrowse.RowCount-1 do begin
    PropBrowse.AddCheckBox(1,RowNum,true,false);
    PropCntVar := PropCntVar + 1;
  end;
  PropCntField.Caption  := FormatFloat('##,##0',PropCntVar) + ' Addresses Tagged.';
  ProcessButton.Enabled := true;
end;

procedure TMobileEyesForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  For RowNum := 1 to PropBrowse.RowCount-1 do begin
    PropBrowse.AddCheckBox(1,RowNum,false,false);
  end;
  PropCntField.Caption  := 'No Addresses Tagged.';
  ProcessButton.Enabled := false;
end;

end.
