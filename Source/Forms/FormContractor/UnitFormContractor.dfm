object FormContractor: TFormContractor
  Left = 0
  Top = 0
  Caption = #1050#1054#1053#1058#1056#1040#1043#1045#1053#1058#1067
  ClientHeight = 568
  ClientWidth = 1008
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 700
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object DBGridEhContractor: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 1002
    Height = 501
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    Flat = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    IndicatorTitle.ShowDropDownSign = True
    IndicatorTitle.TitleButton = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDblClickOptimizeColWidth, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 4
    RowLines = 2
    RowPanel.Active = True
    RowPanel.NavKeysNavigationType = rpntCellToCellEh
    RowPanel.TabNavigationType = rpntLeftToRightPriorityEh
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEhContractorKeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'small_Name_Contractor'
        Footers = <>
        Title.Caption = #1050#1088#1072#1090#1082#1086#1077' '#1085#1072#1079#1074#1072#1085#1080#1077
        Width = 300
        InRowLineHeight = 2
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Phone'
        Footers = <>
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 300
        WordWrap = True
        InRowLinePos = 2
        InRowLineHeight = 2
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Contractor'
        Footers = <>
        Title.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 848
        WordWrap = True
        InRowLinePos = 4
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'agreement'
        Footers = <>
        Title.Caption = #1044#1086#1075#1086#1074#1086#1088
        Width = 135
        WordWrap = True
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_agreement'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
        Width = 135
        InRowLinePos = 1
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UNP'
        Footers = <>
        Title.Caption = #1059#1053#1055
        Width = 135
        WordWrap = True
        InRowLinePos = 2
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'OKPO'
        Footers = <>
        Title.Caption = #1054#1050#1055#1054
        Width = 135
        WordWrap = True
        InRowLinePos = 3
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Legal_Address'
        Footers = <>
        Title.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1072#1076#1088#1077#1089
        Width = 210
        WordWrap = True
        InRowLineHeight = 2
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mailing_address'
        Footers = <>
        Title.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
        Width = 210
        WordWrap = True
        InRowLinePos = 2
        InRowLineHeight = 2
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_bank'
        Footers = <>
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
        Width = 200
        WordWrap = True
        InRowLineHeight = 2
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'checking_account'
        Footers = <>
        Title.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
        Width = 200
        WordWrap = True
        InRowLinePos = 2
      end
      item
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'head'
        Footers = <>
        Title.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        Width = 184
        WordWrap = True
        InRowLinePos = 3
      end
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'main_contactor'
        Footers = <>
        ImageList = dm.chechkedList
        Title.Caption = '+'
        Width = 15
        InRowLinePos = 3
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        CellButtons = <>
        DynProps = <>
        EditButton.Glyph.Data = {
          36090000424D3609000000000000360000002800000018000000180000000100
          2000000000000009000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0038000000650000007B0000007B000000650000003800000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001F00000092000000EB0000
          00CD0000009C00000084000000840000009C000000CD000000EB000000920000
          001F000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000200000078000000EA000000840000001D0000
          000000000000000000000000000000000000000000000000001D000000850000
          00EA000000780000000200000000000000000000000000000000000000000000
          00000000000000000008000000B0000000BF0000001D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          001D000000BF000000B000000008000000000000000000000000000000000000
          000000000002000000B0000000A6000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000005000000A6000000B0000000020000000000000000000000000000
          000000000078000000BF00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000005000000BF000000780000000000000000000000000000
          001F000000EA0000001D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000001D000000EA0000001F00000000000000000000
          0092000000840000000000000000000000000000000000000000000000000000
          0000000000000000007100000071000000000000000000000000000000000000
          0000000000000000000000000000000000850000009200000000000000040000
          00EB0000001D0000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          00000000000000000000000000000000001D000000EB00000004000000380000
          00CD000000000000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          000000000000000000000000000000000000000000CD00000038000000650000
          009C000000000000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          0000000000000000000000000000000000000000009C000000650000007B0000
          00840000000000000000000000000000000000000000000000710000007F0000
          007F0000007F000000BF000000BF0000007F0000007F0000007F000000710000
          000000000000000000000000000000000000000000840000007B0000007B0000
          00840000000000000000000000000000000000000000000000710000007F0000
          007F0000007F000000BF000000BF0000007F0000007F0000007F000000710000
          000000000000000000000000000000000000000000840000007B000000650000
          009C000000000000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          0000000000000000000000000000000000000000009C00000065000000380000
          00CD000000000000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          000000000000000000000000000000000000000000CD00000038000000040000
          00EB0000001D0000000000000000000000000000000000000000000000000000
          0000000000000000007F0000007F000000000000000000000000000000000000
          00000000000000000000000000000000001D000000EB00000004000000000000
          0092000000840000000000000000000000000000000000000000000000000000
          0000000000000000007100000071000000000000000000000000000000000000
          0000000000000000000000000000000000850000009200000000000000000000
          001F000000EA0000001D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000001D000000EA0000001F00000000000000000000
          000000000078000000BF00000004000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000005000000BF000000780000000000000000000000000000
          000000000002000000B0000000A6000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000005000000A6000000B0000000020000000000000000000000000000
          00000000000000000008000000B0000000BF0000001D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          001D000000BF000000B000000008000000000000000000000000000000000000
          000000000000000000000000000200000078000000EA000000840000001D0000
          000000000000000000000000000000000000000000000000001D000000840000
          00EA000000780000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000001F00000092000000EB0000
          00CD0000009C00000084000000840000009C000000CD000000EB000000920000
          001F000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0038000000650000007B0000007B000000650000003800000004000000000000
          0000000000000000000000000000000000000000000000000000}
        EditButton.Style = ebsGlyphEh
        EditButton.Visible = True
        EditButton.OnClick = DBGridEhContractorColumns12EditButtonClick
        EditButtons = <>
        FieldName = 'COUNT_ADRESS'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#13#10#1072#1076#1088#1077#1089
        Title.Orientation = tohVertical
        Width = 38
        WordWrap = True
        OnEditButtonClick = DBGridEhContractorColumns12EditButtonClick
        InRowLineHeight = 5
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object dbgridaddres: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 0
        Height = 0
        Align = alClient
        AutoFitColWidths = True
        DynProps = <>
        IndicatorTitle.ShowDropDownSign = True
        IndicatorTitle.TitleButton = True
        RowHeight = 1
        RowLines = 2
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'shipping_address'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1081' '#1072#1076#1088#1077#1089#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
            Width = 346
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object sPanelbutton: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1002
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitLeft = -2
    object sSpeedButtonNew: TsSpeedButton
      Left = 582
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1044#1054#1041#1040#1042#1048#1058#1068
      Flat = True
      OnClick = sSpeedButtonNewClick
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitLeft = 547
    end
    object sSpeedButtondelete: TsSpeedButton
      Left = 877
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1059#1044#1040#1051#1048#1058#1068
      Flat = True
      OnClick = sSpeedButtondeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 708
    end
    object sSpeedButtonSave: TsSpeedButton
      Left = 707
      Top = 0
      Width = 165
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1056#1045#1044#1040#1050#1058#1048#1056#1054#1042#1040#1058#1068
      Flat = True
      OnClick = sSpeedButtonSaveClick
      Images = dm.sAlphaImageList32
      ImageIndex = 15
      Reflected = True
      ExplicitLeft = 512
    end
    object btnprint: TsSpeedButton
      Left = 457
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1055#1045#1063#1040#1058#1068
      Flat = True
      OnClick = btnprintClick
      Images = dm.sAlphaImageList32
      ImageIndex = 10
      Reflected = True
      ExplicitLeft = 456
    end
    object sSpeedButton1: TsSpeedButton
      Left = 178
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 166
      ExplicitHeight = 35
    end
    object sSpeedButton2: TsSpeedButton
      Left = 256
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      Visible = False
      ButtonStyle = tbsDivider
      ExplicitLeft = 386
    end
    object sSpeedButton3: TsSpeedButton
      Left = 702
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 713
    end
    object sSpeedButton4: TsSpeedButton
      Left = 997
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 848
      ExplicitHeight = 35
    end
    object sSpeedButton5: TsSpeedButton
      Left = 872
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 717
      ExplicitHeight = 35
    end
    object sSpeedButton6: TsSpeedButton
      Left = 577
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 586
      ExplicitHeight = 35
    end
    object sSpeedButton7: TsSpeedButton
      Left = 452
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 455
      ExplicitHeight = 35
    end
    object sSliderview: TsSlider
      AlignWithMargins = True
      Left = 108
      Top = 18
      Width = 68
      Height = 19
      Margins.Top = 18
      Margins.Right = 2
      Margins.Bottom = 18
      Align = alLeft
      AutoSize = True
      TabOrder = 0
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1057#1090#1072#1085#1076#1072#1088#1090#1085#1099#1081' '#1074#1080#1076
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Trebuchet MS'
      BoundLabel.Font.Style = []
      ThumbIndexOff = 1
      ThumbIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = #1042#1099#1082#1083
      SliderCaptionOff = #1042#1082#1083
      SliderOn = False
      UseSymbols = True
      OnChanging = sSliderviewChanging
    end
    object sSliderread: TsSlider
      AlignWithMargins = True
      Left = 186
      Top = 18
      Width = 68
      Height = 19
      Margins.Top = 18
      Margins.Right = 2
      Margins.Bottom = 18
      Align = alLeft
      AutoSize = True
      TabOrder = 1
      Visible = False
      BoundLabel.Active = True
      BoundLabel.ParentFont = False
      BoundLabel.Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077
      BoundLabel.Font.Charset = RUSSIAN_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -13
      BoundLabel.Font.Name = 'Trebuchet MS'
      BoundLabel.Font.Style = []
      ThumbIndexOff = 1
      ThumbIndexOn = 0
      FontOn.Charset = DEFAULT_CHARSET
      FontOn.Color = clWindowText
      FontOn.Height = -11
      FontOn.Name = 'Tahoma'
      FontOn.Style = []
      SliderCaptionOn = #1042#1099#1082#1083
      SliderCaptionOff = #1042#1082#1083
      SliderOn = False
      UseSymbols = True
      OnChanging = sSliderreadChanging
      ExplicitLeft = 284
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
    DBGridEh = DBGridEhContractor
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
    Left = 677
    Top = 149
  end
end
