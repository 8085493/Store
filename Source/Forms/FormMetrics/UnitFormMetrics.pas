unit UnitFormMetrics;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,  AdditionalFunctions,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitMetrics, Buttons, sSpeedButton, ExtCtrls, sPanel;

type
  TFormMetrics = class(TForm)
    DBGridEhMetrics: TDBGridEh;
    sPanelbutton: TsPanel;
    sSpeedButtonNew: TsSpeedButton;
    sSpeedButtondelete: TsSpeedButton;
    sSpeedButtonSave: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButtonSaveClick(Sender: TObject);
    procedure sSpeedButtondeleteClick(Sender: TObject);
    procedure sSpeedButtonNewClick(Sender: TObject);
    procedure DBGridEhMetricsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    Metrics : TMetrics;

    { Private declarations }
  public
    { Public declarations }
    procedure viewMetrics;

    function  getMetrics : TItemMetrics;
  end;

//var
//  FormMetrics: TFormMetrics;

implementation

uses UnitDM;
  var Flag : TFlagForm;
{$R *.dfm}

procedure TFormMetrics.DBGridEhMetricsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key=VK_RETURN) and (Flag=closeEnter) then Close;
end;

procedure TFormMetrics.FormCreate(Sender: TObject);
  begin
    Metrics:=TMetrics.Create(dm.ConnectionServer);
  end;

procedure TFormMetrics.viewMetrics;
  begin
    Metrics.ViewMetrics();
    DBGridEhMetrics.DataSource:=Metrics.BaseClassSQlExecuteSource;
    Flag:=noCloseEnter;
    Show;
  end;

function TFormMetrics.getMetrics : TItemMetrics;
  begin
    Metrics.ViewMetrics();
    DBGridEhMetrics.DataSource:=Metrics.BaseClassSQlExecuteSource;
    Flag:=closeEnter;
    Showmodal;
    Result:= Metrics.getItemMetrics;
//    TItemMetrics.Create(
//    Metrics.ReturnFieldsName('idMetrics'),
//    Metrics.ReturnFieldsName('Name_metrics'),
//    Metrics.ReturnFieldsName('code_okei')
//    );
  end;

procedure TFormMetrics.sSpeedButtondeleteClick(Sender: TObject);
  begin
   if MessageDlg('Удалить запись?',mtInformation,mbYesNo,1)=mrYes then
   begin
    Metrics.DeleteMetrics(Metrics.ReturnFieldsName('idMetrics'));
    Metrics.ViewMetrics();
   end;
  end;

procedure TFormMetrics.sSpeedButtonNewClick(Sender: TObject);
  begin
    Metrics.insertMetrics;
    Metrics.ViewMetrics();
  end;

procedure TFormMetrics.sSpeedButtonSaveClick(Sender: TObject);
  begin
   Metrics.BaseClassSQlExecuteQuery.Edit;
   Metrics.BaseClassSQlExecuteQuery.Post;
  end;


end.
