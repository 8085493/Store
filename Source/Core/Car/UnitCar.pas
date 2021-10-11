unit unitcar;
interface
 uses
 sysutils, classes, db, dbaccess, myaccess, memds, dbtables,
 sskinmanager,dialogs,forms,printers,prvieweh,grids, unitmymessagedialog,
 baseclasssqlexecute,logunit,additionalfunctions,unitcontractor;
type
titemcar = class
  private
   id_car, name_car,number_car,owner_car,driver_car,idcontractor : string ;
 //  contactor : titemcontractor;
  public
   property  _id_car        : string read id_car;
   property  _name_car      : string read name_car;
   property  _number_car    : string read number_car;
   property  _owner_car     : string read owner_car;
   property  _driver_car    : string read driver_car;
   property  _idcontractor  : string read idcontractor;
  // property  _contactor     : titemcontractor read contactor;

   constructor create( id_car, name_car,number_car,owner_car,driver_car,idcontractor : string);

end;
 tcar = class(tbaseclasssqlexecute)
   constructor create(connect : tmyconnection) ;
   procedure createtable;
   procedure viewcar(filter : string='');
   procedure insertcar;
   procedure setcarcontractor(id_contractor,id_car : string) ;
   procedure deletecar(id_car : string);
   function  getcarid(id_car : string) : titemcar;
   function  getcar : titemcar;
 end;

implementation

constructor titemcar.create(id_car: string; name_car: string; number_car: string; owner_car: string; driver_car: string; idcontractor: string);
  begin
     self.id_car:=id_car;
     self.name_car:=name_car;
     self.number_car:=number_car;
     self.owner_car:=owner_car;
     self.driver_car:=driver_car;
     self.idcontractor:=idcontractor;
    // self.contactor:=tcontractor.create(co);
  end;

constructor tcar.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure tcar.createtable;
  begin
    sqlexecute(
    ' create table if not exists `table_car` ( '+
    ' `id_car`  int(11) not null auto_increment,     '+
    ' `name_car` varchar(200),'+
    ' `number_car` varchar(200),'+
    ' `owner_car`  varchar(200),'+
    ' `driver_car`  varchar(200),'+
    ' `idcontractor` int(11),'+
    ' `delete_car` tinyint(1) default 0,'+
    ' primary key (`id_car`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tcar.viewcar(filter : string='');
  begin
    sqlexecute('select * from table_car left join table_contractor on(idcontractor=table_contractor.id_contractor) where delete_car in(0) order by name_car');
  end;

procedure tcar.insertcar;
  begin
    sqlexecute('insert into table_car (name_car) values(null)');
  end;

procedure tcar.setcarcontractor(id_contractor: string; id_car: string);
  begin
    sqlexecute('update table_car set idcontractor='+id_contractor+' where id_car in('+id_car+')');
  end;

procedure tcar.deletecar(id_car: string);
  begin
    sqlexecute('update table_car set delete_car=1 where id_car in('+id_car+')');
    //sqlexecute('delete from table_car where id_car in('+id_car+')');
  end;

function tcar.getcarid(id_car: string): titemcar;
  begin
   if countstring(id_car) then
    begin
      sqlexecute('select * from table_car left join table_contractor on(idcontractor=table_contractor.id_contractor) where id_car in('+id_car+')');
      if recordcount>0 then
        result:=getcar
      else result:=titemcar.create('','','','','','');
    end else result:=titemcar.create('','','','','','');
  end;

function tcar.getcar: titemcar;
  begin
    result:=titemcar.create(
            returnfieldsname('id_car'),
            returnfieldsname('name_car'),
            returnfieldsname('number_car'),
            returnfieldsname('owner_car'),
            returnfieldsname('driver_car'),
            returnfieldsname('idcontractor')
       );
  end;
end.
