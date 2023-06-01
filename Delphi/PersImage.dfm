object PersImageForm: TPersImageForm
  Left = 95
  Top = 186
  Caption = 'PersImageForm'
  ClientHeight = 642
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 286
    Height = 642
    Align = alLeft
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object AlpinePanel1: TAlpinePanel
      Left = 0
      Top = 492
      Width = 286
      Height = 150
      Align = alBottom
      BevelInner = bvLowered
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 22
      Caption.Indent = 2
      Caption.Text = 'Notes and Comments'
      Caption.TopIndent = 2
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      DesignSize = (
        286
        150)
      FullHeight = 0
      object NarrPanel: TPanel
        Left = 6
        Top = 25
        Width = 276
        Height = 121
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelInner = bvLowered
        Caption = 'Confidential Information'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object NarrField: TLabel
          Left = 2
          Top = 2
          Width = 272
          Height = 117
          Align = alClient
          AutoSize = False
          Caption = ' '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
          ExplicitLeft = 16
          ExplicitTop = 80
          ExplicitWidth = 241
          ExplicitHeight = 107
        end
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 0
      Width = 286
      Height = 492
      Align = alClient
      BevelInner = bvLowered
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object PersImageTypeTab: TTabControl
        Left = 1
        Top = 22
        Width = 284
        Height = 469
        Align = alClient
        TabOrder = 0
        OnChange = PersImageTypeTabChange
        object PersImageBrowse: TAlpineBlockBrowse
          Left = 4
          Top = 6
          width = 276
          height = 459
          Align = alClient
          BevelOuter = bvNone
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          UseDockManager = True
          OnClick = PersImageBrowseClick
          Version = '2.2.1.0'
          Caption.Color = clBlack
          Caption.ColorTo = clNone
          Caption.Font.Charset = ANSI_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -12
          Caption.Font.Name = 'Arial'
          Caption.Font.Style = [fsBold]
          Caption.GradientDirection = gdVertical
          Caption.Height = 22
          Caption.Indent = 2
          Caption.Text = 'Assigned Documents'
          Caption.TopIndent = 2
          ColorTo = clBtnFace
          ColorMirror = clBtnFace
          ColorMirrorTo = clBtnFace
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          FixedRowHeight = 22
          MobileConfig = False
          ButtonPanelVisible = True
          ModalLess = False
          OnGetFieldValue = PersImageBrowseGetFieldValue
          GridFont.Charset = DEFAULT_CHARSET
          GridFont.Color = clWindowText
          GridFont.Height = -13
          GridFont.Name = 'MS Sans Serif'
          GridFont.Style = []
          ButtonFont.Charset = DEFAULT_CHARSET
          ButtonFont.Color = clWindowText
          ButtonFont.Height = -11
          ButtonFont.Name = 'MS Sans Serif'
          ButtonFont.Style = []
          GridTitleFont.Charset = DEFAULT_CHARSET
          GridTitleFont.Color = clWindowText
          GridTitleFont.Height = -13
          GridTitleFont.Name = 'MS Sans Serif'
          GridTitleFont.Style = [fsBold]
          DefaultRowHeight = 22
          OnAfterDelete = PersImageBrowseAfterDelete
          GridColor = clBtnFace
          ButtonWidth = 55
          ShowPrintButton = True
          PrintEnabled = True
          OnPrint = PersImageBrowsePrint
          SearchFooter = False
          FullHeight = 194
          object QueryDirectoryButton: TAlpineGlowButton
            Left = 218
            Top = 386
            Width = 60
            Height = 27
            Caption = 'Load'
            ImageIndex = 96
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            Picture.Data = {
              424D360300000000000036000000280000001000000010000000010018000000
              000000030000120B0000120B00000000000000000000FF00FFFF00FFFF00FFFF
              00FFFF00FFB5724FCD9E81D1A081CF9C7CCD9776D19A75D19872CD936DCF956C
              D1966BCD9168FF00FF23AAD80DA1D4FF00FFFF00FFCB9A7FFFFCF2F1E4CFF7E9
              D4FFF2DCEEE3D1EEE0CBFFE8C7F9DAB9F2D0AEFFE1B83FB1D891DFFA5ED0F951
              C7F13FBCE9CD9C7FFFFCF15C7EF19FB1E8FFFFE7BC744DBC7349FFF8D487BDC5
              3A9EC6FDE0B847B5D99AE3FD6ED8FF76DBFF77DCFFCC9C80FFFDF58DA9F8BCC9
              EEFFF9E7D09E7FD19C7BFFF3D3AFCDCD7CB9CFFDE2BB46B4D998E2FC6BD7FF70
              D8FE70D8FECB9C83FFFEFBE5D3C2F0E1D1FFF9EBE6D4BDE6D2B7FFEFD9DED4AE
              C8C294FFE3C146B3D99CE4FC70DCFF76DDFE76DDFECB9E86FFFFFFCC9798E2C3
              BFFFFFFFEA9432EA922EFFFFFF6EBC6317960FFDE9CA45B3D9A0E9FC77E3FF7C
              E3FE7CE3FEC99980FCF7F2F4E7E0F7ECE4FCF5EDF8E4CCF8E2C8FCEDDAE7E3C4
              D9DDB5FBE5C345B2D9A4EDFD7EE9FF82E9FF82E9FFC0723BE79F56E7A057E79F
              56E69D54E7A059E69E57EAA55EF2AC67EAA66DAB897F46B2D9ACF1FD85F0FF87
              EFFF88EFFFA9957BC57D4EC47C4DC47C4DC47C4EC47C4EC47C4EC47D4FC47D4F
              C47D4FC27D5139AED7CBF8FDB5FFFFA5FCFF90F6FF8EF5FF8FF5FF8FF5FF8FF5
              FF8FF5FF8FF5FF92F7FF30B8DEFF00FFFF00FFFF00FF18A0D06CC8E686D4EB9B
              DBEECDFBFEADFAFFA6F7FFA5F7FFA6F8FFA6F8FFA6F8FFA9FAFF37B8DEFF00FF
              FF00FFFF00FF57B6DA8DE2F86CD6F34BC5E87DCCE7F8FFFFD6FCFFCAF9FFC3F8
              FFC2F8FFC2F8FFC7FAFF41B9DEFF00FFFF00FFFF00FF59B8DBA1EFFB8CEAF899
              EEFA5BCBE6A7DBEDFFFFFFFEFFFFF4FFFFEAFFFFE6FFFFE7FFFF49BADEFF00FF
              FF00FFFF00FF5DB1D3A5EFF796F6FB96F3F99EF7FB4BC6E468C2E197D5EA8FD2
              E98DD1E98ED2E98BD2E94CB4D6FF00FFFF00FFFF00FFFF00FF71C4DEA1EEF6A0
              EFF7AEF8FB6FD0E669ADC9FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
              FF00FFFF00FFFF00FFFF00FF3EA4D049ACD452B1D769B2CFFF00FFFF00FFFF00
              FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
            Position = bpRight
            TabOrder = 0
            OnClick = QueryDirectoryButtonClick
            Appearance.BorderColor = clBlack
            Appearance.ColorChecked = 16111818
            Appearance.ColorCheckedTo = 16367008
            Appearance.ColorDisabled = 15921906
            Appearance.ColorDisabledTo = 15921906
            Appearance.ColorDown = 16111818
            Appearance.ColorDownTo = 16367008
            Appearance.ColorHot = 16117985
            Appearance.ColorHotTo = 16372402
            Appearance.ColorMirrorHot = 16107693
            Appearance.ColorMirrorHotTo = 16775412
            Appearance.ColorMirrorDown = 16102556
            Appearance.ColorMirrorDownTo = 16768988
            Appearance.ColorMirrorChecked = 16102556
            Appearance.ColorMirrorCheckedTo = 16768988
            Appearance.ColorMirrorDisabled = 11974326
            Appearance.ColorMirrorDisabledTo = 15921906
            GlowSpeed = 0
            ImageName = 'SETTINGS'
          end
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 284
        Height = 21
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Panel4'
        Color = clBlack
        ParentBackground = False
        TabOrder = 1
        object Label1: TLabel
          Left = 2
          Top = 2
          Width = 243
          Height = 15
          AutoSize = False
          Caption = ' Assigned Documents'
          Color = clBlack
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
      end
    end
  end
  object RightPanel: TAlpinePanel
    Left = 286
    Top = 0
    Width = 838
    Height = 642
    Align = alClient
    BevelInner = bvLowered
    BevelOuter = bvNone
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    UseDockManager = True
    Version = '2.2.1.0'
    BorderColor = clGray
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Height = 23
    Caption.Indent = 2
    Caption.TopIndent = 2
    Caption.Visible = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    LeftCaption = 'A'
    RightCaption = 'Put Caption Here'
    Highlightcolor = clSilver
    DesignSize = (
      838
      642)
    FullHeight = 0
    object MainPanel: TPanel
      Left = 2
      Top = 23
      Width = 834
      Height = 617
      Align = alClient
      BevelOuter = bvNone
      Color = 8454143
      ParentBackground = False
      TabOrder = 0
      object PDFImage: TgtPDFViewer
        Left = 178
        Top = 106
        Width = 659
        Height = 463
        Cursor = 1
        Color = 8454143
        DockOrientation = doNoOrient
        ParentColor = False
        PopupMenu = PDFMenu
        TabOrder = 0
        TabStop = True
        Visible = False
        About = 'Gnostice PDFtoolkit (www.gnostice.com)'
        Status = 'PDF Viewer loaded Successfully.'
        SearchHighlightColor = clGray
        Version = '4.0.1'
        ViewerMode = vmHand
        AllowImageCopy = False
        SelectedRegionColor = clSkyBlue
        HighlightRegionColor = clYellow
        BackgroundRendering = False
      end
      object ImageScrollBox1: TImageScrollBox
        Left = 256
        Top = 24
        Width = 650
        Height = 493
        HorzScrollBar.Tracking = True
        HorzScrollBar.Visible = False
        VertScrollBar.Tracking = True
        VertScrollBar.Visible = False
        ZoomPercent = 100.000000000000000000
        MouseHandlerOwnership = True
        PopupMenu = ImageMenu
        TabOrder = 1
      end
      object AdobePanel: TPanel
        Left = -3
        Top = 336
        Width = 477
        Height = 97
        Caption = 'AdobePanel'
        TabOrder = 2
        object WebBrowser1: TWebBrowser
          Left = 112
          Top = 35
          Width = 300
          Height = 150
          TabOrder = 0
          ControlData = {
            4C000000021F0000810F00000000000000000000000000000000000000000000
            000000004C000000000000000000000001000000E0D057007335CF11AE690800
            2B2E126200000000000000004C0000000114020000000000C000000000000046
            8000000000000000000000000000000000000000000000000000000000000000
            00000000000000000100000000000000000000000000000000000000}
        end
      end
    end
    object ConfidentialPanel: TPanel
      Left = 125
      Top = 110
      Width = 620
      Height = 234
      Anchors = [akLeft, akTop, akRight, akBottom]
      BevelInner = bvLowered
      Caption = ' '
      TabOrder = 1
      Visible = False
      object BlinkLabel1: TBlinkLabel
        Left = 23
        Top = 19
        Width = 394
        Height = 73
        Alignment = taCenter
        AutoSize = False
        Caption = 'Confidential Document.  Requires Security Setting'
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -29
        Font.Name = 'Arial'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        ShowAccelChar = False
        WordWrap = True
        Blink = True
        BlinkColor = clNavy
        BlinkRate = 1000
      end
    end
  end
  object OvcController1: TOvcController
    EntryCommands.TableList = (
      'Default'
      True
      ()
      'WordStar'
      False
      ()
      'Grid'
      False
      ())
    EntryOptions = [efoAutoSelect, efoBeepOnError, efoInsertPushes]
    Epoch = 2000
    Left = 312
    Top = 40
  end
  object gtPDFDocument1: TgtPDFDocument
    About = 'Gnostice PDFtoolkit (www.gnostice.com)'
    Version = '4.0.1'
    OpenAfterSave = False
    MergeOptions = []
    EMailAfterSave = False
    ShowSetupDialog = False
    Left = 335
    Top = 200
  end
  object ImageMenu: TPopupMenu
    Left = 419
    Top = 48
    object FullPageChoice: TMenuItem
      Caption = 'Show Full Page'
      OnClick = ImageFullPageChoiceClick
    end
    object FitWidthChoice: TMenuItem
      Caption = 'Fit Width'
      OnClick = ImageFitWidthChoiceClick
    end
    object FitHeightChoice: TMenuItem
      Caption = 'Fit Height'
      OnClick = FitHeightChoiceClick
    end
    object FitPageChoice: TMenuItem
      Caption = 'Fit to Page'
      OnClick = FitPageChoiceClick
    end
    object RotateChoice: TMenuItem
      Caption = 'Rotate 90 degrees Clockwise'
      OnClick = RotateChoiceClick
    end
  end
  object PDFMenu: TPopupMenu
    Left = 388
    Top = 40
    object MenuItem1: TMenuItem
      Caption = 'Show Full Page'
      OnClick = MenuItem1Click
    end
    object ShowActualSize1: TMenuItem
      Caption = 'Show Actual Size'
      OnClick = ShowActualSize1Click
    end
    object MenuItem2: TMenuItem
      Caption = 'Fit Width'
      OnClick = MenuItem2Click
    end
    object PDFChoiceRotate: TMenuItem
      Caption = 'Rotate 90 degrees Clockwise'
      OnClick = PDFChoiceRotateClick
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 464
    Top = 256
  end
end
