object FMain: TFMain
  Left = 218
  Top = 264
  Width = 461
  Height = 327
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = #1044#1077#1088#1077#1074#1100#1103
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lblSize: TLabel
    Left = 0
    Top = 0
    Width = 39
    Height = 13
    Caption = #1056#1072#1079#1084#1077#1088
  end
  object lblNumber: TLabel
    Left = 248
    Top = 168
    Width = 57
    Height = 13
    Caption = #1042#1074#1086#1076' '#1095#1080#1089#1083#1072
  end
  object Label1: TLabel
    Left = 248
    Top = 232
    Width = 152
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1093#1086#1078#1076#1077#1085#1080#1081' '#1095#1080#1089#1083#1072':'
  end
  object tv: TTreeView
    Left = 0
    Top = 48
    Width = 241
    Height = 225
    Indent = 19
    TabOrder = 0
  end
  object seSize: TSpinEdit
    Left = 0
    Top = 16
    Width = 121
    Height = 22
    MaxValue = 10
    MinValue = 1
    TabOrder = 1
    Value = 5
    OnChange = seSizeChange
  end
  object btnClear: TButton
    Left = 144
    Top = 16
    Width = 97
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    Default = True
    TabOrder = 2
    OnClick = btnClearClick
  end
  object pnlMain: TPanel
    Left = 248
    Top = 16
    Width = 193
    Height = 137
    TabOrder = 3
    object lblCreate: TLabel
      Left = 16
      Top = 8
      Width = 45
      Height = 13
      Caption = #1057#1086#1079#1076#1072#1090#1100':'
    end
    object lblIorR: TLabel
      Left = 16
      Top = 64
      Width = 41
      Height = 13
      Caption = #1056#1077#1096#1080#1090#1100':'
    end
    object btnRandom: TButton
      Left = 16
      Top = 32
      Width = 75
      Height = 25
      Caption = #1056#1072#1085#1076#1086#1084#1085#1091#1102
      TabOrder = 0
      OnClick = btnRandomClick
    end
    object btnI: TButton
      Left = 16
      Top = 88
      Width = 75
      Height = 25
      Caption = #1048#1090#1077#1088#1072#1090#1080#1074#1085#1086
      TabOrder = 1
      OnClick = btnIClick
    end
    object btnR: TButton
      Left = 104
      Top = 88
      Width = 75
      Height = 25
      Caption = #1056#1077#1082#1091#1088#1089#1080#1074#1085#1086
      TabOrder = 2
      OnClick = btnRClick
    end
  end
  object seNumber: TSpinEdit
    Left = 248
    Top = 184
    Width = 121
    Height = 22
    MaxValue = 100
    MinValue = 0
    TabOrder = 4
    Value = 1
    OnChange = seNumberChange
  end
  object edtRes: TEdit
    Left = 248
    Top = 248
    Width = 153
    Height = 21
    ReadOnly = True
    TabOrder = 5
    Text = ' '
  end
end
