object AddSigForm: TAddSigForm
  Left = 527
  Top = 105
  BorderStyle = bsDialog
  Caption = 'Add new virus signature'
  ClientHeight = 249
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 16
    Top = 208
    Width = 297
    Height = 2
  end
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 55
    Height = 13
    Caption = 'Virus name:'
  end
  object Label2: TLabel
    Left = 16
    Top = 64
    Width = 72
    Height = 13
    Caption = 'Signature style:'
  end
  object Label3: TLabel
    Left = 16
    Top = 112
    Width = 48
    Height = 13
    Caption = 'Signature:'
  end
  object Label4: TLabel
    Left = 16
    Top = 160
    Width = 125
    Height = 13
    Caption = 'Position for Byte signature:'
  end
  object Label5: TLabel
    Left = 224
    Top = 112
    Width = 85
    Height = 13
    Cursor = crHandPoint
    Caption = 'Get file MD5 hash'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsUnderline]
    ParentFont = False
    OnClick = Label5Click
  end
  object Add: TBitBtn
    Left = 232
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Add'
    TabOrder = 0
    OnClick = AddClick
  end
  object Cansel: TBitBtn
    Left = 152
    Top = 216
    Width = 75
    Height = 25
    Caption = 'Cansel'
    TabOrder = 1
    OnClick = CanselClick
  end
  object Edit1: TEdit
    Left = 16
    Top = 32
    Width = 297
    Height = 21
    TabOrder = 2
    Text = 'Virus name'
  end
  object Edit2: TEdit
    Left = 16
    Top = 128
    Width = 297
    Height = 21
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 16
    Top = 80
    Width = 297
    Height = 22
    Style = csOwnerDrawFixed
    ItemHeight = 16
    ItemIndex = 0
    TabOrder = 4
    Text = 'MD5 Hash signture'
    Items.Strings = (
      'MD5 Hash signture'
      'Hex signature'
      'Byte signature')
  end
  object Edit3: TEdit
    Left = 16
    Top = 176
    Width = 129
    Height = 21
    TabOrder = 5
    Text = '0'
  end
  object OpenDialog1: TOpenDialog
    Left = 160
    Top = 168
  end
end
