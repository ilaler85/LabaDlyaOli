object Task: TTask
  Left = 211
  Top = 162
  Width = 379
  Height = 364
  Caption = #1055#1086#1095#1090#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LOut: TLabel
    Left = 8
    Top = 8
    Width = 68
    Height = 13
    Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
    Visible = False
  end
  object Lin: TLabel
    Left = 168
    Top = 8
    Width = 61
    Height = 13
    Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
    Visible = False
  end
  object Tdate: TLabel
    Left = 8
    Top = 64
    Width = 26
    Height = 13
    Caption = #1044#1072#1090#1072
    Visible = False
  end
  object Ttupe: TLabel
    Left = 8
    Top = 120
    Width = 56
    Height = 13
    Caption = #1058#1080#1087' '#1087#1080#1089#1100#1084#1072
    Visible = False
  end
  object Label1: TLabel
    Left = 144
    Top = 120
    Width = 67
    Height = 26
    Caption = #1058#1077#1082#1089#1090' '#1087#1080#1089#1100#1084#1072#13#10
    Visible = False
  end
  object outt: TEdit
    Left = 8
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Visible = False
  end
  object inn: TEdit
    Left = 168
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 1
    Visible = False
  end
  object dd: TEdit
    Left = 8
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'dd'
    Visible = False
  end
  object mm: TEdit
    Left = 88
    Top = 88
    Width = 57
    Height = 21
    TabOrder = 3
    Text = 'mm'
    Visible = False
  end
  object yy: TEdit
    Left = 160
    Top = 88
    Width = 65
    Height = 21
    TabOrder = 4
    Text = 'yyyy'
    Visible = False
  end
  object Rbletter: TRadioButton
    Left = 8
    Top = 136
    Width = 113
    Height = 17
    Caption = #1055#1080#1089#1100#1084#1086
    TabOrder = 5
    Visible = False
    OnClick = RbletterClick
  end
  object Rbparcel: TRadioButton
    Left = 8
    Top = 160
    Width = 113
    Height = 17
    Caption = #1055#1086#1089#1099#1083#1082#1072
    TabOrder = 6
    Visible = False
    OnClick = RbparcelClick
  end
  object Rbtransfer: TRadioButton
    Left = 8
    Top = 184
    Width = 113
    Height = 17
    Caption = #1055#1077#1088#1077#1074#1086#1076
    TabOrder = 7
    Visible = False
    OnClick = RbtransferClick
  end
  object Add: TButton
    Left = 104
    Top = 248
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 8
    Visible = False
    OnClick = AddClick
  end
  object zakaz: TCheckBox
    Left = 144
    Top = 208
    Width = 97
    Height = 17
    Caption = #1047#1072#1082#1072#1079#1085#1086#1077' '#1087#1080#1089#1100#1084#1086
    TabOrder = 9
    Visible = False
  end
  object text1: TMemo
    Left = 144
    Top = 144
    Width = 137
    Height = 57
    Lines.Strings = (
      'text1')
    TabOrder = 10
    Visible = False
  end
  object runn: TButton
    Left = 200
    Top = 248
    Width = 75
    Height = 25
    Caption = #1054#1090#1074#1077#1090
    TabOrder = 11
    Visible = False
    OnClick = runnClick
  end
  object ddd: TEdit
    Left = 8
    Top = 120
    Width = 65
    Height = 21
    TabOrder = 12
    Text = 'dd'
    Visible = False
  end
  object mmm: TEdit
    Left = 88
    Top = 120
    Width = 57
    Height = 21
    TabOrder = 13
    Text = 'mm'
    Visible = False
  end
  object yyy: TEdit
    Left = 160
    Top = 120
    Width = 65
    Height = 21
    TabOrder = 14
    Text = 'yyyy'
    Visible = False
  end
  object menu: TMainMenu
    Left = 16
    Top = 232
    object N1: TMenuItem
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1086#1095#1090#1086#1074#1086#1077' '#1086#1090#1087#1088#1072#1074#1083#1077#1085#1080#1077
      object Nadd: TMenuItem
        Caption = #1044#1086#1073#1072#1074#1072#1080#1090#1100
        OnClick = NaddClick
      end
    end
    object N2: TMenuItem
      Caption = #1056#1077#1096#1080#1090#1100' '#1086#1089#1085#1086#1074#1085#1091#1102' '#1079#1072#1076#1072#1095#1091
      object Nrun: TMenuItem
        Caption = #1056#1077#1096#1080#1090#1100
        OnClick = NrunClick
      end
    end
  end
end
