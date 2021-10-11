unit UnitFormViewUpdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sListBox, sMemo,AdditionalFunctions,UnitSettingProject,
  sLabel;

type
  TFormViewUpdate = class(TForm)
    sMemo1: TsMemo;
    sLabel1: TsLabel;
    VERSION: TsLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViewUpdate: TFormViewUpdate;

implementation

{$R *.dfm}

procedure TFormViewUpdate.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    TSettingProject.Create.setVersion(FileVersion(ParamStr(0)));
    MessageDlg('Список изменеий можно посмотреть через Меню->Обновления->Информация о обновлениях',mtInformation,[mbOk],1);
  end;

procedure TFormViewUpdate.FormCreate(Sender: TObject);
  begin
   VERSION.Caption:='Текущая версия: '+FileVersion(ParamStr(0));
  end;

end.
