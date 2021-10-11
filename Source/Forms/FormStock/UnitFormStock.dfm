object FormStock: TFormStock
  Left = 0
  Top = 0
  Caption = 'FormStock'
  ClientHeight = 360
  ClientWidth = 808
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
  object DBGridEhStock: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 802
    Height = 293
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 5
    RowLines = 2
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEhStockKeyUp
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Stock'
        Footers = <>
        Layout = tlCenter
        Title.Caption = ' '#1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
        Width = 209
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Adress_Stock'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1040#1076#1088#1077#1089' '#1089#1082#1083#1072#1076#1072
        Width = 218
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanelbutton: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 802
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButtonNew: TsSpeedButton
      Left = 427
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonDelete: TsSpeedButton
      Left = 552
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonDeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 514
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonSAve: TsSpeedButton
      Left = 677
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonSAveClick
      Images = dm.sAlphaImageList32
      ImageIndex = 25
      Reflected = True
      ExplicitLeft = 511
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButton2: TsSpeedButton
      Left = 186
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton1: TsSpeedButton
      Left = 797
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 794
      ExplicitHeight = 35
    end
    object sSpeedButton3: TsSpeedButton
      Left = 547
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 543
      ExplicitHeight = 35
    end
    object sSpeedButton4: TsSpeedButton
      Left = 672
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 674
      ExplicitHeight = 35
    end
    object sSpeedButton5: TsSpeedButton
      Left = 422
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSliderread: TsSlider
      AlignWithMargins = True
      Left = 115
      Top = 18
      Width = 68
      Height = 19
      Margins.Top = 18
      Margins.Bottom = 18
      Align = alLeft
      AutoSize = True
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      ThumbIndexOff = 1
      ThumbIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = #1042#1099#1082#1083
      SliderCaptionOff = #1042#1082#1083
      SliderOn = False
      UseSymbols = True
      OnChanging = sSliderreadChanging
    end
  end
end
