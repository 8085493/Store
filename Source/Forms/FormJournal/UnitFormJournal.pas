unit UnitFormJournal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitReport;

type
  TFormJournal = class(TForm)
    DBGridEh: TDBGridEh;
    procedure FormCreate(Sender: TObject);
  private
    report : TReport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJournal: TFormJournal;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormJournal.FormCreate(Sender: TObject);
begin
  report:=TReport.Create(dm.ConnectionServer);
    DBGridEh.DataSource:=report.BaseClassSQlExecuteSource;
    report.getListJournal;
end;

end.
