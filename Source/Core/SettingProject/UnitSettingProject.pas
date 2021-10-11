 unit UnitSettingProject;

interface
 uses SysUtils,Forms,Dialogs,IniFiles;
  type

  TSettingProject = class(TIniFile)
    COLOR_PRIXOD_ROW,COLOR_RASXOD_ROW,COLOR_PRIXOD_TEXT,COLOR_RASXOD_TEXT,ID_THEME : Integer;
    ACTIV_COLOR_BANK,ACTIV_TEHEME,ACTIV_UPDATE : Boolean;
    NAME_THEME,VERSION : string;
    constructor Create;
    function getColorPrixodRow : Integer;
    function getVersion : String;
    procedure setSettingOption;
    procedure setVersion(version : string);
    //procedure setIntValues()
     private
      procedure LoadSeting;
  end;

 implementation

    constructor TSettingProject.Create;
    begin
       inherited Create(ExtractFilePath(Application.ExeName)+'SettingProject.ini');
       LoadSeting;
    end;

    procedure TSettingProject.LoadSeting;
    begin
      COLOR_PRIXOD_ROW  :=ReadInteger('BAKN_DOC','COLOR_PRIXOD_ROW',8047103);
      COLOR_RASXOD_ROW  :=ReadInteger('BAKN_DOC','COLOR_RASXOD_ROW',16777215);
      COLOR_PRIXOD_TEXT :=ReadInteger('BAKN_DOC','COLOR_PRIXOD_TEXT',0);
      COLOR_RASXOD_TEXT :=ReadInteger('BAKN_DOC','COLOR_RASXOD_TEXT',0);
      ID_THEME          :=ReadInteger('THEME','ID_THEME',1);
      ACTIV_TEHEME      :=ReadBool('THEME','ACTIV_TEHEME',True);
      NAME_THEME        :=ReadString('THEME','NAME_THEME','Windows10');
      VERSION           :=ReadString('UPDATE_VIEW','VERSION','0.0.0.0');
      ACTIV_COLOR_BANK  :=ReadBool('BAKN_DOC','ACTIV_COLOR_BANK',true);
      ACTIV_UPDATE      :=ReadBool('UPDATE','ACTIV_UPDATE',True);
    end;

    procedure TSettingProject.setSettingOption;
    begin
     WriteInteger('BAKN_DOC','COLOR_PRIXOD_ROW',COLOR_PRIXOD_ROW);
     WriteInteger('BAKN_DOC','COLOR_RASXOD_ROW',COLOR_RASXOD_ROW);
     WriteInteger('BAKN_DOC','COLOR_PRIXOD_TEXT',COLOR_PRIXOD_TEXT);
     WriteInteger('BAKN_DOC','COLOR_RASXOD_TEXT',COLOR_RASXOD_TEXT);
     WriteInteger('THEME','ID_THEME',ID_THEME);
     WriteBool('THEME','ACTIV_TEHEME',ACTIV_TEHEME);
     WriteString('THEME','NAME_THEME',NAME_THEME);
     WriteString('UPDATE_VIEW','VERSION',VERSION);
     WriteBool('BAKN_DOC','ACTIV_COLOR_BANK',ACTIV_COLOR_BANK);
     WriteBool('UPDATE','ACTIV_UPDATE',ACTIV_UPDATE);
    end;

    function TSettingProject.getColorPrixodRow :Integer;
    begin
     Result:=COLOR_PRIXOD_ROW;
    end;

    function TSettingProject.getVersion;
    begin
      Result:=VERSION;
    end;

    procedure TSettingProject.setVersion(version: string);
    begin
     self.VERSION:=version;
     setSettingOption;
    end;
end.
