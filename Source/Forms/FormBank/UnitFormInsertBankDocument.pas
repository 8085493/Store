unit UnitFormInsertBankDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sGroupBox, Buttons, sSpeedButton, sEdit,UnitContractor,AdditionalFunctions,
  Mask, sMaskEdit, sCustomComboEdit, sToolEdit,UnitBankDocument,UnitMyMessageDialog,
  sLabel, ExtCtrls;

type
  TFormInsertBankDocument = class(TForm)
    type_payment: TsRadioGroup;
    sGroupBox1: TsGroupBox;
    sDate: TsDateEdit;
    editContactor: TsEdit;
    sEditSumma: TsEdit;
    code_bank: TsEdit;
    sSpeedButton1: TsSpeedButton;
    procedure editContactorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
  private
    ItemContractor: TItemContractor;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInsertBankDocument: TFormInsertBankDocument;

implementation
 uses UnitFormContractor, UnitDM;
{$R *.dfm}

procedure TFormInsertBankDocument.editContactorKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
    ItemContractor:=TFormContractor.Create(Application).getContacter;
    editContactor.Text:=ItemContractor._Name_Contractor;
    code_bank.Text:=ItemContractor._checking_account;
  end;

procedure TFormInsertBankDocument.FormCreate(Sender: TObject);
  begin
   sDate.Date:=Now;
  end;

procedure TFormInsertBankDocument.sSpeedButton1Click(Sender: TObject);
var money : Extended;
begin
 if (ItemContractor<>nil) then
   begin
    if TryStrToFloat(sEditSumma.Text,money) then
    begin
      TBank_document.Create(dm.ConnectionServer).insertBank_document(
      sDate.Date,IntToStr(type_payment.ItemIndex),code_bank.Text,ItemContractor._id_Contractor,sEditSumma.Text);
      Close;
    end else  ShowMessageDlg('Ошибка','Введите корректно сумму',myError);
   end else  ShowMessageDlg('Ошибка','Не выбран контрангет для оплаты',myError);
end;

end.
