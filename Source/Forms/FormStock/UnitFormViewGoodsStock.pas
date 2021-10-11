unit UnitFormViewGoodsStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, UnitDataOverhead, StdCtrls, sEdit, Buttons,
  UnitPrintGreed, sSpeedButton, ExtCtrls, sPanel, AdditionalFunctions, PrnDbgeh,
  EhLibVCL;

type
  TFormViewGoodsStock = class(TForm)
    DBGridEhGoodsStock: TDBGridEh;
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    newPrice: TsEdit;
    buttonPrint: TsSpeedButton;
    PrintDBGridEh: TPrintDBGridEh;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure DBGridEhGoodsStockKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridEhGoodsStockDblClick(Sender: TObject);
    procedure buttonPrintClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure DBGridEhGoodsStockColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    dataoverhead: TDataOverhead;
    { Private declarations }
    procedure CreateParams(var Params: TCreateParams);
  public
    procedure viewGoodsStock;
    procedure SaveGridIni;
    function getGoodsStock(id_overhead: string;Filter : string = ''): TitemGoodsStock;
    function getGoodsStockSF(id: string; Filter : string = ''): TItemGoodsStock;
    { Public declarations }
  end;

var
  FormViewGoodsStock: TFormViewGoodsStock;

implementation

uses
  UnitDM, UnitromNewComingOverhead;

var
  flag: TFlagForm;
{$R *.dfm}

procedure TFormViewGoodsStock.buttonPrintClick(Sender: TObject);
begin
  try
   // DBGridEhGoodsStock.Columns[1].Visible:=False;
   // PrintDBGridEh.Preview;
    TPrintGreed.Create(DBGridEhGoodsStock).Preview;

   // DBGridEhGoodsStock.Columns[1].Visible:=true;
  except
   // DBGridEhGoodsStock.Columns[1].Visible:=true;
  end;
end;

procedure TFormViewGoodsStock.SaveGridIni;
begin
  SaveIniVisibleGrid('SettingVisibleGrid.ini', 'GRID_STOCK', DBGridEhGoodsStock);
end;

procedure TFormViewGoodsStock.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
    ExStyle := ExStyle or WS_EX_APPWINDOW;
end;

procedure TFormViewGoodsStock.DBGridEhGoodsStockColumnMoved(Sender: TObject; FromIndex, ToIndex: Integer);
begin
    //ShowMessage('343');
end;

procedure TFormViewGoodsStock.DBGridEhGoodsStockDblClick(Sender: TObject);
begin
  newPrice.Text := dataoverhead.ReturnFieldsName('Selling_price');
end;

procedure TFormViewGoodsStock.DBGridEhGoodsStockKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) and (flag = closeEnter) then
    Close;
end;

procedure TFormViewGoodsStock.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SaveGridIni;
end;

procedure TFormViewGoodsStock.FormCreate(Sender: TObject);
begin
  dataoverhead := TDataOverhead.Create(dm.ConnectionServer);
  LoadIniVisibleGrid('SettingVisibleGrid.ini', 'GRID_STOCK', DBGridEhGoodsStock);
end;

function TFormViewGoodsStock.getGoodsStock(id_overhead: string; Filter : string = ''): TitemGoodsStock;
begin
  Caption := 'ÑÊËÀÄ (ÂÛÁÎÐ ÒÎÂÀÐÀ)';
  dataoverhead.getStockStoreNotTTN(id_overhead);
  DBGridEhGoodsStock.DataSource := dataoverhead.BaseClassSQlExecuteSource;
  DBGridEhGoodsStock.SearchPanel.SearchingText := Filter;
  DBGridEhGoodsStock.SearchPanel.ApplySearchFilter;
  flag := closeEnter;
  Showmodal;
  Result := TitemGoodsStock.Create(dataoverhead.ReturnFieldsName('id_DataOverhead'), dataoverhead.ReturnFieldsName('Name_Goods'), dataoverhead.ReturnFieldsName('count_Goods'), dataoverhead.ReturnFieldsName('Selling_price'));
end;

function TFormViewGoodsStock.getGoodsStockSF(id: string; Filter : string = ''): TitemGoodsStock;
begin
  Caption := 'ÑÊËÀÄ (ÂÛÁÎÐ ÒÎÂÀÐÀ)';
  dataoverhead.getStockStoreNotTTNSR(id);
  DBGridEhGoodsStock.DataSource := dataoverhead.BaseClassSQlExecuteSource;
    DBGridEhGoodsStock.SearchPanel.SearchingText := Filter;
  DBGridEhGoodsStock.SearchPanel.ApplySearchFilter;
  flag := closeEnter;
  Showmodal;
  Result := TitemGoodsStock.Create(dataoverhead.ReturnFieldsName('id_DataOverhead'), dataoverhead.ReturnFieldsName('Name_Goods'), dataoverhead.ReturnFieldsName('count_Goods'), dataoverhead.ReturnFieldsName('Selling_price'));
end;

procedure TFormViewGoodsStock.sSpeedButton1Click(Sender: TObject);
var
  val: Extended;
begin
  if CountString(newPrice.Text) then
    if TryStrToFloat(newPrice.Text, val) then
      if MessageDlg('Îáíîâèòü öåíó äëÿ  "' + dataoverhead.ReturnFieldsName('Name_Goods') + '" íîâàÿ öåíà (ÁÅÇ ÍÄÑ): ' + newPrice.Text + 'ðóá.', mtInformation, mbYesNo, 1) = mrYes then
      begin

        dataoverhead.UpdatePriceStock(newPrice.Text, dataoverhead.ReturnFieldsName('id_DataOverhead'));
        dataoverhead.getGoodsStock;
      end;
end;

procedure TFormViewGoodsStock.sSpeedButton2Click(Sender: TObject);
begin
  if dataoverhead.RecordCount > 0 then
  begin
    TFormNewComingOverhead.Create(Application).view_data_overhead(dataoverhead.ReturnFieldsName('idOverhead'), '0');
    dataoverhead.getGoodsStock;
  end;
end;

procedure TFormViewGoodsStock.sSpeedButton3Click(Sender: TObject);
begin
  TPrintGreed.Create(DBGridEhGoodsStock).ExportToExcelOLE;
end;

procedure TFormViewGoodsStock.viewGoodsStock;
begin
  dataoverhead.getGoodsStock;
  DBGridEhGoodsStock.DataSource := dataoverhead.BaseClassSQlExecuteSource;
  flag := noCloseEnter;
  Show;
end;

end.

