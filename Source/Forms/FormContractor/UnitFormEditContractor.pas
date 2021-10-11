unit UnitFormEditContractor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, MemTableDataEh, Db, EhLibVCL, GridsEh, DBAxisGridsEh, DBVertGridsEh,
  MemTableEh, StdCtrls, sButton;

type
  TFormEditContractor = class(TForm)
    DBVertGridEh1: TDBVertGridEh;
    sButton1: TsButton;
    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEditContractor: TFormEditContractor;

implementation

{$R *.dfm}

procedure TFormEditContractor.sButton1Click(Sender: TObject);
begin
 ModalResult:=mrOk;
end;

end.
