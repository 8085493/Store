object FormConnectServer: TFormConnectServer
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1055#1086#1076#1082#1083#1102#1095#1077#1085#1080#1077' '#1082' '#1089#1077#1088#1074#1077#1088#1091
  ClientHeight = 306
  ClientWidth = 239
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object version: TsLabelFX
    Left = 0
    Top = 282
    Width = 239
    Height = 24
    Align = alBottom
    Alignment = taCenter
    Caption = 'version'
    ParentFont = False
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = [fsBold]
    Angle = 0
    Shadow.OffsetKeeper.LeftTop = -3
    Shadow.OffsetKeeper.RightBottom = 5
    ExplicitWidth = 64
  end
  object groupDate: TsGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 20
    Width = 233
    Height = 259
    Margins.Top = 20
    Align = alClient
    Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1080' '#1089#1077#1088#1074#1077#1088#1072
    TabOrder = 0
    CaptionLayout = clTopCenter
    SkinData.SkinSection = 'GROUPBOX'
    object buttonConncet: TsSpeedButton
      AlignWithMargins = True
      Left = 5
      Top = 232
      Width = 223
      Height = 24
      Margins.Top = 1
      Margins.Bottom = 1
      Align = alBottom
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = buttonConncetClick
      SkinData.SkinSection = 'SPEEDBUTTON'
      Images = dm.sAlphaImageList16
      ImageIndex = 5
      ExplicitLeft = 7
      ExplicitTop = 187
    end
    object ip_server: TsEdit
      AlignWithMargins = True
      Left = 5
      Top = 39
      Width = 223
      Height = 24
      Margins.Bottom = 12
      Align = alBottom
      Color = clWhite
      Ctl3D = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1057#1077#1088#1074#1077#1088
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
    end
    object User_: TsEdit
      AlignWithMargins = True
      Left = 5
      Top = 78
      Width = 223
      Height = 24
      Margins.Bottom = 12
      Align = alBottom
      Color = clWhite
      Ctl3D = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
    end
    object pasword_: TsEdit
      AlignWithMargins = True
      Left = 5
      Top = 117
      Width = 223
      Height = 24
      Margins.Bottom = 12
      Align = alBottom
      Color = clWhite
      Ctl3D = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      PasswordChar = '*'
      TabOrder = 2
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1055#1072#1088#1086#1083#1100
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
    end
    object base_: TsComboBox
      AlignWithMargins = True
      Left = 5
      Top = 156
      Width = 223
      Height = 24
      Margins.Bottom = 12
      Align = alBottom
      Alignment = taLeftJustify
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1041#1072#1079#1072' '#1076#1072#1085#1085#1099#1093
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      SkinData.SkinSection = 'COMBOBOX'
      VerticalAlignment = taAlignTop
      Style = csSimple
      Color = clWhite
      Ctl3D = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      ItemIndex = -1
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 3
    end
    object port: TsEdit
      AlignWithMargins = True
      Left = 5
      Top = 195
      Width = 223
      Height = 24
      Margins.Bottom = 12
      Align = alBottom
      Color = clWhite
      Ctl3D = True
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Courier New'
      Font.Style = []
      NumbersOnly = True
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 4
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1055#1086#1088#1090
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
    end
  end
end