unit UnitOverhead;
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS,  UnitDataOverhead,
  DBTables,Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,UnitContractor,AdditionalFunctions;
 type
 TItemOverhead = class
 private
  id_Overhead  : string;
  type_Overhead   : string;
  Number_Overhead,seria_Overhead : string;
  Date_Overhead  : string;
  IDContractor : string;
  IDStock    : string;
  IDCar     : string;
  Count_races  : string;
      //погрузочно разгрузочные работы
  loading       : string;
  unloading      : string;
  type_loading   : string;
  type_unloading   : string;
  input_date_loading  : string;
  output_date_loading  : string;
  input_date_unloading : string;
  output_date_unloading : string;
     // доп инфа
  allow_output   : string;
  goods_passed   : string;
  goods_received   : string;
  proxy            : string;
  proxy_contacor   : string;
  prin_goods        : string;
  document_Overhead : string;
  Activ_Overhead  : string;
  idShippingAddress : string;
  idTypeDoc         : string;
  blankCode : string;
  // итоги
  totalCostVat,totalVat,totalCost : string;
  {
          `view_summa_overhead`.`totalCostVat` AS `totalCostVat`,
        `view_summa_overhead`.`totalVat` AS `totalVat`,
        `view_summa_overhead`.`totalCost` AS `totalCost`,
  }
  public
        loadingContactor       : TItemContractor;
        unloadingContactor     : TItemContractor;

        property _id_Overhead     : string read id_Overhead;
        property _type_Overhead   : string read type_Overhead;
        property _Number_Overhead : string read Number_Overhead ;
        property _seria_Overhead  : string read seria_Overhead ;
        property _Date_Overhead   : string read Date_Overhead ;
        property _IDContractor    : string read IDContractor ;
        property _IDStock         : string read IDStock ;
        property _IDCar           : string read IDCar  ;
        property _Count_races     : string read Count_races   ;
            //погрузочно разгрузочные работы
        property _loading         : string read loading    ;
        property _unloading       : string read unloading     ;
        property _type_loading    : string read type_loading     ;
        property _type_unloading  : string read type_unloading      ;
        property _input_date_loading    : string read input_date_loading  ;
        property _output_date_loading   : string read output_date_loading   ;
        property _input_date_unloading  : string read input_date_unloading    ;
        property _output_date_unloading : string read output_date_unloading     ;
           // доп инфа
        property _allow_output   : string read   allow_output           ;
        property _goods_passed   : string read   goods_passed            ;
        property _goods_received : string read   goods_received             ;
        property _proxy          : string read   proxy              ;
        property _proxy_contacor : string read   proxy_contacor               ;
        property _prin_goods     : string read   prin_goods                ;
        property _document_Overhead : string read  document_Overhead               ;
        property _Activ_Overhead    : string read  Activ_Overhead ;
        property _idShippingAddress : string read idShippingAddress write idShippingAddress;
        property _idTypeDoc : string read idTypeDoc write idTypeDoc;
        property _blankCode : string read blankCode write blankCode;
        // итоги
        property _totalCostVat     : string read   totalCostVat                ;
        property _totalVat : string read  totalVat               ;
        property _totalCost    : string read  totalCost ;

 constructor Create(
   id_Overhead  : string;
  type_Overhead   : string;
  seria_Overhead : string;
  Number_Overhead : string;
  Date_Overhead  : string;
  IDContractor : string;
  IDStock    : string;
  IDCar     : string;
  Count_races  : string;
      //погрузочно разгрузочные работы
  loading       : string;
  unloading      : string;
  type_loading   : string;
  type_unloading   : string;
  input_date_loading  : string;
  output_date_loading  : string;
  input_date_unloading : string;
  output_date_unloading : string;
     // доп инфа
  allow_output   : string;
  goods_passed   : string;
  goods_received   : string;
  proxy            : string;
  proxy_contacor   : string;
  prin_goods        : string;
  document_Overhead : string;
  Activ_Overhead  : string;
  idShippingAddress : string;
  idTypeDoc : string;
  blankCode : string;
  // итоги
  totalCostVat,totalVat,totalCost : string
 );

 end;

 TOverhead=class(TBaseClassSQlExecute) //накладные
    constructor Create(Connect : TMyConnection) ;
    procedure CreateTable;
    procedure DropTable;
    procedure newNullOverhead(type_Overhead : string);
    procedure ViewOverhead(type_Overhead : string);
    procedure DeleteOverhead(ID : string);
    procedure setContractor(IDContractor,id_overhead : string);
    procedure setStock(IDStock,id_overhead : string);
    procedure setCar(IDCar,id_overhead : string) ;
    procedure setNumber(Number_Overhead,id_overhead : string);
    procedure setDate(dateString : Tdate;id_overhead : string);
    procedure setActivity(values,id_Overhead : string);
   // procedure getOverhead(idOverhead : String);
    function  getOverhead(idOverhead : String) : TItemOverhead;
    procedure getSumOverhead(id_overhead : String);
    procedure setValuesField(nameField,valuesField, id_record : string);

 end;
implementation
  uses UnitDM;
constructor TItemOverhead.Create(id_Overhead: string; type_Overhead: string; seria_Overhead: string; Number_Overhead: string; Date_Overhead: string; IDContractor: string; IDStock: string; IDCar: string; Count_races: string; loading: string; unloading: string; type_loading: string; type_unloading: string; input_date_loading: string; output_date_loading: string; input_date_unloading: string; output_date_unloading: string; allow_output: string; goods_passed: string; goods_received: string; proxy: string; proxy_contacor: string; prin_goods: string; document_Overhead: string; Activ_Overhead: string; idShippingAddress: string; idTypeDoc: string; blankCode: string; totalCostVat: string; totalVat: string; totalCost: string);
//Create(id_Overhead: string; type_Overhead: string; seria_Overhead: string; Number_Overhead: string; Date_Overhead: string; IDContractor: string; IDStock: string; IDCar: string; Count_races: string; loading: string; unloading: string; type_loading: string; type_unloading: string; input_date_loading: string; output_date_loading: string; input_date_unloading: string; output_date_unloading: string; allow_output: string; goods_passed: string; goods_received: string; proxy: string; proxy_contacor: string; prin_goods: string; document_Overhead: string; Activ_Overhead: string; idShippingAddress,idTypeDoc: string; totalCostVat: string; totalVat: string; totalCost: string);
//(id_Overhead: string; type_Overhead: string; seria_Overhead,Number_Overhead: string; Date_Overhead: string; IDContractor: string; IDStock: string; IDCar: string; Count_races: string; loading: string; unloading: string; type_loading: string; type_unloading: string; input_date_loading: string; output_date_loading: string; input_date_unloading: string; output_date_unloading: string; allow_output: string; goods_passed: string; goods_received: string; proxy: string; proxy_contacor: string; prin_goods: string; document_Overhead: string; Activ_Overhead: string);
  begin
      self.id_Overhead:= id_Overhead;
      self.type_Overhead:= type_Overhead;
      Self.seria_Overhead:=seria_Overhead;
      self.Number_Overhead:= Number_Overhead;
      self.Date_Overhead:= Date_Overhead;
      self.IDContractor:= IDContractor;
      self.IDStock:= IDStock;
      self.IDCar:= IDCar;
      self.Count_races:= Count_races;
      self.loading := loading;
      self.unloading:= unloading;
      self.type_loading:= type_loading;
      self.type_unloading:= type_unloading;
      self.input_date_loading:= input_date_loading;
      self.output_date_loading:= output_date_loading;
      self.input_date_unloading := input_date_unloading;
      self.output_date_unloading := output_date_unloading;
      self.allow_output:= allow_output;
      self.idShippingAddress:=idShippingAddress;
      self.goods_passed:= goods_passed;
      self.goods_received:= goods_received;
      self.proxy:= proxy;
      self.proxy_contacor:= proxy_contacor;
      self.prin_goods:= prin_goods;
      self.document_Overhead:= document_Overhead;
      self.Activ_Overhead:= Activ_Overhead;
      self.idTypeDoc:=idTypeDoc;
      self.totalCostVat:=totalCostVat;
      self.totalVat:=totalVat;
      self.totalCost:=totalCost;
      self.blankCode:=blankCode;
      loadingContactor:=TContractor.Create(dm.ConnectionServer).getContactorID(loading);
      unloadingContactor:=TContractor.Create(dm.ConnectionServer).getContactorID(unloading);
      //  unloadingContactor     : TItemContractor;
  end;

constructor  toverhead.create(connect : tmyconnection) ;
  begin
       inherited create(connect);
  end;

procedure toverhead.createtable;
  begin
//   sqlexecute(
//    ' create table if not exists `table_overhead` ( '+
//    ' `id_overhead`  int(11) not null auto_increment,     '+
//    ' `type_overhead` int(11) not null,'+
//    '  seria_overhead varchar(5),'+
//    ' `number_overhead` varchar(200),'+
//    ' `date_overhead` date,'+
//    ' `idcontractor`  int(11),'+
//    ' `idstock`  int(11),'+
//    ' `idcar`  int(11),'+
//    '  count_races   int(3),'+
//    //погрузочно разгрузочные работы
//    '  loading int(11),'+ //  загрузчик
//    '  unloading int(11),'+ // разгрузчик
//    '  type_loading int(11) default 0,'+ // вид погрузки загрузчик
//    '  type_unloading int(11) default 0,'+ //вид погрузки разгрузчик
//    '  input_date_loading datetime,'+ // дата погрузки загрузчик
//    '  output_date_loading datetime,'+ // дата погрузки загрузчик
//    '  input_date_unloading  datetime,'+ //дата погрузки разгрузчик
//    '  output_date_unloading  datetime,'+ //дата погрузки разгрузчик
//   // доп инфа
//    ' `allow_output` varchar(200),'+  //разрешил
//    ' `goods_passed` varchar(200),'+   //  сдал грузоотправитель
//    ' `goods_received` varchar(200),'+   // принял
//    ' `proxy` varchar(200),'+//договор
//    ' `proxy_contacor` varchar(200),'+ //выданный
//    ' `prin_goods` varchar(200),'+     //принял
//    ' `document_overhead` varchar(200),'+
//    ' `activ_overhead` tinyint(1) default 0,'+
//    ' primary key (`id_overhead`) '+
//    ' ) engine=innodb auto_increment=0 default charset=utf8;'
//    );
  end;

procedure toverhead.newnulloverhead(type_overhead : string);
var item : titemcontractor;
  begin
   item:=tcontractor.create(connect).getcontactormain;
   sqlexecute('insert into table_overhead (type_overhead,date_overhead,loading,allow_output,goods_passed) values('+
   type_overhead+','''+formatdatetime(formatdatetimeconvert,now)+''','+
   item._id_contractor+','''+item._head+''','''+item._head+''')');
  end;

procedure toverhead.droptable;
  begin
   sqlexecute('drop table if exists `table_overhead`;');
  end;

procedure toverhead.viewoverhead(type_overhead: string);
  begin
    sqlexecute('call getoverhead('+type_overhead+');');
//   sqlexecute('select * from table_overhead '+
//   'left join table_contractor on(table_overhead.idcontractor=table_contractor.id_contractor) '+
//   'left join table_stock on(table_overhead.idstock=table_stock.id_stock) '+
//   'left join table_car on(table_overhead.idcar=table_car.id_car) '+
//   'left join ('+
//   ' select idoverhead,sum(all_price) as all_price, sum(price_nds) as price_nds, sum(price) as price'+
//   ' from ( '+
//   ' select id_dataoverhead,idoverhead,idgoods,count_goods,price_goods,nds,count_place,load_weight,'+
//   '      round(count_goods*price_goods,2) as price,'+
//   '      round((count_goods*price_goods)*nds/100,2) as price_nds,'+
//   '      (round(count_goods*price_goods,2)+ round((count_goods*price_goods)*nds/100,2)) as all_price '+
//   ' from table_data_overhead) b '+
//   ' group by  b.idoverhead ) z on(table_overhead.id_overhead=z.idoverhead)'+
//   ' where type_overhead in('+type_overhead+')  order by activ_overhead asc, date_overhead desc');
  end;

procedure toverhead.setcontractor(idcontractor: string; id_overhead: string);
  begin
   updateonefield('table_overhead','idcontractor',idcontractor,'id_overhead',id_overhead);
  // updateonefield('table_overhead','unloading',idcontractor,'id_overhead',id_overhead);
  end;

procedure toverhead.setstock(idstock: string; id_overhead: string);
  begin
   updateonefield('table_overhead','idstock',idstock,'id_overhead',id_overhead);
  end;

procedure toverhead.setcar(idcar: string; id_overhead: string);
  begin
   updateonefield('table_overhead','idcar',idcar,'id_overhead',id_overhead);
  end ;

procedure toverhead.setnumber(number_overhead: string; id_overhead: string);
  begin
   updateonefieldstring('table_overhead','number_overhead',number_overhead,'id_overhead',id_overhead);
  end;

procedure toverhead.setvaluesfield(namefield: string; valuesfield: string; id_record: string);
  begin
   updateonefieldstring('table_overhead',namefield,valuesfield,'id_overhead',id_record);
  end;

procedure toverhead.setdate(datestring: tdate; id_overhead: string);
  begin
   updateonefieldstring('table_overhead','date_overhead',
   formatdatetime(formatdatetimeconvert,datestring)
   ,'id_overhead',id_overhead);
//    setvaluesfield('input_date_loading',formatdatetime(formatdatetimeconvert,datestring),id_overhead);
//    setvaluesfield('output_date_loading',formatdatetime(formatdatetimeconvert,datestring),id_overhead);
//    setvaluesfield('input_date_unloading',formatdatetime(formatdatetimeconvert,datestring),id_overhead);
//    setvaluesfield('output_date_unloading',formatdatetime(formatdatetimeconvert,datestring),id_overhead);

   {
        '  input_date_loading datetime,'+ // дата погрузки загрузчик
    '  output_date_loading datetime,'+ // дата погрузки загрузчик
    '  input_date_unloading int(11) datetime,'+ //дата погрузки разгрузчик
    '  output_date_unloading int(11) datetime,'+ //дата погрузки разгрузчикo
   }
  end;

procedure toverhead.setactivity(values: string; id_overhead: string);
  begin
   updateonefield('table_overhead','activ_overhead',values,'id_overhead',id_overhead);
  end;

//procedure toverhead.getoverhead(idoverhead: string);
//  begin
//    sqlexecute('select * from table_overhead '+
//   'left join table_contractor on(table_overhead.idcontractor=table_contractor.id_contractor) '+
//   'left join table_stock on(table_overhead.idstock=table_stock.id_stock) '+
//   'left join table_car on(table_overhead.idcar=table_car.id_car)'+
//   'where id_overhead in('+idoverhead+') order by date_overhead asc');
//  end;

function toverhead.getoverhead(idoverhead: string): titemoverhead;
  begin

//     sqlexecute('select * from table_overhead '+
//     'left join table_contractor on(table_overhead.idcontractor=table_contractor.id_contractor) '+
//     'left join table_stock on(table_overhead.idstock=table_stock.id_stock) '+
//     'left join table_car on(table_overhead.idcar=table_car.id_car)'+
//     'where id_overhead in('+idoverhead+') order by date_overhead asc');
     sqlexecute('call getoverheadid('+idoverhead+');');

     if recordcount>0 then
      result:=titemoverhead.create(
          returnfieldsname('id_overhead'),
          returnfieldsname('type_overhead'),
          returnfieldsname('seria_overhead'),
          returnfieldsname('number_overhead'),
          returnfieldsname('date_overhead'),
          returnfieldsname('idcontractor'),
          returnfieldsname('idstock'),
          returnfieldsname('idcar'),
          returnfieldsname('count_races'),
          returnfieldsname('loading'),
          returnfieldsname('unloading'),
          returnfieldsname('type_loading'),
          returnfieldsname('type_unloading'),
          returnfieldsname('input_date_loading'),
          returnfieldsname('output_date_loading'),
          returnfieldsname('input_date_unloading'),
          returnfieldsname('output_date_unloading'),

          returnfieldsname('allow_output'),
          returnfieldsname('goods_passed'),
          returnfieldsname('goods_received'),
          returnfieldsname('proxy'),
          returnfieldsname('proxy_contacor'),
          returnfieldsname('prin_goods'),
          returnfieldsname('document_overhead'),
          returnfieldsname('activ_overhead'),
          returnfieldsname('idshippingaddress'),
          returnfieldsname('idtypedoc'),
          returnfieldsname('blankcode'),
          getformatfloat(returnfieldsname('totalcostvat')),
          getformatfloat(returnfieldsname('totalvat')),
          getformatfloat(returnfieldsname('totalcost'))
      );
  end;
procedure toverhead.getsumoverhead(id_overhead: string);
  begin
    sqlexecute('select * from table_overhead where id_overhead in('+id_overhead+')');
  end;

procedure toverhead.deleteoverhead(id: string);
  begin
    sqlexecute('delete from table_overhead where id_overhead in('+id+')');
    tdataoverhead.create(connect).deletealloverhead(id);
  end;
end.



