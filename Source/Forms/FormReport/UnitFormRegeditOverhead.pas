unit UnitFormRegeditOverhead;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, Mask, UnitESF,UnitOverhead,UnitDataOverhead,UnitContractor,
  sMaskEdit, sCustomComboEdit, AdditionalFunctions,UnitMyMessageDialog,
  sToolEdit, Buttons, sSpeedButton, ExtCtrls, sPanel,UnitReport, Menus,
  sComboEdit, acPopupCtrls;

type
  TFormRegeditOverhead = class(TForm)
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    DBGridEhComingOverhead: TDBGridEh;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    pm1: TPopupMenu;
    n1: TMenuItem;
    N2: TMenuItem;
    sPopupBox1: TsPopupBox;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    sSpeedButton11: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure DBGridEhComingOverheadDblClick(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure n1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure sPopupBox1BeforePopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sPopupBox1KeyPress(Sender: TObject; var Key: Char);
  private
    Report : TReport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegeditOverhead: TFormRegeditOverhead;

implementation

uses UnitDM,UnitromNewComingOverhead,UnitFormPopDate;

{$R *.dfm}

procedure TFormRegeditOverhead.DBGridEhComingOverheadDblClick(Sender: TObject);
begin
 if Report.RecordCount>0 then
   TFormNewComingOverhead.Create(Application).
      view_data_overhead(
      Report.ReturnFieldsName('id_Overhead'),
      Report.ReturnFieldsName('type_Overhead')
      );
end;

procedure TFormRegeditOverhead.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //saveIniVisibleGrid('SettingVisibleGrid.ini','GridRegeditOverhead',DBGridEhComingOverhead);
end;

procedure TFormRegeditOverhead.FormCreate(Sender: TObject);
begin
//    sDateEditBegin.Date:=Now;
//    sDateEditEnd.Date:=Now;
    Report := TReport.Create(dm.ConnectionServer);
    DBGridEhComingOverhead.DataSource:=Report.BaseClassSQlExecuteSource;
   // loadIniVisibleGrid('SettingVisibleGrid.ini','GridRegeditOverhead',DBGridEhComingOverhead);
end;

procedure TFormRegeditOverhead.FormShow(Sender: TObject);
  begin
   sPopupBox1.Text:='Задать промежуток'
  end;

procedure TFormRegeditOverhead.n1Click(Sender: TObject);
  var list : TList;
   itemOverhead : TItemOverhead;
  begin
   list:=TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(
       Report.ReturnFieldsName('type_Overhead'),
       Report.ReturnFieldsName('id_Overhead')
   );

   itemOverhead:=TOverhead.Create(dm.ConnectionServer).getOverhead(Report.ReturnFieldsName('id_Overhead'));
   TESF.Create(
   TContractor.Create(dm.ConnectionServer).getContactorMain,
   TContractor.Create(dm.ConnectionServer).getContactorID(itemOverhead._IDContractor),
   itemOverhead,
   TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(
       Report.ReturnFieldsName('type_Overhead'),
       Report.ReturnFieldsName('id_Overhead')),dm.ConnectionServer
   );
  end;

procedure TFormRegeditOverhead.N2Click(Sender: TObject);
  var list : TList;
   itemOverhead : TItemOverhead;
  begin
   Report.FirstRecord;
   while not Report.EofCount do begin

     list:=TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(
         Report.ReturnFieldsName('type_Overhead'),
         Report.ReturnFieldsName('id_Overhead')
     );

     itemOverhead:=TOverhead.Create(dm.ConnectionServer).getOverhead(Report.ReturnFieldsName('id_Overhead'));
     TESF.Create(
     TContractor.Create(dm.ConnectionServer).getContactorMain,
     TContractor.Create(dm.ConnectionServer).getContactorID(itemOverhead._IDContractor),
     itemOverhead,
     TDataOverhead.Create(dm.ConnectionServer).getListDataOverhead(
         Report.ReturnFieldsName('type_Overhead'),
         Report.ReturnFieldsName('id_Overhead')),dm.ConnectionServer
     );
    Report.NextRecord;

   end;
   ShowMessageDlg('Уведомление','Экспорт закончен',myInformation);
  end;

procedure TFormRegeditOverhead.sPopupBox1BeforePopup(Sender: TObject);
  begin
    FormPopDate.OwnerControl := sPopupBox1;
  end;

procedure TFormRegeditOverhead.sPopupBox1KeyPress(Sender: TObject;
  var Key: Char);
  begin
   key:=#0;
  end;

procedure TFormRegeditOverhead.sSpeedButton1Click(Sender: TObject);
  begin
    Report.getRegeditOverhead(FormPopDate.getStartDate,FormPopDate.getEndDate);
  end;

procedure TFormRegeditOverhead.sSpeedButton2Click(Sender: TObject);
  begin
    dm.PrintDBGridEh.PageHeader.LeftText.Text:='Реестр накладных. '+#13+'Период: с '
       +dateTostr(FormPopDate.getStartDate)+' по '+DateToStr(FormPopDate.getEndDate)+'';
    dm.PrintDBGridEh.DBGridEh:=self.DBGridEhComingOverhead;
    dm.PrintDBGridEh.Preview;
  end;

procedure TFormRegeditOverhead.sSpeedButton3Click(Sender: TObject);
  begin
     if Report.RecordCount>0 then
       TFormNewComingOverhead.Create(Application).
        view_data_overhead(
        Report.ReturnFieldsName('id_Overhead'),
        Report.ReturnFieldsName('type_Overhead')
        );
  end;

end.
