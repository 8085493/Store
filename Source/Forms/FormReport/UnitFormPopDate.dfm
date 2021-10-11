object FormPopDate: TFormPopDate
  Left = 486
  Top = 55
  BorderStyle = bsNone
  Caption = 'FormPopDate'
  ClientHeight = 154
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel2: TsPanel
    Left = 0
    Top = 0
    Width = 243
    Height = 154
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitWidth = 244
    ExplicitHeight = 159
    object sSpeedButton5: TsSpeedButton
      Tag = 4
      Left = 122
      Top = 26
      Width = 120
      Height = 25
      Caption = 'IV '#1050#1074#1072#1088#1090#1072#1083
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton6: TsSpeedButton
      Tag = 3
      Left = 2
      Top = 26
      Width = 120
      Height = 25
      Caption = 'III '#1050#1074#1072#1088#1090#1072#1083
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton7: TsSpeedButton
      Tag = 2
      Left = 122
      Top = 2
      Width = 120
      Height = 25
      Caption = 'II '#1050#1074#1072#1088#1090#1072#1083
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButtonCvartal: TsSpeedButton
      Tag = 1
      Left = 2
      Top = 2
      Width = 120
      Height = 25
      Caption = 'I '#1050#1074#1072#1088#1090#1072#1083
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton1: TsSpeedButton
      Tag = 5
      Left = 2
      Top = 50
      Width = 120
      Height = 25
      Caption = #1058#1077#1082#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton4: TsSpeedButton
      Tag = 6
      Left = 122
      Top = 50
      Width = 120
      Height = 25
      Caption = #1055#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1084#1077#1089#1103#1094
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton3: TsSpeedButton
      Tag = 7
      Left = 2
      Top = 74
      Width = 120
      Height = 25
      Caption = 'I '#1087#1086#1083#1091#1075#1086#1076#1080#1077
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton2: TsSpeedButton
      Tag = 8
      Left = 122
      Top = 74
      Width = 120
      Height = 25
      Caption = 'II '#1087#1086#1083#1091#1075#1086#1076#1080#1077
      OnClick = sSpeedButtonCvartalClick
    end
    object sSpeedButton9: TsSpeedButton
      Tag = 1
      Left = 122
      Top = 127
      Width = 120
      Height = 25
      Caption = #1054#1090#1084#1077#1085#1072
      OnClick = sSpeedButton9Click
      Images = dm.ImageList16
      ImageIndex = 11
    end
    object sSpeedButton10: TsSpeedButton
      Tag = 2
      Left = 2
      Top = 127
      Width = 120
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      OnClick = sSpeedButton10Click
      Images = dm.ImageList16
      ImageIndex = 0
    end
    object sDateEdit1: TsDateEdit
      AlignWithMargins = True
      Left = 42
      Top = 104
      Width = 80
      Height = 21
      Margins.Left = 40
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '  .  .    '
      BoundLabel.Active = True
      BoundLabel.Caption = #1054#1090':'
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Times New Roman'
      BoundLabel.Font.Style = []
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object sDateEdit2: TsDateEdit
      AlignWithMargins = True
      Left = 162
      Top = 102
      Width = 80
      Height = 21
      Margins.Left = 40
      AutoSize = False
      Color = clWhite
      EditMask = '!99/99/9999;1; '
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Times New Roman'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 1
      Text = '  .  .    '
      BoundLabel.Active = True
      BoundLabel.Caption = #1044#1086':'
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Times New Roman'
      BoundLabel.Font.Style = []
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
  end
end
