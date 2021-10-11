object FormAct: TFormAct
  Left = 0
  Top = 0
  Caption = #1040#1050#1058'-'#1057#1042#1045#1056#1050#1048
  ClientHeight = 427
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object DBGridEhact: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 105
    Width = 790
    Height = 319
    Align = alClient
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_deu'
        Footers = <>
        Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077
        Width = 247
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'act_begin'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072
        Width = 118
      end
      item
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'debet'
        Footers = <>
        Title.Caption = #1044#1077#1073#1077#1090
        Width = 110
      end
      item
        CellButtons = <>
        DisplayFormat = '### ### ##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'credit'
        Footers = <>
        Title.Caption = #1050#1088#1077#1076#1080#1090
        Width = 110
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object sPanel1: TsPanel
    Left = 0
    Top = 0
    Width = 796
    Height = 102
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object sGroupBox2: TsGroupBox
      AlignWithMargins = True
      Left = 1
      Top = 59
      Width = 794
      Height = 43
      Margins.Left = 1
      Margins.Top = 0
      Margins.Right = 1
      Margins.Bottom = 0
      Align = alClient
      Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090
      TabOrder = 0
      object sComboBoxContactor: TsComboBox
        Left = 2
        Top = 18
        Width = 790
        Height = 22
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alClient
        Alignment = taLeftJustify
        VerticalAlignment = taAlignTop
        Style = csOwnerDrawFixed
        ItemIndex = -1
        TabOrder = 0
        OnChange = sComboBoxContactorChange
      end
    end
    object sPanel2: TsPanel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 790
      Height = 55
      Margins.Bottom = 1
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
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
      object sSpeedButton1: TsSpeedButton
        Left = 645
        Top = 0
        Width = 140
        Height = 55
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        Flat = True
        OnClick = sSpeedButton1Click
        Images = dm.sAlphaImageList32
        ImageIndex = 23
        Reflected = True
        ExplicitLeft = 619
      end
      object sSpeedButton2: TsSpeedButton
        Left = 530
        Top = 0
        Width = 110
        Height = 55
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = #1055#1077#1095#1072#1090#1100
        Flat = True
        OnClick = sSpeedButton2Click
        Images = dm.sAlphaImageList32
        ImageIndex = 10
        Reflected = True
        ExplicitLeft = 540
      end
      object sSpeedButton3: TsSpeedButton
        Left = 415
        Top = 0
        Width = 110
        Height = 55
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = 'Export Word'
        Flat = True
        OnClick = sSpeedButton3Click
        Images = dm.sAlphaImageList32
        ImageIndex = 26
        Reflected = True
        ExplicitLeft = 424
      end
      object sSpeedButton4: TsSpeedButton
        Left = 410
        Top = 0
        Width = 5
        Height = 55
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 359
        ExplicitTop = -2
      end
      object sSpeedButton5: TsSpeedButton
        Left = 640
        Top = 0
        Width = 5
        Height = 55
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 649
        ExplicitTop = -2
      end
      object sSpeedButton8: TsSpeedButton
        Left = 785
        Top = 0
        Width = 5
        Height = 55
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 768
        ExplicitTop = -2
      end
      object sSpeedButton9: TsSpeedButton
        Left = 525
        Top = 0
        Width = 5
        Height = 55
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 490
        ExplicitTop = -2
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
        BoundLabel.ParentFont = False
        BoundLabel.Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1099
        BoundLabel.Font.Charset = RUSSIAN_CHARSET
        BoundLabel.Font.Color = clWindowText
        BoundLabel.Font.Height = -13
        BoundLabel.Font.Name = 'Times New Roman'
        BoundLabel.Font.Style = []
        BoundLabel.Layout = sclTopLeft
        GlyphMode.Grayed = False
        GlyphMode.Blend = 0
        PopupForm = FormPopDate.Owner
        OnBeforePopup = sPopupBox1BeforePopup
      end
    end
  end
end
