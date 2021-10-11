object FormJournal: TFormJournal
  Left = 0
  Top = 0
  Caption = #1046#1059#1056#1053#1040#1051
  ClientHeight = 459
  ClientWidth = 739
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
  object DBGridEh: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 733
    Height = 453
    Align = alClient
    AutoFitColWidths = True
    DynProps = <>
    FooterRowCount = 1
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowHeight = 5
    RowLines = 2
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        AutoFitColWidth = False
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_dey'
        Footers = <>
        Title.Caption = #1044#1072#1090#1072' '#1080' '#1074#1088#1077#1084#1103
        Width = 180
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'ip_client'
        Footers = <>
        Title.Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100'@IP-'#1072#1076#1088#1077#1089
        Width = 206
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'Name_abbreviation'
        Footers = <>
        Title.Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1085#1086#1077' '#1076#1077#1081#1089#1090#1074#1080#1077
        Width = 221
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
end
