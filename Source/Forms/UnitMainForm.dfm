object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1058#1054#1042#1040#1056#1067' '#1053#1040' '#1057#1050#1051#1040#1044#1045
  ClientHeight = 782
  ClientWidth = 1008
  Color = clBtnFace
  Constraints.MinHeight = 500
  Constraints.MinWidth = 1024
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Courier New'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object mainPageControl: TsPageControl
    AlignWithMargins = True
    Left = 3
    Top = 10
    Width = 1002
    Height = 750
    Margins.Top = 10
    ActivePage = sTabSheet1
    Align = alClient
    Images = dm.sAlphaImageList24
    Style = tsButtons
    TabHeight = 35
    TabOrder = 0
    TabMargin = 0
    TabSpacing = 0
    object sTabSheetMenu: TsTabSheet
      Caption = #1052#1045#1053#1070'  '
      ImageIndex = 19
      TabType = ttMenu
      TabMenu = dm.PopupMenu1
      TabSkin = 'SPEEDBUTTON'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object sTabSheet1: TsTabSheet
      Caption = #1055#1056#1048#1061#1054#1044'  '
      ImageIndex = 7
      OnHide = sTabSheet1Hide
      OnShow = sTabSheet1Show
    end
    object sTabSheet2: TsTabSheet
      Caption = #1056#1040#1057#1061#1054#1044'  '
      ImageIndex = 6
      OnHide = sTabSheet2Hide
      OnShow = sTabSheet2Show
    end
    object sTabSheet3: TsTabSheet
      Caption = #1057#1063#1025#1058'-'#1055#1056#1054#1058#1054#1050#1054#1051'  '
      ImageIndex = 8
      OnHide = sTabSheet3Hide
      OnShow = sTabSheet3Show
    end
    object sTabSheet5: TsTabSheet
      Caption = #1058#1054#1042#1040#1056' '#1053#1040' '#1057#1050#1051#1040#1044#1045'  '
      ImageIndex = 9
      OnHide = sTabSheet5Hide
      OnShow = sTabSheet5Show
    end
    object sTabSheetBank_doc: TsTabSheet
      Caption = #1041#1040#1053#1050#1054#1042#1057#1050#1048#1045' '#1044#1054#1050#1059#1052#1045#1053#1058#1067
      ImageIndex = 10
      OnHide = sTabSheetBank_docHide
      OnShow = sTabSheetBank_docShow
    end
    object sTabSheet4: TsTabSheet
      Caption = #1057#1055#1056#1040#1042#1054#1063#1053#1048#1050'  '
      ImageIndex = 11
      OnShow = sTabSheet4Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
    object Report: TsTabSheet
      Caption = #1054#1090#1095#1105#1090#1099
      ImageIndex = 8
      TabVisible = False
      TabType = ttMenu
      TabMenu = PopupMenu
      TabSkin = 'MENUBTN'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object status: TsStatusBar
    Left = 0
    Top = 763
    Width = 1008
    Height = 19
    Panels = <
      item
        Width = 150
      end
      item
        Width = 160
      end
      item
        Width = 190
      end
      item
        Width = 110
      end
      item
        Alignment = taRightJustify
        Text = #1040#1083#1100#1092#1072' '#1074#1077#1088#1089#1080#1103' '#1087#1088#1086#1075#1088#1072#1084#1084#1099
        Width = 50
      end>
    SkinData.SkinSection = 'STATUSBAR'
  end
  object MainMenu1: TMainMenu
    Left = 304
    Top = 152
    object v1: TMenuItem
      Caption = #1052#1077#1085#1102
      Visible = False
      object N1: TMenuItem
        Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082
        object F1: TMenuItem
          Caption = #1058#1088#1072#1085#1089#1087#1086#1088#1090
          OnClick = F1Click
        end
        object R1: TMenuItem
          Caption = #1050#1086#1085#1090#1088#1072#1075#1077#1085#1090#1099
          OnClick = R1Click
        end
        object N2: TMenuItem
          Caption = #1057#1082#1083#1072#1076
          OnClick = N2Click
        end
        object N4: TMenuItem
          Caption = #1058#1086#1074#1072#1088
          OnClick = N4Click
        end
        object N5: TMenuItem
          Caption = #1045#1076#1077#1085#1080#1094#1072' '#1080#1079#1084#1077#1088#1077#1085#1080#1103
          OnClick = N5Click
        end
      end
      object t1: TMenuItem
        Caption = 'test'
        OnClick = t1Click
      end
    end
    object Y1: TMenuItem
      Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077
      Visible = False
      object N3: TMenuItem
        Caption = #1055#1088#1080#1093#1086#1076
        OnClick = N3Click
      end
      object h1: TMenuItem
        Caption = #1056#1072#1089#1093#1086#1076
        OnClick = h1Click
      end
    end
  end
  object PopupMenu: TPopupMenu
    Images = dm.ImageList48
    MenuAnimation = [maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop]
    Left = 352
    Top = 152
    object N6: TMenuItem
      Caption = #1054#1058#1063#1025#1058' '#1055#1054' '#1055#1056#1048#1041#1067#1051#1048
      ImageIndex = 29
      OnClick = N6Click
    end
    object j1: TMenuItem
      Caption = #1054#1058#1063#1025#1058' '#1055#1054' '#1050#1054#1053#1058#1056#1040#1043#1045#1053#1058#1040#1052
      ImageIndex = 28
      OnClick = J1Click
    end
    object j2: TMenuItem
      Caption = #1054#1058#1063#1025#1058' '#1053#1044#1057
      ImageIndex = 28
      OnClick = j2Click
    end
    object H2: TMenuItem
      Caption = #1056#1045#1045#1057#1058#1056' '#1053#1040#1050#1051#1040#1044#1053#1067#1061
      ImageIndex = 28
      OnClick = H2Click
    end
    object N7: TMenuItem
      Caption = #1040#1050#1058' '#1057#1042#1045#1056#1050#1048
      ImageIndex = 28
      OnClick = N7Click
    end
  end
  object sTitleBar: TsTitleBar
    Images = dm.ImageList16
    Items = <
      item
        Caption = #1052#1045#1053#1070
        DropdownMenu = dm.PopupMenu1
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Visible = False
        Height = 21
        Width = 57
        Index = 0
        Name = 'TacTitleBarItem'
        ShowHint = False
      end
      item
        Align = tbaCenter
        Caption = #1058#1054#1042#1040#1056#1067' '#1053#1040' '#1057#1050#1051#1040#1044#1045
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Width = 121
        Index = 1
        Name = 'TacTitleBarItem'
        ShowHint = False
      end
      item
        Caption = #1053#1040#1057#1058#1056#1054#1049#1050#1048'  '
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Width = 85
        Index = 2
        Name = 'TacTitleBarItem'
        ShowHint = False
        OnClick = sTitleBarItems2Click
      end
      item
        Caption = #1054#1058#1063#1025#1058#1067
        DropdownMenu = PopupMenu
        FontData.Font.Charset = DEFAULT_CHARSET
        FontData.Font.Color = clWindowText
        FontData.Font.Height = -11
        FontData.Font.Name = 'Tahoma'
        FontData.Font.Style = []
        Height = 21
        Width = 65
        Index = 3
        Name = 'TacTitleBarItem'
        ShowHint = False
      end>
    ShowCaption = False
    Left = 248
    Top = 160
  end
  object ShowFormUpdate: TTimer
    Interval = 4000
    OnTimer = ShowFormUpdateTimer
    Left = 328
    Top = 48
  end
end
