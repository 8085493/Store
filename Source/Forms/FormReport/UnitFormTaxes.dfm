object FormTaxes: TFormTaxes
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1105#1090' '#1053#1044#1057
  ClientHeight = 462
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
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
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 978
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -3
    ExplicitTop = -3
    ExplicitWidth = 788
    object sSpeedButton1: TsSpeedButton
      Left = 728
      Top = 0
      Width = 120
      Height = 55
      Align = alRight
      Caption = #1057#1086#1079#1076#1072#1090#1100
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 20
      ExplicitLeft = 508
      ExplicitTop = 21
      ExplicitHeight = 24
    end
    object sSpeedButton2: TsSpeedButton
      Left = 853
      Top = 0
      Width = 120
      Height = 55
      Align = alRight
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      ExplicitLeft = 648
      ExplicitTop = 21
      ExplicitHeight = 24
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
      Left = 242
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 200
    end
    object sSpeedButton9: TsSpeedButton
      Left = 848
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 663
    end
    object sSpeedButton3: TsSpeedButton
      Left = 723
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 716
    end
    object sSpeedButton4: TsSpeedButton
      Left = 973
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 920
      ExplicitTop = -3
    end
    object sPopupBox1: TsPopupBox
      AlignWithMargins = True
      Left = 6
      Top = 15
      Width = 235
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
  object DBGridEhTaxesReport: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 978
    Height = 395
    Align = alClient
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghFooter3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghDialogFind, dghRecordMoving, dghShowRecNo, dghColumnResize, dghExtendVertLines]
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
        Width = 212
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'count_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1083'-'#1074#1086' '#1090#1086#1074#1072#1088#1072
        Width = 66
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price_Goods_POKUPKA'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1087#1086#1082#1091#1087#1082#1080' ('#1041#1045#1047' '#1053#1044#1057')'
        Width = 80
      end
      item
        DisplayFormat = '### ###%'
        DynProps = <>
        EditButtons = <>
        FieldName = 'NDS_POKUPKA'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1044#1057' ('#1087#1086#1082#1091#1087#1082#1072')'
        Width = 80
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Price_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080' ('#1041#1045#1047' '#1053#1044#1057')'
        Width = 80
      end
      item
        DisplayFormat = '### ###%'
        DynProps = <>
        EditButtons = <>
        FieldName = 'NDS'
        Footer.Alignment = taRightJustify
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1044#1057' ('#1087#1088#1086#1076#1072#1078#1072')'
        Width = 80
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'POKUPKA'
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'POKUPKA'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1086#1090' '#1087#1086#1082#1091#1087#1082#1080
        Width = 80
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'PRODAJA'
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'PRODAJA'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057' '#1086#1090' '#1087#1088#1086#1078#1076#1072#1078#1080
        Width = 80
      end
      item
        Alignment = taRightJustify
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'RESULTE'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.Value = 'RESULTE'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1048#1090#1086#1075#1086
        Width = 80
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEhTaxesReport
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
    Left = 408
    Top = 120
  end
end
