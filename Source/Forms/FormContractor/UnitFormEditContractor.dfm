object FormEditContractor: TFormEditContractor
  Left = 0
  Top = 0
  Caption = #1050#1054#1053#1058#1056#1040#1043#1045#1053#1058#1067
  ClientHeight = 454
  ClientWidth = 825
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Trebuchet MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 18
  object DBVertGridEh1: TDBVertGridEh
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 819
    Height = 396
    Align = alClient
    AllowedSelections = []
    RowCategories.CategoryProps = <>
    PrintService.ColorSchema = pcsFullColorEh
    DrawGraphicData = True
    DrawMemoText = True
    TabOrder = 0
    LabelColWidth = 159
    Rows = <
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'id_contractor'
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_contractor'
        RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'unp'
        RowLabel.Caption = #1059#1053#1055
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'okpo'
        RowLabel.Caption = #1054#1050#1055#1054
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'legal_address'
        RowLabel.Caption = #1070#1088#1080#1076#1080#1095#1077#1089#1082#1080#1081' '#1040#1076#1088#1077#1089
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'phone'
        RowLabel.Caption = #1058#1077#1083#1077#1092#1086#1085
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'mailing_address'
        RowLabel.Caption = #1055#1086#1095#1090#1086#1074#1099#1081' '#1072#1076#1088#1077#1089
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'head'
        RowLabel.Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'checking_account'
        RowLabel.Caption = #1056#1072#1089#1095#1105#1090#1085#1099#1081' '#1089#1095#1105#1090
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_bank'
        RowLabel.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1073#1072#1085#1082#1072
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'agreement'
        RowLabel.Caption = #1044#1086#1075#1086#1074#1086#1088
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_agreement'
        RowLabel.Caption = #1044#1072#1090#1072' '#1076#1086#1075#1086#1074#1086#1088#1072
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'delete_contactor'
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'small_name_contractor'
        RowLabel.Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'count_adress'
        Visible = False
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'main_contactor'
        RowLabel.Caption = #1058#1077#1082#1091#1097#1072#1103' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
      end
      item
        DynProps = <>
        EditButtons = <>
        FieldName = 'idcontactor_table'
        Visible = False
      end>
  end
  object sButton1: TsButton
    AlignWithMargins = True
    Left = 300
    Top = 405
    Width = 225
    Height = 46
    Margins.Left = 300
    Margins.Right = 300
    Align = alBottom
    Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
    TabOrder = 1
    OnClick = sButton1Click
    ExplicitLeft = 0
    ExplicitTop = 408
    ExplicitWidth = 1044
  end
end
