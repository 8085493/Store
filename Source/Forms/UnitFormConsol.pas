unit UnitFormConsol;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh,
  StdCtrls, sMemo, Buttons, sSpeedButton, ExtCtrls, sPanel, GridsEh,
  DBAxisGridsEh, DBGridEh,BaseClassSQlExecute, sSplitter;

type
  TFormConsol = class(TForm)
    DBGridEh1: TDBGridEh;
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    QueryText: TsMemo;
    sSplitter1: TsSplitter;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    BaseClassSQlExecute : TBaseClassSQlExecute;
  public
    { Public declarations }
  end;

var
  FormConsol: TFormConsol;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormConsol.FormCreate(Sender: TObject);
begin
 BaseClassSQlExecute := TBaseClassSQlExecute.Create(dm.ConnectionServer);
 DBGridEh1.DataSource:=BaseClassSQlExecute.BaseClassSQlExecuteSource;
end;

procedure TFormConsol.sSpeedButton1Click(Sender: TObject);
begin
 BaseClassSQlExecute.SQlExecute(QueryText.Text);
end;

end.
