object FormInsertBankDocument: TFormInsertBankDocument
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1044#1054#1041#1040#1042#1048#1058#1068' '#1054#1055#1051#1040#1058#1059
  ClientHeight = 234
  ClientWidth = 521
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object type_payment: TsRadioGroup
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 515
    Height = 70
    Align = alTop
    Caption = #1042#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
    TabOrder = 0
    ItemIndex = 0
    Items.Strings = (
      #1055#1088#1080#1093#1086#1076' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074
      #1056#1072#1089#1093#1086#1076' '#1076#1077#1085#1077#1078#1085#1099#1093' '#1089#1088#1077#1076#1089#1090#1074)
  end
  object sGroupBox1: TsGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 79
    Width = 515
    Height = 152
    Align = alClient
    Caption = #1079#1072#1087#1086#1083#1085#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
    TabOrder = 1
    object sSpeedButton1: TsSpeedButton
      AlignWithMargins = True
      Left = 359
      Top = 120
      Width = 147
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      OnClick = sSpeedButton1Click
      Images = dm.ImageList16
      ImageIndex = 1
    end
    object sDate: TsDateEdit
      AlignWithMargins = True
      Left = 7
      Top = 35
      Width = 140
      Height = 21
      Margins.Top = 10
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  .  .    '
      BoundLabel.Active = True
      BoundLabel.Caption = #1044#1072#1090#1072
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclTopLeft
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
    end
    object editContactor: TsEdit
      AlignWithMargins = True
      Left = 7
      Top = 79
      Width = 346
      Height = 24
      Margins.Top = 15
      TabOrder = 1
      OnKeyUp = editContactorKeyUp
      BoundLabel.Active = True
      BoundLabel.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclTopLeft
    end
    object sEditSumma: TsEdit
      AlignWithMargins = True
      Left = 7
      Top = 121
      Width = 147
      Height = 24
      Margins.Top = 15
      TabOrder = 2
      BoundLabel.Active = True
      BoundLabel.Caption = #1057#1091#1084#1084#1072
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclTopLeft
    end
    object code_bank: TsEdit
      AlignWithMargins = True
      Left = 359
      Top = 79
      Width = 147
      Height = 24
      Margins.Top = 15
      TabOrder = 3
      BoundLabel.Active = True
      BoundLabel.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = [fsBold]
      BoundLabel.Layout = sclTopLeft
    end
  end
end
