unit UnitFormPopDate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, sMaskEdit, sCustomComboEdit, sToolEdit, sGroupBox,
  Buttons, sBitBtn, sSpeedButton, ExtCtrls, sPanel,DateUtils;

type
  TFormPopDate = class(TForm)
    sPanel2: TsPanel;
    sSpeedButton5: TsSpeedButton;
    sSpeedButton6: TsSpeedButton;
    sSpeedButton7: TsSpeedButton;
    sSpeedButtonCvartal: TsSpeedButton;
    sSpeedButton1: TsSpeedButton;
    sSpeedButton4: TsSpeedButton;
    sDateEdit1: TsDateEdit;
    sDateEdit2: TsDateEdit;
    sSpeedButton3: TsSpeedButton;
    sSpeedButton2: TsSpeedButton;
    sSpeedButton9: TsSpeedButton;
    sSpeedButton10: TsSpeedButton;
    procedure sSpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sSpeedButton10Click(Sender: TObject);
    procedure sSpeedButton9Click(Sender: TObject);
    procedure sSpeedButtonCvartalClick(Sender: TObject);
  private
    { Private declarations }
  public
     OwnerControl: TControl;
     getStartDate,getEndDate : TDateTime;
    { Public declarations }
  end;

var
  FormPopDate: TFormPopDate;

implementation

uses UnitDM;

{$R *.dfm}
type
  TAccessControl = class(TControl)
  //  public
  end;
procedure TFormPopDate.FormCreate(Sender: TObject);
  begin
   sDateEdit1.Date:=now; sDateEdit2.Date:=Now;
   getStartDate:=sDateEdit1.Date;
   getEndDate  :=sDateEdit2.Date;
  end;

procedure TFormPopDate.sSpeedButton10Click(Sender: TObject);
  begin
      TAccessControl(OwnerControl).Text := sDateEdit1.Text + ' - ' + sDateEdit2.Text;
      getStartDate:=sDateEdit1.Date;
      getEndDate  :=sDateEdit2.Date;
      Close;
  end;

procedure TFormPopDate.sSpeedButton1Click(Sender: TObject);
  begin
    case TControl(Sender).Tag of
      0: TAccessControl(OwnerControl).Text :=
      DateTimeToStr(IncMonth(Date, -1)) + ' - ' + DateTimeToStr(Date);
      1: TAccessControl(OwnerControl).Text :=
      DateTimeToStr(Date - 7) + ' - ' + DateTimeToStr(Date);
      2: TAccessControl(OwnerControl).Text := DateTimeToStr(Date) + ' - ' + DateTimeToStr(Date + 7);
      3: TAccessControl(OwnerControl).Text := DateTimeToStr(Date) + ' - ' + DateTimeToStr(IncMonth(Date));
    end;
   // Close;
  end;

procedure TFormPopDate.sSpeedButtonCvartalClick(Sender: TObject);
var MyYear, MyMonth, MyDay : Word;
begin
 DecodeDate(now, MyYear, myMonth, MyDay);
 case TControl(Sender).Tag of
   1 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,1,1);
        sDateEdit2.Date:=EncodeDate(MyYear,3,DaysInAMonth(MyYear, 3));
       end;
   2 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,4,1);
        sDateEdit2.Date:=EncodeDate(MyYear,6,DaysInAMonth(MyYear, 6));
       end;
   3 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,7,1);
        sDateEdit2.Date:=EncodeDate(MyYear,9,DaysInAMonth(MyYear, 9));
       end;
   4 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,10,1);
        sDateEdit2.Date:=EncodeDate(MyYear,12,DaysInAMonth(MyYear, 12));
       end;
   5 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,MyMonth,1);
        sDateEdit2.Date:=EncodeDate(MyYear,MyMonth,DaysInAMonth(MyYear, MyMonth));
       end;
   6 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,MyMonth-1,1);
        sDateEdit2.Date:=EncodeDate(MyYear,MyMonth-1,DaysInAMonth(MyYear, MyMonth-1));
       end;
   7 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,1,1);
        sDateEdit2.Date:=EncodeDate(MyYear,6,DaysInAMonth(MyYear, 6));
       end;
   8 : begin
        sDateEdit1.Date:=EncodeDate(MyYear,7,1);
        sDateEdit2.Date:=EncodeDate(MyYear,12,DaysInAMonth(MyYear, 12));
       end;
 end;
 sSpeedButton10Click(self);
end;

procedure TFormPopDate.sSpeedButton9Click(Sender: TObject);
begin
  Close;
end;

end.
