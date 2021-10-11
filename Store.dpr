program Store;

uses
  Forms,
  UnitMainForms in 'Source\LibManagerPosts\Source\Forms\UnitMainForms.pas' {FormViewMessage},
  UnitFormMessage in 'Source\LibManagerPosts\Source\Forms\UnitFormMessage.pas' {FormMessage},
  UnitDMmessage in 'Source\LibManagerPosts\Source\Forms\UnitDMmessage.pas' {DataModuleMessage: TDataModule},
  UnitMyMessageDialog in 'Source\LibManagerPosts\Source\Core\UnitMyMessageDialog.pas',
  UnitFormOptionMessage in 'Source\LibManagerPosts\Source\Forms\UnitFormOptionMessage.pas' {FormOptionMessage},
  UnitSettinMessage in 'Source\LibManagerPosts\Source\Core\UnitSettinMessage.pas',
  UnitMainForm in 'Source\Forms\UnitMainForm.pas' {MainForm},
  BaseClassSQlExecute in 'Source\Core\BaseClass\BaseClassSQlExecute.pas',
  LogUnit in 'Source\Core\LogUnit\LogUnit.pas',
  AdditionalFunctions in 'Source\Core\AdditionalFunctions\AdditionalFunctions.pas',
  EncryptModul in 'Source\Core\Encryption\EncryptModul.pas',
  SettingsConnectServer in 'Source\Core\SettingsConnectServer\SettingsConnectServer.pas',
  UnitAlterDataBase in 'Source\Core\UnitAlterDataBase.pas',
  UnitVar in 'Source\Core\UnitVar.pas',
  UnitDM in 'Source\Forms\UnitDM.pas' {dm: TDataModule},
  UnitFormConnectServer in 'Source\Forms\FormConnectServer\UnitFormConnectServer.pas' {FormConnectServer},
  UnitLoginForm in 'Source\Forms\LoginForm\UnitLoginForm.pas' {LoginForm},
  UnitFormDirectory in 'Source\Forms\FormDirectory\UnitFormDirectory.pas' {FormDirectory},
  UnitFormCar in 'Source\Forms\FormCar\UnitFormCar.pas' {FormCar},
  UnitCar in 'Source\Core\Car\UnitCar.pas',
  UnitContractor in 'Source\Core\Contractor\UnitContractor.pas',
  UnitFormContractor in 'Source\Forms\FormContractor\UnitFormContractor.pas' {FormContractor},
  UnitOverhead in 'Source\Core\Overhead\UnitOverhead.pas',
  UnitStock in 'Source\Core\Stock\UnitStock.pas',
  UnitFormStock in 'Source\Forms\FormStock\UnitFormStock.pas' {FormStock},
  UnitFromComingOverhead in 'Source\Forms\FormsOverhead\UnitFromComingOverhead.pas' {FromComingOverhead},
  UnitGoods in 'Source\Core\Goods\UnitGoods.pas',
  UnitMetrics in 'Source\Core\Metrics\UnitMetrics.pas',
  UnitDataOverhead in 'Source\Core\Overhead\UnitDataOverhead.pas',
  UnitFormGoods in 'Source\Forms\FormGoods\UnitFormGoods.pas' {FormGoods},
  UnitromNewComingOverhead in 'Source\Forms\FormsOverhead\UnitromNewComingOverhead.pas' {FormNewComingOverhead},
  UnitFormAddGoodsComingOverhead in 'Source\Forms\FormsOverhead\UnitFormAddGoodsComingOverhead.pas' {FormAddGoodsComingOverhead},
  UnitFormMetrics in 'Source\Forms\FormMetrics\UnitFormMetrics.pas' {FormMetrics},
  UnitFormViewGoodsStock in 'Source\Forms\FormStock\UnitFormViewGoodsStock.pas' {FormViewGoodsStock},
  Unitbank in 'Source\Core\Bank\Unitbank.pas',
  UnitBankDocument in 'Source\Core\Bank\UnitBankDocument.pas',
  UnitFormBankDocument in 'Source\Forms\FormBank\UnitFormBankDocument.pas' {FormBankDocument},
  UnitFormInsertBankDocument in 'Source\Forms\FormBank\UnitFormInsertBankDocument.pas' {FormInsertBankDocument},
  UnitTTNExportExcel in 'Source\Core\Report\UnitTTNExportExcel.pas',
  UnitDataTTN in 'Source\Core\Report\UnitDataTTN.pas',
  MoneyString in 'Source\Core\AdditionalFunctions\MoneyString.pas',
  RoubleUnit in 'Source\Core\AdditionalFunctions\RoubleUnit.pas',
  propis in 'Source\Core\AdditionalFunctions\propis.pas',
  SettingServerUpdate in 'Source\LibUpdateProject\Core\SettingServerUpdate.pas',
  UnitUpdateProgect in 'Source\LibUpdateProject\Core\UnitUpdateProgect.pas',
  UnitFormReportBank in 'Source\Forms\FormBank\UnitFormReportBank.pas' {FormReportBank},
  Expense_report in 'Source\Core\Expense report\Expense_report.pas',
  UnitFormExpense_report in 'Source\Forms\FormExpense_report\UnitFormExpense_report.pas' {FormExpense_report},
  UnitFormNewExpense_report in 'Source\Forms\FormExpense_report\UnitFormNewExpense_report.pas' {FormNewExpense_report},
  UnitBackup in 'Source\Core\Backup\UnitBackup.pas',
  UnitFormViewProfit in 'Source\Forms\FormViewProfit\UnitFormViewProfit.pas' {FormViewProfit},
  UnitReport in 'Source\Core\Report\UnitReport.pas',
  UnitFormTaxes in 'Source\Forms\FormReport\UnitFormTaxes.pas' {FormTaxes},
  UnitFormRegeditOverhead in 'Source\Forms\FormReport\UnitFormRegeditOverhead.pas' {FormRegeditOverhead},
  UnitFormConsol in 'Source\Forms\UnitFormConsol.pas' {FormConsol},
  UnitFormJournal in 'Source\Forms\FormJournal\UnitFormJournal.pas' {FormJournal},
  UnitSettingProject in 'Source\Core\SettingProject\UnitSettingProject.pas',
  UnitESF in 'Source\Core\ESF\UnitESF.pas',
  UnitShippingAddress in 'Source\Core\ShippingAddress\UnitShippingAddress.pas',
  UnitFormShippingAddress in 'Source\Forms\FormShippingAddress\UnitFormShippingAddress.pas' {FormShippingAddress},
  UnitTypeDocuments in 'Source\Core\TypeDocuments\UnitTypeDocuments.pas',
  UnitFormTypeDocuments in 'Source\Forms\FormTypeDocuments\UnitFormTypeDocuments.pas' {FormTypeDocuments},
  UnitFormSetting in 'Source\Forms\FormSetting\UnitFormSetting.pas' {FormSetting},
  EhLibMyDac in 'Source\Core\BaseClass\EhLibMyDac.pas',
  UnitFormViewUpdate in 'Source\Forms\FormViewUpdate\UnitFormViewUpdate.pas' {FormViewUpdate},
  UnitFormAct in 'Source\Forms\FormReport\UnitFormAct.pas' {FormAct},
  UnitPrintGreed in 'Source\Core\Print\UnitPrintGreed.pas',
  UnitFormPopDate in 'Source\Forms\FormReport\UnitFormPopDate.pas' {FormPopDate},
  UnitLicenseServer in 'Source\License\UnitLicenseServer.pas',
  UnitFormEditContractor in 'Source\Forms\FormContractor\UnitFormEditContractor.pas' {FormEditContractor};

{$R *.res}

begin
  Application.Initialize;

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  //Application.CreateForm(TFormTaxes, FormTaxes);
  //Application.CreateForm(TMainForm, MainForm);
  //Application.CreateForm(TFromComingOverhead, FromComingOverhead);
  // Application.CreateForm(TFormStock, FormStock);



  SettingsServer              :=TSettingsConnectServer.Create(dm.ConnectionServer);
  SettingsServer.setIP(MainLicense.__IP);
  SettingsServer.setBaseName(MainLicense.__BASE_NAME);
  MainCar:=TCar.Create(dm.ConnectionServer);
  MainContactor := TContractor.Create(dm.ConnectionServer);
  MainStock:=TStock.Create(dm.ConnectionServer);
  MainOverhead := TOverhead.Create(dm.ConnectionServer);
  MainMetrics := TMetrics.Create(dm.ConnectionServer);
  MainGoods := TGoods.Create(dm.ConnectionServer);
  MainDataOverhead:=TDataOverhead.Create(dm.ConnectionServer);
  MainBankDoc :=TBank_document.Create(dm.ConnectionServer);

  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TLoginForm, LoginForm);
  Application.CreateForm(TFormConnectServer, FormConnectServer);
  Application.CreateForm(TFormPopDate, FormPopDate);

  Application.Run;
end.
