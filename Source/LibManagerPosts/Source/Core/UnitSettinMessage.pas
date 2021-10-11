unit UnitSettinMessage;
interface
 uses IniFiles,Forms,SysUtils,Dialogs;
 type
  TSettingMessage = class
  public
    TimeShowForm,SpeedAnimation: Integer;
    EditBlendForm,AnimationForm : Boolean;

    constructor Create;
    procedure   SaveSetting;
    procedure   LoadSetting;
  private
    const NamefileSetting='SettingMessage.ini';
    var   IniFiles : TIniFile;
  end;
 //procedure   SaveSettingMessage;
 //procedure   LoadSettingMessage;
 procedure   setTimeShowForm(timeshow : Integer);
 procedure   setEditBlendForm(edit : Boolean);
 procedure   setAnimationForm(value: Boolean);
 procedure   setSpeedAnimation(speed : Integer);
 //
 function    getTimeShowForm  : Integer;
 function    getEditBlendForm : Boolean;
 function    getAnimationForm : Boolean;
 function    getSpeedAnimation: Integer;
 //
implementation
 var SettingMessage :TSettingMessage;

procedure createmessage;
  begin
    if SettingMessage=nil then SettingMessage :=TSettingMessage.Create;
  end;

procedure SaveSettingMessage;
  begin
     createmessage;
     SettingMessage.SaveSetting;
  end;

procedure  LoadSettingMessage;
  begin
    createmessage;
    SettingMessage.LoadSetting;
  end;

//задать значения
procedure setTimeShowForm(timeshow : Integer);
  begin
    LoadSettingMessage;
    SettingMessage.TimeShowForm:=timeshow;
    SaveSettingMessage;
  end;

procedure   setEditBlendForm(edit : Boolean);
  begin
   LoadSettingMessage;
   SettingMessage.EditBlendForm:=edit;
   SaveSettingMessage;
  end;

procedure   setAnimationForm(value: Boolean);
  begin
   LoadSettingMessage;
   SettingMessage.AnimationForm:=value;
   SaveSettingMessage;
  end;

procedure   setSpeedAnimation(speed : Integer);
  begin
   LoadSettingMessage;
   SettingMessage.SpeedAnimation:=speed;
   SaveSettingMessage;
  end;

 //получить значения
function  getTimeShowForm: Integer;
  begin
    LoadSettingMessage;
    Result:=SettingMessage.TimeShowForm;
  end;

function    getEditBlendForm : Boolean;
  begin
    LoadSettingMessage;
    Result:=SettingMessage.EditBlendForm;
  end;

function    getAnimationForm : Boolean;
  begin
     LoadSettingMessage;
     Result:=SettingMessage.AnimationForm;
  end;

function    getSpeedAnimation : Integer;
  begin
    LoadSettingMessage;
    Result:=SettingMessage.SpeedAnimation;
  end;
 //
constructor TSettingMessage.Create;
  begin
     IniFiles:=TIniFile.Create(ExtractFilePath(Application.ExeName)+NamefileSetting);
  end;

procedure TSettingMessage.SaveSetting;
  begin
     IniFiles.WriteInteger('SETTING','TIME_SHOW_FORM',TimeShowForm);
     IniFiles.WriteBool   ('SETTING','EDIT_BLEND_FROM',EditBlendForm);
     IniFiles.WriteBool   ('SETTING','ANIMATION',AnimationForm);
     IniFiles.WriteInteger('SETTING','SPEED_ANIMATION',SpeedAnimation);
  end;

procedure TSettingMessage.LoadSetting;
  begin
     TimeShowForm:=IniFiles.ReadInteger  ('SETTING','TIME_SHOW_FORM',5000);
     EditBlendForm:=IniFiles.ReadBool    ('SETTING','EDIT_BLEND_FROM',true);
     AnimationForm:=IniFiles.ReadBool    ('SETTING','ANIMATION',true);
     SpeedAnimation:=IniFiles.ReadInteger('SETTING','SPEED_ANIMATION',10);
  end;

end.
