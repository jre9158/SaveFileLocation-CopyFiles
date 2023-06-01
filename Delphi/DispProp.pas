unit DispProp;

interface

uses
  Windows,
  AdoDB,
  Messages,
  SysUtils,
  Classes,
  Graphics,
  Controls,
  Forms,
  ComObj,
  Dialogs,
  ExtCtrls,
  AdvToolBtn,
  AdvPanel,
  StdCtrlS,
  Buttons,
  ComCtrls,
  ImgList,
  BaseDispatch,
  Blink,
  AdvGlowButton,
  NormalBase,
  AlpineGlowButton,
  AlpineMemo,
  db,
  AdvOfficeImage,
  BorderPanel;

type
  TDispPropForm = class(TBaseDispatchForm)
    BaseBottomPanel: TAdvPanel;
    IncidentButton: TAlpineGlowButton;
    DirectionButton: TAlpineGlowButton;
    GisButton: TAlpineGlowButton;
    PropButton: TAlpineGlowButton;
    PropSitePlanButton: TAlpineGlowButton;
    CloseButton: TAlpineGlowButton;
    HazMatButton: TAlpineGlowButton;
    AdvPanel1: TAdvPanel;
    NfirsMainLabel: TLabel;
    ImagePropLabel: TLabel;
    PropHazMatLabel: TLabel;
    AdvPanel2: TAdvPanel;
    Label5: TLabel;
    Shape5: TShape;
    Label12: TLabel;
    Label13: TLabel;
    Shape6: TShape;
    PropStatField: TBlinkLabel;
    Label6: TLabel;
    ContactName: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Shape7: TShape;
    WarnNarrField: TBlinkLabel;
    HandicapField: TBlinkLabel;
    HazMatField: TBlinkLabel;
    NarrField: TLabel;
    AdvPanel5: TAdvPanel;
    PropStatButton: TAlpineGlowButton;
    AdvPanel4: TAdvPanel;
    Label1: TLabel;
    Label2: TLabel;
    AddressField: TLabel;
    PLastNameField: TLabel;
    Label7: TLabel;
    CrossField: TLabel;
    Hyd1DescField: TLabel;
    Hyd2DescField: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    UpdateField: TLabel;
    AdvOfficeImage3: TAdvOfficeImage;
    AdvOfficeImage4: TAdvOfficeImage;
    AdvOfficeImage5: TAdvOfficeImage;
    Label16: TLabel;
    CallDescrField: TLabel;
    AdvOfficeImage1: TAdvOfficeImage;
    Label9: TLabel;
    AdvOfficeImage2: TAdvOfficeImage;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    PictometryButton: TAlpineGlowButton;
    procedure CloseButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PropButtonClick(Sender: TObject);
    procedure PropStatButtonClick(Sender: TObject);
    procedure HazMatButtonClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DirectionButtonClick(Sender: TObject);
    procedure PropSitePlanButtonClick(Sender: TObject);
    procedure GisButtonClick(Sender: TObject);
    procedure IncidentButtonClick(Sender: TObject);
    procedure PictometryButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure WarnNarrFieldClick(Sender: TObject);
    procedure NarrFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure NarrFieldMouseEnter(Sender: TObject);
    procedure NarrFieldMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure UpdateLabels;
  end;

var
  DispPropForm: TDispPropForm;

implementation
uses CommonFunc,
     GenFunc,
     BaseGenFunc,
     SortGridView,
     Prop,
     PropStatBrowse,
     DispPropHazMat,
     DispPropNfirsMain,
     PropDirectSelect,
     CommonVar,
     CommonDisp,
     CommonDispVar,
     GisSys,
     GisFunc,
     Pict,
     SecSet,
     DispMemo,
     AlpineSelect,
     ImageProp,
     AlpineTMSStringGrid,
     Main;

{$R *.DFM}

procedure TDispPropForm.CloseButtonClick(Sender: TObject);
begin
  Close;
end;

procedure TDispPropForm.FormActivate(Sender: TObject);
begin
  UpdateLabels;
end;

procedure TDispPropForm.UpdateLabels;
Var NfirsMainCount  : Integer;
    PropHazMatCount : Integer;
    ImagePropCount  : Integer;
    HydNum          : Integer;
    mCross,Hyd1Desc,Hyd2Desc: String;

begin
  CallDescrField.Caption := '';
  CrossField.Caption     := '';
  HandicapField.caption  := '';
  HydNum                 := 1;
  
  Open_Query('PROP',false,'SELECT * FROM PROP WHERE PROPID = ' + PkValue(FPropID));
  
  If FDispCallID > '0' then begin
    Open_Query('DISPCALL',false,'SELECT DISPCALL.NARR NARR, DISPCALL.STREET, DISPCALL.STRNUM, DISPCALL.ADDRESS, ' +
                                'DISPCALL.CROSS1, DISPCALL.CROSS2, ' +
                                'DISPCALL.CITY, SITENAME, DISPCALL.PROPTYPEID, DISPCALLTYPE.DESCR DISPCALLTYPEDESCR, ' +
                                'DISPSUBTYPE.DESCR DISPSUBTYPEDESCR ' + 
                                'FROM DISPCALL ' +
                                'LEFT JOIN DISPCALLTYPE ON (DISPCALL.DISPCALLTYPEID = DISPCALLTYPE.DISPCALLTYPEID) ' +
                                'LEFT JOIN DISPSUBTYPE ON (DISPCALL.DISPSUBTYPEID = DISPSUBTYPE.DISPSUBTYPEID) ' +
                                'WHERE DISPCALLID = ' + pkValue(FDispCallID));

    AddressField.Caption   := GetField('DISPCALL','ADDRESS').AsString;
    CallDescrField.Caption := tdbfield('DISPCALL','DISPCALLTYPEDESCR') + '   ' + tdbfield('DISPCALL','DISPSUBTYPEDESCR');
    PLastNameField.Caption := tdbfield('DISPCALL','SITENAME');
    CrossField.Caption     := tdbfield('DISPCALL','CROSS1') + IIf(tdbfield('DISPCALL','CROSS2') = '','',' and ') + tdbfield('DISPCALL','CROSS2');
    CloseApollo('DISPCALL');
  end else begin
    If GetField('PROP','PROPTYPEID').AsString = PropInt then
      AddressField.Caption := 'Intersection of ' + tdbfield('PROP','STREET') + ' / ' + tdbfield('PROP','CROSS1')
    else
      AddressField.Caption := alltrim(alltrim(tdbfield('PROP','STRNUM')) + ' ' + tdbfield('PROP','STREET'));
  end;

  If A('PROP').RecordsExist then begin
    WarnNarrField.Caption    := tdbfield('PROP','WARNNARR');
    PLastNameField.Caption   := tdbfield('PROP','PLASTNAME');
    ContactName.Caption      := tdbfield('PROP','FIRSTPERS') + IIf(tdbfield('PROP','PHONE') = '','',': ') + tdbfield('PROP','PHONE');
    CrossField.Caption       := tdbfield('PROP','CROSS1') + IIf(tdbfield('PROP','CROSS2') = '','',' and ') + tdbfield('PROP','CROSS2');
    UpdateField.Caption      := GetDateAsString;
    NarrField.Caption        := GetField('PROP','NARR').AsString;
    HandicapField.Caption    := GetField('PROP','HANDICAP').AsString;
    Hyd1DescField.Caption    := tdbfield('PROP','HYD1DESC');
    Hyd2DescField.Caption    := tdbfield('PROP','HYD2DESC');

    mCross := CrossField.Caption;
    Hyd1Desc := Hyd1DescField.Caption;
    Hyd2Desc := Hyd2DescField.Caption;

    Open_Query('PROPHYD',False,'SELECT HYD.STREET, HYD.STRNUM, HYD.LOCATION, HYD.CROSSSTREET FROM PROPHYD ' +
                              ' LEFT OUTER JOIN HYD ON (HYD.HYDID=PROPHYD.HYDID) WHERE ' +
                              ' PROPHYD.PROPID = '+PkValue(FPropID) + ' ORDER BY PROPHYD.SORTORD');
    If A('PROPHYD').RecordsExist then begin
      Hyd1Desc   := GetField('PROPHYD','LOCATION').AsString;
      If (Hyd1Desc = '') then
        Hyd1Desc := alltrim(alltrim(tdbfield('PROPHYD','STRNUM')) + ' ' + tdbfield('PROPHYD','STREET'));
      A('PROPHYD').Skip(1);
      if not A('PROPHYD').eof then begin
        Hyd2Desc   := GetField('PROPHYD','LOCATION').AsString;
        If (Hyd2Desc = '') then
          Hyd2Desc := alltrim(alltrim(tdbfield('PROPHYD','STRNUM')) + ' ' + tdbfield('PROPHYD','STREET'));
      end;
    end;

    CloseApollo('PROPHYD');

   // SetHydDescriptionsAndCrossForProp(GlobalAdoConnection,Hyd1Desc,Hyd2Desc,mCross,FPropID,GetField('PROP','RANGEPROPID').AsString);
    CrossField.Caption := mCross;
    if Hyd1Desc <>'' then
      Hyd1DescField.Caption   := Hyd1Desc;
    if Hyd2Desc <>'' then
      Hyd2DescField.Caption   := Hyd2Desc;



    Open_Query('PROPSTAT',false,'SELECT PROPSTAT.DATETIMEOUT, PROPSTAT.DATETIMEIN, PROPSTATTYPE.CODE CODE, PROPSTATTYPE.DESCR DESCR FROM PROPSTAT ' +
                                'LEFT JOIN PROPSTATTYPE ON (PROPSTAT.PROPSTATTYPEID = PROPSTATTYPE.PROPSTATTYPEID) ' +
                                'WHERE PROPSTAT.PROPID = ' + PKValue(FPropID) + ' ORDER BY PROPSTAT.DATETIMEOUT DESC ');

    If A('PROPSTAT').RecordsExist then begin
      If GetField('PROPSTAT','DATETIMEIN').AsDateTime > 0 then begin
        PropStatField.Caption := 'Date back in ' + GetField('PROPSTAT','DATETIMEIN').AsString + '  - ' + tdbfield('PROPSTAT','DESCR');
        PropStatField.Blink   := false;
      end else begin
        PropStatField.Caption := 'Notified on ' + GetField('PROPSTAT','DATETIMEOUT').AsString + '  - ' + tdbfield('PROPSTAT','DESCR');
        PropStatField.Blink   := true;
      end;
    end else
      PropStatField.Caption := '';
    CloseApollo('PROPSTAT');

    Open_Query('PROPHAZMAT',false,'SELECT * FROM PROPHAZMAT WHERE PROPID = ' + PKValue(FPropID) + ' ORDER BY PROPID DESC ');
    If A('PROPHAZMAT').RecordsExist then begin
      HazMatField.Caption := tdbField('PROPHAZMAT','CHEM_NAME') + '  ' + tdbField('PROPHAZMAT','LOCATION') + '  ' + tdbField('PROPHAZMAT','QUANTITY');
      HazMatField.Blink   := true;
    end else begin
      HazMatField.Caption := 'None Entered';
      HazMatField.Blink   := false;
    end;
    CloseApollo('PROPHAZMAT');

    NfirsMainCount := genfunc.SqlTableRecCount('SELECT COUNT(*) FROM NFIRSMAIN WHERE PROPID = ' + PKValue(FPropID));
    NfirsMainLabel.Visible := (NfirsMainCount > 0);
    If NfirsMainCount > 1 then
      NfirsMainLabel.Caption := IntToStr(NfirsMainCount) + ' calls'
    else if NfirsMainCount > 0 then
      NfirsMainLabel.Caption := '1 calls';

    PropHazMatCount := genfunc.SqlTableRecCount('SELECT COUNT(*) FROM PROPHAZMAT WHERE PROPID = ' + PKValue(FPropID));
    PropHazMatLabel.Visible := (PropHazMatCount> 0);
    If PropHazMatCount > 1 then
      PropHazMatLabel.Caption := IntToStr(PropHazMatCount) + ' HazMats'
    else if PropHazMatCount > 0 then
      PropHazMatLabel.Caption := '1 HazMat';

    ImagePropCount := genfunc.SqlTableRecCount('SELECT COUNT(*) FROM IMAGEPROP WHERE PROPID = ' + PKValue(FPropID));
    ImagePropLabel.Visible := (ImagePropCount> 0);
    If ImagePropCount > 1 then
      ImagePropLabel.Caption := IntToStr(ImagePropCount) + ' Siteplans'
    else if ImagePropCount > 0 then
      ImagePropLabel.Caption := '1 Siteplan';
  end;
  CloseApollo('PROP');
end;

procedure TDispPropForm.WarnNarrFieldClick(Sender: TObject);
begin
  DispMemoForm                := TDispMemoForm.Create(application);
  DispMemoForm.NarrField.Text := WarnNarrField.Caption;
  DispMemoForm.ShowModal;
  DispMemoForm.Free;
end;

procedure TDispPropForm.PropButtonClick(Sender: TObject);
begin
  RunAlpineForm(TPropForm,FPropID,'PROP',TPropForm.NewRecord);
end;

procedure TDispPropForm.PropStatButtonClick(Sender: TObject);
begin
  PropStatBrowseForm := TPropStatBrowseForm.Create(application,FPropID);
  PropStatBrowseForm.ShowModal;
  PropStatBrowseForm.Free;
end;

procedure TDispPropForm.HazMatButtonClick(Sender: TObject);
begin
  ShowDispPropHazMat(FPropID);
end;

procedure TDispPropForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TDispPropForm.DirectionButtonClick(Sender: TObject);
begin
  PropDirectSelectForm := TPropDirectSelectForm.Create(application,FPropID);
  PropDirectSelectForm.ShowModal;
  PropDirectSelectForm.Free;
end;

procedure TDispPropForm.PropSitePlanButtonClick(Sender: TObject);
begin
  ShowImages;
end;

procedure TDispPropForm.GisButtonClick(Sender: TObject);
begin
  showgis;
end;

procedure TDispPropForm.IncidentButtonClick(Sender: TObject);
begin
  ShowDispPropNfirsMain(FPropID);
end;

procedure TDispPropForm.NarrFieldClick(Sender: TObject);
begin
  DispMemoForm                := TDispMemoForm.Create(application);
  DispMemoForm.NarrField.Text := NarrField.Caption;
  DispMemoForm.ShowModal;
  DispMemoForm.Free;
end;

procedure TDispPropForm.NarrFieldMouseEnter(Sender: TObject);
begin
  (Sender as TLabel).Font.Style := [fsbold,fsunderline];
end;

procedure TDispPropForm.NarrFieldMouseLeave(Sender: TObject);
begin
  (Sender as TLabel).Font.Style := [fsbold];
end;

procedure TDispPropForm.PictometryButtonClick(Sender: TObject);
begin
  ShowPictometry;
end;



procedure TDispPropForm.FormCreate(Sender: TObject);
begin
  PictometryButton.Enabled := CheckModule('PICT');
end;

procedure TDispPropForm.FormShow(Sender: TObject);
begin
  ScaleButtonsOnPanel('H',BaseBottomPanel);
end; 

end. 
