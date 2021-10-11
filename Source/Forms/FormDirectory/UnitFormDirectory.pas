unit UnitFormDirectory;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, sPageControl,AdditionalFunctions;

type
  TFormDirectory = class(TForm)
    PageControl: TsPageControl;
    sTabSheetContractor: TsTabSheet;
    sTabSheetCar: TsTabSheet;
    sTabSheetMetrics: TsTabSheet;
    sTabSheetGoods: TsTabSheet;
    sTabSheetStock: TsTabSheet;
    pageDocType: TsTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure sTabSheetContractorShow(Sender: TObject);
    procedure sTabSheetCarShow(Sender: TObject);
    procedure sTabSheetMetricsShow(Sender: TObject);
    procedure sTabSheetGoodsShow(Sender: TObject);
    procedure sTabSheetStockShow(Sender: TObject);
    procedure pageDocTypeShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDirectory: TFormDirectory;

implementation
  uses  UnitDM, UnitFormTypeDocuments,
  UnitFormContractor,UnitFormCar,UnitFormMetrics,UnitFormGoods,UnitFormStock;
  var
  FormContractor    : TFormContractor;
  FormCar           : TFormCar;
  FormMetrics       : TFormMetrics;
  FormGoods         : TFormGoods;
  FormStock         : TFormStock;
  FormTypeDocuments : TFormTypeDocuments;

{$R *.dfm}

procedure TFormDirectory.FormCreate(Sender: TObject);
  begin
    PageControl.ActivePageIndex:=0; sTabSheetContractorShow(Self);
  end;

procedure TFormDirectory.pageDocTypeShow(Sender: TObject);
  begin
     if FormTypeDocuments=nil then
      begin
        FormTypeDocuments:=TFormTypeDocuments.Create(Application);
        CreateViewForm(FormTypeDocuments,pageDocType);
      end;  FormTypeDocuments.viewform;
  end;

procedure TFormDirectory.sTabSheetCarShow(Sender: TObject);
  begin
    if FormCar=nil then
      begin
        FormCar:=TFormCar.Create(Application);
        CreateViewForm(FormCar,sTabSheetCar);
      end;  FormCar.View_all_Car;
  end;

procedure TFormDirectory.sTabSheetContractorShow(Sender: TObject);
  begin
   if FormContractor=nil then
    begin
      FormContractor:=TFormContractor.Create(Application);
      CreateViewForm(FormContractor,sTabSheetContractor);
    end; FormContractor.view_contacter;
  end;

procedure TFormDirectory.sTabSheetGoodsShow(Sender: TObject);
  begin
    if FormGoods=nil then
      begin
        FormGoods:=TFormGoods.Create(Application);
        CreateViewForm(FormGoods,sTabSheetGoods);
      end;   FormGoods.viewGoods;
  end;

procedure TFormDirectory.sTabSheetMetricsShow(Sender: TObject);
  begin
    if FormMetrics=nil then
      begin
        FormMetrics:=TFormMetrics.Create(Application);
        CreateViewForm(FormMetrics,sTabSheetMetrics);
      end;  FormMetrics.viewMetrics;
  end;

procedure TFormDirectory.sTabSheetStockShow(Sender: TObject);
  begin
    if FormStock=nil then
      begin
        FormStock:=TFormStock.Create(Application);
        CreateViewForm(FormStock,sTabSheetStock);
      end;  FormStock.View_All_Stock;
  end;

end.
