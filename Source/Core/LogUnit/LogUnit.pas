unit LogUnit;
interface
  uses  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs,AdditionalFunctions,UnitMyMessageDialog;
    procedure WriteLog(MessageText: string);
    procedure WriteLogNoMessage(MessageText: string);
    procedure WriteLogSQLText(SQLtext : string);
  implementation
{ function PathDate : string;
  var  name_ : string;  kkk : Integer;
   begin
    name_:=DateToStr(now);
    for kkk:=1 to Length(name_) do
     begin
      if name_[kkk]=':' then name_[kkk]:='.';
     end;
    CreateDir(ExtractFilePath(Application.ExeName)+'Data');
    CreateDir(ExtractFilePath(Application.ExeName)+'Data\Log');
    result:=ExtractFilePath(Application.ExeName)+'data\log\'+name_+'.txt';
   end;}
function PathSaveLog(SuffixName : string='') : string;
   begin
    CreateDir(ExtractFilePath(Application.ExeName)+'Data');
    CreateDir(ExtractFilePath(Application.ExeName)+'Data\LogProject');
    Result:=  ExtractFilePath(Application.ExeName)+'Data\LogProject\'+StringReplace(DateToStr(now), ':','.',[rfReplaceAll, rfIgnoreCase])+SuffixName+'.txt';
   end;
procedure WriteLog(MessageText: string);
  var f: TextFile;
   begin
    AssignFile(F, PathSaveLog);
    if FileExists(PathSaveLog) then Append(f) else Rewrite(f);
    Writeln(f,'[v'+FileVersion(ParamStr(0))+']'+'['+DateTimeToStr(Now)+'] ['+MessageText+']');
    CloseFile(f);
    ShowMessageDlg('Запись в лог','Произошла ошибка, записана в лог файл "'+PathSaveLog+'"',myError);
   end;
procedure WriteLogSQLText(SQLtext: string);
  var f: TextFile;
   begin
    AssignFile(F, PathSaveLog('-SQL'));
    if FileExists(PathSaveLog('-SQL')) then Append(f) else Rewrite(f);
    Writeln(f,'[v'+FileVersion(ParamStr(0))+']'+'['+DateTimeToStr(Now)+'] ['+SQLtext+']');
    CloseFile(f);
   end;

procedure WriteLogNoMessage(MessageText: string);
  var f: TextFile;
   begin
    AssignFile(F, PathSaveLog);
    if FileExists(PathSaveLog) then Append(f) else Rewrite(f);
    Writeln(f,'[v'+FileVersion(ParamStr(0))+']'+'['+DateTimeToStr(Now)+'] ['+MessageText+']');
    CloseFile(f);
   // ShowMessageDlg('Запись в лог','Произошла ошибка, записана в лог файл "'+PathSaveLog+'"',myError);
   end;
end.
