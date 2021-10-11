object FormRegeditOverhead: TFormRegeditOverhead
  Left = 0
  Top = 0
  Caption = #1056#1077#1077#1089#1090#1088' '#1085#1072#1082#1083#1072#1076#1085#1099#1093
  ClientHeight = 462
  ClientWidth = 1008
  Color = clBtnFace
  Constraints.MinWidth = 1024
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Times New Roman'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object sSpeedButton1: TsSpeedButton
      Left = 247
      Top = 0
      Width = 156
      Height = 55
      Align = alLeft
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1086#1090#1095#1105#1090' '#1087#1086' '#1085#1072#1082#1083#1072#1076#1085#1099#1084
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 20
      Reflected = True
      ExplicitLeft = 189
    end
    object sSpeedButton2: TsSpeedButton
      Left = 715
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
      ExplicitLeft = 865
    end
    object sSpeedButton3: TsSpeedButton
      Left = 840
      Top = 0
      Width = 157
      Height = 55
      Align = alRight
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088#1077#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102
      Flat = True
      OnClick = sSpeedButton3Click
      Images = dm.sAlphaImageList32
      ImageIndex = 23
      Reflected = True
    end
    object sSpeedButton4: TsSpeedButton
      Left = 620
      Top = 0
      Width = 90
      Height = 55
      Align = alRight
      Caption = #1069#1057#1063#1060
      Flat = True
      ButtonStyle = tbsDropDown
      DropdownMenu = pm1
      Images = dm.sAlphaImageList32
      ImageIndex = 27
      Reflected = True
      WordWrap = False
      ExplicitLeft = 390
      ExplicitTop = 3
      ExplicitHeight = 24
    end
    object sSpeedButton5: TsSpeedButton
      Left = 403
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 333
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
    object sSpeedButton7: TsSpeedButton
      Left = 0
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
    end
    object sSpeedButton8: TsSpeedButton
      Left = 615
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 558
    end
    object sSpeedButton9: TsSpeedButton
      Left = 710
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 716
    end
    object sSpeedButton10: TsSpeedButton
      Left = 835
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 778
    end
    object sSpeedButton11: TsSpeedButton
      Left = 997
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 985
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
  object DBGridEhComingOverhead: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 1002
    Height = 395
    Align = alClient
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    RowHeight = 4
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 1
    TitleParams.Images = dm.ImageList16
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEhComingOverheadDblClick
    Columns = <
      item
        Alignment = taCenter
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Date_Overhead'
        Footer.Alignment = taRightJustify
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1072#1090#1072
        Width = 90
      end
      item
        Alignment = taCenter
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
        Alignment = taCenter
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'Number_Overhead'
        Footer.Alignment = taCenter
        Footer.FieldName = 'Number_Overhead'
        Footer.ValueType = fvtCount
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103'|'#1053#1086#1084#1077#1088
        Width = 90
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'price'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072'|'#1041#1077#1079' '#1053#1044#1057
        Width = 90
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price_nds'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'price_nds'
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072'|'#1053#1044#1057
        Width = 90
      end
      item
        AutoFitColWidth = False
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
        Title.Caption = #1057#1091#1084#1084#1072'|'#1048#1090#1086#1075#1086
        Width = 90
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
        WordWrap = True
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pm1: TPopupMenu
    Images = dm.ImageList16
    Left = 488
    Top = 48
    object n1: TMenuItem
      Caption = #1058#1077#1082#1091#1097#1080#1081
      ImageIndex = 0
      OnClick = n1Click
    end
    object N2: TMenuItem
      Caption = #1042#1089#1077' '#1074#1099#1073#1088#1072#1085#1085#1099#1077
      ImageIndex = 5
      OnClick = N2Click
    end
  end
end
