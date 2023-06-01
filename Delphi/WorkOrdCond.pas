unit WorkOrdCond;

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
  ImgList,
  AdvToolBar,
  StdCtrls,
  GradientLabel,
  ExtCtrls,
  BorderPanel,
  OvcBase,
  OvcEF,
  OvcPB,
  OvcPF,
  OrpheusWrapper,
  MySBox,
  AlpineBase,
  htmlbtns,
  AlpineBaseCond,
  AdvPanel,
  AlpineDateTime,
  AlpineLookup,
  Grids,
  quickrpt,
  qrctrls,
  BaseGrid,
  AdvGrid,
  AdvGroupBox,
  BasePictureField,
  AlpineEdit;

type
  TWorkOrdCondForm = class(TAlpineBaseConditionForm)
    OvcController1: TOvcController;
    DatePanel: TAdvPanel;
    InitialDateLabel: TLabel;
    ReqDateStartField: TAlpineDateTime;
    ReqDateEndField: TAlpineDateTime;
    Label4: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    WOReqTypeIDField: TAlpineLookup;
    StatusPanel: TAdvPanel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    CloseDateStartField: TAlpineDateTime;
    CloseDateEndField: TAlpineDateTime;
    WOStatusIDField: TAlpineLookup;
    AssignPanel: TAdvPanel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    AssDateStartField: TAlpineDateTime;
    AssDateEndField: TAlpineDateTime;
    WOAssTypeIDField: TAlpineLookup;
    InvPanel: TAdvPanel;
    InvIDLabel: TLabel;
    InvIDField: TAlpineLookup;
    ReqPersIDField: TAlpineLookup;
    Label12: TLabel;
    AssPersIDField: TAlpineLookup;
    Label13: TLabel;
    ClosePersIDField: TAlpineLookup;
    Label14: TLabel;
    Label16: TLabel;
    RolodexIDField: TAlpineLookup;
    Label17: TLabel;
    InvTypeField: TAlpineLookup;
    INDWOSTATUSCheck: TRadioButton;
    OPENWOSTATUSCheck: TRadioButton;
    CLOSEDWOSTATUSCHECK: TRadioButton;
    Label15: TLabel;
    InvSubTypeField: TAlpineLookup;

    procedure InvIDFieldChange(Sender: TObject);
    procedure ReqPersIDFieldEnter(Sender: TObject);
    procedure InvTypeFieldExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure INDWOSTATUSCheckClick(Sender: TObject);
    procedure OPENWOSTATUSCheckClick(Sender: TObject);
    procedure CLOSEDWOSTATUSCHECKClick(Sender: TObject);
    procedure InvSubTypeFieldEnter(Sender: TObject);
    procedure InvSubTypeFieldExit(Sender: TObject);
  private
    { Private declarations }
    InvSubTypeSQLString: string;

  public
    function SqlWhereClause: String; override;
    function SelectOrder: String;
    procedure LoadInvIDField;
    class procedure PrintTitles(BandName : TQRBand);
    class function  GetWOReqTypeString: String;
    class function  GetWOStatusString: String;
    class function  GetWOAssTypeString: String;
    class function  GetInvString: String;
    class function  GetInvLabelString: String;
    class function  GetInvTypeString : String;

end;

var
  WorkOrdCondForm: TWorkOrdCondForm;


implementation

{$R *.DFM}

uses GenFunc,
     SysRep,
     SysRepMan,
     CommonFunc,
     AlpineBaseSummaryReport,
     CommonVar;

function TWorkOrdCondForm.SelectOrder: String;
Begin
  result := ' ORDER BY WORKORD.REQDATE DESC';
end;

function TWorkOrdCondForm.SqlWhereClause: String;
begin
  result := 'WHERE 1=1 ';

  If Not (InvTypeField.Value = '') then
    Result := Result + ' AND WORKORD.INVTYPE = ' + AddExpr(InvTypeField.Value);

  If Not (InvSubTypeField.Value = '') then
    Result := Result + ' AND INV.INVSUBTYPEID = ' + pkvalue(InvSubTypeField.Value);

  If AnyStrToInt(InvIDField.Value) > 0 then begin
    If InvTypeField.Value = 'PERS' then
      Result := Result + ' AND WORKORD.PERSID = ' + InvIDField.Value
    else if InvTypeField.Value = 'HYD' then
      Result := Result + ' AND WORKORD.HYDID = ' + InvIDField.Value
    else
      Result := Result + ' AND WORKORD.INVID = ' + InvIDField.Value;
  end;

  If BuildSQLAlpineDate('WORKORD.REQDATE',ReqDateStartField.Value,ReqDateEndField.Value) <> '' then
    result := Result + ' AND ' + BuildSQLAlpineDate('WORKORD.REQDATE',ReqDateStartField.Value,ReqDateEndField.Value);
  If AnyStrToInt(WOReqTypeIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.WOREQTYPEID = ' + WOReqTypeIDField.Value;
  If AnyStrToInt(ReqPersIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.REQPERSID = ' + ReqPersIDField.Value;
  If BuildSQLAlpineDate('WORKORD.ASSDATE',AssDateStartField.Value,AssDateEndField.Value) <> '' then
    result := Result + ' AND ' + BuildSQLAlpineDate('WORKORD.ASSDATE',AssDateStartField.Value,AssDateEndField.Value);
  If AnyStrToInt(WOAssTypeIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.WOASSTYPEID = ' + WOAssTypeIDField.Value;
  If AnyStrToInt(AssPersIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.ASSPERSID = ' + AssPersIDField.Value;
  If BuildSQLAlpineDate('WORKORD.CLOSEDATE',CloseDateStartField.Value,CloseDateEndField.Value) <> '' then
    result := Result + ' AND ' + BuildSQLAlpineDate('WORKORD.CLOSEDATE',CloseDateStartField.Value,CloseDateEndField.Value);
  If AnyStrToInt(WOStatusIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.WOSTATUSID = ' + WOStatusIDField.Value;
  If AnyStrToInt(ClosePersIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.CLOSEPERSID = ' + ClosePersIDField.Value;
  If AnyStrToInt(RolodexIDField.Value) > 0 then
    Result := Result + ' AND WORKORD.ROLODEXID = ' + RolodexIDField.Value;

  If OPENWOSTATUSCheck.Checked then
    Result := Result + ' AND WOSTATUS.OPENWO = ' + AddExpr('Y');
  If CLOSEDWOSTATUSCheck.Checked then
    Result := Result + ' AND WOSTATUS.OPENWO = ' + AddExpr('N');
end;

procedure TWorkOrdCondForm.INDWOSTATUSCheckClick(Sender: TObject);
begin
  If INDWOSTATUSCheck.Checked then begin
    WOStatusIDField.Enabled  := true;
  end;
end;

procedure TWorkOrdCondForm.InvIDFieldChange(Sender: TObject);
begin
  SysRepManForm.EnableSaveButton(Self);
end;

procedure TWorkOrdCondForm.InvSubTypeFieldEnter(Sender: TObject);
begin
  InvSubTypeField.SqlExpr := 'SELECT * FROM INVSUBTYPE WHERE TYPE = ' + AddExpr(InvTypeField.Value) + ' ORDER BY CODE';
end;

procedure TWorkOrdCondForm.InvSubTypeFieldExit(Sender: TObject);
begin
  if not (InvSubTypeField.Value = '') then
    InvSubTypeSQLString := ' AND INVSUBTYPEID = ' + pkvalue(InvSubTypeField.Value);
  LoadInvIDField;
end;

procedure TWorkOrdCondForm.InvTypeFieldExit(Sender: TObject);
begin
  InvSubTypeSQLString := '';
  LoadInvIDField;
  If InvTypeField.Value = '' then begin
    InvIDField.Enabled := false;
    InvIDField.Value   := '';
  end else begin
    InvIDField.Enabled := true;
  end;
end;

procedure TWorkOrdCondForm.LoadInvIDField;
begin
  If InvTypeField.Value = 'TRUCK' then begin
    InvIDField.LookUpCode           := 'UNITNUMINVNUM';
    InvIDField.DisplayField         := 'UNITNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, UNITNUM, TYPE, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('TRUCK') + InvSubTypeSQLString + ' ORDER BY UNITNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Unit Number';
    
  end else if InvTypeField.Value = 'GEN' then begin
    InvIDField.LookUpCode           := 'INV';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('GEN') + InvSubTypeSQLString +  ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Inventory Number';

  end else if InvTypeField.Value = 'HOSE' then begin
    InvIDField.LookUpCode           := 'INV';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('HOSE') + InvSubTypeSQLString + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Hose Number';

  end else if InvTypeField.Value = 'SCBA' then begin
    InvIDField.LookUpCode           := 'INV';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('SCBA') + InvSubTypeSQLString + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'SCBA Number';

  end else if InvTypeField.Value = 'STATION' then begin
    InvIDField.LookUpCode           := 'INV';
    InvIDField.DisplayField         := 'INVNUM';
    InvIDField.SQLExpr              := 'SELECT INVID, INVNUM, INVLOCFULLDESCR, DESCR FROM VWINV WHERE TYPE = ' + AddExpr('STATION') + InvSubTypeSQLString + ' ORDER BY INVNUM';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'INVID';
    InvIDField.ReferencingTable     := 'INV';
    InvIDField.ReturnField          := 'DESCR';
    InvIDLabel.Caption              := 'Station Number';

  end else if InvTypeField.Value = 'PERS' then begin
    InvIDField.LookUpCode           := 'PERS';
    InvIDField.DisplayField         := 'PERSCODE';
    InvIDField.SQLExpr              := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + InvSubTypeSQLString + ' ORDER BY LNAME, FNAME';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'PERSID';
    InvIDField.ReferencingTable     := 'PERS';
    InvIDField.ReturnField          := 'LNAME';
    InvIDLabel.Caption              := 'Staff Number';
    
  end else if InvTypeField.Value = 'HYD' then begin
    InvIDField.LookUpCode           := 'HYD';
    InvIDField.DisplayField         := 'HYDCODE';
    InvIDField.SQLExpr              := 'SELECT HYDID, STRNUM, STREET, HYDCODE, LOCATION FROM HYD ORDER BY HYDCODE';
    InvIDField.DataFieldIsCharacter := false;
    InvIDField.ReferencingField     := 'HYDID';
    InvIDField.ReferencingTable     := 'HYD';
    InvIDField.ReturnField          := 'LOCATION';
    InvIDLabel.Caption              := 'Hydrant Number';

  end;
end;

procedure TWorkOrdCondForm.OPENWOSTATUSCheckClick(Sender: TObject);
begin
  If OPENWOSTATUSCheck.Checked then begin
    WOStatusIDField.Value    := '';
    WOStatusIDField.Enabled  := false;
  end else
    WOStatusIDField.Enabled  := true;
end;

procedure TWorkOrdCondForm.ReqPersIDFieldEnter(Sender: TObject);
begin
  (sender as TAlpineLookup).SQLExpr := 'SELECT PERSCODE, PERSID, LNAME, FNAME, MNAME FROM PERS WHERE ATTEND = ' + AddExpr('Y') + ' ORDER BY LNAME, FNAME';
end;

procedure TWorkOrdCondForm.CLOSEDWOSTATUSCHECKClick(Sender: TObject);
begin
  If CLOSEDWOSTATUSCHECK.Checked then begin
    WOStatusIDField.Value    := '';
    WOStatusIDField.Enabled  := false;
  end else
    WOStatusIDField.Enabled  := true;
end;

procedure TWorkOrdCondForm.FormShow(Sender: TObject);
begin
  InvIDField.Enabled := false;

  If INDWOSTATUSCheck.Checked then begin
    WOStatusIDField.Enabled  := true;
  end else if (OPENWOSTATUSCheck.Checked) or (CLOSEDWOSTATUSCheck.Checked) then begin
    WOStatusIDField.Enabled  := true;
  end;
end;

class function TWorkOrdCondForm.GetInvString: String;
Var Form  : TForm;
    InvID : String;
begin
  Form  := GetFormOfType(TWorkOrdCondForm);
  InvID := TWorkOrdCondForm(Form).InvIDField.Value;
  If InvID = '' then
    GetInvString := ''
  else begin
    If TWorkOrdCondForm(Form).InvTypeField.Value = 'TRUCK' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','UNITNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'INV' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','INVNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'HOSE' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','INVNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'SCBA' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','INVNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'SCBA' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','INVNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'STATION' then
      GetInvString := SQLLookUp(InvID,'INVID','INV','INVNUM')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'PERS' then
      GetInvString := SQLLookUp(InvID,'PERSID','PERS','PERSCODE')
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'HYD' then
      GetInvString := SQLLookUp(InvID,'HYDID','HYD','HYDCODE');
  end;
end;

class function TWorkOrdCondForm.GetInvLabelString: String;
Var Form  : TForm;
    InvID : String;
begin
  Form  := GetFormOfType(TWorkOrdCondForm);
  InvID := TWorkOrdCondForm(Form).InvIDField.Value;
  If InvID = '' then
    GetInvLabelString := ''
  else begin
    If TWorkOrdCondForm(Form).InvTypeField.Value = 'TRUCK' then
      GetInvLabelString := 'Apparatus:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'INV' then
      GetInvLabelString := 'Inventory Number:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'HOSE' then
      GetInvLabelString := 'Hose Number:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'SCBA' then
      GetInvLabelString := 'SCBA Number:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'STATION' then
      GetInvLabelString := 'Station:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'PERS' then
      GetInvLabelString := 'Staff:'
    else if TWorkOrdCondForm(Form).InvTypeField.Value = 'HYD' then
      GetInvLabelString := 'Hydrant Number:';
  end;
end;

class function TWorkOrdCondForm.GetWOReqTypeString: String;
Var Form        : TForm;
    WOReqTypeID : String;
begin
  Form        := GetFormOfType(TWorkOrdCondForm);
  WOReqTypeID := TWorkOrdCondForm(Form).WOReqTypeIDField.Value;
  If WOReqTypeID = '' then
    GetWOReqTypeString := ''
  else
    GetWOReqTypeString := SQLLookUp(WOReqTypeID,'WOREQTYPEID','WOREQTYPE','DESCR');
end;

class function TWorkOrdCondForm.GetWOStatusString: String;
Var Form        : TForm;
    WOStatusID : String;
begin
  Form        := GetFormOfType(TWorkOrdCondForm);
  WOStatusID  := TWorkOrdCondForm(Form).WOStatusIDField.Value;
  If WOStatusID = '' then
    GetWOStatusString := ''
  else
    GetWOStatusString := SQLLookUp(WOStatusID,'WOSTATUSID','WOSTATUS','DESCR');
end;

class function TWorkOrdCondForm.GetWOAssTypeString: String;
Var Form        : TForm;
    WOAssTypeID : String;
begin
  Form        := GetFormOfType(TWorkOrdCondForm);
  WOAssTypeID := TWorkOrdCondForm(Form).WOAssTypeIDField.Value;
  If WOAssTypeID = '' then
    GetWOAssTypeString := ''
  else
    GetWOAssTypeString := SQLLookUp(WOAssTypeID,'WOASSTYPEID','WOASSTYPE','DESCR');
end;

class function TWorkOrdCondForm.GetInvTypeString : String;
Var Form    : TForm;
    InvType : String;
begin
  Form    := GetFormOfType(TWorkOrdCondForm);
  InvType := TWorkOrdCondForm(Form).InvTypeField.Value;
  If InvType = '' then
    GetInvTypeString := ''
  else
    GetInvTypeString := SQLLookUp(InvType,'CODE','WOINVTYPE','DESCR');
end;

class procedure TWorkOrdCondForm.PrintTitles(BandName : TQRBand);
Var ConditionLabelList : TStringList;
    ConditionFieldList : TStringList;
    ConditionLabel     : TQRLabel;
    ConditionField     : TQRLabel;
    Form               : TForm;
    RowNum             : Integer;
    InvTypeString      : String;
    InvIDString        : String;
    InvLabelString     : String;
    WOReqTypeIDString  : String;
    ReqDateString      : String;
    WOStatusString     : String;
    WOAssTypeString    : String;
    AssDateString      : String;
    InvString          : String;
    RolodexString      : String;
    CloseDateString    : String;
begin
  Form               := GetFormOfType(TWorkOrdCondForm);
  InvTypeString      := GetInvTypeString;
  InvString          := GetInvString;
  InvLabelString     := GetInvLabelString;
  WOReqTypeIDString  := GetWOReqTypeString;
  ReqDateString      := GetAlpineDateLabel(TWorkOrdCondForm(Form).ReqDateStartField.Value,TWorkOrdCondForm(Form).ReqDateEndField.Value);
  WOStatusString     := GetWOStatusString;
  WOAssTypeString    := GetWOAssTypeString;
  AssDateString      := GetAlpineDateLabel(TWorkOrdCondForm(Form).AssDateStartField.Value,TWorkOrdCondForm(Form).AssDateEndField.Value);
  RolodexString      := SQLLookUp(TWorkOrdCondForm(Form).RolodexIDField.Value,'ROLODEXID','ROLODEX','COMPANY');
  CloseDateString    := GetAlpineDateLabel(TWorkOrdCondForm(Form).CloseDateStartField.Value,TWorkOrdCondForm(Form).CloseDateEndField.Value);

  ConditionLabelList := TStringList.Create;
  ConditionFieldList := TStringList.Create;

  If Not (InvTypeString = '') then begin
    ConditionLabelList.Add('Primary Type:');
    ConditionFieldList.Add(InvTypeString);
  end;

  If Not (InvString = '') then begin
    ConditionLabelList.Add(InvLabelString);
    ConditionFieldList.Add(InvString);
  end;

  If Not (WOReqTypeIDString = '') then begin
    ConditionLabelList.Add('Request Type:');
    ConditionFieldList.Add(WOReqTypeIDString);
  end;

  If Not (ReqDateString = '') then begin
    ConditionLabelList.Add('Request Date:');
    ConditionFieldList.Add(ReqDateString);
  end;

  If Not (WOAssTypeString = '') then begin
    ConditionLabelList.Add('Assigned Status:');
    ConditionFieldList.Add(WOAssTypeString);
  end;

  If Not (RolodexString = '') then begin
    ConditionLabelList.Add('Assigned To:');
    ConditionFieldList.Add(RolodexString);
  end;

  If Not (AssDateString = '') then begin
    ConditionLabelList.Add('Assigned Date:');
    ConditionFieldList.Add(AssDateString);
  end;

  If Not (WOStatusString = '') then begin
    ConditionLabelList.Add('Status:');
    ConditionFieldList.Add(WOStatusString);
  end;

  If Not (CloseDateString = '') then begin
    ConditionLabelList.Add('Close Date:');
    ConditionFieldList.Add(CloseDateString);
  end;

  For RowNum := 0 to ConditionLabelList.Count-1 do begin
    ConditionLabel             := TQRLabel.Create(Application);
    ConditionLabel.AutoSize    := false;
    ConditionLabel.Top         := 2 + (RowNum * 16);
    ConditionLabel.Left        := 400;
    ConditionLabel.Width       := 100;
    ConditionLabel.Parent      := BandName;
    ConditionLabel.Caption     := ConditionLabelList[RowNum];
    ConditionLabel.Alignment   := taRightJustify;
    ConditionLabel.Font.Size   := 8;
    ConditionLabel.Font.Name   := 'MS Sans Serif';
    ConditionLabel.Font.style  := [fsbold];
    ConditionLabel.Transparent := true;

    ConditionField             := TQRLabel.Create(Application);
    ConditionField.AutoSize    := false;
    ConditionField.Top         := 2 + (RowNum * 16);
    ConditionField.Left        := 504;
    ConditionField.Width       := 250;
    ConditionField.Parent      := BandName;
    ConditionField.Caption     := ConditionFieldList[RowNum];
    ConditionField.Alignment   := taLeftJustify;
    ConditionField.Font.Size   := 8;
    ConditionField.Font.Name   := 'MS Sans Serif';
    ConditionField.Font.Style  := [];
    ConditionField.Transparent := true;
  end;
  BandName.Height := IMax(BandName.Height,17 * ConditionFieldList.Count);
end;

end.  
