unit UnitFormNewExpense_report;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, Buttons,
  sSpeedButton, GridsEh, DBAxisGridsEh, DBGridEh, ExtCtrls, sPanel, Mask,
  Expense_report, sMaskEdit, sCustomComboEdit, sToolEdit, AdditionalFunctions,
  RoubleUnit, StdCtrls, sEdit, UnitContractor, UnitDataOverhead, PrnDbgeh,
  ComCtrls, sRichEdit, Printers, PrViewEh, EhLibVCL, MemTableDataEh, Db,
  DataDriverEh, MemTableEh, frxClass, frxExportMail, frxExportRTF, frxOLE,
  frxExportPDF, frxDBSet;

type
  TFormNewExpense_report = class(TForm)
    sPanel1: TsPanel;
    sPanel2: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sPanel3: TsPanel;
    Contractor: TsEdit;
    sDateEdit1: TsDateEdit;
    sSpeedButton2: TsSpeedButton;
    PrintDBGridEh: TPrintDBGridEh;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton11: TsSpeedButton;
    sSpeedButton12: TsSpeedButton;
    frxReport: TfrxReport;
    MemTableEh1: TMemTableEh;
    frxDBDatasetxpense_report: TfrxDBDataset;
    DBGridEhDataOverhead: TDBGridEh;
    MemTableEhattribut: TMemTableEh;
    frxDBDataset1: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sDateEdit1Change(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton5Click(Sender: TObject);
    procedure ContractorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    itemsContractor: TItemContractor;
    Expense_report: TExpense_report;
    id_table_expense_report: string;
    procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
    procedure addExpense_report(id_table_expense_report: string);
  end;

var
  FormNewExpense_report: TFormNewExpense_report;

implementation

uses
  UnitDM, unitFormAddGoodsComingOverhead, unitFormContractor;
{$R *.dfm}

procedure TFormNewExpense_report.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TFormNewExpense_report.addExpense_report(id_table_expense_report: string);
begin
  self.id_table_expense_report := id_table_expense_report;
  Expense_report.getItemExpenseReport(id_table_expense_report);
  itemsContractor := TContractor.Create(dm.ConnectionServer).getContactorID(Expense_report.ReturnFieldsName('idcontactor'));
  sDateEdit1.Text := Expense_report.ReturnFieldsName('date_expense_report');
  Expense_report.View_data_Expense_report(id_table_expense_report);
  frxDBDatasetxpense_report.DataSet := Expense_report.BaseClassSQlExecuteQuery;

  if CountString(itemsContractor._id_Contractor) then
    Contractor.Text := itemsContractor._Name_Contractor + ',' + itemsContractor._Legal_Address;
  // Contractor.Text:=itemsContractor._Name_Contractor+','+itemsContractor._Legal_Address;

  DBGridEhDataOverhead.DataSource := Expense_report.BaseClassSQlExecuteSource;

  ShowModal;
end;

procedure TFormNewExpense_report.ContractorKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  itemsContractor := TFormContractor.Create(Application).getContacter;
  if CountString(itemsContractor._id_Contractor) then
    Contractor.Text := itemsContractor._Name_Contractor + ',' + itemsContractor._Legal_Address;
  // Contractor.Text:=itemsContractor._Name_Contractor+','+itemsContractor._Legal_Address;

  Expense_report.setContactorExpenseReport(itemsContractor._id_Contractor, id_table_expense_report);
  Expense_report.View_data_Expense_report(id_table_expense_report);
end;

procedure TFormNewExpense_report.FormCreate(Sender: TObject);
begin
  Expense_report := TExpense_report.Create(dm.ConnectionServer);
end;

procedure TFormNewExpense_report.sDateEdit1Change(Sender: TObject);
begin
  Expense_report.setDateExpenseReport(DateToStr(sDateEdit1.Date), id_table_expense_report);
  Expense_report.View_data_Expense_report(id_table_expense_report);
end;

procedure TFormNewExpense_report.sSpeedButton1Click(Sender: TObject);
begin
  TFormAddGoodsComingOverhead.Create(Application).InsertDataOverhead('0', '2', id_table_expense_report);
  Expense_report.View_data_Expense_report(id_table_expense_report);
end;

procedure TFormNewExpense_report.sSpeedButton2Click(Sender: TObject);
var
  path_all, DateString: string;
  REReport: TsRichEdit;
  itemExp: TItemExpense_report;
  FormatSetting: TFormatSettings;

  function formationContactor(item: TItemContractor): string;
  var
    StringContactor: string;
  begin
    StringContactor := '';
    if CountString(item._Name_Contractor) then
      StringContactor := StringContactor + item._Name_Contractor + #13;
    if CountString(item._UNP) then
      StringContactor := StringContactor + 'УНП ' + item._UNP + #13;
    if CountString(item._OKPO) then
      StringContactor := StringContactor + 'ОКПО ' + item._OKPO + #13;
    if CountString(item._Legal_Address) then
      StringContactor := StringContactor + 'Адрес: ' + #13 + item._Legal_Address + #13;
    if CountString(item._Phone) then
      StringContactor := StringContactor + 'тел. ' + item._Phone + #13;
    if CountString(item._checking_account) then
      StringContactor := StringContactor + 'Расчётный счет № ' + item._checking_account + #13;
    if CountString(item._Name_bank) then
      StringContactor := StringContactor + 'в ' + item._Name_bank + #13;
    if CountString(item._agreement) then
      StringContactor := StringContactor + '' + item._agreement + #13;

    Result := StringContactor;
  end;

begin
  REReport := TsRichEdit.Create(nil);
  try

    with REReport do
    begin
      Parent := self;
      Visible := false;
    end;
    path_all := ExtractFilePath(Application.ExeName) + 'data\Report\';

  // REReport.Lines.LoadFromFile(path_all + 'ScoreAffteGgridText.rtf');
  // SearchAndReplace(REReport, 'all_money', RealToRouble(DBGridEhDataOverhead.Columns[7].Footer.SumValue));
  // SearchAndReplace(REReport, 'nds_money', RealToRouble(DBGridEhDataOverhead.Columns[6].Footer.SumValue));

    PrintDBGridEh.AfterGridText.LoadFromFile(path_all + 'ScoreAffteGgridText.rtf');
    PrintDBGridEh.SetSubstitutes(['all_money', RealToRouble(DBGridEhDataOverhead.Columns[7].Footer.SumValue), 'nds_money', RealToRouble(DBGridEhDataOverhead.Columns[6].Footer.SumValue)]);
  // :=REReport.Lines;

    itemExp := TExpense_report.Create(dm.ConnectionServer).getItemExpenseReport(id_table_expense_report);
  // REReport.Lines.LoadFromFile(path_all + 'ScoreBeforeGgridText.rtf');

  // формируем дату))
    FormatSetting.ShortDateFormat := 'DD';
    DateString := DateToStr(StrToDate(itemExp._datedoc), FormatSetting);
    FormatSetting.ShortDateFormat := 'MM';
    DateString := DateString + ' ' + (ReturnMonthForAct(StrToInt(DateToStr(StrToDate(itemExp._datedoc), FormatSetting)))) + ' ';
    FormatSetting.ShortDateFormat := 'YYYY';
    DateString := DateString + DateToStr(StrToDate(itemExp._datedoc), FormatSetting);

  // SearchAndReplace(REReport, 'numb', itemExp._number);
  // SearchAndReplace(REReport, 'date', DateString); //itemExp._datedoc);
  // SearchAndReplace(REReport, 'provider', formationContactor(TContractor.Create(dm.ConnectionServer).getContactorMain));
  // SearchAndReplace(REReport, 'buyer', formationContactor(itemsContractor));

    PrintDBGridEh.BeforeGridText.LoadFromFile(path_all + 'ScoreBeforeGgridText.rtf');
    PrintDBGridEh.SetSubstitutes(['numb', itemExp._number, 'date', DateString, 'buyer', formationContactor(itemsContractor), 'provider', formationContactor(TContractor.Create(dm.ConnectionServer).getContactorMain)]);

  // DBGridEhDataOverhead.Columns[7].Footer.SumValue

  // PrintDBGridEh.AfterGridText.LoadFromFile(path_all+'ScoreAffteGgridText.rtf');
  // ShowMessage(RealToRouble(DBGridEhDataOverhead.Columns[7].Footer.SumValue));
    try
      MemTableEhattribut.EmptyTable;
      MemTableEhattribut.edit;
      MemTableEhattribut.Insert;
      MemTableEhattribut.FieldByName('buyer').AsString := formationContactor(itemsContractor);
      MemTableEhattribut.FieldByName('InfoMainContractor').AsString := formationContactor(TContractor.Create(dm.ConnectionServer).getContactorMain);
      MemTableEhattribut.post;
  // frxReport.Variables['InfoMainContractor']:=QuotedStr(formationContactor(TContractor.Create(dm.ConnectionServer).getContactorMain));
  // frxReport.Variables['buyer']:=QuotedStr(formationContactor(itemsContractor));
      frxReport.LoadFromFile(path_all+'Expresion.fr3');
      frxReport.Variables['infoNumber'] := QuotedStr(itemExp._number + ' от ' + DateString);
      frxReport.Variables['all_money'] := QuotedStr(RealToRouble(DBGridEhDataOverhead.Columns[7].Footer.SumValue));
      frxReport.Variables['nds_money'] := QuotedStr(RealToRouble(DBGridEhDataOverhead.Columns[6].Footer.SumValue));
      frxReport.ShowReport;
    except
      on e: Exception do
      begin
        PrinterPreview.Orientation := poPortrait;
        PrintDBGridEh.Preview;
      end;
    end;
  finally
    REReport.Free;
  end;

end;

procedure TFormNewExpense_report.sSpeedButton3Click(Sender: TObject);
begin
  if MessageDlg('Удалить запись?', mtInformation, mbYesNo, 1) = mrYes then
  begin
    Expense_report.DeleteDataExpense_report(Expense_report.ReturnFieldsName('id_data_expense_report'));
    Expense_report.View_data_Expense_report(id_table_expense_report);
  end;
end;

procedure TFormNewExpense_report.sSpeedButton5Click(Sender: TObject);
begin
  if (Expense_report.RecordCount > 0) then
    if MessageDlg('Создать новый расходный документ, и перенести информацию?', mtInformation, mbYesNo, 1) = mrYes then
    begin
      Expense_report.exportToOverhead(id_table_expense_report);
      Close;
    end;
end;

end.

