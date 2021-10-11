object FormMetrics: TFormMetrics
  Left = 0
  Top = 0
  Caption = #1045#1044#1045#1053#1048#1062#1040' '#1048#1047#1052#1045#1056#1045#1053#1048#1071
  ClientHeight = 348
  ClientWidth = 786
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
  object DBGridEhMetrics: TDBGridEh
    Tag = 1
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 780
    Height = 281
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    IndicatorOptions = [gioShowRowIndicatorEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ParentFont = False
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEhMetricsKeyUp
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_metrics'
        Footers = <>
        Title.Caption = #1045#1076#1077#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        Width = 274
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_okei'
        Footers = <>
        Title.Caption = #1050#1054#1044' '#1054#1050#1045#1048
        Width = 78
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanelbutton: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 780
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButtonNew: TsSpeedButton
      Left = 408
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
      ExplicitLeft = 406
    end
    object sSpeedButtondelete: TsSpeedButton
      Left = 532
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtondeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 286
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonSave: TsSpeedButton
      Left = 656
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonSaveClick
      Images = dm.sAlphaImageList32
      ImageIndex = 25
      Reflected = True
      ExplicitLeft = 353
      ExplicitTop = 5
      ExplicitHeight = 31
    end
    object sSpeedButton1: TsSpeedButton
      Left = 404
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 90
      ExplicitHeight = 35
    end
    object sSpeedButton2: TsSpeedButton
      Left = 528
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 214
      ExplicitHeight = 35
    end
    object sSpeedButton3: TsSpeedButton
      Left = 652
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 338
      ExplicitHeight = 35
    end
    object sSpeedButton4: TsSpeedButton
      Left = 776
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 462
      ExplicitHeight = 35
    end
  end
end
