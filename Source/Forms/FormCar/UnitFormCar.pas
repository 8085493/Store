unit UnitFormCar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,UnitCar,UnitVar, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Buttons, sSpeedButton, ExtCtrls,
  sPanel,UnitContractor, acSlider,AdditionalFunctions;

type
  TFormCar = class(TForm)
    DBGridEhCar: TDBGridEh;
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
    procedure sSpeedButtonNewClick(Sender: TObject);
    procedure DBGridEhCarColumns4EditButtonClick(Sender: TObject;
      var Handled: Boolean);
    procedure sSpeedButtonSAveClick(Sender: TObject);
    procedure sSpeedButtonDeleteClick(Sender: TObject);
    procedure DBGridEhCarKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure sSliderreadChanging(Sender: TObject; var CanChange: Boolean);
    //DBGridEhCar: TDBGridEh;
  private
    { Private declarations }
    Car : TCar;
  public
    { Public declarations }
    procedure View_all_Car;
    function getCar(i_car : string)  : TItemCar;

  end;

var
  FormCar: TFormCar;

implementation

uses UnitDM,UnitFormContractor;
var flag : TFlagForm;


{$R *.dfm}
procedure TFormCar.DBGridEhCarColumns4EditButtonClick(Sender: TObject;
  var Handled: Boolean);
  var id : string;
  begin
    Car.BaseClassSQlExecuteQuery.Edit;
    Car.BaseClassSQlExecuteQuery.Post;
    id:=Car.ReturnFieldsName('id_Car');
     Car.setCarContractor(
     TFormContractor.Create(Application).getContacter._id_Contractor,
     Car.ReturnFieldsName('id_Car'));
     Car.ViewCar();
     Car.BaseClassSQlExecuteQuery.Locate('id_Car',id,[]);
  end;

procedure TFormCar.sSliderreadChanging(Sender: TObject; var CanChange: Boolean);
  begin
      DBGridEhCar.ReadOnly:= not DBGridEhCar.ReadOnly;
  end;

procedure TFormCar.sSpeedButtonDeleteClick(Sender: TObject);
  begin
    if MessageDlg('Удалить запись?',mtInformation,mbYesNo,1)=mrYes then
      begin
        Car.DeleteCar(Car.ReturnFieldsName('id_Car'));
        Car.ViewCar()
      end;
  end;

procedure TFormCar.sSpeedButtonNewClick(Sender: TObject);
  begin
     Car.InsertCar();
     Car.ViewCar();
  end;

procedure TFormCar.sSpeedButtonSAveClick(Sender: TObject);
  begin
    Car.BaseClassSQlExecuteQuery.Edit;
    Car.BaseClassSQlExecuteQuery.Post;
  end;

procedure TFormCar.View_all_Car;
  begin
     Car:=TCar.Create(dm.ConnectionServer);
     DBGridEhCar.DataSource:=car.BaseClassSQlExecuteSource;
     Car.ViewCar();  flag:=noCloseEnter;     sSliderread.SliderOn:=True;
     Show;
  end;

procedure TFormCar.DBGridEhCarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_RETURN) AND (flag=closeEnter) then begin Close; end;
end;

function TFormCar.getCar(i_car : string): TItemCar;
  begin
     Car:=TCar.Create(dm.ConnectionServer);
     DBGridEhCar.DataSource:=car.BaseClassSQlExecuteSource;
     Car.ViewCar(); Car.BaseClassSQlExecuteQuery.Locate('id_Car',i_car,[]);

     flag:=closeEnter;   Caption:='Транспорт (ВЫБРАТЬ)';
     ShowModal;
     Result:=TItemCar.Create(
          Car.ReturnFieldsName('id_Car'),
          Car.ReturnFieldsName('Name_Car'),
          Car.ReturnFieldsName('Number_Car'),
          Car.ReturnFieldsName('Owner_Car'),
          Car.ReturnFieldsName('Driver_Car'),
          Car.ReturnFieldsName('idContractor')
     );
  end;
end.
