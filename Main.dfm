object MainForm: TMainForm
  Left = 153
  Top = 207
  Width = 630
  Height = 420
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  Caption = 'Multimedia Explorer'
  Color = clBtnFace
  Constraints.MinHeight = 220
  Constraints.MinWidth = 330
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object BottomPanel: TPanel
    Left = 0
    Top = 266
    Width = 614
    Height = 95
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      614
      95)
    object pbBottom: TPaintBox
      Left = 0
      Top = 0
      Width = 614
      Height = 95
      Align = alClient
      OnPaint = pbBottomPaint
    end
    object lbInfo: TLabel
      Left = 34
      Top = 6
      Width = 5
      Height = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object lbTime: TLabel
      Left = 523
      Top = 6
      Width = 65
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = '0:00 / 0:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object imgPlay: TImage
      Left = 88
      Top = 50
      Width = 32
      Height = 32
      Cursor = crHandPoint
      OnClick = bnPlayClick
      OnMouseDown = imgPlayMouseDown
      OnMouseUp = imgPlayMouseUp
    end
    object imgPause: TImage
      Left = 120
      Top = 50
      Width = 32
      Height = 32
      Cursor = crHandPoint
      OnClick = bnPauseClick
      OnMouseDown = imgPauseMouseDown
      OnMouseUp = imgPauseMouseUp
    end
    object imgStop: TImage
      Left = 152
      Top = 50
      Width = 32
      Height = 32
      Cursor = crHandPoint
      OnClick = bnStopClick
      OnMouseDown = imgStopMouseDown
      OnMouseUp = imgStopMouseUp
    end
    object imgSymbol: TImage
      Left = 26
      Top = 36
      Width = 40
      Height = 40
      Cursor = crHandPoint
      Hint = 'https://github.com/sunchaserinfo/mediaexpl'
      ParentShowHint = False
      ShowHint = True
      OnClick = imgSymbolClick
    end
    object pbVolume: TPaintBox
      Tag = 128
      Left = 208
      Top = 54
      Width = 95
      Height = 24
      OnMouseDown = pbVolumeMouseDown
      OnMouseMove = pbVolumeMouseMove
      OnMouseUp = pbVolumeMouseUp
      OnPaint = pbVolumePaint
    end
    object pbPos: TProgressBar
      Left = 88
      Top = 28
      Width = 512
      Height = 16
      Cursor = crHandPoint
      Anchors = [akLeft, akTop, akRight]
      Smooth = True
      TabOrder = 0
      OnMouseUp = pbPosMouseUp
    end
  end
  object RightPanel: TPanel
    Left = 598
    Top = 16
    Width = 16
    Height = 250
    Align = alRight
    BevelOuter = bvNone
    TabOrder = 1
    object pbRight: TPaintBox
      Left = 0
      Top = 0
      Width = 16
      Height = 250
      Align = alClient
      OnPaint = pbRightPaint
    end
  end
  object TopPanel: TPanel
    Left = 0
    Top = 0
    Width = 614
    Height = 16
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object pbTop: TPaintBox
      Left = 0
      Top = 0
      Width = 614
      Height = 16
      Align = alClient
      OnPaint = pbTopPaint
    end
  end
  object CentralPanel: TPanel
    Left = 80
    Top = 16
    Width = 518
    Height = 250
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 3
    object Splitter1: TSplitter
      Left = 241
      Top = 0
      Height = 250
    end
    object stvTree: TShellTreeView
      Left = 0
      Top = 0
      Width = 241
      Height = 250
      ObjectTypes = [otFolders]
      Root = 'rfDesktop'
      ShellListView = slvFile
      UseShellImages = True
      Align = alLeft
      AutoRefresh = True
      Ctl3D = True
      Indent = 19
      ParentColor = False
      ParentCtl3D = False
      RightClickSelect = True
      ShowRoot = False
      TabOrder = 0
    end
    object slvFile: TShellListView
      Left = 244
      Top = 0
      Width = 274
      Height = 250
      ObjectTypes = [otFolders, otNonFolders]
      Root = 'rfDesktop'
      ShellTreeView = stvTree
      Sorted = True
      Align = alClient
      ReadOnly = False
      GridLines = True
      HideSelection = False
      RowSelect = True
      OnChange = slvFileChange
      TabOrder = 1
      ViewStyle = vsReport
    end
  end
  object LeftPanel: TPanel
    Left = 0
    Top = 16
    Width = 80
    Height = 250
    Align = alLeft
    BevelOuter = bvNone
    TabOrder = 4
    object pbLeft: TPaintBox
      Left = 0
      Top = 0
      Width = 80
      Height = 250
      Align = alClient
      OnPaint = pbLeftPaint
    end
    object btnBrowser: TImage
      Left = 0
      Top = 8
      Width = 80
      Height = 40
      Cursor = crHandPoint
      OnMouseDown = btnBrowserMouseDown
      OnMouseUp = btnBrowserMouseUp
    end
  end
  object XPManifest: TXPManifest
    Left = 144
    Top = 32
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 80
    Top = 32
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 32
    object File1: TMenuItem
      Caption = '&File'
      object Exit1: TMenuItem
        Caption = 'E&xit'
        ShortCut = 32883
        OnClick = Exit1Click
      end
    end
    object Options1: TMenuItem
      Caption = '&Options'
      object Plugins1: TMenuItem
        Caption = '&Plugins...'
        Enabled = False
      end
    end
    object N1: TMenuItem
      Caption = '&?'
      object Internet1: TMenuItem
        Caption = '&Internet'
        Visible = False
        object LPHomePage1: TMenuItem
          Caption = 'LP HomePage (Eng)'
        end
        object LPHomePageRus1: TMenuItem
          Caption = 'LP HomePage (Rus)'
        end
        object N3: TMenuItem
          Caption = '-'
        end
        object ProductHomePageEng1: TMenuItem
          Caption = 'Product HomePage (Eng)'
          Enabled = False
        end
        object ProductHomePageRus1: TMenuItem
          Caption = 'Product HomePage (Rus)'
          Enabled = False
        end
        object N4: TMenuItem
          Caption = '-'
        end
        object EMailUs1: TMenuItem
          Caption = 'E-Mail Us'
        end
        object BugReport1: TMenuItem
          Caption = 'Bug Report'
        end
      end
      object N2: TMenuItem
        Caption = '-'
        Visible = False
      end
      object About1: TMenuItem
        Caption = '&About...'
        ShortCut = 32880
        OnClick = About1Click
      end
    end
  end
end
