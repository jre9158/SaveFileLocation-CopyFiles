object PersonConfidentialForm: TPersonConfidentialForm
  Left = 95
  Top = 186
  Caption = 'PersonConfidentialForm'
  ClientHeight = 581
  ClientWidth = 862
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
    Width = 862
    Height = 279
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object PersExpBrowse: TAlpineBlockBrowse
      Left = 528
      Top = 0
      width = 334
      height = 279
      Align = alRight
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
      Visible = False
      Version = '2.2.1.0'
      CanMove = True
      CanSize = True
      Caption.Color = clBlack
      Caption.ColorTo = clBlack
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Incident and Training Exposures'
      Caption.TopIndent = 2
      Caption.Visible = True
      ColorTo = clWhite
      StatusBar.Font.Charset = DEFAULT_CHARSET
      StatusBar.Font.Color = clWindowText
      StatusBar.Font.Height = -11
      StatusBar.Font.Name = 'Tahoma'
      StatusBar.Font.Style = []
      FixedRowHeight = 38
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
      DefaultRowHeight = 38
      SearchFooter = False
      FullHeight = 194
    end
    object AlpinePanel1: TAlpinePanel
      Left = 0
      Top = 0
      Width = 273
      Height = 279
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
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Biographic'
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
      FullHeight = 0
      object Label37: TLabel
        Left = 2
        Top = 73
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Social Security #'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label38: TLabel
        Left = 2
        Top = 26
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Date of Birth'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object PersReligionIDLabel: TLabel
        Left = 2
        Top = 120
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Religion'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label1: TLabel
        Left = 2
        Top = 143
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Primary Beneficiary'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label2: TLabel
        Left = 2
        Top = 189
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Marital Status'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label3: TLabel
        Left = 2
        Top = 257
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = '# Dependents'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label4: TLabel
        Left = 2
        Top = 96
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Race'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label5: TLabel
        Left = 2
        Top = 212
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Spouse'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label6: TLabel
        Left = 2
        Top = 235
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Maiden Name'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object Label7: TLabel
        Left = 2
        Top = 165
        Width = 93
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Beneficiary Phone'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object DeceasedLabelField: TLabel
        Left = 2
        Top = 50
        Width = 92
        Height = 15
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Deceased Date'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Transparent = True
      end
      object SocSecField: TAlpineEdit
        Left = 99
        Top = 71
        Width = 91
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 66
        options = [efoCaretToEnd]
        ParentFont = False
        PictureMask = 
          'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX' +
          'XX'
        TabOrder = 2
        OnExit = SocSecFieldExit
        DataField = 'SOCSEC'
        CurrentPos = -1
        Text = '-  -  -'
      end
      object DobField: TAlpineDateTime
        Left = 99
        Top = 24
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'DOB'
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object PersRaceIDField: TAlpineLookup
        Tag = 4
        Left = 99
        Top = 94
        Width = 170
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSRACEID'
        DisplayField = 'DESCR'
        ReferencingTable = 'PERSRACE'
        ReferencingField = 'PERSRACEID'
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
      object AlpineEdit1: TAlpineEdit
        Left = 99
        Top = 140
        Width = 169
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 60
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 5
        DataField = 'BENEFIT'
        CurrentPos = -1
      end
      object DependField: TAlpineEdit
        Left = 99
        Top = 255
        Width = 22
        Height = 21
        DataType = pftInteger
        Color = clWhite
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 4
        options = [efoCaretToEnd, efoRightAlign, efoRightJustify]
        ParentFont = False
        PictureMask = 'iiii'
        TabOrder = 10
        DataField = 'DEPEND'
        RightAlign = True
        CurrentPos = -1
        Text = '   0'
        RangeHigh = {FF7F0000000000000000}
        RangeLow = {0080FFFF000000000000}
      end
      object AlpineLookup2: TAlpineLookup
        Tag = 4
        Left = 99
        Top = 186
        Width = 170
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
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
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSMARITALID'
        DisplayField = 'DESCR'
        ReferencingTable = 'PERSMARITAL'
        ReferencingField = 'PERSMARITALID'
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
      object PersReligionIDField: TAlpineLookup
        Tag = 4
        Left = 99
        Top = 117
        Width = 170
        Height = 21
        BorderStyle = bsNone
        Color = clBtnFace
        Ctl3d = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        TabStop = True
        ImageName = 'DOWNARROW'
        DataFieldIsCharacter = True
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        SpinControl = False
        NoValidate = False
        KeywordSearch = False
        DataField = 'PERSRELIGIONID'
        DisplayField = 'DESCR'
        ReferencingTable = 'PERSRELIGION'
        ReferencingField = 'PERSRELIGIONID'
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
      object SpouseField: TAlpineEdit
        Left = 99
        Top = 209
        Width = 170
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 60
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 8
        DataField = 'SPOUSE'
        CurrentPos = -1
      end
      object DobMailButton: TAlpineGlowButton
        Left = 193
        Top = 20
        Width = 72
        Height = 31
        Caption = 'Send Reminder'
        ImageIndex = 74
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        Picture.Data = {
          424D360500000000000036040000280000001000000010000000010008000000
          000000010000C30E0000C30E00000001000011000000F6F6F600EFEFEF00E6E6
          E600DEDEDE00D8D8D800CCCCCC00BEBEBE00B6B6B600999999008C8C8C006868
          F700BE6868003F3FFD00FF00FF00B13F3F000000FF0099000000000000000000
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
          000000000000000000000000000000000000000000000D0D0D0D0D0D0D0D0D0D
          0D0D0D0D0D0D0D0D080808080808080808080808080D0D0D0800000001010102
          02020303080D0D0D080000010506060606030303080D0D0D0800000102020203
          03030303080D0D0D080001020606070707030304080D0D0D0800010102020303
          03030C0A080D0808080102020202020303030F0C080D08000909090808080808
          08080808080D080000010506060606030303080D0D0D08000001020202030303
          0303080D0D0D080001020606070707030304080D0D0D08000101020203030303
          0E0B080D0D0D08010202020202030303100E080D0D0D09090908080808080808
          0808080D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D}
        TabOrder = 11
        Visible = False
        OnClick = DobMailButtonClick
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
        ImageName = 'MAIL'
      end
      object AlpineEdit3: TAlpineEdit
        Left = 99
        Top = 232
        Width = 170
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 60
        ParentFont = False
        PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
        TabOrder = 9
        DataField = 'MAIDENNAME'
        CurrentPos = -1
      end
      object PhoneField: TAlpineEdit
        Left = 99
        Top = 163
        Width = 80
        Height = 21
        DataType = pftString
        Controller = OvcController1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        InitDateTime = False
        LabelInfo.Visible = False
        MaxLength = 12
        options = [efoCaretToEnd]
        ParentFont = False
        PictureMask = '999-999-9999'
        TabOrder = 6
        DataField = 'BENEFITPHONE'
        CurrentPos = -1
        Text = '(  ---)- - -'
      end
      object DeceasedDateField: TAlpineDateTime
        Left = 99
        Top = 48
        Width = 91
        Height = 21
        ImageNameClock = 'CLOCK32'
        ImageNameDate = 'SCHEDULING'
        SpinControl = False
        ShowTime = False
        DataField = 'DECEASEDDATE'
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object DistResField: TAlpineCheckBox
        Left = 172
        Top = 254
        Width = 96
        Height = 22
        Alignment = taRightJustify
        ButtonType = btClassic
        ButtonVertAlign = tlBottom
        Caption = 'District Resident'
        Font.Charset = ANSI_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReturnIsTab = False
        TabOrder = 12
        Version = '1.6.0.0'
        DataField = 'DISTRES'
        ValueChecked = 'Y'
        ValueUnChecked = 'N'
      end
    end
    object Panel3: TPanel
      Left = 273
      Top = 0
      Width = 255
      Height = 279
      Align = alClient
      BevelOuter = bvNone
      Caption = ' '
      TabOrder = 1
      object AlpinePanel2: TAlpinePanel
        Left = 0
        Top = 0
        Width = 255
        Height = 226
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
        Caption.ColorTo = clBlack
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Driver License Information'
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
        FullHeight = 0
        object Label10: TLabel
          Left = 1
          Top = 117
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Expires'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label14: TLabel
          Left = 1
          Top = 26
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'License #'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label20: TLabel
          Left = 1
          Top = 93
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'State'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label22: TLabel
          Left = 1
          Top = 70
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Status'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label36: TLabel
          Left = 1
          Top = 49
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Class'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label8: TLabel
          Left = 1
          Top = 169
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Plate #'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object Label9: TLabel
          Left = 1
          Top = 193
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'VIN #'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object DLNumField: TAlpineEdit
          Left = 57
          Top = 24
          Width = 194
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 60
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 0
          DataField = 'DLNUM'
          CurrentPos = -1
        end
        object DLExpField: TAlpineDateTime
          Tag = 2
          Left = 57
          Top = 115
          Width = 91
          Height = 21
          ImageNameClock = 'CLOCK32'
          ImageNameDate = 'SCHEDULING'
          SpinControl = False
          ShowTime = False
          DataField = 'DLEXP'
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
        end
        object DLStateField: TAlpineEdit
          Tag = 1
          Left = 57
          Top = 91
          Width = 32
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 2
          ParentFont = False
          PictureMask = '!!'
          TabOrder = 3
          DataField = 'DLSTATE'
          CurrentPos = -1
        end
        object PersDriverIDField: TAlpineLookup
          Tag = 4
          Left = 57
          Top = 68
          Width = 194
          Height = 21
          BorderStyle = bsNone
          Color = clBtnFace
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'PERSDRIVERID'
          DisplayField = 'DESCR'
          ReferencingTable = 'PERSDRIVER'
          ReferencingField = 'PERSDRIVERID'
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
        object PersDLClassIDField: TAlpineLookup
          Tag = 3
          Left = 57
          Top = 46
          Width = 194
          Height = 21
          BorderStyle = bsNone
          Color = clBtnFace
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
          ImageName = 'DOWNARROW'
          DataFieldIsCharacter = True
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          SpinControl = False
          NoValidate = False
          KeywordSearch = False
          DataField = 'PERSDLCLASSID'
          DisplayField = 'DESCR'
          ReferencingTable = 'PERSDLCLASS'
          ReferencingField = 'PERSDLCLASSID'
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
        object EmailButton: TAlpineGlowButton
          Left = 154
          Top = 115
          Width = 91
          Height = 42
          Caption = 'Send Reminder'
          ImageIndex = 149
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
          TabOrder = 5
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
        object AlpineEdit2: TAlpineEdit
          Left = 57
          Top = 167
          Width = 194
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 60
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 6
          DataField = 'LICENSEPLATE'
          CurrentPos = -1
        end
        object AlpineEdit4: TAlpineEdit
          Left = 57
          Top = 192
          Width = 194
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 60
          ParentFont = False
          PictureMask = '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
          TabOrder = 7
          DataField = 'VEHVINNUM'
          CurrentPos = -1
        end
      end
      object AlpinePanel4: TAlpinePanel
        Left = 0
        Top = 226
        Width = 255
        Height = 53
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
        Caption.ColorTo = clBlack
        Caption.Font.Charset = DEFAULT_CHARSET
        Caption.Font.Color = clHighlightText
        Caption.Font.Height = -11
        Caption.Font.Name = 'Tahoma'
        Caption.Font.Style = [fsBold]
        Caption.GradientDirection = gdVertical
        Caption.Indent = 2
        Caption.Text = 'Cemetery Location'
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
        FullHeight = 0
        object Label16: TLabel
          Left = 1
          Top = 26
          Width = 53
          Height = 15
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Location'
          Font.Charset = ANSI_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
        end
        object CemeteryLocField: TAlpineEdit
          Left = 57
          Top = 24
          Width = 194
          Height = 21
          DataType = pftString
          Controller = OvcController1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          InitDateTime = False
          LabelInfo.Visible = False
          MaxLength = 60
          ParentFont = False
          PictureMask = 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'
          TabOrder = 0
          DataField = 'CEMETERYLOC'
          CurrentPos = -1
        end
      end
    end
  end
  object AlpinePanel3: TAlpinePanel
    Left = 0
    Top = 448
    Width = 862
    Height = 133
    Align = alClient
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
    Caption.ColorTo = clBlack
    Caption.Font.Charset = DEFAULT_CHARSET
    Caption.Font.Color = clHighlightText
    Caption.Font.Height = -11
    Caption.Font.Name = 'Tahoma'
    Caption.Font.Style = [fsBold]
    Caption.GradientDirection = gdVertical
    Caption.Indent = 2
    Caption.Text = 'Confidential Notes'
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
    FullHeight = 0
    object AlpineMemo1: TAlpineMemo
      Left = 2
      Top = 20
      Width = 858
      Height = 111
      Align = alClient
      Caption = 'AlpineMemo1'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      DataField = 'CONFNARR'
      ReadOnly = False
      ScrollBars = ssVertical
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 279
    Width = 862
    Height = 169
    Align = alTop
    BevelOuter = bvNone
    Caption = 'Panel2'
    TabOrder = 1
    object PersContBrowse: TAlpineBlockBrowse
      Left = 376
      Top = 0
      width = 486
      height = 169
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
      TabOrder = 1
      UseDockManager = True
      Version = '2.2.1.0'
      CanMove = True
      CanSize = True
      Caption.Color = clBlack
      Caption.ColorTo = clBlack
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Personnel Contacts, Dependents, etc.'
      Caption.TopIndent = 2
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
    object PersBenBrowse: TAlpineBlockBrowse
      Left = 0
      Top = 0
      width = 376
      height = 169
      Align = alLeft
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
      Caption.ColorTo = clBlack
      Caption.Font.Charset = DEFAULT_CHARSET
      Caption.Font.Color = clHighlightText
      Caption.Font.Height = -11
      Caption.Font.Name = 'Tahoma'
      Caption.Font.Style = [fsBold]
      Caption.GradientDirection = gdVertical
      Caption.Indent = 2
      Caption.Text = 'Beneficiaries'
      Caption.TopIndent = 2
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
    Left = 808
    Top = 24
  end
end
