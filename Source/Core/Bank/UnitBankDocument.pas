unit UnitBankDocument;
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,AdditionalFunctions;
{ TBank_document}
{Bank_document}
type
TBank_document = class(TBaseClassSQlExecute)
  private

  protected

  public
    constructor Create(Connect : TMyConnection) ;
    procedure CreateTable;
    procedure DropTable;
    procedure ViewBank_document(filter : string='');
    procedure DeleteBank_document(ID : string);
    procedure insertBank_document(date_: TDate;type_payment, score_bank,idContractor,Price_Goods : String);
    procedure setActiv_Bank_document(id_Bank_document,Activ_Bank_document : string);
    procedure getReportBank(typeRec : String
    //dateStart,DateEnd : TDate
    );
    procedure getDocumentBankGroup;
    procedure getListDocumentBank(viewDate : string);
    procedure getListAllBank;
  published

end;

implementation

constructor tbank_document.create(connect: tmyconnection);
  begin
    inherited create(connect);
  end;

procedure  tbank_document.createtable;
  begin
     sqlexecute(
    ' create table if not exists `table_bank_document` ( '+
    ' `id_bank_document`  int(11) not null auto_increment,     '+
    ' `date_document` date,'+
    ' `type_payment` int(11) not null,'+
    ' `score_bank` varchar(200),'+
    ' `idcontractor`  int(11),'+
    ' `price_goods`  float(11,2) default 0,'+
    ' `activ_bank_document` tinyint(1) default 0,'+
    ' primary key (`id_bank_document`) '+
    ' ) engine=innodb auto_increment=0 default charset=utf8;'
    );
  end;

procedure  tbank_document.droptable;
  begin
    sqlexecute('drop table if exists `table_bank_document`;');
  end;

procedure tbank_document.viewbank_document(filter : string='');
  begin
   //sqlexecute('call viewlistbank');
    sqlexecute('select activ_bank_document,id_bank_document,date_document,'+
    'case when type_payment =0 then "приход" else "расход" end type_payment,'+
    'score_bank,idcontractor,price_goods,'+
    'name_contractor,unp,okpo,mailing_address from `table_bank_document` left join table_contractor on(table_bank_document.idcontractor=table_contractor.id_contractor)');
  end;

procedure tbank_document.deletebank_document(id : string);
  begin
    sqlexecute('delete from `table_bank_document` where `id_bank_document` in('+id+')');
  end;

procedure tbank_document.insertbank_document(date_: tdate; type_payment: string; score_bank: string; idcontractor: string; price_goods: string);
  begin
    sqlexecute('insert into table_bank_document (date_document,type_payment, score_bank,idcontractor,price_goods) values ('''+
    formatdatetime(formatdatetimeconvert,date_)+''','+type_payment+','''+score_bank+''','+idcontractor+','+strtostrfloatsql(price_goods)+')');
  end;

procedure tbank_document.setactiv_bank_document(id_bank_document: string; activ_bank_document: string);
  begin
    updateonefield('table_bank_document','activ_bank_document',activ_bank_document,'id_bank_document',id_bank_document);
  end;

procedure tbank_document.getdocumentbankgroup;
  begin
    sqlexecute('call getbankdocument');
  end;

procedure tbank_document.getlistdocumentbank(viewdate: string);
  begin
    sqlexecute('call getlistdocumentbank('''+formatdatetime(formatdatetimeconvert,strtodate(viewdate))+''')');
  end;

procedure tbank_document.getlistallbank;
  begin
    sqlexecute('call getlistallbank;');
  end;

procedure tbank_document.getreportbank(typerec: string
//datestart: tdate; dateend: tdate
);
  begin
    sqlexecute('call getrepotrbankdocument('+typerec+');');
  //  sqlexecute(
  //       ' select idcontractor,table_contractor.name_contractor, summapridox, summabankprixod,summarashod, summabankrashod,(summabankprixod-summarashod ) as debet ,(summapridox-summabankrashod) as credet '+
  //       ' from(select idcontractor, case when summapridox is null then 0 else summapridox end summapridox, case when summabankprixod is null then 0 else summabankprixod end summabankprixod, '+'case when summarashod is null then 0 else summarashod end summarashod, case when summabankrashod is null then 0 else summabankrashod end summabankrashod '+
  //       ' from(select * from (select idcontractor, sum(all_price) as summapridox from( '+
  //       ' select table_overhead.type_overhead,table_data_overhead.count_goods,table_data_overhead.price_goods,  '+
  //       ' table_data_overhead.nds, table_overhead.idcontractor, (round(count_goods*price_goods,2)+ round((count_goods*price_goods)*nds/100,2)) as all_price  '+
  //       ' from table_data_overhead    '+
  //      '  left join table_overhead on (table_data_overhead.idoverhead=table_overhead.id_overhead)  '+
  //      '  where table_data_overhead.activ_data_overhead in(1) and table_overhead.type_overhead in(0))a      '+
  //      '  group by a.idcontractor) table_pixod                                                  '+
  //      '  left join (select idcontractor as idcontractor_v, sum(all_price) as summarashod    '+
  //      '  from(select table_overhead.type_overhead,table_data_overhead.count_goods,table_data_overhead.price_goods,  '+
  //      '  table_data_overhead.nds, table_overhead.idcontractor, (round(count_goods*price_goods,2)+ round((count_goods*price_goods)*nds/100,2)) as all_price   '+
  //      '  from table_data_overhead   '+
  //      '  left join table_overhead on (table_data_overhead.idoverhead=table_overhead.id_overhead)    '+
  //      '  where table_data_overhead.activ_data_overhead in(1) and table_overhead.type_overhead in(1))a    '+
  //      '  group by a.idcontractor) table_rasxod on(table_pixod.idcontractor=table_rasxod.idcontractor_v)   '+
  //      '  left join(select table_bank_document.idcontractor as idcontractorp, sum(table_bank_document.price_goods) as summabankprixod '+
  //      '  from table_bank_document   '+
  //      '  where table_bank_document.type_payment in(0) and table_bank_document.activ_bank_document in(1)       '+
  //      '  group by table_bank_document.idcontractor) table_bank_prixod on(table_pixod.idcontractor=table_bank_prixod.idcontractorp)    '+
  //      '  left join(select table_bank_document.idcontractor as idcontractorr, sum(table_bank_document.price_goods) as summabankrashod   '+
  //      '  from table_bank_document    '+
  //      '  where table_bank_document.type_payment in(1) and table_bank_document.activ_bank_document in(1)  '+
  //      '  group by table_bank_document.idcontractor) table_bank_rasxod on(table_bank_rasxod.idcontractorr=table_bank_prixod.idcontractorp)) g_table) ggg   '+
  //      '  left join table_contractor on(table_contractor.id_contractor=ggg.idcontractor)  '
  //  );
  end;

end.
