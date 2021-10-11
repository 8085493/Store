unit UnitFormSetting;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,UnitESF,
  Dialogs, ComCtrls, sPageControl, acSlider, StdCtrls, sLabel, sColorSelect,
  Buttons, sSpeedButton, sGroupBox, ExtCtrls, sPanel,UnitSettingProject, sEdit,
  sComboBoxes, SettingServerUpdate,AdditionalFunctions,UnitMyMessageDialog,UnitFormOptionMessage
  ;

type
  TFormSetting = class(TForm)
    mainpagesetting: TsPageControl;
    tabAppearance: TsTabSheet;
    tabESF: TsTabSheet;
    sGroupBox2: TsGroupBox;
    sGroupBox1: TsGroupBox;
    prixodtext: TsColorSelect;
    prixodRow: TsColorSelect;
    rasxodtext: TsColorSelect;
    rasxodRow: TsColorSelect;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    sSpeedButton1: TsSpeedButton;
    colorActiv: TsSlider;
    sGroupBox3: TsGroupBox;
    number_ESF: TsEdit;
    activ_year: TsEdit;
    sSpeedButton2: TsSpeedButton;
    sGroupBox4: TsGroupBox;
    sSliderActv: TsSlider;
    sComboBoxExTheme: TsComboBoxEx;
    PAGE_UPDATE: TsTabSheet;
    lbl2: TsLabelFX;
    sGroupBox5: TsGroupBox;
    LabelPathfile: TsLabelFX;
    server: TsEdit;
    port: TsEdit;
    AutoUpdate: TsSlider;
    dispOpt: TsTabSheet;
    sGroupBox6: TsGroupBox;
    sSpeedButton3: TsSpeedButton;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure tabAppearanceShow(Sender: TObject);
    procedure tabESFShow(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSliderActvSliderChange(Sender: TObject);
    procedure sComboBoxExThemeChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure colorActivSliderChange(Sender: TObject);
    procedure PAGE_UPDATEShow(Sender: TObject);
    procedure serverExit(Sender: TObject);
    procedure portExit(Sender: TObject);
    procedure AutoUpdateSliderChange(Sender: TObject);
    procedure dispOptShow(Sender: TObject);
    procedure dispOptHide(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    var setting   : TSettingProject;
    Updateproject : TSettingServerUpdate;
    formoptionmes : TFormOptionMessage;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSetting: TFormSetting;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormSetting.AutoUpdateSliderChange(Sender: TObject);
  begin
    setting.ACTIV_UPDATE:= AutoUpdate.SliderOn;
    setting.setSettingOption;
  end;

procedure TFormSetting.colorActivSliderChange(Sender: TObject);
  begin
    setting.ACTIV_COLOR_BANK:=colorActiv.SliderOn;
  end;

procedure TFormSetting.dispOptHide(Sender: TObject);
  begin
    formoptionmes.SaveOption;
  end;

procedure TFormSetting.dispOptShow(Sender: TObject);
  begin
    if formoptionmes=nil then
      begin
       formoptionmes:=TFormOptionMessage.Create(Application);
       CreateViewForm(formoptionmes,dispOpt);
      end;
      formoptionmes.Show;
  end;

procedure TFormSetting.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    if True then
  end;

procedure TFormSetting.PAGE_UPDATEShow(Sender: TObject);
  begin
     Updateproject:=TSettingServerUpdate.create;
       setting:=TSettingProject.Create;

      AutoUpdate.SliderOn:=setting.ACTIV_UPDATE;
      server.Text:=Updateproject.getServer;
      port.Text:=IntToStr(Updateproject.getPort);
      LabelPathfile.Caption:='Файл: '+Updateproject.getFileName+#13+
      'Путь файла: '+Updateproject.getFilePath;
      LabelPathfile.Hint:=LabelPathfile.Caption;

  end;

procedure TFormSetting.portExit(Sender: TObject);
  begin
       if CountString(port.Text) then
        Updateproject.setPort(StrToInt(port.Text));
  end;

procedure TFormSetting.sComboBoxExThemeChange(Sender: TObject);
  begin
   dm.sSkinManager.SkinName:=sComboBoxExTheme.ItemsEx.Items[sComboBoxExTheme.ItemIndex].Caption;
   setting.NAME_THEME:=sComboBoxExTheme.ItemsEx.Items[sComboBoxExTheme.ItemIndex].Caption;
   setting.ID_THEME:=sComboBoxExTheme.ItemIndex;
   setting.setSettingOption;
  end;

procedure TFormSetting.serverExit(Sender: TObject);
  begin
    if CountString(server.Text) then
        Updateproject.setServer(server.Text);
  end;

procedure TFormSetting.sSliderActvSliderChange(Sender: TObject);
  begin
   dm.sSkinManager.Active:= (Sender as TsSlider).SliderOn;
   setting.ACTIV_TEHEME:=(Sender as TsSlider).SliderOn;
   setting.setSettingOption;
  end;

procedure TFormSetting.sSpeedButton1Click(Sender: TObject);
  begin
   //setting:=TSettingProject.Create;
   setting.COLOR_PRIXOD_ROW:=prixodRow.ColorValue;
   setting.COLOR_PRIXOD_TEXT:= prixodtext.ColorValue;
   setting.COLOR_RASXOD_ROW:=rasxodRow.ColorValue;
   setting.COLOR_RASXOD_TEXT:=rasxodtext.ColorValue;
   setting.ACTIV_COLOR_BANK:=colorActiv.SliderOn;
   setting.setSettingOption;
  // sPaneloption.Hide;
  end;

procedure TFormSetting.sSpeedButton2Click(Sender: TObject);
  begin
   TNumberESF.Create(dm.ConnectionServer).setNewValues(TItemNumberESF.Create('1',number_ESF.Text,activ_year.Text));
  end;

procedure TFormSetting.sSpeedButton3Click(Sender: TObject);
  begin
    if MessageDlg('Программа будет закрыта, сбросить настроки? ',mtInformation,mbYesNo,1)=mrYes then
     begin
       DeleteFile(ExtractFilePath(ParamStr(0)) +'\ConfigDBGrid.ini');
       Application.Terminate;
     end;
  end;

procedure TFormSetting.tabAppearanceShow(Sender: TObject);
//var setting : TSettingProject;
  begin
   setting:=TSettingProject.Create;
   prixodRow.ColorValue:=setting.getColorPrixodRow;
   prixodtext.ColorValue:=setting.COLOR_PRIXOD_TEXT;
   rasxodRow.ColorValue:=setting.COLOR_RASXOD_ROW;
   rasxodtext.ColorValue:=setting.COLOR_RASXOD_TEXT;
   colorActiv.SliderOn:=setting.ACTIV_COLOR_BANK;

   sSliderActv.SliderOn:=setting.ACTIV_TEHEME;
   sComboBoxExTheme.ItemIndex:=setting.ID_THEME;
   //sPaneloption.Visible:= not sPaneloption.Visible;
  end;

procedure TFormSetting.tabESFShow(Sender: TObject);
var item : TItemNumberESF;
  begin
    item:=TNumberESF.Create(dm.ConnectionServer).getNumber;
    number_ESF.Text:=
    item._number_ESF;
    activ_year.Text:=
    item._activ_year;
  end;

end.
