unit unitcontractor;
interface
 uses
 sysutils, classes, db, dbaccess, myaccess, memds, dbtables,
 sskinmanager,dialogs,forms,printers,prvieweh,grids, unitmymessagedialog,
 baseclasssqlexecute,logunit,additionalfunctions;

 type
 titemcontractor = class
   private
    id_contractor,small_name_contractor,name_contractor, phone,
    unp,okpo, legal_address,mailing_address,head,
    checking_account,name_bank, agreement,date_agreement : string;
   public
    property _id_contractor : string read id_contractor;
    property _small_name_contractor : string read small_name_contractor;
    property _name_contractor : string read name_contractor;
    property _unp : string read unp;
    property _okpo : string read okpo;
    property _checking_account : string read checking_account;
    property _legal_address : string read legal_address;
    property _phone : string read phone;
    property _mailing_address : string read mailing_address;
    property _head : string read head;
    property _name_bank : string read name_bank;
    property _agreement : string read agreement;
    property _date_agreement : string read date_agreement;

    constructor create(id_contractor,small_name_contractor,name_contractor,
    unp,okpo,checking_account,legal_address,
    phone,mailing_address,head,name_bank,agreement,date_agreement : string);

 end;
 tcontractor= class(tbaseclasssqlexecute)  //контрагенты
   constructor create(connect : tmyconnection);
   procedure createtable;
   procedure viewcontractor;
   function insertnullcontactor : Integer;
   procedure deletecontactor(id_contractor : string);
   function getcontactor : titemcontractor;
   function getcontactorid(id : string): titemcontractor;
   function getcontactormain: titemcontractor;
   function getlistcontactor : tlist;
 end;
implementation

constructor titemcontractor.create(id_contractor,small_name_contractor: string;
name_contractor: string; unp: string;
okpo,checking_account,legal_address,phone,
mailing_address,head,name_bank,agreement,date_agreement: string);
  begin
   self.id_contractor:=id_contractor;
   self.name_contractor:=name_contractor;
   self.small_name_contractor:=small_name_contractor;
   self.checking_account:=checking_account;
   self.legal_address:=legal_address;
   self.phone:=phone;
   self.unp:=unp;
   self.okpo:=okpo;
   self.mailing_address:=mailing_address;
   self.head:=head;
   self.name_bank:=name_bank;
   self.agreement:=agreement;
   self.date_agreement:=date_agreement;
  end;

constructor tcontractor.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure tcontractor.createtable;
  begin
    sqlexecute(
    ' create table if not exists `table_contractor` ( '+
    ' `id_contractor`  int(11) not null auto_increment,     '+
    ' `small_name_contractor` varchar(255),'+
    ' `name_contractor` varchar(255),'+
    ' `unp` varchar(200),'+
    ' `okpo`  varchar(200),'+
   // ' `okpo`  varchar(200),'+
    ' `legal_address`  varchar(200),'+
    ' `phone`  varchar(200),'+
    ' `mailing_address`  varchar(200),'+
    ' `head`  varchar(200),'+
    ' `checking_account`  varchar(200),'+
    ' `name_bank`  varchar(200),'+
    ' `agreement`  varchar(200),'+
    ' `main_contactor` tinyint(1) default 0,'+
    ' `delete_contactor` tinyint(1) default 0,'+
    ' primary key (`id_contractor`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure tcontractor.viewcontractor;
var id : string;
  begin
   try
    id:=returnfieldsname('id_contractor');
    sqlexecute('call getcontactor;');
    baseclasssqlexecutequery.locate('id_contractor',id,[]);
   except

   end;
   //sqlexecute('select * from table_contractor where delete_contactor in(0) order by main_contactor , name_contractor');
  end;

function tcontractor.insertnullcontactor : integer;
  begin
   sqlexecute('insert into table_contractor (name_contractor) values(null)');
   sqlexecute('select last_insert_id() AS id_contractor from table_contractor ');
   Result:=StrToInt(ReturnFieldsName('id_contractor'));
  end;

procedure tcontractor.deletecontactor(id_contractor : string);
  begin
   sqlexecute('update table_contractor set delete_contactor=1 where id_contractor in('+id_contractor+')');
  end;

function tcontractor.getcontactormain: titemcontractor;
  begin
    sqlexecute('select * from table_contractor where main_contactor in(1)');
      if recordcount>0 then result:=getcontactor else
      result:=titemcontractor.create('','','','','','','','','','','','','');
  end;

function tcontractor.getlistcontactor : tlist;
 var returnlist : tlist;
  begin
   sqlexecute('call getcontactor;');
   returnlist:=tlist.create;
   while not eofcount do
    begin
      returnlist.add(getcontactor);
      nextrecord;
    end;
    result:=returnlist;
  end;

function tcontractor.getcontactorid(id: string): titemcontractor;
  begin
   if countstring(id) then
    begin
      sqlexecute('select * from table_contractor where id_contractor in('+id+')');
      if recordcount>0 then result:=getcontactor else
      result:=titemcontractor.create('','','','','','','','','','','','','');
    end else
    result:=titemcontractor.create('','','','','','','','','','','','','');
  end;

function tcontractor.getcontactor : titemcontractor;
  begin
   // showmessage( returnfieldsname('unp'));
    result:=titemcontractor.create(
       returnfieldsname('id_contractor'),
       returnfieldsname('small_name_contractor'),
       returnfieldsname('name_contractor'),
       returnfieldsname('unp'),
       returnfieldsname('okpo'),
       returnfieldsname('checking_account'),
       returnfieldsname('legal_address'),
       returnfieldsname('phone'),
       returnfieldsname('mailing_address'),
       returnfieldsname('head'),
       returnfieldsname('name_bank'),
       returnfieldsname('agreement'),
       returnfieldsname('date_agreement')
       );
  end;
end.
