unit UnitShippingAddress;
interface
uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,AdditionalFunctions,UnitContractor;

type
 TItemShippingAddress= class
   private
    idtable_shipping_address,idcontactor_table,shipping_address : string;
   public
    property _idtable_shipping_address : string read idtable_shipping_address write idtable_shipping_address;
    property _idcontactor_table        : string read idcontactor_table write idcontactor_table;
    property _shipping_address         : string read shipping_address write shipping_address;
    constructor Create(idtable_shipping_address,idcontactor_table,shipping_address : string);
 end;
 TShippingAddress = class(TBaseClassSQlExecute)
   constructor Create(connect : TMyConnection);
   function    getShippingAddress(id_contactor : string) : TList;
   function    getShippingAddressID(ID : string) : TItemShippingAddress;
   function    getItemShippingAddress : TItemShippingAddress;
   procedure   setShippingAddress(id_contactor,adress : String);
   procedure   setDeleteShippingAddress(id : string);
   procedure   setNewShippingAddres(id_contactor,address : string);
 end;

 implementation

 constructor TItemShippingAddress.Create(idtable_shipping_address: string; idcontactor_table: string; shipping_address: string);
 begin
  Self.idtable_shipping_address:=idtable_shipping_address;
  Self.idcontactor_table:=idcontactor_table;
  Self.shipping_address :=shipping_address;
 end;

 constructor TShippingAddress.Create(connect: TMyConnection);
 begin
   inherited Create(connect);
 end;

 function tshippingaddress.getshippingaddress(id_contactor : string) : tlist;
 var listadress : tlist;
 begin
    sqlexecute('call getshippingaddress('+id_contactor+')');
    listadress:=tlist.create;
    while not eofcount do
     begin
       listadress.add(  getitemshippingaddress
//       titemshippingaddress.create(
//       returnfieldsname('idtable_shipping_address'),
//       returnfieldsname('idcontactor_table'),
//       returnfieldsname('shipping_address')
//       )
       );
       nextrecord;
     end;
    result:=listadress;
 end;


 function tshippingaddress.getitemshippingaddress : titemshippingaddress;
  begin
   try
     result:=
       titemshippingaddress.create(
         returnfieldsname('idtable_shipping_address'),
         returnfieldsname('idcontactor_table'),
         returnfieldsname('shipping_address')
       );
    except

   end;
  end;

 procedure tshippingaddress.setshippingaddress(id_contactor: string; adress: string);
 begin
   sqlexecute('call setnewshippingaddress('+id_contactor+','''+adress+''')');
 end;

 procedure tshippingaddress.setdeleteshippingaddress(id: string);
 begin
  sqlexecute('call setdeleteshippingaddress('+id+')');
 end;

 procedure  tshippingaddress.setnewshippingaddres(id_contactor,address : string);
 begin
  sqlexecute('call setnewshippingaddres('+id_contactor+','''+address+''')');
 end;

 function  tshippingaddress.getshippingaddressid(id : string) : titemshippingaddress;
 begin
   if not countstring(id) then id:='-1';

   sqlexecute('call getshippingaddressid('+id+');');
   result:=getitemshippingaddress;
 end;
end.
