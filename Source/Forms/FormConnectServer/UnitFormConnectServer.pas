unit UnitFormConnectServer;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  AdditionalFunctions ,
  Dialogs, DBAccess, MyDacVcl, DB, MyAccess, Buttons, sSpeedButton,SettingsConnectServer,
  StdCtrls, sGroupBox, sComboBox, sEdit,UnitMyMessageDialog,LogUnit, sLabel;

type
  TFormConnectServer = class(TForm)
    groupDate: TsGroupBox;
    ip_server: TsEdit;
    User_: TsEdit;
    pasword_: TsEdit;
    base_: TsComboBox;
    buttonConncet: TsSpeedButton;
    version: TsLabelFX;
    port: TsEdit;
    procedure FormShow(Sender: TObject);
    procedure buttonConncetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConnectServer: TFormConnectServer;
  ConnectServersetting : TSettingsConnectServer;
implementation

uses UnitDM;

{$R *.dfm}

procedure TFormConnectServer.buttonConncetClick(Sender: TObject);
begin
   ConnectServersetting.ServerIP:=ip_server.Text;
   ConnectServersetting.UserName:=User_.Text;
   ConnectServersetting.Password:=pasword_.Text;
   ConnectServersetting.BaseName:=base_.Text;
   ConnectServersetting.PORT:=StrToInt(port.Text);
//   if not ConnectServersetting.AppSettingConncet(dm.ConnectionServer) then
//    begin
//      ShowMessageDlg('Подключение','Ошибка подключения к серверу',myError);
//    end
//    //MessageDlg('ERROR CONNECT',mtError,[mbok],1)
//   else
   begin
    ConnectServersetting.SaveSetting;
    Close;
   end;
end;

procedure TFormConnectServer.FormCreate(Sender: TObject);
begin
      version.Caption:=FileVersion(ParamStr(0));
end;

procedure TFormConnectServer.FormShow(Sender: TObject);
begin
   ConnectServersetting := TSettingsConnectServer.Create(dm.ConnectionServer);
   ip_server.Text:=ConnectServersetting.ServerIP;
   User_.Text:=ConnectServersetting.UserName;
  // pasword_.Text:=ConnectServersetting.Password;
   base_.Text:=ConnectServersetting.BaseName;
   port.Text:=IntToStr(ConnectServersetting.PORT);

//   if dm.MyConnectDialog.Execute then
//    begin
//     ConnectServersetting.SaveSettingConncet(dm.ConnectionServer);
//     close;
//    end;

end;

end.
