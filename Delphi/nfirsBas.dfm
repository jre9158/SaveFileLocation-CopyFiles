object NfirsBasicForm: TNfirsBasicForm
  Left = 268
  Top = 17
  Caption = 'NfirsBasicForm'
  ClientHeight = 987
  ClientWidth = 917
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object NfirsMainScrollbox: TMyScrollBox
    Left = 0
    Top = 0
    Width = 917
    Height = 987
    HorzScrollBar.Visible = False
    VertScrollBar.Range = 1800
    Align = alClient
    AutoScroll = False
    Color = clWhite
    ParentColor = False
    TabOrder = 0
    EdgeTolerance = 50
    CanPan = True
    object NfirsInvBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 1260
      width = 896
      height = 178
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
      TabOrder = 11
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clNavy
      BorderWidth = 1
      Caption.Color = clWhite
      Caption.ColorTo = clWhite
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Height = 33
      Caption.Indent = 2
      Caption.TopIndent = 2
      Caption.Visible = True
      ColorTo = clWhite
      ColorMirror = clWhite
      ColorMirrorTo = clWhite
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FixedRowHeight = 22
      MobileConfig = False
      ButtonPanelVisible = True
      ModalLess = False
      OnGetFieldValue = NfirsInvBrowseGetFieldValue
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
      FullHeight = 200
      object Label7: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 30
        Alignment = taCenter
        AutoSize = False
        Caption = 'K'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label8: TLabel
        Left = 33
        Top = 6
        Width = 155
        Height = 16
        AutoSize = False
        Caption = 'Persons Involved'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
    end
    object MPanel: TAlpinePanel
      Left = 0
      Top = 1610
      Width = 896
      Height = 114
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'M'
      RightCaption = 'M - Authorization'
      FullHeight = 114
      object MLabel: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 112
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'M'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label543: TLabel
        Left = 4
        Top = 52
        Width = 46
        Height = 13
        Caption = 'In Charge'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label545: TLabel
        Left = 541
        Top = 52
        Width = 59
        Height = 13
        Caption = 'Date Signed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label546: TLabel
        Left = 4
        Top = 92
        Width = 70
        Height = 13
        Caption = 'Making Report'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label547: TLabel
        Left = 84
        Top = 92
        Width = 51
        Height = 13
        Caption = 'Last Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label548: TLabel
        Left = 541
        Top = 92
        Width = 59
        Height = 13
        Caption = 'Date Signed'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label549: TLabel
        Left = 288
        Top = 52
        Width = 26
        Height = 13
        Caption = 'Rank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label550: TLabel
        Left = 288
        Top = 92
        Width = 26
        Height = 13
        Caption = 'Rank'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object OffAssLabel: TLabel
        Left = 391
        Top = 52
        Width = 54
        Height = 13
        Caption = 'Assignment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object MemAssLabel: TLabel
        Left = 391
        Top = 92
        Width = 54
        Height = 13
        Caption = 'Assignment'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label553: TLabel
        Left = 200
        Top = 92
        Width = 50
        Height = 13
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label554: TLabel
        Left = 264
        Top = 92
        Width = 12
        Height = 13
        Caption = 'MI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label78: TLabel
        Left = 33
        Top = 6
        Width = 85
        Height = 16
        Caption = 'Authorization'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label544: TLabel
        Left = 84
        Top = 52
        Width = 51
        Height = 13
        Caption = 'Last Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label551: TLabel
        Left = 200
        Top = 52
        Width = 50
        Height = 13
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label552: TLabel
        Left = 264
        Top = 52
        Width = 12
        Height = 13
        Caption = 'MI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object OffDateField: TAlpineDateTime
        Left = 541
        Top = 31
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'OFFDATE'
        TabOrder = 6
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object MemDateField: TAlpineDateTime
        Left = 541
        Top = 72
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'MEMDATE'
        TabOrder = 13
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object MemReportCode: TAlpineLookup
        Left = 4
        Top = 72
        Width = 76
        Height = 21
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        TabStop = True
        OnEnter = MemReportCodeEnter
        ImageName = 'DOWNARROW'
        InitialSeek = True
        OnSuccessfulValidate = MemReportCodeSuccessfulValidate
        PictureMask = '!!!!!!!!'
        EditWidth = 76
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSIDMAKEREP'
        DisplayField = 'PERSCODE'
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
      object MemOfficeCode: TAlpineLookup
        Left = 4
        Top = 31
        Width = 76
        Height = 21
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnEnter = MemOfficeCodeExit
        ImageName = 'DOWNARROW'
        InitialSeek = True
        OnSuccessfulValidate = MemOfficeCodeSuccessfulValidate
        PictureMask = '!!!!!!!!'
        EditWidth = 76
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSIDOFFCHARGE'
        DisplayField = 'PERSCODE'
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
      object OffRankField: TAlpineLookup
        Left = 288
        Top = 31
        Width = 101
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 80
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'OFFRANK'
        DisplayField = 'DESCR'
        ReferencingTable = 'PERSRANK'
        ReferencingField = 'DESCR'
        SqlExpr = 'SELECT * FROM PERSRANK ORDER BY DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object MemRankField: TAlpineLookup
        Left = 288
        Top = 72
        Width = 101
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 80
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'MEMRANK'
        DisplayField = 'DESCR'
        ReferencingTable = 'PERSRANK'
        ReferencingField = 'DESCR'
        SqlExpr = 'SELECT * FROM PERSRANK ORDER BY DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object OffAssField: TAlpineLookup
        Left = 391
        Top = 31
        Width = 147
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 123
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'OFFASS'
        DisplayField = 'DESCR'
        ReferencingTable = 'NFIRSATTTASK'
        ReferencingField = 'DESCR'
        SqlExpr = 'SELECT * FROM NFIRSATTTASK ORDER BY DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object MemAssField: TAlpineLookup
        Left = 391
        Top = 72
        Width = 147
        Height = 19
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -9
        Font.Name = 'Small Fonts'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 123
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'MEMASS'
        DisplayField = 'DESCR'
        ReferencingTable = 'NFIRSATTTASK'
        ReferencingField = 'DESCR'
        SqlExpr = 'SELECT * FROM NFIRSATTTASK ORDER BY DESCR'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'DESCR'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object MRFIRSTField: TAlpineEdit
        Left = 200
        Top = 72
        Width = 61
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 33
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 9
        DataField = 'MRFIRST'
        CurrentPos = -1
      end
      object MRMIField: TAlpineEdit
        Left = 263
        Top = 72
        Width = 21
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!'
        TabOrder = 10
        DataField = 'MRMI'
        CurrentPos = -1
      end
      object OCFIRSTField: TAlpineEdit
        Left = 200
        Top = 31
        Width = 61
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 33
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 2
        DataField = 'OCFIRST'
        CurrentPos = -1
      end
      object OCMIField: TAlpineEdit
        Left = 263
        Top = 31
        Width = 21
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 1
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!'
        TabOrder = 3
        DataField = 'OCMI'
        CurrentPos = -1
      end
      object OffChargeField: TAlpineEdit
        Left = 84
        Top = 31
        Width = 113
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 33
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 1
        DataField = 'OFFCHARGE'
        CurrentPos = -1
      end
      object MemRepField: TAlpineEdit
        Left = 84
        Top = 72
        Width = 113
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 33
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 8
        DataField = 'MEMREP'
        CurrentPos = -1
      end
      object MSameAsButton: TAlpineGlowButton
        Left = 691
        Top = 72
        Width = 57
        Height = 33
        Caption = 'Same as In Charge'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnClick = MSameAsButtonClick
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
      end
      object CurrentButton: TAlpineGlowButton
        Left = 635
        Top = 71
        Width = 44
        Height = 33
        Caption = 'Current User'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnClick = CurrentButtonClick
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
      end
      object OICButton: TAlpineGlowButton
        Left = 635
        Top = 31
        Width = 44
        Height = 33
        Caption = 'Current User'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnClick = OICButtonClick
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
      end
    end
    object BPanel: TAlpinePanel
      Left = 0
      Top = 39
      Width = 896
      Height = 157
      Align = alTop
      BevelOuter = bvNone
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
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'B'
      RightCaption = 'B - Location'
      FullHeight = 0
      object BLabel: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 155
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'B'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object IncTypeLabel: TLabel
        Left = 10
        Top = 57
        Width = 24
        Height = 13
        Caption = 'Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object pStrNumLabel: TLabel
        Left = 75
        Top = 57
        Width = 81
        Height = 13
        Caption = 'Number/Milepost'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StreetPreLabel: TLabel
        Left = 171
        Top = 57
        Width = 26
        Height = 13
        Caption = 'Prefix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label15: TLabel
        Left = 236
        Top = 57
        Width = 84
        Height = 13
        Caption = 'Street or Highway'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pcensusLabel: TLabel
        Left = 535
        Top = 21
        Width = 35
        Height = 13
        Caption = 'Census'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pRoomAptLabel: TLabel
        Left = 75
        Top = 99
        Width = 78
        Height = 13
        Caption = 'Apt/Suite/Room'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pCityLabel: TLabel
        Left = 171
        Top = 99
        Width = 17
        Height = 13
        Caption = 'City'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pStateLabel: TLabel
        Left = 380
        Top = 99
        Width = 25
        Height = 13
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object pZipLabel: TLabel
        Left = 444
        Top = 99
        Width = 43
        Height = 13
        Caption = 'Zip Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object StreetTypeLabel: TLabel
        Left = 454
        Top = 57
        Width = 55
        Height = 13
        Caption = 'Street Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object StreetSuffLabel: TLabel
        Left = 524
        Top = 57
        Width = 26
        Height = 13
        Caption = 'Suffix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object CrossDirLabel: TLabel
        Left = 75
        Top = 140
        Width = 186
        Height = 13
        Caption = 'Cross Street, Directions or National Grid'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LocationLabel: TLabel
        Left = 42
        Top = 7
        Width = 89
        Height = 16
        Caption = 'Location Type'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DispCallShape: TShape
        Left = 537
        Top = 80
        Width = 143
        Height = 63
        Brush.Style = bsClear
      end
      object DispCallLabel: TLabel
        Left = 551
        Top = 89
        Width = 49
        Height = 13
        Caption = 'DispCallid:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object COUNTYNUMLABEL: TLabel
        Left = 455
        Top = 21
        Width = 29
        Height = 13
        Caption = 'CAD#'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object LocTypeField: TAlpineLookup
        Left = 10
        Top = 36
        Width = 58
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        ImageName = 'DOWNARROW'
        Descriptionlabel = LocationLabel
        PictureMask = '!'
        EditWidth = 37
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'LOCTYPE'
        ReferencingTable = 'N5LOCTYPE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = [fsBold]
        LookupCode = 'STDLOOK'
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object strnumField: TAlpineEdit
        Left = 75
        Top = 36
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 2
        DataField = 'STRNUM'
        CurrentPos = -1
      end
      object StreetPreField: TAlpineLookup
        Left = 171
        Top = 36
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        PictureMask = '!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'STREETPRE'
        ReferencingTable = 'N5STREETPRE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object RoomAptField: TAlpineEdit
        Left = 75
        Top = 79
        Width = 71
        Height = 21
        DataType = pftString
        AutoSize = False
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 20
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!!!!!'
        TabOrder = 7
        DataField = 'ROOMAPT'
        CurrentPos = -1
      end
      object cityField: TAlpineLookup
        Left = 171
        Top = 79
        Width = 206
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'CITY'
        DisplayField = 'CITY'
        ReferencingTable = 'CITY'
        ReferencingField = 'CITY'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'CITY'
        OnAfterLookup = cityFieldAfterLookup
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object StateField: TAlpineLookup
        Left = 380
        Top = 79
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'STATE'
        ReferencingTable = 'N5STATE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object zipfield: TAlpineEdit
        Left = 442
        Top = 79
        Width = 72
        Height = 21
        DataType = pftString
        AutoSize = False
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 10
        options = [efoCaretToEnd]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '99999-9999'
        TabOrder = 10
        DataField = 'ZIP'
        CurrentPos = -1
        Text = '-    -----'
      end
      object StreetTypeField: TAlpineLookup
        Left = 454
        Top = 36
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        PictureMask = '!!!!'
        EditWidth = 65
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'STREETTYPE'
        ReferencingTable = 'N5STREETTYPE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object StreetSuffField: TAlpineLookup
        Left = 525
        Top = 36
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        PictureMask = '!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'STREETSUFF'
        ReferencingTable = 'N5STREETPRE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object CrossDirField: TAlpineLookup
        Left = 75
        Top = 118
        Width = 438
        Height = 21
        BorderStyle = bsNone
        Color = clWhite
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 11
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 438
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'CROSS1'
        DisplayField = 'STREET'
        ReferencingTable = 'STREET'
        ReferencingField = 'STREET'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STREET'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object StreetField: TAlpineLookup
        Left = 236
        Top = 36
        Width = 212
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnExit = StreetFieldExit
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'STREET'
        DisplayField = 'STREET'
        ReferencingTable = 'STREET'
        ReferencingField = 'STREET'
        ReturnField = 'STREET'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STREET'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object PropButton: TAlpineGlowButton
        Left = 5
        Top = 77
        Width = 64
        Height = 66
        Hint = 'Pick an address from Preplan Listing'
        Caption = 'Address Selection'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 190
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
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
          FF00FF00FF00FF00FF00FF00FF001A661A000D7F0D00009900004DB14D00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00BFC9BF0053AE530066B36600A6C3A600FF00FF00FF00FF00999999002626
          260033333300333333002A462A0000C5000000C5000000B0000000C500001095
          100033333300CAC3C100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF000E9D0E0022A12200808080000A0A0A0000000000000000007D7D
          7D00FFFFFF00FFFFFF0040CD400000B000001095100013C3130030B8300026B5
          26004DA74D0033333300333333003333330033333300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00BFC9BF0080B9
          800033A633000A850A00235323001A1A1A000000000000000000000000008080
          8000FFFFFF00B0EEB00020CE200050D2500006B9060000BC0000739D73009999
          9900669966008F998F009999990099999900999999003333330033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF0090BD900020592000DFF2DF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF001688160000990000669966009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF005AAF5A001A661A00FFFFFF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330086998600569956008699
          860099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009ABF
          9A0066B3660033333300FFFFFF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A6C3
          A600BFC9BF0033333300FFFFFF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0033333300999999004D4D4D001010
          1000262626004D4D4D00666666008F8F8F00999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF008080800000000000202020004F4F4F00BFBF
          BF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0033333300999999004D4D4D000000
          000000000000000000000000000073737300999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00DFDFDF00EFEFEF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0033333300999999004D4D4D000000
          000000000000000000000000000073737300999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900737373003333
          330026262600000000000000000073737300999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999008F8F8F008F8F8F00999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300FFFFFF00FFFFFF00FFFFFF00FFFFFF00DFDFDF00DFDF
          DF00FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330099999900999999009999
          990099999900999999009999990099999900999999009999990033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00333333003333
          33003333330033333300FFFFFF00BFBFBF004040400010101000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF003333330033333300333333003333
          330033333300333333003333330033333300333333003333330033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00AFAFAF003333
          3300333333003333330033333300808080000000000000000000000000008080
          8000FFFFFF00FFFFFF00FFFFFF00FFFFFF0033333300811B0E00811B0E00811B
          0E00851F1000851F1000851F1000333333003333330033333300333333003333
          3300333333003333330033333300FF00FF00FF00FF00FF00FF00FF00FF009999
          990033333300333333003333330080808000000000004040400073737300BFBF
          BF00FFFFFF00FFFFFF00FFFFFF00333333008E2814008E281400922C1600922C
          1600922C1600922C1600922C1600922C160096301800963018009A341A009A34
          1A009A341A003333330033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF008F8F8F00333333003333330033333300FF00FF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00333333009A341A009A341A009D371B009D371B009D37
          1B00A03A1D00A03A1D00A03A1D00A43E1F00A43E1F00A43E1F00A43E1F00A43E
          1F0033333300CAC3C100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF0033333300333333003333330033333300FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00EEDCD60033333300A7412100A7412100AA442200AA442200AA44
          2200AA442200AE482400AE482400AE482400AE482400AE482400AE4824003333
          3300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF0033333300333333003333330033333300FFFFFF00FFFF
          FF00FAF4F20033333300B34D2700B34D2700B6502800B6502800B6502800B650
          2800BA542A00BA542A00BE582C00BE582C00BE582C00BE582C0033333300FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00333333003333330033333300FFFFFF00FFFF
          FF0033333300C25C2E00C25C2E00C25C2E00C25C2E007B3B1D00633018008942
          2100C25C2E00CC663300CC663300CC663300CC66330033333300FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF003333330033333300333333003333
          3300CC663300CC663300CC663300CC6633009A4D26000000000000000000331A
          0D00CC663300CC663300CC663300CC66330033333300FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0033333300463933003333
          3300CC663300CC663300CC663300CC6633009A4D26000000000000000000331A
          0D00CC663300CC663300CC66330033333300FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00333333003333
          3300333333003333330033333300333333002626260000000000000000001010
          100033333300333333003333330033333300FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF009999990000000000000000004040
          4000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnClick = PropButtonClick
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
        Layout = blGlyphTop
        GlowSpeed = 0
        ImageName = 'PREPLAN32'
      end
      object WildLandField: TAlpineCheckBox
        Left = 174
        Top = 7
        Width = 164
        Height = 17
        Alignment = taLeftJustify
        ButtonType = btClassic
        Caption = 'Address on Wildland Form'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 13
        Version = '1.6.0.0'
        DataField = 'WILDADDR'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
      object PROPIDFIELD: TAlpineEdit
        Left = 5
        Top = 139
        Width = 64
        Height = 13
        DataType = pftString
        AutoSize = False
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 14
        Visible = False
        DataField = 'PROPID'
        CurrentPos = -1
      end
      object DispCallIDField: TAlpineEdit
        Left = 608
        Top = 86
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 15
        DataField = 'DISPCALLID'
        CurrentPos = -1
      end
      object DispcallButton: TButton
        Left = 557
        Top = 113
        Width = 117
        Height = 25
        Caption = 'Assign DISPCALLID'
        TabOrder = 16
        OnClick = DispcallButtonClick
      end
      object ShowOnMap: TButton
        Left = 320
        Top = 6
        Width = 82
        Height = 25
        Caption = 'Show on Map'
        TabOrder = 17
        OnClick = ShowOnMapClick
      end
      object COUNTYNUMFIELD: TAlpineEdit
        Left = 455
        Top = 2
        Width = 74
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 18
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!!!'
        TabOrder = 18
        DataField = 'COUNTYNUM'
        CurrentPos = -1
      end
      object CensusField: TAlpineLookup
        Left = 534
        Top = 2
        Width = 91
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnEnter = CensusFieldEnter
        ImageName = 'DOWNARROW'
        DropDownRows = 8
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 70
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'CENSUS'
        DisplayField = 'CODE'
        ReferencingTable = 'REDNMXCODE'
        ReferencingField = 'CODE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'CENSUS'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
    end
    object APanel: TAlpinePanel
      Left = 0
      Top = 0
      Width = 896
      Height = 39
      Align = alTop
      BevelOuter = bvNone
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
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'A - Date and Number'
      FullHeight = 0
      object ALabel: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 37
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'A'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 33
        Top = 24
        Width = 24
        Height = 13
        Caption = 'FDID'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 384
        Top = 24
        Width = 99
        Height = 13
        Caption = 'Alarm Date and Time'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TLabel
        Left = 538
        Top = 24
        Width = 79
        Height = 13
        Caption = 'Incident Number'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label14: TLabel
        Left = 623
        Top = 24
        Width = 18
        Height = 13
        Caption = 'Exp'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object UnitNumLabel: TLabel
        Left = 299
        Top = 24
        Width = 58
        Height = 13
        Caption = 'Primary Unit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object FDIDField: TAlpineLookup
        Left = 33
        Top = 4
        Width = 260
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        OnEnter = FDIDFieldEnter
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'FDID'
        DisplayField = 'FDID'
        ReferencingTable = 'FDID'
        ReferencingField = 'FDID'
        ReturnField = 'DEPTNAME'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clNavy
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = []
        LookupCode = 'FDIDDISP'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object DateTimeAlarmHeadField: TAlpineDateTime
        Left = 384
        Top = 4
        Width = 134
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        OnChange = DateTimeAlarmHeadFieldChange
        DataField = 'DATETIMEALARM'
        TabOrder = 2
        ParentColor = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object IncNumField: TAlpineEdit
        Left = 535
        Top = 4
        Width = 82
        Height = 21
        DataType = pftString
        AutoSize = False
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 10
        options = [efoCaretToEnd, efoStripLiterals]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '9999999999'
        TabOrder = 3
        OnEnter = IncNumFieldEnter
        OnExit = IncNumFieldExit
        DataField = 'INCNUM'
        CurrentPos = -1
      end
      object ExpNumField: TAlpineEdit
        Left = 622
        Top = 4
        Width = 27
        Height = 21
        DataType = pftString
        AutoSize = False
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        options = [efoCaretToEnd, efoStripLiterals]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '99'
        TabOrder = 4
        DataField = 'EXPNUM'
        CurrentPos = -1
      end
      object UnitNumField: TAlpineEdit
        Left = 299
        Top = 4
        Width = 71
        Height = 21
        DataType = pftString
        AutoSize = False
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 16
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!!!!!!!!!'
        TabOrder = 1
        DataField = 'UNITNUM'
        CurrentPos = -1
      end
    end
    object K1Panel: TAlpinePanel
      Left = 0
      Top = 862
      Width = 896
      Height = 204
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'K1'
      RightCaption = 'K1 - Person Involved'
      FullHeight = 0
      object K1Label: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 202
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'K'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label152: TLabel
        Left = 12
        Top = 56
        Width = 138
        Height = 13
        Caption = 'Business Name (if applicable)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label153: TLabel
        Left = 327
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Phone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label154: TLabel
        Left = 12
        Top = 97
        Width = 61
        Height = 13
        Caption = 'Mr., Ms, Mrs.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label508: TLabel
        Left = 89
        Top = 97
        Width = 50
        Height = 13
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label509: TLabel
        Left = 331
        Top = 97
        Width = 120
        Height = 13
        Caption = 'Last Name OR Occupant'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label510: TLabel
        Left = 299
        Top = 97
        Width = 12
        Height = 13
        Caption = 'MI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label511: TLabel
        Left = 545
        Top = 97
        Width = 26
        Height = 13
        Caption = 'Suffix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label512: TLabel
        Left = 12
        Top = 143
        Width = 81
        Height = 13
        Caption = 'Number/Milepost'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label513: TLabel
        Left = 106
        Top = 143
        Width = 26
        Height = 13
        Caption = 'Prefix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label514: TLabel
        Left = 171
        Top = 143
        Width = 84
        Height = 13
        Caption = 'Street or Highway'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label515: TLabel
        Left = 107
        Top = 185
        Width = 78
        Height = 13
        Caption = 'Apt/Suite/Room'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label516: TLabel
        Left = 199
        Top = 185
        Width = 17
        Height = 13
        Caption = 'City'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label517: TLabel
        Left = 410
        Top = 185
        Width = 25
        Height = 13
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label518: TLabel
        Left = 474
        Top = 185
        Width = 43
        Height = 13
        Caption = 'Zip Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object peTypeLabel: TLabel
        Left = 482
        Top = 143
        Width = 55
        Height = 13
        Caption = 'Street Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object peSuffLabel: TLabel
        Left = 549
        Top = 143
        Width = 26
        Height = 13
        Caption = 'Suffix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label519: TLabel
        Left = 12
        Top = 185
        Width = 73
        Height = 13
        Caption = 'Post Office Box'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label63: TLabel
        Left = 20
        Top = 13
        Width = 8
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '1'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label64: TLabel
        Left = 33
        Top = 6
        Width = 141
        Height = 16
        Caption = 'Person/Entity Involved'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BusNameField: TAlpineEdit
        Left = 12
        Top = 35
        Width = 300
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 57
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 0
        DataField = 'BUSNAME'
        CurrentPos = -1
      end
      object PHONEField: TAlpineEdit
        Left = 327
        Top = 35
        Width = 81
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 12
        options = [efoCaretToEnd]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '999-999-9999'
        TabOrder = 1
        DataField = 'PHONE'
        CurrentPos = -1
        Text = '-  --- --- -'
      end
      object NamePreField: TAlpineLookup
        Left = 12
        Top = 76
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = clMaroon
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'NAMEPRE'
        ReferencingTable = 'N5NAMEPRE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object PFIRSTNAMEFIELD: TAlpineEdit
        Left = 89
        Top = 76
        Width = 206
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 30
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 3
        DataField = 'PFIRSTNAME'
        CurrentPos = -1
      end
      object MIField: TAlpineEdit
        Left = 298
        Top = 76
        Width = 28
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 4
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!'
        TabOrder = 4
        DataField = 'MI'
        CurrentPos = -1
      end
      object NameSufField: TAlpineLookup
        Left = 544
        Top = 76
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = clMaroon
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'NAMESUF'
        ReferencingTable = 'N5NAMESUF'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object peStrNumField: TAlpineEdit
        Left = 12
        Top = 122
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 7
        DataField = 'PESTRNUM'
        CurrentPos = -1
      end
      object peStreetField: TAlpineLookup
        Left = 170
        Top = 122
        Width = 299
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 275
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'PESTREET'
        DisplayField = 'STREET'
        ReferencingTable = 'STREET'
        ReferencingField = 'STREET'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STREET'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object pePreField: TAlpineLookup
        Left = 106
        Top = 122
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PEPRE'
        ReferencingTable = 'N5STREETPRE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object PeRoomAptField: TAlpineEdit
        Left = 105
        Top = 164
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 13
        DataField = 'PEROOMAPT'
        CurrentPos = -1
      end
      object peStateField: TAlpineLookup
        Left = 410
        Top = 164
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PESTATE'
        ReferencingTable = 'N5STATE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object pezipfield: TAlpineEdit
        Left = 472
        Top = 164
        Width = 72
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 10
        options = [efoCaretToEnd]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '99999-9999'
        TabOrder = 16
        DataField = 'PEZIP'
        CurrentPos = -1
        Text = '-    -----'
      end
      object peTypeField: TAlpineLookup
        Left = 481
        Top = 122
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        PictureMask = '!!!!'
        EditWidth = 65
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PETYPE'
        ReferencingTable = 'N5STREETTYPE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object peSuffField: TAlpineLookup
        Left = 549
        Top = 122
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PESUFF'
        ReferencingTable = 'N5STREETPRE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object PEPOBOXField: TAlpineEdit
        Left = 12
        Top = 164
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!'
        TabOrder = 12
        DataField = 'PEPOBOX'
        CurrentPos = -1
      end
      object pLastNameField: TAlpineEdit
        Left = 332
        Top = 76
        Width = 206
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 30
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 5
        DataField = 'PLASTNAME'
        CurrentPos = -1
      end
      object K1FromBButton: TAlpineGlowButton
        Left = 213
        Top = 6
        Width = 131
        Height = 28
        Caption = 'Copy address from Incident Location'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 125
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
          FF00FF00FF00FF00FF009E9D9E009B9B9B003F9F3F0047B947009EB29E00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C9D
          2C003E543E0022212200908690007EC87E0000B6000013B91300468D45006D6B
          6C0073737400A3A3A300FF00FF00FF00FF00FF00FF00FF00FF009CBE9C005E9F
          5E005A555A0000000000AFADAF00F0FFF0007DBB7D003D8C3D009C9B9C009C9B
          9C00989798005D5D5D00FF00FF00FF00FF00FF00FF00FF00FF009FBC9F008F9F
          8F007A777A0000000000A6A7A600FFFFFF00A99DA90084848400A3A6A3009F9E
          9F009F9E9F0071717100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A29F
          A2006666660000000000A4A4A400FFFFFF00A4A4A400706E7000646464008081
          80009B9B9B006F6F6F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009898
          9800ABABAB007D7D7D00E3E3E300FFFFFF00ABABAB004F4F4F00000000000000
          00008E8E8E0073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008F8F
          8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400757575005C5C5C004848
          48009292920072727200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1A1008C8E8F00AEB1B200AEB1
          B200A7A7A70073737300FF00FF00FF00FF00FF00FF00FF00FF006A6A6A008080
          8000CACACA0061616100BEBEBE00FFFFFF00A3A8AA004E474800685E5D00685E
          5D00555F62004F595C00FF00FF00FF00FF00FF00FF00FF00FF00696969002B2B
          2B00474747002A2A2A00C3C3C300F5F9FA00805D570079110000841C09007F1F
          0D006127190073301E0058291C0065696900FF00FF00FF00FF00FF00FF004949
          490033333300ECECEC00FFFFFF00968E8D008A240600B8482300AC442100AC44
          2100BC461E009934120094848000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00333333006B6D6E00CDC4BF00A64E2700C559290077371C00AC512800DC69
          3200AD5024008F888500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF003B4042004E291600B9572700874320000000000065301500A149
          1E00847B7600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009C9D9E009FA4A7008B8F9100353535007A7D7F009DA3
          A600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = K1FromBButtonClick
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
        ImageName = 'PREPLAN'
      end
      object OthersInvolved: TAlpineGlowButton
        Left = 366
        Top = 6
        Width = 131
        Height = 28
        Caption = 'Others Involved'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 125
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
          FF00FF00FF00FF00FF009E9D9E009B9B9B003F9F3F0047B947009EB29E00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C9D
          2C003E543E0022212200908690007EC87E0000B6000013B91300468D45006D6B
          6C0073737400A3A3A300FF00FF00FF00FF00FF00FF00FF00FF009CBE9C005E9F
          5E005A555A0000000000AFADAF00F0FFF0007DBB7D003D8C3D009C9B9C009C9B
          9C00989798005D5D5D00FF00FF00FF00FF00FF00FF00FF00FF009FBC9F008F9F
          8F007A777A0000000000A6A7A600FFFFFF00A99DA90084848400A3A6A3009F9E
          9F009F9E9F0071717100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A29F
          A2006666660000000000A4A4A400FFFFFF00A4A4A400706E7000646464008081
          80009B9B9B006F6F6F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009898
          9800ABABAB007D7D7D00E3E3E300FFFFFF00ABABAB004F4F4F00000000000000
          00008E8E8E0073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008F8F
          8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400757575005C5C5C004848
          48009292920072727200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1A1008C8E8F00AEB1B200AEB1
          B200A7A7A70073737300FF00FF00FF00FF00FF00FF00FF00FF006A6A6A008080
          8000CACACA0061616100BEBEBE00FFFFFF00A3A8AA004E474800685E5D00685E
          5D00555F62004F595C00FF00FF00FF00FF00FF00FF00FF00FF00696969002B2B
          2B00474747002A2A2A00C3C3C300F5F9FA00805D570079110000841C09007F1F
          0D006127190073301E0058291C0065696900FF00FF00FF00FF00FF00FF004949
          490033333300ECECEC00FFFFFF00968E8D008A240600B8482300AC442100AC44
          2100BC461E009934120094848000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00333333006B6D6E00CDC4BF00A64E2700C559290077371C00AC512800DC69
          3200AD5024008F888500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF003B4042004E291600B9572700874320000000000065301500A149
          1E00847B7600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009C9D9E009FA4A7008B8F9100353535007A7D7F009DA3
          A600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = OthersInvolvedClick
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
        ImageName = 'PREPLAN'
      end
      object PeCityField: TAlpineLookup
        Left = 198
        Top = 164
        Width = 208
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'PECITY'
        DisplayField = 'CITY'
        ReferencingTable = 'CITY'
        ReferencingField = 'CITY'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'CITY'
        OnAfterLookup = PeCityFieldAfterLookup
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
    end
    object K2Panel: TAlpinePanel
      Left = 0
      Top = 1066
      Width = 896
      Height = 194
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'K2'
      RightCaption = 'K2 - Owner'
      FullHeight = 0
      object K2Label: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 192
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'K'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label524: TLabel
        Left = 17
        Top = 55
        Width = 138
        Height = 13
        Caption = 'Business Name (if applicable)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label525: TLabel
        Left = 327
        Top = 56
        Width = 31
        Height = 13
        Caption = 'Phone'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label526: TLabel
        Left = 17
        Top = 97
        Width = 61
        Height = 13
        Caption = 'Mr., Ms, Mrs.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
        Visible = False
      end
      object Label527: TLabel
        Left = 99
        Top = 97
        Width = 50
        Height = 13
        Caption = 'First Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label528: TLabel
        Left = 339
        Top = 97
        Width = 51
        Height = 13
        Caption = 'Last Name'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label529: TLabel
        Left = 307
        Top = 97
        Width = 12
        Height = 13
        Caption = 'MI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label530: TLabel
        Left = 552
        Top = 97
        Width = 26
        Height = 13
        Caption = 'Suffix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label531: TLabel
        Left = 17
        Top = 138
        Width = 81
        Height = 13
        Caption = 'Number/Milepost'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object oStreetPreFieldlABEL: TLabel
        Left = 116
        Top = 138
        Width = 26
        Height = 13
        Caption = 'Prefix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label532: TLabel
        Left = 181
        Top = 138
        Width = 84
        Height = 13
        Caption = 'Street or Highway'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label533: TLabel
        Left = 115
        Top = 176
        Width = 78
        Height = 13
        Caption = 'Apt/Suite/Room'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label534: TLabel
        Left = 209
        Top = 176
        Width = 17
        Height = 13
        Caption = 'City'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label535: TLabel
        Left = 404
        Top = 176
        Width = 25
        Height = 13
        Caption = 'State'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label536: TLabel
        Left = 459
        Top = 176
        Width = 43
        Height = 13
        Caption = 'Zip Code'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object oTypeFieldLabel: TLabel
        Left = 491
        Top = 138
        Width = 55
        Height = 13
        Caption = 'Street Type'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object oStreetSufLabel: TLabel
        Left = 559
        Top = 138
        Width = 26
        Height = 13
        Caption = 'Suffix'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Visible = False
      end
      object Label537: TLabel
        Left = 17
        Top = 176
        Width = 73
        Height = 13
        Caption = 'Post Office Box'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label65: TLabel
        Left = 20
        Top = 13
        Width = 8
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = '2'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label75: TLabel
        Left = 33
        Top = 6
        Width = 42
        Height = 16
        Caption = 'Owner'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object OBusinessField: TAlpineEdit
        Left = 17
        Top = 35
        Width = 300
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 57
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 0
        DataField = 'OBUSINESS'
        CurrentPos = -1
      end
      object OPHONEField: TAlpineEdit
        Left = 327
        Top = 35
        Width = 81
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 12
        options = [efoCaretToEnd]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '999-999-9999'
        TabOrder = 1
        DataField = 'OPHONE'
        CurrentPos = -1
        Text = '-  --- --- -'
      end
      object oPreField: TAlpineLookup
        Left = 17
        Top = 76
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = clMaroon
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OPRE'
        DisplayField = 'CODE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object OFIRSTNAMEFIELD: TAlpineEdit
        Left = 97
        Top = 76
        Width = 206
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 57
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 3
        DataField = 'OFIRSTNAME'
        CurrentPos = -1
      end
      object OLastNameField: TAlpineEdit
        Left = 337
        Top = 76
        Width = 206
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 57
        ParentCtl3D = False
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 5
        DataField = 'OLASTNAME'
        CurrentPos = -1
      end
      object OMIField: TAlpineEdit
        Left = 306
        Top = 76
        Width = 28
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 3
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!'
        TabOrder = 4
        DataField = 'OMI'
        CurrentPos = -1
      end
      object OStrNumField: TAlpineEdit
        Left = 17
        Top = 118
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 7
        DataField = 'OSTRNUM'
        CurrentPos = -1
      end
      object oStreetField: TAlpineLookup
        Left = 180
        Top = 118
        Width = 300
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 275
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'OSTREET'
        DisplayField = 'STREET'
        ReferencingTable = 'STREET'
        ReferencingField = 'STREET'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STREET'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object oStreetPreField: TAlpineLookup
        Left = 116
        Top = 118
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OSTREETPRE'
        DisplayField = 'CODE'
        ReferencingTable = 'N5STREETPRE'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object OROOMAPTField: TAlpineEdit
        Left = 115
        Top = 155
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 8
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!!!'
        TabOrder = 13
        DataField = 'OROOMAPT'
        CurrentPos = -1
      end
      object OStateField: TAlpineLookup
        Left = 404
        Top = 155
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 15
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OSTATE'
        DisplayField = 'CODE'
        ReferencingTable = 'N5STATE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object OZipField: TAlpineEdit
        Left = 459
        Top = 155
        Width = 72
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 10
        options = [efoCaretToEnd]
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '99999-9999'
        TabOrder = 16
        DataField = 'OZIP'
        CurrentPos = -1
        Text = '-    -----'
      end
      object oTypeField: TAlpineLookup
        Left = 491
        Top = 118
        Width = 65
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 10
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 65
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OTYPE'
        DisplayField = 'CODE'
        ReferencingTable = 'N5STREETTYPE'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STD1040'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object OPOBOXField: TAlpineEdit
        Left = 17
        Top = 155
        Width = 71
        Height = 21
        DataType = pftString
        Color = clWhite
        Controller = OvcController1
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 6
        ParentCtl3D = False
        ParentFont = False
        PictureMask = '!!!!!!'
        TabOrder = 12
        DataField = 'OPOBOX'
        CurrentPos = -1
      end
      object oStreetSufField: TAlpineLookup
        Left = 559
        Top = 118
        Width = 50
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 50
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OSTREETSUF'
        DisplayField = 'CODE'
        ReferencingTable = 'N5NAMESUF'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object OSuffField: TAlpineLookup
        Left = 552
        Top = 76
        Width = 60
        Height = 21
        BorderStyle = bsNone
        Color = clMaroon
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        TabStop = True
        Visible = False
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = '!!!!'
        EditWidth = 60
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'OSUFF'
        DisplayField = 'CODE'
        ReferencingTable = 'N5NAMESUF'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'STDLOOK'
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = True
        LookupCaption = 'RedNMX System'
      end
      object K2FromK1Button: TAlpineGlowButton
        Left = 213
        Top = 4
        Width = 131
        Height = 28
        Caption = 'Copy From K1?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 125
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
          FF00FF00FF00FF00FF009E9D9E009B9B9B003F9F3F0047B947009EB29E00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C9D
          2C003E543E0022212200908690007EC87E0000B6000013B91300468D45006D6B
          6C0073737400A3A3A300FF00FF00FF00FF00FF00FF00FF00FF009CBE9C005E9F
          5E005A555A0000000000AFADAF00F0FFF0007DBB7D003D8C3D009C9B9C009C9B
          9C00989798005D5D5D00FF00FF00FF00FF00FF00FF00FF00FF009FBC9F008F9F
          8F007A777A0000000000A6A7A600FFFFFF00A99DA90084848400A3A6A3009F9E
          9F009F9E9F0071717100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A29F
          A2006666660000000000A4A4A400FFFFFF00A4A4A400706E7000646464008081
          80009B9B9B006F6F6F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009898
          9800ABABAB007D7D7D00E3E3E300FFFFFF00ABABAB004F4F4F00000000000000
          00008E8E8E0073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008F8F
          8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400757575005C5C5C004848
          48009292920072727200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1A1008C8E8F00AEB1B200AEB1
          B200A7A7A70073737300FF00FF00FF00FF00FF00FF00FF00FF006A6A6A008080
          8000CACACA0061616100BEBEBE00FFFFFF00A3A8AA004E474800685E5D00685E
          5D00555F62004F595C00FF00FF00FF00FF00FF00FF00FF00FF00696969002B2B
          2B00474747002A2A2A00C3C3C300F5F9FA00805D570079110000841C09007F1F
          0D006127190073301E0058291C0065696900FF00FF00FF00FF00FF00FF004949
          490033333300ECECEC00FFFFFF00968E8D008A240600B8482300AC442100AC44
          2100BC461E009934120094848000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00333333006B6D6E00CDC4BF00A64E2700C559290077371C00AC512800DC69
          3200AD5024008F888500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF003B4042004E291600B9572700874320000000000065301500A149
          1E00847B7600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009C9D9E009FA4A7008B8F9100353535007A7D7F009DA3
          A600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
        OnClick = K2FromK1ButtonClick
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
        ImageName = 'PREPLAN'
      end
      object K2FromBButton: TAlpineGlowButton
        Left = 366
        Top = 4
        Width = 219
        Height = 28
        Caption = 'Copy from Incident Location'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ImageIndex = 125
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
          FF00FF00FF00FF00FF009E9D9E009B9B9B003F9F3F0047B947009EB29E00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002C9D
          2C003E543E0022212200908690007EC87E0000B6000013B91300468D45006D6B
          6C0073737400A3A3A300FF00FF00FF00FF00FF00FF00FF00FF009CBE9C005E9F
          5E005A555A0000000000AFADAF00F0FFF0007DBB7D003D8C3D009C9B9C009C9B
          9C00989798005D5D5D00FF00FF00FF00FF00FF00FF00FF00FF009FBC9F008F9F
          8F007A777A0000000000A6A7A600FFFFFF00A99DA90084848400A3A6A3009F9E
          9F009F9E9F0071717100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00A29F
          A2006666660000000000A4A4A400FFFFFF00A4A4A400706E7000646464008081
          80009B9B9B006F6F6F00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009898
          9800ABABAB007D7D7D00E3E3E300FFFFFF00ABABAB004F4F4F00000000000000
          00008E8E8E0073737300FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008F8F
          8F00FFFFFF00FFFFFF00FFFFFF00FFFFFF00A4A4A400757575005C5C5C004848
          48009292920072727200FF00FF00FF00FF00FF00FF00FF00FF00FF00FF009494
          9400FFFFFF00FFFFFF00FFFFFF00FFFFFF00A1A1A1008C8E8F00AEB1B200AEB1
          B200A7A7A70073737300FF00FF00FF00FF00FF00FF00FF00FF006A6A6A008080
          8000CACACA0061616100BEBEBE00FFFFFF00A3A8AA004E474800685E5D00685E
          5D00555F62004F595C00FF00FF00FF00FF00FF00FF00FF00FF00696969002B2B
          2B00474747002A2A2A00C3C3C300F5F9FA00805D570079110000841C09007F1F
          0D006127190073301E0058291C0065696900FF00FF00FF00FF00FF00FF004949
          490033333300ECECEC00FFFFFF00968E8D008A240600B8482300AC442100AC44
          2100BC461E009934120094848000FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00333333006B6D6E00CDC4BF00A64E2700C559290077371C00AC512800DC69
          3200AD5024008F888500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF003B4042004E291600B9572700874320000000000065301500A149
          1E00847B7600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF009C9D9E009FA4A7008B8F9100353535007A7D7F009DA3
          A600FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
          FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = K2FromBButtonClick
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
        ImageName = 'PREPLAN'
      end
      object OCityField: TAlpineLookup
        Left = 209
        Top = 155
        Width = 185
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
        TabStop = True
        ImageName = 'DOWNARROW'
        InitialSeek = True
        DataFieldIsCharacter = True
        PictureMask = '!XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        EditWidth = 189
        SpinControl = False
        NoValidate = True
        KeywordSearch = False
        DataField = 'OCITY'
        DisplayField = 'CITY'
        ReferencingTable = 'CITY'
        ReferencingField = 'CITY'
        ReturnFieldFont.Charset = DEFAULT_CHARSET
        ReturnFieldFont.Color = clWindowText
        ReturnFieldFont.Height = -11
        ReturnFieldFont.Name = 'MS Sans Serif'
        ReturnFieldFont.Style = []
        LookupCode = 'CITY'
        OnAfterLookup = OCityFieldAfterLookup
        DisplayDescription = False
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
    end
    object LPanel: TAlpinePanel
      Left = 0
      Top = 1438
      Width = 896
      Height = 172
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      UseDockManager = True
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'L'
      RightCaption = 'L - Remarks'
      FullHeight = 0
      object LLabel: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 30
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'L'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
      end
      object Label76: TLabel
        Left = 33
        Top = 6
        Width = 55
        Height = 16
        Caption = 'Remarks'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object NarrField: TAlpineMemo
        Left = 1
        Top = 31
        Width = 894
        Height = 109
        Align = alBottom
        Color = clWindow
        Ctl3D = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
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
      object BaseBottomPanel: TAdvPanel
        Left = 1
        Top = 140
        Width = 894
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
        object NarrButton: TAlpineGlowButton
          Left = 225
          Top = 1
          Width = 112
          Height = 29
          Align = alLeft
          Caption = 'Select Narrative'
          ImageIndex = 114
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
            FF00FF00FF003B39380071767A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00666666004D5A6700575C5C007F7C7B0051494400482B2B00675F5E00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008B8B
            8B004451560082AAD10047505A003B3938007B372D00CEB0B000785E59009999
            9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0081848F003A4D
            5600586C7B0067829C005A6D81004451560080777400FFFFFF00C29C95005149
            4400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051494400514944003333
            3300216A7A00216A7A00216A7A00265A6700655E5A00CCCCCC00FFFFFF007E5E
            5100827E7C00FF00FF00FF00FF00FF00FF00FF00FF00655E5A00874220003333
            330000E3FF0000E3FF0003CCF2001C778E00C7A68F00736A6300F4F7F800ECD8
            D1004A413C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005C4135003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B2007F655400ADA9A600FFFF
            FF00C39E8D00756E6A00FF00FF00FF00FF00FF00FF00FF00FF00454140003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200E39F72005B504900F4F7
            F800FBF3F0007E5E5100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200FFB07C00966442008C85
            8000FFFFFF00EED4C50061575100FF00FF00FF00FF00FF00FF00FF00FF003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200FFB07C00F98E46004A41
            3C00DCDCDC00FFFFFF00A1816F00FF00FF00FF00FF00FF00FF00FF00FF00575C
            5C0057909700508890004A7D86003C707D00FFD1B200FFB07C00FF914700B65A
            1D00736A6300F4F7F800F4CDB500655E5A00FF00FF00FF00FF00FF00FF00ACAE
            AE00F4F7F800D9D9D900BCBCBC0073828600FFD1B200FFB07C00FF914700FF70
            11006C402C00A68E8000C463260062372700FF00FF00FF00FF00FF00FF004344
            4900333333003333330033333300454B5400FFD1B200FFB07C00FF914700FF70
            1100BA430B004B3632005F5650005F565000FF00FF00FF00FF00FF00FF003333
            330051515B005D5E6D005055610033333300736A630075625400765A47007751
            37006F463200523A3500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006381
            90005B6A76005B6A7600586C7B0063819000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpMiddle
          TabOrder = 0
          OnClick = NarrButtonClick
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
          ImageName = 'DAILYLOG'
        end
        object timestampButton: TAlpineGlowButton
          Left = 449
          Top = 1
          Width = 112
          Height = 29
          Align = alLeft
          Caption = 'Time Stamp'
          ImageIndex = 108
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
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900B2B1
            B000B2B1B000B2B1B000B2B1B000B2B1B0008F8E8E00ADACAB00B2B1B000B2B1
            B000B2B1B00099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFFC
            F800FFFCF800FFFCF800FFFCF800FFFCF800535354005A5B5D00ECE9E600FFFC
            F800FFFCF80099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFFA
            F600FFFAF600FFFAF600FFFAF600FFFAF600535354004F5D6B006B6F7300E5E1
            DE00FFFAF60099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF7
            EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF005353540082A9D100637B93003452
            5C00E6ECE90099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF7
            EF00FFF7EF00FFF7EF00FFF7EF00EAE3DD003F494B00337A900034525C0006BC
            EA0054919D0099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF7
            EF00FFF7EF00FFF7EF00FFF7EF00E5DED60033333300199FBA0002D8F90009B8
            DC001B829B0099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF3
            E700FFF3E700FFF3E700FFF3E700FFF3E7004E8B8A001F7F860000D6FF0002D8
            F9000EA4C9004C849100FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF3
            E700FFF3E700FFF3E700FFF3E700FFF3E700C9DCD3003040400002D8F90000E0
            FF000AB1D60021798E00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF1
            E400FFF1E400FFF1E400FFF1E400FFF1E400FFF1E4003A717000159FAC0000D6
            FF0005CDED00148FAE00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFEE
            DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE0075A8A3002C4E500000D6
            FF000FD6EF00497A85004A808C00FF00FF00FF00FF00FF00FF0099999900FFEE
            DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00D3C8BE003B5757006F86
            8A0099999900B7BCBD005F768000FF00FF00FF00FF00FF00FF0099999900FFEB
            D800FFEBD800FFEBD800FFEBD800FFEBD800FFEBD800D3C8BE0056959500F5F6
            F700A3BDC50045454B0033333300607E8E00FF00FF00FF00FF0099999900FFEB
            D800FFEBD800FFEBD800FFEBD800FFEBD800FFEBD800C9BDB20093A19F003D3F
            430045454B00484950003D3F430066999900FF00FF00FF00FF00999999009999
            9900999999009999990099999900999999009999990099999900FF00FF00505D
            660040404500687F8C00FF00FF00FF00FF00FF00FF00}
          Position = bpRight
          TabOrder = 1
          OnClick = timestampButtonClick
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
          ImageName = 'EDIT'
        end
        object ClearButton: TAlpineGlowButton
          Left = 1
          Top = 1
          Width = 112
          Height = 29
          Align = alLeft
          Caption = 'Clear'
          ImageIndex = 109
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
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000099FF000099
            FF000099FF000099FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900B2B1
            B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B000B2B1B0000099FF0058D4
            FF006AE1FF000099FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFFC
            F800FFFCF800FFFCF800FFFCF800FFFCF800FFFCF800FFFCF8000099FF0058D4
            FF006AE1FF000099FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFFA
            F500FFFAF500FFFAF500FFFAF500FFFAF5000099FF000099FF000099FF0058D4
            FF006AE1FF000099FF000099FF000099FF00FF00FF00FF00FF0099999900FFF7
            EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF000099FF0033BCFF0045C8FF0058D4
            FF006AE1FF007CEDFF008EF9FF000099FF00FF00FF00FF00FF0099999900FFF7
            EF00FFF7EF00FFF7EF00FFF7EF00FFF7EF000099FF0033BCFF0045C8FF0058D4
            FF006AE1FF007CEDFF008EF9FF000099FF00FF00FF00FF00FF0099999900FFF4
            E900FFF4E900FFF4E900FFF4E900FFF4E9000099FF000099FF000099FF0058D4
            FF006AE1FF000099FF000099FF000099FF00FF00FF00FF00FF0099999900FFF4
            E900FFF4E900FFF4E900FFF4E900FFF4E900FFF4E900FFF4E9000099FF0058D4
            FF006AE1FF000099FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF1
            E400FFF1E400FFF1E400FFF4E900FFF4E900FFF4E900FFF4E9000099FF000099
            FF000099FF000099FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFF1
            E400FFF1E400FFF1E400FFF1E400FFF1E400FFF1E400E7DBD100BDB9B400C3BE
            BA00C9C4C00099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFEE
            DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00D3CAC000D3D2D200DDDD
            DD00DDDDDD0099999900FF00FF00FF00FF00FF00FF00FF00FF0099999900FFEE
            DE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00FFEEDE00D3C8BE00D3D2D200D3D2
            D200ADABA900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFEB
            D800FFEBD800FFEBD800FFEBD800FFEBD800FFEBD800D3C8BE00D3C8BE00ADAB
            A900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0099999900FFEB
            D800FFEBD800FFEBD800FFEBD800FFEBD800FFEBD800C9BDB200A4A2A000FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00999999009999
            9900999999009999990099999900999999009999990099999900FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpLeft
          TabOrder = 2
          OnClick = ClearButtonClick
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
          ImageName = 'NEW'
        end
        object SpellCheckButton: TAlpineGlowButton
          Left = 337
          Top = 1
          Width = 112
          Height = 29
          Align = alLeft
          Caption = 'Spell Check'
          ImageIndex = 95
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
          TabOrder = 3
          OnClick = DoSpellcheck
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
        object GenNarrButton: TAlpineGlowButton
          Left = 113
          Top = 1
          Width = 112
          Height = 29
          Align = alLeft
          Caption = 'Generate Narrative'
          ImageIndex = 114
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
            FF00FF00FF003B39380071767A00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00666666004D5A6700575C5C007F7C7B0051494400482B2B00675F5E00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF008B8B
            8B004451560082AAD10047505A003B3938007B372D00CEB0B000785E59009999
            9900FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0081848F003A4D
            5600586C7B0067829C005A6D81004451560080777400FFFFFF00C29C95005149
            4400FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0051494400514944003333
            3300216A7A00216A7A00216A7A00265A6700655E5A00CCCCCC00FFFFFF007E5E
            5100827E7C00FF00FF00FF00FF00FF00FF00FF00FF00655E5A00874220003333
            330000E3FF0000E3FF0003CCF2001C778E00C7A68F00736A6300F4F7F800ECD8
            D1004A413C00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF005C4135003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B2007F655400ADA9A600FFFF
            FF00C39E8D00756E6A00FF00FF00FF00FF00FF00FF00FF00FF00454140003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200E39F72005B504900F4F7
            F800FBF3F0007E5E5100FF00FF00FF00FF00FF00FF00FF00FF00FF00FF003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200FFB07C00966442008C85
            8000FFFFFF00EED4C50061575100FF00FF00FF00FF00FF00FF00FF00FF003333
            330000E3FF0000E3FF0003CCF2001C778E00FFD1B200FFB07C00F98E46004A41
            3C00DCDCDC00FFFFFF00A1816F00FF00FF00FF00FF00FF00FF00FF00FF00575C
            5C0057909700508890004A7D86003C707D00FFD1B200FFB07C00FF914700B65A
            1D00736A6300F4F7F800F4CDB500655E5A00FF00FF00FF00FF00FF00FF00ACAE
            AE00F4F7F800D9D9D900BCBCBC0073828600FFD1B200FFB07C00FF914700FF70
            11006C402C00A68E8000C463260062372700FF00FF00FF00FF00FF00FF004344
            4900333333003333330033333300454B5400FFD1B200FFB07C00FF914700FF70
            1100BA430B004B3632005F5650005F565000FF00FF00FF00FF00FF00FF003333
            330051515B005D5E6D005055610033333300736A630075625400765A47007751
            37006F463200523A3500FF00FF00FF00FF00FF00FF00FF00FF00FF00FF006381
            90005B6A76005B6A7600586C7B0063819000FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
          Position = bpMiddle
          TabOrder = 4
          OnClick = GenNarrButtonClick
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
          ImageName = 'DAILYLOG'
        end
      end
    end
    object RPanel: TAlpinePanel
      Left = 0
      Top = 1724
      Width = 896
      Height = 76
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 10
      UseDockManager = True
      OnResize = RPanelResize
      Version = '2.2.1.0'
      BorderColor = clGray
      BorderWidth = 1
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'R'
      RightCaption = 'R - Department'
      FullHeight = 150
    end
    object Panel1: TPanel
      Left = 0
      Top = 196
      Width = 896
      Height = 269
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object E1Panel: TAlpinePanel
        Left = 251
        Top = 0
        Width = 255
        Height = 269
        Align = alLeft
        BevelOuter = bvNone
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
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        GradientDirection = gdHorizontal
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'E1'
        RightCaption = 'E1 - Dates and Time'
        FullHeight = 0
        object E1Label: TLabel
          Left = 1
          Top = 1
          Width = 23
          Height = 267
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'E'
          Color = 15329769
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          ExplicitHeight = 248
        end
        object Label34: TLabel
          Left = 1
          Top = 38
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Alarm'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object arrivallabel: TLabel
          Left = 3
          Top = 92
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Arrival'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label45: TLabel
          Left = 3
          Top = 119
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Controlled'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DateTimeInLabel: TLabel
          Left = 3
          Top = 141
          Width = 61
          Height = 28
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Last Unit Cleared'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object timeoutlabel: TLabel
          Left = 1
          Top = 63
          Width = 61
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Time Out'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label24: TLabel
          Left = 31
          Top = 6
          Width = 105
          Height = 16
          Caption = 'Dates and Times'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 20
          Top = 13
          Width = 8
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object LengthLabel: TLabel
          Left = 26
          Top = 177
          Width = 98
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Incident Length'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DateTimeAlarmField: TAlpineDateTime
          Left = 66
          Top = 34
          Width = 134
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          DataField = 'DATETIMEALARM'
          TabOrder = 0
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DateTimeOutField: TAlpineDateTime
          Left = 66
          Top = 61
          Width = 134
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          DataField = 'DATETIMEOUT'
          TabOrder = 1
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DateTimeArrField: TAlpineDateTime
          Left = 66
          Top = 89
          Width = 134
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          DataField = 'DATETIMEARR'
          TabOrder = 2
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DateTimeContField: TAlpineDateTime
          Left = 66
          Top = 116
          Width = 134
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          DataField = 'DATETIMECONT'
          TabOrder = 3
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DateTimeInField: TAlpineDateTime
          Left = 66
          Top = 145
          Width = 134
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          DataField = 'DATETIMEIN'
          TabOrder = 4
          ParentColor = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DateTimeOutButton: TAlpineGlowButton
          Left = 215
          Top = 60
          Width = 38
          Height = 21
          Caption = 'Same'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
          OnClick = DateTimeOutButtonClick
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
        end
        object DateTimeArrButton: TAlpineGlowButton
          Left = 216
          Top = 87
          Width = 38
          Height = 21
          Caption = 'Same'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = DateTimeArrButtonClick
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
        end
        object DateTimeContButton: TAlpineGlowButton
          Left = 215
          Top = 116
          Width = 38
          Height = 21
          Caption = 'Same'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = DateTimeContButtonClick
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
        end
        object DateTimeInButton: TAlpineGlowButton
          Left = 215
          Top = 144
          Width = 38
          Height = 21
          Caption = 'Same'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnClick = DateTimeInButtonClick
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
        end
        object EvLengthField: TAlpineEdit
          Left = 129
          Top = 174
          Width = 58
          Height = 21
          DataType = pftExtended
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 9
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '##,###.##'
          TabOrder = 5
          OnEnter = EvLengthFieldEnter
          DataField = 'EVLENGTH'
          RightAlign = True
          CurrentPos = -1
          Text = '     0.00'
          RangeHigh = {E175587FED2AB1ECFE7F}
          RangeLow = {E175587FED2AB1ECFEFF}
        end
        object EvLengthButton: TAlpineGlowButton
          Left = 215
          Top = 173
          Width = 38
          Height = 21
          Caption = 'Calc'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnClick = EvLengthButtonClick
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
        end
        object NfirsAttButton: TAlpineGlowButton
          Left = 66
          Top = 201
          Width = 121
          Caption = 'Update Attendance'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 76
          NotesFont.Charset = DEFAULT_CHARSET
          NotesFont.Color = clWindowText
          NotesFont.Height = -11
          NotesFont.Name = 'Tahoma'
          NotesFont.Style = []
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          OnClick = NfirsAttButtonClick
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
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 251
        Height = 269
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel2'
        TabOrder = 0
        object CPanel: TAlpinePanel
          Left = 0
          Top = 0
          Width = 251
          Height = 104
          Align = alTop
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'C'
          RightCaption = 'C - Incident Type'
          FullHeight = 0
          object InctypeDesc: TLabel
            Left = 79
            Top = 30
            Width = 162
            Height = 36
            AutoSize = False
            Caption = 'Not Entered'
            WordWrap = True
          end
          object CLabel: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 102
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitHeight = 98
          end
          object Label18: TLabel
            Left = 33
            Top = 6
            Width = 85
            Height = 16
            Caption = 'Incident Type'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object IncTypeField: TAlpineLookup
            Left = 6
            Top = 27
            Width = 70
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnExit = IncTypeFieldExit
            ImageName = 'DOWNARROW'
            Descriptionlabel = InctypeDesc
            OnSuccessfulValidate = IncTypeFieldSuccessfulValidate
            DataFieldIsCharacter = True
            PictureMask = '!!!!'
            EditWidth = 60
            SpinControl = False
            NoValidate = False
            KeywordSearch = True
            DataField = 'SITFOUND'
            DisplayField = 'CODE'
            ReferencingTable = 'N5INCTYPE'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'Tahoma'
            ReturnFieldFont.Style = []
            LookupCode = 'STD1040'
            DisplayDescription = False
            TreeLookUp = True
            TreeLookMinimumCharacters = 3
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
          object FirOrWildField: TAlpineCheckBox
            Left = 127
            Top = 5
            Width = 112
            Height = 18
            Alignment = taLeftJustify
            ButtonType = btClassic
            Caption = 'Use Wildland Fire'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReturnIsTab = False
            TabOrder = 1
            OnClick = FirOrWildFieldClick
            Version = '1.6.0.0'
            DataField = 'FirOrWild'
            ValueChecked = 'Y'
          end
          object IncidentTemplate: TAlpineGlowButton
            Left = 44
            Top = 70
            Width = 154
            Height = 26
            Hint = 'Select a memorized incident'
            Caption = 'Memorized Incidents'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 124
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            Picture.Data = {
              424D360400000000000036000000280000001000000010000000010020000000
              00000004000000000000000000000000000000000000FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF0039393B0039393B0039393B0039393B0039393B00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00333333000000AB000000AB000000B5000D0DBB006666CC003939
              3B0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF0039393B000000B5000000B5000000B5000000B5000000C5000000C5004D51
              CD0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF002F2F3A000000BC000000BC000000C5000000C5000008CF000013D2000021
              D7008D9AD00039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF002C2C3B000000C5000000C5000008CF000013D2000021D700002ADA000035
              DE001A52DE0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF002C2C3B000008CF00333333000021D700002ADA000038DF00333333002C31
              3D00005AEA0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF002F353E002F353E002C313D000038DF000043E200004DE600739AD9002F35
              3E002F353E005A9DE20039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00333333002C313D00004FE600005AEA000065EE000070F1003939
              3B002F353E00339FF00039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF002F353E000065EE000070F100007CF5000087F9005AAB
              E70039393B002E39400033333300FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF002C353E000088F9000088F9000099FF0033AE
              F20039393B00FF00FF0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF002C383F0000A5FF0000A5FF0040BC
              EF0039393B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF002E39400000B5FF0000BDFF00353C
              3D00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00333333000DCCFC003939
              3B00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002E39400033333300FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF002E394000FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0039393B00FF00FF00FF00
              FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = IncidentTemplateClick
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
            ImageName = 'INCIDENT'
          end
        end
        object DPanel: TAlpinePanel
          Left = 0
          Top = 104
          Width = 251
          Height = 165
          Align = alClient
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'D'
          RightCaption = 'D - Mutual Aid'
          FullHeight = 120
          object DLabel: TLabel
            Left = 1
            Top = 1
            Width = 33
            Height = 163
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'D'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitLeft = -6
            ExplicitTop = -3
          end
          object NfirsMaidLabel: TLabel
            Left = 10
            Top = 125
            Width = 204
            Height = 13
            AutoSize = False
            Caption = 'Received Aid From Departments:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object mDeptLabel: TLabel
            Left = 10
            Top = 106
            Width = 36
            Height = 13
            Caption = 'Agency'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label6: TLabel
            Left = 10
            Top = 49
            Width = 24
            Height = 13
            Caption = 'Type'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object MutStateLabel: TLabel
            Left = 91
            Top = 106
            Width = 25
            Height = 13
            Caption = 'State'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object MutIncNumLabel: TLabel
            Left = 148
            Top = 106
            Width = 82
            Height = 13
            AutoSize = False
            Caption = 'Their Incident #'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 33
            Top = 6
            Width = 189
            Height = 16
            Caption = 'Mutual Aid Given or Received'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label17: TLabel
            Left = 11
            Top = 68
            Width = 160
            Height = 13
            Caption = 'Enter the agency you gave aid to:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object mDeptField: TAlpineLookup
            Left = 10
            Top = 85
            Width = 65
            Height = 21
            BorderStyle = bsNone
            Color = clWhite
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            TabStop = True
            OnEnter = mDeptFieldEnter
            ImageName = 'DOWNARROW'
            OnSuccessfulValidate = mDeptFieldSuccessfulValidate
            DataFieldIsCharacter = True
            PictureMask = '!!!!!'
            EditWidth = 65
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'MDEPT'
            DisplayField = 'FDID'
            ReferencingTable = 'FDID'
            ReferencingField = 'FDID'
            ReturnField = 'FDID'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'FDIDDISP'
            DisplayDescription = False
            TreeLookMinimumCharacters = 0
            StandardLookup = False
            LookupCaption = 'RedNMX System'
          end
          object MutIncNumField: TAlpineEdit
            Left = 148
            Top = 85
            Width = 74
            Height = 21
            DataType = pftString
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 10
            ParentCtl3D = False
            ParentFont = False
            PictureMask = '9999999999'
            TabOrder = 3
            DataField = 'MUTINCNUM'
            CurrentPos = -1
          end
          object MaidField: TAlpineLookup
            Left = 11
            Top = 28
            Width = 229
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ImageName = 'DOWNARROW'
            PictureMask = '!!'
            EditWidth = 45
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'MAID'
            ReferencingTable = 'N5MAID'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STDLOOK'
            TreeLookMinimumCharacters = 0
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
          object MutStateField: TAlpineLookup
            Left = 89
            Top = 85
            Width = 47
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TabStop = True
            ImageName = 'DOWNARROW'
            DataFieldIsCharacter = True
            PictureMask = '!!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'MUTSTATE'
            ReferencingTable = 'N5STATE'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STDLOOK'
            DisplayDescription = False
            TreeLookMinimumCharacters = 0
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
          object NfirsMaidButton: TAlpineGlowButton
            Left = 198
            Top = 140
            Width = 42
            Height = 21
            Caption = 'Add'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ImageIndex = 76
            NotesFont.Charset = DEFAULT_CHARSET
            NotesFont.Color = clWindowText
            NotesFont.Height = -11
            NotesFont.Name = 'Tahoma'
            NotesFont.Style = []
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 4
            OnClick = NfirsMaidButtonClick
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
          end
          object NfirsMaidField: TAlpineEdit
            Left = 10
            Top = 141
            Width = 188
            Height = 21
            DataType = pftString
            AutoSize = False
            Controller = OvcController1
            Ctl3D = True
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 51
            options = [efoCaretToEnd]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
            TabOrder = 5
            CurrentPos = -1
          end
          object QRShape50: TQRShape
            Left = -1
            Top = 65
            Width = 251
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              -2.645833333333333000
              171.979166666666700000
              664.104166666666700000)
            XLColumn = 0
            Brush.Color = clSilver
            Pen.Color = clGray
            Pen.Style = psDashDotDot
            Shape = qrsRectangle
            VertAdjust = 0
          end
          object QRShape1: TQRShape
            Left = -1
            Top = 122
            Width = 251
            Height = 1
            Frame.Color = clBlack
            Frame.DrawTop = False
            Frame.DrawBottom = False
            Frame.DrawLeft = False
            Frame.DrawRight = False
            Size.Values = (
              2.645833333333333000
              -2.645833333333333000
              322.791666666666700000
              664.104166666666700000)
            XLColumn = 0
            Brush.Color = clSilver
            Pen.Color = clGray
            Pen.Style = psDashDotDot
            Shape = qrsRectangle
            VertAdjust = 0
          end
        end
      end
      object Panel3: TPanel
        Left = 506
        Top = 0
        Width = 390
        Height = 269
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel3'
        TabOrder = 2
        object E2Panel: TAlpinePanel
          Left = 0
          Top = 0
          Width = 390
          Height = 124
          Align = alClient
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'E2'
          RightCaption = 'E2 - Shift and Alarm'
          FullHeight = 0
          object E2Label: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 122
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'E'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitTop = 9
            ExplicitHeight = 138
          end
          object ShiftLabel: TLabel
            Left = 6
            Top = 48
            Width = 19
            Height = 11
            Caption = 'Shift'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object AlarmNumLabel: TLabel
            Left = 107
            Top = 48
            Width = 30
            Height = 11
            Caption = 'Alarms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
          end
          object DistrictLabel: TLabel
            Left = 6
            Top = 88
            Width = 30
            Height = 11
            Caption = 'District'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object DispBoxIDLabel: TLabel
            Left = 107
            Top = 89
            Width = 44
            Height = 11
            Caption = 'Alarm Box'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -9
            Font.Name = 'Small Fonts'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 31
            Top = 6
            Width = 105
            Height = 16
            Caption = 'Shift and Alarms'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 20
            Top = 13
            Width = 8
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object AlarmNumField: TAlpineEdit
            Left = 107
            Top = 27
            Width = 45
            Height = 21
            DataType = pftInteger
            AutoSize = False
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 6
            options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'iiiiii'
            TabOrder = 1
            NullCheckBox = AlarmNumUnknown
            DataField = 'ALARMNUM'
            RightAlign = True
            CurrentPos = -1
            Text = '     0'
            RangeHigh = {FF7F0000000000000000}
            RangeLow = {0080FFFF000000000000}
          end
          object SchdShiftNameIDField: TAlpineLookup
            Left = 6
            Top = 28
            Width = 88
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            OnEnter = SchdShiftNameIDFieldEnter
            ImageName = 'DOWNARROW'
            DataFieldIsCharacter = True
            PictureMask = '!!!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'SCHDSHIFTNAMEID'
            DisplayField = 'CODE'
            ReferencingTable = 'SCHDSHIFTNAME'
            ReferencingField = 'SCHDSHIFTNAMEID'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STDLOOK'
            DisplayDescription = False
            TreeLookMinimumCharacters = 0
            StandardLookup = False
            LookupCaption = 'RedNMX System'
          end
          object N5DistrictIDField: TAlpineLookup
            Left = 6
            Top = 67
            Width = 88
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            TabStop = True
            OnEnter = N5DistrictIDFieldEnter
            ImageName = 'DOWNARROW'
            PictureMask = '!!!!!!!!!!!!!!'
            EditWidth = 48
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'N5DISTRICTID'
            DisplayField = 'CODE'
            ReferencingTable = 'N5DISTRICT'
            ReferencingField = 'N5DISTRICTID'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STDLOOK'
            DisplayDescription = False
            TreeLookMinimumCharacters = 0
            StandardLookup = False
            LookupCaption = 'RedNMX System'
          end
          object DispBoxIDField: TAlpineLookup
            Left = 108
            Top = 65
            Width = 94
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            TabStop = True
            OnEnter = DispBoxIDFieldEnter
            ImageName = 'DOWNARROW'
            PictureMask = '!!!!!!!!'
            SpinControl = False
            NoValidate = False
            KeywordSearch = False
            DataField = 'DISPBOXID'
            DisplayField = 'CODE'
            ReferencingTable = 'DISPBOX'
            ReferencingField = 'DISPBOXID'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = ANSI_CHARSET
            ReturnFieldFont.Color = clNavy
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'Comic Sans MS'
            ReturnFieldFont.Style = []
            LookupCode = 'CODEDESCR'
            DisplayDescription = False
            TreeLookMinimumCharacters = 0
            StandardLookup = False
            LookupCaption = 'RedNMX System'
          end
          object AlarmNumUnknown: TCheckBox
            Left = 156
            Top = 30
            Width = 88
            Height = 13
            Caption = 'Still Alarm?'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object E3Panel: TAlpinePanel
          Left = 0
          Top = 124
          Width = 390
          Height = 145
          Align = alBottom
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'E2'
          RightCaption = 'Shifts and Alarms'
          FullHeight = 0
          object E3Label: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 143
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'E'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
            ExplicitHeight = 103
          end
          object Label31: TLabel
            Left = 30
            Top = 6
            Width = 99
            Height = 16
            Caption = 'Special Studies'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 20
            Top = 13
            Width = 8
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object E3ScrollBox: TMyScrollBox
            Left = 6
            Top = 30
            Width = 323
            Height = 114
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            TabOrder = 0
            CanPan = False
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 520
      Width = 896
      Height = 186
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel4'
      TabOrder = 4
      object FPanel: TAlpinePanel
        Left = 0
        Top = 0
        Width = 229
        Height = 186
        Align = alLeft
        BevelOuter = bvNone
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
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        GradientDirection = gdHorizontal
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'F'
        RightCaption = 'F - Actions Taken'
        FullHeight = 0
        object FLabel: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 184
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'F'
          Color = 15329769
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label53: TLabel
          Left = 5
          Top = 112
          Width = 13
          Height = 13
          Caption = '#2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label54: TLabel
          Left = 5
          Top = 165
          Width = 13
          Height = 13
          Caption = '#3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label4: TLabel
          Left = 5
          Top = 56
          Width = 13
          Height = 13
          Caption = '#1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label29: TLabel
          Left = 33
          Top = 6
          Width = 88
          Height = 16
          Caption = 'Actions Taken'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Action1Label: TLabel
          Left = 59
          Top = 37
          Width = 167
          Height = 40
          AutoSize = False
          Caption = 'Not Entered'
          ShowAccelChar = False
          WordWrap = True
        end
        object Action2Label: TLabel
          Left = 59
          Top = 92
          Width = 167
          Height = 40
          AutoSize = False
          Caption = 'Not Entered'
          ShowAccelChar = False
          WordWrap = True
        end
        object Action3Label: TLabel
          Left = 59
          Top = 145
          Width = 167
          Height = 40
          AutoSize = False
          Caption = 'Not Entered'
          ShowAccelChar = False
          WordWrap = True
        end
        object TypeActField: TAlpineLookup
          Left = 5
          Top = 35
          Width = 51
          Height = 21
          BorderStyle = bsNone
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TabStop = True
          ImageName = 'DOWNARROW'
          Descriptionlabel = Action1Label
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'TYPEACT'
          ReferencingTable = 'N5ACTION'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'Tahoma'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = True
          LookupCaption = 'RedNMX System'
          object Label52: TLabel
            Left = 1
            Top = 22
            Width = 34
            Height = 13
            Caption = 'Primary'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
        end
        object Action2Field: TAlpineLookup
          Left = 5
          Top = 89
          Width = 51
          Height = 21
          BorderStyle = bsNone
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          TabStop = True
          ImageName = 'DOWNARROW'
          Descriptionlabel = Action2Label
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ACTION2'
          ReferencingTable = 'N5ACTION'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'Tahoma'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = True
          LookupCaption = 'RedNMX System'
        end
        object Action3Field: TAlpineLookup
          Left = 5
          Top = 142
          Width = 51
          Height = 21
          BorderStyle = bsNone
          Ctl3d = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          TabStop = True
          ImageName = 'DOWNARROW'
          Descriptionlabel = Action3Label
          PictureMask = '!!!'
          EditWidth = 30
          SpinControl = False
          NoValidate = False
          KeywordSearch = True
          DataField = 'ACTION3'
          ReferencingTable = 'N5ACTION'
          ReturnField = 'DESCR'
          ReturnFieldFont.Charset = DEFAULT_CHARSET
          ReturnFieldFont.Color = clWindowText
          ReturnFieldFont.Height = -11
          ReturnFieldFont.Name = 'Tahoma'
          ReturnFieldFont.Style = []
          LookupCode = 'STD1040'
          TreeLookUp = True
          TreeLookMinimumCharacters = 2
          StandardLookup = True
          LookupCaption = 'RedNMX System'
        end
      end
      object G1Panel: TAlpinePanel
        Left = 229
        Top = 0
        Width = 184
        Height = 186
        Align = alLeft
        BevelOuter = bvNone
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
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        GradientDirection = gdHorizontal
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'G1'
        RightCaption = 'G1 - Resource'
        FullHeight = 0
        object G1Label: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 184
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'G'
          Color = 15329769
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
          ExplicitLeft = 0
        end
        object Label58: TLabel
          Left = 3
          Top = 55
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Suppression'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label59: TLabel
          Left = 3
          Top = 78
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'EMS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label60: TLabel
          Left = 3
          Top = 101
          Width = 72
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Other'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object ApparatusLabel: TLabel
          Left = 73
          Top = 37
          Width = 48
          Height = 13
          Alignment = taRightJustify
          Caption = 'Apparatus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object PersonnelLabel: TLabel
          Left = 127
          Top = 38
          Width = 47
          Height = 13
          Alignment = taRightJustify
          Caption = 'Personnel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label172: TLabel
          Left = 51
          Top = 155
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Total Personnel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 42
          Top = 122
          Width = 83
          Height = 26
          Alignment = taRightJustify
          Caption = 'Personnel not on Apparatus'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          WordWrap = True
        end
        object ResourceLabel: TLabel
          Left = 33
          Top = 6
          Width = 65
          Height = 16
          Caption = 'Resources'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label37: TLabel
          Left = 21
          Top = 13
          Width = 8
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '1'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object AppSuppField: TAlpineEdit
          Left = 78
          Top = 52
          Width = 40
          Height = 21
          DataType = pftInteger
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 0
          OnChange = ResourcesUsedChange
          DataField = 'APPSUPP'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object AppEMSField: TAlpineEdit
          Left = 78
          Top = 75
          Width = 40
          Height = 21
          DataType = pftInteger
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 2
          OnChange = ResourcesUsedChange
          DataField = 'APPEMS'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object AppOthField: TAlpineEdit
          Left = 78
          Top = 98
          Width = 40
          Height = 21
          DataType = pftInteger
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 4
          OnChange = ResourcesUsedChange
          DataField = 'APPOTH'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object PersSuppField: TAlpineEdit
          Left = 131
          Top = 52
          Width = 40
          Height = 21
          DataType = pftInteger
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 1
          OnChange = ResourcesUsedChange
          DataField = 'PERSSUPP'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object PersEMSField: TAlpineEdit
          Left = 131
          Top = 75
          Width = 40
          Height = 21
          DataType = pftInteger
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 3
          OnChange = ResourcesUsedChange
          DataField = 'PERSEMS'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object PersOthField: TAlpineEdit
          Left = 131
          Top = 98
          Width = 40
          Height = 21
          DataType = pftInteger
          AutoSize = False
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 5
          OnChange = ResourcesUsedChange
          DataField = 'PERSOTH'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object PersTotalField: TAlpineEdit
          Left = 131
          Top = 152
          Width = 40
          Height = 21
          DataType = pftInteger
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 7
          DataField = 'PERSTOTAL'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object PersMiscField: TAlpineEdit
          Left = 131
          Top = 126
          Width = 40
          Height = 21
          DataType = pftInteger
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 3
          options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = 'iii'
          TabOrder = 6
          OnChange = ResourcesUsedChange
          DataField = 'PERSMISC'
          RightAlign = True
          CurrentPos = -1
          Text = '  0'
          RangeHigh = {FF7F0000000000000000}
          RangeLow = {0080FFFF000000000000}
        end
        object ResourceButton: TAlpineGlowButton
          Left = 113
          Top = 6
          Width = 57
          Height = 26
          Caption = 'Total'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ImageIndex = 119
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnClick = ResourceButtonClick
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
      end
      object G2Panel: TAlpinePanel
        Left = 413
        Top = 0
        Width = 483
        Height = 186
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
        BorderColor = clGray
        BorderWidth = 1
        Caption.Color = clHighlight
        Caption.ColorTo = clNone
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = []
        Caption.GradientDirection = gdVertical
        GradientDirection = gdHorizontal
        StatusBar.Font.Charset = DEFAULT_CHARSET
        StatusBar.Font.Color = clWindowText
        StatusBar.Font.Height = -11
        StatusBar.Font.Name = 'Tahoma'
        StatusBar.Font.Style = []
        LeftCaption = 'G2'
        RightCaption = 'G2 - Dollar Loss'
        FullHeight = 0
        object G2Label: TLabel
          Left = 1
          Top = 1
          Width = 27
          Height = 184
          Align = alLeft
          Alignment = taCenter
          AutoSize = False
          Caption = 'G'
          Color = 15329769
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = True
        end
        object Label66: TLabel
          Left = 7
          Top = 49
          Width = 45
          Height = 13
          Alignment = taRightJustify
          Caption = 'LOSSES:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label67: TLabel
          Left = 58
          Top = 44
          Width = 124
          Height = 22
          Caption = 'Required for all fires if known.  Optional for non fires.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label68: TLabel
          Left = 2
          Top = 73
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Property $:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label69: TLabel
          Left = 2
          Top = 96
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Contents $:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label70: TLabel
          Left = 6
          Top = 120
          Width = 117
          Height = 13
          Alignment = taRightJustify
          Caption = 'PRE-INCIDENT VALUE:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label71: TLabel
          Left = 127
          Top = 121
          Width = 35
          Height = 11
          Caption = 'Optional'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
        end
        object Label72: TLabel
          Left = 2
          Top = 142
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Property $:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label73: TLabel
          Left = 2
          Top = 165
          Width = 57
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Contents $:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 33
          Top = 6
          Width = 154
          Height = 32
          Caption = 'Estimated Dollar Losses and Values'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object Label38: TLabel
          Left = 20
          Top = 13
          Width = 8
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '2'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label16: TLabel
          Left = 161
          Top = 73
          Width = 94
          Height = 13
          AutoSize = False
          Caption = 'Unknown / None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object losspropfield: TAlpineEdit
          Left = 61
          Top = 70
          Width = 77
          Height = 21
          DataType = pftExtended
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 10
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '##,###,###'
          TabOrder = 0
          NullCheckBox = proplossunknown
          DataField = 'LOSSPROP'
          RightAlign = True
          CurrentPos = -1
          Text = '         0'
          RangeHigh = {E175587FED2AB1ECFE7F}
          RangeLow = {E175587FED2AB1ECFEFF}
        end
        object valpropfield: TAlpineEdit
          Left = 61
          Top = 138
          Width = 77
          Height = 21
          DataType = pftExtended
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 10
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '##,###,###'
          TabOrder = 4
          NullCheckBox = propvalueunknown
          DataField = 'VALPROP'
          RightAlign = True
          CurrentPos = -1
          Text = '         0'
          RangeHigh = {E175587FED2AB1ECFE7F}
          RangeLow = {E175587FED2AB1ECFEFF}
        end
        object valcontfield: TAlpineEdit
          Left = 61
          Top = 162
          Width = 77
          Height = 21
          DataType = pftExtended
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 10
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '##,###,###'
          TabOrder = 5
          NullCheckBox = contentvalueunknown
          DataField = 'VALCONT'
          RightAlign = True
          CurrentPos = -1
          Text = '         0'
          RangeHigh = {E175587FED2AB1ECFE7F}
          RangeLow = {E175587FED2AB1ECFEFF}
        end
        object losscontfield: TAlpineEdit
          Left = 61
          Top = 93
          Width = 77
          Height = 21
          DataType = pftExtended
          Color = clWhite
          Controller = OvcController1
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 10
          options = [efoCaretToEnd, efoRightAlign]
          ParentCtl3D = False
          ParentFont = False
          PictureMask = '##,###,###'
          TabOrder = 2
          NullCheckBox = contentlossunknown
          DataField = 'LOSSCONT'
          RightAlign = True
          CurrentPos = -1
          Text = '         0'
          RangeHigh = {E175587FED2AB1ECFE7F}
          RangeLow = {E175587FED2AB1ECFEFF}
        end
        object proplossunknown: TCheckBox
          Left = 144
          Top = 73
          Width = 13
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object contentlossunknown: TCheckBox
          Left = 144
          Top = 96
          Width = 91
          Height = 13
          Caption = 'Unknown / None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object propvalueunknown: TCheckBox
          Left = 144
          Top = 143
          Width = 91
          Height = 13
          Caption = 'Unknown / None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object contentvalueunknown: TCheckBox
          Left = 144
          Top = 165
          Width = 91
          Height = 13
          Caption = 'Unknown / None'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Small Fonts'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
    end
    object Panel5: TPanel
      Left = 0
      Top = 706
      Width = 896
      Height = 156
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel5'
      TabOrder = 5
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 258
        Height = 156
        Align = alLeft
        BevelOuter = bvNone
        Caption = 'Panel6'
        TabOrder = 0
        object H1Panel: TAlpinePanel
          Left = 0
          Top = 0
          Width = 258
          Height = 106
          Align = alTop
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'H'
          RightCaption = 'H1 - Casualties'
          FullHeight = 0
          object H1Label: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 104
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'H'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label82: TLabel
            Left = 15
            Top = 47
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fire Service:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label83: TLabel
            Left = 38
            Top = 69
            Width = 36
            Height = 13
            Alignment = taRightJustify
            Caption = 'Civilian:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Transparent = True
          end
          object Label85: TLabel
            Left = 78
            Top = 28
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Deaths'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label86: TLabel
            Left = 140
            Top = 29
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Injuries'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 33
            Top = 6
            Width = 65
            Height = 16
            Caption = 'Casualties'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 20
            Top = 13
            Width = 8
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object FatFireField: TAlpineEdit
            Left = 78
            Top = 44
            Width = 41
            Height = 21
            DataType = pftInteger
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 6
            options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'iiiiii'
            TabOrder = 0
            OnExit = FatFireFieldExit
            DataField = 'FATFIRE'
            RightAlign = True
            CurrentPos = -1
            Text = '     0'
            RangeHigh = {FF7F0000000000000000}
            RangeLow = {0080FFFF000000000000}
          end
          object FatCivField: TAlpineEdit
            Left = 78
            Top = 66
            Width = 41
            Height = 21
            DataType = pftInteger
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 6
            options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'iiiiii'
            TabOrder = 2
            OnExit = FatFireFieldExit
            DataField = 'FATCIV'
            RightAlign = True
            CurrentPos = -1
            Text = '     0'
            RangeHigh = {FF7F0000000000000000}
            RangeLow = {0080FFFF000000000000}
          end
          object InjFireField: TAlpineEdit
            Left = 142
            Top = 44
            Width = 41
            Height = 21
            DataType = pftInteger
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 6
            options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'iiiiii'
            TabOrder = 1
            OnExit = FatFireFieldExit
            DataField = 'INJFIRE'
            RightAlign = True
            CurrentPos = -1
            Text = '     0'
            RangeHigh = {FF7F0000000000000000}
            RangeLow = {0080FFFF000000000000}
          end
          object InjCivField: TAlpineEdit
            Left = 142
            Top = 66
            Width = 41
            Height = 21
            DataType = pftInteger
            Color = clWhite
            Controller = OvcController1
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            InitDateTime = False
            LabelInfo.Visible = False
            MaxLength = 6
            options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
            ParentCtl3D = False
            ParentFont = False
            PictureMask = 'iiiiii'
            TabOrder = 3
            OnExit = FatFireFieldExit
            DataField = 'INJCIV'
            RightAlign = True
            CurrentPos = -1
            Text = '     0'
            RangeHigh = {FF7F0000000000000000}
            RangeLow = {0080FFFF000000000000}
          end
        end
        object H2Panel: TAlpinePanel
          Left = 0
          Top = 106
          Width = 258
          Height = 50
          Align = alClient
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'H'
          RightCaption = 'H2 - Detector'
          FullHeight = 0
          object H2Label: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 48
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'H'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label46: TLabel
            Left = 33
            Top = 6
            Width = 53
            Height = 16
            Caption = 'Detector'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label48: TLabel
            Left = 20
            Top = 13
            Width = 8
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '2'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object DetectorField: TAlpineLookup
            Left = 12
            Top = 26
            Width = 234
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ImageName = 'DOWNARROW'
            PictureMask = '!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = True
            DataField = 'DETECTOR'
            ReferencingTable = 'N5DETECTOR'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STD1040'
            TreeLookMinimumCharacters = 0
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
        end
      end
      object Panel7: TPanel
        Left = 258
        Top = 0
        Width = 638
        Height = 156
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel7'
        TabOrder = 1
        object H3Panel: TAlpinePanel
          Left = 0
          Top = 0
          Width = 638
          Height = 53
          Align = alTop
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'H'
          RightCaption = 'H3 - HazMat Release'
          FullHeight = 73
          object H3Label: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 51
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'H'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label51: TLabel
            Left = 20
            Top = 13
            Width = 8
            Height = 13
            Alignment = taCenter
            AutoSize = False
            Caption = '3'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
            Transparent = True
          end
          object Label55: TLabel
            Left = 33
            Top = 6
            Width = 184
            Height = 16
            Caption = 'Hazardous Materials Release'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object HazMatField: TAlpineLookup
            Left = 6
            Top = 28
            Width = 330
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ImageName = 'DOWNARROW'
            OnSuccessfulValidate = HazMatFieldSuccessfulValidate
            PictureMask = '!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = True
            DataField = 'HAZMAT'
            ReferencingTable = 'N5HAZMAT'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STD1080'
            TreeLookMinimumCharacters = 0
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
        end
        object IPanel: TAlpinePanel
          Left = 0
          Top = 53
          Width = 638
          Height = 53
          Align = alClient
          BevelOuter = bvNone
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'H'
          RightCaption = 'I - Mixed Use'
          FullHeight = 73
          object ILabel: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 51
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'I'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label56: TLabel
            Left = 33
            Top = 6
            Width = 124
            Height = 16
            Caption = 'Mixed Use Property'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object ComplexField: TAlpineLookup
            Left = 6
            Top = 27
            Width = 330
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ImageName = 'DOWNARROW'
            PictureMask = '!!!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = True
            DataField = 'COMPLEX'
            ReferencingTable = 'N5MIXEDUSE'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STD1040'
            TreeLookMinimumCharacters = 0
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
        end
        object JPanel: TAlpinePanel
          Left = 0
          Top = 106
          Width = 638
          Height = 50
          Align = alBottom
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
          BorderColor = clGray
          BorderWidth = 1
          Caption.Color = clHighlight
          Caption.ColorTo = clNone
          Caption.Font.Charset = DEFAULT_CHARSET
          Caption.Font.Color = clHighlightText
          Caption.Font.Height = -11
          Caption.Font.Name = 'Tahoma'
          Caption.Font.Style = []
          Caption.GradientDirection = gdVertical
          GradientDirection = gdHorizontal
          StatusBar.Font.Charset = DEFAULT_CHARSET
          StatusBar.Font.Color = clWindowText
          StatusBar.Font.Height = -11
          StatusBar.Font.Name = 'Tahoma'
          StatusBar.Font.Style = []
          LeftCaption = 'I'
          RightCaption = 'J - Property Use'
          FullHeight = 73
          object JLabel: TLabel
            Left = 1
            Top = 1
            Width = 27
            Height = 48
            Align = alLeft
            Alignment = taCenter
            AutoSize = False
            Caption = 'J'
            Color = 15329769
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -21
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = True
          end
          object Label57: TLabel
            Left = 33
            Top = 6
            Width = 81
            Height = 16
            Caption = 'Property Use'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object FixPropField: TAlpineLookup
            Left = 6
            Top = 27
            Width = 330
            Height = 21
            BorderStyle = bsNone
            Ctl3d = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TabStop = True
            ImageName = 'DOWNARROW'
            PictureMask = '!!!!'
            EditWidth = 50
            SpinControl = False
            NoValidate = False
            KeywordSearch = True
            DataField = 'FIXPROP'
            ReferencingTable = 'N5PROPUSE'
            ReturnField = 'DESCR'
            ReturnFieldFont.Charset = DEFAULT_CHARSET
            ReturnFieldFont.Color = clWindowText
            ReturnFieldFont.Height = -11
            ReturnFieldFont.Name = 'MS Sans Serif'
            ReturnFieldFont.Style = []
            LookupCode = 'STD1040'
            TreeLookUp = True
            TreeLookMinimumCharacters = 3
            StandardLookup = True
            LookupCaption = 'RedNMX System'
          end
        end
      end
    end
    object CovidPanel: TAlpinePanel
      Left = 0
      Top = 465
      Width = 896
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      Color = 16727614
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
      Caption.Color = clHighlight
      Caption.ColorTo = clNone
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = []
      Caption.GradientDirection = gdVertical
      GradientDirection = gdHorizontal
      ShadowColor = clBlack
      ShadowOffset = 0
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      LeftCaption = 'A'
      RightCaption = 'A - Date and Number'
      Highlightcolor = 16727614
      FullHeight = 0
      object Label1: TLabel
        Left = 1
        Top = 1
        Width = 27
        Height = 53
        Align = alLeft
        Alignment = taCenter
        AutoSize = False
        Caption = 'CV'
        Color = 15329769
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = True
        ExplicitTop = 9
        ExplicitHeight = 37
      end
      object Label2: TLabel
        Left = 40
        Top = 29
        Width = 215
        Height = 13
        AutoSize = False
        Caption = 'Was this a COVID 19 Related Call?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label10: TLabel
        Left = 312
        Top = 29
        Width = 201
        Height = 13
        AutoSize = False
        Caption = 'Was there any patient contact?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Label13: TLabel
        Left = 568
        Top = 29
        Width = 300
        Height = 13
        AutoSize = False
        Caption = 'Was PPE worn?'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = True
      end
      object Covid1Field: TAlpineLookup
        Left = 40
        Top = 5
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = '!'
        EditWidth = 25
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'COVID1'
        ReferencingTable = 'COVID19'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clYellow
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = [fsBold]
        LookupCode = 'STD1080'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object Covid2Field: TAlpineLookup
        Left = 312
        Top = 5
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = '!'
        EditWidth = 25
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'COVID2'
        ReferencingTable = 'COVID19'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clYellow
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = [fsBold]
        LookupCode = 'STD1080'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
      end
      object Covid3Field: TAlpineLookup
        Left = 568
        Top = 5
        Width = 158
        Height = 21
        BorderStyle = bsNone
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        ImageName = 'DOWNARROW'
        PictureMask = '!'
        EditWidth = 25
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'COVID3'
        ReferencingTable = 'COVID19'
        ReturnField = 'DESCR'
        ReturnFieldFont.Charset = ANSI_CHARSET
        ReturnFieldFont.Color = clYellow
        ReturnFieldFont.Height = -13
        ReturnFieldFont.Name = 'Arial'
        ReturnFieldFont.Style = [fsBold]
        LookupCode = 'STD1080'
        TreeLookMinimumCharacters = 0
        StandardLookup = False
        LookupCaption = 'RedNMX System'
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
    Left = 132
    Top = 11
  end
end
