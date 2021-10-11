unit Unitbank ;
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit;
{ TBank} {Bank}
type
  TBank = class(TBaseClassSQlExecute)
  private

  protected

  public
    constructor Create(Connect : TMyConnection) ;
    procedure CreateTable;
    procedure DropTable;
    procedure ViewBank(filter : string='');
    procedure DeleteBank(ID : string);
  published

  end;

implementation

constructor tbank.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure  tbank.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_bank` ( '+
    ' `id_bank`  int(11) not null auto_increment,     '+
    ' `name_bank` varchar(200),'+
    ' primary key (`id_bank`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tbank.droptable;
  begin
    sqlexecute('drop table if exists `table_bank`;');
  end;

procedure tbank.viewbank(filter : string='');
  begin
    sqlexecute('select * from `table_bank` ');
  end;

procedure tbank.deletebank(id : string);
  begin
    sqlexecute('delete from `table_bank` where `id_bank` in('+id+')');
  end;

end.
