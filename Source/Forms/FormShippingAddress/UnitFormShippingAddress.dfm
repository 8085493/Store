object FormShippingAddress: TFormShippingAddress
  Left = 0
  Top = 0
  Caption = #1040#1076#1088#1077#1089#1072' '#1076#1086#1089#1090#1072#1074#1082#1080
  ClientHeight = 362
  ClientWidth = 811
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
  object dbgridaddres: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 47
    Width = 805
    Height = 312
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    RowHeight = 1
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'shipping_address'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1072#1076#1088#1077#1089#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
        Width = 204
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Visible = False
        Width = 187
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 805
    Height = 38
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButton1: TsSpeedButton
      Left = 700
      Top = 0
      Width = 100
      Height = 38
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.ImageList16
      ImageIndex = 9
      Reflected = True
      ExplicitLeft = 771
      ExplicitTop = 6
      ExplicitHeight = 27
    end
    object sSpeedButton2: TsSpeedButton
      Left = 490
      Top = 0
      Width = 100
      Height = 38
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.ImageList16
      ImageIndex = 3
      Reflected = True
      ExplicitLeft = 509
      ExplicitTop = 6
      ExplicitHeight = 27
    end
    object sSpeedButton3: TsSpeedButton
      Left = 595
      Top = 0
      Width = 100
      Height = 38
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Flat = True
      OnClick = sSpeedButton3Click
      Images = dm.ImageList16
      ImageIndex = 26
      Reflected = True
      ExplicitLeft = 451
      ExplicitTop = 3
      ExplicitHeight = 27
    end
    object sSpeedButton4: TsSpeedButton
      Left = 590
      Top = 0
      Width = 5
      Height = 38
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 597
      ExplicitHeight = 33
    end
    object sSpeedButton5: TsSpeedButton
      Left = 800
      Top = 0
      Width = 5
      Height = 38
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 763
      ExplicitHeight = 33
    end
    object sSpeedButton6: TsSpeedButton
      Left = 485
      Top = 0
      Width = 5
      Height = 38
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
    end
    object sSpeedButton7: TsSpeedButton
      Left = 695
      Top = 0
      Width = 5
      Height = 38
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 701
      ExplicitHeight = 33
    end
    object sEditshipping_address: TsEdit
      AlignWithMargins = True
      Left = 110
      Top = 3
      Width = 372
      Height = 32
      Margins.Left = 110
      Align = alClient
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.Caption = #1042#1074#1077#1076#1080#1090#1077' '#1072#1076#1088#1077#1089
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = []
      ExplicitHeight = 29
    end
  end
end
