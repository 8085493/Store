unit UnitFormExpense_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  propis, Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  AdditionalFunctions, DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Buttons,
  sSpeedButton, ExtCtrls, sPanel, Expense_report, EhLibVCL;

type
  TFormExpense_report = class(TForm)
    sPanel1: TsPanel;
    btn1: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButtonDelete: TsSpeedButton;
    DBGridEhExpense_report: TDBGridEh;
    sSpeedButtonUpdate: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure sSpeedButtonDeleteClick(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure DBGridEhExpense_reportDblClick(Sender: TObject);
    procedure sSpeedButtonUpdateClick(Sender: TObject);
  private
    Expense_report: TExpense_report;
    { Private declarations }
  public
    { Public declarations }
    procedure view_Expense_report;
  end;

var
  FormExpense_report: TFormExpense_report;

implementation

uses
  UnitDM, UnitFormNewExpense_report;

{$R *.dfm}

procedure TFormExpense_report.btn1Click(Sender: TObject);
begin
  Expense_report.insert_Expense_report;
  Expense_report.ViewExpense_report();
end;

procedure TFormExpense_report.DBGridEhExpense_reportDblClick(Sender: TObject);
begin
 sSpeedButton1Click(Self);

//  if Expense_report.RecordCount > 0 then
//  begin
//    TFormNewExpense_report.Create(Application).addExpense_report(Expense_report.ReturnFieldsName('id_table_expense_report'));
//  end;
end;

procedure TFormExpense_report.FormCreate(Sender: TObject);
begin
  Expense_report := TExpense_report.Create(dm.ConnectionServer);
  LoadIniVisibleGrid('SettingVisibleGrid.ini', ',GridExpense', DBGridEhExpense_report);
end;

procedure TFormExpense_report.sSpeedButton1Click(Sender: TObject);
begin
  if Expense_report.RecordCount > 0 then
  begin
    with TFormNewExpense_report.Create(Application) do
    begin
      addExpense_report(Expense_report.ReturnFieldsName('id_table_expense_report'));
    end;
    Expense_report.ViewExpense_report();
  end;
end;

procedure TFormExpense_report.sSpeedButtonDeleteClick(Sender: TObject);
begin
  if MessageDlg('Удалить запись?', mtInformation, mbYesNo, 1) = mrYes then
  begin
    Expense_report.DeleteExpense_report(Expense_report.ReturnFieldsName('id_table_expense_report'));
    Expense_report.ViewExpense_report();
  end;
end;

procedure TFormExpense_report.sSpeedButtonUpdateClick(Sender: TObject);
begin
  Expense_report.ViewExpense_report();
end;

procedure TFormExpense_report.view_Expense_report;
begin
  DBGridEhExpense_report.DataSource := Expense_report.BaseClassSQlExecuteSource;
  Expense_report.ViewExpense_report();
  Show;
end;

end.

