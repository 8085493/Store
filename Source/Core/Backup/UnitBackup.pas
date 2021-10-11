unit UnitBackup;
interface
  uses
  SysUtils, Classes, DB, DBAccess, MyAccess,AdditionalFunctions,
  DBTables, Dialogs,Forms,Printers,BaseClassSQlExecute,LogUnit,EncryptModul,
  MyDump,sDialogs,UnitMyMessageDialog;
  type
  TBackup = class(TBaseClassSQlExecute)
    constructor Create(Connection : TMyConnection);
    procedure   startBackup(PathSave : string);
    procedure   startRestoreBackup(PathOpen : string);
    procedure   ExecuteScript;
   // procedure
  private
    DumpBase: TMyDump;
    dlgBacup: TsOpenDialog;
    procedure BackupProgress(Sender: TObject; ObjectName: string;
      ObjectNum, ObjectCount, Percent: Integer);
    procedure RestoreProgress(Sender: TObject; Percent: Integer);
  end;
implementation

 function PathSaveBackup(SuffixName : string) : string;
   begin
    CreateDir(ExtractFilePath(Application.ExeName)+'Data');
    CreateDir(ExtractFilePath(Application.ExeName)+'Data\Backup');
    CreateDir(ExtractFilePath(Application.ExeName)+
    'Data\Backup\'+StringReplace(DateToStr(now), ':','.',[rfReplaceAll, rfIgnoreCase])) ;
    Result:=SuffixName
    // ExtractFilePath(Application.ExeName)+'Data\Backup\'
    +StringReplace(DateToStr(now), ':','.',[rfReplaceAll, rfIgnoreCase])+'\';
   end;

 constructor TBackup.Create(Connection: TMyConnection);
   begin

     try
      inherited Create(Connection);
      DumpBase:=TMyDump.Create(nil); DumpBase.Connection:=Connection;
      //DumpBase.Debug:=True;
//      DumpBase.Options.CompleteInsert:=True;
//      DumpBase.Options.DisableKeys:=True;
//      DumpBase.Options.GenerateHeader:=True;
//      DumpBase.Options.QuoteNames:=True;
      //DumpBase.Objects:=[doTables,doData,doViews,doStoredProcs];
      dlgBacup:=TsOpenDialog.Create(nil);
      dlgBacup.Filter:='SQL file|*.sql';
      DumpBase.OnBackupProgress:=BackupProgress;
      DumpBase.OnRestoreProgress:=RestoreProgress;
     except on e: Exception do
       WriteLog(e.Message);
     end;

   end;

 procedure TBackup.startBackup(PathSave: string);
 var fileName : String;
   begin

     try
       ShowMessageDlg('Уведомление','Началось резервное копирование',MyInformation);
       fileName:=PathSaveBackup(PathSave);
       //данные
       DumpBase.Objects:=[doTables,doData];
       DumpBase.BackupToFile(fileName+'DataBase.sql');
       //
       DumpBase.Objects:=[doViews];
       DumpBase.BackupToFile(fileName+'ViewBase.sql');
       //
       DumpBase.Objects:=[doStoredProcs];
       DumpBase.BackupToFile(fileName+'ProcedureBase.sql');
      except on e: Exception do
       WriteLog(e.Message);
     end;

   end;

 procedure TBackup.startRestoreBackup(PathOpen: string);
   begin

     try
      if ((not CountString(PathOpen)) or (not FileExists(PathOpen))) then
      if dlgBacup.Execute then PathOpen:=dlgBacup.FileName
      else  Exit;
       ShowMessageDlg('Уведомление','Началось резервное востановление',MyInformation);
       DumpBase.RestoreFromFile(PathOpen);
      except on e: Exception do
       WriteLog(e.Message);
     end;

   end;

 procedure TBackup.ExecuteScript;
   begin

     try
       if dlgBacup.Execute then
         begin
           BaseClassSQlExecuteQuery.SQL.LoadFromFile(dlgBacup.FileName);
           SQlExecute(BaseClassSQlExecuteQuery.SQL.Text);
           ShowMessageDlg('Уведомление','Скрипт успешно выполнен',MyInformation);
         end;
      except on e: Exception do
         WriteLog(e.Message);
      end;

   end;

 procedure TBackup.BackupProgress(Sender: TObject; ObjectName: string;
      ObjectNum, ObjectCount, Percent: Integer);
   begin
     Application.ProcessMessages;
   end;

 procedure TBackup.RestoreProgress(Sender: TObject; Percent: Integer);
   begin
     if Percent=100 then
        ShowMessageDlg('Уведомление','Резервное востановление завершено',myInformation);
        Application.ProcessMessages;
   end;

end.
