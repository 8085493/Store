object FormNewComingOverhead: TFormNewComingOverhead
  Left = 0
  Top = 0
  Caption = 'FormNewComingOverhead'
  ClientHeight = 562
  ClientWidth = 984
  Color = clBtnFace
  Constraints.MinHeight = 600
  Constraints.MinWidth = 1000
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 984
    Height = 562
    Align = alClient
    BevelOuter = bvNone
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = sPanel1
        Row = 1
      end
      item
        Column = 0
        Control = sPanel3
        Row = 0
      end
      item
        Column = 0
        Control = sPanel4
        Row = 2
      end>
    RowCollection = <
      item
        SizeStyle = ssAbsolute
        Value = 210.000000000000000000
      end
      item
        Value = 100.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 40.000000000000000000
      end
      item
        SizeStyle = ssAbsolute
        Value = 2.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 1048
    ExplicitHeight = 467
    object sPanel1: TsPanel
      Left = 0
      Top = 210
      Width = 984
      Height = 310
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 1048
      ExplicitHeight = 215
      object DBGridEhDataOverhead: TDBGridEh
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 978
        Height = 263
        Align = alClient
        AutoFitColWidths = True
        DynProps = <>
        FooterRowCount = 1
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        RowHeight = 5
        RowLines = 2
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Name_Goods'
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
            Width = 145
            WordWrap = True
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
            Title.Caption = #1045#1076'. '#1080#1079#1084'.'
            Width = 56
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
            CellButtons = <>
            DisplayFormat = '### #### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'Price_Goods'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '### #### ##0.00'
            Footer.Value = #1093
            Footer.ValueType = fvtStaticText
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1062#1077#1085#1072', '#1088#1091#1073
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DisplayFormat = '### #### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'price'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '### #### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073
            Width = 143
          end
          item
            Alignment = taCenter
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
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DisplayFormat = '### #### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'price_nds'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '### #### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1057#1091#1084#1084#1072' '#1053#1044#1057', '#1088#1091#1073
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DisplayFormat = '### #### ##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'all_price'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '### #### ##0.00'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073
            Width = 84
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Count_place'
            Footer.Alignment = taCenter
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1075#1088#1091#1079#1086#1074#1099#1093' '#1084#1077#1089#1090
            Width = 70
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DisplayFormat = '######0.000'
            DynProps = <>
            EditButtons = <>
            FieldName = 'load_weight'
            Footer.Alignment = taCenter
            Footer.DisplayFormat = '######0.000'
            Footer.ValueType = fvtSum
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1052#1072#1089#1089#1072' '#1075#1088#1091#1079#1072', '#1082#1075
            Width = 76
          end
          item
            Alignment = taCenter
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'note_goods'
            Footer.Alignment = taCenter
            Footer.Value = #1093
            Footer.ValueType = fvtStaticText
            Footers = <>
            Layout = tlCenter
            Title.Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            Width = 104
            WordWrap = True
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object sPanel2: TsPanel
        AlignWithMargins = True
        Left = 3
        Top = 272
        Width = 978
        Height = 35
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 1
        ExplicitTop = 177
        ExplicitWidth = 1042
        object sSpeedButton1: TsSpeedButton
          Left = 5
          Top = 0
          Width = 110
          Height = 35
          Margins.Left = 1
          Margins.Right = 1
          Align = alLeft
          Caption = #1044#1086#1073#1072#1074#1080#1090#1100
          Flat = True
          OnClick = sSpeedButton1Click
          Images = dm.ImageList16
          ImageIndex = 3
          Reflected = True
          ExplicitLeft = 8
          ExplicitHeight = 30
        end
        object sSpeedButton3: TsSpeedButton
          Left = 120
          Top = 0
          Width = 110
          Height = 35
          Margins.Left = 1
          Margins.Right = 1
          Align = alLeft
          Caption = #1059#1076#1072#1083#1080#1090#1100
          Flat = True
          OnClick = sSpeedButton3Click
          Images = dm.ImageList16
          ImageIndex = 9
          Reflected = True
          ExplicitLeft = 142
          ExplicitHeight = 24
        end
        object sSpeedButton4: TsSpeedButton
          Left = 235
          Top = 0
          Width = 110
          Height = 35
          Margins.Left = 1
          Margins.Right = 1
          Align = alLeft
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          Flat = True
          OnClick = sSpeedButton4Click
          Images = dm.ImageList16
          ImageIndex = 24
          Reflected = True
          ExplicitLeft = 315
          ExplicitTop = 3
          ExplicitHeight = 24
        end
        object sSpeedButton5: TsSpeedButton
          Left = 345
          Top = 0
          Width = 5
          Height = 35
          Align = alLeft
          ButtonStyle = tbsDivider
          ExplicitLeft = 405
        end
        object sSpeedButton6: TsSpeedButton
          Left = 115
          Top = 0
          Width = 5
          Height = 35
          Align = alLeft
          ButtonStyle = tbsDivider
          ExplicitLeft = 117
          ExplicitHeight = 30
        end
        object sSpeedButton7: TsSpeedButton
          Left = 0
          Top = 0
          Width = 5
          Height = 35
          Align = alLeft
          ButtonStyle = tbsDivider
          ExplicitLeft = 4
          ExplicitHeight = 30
        end
        object sSpeedButton8: TsSpeedButton
          Left = 230
          Top = 0
          Width = 5
          Height = 35
          Align = alLeft
          ButtonStyle = tbsDivider
          ExplicitLeft = 221
          ExplicitTop = -3
          ExplicitHeight = 40
        end
      end
      object edt2: TsEdit
        Left = 552
        Top = -128
        Width = 121
        Height = 24
        TabOrder = 2
        Text = 'edt2'
      end
    end
    object sPanel3: TsPanel
      Left = 0
      Top = 0
      Width = 984
      Height = 210
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      ExplicitWidth = 1048
      object sPageControl1: TsPageControl
        AlignWithMargins = True
        Left = 3
        Top = 10
        Width = 978
        Height = 197
        Margins.Top = 10
        ActivePage = tabAddational
        Align = alClient
        Images = dm.ImageList16
        TabHeight = 25
        TabOrder = 0
        ExplicitWidth = 1042
        object sTabSheet1: TsTabSheet
          Caption = #1054#1089#1085#1086#1074#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Contractor: TsEdit
            AlignWithMargins = True
            Left = 130
            Top = 3
            Width = 901
            Height = 24
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
            BoundLabel.Font.Name = 'Courier New'
            BoundLabel.Font.Style = []
          end
          object Stock: TsEdit
            AlignWithMargins = True
            Left = 130
            Top = 33
            Width = 901
            Height = 24
            Margins.Left = 130
            Align = alTop
            TabOrder = 1
            OnKeyUp = StockKeyUp
            BoundLabel.Active = True
            BoundLabel.ParentFont = False
            BoundLabel.Caption = #1057#1082#1083#1072#1076
            BoundLabel.Font.Charset = RUSSIAN_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -13
            BoundLabel.Font.Name = 'Courier New'
            BoundLabel.Font.Style = []
          end
          object Car: TsEdit
            AlignWithMargins = True
            Left = 130
            Top = 93
            Width = 901
            Height = 24
            Margins.Left = 130
            Align = alTop
            TabOrder = 3
            OnKeyUp = CarKeyUp
            BoundLabel.Active = True
            BoundLabel.ParentFont = False
            BoundLabel.Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
            BoundLabel.Font.Charset = RUSSIAN_CHARSET
            BoundLabel.Font.Color = clWindowText
            BoundLabel.Font.Height = -13
            BoundLabel.Font.Name = 'Courier New'
            BoundLabel.Font.Style = []
          end
          object sPanel6: TsPanel
            Left = 0
            Top = 60
            Width = 1034
            Height = 30
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 2
            object sEditNumber: TsEdit
              AlignWithMargins = True
              Left = 296
              Top = 3
              Width = 121
              Height = 24
              Align = alLeft
              TabOrder = 1
              OnKeyUp = sEditNumberKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1053#1086#1084#1077#1088' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              ExplicitLeft = 248
            end
            object seria_Overhead: TsEdit
              AlignWithMargins = True
              Left = 130
              Top = 3
              Width = 40
              Height = 24
              Margins.Left = 10
              Align = alLeft
              Alignment = taCenter
              TabOrder = 0
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1057#1077#1088#1080#1103' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
            end
            object sDateEditDateCreate: TsDateEdit
              AlignWithMargins = True
              Left = 453
              Top = 3
              Width = 124
              Height = 24
              Margins.Left = 1
              Margins.Right = 1
              Align = alLeft
              AutoSize = False
              EditMask = '!99/99/9999;1; '
              MaxLength = 10
              TabOrder = 2
              Text = '  .  .    '
              OnChange = sDateEditDateCreateChange
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1044#1072#1090#1072
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              GlyphMode.Grayed = False
              GlyphMode.Blend = 0
            end
          end
        end
        object tabAddational: TsTabSheet
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1099#1077
          ImageIndex = 3
          ExplicitWidth = 1034
          object sGroupBox1: TsGroupBox
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 512
            Height = 160
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1054#1090#1087#1091#1089#1082' '#1090#1086#1074#1072#1088#1072
            TabOrder = 0
            object prin_goods: TsEdit
              AlignWithMargins = True
              Left = 192
              Top = 129
              Width = 315
              Height = 24
              Margins.Left = 190
              Margins.Top = 2
              Margins.Bottom = 2
              Align = alTop
              TabOrder = 0
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1055#1088#1080#1085#1103#1083' '#1075#1088#1091#1079#1086#1087#1086#1083#1091#1095#1072#1090#1077#1083#1100
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
            end
            object goods_received: TsEdit
              AlignWithMargins = True
              Left = 152
              Top = 76
              Width = 355
              Height = 24
              Margins.Left = 150
              Margins.Top = 2
              Margins.Bottom = 2
              Align = alTop
              TabOrder = 1
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1058#1086#1074#1072#1088' '#1082' '#1076#1086#1089#1090#1072#1074#1082#1077#13#10#1087#1088#1080#1085#1103#1083
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
            end
            object goods_passed: TsEdit
              AlignWithMargins = True
              Left = 152
              Top = 48
              Width = 355
              Height = 24
              Margins.Left = 150
              Margins.Top = 2
              Margins.Bottom = 2
              Align = alTop
              TabOrder = 2
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1057#1076#1072#1083#13#10' '#1075#1088#1091#1079#1086#1086#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
            end
            object allow_output: TsEdit
              AlignWithMargins = True
              Left = 152
              Top = 20
              Width = 355
              Height = 24
              Margins.Left = 150
              Margins.Top = 2
              Margins.Bottom = 2
              Align = alTop
              TabOrder = 3
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1054#1090#1087#1091#1089#1082' '#1088#1072#1079#1088#1077#1096#1080#1083
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
            end
            object sPanel5: TsPanel
              Left = 2
              Top = 102
              Width = 508
              Height = 25
              Align = alTop
              BevelOuter = bvNone
              TabOrder = 4
              object proxy_contacor: TsEdit
                AlignWithMargins = True
                Left = 266
                Top = 2
                Width = 239
                Height = 21
                Margins.Left = 60
                Margins.Top = 2
                Margins.Bottom = 2
                Align = alClient
                TabOrder = 0
                OnKeyUp = allow_outputKeyUp
                BoundLabel.Active = True
                BoundLabel.ParentFont = False
                BoundLabel.Caption = #1074#1099#1076#1072#1085#1086#1081
                BoundLabel.Font.Charset = RUSSIAN_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -13
                BoundLabel.Font.Name = 'Courier New'
                BoundLabel.Font.Style = []
                ExplicitLeft = 242
                ExplicitWidth = 263
              end
              object proxy: TsEdit
                AlignWithMargins = True
                Left = 117
                Top = 2
                Width = 86
                Height = 21
                Margins.Left = 5
                Margins.Top = 2
                Margins.Bottom = 2
                Align = alLeft
                TabOrder = 1
                OnKeyUp = allow_outputKeyUp
                BoundLabel.Active = True
                BoundLabel.ParentFont = False
                BoundLabel.Caption = #1055#1086' '#1076#1086#1074#1077#1088#1077#1085#1086#1089#1090#1080
                BoundLabel.Font.Charset = RUSSIAN_CHARSET
                BoundLabel.Font.Color = clWindowText
                BoundLabel.Font.Height = -13
                BoundLabel.Font.Name = 'Courier New'
                BoundLabel.Font.Style = []
              end
            end
          end
          object sGroupBox2: TsGroupBox
            AlignWithMargins = True
            Left = 515
            Top = 1
            Width = 454
            Height = 160
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alClient
            Caption = #1055#1086#1075#1088#1091#1079#1086#1095#1085#1086'-'#1088#1072#1079#1075#1088#1091#1079#1086#1095#1085#1099#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
            TabOrder = 1
            ExplicitWidth = 518
            object GridPanel2: TGridPanel
              Left = 2
              Top = 64
              Width = 450
              Height = 94
              Align = alBottom
              BevelOuter = bvNone
              ColumnCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 80.000000000000000000
                end
                item
                  Value = 100.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 140.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 120.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 120.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 5.000000000000000000
                end>
              ControlCollection = <
                item
                  Column = 0
                  Control = lbl1
                  Row = 0
                end
                item
                  Column = 1
                  Control = lbl2
                  Row = 0
                end
                item
                  Column = 2
                  Control = sLabel1
                  Row = 0
                end
                item
                  Column = 3
                  Control = sLabel2
                  Row = 0
                end
                item
                  Column = 4
                  Control = sLabel3
                  Row = 0
                end
                item
                  Column = 0
                  Control = sLabel4
                  Row = 1
                end
                item
                  Column = 1
                  Control = loading
                  Row = 1
                end
                item
                  Column = 2
                  Control = type_loading
                  Row = 1
                end
                item
                  Column = 3
                  Control = input_date_loading
                  Row = 1
                end
                item
                  Column = 4
                  Control = output_date_loading
                  Row = 1
                end
                item
                  Column = 0
                  Control = sLabel5
                  Row = 2
                end
                item
                  Column = 1
                  Control = unloading
                  Row = 2
                end
                item
                  Column = 2
                  Control = type_unloading
                  Row = 2
                end
                item
                  Column = 3
                  Control = input_date_unloading
                  Row = 2
                end
                item
                  Column = 4
                  Control = output_date_unloading
                  Row = 2
                end>
              RowCollection = <
                item
                  SizeStyle = ssAbsolute
                  Value = 30.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 30.000000000000000000
                end
                item
                  SizeStyle = ssAbsolute
                  Value = 30.000000000000000000
                end>
              TabOrder = 0
              ExplicitWidth = 514
              DesignSize = (
                450
                94)
              object lbl1: TsLabel
                Left = 0
                Top = 0
                Width = 80
                Height = 30
                Align = alClient
                Alignment = taCenter
                Caption = #1054#1087#1077#1088#1072#1094#1080#1103
                Layout = tlCenter
                ExplicitWidth = 64
                ExplicitHeight = 16
              end
              object lbl2: TsLabel
                Left = 80
                Top = 0
                Width = 40
                Height = 30
                Align = alClient
                Alignment = taCenter
                Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100
                Layout = tlCenter
                ExplicitWidth = 88
                ExplicitHeight = 16
              end
              object sLabel1: TsLabel
                Left = 65
                Top = 0
                Width = 140
                Height = 30
                Align = alClient
                Alignment = taCenter
                Caption = #1057#1087#1086#1089#1086#1073
                Layout = tlCenter
                ExplicitLeft = 129
                ExplicitWidth = 48
                ExplicitHeight = 16
              end
              object sLabel2: TsLabel
                Left = 205
                Top = 0
                Width = 120
                Height = 30
                Align = alClient
                Alignment = taCenter
                Caption = #1044#1072#1090#1072' '#1087#1088#1080#1073#1099#1090#1080#1103
                Layout = tlCenter
                ExplicitLeft = 269
                ExplicitWidth = 104
                ExplicitHeight = 16
              end
              object sLabel3: TsLabel
                Left = 341
                Top = 7
                Width = 88
                Height = 16
                Anchors = []
                Caption = #1076#1072#1090#1072' '#1091#1073#1099#1090#1080#1103
                ExplicitLeft = 400
                ExplicitTop = 32
              end
              object sLabel4: TsLabel
                AlignWithMargins = True
                Left = 5
                Top = 33
                Width = 72
                Height = 24
                Margins.Left = 5
                Align = alClient
                Alignment = taRightJustify
                Caption = #1055#1086#1075#1088#1091#1079#1082#1072
                Layout = tlCenter
                ExplicitLeft = 13
                ExplicitWidth = 64
                ExplicitHeight = 16
              end
              object loading: TsEdit
                AlignWithMargins = True
                Left = 83
                Top = 33
                Width = 34
                Height = 24
                Align = alClient
                TabOrder = 0
                OnKeyUp = loadingKeyUp
                ExplicitWidth = 43
              end
              object type_loading: TsComboBox
                AlignWithMargins = True
                Left = 68
                Top = 33
                Width = 134
                Height = 24
                Align = alClient
                Alignment = taLeftJustify
                VerticalAlignment = taAlignTop
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 1
                Text = #1056#1091#1095#1085#1086#1081
                OnChange = type_loadingChange
                Items.Strings = (
                  #1056#1091#1095#1085#1086#1081
                  #1052#1077#1093#1072#1085#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1081)
                ExplicitLeft = 132
              end
              object input_date_loading: TsDateEdit
                AlignWithMargins = True
                Left = 208
                Top = 33
                Width = 114
                Height = 24
                Align = alClient
                AutoSize = False
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 2
                Text = '  .  .    '
                OnChange = input_date_loadingChange
                GlyphMode.Grayed = False
                GlyphMode.Blend = 0
                Weekends = [dowSaturday, dowSunday]
                ExplicitLeft = 272
              end
              object output_date_loading: TsDateEdit
                AlignWithMargins = True
                Left = 328
                Top = 33
                Width = 114
                Height = 24
                Align = alClient
                AutoSize = False
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 3
                Text = '  .  .    '
                OnChange = input_date_loadingChange
                GlyphMode.Grayed = False
                GlyphMode.Blend = 0
                ExplicitLeft = 392
              end
              object sLabel5: TsLabel
                AlignWithMargins = True
                Left = 5
                Top = 63
                Width = 72
                Height = 24
                Margins.Left = 5
                Align = alClient
                Alignment = taRightJustify
                Caption = #1056#1072#1079#1075#1088#1091#1079#1082#1072
                Layout = tlCenter
                ExplicitHeight = 16
              end
              object unloading: TsEdit
                Tag = 1
                AlignWithMargins = True
                Left = 83
                Top = 63
                Width = 34
                Height = 24
                Align = alClient
                TabOrder = 4
                OnKeyUp = loadingKeyUp
                ExplicitWidth = 43
              end
              object type_unloading: TsComboBox
                AlignWithMargins = True
                Left = 68
                Top = 63
                Width = 134
                Height = 24
                Align = alClient
                Alignment = taLeftJustify
                VerticalAlignment = taAlignTop
                Style = csDropDownList
                ItemIndex = 0
                TabOrder = 5
                Text = #1056#1091#1095#1085#1086#1081
                OnChange = type_loadingChange
                Items.Strings = (
                  #1056#1091#1095#1085#1086#1081
                  #1052#1077#1093#1072#1085#1080#1079#1080#1088#1086#1074#1072#1085#1085#1099#1081)
                ExplicitLeft = 132
              end
              object input_date_unloading: TsDateEdit
                AlignWithMargins = True
                Left = 208
                Top = 63
                Width = 114
                Height = 24
                Align = alClient
                AutoSize = False
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 6
                Text = '  .  .    '
                OnChange = input_date_loadingChange
                GlyphMode.Grayed = False
                GlyphMode.Blend = 0
                ExplicitLeft = 272
              end
              object output_date_unloading: TsDateEdit
                AlignWithMargins = True
                Left = 328
                Top = 63
                Width = 114
                Height = 24
                Align = alClient
                AutoSize = False
                EditMask = '!99/99/9999;1; '
                MaxLength = 10
                TabOrder = 7
                Text = '  .  .    '
                OnChange = input_date_loadingChange
                GlyphMode.Grayed = False
                GlyphMode.Blend = 0
                ExplicitLeft = 392
              end
            end
            object document_Overhead: TsEdit
              AlignWithMargins = True
              Left = 232
              Top = 45
              Width = 217
              Height = 24
              Margins.Left = 230
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alTop
              TabOrder = 1
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1057' '#1090#1086#1074#1072#1088#1086#1084' '#1087#1077#1088#1077#1076#1072#1085#1099' '#1076#1086#1082#1091#1084#1077#1085#1090#1099
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              ExplicitWidth = 281
            end
            object sEditAdress: TsEdit
              AlignWithMargins = True
              Left = 232
              Top = 19
              Width = 217
              Height = 24
              Margins.Left = 230
              Margins.Top = 1
              Margins.Bottom = 1
              Align = alTop
              TabOrder = 2
              OnKeyUp = sEditAdressKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1040#1076#1088#1077#1089' '#1076#1086#1089#1090#1072#1074#1082#1080
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              ExplicitWidth = 281
            end
          end
        end
        object sTabSheet2: TsTabSheet
          Caption = 'testGrid'
          TabVisible = False
          OnShow = sTabSheet2Show
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGridEhTN2: TDBGridEh
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 1028
            Height = 156
            Align = alClient
            DynProps = <>
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Times New Roman'
            Font.Style = []
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
            ParentFont = False
            SumList.Active = True
            TabOrder = 0
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
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072
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
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1045#1076'. '#1048#1079#1084'.'
                Width = 59
              end
              item
                AutoFitColWidth = False
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'count_Goods'
                Footer.Alignment = taCenter
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1050#1086#1083'-'#1074#1086
                Width = 65
                WordWrap = True
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'Price_Goods'
                Footer.Alignment = taCenter
                Footer.Value = #1093
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1062#1077#1085#1072', '#1088#1091#1073
                Width = 69
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'price'
                Footer.Alignment = taCenter
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1057#1090#1086#1080#1084#1086#1089#1090#1100', '#1088#1091#1073
                Width = 88
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'NDS'
                Footer.Alignment = taCenter
                Footer.Value = #1093
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1057#1090#1072#1074#1082#1072' '#1053#1044#1057', %'
                Width = 60
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'price_nds'
                Footer.Alignment = taCenter
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1057#1091#1084#1084#1072' '#1053#1044#1057', '#1088#1091#1073
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'all_price'
                Footer.Alignment = taCenter
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1089' '#1053#1044#1057', '#1088#1091#1073
                Width = 86
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'note_goods'
                Footer.Alignment = taCenter
                Footer.Value = #1093
                Footer.ValueType = fvtStaticText
                Footers = <>
                Title.Caption = 'I. '#1058#1054#1042#1040#1056#1053#1067#1049' '#1056#1040#1047#1044#1045#1051'|'#1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                Width = 89
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object tabESF: TsTabSheet
          Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1057#1095#1105#1090'-'#1060#1072#1082#1090#1091#1088#1072
          ImageIndex = 29
          ExplicitWidth = 1034
          object sGroupBox3: TsGroupBox
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 376
            Height = 160
            Margins.Left = 1
            Margins.Top = 1
            Margins.Right = 1
            Margins.Bottom = 1
            Align = alLeft
            Caption = #1044#1072#1085#1085#1099#1077' '#1076#1083#1103' '#1069#1057#1063#1060
            TabOrder = 0
            object sEditTypeDoc: TsEdit
              AlignWithMargins = True
              Left = 122
              Top = 21
              Width = 249
              Height = 24
              Margins.Left = 120
              Align = alTop
              TabOrder = 0
              OnKeyUp = sEditTypeDocKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeftTop
            end
            object blankCode: TsEdit
              AlignWithMargins = True
              Left = 122
              Top = 51
              Width = 249
              Height = 24
              Margins.Left = 120
              Align = alTop
              TabOrder = 1
              OnKeyUp = allow_outputKeyUp
              BoundLabel.Active = True
              BoundLabel.ParentFont = False
              BoundLabel.Caption = #1053#1086#1084#1077#1088' '#1073#1083#1072#1085#1082#1072
              BoundLabel.Font.Charset = RUSSIAN_CHARSET
              BoundLabel.Font.Color = clWindowText
              BoundLabel.Font.Height = -13
              BoundLabel.Font.Name = 'Courier New'
              BoundLabel.Font.Style = []
              BoundLabel.Layout = sclLeftTop
            end
          end
        end
      end
    end
    object sPanel4: TsPanel
      Left = 0
      Top = 520
      Width = 984
      Height = 40
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      ExplicitTop = 425
      ExplicitWidth = 1048
      object sSpeedButton2: TsSpeedButton
        Left = 654
        Top = 0
        Width = 136
        Height = 40
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = #1055#1088#1086#1074#1077#1089#1090#1080
        Flat = True
        OnClick = sSpeedButton2Click
        Images = dm.ImageList16
        ImageIndex = 21
        Reflected = True
        ExplicitLeft = 698
        ExplicitTop = 6
        ExplicitHeight = 34
      end
      object sSpeedButtonPrint: TsSpeedButton
        Left = 529
        Top = 0
        Width = 120
        Height = 40
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = #1055#1077#1095#1072#1090#1100
        Flat = True
        Visible = False
        ButtonStyle = tbsDropDown
        DropdownMenu = PopupMenu1
        Images = dm.ImageList16
        ImageIndex = 12
        Reflected = True
        ExplicitLeft = 596
        ExplicitTop = 3
      end
      object sSpeedButtonClearActiv: TsSpeedButton
        Left = 795
        Top = 0
        Width = 184
        Height = 40
        Margins.Left = 1
        Margins.Right = 1
        Align = alRight
        Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1087#1088#1086#1074#1086#1076#1082#1091
        Flat = True
        OnClick = sSpeedButtonClearActivClick
        Images = dm.ImageList16
        ImageIndex = 21
        Reflected = True
        ExplicitLeft = 669
        ExplicitTop = 3
        ExplicitHeight = 34
      end
      object sSpeedButton9: TsSpeedButton
        Left = 649
        Top = 0
        Width = 5
        Height = 40
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 849
        ExplicitTop = 3
      end
      object sSpeedButton10: TsSpeedButton
        Left = 979
        Top = 0
        Width = 5
        Height = 40
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 1040
        ExplicitTop = 3
      end
      object sSpeedButton11: TsSpeedButton
        Left = 790
        Top = 0
        Width = 5
        Height = 40
        Align = alRight
        ButtonStyle = tbsDivider
        ExplicitLeft = 860
        ExplicitTop = 3
      end
      object sSpeedButton12: TsSpeedButton
        Left = 524
        Top = 0
        Width = 5
        Height = 40
        Align = alRight
        Visible = False
        ButtonStyle = tbsDivider
        ExplicitLeft = 593
        ExplicitTop = 3
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Images = dm.sAlphaist24
    Left = 477
    Top = 269
    object N1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1058#1053'-2( GRID PRINT)'
      Visible = False
      OnClick = N1Click
    end
    object G1: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1058#1058#1053'-1'
      ImageIndex = 4
      OnClick = G1Click
    end
    object G2: TMenuItem
      Caption = #1055#1077#1095#1072#1090#1100' '#1058#1053'-2'
      ImageIndex = 4
      OnClick = G2Click
    end
    object N2: TMenuItem
      Caption = #1069#1057#1063#1060
      ImageIndex = 2
      OnClick = N2Click
    end
  end
  object PrintDBGridEh: TPrintDBGridEh
    DBGridEh = DBGridEhTN2
    Options = [pghFitGridToPageWidth, pghRowAutoStretch, pghFitingByColWidths]
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
    Left = 437
    Top = 117
  end
end
