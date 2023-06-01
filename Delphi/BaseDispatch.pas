unit BaseDispatch;
interface

uses Menus,
     Controls,
     Classes,
     Forms,
     WinTypes,
     Dialogs,
     Graphics,
     SysUtils,
     Messages,
     AlpineBase,
     DispCallTake,
     CommonDisp,
     CommonDispVar,
     TableDefinitions,
     db,
     Disp;

type
  TBaseDispatchForm = class(TAlpineBaseForm)
  protected

  public
    FPropID     : String;
    FDispCallID : String;
    class procedure OnE911TransferClick(sender: TObject; mDispCallTakeForm: TDispCallTakeForm;mE911ID: String); virtual;
    procedure ShowImages;
    procedure ShowGIS;
    procedure ShowPictometry;        
    constructor Create(AOwner: TComponent; PropID, DispCallID: String); virtual;
    procedure NewImagePropRecord(DataSet: TDataSet);    
  end;

{$I rednmx.inc}
  
implementation
uses AlpineTMSStringGrid,
     CommonFunc,
     GenFunc,
     AlpineSelect,
     NormalBase,
     ImageProp,
     GisSys,
     ImagePropSelect,
     GisFunc,
     ShellAPI,
     CommonRedNMX,
     Pict;

class procedure TBaseDispatchForm.OnE911TransferClick(sender: TObject; mDispCallTakeForm: TDispCallTakeForm;mE911ID: String);
begin
  inherited; 
end;


constructor TBaseDispatchForm.Create(AOwner: TComponent; PropID, DispCallID: String);
begin
  FPropID     := PropID;
  FDispCallID := DispCallID;
  inherited Create(AOwner);
end;


procedure TBaseDispatchForm.ShowImages;
var mImageProp:   TBrowseObject;
    iImagePropID: Integer;
begin
  If Not FormExists('ImagePropSelectForm') then
    ImagePropSelectForm := TImagePropSelectForm.Create(application,FPropID);
  ImagePropSelectForm.Show;
  exit;

  mImageProp := TBrowseObject.Create;
  mImageProp.PrimeTable     := 'IMAGEPROP';
  mImageProp.PrimeKeyField  := 'IMAGEPROPID';
  mImageProp.SortOrder      := 'DESCR';

  mImageProp.AddField('IMAGEPROPID','IMAGEPROPID','IMAGEPROP','IMAGEPROPID',1);
  mImageProp.AddField('DESCR','DESCR','IMAGEPROP','Description',200);

  mImageProp.AddTable('IMAGEPROP','','');
  mImageProp.AddTable('IMAGELIST','IMAGELIST','IMAGELISTID');
  mImageProp.ExplicitWhereClause := ' WHERE PROPID = '+pkValue(FPropID);
  iImagePropID := DoAlpineSelect(mImageProp);
  if iImagePropID > 0 then
    RunAlpineFormWithOwner(self,TImagePropForm,iImagePropID,'IMAGEPROP',NewImagePropRecord,False);
end;

procedure TBaseDispatchForm.NewImagePropRecord(DataSet: TDataSet);
begin
  DataSet.FieldByName('PROPID').AsString := FPropID;
end;

procedure TBaseDispatchForm.ShowGIS;
Var DispCall   : TDispCall;
    EXECommand : String;
begin
  If FileExists(ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe') then begin
    EXECommand := ExtractFileDir(ParamStr(0)) + '\rednmxmapbox.exe ' + ParamStr(1) + ' ' + ParamStr(2) + ' ' + CLIENTUSER + ' ' + CLIENTPASS + ' ' + FireID;
    If Not ProcessExists('REDNMXMAPBOX.EXE') then
      WinExec(pchar(ExeCommand),SW_SHOW);
    Open_Query('GISD10COMPUTER',true,'SELECT * FROM GISD10COMPUTER WHERE COMPUTERNAME = ' + AddExpr(AlpineGetComputerName));
    If A('GISD10COMPUTER').RecordsExist then
      GetTable('GISD10COMPUTER').Edit
    else
      GetTable('GISD10COMPUTER').Append;

    If Not (FDispCallID = '') then
      GetField('GISD10COMPUTER','DISPCALLID').AsString   := FDispCallID
    else if Not (FPropID = '') then
      GetField('GISD10COMPUTER','PROPID').AsString       := FPropID;
    GetField('GISD10COMPUTER','COMPUTERNAME').AsString := AlpineGetComputerName;
    GetTable('GISD10COMPUTER').Post;
    CloseApollo('GISD10COMPUTER');
  end else begin
    If Not FormExists('GisSysForm') then
      GisSysForm :=TGisSysform.Create(Application);
    GisSysForm.Show;

    If AnyStrToInt(FDispCallID) > 0 then begin
      Open_Query('GETDISPCALL',false,'SELECT ADDRESS, LATITUDE, LONGITUDE FROM DISPCALL WHERE DISPCALLID = ' + PkValue(FDispCallID));
      DisplayatLatLong(GisSysForm.GisSetVar, GisSysForm.Map, GetField('GETDISPCALL','LATITUDE').AsFloat,GetField('GETDISPCALL','LONGITUDE').AsFloat,0,0);
      if GetField('GETDISPCALL','LATITUDE').AsFloat=0 then
        ShowMessage('This Call is not plotted');
      CloseApollo('GETDISPCALL');
    end else if AnyStrToInt(FPropID) > 0 then begin
      Open_Query('GETPROP',false,'SELECT STRNUM, STREET, LATITUDE, LONGITUDE FROM PROP WHERE PROPID = ' + PkValue(FPropID));
      DispCall           := TDispCall.Create;
      DispCall.Latitude  := GetField('GETPROP','LATITUDE').AsFloat;
      DispCall.Longitude := GetField('GETPROP','LONGITUDE').AsFloat;
      DispCall.Address   := alltrim(tdbfield('GETPROP','STRNUM') + ' ' + tdbfield('GETPROP','STREET'));

      If GetField('GETPROP','LATITUDE').AsFloat > 0 then
        DisplayProperty(GisSysForm.GisSetVar, GisSysForm.Map,DispCall)
      else
        ShowMessage('This Property is not Plotted');
      CloseApollo('GETPROP');
      DispCall.Free;
    end;
  end;  
end;

procedure TBaseDispatchForm.ShowPictometry;
begin
  Open_Query('GETPROP',false,'SELECT STRNUM, STREET, LATITUDE, LONGITUDE FROM PROP WHERE PROPID = ' + PkValue(FPropID));
  If GetField('GETPROP','LONGITUDE').AsFloat <> 0 then
    DisplayPictometry(GetField('GETPROP','LATITUDE').AsFloat,GetField('GETPROP','LONGITUDE').AsFloat);
  CloseApollo('GETPROP');
end;  

end.





