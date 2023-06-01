object InvGeneralForm: TInvGeneralForm
  Left = 74
  Top = 16
  Caption = 'InvGeneralForm'
  ClientHeight = 429
  ClientWidth = 937
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
  object SCBAPanel: TAlpinePanel
    Left = 0
    Top = 0
    Width = 937
    Height = 98
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
    Visible = False
    Version = '2.2.1.0'
    BorderColor = clGray
    BorderWidth = 1
    Caption.Color = clBlack
    Caption.ColorTo = clBlack
    Caption.CloseColor = clBlack
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'Additional Serial Numbers'
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
      Left = 2
      Top = 27
      Width = 98
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Pressure Regulator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label16: TLabel
      Left = 2
      Top = 51
      Width = 98
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Face Regulator'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label18: TLabel
      Left = 2
      Top = 75
      Width = 98
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Control Module'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object TSNNumLabel: TLabel
      Left = 570
      Top = 27
      Width = 55
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'TSN: OK#'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 570
      Top = 51
      Width = 55
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Year'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object PRSerNumField: TAlpineEdit
      Left = 104
      Top = 24
      Width = 300
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 0
      DataField = 'PRSERNUM'
      CurrentPos = -1
    end
    object FRSerNumField: TAlpineEdit
      Left = 104
      Top = 48
      Width = 300
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 1
      DataField = 'FRSERNUM'
      CurrentPos = -1
    end
    object CMSerNumField: TAlpineEdit
      Left = 104
      Top = 72
      Width = 300
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 2
      DataField = 'CMSERNUM'
      CurrentPos = -1
    end
    object TSNNumField: TAlpineEdit
      Left = 631
      Top = 24
      Width = 150
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 3
      DataField = 'TSNNUMBER'
      CurrentPos = -1
      Text = 'SSS'
    end
    object TypeField: TAlpineEdit
      Left = 631
      Top = 72
      Width = 150
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 4
      Visible = False
      DataField = 'TYPE'
      CurrentPos = -1
    end
    object AlpineEdit2: TAlpineEdit
      Left = 631
      Top = 48
      Width = 150
      Height = 22
      DataType = pftString
      AutoSize = False
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 45
      ParentFont = False
      PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
      TabOrder = 5
      DataField = 'YEAR'
      CurrentPos = -1
      Text = 'SSS'
    end
  end
  object RedalertPanel: TAlpinePanel
    Left = 0
    Top = 98
    Width = 937
    Height = 72
    Align = alTop
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
    Caption.ColorTo = clBlack
    Caption.CloseColor = clBlack
    Caption.Font.Charset = ANSI_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -12
    Caption.Font.Name = 'Arial'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'SCBA Entry'
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
    object SCBALabel1: TLabel
      Left = 5
      Top = 26
      Width = 153
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBALabe1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object SCBALabel2: TLabel
      Left = 5
      Top = 49
      Width = 153
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'SCBALabe1'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Interval1Label: TLabel
      Left = 284
      Top = 26
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Test Interval (Days)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Interval2Label: TLabel
      Left = 284
      Top = 49
      Width = 100
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Test Interval (Days)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DueDate1Label: TLabel
      Left = 454
      Top = 26
      Width = 300
      Height = 13
      AutoSize = False
      Caption = 'Test Interval (Days)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object DueDate2Label: TLabel
      Left = 454
      Top = 49
      Width = 300
      Height = 13
      AutoSize = False
      Caption = 'Test Interval (Days)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object ScbaDate1Field: TAlpineDateTime
      Left = 160
      Top = 22
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      ShowTime = False
      DataField = 'SCBADATE1'
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object ScbaDate2Field: TAlpineDateTime
      Left = 160
      Top = 45
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      ShowTime = False
      DataField = 'SCBADATE2'
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object Interval1Field: TAlpineEdit
      Left = 388
      Top = 22
      Width = 62
      Height = 21
      DataType = pftExtended
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 5
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '#,###'
      TabOrder = 1
      DataField = 'SCBANUM1'
      RightAlign = True
      CurrentPos = -1
      Text = '    0'
      RangeHigh = {E175587FED2AB1ECFE7F}
      RangeLow = {E175587FED2AB1ECFEFF}
    end
    object Interval2Field: TAlpineEdit
      Left = 388
      Top = 45
      Width = 62
      Height = 21
      DataType = pftExtended
      Controller = OvcController1
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      InitDateTime = False
      LabelInfo.Visible = False
      MaxLength = 5
      options = [efoCaretToEnd, efoRightAlign]
      ParentFont = False
      PictureMask = '#,###'
      TabOrder = 3
      DataField = 'SCBANUM2'
      RightAlign = True
      CurrentPos = -1
      Text = '    0'
      RangeHigh = {E175587FED2AB1ECFE7F}
      RangeLow = {E175587FED2AB1ECFEFF}
    end
    object EmailButton: TAlpineGlowButton
      Left = 809
      Top = 24
      Width = 91
      Height = 42
      Caption = 'Send Reminder'
      ImageIndex = 181
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      Picture.Data = {
        424D360800000000000036040000280000002000000020000000010008000000
        000000040000C30E0000C30E0000000100001E000000FFFFFF00F7F7F700EFEF
        EF00E6E6E600DEDEDE00D6D6D600CCCCCC00C5C5C500BDBDBD00B5B5B500ADAD
        AD00A5A5A5009090DC0099999900C9909000AB8F8F007D7DCA008A8A8A007474
        D90087878700C17676006666CC00767676003E3ED600FF00FF00B03E3E003E3E
        3E000000CC009900000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000018181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818180D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D18181818181818180D00010101010102
        0303030304040404040404040404040B18181818181818180D01010101010105
        0606060607070707060404040404050B18181818181818180D01010101010103
        0404040405050505050404040505050B18181818181818180D01010101010205
        0506060606070707050404040505050B18181818181818180D01010101020202
        0202030303030304040404040505050B18181818181818180D01010101020202
        0202030303030304040404050505050B18181818181818180D01010101020202
        0203030303030304040404050505050B18181818181818180D01010102020202
        02030303030304040404050505111A110A0B0B0B181818180D04040404020202
        03030303030304040404050505161D110909090D181818180D0D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D130D0705050D18181818181818180B010101
        010101030303030303040404040404040404060D18181818181818180B010101
        010102080808080808080808050404040405060D18181818180D0D0A0A010101
        010202020202030303030304040404050505060D18181818180D00030B010101
        010202020202030303030304040404050505060D18181818180D01030B010101
        020202020203030303030404040404050505060D18181818180D01040B010101
        02020202020303030303040404040505050C120D18181818180D01040B030303
        0302020203030303030304040404050505171B0D18181818180D01040D0B0B0B
        0B0A0A0A0A0A0A0A0A0A0A0A0A0B0B0B0B10150D18181818180D010207070707
        070707070808080808080808080808080B09090918181818180D010101020202
        020203030303030404040404050505050D18181818181818180D010101020202
        02020303030303040404040505050E190F18181818181818180D040505050202
        0203030303030304040404050505141C0F18181818181818180D0D0D0D0D0D0D
        0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        1818181818181818181818181818181818181818181818181818181818181818
        18181818181818181818181818181818181818181818}
      TabOrder = 4
      Visible = False
      OnClick = EmailButtonClick
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
      Layout = blGlyphLeftAdjusted
      GlowSpeed = 0
      ImageName = 'MAIL32'
    end
    object PurchaseDateField: TAlpineDateTime
      Left = 690
      Top = 22
      Width = 91
      Height = 21
      ImageNameClock = 'CLOCK32'
      ImageNameDate = 'SCHEDULING'
      SpinControl = False
      ShowTime = False
      DataField = 'PURCHASEDATE'
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Visible = False
    end
  end
  object GenInvPanel: TPanel
    Left = 0
    Top = 170
    Width = 937
    Height = 159
    Align = alTop
    BevelOuter = bvNone
    Caption = ' '
    TabOrder = 2
    Visible = False
    object GenPanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 383
      Height = 159
      Align = alLeft
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
      Caption.ColorTo = clBlack
      Caption.CloseColor = clBlack
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -12
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'General Inventory Data'
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
      object ItemSizeLabel: TLabel
        Left = 2
        Top = 27
        Width = 98
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Size'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ServIntLabel: TLabel
        Left = 2
        Top = 76
        Width = 98
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Service Interval'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ServIntDaysLabel: TLabel
        Left = 157
        Top = 77
        Width = 25
        Height = 14
        Caption = 'Days'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object InvFuelLabel: TLabel
        Left = 2
        Top = 125
        Width = 98
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Include in Fuel?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 2
        Top = 51
        Width = 98
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Color'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object ItemSizeField: TAlpineEdit
        Left = 104
        Top = 24
        Width = 121
        Height = 22
        DataType = pftString
        AutoSize = False
        Controller = OvcController1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        ParentFont = False
        TabOrder = 0
        DataField = 'ITEMSIZE'
        CurrentPos = -1
      end
      object ServIntField: TAlpineEdit
        Left = 104
        Top = 73
        Width = 48
        Height = 22
        DataType = pftInteger
        AutoSize = False
        Controller = OvcController1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = 'iiiiii'
        TabOrder = 2
        DataField = 'SERVINT'
        RightAlign = True
        CurrentPos = -1
        Text = '     0'
        RangeHigh = {FF7F0000000000000000}
        RangeLow = {0080FFFF000000000000}
      end
      object InvFuelField: TAlpineCheckBox
        Left = 104
        Top = 121
        Width = 17
        Height = 22
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'TAlpineCheckBox'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 3
        OnClick = InvFuelFieldClick
        Version = '1.6.0.0'
        DataField = 'INVFUEL'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object AlpineEdit1: TAlpineEdit
        Left = 104
        Top = 49
        Width = 121
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Epoch = 1900
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        ParentFont = False
        TabOrder = 1
        DataField = 'COLOR'
        CurrentPos = -1
      end
    end
    object GaugePanel: TAlpinePanel
      Left = 383
      Top = 0
      Width = 554
      Height = 159
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
      Caption.Indent = 2
      Caption.Text = 'Gauge Readings'
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
      object Label45: TLabel
        Left = 4
        Top = 27
        Width = 71
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Hours Reading'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label24: TLabel
        Left = 170
        Top = 27
        Width = 70
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Date Checked'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object HourEngineField: TAlpineEdit
        Left = 79
        Top = 24
        Width = 88
        Height = 21
        DataType = pftReal
        Controller = OvcController1
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
        DataField = 'HOURENGINE'
        RightAlign = True
        CurrentPos = -1
        Text = '        0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object HourEngineDateField: TAlpineDateTime
        Left = 244
        Top = 24
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'HOURENGINEDATE'
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
    Left = 72
    Top = 8
  end
end
