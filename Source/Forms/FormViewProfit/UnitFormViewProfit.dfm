object FormViewProfit: TFormViewProfit
  Left = 0
  Top = 0
  Caption = #1054#1058#1063#1025#1058' '#1055#1054' '#1055#1056#1048#1041#1067#1051#1048
  ClientHeight = 359
  ClientWidth = 801
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEhReport: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 795
    Height = 292
    Align = alClient
    DynProps = <>
    FooterRowCount = 1
    FrozenCols = 4
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghExtendVertLines]
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Date_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 99
      end
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'seria_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1057#1077#1088#1080#1103
        Width = 50
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Number_Overhead'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1053#1086#1084#1077#1088
        Width = 84
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Width = 216
        WordWrap = True
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1058#1086#1074#1072#1088'|'#1053#1072#1079#1074#1072#1085#1080#1077
        Width = 219
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'count_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1058#1086#1074#1072#1088'|'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
        Width = 90
      end
      item
        AutoFitColWidth = False
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price_Goods'
        Footer.DisplayFormat = '### ### ##0.00'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1058#1086#1074#1072#1088'|'#1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080'('#1041#1045#1047' '#1053#1044#1057')'
        Width = 100
      end
      item
        AutoFitColWidth = False
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'OLD_PRICE'
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1058#1086#1074#1072#1088'|'#1062#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080' ('#1041#1045#1047' '#1053#1044#1057')'
        Width = 100
      end
      item
        AutoFitColWidth = False
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pribil'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'pribil'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1060#1080#1085#1072#1085#1089#1086#1074#1099#1081' '#1088#1077#1079#1091#1083#1100#1090#1072#1090
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 795
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 59
    object sSpeedButton1: TsSpeedButton
      Left = 545
      Top = 0
      Width = 120
      Height = 55
      Align = alRight
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 20
      Reflected = True
      ExplicitLeft = 539
    end
    object sSpeedButton2: TsSpeedButton
      Left = 670
      Top = 0
      Width = 120
      Height = 55
      Align = alRight
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 549
    end
    object sSpeedButton7: TsSpeedButton
      Left = 0
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
    end
    object sSpeedButton6: TsSpeedButton
      Left = 250
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 200
    end
    object sSpeedButton3: TsSpeedButton
      Left = 540
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 200
    end
    object sSpeedButton4: TsSpeedButton
      Left = 665
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 676
    end
    object sSpeedButton5: TsSpeedButton
      Left = 790
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 801
    end
    object sPopupBox1: TsPopupBox
      AlignWithMargins = True
      Left = 6
      Top = 15
      Width = 243
      Height = 25
      Margins.Left = 1
      Margins.Top = 15
      Margins.Right = 1
      Margins.Bottom = 15
      Align = alLeft
      Alignment = taCenter
      AutoSize = False
      CharCase = ecLowerCase
      TabOrder = 0
      OnKeyPress = sPopupBox1KeyPress
      CheckOnExit = True
      BoundLabel.Active = True
      BoundLabel.Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1099
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Times New Roman'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclTopLeft
      GlyphMode.Blend = 0
      GlyphMode.Grayed = False
      PopupForm = FormPopDate.Owner
      OnBeforePopup = sPopupBox1BeforePopup
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEhReport
    Options = [pghFitGridToPageWidth]
    Page.BottomMargin = 1.000000000000000000
    Page.LeftMargin = 1.000000000000000000
    Page.RightMargin = 1.000000000000000000
    Page.TopMargin = 1.000000000000000000
    PageFooter.Font.Charset = DEFAULT_CHARSET
    PageFooter.Font.Color = clWindowText
    PageFooter.Font.Height = -11
    PageFooter.Font.Name = 'Tahoma'
    PageFooter.Font.Style = []
    PageFooter.LineType = pcltSingleLine
    PageHeader.Font.Charset = RUSSIAN_CHARSET
    PageHeader.Font.Color = clWindowText
    PageHeader.Font.Height = -16
    PageHeader.Font.Name = 'Times New Roman'
    PageHeader.Font.Style = [fsBold]
    PageHeader.LineType = pcltSingleLine
    Units = MM
    Left = 352
    Top = 16
  end
end
