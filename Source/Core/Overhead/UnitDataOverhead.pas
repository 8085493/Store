unit UnitDataOverhead;
{ TDataOverhead }
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 sSkinManager,Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,AdditionalFunctions;

type
 TItemGoodsStock = class
   private
    id_DataOverhead, Name_Goods, count_Goods, Selling_price : string;
   public
    property _id_DataOverhead : String read id_DataOverhead write id_DataOverhead;
    property _Name_Goods      : String read Name_Goods      write Name_Goods;
    property _count_Goods     : String read count_Goods     write count_Goods ;
    property _Selling_price   : String read Selling_price   write Selling_price;

    constructor Create( id_DataOverhead, Name_Goods, count_Goods, Selling_price : string);
 end;

 TItemESF = class
   private
    Name_Goods,count_Goods,Price_Goods,price,NDS,price_nds,all_price,code_okei : string;
   public
    property _Name_Goods      : String read Name_Goods        write Name_Goods;
    property _count_Goods     : String read count_Goods       write count_Goods ;
    property _Price_Goods     : String read Price_Goods       write Price_Goods;
    property _NDS             : string read NDS               write NDS;
    property _price           : String read price             write price;
    property _price_nds       : String read price_nds         write price_nds;
    property _all_price       : string read all_price         write all_price;
    property _code_okei       : string read code_okei         write code_okei;

    constructor Create(Name_Goods,count_Goods,Price_Goods,price,NDS,price_nds,all_price,code_okei : string);
 end;

 TItemDataOverhead = class
   private
    id_DataOverhead,idOverhead,idOverheadGoods,idGgoods, Name_Goods, count_Goods,Price_Goods,NDS,
    Count_place,load_weight, Selling_price : string;
   public
    property _id_DataOverhead : String read id_DataOverhead   write id_DataOverhead;
    property _Name_Goods      : String read Name_Goods        write Name_Goods;
    property _idGgoods        : String read idGgoods          write idGgoods;
    property _count_Goods     : String read count_Goods       write count_Goods ;
    property _Selling_price   : String read Selling_price     write Selling_price;
    property _idOverhead      : string read idOverhead        write idOverhead;
    property _idOverheadGoods : String read idOverheadGoods   write idOverheadGoods;
    property _Price_Goods     : String read Price_Goods       write Price_Goods;
    property _NDS             : string read NDS               write NDS;
    property _Count_place     : String read Count_place       write Count_place;
    property _load_weight     : String read load_weight       write load_weight;

    constructor Create(
    id_DataOverhead,idOverhead,idOverheadGoods,idGgoods, Name_Goods, count_Goods,Price_Goods,NDS,Count_place,load_weight, Selling_price : string);

 end;

  TDataOverhead = class(TBaseClassSQlExecute)
  private

    // старые методы.. перенесены на сервер MySQL и заменены на ViewAllDataOverhead
    procedure ViewComingDataOverhead(idOverhead : string;filter : string='');
    procedure ViewConsumptionDataOverhead(idOverhead : string;filter : string='');
  protected

  public
    constructor Create(Connect : TMyConnection) ;
    procedure CreateTable;
    procedure DropTable;

    procedure ViewAllDataOverhead(typeoverhead,idOverhead : string);
    procedure DeleteDataOverhead(ID : string);
    procedure DeleteALLOverhead(ID : string);
    procedure InsertComingDataOverhead(idOverhead,id_Goods,count_Goods,Price_Goods,NDS,Count_place,load_weight,note_goods,Selling_price: string); //приход
    procedure InsertConsumptionDataOverhead(idOverhead,id_Goods,count_Goods,Price_Goods,NDS,Count_place,load_weight,note_goods: string);//расход
    procedure setActivity(values,idOverhead : string);
    procedure getSumDataOverhead(idOverhead : string);
    procedure getGoodsStock;
    function  getGoodsStockID(ID : string) : TItemGoodsStock;
    procedure getStockStoreNotTTN(id_overhead : String);
    procedure getStockStoreNotTTNSR(id : string);
    procedure UpdatePriceStock(newPrice,id_DataOverhead : String);
    procedure setNotActivOverhead(id : string);

    function  getAvailabilityGoodsStock(ID,COUNT : string): Boolean;
    procedure getSum(idOverhead : string);
    function  getDataOverheadID(id_DataOverhead : string) : TItemDataOverhead;
    function  getDataOverhead : TItemDataOverhead;
    function  getItemGoodsStock : TItemGoodsStock;
    function  getCountDataOverhead(id : string) : Integer;
    function  getListDataOverhead(typeoverhead,idOverhead : string): TList;

  published

  end;

implementation
  const
   sqlmath = 'id_dataoverhead,idoverhead,idgoods,idoverheadgoods,name_goods,name_metrics,count_goods,price_goods,nds,count_place,load_weight,'+
   'round(count_goods*price_goods,2) as price,'+
   'round((count_goods*price_goods)*nds/100,2) as price_nds,'+
   '(round(count_goods*price_goods,2)+round((count_goods*price_goods)*nds/100,2)) as all_price,note_goods,selling_price '+
   '';
constructor titemgoodsstock.create(id_dataoverhead: string; name_goods: string; count_goods: string; selling_price: string);
  begin
    self.id_dataoverhead:=id_dataoverhead;
    self.name_goods:=name_goods;
    self.count_goods:=count_goods;
    self.selling_price:=selling_price;
  end;

constructor titemdataoverhead.create(id_dataoverhead: string;
idoverhead: string; idoverheadgoods,idggoods: string; name_goods: string; count_goods: string; price_goods: string; nds: string; count_place: string; load_weight: string; selling_price: string);
//(id_dataoverhead: string; name_goods: string; count_goods: string; selling_price: string);
  begin
    self.id_dataoverhead:=id_dataoverhead;
    self.idoverhead:=idoverhead;
    self.idoverheadgoods:=idoverheadgoods;
    self.name_goods:=name_goods;
    self.count_goods:=count_goods;
    self.price_goods:=price_goods;
    self.selling_price:=selling_price;
    self.nds:=nds;
    self.load_weight:=load_weight;
    self.count_place:=count_place;
    self.idggoods:=idggoods;
  end;

constructor tdataoverhead.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure  tdataoverhead.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_data_overhead` ( '+
    ' `id_dataoverhead`  int(11) not null auto_increment, '+
    ' `idoverhead`  int(11) not null,'+
    ' `idgoods`  int(11),'+
    ' `idoverheadgoods`  int(11),'+
    ' `count_goods`  float(11,2) default 0,'+
    ' `price_goods`  float(11,2) default 0,'+
    ' `nds`          float(11,2) default 0,'+
    ' `count_place`  float(11,2) default 0,'+
    ' `load_weight`  float(11,3) default 0,'+
    ' `selling_price` float(11,3) default 0,'+
    ' `activ_data_overhead` tinyint(1) default 0,'+
    ' `note_goods`  varchar(255),'+
    ' primary key (`id_dataoverhead`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tdataoverhead.droptable;
  begin
    sqlexecute('drop table if exists `table_data_overhead`;');
  end;

procedure tdataoverhead.viewcomingdataoverhead(idoverhead : string;filter : string='');//old
  begin
    sqlexecute('select '+sqlmath+' from `table_data_overhead` '+
    ' left join (select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)) a on(table_data_overhead.idgoods=a.id_goods)'+
    ' where idoverhead in('+idoverhead+')');
  end;

procedure tdataoverhead.getsum(idoverhead: string);
  begin
   sqlexecute('select ''итого: '',''x'', sum(count_goods),''x'', sum(price), ''x'',sum(price_nds) as price_nds,sum(all_price) as all_price, sum(count_place) as count_place, sum(load_weight) as load_weight,''x'' from '+
   '(select '+sqlmath+' from `table_data_overhead` '+
    ' left join (select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)) a on(table_data_overhead.idgoods=a.id_goods)'+
    ' where idoverhead in('+idoverhead+'))b'
   );
  end;

procedure tdataoverhead.viewconsumptiondataoverhead(idoverhead: string; filter: string = ''); //old
  begin
     sqlexecute(
      ' select '+sqlmath+' from table_data_overhead  '+
      ' left join (select idgoods as idgoodsnew, id_dataoverhead as id_dataoverheadnew '+
      ' from table_data_overhead) a on(idoverheadgoods=a.id_dataoverheadnew)            '+
      ' left join (select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)) b on(a.idgoodsnew=b.id_goods) '+
      ' where idoverhead in('+idoverhead+')'
      );
  end;

procedure tdataoverhead.viewalldataoverhead(typeoverhead: string; idoverhead: string);
  begin
   // showmessage(idoverhead);
    sqlexecute('call getdataoverhead('+typeoverhead+','+idoverhead+')');
  end;

procedure tdataoverhead.deletedataoverhead(id : string);
  begin
    sqlexecute('delete from `table_data_overhead` where `id_dataoverhead` in('+id+')');
  end;

procedure tdataoverhead.deletealloverhead(id: string);
  begin
    sqlexecute('delete from `table_data_overhead` where `idoverhead` in('+id+')');
  end;

procedure tdataoverhead.insertcomingdataoverhead(idoverhead: string;id_goods: string; count_goods: string; price_goods: string; nds: string;
count_place: string; load_weight: string; note_goods,selling_price: string);
  begin
    sqlexecute(
    'insert into table_data_overhead(idoverhead,idgoods,count_goods,price_goods,nds,count_place,load_weight,note_goods,selling_price)values('+
    idoverhead+','+id_goods+','+strtostrfloatsql(count_goods)+','
    +strtostrfloatsql(price_goods)+','+strtostrfloatsql(nds)+','+strtostrfloatsql(count_place)+
    ','+strtostrfloatsql(load_weight)+','''+note_goods+''','+strtostrfloatsql(selling_price)+')'
    );
  end;

procedure tdataoverhead.insertconsumptiondataoverhead(idoverhead: string; id_goods: string; count_goods: string;
price_goods: string; nds: string; count_place: string; load_weight: string; note_goods: string);
  begin
    sqlexecute(
    'insert into table_data_overhead(idoverhead,idoverheadgoods,count_goods,price_goods,nds,count_place,load_weight,note_goods)values('+
    idoverhead+','+id_goods+','+strtostrfloatsql(count_goods)+','
    +strtostrfloatsql(price_goods)+','+strtostrfloatsql(nds)+','+strtostrfloatsql(count_place)+
    ','+strtostrfloatsql(load_weight)+','''+note_goods+''')'
    );
  end;

procedure tdataoverhead.setactivity(values: string; idoverhead: string);
  begin
    sqlexecute('call setactivoverhead('+values+','+idoverhead+')');
    //updateonefield('table_data_overhead','activ_data_overhead',values,'idoverhead',idoverhead);
  end;

procedure tdataoverhead.getgoodsstock;
  begin
    sqlexecute('call getstockstore;'
//     'select id_dataoverhead, idoverhead, idgoods,'+
//     'idstock,name_goods,namestock,count_goods, count_goodsstart, selling_price, round(count_goods*selling_price,2) as all_price'+
//     ' from (select table_data_overhead.id_dataoverhead, table_data_overhead.idoverhead, table_data_overhead.idgoods,'+
//     '  table_overhead.idstock,          table_goods.name_goods,          concat_ws(" " " ",table_stock.name_stock,table_stock.adress_stock) as namestock, '+
//     '  case'+
//     '  when (select sum(count_goods)from (select * from table_data_overhead)a where a.idoverheadgoods in(table_data_overhead.id_dataoverhead) and a.activ_data_overhead in(1)) is null  '+
//     '  then table_data_overhead.count_goods                                                                                                                                  '+
//     '  else table_data_overhead.count_goods-                                                                                                                     '+
//     '  (select sum(count_goods)from (                                                                                                                            '+
//     '   select * from table_data_overhead)a where a.idoverheadgoods in(table_data_overhead.id_dataoverhead) and a.activ_data_overhead in(1))     '+
//     '   end count_goods,    '+
//     '  table_data_overhead.count_goods as  count_goodsstart,'+
//     '  table_data_overhead.selling_price   '+
//     ' from table_data_overhead            '+
//     ' left join table_goods on (table_goods.id_goods=table_data_overhead.idgoods)    '+
//     ' left join table_overhead on(table_overhead.id_overhead=table_data_overhead.idoverhead)     '+
//     ' left join table_stock on (table_stock.id_stock=table_overhead.idstock)             '+
//     ' where table_data_overhead.idoverhead in(                               '+
//     ' select table_overhead.id_overhead                         '+
//     ' from table_overhead                                           '+
//     ' where table_overhead.type_overhead in(0)) and table_data_overhead.activ_data_overhead in(1)) x where x.count_goods<>0 '
    );
    //baseclasssqlexecutequery.locate('')
  end;

procedure tdataoverhead.getstockstorenotttn(id_overhead: string);
  begin
    sqlexecute('call getstockstorenotttn('+id_overhead+')');
  end;

procedure tdataoverhead.getstockstorenotttnsr(id: string);
  begin
   sqlexecute('call getstockstorenotttnsr('+id+')');
  end;

procedure tdataoverhead.updatepricestock(newprice: string; id_dataoverhead: string);
  begin
    id_main_gobal:=id_dataoverhead;
    sqlexecute('call updatepricestock('+strtostrfloatsql(newprice)+','+id_dataoverhead+')');
  end;

procedure tdataoverhead.setnotactivoverhead(id: string);
  begin
   sqlexecute('call setnotactivoverhead('+id+')');
  end;

function  tdataoverhead.getavailabilitygoodsstock(id,count : string): boolean;
  begin
    sqlexecute(
     'select * from ( select         table_data_overhead.id_dataoverhead,         table_data_overhead.idoverhead,          table_data_overhead.idgoods,'+
     '  table_overhead.idstock,          table_goods.name_goods,          concat_ws(" " " ",table_stock.name_stock,table_stock.adress_stock) as namestock, '+
     '  case'+
     '  when (select sum(count_goods)from (select * from table_data_overhead)a where a.idoverheadgoods in(table_data_overhead.id_dataoverhead) and a.activ_data_overhead in(1)) is null  '+
     '  then table_data_overhead.count_goods                                                                                                                                  '+
     '  else table_data_overhead.count_goods-                                                                                                                     '+
     '  (select sum(count_goods)from (                                                                                                                            '+
     '   select * from table_data_overhead)a where a.idoverheadgoods in(table_data_overhead.id_dataoverhead) and a.activ_data_overhead in(1))     '+
     '   end count_goods,    '+
     '  table_data_overhead.selling_price   '+
     ' from table_data_overhead            '+
     ' left join table_goods on (table_goods.id_goods=table_data_overhead.idgoods)    '+
     ' left join table_overhead on(table_overhead.id_overhead=table_data_overhead.idoverhead)     '+
     ' left join table_stock on (table_stock.id_stock=table_overhead.idstock)             '+
     ' where table_data_overhead.idoverhead in(                               '+
     ' select table_overhead.id_overhead                         '+
     ' from table_overhead                                           '+
     ' where table_overhead.type_overhead in(0)) and table_data_overhead.activ_data_overhead in(1)) x where x.count_goods>='+strtostrfloatsql(count)+' and '+
     ' id_dataoverhead in('+id+')'
    );
    if recordcount>0 then  result:=true else result:=false;
  end;

procedure tdataoverhead.getsumdataoverhead(idoverhead: string);
  begin
    //sqlexecute('select sum(all_price) as all_price from (select '+sqlmath+' from table_data_overhead left join (select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)) a on(table_data_overhead.idgoods=a.id_goods)) b  where b.idoverhead in('+idoverhead+')');
//    sqlexecute('select idoverhead,sum(all_price) as all_price, sum(price_nds) as price_nds, sum(price) as price'+
//    ' from ( '+
//    ' select id_dataoverhead,idoverhead,idgoods,count_goods,price_goods,nds,count_place,load_weight,'+
//    '      round(count_goods*price_goods,2) as price,'+
//    '      round((count_goods*price_goods)*nds/100,2) as price_nds,'+
//    '      (round(count_goods*price_goods,2)+ round((count_goods*price_goods)*nds/100,2)) as all_price '+
//    ' from table_data_overhead) b '+
//    ' group by  b.idoverhead ' );

  end;

function  tdataoverhead.getdataoverheadid(id_dataoverhead : string) : titemdataoverhead;
  begin
    if countstring(id_dataoverhead) then
    begin
      sqlexecute(
        ' select '+sqlmath+' from table_data_overhead  '+
        ' left join (select idgoods as idgoodsnew, id_dataoverhead as id_dataoverheadnew '+
        ' from table_data_overhead) a on(idoverheadgoods=a.id_dataoverheadnew)            '+
        ' left join (select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)) b on(a.idgoodsnew=b.id_goods) '+
        ' where id_dataoverhead in('+id_dataoverhead+')'
        );
      if recordcount>0  then  result:=getdataoverhead else result:=titemdataoverhead.create('','','','','','','','','','','');
    end else result:=titemdataoverhead.create('','','','','','','','','','','');
  end;

function tdataoverhead.getdataoverhead : titemdataoverhead;
  begin
            result:= titemdataoverhead.create(
            returnfieldsname('id_dataoverhead'),
            returnfieldsname('idoverhead'),
            returnfieldsname('idoverheadgoods'),
            returnfieldsname('idgoods'),
            returnfieldsname('name_goods'),
            returnfieldsname('count_goods'),
            returnfieldsname('price_goods'),
            returnfieldsname('nds'),
            returnfieldsname('count_place'),
            returnfieldsname('load_weight'),
            returnfieldsname('selling_price'));
  end;

function tdataoverhead.getgoodsstockid(id: string) : titemgoodsstock;
  begin
    getgoodsstock;
    baseclasssqlexecutequery.locateex('id_dataoverhead',id,[]);
    result:=getitemgoodsstock;
  end;

function tdataoverhead.getitemgoodsstock : titemgoodsstock;
  begin
       result:=titemgoodsstock.create(
          returnfieldsname('id_dataoverhead'),
          returnfieldsname('name_goods'),
          returnfieldsname('count_goods'),
          returnfieldsname('selling_price')
      );
  end;

function tdataoverhead.getcountdataoverhead(id: string) : integer;
  begin
    sqlexecute('select getcountdataoverhead('+id+') as count_res;');
    result:=strtoint(returnfieldsname('count_res'));
  end;

function tdataoverhead.getlistdataoverhead(typeoverhead: string; idoverhead: string) : tlist;
 var listresult : tlist;
  begin
    listresult:=tlist.create;
    viewalldataoverhead(typeoverhead,idoverhead);
    while not eofcount do
     begin
       listresult.add(titemesf.create(

            returnfieldsname('name_goods'),
            returnfieldsname('count_goods'),
            returnfieldsname('price_goods'),
            returnfieldsname('price'),
            returnfieldsname('nds'),
            returnfieldsname('price_nds'),
            returnfieldsname('all_price'),
            returnfieldsname('code_okei')
       ));
       nextrecord;
     end;
    result:=listresult;
  end;

constructor titemesf.create(name_goods: string; count_goods: string; price_goods: string; price: string; nds: string; price_nds,all_price,code_okei: string);
  begin
    self.name_goods:=name_goods;
    self.count_goods:= getformatfloat(count_goods);
    self.price_goods:=getformatfloat(price_goods);
    self.nds:=getformatfloat(nds);
    self.price:=getformatfloat(price);
    self.price_nds:=getformatfloat(price_nds);
    self.all_price:=getformatfloat(all_price);
    self.code_okei:=code_okei;
  end;

end.


