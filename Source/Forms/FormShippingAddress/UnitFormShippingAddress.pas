unit UnitFormShippingAddress;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, LogUnit,
  Dialogs,UnitShippingAddress, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh, Buttons, sSpeedButton, StdCtrls,
  sEdit, ExtCtrls, sPanel;

type
  TFormShippingAddress = class(TForm)
    dbgridaddres: TDBGridEh;
    sPanel1: TsPanel;
    sEditshipping_address: TsEdit;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
  private
    ID_CONTACTOR : string;
    ShippingAddress : TShippingAddress;
   { Private declarations }
  public
    constructor Create(AOwner: TComponent; ID_CONTACTOR:String);
    function    selectedItemShippingAdress: TItemShippingAddress;
    { Public declarations }
  end;

var
  FormShippingAddress: TFormShippingAddress;

implementation

uses UnitDM;

{$R *.dfm}

constructor TFormShippingAddress.Create(AOwner: TComponent; ID_CONTACTOR:String);
 begin
   try
     inherited Create(AOwner);
     Self.ID_CONTACTOR:=ID_CONTACTOR;
     ShippingAddress:=TShippingAddress.Create(dm.ConnectionServer);
     dbgridaddres.DataSource:=ShippingAddress.BaseClassSQlExecuteSource;
     ShippingAddress.getShippingAddress(Self.ID_CONTACTOR);
   except

   end;
   //ShowModal;
 end;

procedure TFormShippingAddress.sSpeedButton1Click(Sender: TObject);
  begin
    if MessageDlg('Удалить запись',mtInformation,mbOKCancel,1)=mrOk then  begin
    ShippingAddress.setDeleteShippingAddress(ShippingAddress.ReturnFieldsName('idtable_shipping_address'));
    ShippingAddress.getShippingAddress(Self.ID_CONTACTOR);                end;
  end;

procedure TFormShippingAddress.sSpeedButton2Click(Sender: TObject);
  begin

    try
      ShippingAddress.setShippingAddress(Self.ID_CONTACTOR,sEditshipping_address.Text);
      ShippingAddress.getShippingAddress(Self.ID_CONTACTOR);
      sEditshipping_address.Clear;
    except on e : Exception do
      WriteLog(e.Message);
    end;

  end;

procedure TFormShippingAddress.sSpeedButton3Click(Sender: TObject);
  begin
   ShippingAddress.BaseClassSQlExecuteQuery.Edit;
   ShippingAddress.BaseClassSQlExecuteQuery.Post;
  end;

function  TFormShippingAddress.selectedItemShippingAdress : TItemShippingAddress;
  begin
   ShowModal;
   Result:=ShippingAddress.getItemShippingAddress;
  end;
end.
