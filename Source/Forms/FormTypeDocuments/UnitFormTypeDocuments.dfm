object FormTypeDocuments: TFormTypeDocuments
  Left = 0
  Top = 0
  Caption = #1058#1048#1055' '#1044#1054#1050#1059#1052#1045#1053#1058#1067' '#1069#1057#1063#1060
  ClientHeight = 359
  ClientWidth = 582
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
  object DBGridEhTypeDoc: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 44
    Width = 576
    Height = 312
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowHeight = 5
    RowLines = 1
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        Alignment = taRightJustify
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_type_doc'
        Footers = <>
        Title.Caption = #1050#1054#1044' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 123
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_doc'
        Footers = <>
        ImeMode = imAlpha
        Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
        Width = 160
      end
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'defaultCodeBlanc'
        Footers = <>
        Title.Caption = #1053#1086#1084#1077#1088' '#1073#1083#1072#1085#1082#1072' '#1087#1086' '#1091#1084#1086#1083#1095#1072#1085#1080#1102
        Width = 140
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 576
    Height = 35
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    Visible = False
    object sSpeedButton1: TsSpeedButton
      AlignWithMargins = True
      Left = 453
      Top = 2
      Width = 120
      Height = 30
      Margins.Top = 2
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      OnClick = sSpeedButton1Click
      Images = dm.sAlphaImageList24
      ImageIndex = 5
      ExplicitLeft = 396
      ExplicitTop = 4
      ExplicitHeight = 33
    end
    object sSpeedButton2: TsSpeedButton
      AlignWithMargins = True
      Left = 327
      Top = 2
      Width = 120
      Height = 30
      Margins.Top = 2
      Align = alRight
      Caption = #1059#1076#1072#1083#1080#1090#1100
      OnClick = sSpeedButton2Click
      Images = dm.sAlphaImageList24
      ImageIndex = 0
      ExplicitLeft = 354
      ExplicitTop = 3
      ExplicitHeight = 29
    end
  end
end
