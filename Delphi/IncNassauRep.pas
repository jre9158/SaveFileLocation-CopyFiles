unit IncNassauRep;
 
interface

uses
  windows,
  messages,
  sysutils,
  classes,
  graphics,
  controls,
  forms,
  dialogs,
  stdctrls,
  extctrls,
  quickrpt,
  qrctrls,
  AlpineBaseSummaryReport,
  applst,
  db,
  QRExport,
  QRPDFFilt,
  QRWebFilt, QRXMLSFilt, QRXLSXFilt;

type
  TIncNassauRepForm = class(TAlpineBaseSummaryReportForm)
    QRShape24: TQRShape;
    DeptName: TQRLabel;
    DescField: TQRLabel;
    RepLabel: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    BodyLabel: TQRLabel;
    QRLabel10: TQRLabel;
    QRShape1: TQRShape;
    QRLabel11: TQRLabel;
    SubLabel: TQRLabel;
    QRShape2: TQRShape;
    QRLabel14: TQRLabel;
    QRShape3: TQRShape;
    QRLabel15: TQRLabel;
    QRShape4: TQRShape;
    QRLabel16: TQRLabel;
    QRShape5: TQRShape;
    QRLabel17: TQRLabel;
    QRShape6: TQRShape;
    QRLabel18: TQRLabel;
    QRShape7: TQRShape;
    QRLabel19: TQRLabel;
    QRShape8: TQRShape;
    QRLabel20: TQRLabel;
    QRShape9: TQRShape;
    QRLabel21: TQRLabel;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    DamAmtField: TQRLabel;
    StructureFires: TQRLabel;
    NoDamCntField: TQRLabel;
    HeatingUnitFires: TQRLabel;
    cookingfires: TQRLabel;
    gasbarbequefires: TQRLabel;
    VehicleFires: TQRLabel;
    BrushFires: TQRLabel;
    hazmatspills: TQRLabel;
    TotalField: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    coalarms: TQRLabel;
    mutualaidgiven: TQRLabel;
    falsealarms: TQRLabel;
    autofalse: TQRLabel;
    other: TQRLabel;
    ambulanceruns: TQRLabel;
    ambulancegiven: TQRLabel;
    automaticalarms: TQRLabel;
    QRLabel40: TQRLabel;
    FireDeptField: TQRLabel;
    ChildBand1: TQRChildBand;
    QRLabel31: TQRLabel;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRShape25: TQRShape;
    medicalfacility: TQRLabel;
    hospital: TQRLabel;
    deaths: TQRLabel;
    QRLabel38: TQRLabel;
    QRShape26: TQRShape;
    QRLabel39: TQRLabel;
    QRShape28: TQRShape;
    inspections: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel45: TQRLabel;
    QRShape27: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape21: TQRShape;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    NFIRSMain           : TApolloData;
    NfirsFireCasualty   : TApolloData;
    DamAmtVar           :Real;
    i_ambulancegiven    :Real;
    i_mutualaidgiven    :Real;
    i_structurefires    :Real;
    i_heatingunitfires  :Real;
    i_cookingfires      :Real;
    i_gasbarbequefires  :Real;
    i_VehicleFires      :Real;
    i_brushfires        :Real;
    i_hazmatspills      :Real;
    i_coalarms          :Real;
    i_falsealarms       :Real;
    i_automaticalarms   :Real;
    i_autofalse         :Real;
    i_ambulanceruns     :Real;
    i_other             :Real;
    i_medicalfacility   :Real;
    i_hospital          :Real;
    i_deaths            :Real;
    i_Inspections       :Real;
    Procedure CalculateTotal;
  public
    { Public declarations }
  end;
var
  IncNassauRepForm: TIncNassauRepForm;

implementation
uses GenFunc,
     Progress,
     IncCond,
     CommonFunc, 
     SysRepMan;
     
{$R *.DFM}

procedure TIncNassauRepForm.FormCreate(Sender: TObject);
var Form : TForm;
begin
  Form   := GetFormOfType(TIncCondForm);
  if fireid = '30044' then
    FireDeptField.Caption := TIncCondForm(Form).GetFdidString
  else
    FireDeptField.Caption := mFireDept;

  CalculateTotal;

  DamAmtVar           := 0;
  i_ambulancegiven    := 0;
  i_mutualaidgiven    := 0;
  i_structurefires    := 0;
  i_heatingunitfires  := 0;
  i_cookingfires      := 0;
  i_gasbarbequefires  := 0;
  i_VehicleFires      := 0;
  i_brushfires        := 0;
  i_hazmatspills      := 0;
  i_coalarms          := 0;
  i_falsealarms       := 0;
  i_automaticalarms   := 0;
  i_autofalse         := 0;
  i_ambulanceruns     := 0;
  i_other             := 0;
  i_medicalfacility   := 0;
  i_hospital          := 0;
  i_deaths            := 0;
  i_Inspections       := 0;

  CalculateTotal;

  DamAmtField.Caption := '$'+FormatFloat('###,###,##0.00',DamAmtVar);
  ambulancegiven.Caption :=     formatfloat('#,##0',i_ambulancegiven  );
  mutualaidgiven.Caption :=     formatfloat('#,##0',i_mutualaidgiven  );
  structurefires.Caption :=     formatfloat('#,##0',i_structurefires  );
  heatingunitfires.Caption :=   formatfloat('#,##0',i_heatingunitfires);
  cookingfires.Caption :=       formatfloat('#,##0',i_cookingfires    );
  gasbarbequefires.Caption :=   formatfloat('#,##0',i_gasbarbequefires);
  VehicleFires.Caption :=       formatfloat('#,##0',i_VehicleFires    );
  brushfires.Caption :=         formatfloat('#,##0',i_brushfires      );
  hazmatspills.Caption :=       formatfloat('#,##0',i_hazmatspills    );
  coalarms.Caption :=           formatfloat('#,##0',i_coalarms        );
  falsealarms.Caption :=        formatfloat('#,##0',i_falsealarms     );
  automaticalarms.Caption :=    formatfloat('#,##0',i_automaticalarms );
  autofalse.Caption :=          formatfloat('#,##0',i_autofalse       );
  ambulanceruns.Caption :=      formatfloat('#,##0',i_ambulanceruns   );
  other.Caption :=              formatfloat('#,##0',i_other           );


  TotalField.Caption := formatfloat('###,##0',i_ambulancegiven+i_mutualaidgiven+i_structurefires++i_VehicleFires +i_brushfires  +
      i_hazmatspills+i_coalarms+i_falsealarms +i_automaticalarms+
      i_autofalse+i_ambulanceruns +i_other);


  medicalfacility.caption := formatfloat('#,##0',i_medicalfacility);
  hospital.caption        := formatfloat('#,##0',i_hospital);
  deaths.Caption          := formatfloat('#,##0',i_deaths);
      
  inspections.Caption     := formatfloat('#,##0',i_inspections);

  RepLabel.Caption        := 'FIRE LOSS REPORT ' + FormatDateTime('YYYY',FinalDate);
  BodyLabel.Caption       := 'The Fire Commission must file with the County Executive a detailed '+
                             'report of activities each year.  An important part of this report ' +
                             'is the estimated fire loss.  Please fill in the spaces below with ' +
                             'your best estimate for the calendar year '+
                             FormatDateTime('YYYY',FinalDate)+'.';
  SubLabel.Caption        := 'PLEASE COMPLETE AND RETURN TO THE FIRE COMMISSION BY JANUARY 31, ' + FormatDateTime('YYYY',FinalDate + 365)+'.';
end;


Procedure TIncNassauRepForm.CalculateTotal;
var NfirsMainID : String;
    Form        : TForm;
    SQLVar      : String;
begin
  Form                               := GetFormOfType(TINCCondForm);
  SQLVar                             := 'SELECT NFIRSMAIN.NFIRSMAINID, NFIRSMAIN.SITFOUND, MAID, FIXPROP, FATCIV, INJCIV, FATFIRE, INJFIRE, LOSSCONT, LOSSPROP FROM NFIRSMAIN ' + TIncCondForm(Form).SqlWhereClause;
  NFIRSMain                          := Open_Query(SQLVar);
  ProgressForm                       := TProgressForm.Create(Application);
  ProgressForm.ProgressBar1.MaxValue := NfirsMain.QueryRecCount;
  ProgressForm.StatusLabel.Caption   := 'Calculating Totals - Be Patient';

  while not NfirsMain.eof do begin
      NfirsMainID := GetField(NFIRSMain,'NFIRSMAINID').AsString;

      i_deaths    := i_Deaths  + GetField(NfirsMain,'FATFIRE').AsInteger;

      If GetField(NfirsMain,'INJFIRE').AsInteger > 0 then begin
        NfirsFireCasualty  := Open_Query('SELECT TAKENTO FROM NFIRSFIRECASUALTY ' +
                                                ' WHERE NFIRSMAINID = ' + AddExpr(NfirsMainID));
        while not NfirsFireCasualty.eof do begin
          If tdbfield(NfirsFireCasualty,'TAKENTO') = '1' then
            i_hospital := i_hospital + 1
          else
            i_medicalfacility := i_medicalfacility + 1;

          NfirsFireCasualty.Skip(1);
        end;

        NfirsFireCasualty.Free;
      end;

      DamAmtVar   := DamAmtVar + GetField(NfirsMain,'LOSSPROP').AsFloat + GetField(NfirsMain,'LOSSCONT').AsFloat;
      if (tdbfield(NfirsMain,'MAID')='3') or (tdbfield(NfirsMain,'MAID')='4') or (tdbfield(NfirsMain,'MAID')='5') then begin
        if substr(tdbField(NfirsMain,'SITFOUND'),1,1)='3' then
          i_ambulancegiven := i_ambulancegiven + 1
        else
          i_mutualaidgiven := i_mutualaidgiven + 1
      end else if Pos(tdbField(NfirsMain,'SITFOUND'),'111 112 113 116 120 121 123 161 653')>0 then begin
        i_StructureFires := i_StructureFires + 1;
        if Pos(tdbField(NfirsMain,'SITFOUND'),'116')>0 then
          i_HeatingUnitFires := i_HeatingUnitFires + 1
        else if Pos(tdbField(NfirsMain,'SITFOUND'),'113')>0 then
          i_cookingfires := i_cookingfires + 1
        else if Pos(tdbField(NfirsMain,'SITFOUND'),'653')>0 then
          i_gasbarbequefires := i_gasbarbequefires + 1;
      end else if Pos(tdbField(NfirsMain,'SITFOUND'),'130 131 132 133 134 135 136 137 138 122')>0 then
        i_VehicleFires := i_VehicleFires + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'140 141 142 143 117 118 170 171 172 173 480 481 561 482 150 151 152 153 154 155 160 631 632')>0 then
        i_BrushFires := i_BrushFires + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'400 231 410 411 412 413 420 421 422 423 430 431 451 460 463 671 672')>0 then
        i_hazmatspills := i_hazmatspills + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'736 424 746')>0 then
        i_coalarms := i_coalarms + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'700 710 712 713 611 621 622 721 600')>0 then
        i_falsealarms := i_falsealarms + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'711 714 715 730 731 732 733 734 735 742')>0 then
        i_automaticalarms := i_automaticalarms + 1
      else if Pos(tdbField(NfirsMain,'SITFOUND'),'740 741 743 744 745')>0 then
        i_autofalse := i_autofalse + 1
      else if (substr(tdbField(NfirsMain,'SITFOUND'),1,1)='3') or (Pos(tdbField(NfirsMain,'SITFOUND'),'661 800 811 812 813 814 815 461 462 510 511 512 554')>0) then
        i_ambulanceruns := i_ambulanceruns + 1
      else
        i_other := i_other + 1;
  
    NfirsMain.Skip(1);
  end;
  ProgressForm.Free;
  NFIRSMain.Free;

End;


end.
