unit UnitFormStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, AdditionalFunctions,
   DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitStock, acSlider, Buttons, sSpeedButton, ExtCtrls,
  sPanel;

type
  TFormStock = class(TForm)
    DBGridEhStock: TDBGridEh;
    sPanelbutton: TsPanel;
    sSpeedButtonNew: TsSpeedButton;
    sSpeedButtonDelete: TsSpeedButton;
    sSpeedButtonSAve: TsSpeedButton;
    sSliderread: TsSlider;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButtonSAveClick(Sender: TObject);
    procedure sSpeedButtonDeleteClick(Sender: TObject);
    procedure DBGridEhStockKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sSliderreadChanging(Sender: TObject; var CanChange: Boolean);
  private
    Stok : TStock;
     procedure CreateParams(var Params: TCreateParams); override;
    { Private declarations }
  public
    { Public declarations }
    procedure View_All_Stock;
    function getStock : TitemStock;
  end;

//var
//  FormStock: TFormStock;

implementation

uses UnitDM;
  var flag : TFlagForm;
{$R *.dfm}

procedure TFormStock.CreateParams(var Params: TCreateParams);
  begin
    inherited CreateParams(Params);
    with Params do
      ExStyle := ExStyle or WS_EX_APPWINDOW;
  end;

procedure TFormStock.DBGridEhStockKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) AND (flag=closeEnter) then begin Close; end;
end;

procedure TFormStock.FormCreate(Sender: TObject);
  begin
    Stok:=TStock.Create(dm.ConnectionServer);
  end;

procedure TFormStock.View_All_Stock;
  begin
    Caption:='— À¿ƒ';
    Stok.ViewStock();
    DBGridEhStock.DataSource:=Stok.BaseClassSQlExecuteSource;
    flag:=noCloseEnter;    sSliderread.SliderOn:=True;
    Show;
  end;

function TFormStock.getStock : TitemStock;
  begin
    Caption:='— À¿ƒ -(¬€¡–¿“‹)';
    Stok.ViewStock();
    DBGridEhStock.DataSource:=Stok.BaseClassSQlExecuteSource;
    flag:=closeEnter;
    ShowModal;
    Result:=TitemStock.Create(
      Stok.ReturnFieldsName('id_Stock'),
      Stok.ReturnFieldsName('Name_Stock'),
      Stok.ReturnFieldsName('Adress_Stock')
    );
  end;
procedure TFormStock.sSliderreadChanging(Sender: TObject;
  var CanChange: Boolean);
  begin
      DBGridEhStock.ReadOnly:= not DBGridEhStock.ReadOnly;
  end;

procedure TFormStock.sSpeedButtonDeleteClick(Sender: TObject);
  begin
   if MessageDlg('”‰‡ÎËÚ¸ Á‡ÔËÒ¸?',mtInformation,mbYesNo,1)=mrYes then
   begin
    Stok.DeleteStock(Stok.ReturnFieldsName('id_Stock'));
    Stok.ViewStock();
   end;
  end;

procedure TFormStock.sSpeedButtonSAveClick(Sender: TObject);
  begin
   Stok.BaseClassSQlExecuteQuery.Edit;
   Stok.BaseClassSQlExecuteQuery.Post;
  end;

end.
