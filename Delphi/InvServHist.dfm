inherited InvServHistForm: TInvServHistForm
  Left = 174
  Top = 67
  Caption = 'Service History Entry'
  ClientHeight = 705
  ClientWidth = 703
  OldCreateOrder = True
  OnCreate = FormCreate
  OnShow = FormShow
  ExplicitWidth = 719
  ExplicitHeight = 744
  PixelsPerInch = 96
  TextHeight = 13
  object InvServPartBrowse: TAlpineBlockBrowse [0]
    Left = 0
    Top = 272
    width = 703
    height = 171
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    UseDockManager = True
    Version = '2.2.1.0'
    Caption.Color = clBlack
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.Indent = 2
    Caption.Text = 'Parts and Labor Used'
    Caption.TopIndent = 2
    Caption.Visible = True
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FixedRowHeight = 22
    MobileConfig = False
    ButtonPanelVisible = True
    ModalLess = False
    GridFont.Charset = DEFAULT_CHARSET
    GridFont.Color = clWindowText
    GridFont.Height = -11
    GridFont.Name = 'MS Sans Serif'
    GridFont.Style = []
    ButtonFont.Charset = DEFAULT_CHARSET
    ButtonFont.Color = clWindowText
    ButtonFont.Height = -11
    ButtonFont.Name = 'Tahoma'
    ButtonFont.Style = []
    GridTitleFont.Charset = DEFAULT_CHARSET
    GridTitleFont.Color = clWindowText
    GridTitleFont.Height = -11
    GridTitleFont.Name = 'MS Sans Serif'
    GridTitleFont.Style = []
    DefaultRowHeight = 22
    SearchFooter = False
    FullHeight = 124
  end
  inherited BaseBottomPanel: TAdvPanel
    Top = 672
    Width = 703
    TabOrder = 6
    ExplicitTop = 672
    ExplicitWidth = 703
    FullHeight = 0
    inherited NewButton: TAlpineGlowButton
      Left = 64
      Width = 18
      Caption = ' '
      Visible = False
      ExplicitLeft = 64
      ExplicitWidth = 18
    end
    inherited PrintButton: TAlpineGlowButton
      Left = 513
      Visible = True
      ExplicitLeft = 513
    end
    inherited DeleteButton: TAlpineGlowButton
      Left = 82
      Width = 18
      Caption = ' '
      ExplicitLeft = 82
      ExplicitWidth = 18
    end
    inherited FindButton: TAlpineGlowButton
      Left = 100
      Width = 18
      Caption = ' '
      ExplicitLeft = 100
      ExplicitWidth = 18
    end
    inherited AuditButton: TAlpineGlowButton
      Left = 1
      Position = bpStandalone
      Visible = True
      ExplicitLeft = 1
    end
    inherited CloseButton: TAlpineGlowButton
      Left = 639
      ExplicitLeft = 639
    end
    inherited SaveButton: TAlpineGlowButton
      Left = 576
      ExplicitLeft = 576
    end
    inherited LockButton: TAlpineGlowButton
      Left = 118
      Width = 18
      Caption = ' '
      ExplicitLeft = 118
      ExplicitWidth = 18
    end
  end
  inherited BaseStatusPanel: TPanel
    Top = 656
    Width = 703
    TabOrder = 5
    ExplicitTop = 656
    ExplicitWidth = 703
    inherited recid: TLabel
      Left = 327
      ExplicitLeft = 483
    end
    inherited SecRecLockLabel: TLabel
      Width = 326
      ExplicitWidth = 482
    end
  end
  object AlpinePanel2: TAlpinePanel [3]
    Left = 0
    Top = 443
    Width = 703
    Height = 68
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UseDockManager = True
    Version = '2.2.1.0'
    BorderColor = clGray
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'Service and Labor Cost'
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
    FullHeight = 100
    object Label8: TLabel
      Left = 485
      Top = 48
      Width = 64
      Height = 14
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Total Cost'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 170
      Top = 24
      Width = 59
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Parts Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 324
      Top = 24
      Width = 66
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Labor Length'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 485
      Top = 24
      Width = 64
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Labor Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object OtherTotalLabel: TLabel
      Left = 5
      Top = 24
      Width = 69
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Other Costs'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TotalCostField: TAlpineEdit
      Left = 552
      Top = 45
      Width = 82
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 1900
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 10
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###.##'
      TabOrder = 4
      DataField = 'TOTALCOST'
      RightAlign = True
      CurrentPos = -1
      Text = '      0.00'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object PartTotalField: TAlpineEdit
      Left = 232
      Top = 21
      Width = 82
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 1900
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 10
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###.##'
      TabOrder = 1
      DataField = 'PARTTOTAL'
      RightAlign = True
      CurrentPos = -1
      Text = '      0.00'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object LaborLengthTotalField: TAlpineEdit
      Left = 396
      Top = 21
      Width = 82
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 1900
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 10
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###.##'
      TabOrder = 2
      DataField = 'LABORLENGTHTOTAL'
      RightAlign = True
      CurrentPos = -1
      Text = '      0.00'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object LaborTotalField: TAlpineEdit
      Left = 552
      Top = 21
      Width = 82
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 1900
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 10
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###.##'
      TabOrder = 3
      DataField = 'LABORTOTAL'
      RightAlign = True
      CurrentPos = -1
      Text = '      0.00'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
    object TotalCostButton: TAlpineGlowButton
      Left = 640
      Top = 45
      Width = 16
      Height = 21
      ImageIndex = 97
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360500000000000036040000280000001000000010000000010008000000
        000000010000C30E0000C30E00000001000025000000A8B6A40084AC81007A9E
        7100789E6F0065A4600066996600599C52004D9B4500409C39000FAE0000249F
        1A0012A70500538C450013A600004691380017A30B002D982200279A1A0015A2
        0000309523003C8F2E00209B1200179E050029941A00189C00004C8539002192
        0B00009900002E8C1A00288C12001E910000398323001F8E000033821A002787
        0B002D821200FF00FF0000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000024242424242424242424
        2424242424242424242424242419242424242424242424242424242424212424
        2424242424242424242424020C221905242424242424242424241D1D241C0019
        23242424242424242414181A241C2424201F2424242424242405181C241C2424
        1E1E24242424242424242424241A141E1E1D2424242424242424041212181818
        1803242424242424241B0D0D0D0D170E2424242424242424241B091524172405
        1724242424242424241B09072411241712142424242424242424080F24112413
        162424242424242424242401080B1006242424242424242424242424240A2424
        24242424242424242424242424042424242424242424}
      TabOrder = 5
      OnClick = TotalCostButtonClick
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
      ImageName = 'FUND'
    end
    object OtherTotalField: TAlpineEdit
      Left = 82
      Top = 21
      Width = 82
      Height = 21
      DataType = pftReal
      Controller = OvcController
      Epoch = 1900
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 10
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '###,###.##'
      TabOrder = 0
      DataField = 'OTHERTOTAL'
      RightAlign = True
      CurrentPos = -1
      Text = '      0.00'
      RangeHigh = {ADDF8CC733F9DF470000}
      RangeLow = {ADDF8CC733F9DFC70000}
    end
  end
  object Panel1: TPanel [4]
    Left = 0
    Top = 121
    Width = 703
    Height = 151
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 1
    object AlpinePanel1: TAlpinePanel
      Left = 0
      Top = 0
      Width = 324
      Height = 151
      Align = alClient
      BevelOuter = bvLowered
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
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Work Done By'
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
      FullHeight = 100
      object Label13: TLabel
        Left = 2
        Top = 27
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 2
        Top = 50
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Personnel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 2
        Top = 72
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Status'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 2
        Top = 95
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Outside Work #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RolodexIDField: TAlpineLookup
        Left = 95
        Top = 23
        Width = 213
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'ROLODEXID'
        DisplayField = 'COMPANY'
        ReferencingTable = 'VWVENDORS'
        ReferencingField = 'ROLODEXID'
        ReturnField = 'COMPANY'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'ROLODEX'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object PersIDField: TAlpineLookup
        Left = 95
        Top = 46
        Width = 213
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnEnter = PersIDFieldEnter
        ImageName = 'DOWNARROW'
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 76
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSID'
        DisplayField = 'LNAME'
        ReferencingTable = 'PERS'
        ReferencingField = 'PERSID'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'PERS'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object InvServStatusIDField: TAlpineLookup
        Left = 95
        Top = 69
        Width = 213
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnEnter = InvServStatusIDFieldEnter
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 70
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVSERVSTATUSID'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVSERVSTATUS'
        ReferencingField = 'INVSERVSTATUSID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clMaroon
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object WorkNumField: TAlpineEdit
        Left = 95
        Top = 92
        Width = 213
        Height = 21
        DataType = pftString
        Controller = OvcController
        Epoch = 2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 56
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 3
        DataField = 'WORKNUM'
        CurrentPos = -1
      end
    end
    object ReadingPanel: TPanel
      Left = 324
      Top = 0
      Width = 379
      Height = 151
      Align = alRight
      BevelOuter = bvNone
      Caption = 'ReadingPanel'
      TabOrder = 1
      object MilePanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 379
        Height = 125
        Align = alTop
        BevelOuter = bvLowered
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
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Apparatus Gauge Readings'
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
        FullHeight = 100
        object Label44: TLabel
          Left = 2
          Top = 27
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Odometer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label45: TLabel
          Left = 2
          Top = 50
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Engine Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 2
          Top = 72
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pump Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 2
          Top = 95
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Aerial Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 172
          Top = 27
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Odometer'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 172
          Top = 50
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Engine Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 172
          Top = 72
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Pump Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 172
          Top = 95
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Aerial Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object OdometerField: TAlpineEdit
          Left = 75
          Top = 23
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 0
          DataField = 'ODOMETER'
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourEngineField: TAlpineEdit
          Left = 75
          Top = 46
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 1
          DataField = 'HOURENGINE'
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourPumpField: TAlpineEdit
          Left = 75
          Top = 69
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 2
          DataField = 'HOURPUMP'
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourAerialField: TAlpineEdit
          Left = 75
          Top = 92
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 3
          DataField = 'HOURAERIAL'
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object UpdateButton: TAlpineGlowButton
          Left = 74
          Top = 118
          Width = 205
          Caption = 'Update Apparatus with Readings'
          ImageIndex = 137
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF001313130000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
            00002020200000000000FF00FF00FF00FF00FF00FF00FF00FF00151570002020
            2900131313000000000032323A00101087000C0C93000C0C93001F1F67000000
            00002020200000000000FF00FF00FF00FF00FF00FF00FF00FF00000000000000
            0000393942003B3B480000000000000000000000000000000000000000000000
            000032323A003B3B480000000000FF00FF00FF00FF00FF00FF003333A2001B1B
            9E000A0A8D000A0A8D003232B5003232B5000C0CB300000000003232BE000D0D
            BA000909A6002020B0003333A200FF00FF00FF00FF00FF00FF0000009900FFFF
            FF00FFFFFF00FFFFFF00EBEBEB00DDDDDD00F6F6F60000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000ABAE600DDDDDD0000000000FF00FF00FF00FF0000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FF00FF00FF00FF00FF00FF00393942003939
            4200393942003939420032323A0032323A0032323A0032323A007C7C7C000000
            00005555A3009999B200424242003A3A3A00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0059595F0069697300333333003A3A3A005A5A5A006969
            73006969730066666600191919002C2C2C00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0074747400E8E8E800FFFFFF00FFFFFF00AFAFD7009292
            DB00E8E8E800FFFFFF00FFFFFF009999990099999900FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00A64F3300DA6D3F00DD793F00A965550039258B001D14
            B50075569300EBEAE800EBEAE8004E4C4A0042424200FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0074747400FFFFFF00FFFFFF008080CC000000A4000000
            CC000000E8003A3A3A006359520047444200FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF0074747400FFFFFF00FFFFFF00FFFFFF008080CC000000
            CC00FFFFFF003E3E4B004B4B5100FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF004E4C4A00666666006666660066666600666666006666
            66006666660047444200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 4
          OnClick = UpdateButtonClick
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
          ImageName = 'APPARATUS'
        end
        object COdometerField: TAlpineEdit
          Left = 287
          Top = 23
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 5
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourEngineField: TAlpineEdit
          Left = 287
          Top = 46
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 6
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourPumpField: TAlpineEdit
          Left = 287
          Top = 69
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 7
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object CHourAerialField: TAlpineEdit
          Left = 287
          Top = 92
          Width = 84
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 12
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###.##'
          TabOrder = 8
          RightAlign = True
          CurrentPos = -1
          Text = '        0.00'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
      end
      object HourPanel: TAlpinePanel
        Left = 0
        Top = 125
        Width = 379
        Height = 26
        Align = alClient
        BevelOuter = bvLowered
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        UseDockManager = True
        Visible = False
        Version = '2.2.1.0'
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clBlack
        Caption.ColorTo = clNone
        Caption.Font.Charset = ANSI_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Arial'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Gauge Reading'
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
        FullHeight = 100
        object Label19: TLabel
          Left = 2
          Top = 26
          Width = 68
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 158
          Top = 26
          Width = 107
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Current Hours'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object HourField: TAlpineEdit
          Left = 75
          Top = 22
          Width = 71
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 9
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###'
          TabOrder = 0
          DataField = 'HOURENGINE'
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
        object HourButton: TAlpineGlowButton
          Left = 73
          Top = 46
          Width = 203
          Height = 23
          Caption = 'Update Equipment with Reading'
          ImageIndex = 138
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF001AB7CB001AB7
            CB001AB7CB001AB7CB001AB7CB00FF00FF00FF00FF00FF00FF00FF00FF000000
            00000000000000000000FF00FF00FF00FF00FF00FF001AB7CB001AB7CB0091EB
            EE00476C6D0043686A001AB7CB001AB7CB001AB7CB001AB7CB00000000000000
            AD000000CC0000000000FF00FF00FF00FF00FF00FF006482860066CCCC00232B
            2B001919190033333300333333001AB7CB001AB7CB001AB7CB00000000000000
            AD000000CC00000000002F19380039274500FF00FF00FF00FF004C4050006666
            660043434300080808003333330026262600080808005E5B6000000000000000
            AD000000CC000000000042344F0036243F00FF00FF00FF00FF00FF00FF004131
            46005E5B6000202020001AB7CB0026262600080808005A5A5A00000000000000
            7C000000AD00000000003F304900FF00FF00FF00FF00FF00FF00FF00FF00857E
            88003C808E0021ACBF001AB7CB001AB7CB001AB7CB001AB7CB00080808005353
            66000B0B1A0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0021ACBF001FB3C3001A4C53001AB7CB001AB7CB001AB7CB00080808000909
            0E0009090E0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF005C5C6E000000990000009900262626001010100009090E00000000000000
            A4000000C00000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000099000000990000009900262626001010100009090E00000000000000
            AD00000000000000000019191900FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00000099000000990000009900385359002435380008080800291E2F005A5A
            5A00666666001919190026262600FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF005A6072005B666D0053606800494B530047545C002D2B4100000000003333
            33005C5C6E0042424A004C4C4C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF009C948C00413146004131460041314600FF00FF00FF00FF001E1322001D19
            2100333333005E5B6000B49F9A00FF00FF00FF00FF00FF00FF0067514C00E9DA
            D600A19FA1003B2A48003B2A4800FF00FF00FF00FF00FF00FF00FF00FF003420
            3B003F304900A19FA100F8EAE7007A646000FF00FF00FF00FF007D7371008973
            6F00CEB2AD00BFBFC0004C405000FF00FF00FF00FF00FF00FF00FF00FF00493C
            4D00BFBFC000DCC5C000BF978F007D737100FF00FF00FF00FF00FF00FF00FF00
            FF008C828000EFEFEF0078767800FF00FF00FF00FF00FF00FF00FF00FF007775
            7800EFEFEF00968F8E009C948C00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00A5A5A50087878700FF00FF00FF00FF00FF00FF00FF00FF008F8F
            8F00A5A5A500FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 1
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
          ImageName = 'INVENTORY'
        end
        object CHourField: TAlpineEdit
          Left = 268
          Top = 22
          Width = 71
          Height = 21
          DataType = pftReal
          Controller = OvcController
          Epoch = 1900
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 9
          options = [efoCaretToEnd, efoRightAlign]
          ParentFont = False
          PictureMask = '#,###,###'
          TabOrder = 2
          RightAlign = True
          CurrentPos = -1
          Text = '        0'
          RangeHigh = {ADDF8CC733F9DF470000}
          RangeLow = {ADDF8CC733F9DFC70000}
        end
      end
    end
  end
  object AlpinePanel5: TAlpinePanel [5]
    Left = 0
    Top = 511
    Width = 703
    Height = 145
    Align = alBottom
    BevelOuter = bvLowered
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UseDockManager = True
    Version = '2.2.1.0'
    BorderColor = clGray
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clNone
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'Notes'
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
    FullHeight = 100
    object NarrField: TAlpineMemo
      Left = 2
      Top = 20
      Width = 699
      Height = 92
      Align = alClient
      Color = clWhite
      Ctl3D = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      DataField = 'NARR'
      ReadOnly = False
      ScrollBars = ssVertical
    end
    object AdvPanel1: TAdvPanel
      Left = 2
      Top = 112
      Width = 699
      Height = 31
      Align = alBottom
      BevelOuter = bvLowered
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UseDockManager = True
      Version = '2.2.1.0'
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      ColorTo = clBtnFace
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FullHeight = 37
      object SpellCheckButton: TAlpineGlowButton
        Left = 1
        Top = 1
        Width = 112
        Height = 29
        Align = alLeft
        Caption = 'Spell Check'
        ImageIndex = 113
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360500000000000036040000280000001000000010000000010008000000
          000000010000C30E0000C30E0000000100003000000000E7000000D9000000CC
          000000C2000001B3010007AD07000FA90F00159E150002A40200717571000A9C
          0A0069756900208E20000099000066666600048A0400118111002A762A002E75
          2E005B625B0008820800137E13000085000043694300057E0500545F5400286E
          2800545D54004B614B001375130033663300236B23004C5B4C00007800002162
          210039573900395339002D572D0030543000404D40001F5B1F00FF00FF00394D
          39002F4D2F003A413A0021472100353A35003333330000000000000000000000
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
          000000000000000000000000000000000000000000002929292929292E292929
          2929292929292929292929191D2429292929292929292929292909220D101929
          29292929292929292909260F0F081F292929292929292929132516142C150526
          292929292929292F2D2116282923040523292929292929291B28182E29200A03
          0617292929292929290E2B2929291A0302062729292929292929292929291C05
          0201071C29292929292929292929291202010011292929292929292929292919
          0601001E2929292929292929292929292A02001E292929292929292929292929
          2912001729292929292929292929292929130C1E292929292929292929292929
          29290B24292929292929292929292929292929292929}
        Position = bpMiddle
        TabOrder = 0
        OnClick = SpellCheckButtonClick
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
        ImageName = 'GCHECK'
      end
    end
  end
  object Panel2: TPanel [6]
    Left = 0
    Top = 0
    Width = 703
    Height = 121
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 0
    object AlpinePanel4: TAlpinePanel
      Left = 0
      Top = 0
      Width = 492
      Height = 121
      Align = alClient
      BevelOuter = bvLowered
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
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'General Information'
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
      FullHeight = 100
      object InvIDLabel: TLabel
        Left = 2
        Top = 25
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Apparatus'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 2
        Top = 49
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Service Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 2
        Top = 97
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Additional'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 2
        Top = 74
        Width = 90
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Date'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object OOSLabel: TLabel
        Left = 242
        Top = 74
        Width = 116
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hours Out of Service'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object DescrField: TAlpineEdit
        Left = 95
        Top = 94
        Width = 350
        Height = 21
        DataType = pftString
        Controller = OvcController
        Epoch = 2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 56
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 4
        DataField = 'DESCR'
        CurrentPos = -1
      end
      object InvIDField: TAlpineLookup
        Left = 95
        Top = 22
        Width = 350
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ImageName = 'DOWNARROW'
        OnSuccessfulValidate = InvIDFieldSuccessfulValidate
        DataFieldIsCharacter = True
        PictureMask = '!!!!!!!!!!!!!!!!'
        EditWidth = 70
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVID'
        DisplayField = 'UNITNUM'
        ReferencingTable = 'VWTRUCK'
        ReferencingField = 'INVID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clMaroon
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = []
        LookupCode = 'UNITNUM'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object InvServTypeIDField: TAlpineLookup
        Left = 95
        Top = 46
        Width = 350
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnEnter = InvServTypeIDFieldEnter
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 120
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'INVSERVTYPEID'
        DisplayField = 'DESCR'
        ReferencingTable = 'INVSERVTYPE'
        ReferencingField = 'INVSERVTYPEID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object DateDoneField: TAlpineDateTime
        Left = 95
        Top = 69
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'DATEDONE'
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object InvServFormField: TAlpineEdit
        Left = 403
        Top = 22
        Width = 27
        Height = 21
        DataType = pftString
        Controller = OvcController
        Epoch = 2000
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 56
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 5
        Visible = False
        DataField = 'INVSERVFORM'
        CurrentPos = -1
      end
      object OOSField: TAlpineEdit
        Left = 363
        Top = 71
        Width = 82
        Height = 21
        DataType = pftReal
        Controller = OvcController
        Epoch = 1900
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 10
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '###,###.##'
        TabOrder = 3
        DataField = 'OOS'
        RightAlign = True
        CurrentPos = -1
        Text = '      0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object WorkOrdIDField: TAlpineLookup
        Left = 442
        Top = 24
        Width = 36
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = True
        ImageName = 'DOWNARROW'
        MobileConfig = True
        InitialSeek = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 120
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        ReferencingTable = 'WORKORD'
        ReferencingField = 'WORKORDID'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Comic Sans MS'
        ReturnFieldFont.Style = []
        LookupCode = 'WORKORD'
        OnChange = WorkOrdIDFieldChange
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
    end
    object WorkOrdPanel: TAlpinePanel
      Left = 492
      Top = 0
      Width = 211
      Height = 121
      Align = alRight
      BevelOuter = bvLowered
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
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Work Order Summary'
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
      FullHeight = 100
      object Label11: TLabel
        Left = 1
        Top = 25
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Internal Order #'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object WorkOrdIDLabel: TLabel
        Left = 84
        Top = 25
        Width = 124
        Height = 13
        AutoSize = False
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 1
        Top = 43
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Requested By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object RequestLabel: TLabel
        Left = 84
        Top = 43
        Width = 124
        Height = 34
        AutoSize = False
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 1
        Top = 80
        Width = 78
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Closed Out By'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object CloseLabel: TLabel
        Left = 84
        Top = 80
        Width = 124
        Height = 34
        AutoSize = False
        Caption = ' '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object WorkOrdButton: TAlpineGlowButton
      Left = 544
      Top = 44
      Width = 112
      Height = 45
      Caption = 'Link to Work Order'
      ImageIndex = 198
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D361000000000000036000000280000002000000020000000010020000000
        00000010000000000000000000000000000000000000FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0084848C0001023A002B2B
        610084848C00BBBAB500E4E4E200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF008A8A9400000077000000E4000000
        C3000000990000007700131B78004948680079797900BCBCBA00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0084848C00000066000000E4000000D4000000
        C3000000D4000000D4000000C3000101B0000001A300000077000B0D56004948
        68008A8A9400BBBAB500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF008A8A9400000066000000D4000000D4000000D4000000
        C3000000C3000000C3000000C3000000C3000000C3000000D4000000D4000101
        B00000007700010159002B2B6100585D6E008A8A9400FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF008A8A9400000077000000E4000000D4000000D4000000D4000000
        C3000000C3000000C3000000C3000000C3000000C3000000C3000509C700292C
        C9001F1FCC000708C0000001A300000086000000660001014B0019194400585D
        6E009797A500C3C3BB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00C3C3BB00000066000000FF000000D4000000CC000000D400080CD1000509
        C7000000CC000000CC000000C3000000C3000000C3000000C300292CC9007E7F
        CE007E7FCE003537BE000101B0000101B0000001A30000009900000099000000
        660001023A0001023A0059586200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ABAA9C00000099000000FF000000D4000000CC000E19D1001733BA00131F
        AE000819B9000D11C700080CD1000000CC000000CC000000C300292CC9009999
        CC00A9A8D6005856C7000911A6000001A3000001A30000009900000099000000
        9900000086000000860019194400FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ABABA500000086000000FF000000D4001320DC001A35A40001023A000F0F
        30002B2E5200112175000E2196000924AB00292CC9000D11C7000D11C700A9A8
        D600F5F3E6005856C7000101B0000001A3000001A30000009900000099000000
        860000008600000086002B2E5200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ABABA500000086000000FF001320DC001A35A4000101590001014B002A2A
        360085847A001E1C2A0001012800585D6E009797A500505C9E00063CB2004D75
        CD009999CC003537BE000708C0000101B0000911A6000001A300000099000000
        860000008600000077002B2E5200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ACACAC0000008600121FFF001A35A40001014B0001015900010159002727
        4400ABABA500A4A4A00079797900C0B7AC00A39B93002B737900008BAE00007B
        B2000764B8000764B8001A35A4000E219600131FAE000911A6000911A6000911
        A60000008600000086002B2E5200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00ABAA9C00000086001E3CD2000B0D560001014B0001015900010159000101
        4B004D4B5500C3C3BB00D9D9D300A39B9300285E6900008BAE000099D3000099
        D3000099D3000099D300003257000B0D560005156A00131B78000E2196000E21
        960008179800081798002B2E5200FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0049486800081798001733BA0008179800061887000B127600000066000101
        590001023A004242560071717000285E6900007BB2000099CC00007BB2000087
        C5000087C5000048660001023A0001014B0001014B0001014B00010159000101
        5900131B780005156A00585D6E00FF00FF00FF00FF00FF00FF00FF00FF006868
        7900000086000001A3000911A6000819B9000A25BE000A25BE000924AB000E21
        96000618870001014B0003041C00006173000099D300007BB200007BB2000087
        C50007688A0020252B0001023A00010159000101590001015900010159000101
        590001023A0037363F00FF00FF00FF00FF00FF00FF00FF00FF00D9D9D3000101
        59000000CC00000099000000660000008600000086000001A3000819B9000819
        B9000A25BE000E21960000325700008BAE0000AAEB000087C5000087C5000058
        8400585D6E00B6AFA7005958620001023A000101590000006600000066000102
        3A0037363F00D9D9D300FF00FF00FF00FF00FF00FF00FF00FF0085847A000000
        66000000D4000000990000006600000077000000770000007700000077000000
        99000000990005156A00008BAE0000CCFF0000AAEB000099D30007688A00425F
        6300A39B9300D9D9D300D9D9D3005958620001023A000000660001014B004242
        5600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00595862000000
        86000000D4000000860000006600000077000000770000007700000077000000
        77000000770001014B002B73790028DDFA0000CCFF000058840001023A005958
        6200BBBAB500B2B2B100FF00FF00D9D9D3005958620001023A0003041C00A4A4
        A000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00595862000000
        99000000D4000000770001014B00010159000000660000007700000077000000
        8600010159004D4B5500A39B9300457274000061730000325700000086000000
        66006E6C7100C3C3BB00ACACAC00FF00FF00FF00FF0091918F0091918F008584
        7A00B2B2B100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004D4B55000000
        99000000D4000000660001023A0001014B0001014B0001014B00010159000101
        4B0042425600C3C3BB007979870001014B0000007700000086000001A3000001
        A300000066006E6C7100BBBAB500B2B2B100FF00FF00ECECEB00FFFFFF00E4E4
        E20066666600D9D9D300FF00FF00FF00FF00FF00FF00FF00FF00666666000000
        66000000E400000066000101280001023A0001023A0001014B0001023A002A2A
        3600FF00FF00ACACAC000F0F30000101590000008600000086000001A3000101
        B0000101B0000000660079798700BCBCBA00FF00FF00ACACAC0071717000B2B2
        B100BCBCBA0091918F00FF00FF00FF00FF00FF00FF00FF00FF00DCDCDB002727
        4400000099000000CC000001A300000077000101590001023A001E1C2A00BBBA
        B500D9D9D3002A2A360001023A0001014B0001014B0001015900010159000000
        77000001A3000000860049486800B2B2B100B2B2B10066666600B2B2B1007979
        790084848C0079797900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BCBC
        BA001818530000007700000086000101B0000001A3001919440091918F00ECEC
        EB004D4B55000101280001023A0001023A0001023A0001023A0001014B000101
        4B0001014B0001014B0027274400BBBAB500999999004D4B5500FF00FF00FF00
        FF0079797900ABABA500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00D9D9D300BBBAB5008A8A94004343740027274400ACACAC00CDCDC400585D
        6E0000008600292CC900A4A4B800797987001818530001023A0001023A000102
        3A0001023A0001014B000101280071717000C3C3BB007979790099999900FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00ACACAC0079797900F8F8F700ACACAC002A2A
        36000B0D56000B127600505C9E005856C700080CD1000101B000000099000000
        66000101590001023A0001014B0001023A00424256007979790037363F00DCDC
        DB00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0071717000D9D9D300BCBCBA0066666600C3C3
        BB00D9D9D300ACACAC00686879002B2B610001015900000086000101B0000000
        C3000000C3000101B0000001A30000009900010159002A2A3600BCBCBA00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF0091918F006666660079797900DCDCDB00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00ABABA500686879002B2B
        61000B127600000077000001A3000000D4000000660079797900FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00CDCDC400A4A4A000686879001919440068687900FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Position = bpLeft
      TabOrder = 2
      Visible = False
      OnClick = WorkOrdButtonClick
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
      ImageName = 'TOOLBOX32'
    end
  end
  inherited OvcController: TOvcController
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
    Left = 597
    Top = 6
  end
end
