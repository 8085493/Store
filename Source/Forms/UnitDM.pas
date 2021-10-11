unit UnitDM;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, sSkinManager, ExtCtrls, MemDS, Windows,UnitSettingProject,
  ImgList, Controls, acAlphaImageList,Dialogs, Menus,Forms, xmldom, XMLIntf,AdditionalFunctions,
  msxmldom, XMLDoc,UnitMyMessageDialog,ShellAPI,UnitBackup, DADump, MyDump, UnitReport, UnitLicenseServer,
  MyBackup, PrnDbgeh, MyDacVcl,UnitContractor,UnitShippingAddress, sDialogs,
  frxExportMail, frxExportRTF, frxOLE, frxClass, frxExportPDF, frxExportBIFF,
  frxExportXML, frxExportImage, frxExportXLS;

type
  Tdm = class(TDataModule)
    ConnectionServer: TMyConnection;
    TrayIcon: TTrayIcon;
    sAlphaImageList24,sAlphaImageList16,sAlphaist24: TsAlphaImageList;
    PopupMenu1: TPopupMenu;
    l1,D1,N1,Y1,J1,N2,N3,y2,R1,N4,N5,N6,N7,N8: TMenuItem;
    ImageList16,ImageList24,ImageList48,ImageList1,chechkedList: TImageList;
    sSkinManager: TsSkinManager;
    MyConnectDialog: TMyConnectDialog;
    PrintDBGridEh: TPrintDBGridEh;
    b1: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    sSaveDialog1: TsSaveDialog;
    sAlphaImageList32: TsAlphaImageList;
    MyBackup1: TMyBackup;
    MyDump1: TMyDump;
    frxPDFExport1: TfrxPDFExport;
    frxOLEObject1: TfrxOLEObject;
    frxRTFExport1: TfrxRTFExport;
    frxMailExport1: TfrxMailExport;
    frxXLSExport1: TfrxXLSExport;
    frxJPEGExport1: TfrxJPEGExport;
    frxXMLExport1: TfrxXMLExport;
    frxBIFFExport1: TfrxBIFFExport;
    procedure DataModuleCreate(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure l1Click(Sender: TObject);
    procedure Y1Click(Sender: TObject);
    procedure CloseProject;
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure y2Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure b1Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation
uses UnitFormConnectServer, UnitFormJournal,UnitFormViewProfit,UnitFormConsol,UnitFormReportBank, UnitFormTaxes,UnitFormRegeditOverhead, UnitFormSetting,
  UnitFormViewUpdate, UnitFormAct,UnitVar, UnitMainForm;
 function getLoadInfoLicense(): TlicenseServer; external 'LoadingLicenseServer.dll';
{$R *.dfm}

procedure Tdm.b1Click(Sender: TObject);
  begin
    tFormViewUpdate.Create(Application).ShowModal;
  end;

procedure Tdm.CloseProject;
  begin
   if MessageDlg('Выйти из программы? ',mtInformation,mbYesNo,1)=mrYes then
    begin
      TReport.Create(dm.ConnectionServer).setValuesJournal(1);
      //if MessageDlg('Создать резервную копию данных? '+#13+'Это займет некоторое время',mtWarning,mbYesNo,1)=mrYes then
      TBackup.Create(self.ConnectionServer).startBackup( ExtractFilePath(Application.ExeName)+'Data\Backup\');
      Application.Terminate;
    end;
  end;

procedure Tdm.D1Click(Sender: TObject);
  begin
    CloseProject;
  end;

procedure Tdm.DataModuleCreate(Sender: TObject);
 var setting : TSettingProject;
  begin
    setting := TSettingProject.Create;
    sSkinManager.SkinName:=setting.NAME_THEME;
    sSkinManager.Active:=setting.ACTIV_TEHEME;
    MainLicense:=getLoadInfoLicense();
    if not MainLicense.__STATUS then    begin
      MessageDlg(MainLicense.__STATUS_INFO,mtError,[mbok],1);
      Application.Terminate;
    end;

  end;

procedure Tdm.l1Click(Sender: TObject);
  begin
    ViewListMessage(posLeft);
  end;

procedure Tdm.N10Click(Sender: TObject);
  begin
   TFormAct.Create(Application).ShowModal;
  end;

procedure Tdm.N1Click(Sender: TObject);
  begin
    TFormTaxes.Create(Application).ShowModal;
  end;

procedure Tdm.N2Click(Sender: TObject);
  begin
    TFormViewProfit.Create(Application).ShowModal;
  end;

procedure Tdm.N3Click(Sender: TObject);
  begin
    TBackup.Create(Self.ConnectionServer).startRestoreBackup('');
  end;

procedure Tdm.N4Click(Sender: TObject);
  begin
    TFormJournal.Create(Application).ShowModal;
  end;

  procedure Tdm.N5Click(Sender: TObject);
  begin
    TFormReportBank.Create(Application).viewReport;
  end;

procedure Tdm.N6Click(Sender: TObject);
  begin
    TFormViewProfit.Create(Application).ShowModal;
  end;

procedure Tdm.N7Click(Sender: TObject);
  begin
    TFormRegeditOverhead.Create(Application).ShowModal;
  end;

procedure Tdm.N8Click(Sender: TObject);
var lst : Tlist;  i : Integer;
  begin
    lst:=TContractor.Create(ConnectionServer).getListContactor;
    for I := 0 to lst.Count - 1 do
     begin
       TShippingAddress.Create(ConnectionServer).setNewShippingAddres(
        TItemContractor(lst[i])._id_Contractor,
        TItemContractor(lst[i])._mailing_address
       );
     end;
  end;

procedure Tdm.N9Click(Sender: TObject);
  begin
    if MainLicense.__UPDARE_PROJECT then      begin

            close_process('BalanceCheck.exe');
                 ShellExecute(
                MainForm.handle,
                'open',
                PWideChar(ExtractFilePath(Application.ExeName)+'update.exe'),
                //PWideChar('www.test.stolinservice.by/_update/ars_store/1.1.4.37.zip'),'',
                PWideChar(MainLicense.__LINK_DOWNLOAD),'',
                SW_SHOWNORMAL
              );
              Application.Terminate;
    end
    else  ShowMessageDlg('Уведомление','Нет обновлений',myInformation) ;
    //ShellExecute(FormConnectServer.Handle,'open',PChar(ExtractFilePath(Application.ExeName)+'\UpdateProject.exe'), nil, nil, SW_SHOWNORMAL);
  end;

procedure Tdm.R1Click(Sender: TObject);
  begin
    TFormConsol.Create(Application).Show;
  end;

procedure Tdm.Y1Click(Sender: TObject);
  begin
    if MessageDlg('После изменения настроек программа будет закрыта, продолжить?',mtInformation,mbYesNo,1)=mrYes then begin
       TFormConnectServer.Create(Application).ShowModal;
       Application.Terminate;
    end;
  end;

procedure Tdm.y2Click(Sender: TObject);
  begin
    TFormSetting.Create(Application).ShowModal;
  end;

end.
