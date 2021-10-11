unit UnitStock;
{ TStock }
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 sSkinManager,Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,AdditionalFunctions;

type
 TitemStock = class
   private
    id_Stock,Name_Stock,Adress_Stock : string;
   public
    property _id_Stock: String read id_Stock;
    property _Name_Stock: String  read Name_Stock write Name_Stock;
    property _Adress_Stock : String  read Adress_Stock write Adress_Stock;
    constructor Create( id_Stock,Name_Stock,Adress_Stock : string);
 end;

 TStock = class(TBaseClassSQlExecute)
  private

  protected

  public
    	constructor Create(Connect : TMyConnection) ;
      procedure CreateTable;
      procedure DropTable;
      procedure ViewStock(filter : string='');
      procedure DeleteStock(ID : string);
      procedure insert_stock;
      function  getStockID(id_Stock : string) : TitemStock;
      function  getStock : TitemStock;
     
  published

  end;

implementation

constructor TitemStock.Create(id_Stock: string; Name_Stock: string; Adress_Stock: string);
  begin
    Self.id_Stock:=id_Stock;
    Self.Name_Stock:=Name_Stock;
    Self.Adress_Stock:=Adress_Stock;
  end;

constructor TStock.Create(Connect: TMyConnection);
  begin
    inherited Create(Connect);
  end;

procedure  tstock.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_stock` ( '+
    ' `id_stock`  int(11) not null auto_increment,  '+
    ' `name_stock` varchar(200),'+
    ' `adress_stock` varchar(200),'+
    ' `delete_stock` tinyint(1) default 0,'+
    ' primary key (`id_stock`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tstock.droptable;
  begin
    sqlexecute('drop table if exists `table_stock`;');
  end;

procedure tstock.viewstock(filter : string='');
  begin
    sqlexecute('call getstock;'
    //'select * from `table_stock` '
    );
  end;

procedure tstock.insert_stock;
  begin
    sqlexecute('call insert_stock');
  end;

procedure tstock.deletestock(id : string);
  begin
    sqlexecute('call delete_stock('+id+')'
    //'delete from `table_stock` where `id_stock` in('+id+')'
    );
  end;

function tstock.getstock : titemstock;
  begin
   try
    result:=titemstock.create(
      returnfieldsname('id_stock'),
      returnfieldsname('name_stock'),
      returnfieldsname('adress_stock')
    );
    except on e : exception do
    writelognomessage(e.message);
   end;
  end;

function tstock.getstockid(id_stock: string) : titemstock;
  begin
   if countstring(id_stock) then
   begin
    sqlexecute('select * from `table_stock` where id_stock in('+id_stock+')');
     if recordcount>0 then
        result:=getstock else result:=titemstock.create('','','');
   end else result:= titemstock.create('','','');
  end;
end.

