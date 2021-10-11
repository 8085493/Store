object FormReportBank: TFormReportBank
  Left = 0
  Top = 0
  Caption = #1054#1090#1095#1105#1090' '#1087#1086' '#1082#1086#1085#1090#1088#1072#1075#1077#1085#1090#1072#1084
  ClientHeight = 562
  ClientWidth = 1008
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1024
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
  object DBGridEhBankReport: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 1002
    Height = 495
    Align = alClient
    DynProps = <>
    FooterRowCount = 1
    FrozenCols = 1
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
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footer.Alignment = taRightJustify
        Footer.Value = #1048#1090#1086#1075#1086':'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
        Width = 293
        WordWrap = True
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'summa_postuplenia'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1103' '#1090#1086#1074#1072#1088#1072
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'summa_rashoda'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1057#1091#1084#1084#1072' '#1088#1072#1089#1093#1086#1076#1072' '#1090#1086#1074#1072#1088#1072
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'summa_rasxod_bank'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1056#1072#1089#1093#1086#1076' '#1041#1072#1085#1082
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'summa_prixoda_bank'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1055#1088#1080#1093#1086#1076' '#1041#1072#1085#1082
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'DEBET'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1077#1073#1077#1090'('#1085#1072#1084' '#1076#1086#1083#1078#1085#1099')'
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'CREDIT'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1050#1088#1077#1076#1080#1090'('#1084#1099' '#1076#1086#1083#1078#1085#1099')'
        Width = 100
      end
      item
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUMMA'
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '### ### ##0.00'
        Footer.FieldName = 'SUMMA'
        Footer.Font.Charset = RUSSIAN_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'Courier New'
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtSum
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1048#1090#1086#1075#1086#1074#1072#1103' '#1089#1091#1084#1084#1072
        Title.Font.Charset = RUSSIAN_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -13
        Title.Font.Name = 'Courier New'
        Title.Font.Style = [fsBold]
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButton1: TsSpeedButton
      Left = 878
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 9
      Margins.Bottom = 9
      Align = alRight
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 884
    end
    object sSpeedButton2: TsSpeedButton
      Left = 753
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 9
      Margins.Bottom = 9
      Align = alRight
      Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
      Flat = True
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList32
      ImageIndex = 11
      Reflected = True
      ExplicitLeft = 744
    end
    object sSpeedButton3: TsSpeedButton
      Left = 624
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 90
      ExplicitHeight = 35
    end
    object sSpeedButton4: TsSpeedButton
      Left = 998
      Top = 0
      Width = 4
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 1008
    end
    object sSpeedButton5: TsSpeedButton
      Left = 873
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 950
      ExplicitHeight = 52
    end
    object sSpeedButton6: TsSpeedButton
      Left = 628
      Top = 0
      Width = 120
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1069#1082#1089#1087#1086#1088#1090' Word'
      Flat = True
      OnClick = sSpeedButton6Click
      Images = dm.sAlphaImageList32
      ImageIndex = 26
      Reflected = True
      ExplicitLeft = 649
    end
    object sSpeedButton7: TsSpeedButton
      Left = 748
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 753
    end
    object sRadioGroup1: TsRadioGroup
      Left = 0
      Top = 0
      Width = 358
      Height = 55
      Align = alLeft
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1085#1085#1099#1077
      TabOrder = 0
      Columns = 2
      ItemIndex = 0
      Items.Strings = (
        #1050#1088#1077#1076#1080#1090' ('#1084#1099' '#1076#1086#1083#1078#1085#1099')'
        #1044#1077#1073#1077#1090' ('#1085#1072#1084' '#1076#1086#1083#1078#1085#1099')')
      OnChange = sRadioGroup1Change
    end
  end
  object PrintDBGridEh1: TPrintDBGridEh
    DBGridEh = DBGridEhBankReport
    Options = [pghFitGridToPageWidth]
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
    Left = 664
    Top = 104
  end
end
