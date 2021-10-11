unit AdditionalFunctions;
  interface

   uses SysUtils,Dialogs,Windows,Forms,Tlhelp32,sRichEdit,RichEdit,ComCtrls,Controls,
   sEdit,DBGridEh,IniFiles,WinSock,Classes;
 // type
  //  TMessageType = (myWarning, myError, myInformation, myConfirmation, myCustom);
  type
    TFlagForm = (closeEnter,noCloseEnter);
    TTestKeyPress = class(TForm)
    public
    procedure KeyPressFloat(Sender: TObject; var Key: Char);
  end;
    function GetLocalIP: String;
    function UppFirstCase (stroka : string)     : string; // Первая буква строки заглавная.
    function CountString  (Stroka: string)      : Boolean;// проверяет или строка не пустая(удаляет все пробелы)
    function FileVersion  (AFileName: string)   : string; // версия файла
    function GetFileDate  (TheFileName: string) : string; // дата файла
    function LengthCaption(s : string;count : Integer) : string ; // возврщает заданию строку в определенной длинне
    function ConvertNullReal(s : string): Real;                  // конвертация из строки в дробное число. Если срока пуста то вернет 0
    function ConvertNullInt (s : string): Integer;               // конвертация из строки в целое число. Если срока пуста то вернет 0
    function close_process(ExeFileName: string): integer;       //закрывает заданный процесс
    function SearchAndReplace(RichEdit: TRichEdit;  SearchText, ReplaceText: string): Boolean; //поиск и замена текста в RichEdit
    function ReturnMonthForAct(i : Integer) : string;    // вернет месяц в родительном падеже по номеру
    function ReturnMonthNormal(i : Integer) : string;    // вернет месяц с строковом виде
    function CreateViewForm(MyForm : TForm;MyParent: TWinControl): TForm; // задание парент для формы
    function CreateViewFormNew(MyForm : TForm;MyParent: TWinControl): TForm;
    function FormatMaskNumber(s : string) : string;   // вернет число в строков виде разделённое пробелами
    function FormatFloat(Stroka : string) : Boolean;  // проверка корректного ввода дробного числа
    function FormatDate : string ;
    function getNumberFormation(number : string;count_null : Integer) : string;
    function getFormatFloat(number : string) : string;
    function getSearchFile(FolderFileUpdate : string; mask : string ='*.sql') : TStringList;
    function CompareVersion(s1, s2: string): integer;
    function getFileName(filePath : string) : string;
    function ConvertSplach(data : string) : Double;
    function ConvertSplachString(data : string) : String;
    function Kostil(strok : string) : string;


    procedure SaveIniVisibleGrid(filename,razdelName : string; grid : TDBGridEh);
    procedure LoadIniVisibleGrid(filename,razdelName : string; grid : TDBGridEh);


  implementation

procedure TTestKeyPress.KeyPressFloat(Sender: TObject; var Key: Char);
const
  ValuesFloat : set of char=['0'..'9',#8,',','.'];
    begin
      if not (Key in ValuesFloat) then Key:=#0;
      if Key=',' then
        begin
          if not CountString((Sender  as TsEdit).Text) then Key:=#0;
          if not FormatFloat((Sender  as TsEdit).Text) then Key:=#0;
        end;
    end;

function getFormatFloat(number : string) : string;
     begin
     //  if CountString(chis_lo) then
         Result:=StringReplace(number, ',','.',[rfReplaceAll, rfIgnoreCase])
     //   else Result:='0';
     end;

function getNumberFormation(number : string;count_null : Integer) : string;
var
  values_number,whole,fractional : double;
  whole_string,fractional_string,count_null_string : string;
  i : Integer;
  begin
   if not TryStrToFloat(number,values_number) then   Result:=number else
     begin
       count_null_string:='1';
       for I := 1 to count_null do count_null_string:=count_null_string+'0';

       whole:=Int(values_number);
       fractional:=(Frac((values_number))*strToInt(count_null_string));
       fractional:=Round(fractional);
       fractional_string:=FloatToStr(fractional);

       while (Length(fractional_string)<>count_null) do
         begin
          fractional_string:='0'+fractional_string;
         end;
       Result:=FloatToStr(whole)+'.'+fractional_string;
     end;
  end;

procedure SaveIniVisibleGrid(filename,razdelName : string; grid : TDBGridEh);
  var ini : TIniFile;
  i : Integer;
  begin
//    ini:=TIniFile.Create(
//    ExtractFilePath(Application.ExeName)+'SettingVisibleDBGrid.ini');
//   // filename);
//    for I := 0 to grid.Columns.Count-1 do
//    begin
//      ini.WriteBool(razdelName,grid.Columns[i].FieldName,grid.Columns[i].Visible);
//    end;
//    ini.Free;
    grid.SaveGridLayoutIni(ExtractFilePath(ParamStr(0)) +
    '\ConfigDBGrid.ini',grid.Name,True);
  end;

procedure LoadIniVisibleGrid(filename,razdelName : string; grid : TDBGridEh);
  var ini : TIniFile;
  i : Integer;
  begin
//   ini:=TIniFile.Create(ExtractFilePath(Application.ExeName)+ 'SettingVisibleDBGrid.ini'
//   //filename
//   );
////    for I := 0 to grid.Columns.Count-1 do
////    begin
////     grid.Columns[i].Visible:=ini.ReadBool(
////     razdelName,grid.Columns[i].FieldName,true);
////    end;
//    ini.Free;
    grid.RestoreGridLayoutIni(ExtractFilePath(ParamStr(0)) +'\ConfigDBGrid.ini',
    grid.Name,[grpColIndexEh,grpColWidthsEh,grpColVisibleEh,grpColIndexEh]);
  end;

function  getFileName(filePath : string) : string;
    begin
       Result:=ExtractFileName(filePath);
    end;

function ConvertSplach(data : string) : Double;
var position_splach : Integer;
values : Double;
    begin
      position_splach:=AnsiPos('/',data);
      if position_splach=0  then Result:=0 else
        begin
          Delete(data,1,position_splach);
          if TryStrToFloat(data,values) then
            Result:=values
          else Result:=0;
        end
    end;

function ConvertSplachString(data : string) : String;
var position_splach : Integer;
    begin
       position_splach:=AnsiPos('/',data);
       if position_splach=0  then Result:=data else
            begin
              Delete(data,position_splach,Length(data));
              Result:=data;
            end
    end;

function Kostil(strok : string) : string;
    begin
      Result:=StringReplace(strok, '&','',[rfReplaceAll, rfIgnoreCase]);
    end;

function CreateViewForm(MyForm : TForm;MyParent: TWinControl): TForm;
  begin
      MyForm.Align:=alClient;
      MyForm.BorderStyle:=bsNone;
      MyForm.Parent:=MyParent;
  end;

function CreateViewFormNew(MyForm : TForm;MyParent: TWinControl): TForm;
  begin
     // MyForm.Align:=alClient;
      //MyForm.BorderStyle:=bsNone;
      MyForm.WindowState:=wsMaximized;
      MyForm.Parent:=MyParent;
  end;

function FormatFloat(Stroka : string) : Boolean;
var CountString,LengthString : Integer;
  begin
      LengthString:=Length(Stroka);      CountString:=0;
      while LengthString>0 do
        begin
         if (Stroka[LengthString]=',') or (Stroka[LengthString]='.') then
            Inc(CountString);
         Dec(LengthString);
        end;
      if CountString<1 then Result:=True else Result:=False;
  end;

function SearchAndReplace(RichEdit: TRichEdit;SearchText, ReplaceText: string): Boolean;
var
  startpos, Position, endpos: integer;
    begin
      startpos := 0;
      with RichEdit do
      begin
        endpos := Length(RichEdit.Text);
        Lines.BeginUpdate;
        while FindText(SearchText, startpos, endpos, [stMatchCase])<>-1 do
        begin
          endpos   := Length(RichEdit.Text) - startpos;
          Position := FindText(SearchText, startpos, endpos, [stMatchCase]);
          Inc(startpos, Length(SearchText));
          //SetFocus;
          SelStart  := Position;
          SelLength := Length(SearchText);
          richedit.clearselection;
          SelText := ReplaceText;
        end;
         Lines.EndUpdate;
      end;
    end;

function UppFirstCase(stroka : string) : string;
  var  s1,s : string;
    begin
      s:=AnsiLowerCase(stroka);
      s1:=s[1];
      s1:= AnsiUpperCase(s1);
      Delete(s,1,1);
      s1:=s1+s;
      Result:=s1;
    end;

function LengthCaption(s : string;count : Integer) : string ;
    begin
      if Length(s)>count then
      begin
        Delete(s,count,Length(s));
        Result:=s;
      end else Result:=s;
    end;

function CountString(Stroka: string) : Boolean;
    begin
       if Length(StringReplace(Stroka, ' ','',[rfReplaceAll, rfIgnoreCase]))>0then
           Result:=True
       else Result:=False;
    end;

function ConvertNullReal(s : string): Real;
   begin
     if s=''then Result:=0 else Result:=StrToFloat(s);
   end;

function ConvertNullInt(s : string): Integer;
   begin
     if not CountString(s)then Result:=0 else Result:=StrToInt(s);
   end;

function FileVersion(AFileName: string): string;
    var
      szName: array[0..255] of Char;
      P: Pointer;
      Value: Pointer;
      Len: UINT;
      GetTranslationString: string;
      FFileName: PChar;
      FValid: boolean;
      FSize: DWORD;
      FHandle: DWORD;
      FBuffer: PChar;
    begin
      try
        FFileName := StrPCopy(StrAlloc(Length(AFileName) + 1), AFileName);
        FValid := False;
        FSize := GetFileVersionInfoSize(FFileName, FHandle);
        if FSize > 0 then
        try
          GetMem(FBuffer, FSize);
          FValid := GetFileVersionInfo(FFileName, FHandle, FSize, FBuffer);
        except
          FValid := False;
          raise;
        end;
        Result := '';
        if FValid then
          VerQueryValue(FBuffer, '\VarFileInfo\Translation', p, Len)
        else
          p := nil;
        if P <> nil then
          GetTranslationString := IntToHex(MakeLong(HiWord(Longint(P^)),
            LoWord(Longint(P^))), 8);
        if FValid then
        begin
          StrPCopy(szName, '\StringFileInfo\' + GetTranslationString +
            '\FileVersion');
          if VerQueryValue(FBuffer, szName, Value, Len) then
            Result := StrPas(PChar(Value));
        end;
      finally
        try
          if FBuffer <> nil then
            FreeMem(FBuffer, FSize);
        except
        end;
        try
          StrDispose(FFileName);
        except
        end;
      end;
    end;

function GetFileDate(TheFileName: string): string;
    var
      intFileAge: LongInt;
      dat : string;
    begin
     intFileAge := FileAge(TheFileName);
      if intFileAge = -1 then   Result := ''  else
        begin
          dat:=DateToStr(FileDateToDateTime(intFileAge));
          Result := dat;
        end;
    end;

function CLOSE_PROCESS(ExeFileName: string): integer;
const
  PROCESS_TERMINATE=$0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
    begin
     // if LowerCase(ExeFileName)<>LowerCase('ASN.exe') then
        begin
            result := 0;

            FSnapshotHandle := CreateToolhelp32Snapshot
                               (TH32CS_SNAPPROCESS, 0);
            FProcessEntry32.dwSize := Sizeof(FProcessEntry32);
            ContinueLoop := Process32First(FSnapshotHandle,
                                           FProcessEntry32);

            while integer(ContinueLoop) <> 0 do
            begin
              if ((UpperCase(ExtractFileName(FProcessEntry32.szExeFile)) =
                   UpperCase(ExeFileName))
               or (UpperCase(FProcessEntry32.szExeFile) =
                   UpperCase(ExeFileName))) then
                Result := Integer(TerminateProcess(OpenProcess(
                                  PROCESS_TERMINATE, BOOL(0),
                                  FProcessEntry32.th32ProcessID), 0));
              ContinueLoop := Process32Next(FSnapshotHandle,
                                            FProcessEntry32);
            end;
            CloseHandle(FSnapshotHandle);
        end;
    end;

function ReturnMonthForAct(i : Integer) : string;
    begin
      case i of
          1 : Result:='Января';
          2 : Result:='Февраля';
          3 : Result:='Марта';
          4 : Result:='Апреля';
          5 : Result:='Мая';
          6 : Result:='Июня';
          7 : Result:='Июля';
          8 : Result:='Августа';
          9 : Result:='Сентября';
          10 : Result:='Октября';
          11 : Result:='Ноября';
          12 : Result:='Декабря'
          else Result:= 'Января';
       end;
    end;

function ReturnMonthNormal(i : Integer) : string;
  begin
        case (i) of
          1 : Result:=('Январь');
          2 : Result:=('Февраль');
          3 : Result:=('Март');
          4 : Result:=('Апрель');
          5 : Result:=('Май');
          6 : Result:=('Июнь');
          7 : Result:=('Июль');
          8 : Result:=('Август');
          9 : Result:=('Сентябрь');
         10 : Result:=('Октябрь');
         11 : Result:=('Ноябрь');
         12 : Result:=('Декабрь');
        end;
  end;

function FormatMaskNumber(s : string) : string;
  function TryToInt(s : string) : Boolean;
  const Convert : set of char=['0'..'9','-',',','.'];
  var i,col : Integer;
    begin
     col:=0;
     for i:=1 to length(s) do
      if not(s[i] in Convert) then
        Begin
           Inc(col);
         exit;    //Так как наличие обнаружилось выходим из цикла
        end;
        if col>0 then Result:=False else Result:=True;
    end;

  function ReverseString(s: string): string; //
    var  i: integer;
    begin
      Result := '';
      if Trim(s) <> '' then
        for i := Length(s) downto 1 do
          Result := Result + s[i];
    end;

 function PositionComma(stroka : string) : Integer;
 var i,posDefault,col : Integer;
 const Convert : set of char=[',','.'];
   begin
    posDefault:=-1;
    for i:=1 to length(stroka) do
      if (stroka[i] in Convert) then
        Begin
          posDefault:=i;
          // Inc(col);
           Break;
        end;
    Result:=posDefault;
   end;

 const Viewformat = ' ';
       CountNumber = 3;
 var i,Tmp,PosComma : Integer; tempS,FirstString,LastString : string;

   begin
    if TryToInt(s) then
      begin
       PosComma:=PositionComma(s);
       FirstString:=s; LastString:='';
       if PosComma<>-1 then
        begin
           LastString:=s;
           Delete(FirstString,PosComma,Length(s)-Poscomma+1);
           Delete(LastString,1,PosComma-1);
          // ShowMessage('Full '+ s+ 'firsr '+FirstString+' Last ' + LastString);
        end;
       Tmp:=0; tempS:='';
        for i := Length(FirstString) downto 1 do
         begin
          if Tmp=CountNumber then
           begin
            tempS:=tempS+Viewformat;{' ';}   Tmp:=0; tempS:=tempS+FirstString[i];
           end
          else tempS:=tempS+FirstString[i]; inc(tmp);
         end;
         s:=ReverseString(tempS)+LastString;
      end;
    if CountString(s) then  Result:=s else Result:='0';

   end;

function FormatDate : string ;
    begin
      Result:='YYYY.MM.DD';
    end;

  function GetLocalIP: String;
  const WSVer = $101;
  var
    wsaData: TWSAData;
    P: PHostEnt;
    Buf: array [0..127] of Char;
    function ip_(ip : string) : string;
    begin
      if Length(ip)>= 16 then Result:=ip else
      while  Length(ip)<> 16 do
      ip:=ip+' ';
      Result:=ip;
    end;

    begin
      Result := '';
      if WSAStartup(WSVer, wsaData) = 0then
      begin
        if GetHostName(@Buf, 128) = 0 then
        begin
          P := GetHostByName(@Buf);
          if P <> nil then Result := ip_(iNet_ntoa(PInAddr(p^.h_addr_list^)^));
        end;
        WSACleanup;
      end;
    end;

function getSearchFile(FolderFileUpdate : string; mask : string ='*.sql') : TStringList;
  var
  F: TSearchRec;
  Path: string;
  Attr: Integer;
  list : TStringList;
    begin
       Path :=FolderFileUpdate+mask;
     // ExtractFilePath(Application.ExeName)+'Data\Backup\*.sql';
      Attr := faReadOnly + faArchive; FindFirst(Path, Attr, F);
      list := TStringList.Create;
     // ListFile.Clear;
      if F.name <> '' then
         begin
            list.Add(F.name); //Добавление в TList имени найденного файла
            while FindNext(F) = 0 do list.Add(F.name);
         end;
      SysUtils.
      FindClose(F);
      Result:=list;
    end;

function CompareVersion(s1, s2: string): integer;
var
  d1, d2: TStrings;
  i: integer;
    begin
      // compare versions in strings
      // if s1>s2 then result is 1
      // if s1<s2 then result is -1
      // if s1=s2 then result is 0
      if s1=s2 then Result := 0 else
      begin
        d1 := TStringList.Create;
        d2 := TStringList.Create;
        try
          d1.Delimiter := '.';
          d2.Delimiter := '.';
          d1.DelimitedText := trim(s1);
          d2.DelimitedText := trim(s2);
          if d1.Count<>d2.Count then
          begin
            Result := 0;
          end
          else
          begin
            Result := 0;
            for i := 0 to d1.Count - 1 do
            begin
              if (StrToinTDef(trim(d1[i]),0)>StrToinTDef(trim(d2[i]),0)) then
              begin
                Result := 1;
                break;
              end;
              if (StrToinTDef(trim(d1[i]),0)<StrToinTDef(trim(d2[i]),0)) then
              begin
                Result := -1;
                break;
              end;
            end;
          end;
        finally
          d1.Free;
          d2.Free;
        end;
      end;
    end;
end.
