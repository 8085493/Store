unit UnitFormTypeDocuments;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitTypeDocuments, Buttons, sSpeedButton, ExtCtrls,
  sPanel;

type
  TFormTypeDocuments = class(TForm)
    DBGridEhTypeDoc: TDBGridEh;
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
  private
    TypeDocuments : TTypeDocuments;
    { Private declarations }
  public
    procedure  viewform;
    procedure  getTypeDoc;
    function   getItemTypeDoc : TItemTypeDocuments;
    { Public declarations }
  end;

var
  FormTypeDocuments: TFormTypeDocuments;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormTypeDocuments.FormCreate(Sender: TObject);
begin
   TypeDocuments := TTypeDocuments.Create(dm.ConnectionServer);
   DBGridEhTypeDoc.DataSource:=TypeDocuments.BaseClassSQlExecuteSource;
end;

procedure TFormTypeDocuments.viewform;
begin
  getTypeDoc;
  Show;
end;

procedure TFormTypeDocuments.getTypeDoc;
begin
  TypeDocuments.getTypeDoc;
end;

procedure TFormTypeDocuments.sSpeedButton1Click(Sender: TObject);
begin
  TypeDocuments.setSave;
end;

procedure TFormTypeDocuments.sSpeedButton2Click(Sender: TObject);
begin
 if MessageDlg('Удалить запись?',mtWarning,mbOKCancel,1)=mrOk then
  begin
    TypeDocuments.setDeleteTypeDoc(TypeDocuments.ReturnFieldsName('idtable_type_doc'));
    TypeDocuments.getTypeDoc;
  end;
end;

function   TFormTypeDocuments.getItemTypeDoc : TItemTypeDocuments;
begin
    DBGridEhTypeDoc.ReadOnly:=not DBGridEhTypeDoc.ReadOnly;
    getTypeDoc;
    ShowModal;
    Result:=TypeDocuments.getItemTypeDoc;
end;
end.
