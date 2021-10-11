unit UnitReport;
interface
 uses
 SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,
 Dialogs,Forms,Printers,PrViewEh,Grids, UnitMyMessageDialog,
 BaseClassSQlExecute,LogUnit,AdditionalFunctions;
{ TReportProfit}
{ReportProfit}
type
  TReport = class(TBaseClassSQlExecute)
  private

  protected

  public
    constructor Create(Connect : TMyConnection) ;
    //procedure CreateTable;
    //procedure DropTable;
    procedure ViewReportProfit(dateBegin,dateEbd : TDate);
    procedure getListTaxesNDS(datebegin,dateEnd : TDate );
    procedure getRegeditOverhead(datebegin,dateEnd : TDate );
    procedure getListJournal;
    procedure setValuesJournal(dey : Integer);
    procedure getActSverki(id : string;dateStart,dateEnd : TDate);
   // procedure DeleteReportProfit(ID : string);
  published

  end;

implementation

constructor TReport.Create(Connect: TMyConnection);
  begin
    inherited Create(Connect);
  end;

procedure treport.viewreportprofit(datebegin,dateebd : tdate);
  begin
    sqlexecute('call getlistprofit('''+
    formatdatetime(formatdatetimeconvert,datebegin)+''','''
   +formatdatetime(formatdatetimeconvert,dateebd)+''');');
  end;

procedure treport.getlisttaxesnds(datebegin: tdate; dateend: tdate);
  begin
    sqlexecute('call getlisttaxesnds('''+
    formatdatetime(formatdatetimeconvert,datebegin)+''','''
   +formatdatetime(formatdatetimeconvert,dateend)+''');');
  end;

procedure treport.getregeditoverhead(datebegin,dateend : tdate );
  begin
    sqlexecute('call getregeditoverhead('''+
    formatdatetime(formatdatetimeconvert,datebegin)+''','''
   +formatdatetime(formatdatetimeconvert,dateend)+''');');
  end;

procedure treport.setvaluesjournal(dey: integer);
  begin
    sqlexecute('call setvaluesjournal('+inttostr(dey)+')');
  end;

procedure treport.getlistjournal;
  begin
    sqlexecute('call getjournal');
  end;

procedure treport.getactsverki(id: string; datestart: tdate; dateend: tdate);
  begin
   sqlexecute('call getactsverki('+id+','''+
    formatdatetime(formatdatetimeconvert,datestart)+''','''+
    formatdatetime(formatdatetimeconvert,dateend)+''');');
  end;

//
//procedure  TReportProfit.CreateTable;
//  begin
//     SQlExecute(
//    ' CREATE TABLE IF NOT EXISTS `Table_ReportProfit` ( '+
//    ' `id_ReportProfit`  int(11) NOT NULL AUTO_INCREMENT,     '+
//    ' `Name_ReportProfit` varchar(200),'+
//    ' PRIMARY KEY (`id_ReportProfit`) '+
//    ' ) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8;'
//    );
//  end;
//

//procedure  TReportProfit.DropTable;
//  begin
//    SQlExecute('DROP TABLE IF EXISTS `Table_ReportProfit`;');
//  end;



//procedure TReportProfit.DeleteReportProfit(ID : string);
//  begin
//    SQlExecute('DELETE FROM `Table_ReportProfit` WHERE `id_ReportProfit` IN('+ID+')');
//  end;
//
//end.unit UnitReportProfit;
//
//interface
//
//implementation

end.
