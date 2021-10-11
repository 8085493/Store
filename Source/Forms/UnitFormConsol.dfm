object FormConsol: TFormConsol
  Left = 0
  Top = 0
  Caption = 'FormConsol'
  ClientHeight = 381
  ClientWidth = 637
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object sSplitter1: TsSplitter
    Left = 0
    Top = 287
    Width = 637
    Height = 6
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 43
    ExplicitWidth = 631
  end
  object DBGridEh1: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 631
    Height = 281
    Align = alClient
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    TabOrder = 0
    TitleParams.MultiTitle = True
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 296
    Width = 631
    Height = 82
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = -2
    ExplicitTop = 291
    object sSpeedButton1: TsSpeedButton
      Left = 0
      Top = 58
      Width = 631
      Height = 24
      Align = alBottom
      Caption = 'Execute'
      OnClick = sSpeedButton1Click
      ExplicitTop = 59
    end
    object QueryText: TsMemo
      Left = 0
      Top = 0
      Width = 631
      Height = 58
      Align = alClient
      TabOrder = 0
      ExplicitLeft = 104
      ExplicitTop = 8
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
end
