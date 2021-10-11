unit UnitFormAct;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UnitReport,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh,
  DBAxisGridsEh, DBGridEh, StdCtrls, sGroupBox, sComboBox, Mask, sMaskEdit, UnitPrintGreed,
  sCustomComboEdit, sToolEdit,UnitContractor, ExtCtrls, sPanel, Buttons,
  sSpeedButton, ComCtrls, sRichEdit, sComboEdit, acPopupCtrls, EhLibVCL;

type
  TFormAct = class(TForm)
    DBGridEhact: TDBGridEh;
    sPanel1: TsPanel;
    sGroupBox2: TsGroupBox;
    sComboBoxContactor: TsComboBox;
    sPanel2: TsPanel;
    sSpeedButton7: TsSpeedButton;
    sPopupBox1: TsPopupBox;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sComboBoxContactorChange(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
    procedure sSpeedButton3Click(Sender: TObject);
    procedure sPopupBox1KeyPress(Sender: TObject; var Key: Char);
    procedure sPopupBox1BeforePopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Report : TReport;
    listContactor : TList;
    dateS,dateE : TDate; ID : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAct: TFormAct;

implementation

uses UnitDM,UnitFormPopDate;

{$R *.dfm}

procedure TFormAct.FormCreate(Sender: TObject);
var i : Integer;
  begin
    Report := TReport.Create(dm.ConnectionServer);
    DBGridEhact.DataSource:=Report.BaseClassSQlExecuteSource;
  //  sDateEdit1.Date:=Now; sDateEdit2.Date:=Now;
    listContactor:=TContractor.Create(dm.ConnectionServer).getListContactor;
    for i:=0 to listContactor.Count-1 do
      sComboBoxContactor.Items.Add(TItemContractor(listContactor[i])._small_Name_Contractor);
    if listContactor.Count>1 then sComboBoxContactor.ItemIndex:=0;
  end;

procedure TFormAct.FormShow(Sender: TObject);
  begin
     sPopupBox1.Text:='Задать промежуток'
  end;

procedure TFormAct.sComboBoxContactorChange(Sender: TObject);
  begin
   // Report.getActSverki(TItemContractor(listContactor[sComboBoxContactor.itemindex])._id_Contractor,sDateEdit1.Date,sDateEdit2.Date);
   sSpeedButton1Click(Self);
  end;

procedure TFormAct.sPopupBox1BeforePopup(Sender: TObject);
  begin
      FormPopDate.OwnerControl := sPopupBox1;
  end;

procedure TFormAct.sPopupBox1KeyPress(Sender: TObject; var Key: Char);
  begin
   key:=#0;
  end;

procedure TFormAct.sSpeedButton1Click(Sender: TObject);
  begin
    dateS:=FormPopDate.getStartDate;
    dateE:=FormPopDate.getEndDate;
    ID:=sComboBoxContactor.itemindex;
    Report.getActSverki(TItemContractor(listContactor[sComboBoxContactor.itemindex])._id_Contractor,dateS,dateE);
  end;

procedure TFormAct.sSpeedButton2Click(Sender: TObject);
var printGreed : TPrintGreed;
  begin
   printGreed:=TPrintGreed.Create(DBGridEhact);
   printGreed.SetAfterGridText(printGreed.GetBeforeGridText);
   printGreed.Preview;
  end;

procedure TFormAct.sSpeedButton3Click(Sender: TObject);
  begin
   TPrintGreed.Create(DBGridEhact).ExportToRtf(
   ExtractFilePath(ParamStr(0))+'\Data\ExportFile\ExportACT.rtf'
   );
  end;

end.
