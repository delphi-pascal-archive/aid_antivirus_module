object MainForm: TMainForm
  Left = 201
  Top = 113
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'AID Module Example'
  ClientHeight = 398
  ClientWidth = 481
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ButtonPanel: TPanel
    Left = 0
    Top = 359
    Width = 481
    Height = 39
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    object Bevel1: TBevel
      Left = 0
      Top = 0
      Width = 481
      Height = 2
      Align = alTop
    end
    object BitBtn1: TBitBtn
      Left = 400
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Exit'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 320
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Abo&ut'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Scan'
      TabOrder = 2
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 88
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Pause'
      Enabled = False
      TabOrder = 3
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 168
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Stop'
      Enabled = False
      TabOrder = 4
      OnClick = BitBtn5Click
    end
  end
  object StatusPanel: TPanel
    Left = 0
    Top = 0
    Width = 481
    Height = 359
    Align = alClient
    BevelOuter = bvNone
    Caption = 'StatusPanel'
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 332
      Width = 481
      Height = 27
      Align = alBottom
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 0
      object Panel4: TPanel
        Left = 4
        Top = 1
        Width = 473
        Height = 22
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 0
        object Bevel3: TBevel
          Left = 406
          Top = 2
          Width = 4
          Height = 18
          Align = alRight
          Shape = bsSpacer
        end
        object Bevel4: TBevel
          Left = 341
          Top = 2
          Width = 4
          Height = 18
          Align = alRight
          Shape = bsSpacer
        end
        object Bevel5: TBevel
          Left = 308
          Top = 2
          Width = 4
          Height = 18
          Align = alRight
          Shape = bsSpacer
        end
        object Panel5: TPanel
          Left = 410
          Top = 2
          Width = 61
          Height = 18
          Align = alRight
          BevelOuter = bvLowered
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Panel6: TPanel
          Left = 345
          Top = 2
          Width = 61
          Height = 18
          Align = alRight
          BevelOuter = bvLowered
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object Panel7: TPanel
          Left = 312
          Top = 2
          Width = 29
          Height = 18
          Align = alRight
          BevelOuter = bvLowered
          Caption = '-'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object PathLabel: TPanel
          Left = 2
          Top = 2
          Width = 306
          Height = 18
          Align = alClient
          BevelOuter = bvLowered
          TabOrder = 3
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 481
      Height = 332
      Align = alClient
      BevelOuter = bvNone
      BorderWidth = 4
      TabOrder = 1
      object PageControl1: TPageControl
        Left = 4
        Top = 4
        Width = 473
        Height = 324
        ActivePage = TabSheet2
        Align = alClient
        TabOrder = 0
        object TabSheet1: TTabSheet
          Caption = 'Scan Path'
          object DriveList: TListView
            Left = 0
            Top = 0
            Width = 465
            Height = 296
            Align = alClient
            Checkboxes = True
            Color = clWhite
            Columns = <>
            SmallImages = ImageList1
            TabOrder = 0
            ViewStyle = vsList
          end
        end
        object TabSheet2: TTabSheet
          Caption = 'Scan Log'
          ImageIndex = 1
          object LogList: TListView
            Left = 0
            Top = 0
            Width = 465
            Height = 296
            Align = alClient
            BevelInner = bvSpace
            Color = clWhite
            Columns = <
              item
                AutoSize = True
                Caption = 'Log'
              end>
            ColumnClick = False
            TabOrder = 0
            ViewStyle = vsReport
            OnCustomDrawItem = LogListCustomDrawItem
          end
        end
      end
    end
  end
  object XPManifest: TXPManifest
    Left = 16
    Top = 276
  end
  object ImageList1: TImageList
    Left = 48
    Top = 276
    Bitmap = {
      494C010105000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D82C7000D82
      C7000D82C7000D82C7000D82C7000D82C7000D82C7000D82C7000D82C7000D82
      C7000D82C7000D82C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C70077E5FD0022A9
      FF0022A9FF0022A9FF0022A9FF0022A9FF0022A9FF0022A9FF0022A9FF0022A9
      FF0022A9FF0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0077E5
      FD0077E5FD0077E5FD0077E5FD0077E5FD00017C2E0077E5FD0077E5FD0077E5
      FD0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0077E5
      FD0077E5FD0077E5FD0077E5FD0077E5FD0000992600017C2E0077E5FD0077E5
      FD0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0077E5
      FD0000902400009024000090240000902400009A2600009B2600017C2E0077E5
      FD0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0077E5
      FD00009024000098260000982600009826000099260000982600009D2700017C
      2E0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0077E5
      FD0000A5290000A5290000A5290000A52900009726000098260020C2480077E5
      FD0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700B5F1FE0071E4
      FD0071E4FD0071E4FD0071E4FD0071E4FD00009A260020C2480077E5FD0077E5
      FD0077E5FD0022A9FF000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700FAFFFF00FAFF
      FF00FAFFFF00FAFFFF00FAFFFF00FAFFFF0020C2480071E4FD0071E4FD0071E4
      FD0071E4FD004ED0FC000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C7000D82C7000D82
      C7000D82C7000D82C7000D82C7000D82C700E8FDFE00E8FDFE00E8FDFE00E8FD
      FE00E8FDFE00E8FDFE000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000D82C700FAFFFF0077E5
      FD0077E5FD0077E5FD0077E5FD0077E5FD000D82C7000D82C7000D82C7000D82
      C7000D82C7000D82C70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D82C700FAFF
      FF00FAFFFF00FAFFFF00FAFFFF000D82C7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000D82
      C7000D82C7000D82C7000D82C700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000070707000585858005858580058585800707070000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0B0B0008B8B8B00A2A2A200CFCFCF000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C2C2C200808080005050500076767600B1B1B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000070707000585858005858
      5800585858000176A9000171A3000171A3000275A800016FA200404040005858
      5800585858005858580058585800585858000000000000000000000000000000
      0000CECECE009191910053535300837C7C00504C4C00484848005C5C5C008686
      8600B9B9B9000000000000000000000000000000000000000000000000000000
      0000B1B1B1007171710057575700988D8D007466660041414100535353007070
      7000A1A1A100D5D5D50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000002626260026262600262626002626
      26002626260015ADD9002BC1EB002AB8DF0028C0EA00057EAF00262626002626
      2600262626002626260026262600404040000000000000000000BFBFBF007F7F
      7F00737373008C8C8C00676767009F9999009D9B9B0090858500615959004C4A
      4A0053535300707070009F9F9F00000000000000000000000000A7A7A7006A6A
      6A0089898900A8A8A80066666600B6ACAC0088777700B19D9D00968383005D55
      5500494949005F5F5F008E8E8E00C0C0C0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000099999900FFF1DF00FFF1DF00FFF1
      E000FFF1E00032ADD500BBE5EF00CDF7FF00AFE4F200198FBD00FFF1DF00FFF1
      DF00FFF1DF00FFF1DF002626260058585800000000008C8C8C0087878700C9C9
      C900D5D5D500C9C9C9007A7A7A008C8B8B00A2A0A000C8C7C700D3D3D300A8A2
      A2008B838300615656004E4E4E008B8B8B000000000085858500A7A7A700D0D0
      D000D2D2D200C5C5C50077777700928F8F0034323200111010000E0E0E007E71
      7100C6A5A500816F6F0054515100767676000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009999990099999900999999009999
      9900999999004DB6D800DAEBEF00FFFFFF00D4EEF5001590BE00999999009999
      990099999900999999009999990000000000A4A4A400BDBDBD00D2D2D200C5C5
      C500BABABA00BEBEBE00B4B4B4008F8F8F00878787007D77770090888800C3BD
      BD00DCDADA00D1D1D100716B6B007D7D7D00A1A1A100C2C2C200CFCFCF00C2C2
      C200BABABA00C9C9C900CDCDCD008B8B8B00807F7F0065646400252323007270
      700025222200D5B0B000927D7D006D6D6D000000000000000000000000000000
      0000000000000000000000000000717171007171710071717100717171000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000025A7D20040B1D80048B0D2002B9FC60044A6C800000000000000
      000000000000000000000000000000000000B8B8B800C2C2C200BEBEBE00CECE
      CE00E5E5E500EAEAEA00E1E1E100C5C5C500C0C0C000C5C5C500979696008C86
      8600968888008A9488005365580094949400B6B6B600BEBEBE00C5C5C500D5D5
      D500E9E9E900C3BDBD00B4B4B400D4D4D400A6A6A6008686860076767600908C
      8C00897F7F00547E5E00737C6F008B8B8B000000000000000000000000000000
      000000000000717171007E7E7E005D5D5D005C5C5C0051515200515152007676
      7600767676000000000000000000000000000000000000000000000000000000
      0000000000000000000082828200AAA195001414140038383800000000000000
      000000000000000000000000000000000000BDBDBD00E1E1E100F2F2F200F4F4
      F400DFDFDF00BEB6B600D2C6C600C6BEBE00A09F9F00BBBBBB00D6D6D600D0D0
      D000BBBBBB007B7979008682820000000000C3C3C300E6E6E600F4F4F400F5F5
      F500F1F1F100EEA3A300A6595900C5C5C500BABABA00A9A9A900CACACA00A6A6
      A60086868600787777009F9C9C00000000000000000000000000000000007171
      7100717171008B8B8B00BDBDBD00666667004D4D4D0059595900585859006464
      6300575757007676760076767600000000000000000000000000000000000000
      000000000000919191004F4F4F008E828100332F2F001D1D1D00535353008888
      88000000000000000000000000000000000000000000E0E0E000DEDEDE00CBCB
      CB00C5A9A900FFD7D700FFDFDF00FFE8E800FFF5F500CDCDCD00B5B5B5009F9F
      9F00BBBBBB00CECECE00000000000000000000000000E0E0E000D3D3D300DCDC
      DC00EFEFEF00F0A9A900A6595900B6838300DCA9A900E1E1E1009D8A8A009265
      650062626200B4B4B4000000000000000000000000008686860086868600A8A8
      A800C1C1C1008D8D8D007F7F7F006C6C6C003333330033333300333333003333
      330054545400727171005A5A5A00767676000000000000000000BFBFBF007F7F
      7F00737373008C8C8C00A5A5A500746F6F003E3B3B0048434300564E4E004D4B
      4B005555550071717100A7A7A70000000000000000000000000000000000BDB1
      B100FFD1D100FFCECE00FFD7D700FFDFDF00FFFAFA00FFFFFF00ACACAC005353
      5300B4B4B4000000000000000000000000000000000000000000000000000000
      0000E0E0E000EDA9A900A6595900B6838300C7949400F8F8F800B49B9B00A659
      590049494900C3C3C300000000000000000086868600BBBBBB00A3A3A3009090
      900093939300B2B2B200CDCDCD00B6B6B5008F8F8E0072727200666666004545
      450033333300333333008383830071717100000000008888880088888800C9C9
      C900A3A3A3007F7F7F00828282007C7B7B004D4D4D00707070007C7C7C00736D
      6D0073646400554F4F00515151007A7A7A00000000000000000000000000CFBB
      BB00FFDADA00FFD3D400FFD9F300FFD8F700FFFAFF00FFF9F900FFE9E9005E5B
      5B00989898000000000000000000000000000000000000000000000000000000
      000000000000ECABAB00A6595900DBC2C200B59B9B00CCCCCC00BDA3A300A659
      590049494900C3C3C3000000000000000000868686009B9B9B00B0B0B000C6C6
      C600DCDCDC00E1E1E100E1E1E100E1E1E100DEDEDE00D7D7D700CECECE00C8C8
      C800ACACAD006D6D6E00616162008E8E8E00A5A5A500AEAEAE00989898008282
      8200A4A4A400B9B9B900D1D1D1008E8E8E00787878006B6B6B00818181006161
      610033333300B7989800897676006A6A6A00000000000000000000000000F5D2
      D200FFDADA00FFE5E900C0ADB400706F7000FFF4F900FFCCCC00FFCCCC007E71
      71008C8C8C000000000000000000000000000000000000000000000000000000
      000000000000ECAFAF00B96060009C565600AD7A7A008B71710080666600A659
      590049494900C3C3C300000000000000000086868600D2D2D200E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100DEDEDE00DADA
      DA00D9D9D900D9D9DA00BFBFBF008E8E8E009E9E9E009C9C9C00B5B5B500C7C7
      C700E1E1E100E6E6E600D0D0D000D8D8D800D1D1D100C3C3C3009A9999007C77
      77004542420093808000837575007C7C7C00000000000000000000000000D9B3
      B300FFCCCC00FFE2E600CCC0C900897D7E00FFF0F500FFD2D200FFDADA008D81
      8100A4A4A4000000000000000000000000000000000000000000000000000000
      000000000000ECB2B200A6595900B0B0B000CCBFBF00BDA3A300B3808000B960
      600049494900C3C3C300000000000000000000000000B8B8B800B8B8B800E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100BFBF
      BF00BFBFBF00BFBFBF000000000000000000B9B9B900D3D3D300DEDEDE00C7C7
      C700E1E1E100DFDFDF00F2F2F200FCFCFC00ECECEC00DFDFDF00F7F7F700EEEA
      EA00DECCCC008F8A8A008C87870000000000000000000000000000000000C4B4
      B400FFF5F500FFFFFF00FFE9FD00FFDAF700FFDEE300FFCFCF00FFD6D600817B
      7B00CFCFCF000000000000000000000000000000000000000000000000000000
      000000000000ECB5B500A6595900BCBCBC009E9E9E00B6B6B600D8D8D800A659
      590049494900C3C3C3000000000000000000000000000000000000000000B8B8
      B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B800B8B8B8000000
      000000000000000000000000000000000000E2E2E200DFDFDF00BABABA007878
      78006B6B6B00B8B8B800F2F2F200FCFCFC00ECECEC00DFDFDF00F7F7F700C9C9
      C900C0C0C000C9C9C9000000000000000000000000000000000000000000C5C5
      C500F5F5F500FFFFFF00FFF3F300FFE3E300FFDADA00FFD2D200D9B5B500A2A2
      A200000000000000000000000000000000000000000000000000000000000000
      000000000000EFBCBC00A6595900C6C6C600C6C6C600B9B9B900D4D4D400A659
      59005E5E5E00C9C9C90000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EAEA
      EA00DADADA00C7C7C700D4D4D400E6E6E600CCCCCC00D3D3D300D3D3D3000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BCBCBC00ECECEC00FFF4F400FFEBEB00FFE3E300E2C5C500A7A4A4000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000F2E5E500DFD2D200F1F1F100D7D7D700F0F0F000DADADA00BC76
      7600B9B9B9000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000CFCFCF00C4C1C100D4CECE00C0B8B800CCCCCC00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      C003000000000000800100000000000080010000000000008001000000000000
      8001000000000000800100000000000080010000000000008001000000000000
      800100000000000080010000000000008003000000000000C0FF000000000000
      E1FF000000000000FFFF000000000000FC1FFE1FFC1FFFFF8000F007F003FFFF
      0000C001C000FFFF000080008000FFFF000100000000FE1FF83F00000000F807
      FC3F00010001E001F80F800380038000C001E007F00300008000E007F8030000
      0000E007F80300000000E007F80380030001E007F803E01F0003E00FF803FFFF
      E01FF01FF807FFFFFFFFF83FFFFFFFFF00000000000000000000000000000000
      000000000000}
  end
end
