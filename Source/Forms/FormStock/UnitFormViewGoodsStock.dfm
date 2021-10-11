object FormViewGoodsStock: TFormViewGoodsStock
  Left = 0
  Top = 0
  Caption = 'FormViewGoodsStock'
  ClientHeight = 520
  ClientWidth = 1016
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEhGoodsStock: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 1010
    Height = 453
    Align = alClient
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghTraceColSizing, dghIncSearch, dghPreferIncSearch, dghDblClickOptimizeColWidth, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 1
    TitleParams.FillStyle = cfstThemedEh
    TitleParams.MultiTitle = True
    TitleParams.SortMarkerStyle = smst3DFrameEh
    TreeViewParams.GlyphStyle = tvgsThemedEh
    OnColumnMoved = DBGridEhGoodsStockColumnMoved
    OnDblClick = DBGridEhGoodsStockDblClick
    OnKeyUp = DBGridEhGoodsStockKeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Date_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 90
      end
      item
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
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1053#1086#1084#1077#1088' '
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
        Width = 242
        WordWrap = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Namestock'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1082#1083#1072#1076
        Visible = False
        Width = 206
        WordWrap = True
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'count_Goods'
        Footer.Alignment = taRightJustify
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077
        Width = 80
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### #### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price_goods_not_nds'
        Footer.Alignment = taRightJustify
        Footer.Value = 'x'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080' ('#1041#1045#1047' '#1053#1044#1057')'
        Width = 80
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price_Goods'
        Footer.Alignment = taRightJustify
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080' ('#1057' '#1053#1044#1057')'
        Width = 80
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'all_price'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'all_price'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' ('#1055#1088#1086#1076#1072#1078#1072')'
        Width = 110
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'all_start_price'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'all_start_price'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' ('#1047#1072#1082#1091#1087#1086#1095#1085#1072#1103')'
        Width = 110
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Selling_price'
        Footer.Alignment = taRightJustify
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' ('#1041#1045#1047' '#1053#1044#1057')'
        Width = 80
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price_and_nds'
        Footer.Alignment = taRightJustify
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' ('#1057' '#1053#1044#1057' 20%)'
        Visible = False
        Width = 80
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price_all_and_nds'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100' c '#1053#1044#1057' 20% ('#1055#1088#1086#1076#1072#1078#1072')'
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1010
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object sSpeedButton1: TsSpeedButton
      Left = 894
      Top = 0
      Width = 111
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 18
      Reflected = True
      ExplicitLeft = 896
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    object buttonPrint: TsSpeedButton
      Left = 186
      Top = 0
      Width = 110
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = buttonPrintClick
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 153
      ExplicitTop = 6
      ExplicitHeight = 32
    end
    object sSpeedButton2: TsSpeedButton
      Left = 301
      Top = 0
      Width = 186
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1054#1090#1082#1088#1099#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList32
      ImageIndex = 23
      Reflected = True
      ExplicitLeft = 119
      ExplicitTop = 2
      ExplicitHeight = 30
    end
    object sSpeedButton3: TsSpeedButton
      Left = 5
      Top = 0
      Width = 176
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1069#1082#1089#1087#1086#1088#1090' Excel'
      Flat = True
      OnClick = sSpeedButton3Click
      Images = dm.sAlphaImageList32
      ImageIndex = 11
      Reflected = True
      ExplicitLeft = 113
      ExplicitTop = 3
      ExplicitHeight = 32
    end
    object sSpeedButton4: TsSpeedButton
      Left = 1005
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 1008
      ExplicitHeight = 38
    end
    object sSpeedButton5: TsSpeedButton
      Left = 296
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 292
      ExplicitHeight = 38
    end
    object sSpeedButton6: TsSpeedButton
      Left = 181
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 177
      ExplicitHeight = 38
    end
    object sSpeedButton7: TsSpeedButton
      Left = 0
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 1
      ExplicitHeight = 38
    end
    object sSpeedButton8: TsSpeedButton
      Left = 487
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton9: TsSpeedButton
      Left = 889
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 895
      ExplicitHeight = 38
    end
    object newPrice: TsEdit
      AlignWithMargins = True
      Left = 814
      Top = 15
      Width = 74
      Height = 25
      Margins.Left = 1
      Margins.Top = 15
      Margins.Right = 1
      Margins.Bottom = 15
      Align = alRight
      Alignment = taCenter
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1053#1086#1074#1072#1103' '#1094#1077#1085#1072
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -16
      BoundLabel.Font.Name = 'Courier New'
      BoundLabel.Font.Style = [fsBold]
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
    DBGridEh = DBGridEhGoodsStock
    Options = [pghFitGridToPageWidth, pghRowAutoStretch, pghFitingByColWidths, pghOptimalColWidths]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
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
    Left = 565
    Top = 77
  end
end
