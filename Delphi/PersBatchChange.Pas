unit PersBatchChange;

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
  AdvGroupBox,
  AdvObj,
  AlpineDateTime;

type
  TPersBatchChangeForm = class(TAlpineBaseForm)
    BottomPanel: TAdvPanel;
    Gauge: TGauge;
    CloseButton: TAlpineGlowButton;
    Panel1: TPanel;
    PersBrowse: TAlpineTMSStringGrid;
    TagButton: TAlpineGlowButton;
    LoadButton: TAlpineGlowButton;
    UnTagButton: TAlpineGlowButton;
    AdvPanel5: TAdvPanel;
    PersTitleLabel: TLabel;
    PersNumLabel: TLabel;
    TitleImage: TImage;
    OvcController1: TOvcController;
    Label1: TLabel;
    Label3: TLabel;
    ProcessButton: TAlpineGlowButton;
    FieldNameField: TAlpineLookup;
    PersCntField: TLabel;
    FieldNameValue: TMemo;
    PersTypeIDLabel: TLabel;
    PersTypeIDField: TAlpineLookup;
    PersTypeDesc: TLabel;
    Label6: TLabel;
    PersStatIDField: TAlpineLookup;
    PersStatDesc: TLabel;
    Label21: TLabel;
    PersRankIDField: TAlpineLookup;
    PersRankIDDescr: TLabel;
    FdidLabel: TLabel;
    FdidDesc: TLabel;
    FdidField: TAlpineLookup;
    DateField: TAlpineDateTime;
    Label2: TLabel;
    FieldTypeField: TAlpineLookup;
    procedure CloseButtonClick(Sender: TObject);
    procedure LoadButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FieldNameFieldEnter(Sender: TObject);
    procedure TagButtonClick(Sender: TObject);
    procedure UnTagButtonClick(Sender: TObject);
    procedure FieldNameValueChange(Sender: TObject);
    procedure ProcessButtonClick(Sender: TObject);
    procedure PersBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
    procedure FieldNameFieldExit(Sender: TObject);
  private
    { Private declarations }
    SysTableID : String;
    procedure LoadPersBrowse;
    procedure ResetPersBrowse;
  public
    { Public declarations }
  end;

var
  PersBatchChangeForm: TPersBatchChangeForm;

implementation
uses GenFunc,
     ADODB,
     CommonFunc,
     FormFunc,
     CommonVar,
     AlpineBaseSummaryReport;

{$R *.DFM}

procedure TPersBatchChangeForm.CloseButtonClick(Sender: TObject);
begin
  close;
end;

procedure TPersBatchChangeForm.FieldNameFieldEnter(Sender: TObject);
begin
  FieldNameField.SQLExpr := 'SELECT SYSFIELDID, FIELDNAME, DESCR, OWNER, FIELDTYPE FROM SYSFIELD WHERE SYSTABLEID = ' + pkValue(SysTableId) + ' AND (OWNER = ' + AddExpr('ALPINE') + ' OR OWNER = ' + AddExpr(ASCFdid) + ')';
end;

procedure TPersBatchChangeForm.FieldNameFieldExit(Sender: TObject);
Var FieldType : String;
    SQLVar    : String;
begin
  SQLVar               := 'SELECT FIELDTYPE FROM SYSFIELD WHERE SYSTABLEID = ' + pkValue(SysTableID) + ' AND FIELDNAME = ' + AddExpr(FieldNameField.Value);
  Open_Query('SYSFIELD',false,SQLVar);
  FieldType            := tdbfield('SYSFIELD','FIELDTYPE');
  FieldTypeField.Value := FieldType;
  If FieldType = 'D' then begin
    DateField.Visible      := true;
    FieldNameValue.Visible := false;
    DateField.Left         := 381;
    DateField.Top          := 51;
  end else begin
    DateField.Visible      := false;
    FieldNameValue.Visible := true;
    FieldNameValue.Left    := 381;
    FieldNameValue.Top     := 51;
  end;
  CloseApollo('SYSFIELD');
end;

procedure TPersBatchChangeForm.FieldNameValueChange(Sender: TObject);
begin
  LoadButton.Enabled    := Not (FieldNameField.Value = '') and Not (FieldNameField.Value = '');
  ProcessButton.Enabled := Not (FieldNameField.Value = '');
end;

procedure TPersBatchChangeForm.FormShow(Sender: TObject);
begin
  SysTableID              := SQLLookUp('PERS','TABLENAME','SYSTABLE','SYSTABLEID');
  FieldNameValue.Text     := '';
  TitleImage.Picture.Icon := GetGlowImageIcon('PERSONNEL32');
  ResetPersBrowse;
end;

procedure TPersBatchChangeForm.LoadButtonClick(Sender: TObject);
begin
  ResetPersBrowse;
  LoadPersBrowse;
end;

procedure TPersBatchChangeForm.ResetPersBrowse;
begin
  PersBrowse.Clear;
  PersBrowse.ColCount := 0;
  PersBrowse.RowCount := 0;
  PersBrowse.ClearColumns;

  PersBrowse.FixedRowAlways := true;
  PersBrowse.RowCount       := PersBrowse.FixedRows;

  PersBrowse.SetColumn('PERSID',        '',                  001);
  PersBrowse.SetColumn('CHECKBOX',      '',                  020);
  PersBrowse.SetColumn('PERSCODE',      'Staff#',            070);
  PersBrowse.SetColumn('LNAME',         'Last Name',         150);
  PersBrowse.SetColumn('FNAME',         'First Name',        150);
  PersBrowse.SetColumn('BATCHFIELDNAME',FieldNameField.Value,200);
  PersBrowse.SetColumn('SPACE',         '',                  500);
  PersBrowse.ControlLook.NoDisabledCheckRadioLook := True;
end;

procedure TPersBatchChangeForm.LoadPersBrowse;
Var WhereString : String;
begin
  ResetPersBrowse;

  WhereString := 'WHERE (1=1)';
  If Not (FDIDField.Value = '') then
    WhereString := WhereString + ' AND FDID = ' + pkvalue(FDIDField.Value);
  If Not (PersTypeIDField.Value = '') then
    WhereString := WhereString + ' AND PERSTYPEID = ' + pkvalue(PersTypeIDField.Value);
  If Not (PersStatIDField.Value = '') then
    WhereString := WhereString + ' AND PERSSTATID = ' + pkvalue(PersStatIDField.Value);
  If Not (PersRankIDField.Value = '') then
    WhereString := WhereString + ' AND PERRANKTID = ' + pkvalue(PersRankIDField.Value);

  Open_Query('PERS',false,'SELECT PERSID, PERSCODE, LNAME, FNAME, ' + FieldNameField.Value + ' BATCHFIELDNAME FROM PERS ' + WhereString + ' ORDER BY PERSCODE');

  While not A('PERS').Eof do begin
    PersBrowse.SetValue('PERSID',        Getfield('PERS','PERSID').AsString);
    PersBrowse.AddCheckBox(1,Persbrowse.rowcount-1,false,false);
    PersBrowse.SetValue('PERSCODE',      Getfield('PERS','PERSCODE').AsString);
    PersBrowse.SetValue('LNAME',         Getfield('PERS','LNAME').AsString);
    PersBrowse.SetValue('FNAME',         Getfield('PERS','FNAME').AsString);
    If FieldTypeField.Value = 'D' then
      PersBrowse.SetValue('BATCHFIELDNAME',AlpineFormatDateTime('MM/DD/YYYY',GetField('PERS','BATCHFIELDNAME').AsDateTime))
    else
      PersBrowse.SetValue('BATCHFIELDNAME',tdbfield('PERS','BATCHFIELDNAME'));
    A('PERS').Skip(1);
  end;
  CloseApollo('PERS');
end;

procedure TPersBatchChangeForm.ProcessButtonClick(Sender: TObject);
Var RowNum     : Integer;
    CheckValue : Boolean;
    PersID     : String;
    SQLVar     : String;
    Continue  : Boolean;
begin
  If FieldNameValue.Text = '' then
    Continue := BooleanMessageDlg('Are you sure you want to NULL out field ' + FieldNameField.Value +' for all tagged records for ?')
  else
    Continue := BooleanMessageDlg('Are you sure you want to change field ' + FieldNameField.Value + ' to ' + FieldNameValue.Text + ' for all tagged records for ?');

  If Continue  then begin
    For RowNum := 1 to PersBrowse.RowCount-1 do begin
      PersBrowse.GetCheckBoxState(1,RowNum,CheckValue);
      If CheckValue then begin
        PersID := PersBrowse.GetValue('PERSID',RowNum);
        If FieldTypeField.Value = 'D' then begin
          SQLVar := 'UPDATE PERS SET ' + FieldNameField.Value + ' = ' + FormatDateTimeForSQL(DateField.Value) + ' WHERE PERSID = ' + pkValue(PersID);
          RunSQL(SQLVar);
          PersBrowse.SetValue('BATCHFIELDNAME',RowNum,AlpineFormatDateTime('MM/DD/YYYY',DateField.Value));
        end else begin
          SQLVar := 'UPDATE PERS SET ' + FieldNameField.Value + ' = ' + AddExpr(FieldNameValue.Text) + ' WHERE PERSID = ' + pkValue(PersID);
          RunSQL(SQLVar);
          PersBrowse.SetValue('BATCHFIELDNAME',RowNum,FieldNameValue.Text);
        end;
        PersBrowse.AddCheckBox(1,RowNum,false,false);
      end;
    end;
  end;
  PersCntField.Caption := 'No Personnel Tagged';
end;

procedure TPersBatchChangeForm.PersBrowseCheckBoxClick(Sender: TObject; ACol, ARow: Integer; State: Boolean);
Var RowNum     : Integer;
    CheckValue : Boolean;
    PersCntVar : Integer;
begin
  PersCntVar := 0;
  For RowNum := 1 to PersBrowse.RowCount-1 do begin
    PersBrowse.GetCheckBoxState(1,RowNum,CheckValue);
    If CheckValue then
      PersCntVar := PersCntVar + 1;
  end;
  
  If PersCntVar > 0 then begin
    PersCntField.Caption  := FormatFloat('##,##0',PersCntVar) + ' Personnel Tagged.';
    ProcessButton.Enabled := true;
  end else begin
    PersCntField.Caption  := 'No Personnel Tagged.';
    ProcessButton.Enabled := false;
  end;  
end;

procedure TPersBatchChangeForm.TagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  For RowNum := 1 to PersBrowse.RowCount-1 do begin
    PersBrowse.AddCheckBox(1,RowNum,true,false);
  end;
end;

procedure TPersBatchChangeForm.UnTagButtonClick(Sender: TObject);
Var RowNum : Integer;
begin
  For RowNum := 1 to PersBrowse.RowCount-1 do begin
    PersBrowse.AddCheckBox(1,RowNum,false,false);
  end;
end;

end.
