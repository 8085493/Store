unit unittypedocuments;
interface
uses
 sysutils, classes, db, dbaccess, myaccess, memds,  unitdataoverhead,
 dbtables,dialogs,forms,printers,prvieweh,grids, unitmymessagedialog,
 baseclasssqlexecute,logunit,unitcontractor,additionalfunctions;
type

 titemtypedocuments = class
   private
     idtable_type_doc,code_type_doc,name_doc : string;
   public
    property _idtable_type_doc : string read  idtable_type_doc write idtable_type_doc;
    property _code_type_doc : string read code_type_doc  write code_type_doc;
    property _name_doc : string read name_doc  write name_doc;

    constructor create(idtable_type_doc,code_type_doc,name_doc : string);
 end;

 ttypedocuments = class(tbaseclasssqlexecute)
   constructor create(connection : tmyconnection);
   function    gettypedoc : tlist;
   function    getitemtypedoc : titemtypedocuments;
   function    gettypedocid(id : string) : titemtypedocuments;
   procedure   setsave;
   procedure   setdeletetypedoc(id : string);
 end;

implementation

constructor titemtypedocuments.create(idtable_type_doc: string; code_type_doc: string; name_doc: string);
  begin
    self.idtable_type_doc:=idtable_type_doc;
    self.code_type_doc:=code_type_doc;
    self.name_doc:=name_doc;
  end;

constructor ttypedocuments.create(connection: tmyconnection);
  begin
   inherited create(connection);
  end;

function ttypedocuments.gettypedoc : tlist;
  var list : tlist;
  begin
    sqlexecute('call gettypedoc;');
    list:=tlist.create;
    while not eofcount do
     begin
      list.add(getitemtypedoc);
      nextrecord;
     end;
    result:=list;
  end;

function    ttypedocuments.gettypedocid(id : string) : titemtypedocuments;
  begin
   if not countstring(id) then id:='-1';

   sqlexecute('call gettypedocid('+id+');');
   result:=getitemtypedoc;
  end;

procedure ttypedocuments.setsave;
  begin
    baseclasssqlexecutesource.edit;
    baseclasssqlexecutequery.post;
  end;

procedure ttypedocuments.setdeletetypedoc(id: string);
  begin
    sqlexecute('call setdeletetypedoc('+id+');');
  end;

function   ttypedocuments.getitemtypedoc : titemtypedocuments;
  begin
    result:=titemtypedocuments.create(
    returnfieldsname('idtable_type_doc'),
    returnfieldsname('code_type_doc'),
    returnfieldsname('name_doc')
    );
  end;
end.
