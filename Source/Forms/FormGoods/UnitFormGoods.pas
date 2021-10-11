unit UnitFormGoods;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UnitGoods,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitMetrics, AdditionalFunctions,
  Buttons, sSpeedButton, ExtCtrls, sPanel,
  StdCtrls, sCheckBox, acSlider, EhLibVCL;

type
  TFormGoods = class(TForm)
    DBGridEhGoods: TDBGridEh;
    sPanelbutton: TsPanel;
    sSpeedButtonNew: TsSpeedButton;
    sSpeedButtondelete: TsSpeedButton;
    sSpeedButtonSave: TsSpeedButton;
    sSliderread: TsSlider;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure DBGridEhGoodsColumns1EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure sSpeedButtonNewClick(Sender: TObject);
    procedure sSpeedButtondeleteClick(Sender: TObject);
    procedure sSpeedButtonSaveClick(Sender: TObject);
    procedure DBGridEhGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sSliderreadClick(Sender: TObject);
  private
    Goods : TGoods;
    typeG : TTypeGoods;
    { Private declarations }
  public
    { Public declarations }
    procedure viewGoods;
    function  getGoods(Filter : string = '') : TTypeGoods;
  end;

var
  FormGoods: TFormGoods;

implementation

uses UnitDM,UnitFormMetrics;
var flag : TFlagForm;
{$R *.dfm}

procedure TFormGoods.DBGridEhGoodsColumns1EditButtonClick(Sender: TObject;
  var Handled: Boolean);
 var item : TItemMetrics;
begin
 Goods.BaseClassSQlExecuteSource.Edit;
 Goods.BaseClassSQlExecuteQuery.Post;
  item:=
  TFormMetrics.Create(Application).getMetrics;
  Goods.setMetrics(item._idMetrics,Goods.ReturnFieldsName('id_goods'));
  Goods.ViewGoods();
end;

procedure TFormGoods.DBGridEhGoodsKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if(Key=VK_RETURN) and (flag=closeEnter) then Close;
end;

procedure TFormGoods.FormCreate(Sender: TObject);
begin
  Goods:=TGoods.Create(dm.ConnectionServer);
end;

procedure TFormGoods.viewGoods;
begin
  Goods.ViewGoods();
  DBGridEhGoods.DataSource:=Goods.BaseClassSQlExecuteSource;
  flag:=noCloseEnter;    sSliderread.SliderOn:=True;
  Show;
end;

function TFormGoods.getGoods(Filter : string = ''): TTypeGoods;
begin
  Goods.ViewGoods();
  DBGridEhGoods.DataSource:=Goods.BaseClassSQlExecuteSource;
  DBGridEhGoods.SearchPanel.SearchingText := Filter;
  DBGridEhGoods.SearchPanel.ApplySearchFilter;
  flag:=closeEnter;
  Caption:='“Œ¬¿–-(¬€¡Œ–)';
  ShowModal;
  Result:=
  TTypeGoods.Create(
    Goods.ReturnFieldsName('id_Goods'),
    Goods.ReturnFieldsName('Name_Goods'),
    Goods.ReturnFieldsName('id_metrics')
  );

end;

procedure TFormGoods.sSliderreadClick(Sender: TObject);
begin
  DBGridEhGoods.ReadOnly:=not DBGridEhGoods.ReadOnly;
end;

procedure TFormGoods.sSpeedButtondeleteClick(Sender: TObject);
begin
  if MessageDlg('”‰‡ÎËÚ¸ Á‡ÔËÒ¸?',mtInformation,mbYesNo,1)=mrYes then
  begin
      Goods.DeleteGoods(Goods.ReturnFieldsName('id_Goods'));
   Goods.ViewGoods();
  end;
end;

procedure TFormGoods.sSpeedButtonNewClick(Sender: TObject);
begin
   Goods.insertGoods;
   Goods.ViewGoods();
end;

procedure TFormGoods.sSpeedButtonSaveClick(Sender: TObject);
begin
  Goods.BaseClassSQlExecuteSource.Edit;
  Goods.BaseClassSQlExecuteQuery.Post;
end;

end.
