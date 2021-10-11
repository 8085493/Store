object FormMessage: TFormMessage
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderIcons = []
  BorderStyle = bsToolWindow
  Caption = 'windows'
  ClientHeight = 79
  ClientWidth = 442
  Color = clWindow
  Ctl3D = False
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object imagemessage: TsImage
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 74
    Height = 59
    Align = alLeft
    Center = True
    Picture.Data = {07544269746D617000000000}
    Proportional = True
    Stretch = True
    Transparent = True
    ImageIndex = 0
    SkinData.SkinSection = 'CHECKBOX'
    ExplicitTop = -2
    ExplicitHeight = 75
  end
  object textMessageOld: TsLabelFX
    AlignWithMargins = True
    Left = 83
    Top = 3
    Width = 356
    Height = 59
    Align = alClient
    Alignment = taCenter
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = 'textMessageOld'
    ParentBiDiMode = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = True
    Touch.ParentTabletOptions = False
    Touch.TabletOptions = [toPressAndHold, toSmoothScrolling]
    Layout = tlCenter
    Visible = False
    WordWrap = True
    OnMouseMove = textMessageOldMouseMove
    OnMouseLeave = textMessageOldMouseLeave
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
    ExplicitLeft = 81
    ExplicitTop = 1
    ExplicitWidth = 360
    ExplicitHeight = 63
  end
  object textMessage: TsLabel
    Left = 80
    Top = 0
    Width = 362
    Height = 65
    Align = alClient
    Alignment = taCenter
    Caption = 'textMessage'
    ParentFont = False
    Layout = tlCenter
    WordWrap = True
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ExplicitWidth = 76
    ExplicitHeight = 19
  end
  object AddationalMessage: TsLabel
    Left = 0
    Top = 65
    Width = 442
    Height = 14
    Align = alBottom
    Alignment = taCenter
    Caption = #1082#1072#1082#1072#1103' '#1090#1086' '#1085#1077' '#1085#1091#1078#1085#1072#1103' '#1080#1085#1092#1086#1088#1084#1072#1094#1080#1103
    ParentColor = False
    ParentFont = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Times New Roman'
    Font.Style = []
    ExplicitWidth = 154
  end
  object TimerShowForms: TTimer
    Interval = 100
    OnTimer = TimerShowFormsTimer
    Left = 398
    Top = 65493
  end
  object TimerEditbland: TTimer
    Interval = 100
    OnTimer = TimerEditblandTimer
    Left = 102
    Top = 3
  end
  object TimerStayOnTopform: TTimer
    Interval = 1
    OnTimer = TimerStayOnTopformTimer
    Left = 180
    Top = 11
  end
  object TimerAnimationLeft: TTimer
    Interval = 1
    OnTimer = TimerAnimationLeftTimer
    Left = 320
    Top = 65493
  end
  object timerAnimationTop: TTimer
    Enabled = False
    Interval = 1
    OnTimer = timerAnimationTopTimer
    Left = 242
    Top = 65493
  end
  object slphnts1: TsAlphaHints
    Templates = <>
    SkinSection = 'HINT'
    Left = 86
    Top = 65493
  end
  object sTitleBar: TsTitleBar
    Items = <
      item
        Align = tbaCenter
        Caption = 'Caption'
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Index = 0
        Name = 'TacTitleBarItem'
        ShowHint = False
        Width = 48
      end
      item
        Caption = #1044#1080#1089#1087#1077#1090#1095#1077#1088
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Index = 1
        Name = 'TacTitleBarItem'
        ShowHint = False
        Width = 65
        OnClick = sTitleBarItems1Click
      end
      item
        Align = tbaRight
        Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Index = 2
        Name = 'TacTitleBarItem'
        ShowHint = False
        Width = 66
        OnClick = sTitleBarItems2Click
      end>
    ShowCaption = False
    Left = 164
    Top = 65493
  end
end
