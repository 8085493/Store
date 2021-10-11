unit UnitFormContractor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitContractor, Buttons, sSpeedButton, ExtCtrls,
  sPanel, acSlider,AdditionalFunctions, UnitFormShippingAddress,UnitPrintGreed,
   PrnDbgeh,Printers,PrViewEh, MemTableDataEh, Db, MemTableEh, EhLibVCL,
  DataDriverEh;

type

  TFormContractor = class(TForm)
    DBGridEhContractor: TDBGridEh;
    sPanelbutton: TsPanel;
    sSpeedButtonNew: TsSpeedButton;
    sSpeedButtondelete: TsSpeedButton;
    sSpeedButtonSave: TsSpeedButton;
    sSliderview: TsSlider;
    sSliderread: TsSlider;
    btnprint: TsSpeedButton;
    PrintDBGridEh: TPrintDBGridEh;
    dbgridaddres: TDBGridEh;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButtonNewClick(Sender: TObject);
    procedure sSpeedButtondeleteClick(Sender: TObject);
    procedure sSpeedButtonSaveClick(Sender: TObject);
    procedure sSliderviewChanging(Sender: TObject; var CanChange: Boolean);
    procedure sSliderreadChanging(Sender: TObject; var CanChange: Boolean);
    procedure DBGridEhContractorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnprintClick(Sender: TObject);
    procedure DBGridEhContractorColumns12EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    Contactor : TContractor;
    { Private declarations }
  public
    procedure view_contacter;
    function getContacter(id_contactor : string='-1') : TItemContractor;
    { Public declarations }
  end;

var
  FormContractor: TFormContractor;

implementation

uses UnitDM, UnitFormEditContractor;
  var flag : TFlagForm;
{$R *.dfm}
procedure TFormContractor.btnprintClick(Sender: TObject);
  begin
     try
     // DBGridEhGoodsStock.Columns[1].Visible:=False;
      PrinterPreview.Orientation :=poLandscape;
      PrintDBGridEh.Preview;
     // DBGridEhGoodsStock.Columns[1].Visible:=true;
     except
     // DBGridEhGoodsStock.Columns[1].Visible:=true;
     end;
  end;

procedure TFormContractor.DBGridEhContractorColumns12EditButtonClick(
  Sender: TObject; var Handled: Boolean);
  begin
    TFormShippingAddress.Create(Application,Contactor.ReturnFieldsName('id_Contractor')).selectedItemShippingAdress;
    Contactor.ViewContractor;
  end;

procedure TFormContractor.DBGridEhContractorKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  begin
    if (Key=VK_RETURN) AND (flag=closeEnter) then begin Close; end;
  end;

procedure TFormContractor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Contactor.BaseClassSQlExecuteQuery.Edit;
  Contactor.BaseClassSQlExecuteQuery.Post;
end;

procedure TFormContractor.FormCreate(Sender: TObject);
  begin
    Contactor:=TContractor.Create(dm.ConnectionServer);
  end;

procedure TFormContractor.view_contacter;
  begin
     Caption:='ÊÎÍÒÐÀÃÅÍÒÛ';
     DBGridEhContractor.DataSource:=Contactor.BaseClassSQlExecuteSource;
     Contactor.ViewContractor;
     Contactor.SetDataMemTable;
     Contactor.MemTableEh.SaveToFile('C:\Contactor.dfm');
     flag:=noCloseEnter;
     //sSliderread.SliderOn:=True;
     Show;

  end;

function TFormContractor.getContacter(id_contactor : string='-1'): TItemContractor;
  begin
     flag:=closeEnter;
     Caption:='ÊÎÍÒÐÀÃÅÍÒÛ (ÂÛÁÎÐ)';
     DBGridEhContractor.DataSource:=Contactor.BaseClassSQlExecuteSource;
     Contactor.ViewContractor;
     Contactor.BaseClassSQlExecuteQuery.Locate('id_Contractor',id_contactor,[]);
     ShowModal;
     Result:=Contactor.getContactor;
  end;

procedure TFormContractor.sSliderreadChanging(Sender: TObject;
  var CanChange: Boolean);
  begin
    DBGridEhContractor.ReadOnly:= not DBGridEhContractor.ReadOnly;
  end;

procedure TFormContractor.sSliderviewChanging(Sender: TObject;
  var CanChange: Boolean);
  begin
     DBGridEhContractor.AutoFitColWidths:=False;//NOT DBGridEhContractor.RowPanel.Active;
     DBGridEhContractor.RowPanel.Active:=NOT DBGridEhContractor.RowPanel.Active;
  end;

procedure TFormContractor.sSpeedButtondeleteClick(Sender: TObject);
  begin
   if MessageDlg('Óäàëèòü çàïèñü?',mtInformation,mbYesNo,1)=mrYes then
    begin
      Contactor.DeleteContactor(Contactor.ReturnFieldsName('id_Contractor'));
      Contactor.ViewContractor;
    end;
  end;

procedure TFormContractor.sSpeedButtonNewClick(Sender: TObject);
  var id : Integer;
  begin
   With  TFormEditContractor.Create(Application) do
   begin
     DBVertGridEh1.DataSource:=Contactor.BaseClassSQlExecuteSource;
     id:=Contactor.insertnullcontactor();
     Contactor.ViewContractor;
     Contactor.Locate('id_contractor',id);
     Contactor.BaseClassSQlExecuteQuery.Edit;
     if ShowModal = mrok then
       Contactor.BaseClassSQlExecuteQuery.Post
     else
     begin
      Contactor.deletecontactor(IntToStr(id));
      Contactor.ViewContractor;
     end;
//
//     Contactor.InsertNullContactor;
     Contactor.ViewContractor;
   end;
  end;

procedure TFormContractor.sSpeedButtonSaveClick(Sender: TObject);
  begin
   if Contactor.RecordCount>0 then
   With  TFormEditContractor.Create(Application) do
   begin
     DBVertGridEh1.DataSource:=Contactor.BaseClassSQlExecuteSource;
     Contactor.BaseClassSQlExecuteQuery.Edit;
     if ShowModal = mrok then
       Contactor.BaseClassSQlExecuteQuery.Post
     else
      Contactor.BaseClassSQlExecuteQuery.Cancel;
   end;
  end;

end.
