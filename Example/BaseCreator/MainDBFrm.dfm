object MainDBForm: TMainDBForm
  Left = 192
  Top = 107
  Width = 339
  Height = 283
  Caption = 'BaseCreator for AID Database'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 216
    Width = 331
    Height = 21
    Panels = <>
  end
  object ListView1: TListView
    Left = 0
    Top = 0
    Width = 331
    Height = 216
    Align = alClient
    Columns = <
      item
        AutoSize = True
        Caption = 'Virus name'
      end
      item
        AutoSize = True
        Caption = 'Sign. type'
      end
      item
        AutoSize = True
        Caption = 'Signature'
      end
      item
        AutoSize = True
        Caption = 'Sign pos'
      end>
    ColumnClick = False
    TabOrder = 1
    ViewStyle = vsReport
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 24
    object Base1: TMenuItem
      Caption = 'Base'
      object NewAIDDB1: TMenuItem
        Caption = 'New AID DB'
        OnClick = NewAIDDB1Click
      end
      object AddVirusrecord1: TMenuItem
        Caption = 'Add Virus record'
        OnClick = AddVirusrecord1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object SaveDB1: TMenuItem
        Caption = 'Save DB Unpack'
        OnClick = SaveDB1Click
      end
      object PackBase1: TMenuItem
        Caption = 'Pack Base'
        OnClick = PackBase1Click
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object N1: TMenuItem
      Caption = '?'
      OnClick = N1Click
    end
  end
  object XPManifest1: TXPManifest
    Left = 72
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = '*.Unpk'
    Filter = 'AID Database Unpak file|*.Unpk'
    Options = [ofHideReadOnly, ofExtensionDifferent, ofEnableSizing]
    Left = 104
    Top = 24
  end
  object OpenDialog1: TOpenDialog
    DefaultExt = '*.avb'
    Filter = 'AID Database Unpak file|*.Unpk'
    Left = 8
    Top = 24
  end
end
