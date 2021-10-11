object FormNewExpense_report: TFormNewExpense_report
  Left = 0
  Top = 0
  Caption = #1057#1063#1025#1058'-'#1055#1056#1054#1058#1054#1050#1054#1051
  ClientHeight = 634
  ClientWidth = 966
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 700
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object sPanel1: TsPanel
    Left = 0
    Top = 86
    Width = 966
    Height = 548
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object sPanel2: TsPanel
      AlignWithMargins = True
      Left = 3
      Top = 515
      Width = 960
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object sSpeedButton1: TsSpeedButton
        Left = 5
        Top = 0
        Width = 110
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Align = alLeft
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        Flat = True
        OnClick = sSpeedButton1Click
        Images = dm.ImageList16
        ImageIndex = 3
        Reflected = True
        ExplicitLeft = 3
        ExplicitTop = 3
        ExplicitHeight = 35
      end
      object sSpeedButton3: TsSpeedButton
        Left = 120
        Top = 0
        Width = 110
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Align = alLeft
        Caption = #1059#1076#1072#1083#1080#1090#1100
        Flat = True
        OnClick = sSpeedButton3Click
        Images = dm.ImageList16
        ImageIndex = 9
        Reflected = True
        ExplicitLeft = 187
        ExplicitTop = 3
        ExplicitHeight = 24
      end
      object sSpeedButton4: TsSpeedButton
        Left = 235
        Top = 0
        Width = 110
        Height = 30
        Margins.Left = 1
        Margins.Right = 1
        Align = alLeft
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        Flat = True
        Visible = False
        Reflected = True
        ExplicitLeft = 315
        ExplicitTop = 3
        ExplicitHeight = 24
      end
      object sSpeedButton2: TsSpeedButton
        Left = 579
        Top = 0
        Width = 162
        Height = 30
        Align = alRight
        Caption = #1057#1095#1105#1090' '#1087#1088#1086#1090#1086#1082#1086#1083
        Flat = True
        OnClick = sSpeedButton2Click
        Images = dm.ImageList16
        ImageIndex = 16
        Reflected = True
        ExplicitLeft = 442
      end
      object sSpeedButton5: TsSpeedButton
        Left = 746
        Top = 0
        Width = 209
        Height = 30
        Align = alRight
        Caption = #1055#1077#1088#1077#1085#1077#1089#1090#1080' '#1074' '#1088#1072#1089#1093#1086#1076
        Flat = True
        OnClick = sSpeedButton5Click
        Images = dm.ImageList16
        ImageIndex = 20
        Reflected = True
        ExplicitLeft = 324
        ExplicitHeight = 24
      end
      object sSpeedButton6: TsSpeedButton
        Left = 345
        Top = 0
        Width = 5
        Height = 30
        Align = alLeft
        Visible = False
        ButtonStyle = tbsDivider
        ExplicitLeft = 405
        ExplicitHeight = 35
      end
      object sSpeedButton7: TsSpeedButton
        Left = 115
        Top = 0
        Width = 5
        Height = 30
        Align = alLeft
        ButtonStyle = tbsDivider
        ExplicitLeft = 111
      end
      object sSpeedButton8: TsSpeedButton
        Left = 0
        Top = 0
        Width = 5
        Height = 30
        Align = alLeft
        ButtonStyle = tbsDivider
        ExplicitLeft = -3
      end
      object sSpeedButton9: TsSpeedButton
        Left = 230
        Top = 0
        Width = 5
        Height = 30
        Align = alLeft
        ButtonStyle = tbsDivider
        ExplicitLeft = 226
      end
      object sSpeedButton10: TsSpeedButton
        Left = 955
        Top = 0
        Width = 5
        Height = 30
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 817
      end
      object sSpeedButton11: TsSpeedButton
        Left = 574
        Top = 0
        Width = 5
        Height = 30
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 599
      end
      object sSpeedButton12: TsSpeedButton
        Left = 741
        Top = 0
        Width = 5
        Height = 30
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 646
      end
    end
    object DBGridEhDataOverhead: TDBGridEh
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 960
      Height = 506
      Align = alClient
      AutoFitColWidths = True
      DynProps = <>
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      FooterRowCount = 1
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      OptionsEh = [dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      ParentFont = False
      RowLines = 2
      SumList.Active = True
      TabOrder = 1
      TitleParams.FillStyle = cfstSolidEh
      TitleParams.MultiTitle = True
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name_Goods'
          Footer.Alignment = taRightJustify
          Footer.Value = #1048#1090#1086#1075#1086':'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
          Width = 261
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Name_metrics'
          Footer.Alignment = taCenter
          Footer.Value = #1093
          Footer.ValueType = fvtStaticText
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1045#1076'. '#1048#1079#1084'.'
          Width = 59
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'count_Goods'
          Footer.Alignment = taCenter
          Footer.ValueType = fvtSum
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1050#1086#1083'-'#1074#1086
          Width = 65
          WordWrap = True
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DisplayFormat = '### ### ##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'Selling_price'
          Footer.Alignment = taCenter
          Footer.Value = #1093
          Footer.ValueType = fvtStaticText
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1062#1077#1085#1072', '#1088#1091#1073'. '#1082#1086#1087'.'
          Width = 69
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DisplayFormat = '### ### ##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'price'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '### ### ##0.00'
          Footer.FieldName = 'price'
          Footer.ValueType = fvtSum
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073'. '#1082#1086#1087'.'
          Width = 88
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'NDS'
          Footer.Alignment = taCenter
          Footer.Value = #1093
          Footer.ValueType = fvtStaticText
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1057#1090#1072#1074#1082#1072' '#1053#1044#1057', %'
          Width = 60
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DisplayFormat = '### ### ##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'price_nds'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '### ### ##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057', '#1088#1091#1073'. '#1082#1086#1087'.'
        end
        item
          Alignment = taCenter
          AutoFitColWidth = False
          CellButtons = <>
          DisplayFormat = '### ### ##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'all_price'
          Footer.Alignment = taCenter
          Footer.DisplayFormat = '### ### ##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Layout = tlCenter
          Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'. '#1082#1086#1087'.'
          Width = 86
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object sPanel3: TsPanel
    AlignWithMargins = True
    Left = 5
    Top = 5
    Width = 956
    Height = 76
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Contractor: TsEdit
      AlignWithMargins = True
      Left = 130
      Top = 3
      Width = 823
      Height = 26
      Margins.Left = 130
      Align = alTop
      TabOrder = 0
      OnKeyUp = ContractorKeyUp
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Trebuchet MS'
      BoundLabel.Font.Style = []
    end
    object sDateEdit1: TsDateEdit
      AlignWithMargins = True
      Left = 130
      Top = 35
      Width = 326
      Height = 30
      Margins.Left = 130
      Margins.Right = 500
      Align = alTop
      AutoSize = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  .  .    '
      OnChange = sDateEdit1Change
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1044#1072#1090#1072
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Trebuchet MS'
      BoundLabel.Font.Style = []
      GlyphMode.Grayed = False
      GlyphMode.Blend = 0
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
    DBGridEh = DBGridEhDataOverhead
    Options = [pghFitGridToPageWidth, pghRowAutoStretch, pghFitingByColWidths]
    Page.BottomMargin = 1.500000000000000000
    Page.LeftMargin = 3.000000000000000000
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
    Left = 376
    Top = 120
    BeforeGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313034397B5C666F6E7474626C7B5C66305C666D6F6465726E5C66
      707271315C66636861727365743230347B5C2A5C666E616D6520436F75726965
      72204E65773B7D436F7572696572204E6577204359523B7D7B5C66315C66726F
      6D616E5C66707271325C66636861727365743230347B5C2A5C666E616D652054
      696D6573204E657720526F6D616E3B7D54696D6573204E657720526F6D616E20
      4359523B7D7B5C66325C666E696C5C6663686172736574323034205461686F6D
      613B7D7D0D0A5C766965776B696E64345C7563315C706172645C73613230305C
      736C3237365C736C6D756C74315C71635C66305C667332325C2764315C276437
      5C2761385C2764322D5C2763665C2764305C2763655C2764325C2763655C2763
      615C2763655C2763625C7061720D0A5C2764665C2765325C2765625C2766665C
      2765355C2766325C2766315C276666205C2765665C2766305C2765655C276632
      5C2765655C2765615C2765655C2765625C2765655C276563205C2766315C2765
      655C2765335C2765625C2765305C2766315C2765655C2765325C2765305C2765
      645C2765385C276666205C2766315C2765325C2765655C2765315C2765655C27
      65345C2765645C2766625C276635205C2765655C2766325C2765665C2766335C
      2766315C2765615C2765645C2766625C276635205C2766365C2765355C276564
      205C2765645C276530205C2766325C2765655C2765325C2765305C2766305C27
      666220285C2765665C2766305C2765655C2765345C2766335C2765615C276636
      5C2765385C276665295C7061720D0A5C276239205C6C616E6731303333206E75
      6D62205C6C616E67313034395C2765655C276632205C6C616E67313033332064
      6174655C6C616E67313034395C7061720D0A5C706172645C73613230305C736C
      3237365C736C6D756C74315C2763665C2765655C2766315C2766325C2765305C
      2765325C2766395C2765385C2765613A5C7061720D0A5C2763305C2765345C27
      66305C2765355C2766313A5C7061720D0A5C2763665C2765625C2765305C2766
      325C2765355C2765625C2766635C2766395C2765385C27656120285C2765375C
      2765305C2765615C2765305C2765375C2766375C2765385C276561293A5C6631
      5C7061720D0A5C706172645C66325C667331365C7061720D0A7D0D0A00}
    AfterGridText_Data = {
      7B5C727466315C616E73695C616E7369637067313235315C64656666305C6465
      666C616E67313034397B5C666F6E7474626C7B5C66305C666D6F6465726E5C66
      707271315C66636861727365743230347B5C2A5C666E616D6520436F75726965
      72204E65773B7D436F7572696572204E6577204359523B7D7B5C66315C666E69
      6C5C6663686172736574323034205461686F6D613B7D7D0D0A5C766965776B69
      6E64345C7563315C706172645C73613230305C736C3237365C736C6D756C7431
      5C66305C667332325C7061720D0A5C2763385C2766325C2765655C2765335C27
      6565205C276561205C2765655C2765665C2765625C2765305C2766325C276535
      3A5C7061720D0A5C2765322E205C2766322E5C2766372E205C2763645C276334
      5C2764313A205C7061720D0A5C2763325C2763645C2763385C2763635C276330
      5C2763645C2763385C2763352121205C2764315C2766375C2762385C27663220
      5C2765345C2765355C2765395C2766315C2766325C2765325C2765385C276632
      5C2765355C2765625C2765355C276564205C276532205C2766325C2765355C27
      66375C2765355C2765645C2765385C2765382035205C2765315C2765305C2765
      645C2765615C2765655C2765325C2766315C2765615C2765385C276635205C27
      65345C2765645C2765355C2765392E5C7061720D0A5C2763665C2766305C2765
      38205C2765665C2765655C2765625C2766335C2766375C2765355C2765645C27
      65385C276538205C2766325C2765655C2765325C2765305C2766305C27653020
      205C2765645C2765355C2765655C2765315C2766355C2765655C2765345C2765
      385C2765635C2765655C7061720D0A5C706172645C66692D3336305C6C693732
      305C73613230305C736C3237365C736C6D756C743120312E5C7461625C276338
      5C2765635C2765355C2766325C276663205C2765665C2766305C276538205C27
      66315C2765355C2765315C2765353A205C2765665C2765655C2765345C276566
      5C2765385C2766315C2765305C2765645C2765645C2766625C276539205C2766
      645C2765615C2765375C2765355C2765635C2765665C2765625C2766665C2766
      30205C2766315C2766375C2762385C2766325C2765302D5C2765665C2766305C
      2765655C2766325C2765655C2765615C2765655C2765625C2765302C205C2765
      345C2765655C2765325C2765355C2766305C2765355C2765645C2765645C2765
      655C2766315C2766325C2766635C7061720D0A322E5C7461625C2763375C2765
      645C2765305C2766325C276663205C2764335C2763645C276364205C27653820
      5C2763655C2763615C2763665C2763655C7061720D0A5C706172645C66693730
      385C73613230305C736C3237365C736C6D756C74315C2763665C2763655C2764
      315C2764325C2763305C2763325C2764395C2763385C2763615C7461625C7461
      625C7461625C7461625C7461625C7461625C7461625C2763665C2763305C2763
      615C2764335C2763665C2763305C2764325C2763355C2763625C2764635C7461
      625C7061720D0A5C70617264205F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5C7461625C7461625C7461625C74616220205F5F5F5F5F5F5F5F5F5F5F
      5F5F5F5F5F5F5F5F5F5F5F5C7061720D0A5C706172645C66693730385C6C6937
      30385C2763632E5C2763662E205C7461625C7461625C7461625C7461625C7461
      625C7461625C7461625C7461625C2763632E5C2763662E5C7061720D0A5C7061
      72645C66315C667331365C7061720D0A7D0D0A00}
  end
  object frxReport: TfrxReport
    Version = '4.15'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbNoClose, pbNoFullScreen, pbNoEmail]
    PreviewOptions.ShowCaptions = True
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmWholePage
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44479.538037500000000000
    ReportOptions.LastChange = 44479.821809560190000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 408
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDatasetInfo'
      end
      item
        DataSet = frxDBDatasetxpense_report
        DataSetName = 'frxDBDatasetxpenseReport'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'InfoMainContractor'
        Value = Null
      end
      item
        Name = 'infoNumber'
        Value = Null
      end
      item
        Name = 'all_money'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 22.677180000000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Child = frxReport.Child3
      end
      object Child1: TfrxChild
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 37.795300000000000000
        ParentFont = False
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo26: TfrxMemoView
          Top = 3.779530000000022000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '[frxDBDatasetInfo."InfoMainContractor"]')
        end
        object Memo27: TfrxMemoView
          Left = 370.393940000000000000
          Top = 3.779530000000022000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Memo.UTF8W = (
            '[frxDBDatasetInfo."buyer"]')
        end
      end
      object Header1: TfrxHeader
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 41.574830000000000000
        ParentFont = False
        Top = 355.275820000000000000
        Width = 740.409927000000000000
        Stretched = True
        object Memo1: TfrxMemoView
          Width = 204.094620000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072)
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 204.094620000000000000
          Width = 56.692950000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1045#1076'. '#1080#1079#1084'.')
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 260.787570000000000000
          Width = 64.252010000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1086#1083'-'#1074#1086)
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073'. '#1082#1086#1087'.')
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 325.039580000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072', '#1088#1091#1073'. '#1082#1086#1087'.')
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 480.000310000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1072#1074#1082#1072' '#1053#1044#1057', %')
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          Left = 549.031850000000000000
          Width = 90.708720000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1091#1084#1084#1072' '#1053#1044#1057', '#1088#1091#1073'. '#1082#1086#1087'.')
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          Left = 640.520100000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073'. '#1082#1086#1087'.')
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 45.354360000000000000
        ParentFont = False
        Top = 419.527830000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDatasetxpense_report
        DataSetName = 'frxDBDatasetxpenseReport'
        RowCount = 0
        Stretched = True
        object Memo9: TfrxMemoView
          Top = 0.779530000000022500
          Width = 204.094620000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."name_goods"]')
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Left = 400.630180000000000000
          Top = 0.779530000000022500
          Width = 79.370130000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."price"]')
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 325.039580000000000000
          Top = 0.779530000000022500
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."selling_price"]')
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 480.000310000000000000
          Top = 0.779530000000022500
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."nds"]')
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 549.031850000000000000
          Top = 0.779530000000022500
          Width = 90.708720000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."price_nds"]')
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 640.520100000000000000
          Top = 0.779530000000022500
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."all_price"]')
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          Left = 204.094620000000000000
          Top = 0.779530000000022500
          Width = 56.692950000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."name_metrics"]')
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 260.787570000000000000
          Top = 0.779530000000022500
          Width = 64.252010000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetxpenseReport."count_goods"]')
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        Height = 60.472480000000000000
        ParentFont = False
        Top = 525.354670000000100000
        Width = 740.409927000000000000
        Child = frxReport.Child4
        Stretched = True
        object Memo18: TfrxMemoView
          Left = 260.787570000000000000
          Width = 64.252010000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetxpenseReport."count_goods">,MasterData1)]')
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          Left = 400.630180000000000000
          Width = 79.370130000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetxpenseReport."price">,MasterData1)]')
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 325.039580000000000000
          Width = 75.590600000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1093)
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          Left = 480.000310000000000000
          Width = 68.031540000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1093)
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Left = 549.031850000000000000
          Width = 90.708720000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetxpenseReport."price_nds">,MasterData1)]')
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 640.520100000000000000
          Width = 98.267780000000000000
          Height = 41.574830000000000000
          ShowHint = False
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetxpenseReport."all_price">,MasterData1)]')
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Width = 260.787570000000000000
          Height = 41.574830000000000000
          ShowHint = False
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086':')
          VAlign = vaCenter
        end
      end
      object Child2: TfrxChild
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        Child = frxReport.Child1
        object Memo25: TfrxMemoView
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1055#1086#1089#1090#1072#1074#1097#1080#1082':')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          Left = 370.393940000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082' ('#1079#1072#1082#1072#1079#1095#1080#1082'):')
          ParentFont = False
        end
      end
      object Child3: TfrxChild
        Height = 128.504020000000000000
        Top = 64.252010000000000000
        Width = 740.409927000000000000
        Child = frxReport.Child2
        Stretched = True
        object Memo29: TfrxMemoView
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1057#1063#1025#1058'-'#1055#1056#1054#1058#1054#1050#1054#1051)
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Top = 22.677180000000010000
          Width = 740.787880000000000000
          Height = 41.574830000000000000
          ShowHint = False
          StretchMode = smActualHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            
              #1103#1074#1083#1103#1077#1090#1089#1103' '#1087#1088#1086#1090#1086#1082#1086#1083#1086#1084' '#1089#1086#1075#1083#1072#1089#1086#1074#1072#1085#1080#1103' '#1089#1074#1086#1073#1086#1076#1085#1099#1093' '#1086#1090#1087#1091#1089#1082#1085#1099#1093' '#1094#1077#1085' '#1085#1072' '#1090#1086#1074#1072 +
              #1088#1099' ('#1087#1088#1086#1076#1091#1082#1094#1080#1102')'
            #8470' [infoNumber]')
          ParentFont = False
        end
      end
      object Child4: TfrxChild
        Height = 113.385900000000000000
        Top = 608.504330000000000000
        Width = 740.409927000000000000
        Child = frxReport.Child5
        Stretched = True
        object Memo31: TfrxMemoView
          Top = 4.000000000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            #1048#1090#1086#1075#1086' '#1082' '#1086#1087#1083#1072#1090#1077': [all_money]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Top = 22.897650000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsUnderline]
          Memo.UTF8W = (
            #1074'. '#1090'.'#1095'. '#1053#1044#1057': [nds_money]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Top = 41.795300000000000000
          Width = 740.787880000000000000
          Height = 18.897650000000000000
          ShowHint = False
          StretchMode = smMaxHeight
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            #1042#1053#1048#1052#1040#1053#1048#1045'!! '#1057#1095#1105#1090' '#1076#1077#1081#1089#1090#1074#1080#1090#1077#1083#1077#1085' '#1074' '#1090#1077#1095#1077#1085#1080#1080' 5 '#1073#1072#1085#1082#1086#1074#1089#1082#1080#1093' '#1076#1085#1077#1081'.')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          Top = 60.692950000000000000
          Width = 740.787880000000000000
          Height = 52.913420000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8W = (
            #1055#1088#1080' '#1087#1086#1083#1091#1095#1077#1085#1080#1080' '#1090#1086#1074#1072#1088#1072'  '#1085#1077#1086#1073#1093#1086#1076#1080#1084#1086
            
              '1.'#9#1048#1084#1077#1090#1100' '#1087#1088#1080' '#1089#1077#1073#1077': '#1087#1086#1076#1087#1080#1089#1072#1085#1085#1099#1081' '#1101#1082#1079#1077#1084#1087#1083#1103#1088' '#1089#1095#1105#1090#1072'-'#1087#1088#1086#1090#1086#1082#1086#1083#1072', '#1076#1086#1074#1077#1088#1077 +
              #1085#1085#1086#1089#1090#1100
            '2.'#9#1047#1085#1072#1090#1100' '#1059#1053#1053' '#1080' '#1054#1050#1055#1054)
          ParentFont = False
        end
      end
      object Child5: TfrxChild
        Height = 60.472480000000000000
        Top = 744.567410000000000000
        Width = 740.409927000000000000
        object Memo37: TfrxMemoView
          Left = 79.370130000000000000
          Top = 15.118119999999980000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 442.205010000000000000
          Top = 15.118119999999980000
          Width = 234.330860000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Top = 34.015769999999970000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1052#1055')')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 370.393940000000000000
          Top = 34.015769999999970000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            '('#1052#1055')')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1086#1089#1090#1072#1074#1097#1080#1082)
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 370.393940000000000000
          Width = 370.393940000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #1055#1083#1072#1090#1077#1083#1100#1097#1080#1082)
          ParentFont = False
        end
      end
    end
  end
  object MemTableEh1: TMemTableEh
    Active = True
    Params = <>
    Left = 248
    Top = 256
    object MemTableData: TMemTableDataEh
      AutoIncCurValue = -2
      object DataStruct: TMTDataStructEh
        object id_data_expense_report: TMTNumericDataFieldEh
          FieldName = 'id_data_expense_report'
          NumericDataType = fdtIntegerEh
          AutoIncrement = True
          DisplayLabel = 'id_data_expense_report'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object id_expense_report: TMTNumericDataFieldEh
          FieldName = 'id_expense_report'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'id_expense_report'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object idoverheadgoods: TMTNumericDataFieldEh
          FieldName = 'idoverheadgoods'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'idoverheadgoods'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object name_goods: TMTStringDataFieldEh
          FieldName = 'name_goods'
          StringDataType = fdtStringEh
          DisplayLabel = 'name_goods'
          DisplayWidth = 200
          Size = 200
          Transliterate = True
        end
        object name_metrics: TMTStringDataFieldEh
          FieldName = 'name_metrics'
          StringDataType = fdtStringEh
          DisplayLabel = 'name_metrics'
          DisplayWidth = 200
          Size = 200
          Transliterate = True
        end
        object count_goods: TMTNumericDataFieldEh
          FieldName = 'count_goods'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'count_goods'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object selling_price: TMTNumericDataFieldEh
          FieldName = 'selling_price'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'selling_price'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nds: TMTNumericDataFieldEh
          FieldName = 'nds'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'nds'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object price: TMTNumericDataFieldEh
          FieldName = 'price'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'price'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object price_nds: TMTNumericDataFieldEh
          FieldName = 'price_nds'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'price_nds'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object all_price: TMTNumericDataFieldEh
          FieldName = 'all_price'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'all_price'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            2702
            1124
            3283
            #1052#1077#1096#1086#1082' '#1089#1077#1090#1095#1072#1090#1099#1081' 50*80 ('#1082#1088#1072#1089#1085#1099#1081'), 100 '#1096#1090'. ('#1050#1080#1090#1072#1081')'
            #1091#1087'.100 '#1096#1090'.'
            10.000000000000000000
            23.000000000000000000
            20.000000000000000000
            230.000000000000000000
            46.000000000000000000
            276.000000000000000000)
          (
            -1
            nil
            nil
            #1052#1077#1096#1086#1082' '#1089#1077#1090#1095#1072#1090#1099#1081' 50*80 ('#1082#1088#1072#1089#1085#1099#1081'), 100 '#1096#1090'. ('#1050#1080#1090#1072#1081')1'
            #1091#1087'.100 '#1096#1090'.'
            12.000000000000000000
            23.000000000000000000
            20.000000000000000000
            230.000000000000000000
            46.000000000000000000
            300.000000000000000000))
      end
    end
  end
  object frxDBDatasetxpense_report: TfrxDBDataset
    UserName = 'frxDBDatasetxpenseReport'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id_data_expense_report=id_data_expense_report'
      'id_expense_report=id_expense_report'
      'idoverheadgoods=idoverheadgoods'
      'name_goods=name_goods'
      'name_metrics=name_metrics'
      'count_goods=count_goods'
      'selling_price=selling_price'
      'nds=nds'
      'price=price'
      'price_nds=price_nds'
      'all_price=all_price')
    DataSet = MemTableEh1
    BCDToCurrency = False
    Left = 408
    Top = 376
  end
  object MemTableEhattribut: TMemTableEh
    Active = True
    Params = <>
    Left = 528
    Top = 320
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object nds_money: TMTStringDataFieldEh
          FieldName = 'nds_money'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 500
        end
        object InfoMainContractor: TMTStringDataFieldEh
          FieldName = 'InfoMainContractor'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 500
        end
        object buyer: TMTStringDataFieldEh
          FieldName = 'buyer'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 500
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            '99999'
            '09-09-09-'))
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDatasetInfo'
    CloseDataSource = False
    DataSet = MemTableEhattribut
    BCDToCurrency = False
    Left = 488
    Top = 225
  end
end
