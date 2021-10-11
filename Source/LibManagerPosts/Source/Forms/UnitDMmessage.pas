unit UnitDMmessage;

interface

uses
  SysUtils, Classes, ImgList, Controls, acAlphaImageList;

type
  TDataModuleMessage = class(TDataModule)
    ImageList1: TsAlphaImageList;
    ImageList: TsAlphaImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{var
  DataModuleMessage: TDataModuleMessage;  }

implementation

{$R *.dfm}

end.
