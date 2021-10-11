unit UnitMetrics;
{ TMetrics }
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit;

type
TItemMetrics = class
  private
    idMetrics,Name_metrics,code_okei : string;
  public
    property _idMetrics   : String read idMetrics    write idMetrics;
    property _Name_metrics: String read Name_metrics write Name_metrics;
    property _code_okei   : string read code_okei write code_okei;
    constructor Create( idMetrics,Name_metrics,code_okei : string);
end;
  TMetrics = class(TBaseClassSQlExecute)
  private

  protected

  public
    constructor Create(Connect : TMyConnection) ;
    procedure CreateTable;
    procedure DropTable;
    procedure ViewMetrics(filter : string='');
    procedure DeleteMetrics(ID : string);
    procedure insertMetrics;
    function  getMetricsID(ID : string) : TItemMetrics;
    function  getItemMetrics  : TItemMetrics;
  published

  end;

implementation

constructor TItemMetrics.Create(idMetrics: string; Name_metrics,code_okei: string);
  begin
    Self.idMetrics:=idMetrics;
    Self.Name_metrics:=Name_metrics;
    Self.code_okei:=code_okei;
  end;

constructor TMetrics.Create(Connect: TMyConnection);
  begin
    inherited Create(Connect);
  end;

procedure  tmetrics.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_metrics` ( '+
    ' `idmetrics`  int(11) not null auto_increment,     '+
    ' `name_metrics` varchar(200),'+
    ' `delete_metrics` tinyint(1) default 0,'+
    ' primary key (`idmetrics`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tmetrics.droptable;
  begin
    sqlexecute('drop table if exists `table_tmetrics`;');
  end;

procedure tmetrics.viewmetrics(filter : string='');
  begin
    sqlexecute('call getmetrics;'
    //'select * from `table_metrics` '
    );
  end;

procedure tmetrics.deletemetrics(id : string);
  begin
    //sqlexecute('delete from `table_metrics` where `id_metrics` in('+id+')');
    sqlexecute('call delete_metrics('+id+')');
  end;

procedure tmetrics.insertmetrics;
  begin
    sqlexecute('call insertmetrics;');
  end;

function tmetrics.getmetricsid(id: string) : titemmetrics;
  begin
    sqlexecute('call getmetricsid('+id+')');
    result:=getitemmetrics;
  end;

function tmetrics.getitemmetrics : titemmetrics;
  begin
    result:=titemmetrics.create(returnfieldsname('idmetrics'),
    returnfieldsname('name_metrics'),returnfieldsname('code_okei'));
  end;
end.

