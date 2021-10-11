object FromComingOverhead: TFromComingOverhead
  Left = 0
  Top = 0
  Caption = 'FromComingOverhead'
  ClientHeight = 551
  ClientWidth = 1035
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
  object DBGridEhComingOverhead: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 1029
    Height = 484
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowHeight = 4
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEhComingOverheadDblClick
    Columns = <
      item
        AutoFitColWidth = False
        CellButtons = <>
        Checkboxes = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Activ_Overhead'
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
        Title.Caption = #1055#1086#1076#1087#1080#1089#1072#1085
        Title.Orientation = tohVertical
        Width = 33
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Date_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 98
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'seria_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1057#1077#1088#1080#1103
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Number_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1053#1086#1084#1077#1088
        Width = 100
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
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072
        Width = 92
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
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1029
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object btn1: TsSpeedButton
      Left = 5
      Top = 0
      Width = 196
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Flat = True
      OnClick = btn1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
    end
    object sSpeedButton1: TsSpeedButton
      Left = 206
      Top = 0
      Width = 235
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 1
      Reflected = True
      ExplicitLeft = 190
    end
    object sSpeedButtonDelete: TsSpeedButton
      Left = 446
      Top = 0
      Width = 180
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Flat = True
      OnClick = sSpeedButtonDeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 395
      ExplicitTop = 6
      ExplicitHeight = 32
    end
    object sSpeedButtonUpdate: TsSpeedButton
      Left = 631
      Top = 0
      Width = 110
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
      ExplicitLeft = 641
    end
    object sSpeedButtonPrint: TsSpeedButton
      Left = 746
      Top = 0
      Width = 100
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = sSpeedButtonPrintClick
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 729
    end
    object sSpeedButton2: TsSpeedButton
      Left = 851
      Top = 0
      Width = 159
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1069#1082#1089#1087#1086#1088#1090' Html'
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList32
      ImageIndex = 3
      Reflected = True
      ExplicitLeft = 810
    end
    object sSpeedButton3: TsSpeedButton
      Left = 0
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitHeight = 38
    end
    object sSpeedButton4: TsSpeedButton
      Left = 441
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 440
      ExplicitHeight = 38
    end
    object sSpeedButton5: TsSpeedButton
      Left = 201
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 205
      ExplicitHeight = 38
    end
    object sSpeedButton6: TsSpeedButton
      Left = 626
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 580
    end
    object sSpeedButton7: TsSpeedButton
      Left = 1010
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 1028
    end
    object sSpeedButton8: TsSpeedButton
      Left = 741
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 589
    end
    object sSpeedButton9: TsSpeedButton
      Left = 846
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 734
      ExplicitHeight = 38
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
    DBGridEh = DBGridEhComingOverhead
    Options = [pghFitGridToPageWidth, pghRowAutoStretch, pghFitingByColWidths, pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageHeader.Font.Charset = DEFAULT_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -11
    PageHeader.Font.Name = 'Tahoma'
    PageHeader.Font.Style = []
    Units = MM
    Left = 240
    Top = 168
  end
end
