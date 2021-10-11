object FormExpense_report: TFormExpense_report
  Left = 0
  Top = 0
  Caption = 'FormExpense_report'
  ClientHeight = 640
  ClientWidth = 1008
  Color = clWindow
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object sSpeedButton5: TsSpeedButton
    Left = 0
    Top = 61
    Width = 5
    Height = 579
    Align = alLeft
    ButtonStyle = tbsDivider
    ExplicitLeft = 540
    ExplicitTop = 0
    ExplicitHeight = 38
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    Color = clWindow
    ParentBackground = False
    TabOrder = 0
    object btn1: TsSpeedButton
      Left = 5
      Top = 0
      Width = 240
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1089#1095#1077#1090'-'#1087#1088#1086#1090#1086#1082#1086#1083
      Flat = True
      OnClick = btn1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitLeft = 250
      ExplicitTop = 6
      ExplicitHeight = 32
    end
    object sSpeedButton1: TsSpeedButton
      Left = 250
      Top = 0
      Width = 263
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1089#1095#1077#1090'-'#1087#1088#1086#1090#1086#1082#1086#1083
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 1
      Reflected = True
    end
    object sSpeedButtonDelete: TsSpeedButton
      Left = 518
      Top = 0
      Width = 240
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1089#1095#1077#1090'-'#1087#1088#1086#1090#1086#1082#1086#1083
      Flat = True
      OnClick = sSpeedButtonDeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 485
      ExplicitTop = 3
      ExplicitHeight = 32
    end
    object sSpeedButtonUpdate: TsSpeedButton
      Left = 763
      Top = 0
      Width = 124
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonUpdateClick
      Images = dm.sAlphaImageList32
      ImageIndex = 18
      Reflected = True
      ExplicitLeft = 740
    end
    object sSpeedButton3: TsSpeedButton
      Left = 245
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 239
      ExplicitHeight = 38
    end
    object sSpeedButton2: TsSpeedButton
      Left = 513
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton4: TsSpeedButton
      Left = 0
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 1
      ExplicitTop = 3
      ExplicitHeight = 38
    end
    object sSpeedButton6: TsSpeedButton
      Left = 887
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 749
      ExplicitHeight = 38
    end
    object sSpeedButton7: TsSpeedButton
      Left = 758
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 733
      ExplicitHeight = 38
    end
  end
  object DBGridEhExpense_report: TDBGridEh
    AlignWithMargins = True
    Left = 8
    Top = 64
    Width = 997
    Height = 573
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    FixedColor = clWindow
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowDetailPanel.Color = clBtnFace
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 1
    TitleParams.FillStyle = cfstSolidEh
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEhExpense_reportDblClick
    Columns = <
      item
        AutoFitColWidth = False
        CellButtons = <>
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Activ_expense_report'
        Footers = <>
        ImageList = dm.chechkedList
        KeyList.Strings = (
          'True'
          'False'
          '0'
          '1'
          '-1')
        Layout = tlCenter
        ReadOnly = True
        Title.Caption = #1069#1082#1089#1087'.'
        Title.Orientation = tohVertical
        Width = 33
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_expense_report'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 98
        WordWrap = True
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'number_expense_report'
        Footer.Alignment = taCenter
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footer.WordWrap = True
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1086#1084#1077#1088' '#1087#1088#1086#1090#1086#1082#1086#1083#1072
        Width = 83
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'all_price'
        Footer.Alignment = taCenter
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'all_price'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
        Width = 92
        WordWrap = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 151
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UNP'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1059#1053#1055
        Width = 100
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OKPO'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1054#1050#1055#1054
        Width = 100
        WordWrap = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mailing_address'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
        Width = 133
        WordWrap = True
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
