unit UnitMainForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UnitVar,
  Dialogs, Menus,UnitFormDirectory, ComCtrls, sPageControl,AdditionalFunctions, UnitMyMessageDialog,UnitUpdateProgect,
  sStatusBar,UnitTTNExportExcel,ShellApi, Mask, sMaskEdit, sCustomComboEdit,UnitReport,
  sToolEdit, StdCtrls, sComboBox, sEdit, sLabel, ExtCtrls, acTitleBar, sPanel,
  Buttons, sSpeedButton, sGroupBox, acSlider, sColorSelect,UnitSettingProject;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    v1: TMenuItem;
    N1: TMenuItem;
    F1: TMenuItem;
    t1: TMenuItem;
    R1: TMenuItem;
    mainPageControl: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    N2: TMenuItem;
    Y1: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    h1: TMenuItem;
    sTabSheet4: TsTabSheet;
    sTabSheet5: TsTabSheet;
    status: TsStatusBar;
    sTabSheetMenu: TsTabSheet;
    PopupMenu: TPopupMenu;
    sTabSheetBank_doc: TsTabSheet;
    sTitleBar: TsTitleBar;
    N6: TMenuItem;
    j1: TMenuItem;
    j2: TMenuItem;
    Report: TsTabSheet;
    H2: TMenuItem;
    ShowFormUpdate: TTimer;
    N7: TMenuItem;
    procedure F1Click(Sender: TObject);
    procedure t1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure h1Click(Sender: TObject);
    procedure sTabSheet1Show(Sender: TObject);
    procedure sTabSheet2Show(Sender: TObject);
    procedure sTabSheet4Show(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sTabSheet5Show(Sender: TObject);
    procedure sTabSheetBank_docShow(Sender: TObject);
    procedure sTabSheet3Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N6Click(Sender: TObject);
    procedure j1Click(Sender: TObject);
    procedure j2Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure sTabSheet5Hide(Sender: TObject);
    procedure sTabSheet3Hide(Sender: TObject);
    procedure sTabSheet1Hide(Sender: TObject);
    procedure sTabSheet2Hide(Sender: TObject);
    procedure sTabSheetBank_docHide(Sender: TObject);
    procedure sTitleBarItems2Click(Sender: TObject);
    procedure ShowFormUpdateTimer(Sender: TObject);
    procedure N7Click(Sender: TObject);
  private
  //  procedure CreateParams(var Params: TCreateParams); override;
    procedure CreateTable;
    { Private declarations }
  public
    { Public declarations }
  end;
TClientThread = class(TThread)
  protected
    update : Boolean;
    procedure Execute; override;
    procedure ShowMessageThread;
  public
    constructor Create(CreateSuspended: Boolean);
  end;
var
  MainForm: TMainForm;
implementation
  uses UnitFormContractor,UnitFormCar,UnitFormMetrics, UnitFormTaxes,UnitFormViewUpdate,
  UnitFormBankDocument,UnitFormReportBank,
  UnitFormStock,UnitFromComingOverhead,UnitFormGoods,UnitFormViewGoodsStock,
  UnitDM,UnitFormExpense_report, UnitFormConnectServer,UnitFormViewProfit,
  UnitFormRegeditOverhead, UnitFormSetting, UnitFormAct;
{$R *.dfm}
var
   FromComingOverhead       :TFromComingOverhead;
   FromConsumptionOverhead  :TFromComingOverhead;
   FormViewGoodsStock       :TFormViewGoodsStock;
   GFormDirectory           :TFormDirectory;
   FormBankDocument         :TFormBankDocument;
   FormExpense_report       :TFormExpense_report;
   MainUpdateproject        :TUpdateProgect;
   MainThread               :TClientThread;
   title_main : string;

constructor TClientThread.Create(CreateSuspended: Boolean);
  begin
    inherited Create(CreateSuspended);
              Priority       := tpIdle;
              FreeOnTerminate:= false;
  end;

procedure TClientThread.ShowMessageThread;
  begin

    case update of
      True : begin
               // MainForm.timerUpdate.Enabled:=True;
                ShowMessageDlg('Уведомление','Найдена новая версия программы '+MainUpdateproject.versionserver+' Запустите проверку обновления',myWarning);
             end;
     False : begin
                ShowMessageDlg('Уведомление','Нет обновлений',myInformation) ;
              end;
    end;

  end;

procedure TClientThread.Execute;
  begin
    MainUpdateproject        := TUpdateProgect.create;
    Update:=MainUpdateproject.checkedConnect;
    Synchronize(ShowMessageThread);
  end;

//procedure TMainForm.CreateParams(var Params: TCreateParams);
//  begin
//    inherited CreateParams(Params);
//    with Params do
//      ExStyle := ExStyle or WS_EX_APPWINDOW;
//  end;

procedure TMainForm.CreateTable;
  begin
    MainCar.CreateTable;
    MainContactor.CreateTable;
    MainStock.CreateTable;
    MainOverhead.CreateTable;
    MainMetrics.CreateTable;
    MainGoods.CreateTable;
    MainDataOverhead.CreateTable;
    MainBankDoc.CreateTable;
  end;

procedure TMainForm.F1Click(Sender: TObject);
  begin
    TFormCar.Create(Application).View_all_Car;
  end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action:=caNone;
    dm.CloseProject;
  end;

procedure TMainForm.FormCreate(Sender: TObject);
  begin

    //SettingsServer.LoadSetting;
      if SettingsServer.AppSettingConncet(dm.ConnectionServer) then
        begin
          CreateTable;
          mainPageControl.ActivePageIndex:=1;
          sTabSheet1Show(self);
        end
      else
      begin
        TFormConnectServer.Create(Application).ShowModal;
        mainPageControl.ActivePageIndex:=1;
        sTabSheet1Show(self);
        CreateTable;
      end;

      title_main:='ТОВАРЫ НА СКЛАДЕ (БАЛАНС '+ MainLicense.__BALANCE+')';

        TReport.Create(dm.ConnectionServer).setValuesJournal(0);
        sTabSheetMenu.TabVisible:=True;// dm.sSkinManager.Active;
  end;

procedure TMainForm.FormShow(Sender: TObject);
  begin
     with status do
      begin
         Panels[0].Text:='Сервер: ['+SettingsServer.ServerIP+']';
         Panels[1].Text:='Пользователь: ['+SettingsServer.UserName+']';
         Panels[2].Text:='База данных: ['+SettingsServer.BaseName+']';// ver '+GlobalSetting.StrToStrFloatSQL(floatTostr(GlobalSetting.VERSIONBASE));
         Panels[3].Text:='Баланс: ['+ MainLicense.__BALANCE+']';
         Panels[4].Text:='Программа "Товары на складе" Версия: '+FileVersion(ParamStr(0))+' Дата: '+GetFileDate(ParamStr(0))+' Email: 8085493@gmail.com';
      end;



      ShowMessageDlg('Уведомление','Лицевой баланс: '+
       MainLicense.__BALANCE+' ',myWarning);

      if MainLicense.__UPDARE_PROJECT then
      ShowMessageDlg('Уведомление','Найдена новая версия программы '+
      MainLicense.__SERVER_VERSION+' Запустите проверку обновления',
      myInformation);

      ShellExecute(self.handle,'open',PWideChar(ExtractFilePath(Application.ExeName)+'BalanceCheck.exe'), '','',SW_SHOWNORMAL);

//      if TSettingProject.Create.ACTIV_UPDATE  then
//        MainThread:=TClientThread.Create(false)
//      else
//         ShowMessageDlg('Уведомление','Проверка обновлений отключена',MYERROR) ;


        //   if FromComingOverhead=nil then
  //    begin
  //     FromComingOverhead:=TFromComingOverhead.Create(Application);
  //     CreateViewForm(FromComingOverhead,sTabSheet1);
  //     FromComingOverhead.view_Overhead('0');
  //    end;

  end;

procedure TMainForm.h1Click(Sender: TObject);
  begin
    TFromComingOverhead.Create(Application).view_Overhead('1');
  end;

procedure TMainForm.H2Click(Sender: TObject);
  begin
    TFormRegeditOverhead.Create(Application).ShowModal;
  end;

procedure TMainForm.j1Click(Sender: TObject);
  begin
    TFormReportBank.Create(Application).viewReport;
  end;

procedure TMainForm.j2Click(Sender: TObject);
  begin
    TFormTaxes.Create(Application).ShowModal;
  end;

procedure TMainForm.N2Click(Sender: TObject);
  begin
    TFormStock.Create(Application).View_All_Stock;
  end;

procedure TMainForm.N3Click(Sender: TObject);
  begin
   TFromComingOverhead.Create(Application).view_Overhead('0');
  end;

procedure TMainForm.N4Click(Sender: TObject);
  begin
   TFormGoods.Create(Application).viewGoods;
  end;

procedure TMainForm.N5Click(Sender: TObject);
  begin
   TFormMetrics.Create(Application).viewMetrics;
  end;

procedure TMainForm.N6Click(Sender: TObject);
  begin
     TFormViewProfit.Create(Application).ShowModal;
  end;

procedure TMainForm.N7Click(Sender: TObject);
  begin
    TFormAct.Create(Application).ShowModal;
  end;

procedure TMainForm.R1Click(Sender: TObject);
  begin
    TFormContractor.Create(Application).view_contacter;
  end;

procedure TMainForm.sTabSheet1Hide(Sender: TObject);
  begin
   saveIniVisibleGrid('SettingVisibleGrid.ini','GridOverhead',FromComingOverhead.DBGridEhComingOverhead);
  end;

procedure TMainForm.sTabSheet1Show(Sender: TObject);
  begin
    if FromComingOverhead=nil then
      begin
       FromComingOverhead:=TFromComingOverhead.Create(Application);
       CreateViewForm(FromComingOverhead,sTabSheet1);
      end;
      loadIniVisibleGrid('SettingVisibleGrid.ini','GridOverhead',FromComingOverhead.DBGridEhComingOverhead);
      FromComingOverhead.view_Overhead('0');
      sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheet1.Caption+')';
    // TFromComingOverhead.Create(Application).view_Overhead('0');
  end;

procedure TMainForm.sTabSheet2Hide(Sender: TObject);
  begin
     saveIniVisibleGrid('SettingVisibleGrid.ini','GridOverhead',FromConsumptionOverhead.DBGridEhComingOverhead);
  end;

procedure TMainForm.sTabSheet2Show(Sender: TObject);
  begin
   if FromConsumptionOverhead=nil then
    begin
      FromConsumptionOverhead :=TFromComingOverhead.Create(Application);
      CreateViewForm(FromConsumptionOverhead,sTabSheet2);
    end;
    loadIniVisibleGrid('SettingVisibleGrid.ini','GridOverhead',FromConsumptionOverhead.DBGridEhComingOverhead);
    FromConsumptionOverhead.view_Overhead('1');
    sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheet2.Caption+')';
  end;

procedure TMainForm.sTabSheet3Hide(Sender: TObject);
  begin
     saveIniVisibleGrid('SettingVisibleGrid.ini','GridExpense',
     FormExpense_report.DBGridEhExpense_report);
  end;

procedure TMainForm.sTabSheet3Show(Sender: TObject);
  begin
     if FormExpense_report=nil then
    begin
     FormExpense_report :=TFormExpense_report.Create(Application);
     CreateViewForm(FormExpense_report,sTabSheet3);
    end;
    loadIniVisibleGrid('SettingVisibleGrid.ini','GridExpense',
     FormExpense_report.DBGridEhExpense_report);
     FormExpense_report.view_Expense_report;
    sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheet3.Caption+')';
  end;

procedure TMainForm.t1Click(Sender: TObject);
  begin
   TFormDirectory.create(Application).ShowModal;
  end;

procedure TMainForm.ShowFormUpdateTimer(Sender: TObject);
 var resUpd : Integer;
  begin
   ShowFormUpdate.Enabled:=False;
   //ShowMessageDlg('update test',
   //TSettingProject.Create.getVersion+' '+FileVersion(ParamStr(0)),myInformation);
   //resUpd:=CompareVersion(TSettingProject.Create.getVersion,FileVersion(ParamStr(0)));
   //ShowMessageDlg('1',IntToStr(resUpd),myInformation);
   if CompareVersion(FileVersion(ParamStr(0)),TSettingProject.Create.getVersion)=1 then


    TFormViewUpdate.Create(Application).ShowModal;
  end;

procedure TMainForm.sTabSheet4Show(Sender: TObject);
  begin
    if GFormDirectory=nil then  begin
       GFormDirectory  := TFormDirectory.Create(Application);
       CreateViewForm(GFormDirectory,sTabSheet4);
       GFormDirectory.Show;
    end;
    sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheet4.Caption+')';
  end;

procedure TMainForm.sTabSheet5Hide(Sender: TObject);
  begin
    FormViewGoodsStock.SaveGridIni;
  end;

procedure TMainForm.sTabSheet5Show(Sender: TObject);
  begin
    if FormViewGoodsStock=nil then
       begin
        FormViewGoodsStock  := TFormViewGoodsStock.Create(Application);
        CreateViewForm(FormViewGoodsStock,sTabSheet5);
       end;
      FormViewGoodsStock.viewGoodsStock;
      sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheet5.Caption+')';
  end;

procedure TMainForm.sTabSheetBank_docHide(Sender: TObject);
  begin
   saveIniVisibleGrid('SettingVisibleGrid.ini','GridBankDocument',FormBankDocument.DBGridEhBankDocument);
  end;

procedure TMainForm.sTabSheetBank_docShow(Sender: TObject);
  begin
    if FormBankDocument=nil then
      begin
        FormBankDocument:=TFormBankDocument.Create(Application);
        CreateViewForm(FormBankDocument,sTabSheetBank_doc);
      end;
      LoadIniVisibleGrid('SettingVisibleGrid.ini','GridBankDocument',FormBankDocument.DBGridEhBankDocument);
      FormBankDocument.ViewTBank_document;
      sTitleBar.Items[1].Caption:=title_main+' ('+sTabSheetBank_doc.Caption+')';
  end;

procedure TMainForm.sTitleBarItems2Click(Sender: TObject);
  begin
    TFormSetting.Create(Application).ShowModal;
  end;

end.
