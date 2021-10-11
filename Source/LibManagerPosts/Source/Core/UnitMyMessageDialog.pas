unit UnitMyMessageDialog;

interface
uses UnitMainForms,UnitFormMessage,Classes,  ExtCtrls,UnitSettinMessage,
Types,Windows,UnitDMmessage,Controls,SysUtils,Forms,Dialogs;
 type
  TPositonList = (posLeft,posRight);
  TMessageType = (myWarning, myError, myInformation, myConfirmation);
  TMyMessageDialog = class

    constructor Create(AOwner: TComponent);
    procedure   ViewListMessage(positon :TPositonList);
    procedure   ShowMessageDlg(NameMessage,TextMessage1 : string;
                TypeMesage :TMessageType;addationalMessagetext : string='';TimeShow : Integer=5000);
   // function    getFormOption : TForm;

  private

    const //maxCount: Integer=7;
          HeightMesForm=105;
      var countMessage : Integer;
          maxCount: Integer;
          val : TRect;
          ThisAOwner: TComponent;
          FormViewMessage: TFormViewMessage;
          DataModuleMessage :TDataModuleMessage;
          arrayMessage : array [1..20] of Boolean;

    procedure TempTimerTimer(Sender: TObject);
    function  searchFirstNilArray : Integer;
   end;
 procedure ViewListMessage(positon: TPositonList);
 procedure ShowMessageDlg(NameMessage,TextMessage : string;
 TypeMesage :TMessageType;AddationalTextMessage : string='';TimeShow : Integer=5000);
 function    getFormOption : TForm;

implementation
uses UnitFormOptionMessage;
var MyMessageDialog :TMyMessageDialog;

function getFormOption : TForm;
  begin
      Result:= TFormOptionMessage.Create(Application);
  end;

procedure CreateDialog;
  begin
    if MyMessageDialog=nil then MyMessageDialog :=TMyMessageDialog.Create(Application);
  end;

procedure ViewListMessage(positon: TPositonList);
  begin
    CreateDialog; MyMessageDialog.ViewListMessage(positon);
  end;

procedure   ShowMessageDlg(NameMessage,TextMessage : string;
TypeMesage :TMessageType;AddationalTextMessage : string='';TimeShow : Integer=5000);
  begin
    CreateDialog;
    MyMessageDialog.ShowMessageDlg(NameMessage,TextMessage,TypeMesage,AddationalTextMessage,TimeShow);
  end;

constructor  TMyMessageDialog.Create(AOwner: TComponent);

  begin
   FormViewMessage   :=TFormViewMessage.Create(AOwner);
   DataModuleMessage :=TDataModuleMessage.Create(AOwner);
   FormViewMessage.setImageList(DataModuleMessage.ImageList);
   ThisAOwner:=AOwner;
   SystemParametersInfo(SPI_GETWORKAREA, 0, Addr(val), 0);
   if (val.Bottom div (HeightMesForm))>15 then maxCount:=6 else
    maxCount:=(val.Bottom div (HeightMesForm));
  end;

procedure TMyMessageDialog.ViewListMessage(positon: TPositonList);
  begin
    case positon of
      posLeft:
              begin
                with FormViewMessage do
                  begin
                     Left:=GetSystemMetrics(SM_CYFRAME);
                     top:=val.Bottom-Height-GetSystemMetrics(SM_CYFRAME);
                  end;
              end;
      posRight:
              begin
                with FormViewMessage do
                  begin
                     Left:=val.Right-Width-GetSystemMetrics(SM_CYFRAME);
                     top:=val.Bottom-Height-GetSystemMetrics(SM_CYFRAME);
                  end;
              end;
    end;
    FormViewMessage.Show;
  end;

function  TMyMessageDialog.searchFirstNilArray : Integer;
var res,i : Integer;
  begin
   res:=0;
    for i := 1 to maxCount do
     if arrayMessage[i]=false then  begin res:=i; Break; end;
   Result:=res;
  end;

procedure TMyMessageDialog.ShowMessageDlg(NameMessage: string; TextMessage1: string;
TypeMesage: TMessageType;addationalMessagetext : string=''; TimeShow: Integer = 5000);
 var FormMessage : TFormMessage;
     tempTimer : TTimer;
  begin

   countMessage:=searchFirstNilArray; {TextMessage1:=IntToStr(countMessage);  }
   if countMessage<>0 then Dec(countMessage); //else

   tempTimer := TTimer.Create(nil);
     with tempTimer do
      begin
        OnTimer:=TempTimerTimer;
        Interval:=getTimeShowForm;
        Enabled:=True;
        arrayMessage[countMessage+1]:=True;
        Tag:=countMessage;
      end;
   NameMessage:='Время ['+TimeToStr(now)+'] '+NameMessage;
   FormMessage :=TFormMessage.Create(ThisAOwner);
    with FormMessage do
      begin
        setTextMessage(TextMessage1);
        setNameMessage(NameMessage);
        setTimeShowForms(TimeShow);
        setAddationalMessage(addationalMessagetext);
        setImageList(DataModuleMessage.ImageList);
        setTopPosform(countMessage);
         case TypeMesage of
              myWarning      : setImageMessage(0);
              myError        : setImageMessage(1);
              myInformation  : setImageMessage(2);
              myConfirmation : setImageMessage(3);
         end;
        FormViewMessage.AddViewMessage(NameMessage,TextMessage1,getImageMessage);
        Show;
      end;
  end;

procedure TMyMessageDialog.TempTimerTimer(Sender: TObject);
  begin
    (Sender as TTimer).Enabled:=False;
     arrayMessage[(Sender as TTimer).Tag+1]:=false;
  end;
end.
