unit SettingServerUpdate;
interface
 uses IniFiles,Forms,SysUtils,MyAccess,Dialogs;
 type
  TSettingServerUpdate = class
    server, filename,filepath : string;
    port : Integer;
    constructor create;
    function getServer : string;
    function getPort : Integer;
    function getFileName : string;
    function getFilePath : string;
    procedure setServer(server : string);
    procedure setPort(port : Integer);
    procedure setFileName(filename : string);
    procedure setFilePath(filepath : string);
  private
   var IniFile : TIniFile;
   procedure loadsetting;
   procedure SaveSetting;
  end;
implementation

constructor TSettingServerUpdate.create;
  begin
    IniFile:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'SettingServerUpdate.ini');
    loadsetting;
  end;

procedure TSettingServerUpdate.loadsetting;
  begin
    server:=IniFile.ReadString('SERVER','IP','127.0.0.1');
    port:=IniFile.ReadInteger('SERVER','PORT',25888);
    fileName:=IniFile.ReadString('UPDATE','FILENAME',ExtractFileName(Application.ExeName));
    filepath:=ExtractFilePath(Application.ExeName)+'\'+ExtractFileName(Application.ExeName);
    //IniFile.ReadString('UPDATE','FILEPATH',);
    SaveSetting;
  end;

procedure TSettingServerUpdate.SaveSetting;
  begin
    IniFile.WriteString('SERVER','IP',server);
    IniFile.WriteInteger('SERVER','PORT',port);
    IniFile.WriteString('UPDATE','FILENAME',filename);
    IniFile.WriteString('UPDATE','FILEPATH',filepath);
  end;

function TSettingServerUpdate.getServer : string;
  begin
    Result:=server;
  end;

function TSettingServerUpdate.getPort : Integer;
  begin
    Result:=port;
  end;
function TSettingServerUpdate.getFileName: string;
  begin
    Result:=filename;
  end;

function TSettingServerUpdate.getFilePath : string;
  begin
    Result:=filepath;
  end;

procedure TSettingServerUpdate.setServer(server: string);
  begin
    Self.server:=server; SaveSetting;
  end;

procedure TSettingServerUpdate.setPort(port: Integer);
  begin
    Self.port:=port;    SaveSetting;
  end;

procedure TSettingServerUpdate.setFileName(filename: string);
  begin
   Self.filename:=filename;  SaveSetting;
  end;

procedure TSettingServerUpdate.setFilePath(filepath: string);
  begin
   self.filepath:=filepath;  SaveSetting;
  end;
end.
