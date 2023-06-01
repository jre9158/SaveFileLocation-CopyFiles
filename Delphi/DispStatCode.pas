unit DispStatCode;

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
  AdvGlowButton,
  AlpineGlowButton,
  alpinecheck,
  htmlbtns,
  ComCtrls,
  Grids,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid, AdvObj;

type
  TDispStatCodeForm = class(TNormalBaseForm)
    PageControl: TPageControl;
    GenTab: TTabSheet;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PAGEField: TAlpineCheckBox;
    RUNCARDField: TAlpineCheckBox;
    ENDCARDField: TAlpineCheckBox;
    DAILYLOGField: TAlpineCheckBox;
    InServiceField: TAlpineCheckBox;
    PageStatTab: TTabSheet;
    PageStatBrowse: TAlpineTMSStringGrid;
    MobDisp: TPanel;
    Label12: TLabel;
    MobIncludeField: TAlpineCheckBox;
    Label13: TLabel;
    MobUnitField: TAlpineCheckBox;
    Label14: TLabel;
    MobAllField: TAlpineCheckBox;
    AlpineEdit2: TAlpineEdit;
    MyDBEdit1: TAlpineEdit;
    AlpineEdit9: TAlpineEdit;
    ColorField: TAlpineEdit;
    MyDBEdit2: TAlpineEdit;
    TruckOrAlarm: TAlpineEdit;
    Label15: TLabel;
    Label16: TLabel;
    OOSField: TAlpineCheckBox;
    Label17: TLabel;
    PromptEntryField: TAlpineCheckBox;
    PrompEntryLabel: TLabel;
    Label18: TLabel;
    AlpineEdit3: TAlpineEdit;
    Label19: TLabel;
    Label20: TLabel;
    AlpineCheckBox1: TAlpineCheckBox;
    BackColorButton: TAlpineGlowButton;
    ColorDialog: TColorDialog;
    Label21: TLabel;
    AlpineCheckBox2: TAlpineCheckBox;
    Label22: TLabel;
    OpenKioskLabel: TLabel;
    OpenKioskCheckBox: TAlpineCheckBox;
    Label23: TLabel;
    CloseKioskCheckbox: TAlpineCheckBox;
    TriggerKioskCloseLabel: TLabel;
    TriggerKioskCloseDescrLabel: TLabel;
    KioskStatCodeTimeOutField: TAlpineEdit;
    KioskClosePanel: TPanel;
    MainPanel: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure PageStatTabShow(Sender: TObject);
    procedure PageStatBrowseDblClick(Sender: TObject);
    procedure PAGEFieldClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BackColorButtonClick(Sender: TObject);
    procedure GenTabShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure NewRecord(DataSet: TDataSet);
  end;
var
  DispStatCodeForm: TDispStatCodeForm;

implementation
uses GenFunc;
{$R *.DFM}

class procedure TDispStatCodeForm.NewRecord(DataSet: TDataSet);
begin
  DataSet.FieldByname('CODE').AsString     := ' ';
  DataSet.FieldByname('SORTORD').AsInteger := 0;
end;

procedure TDispStatCodeForm.BackColorButtonClick(Sender: TObject);
begin
  inherited;
  If ColorDialog.Execute then begin
    SaveButton.Enabled := true;
    ColorField.Text    := ColorToString(ColorDialog.Color);
  end;
end;

procedure TDispStatCodeForm.FormCreate(Sender: TObject);
begin
  inherited;
  Caption                := 'Dispatch Status Code Entry:  Primary Key: ' + PK;
  PageControl.ActivePage := GenTab;
end;

procedure TDispStatCodeForm.PageStatTabShow(Sender: TObject);
Var iCol : Integer;
begin
  inherited;
  PageStatBrowse.Clear;
  PageStatBrowse.ColCount       := 0;
  PageStatBrowse.RowCount       := 0;
  PageStatBrowse.ClearColumns;
  PageStatBrowse.FixedRowAlways := true;
  PageStatBrowse.RowCount       := PageStatBrowse.FixedRows;

  PageStatBrowse.SetColumn('PAGEGROUPID','PAGEGROUPID',000);
  PageStatBrowse.SetColumn('DESCR',      'Group',      200);

  Open_Query('PAGEGROUP',false,'SELECT * FROM PAGEGROUP ORDER BY DESCR');
  Open_Query('FDID',false,'SELECT FDID, ABBREVIATE FROM FDID WHERE DISPATCH = ' + AddExpr('Y') + ' ORDER BY DEPTNAME');
  Open_Query('PAGESTAT',false,'SELECT * FROM PAGESTAT WHERE DISPSTATCODEID = ' + PK);

  While Not A('FDID').Eof do begin
    PageStatBrowse.SetColumn(GetField('FDID','FDID').AsString,GetField('FDID','ABBREVIATE').AsString,45);
    A('FDID').Skip(1);
    PageStatBrowse.FixedCols := 2;
  end;

  While Not A('PAGEGROUP').Eof do begin
    PageStatBrowse.SetValue('PAGEGROUPID',GetField('PAGEGROUP','PAGEGROUPID').AsString);
    PageStatBrowse.SetValue('DESCR',      GetField('PAGEGROUP','DESCR').AsString);

    for iCol := 2  to PageStatBrowse.ColCount-1 do begin
      If A('PAGESTAT').ExactQueryLocate(['PAGEGROUPID','FDID'],[GetField('PAGEGROUP','PAGEGROUPID').AsString,PageStatBrowse.ColumnNames[icol] ]) then
        PageStatBrowse.SetValue(PageStatBrowse.ColumnNames[icol],'Yes')
      else
        PageStatBrowse.SetValue(PageStatBrowse.ColumnNames[icol],'-')
    end;

    A('PAGEGROUP').Skip(1);
  end;

  CloseApollo('PAGESTAT');
  CloseApollo('FDID');
  CloseApollo('PAGEGROUP');
  PageStatBrowse.Invalidate;
end;

procedure TDispStatCodeForm.PageStatBrowseDblClick(Sender: TObject);
Var FdidString     : String;
    DispStatCodeID : String;
    PageGroupID    : String;
begin
  inherited;
  FdidString     := PageStatBrowse.ColumnNames[PageStatBrowse.Col];
  DispStatCodeID := PK;
  PageGroupID    := PageStatBrowse.GetValue('PAGEGROUPID');

  Open_Query('PAGESTAT',true,'SELECT * FROM PAGESTAT WHERE FDID = ' + AddExpr(FdidString) + ' AND DISPSTATCODEID = ' + DispStatCodeID + ' AND PAGEGROUPID = ' + PageGroupID);
  If A('PAGESTAT').RecordsExist then begin
    A('PAGESTAT').Delete;
    PageStatBrowse.Cells[PageStatBrowse.Col,PageStatBrowse.Row] := '-';
  end else begin
    A('PAGESTAT').Append;
    GetField('PAGESTAT','FDID').AsString           := FdidString;
    GetField('PAGESTAT','DISPSTATCODEID').AsString := DispStatCodeID;
    GetField('PAGESTAT','PAGEGROUPID').AsString    := PageGroupID;
    A('PAGESTAT').Post;
    PageStatBrowse.Cells[PageStatBrowse.Col,PageStatBrowse.Row] := 'Yes';
  end;
  CloseApollo('PAGESTAT');
  PageStatBrowse.SetFocus;
end;

procedure TDispStatCodeForm.PAGEFieldClick(Sender: TObject);
begin
  inherited;
  PageStatTab.TabVisible := PAGEField.Checked;
end;

procedure TDispStatCodeForm.FormShow(Sender: TObject);
begin
  inherited;
  PageFieldClick(self);
end;

procedure TDispStatCodeForm.GenTabShow(Sender: TObject);
begin
  inherited;
  try
    Open_Query('FINGERSET',false,'SELECT ENABLESTATCODECLOSE FROM FINGERSET');

    If A('FINGERSET').RecordsExist then
      begin
        if GetField('FINGERSET','ENABLESTATCODECLOSE').AsString <> 'Y' then
            KioskClosePanel.Visible := False;
      end;

  finally
    CloseApollo('FINGERSET');
  end;
    
end;

end.
