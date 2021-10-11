unit UnitFormAddGoodsComingOverhead;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, UnitMyMessageDialog,
  Graphics, Controls, Forms, propis,LogUnit,
  Dialogs, StdCtrls, sMemo,Math, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sEdit,
  sComboBox, sGroupBox,UnitGoods, Buttons, sSpeedButton,UnitDataOverhead,Expense_report;

type
  TFormAddGoodsComingOverhead = class(TForm)
    sGroupBox1: TsGroupBox;
    NameGoods: TsComboBox;
    countGoods: TsEdit;
    editPrice: TsEdit;
    editNDS: TsEdit;
    priceGoodsStore: TsEdit;
    ProcNAD: TsEdit;
    note_goods: TsEdit;
    Count_place: TsEdit;
    load_weight: TsEdit;
    sSpeedButtonadd: TsSpeedButton;
    sEditAllPrice: TsEdit;
    procedure sSpeedButtonaddClick(Sender: TObject);
    procedure countGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NameGoodsKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure editPriceKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure countGoodsKeyPress(Sender: TObject; var Key: Char);
    procedure editPriceKeyPress(Sender: TObject; var Key: Char);
  private
    type_g : TTypeGoods;
    type_g_s : TitemGoodsStock;
    COUNT_GOODS_GOBAL : Extended;
    ItemDataOverhead : TItemDataOverhead;

    id_overhead,typedata,type_overhead,id_data_overhead : string;
    procedure CalcMassa;
    function getCheckLoad_weight: Boolean;

    { Private declarations }
  public
    procedure InsertDataOverhead(typedata,type_overhead,id_overhead : string);
    procedure EditDataOverhead(typedata,type_overhead,id_overhead : string;
    ItemDataOverhead : TItemDataOverhead);
    { Public declarations }
  protected
     procedure CreateParams(var Params: TCreateParams); override;
  end;

var
  FormAddGoodsComingOverhead: TFormAddGoodsComingOverhead;

implementation
   uses UnitFormGoods, UnitDM,UnitFormViewGoodsStock;
{$R *.dfm}
procedure TFormAddGoodsComingOverhead.CreateParams(var Params: TCreateParams);
  begin
    inherited CreateParams(Params);
    with Params do
      ExStyle := ExStyle or WS_EX_APPWINDOW;
  end;

procedure TFormAddGoodsComingOverhead.CalcMassa;
  var price,nds,all_price : Extended;
  one_masse,load_weight_,Count_place_,one_place,count_good,new_countGoods : Extended;
  begin
    try
      case StrToInt(type_overhead) of
        1..2 :
        begin
         if not TryStrToFloat(ItemDataOverhead._count_Goods,count_good)
            then count_good     :=0;
         if not TryStrToFloat(ItemDataOverhead._load_weight,load_weight_)
            then load_weight_   :=0;
         if not TryStrToFloat(ItemDataOverhead._Count_place,Count_place_)
            then Count_place_   :=0;
         if not TryStrToFloat(countGoods.Text,new_countGoods)
            then new_countGoods :=0 ;
         one_masse:=load_weight_/count_good;
         one_place:=Count_place_/count_good;
         load_weight.Text:=FloatToStr(RoundTo(new_countGoods*one_masse,-3));
         Count_place.Text:=FloatToStr(RoundTo(new_countGoods*one_place,-3));
        end;
      end;
      begin
        try
          if not TryStrToFloat(editPrice.Text,price) then  price:=0;
          if not TryStrToFloat(editNDS.Text,nds) then  nds:=0;
          sEditAllPrice.Text:=FloatToStr(RoundTo(price+(price*nds/100),-2));
        except

        end;
      end;
      except on e : Exception do
       WriteLogNoMessage(e.Message);
     end;
  end;
procedure TFormAddGoodsComingOverhead.NameGoodsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
    if Key=VK_RETURN then
     case StrToInt(type_overhead) of
       0 : begin
            type_g:=
            TFormGoods.Create(Application).getGoods(NameGoods.Text);
            NameGoods.Text:=type_g.name;    sSpeedButtonadd.Enabled:=True;
           end;

       1 : begin
             type_g_s:=TFormViewGoodsStock.Create(Application).getGoodsStock(id_overhead,NameGoods.Text);
             ItemDataOverhead:=TDataOverhead.Create(dm.ConnectionServer).getDataOverheadID(type_g_s._id_DataOverhead);
             NameGoods.Text:=type_g_s._Name_Goods;
             editPrice.Text:=type_g_s._Selling_price;
             countGoods.Text:=type_g_s._count_Goods;// ещё запилить глобально
             if not TryStrToFloat(type_g_s._count_Goods,COUNT_GOODS_GOBAL) then COUNT_GOODS_GOBAL:=0;
             editNDS.Text:=ItemDataOverhead._NDS;
             load_weight.Text:=ItemDataOverhead._load_weight;
             Count_place.Text:=ItemDataOverhead._Count_place;
             CalcMassa;  sSpeedButtonadd.Enabled:=True;
           end;

       2 : begin
             type_g_s:=TFormViewGoodsStock.Create(Application).getGoodsStockSF(id_overhead,NameGoods.Text);
             ItemDataOverhead:=TDataOverhead.Create(dm.ConnectionServer).getDataOverheadID(type_g_s._id_DataOverhead);
             NameGoods.Text:=type_g_s._Name_Goods;
             editPrice.Text:=type_g_s._Selling_price;
             countGoods.Text:=type_g_s._count_Goods;// ещё запилить глобально
             if not TryStrToFloat(type_g_s._count_Goods,COUNT_GOODS_GOBAL) then COUNT_GOODS_GOBAL:=0;
             editNDS.Text:=ItemDataOverhead._NDS;
             load_weight.Text:=ItemDataOverhead._load_weight;
             Count_place.Text:=ItemDataOverhead._Count_place;
             CalcMassa;  sSpeedButtonadd.Enabled:=True;
           end;
     end;
  end;

function TFormAddGoodsComingOverhead.getCheckLoad_weight : Boolean;
var values_ : Extended;
begin
  begin
     TryStrToFloat(load_weight.Text,values_);
    if values_>25 then
      if MessageDlg('Введена большая масса груза "'+RealToMassa(values_)+
        '" продолжить?',mtWarning,mbYesNo,1)=mrYes
      then
       Result:=True
      else  Result:=False
    else Result:=True;
  end;
end;
procedure TFormAddGoodsComingOverhead.sSpeedButtonaddClick(Sender: TObject);

var values_,weight : Extended;
//function DDDDD : Boolean;

  begin

    if  TryStrToFloat(load_weight.Text,values_)  AND
        TryStrToFloat(Count_place.Text ,values_) and
        TryStrToFloat(editPrice.Text  ,values_) and
        TryStrToFloat(editNDS.Text    ,values_) and
        TryStrToFloat(load_weight.Text,values_) and
        TryStrToFloat(priceGoodsStore.Text,values_) and
        TryStrToFloat(countGoods.Text,values_)
      then
      begin

       if getCheckLoad_weight then
        case StrToInt(typedata) of
          0 : begin
                 case StrToInt(type_overhead) of
                  0 : begin
                        TDataOverhead.Create(dm.ConnectionServer).InsertComingDataOverhead
                        (id_overhead,type_g.id,countGoods.Text,editPrice.Text,
                        editNDS.Text,Count_place.Text,load_weight.Text,note_goods.Text,priceGoodsStore.Text);
                        Close;
                      end;
                  1 : begin
                        if values_<=COUNT_GOODS_GOBAL then begin
                          TDataOverhead.Create(dm.ConnectionServer).InsertConsumptionDataOverhead
                          (id_overhead,type_g_s._id_DataOverhead,countGoods.Text,editPrice.Text,
                          editNDS.Text,Count_place.Text,load_weight.Text,note_goods.Text);
                          Close;
                        end
                        else
                        ShowMessageDlg('Не верные данные','Превышено допустимое количество '+FloatToStr(COUNT_GOODS_GOBAL),myError)

                      end;

                  2 : begin
                        if values_<=COUNT_GOODS_GOBAL then begin
                          //ShowMessage(FloatToStr(values_));
                          TExpense_report.Create(dm.ConnectionServer).insert_view_data_expense_report
                          (id_overhead,type_g_s._id_DataOverhead,countGoods.Text,editPrice.Text,
                          editNDS.Text,Count_place.Text,load_weight.Text);
                          Close;
                        end
                        else
                         ShowMessageDlg('Не верные данные','Превышено допустимое количество '+FloatToStr(COUNT_GOODS_GOBAL),myError)

                      end;
                 end;
              end;

          1 : begin
                 case StrToInt(type_overhead) of
                  0 : begin
                         TDataOverhead.Create(dm.ConnectionServer).DeleteDataOverhead(id_data_overhead);
                         TDataOverhead.Create(dm.ConnectionServer).InsertComingDataOverhead
                         (id_overhead,type_g.id,countGoods.Text,editPrice.Text,
                         editNDS.Text,Count_place.Text,load_weight.Text,note_goods.Text,priceGoodsStore.Text);
                         Close;
                      end;

                  1 : begin
                        if values_<=COUNT_GOODS_GOBAL then begin
                          TDataOverhead.Create(dm.ConnectionServer).DeleteDataOverhead(id_data_overhead);
                          TDataOverhead.Create(dm.ConnectionServer).InsertConsumptionDataOverhead
                          (id_overhead,type_g_s._id_DataOverhead,countGoods.Text,editPrice.Text,
                          editNDS.Text,Count_place.Text,load_weight.Text,note_goods.Text);
                         Close;
                        end
                        else
                        ShowMessageDlg('Не верные данные','Превышено допустимое количество '+FloatToStr(COUNT_GOODS_GOBAL),myError)
                      end;
                 end;
              end;
        end;

    end else ShowMessageDlg('Не верные данные','Проверте правильность введенных данных',myError)

  end;

procedure TFormAddGoodsComingOverhead.countGoodsKeyPress(Sender: TObject;
  var Key: Char);
  begin
    if Key=#13 then   editPrice.SetFocus;
  end;

procedure TFormAddGoodsComingOverhead.countGoodsKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  begin
     CalcMassa;
  end;

procedure TFormAddGoodsComingOverhead.InsertDataOverhead(typedata,type_overhead,id_overhead: string);
  begin
    Self.id_overhead:=id_overhead;
    Self.typedata:=typedata;
    Self.type_overhead:=type_overhead;

    case StrToInt(type_overhead) of
     1..2 : begin
        priceGoodsStore.Hide;
       // Count_place.Enabled:=False;
        load_weight.Enabled:=False;
     end;
    end;

    ShowModal;
  end;

procedure TFormAddGoodsComingOverhead.EditDataOverhead(typedata,type_overhead,id_overhead: string; ItemDataOverhead: TItemDataOverhead);
  begin
   Self.type_overhead:=type_overhead;
   Self.ItemDataOverhead:=ItemDataOverhead;
   Self.id_overhead:=id_overhead;
   self.id_data_overhead:=ItemDataOverhead._id_DataOverhead;
   //ShowMessage(id_data_overhead);
   Self.typedata:=typedata;
   self.Caption:='ИЗМЕНИТЬ ТОВАР';
   case StrToInt(type_overhead) of
      0 : begin
           type_g:=TGoods.Create(dm.ConnectionServer).getGoodsID(ItemDataOverhead._idGgoods);
           NameGoods.Text:=type_g.name;
           sSpeedButtonadd.Enabled:=True;
          end;

       1: begin
             type_g_s:=TDataOverhead.Create(dm.ConnectionServer).getGoodsStockID(id_data_overhead);
            // ItemDataOverhead:=TDataOverhead.Create(dm.ConnectionServer).getDataOverheadID(type_g_s._id_DataOverhead);
             NameGoods.Text:=type_g_s._Name_Goods;
             //editPrice.Text:=type_g_s._Selling_price;
             //countGoods.Text:=type_g_s._count_Goods;// ещё запилить глобально
             if not TryStrToFloat(type_g_s._count_Goods,COUNT_GOODS_GOBAL) then COUNT_GOODS_GOBAL:=0;
//             editNDS.Text:=ItemDataOverhead._NDS;
//             load_weight.Text:=ItemDataOverhead._load_weight;
//             Count_place.Text:=ItemDataOverhead._Count_place;
             CalcMassa;  sSpeedButtonadd.Enabled:=True;

           priceGoodsStore.Hide;
           Count_place.Enabled:=False;
           load_weight.Enabled:=False;
          end;
    end;
   //NameGoods.Text:=ItemDataOverhead._Name_Goods;

   editPrice.Text:=ItemDataOverhead._Price_Goods;
   countGoods.Text:=ItemDataOverhead._count_Goods;// ещё запилить глобально
   editNDS.Text:=ItemDataOverhead._NDS;
   load_weight.Text:=ItemDataOverhead._load_weight;
   Count_place.Text:=ItemDataOverhead._Count_place;
   CalcMassa;
   //sSpeedButtonadd.Hide;
   ShowModal;
  end;

procedure TFormAddGoodsComingOverhead.editPriceKeyPress(Sender: TObject;
  var Key: Char);
  begin
       if Key=#13 then   editNDS.SetFocus
  end;

procedure TFormAddGoodsComingOverhead.editPriceKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
    CalcMassa;
  end;
end.
