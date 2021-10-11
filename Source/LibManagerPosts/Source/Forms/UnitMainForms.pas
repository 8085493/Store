unit UnitMainForms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, Buttons, sSpeedButton, sScrollBox, ExtCtrls, acImage,
  StdCtrls, sLabel, sPanel, ImgList, acAlphaImageList, acPNG, sGroupBox,UnitFormOptionMessage;

type
  TFormViewMessage = class(TForm)
    ListViewMessage: TsScrollBox;
    PanelButton: TsPanel;
    optionButton: TsSpeedButton;
    lbl1: TsLabelFX;
    Imagebutton: TsAlphaImageList;
    procedure ListViewMessageMouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure ListViewMessageMouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure optionButtonClick(Sender: TObject);
  private
    const ScrollBarCount=15;
    var   ImageList: TsAlphaImageList;
    procedure MessageClick(Sender: TObject);
    procedure MessageMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
    { Private declarations }
  public
    procedure  setImageList(ImageList: TsAlphaImageList);
    procedure  AddViewMessage(NameMessage,textMessage : string; imageMessage : integer);
    {
     Public declarations }
  end;


implementation




{$R *.dfm}

procedure TFormViewMessage.MessageClick(Sender: TObject);
begin
  ListViewMessage.SetFocus;
end;
procedure TFormViewMessage.MessageMouseMove(Sender: TObject; Shift: TShiftState; X: Integer; Y: Integer);
begin
  ListViewMessage.SetFocus;
end;
procedure TFormViewMessage.optionButtonClick(Sender: TObject);
var
  FormOptionMessage: TFormOptionMessage;
begin
  FormOptionMessage:=TFormOptionMessage.Create(Application);
  FormOptionMessage.ShowModal;
end;

procedure TFormViewMessage.ListViewMessageMouseWheelDown(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
 ListViewMessage.VertScrollBar.Position:= ListViewMessage.VertScrollBar.Position+ScrollBarCount;
end;
procedure TFormViewMessage.setImageList(ImageList: TsAlphaImageList);
begin
  Self.ImageList:=ImageList;
end;
procedure TFormViewMessage.ListViewMessageMouseWheelUp(Sender: TObject;
  Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  ListViewMessage.VertScrollBar.Position:= ListViewMessage.VertScrollBar.Position-ScrollBarCount;
end;
procedure TFormViewMessage.AddViewMessage(NameMessage: string; textMessage: string; imageMessage: Integer);
var
 MainPanel : TsPanel; labelName,labelText : TsLabelFX; ImageMessag,ImageMessag2: TsImage;
begin

 MainPanel:=TsPanel.Create(nil);
 with MainPanel do
  begin
    Align:=alTop;
    Height:=80;
    ShowCaption:=False;   //BevelOuter:=bvNone;  BevelInner:=bvNone; BevelKind:=bkNone;
    Parent:=ListViewMessage;
  end;
 labelName := TsLabelFX.Create(nil);
  with labelName do
   begin
     Caption:=NameMessage;
     Alignment:=taCenter; Font.Style:=[fsBold,fsUnderline];
     Align:=alTop; Parent:=MainPanel; Show;
   end;
 ImageMessag:=TsImage.Create(nil);
 with ImageMessag do
   begin
     Images:=ImageList;
     ImageIndex:=imageMessage;
     Align:=alLeft; Parent:=MainPanel;
     Transparent:=true; Center:=True; Width:=60; Stretch:=true; Proportional:=true;
     OnMouseMove:=MessageMouseMove;
     Show;
   end;
 //
  {ImageMessag2:=TsImage.Create(nil);
 with ImageMessag2 do
   begin
     Images:=ImageList;
     ImageIndex:=imageMessage;
     Align:=alLeft; Parent:=dataPanel;
     Transparent:=true; Center:=True; Width:=79; Stretch:=true; Proportional:=true;
     Show;
   end;   }
 labelText := TsLabelFX.Create(nil);
  with labelText do
   begin
     Caption:=textMessage;     Hint:=textMessage; ShowHint:=True;
     Align:=alClient; Parent:=MainPanel; Show; {Alignment:=taCenter;} WordWrap:=True;
     Layout:=tlCenter;
     Font.Size:=12;
     OnClick:=MessageClick;  OnMouseMove:=MessageMouseMove;
   end;
 MainPanel.Show;
 ListViewMessage.VertScrollBar.Position:=0;
end;
end.
