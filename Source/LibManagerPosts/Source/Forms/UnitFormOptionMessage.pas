unit UnitFormOptionMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sEdit, sGroupBox, sCheckBox,UnitSettinMessage, ComCtrls,
  sTrackBar, sLabel;

type
  TFormOptionMessage = class(TForm)
    grp1: TsGroupBox;
    timeShowForms: TsEdit;
    EditBlend: TsCheckBox;
    Animation: TsCheckBox;
    SpeedAnimation: TsTrackBar;
    lbl1: TsLabelFX;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure SaveOption;
    { Public declarations }
  end;



implementation
 uses UnitMyMessageDialog;
{$R *.dfm}

procedure TFormOptionMessage.SaveOption;  var test : Integer;
begin
  try
   setEditBlendForm(EditBlend.Checked);
   setAnimationForm(Animation.Checked);
   setSpeedAnimation(SpeedAnimation.Position);
   if TryStrToInt(timeShowForms.Text,test) then
     if test>2000 then
       setTimeShowForm(StrToInt(timeShowForms.Text))
     else
     ShowMessageDlg('Ошибка данных','Введите время показа уведомления. Более 2000',myError)
   else
     ShowMessageDlg('Ошибка данных','Введите время показа уведомления. Более 2000',myError)

  except on e : Exception do
    ShowMessageDlg('Ошибка сохранения настроек','Возникла ошибка. возможно введены не кореектные данные',myError);
  end;
end;

procedure TFormOptionMessage.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
 SaveOption;
end;

procedure TFormOptionMessage.FormShow(Sender: TObject);
begin
 EditBlend.Checked:=getEditBlendForm;
 timeShowForms.Text:=IntToStr(getTimeShowForm);
 Animation.Checked:=getAnimationForm;
 SpeedAnimation.Position:=getSpeedAnimation;
end;

end.
