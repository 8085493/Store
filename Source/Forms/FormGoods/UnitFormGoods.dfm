object FormGoods: TFormGoods
  Left = 0
  Top = 0
  Caption = 'FormGoods'
  ClientHeight = 393
  ClientWidth = 670
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 18
  object DBGridEhGoods: TDBGridEh
    Tag = 1
    AlignWithMargins = True
    Left = 3
    Top = 64
    Width = 664
    Height = 326
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEhGoodsKeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_Goods'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1058#1086#1074#1072#1088
        Width = 105
        WordWrap = True
      end
      item
        Alignment = taCenter
        AutoFitColWidth = False
        ButtonStyle = cbsEllipsis
        CellButtons = <>
        DynProps = <>
        EditButton.Style = ebsEllipsisEh
        EditButton.Visible = True
        EditButton.OnClick = DBGridEhGoodsColumns1EditButtonClick
        EditButtons = <>
        FieldName = 'Name_metrics'
        Footers = <>
        Layout = tlCenter
        Title.Caption = #1045#1076#1077#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
        Width = 92
        OnEditButtonClick = DBGridEhGoodsColumns1EditButtonClick
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanelbutton: TsPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 664
    Height = 55
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sSpeedButtonNew: TsSpeedButton
      Left = 289
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonNewClick
      Images = dm.sAlphaImageList32
      ImageIndex = 0
      Reflected = True
      ExplicitLeft = 263
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtondelete: TsSpeedButton
      Left = 414
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtondeleteClick
      Images = dm.sAlphaImageList32
      ImageIndex = 2
      Reflected = True
      ExplicitLeft = 376
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButtonSave: TsSpeedButton
      Left = 539
      Top = 0
      Width = 120
      Height = 55
      Margins.Top = 2
      Align = alRight
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Flat = True
      OnClick = sSpeedButtonSaveClick
      Images = dm.sAlphaImageList32
      ImageIndex = 25
      Reflected = True
      ExplicitLeft = 506
      ExplicitTop = 5
      ExplicitHeight = 30
    end
    object sSpeedButton3: TsSpeedButton
      Left = 172
      Top = 0
      Width = 5
      Height = 55
      Align = alLeft
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton1: TsSpeedButton
      Left = 409
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 405
      ExplicitHeight = 35
    end
    object sSpeedButton2: TsSpeedButton
      Left = 659
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 656
      ExplicitHeight = 35
    end
    object sSpeedButton4: TsSpeedButton
      Left = 284
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 540
      ExplicitHeight = 38
    end
    object sSpeedButton5: TsSpeedButton
      Left = 534
      Top = 0
      Width = 5
      Height = 55
      Align = alRight
      ButtonStyle = tbsDivider
      ExplicitLeft = 536
      ExplicitHeight = 35
    end
    object sSliderread: TsSlider
      AlignWithMargins = True
      Left = 101
      Top = 18
      Width = 68
      Height = 19
      Margins.Top = 18
      Margins.Bottom = 18
      Align = alLeft
      AutoSize = True
      TabOrder = 0
      OnClick = sSliderreadClick
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
      ExplicitLeft = 115
    end
  end
end
