unit UnitAlterDataBase;
interface
  uses Dialogs,SysUtils,BaseClassSQlExecute;

  function AlterDataBase(version : Real) : Real;
  function CheckDataBase(version : Real) : Boolean;

implementation


  function CheckDataBase(version : Real) : Boolean;
    begin
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.022)) then Result:=True
        else
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.023)) then Result:=True
        else
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.024)) then Result:=True
        else
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.025)) then Result:=True
        else
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.026)) then Result:=True
        else
      Result:=false;
    end;

  function AlterDataBase(version : Real) : Real;
    begin
      if StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.22))then
        begin
//         MainNotebook.CreateTable;
//         GlobalSetting.UpdateVersionDataBase('1.023');
//         MainNotebook.AddItems(FormatDateTime(FormatDateTimeConvert,now),
//         'ТЕСТОВАЯ ЗАМЕТКА',
//         'База преобразована в новую версию.'+#13+
//         'В новой версии добавлена возможность ведения заметок.'+#13+
//         'Заметку можно отправить на печать, удалить, изменить.'+#13+
//         'Удалите эту заметку'
//         );
         Result:=1.023;
        end
      else
      if  StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.023)) then
        begin
//          MainServices.CreateTable;
//          GlobalSetting.UpdateVersionDataBase('1.024');
//          MainNotebook.AddItems(FormatDateTime(FormatDateTimeConvert,now),
//           'ОНОВЛЕНИЕ БАЗЫ ДО 1.024',
//           'База преобразована в новую версию.'+#13+
//           'В новой версии добавлена возможность ведения услуг. '+#13+
//           'Удалите эту заметку.'
//           );
           Result:=1.024;
        end
      else
      if  StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.024)) then
        begin
//          MainBasket.CreateTable;
//          GlobalSetting.UpdateVersionDataBase('1.025');
//          MainNotebook.AddItems(FormatDateTime(FormatDateTimeConvert,now),
//           'ОНОВЛЕНИЕ БАЗЫ ДО 1.025',
//           'База преобразована в новую версию.'+#13+
//           'В новой версии добавлена корзина. '+#13+
//           'Удалите эту заметку.'
//           );
           Result:=1.025;
        end
      else
      if  StrToFloat(FloatToStr(version))= StrToFloat(FloatToStr(1.025)) then
        begin
//          //MainBasket.CreateTable;
//           MainBackup.startBackup('ПЕРЕД ДЕНОМИНАЦИЕЙ');
//          TBaseClassSQlExecute.Create(dm.ConnectionServer).SQlExecute('UPDATE TableReceiptOfGoods SET TableReceiptOfGoods.priceGoods=TableReceiptOfGoods.priceGoods/10000, TableReceiptOfGoods.priceGoodsStore=TableReceiptOfGoods.priceGoodsStore/10000;');
//          TBaseClassSQlExecute.Create(dm.ConnectionServer).SQlExecute('UPDATE tablegoodssold SET tablegoodssold.priceSold=tablegoodssold.priceSold/10000, tablegoodssold.SummaPriceSold=tablegoodssold.SummaPriceSold/10000;');
//          GlobalSetting.UpdateVersionDataBase('1.026');
//          MainNotebook.AddItems(FormatDateTime(FormatDateTimeConvert,now),
//           'ОНОВЛЕНИЕ БАЗЫ ДО 1.026',
//           'База преобразована в новую версию.'+#13+
//           'В новой версии произошла деноминация. '+#13+
//           'Удалите эту заметку.'
//           );
           Result:=1.026;
        end
      else
       Result:=version;
    end;
end.
