unit UnitUpdateProgect;
interface
 uses IniFiles,Forms,SysUtils,MyAccess,Dialogs,
 SettingServerUpdate,IdTCPClient,AdditionalFunctions,UnitMyMessageDialog;
 type
 TUpdateProgect = class(TSettingServerUpdate)
   versionserver : string;
   constructor create;
   function checkedConnect : Boolean;
 private
  Connection : TIdTCPClient;
 end;
implementation

 constructor TUpdateProgect.create;
 begin
  inherited create;
  Connection:=TIdTCPClient.Create(nil);
 end;

 function TUpdateProgect.checkedConnect : Boolean;
 var resultQ : string;  ResultB : Boolean;
 begin
    try
      with Connection do
        begin
          Host:=getServer;
          Port:=getPort;
          Connect;
          if Connected then
           begin
             Application.Terminate;
              if FileExists(filepath) then
               IOHandler.WriteLn('00;'+FileVersion(getFilePath)+';'+getFileName+'')
              else
               IOHandler.WriteLn('00;'+'0.0.0.0;'+getFileName+'');

               resultQ:=IOHandler.ReadLn;
               Disconnect;
               ResultB:=StrToBool(resultQ[1]);
               Delete(resultQ,1,2);
               versionserver:=resultQ;

             // if ResultB then  ShowMessageDlg('Уведомление','Найдена новая версия программы '+resultQ+' Запустите проверку обновления',myWarning);
               Result:=ResultB;
           end;
        end;
    except
       begin
        //  ShowMessageDlg('Уведомление','Нет обновления',myWarning) ;
        Result:=False;
       end;
    end;
 end;
end.
