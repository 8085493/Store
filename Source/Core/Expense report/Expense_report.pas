unit Expense_report;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables, Dialogs, Forms,
  Printers, PrViewEh, Grids, UnitMyMessageDialog, BaseClassSQlExecute, LogUnit,
  AdditionalFunctions;
{ TExpense_report}
{Expense_report}

type
  TItemExpense_report = class
  private
    id, number, datedoc, idContactor: string;
  public
    property _id: string read id;
    property _number: string read number;
    property _datedoc: string read datedoc;
    property _idContactor: string read idContactor;
    constructor Create(id, number, datedoc, idContactor: string);
  end;

  TExpense_report = class(TBaseClassSQlExecute)
  private
  protected
  public
    constructor Create(Connect: TMyConnection);
    procedure CreateTable;
    procedure DropTable;
    procedure ViewExpense_report(filter: string = '');
    procedure DeleteExpense_report(ID: string);
    procedure DeleteDataExpense_report(ID: string);
    procedure insert_Expense_report;
    procedure View_data_Expense_report(id: string);
    procedure insert_view_data_expense_report(id_expense_report, idOverheadGoods, count_Goods, Selling_price, NDS, Count_place, load_weight: string);
    procedure setDateExpenseReport(newDate, id_: string);
    procedure setContactorExpenseReport(Contactor, id_: string);
    function getItemExpenseReport(id: string): TItemExpense_report;
    procedure exportToOverhead(id: string);
  published
  end;

implementation

constructor TItemExpense_report.Create(id: string; number: string; datedoc: string; idContactor: string);
begin
  Self.id := id;
  Self.number := number;
  Self.datedoc := datedoc;
  Self.idContactor := idContactor;
end;

constructor TExpense_report.Create(Connect: TMyConnection);
begin
  inherited Create(Connect);
end;

procedure texpense_report.createtable;
begin
  sqlexecute('call createalltable;');
end;

procedure texpense_report.insert_expense_report;
begin
  sqlexecute('call insert_expense_report(''' + formatdatetime(formatdatetimeconvert, now) + ''')');
end;

procedure texpense_report.droptable;
begin
  sqlexecute('drop table if exists `table_expense_report`;');
end;

procedure texpense_report.viewexpense_report(filter: string = '');
begin
  sqlexecute('call view_expense_report;');
end;

procedure texpense_report.deleteexpense_report(id: string);
begin
  sqlexecute('call delete_expense_report(' + id + ')');
end;

procedure texpense_report.deletedataexpense_report(id: string);
begin
  sqlexecute('call delete_data_expense_report(' + id + ')');
end;

procedure texpense_report.view_data_expense_report(id: string);
begin
  sqlexecute('call view_data_expense_report(' + id + ')');
end;

procedure texpense_report.insert_view_data_expense_report(id_expense_report: string; idoverheadgoods: string; count_goods: string; selling_price: string; nds: string; count_place: string; load_weight: string);
begin
  sqlexecute('call insert_data_expense_report(' + id_expense_report + ',' + idoverheadgoods + ',' + strtostrfloatsql(count_goods) + ',' + strtostrfloatsql(selling_price) + ',' + strtostrfloatsql(nds) + ', ' + strtostrfloatsql(count_place) + ',' + strtostrfloatsql(load_weight) + ')');
end;

procedure texpense_report.setdateexpensereport(newdate: string; id_: string);
begin
  sqlexecute('call setdateexpensereport(''' + formatdatetime(formatdatetimeconvert, strtodate(newdate)) + ''',' + id_ + ')');
end;

procedure texpense_report.setcontactorexpensereport(contactor: string; id_: string);
begin
  sqlexecute('call setcontactorexpensereport(' + contactor + ',' + id_ + ')');
end;

function texpense_report.getitemexpensereport(id: string): titemexpense_report;
begin
  sqlexecute('call getitemexpensereport(' + id + ')');
  if recordcount > 0 then
    result := titemexpense_report.create(returnfieldsname('id_table_expense_report'), returnfieldsname('number_expense_report'), returnfieldsname('date_expense_report'), returnfieldsname('idcontactor'))
  else
    result := titemexpense_report.create('', '', '', '');

end;

procedure texpense_report.exporttooverhead(id: string);
begin
  sqlexecute('call export_data(' + id + ')');
end;

end.

