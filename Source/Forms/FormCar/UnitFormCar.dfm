object FormCar: TFormCar
  Left = 0
  Top = 0
  Caption = 'FormCar'
  ClientHeight = 372
  ClientWidth = 845
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEhCar: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 839
    Height = 305
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEhCarKeyUp
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Car'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1052#1072#1088#1082#1072' '#1040#1074#1090#1086
        Width = 212
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Number_Car'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1043#1086#1089'. '#1085#1086#1084#1077#1088
        Width = 131
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Owner_Car'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1042#1083#1072#1076#1077#1083#1077#1094
        Width = 120
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Driver_Car'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1042#1086#1076#1080#1090#1077#1083#1100
        Width = 120
      end
      item
        ButtonStyle = cbsEllipsis
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Width = 147
        WordWrap = True
        OnEditButtonClick = DBGridEhCarColumns4EditButtonClick
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanelbutton: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 839
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButtonNew: TsSpeedButton
      Left = 464
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonNewClick
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonDelete: TsSpeedButton
      Left = 589
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
      ExplicitLeft = 495
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonSAve: TsSpeedButton
      Left = 714
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
      ExplicitLeft = 572
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
      Left = 709
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 711
      ExplicitHeight = 35
    end
    object sSpeedButton3: TsSpeedButton
      Left = 834
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 831
      ExplicitHeight = 35
    end
    object sSpeedButton4: TsSpeedButton
      Left = 459
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton5: TsSpeedButton
      Left = 584
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 580
      ExplicitHeight = 35
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
