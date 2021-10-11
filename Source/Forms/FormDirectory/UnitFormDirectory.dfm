object FormDirectory: TFormDirectory
  Left = 0
  Top = 0
  Caption = #1057#1055#1056#1040#1042#1054#1063#1053#1048#1050
  ClientHeight = 366
  ClientWidth = 1056
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
  object PageControl: TsPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 1050
    Height = 360
    ActivePage = sTabSheetContractor
    Align = alClient
    Images = dm.sAlphaImageList24
    MultiLine = True
    TabOrder = 0
    TabPosition = tpBottom
    AccessibleDisabledPages = False
    ActiveIsBold = True
    TabMargin = 5
    SkinData.SkinSection = 'PAGECONTROL'
    TabAlignment = taLeftJustify
    object sTabSheetContractor: TsTabSheet
      Caption = #1050#1054#1053#1058#1056#1040#1043#1045#1053#1058#1067
      ImageIndex = 14
      OnShow = sTabSheetContractorShow
    end
    object sTabSheetCar: TsTabSheet
      Caption = #1058#1056#1040#1053#1057#1055#1054#1056#1058
      ImageIndex = 13
      OnShow = sTabSheetCarShow
    end
    object sTabSheetMetrics: TsTabSheet
      Caption = ' '#1048#1047#1052#1045#1056#1045#1053#1048#1071
      ImageIndex = 16
      OnShow = sTabSheetMetricsShow
    end
    object sTabSheetGoods: TsTabSheet
      Caption = #1058#1054#1042#1040#1056
      ImageIndex = 15
      OnShow = sTabSheetGoodsShow
    end
    object sTabSheetStock: TsTabSheet
      Caption = #1057#1050#1051#1040#1044#1067
      ImageIndex = 9
      OnShow = sTabSheetStockShow
    end
    object pageDocType: TsTabSheet
      Caption = #1058#1048#1055' '#1044#1054#1050#1059#1052#1045#1053#1058#1040
      ImageIndex = 8
      OnShow = pageDocTypeShow
    end
  end
end
