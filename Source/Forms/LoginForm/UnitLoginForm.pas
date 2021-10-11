unit UnitLoginForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton,UnitMainForm, acPNG, ExtCtrls, acImage,
  StdCtrls, sLabel,AdditionalFunctions,propis;

type
  TLoginForm = class(TForm)
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    Image1: TImage;
    version: TsLabelFX;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LoginForm: TLoginForm;

implementation
  uses UnitDM,UnitVar, UnitFormConnectServer;
{$R *.dfm}

procedure TLoginForm.FormCreate(Sender: TObject);
begin
  version.Caption:=FileVersion(ParamStr(0));
end;

procedure TLoginForm.sSpeedButton1Click(Sender: TObject);
begin
   SettingsServer.LoadSetting;
    if SettingsServer.AppSettingConncet(dm.ConnectionServer) then
      begin
        MainCar.CreateTable;
        MainContactor.CreateTable;
        MainStock.CreateTable;
        MainOverhead.CreateTable;
        MainMetrics.CreateTable;
        MainGoods.CreateTable;
        MainDataOverhead.CreateTable;
        MainBankDoc.CreateTable;
        Hide;
        TMainForm.Create(Application).ShowModal;
        Show;
      end;
end;

procedure TLoginForm.sSpeedButton2Click(Sender: TObject);
begin
   FormConnectServer.ShowModal;
end;

end.
