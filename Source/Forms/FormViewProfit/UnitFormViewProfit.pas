unit UnitFormViewProfit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, sGroupBox,UnitReport, Buttons, AdditionalFunctions,
  sSpeedButton, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sDBDateEdit,
  PrnDbgeh, ExtCtrls, sPanel, sComboEdit, acPopupCtrls;

type
  TFormViewProfit = class(TForm)
    DBGridEhReport: TDBGridEh;
    PrintDBGridEh1: TPrintDBGridEh;
    sPanel1: TsPanel;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sPopupBox1: TsPopupBox;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sPopupBox1BeforePopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sPopupBox1KeyPress(Sender: TObject; var Key: Char);
  private
    ReportProfit : TReport;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormViewProfit: TFormViewProfit;

implementation

uses UnitDM,UnitFormPopDate;

{$R *.dfm}

procedure TFormViewProfit.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    saveIniVisibleGrid('SettingVisibleGrid.ini','GridViewProfit',DBGridEhReport);
  end;

procedure TFormViewProfit.FormCreate(Sender: TObject);
  begin
   // sDateEditBegin.Date:=Now;
    //sDateEditEnd.Date:=Now;
    ReportProfit := TReport.Create(dm.ConnectionServer);
    DBGridEhReport.DataSource:=ReportProfit.BaseClassSQlExecuteSource;
    LoadIniVisibleGrid('SettingVisibleGrid.ini','GridViewProfit',DBGridEhReport);
  end;

procedure TFormViewProfit.FormShow(Sender: TObject);
  begin
   sPopupBox1.Text:='Задать промежуток'
  end;

procedure TFormViewProfit.sPopupBox1BeforePopup(Sender: TObject);
  begin
   FormPopDate.OwnerControl := sPopupBox1;
  end;

procedure TFormViewProfit.sPopupBox1KeyPress(Sender: TObject; var Key: Char);
  begin
   key:=#0;
  end;

procedure TFormViewProfit.sSpeedButton1Click(Sender: TObject);
  begin
    ReportProfit.ViewReportProfit(FormPopDate.getStartDate,FormPopDate.getEndDate);
  end;

procedure TFormViewProfit.sSpeedButton2Click(Sender: TObject);
  begin
      PrintDBGridEh1.PageHeader.LeftText.Text:='Период: с '
      +dateTostr(FormPopDate.getStartDate)+' по '+DateToStr(FormPopDate.getEndDate)+'';
      PrintDBGridEh1.Preview;
  end;

end.
