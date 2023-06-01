unit NITrainRep;

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
  AlpineBlockBrowse,
  AdvGroupBox,
  AlpinePanel,
  HtmlBtns,
  AlpineCheck,
  ComCtrls,
  Grids,
  AdvObj,
  BaseGrid,
  AdvGrid,
  AlpineTMSStringGrid,
  AlpineMemo;

type
  TNITrainRepForm = class(TNormalBaseForm)
    GenPanel: TAlpinePanel;
    DescrLabel: TLabel;
    DescrField: TAlpineEdit;
    FdidLabel: TLabel;
    FdidField: TAlpineLookup;
    PageControl1: TPageControl;
    NarrTab: TTabSheet;
    AlpinePanel9: TAlpinePanel;
    NarrField: TAlpineMemo;
    NITrainRepColTab: TTabSheet;
    NITrainRepColBrowse: TAlpineBlockBrowse;
    NITrainRepColGrid: TTabSheet;
    AlpinePanel1: TAlpinePanel;
    NITrainCAT1RepColBrowse: TAlpineTMSStringGrid;
    procedure FormCreate(Sender: TObject);
    procedure NITrainRepColGridShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure NITrainRepColNewRecord(DataSet: TDataSet);
  end;

var
  NITrainRepForm: TNITrainRepForm;

implementation
uses GenFunc,
     CommonVar,
     StrUtils,
     AppLst,
     NITrainRepCol,
     Fdid,
     CommonFunc;
     
{$R *.DFM}

procedure TNITrainRepForm.FormCreate(Sender: TObject);
begin
  inherited;
  NITrainRepColBrowse.Setup('NITRAINREPCOL',TNITrainRepColForm,NITrainRepColNewRecord);
end;

procedure TNITrainRepForm.NITrainRepColGridShow(Sender: TObject);
Var iCol    : Integer;
begin
  inherited;
  NITrainCAT1RepColBrowse.Clear;
  NITrainCAT1RepColBrowse.ColCount       := 0;
  NITrainCAT1RepColBrowse.RowCount       := 0;
  NITrainCAT1RepColBrowse.ClearColumns;
  NITrainCAT1RepColBrowse.FixedRowAlways := true;
  NITrainCAT1RepColBrowse.RowCount       := NITrainCAT1RepColBrowse.FixedRows;

  NITrainCAT1RepColBrowse.SetColumn('NITRAINCAT1ID',     'NITRAINCAT1ID',  001);
  NITrainCAT1RepColBrowse.SetColumn('CODE',              'Code',           075);
  NITrainCAT1RepColBrowse.SetColumn('DESCR',             'Training Course',200);

  Open_Query('NITRAINCAT1',false,'SELECT NITRAINCAT1.NITRAINCAT1ID, NITRAINCAT1.CODE, NITRAINCAT1.DESCR ' +
                                 'FROM NITRAINCAT1 ' +
                                 'ORDER BY NITRAINCAT1.CODE');

  Open_Query('NITRAINREPCOL',false,'SELECT * FROM NITRAINREPCOL WHERE NITRAINREPID = ' + pkValue(PK) + ' ORDER BY SORTORD');

  A('NITRAINREPCOL').GoTop;
  While Not A('NITRAINREPCOL').Eof do begin
    NITrainCAT1RepColBrowse.SetColumn(GetField('NITRAINREPCOL','NITRAINREPCOLID').AsString,tdbfield('NITRAINREPCOL','CODE'),070);
    A('NITRAINREPCOL').Skip(1);
  end;

  While Not A('NITRAINCAT1').Eof do begin
    NITrainCAT1RepColBrowse.SetValue('NITRAINCAT1ID',GetField('NITRAINCAT1','NITRAINCAT1ID').AsString);
    NITrainCAT1RepColBrowse.SetValue('CODE',         tdbfield('NITRAINCAT1','CODE'));
    NITrainCAT1RepColBrowse.SetValue('DESCR',        tdbfield('NITRAINCAT1','DESCR'));

    {
    for iCol := 4  to NITrainCAD1RepColBrowse.ColCount-1 do begin
      If A('NITRAINCATREQSET').ExactQueryLocate(['NITRAINCAT1ID','NITRAINCATREQID'],[GetField('NITRAINCAT1','NITRAINCAT1ID').AsString,NITrainCAD1RepColBrowse.ColumnNames[icol] ]) then
        NITrainCAD1RepColBrowse.SetValue(NITrainCAD1RepColBrowse.ColumnNames[icol],'Yes')
      else
        NITrainCAD1RepColBrowse.SetValue(NITrainCAD1RepColBrowse.ColumnNames[icol],'')
    end;
    }

    A('NITRAINCAT1').Skip(1);
  end;

  If NITrainCAT1RepColBrowse.ColCount > 3 then
    NITrainCAT1RepColBrowse.FixedCols := 3;

  CloseApollo('NITRAINREPCOL');
  CloseApollo('NITRAINCAT1');
  NITrainCAT1RepColBrowse.Invalidate;
end;

procedure TNITrainRepForm.NITrainRepColNewRecord(DataSet: TDataSet);
begin
  DataSet.FieldbyName('NITRAINREPID').AsString := pk;
  DataSet.FieldbyName('DESCR').AsString        := ' ';
end;

end.
