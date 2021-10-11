unit UnitDataTTN;
interface
uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,UnitMyMessageDialog,Dialogs,
  Forms,Printers,PrViewEh,Grids,BaseClassSQlExecute,LogUnit,ComObj,ActiveX,Variants,
  AdditionalFunctions,UnitDataOverhead,UnitContractor,UnitCar,UnitStock,UnitOverhead,UnitShippingAddress;
 type
 TDataTTN = class
   private

     COUNT_ROW : Integer;

   public
     consignee : TItemContractor; //грузополучатель
     consignor : TItemContractor; //грузоотправитель
     adress    : TItemShippingAddress;
     car       : TItemCar;
     contractorCar : TItemContractor;
     ItemOverheader : TItemOverhead;
     FData: Variant;
     Stock     : TitemStock;
     NDS,all_price,count_p,massa : Double;

     constructor Create(COUNT_ROW : Integer);
     procedure   setValuesData(COL,ROW : Integer; VALUES : Variant);
     function    getData : Variant;
     function    getCount: Integer;


 end;
implementation
  var
   ArrayMarkingTable : array[1..12] of Integer=(1,32,41,50,63,75,82,93,105,114,124,133);
constructor TDataTTN.Create(COUNT_ROW: Integer);
  begin
    self.COUNT_ROW:=COUNT_ROW;
    FData:=VarArrayCreate([1,COUNT_ROW,1,132],varVariant);
  end;

procedure TDataTTN.setValuesData(COL: Integer; ROW: Integer; VALUES: Variant);
  begin
    //ShowMessage(VALUES);
    FData[ROW,ArrayMarkingTable[COL]]:=VALUES;
  end;

function TDataTTN.getData : variant;
  begin
     Result:=FData;
  end;

function TDataTTN.getCount: Integer;
  begin
    Result:=COUNT_ROW;
  end;
end.
