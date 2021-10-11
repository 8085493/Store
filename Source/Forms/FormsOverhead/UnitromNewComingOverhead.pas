unit UnitromNewComingOverhead;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, UnitTTNExportExcel,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, sPanel,UnitDataOverhead, Buttons,
  sSpeedButton, StdCtrls, sEdit,UnitContractor,UnitOverhead, Mask, sMaskEdit,UnitDataTTN,
  sCustomComboEdit, sToolEdit,UnitStock,AdditionalFunctions,UnitMyMessageDialog,
   Menus,UnitCar,MoneyString,RoubleUnit,propis, ComCtrls, sPageControl, PrnDbgeh,
  sGroupBox, sLabel, sComboBox,BaseClassSQlExecute,UnitESF,UnitShippingAddress,UnitTypeDocuments,
  EhLibVCL;

type
  TFormNewComingOverhead = class(TForm)
    GridPanel1: TGridPanel;
    sPanel1: TsPanel;
    DBGridEhDataOverhead: TDBGridEh;
    sPanel2: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sPanel3: TsPanel;
    sPanel4: TsPanel;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButtonPrint: TsSpeedButton;
    PopupMenu1: TPopupMenu;
    G1: TMenuItem;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    tabAddational: TsTabSheet;
    Contractor: TsEdit;
    Stock: TsEdit;
    Car: TsEdit;
    sTabSheet2: TsTabSheet;
    DBGridEhTN2: TDBGridEh;
    N1: TMenuItem;
    PrintDBGridEh: TPrintDBGridEh;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    GridPanel2: TGridPanel;
    lbl1: TsLabel;
    lbl2: TsLabel;
    sLabel1: TsLabel;
    sLabel2: TsLabel;
    sLabel3: TsLabel;
    sLabel4: TsLabel;
    loading: TsEdit;
    type_loading: TsComboBox;
    input_date_loading: TsDateEdit;
    output_date_loading: TsDateEdit;
    sLabel5: TsLabel;
    unloading: TsEdit;
    type_unloading: TsComboBox;
    input_date_unloading: TsDateEdit;
    output_date_unloading: TsDateEdit;
    edt2: TsEdit;
    document_Overhead: TsEdit;
    prin_goods: TsEdit;
    goods_received: TsEdit;
    goods_passed: TsEdit;
    allow_output: TsEdit;
    sPanel5: TsPanel;
    proxy_contacor: TsEdit;
    proxy: TsEdit;
    G2: TMenuItem;
    sSpeedButtonClearActiv: TsSpeedButton;
    sPanel6: TsPanel;
    sEditNumber: TsEdit;
    seria_Overhead: TsEdit;
    N2: TMenuItem;
    sEditAdress: TsEdit;
    tabESF: TsTabSheet;
    sGroupBox3: TsGroupBox;
    sEditTypeDoc: TsEdit;
    sDateEditDateCreate: TsDateEdit;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton11: TsSpeedButton;
    sSpeedButton12: TsSpeedButton;
    blankCode: TsEdit;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sEditNumberKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure G1Click(Sender: TObject);
    procedure CarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sSpeedButton4Click(Sender: TObject);
    procedure ContractorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StockKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure N1Click(Sender: TObject);
    procedure sTabSheet2Show(Sender: TObject);
    procedure allow_outputKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure input_date_loadingChange(Sender: TObject);
    procedure type_loadingChange(Sender: TObject);
    procedure sDateEditDateCreateChange(Sender: TObject);
    procedure loadingKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure G2Click(Sender: TObject);
    procedure sSpeedButtonClearActivClick(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sEditAdressKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sEditTypeDocKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    id_Overhead, type_overhead : string ;
    DataOverhead : TDataOverhead;
    Overhead : TOverhead;
    itemCar : TItemCar;
    itemAddres : TItemShippingAddress;
    EDIT : Boolean;
    itemsContractor,loadingCon,unloadingCon : TItemContractor;
    iStock          : TitemStock;
    MainContactor   : TContractor;
    MainCar         : TCar;
    MainStock       : TStock;
    MainItemOverhead: TItemOverhead;
    ItemTypeDocuments   : TItemTypeDocuments;
    procedure viewData;
    procedure hideEditData;
    //procedure CreateParams(var Params: TCreateParams); override;
    procedure insertDataForEdit;
    { Private declarations }
  public
    procedure view_data_overhead(id_Overhead, type_overhead : string);
    procedure Createreport(config_file : string);
    { Public declarations }
  end;

var FormNewComingOverhead: TFormNewComingOverhead;

implementation

uses UnitDM,UnitFormAddGoodsComingOverhead,UnitFormTypeDocuments,
UnitFormShippingAddress,
UnitFormContractor,UnitFormStock,UnitFormCar;

{$R *.dfm}

//procedure TFormNewComingOverhead.CreateParams(var Params: TCreateParams);
//  begin
//    inherited CreateParams(Params);
//    with Params do
//      ExStyle := ExStyle or WS_EX_APPWINDOW;
//  end;

procedure TFormNewComingOverhead.hideEditData;
  begin
    //sDateEditDateCreate.Enabled:=not EDIT;
    Contractor.Enabled:=not EDIT;
    Stock.Enabled:=not EDIT;
    //sEditNumber.Enabled:=not EDIT;
    Car.Enabled:=not EDIT;
    sPanel2.Enabled:=not EDIT;
    sSpeedButton2.Enabled:=not EDIT;
    sSpeedButtonClearActiv.Enabled:=False;
    Case StrToInt(type_overhead) of
       0..1 : begin
                 sSpeedButtonClearActiv.Enabled:=EDIT;
              end;
        End;
  end;

procedure TFormNewComingOverhead.viewData;
  begin
    case StrToInt(type_overhead) of
     0 : begin
           // DataOverhead.ViewComingDataOverhead(Self.id_Overhead);
            Caption:='ПРИХОД ТОВАРА';
            tabAddational.TabVisible:=False;
            tabESF.TabVisible:=False;
            Car.Hide;
         end;
     1 : begin
           // DataOverhead.ViewConsumptionDataOverhead(self.id_Overhead);
            Caption:='РАСХОД ТОВАРА';
            sSpeedButtonPrint.Show;
            sSpeedButton12.Show;
         end;
    end;
    DataOverhead.ViewAllDataOverhead(Self.type_overhead,Self.id_Overhead);
  end;

procedure TFormNewComingOverhead.allow_outputKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
     Overhead.setValuesField((Sender as TsEdit).Name,(Sender as TsEdit).Text,id_Overhead);
  end;

procedure TFormNewComingOverhead.CarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    itemCar:=TFormCar.Create(Application).getCar(itemCar._id_Car);
   // Car.Text:=itemCar._Name_Car;

    Overhead.setCar(itemCar._id_Car,id_Overhead);
    //Overhead.setValuesField('goods_received',itemCar._Driver_Car,id_Overhead);

    insertDataForEdit;
  end;

procedure TFormNewComingOverhead.ContractorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
     itemsContractor:=TFormContractor.Create(Application).getContacter(itemsContractor._id_Contractor);
     //Contractor.Text:=itemsContractor._Name_Contractor;
     Overhead.setContractor(itemsContractor._id_Contractor,id_Overhead);
     MainItemOverhead:= Overhead.getOverhead(id_Overhead);

     insertDataForEdit;
  end;

procedure TFormNewComingOverhead.FormCreate(Sender: TObject);
  begin
    DataOverhead := TDataOverhead.Create(dm.ConnectionServer);
    Overhead := TOverhead.Create(dm.ConnectionServer);
    MainContactor:=TContractor.Create(dm.ConnectionServer);
    MainCar:=TCar.Create(dm.ConnectionServer);
    MainStock:=TStock.Create(dm.ConnectionServer);
  end;

procedure TFormNewComingOverhead.G1Click(Sender: TObject);
  begin
     Createreport('TTN.ini');
  end;

procedure TFormNewComingOverhead.G2Click(Sender: TObject);
  begin
    Createreport('TN.ini');
  end;

procedure TFormNewComingOverhead.CreateReport(config_file : string);
var   dataTTN : TDataTTN;
col,row : Integer;
TempDataOverhead : TDataOverhead;
  begin
      TempDataOverhead := TDataOverhead.Create(dm.ConnectionServer);
//      case StrToInt(type_overhead) of
//       0 : TempDataOverhead.ViewComingDataOverhead(Self.id_Overhead);
//       1 : TempDataOverhead.ViewConsumptionDataOverhead(self.id_Overhead);
//      end;
    //ShowMessage(Self.type_overhead+'  '+self.id_Overhead);
    TempDataOverhead.ViewAllDataOverhead(Self.type_overhead,Self.id_Overhead);
    if TempDataOverhead.RecordCount>0 then
     begin
      dataTTN := TDataTTN.Create(TempDataOverhead.RecordCount+1);
      TempDataOverhead.FirstRecord; row:=1;
      dataTTN.ItemOverheader:= Overhead.getOverhead(id_Overhead);
      dataTTN.adress:=TShippingAddress.Create(dm.ConnectionServer).
      getShippingAddressID(Overhead.getOverhead(id_Overhead)._idShippingAddress);

        while not TempDataOverhead.EofCount do
         begin
           for col:=1 to 11 do
            begin
              case col of
               3  : dataTTN.setValuesData(col,row,TempDataOverhead.ReturnFieldsName(
                    DBGridEhDataOverhead.Columns[col-1].FieldName));
               10 : dataTTN.setValuesData(col,row, getNumberFormation(
                    TempDataOverhead.ReturnFieldsName(
                    DBGridEhDataOverhead.Columns[col-1].FieldName),3));
               else
                dataTTN.setValuesData(col,row, getNumberFormation(
                TempDataOverhead.ReturnFieldsName(DBGridEhDataOverhead.Columns[col-1].FieldName),2));

              end;
            end;
           TempDataOverhead.NextRecord; Inc(row);
         end;

        TempDataOverhead.getSum(id_Overhead);

        for col:=1 to 11 do
          begin
            case col of
              3  : dataTTN.setValuesData(col,row,(TempDataOverhead.ReturnFieldsID(col-1)));
              10 : dataTTN.setValuesData(col,row,
                   getNumberFormation(TempDataOverhead.ReturnFieldsID(col-1),3));
              else
                dataTTN.setValuesData(col,row,
                getNumberFormation(TempDataOverhead.ReturnFieldsID(col-1),2));
              end;
          end;

        dataTTN.NDS       :=StrToFloat(TempDataOverhead.ReturnFieldsName('price_nds')   );
        dataTTN.all_price :=StrToFloat(TempDataOverhead.ReturnFieldsName('all_price')   );
        dataTTN.count_p   :=StrToFloat(TempDataOverhead.ReturnFieldsName('Count_place') );
        dataTTN.massa     :=StrToFloat(TempDataOverhead.ReturnFieldsName('load_weight') );

        dataTTN.contractorCar:=MainContactor.getContactorID(itemCar._idContractor);

        dataTTN.consignee:=itemsContractor;

        //ShowMessage(itemsContractor._Name_Contractor);
        dataTTN.consignor:= MainContactor.getContactorMain;
        dataTTN.car:=itemCar;
        dataTTN.Stock:=iStock;
        TTTNExportExcel.Create(dataTTN,config_file);
     end
    else ShowMessageDlg('Ошибка','Накладная не имеет данных.',myError);

  end;

procedure TFormNewComingOverhead.sDateEditDateCreateChange(Sender: TObject);
  begin
    Overhead.setDate(sDateEditDateCreate.Date,id_Overhead);
  end;

procedure TFormNewComingOverhead.sEditAdressKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
   if CountString(itemsContractor._id_Contractor) then
   begin
    itemAddres:=TFormShippingAddress.Create(Application,itemsContractor._id_Contractor).selectedItemShippingAdress;
     Overhead.setValuesField('idShippingAddress',itemAddres._idtable_shipping_address,id_Overhead);
    insertDataForEdit;
   end;
  end;

procedure TFormNewComingOverhead.sEditNumberKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    Overhead.setNumber(sEditNumber.Text,id_Overhead);
  end;

procedure TFormNewComingOverhead.sEditTypeDocKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);

  begin
   ItemTypeDocuments:=
   TFormTypeDocuments.Create(Application).getItemTypeDoc;
   Overhead.setValuesField('idTypeDoc',ItemTypeDocuments._idtable_type_doc,self.id_Overhead);
   insertDataForEdit;
   //idTypeDoc
  end;

procedure TFormNewComingOverhead.sSpeedButton1Click(Sender: TObject);
  begin
    TFormAddGoodsComingOverhead.Create(Application).
    InsertDataOverhead('0',type_overhead,id_Overhead);
    viewData;
  end;

procedure TFormNewComingOverhead.sSpeedButton2Click(Sender: TObject);
var CountTrue : Integer;
ViewError : string;
  begin
   if MessageDlg('Выполнить проводку? ',mtInformation,mbYesNo,1)=mrYes then
      begin
         Case StrToInt(type_overhead) of
           0 : begin
                 if  CountString(itemsContractor._id_Contractor)   AND
                      CountString(iStock._id_Stock) AND
                      CountString(seria_Overhead.Text) AND
                      CountString(sEditNumber.Text) AND
                      (DataOverhead.RecordCount>0)
                  then
                    begin
                     DataOverhead.setActivity('1',id_Overhead);
                     //Overhead.setActivity('1',id_Overhead);
                     Close;
                    end
                  else ShowMessageDlg('Ошибка проводки','Не все данные заполнены.',myError);
                end;
           1 : begin
                 if CountString(itemsContractor._id_Contractor)   AND
                    CountString(iStock._id_Stock) AND
                    CountString(seria_Overhead.Text) AND
                    CountString(sEditNumber.Text) AND
                    (DataOverhead.RecordCount>0)
                 then
                 begin
                    CountTrue:=0;
                    DataOverhead.FirstRecord;
                    while not DataOverhead.EofCount do
                      begin
                        if TDataOverhead.Create(dm.ConnectionServer).getAvailabilityGoodsStock(DataOverhead.ReturnFieldsName('idOverheadGoods'),DataOverhead.ReturnFieldsName('count_Goods')) then
                          Inc(CountTrue) else
                        begin
                          ViewError:=ViewError+#13+'Ошибка проводки '+DataOverhead.ReturnFieldsName('Name_Goods')+' кол-во '+DataOverhead.ReturnFieldsName('count_Goods');
                          ShowMessageDlg('Ошибка проводки','Не хватает товара на складе '+DataOverhead.ReturnFieldsName('Name_Goods')+' кол-во '+DataOverhead.ReturnFieldsName('count_Goods'),myError)
                        end;
                        DataOverhead.NextRecord;
                      end;
                    if CountTrue<>DataOverhead.RecordCount then  else
                      begin
                       DataOverhead.setActivity('1',id_Overhead);
                       //Overhead.setActivity('1',id_Overhead);
                       Close;
                      end;
                 end else ShowMessageDlg('Ошибка проводки','Не все данные заполнены.',myError);
               end;
         end;
      end;
  end;

procedure TFormNewComingOverhead.sSpeedButton3Click(Sender: TObject);
  begin
   if DataOverhead.RecordCount>0 then
   
    if MessageDlg('Удалить запись?',mtInformation,mbYesNo,1)=mrYes then
      begin
        DataOverhead.DeleteDataOverhead(DataOverhead.ReturnFieldsName('id_DataOverhead'));
        viewData;
        //DataOverhead.ViewDataOverhead(Self.id_Overhead);
      end;
  end;

procedure TFormNewComingOverhead.sSpeedButton4Click(Sender: TObject);
  begin
    TFormAddGoodsComingOverhead.Create(Application).
    EditDataOverhead('1',type_overhead,id_Overhead,DataOverhead.getDataOverheadID(DataOverhead.ReturnFieldsName('id_DataOverhead')));
    //InsertDataOverhead('0',type_overhead,id_Overhead);
    viewData;
  end;

procedure TFormNewComingOverhead.sSpeedButtonClearActivClick(Sender: TObject);
begin

  if MessageDlg('Отменить проводку? ',mtInformation,mbYesNo,1)=mrYes then
     Case StrToInt(type_overhead) of
       0 : begin
             if TDataOverhead.Create(dm.ConnectionServer).getCountDataOverhead(id_Overhead)>0 then
               begin viewData;
               ShowMessageDlg('Ошибка данных',
               'Товар из данной накладной найден в РАСХОДНЫХ накладных. Отмена проводки не возможна',myError) ; end
             else begin
               DataOverhead.setNotActivOverhead(id_Overhead);
               Close;
             end;
           end;

       1 : begin
             DataOverhead.setActivity('0',id_Overhead);
             Close;
           end;
     End;
end;

procedure TFormNewComingOverhead.sTabSheet2Show(Sender: TObject);
  begin
    insertDataForEdit;
  end;

procedure TFormNewComingOverhead.StockKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
      iStock:= TFormStock.Create(Application).getStock;
      //Stock.Text:=iStock._Name_Stock;
      Overhead.setStock(iStock._id_Stock,id_Overhead); insertDataForEdit;
  end;

procedure TFormNewComingOverhead.type_loadingChange(Sender: TObject);
  begin
   Overhead.setValuesField
   ((Sender as TsComboBox).Name,IntToStr((sender as TsComboBox).ItemIndex),id_Overhead);
  end;

procedure TFormNewComingOverhead.view_data_overhead(id_Overhead: string; type_overhead: string);
  begin

     Self.id_Overhead:=id_Overhead;
     Self.type_overhead :=type_overhead;
     viewData;
     self.DBGridEhDataOverhead.DataSource:=DataOverhead.BaseClassSQlExecuteSource;

     MainItemOverhead:= Overhead.getOverhead(id_Overhead);
     itemsContractor:=MainContactor.getContactorID(MainItemOVERHEAD._IDContractor);

     itemAddres:=TShippingAddress.Create(dm.ConnectionServer).getShippingAddressID(MainItemOverhead._idShippingAddress);
     ItemTypeDocuments:=TTypeDocuments.Create(dm.ConnectionServer).getTypeDocID(MainItemOverhead._idTypeDoc);
     itemCar:=MainCar.getCarID(MainItemOverhead._IDCar);
     iStock:=MainStock.getStockID(MainItemOverhead._IDStock);
     EDIT:=StrToBool(MainItemOverhead._Activ_Overhead);
     seria_Overhead.Text:=MainItemOverhead._seria_Overhead;
     sEditNumber.Text:=MainItemOverhead._Number_Overhead;

     if CountString(MainItemOverhead._Date_Overhead) then
          sDateEditDateCreate.Date:=StrToDate(MainItemOverhead._Date_Overhead)
     else sDateEditDateCreate.Date:=Now;

     insertDataForEdit;


     hideEditData;
     ShowModal;
  end;

  procedure TFormNewComingOverhead.input_date_loadingChange(Sender: TObject);
  begin
  //  ShowMessage(DateToStr((Sender as TsDateEdit).Date));
      Overhead.setValuesField((Sender as TsDateEdit).Name,
      FormatDateTime(FormatDateTimeConvert,(Sender as TsDateEdit).Date),id_Overhead);
  end;

procedure TFormNewComingOverhead.insertDataForEdit;
  begin
     MainItemOverhead:= Overhead.getOverhead(id_Overhead);

     loadingCon:=MainContactor.getContactorID(MainItemOVERHEAD._loading);
     unloadingCon:=MainContactor.getContactorID(MainItemOverhead._unloading);

     itemAddres:=TShippingAddress.Create(dm.ConnectionServer).getShippingAddressID(MainItemOverhead._idShippingAddress);


    if CountString(itemsContractor._id_Contractor) then
       Contractor.Text:=itemsContractor._Name_Contractor+','+itemsContractor._Legal_Address;

    if CountString(itemCar._id_Car) then
       Car.Text:=itemCar._Name_Car+' '+itemCar._Number_Car+' '+itemcar._Owner_Car;

    if CountString(iStock._id_Stock) then
       Stock.Text:=iStock._Name_Stock+' '+iStock._Adress_Stock;

    if CountString(unloadingCon._id_Contractor) then
       unloading.Text:=unloadingCon._small_Name_Contractor;//unloadingCon._Name_Contractor+','+unloadingCon._Legal_Address;

    if CountString(loadingCon._id_Contractor) then
       loading.Text:=loadingCon._small_Name_Contractor;//loadingCon._Name_Contractor+','+loadingCon._Legal_Address;

    if CountString(MainItemOVERHEAD._allow_output) then
       allow_output.Text:=MainItemOVERHEAD._allow_output;

    if CountString(MainItemOVERHEAD._goods_passed) then
       goods_passed.Text:=MainItemOVERHEAD._goods_passed;

    if CountString(MainItemOVERHEAD._goods_received) then
       goods_received.Text:=MainItemOVERHEAD._goods_received;

    if CountString(MainItemOVERHEAD._proxy) then
       proxy.Text:=MainItemOVERHEAD._proxy;

    if CountString(MainItemOVERHEAD._proxy_contacor) then
       proxy_contacor.Text:=MainItemOVERHEAD._proxy_contacor;

    if CountString(MainItemOVERHEAD._prin_goods) then
       prin_goods.Text:=MainItemOVERHEAD._prin_goods;

    if CountString(MainItemOVERHEAD._document_Overhead) then
       document_Overhead.Text:=MainItemOVERHEAD._document_Overhead;

    if CountString(MainItemOVERHEAD._type_loading) then
       type_loading.ItemIndex:=StrToInt(MainItemOVERHEAD._type_loading);

    if CountString(MainItemOVERHEAD._type_unloading) then
       type_unloading.ItemIndex:=StrToInt(MainItemOVERHEAD._type_unloading);

    if CountString(MainItemOVERHEAD._input_date_loading) then
       input_date_loading.Text:=MainItemOVERHEAD._input_date_loading;

    if CountString(MainItemOVERHEAD._output_date_loading) then
       output_date_loading.Text:=MainItemOVERHEAD._output_date_loading;

    if CountString(MainItemOVERHEAD._input_date_unloading) then
       input_date_unloading.Text:=MainItemOVERHEAD._input_date_unloading;

    if CountString(MainItemOVERHEAD._output_date_unloading) then
       output_date_unloading.Text:=MainItemOVERHEAD._output_date_unloading;

    if CountString(MainItemOVERHEAD._blankCode) then
      blankCode.Text:=MainItemOVERHEAD._blankCode;
    try
     if
      //CountString(itemAddres._shipping_address)
      itemAddres._shipping_address<>'-1'
     then
       sEditAdress.Text:=itemAddres._shipping_address;
     if
     //CountString(ItemTypeDocuments._name_doc)
      ItemTypeDocuments._idtable_type_doc<>'-1'
     then
      sEditTypeDoc.Text:=ItemTypeDocuments._code_type_doc+' '+ItemTypeDocuments._name_doc;
    except

    end;
  end;

procedure TFormNewComingOverhead.loadingKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
 var temp : TItemContractor;
  begin

     case (Sender as TsEdit).Tag of
       0 :  temp:=TFormContractor.Create(Application).getContacter(MainItemOverhead._loading);
       1 :  temp:=TFormContractor.Create(Application).getContacter(MainItemOverhead._unloading);
     end;

     Overhead.setValuesField((Sender as TsEdit).Name,temp._id_Contractor,id_Overhead);
     insertDataForEdit;
  end;

procedure TFormNewComingOverhead.N1Click(Sender: TObject);
  begin
    DBGridEhTN2.DataSource:=DataOverhead.BaseClassSQlExecuteSource;
    PrintDBGridEh.BeforeGridText.LoadFromFile('data\report\TN2BeforeGgridText.rtf');
    PrintDBGridEh.Preview;
  end;

procedure TFormNewComingOverhead.N2Click(Sender: TObject);
  var list : TList;
   itemOverhead : TItemOverhead;
  begin
   list:=TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(Self.type_overhead,Self.id_Overhead);
   itemOverhead:=TOverhead.Create(dm.ConnectionServer).getOverhead(Self.id_Overhead);
   TESF.Create(
   TContractor.Create(dm.ConnectionServer).getContactorMain,
   TContractor.Create(dm.ConnectionServer).getContactorID(itemOverhead._IDContractor),
   itemOverhead,
   TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(Self.type_overhead,Self.id_Overhead)
   ,dm.ConnectionServer
   );
   //ShowMessage(TItemESF(list[0])._Name_Goods);
   // TFuelList(ListFuel[CountList]).Name
  end;

end.
