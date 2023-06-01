object PersonCallInForm: TPersonCallInForm
  Left = 52
  Top = 77
  Caption = 'PersonCallInForm'
  ClientHeight = 555
  ClientWidth = 941
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
  object AdvSplitter1: TAdvSplitter
    Left = 324
    Top = 0
    Width = 4
    Height = 555
    Appearance.BorderColor = clNone
    Appearance.BorderColorHot = clNone
    Appearance.Color = clWhite
    Appearance.ColorTo = clSilver
    Appearance.ColorHot = clWhite
    Appearance.ColorHotTo = clGray
    GripStyle = sgDots
    ExplicitLeft = 356
    ExplicitHeight = 479
  end
  object FRDSPanel: TAdvPanel
    Left = 0
    Top = 0
    Width = 324
    Height = 555
    Align = alLeft
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
    Caption.Color = clHighlight
    Caption.ColorTo = clNone
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clWindowText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = []
    StatusBar.Font.Charset = DEFAULT_CHARSET
    StatusBar.Font.Color = clWindowText
    StatusBar.Font.Height = -11
    StatusBar.Font.Name = 'Tahoma'
    StatusBar.Font.Style = []
    FullHeight = 200
    object RespStatHistBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 340
      width = 324
      height = 215
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
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
      CanMove = True
      CanSize = True
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'Responder Status History'
      Caption.Visible = True
      ColorTo = clWhite
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
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      GridTitleFont.Charset = DEFAULT_CHARSET
      GridTitleFont.Color = clWindowText
      GridTitleFont.Height = -11
      GridTitleFont.Name = 'MS Sans Serif'
      GridTitleFont.Style = []
      DefaultRowHeight = 22
      SearchFooter = False
      FullHeight = 194
    end
    object PersMCIListBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 94
      width = 324
      height = 152
      Align = alTop
      BevelOuter = bvNone
      BorderStyle = bsSingle
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
      CanMove = True
      CanSize = True
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = ' Phone Numbers and Email Addresses'
      Caption.Visible = True
      ColorTo = clWhite
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
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      GridTitleFont.Charset = DEFAULT_CHARSET
      GridTitleFont.Color = clWindowText
      GridTitleFont.Height = -11
      GridTitleFont.Name = 'MS Sans Serif'
      GridTitleFont.Style = []
      DefaultRowHeight = 22
      SearchFooter = False
      FullHeight = 194
    end
    object FRDSTopPanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 324
      Height = 94
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
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'First Responder Dispatch System Parameters'
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      FullHeight = 0
      object Label40: TLabel
        Left = 3
        Top = 23
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Member Qualifications'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 3
        Top = 46
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Default Response'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 3
        Top = 71
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Default ETA in Minutes'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object MCIQualField: TAlpineLookup
        Left = 127
        Top = 20
        Width = 188
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'MCIQUAL'
        DisplayField = 'DESCR'
        ReferencingTable = 'MCIQUAL'
        ReferencingField = 'DESCR'
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
      object MCIResponseField: TAlpineLookup
        Left = 127
        Top = 43
        Width = 188
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
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!'
        EditWidth = 45
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'MCIRESPONSE'
        DisplayField = 'RESPONSE'
        ReferencingTable = 'MCIRESPONSE'
        ReferencingField = 'RESPONSE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'MCIRESPONSE'
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object MCIEtaField: TAlpineEdit
        Left = 127
        Top = 67
        Width = 65
        Height = 21
        DataType = pftReal
        Controller = OvcController1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '###.##'
        TabOrder = 2
        DataField = 'MCIETA'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object MCIButton: TAlpineGlowButton
        Left = 201
        Top = 67
        Width = 114
        Height = 21
        Hint = 'Press this button to submit a test record.'
        Caption = 'Test Response'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 122
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF0049646B002B5C66002962670027666A002E474800247171002471
          710042787800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0032424D002789AF001FA3C40018B9D20014C2D300275C600007ECF20000FF
          FF0004F2F200477A7A00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00495663002F719F002788B00021A8CD00217D8F00202B2D0012D6E60008EA
          F10000FFFF00217B7C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00345475003079AD00276781001F1F1D00181211001F7682000EDF
          F00011C5CD007C818100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0031404C00190F0B0026354000191E21000E0000001E73
          7D0053939900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF004880A400489CD1004281A9002F404B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF005B91B20063BAEE0056A5D6004D92BA0045759300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0065A1C20073C2EE0069B6E1005B9BBF004C86A8005A60
          6300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF005E5C5A0076B2D10083D0F9007BC6EE0069A7C90063A5CA003D54
          5E00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00222426002D2B290090D0EC009DECFF0095E4FF0080C4E8007BBEDE004056
          6A002C272D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0034333500506E84005F7D890057758300577583004C6F81001B21
          64001B216400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0045465E0025245400413C3400514C4A0043443C000C084E001312
          6600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0035385B006463600078787800606860000D0F57003C3B
          6700FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00575964008F8F8D009D9D9E00696B6A0039394B00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF0085868700C0BFBE006D6C6C00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF0075747300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 3
        OnClick = MCIButtonClick
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
        ImageName = 'PERSONNEL'
      end
    end
    object AlpinePanel1: TAlpinePanel
      Left = 0
      Top = 246
      Width = 324
      Height = 94
      Align = alTop
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
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'Current Responder Status'
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      FullHeight = 0
      object Label7: TLabel
        Left = 3
        Top = 23
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Responder Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label9: TLabel
        Left = 3
        Top = 69
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Status Length'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 3
        Top = 46
        Width = 119
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Responder Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 197
        Top = 69
        Width = 35
        Height = 14
        AutoSize = False
        Caption = 'Hours'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object RespLengthField: TAlpineEdit
        Left = 127
        Top = 66
        Width = 65
        Height = 21
        DataType = pftReal
        Controller = OvcController1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        options = [efoCaretToEnd, efoRightAlign]
        ParentFont = False
        PictureMask = '###.##'
        TabOrder = 2
        DataField = 'RESPLENGTH'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object RespStatDateField: TAlpineDateTime
        Left = 127
        Top = 43
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        DataField = 'RESPSTATDATE'
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object RespStatIDField: TAlpineLookup
        Left = 127
        Top = 20
        Width = 134
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
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 120
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'RESPSTATID'
        DisplayField = 'DESCR'
        ReferencingTable = 'RESPSTAT'
        ReferencingField = 'RESPSTATID'
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
    end
  end
  object RespAppPanel: TPanel
    Left = 328
    Top = 0
    Width = 613
    Height = 555
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object PersFdidBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 246
      width = 613
      height = 309
      Align = alClient
      BevelOuter = bvNone
      BorderStyle = bsSingle
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      UseDockManager = True
      Version = '2.2.1.0'
      CanMove = True
      CanSize = True
      Caption.Color = clBlack
      Caption.ColorTo = clNone
      Caption.Font.Charset = ANSI_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Arial'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = ' Responder Agencies'
      Caption.Visible = True
      ColorTo = clWhite
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
      ButtonFont.Name = 'MS Sans Serif'
      ButtonFont.Style = []
      GridTitleFont.Charset = DEFAULT_CHARSET
      GridTitleFont.Color = clWindowText
      GridTitleFont.Height = -11
      GridTitleFont.Name = 'MS Sans Serif'
      GridTitleFont.Style = []
      DefaultRowHeight = 22
      SearchFooter = False
      FullHeight = 194
    end
    object PersDevicePanel: TAlpinePanel
      Left = 0
      Top = 94
      Width = 613
      Height = 152
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
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'Registered Devices / Installations'
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      FullHeight = 0
      object PersDeviceBrowse: TAlpineTMSStringGrid
        Left = 2
        Top = 18
        Width = 609
        Height = 100
        Cursor = crDefault
        Align = alClient
        BorderStyle = bsNone
        ColCount = 1
        FixedCols = 0
        RowCount = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goRowSelect]
        ParentFont = False
        ScrollBars = ssVertical
        TabOrder = 0
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = clWhite
        BackGround.Color = clWhite
        ControlLook.FixedGradientHoverFrom = clGray
        ControlLook.FixedGradientHoverTo = clWhite
        ControlLook.FixedGradientDownFrom = clGray
        ControlLook.FixedGradientDownTo = clSilver
        ControlLook.CheckAlwaysActive = True
        ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownHeader.Font.Color = clWindowText
        ControlLook.DropDownHeader.Font.Height = -11
        ControlLook.DropDownHeader.Font.Name = 'Tahoma'
        ControlLook.DropDownHeader.Font.Style = []
        ControlLook.DropDownHeader.Visible = True
        ControlLook.DropDownHeader.Buttons = <>
        ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
        ControlLook.DropDownFooter.Font.Color = clWindowText
        ControlLook.DropDownFooter.Font.Height = -11
        ControlLook.DropDownFooter.Font.Name = 'Tahoma'
        ControlLook.DropDownFooter.Font.Style = []
        ControlLook.DropDownFooter.Visible = True
        ControlLook.DropDownFooter.Buttons = <>
        Filter = <>
        FilterDropDown.Font.Charset = DEFAULT_CHARSET
        FilterDropDown.Font.Color = clWindowText
        FilterDropDown.Font.Height = -11
        FilterDropDown.Font.Name = 'Tahoma'
        FilterDropDown.Font.Style = []
        FilterDropDown.TextChecked = 'Checked'
        FilterDropDown.TextUnChecked = 'Unchecked'
        FilterDropDownClear = '(All)'
        FilterEdit.TypeNames.Strings = (
          'Starts with'
          'Ends with'
          'Contains'
          'Not contains'
          'Equal'
          'Not equal'
          'Clear')
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        LookupItems.Strings = (
          'asda')
        Lookup = True
        LookupCaseSensitive = True
        LookupHistory = True
        MouseActions.NoScrollOnPartialRow = True
        Multilinecells = True
        Navigation.AdvanceDirection = adTopBottom
        Navigation.AllowCtrlEnter = False
        Navigation.AllowClipboardRowGrow = False
        Navigation.AllowClipboardColGrow = False
        Navigation.EditSelectAll = False
        Navigation.CopyHTMLTagsToClipboard = False
        Navigation.HomeEndKey = heFirstLastRow
        PrintSettings.DateFormat = 'dd/mm/yyyy'
        PrintSettings.Font.Charset = DEFAULT_CHARSET
        PrintSettings.Font.Color = clWindowText
        PrintSettings.Font.Height = -11
        PrintSettings.Font.Name = 'MS Sans Serif'
        PrintSettings.Font.Style = []
        PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
        PrintSettings.FixedFont.Color = clWindowText
        PrintSettings.FixedFont.Height = -11
        PrintSettings.FixedFont.Name = 'MS Sans Serif'
        PrintSettings.FixedFont.Style = []
        PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
        PrintSettings.HeaderFont.Color = clWindowText
        PrintSettings.HeaderFont.Height = -11
        PrintSettings.HeaderFont.Name = 'MS Sans Serif'
        PrintSettings.HeaderFont.Style = []
        PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
        PrintSettings.FooterFont.Color = clWindowText
        PrintSettings.FooterFont.Height = -11
        PrintSettings.FooterFont.Name = 'MS Sans Serif'
        PrintSettings.FooterFont.Style = []
        PrintSettings.PageNumSep = '/'
        ScrollWidth = 16
        SearchFooter.FindNextCaption = 'Find next'
        SearchFooter.FindPrevCaption = 'Find previous'
        SearchFooter.Font.Charset = DEFAULT_CHARSET
        SearchFooter.Font.Color = clWindowText
        SearchFooter.Font.Height = -11
        SearchFooter.Font.Name = 'MS Sans Serif'
        SearchFooter.Font.Style = []
        SearchFooter.HighLightCaption = 'Highlight'
        SearchFooter.HintClose = 'Close'
        SearchFooter.HintFindNext = 'Find next occurence'
        SearchFooter.HintFindPrev = 'Find previous occurence'
        SearchFooter.HintHighlight = 'Highlight occurences'
        SearchFooter.MatchCaseCaption = 'Match case'
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.Show = True
        SortSettings.IndexShow = True
        SortSettings.Direction = sdDescending
        SortSettings.FixedCols = True
        Version = '7.1.0.1'
        ViewOnly = False
      end
      object PersDeviceButtonPanel: TAdvPanel
        Left = 2
        Top = 118
        Width = 609
        Height = 32
        Align = alBottom
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
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clWindowText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        FullHeight = 32
        object SendPushButton: TAlpineGlowButton
          Left = 81
          Top = 1
          Width = 200
          Height = 30
          Hint = 
            'Press this button to send a test push message to highlighted dev' +
            'ice.'
          Align = alLeft
          Caption = 'Send Test Message'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 2
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360300000000000036000000280000001000000010000000010018000000
            000000030000C30E0000C30E00000000000000000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E11160E11160E11160E11160E11160E11
            160E11160E11160E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            11160E11160E11160E1116FFFFFF0E11160E11160E11160E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79D00D79D00D79D00D79D00D79D
            00D79D00D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D79D01C5941EB78E2CC4931ACB9000CB9000D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79E03D7B04CCBAF63D5AE47D197
            00D19700D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D79E03DFB33AE1B94EDDAD2CD79D00D79D00D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79D00E1A701E1A802E1A700E1A7
            00E1A700D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D09C09AD9223AD9224E3AB06E0A405E4A803D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116C69B17858A5A84895A95681C4C29
            119A670CD79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116CA9B12A89741A9963FAD6C1F985223B77414D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116FDE800F5E002F5E101F0D802E9CC
            06EED503FDE8000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116C98F00C98F00C98F00C98F00C98F0026EA2926EA290E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E11160000000000000000000000000000
            000000001115190E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF111519111519FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 0
          OnClick = SendPushButtonClick
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
          ImageName = 'SMARTPHONE'
        end
        object SendPushToAll: TAlpineGlowButton
          Left = 408
          Top = 1
          Width = 200
          Height = 30
          Hint = 
            'Press this button to send a test message to EVERYONE in Departme' +
            'nt'
          Align = alRight
          Caption = 'Send Test to EVERYONE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 2
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360300000000000036000000280000001000000010000000010018000000
            000000030000C30E0000C30E00000000000000000000FF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E11160E11160E11160E11160E11160E11
            160E11160E11160E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            11160E11160E11160E1116FFFFFF0E11160E11160E11160E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79D00D79D00D79D00D79D00D79D
            00D79D00D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D79D01C5941EB78E2CC4931ACB9000CB9000D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79E03D7B04CCBAF63D5AE47D197
            00D19700D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D79E03DFB33AE1B94EDDAD2CD79D00D79D00D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116D79D00E1A701E1A802E1A700E1A7
            00E1A700D79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116D09C09AD9223AD9224E3AB06E0A405E4A803D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116C69B17858A5A84895A95681C4C29
            119A670CD79D000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116CA9B12A89741A9963FAD6C1F985223B77414D79D000E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E1116FDE800F5E002F5E101F0D802E9CC
            06EED503FDE8000E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0E
            1116C98F00C98F00C98F00C98F00C98F0026EA2926EA290E1116FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FF0E11160000000000000000000000000000
            000000001115190E1116FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FF111519111519FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          TabOrder = 1
          OnClick = SendPushToAllClick
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
          ImageName = 'SMARTPHONE'
        end
        object DeletePersDeviceButton: TAlpineGlowButton
          Left = 1
          Top = 1
          Width = 80
          Height = 30
          Align = alLeft
          Caption = 'Delete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ImageIndex = 107
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          Picture.Data = {
            424D360400000000000036000000280000001000000010000000010020000000
            00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF007E7E7E00FF00FF00FF00FF00FF00FF00FF00FF0099999900FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00B7B7
            B7004B4B4B004B4B4B0033339900FF00FF00FF00FF00ACACAC004B4B4B002E2E
            7200C2C2C200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999004B4B
            4B003C3C5400000099000000990042429F00FF00FF004B4B4B0036365D000000
            A40009099D00B5B5C000FF00FF00FF00FF00FF00FF00ACACAC004B4B4B003333
            66000000990000009900000099000000990046467A004B4B4B00000099000000
            A4000000A4000000A400B5B5C000FF00FF00FF00FF00FF00FF003D3D62000000
            9900000099000000990000009900000099000000990011118A000000A4000000
            A4000000A4000000A4000000A400BEBEC800FF00FF00FF00FF00FF00FF000000
            99000000990000009900000099000000990000009900000099000000A4000000
            A4000000A4000000A4000000A4006666B500FF00FF00FF00FF00FF00FF00BCBC
            C100000099000000990000009900000099000000990000009900000099000000
            A4000000A4000000A4000606A300FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF0080808B000000990000009900000099000000990000009900000099000000
            99000000990000009900BEBEC800FF00FF00FF00FF00FF00FF00FF00FF00C2C2
            C2004B4B4B0023236F0000009900000099000000990000009900000099000000
            9900000099000C0C9300FF00FF00FF00FF00FF00FF00FF00FF00B7B7B7004B4B
            4B0042424D000000990000009900000099000000990000009900000099000000
            9900000099000000990009099D00FF00FF00FF00FF00FF00FF00ACACAC003C3C
            5400000099000000990000009900000099000000990000009900000099000000
            99000000990000009900000099006666B500FF00FF00FF00FF00FF00FF007979
            9E00000099000000990000009900000099000000990000009900000099000000
            990000009900000099001F1FA400FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF007373A500000099000000990000009900000099008989BB004747A1000000
            99000000990000009900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF009393B80000009900000099008989BB00FF00FF00FF00FF009A9A
            C0000E0E9C00BEBEC800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00BEBEC8008989BB00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          TabOrder = 2
          OnClick = DeletePersDeviceButtonClick
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
          ImageName = 'DELETE'
        end
      end
    end
    object RespAppTopPanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 613
      Height = 94
      Align = alTop
      BevelOuter = bvLowered
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
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
      Caption.Height = 18
      Caption.Indent = 2
      Caption.Text = 'Responder Mobile App Settings'
      Caption.Visible = True
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'Put Caption Here'
      Highlightcolor = clSilver
      FullHeight = 0
      object Label3: TLabel
        Left = 5
        Top = 46
        Width = 83
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Registered Email'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 357
        Top = 23
        Width = 55
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'GPS Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 357
        Top = 46
        Width = 55
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Latitude'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 357
        Top = 70
        Width = 55
        Height = 14
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Longitude'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object EmailAppLinkButton: TAlpineGlowButton
        Left = 55
        Top = 67
        Width = 138
        Height = 21
        Hint = 'Press this button to send a email to download the app.'
        Caption = 'Email Download Link'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 29
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D360300000000000036000000280000001000000010000000010018000000
          000000030000C30E0000C30E00000000000000000000FF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFFF00FFA9AEB1A8ACAFAAAFB2FF00FFFF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9FA2A49FA0A0AAAAAAB1B1
          B1AAAAAA9E9F9FA0A3A5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FF8D8D8DA9A9A9C1C1C1C8C8C8C9C9C9C8C8C8C0C0C0A7A7A78E8E8FFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FF868687B6B6B6E6E6E6E6E6E6E2E2E2E2E2
          E2E3E3E3E7E7E7E4E4E4AEAEAE868787FF00FFFF00FFFF00FFFF00FF8F929496
          9696BABABAEFEFEFF1F1F1FFFFFFFFFFFFFFFFFFF1F1F1EBEBEBB0B0B0969696
          939798FF00FFFF00FFFF00FF7B7B7C9C9C9C9C9C9C8D8D8DBDBDBDFEFEFEFFFF
          FFF9F9F9AFAFAF8E8E8E9E9E9E9B9B9B7D7E7EFF00FFFF00FF9A9EA17373738E
          8F8F898989B5B5B5FFFFFFFFFFFFFEFEFEFFFFFFFAFAFAA8A8A8898A8A8E8E8E
          717171A0A6A8FF00FF8D91936868687E7E7EB3B3B3FFFFFFE7E7E7CCCCCCFFFF
          FFBEBEBEF4F4F4FDFDFDA4A4A47F7F7F666666969B9DFF00FF94989B61616185
          8585BEBEBEE2E2E28C8D8DB5B5B5FFFFFF9999999B9B9BE6E6E6AEAEAE838383
          5D5D5D9CA1A4FF00FFFF00FF747575B0B0B0A5A5A59E9E9E909090C5C5C5FFFF
          FFADADAD9494949D9D9DA5A5A5AEAEAE757676FF00FFFF00FFFF00FF848789BC
          BCBCCECECEC9C9C9C1C1C1D8D8D8FFFFFFC6C6C6C6C6C6C8C8C8CFCFCFB9B9B9
          888B8DFF00FFFF00FFFF00FFFF00FF959595E6E6E6DEDEDED6D6D6E2E2E2FFFF
          FFD2D2D2DBDBDBDFDFDFE4E4E4959696FF00FFFF00FFFF00FFFF00FFFF00FFA1
          A6A9A3A3A3E8E8E8F6F6F6E8E8E8E9E9E9E7E7E7F7F7F7E5E5E5A1A2A2A8AEB1
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9C9FA1B8B9B9D1D1D1D7D7
          D7D1D1D1B6B7B79B9FA0FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
          00FFFF00FFFF00FFA3AAAD9BA0A29CA0A29BA0A2A6ADB0FF00FFFF00FFFF00FF
          FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        TabOrder = 0
        OnClick = EmailAppLinkButtonClick
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
        ImageName = 'DOWNLOAD'
      end
      object RespEMailField: TAlpineEdit
        Left = 92
        Top = 42
        Width = 242
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 60
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 1
        DataField = 'EMAIL'
        CurrentPos = -1
      end
      object ResetAppPasswordButton: TAlpineGlowButton
        Left = 196
        Top = 67
        Width = 138
        Height = 21
        Hint = 'Press this button to reset password.'
        Caption = 'Reset Password'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 111
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF008883820076929A006F8B90006E7B7F008A848300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF003960720024ACD10057D9F1007CD6E90061CDE60056C7E1003F9FB4005789
          96008F939400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0008658F0003C1F50060E7FF0080EDFF0080EDFF005CE4FF003BDEFF001BD5
          FF0016B5DE0034799100737E8500FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000D709B000EC3F3006BE5FF009CF6FF009EEDFF007CEBFF004BB0C90036B8
          D80018DDFF0000BBEE001A84AC00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000176AA0017C9F80073E9FF009CF6FF009CF6FF009CF6FF005A96A5003C81
          940040E4FF0016D4FF000DB6E300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000083B8001DD1FD007AE9FE00BBFDFF009CF6FF009CF6FF006998A30057A5
          B8005AE9FF0034D8FF001DC0E900FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000A93C10023D6FF0083E9FE00BBFDFF009CF6FF009CF6FF002E3739004E71
          7A007DF1FF0051DEFF0036C3E700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF000EA0CC0021D5FE0085E8FC00D9F9FF00BBFDFF00D9F9FF007A8386007DA8
          B30098F3FF006FE4FF0050CAE700FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0018A1C9006DEBFF00B0D4DC009C9E9F009C9E9F00D3FCFF00DAFFFF00CBF9
          FF00ACF0FF0095EDFF0065CFE800FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0069848B00B4B6B700A8A4A200B5B0AF009F9F9F0087F3FF006DE9FF007FBD
          CD007FBDCD0075E4FD0070C6DD00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00ACABAB00B2B2B1009F9F9F006DADBA0054CBE8009F9F
          9F009F9F9F000CADD50037879D00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009F9F9F00B2B2B2009F9F9F00FF00FF00FF00FF007B86
          8800ACB4B60067797C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009F9F9F00CBCBCB009F9F9F00FF00FF00FF00FF008E8E
          8E00ABA9A900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0094949400FBFAFA00A6A6A6008484840084848400BABB
          BB0097999900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0092939400B5B5B600D4D4D400BDBDBD00B1B2B2009696
          96007F808000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF008A8A8A007D7E7E009F9F9F00808080009F9F
          9F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 2
        OnClick = ResetAppPasswordButtonClick
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
        ImageName = 'SECURITY'
      end
      object ResponderField: TAlpineCheckBox
        Left = 9
        Top = 19
        Width = 133
        Height = 20
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'Enable Responder App'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 3
        Version = '1.6.0.0'
        DataField = 'RESPONDER'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object SelfOnlyField: TAlpineCheckBox
        Left = 147
        Top = 19
        Width = 72
        Height = 20
        Hint = 'Limit this person to only see their own responses and history.'
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'Self Only'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        ShowHint = True
        TabOrder = 4
        Version = '1.6.0.0'
        ParentShowHint = False
        DataField = 'RESPONDERSELFONLY'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object NoDispHistField: TAlpineCheckBox
        Left = 217
        Top = 19
        Width = 139
        Height = 20
        Hint = 'Prevents app from showing dispatch history.'
        Alignment = taLeftJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'Disable Dispatch History'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        ShowHint = True
        TabOrder = 5
        Version = '1.6.0.0'
        ParentShowHint = False
        DataField = 'RESPONDERNODISPHIST'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object DateTimeGPSField: TAlpineDateTime
        Left = 415
        Top = 20
        Width = 150
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowSeconds = True
        DataField = 'DATETIMEGPS'
        TabOrder = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object LatitudeField: TAlpineEdit
        Left = 415
        Top = 43
        Width = 91
        Height = 21
        DataType = pftReal
        AutoSize = False
        Controller = OvcController1
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
        PictureMask = '###.########'
        TabOrder = 7
        DataField = 'LATITUDE'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00000000'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object LongitudeField: TAlpineEdit
        Left = 415
        Top = 67
        Width = 91
        Height = 21
        DataType = pftReal
        AutoSize = False
        Controller = OvcController1
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
        PictureMask = '###.########'
        TabOrder = 8
        DataField = 'LONGITUDE'
        RightAlign = True
        CurrentPos = -1
        Text = '  0.00000000'
        RangeHigh = {ADDF8CC733F9DF470000}
        RangeLow = {ADDF8CC733F9DFC70000}
      end
      object MapButton: TAlpineGlowButton
        Left = 510
        Top = 43
        Width = 56
        Height = 45
        Caption = 'Show on Map'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 100
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        Picture.Data = {
          424D360400000000000036000000280000001000000010000000010020000000
          00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF009A807200AE8A7E00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF008D7A6B00736854008C8C730088847400A7979100918E8100918E
          8100AA9A7F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF006154440091855F00CDBE8400D9C58A00C1B28100D3C7AA00E3D3AA00CDBE
          840097957400A08D6C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005F4C
          41009B7E5700ECCC7D00DEC57F00DEC57F00DEC57F00E7D59F00E8D5B600E8DD
          BC00E7D59F00A39B6B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF007556
          3A00DDAE6A00DDAE6A00E0B76F00E9C47800E1C17600ECCC7D00E8D5B600E8D5
          B600E8DDBC00E8D1A800A08D6C00FF00FF00FF00FF00FF00FF003D363100AD7D
          4C00D89A5900E6A76200E6A76200EFB86C00DDAE6A00EBBC7100EFD6AF00E8D5
          B600E8D5B600E8D5B600CDA980007D5C4900FF00FF00FF00FF0044352C00BE80
          4600D0894900E0975400E0975400EEA75D00DC9C5800EBBD8E00F7DBBC00E3D3
          AA00F7DBBC00E8D1A800EBBD8E00765A4000FF00FF00FF00FF0044352C00AE6E
          3800C87F4200CE844500D88C4A00E0975400D88C4A00EBBD8E00F6D4B600DEBD
          A300F0CFB200DD9E7000D089490075563A00FF00FF00FF00FF00402B20009F5D
          2B00BF723700BF723700CB7B3C00CE844500CB7B3C00DD925A00F0CFB200DEBD
          A300E3B28B00CB7B3C00BF7237006C4B3000FF00FF00FF00FF00402B20008D4D
          1F00AE602A00AE602A00BD6A2F00CB723200BF723700DD925A00DD9E7000CA89
          5B00C5713400BD6A2F00AE602A00563B2600FF00FF00FF00FF00342E2B00753B
          1A008D4D1F00974F2500A3582800AE6E3800C3977A00C07F5400BF744300AA61
          3000AE602A00A35828008D4D1F00402B2000FF00FF00FF00FF005F4C41004F2F
          1E00753B1A0084451F0084451F00C59C8500A4603900A4603900A46039008D4D
          1F00974F250084451F004F2F1E00553E3100FF00FF00FF00FF00FF00FF00342E
          2B004F291700753B1A008E655000C7AC9E00A8837300B89382009E6F56007A3E
          1E007A3E1E0058301B003A281F00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00342E2B00432315009A7E7200B8A29700B49C9300BDA69B00B49C93009371
          61004F2F1E0034241F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00342E2B0034241F00806E6800A7979100A7979100786660007866
          60003A2C2800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF004539380080777600716564004D3F3C006C5B
          5800FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        TabOrder = 9
        OnClick = MapButtonClick
        AllowAllUp = True
        Appearance.BorderColor = clBlack
        Appearance.ColorChecked = clLime
        Appearance.ColorCheckedTo = clLime
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
        Appearance.ColorMirrorChecked = clLime
        Appearance.ColorMirrorCheckedTo = clLime
        Appearance.ColorMirrorDisabled = 11974326
        Appearance.ColorMirrorDisabledTo = 15921906
        GroupIndex = 1
        Layout = blGlyphTop
        GlowSpeed = 0
        ImageName = 'MAP'
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
    Left = 896
    Top = 32
  end
end
