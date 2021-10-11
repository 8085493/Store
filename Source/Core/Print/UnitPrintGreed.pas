{
в модуле  PrnDbgeh переделать класс TPrintDBGridEh, сделать доступаными все его свойста.
}


unit UnitPrintGreed;
interface
  uses PrnDbgeh,SysUtils, DBGridEhImpExp,sDialogs, AdditionalFunctions, LogUnit,
  Printers,PrntsEh,DBGridEh,PrViewEh,ShellAPI,Windows,Controls,Forms;
  type
  TPrintGreed = class(TPrintDBGridEh)
  private
   TestDBGrid: TDBGridEh;
   sSaveDialog: TsSaveDialog;
  // PrintDBGridEh: TPrintDBGridEh;
    function executeDialog(filterName,Ext : string) : Boolean;
    procedure openFile(filePath : string);
  public
    constructor Create(DBGrid: TDBGridEh);
    procedure ExportToRtf(PathFileSave : string='');
    procedure ExportToExcelOLE(PathFileSave : string='');
    procedure ExportToHTML(PathFileSave : string='');
    procedure ExportToCSV(PathFileSave : string='');
    //procedure PreviewPrint;
   //procedure set
  end;
  implementation

    constructor TPrintGreed.Create(DBGrid: TDBGridEh);
    begin
      inherited Create(nil);

       TestDBGrid:=DBGrid;
       sSaveDialog:=TsSaveDialog.Create(nil);
     //PrintDBGridEh:= TPrintDBGridEh.Create(nil);
    // PrintDBGridEh.
       DBGridEh:=DBGrid;
       Page.LeftMargin:=2;
       Page.RightMargin:=1;
       Page.BottomMargin:=1;
       Page.TopMargin:=1;
       Options:=[
                   pghFitGridToPageWidth
                   //,pghRowAutoStretch
                   //,pghFitingByColWidths
                   //,pghOptimalColWidths
                ];
       PrinterPreview.Orientation :=poPortrait;
    end;

    procedure TPrintGreed.ExportToRtf(PathFileSave: string='');
    begin
       if not CountString(PathFileSave) then
       begin
         if executeDialog('word file|*.rtf','rtf') then
          PathFileSave:=sSaveDialog.FileName
         else
         exit;
       end;
       SaveDBGridEhToExportFile(TDBGridEhExportAsRTF, TestDBGrid, PathFileSave, true);
       openFile(PathFileSave);
    end;

    procedure TPrintGreed.ExportToExcelOLE(PathFileSave: string='');
    begin
     if not CountString(PathFileSave) then
       begin
         if executeDialog('Excel file|*.xls','xls') then
          PathFileSave:=sSaveDialog.FileName
         else
         exit;
       end;
       SaveDBGridEhToExportFile(TDBGridEhExportAsOLEXLS, TestDBGrid,
       PathFileSave, True);  openFile(PathFileSave);
    end;

    procedure TPrintGreed.ExportToHTML(PathFileSave: string = '');
    begin
     if not CountString(PathFileSave) then
       begin
         if executeDialog('web file|*.html','html') then
          PathFileSave:=sSaveDialog.FileName
         else
         exit;
       end;
       SaveDBGridEhToExportFile(TDBGridEhExportAsHTML, TestDBGrid,
       PathFileSave, True);  openFile(PathFileSave);
    end;

    procedure TPrintGreed.ExportToCSV(PathFileSave: string = '');
    begin
       if not CountString(PathFileSave) then
       begin
         if executeDialog('Text file|*.csv','csv') then
          PathFileSave:=sSaveDialog.FileName
         else
         exit;
       end;
       SaveDBGridEhToExportFile(TDBGridEhExportAsCSV, TestDBGrid,
       PathFileSave, True);  openFile(PathFileSave);
    end;


    function TPrintGreed.executeDialog(filterName: string; Ext: string): Boolean;
    begin
       sSaveDialog.Filter :=filterName;// 'Text file|*.xls';
       sSaveDialog.DefaultExt :=Ext;// 'xls';
       Result:=sSaveDialog.Execute;
    end;

    procedure TPrintGreed.openFile(filePath: string);
    begin
     try
      ShellExecute(Application.Handle, nil, PChar(filePath), nil, nil, SW_SHOWNORMAL)
     except on e : exception do
      WriteLog(e.Message);
     end;
    end;
end.
