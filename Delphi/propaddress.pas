unit propaddress;

interface
 
uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Commonvar,
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
  Normalbase,
  AlpineMemo,
  AdvGroupBox,
  AlpineBlockBrowse;

type
  TPropAddressForm = class(TBaseSubTabForm)

    OvcController1: TOvcController;
    AlpinePanel3: TAlpinePanel;
    FIRSTPERSLabel: TLabel;
    ophonelabel: TLabel;
    OLASTNAMELabel: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    FIRSTPERSfield: TAlpineEdit;
    OPhoneField: TAlpineEdit;
    OLastNameField: TAlpineEdit;
    OAddressField: TAlpineEdit;
    CityField: TAlpineLookup;
    StateField: TAlpineEdit;
    ZipField: TAlpineEdit;
    Panel1: TPanel;
    HydNarrPanel: TAlpinePanel;
    Label2: TLabel;
    StrNumLabel: TLabel;
    Label11: TLabel;
    OccupantLabel: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label35: TLabel;
    RangePropIDDescr: TLabel;
    Label26: TLabel;
    Label1: TLabel;
    phonelabel: TLabel;
    FaxLabel: TLabel;
    StrNumField: TAlpineEdit;
    AlpineEdit6: TAlpineEdit;
    pLastNameField: TAlpineEdit;
    RangePropIDField: TAlpineLookup;
    StreetField: TAlpineLookup;
    PropSubTypeIDField: TAlpineLookup;
    Cross1Field: TAlpineLookup;
    cross2field: TAlpineLookup;
    KnoxBoxLocField: TAlpineEdit;
    FaxField: TAlpineEdit;
    EmailLabel: TLabel;
    EmailField: TAlpineEdit;
    Panel2: TPanel;
    AlpinePanel2: TAlpinePanel;
    AlpineMemo3: TAlpineMemo;
    AlpinePanel1: TAlpinePanel;
    AlpineMemo2: TAlpineMemo;
    Label7: TLabel;
    EMAIL2field: TAlpineEdit;
    Label8: TLabel;
    Label9: TLabel;
    AlpineEdit7: TAlpineEdit;
    PhoneField: TAlpineEdit;
    Label10: TLabel;
    OFirstNameField: TAlpineEdit;
    OAddress2Field: TAlpineEdit;
    Label13: TLabel;
    BuildingLabel: TLabel;
    BuildingField: TAlpineEdit;
    Label3: TLabel;
    CensusField: TAlpineEdit;
    ParentChildPanel: TPanel;
    ParentPanel: TAlpinePanel;
    Label31: TLabel;
    ParentPropIDLabel: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DispE911Label: TLabel;
    ParentPropField: TAlpineCheckBox;
    ParentPropIDField: TAlpineLookup;
    ParentPropNameField: TAlpineEdit;
    ParentPropAddrField: TAlpineEdit;
    DispE911Field: TAlpineCheckBox;
    PropChildBrowse: TAlpineBlockBrowse;
    procedure RangePropIDFieldEnter(Sender: TObject);
    procedure RangePropIDFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CityFieldAfterLookup(Sender: TAlpineLookupForm);
    procedure ParentPropIDFieldEnter(Sender: TObject);
    procedure ParentPropIDFieldExit(Sender: TObject);
    procedure HydNarrPanelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PropAddressForm: TPropAddressForm;

implementation
uses GenFunc,
     AppLst,
     CommonFunc,
     SecField,
     SecSet,
     SortGridView,
     Prop;
     
{$R *.dfm}

procedure TPropAddressForm.RangePropIDFieldEnter(Sender: TObject);
var FLocalPropForm: TPropForm;
begin
  FLocalPropForm := TPropForm(GetFormOfType(TPropForm));
  if FLocalPropForm <> nil then
     RangePropIDField.SQLExpr := 'SELECT ODDEVEN, STREET, LOWERSTRNUM, PROPID,UPPERSTRNUM, CITY FROM PROP WHERE PROPTYPEID = ' + PkValue(PropRange) + ' AND CITY = ' + AddExpr(FLocalPropForm.CityField.Text) +  ' ORDER BY STREET, LOWERSTRNUM, CITY';
end;

procedure TPropAddressForm.RangePropIDFieldExit(Sender: TObject);
begin
  RangePropIDDescr.Caption := '';
  Cross1Field.Enabled      := StrNumField.Enabled;
  Cross2Field.Enabled      := StrNumField.Enabled;
  If AnyStrToInt(RangePropIDField.Value) > 0 then begin
    Open_Query('RANGEPROP',false,'SELECT STREET, LOWERSTRNUM, UPPERSTRNUM, CITY FROM PROP WHERE PROPID = ' + RangePropIDField.Value);
    If A('RANGEPROP').RecordsExist then begin
      RangePropIDDescr.Caption := 'Address range from ' + GetField('RANGEPROP','LOWERSTRNUM').AsString + ' to ' + GetField('RANGEPROP','UPPERSTRNUM').AsString  + ' ' + tdbfield('RANGEPROP','STREET') + ' for the town/city of ' + tdbfield('RANGEPROP','CITY');
      Cross1Field.Enabled      := false;
      Cross2Field.Enabled      := false;
    end;
    CloseApollo('RANGEPROP');
  end;
end;

procedure TPropAddressForm.CityFieldAfterLookup(Sender: TAlpineLookupForm);
begin
  Open_Query('CITY',false,'SELECT CITY, STATE, ZIP FROM CITY WHERE CITYID = ' + PkValue(Sender.Grid.GetValue('CITYID')) );
  StateField.Text  := GetField('CITY','STATE').AsString;
  ZipField.Text    := GetField('CITY','ZIP').AsString;
  CloseApollo('CITY');
end;

procedure TPropAddressForm.FormShow(Sender: TObject);
begin
  RangePropIDFieldExit(self);
  ParentChildPanel.Visible    := (mFireID = '12345') or (mFireID = '21099') or (mFireID = '02190');
  PropChildBrowse.Visible     := ParentPropField.checked;

  If PropChildBrowse.Visible then begin
    PropChildBrowse.ExplicitWhereClause := ' WHERE PROP.PARENTPROPID = ' + PK;
    PropChildBrowse.Setup('PROPCHILD');
  end;

  ParentPropIDFieldExit(self);
  ParentPropAddrField.Enabled := false;
  ParentPropNameField.Enabled := false;
  DispE911Label.Visible       := (mFireID = '12345');
  DispE911Field.Visible       := (mFireID = '12345');
  BuildingField.Visible       := (mFireID = 'SEMRE') or (mFireID = '21099') or (mFireID = '05167');
  BuildingLabel.Visible       := (mFireID = 'SEMRE') or (mFireID = '21099') or (mFireID = '05167');
  If not BuildingField.Visible then
    BuildingField.datafield := '';
  If mfireid = '01922' then begin
    OccupantLabel.caption := 'Occupant Name';
    FIRSTPERSField.visible := false;
    FIRSTPERSLabel.visible := false;
    OPhoneField.visible := false;
    ophonelabel.visible := false;
    OLASTNAMELabel.caption := 'Owner/Company';
  end;  
end;

procedure TPropAddressForm.HydNarrPanelClick(Sender: TObject);
begin
  if not (mfireid = '07030') then begin
    StreetField.Value    := UpperCase(StreetField.Value);
    pLastNameField.Value := UpperCase(pLastNameField.Value);
    Cross1Field.Value    := UpperCase(Cross1Field.Value);
    Cross2Field.Value    := UpperCase(Cross2Field.Value);
  end;
end;

procedure TPropAddressForm.ParentPropIDFieldEnter(Sender: TObject);
begin
  ParentPropIDField.SQLExpr := 'SELECT STRNUM, PROPID, STREET, ROOMAPT FROM PROP WHERE PROPTYPEID = ' + PkValue(CommonVar.PropAddr) + ' AND STREET = ' + AddExpr(StreetField.Value) + ' AND PARENTPROP = ' + AddExpr('Y') + ' ORDER BY STREET, STRNUM';
end;

procedure TPropAddressForm.ParentPropIDFieldExit(Sender: TObject);
begin
  Open_Query('GETPROP',false,'SELECT STRNUM, STREET, PLASTNAME FROM PROP WHERE PROPID = ' + pkValue(ParentPropIDField.Value));
  If A('GETPROP').RecordsExist then begin
    ParentPropAddrField.Value := tdbfield('GETPROP','STRNUM') + ' ' + tdbfield('GETPROP','STREET');
    ParentPropNameField.Value := tdbfield('GETPROP','PLASTNAME');
  end;
  CloseApollo('GETPROP');  
end;

end. 
