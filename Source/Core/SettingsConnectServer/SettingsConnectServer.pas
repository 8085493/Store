unit SettingsConnectServer;

interface
 uses IniFiles,Forms,SysUtils,EncryptModul,MyAccess,Dialogs,LogUnit;
  type
  TSettingsConnectServer = class
     constructor Create(Connection : TMyConnection);
     procedure   SaveSetting;
     procedure LoadSetting;
     procedure setIP(IP : string);
     procedure setBaseName(base : string);
     procedure  SaveSettingConncet(Connection : TMyConnection);
     function   AppSettingConncet(Connection : TMyConnection) : Boolean;
  public
     ServerIP,UserName,BaseName,Password : string;
     PORT : integer;
  private
     IniFiles : TIniFile;

  end;
  // Общие настройки
  TSettingFormResidueGoodsStore = class
    constructor Create(values : string='');
    procedure   LoadSetting;
    procedure   SaveSetting;
 public
   PozitionPanel,Color1,color2,color3,
   Color12,color22,color32,IndexUser,TypeBackup : Integer;
   themeActiv,DescriptionGoodsPanel,ColorGrid,
   DescriptionGoodsStorePanel,AutoBackup,AutoUpdate : Boolean;
   NumberZ,PathFileSaveBackup : string;
 private
  IniFiles : TIniFile;
  end;
 implementation
 const
 KeyEncrypt = 3350;
 constructor TSettingsConnectServer.Create(Connection : TMyConnection);
   begin
      IniFiles:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'SettingServer.ini');
      LoadSetting;    //AppSettingConncet(Connection);
   end;

  procedure  TSettingsConnectServer.SaveSettingConncet(Connection : TMyConnection);
  begin
   ServerIP:=     Connection.Server  ;
   BaseName:=     Connection.Database;
   UserName:=     Connection.Username;
   Password:=     Connection.Password;
   port    :=     Connection.Port;
   SaveSetting;
  end;

 function TSettingsConnectServer.AppSettingConncet(Connection: TMyConnection): Boolean;
   begin
      if Connection.Connected then Connection.Disconnect;
      //LoadSetting;
      Connection.Server  :=ServerIP;
      Connection.Database:=BaseName;
      Connection.Username:=UserName;
      Connection.Password:=Password;
      Connection.Port:=port;
      try
         Connection.Connect;
         Result:=True;
         // ShowMessage('343');
       except on e : Exception do
       begin
         WriteLogNoMessage(e.Message);
         Result:=False;
       end;
         //MessageDlg('ERROR'+e.Message,mtError,[mbok],1);
       end;

   end;

 procedure TSettingsConnectServer.setIP(IP: string);
  begin
    ServerIP:=IP;
  end;

 procedure TSettingsConnectServer.LoadSetting;
   begin
     with IniFiles do
      begin
        ServerIP:= Decrypt(ReadString('SERVER','IP',       'hl7fmzuBIXVQ'),KeyEncrypt);
        UserName:= Decrypt(ReadString('SERVER','USER',     '/h2iCA'),KeyEncrypt);
        Password:= Decrypt(ReadString('SERVER','PASSWORD', ''),KeyEncrypt);
       // BaseName:= Decrypt(ReadString('SERVER','BASE.NAME','5VFgBD'),KeyEncrypt);
        port:=ReadInteger('SERVER','PORT',3306);
      end;

   end;
 procedure TSettingsConnectServer.SaveSetting;
   begin
     with IniFiles do
      begin
       WriteString('SERVER','IP',Encrypt(ServerIP,KeyEncrypt));
       WriteString('SERVER','USER',Encrypt(UserName,KeyEncrypt));
       WriteString('SERVER','PASSWORD',Encrypt(Password,KeyEncrypt));
       //WriteString('SERVER','BASE.NAME',Encrypt(BaseName,KeyEncrypt));
       WriteInteger('SERVER','PORT',port);
      end;
   end;
 //
constructor TSettingFormResidueGoodsStore.Create(values: string='');
  begin
    IniFiles:=TIniFile.Create(ExtractFilePath(Application.ExeName)+'SettingFormResidueGoodsStore.ini');
    LoadSetting;
  end;
procedure   TSettingFormResidueGoodsStore.LoadSetting;
  begin
    with IniFiles do
      begin
        PozitionPanel:=ReadInteger('FormResidueGoodsStore','PozitionPanel',390);
        ColorGrid:=ReadBool('COLOR','ACTIVE_COLOR',False);
        Color1:=ReadInteger('COLOR','color1',255);
        Color2:=ReadInteger('COLOR','color2',65535);
        Color3:=ReadInteger('COLOR','color3',104961);
        Color12:=ReadInteger('COLOR','color12',16777215);
        Color22:=ReadInteger('COLOR','color22',0);
        Color32:=ReadInteger('COLOR','color32',16777215);
        themeActiv:=ReadBool('THEME','ACTIVE',true);
        DescriptionGoodsPanel:=ReadBool('MainForm','DescriptionGoodsPanel',true);
        IndexUser:=ReadInteger('MAIN','INDEXUSER',0);
        AutoUpdate:=ReadBool('MAIN','AutoUpdate',true);
        NumberZ:=ReadString('Purchase','number','1');
        DescriptionGoodsStorePanel:=ReadBool('FromViewAllGoods','DescriptionGoodsStorePanel',true);
        AutoBackup:=ReadBool('BACKUP','ACTIV',True);
        TypeBackup:=ReadInteger('BACKUP','TypeBackup',1);
        PathFileSaveBackup:=ReadString('BACKUP','PathFileSaveBackup',ExtractFilePath(Application.ExeName)+'Data\Backup\')
      end;
  end;
procedure TSettingFormResidueGoodsStore.SaveSetting;
  begin
     with IniFiles do
      begin
       WriteInteger('FormResidueGoodsStore','PozitionPanel',PozitionPanel);
       WriteInteger('COLOR','color1',Color1);
       WriteInteger('COLOR','color2',Color2);
       WriteInteger('COLOR','color3',Color3);
       WriteBool('THEME','ACTIVE',themeActiv);
       WriteBool('MainForm','DescriptionGoodsPanel',DescriptionGoodsPanel);
       WriteInteger('MAIN','INDEXUSER',IndexUser);
       WriteBool('COLOR','ACTIVE_COLOR',ColorGrid);
       WriteString('Purchase','number',NumberZ);
       WriteBool('FromViewAllGoods','DescriptionGoodsStorePanel',DescriptionGoodsStorePanel);
       WriteBool('BACKUP','ACTIV',AutoBackup);
       WriteInteger('BACKUP','TypeBackup',TypeBackup);
       WriteString('BACKUP','PathFileSaveBackup',PathFileSaveBackup);
       WriteBool('MAIN','AutoUpdate',AutoUpdate);

       {
       AutoBackup:=ReadBool('BACKUP','ACTIV',True);
        TypeBackup:=ReadInteger('BACKUP','TypeBackup',1);
       }
       //NumberZ:=ReadString('Purchase','number','1');
      end;
  end;

procedure TSettingsConnectServer.setBaseName(base: string);
  begin
   BaseName:=base;
  end;
 end.
