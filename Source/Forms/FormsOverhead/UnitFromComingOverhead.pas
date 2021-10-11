unit UnitFromComingOverhead;

interface

uses
  Windows, Messages, SysUtils, Variants,DB, Classes, Graphics, Controls, Forms,
  Dialogs, DBGridEhGrouping, ToolCtrlsEh, DBGridEhToolCtrls, DynVarsEh, GridsEh, AdditionalFunctions,
   DBGridEh, ExtCtrls, sPanel,UnitOverhead, Buttons, sSpeedButton, UnitPrintGreed,
  DBAxisGridsEh, PrnDbgeh, EhLibVCL;

type
  TFromComingOverhead = class(TForm)
    DBGridEhComingOverhead: TDBGridEh;
    PrintDBGridEh: TPrintDBGridEh;
    sPanel1: TsPanel;
    btn1: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButtonDelete: TsSpeedButton;
    sSpeedButtonUpdate: TsSpeedButton;
    sSpeedButtonPrint: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButton8: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure sSpeedButton1Click(Sender: TObject);
    procedure sSpeedButtonDeleteClick(Sender: TObject);
    procedure DBGridEhComingOverheadDblClick(Sender: TObject);
    procedure sSpeedButtonUpdateClick(Sender: TObject);
    procedure sSpeedButtonPrintClick(Sender: TObject);
    procedure sSpeedButton2Click(Sender: TObject);
  private
    Overhead : TOverhead;
    TYPE_Overhead : String;
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    { Private declarations }
  public
    procedure view_Overhead(TYPE_O : String);
    { Public declarations }
  end;

var
  FromComingOverhead: TFromComingOverhead;

implementation

uses UnitDM,UnitromNewComingOverhead;

{$R *.dfm}

procedure TFromComingOverhead.DataSourceDataChange(Sender: TObject; Field: TField);
  begin
     sSpeedButtonDelete.Enabled:=not StrToBool(Overhead.ReturnFieldsName('Activ_Overhead'));
  end;

procedure TFromComingOverhead.DBGridEhComingOverheadDblClick(Sender: TObject);
  begin
      if Overhead.RecordCount>0 then
      begin
        TFormNewComingOverhead.Create(Application).
        view_data_overhead(
        Overhead.ReturnFieldsName('id_Overhead'),
        Overhead.ReturnFieldsName('type_Overhead')
        );
        Overhead.ViewOverhead(TYPE_Overhead);
      end;
  end;

procedure TFromComingOverhead.btn1Click(Sender: TObject);
  begin
    Overhead.newNullOverhead(TYPE_Overhead);
    Overhead.ViewOverhead(TYPE_Overhead);
  end;

procedure TFromComingOverhead.FormCreate(Sender: TObject);
  begin
     Overhead := TOverhead.Create(dm.ConnectionServer);
     Overhead.BaseClassSQlExecuteSource.OnDataChange:=DataSourceDataChange;
     LoadIniVisibleGrid('SettingVisibleGrid.ini','GridOverhead',DBGridEhComingOverhead);
  end;

procedure TFromComingOverhead.sSpeedButton1Click(Sender: TObject);
//var aa : TFormNewComingOverhead;
  begin
   if Overhead.RecordCount>0 then
    begin
//       aa :=TFormNewComingOverhead.Create(Application);
//       CreateViewFormNew (aa,Parent);
//       aa.
//             view_data_overhead(
//      Overhead.ReturnFieldsName('id_Overhead'),
//      Overhead.ReturnFieldsName('type_Overhead')
//      );
      TFormNewComingOverhead.Create(Application).
      view_data_overhead(
      Overhead.ReturnFieldsName('id_Overhead'),
      Overhead.ReturnFieldsName('type_Overhead')
      );
      Overhead.ViewOverhead(TYPE_Overhead);
    end;
  end;

procedure TFromComingOverhead.sSpeedButton2Click(Sender: TObject);
  begin
   TPrintGreed.Create(DBGridEhComingOverhead).ExportToHTML(
   ExtractFilePath(ParamStr(0))+'\Data\ExportFile\ExportOverhead.html'
   );
  end;

procedure TFromComingOverhead.sSpeedButtonDeleteClick(Sender: TObject);
  begin
       if MessageDlg('Удалить запись?',mtInformation,mbYesNo,1)=mrYes then   begin
          Overhead.DeleteOverhead(Overhead.ReturnFieldsName('id_Overhead'));  Overhead.ViewOverhead(TYPE_Overhead);
       end;
  end;

procedure TFromComingOverhead.sSpeedButtonPrintClick(Sender: TObject);
  begin

//      DBGridEhComingOverhead.Columns[0].Visible:=False;
//     DBGridEhComingOverhead.Columns[7].Visible:=False;
//     DBGridEhComingOverhead.Columns[6].Visible:=False;
//     DBGridEhComingOverhead.Columns[5].Visible:=False;
      PrintDBGridEh.Preview;

//     DBGridEhComingOverhead.Columns[0].Visible:=true;
//     DBGridEhComingOverhead.Columns[7].Visible:=true;
//     DBGridEhComingOverhead.Columns[6].Visible:=true;
//     DBGridEhComingOverhead.Columns[5].Visible:=true;
  end;

procedure TFromComingOverhead.sSpeedButtonUpdateClick(Sender: TObject);
  begin

       Overhead.ViewOverhead(TYPE_Overhead);
  end;

procedure TFromComingOverhead.view_Overhead(TYPE_O: string);
  begin
    Self.TYPE_Overhead:=TYPE_O;
    Overhead.ViewOverhead(TYPE_Overhead);
    DBGridEhComingOverhead.DataSource:=Overhead.BaseClassSQlExecuteSource;
    if not Visible then

    Visible:=True;
    //Show;
  end;
end.
