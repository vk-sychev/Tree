object FMain: TFMain
  Left = 218
  Top = 264
  Width = 462
  Height = 330
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
  DesignSize = (
    446
    291)
  PixelsPerInch = 96
  TextHeight = 13
  object pnl2: TPanel
    Left = 251
    Top = 162
    Width = 193
    Height = 121
    Anchors = []
    Caption = 'pnl2'
    TabOrder = 2
    object Label1: TLabel
      Left = 1
      Top = 76
      Width = 152
      Height = 13
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1074#1093#1086#1078#1076#1077#1085#1080#1081' '#1095#1080#1089#1083#1072':'
    end
    object lblNumber: TLabel
      Left = 0
      Top = 12
      Width = 57
      Height = 13
      Caption = #1042#1074#1086#1076' '#1095#1080#1089#1083#1072
    end
    object edtRes: TEdit
      Left = 0
      Top = 92
      Width = 153
      Height = 21
      ReadOnly = True
      TabOrder = 0
      Text = ' '
    end
    object seNumber: TSpinEdit
      Left = 0
      Top = 27
      Width = 121
      Height = 22
      MaxValue = 100
      MinValue = 0
      TabOrder = 1
      Value = 1
      OnChange = seNumberChange
    end
  end
  object pnlMain: TPanel
    Left = 249
    Top = 9
    Width = 193
    Height = 137
    Anchors = []
    TabOrder = 0
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
  object pnl1: TPanel
    Left = 0
    Top = 1
    Width = 241
    Height = 281
    Anchors = []
    Caption = 'pnl1'
    TabOrder = 1
    object lblSize: TLabel
      Left = 16
      Top = 8
      Width = 39
      Height = 13
      Caption = #1056#1072#1079#1084#1077#1088
    end
    object btnClear: TButton
      Left = 136
      Top = 24
      Width = 97
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100
      Default = True
      TabOrder = 0
      OnClick = btnClearClick
    end
    object seSize: TSpinEdit
      Left = 0
      Top = 24
      Width = 121
      Height = 22
      MaxValue = 10
      MinValue = 1
      TabOrder = 1
      Value = 5
      OnChange = seSizeChange
    end
    object tv: TTreeView
      Left = 0
      Top = 56
      Width = 241
      Height = 225
      Indent = 19
      TabOrder = 2
    end
  end
end
