unit UnitFormMessage;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sLabel, ExtCtrls, acImage, acAlphaImageList, ImgList,
   acAlphaHints,UnitSettinMessage, acTitleBar,AdditionalFunctions;

type
  TFormMessage = class(TForm)
    imagemessage: TsImage;
    textMessageOld: TsLabelFX;
    TimerShowForms: TTimer;
    TimerEditbland: TTimer;
    //skinhint: TsHintManager;
    TimerStayOnTopform: TTimer;
    TimerAnimationLeft: TTimer;
    timerAnimationTop: TTimer;
    slphnts1: TsAlphaHints;
    sTitleBar: TsTitleBar;
    textMessage: TsLabel;
    AddationalMessage: TsLabel;
    procedure TimerShowFormsTimer(Sender: TObject);
    procedure TimerEditblandTimer(Sender: TObject);
    procedure textMessageOldMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure textMessageOldMouseLeave(Sender: TObject);
    procedure TimerStayOnTopTimer(Sender: TObject);
    procedure TimerStayOnTopformTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TimerAnimationLeftTimer(Sender: TObject);
    procedure timerAnimationTopTimer(Sender: TObject);
    procedure sTitleBarItems1Click(Sender: TObject);
    procedure sTitleBarItems2Click(Sender: TObject);
  private
    const LengthAnimationTop  =120;
          speedAnimationTop   =4;

    var   ImageList: TsAlphaImageList;
          BlendFormValues,countAT : Integer;
    { Private declarations }
  public
    procedure setTextMessage(TextMessage : string);
    procedure setNameMessage(NameMessage : string);
    procedure setImageMessage(NumberImage : Integer);
    procedure setTimeShowForms(TimeShow : Integer);
    procedure setImageList(ImageList: TsAlphaImageList);
    procedure setTopPosform (posTop : Integer);
    function  getImageMessage : Integer;
    procedure setAddationalMessage(TextMessage : string);
    procedure CreateParams(var Params: TCreateParams); override;
    { Public declarations }
  end;

implementation
uses UnitMyMessageDialog,UnitFormOptionMessage;
 var  val : TRect;
{$R *.dfm}
 procedure TFormMessage.CreateParams(var Params: TCreateParams);
  begin
    inherited CreateParams(Params);
    with Params do
      begin
       //ExStyle := ExStyle or WS_EX_APPWINDOW;
       //Style:=Style or WS_POPUP xor WS_DLGFRAME;
      end;
  end;

procedure TFormMessage.setTextMessage(TextMessage: string);
  begin
    Self.textMessage.Caption:=TextMessage;
    Self.textMessage.Hint:=TextMessage;
  end;

procedure TFormMessage.setNameMessage(NameMessage: string);
  begin
    Caption:=NameMessage;
    sTitleBar.Items[0].Caption:=NameMessage;
  end;

procedure TFormMessage.setImageMessage(NumberImage: Integer);
  begin
    imagemessage.ImageIndex:=NumberImage;
  end;

procedure TFormMessage.setAddationalMessage(TextMessage: string);
  begin
   Self.AddationalMessage.Visible:=CountString(textMessage);
   Self.AddationalMessage.Caption:=textMessage;
  end;

procedure TFormMessage.setTimeShowForms(TimeShow: Integer);
  begin
    // TimerShowForms.Interval:=TimeShow;
  end;

procedure TFormMessage.setTopPosform (posTop : Integer);
  begin
     top :=val.Bottom-Height-GetSystemMetrics(SM_CYFRAME)-((Height+5)*posTop);
  end;

procedure TFormMessage.sTitleBarItems1Click(Sender: TObject);
  begin
    ViewListMessage(posLeft);
  end;

procedure TFormMessage.sTitleBarItems2Click(Sender: TObject);
var
  FormOptionMessage: TFormOptionMessage;
  begin
    FormOptionMessage:=TFormOptionMessage.Create(Application);
    FormOptionMessage.ShowModal;
  end;

procedure TFormMessage.textMessageOldMouseLeave(Sender: TObject);
  begin
    //  BlendFormValues:=AlphaBlendValue;
    //  AlphaBlendValue:=BlendFormValues;
    //  TimerShowForms.Enabled:=not TimerShowForms.Enabled;
    //  TimerEditbland.Enabled:= not TimerEditbland.Enabled;
  end;

procedure TFormMessage.textMessageOldMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
  begin
    //  BlendFormValues:=AlphaBlendValue;   AlphaBlendValue:=255;
    //  TimerShowForms.Enabled:=not TimerShowForms.Enabled;
    //  TimerEditbland.Enabled:= not TimerEditbland.Enabled;
  end;

procedure TFormMessage.TimerEditblandTimer(Sender: TObject);
  begin
   try
    AlphaBlendValue:=AlphaBlendValue-1;
   except

   end;
  end;

procedure TFormMessage.TimerShowFormsTimer(Sender: TObject);
  begin
   try
    if getAnimationForm then
      timerAnimationTop.Enabled:=True
    else
    Close;
   except

   end;
  end;

procedure TFormMessage.TimerStayOnTopformTimer(Sender: TObject);
  begin
    // SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);
  end;

procedure TFormMessage.TimerStayOnTopTimer(Sender: TObject);
  begin
   SetWindowPos(Handle, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE or SWP_NOSIZE or SWP_NOACTIVATE);
  end;

procedure TFormMessage.TimerAnimationLeftTimer(Sender: TObject);
  begin
   try
    if getAnimationForm then
    if (val.Right-Width -GetSystemMetrics(SM_CYFRAME))<=Left then  Left:=Left-getSpeedAnimation;
   except

   end;
  end;

procedure TFormMessage.timerAnimationTopTimer(Sender: TObject);
  begin
   // if val.Bottom>top then Top:=Top+5 else Close;
   try
   if countAT<LengthAnimationTop then  begin Top:=Top+speedAnimationTop; countAT:=countAT+speedAnimationTop;end else Close;
   except

   end;
  end;

procedure TFormMessage.setImageList(ImageList: TsAlphaImageList);
  begin
    Self.ImageList:=ImageList; imagemessage.Images:=ImageList;
  end;
procedure TFormMessage.FormCreate(Sender: TObject);
  begin
    TimerEditbland.Enabled:=getEditBlendForm;
    TimerShowForms.Interval:=getTimeShowForm;
    SystemParametersInfo(SPI_GETWORKAREA, 0, Addr(val), 0);
    if  getAnimationForm then    Left:=val.Right//-Width -GetSystemMetrics(SM_CYFRAME);
    else
    Left:=val.Right-Width -GetSystemMetrics(SM_CYFRAME);
    top :=val.Bottom-Height-GetSystemMetrics(SM_CYFRAME);
  end;

function TFormMessage.getImageMessage : Integer;
  begin
    Result:=imagemessage.ImageIndex;
  end;

end.
