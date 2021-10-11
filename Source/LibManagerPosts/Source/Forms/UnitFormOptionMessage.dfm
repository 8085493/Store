object FormOptionMessage: TFormOptionMessage
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1076#1080#1089#1087#1077#1090#1095#1077#1088#1072' '#1091#1074#1077#1076#1086#1084#1083#1077#1085#1080#1081
  ClientHeight = 182
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object grp1: TsGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 240
    Height = 169
    Margins.Top = 10
    Align = alClient
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object lbl1: TsLabelFX
      Left = 7
      Top = 95
      Width = 118
      Height = 23
      Caption = #1057#1082#1086#1088#1086#1089#1090#1100' '#1072#1085#1080#1084#1072#1094#1080#1080
      Angle = 0
      Shadow.OffsetKeeper.LeftTop = -3
      Shadow.OffsetKeeper.RightBottom = 5
    end
    object timeShowForms: TsEdit
      Left = 8
      Top = 29
      Width = 78
      Height = 23
      Color = clWhite
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 4473924
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.Caption = #1042#1088#1077#1084#1103' '#1087#1086#1082#1072#1079#1072' '
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Times New Roman'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
    end
    object EditBlend: TsCheckBox
      Left = 8
      Top = 56
      Width = 172
      Height = 20
      Caption = #1055#1086#1089#1090#1077#1087#1077#1085#1085#1072#1103' '#1087#1088#1086#1079#1088#1072#1095#1085#1086#1089#1090#1100
      TabOrder = 1
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object Animation: TsCheckBox
      Left = 8
      Top = 75
      Width = 137
      Height = 20
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1072#1085#1080#1084#1072#1094#1080#1102
      TabOrder = 2
      SkinData.SkinSection = 'CHECKBOX'
      ImgChecked = 0
      ImgUnchecked = 0
    end
    object SpeedAnimation: TsTrackBar
      Left = 8
      Top = 116
      Width = 217
      Height = 45
      Max = 20
      Min = 5
      Position = 5
      PositionToolTip = ptRight
      TabOrder = 3
      ThumbLength = 10
      SkinData.SkinSection = 'TRACKBAR'
      BarOffsetV = 0
      BarOffsetH = 0
    end
  end
end
