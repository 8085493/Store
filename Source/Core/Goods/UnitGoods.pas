unit unitgoods;
{ tgoods }
interface
 uses
 sysutils, classes, db, dbaccess, myaccess, memds, dbtables,
 dialogs,forms,printers,prvieweh,grids, unitmymessagedialog,
 baseclasssqlexecute,logunit,additionalfunctions;

type
ttypegoods = class
  private
  id_goods, namegoods, id_metrics : string;
  public
    property id   : string read id_goods;
    property name : string read namegoods;
    property id_m : string read id_metrics;

    constructor create(id_goods, namegoods, id_metrics : string);

end;

tgoods = class(tbaseclasssqlexecute)
  private

  protected

  public
    const
     sqlview = 'select * from `table_goods` left join table_metrics on(table_goods.id_metrics=table_metrics.idmetrics)';
    constructor create(connect : tmyconnection) ;
    procedure createtable;
    procedure droptable;
    procedure viewgoods(filter : string='');
    procedure deletegoods(id : string);
    procedure insertgoods;
    procedure setmetrics(id_metrics, id_goods : string);
    function  getgoods : ttypegoods;
    function  getgoodsid(id : string):ttypegoods;
  published

  end;

implementation

constructor ttypegoods.create(id_goods: string; namegoods: string; id_metrics: string);
  begin
    self.id_goods:=id_goods;
    self.namegoods:=namegoods;
    self.id_metrics:=id_metrics;
  end;

constructor tgoods.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure  tgoods.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_goods` ( '+
    ' `id_goods`  int(11) not null auto_increment,'+
    ' `name_goods` varchar(200),'+
    ' `id_metrics`  int(11),'+
    ' `delete_goods` tinyint(1) default 0,'+
    ' primary key (`id_goods`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tgoods.droptable;
  begin
    sqlexecute('drop table if exists `table_goods`;');
  end;

procedure tgoods.viewgoods(filter : string='');
  begin
    sqlexecute(sqlview+' where delete_goods in(0) order by name_goods');
  end;

procedure tgoods.deletegoods(id : string);
  begin
   // sqlexecute('delete from `table_goods` where `id_goods` in('+id+')');
    updateonefield('table_goods','delete_goods','1','id_goods',id);
  end;

procedure tgoods.setmetrics(id_metrics: string; id_goods: string);
  begin
    updateonefield('table_goods','id_metrics',id_metrics,'id_goods',id_goods);
  end;

procedure tgoods.insertgoods;
  begin
    sqlexecute('insert into table_goods (name_goods) values(null)');
  end;

function tgoods.getgoodsid(id: string):ttypegoods;
  begin
   if countstring(id) then
    begin
      //sqlexecute(sqlview+' where id_goods in('+id+')');
      sqlexecute('call getgoodsid('+id+')');
      if recordcount>0 then
         result:=getgoods else result:=ttypegoods.create('','','');
    end else result:=ttypegoods.create('','','');

  end;

function tgoods.getgoods : ttypegoods;
  begin
    result:=
     ttypegoods.create(
        returnfieldsname('id_goods'),
        returnfieldsname('name_goods'),
        returnfieldsname('id_metrics'));
  end;
end.

