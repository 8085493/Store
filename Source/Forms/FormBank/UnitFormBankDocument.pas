unit UnitFormBankDocument;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh,DB, DBGridEh,UnitBankDocument, Buttons, sSpeedButton, StdCtrls,DBGridEhImpExp,
  sGroupBox, ComCtrls, sPageControl, PrnDbgeh,Printers,PrViewEh, ExtCtrls,UnitSettingProject,
  sPanel;

type
  TFormBankDocument = class(TForm)
    sPageControl1: TsPageControl;
    ViewGroup: TsTabSheet;
    viewList: TsTabSheet;
    DBGridEhBankDocumentmain: TDBGridEh;
    DBGridEhBankDocument: TDBGridEh;
    DBGridEhList: TDBGridEh;
    PrintDBGridEh: TPrintDBGridEh;
    sPanel1: TsPanel;
    buttonAdd: TsSpeedButton;
    sSpeedButtonDelete: TsSpeedButton;
    sSpeedButtonReport: TsSpeedButton;
    btnprint: TsSpeedButton;
    sSpeedButtonChech: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure buttonAddClick(Sender: TObject);
    procedure sSpeedButtonChechClick(Sender: TObject);
    procedure sSpeedButtonReportClick(Sender: TObject);
    procedure DBGridEhBankDocumentmainRowDetailPanelShow(
      Sender: TCustomDBGridEh; var CanShow: Boolean);
    procedure sSpeedButtonDeleteClick(Sender: TObject);
    procedure viewListShow(Sender: TObject);
    procedure ViewGroupShow(Sender: TObject);
    procedure btnprintClick(Sender: TObject);
    procedure DBGridEhListDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumnEh; State: TGridDrawState);
  private
   BankDocument : TBank_document;
   BankListDocument : TBank_document;
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    { Private declarations }
  public
    procedure ViewTBank_document;

    { Public declarations }
  end;

var
  FormBankDocument: TFormBankDocument;

implementation

uses UnitDM,UnitFormInsertBankDocument,UnitFormReportBank;

{$R *.dfm}

procedure TFormBankDocument.DataSourceDataChange(Sender: TObject; Field: TField);
var bool : Boolean;
  begin
   bool:=StrToBool(BankListDocument.ReturnFieldsName('Activ_Bank_document'));
//   sSpeedButtonDelete.Enabled:=not bool;
//   sSpeedButtonEdit.Enabled:=not bool;
   case bool of
     True : begin
             sSpeedButtonChech.Caption:='Отменить подпись';
             sSpeedButtonChech.Tag:=1;
            end;
     false :begin
             sSpeedButtonChech.Caption:='Подписать';
             sSpeedButtonChech.Tag:=0;
            end;
     else  sSpeedButtonChech.Enabled:=not bool;
   end;

  end;

procedure TFormBankDocument.DBGridEhBankDocumentmainRowDetailPanelShow(
  Sender: TCustomDBGridEh; var CanShow: Boolean);
  begin
   DBGridEhBankDocument.DataSource:=BankListDocument.BaseClassSQlExecuteSource;
   if BankDocument.RecordCount>0 then
    BankListDocument.getListDocumentBank
    (BankDocument.ReturnFieldsName('date_document'));
  end;

procedure TFormBankDocument.DBGridEhListDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumnEh;
  State: TGridDrawState);
 var Setting : TSettingProject;
  begin
    Setting:=TSettingProject.Create;
     if Setting.ACTIV_COLOR_BANK then
     case StrToInt(BankListDocument.ReturnfieldsName('type_payment')) of
      0 : begin
              DBGridEhList.Canvas.Brush.Color:=Setting.COLOR_PRIXOD_ROW;
              DBGridEhList.Canvas.Font.Color:=Setting.COLOR_PRIXOD_TEXT;
          end;
      1 : begin
              DBGridEhList.Canvas.Brush.Color:=Setting.COLOR_RASXOD_ROW;
              DBGridEhList.Canvas.Font.Color:=Setting.COLOR_RASXOD_TEXT;
          end;
     end;

     DBGridEhList.DefaultDrawColumnCell(Rect, DataCol, Column, State);
     Setting.Free;
  end;

procedure TFormBankDocument.btnprintClick(Sender: TObject);
  begin
       try
       // DBGridEhGoodsStock.Columns[1].Visible:=False;

        PrintDBGridEh.Preview;
        // DBGridEhGoodsStock.Columns[1].Visible:=true;
       except
       // DBGridEhGoodsStock.Columns[1].Visible:=true;
       end;
  end;

procedure TFormBankDocument.buttonAddClick(Sender: TObject);
  begin
   TFormInsertBankDocument.Create(Application).ShowModal;
   BankDocument.getDocumentBankGroup;
   BankListDocument.getListAllBank;
  end;

procedure TFormBankDocument.FormCreate(Sender: TObject);
  begin
    BankDocument := TBank_document.Create(dm.ConnectionServer);
    BankListDocument := TBank_document.Create(dm.ConnectionServer);
    BankListDocument.BaseClassSQlExecuteSource.OnDataChange:= DataSourceDataChange;
  end;

procedure TFormBankDocument.sSpeedButtonChechClick(Sender: TObject);
  begin
   case (Sender as TSpeedButton).Tag of
    0 : if MessageDlg('Подписать банковский документ?',mtInformation,mbYesNo,1)=mrYes then
         begin
          BankListDocument.setActiv_Bank_document(BankListDocument.ReturnFieldsName('id_Bank_document'),'1');
          BankDocument.getDocumentBankGroup;
          BankListDocument.getListAllBank;
         end;
    1 : if MessageDlg('Отменить подпись банковского документа?',mtInformation,mbYesNo,1)=mrYes then
         begin
          BankListDocument.setActiv_Bank_document(BankListDocument.ReturnFieldsName('id_Bank_document'),'0');
          BankDocument.getDocumentBankGroup;
          BankListDocument.getListAllBank;
         end;
   end;
  end;

procedure TFormBankDocument.sSpeedButtonDeleteClick(Sender: TObject);
  begin
    if MessageDlg('Удалить банковский документ?',mtInformation,mbYesNo,1)=mrYes then
       begin
          BankListDocument.DeleteBank_document(BankListDocument.ReturnFieldsName('id_Bank_document'));
          BankListDocument.getListAllBank;
          BankDocument.getDocumentBankGroup;
       end;
  end;

procedure TFormBankDocument.sSpeedButtonReportClick(Sender: TObject);
  begin
   TFormReportBank.Create(Application).viewReport;
  end;

procedure TFormBankDocument.ViewGroupShow(Sender: TObject);
  begin
     PrintDBGridEh.DBGridEh:=DBGridEhBankDocumentmain;
     PrinterPreview.Orientation :=poPortrait;
  end;

procedure TFormBankDocument.viewListShow(Sender: TObject);
  begin
    DBGridEhList.DataSource:=BankListDocument.BaseClassSQlExecuteSource;
    BankListDocument.getListAllBank;
    PrintDBGridEh.DBGridEh:=DBGridEhList;
    PrinterPreview.Orientation :=poLandscape;
  end;

procedure TFormBankDocument.ViewTBank_document;
  begin
    BankDocument.getDocumentBankGroup;
    DBGridEhBankDocumentmain.DataSource:=BankDocument.BaseClassSQlExecuteSource;
    DBGridEhBankDocument.DataSource:=BankListDocument.BaseClassSQlExecuteSource;
    Show;
  end;
end.
