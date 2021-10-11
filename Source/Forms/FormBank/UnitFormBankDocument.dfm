object FormBankDocument: TFormBankDocument
  Left = 0
  Top = 0
  Caption = 'FormBankDocument'
  ClientHeight = 659
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1000
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object sPageControl1: TsPageControl
    Left = 0
    Top = 61
    Width = 984
    Height = 598
    ActivePage = viewList
    Align = alClient
    Images = dm.ImageList24
    Style = tsFlatButtons
    TabHeight = 35
    TabOrder = 0
    ExplicitWidth = 819
    object ViewGroup: TsTabSheet
      Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1072#1085#1085#1099#1077
      ImageIndex = 3
      OnShow = ViewGroupShow
      ExplicitWidth = 811
      object DBGridEhBankDocumentmain: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 970
        Height = 547
        Align = alClient
        AutoFitColWidths = True
        DynProps = <>
        FooterRowCount = 1
        IndicatorOptions = [gioShowRowIndicatorEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        RowDetailPanel.Active = True
        RowDetailPanel.Height = 500
        RowHeight = 10
        RowLines = 1
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnRowDetailPanelShow = DBGridEhBankDocumentmainRowDetailPanelShow
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'date_document'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1077#1081
            Width = 110
          end
          item
            Alignment = taRightJustify
            AutoFitColWidth = False
            DisplayFormat = '### ### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'prixod'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '### ### ##0.00'
            Footer.FieldName = 'prixod'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074'|'#1087#1088#1080#1093#1086#1076
            Width = 110
          end
          item
            Alignment = taRightJustify
            AutoFitColWidth = False
            DisplayFormat = '### ### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'rasxod'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '### ### ##0.00'
            Footer.FieldName = 'rasxod'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1054#1073#1097#1072#1103' '#1089#1091#1084#1084#1072' '#1076#1086#1082#1091#1084#1077#1085#1090#1086#1074'|'#1088#1072#1089#1093#1089#1086#1076
            Width = 110
          end
          item
            Alignment = taRightJustify
            AutoFitColWidth = False
            DisplayFormat = '### ### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'Podprixod'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '### ### ##0.00'
            Footer.FieldName = 'Podprixod'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'|'#1087#1088#1080#1093#1086#1076
            Width = 110
          end
          item
            Alignment = taRightJustify
            AutoFitColWidth = False
            DisplayFormat = '### ### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'Podrasxod'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '### ### ##0.00'
            Footer.FieldName = 'Podrasxod'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1055#1086#1076#1087#1080#1089#1072#1085#1099#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1099'|'#1088#1072#1089#1093#1086#1076
            Width = 110
          end
          item
            Alignment = taCenter
            DynProps = <>
            EditButtons = <>
            Footers = <>
            Layout = tlCenter
            Width = 92
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object DBGridEhBankDocument: TDBGridEh
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 621
            Height = 429
            Align = alClient
            AutoFitColWidths = True
            DynProps = <>
            IndicatorOptions = [gioShowRowIndicatorEh]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            RowHeight = 5
            RowLines = 2
            SearchPanel.Enabled = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'Activ_Bank_document'
                Footers = <>
                Layout = tlCenter
                ReadOnly = True
                Title.Caption = #1055#1086#1076#1087#1080#1089#1072#1085
                Title.Orientation = tohVertical
                Width = 27
              end
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'date_document'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
                Width = 106
              end
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'type_payment'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1042#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
                Width = 68
              end
              item
                AutoFitColWidth = False
                DisplayFormat = '### ### ##0.00'
                DynProps = <>
                EditButtons = <>
                FieldName = 'Price_Goods'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
                Width = 81
              end
              item
                AutoFitColWidth = False
                DynProps = <>
                EditButtons = <>
                FieldName = 'score_Bank'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
                Width = 115
                WordWrap = True
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'Name_Contractor'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
                Width = 209
                WordWrap = True
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'UNP'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'| '#1059#1053#1055
                Width = 140
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'OKPO'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1054#1050#1055#1054
                Width = 100
              end
              item
                DynProps = <>
                EditButtons = <>
                FieldName = 'mailing_address'
                Footers = <>
                Layout = tlCenter
                Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
                Width = 200
                WordWrap = True
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object viewList: TsTabSheet
      Caption = #1057#1087#1080#1089#1086#1082
      ImageIndex = 2
      OnShow = viewListShow
      ExplicitWidth = 811
      object DBGridEhList: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 970
        Height = 547
        Align = alClient
        AutoFitColWidths = True
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        RowHeight = 5
        RowLines = 2
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDrawColumnCell = DBGridEhListDrawColumnCell
        Columns = <
          item
            Alignment = taCenter
            AutoFitColWidth = False
            Checkboxes = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'Activ_Bank_document'
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
            Width = 27
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'date_document'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1044#1072#1090#1072' '#1087#1083#1072#1090#1077#1078#1072
            Width = 106
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'type_payment'
            Footers = <>
            ImageList = dm.ImageList1
            KeyList.Strings = (
              '0'
              '1')
            Layout = tlCenter
            ReadOnly = True
            Title.Caption = #1042#1080#1076
            Width = 53
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'type_payment_prop'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1042#1080#1076' '#1087#1083#1072#1090#1077#1078#1072
            Visible = False
            Width = 68
          end
          item
            AutoFitColWidth = False
            DisplayFormat = '### ### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price_Goods'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1087#1083#1072#1090#1077#1078#1072
            Width = 81
          end
          item
            AutoFitColWidth = False
            DynProps = <>
            EditButtons = <>
            FieldName = 'score_Bank'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
            Width = 115
            WordWrap = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name_Contractor'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 209
            WordWrap = True
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'UNP'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'| '#1059#1053#1055
            Width = 140
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'OKPO'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1054#1050#1055#1054
            Width = 100
          end
          item
            DynProps = <>
            EditButtons = <>
            FieldName = 'mailing_address'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090'|'#1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
            Width = 200
            WordWrap = True
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 978
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 813
    object buttonAdd: TsSpeedButton
      Left = 5
      Top = 0
      Width = 110
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      OnClick = buttonAddClick
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitLeft = 3
      ExplicitTop = 19
      ExplicitHeight = 32
    end
    object sSpeedButtonDelete: TsSpeedButton
      Left = 120
      Top = 0
      Width = 110
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonDeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 123
      ExplicitTop = -3
    end
    object sSpeedButtonReport: TsSpeedButton
      Left = 235
      Top = 0
      Width = 110
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1054#1090#1095#1105#1090
      Flat = True
      OnClick = sSpeedButtonReportClick
      Images = dm.sAlphaImageList32
      ImageIndex = 1
      Reflected = True
      ExplicitLeft = 451
      ExplicitTop = 21
      ExplicitHeight = 32
    end
    object btnprint: TsSpeedButton
      Left = 350
      Top = 0
      Width = 110
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alLeft
      Caption = #1055#1077#1095#1072#1090#1100
      Flat = True
      OnClick = btnprintClick
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 491
      ExplicitTop = 21
      ExplicitHeight = 32
    end
    object sSpeedButtonChech: TsSpeedButton
      Left = 813
      Top = 0
      Width = 160
      Height = 55
      Margins.Left = 1
      Margins.Right = 1
      Align = alRight
      Caption = #1055#1086#1076#1087#1080#1089#1072#1090#1100
      Flat = True
      OnClick = sSpeedButtonChechClick
      Images = dm.sAlphaImageList32
      ImageIndex = 7
      Reflected = True
      ExplicitLeft = 648
      ExplicitHeight = 45
    end
    object sSpeedButton1: TsSpeedButton
      Left = 808
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 582
      ExplicitHeight = 38
    end
    object sSpeedButton2: TsSpeedButton
      Left = 973
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 790
      ExplicitHeight = 38
    end
    object sSpeedButton3: TsSpeedButton
      Left = 460
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
      ExplicitHeight = 38
    end
    object sSpeedButton5: TsSpeedButton
      Left = 115
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 135
      ExplicitHeight = 38
    end
    object sSpeedButton6: TsSpeedButton
      Left = 230
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 270
      ExplicitHeight = 38
    end
    object sSpeedButton7: TsSpeedButton
      Left = 345
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 405
      ExplicitHeight = 38
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
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
    Left = 581
    Top = 109
  end
end
