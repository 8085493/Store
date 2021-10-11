unit UnitTTNExportExcel;
interface
uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, DBTables,UnitMyMessageDialog,Dialogs,
  Forms,Printers,PrViewEh,Grids,BaseClassSQlExecute,LogUnit,ComObj,ActiveX,Variants,
  AdditionalFunctions,UnitDataOverhead,UnitContractor,UnitDataTTN,IniFiles,RoubleUnit,propis
  , Windows;

type

TTNMarkingFILE=class(TIniFile)
    public
    //IniFile : TIniFile;
      Start_table,Col_Table : Integer;
      TABLE_UNP_ROW,TABLE_UNP_COL : Integer;
      TABLE_UNP2_ROW,TABLE_UNP2_COL : Integer;
      TABLE_UNP3_ROW,TABLE_UNP3_COL : Integer;
      DATE_ROW,DATE_COL : Integer;
      CAR_ROW,CAR_COL : Integer;
      Owner_ROW,Owner_COL,DRIVER_ROW,DRIVER_COL : Integer;
      ZACAZ_ROW,ZACAZ_COL : Integer;
      consignor_ROW,consignor_COL : Integer;
      consignee_ROW,consignee_COL : Integer;
      DOGOVOR_ROW,DOGOVOR_COL : Integer;
      POGRUZKA_ROW,POGRUZKA_COL : Integer;
      OTGRUZKA_ROW,OTGRUZKA_COL : Integer;
      SUMMA_ROW,SUMMA_COL,NDS_ROW,NDS_COL : Integer;
      COUNT_PLACE_ROW,COUNT_PLACE_COL : integer;
      MASS_ROW,MASS_COL : Integer;
      FILE_NAME : String;
      constructor CreateFile(fileName : string);
  end;

 TTTNExportExcel = class(TTNMarkingFILE)
   public

    constructor Create(dataTTN : TDataTTN;fileName : String);
    procedure setDataArray(index_row,index_col : Integer; values : Variant);
    procedure setCount(index : Integer);

   private

    MaindataTTN            : TDataTTN;
    ExcelApp, Workbook, Range, Cell1, Cell2,
    ArrayData,arrayData2   : Variant;
    SheetActive, Sheet     : OleVariant;
    FData                  : Variant;
    COUNT_SIZE_TABLE       : Integer;
    INDEX_PAGE             : Integer;

    procedure setValue(x,y,x1,y1 : Integer; values : String);
    procedure setReplaceText(oldText, newText : string);
    function  IsOLEObjectInstalled(Name: String='Excel.Application'): boolean;
    procedure getMergeRow(index_row : Integer);
    procedure RangeExcel(LineStyle : Integer=1;HorizontAlign : Integer=3; VertikalAlign : Integer=2;FontSize : Integer=10;FontName : string='Times New Roman'; WrapText : Boolean =true);

 end;

implementation
 const
  NumberTable=38;
 var
  ArrayMarkingTable : array[1..12] of Integer=(1,32,41,50,63,75,82,93,105,114,124,133);

constructor TTNMarkingFILE.CreateFile(fileName: string);
  begin
    inherited Create(ExtractFilePath(Application.ExeName)+fileName);
    Start_table:=ReadInteger('MARKING_TTN','SIZE_TABLE',38);
    Col_Table:=ReadInteger('MARKING_TTN','Col_Table',1);
    FILE_NAME:=ReadString('DATA_INFO_TTN','FILE_NAME','template.xls');

    WriteInteger('MARKING_TTN','Col_Table',Col_Table);
    WriteString('DATA_INFO_TTN','FILE_NAME',FILE_NAME);
  end;

constructor TTTNExportExcel.Create(dataTTN : TDataTTN;fileName : String);

function TypeLoadUnload(typedata : string) : string ;
  begin
    case StrToInt(typedata) of
       0 : Result:='Ручной';
       1 : Result:='Мех-ный';
    end;
  end;

var index_ : Integer;
TemplateFile : string;
  begin
    if not IsOLEObjectInstalled('Excel.Application') then
       MessageDlg('Excel не установлен.',mtError,[mbok],1)
    else
    begin
     try
       inherited CreateFile(fileName);
       MaindataTTN:=dataTTN;
       ExcelApp := CreateOleObject('Excel.Application');
       ExcelApp.Application.EnableEvents := false;
       if FileExists(ExtractFilePath(ParamStr(0 ))+ 'data\Report\'+FILE_NAME) then
          begin

                  Randomize;
                  CreateDir(ExtractFilePath(ParamStr(0 ))+
                  'data\ExportFile\') ;
                  if CountString(MaindataTTN.ItemOverheader._Number_Overhead) then
                    TemplateFile:=ExtractFilePath(ParamStr(0 ))+'data\ExportFile\Nomer_'+ MaindataTTN.ItemOverheader._Number_Overhead+'.xls'
                  else
                  TemplateFile:=ExtractFilePath(ParamStr(0 ))+'data\ExportFile\Random_'+DateToStr(now)+'_'+intToStr(Random(58455))+'_'+intToStr(Random(56554))+'.xls';
                  if FileExists(TemplateFile) then DeleteFile(PChar(TemplateFile));

                  CopyFile(PChar(ExtractFilePath(ParamStr(0 ))+'data\Report\'+FILE_NAME),
                  PChar(TemplateFile),True);

                  Workbook := ExcelApp.WorkBooks.open( TemplateFile
                  //ExtractFilePath(ParamStr(0 ))+  'data\ExportFile\'+TemplateFile+'.xls'
                  );
          end ;


       Sheet := workbook.WorkSheets[1];


            setReplaceText('consignorUNP',MaindataTTN.consignor._UNP);
            setReplaceText('consigneeUNP',MaindataTTN.consignee._UNP);
            setReplaceText('payUNP',MaindataTTN.contractorCar._UNP);
            setReplaceText('dateDoc',MaindataTTN.ItemOverheader._Date_Overhead);
            setReplaceText('auto',MaindataTTN.car._Name_Car+', гос. номер '+MaindataTTN.car._Number_Car);
            setReplaceText('Owner_Car',MaindataTTN.car._Owner_Car);
            setReplaceText('Driver_Car',MaindataTTN.car._Driver_Car);
            setReplaceText('payCarName',MaindataTTN.contractorCar._Name_Contractor+','+MaindataTTN.contractorCar._Legal_Address);

            setReplaceText('consignorname',MaindataTTN.consignor._Name_Contractor+','+MaindataTTN.consignor._Legal_Address);
            setReplaceText('consigneename',MaindataTTN.consignee._Name_Contractor+','+MaindataTTN.consignee._Legal_Address);
            // поd вопросом
            setReplaceText('agreement',MaindataTTN.consignee._agreement+' от '+MaindataTTN.consignee._date_agreement);
            setReplaceText('Adress_Stock',MaindataTTN.Stock._Adress_Stock);
            setReplaceText('consigneeAdress',MaindataTTN.adress._shipping_address
            //MaindataTTN.consignee._Legal_Address
            );

            setReplaceText('nds', getNumberFormation(
            FloatToStr(MaindataTTN.NDS),2)+' '+RealToRouble(MaindataTTN.NDS));
            setReplaceText('all_price',getNumberFormation(
            FloatToStr(MaindataTTN.all_price),2)+' '+RealToRouble(MaindataTTN.all_price));

            setReplaceText('count_p',RealToPropis(MaindataTTN.count_p));
            setReplaceText('massa',RealToMassa(MaindataTTN.massa));
            setReplaceText('allow_output',MaindataTTN.ItemOverheader._allow_output);
            setReplaceText('goods_passed',MaindataTTN.ItemOverheader._goods_passed);
            setReplaceText('goods_received',MaindataTTN.ItemOverheader._goods_received);
            setReplaceText('prcontacor',MaindataTTN.ItemOverheader._proxy_contacor);
            setReplaceText('proxy',MaindataTTN.ItemOverheader._proxy);
            setReplaceText('prin_goods',MaindataTTN.ItemOverheader._prin_goods);
            setReplaceText('document_Overhead',MaindataTTN.ItemOverheader._document_Overhead);

            setReplaceText('loadingContactor',MaindataTTN.ItemOverheader.loadingContactor._small_Name_Contractor);
            setReplaceText('un_oadingContactor',MaindataTTN.ItemOverheader.unloadingContactor._small_Name_Contractor);
            setReplaceText('type_load',TypeLoadUnload(MaindataTTN.ItemOverheader._type_loading));
            setReplaceText('type_unload',TypeLoadUnload(MaindataTTN.ItemOverheader._type_unloading));
            setReplaceText('input_date_loading',(MaindataTTN.ItemOverheader._input_date_loading));
            setReplaceText('_output_date_loading',(MaindataTTN.ItemOverheader._output_date_loading));
            setReplaceText('_input_date_unloading',(MaindataTTN.ItemOverheader._input_date_unloading));
            setReplaceText('_output_date_unloading',(MaindataTTN.ItemOverheader._output_date_unloading));

            //

        for index_:=1 to MaindataTTN.getCount do
         begin
           Sheet.Rows[Start_table].Insert;
           getMergeRow(Start_table);
         end;
        if Col_Table<>11 then
          begin
           for index_:=1 to MaindataTTN.getCount do
            begin
             MaindataTTN.FData[index_,ArrayMarkingTable[9]]:=MaindataTTN.FData[index_,ArrayMarkingTable[11]];
            end;
          end;
        Cell1 := WorkBook.WorkSheets[1].Cells[Start_table,1];
        Cell2 := WorkBook.WorkSheets[1].Cells[MaindataTTN.getCount+Start_table-1,ArrayMarkingTable[Col_Table]];
        Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
        Range.value:=MaindataTTN.getData;
        RangeExcel;

        Cell1 := WorkBook.WorkSheets[1].Cells[Start_table-1,1];
        Cell2 := WorkBook.WorkSheets[1].Cells[Start_table-1,1];

        Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
        Range.HorizontalAlignment:=3;

        Workbook.save;

        ExcelApp.Visible := true;
        Workbook:=UnAssigned;
        ExcelApp:=UnAssigned;

      except
       ExcelApp.Visible := true;
       Workbook:=UnAssigned;
       ExcelApp:=UnAssigned;
     end;
    end;
  end;

procedure TTTNExportExcel.setValue(x,y,x1,y1 : Integer; values : String);
    begin
     Cell1 :=WorkBook.WorkSheets[1].Cells[x,y];
     Cell2 :=WorkBook.WorkSheets[1].Cells[x1,y1];
     Range :=WorkBook.WorkSheets[1].Range[Cell1, Cell2];
     Range.value:=(values);
    end;

procedure TTTNExportExcel.setReplaceText(oldText: string; newText: string);
const
  //Искомый текст.
  //Определение констант MS Excel.
  xlValues = -4163;
  xlByColumns = 2;
  var
  exCell : Variant;
    begin
     try
      Cell1 :=WorkBook.WorkSheets[1].Cells[1,1];
      Cell2 :=WorkBook.WorkSheets[1].Cells[95,132];
      Range :=WorkBook.WorkSheets[1].Range[Cell1, Cell2];

      exCell:=Range.Find( What:=oldText, LookIn := xlValues, SearchOrder:=xlByColumns);
      //if  VarIsEmpty(exCell) then
      if TVarData(exCell).VDispatch = nil then
       // ShowMessage('не найдено '+oldText)
       else
      Range.Replace(What:= oldText, Replacement:=newText);
     except

     end;
    end;

function TTTNExportExcel.IsOLEObjectInstalled(Name: string = 'Excel.Application') : Boolean;
var
  ClassID: TCLSID;
  Rez : HRESULT;
  begin
    Rez := CLSIDFromProgID(PWideChar(WideString(Name)), ClassID);
    if Rez = S_OK then
         Result := true

    else Result := false;
  end;

procedure TTTNExportExcel.getMergeRow(index_row: Integer);
var i : Integer;
  begin
    for I := 1 to 11 do
     begin
      Cell1 := WorkBook.WorkSheets[1].Cells[index_row,ArrayMarkingTable[i]];
      Cell2 := WorkBook.WorkSheets[1].Cells[index_row,ArrayMarkingTable[i+1]-1];
      Range := WorkBook.WorkSheets[1].Range[Cell1, Cell2];
      Range.Merge;
     end;
  end;

procedure TTTNExportExcel.RangeExcel(
LineStyle     : Integer=1;
HorizontAlign : Integer=3;
VertikalAlign : Integer=2;
FontSize      : Integer=10;
FontName      : string='Times New Roman';
WrapText      : Boolean =true);
  begin
    Range.Borders.LineStyle := LineStyle;
    //Range.HorizontalAlignment:=HorizontAlign;
    Range.VerticalAlignment:=VertikalAlign ;
    Range.Font.Size := FontSize;
    Range.Font.Name := FontName;
    Range.RowHeight:=23;        //ColumnWidth
    Range.WrapText:=WrapText;
    //Range.Autofit;
  end;

procedure TTTNExportExcel.setDataArray(index_row: Integer; index_col: Integer; values : Variant);
  begin
    FData[index_row,index_col]:=values;
  end;

procedure TTTNExportExcel.setCount(index: Integer);
  begin
    COUNT_SIZE_TABLE:=index;
  end;
end.
