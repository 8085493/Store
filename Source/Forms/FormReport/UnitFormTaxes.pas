unit UnitFormTaxes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, sSpeedButton, StdCtrls, Mask, sMaskEdit, sCustomComboEdit,
  sToolEdit, ExtCtrls, sPanel, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls,
  DynVarsEh, GridsEh, DBAxisGridsEh, DBGridEh,UnitReport, PrnDbgeh,AdditionalFunctions,
  sComboEdit, acPopupCtrls;

type
  TFormTaxes = class(TForm)
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    DBGridEhTaxesReport: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    sSpeedButton7: TsSpeedButton;
    sPopupBox1: TsPopupBox;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sPopupBox1KeyPress(Sender: TObject; var Key: Char);
    procedure sPopupBox1BeforePopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
     ReportProfit : TReport;
  public
    { Public declarations }
  end;

var
  FormTaxes: TFormTaxes;

implementation

uses UnitDM,UnitFormPopDate;

{$R *.dfm}

procedure TFormTaxes.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
   saveIniVisibleGrid('SettingVisibleGrid.ini','GridTaxes',DBGridEhTaxesReport);
  end;

procedure TFormTaxes.FormCreate(Sender: TObject);
  begin
    //sDateEditBegin.Date:=Now;
    //sDateEditEnd.Date:=Now;
    ReportProfit := TReport.Create(dm.ConnectionServer);
    DBGridEhTaxesReport.DataSource:=ReportProfit.BaseClassSQlExecuteSource;
    loadIniVisibleGrid('SettingVisibleGrid.ini','GridTaxes',DBGridEhTaxesReport);
  end;

procedure TFormTaxes.FormShow(Sender: TObject);
  begin
   sPopupBox1.Text:='Задать промежуток'
  end;

procedure TFormTaxes.sPopupBox1BeforePopup(Sender: TObject);
  begin
     FormPopDate.OwnerControl := sPopupBox1;
  end;

procedure TFormTaxes.sPopupBox1KeyPress(Sender: TObject; var Key: Char);
  begin
   key:=#0;
  end;

procedure TFormTaxes.sSpeedButton1Click(Sender: TObject);
  begin
    // ReportProfit.getListTaxesNDS(sDateEditBegin.Date,sDateEditEnd.Date);
     ReportProfit.getListTaxesNDS(FormPopDate.getStartDate,FormPopDate.getEndDate);
  end;

procedure TFormTaxes.sSpeedButton2Click(Sender: TObject);
  begin
        PrintDBGridEh1.PageHeader.LeftText.Text:=' ОТЧЁТ ПО НДС Период: с '
        +dateTostr(FormPopDate.getStartDate)+' по '+DateToStr(FormPopDate.getEndDate)+'';
        PrintDBGridEh1.Preview;
  end;

end.
