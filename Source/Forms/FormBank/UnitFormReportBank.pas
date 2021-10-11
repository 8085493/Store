unit UnitFormReportBank;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh,UnitBankDocument, StdCtrls, sGroupBox, ExtCtrls,
  sPanel, Buttons, sSpeedButton, PrnDbgeh,AdditionalFunctions,UnitPrintGreed;

type
  TFormReportBank = class(TForm)
    DBGridEhBankReport: TDBGridEh;
    sPanel1: TsPanel;
    sRadioGroup1: TsRadioGroup;
    sSpeedButton1: TsSpeedButton;
    PrintDBGridEh1: TPrintDBGridEh;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    procedure sRadioGroup1Change(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton6Click(Sender: TObject);
  private
    Bank_document : TBank_document;
    { Private declarations }
  public
    procedure viewReport;
    { Public declarations }
  end;

var
  FormReportBank: TFormReportBank;

implementation

uses UnitDM;

{$R *.dfm}

procedure TFormReportBank.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    saveIniVisibleGrid('SettingVisibleGrid.ini','GridReportBank',DBGridEhBankReport);
  end;

procedure TFormReportBank.FormCreate(Sender: TObject);
  begin
    loadIniVisibleGrid('SettingVisibleGrid.ini','GridReportBank',DBGridEhBankReport);
  end;

procedure TFormReportBank.sRadioGroup1Change(Sender: TObject);
  begin
   case sRadioGroup1.ItemIndex of
     0 :  Bank_document.getReportBank('1');
     1 :  Bank_document.getReportBank('-1');
   end;
  end;

procedure TFormReportBank.sSpeedButton1Click(Sender: TObject);
var  print : TPrintGreed;
  begin
   print:=TPrintGreed.Create(DBGridEhBankReport);
   print.PageHeader.LeftText.Text:= sRadioGroup1.Items.Strings[sRadioGroup1.ItemIndex];
    // BeforeGridText.SetText(PChar(sRadioGroup1.Items.Strings     [sRadioGroup1.ItemIndex]));
   print.Preview;
  end;

procedure TFormReportBank.sSpeedButton2Click(Sender: TObject);
  begin
   TPrintGreed.Create(DBGridEhBankReport).ExportToExcelOLE(
   ExtractFilePath(ParamStr(0))+'\Data\ExportFile\ExportBankReport.xls'
   );
  end;

procedure TFormReportBank.sSpeedButton6Click(Sender: TObject);
  begin
     TPrintGreed.Create(DBGridEhBankReport).ExportToRtf(
     ExtractFilePath(ParamStr(0))+'\Data\ExportFile\ExportBankReport.rtf'
     );
  end;

procedure TFormReportBank.viewReport;
  begin
    Bank_document :=TBank_document.Create(dm.ConnectionServer);
    Bank_document.getReportBank('1');
    DBGridEhBankReport.DataSource:=Bank_document.BaseClassSQlExecuteSource;
    Show;//Modal;
  end;
end.
