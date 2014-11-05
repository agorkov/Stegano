object FMain: TFMain
  Left = 0
  Top = 0
  Caption = #1057#1090#1077#1075#1072#1085#1086#1075#1088#1072#1092#1080#1103
  ClientHeight = 210
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF009999
    9999999999999999999999999999999999999999999999999999999999999900
    0000000000000000000000000099990000009999999999999999000000999900
    0000999999999999999900000099990000009999999999999999000000999900
    0000999999999999999900000099990000009999900000009999000000999900
    0000999990000000999900000099990000009999900000009999000000999900
    0000999990000000999900000099990000009999900099999999000000999900
    0000999990009999999900000099990000009999900099999999000000999900
    0000999990009999999900000099990000009999900099999999000000999900
    0000999990000000000000000099990000009999900000000000000000999900
    0000999990000000000000000099990000009999900000000000000000999900
    0000999990000000000000000099990000009999900000009999000000999900
    0000999990000000999900000099990000009999900000009999000000999900
    0000999990000000999900000099990000009999999999999999000000999900
    0000999999999999999900000099990000009999999999999999000000999900
    0000999999999999999900000099990000000000000000000000000000999999
    9999999999999999999999999999999999999999999999999999999999990000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PCSteganoContainer: TPageControl
    Left = 265
    Top = 0
    Width = 274
    Height = 210
    ActivePage = TSExcel
    Align = alClient
    TabOrder = 0
    object TSExcel: TTabSheet
      Caption = 'Excel'
      object LEExcelWorkbookName: TLabeledEdit
        Left = 3
        Top = 24
        Width = 229
        Height = 21
        EditLabel.Width = 62
        EditLabel.Height = 13
        EditLabel.Caption = #1050#1085#1080#1075#1072' Excel:'
        TabOrder = 0
      end
      object BSelectExcelBook: TButton
        Left = 238
        Top = 24
        Width = 25
        Height = 21
        Caption = '...'
        TabOrder = 1
        OnClick = BSelectExcelBookClick
      end
      object BWriteAngle: TButton
        Left = 3
        Top = 51
        Width = 126
        Height = 25
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnClick = BWriteAngleClick
      end
      object BReadAngle: TButton
        Left = 135
        Top = 51
        Width = 126
        Height = 25
        Caption = #1057#1095#1080#1090#1072#1090#1100
        Enabled = False
        TabOrder = 3
        OnClick = BReadAngleClick
      end
      object BWriteSecretSheet: TButton
        Left = 3
        Top = 123
        Width = 126
        Height = 25
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1086#1073#1084#1072#1085#1082#1091
        Enabled = False
        TabOrder = 4
        OnClick = BWriteSecretSheetClick
      end
      object BReadSecretSheet: TButton
        Left = 137
        Top = 123
        Width = 126
        Height = 25
        Caption = #1057#1095#1080#1090#1072#1090#1100' '#1086#1073#1084#1072#1085#1082#1091
        Enabled = False
        TabOrder = 5
        OnClick = BReadSecretSheetClick
      end
      object LE_SecretSheet: TLabeledEdit
        Left = 3
        Top = 96
        Width = 260
        Height = 21
        EditLabel.Width = 77
        EditLabel.Height = 13
        EditLabel.Caption = #1057#1082#1088#1099#1090#1099#1081' '#1083#1080#1089#1090':'
        TabOrder = 6
        Text = 'SecretSheet'
      end
      object BCheck: TButton
        Left = 3
        Top = 154
        Width = 260
        Height = 25
        Caption = #1055#1088#1086#1074#1077#1088#1082#1072
        Enabled = False
        TabOrder = 7
        OnClick = BCheckClick
      end
    end
  end
  object PMSG: TPanel
    Left = 0
    Top = 0
    Width = 265
    Height = 210
    Align = alLeft
    TabOrder = 1
    object MMSG: TMemo
      Left = 1
      Top = 1
      Width = 263
      Height = 208
      Align = alClient
      Lines.Strings = (
        #1042#1074#1077#1076#1080#1090#1077' '#1089#1086#1086#1073#1097#1077#1085#1080#1077)
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object OPD: TOpenDialog
    Filter = 'Excel Workbook|*.xls|Excel Workbook|*.xlsx'
    Left = 208
    Top = 8
  end
end
